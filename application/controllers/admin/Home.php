<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');

class Home extends CI_Controller {
  public function index() {
    
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
