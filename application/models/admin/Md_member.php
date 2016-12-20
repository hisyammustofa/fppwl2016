<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');
class Md_member extends CI_Model {
	public function __construct() {
		$this->load->database();
	}

	public function read_member() {
		$query = $this->db->query('SELECT * FROM member');
		return $query->result_array();
	}

	public function detail_member($id = FALSE) {
		if ($id === FALSE) {
			$query = $this->db->get('member');
			return $query->result_array();
		}
		$query = $this->db->get_where('member', array('id_member' => $id));
		return $query->row_array();
	}

	public function select_divisi() {
		$query = $this->db->query('SELECT id_divisi, nama_divisi FROM divisi');
		return $query->result_array();
	}

	public function tambah_member($data) {
		return $this->db->insert('member', $data);
	}

	public function edit_member($data) {
		$this->db->where('id_member', $data['id_member']);
		return $this->db->update('member', $data);
	}

	public function delete_member($id) {
		$this->db->where('id_member', $id['id_member']);
		return $this->db->delete('member');
	}

}
 ?>
