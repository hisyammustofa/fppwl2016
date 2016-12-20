<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');

class Md_login extends CI_Model {
  public function __construct() {
		$this->load->database();
	}

  public function can_login() {
    $this->db->where('username', $this->input->post('username'));
    $this->db->where('password', $this->input->post('password'));
    $query = $this->db->get('admin');
    if ($query->num_rows() == 1) {
      $row = $query->row();
      $data = array(
        'username' => $row->username
      );
      $this->session->set_userdata($data);
      return true;
    } else {
      return false;
    }
  }
}
