<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');

class Home extends CI_Controller {
  public function __construct() {
    parent::__construct();
    $this->load->model('admin/md_member');
  }

  public function index() {
    $data = array(
            'title' => 'Halaman Admin',
            'member' => $this->md_member->read_member(),
            'isi' => 'home/index_home');
    $this->load->view('home/layout/wrapper', $data);
  }

  public function read($read) {
    $data['artikel'] = $this->artikel_model->daftar_artikel();
    $data['detail'] = $this->artikel_model->daftar_artikel($read);
    $data = array(
            'title' => $data['detail']['judul'],
            'artikel' => $this->artikel_model->daftar_artikel(),
            'detail' => $this->artikel_model->daftar_artikel($read),
            'isi' => 'home/read_view');
    $this->load->view('layout/wrapper', $data);
  }

}
 ?>
