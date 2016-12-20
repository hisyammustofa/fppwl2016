<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class My_counter extends CI_Controller
{
    public $count_visitor;

    public function __construct()
    {
        parent::__construct();
        $this->load->model('counter/md_counter');
        $this->md_counter->update_count();
    }

    public function index() {
      echo "test";
    }
}
