<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');

class Feedback extends CI_Controller {
  public function __construct() {
    parent::__construct();
    require_once('twitteroauth/OAuth.php');
    require_once('twitteroauth/twitteroauth.php');
    define('CONSUMER_KEY', 'ae3IDLdpuHxL5MK8E5LvVaGoD');
    define('CONSUMER_SECRET', 'bJxZdJ16KWSshAZPvwWMh9ugYOJ5uL8bWniZpXR6i4s24uJ4xG');
    define('OAUTH_CALLBACK', 'http://127.0.0.1/pwl/feedback/');

    $this->load->model('md_feedback');
  }

  public function index(){
    if(isset($_GET['logout'])){
	      session_unset();
	      $redirect = 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['PHP_SELF'];
        header('Location: ' . filter_var($redirect, FILTER_SANITIZE_URL));
    }

    if(!isset($_SESSION['data']) && !isset($_GET['oauth_token'])) {
      	$connection = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET);

      	$request_token = $connection->getRequestToken(OAUTH_CALLBACK);

      	if($request_token){
      		$token = $request_token['oauth_token'];
      		$_SESSION['request_token'] = $token ;
      		$_SESSION['request_token_secret'] = $request_token['oauth_token_secret'];

      		$login_url = $connection->getAuthorizeURL($token);
	      }
    }

    if(isset($_GET['oauth_token'])){
  	   $connection = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET, $_SESSION['request_token'], $_SESSION['request_token_secret']);

       $access_token = $connection->getAccessToken($_REQUEST['oauth_verifier']);
       if($access_token){
	        $connection = new TwitterOAuth(CONSUMER_KEY, CONSUMER_SECRET, $access_token['oauth_token'], $access_token['oauth_token_secret']);

          $params =array('include_entities'=>'false', 'include_email'=>'true');

          $data = $connection->get('account/verify_credentials',$params);

          if($data){
            $_SESSION['data']=$data;

            $redirect = 'http://' . $_SERVER['HTTP_HOST'] . $_SERVER['PHP_SELF'];
      			header('Location: ' . filter_var($redirect, FILTER_SANITIZE_URL));
          }
       }
    }

    if(isset($login_url) && !isset($_SESSION['data'])){
      $data = array(
        'login_url' => $login_url
      );
    	$this->load->view("login", $data);
    } else {
      $test = random_string('alnum', 3);
      $vals = array(
                  'word' => $test,
                  'img_path'  => './captcha/',
                  'img_url'  => base_url().'captcha/',
                  'img_width'  => '300',
                  'img_height' => 70,
                  'border' => 0,
                  'expiration' => 7200
      );

      $cap = create_captcha($vals);

    	$data = $_SESSION['data'];
      $data_sesi = array(
        'img' => $cap['image'],
        'data_nama' => $data->name,
        'data_email' => $data->email,
        'data_screen' => $data->screen_name,
        'data_foto' => $data->profile_image_url,
        'divisi' => $this->md_feedback->select_divisi()
      );
      $this->session->set_userdata('mycaptcha', $cap['word']);
      $this->load->view("oauth", $data_sesi);
    }
  }

  public function tambah() {
    $this->form_validation->set_rules('name','Name','required');
    $this->form_validation->set_rules('email','Email','required');
    $this->form_validation->set_rules('imgtesti','Divisi','required');
    $this->form_validation->set_rules('divisi','Divisi','required');
    $this->form_validation->set_rules('komentar','Komentar','required');


    echo "test";
    print_r($_POST);

    $data['test'] = $_FILES;
    if ($this->form_validation->run() === FALSE) {
      $this->load->view("test", $data);
    } else {
        $captcha_input = $this->input->post('captcha');
        $mycaptcha = $this->session->userdata('mycaptcha');
        if ($this->input->post('captcha') == $mycaptcha) {
            $data = array(
              'nama_testimoner' => $this->input->post('name'),
              'email_testimoner	' => $this->input->post('email'),
              'img_testimoner' => $this->input->post('imgtesti'),
              'respon_testimoner' => $this->input->post('komentar'),
              'tanggal' => date("Y-m-d"),
              'divisi' => $this->input->post('divisi')
            );
          $this->md_feedback->tambah_feedback($data);
          redirect(base_url());
        } else {
          $this->session->set_flashdata('message','<p style="color:red;"><b>Captanya Salah Bos :)</b></p>');
          redirect(base_url().'feedback/');
        }
    }
  }

  public function get_feedback() {
    $data = array(
      'feedbacks' => $this->md_feedback->read_feedback(),
      'isi' => "admin/testimoni/testimoni",
      'divisi' => $this->md_feedback->select_divisi()
    );
    $this->load->view('admin/layout/wrapper', $data);
  }

}
