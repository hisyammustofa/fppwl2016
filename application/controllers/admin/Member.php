<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');

class Member extends CI_Controller {
  public function __construct() {
    parent::__construct();
    if ( ! $this->session->userdata('username')) {
      redirect(base_url().'admin/home/');
    }
    $this->load->model('admin/md_member');
  }

  public function index() {
    $data = array(
            'title' => 'Data Member',
            'member' => $this->md_member->read_member(),
            'isi' => 'admin/member/data_member');
    $this->load->view('admin/layout/wrapper', $data);
  }

  public function tambah() {
    $config['upload_path']          = './uploads/';
    $config['allowed_types']        = 'gif|jpg|png';
    $config['max_size']             = 1000;
    $config['max_width']            = 1024;
    $config['max_height']           = 768;

    $this->form_validation->set_rules('name','Name','required');
    $this->form_validation->set_rules('alamat','Alamat','required');
    $this->form_validation->set_rules('telp','Telp','required');
    $this->form_validation->set_rules('email','Email','required');
    $this->form_validation->set_rules('divisi','Divisi','required');

    $this->load->library('upload', $config);

    if ($this->form_validation->run() === FALSE) {
      $data = array(
            'title' => 'Tambah Member',
            'divisi' => $this->md_member->select_divisi(),
            'form_title' => 'Tambah Member',
            'isi' => 'admin/member/tambah_member');
        $this->load->view('admin/layout/wrapper', $data);
    } else {
        if ( ! $this->upload->do_upload('foto')) {
          $error = array('error' => $this->upload->display_errors());
          $this->load->view('error', $error);
        } else {
          $data = array(
            'nama' => $this->input->post('name'),
            'alamat' => $this->input->post('alamat'),
            'no_telp' => $this->input->post('telp'),
            'email' => $this->input->post('email'),
            'foto' => $this->upload->data()['client_name'],
            'id_divisi' => $this->input->post('divisi')
          );
          $this->md_member->tambah_member($data);
          redirect(base_url().'admin/member');
        }
     }
  }

  public function edit($id) {
    $config['upload_path']          = './uploads/';
    $config['allowed_types']        = 'gif|jpg|png';
    $config['max_size']             = 1000;
    $config['max_width']            = 1024;
    $config['max_height']           = 768;

    $this->form_validation->set_rules('name','Name','required');
    $this->form_validation->set_rules('alamat','Alamat','required');
    $this->form_validation->set_rules('telp','Telp','required');
    $this->form_validation->set_rules('email','Email','required');
    $this->form_validation->set_rules('divisi','Divisi','required');

    $this->load->library('upload', $config);

    if ($this->form_validation->run() === FALSE) {
      $data['member'] = $this->md_member->detail_member();
      $data['detail'] = $this->md_member->detail_member($id);
      $data = array(
            'title' => 'Tambah Member',
            'divisi' => $this->md_member->select_divisi(),
            'detail' => $this->md_member->detail_member($id),
            'form_title' => 'Edit Member',
            'isi' => 'admin/member/edit_member');
        $this->load->view('admin/layout/wrapper', $data);
    } else {
      if ( ! $this->upload->do_upload('foto')) {
        $data = array(
          'id_member' => $this->input->post('id_member'),
          'nama' => $this->input->post('name'),
          'alamat' => $this->input->post('alamat'),
          'no_telp' => $this->input->post('telp'),
          'email' => $this->input->post('email'),
          'id_divisi' => $this->input->post('divisi')
      );
      $this->md_member->edit_member($data);
      redirect(base_url().'admin/member/');
      } else {
         $data = array(
          'id_member' => $this->input->post('id_member'),
          'nama' => $this->input->post('name'),
          'alamat' => $this->input->post('alamat'),
          'no_telp' => $this->input->post('telp'),
          'email' => $this->input->post('email'),
          'foto' => $this->upload->data()['client_name'],
          'id_divisi' => $this->input->post('divisi')
      );
      $this->md_member->edit_member($data);
      redirect(base_url().'admin/member/');
      }

    }
  }

  public function delete($id) {
    $data = array(
          'id_member' => $id
    );
    $this->md_member->delete_member($data);
    redirect(base_url().'admin/member/');
  }

}
 ?>
