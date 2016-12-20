<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');

class Charts extends CI_Controller {
  public function __construct() {
    parent::__construct();
    if ( ! $this->session->userdata('username')) {
      redirect(base_url().'admin/home/');
    }
    $this->load->model('md_feedback');
    $this->load->model('admin/md_charts');
  }

  public function index() {
    $this->form_validation->set_rules('nama_divisi','Nama_divisi','required');
    if ($this->form_validation->run() === FALSE) {
      $data = array(
            'title' => 'Charts Member',
            'divisi' => $this->md_feedback->select_divisi(),
            'opini' => $this->md_charts->select_opini(),
            'terselek' => '1',
            'isi' => 'admin/charts/charts');
      $this->load->view('admin/layout/wrapper', $data);
    } else {
      $id = $this->input->post('nama_divisi');
      $data = array(
            'title' => 'Charts Member',
            'divisi' => $this->md_feedback->select_divisi(),
            'opini' => $this->md_charts->select_opini($id),
            'terselek' => $id,
            'isi' => 'admin/charts/charts');
      $this->load->view('admin/layout/wrapper', $data);
    }
  }
}
