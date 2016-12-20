<?php if (!defined('BASEPATH')) exit('Tidak bisa mengakses secara langsung');
class Galeri extends CI_Controller {

  public function __construct() {
    parent::__construct();
    if ( ! $this->session->userdata('username')) {
      redirect(base_url().'admin/home/');
    }
  }
  
  private $upload_path = "./uploads/galeri/";
  public function index() {
    $data = array(
            'title' => 'Data Galeri',
            'isi' => 'admin/galeri/data_galeri');
    $this->load->view('admin/layout/wrapper', $data);
  }

  public function upload() {
    if ( ! empty($_FILES))
  		{
  			$config["upload_path"]   = $this->upload_path;
  			$config["allowed_types"] = "gif|jpg|png";
  			$this->load->library('upload', $config);

  			if ( ! $this->upload->do_upload("file")) {
  				echo "failed to upload file(s)";
  			}
  		}
  }

  public function remove() {
    $file = $this->input->post("file");
    if ($file && file_exists($this->upload_path . "/" . $file)) {
      unlink($this->upload_path . "/" . $file);
    }
  }

  public function list_files() {
    $this->load->helper("file");
		$files = get_filenames($this->upload_path);
		// we need name and size for dropzone mockfile
		foreach ($files as &$file) {
			$file = array(
				'name' => $file,
				'size' => filesize($this->upload_path . "/" . $file)
			);
		}

		header("Content-type: text/json");
		header("Content-type: application/json");
		echo json_encode($files);
  }
}
