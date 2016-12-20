<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');
class Feedback extends CI_Controller {
  public function __construct() {
    parent::__construct();
    if ( ! $this->session->userdata('username')) {
      redirect(base_url().'admin/home/');
    }
    $this->load->model('md_feedback');
  }

  public function index() {
    $data = array(
      'feedbacks' => $this->md_feedback->read_feedback(),
      'isi' => "admin/testimoni/testimoni",
      'divisi' => $this->md_feedback->select_divisi()
    );
    $this->load->view('admin/layout/wrapper', $data);
  }
}
