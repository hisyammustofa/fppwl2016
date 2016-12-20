<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');

class Md_charts extends CI_Model {
  public function __construct() {
		$this->load->database();
	}

  public function select_positif() {
    $query = $this->db->query('SELECT * FROM member');
		return $query->result_array();
  }

  public function select_negatif() {
    
  }

  public function select_netral() {

  }
}

 ?>
