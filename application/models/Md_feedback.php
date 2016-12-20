<?php
class Md_feedback extends CI_Model {
  public function __construct() {
		$this->load->database();
	}

  public function read_feedback() {
    $query = $this->db->query('SELECT a.email_testimoner, a.img_testimoner, a.respon_testimoner, a.polarity, a.divisi, b.nama_divisi
          FROM testimoni a JOIN divisi b
          ON a.divisi = b.id_divisi');
    return $query->result_array();
  }

  public function select_divisi() {
		$query = $this->db->query('SELECT id_divisi, nama_divisi FROM divisi');
		return $query->result_array();
	}

  public function tambah_feedback($data) {
		return $this->db->insert('testimoni', $data);
	}

}
 ?>
