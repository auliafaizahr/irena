<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Pln extends CI_Controller
{
    
	function __construct()
	{
		parent::__construct();
	}
	
	public function index()
    {
	
		
		if(is_logged_in()) {
			
			$this->load->view('templates/header'); 
			$this->load->view('pln/index');
			$this->load->view('templates/footer');
		}else{
			$this->load->view('templates/login'); 		
		}	
    }
	
	
}
