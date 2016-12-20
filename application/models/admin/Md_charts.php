<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');

class Md_charts extends CI_Model {
  public function __construct() {
		$this->load->database();
	}

  public function select_opini($id = 1) {
    $query = $this->db->query('select MONTH(tanggal) as bulan,
      sum(polarity > 0) as positif,
      sum(polarity < 0) as negatif,
      sum(polarity = 0) as netral
      from testimoni
      WHERE divisi ='. $id.
      ' group by MONTH(tanggal)');
		return $query->result_array();
  }
}

 ?>
