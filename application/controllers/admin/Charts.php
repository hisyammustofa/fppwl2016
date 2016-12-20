<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');

class Charts extends CI_Controller {
  public function __construct() {
    parent::__construct();
    $this->load->model('md_feedback');
  }

  public function index() {
    $data = array(
            'title' => 'Charts Member',
            'divisi' => $this->md_feedback->select_divisi(),
            'isi' => 'admin/charts/charts');
    $this->load->view('admin/layout/wrapper', $data);
  }

}
