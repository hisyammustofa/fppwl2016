<?php

class Md_counter extends CI_Model {
  public function __construct() {
		$this->load->database();
	}

	public function update_count() {
    $this->db->set('hits', 'hits+1', FALSE);
    $this->db->where('tanggal', date("Y-m-d"));
    $this->db->update('counter');
	}
}

 ?>
