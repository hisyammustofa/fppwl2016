<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');

class Images extends CI_Controller {
  public function index() {
    $this->load->view("images");
  }

  public function upload() {
    print_r($_POST);
    print_r($_FILES);
    if (!empty($_FILES)) {
      $config['upload_path']          = './uploads/';
      $config['allowed_types']        = 'gif|jpg|png';
      $config['max_size']             = 1000;
      $config['max_width']            = 1024;
      $config['max_height']           = 768;
      $this->load->library('upload', $config);

      if (!$this->upload->do_upload("file")) {
        echo "failed";
      }
    }

    redirect(base_url().'admin/member/');
  }
}

 ?>
