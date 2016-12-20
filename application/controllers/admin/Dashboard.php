<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');

class Dashboard extends CI_Controller {
  public function __construct() {
    parent::__construct();
    if ( ! $this->session->userdata('username')) {
      redirect(base_url().'admin/home/');
    }
  }

  public function index(){
    $data = array(
            'title' => 'Dashboard',
            'isi' => 'admin/dashboard/index');
    $this->load->view('admin/layout/wrapper', $data);
  }
}
