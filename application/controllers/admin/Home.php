<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');

class Home extends CI_Controller {
  public function index() {
    $this->load->view("admin/login.php");
  }

  public function login_validation() {
    $this->form_validation->set_rules('username', 'Username', 'required|trim|callback_validate_credentials');
    $this->form_validation->set_rules('password', 'Password', 'required|trim');
    if ($this->form_validation->run()) {
      redirect(base_url().'admin/dashboard/');
    } else {
      redirect(base_url().'admin/home/');
    }
  }

  public function validate_credentials() {
    $this->load->model("admin/md_login");
    if($this->md_login->can_login()) {
      return true;
    } else {
      $this->session->set_flashdata('message', '<p style="color:red;"><b>akunnya tipu2</b><p>');
      return false;
    }
  }

  public function logout() {
    $this->session->sess_destroy();
    redirect(base_url().'admin/home/');
  }

  public function member() {
    $data = array(
            'title' => 'Dashboard Member',
            'isi' => 'admin/dashboard/index');
    $this->load->view('admin/layout/wrapper', $data);
  }

  public function testimoni() {
    $data = array(
            'title' => 'Dashboard Member',
            'isi' => 'admin/testimoni/testimoni');
    $this->load->view('admin/layout/wrapper', $data);
  }

  public function statistik() {
    $data = array(
            'title' => 'Admin Statistik',
            'isi' => 'admin/statistik/statistik');
    $this->load->view('admin/layout/wrapper', $data);
  }
}
