<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Dashboard extends CI_Controller
{
    
	function __construct()
	{
		parent::__construct();
	}
	
	public function index()
    {
		$instansi           =   "";
		$dpp_sbsn           =   "";
		$provinsi           =   "";
		
		if(is_logged_in()) {
			//Google Maps
			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$this->googlemaps->initialize($config);
			$data['map'] = $this->googlemaps->create_map();	
			
			$bulan 		= date("m");
			$id_user	= $this->session->userdata('id');
			//$bulan ="11";
			$data['ulang_tahun'] 	= $this->dashboard_model->ambil_ulang_tahun($bulan);
			
			$data['hilang']=0;
			
			$this->load->view('templates/header'); 
			$this->load->view('dashboard/index', $data);
			$this->load->view('templates/footer');
		}else{
			$this->load->view('templates/login'); 		
		}	
    }
	
	function tampilkan_disposisi_by_user()
	{
		$id_user	= $this->session->userdata('id');
		$data['disposisi']		= $this->dashboard_model->ambil_disposisi_per_user($id_user);
		$this->load->view('dashboard/arsip_list', $data);
	}
	
	function simpan_arsip()
	{
		$status = array('success' => false, 'messages' => array());

		$this->form_validation->set_rules("id_status", "Status", "trim|required");
		$this->form_validation->set_rules("selesai_cat", "Catatan", "trim|required");
		$this->form_validation->set_rules("selesai_by", "Oleh", "trim|required");
		$this->form_validation->set_rules("selesai_date", "Tanggal", "trim|required");
		
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
		}else{ //validasi benar semua
			
			$data 		= $_POST;
			$result 	= $this->arsip_model->simpan_data($data);
			
			$status['success'] = true;
			
		}

		echo json_encode($status);
	}
	
	function do_login()
	{
		$this->auth->restrict(true);
		$this->form_validation->set_rules('email', 'Email', 'trim|xss_clean');
		$this->form_validation->set_rules('password', 'Password', 'trim|xss_clean');
		if ($this->form_validation->run() == FALSE)
		{
			echo warning('Maaf, validasi gagal','');
		}
		else
		{
			$login = array(
						'email'		=> $this->input->post('email'),
						'password'	=> MD5($this->input->post('password'))
			);
			
			if($this->auth->do_login($login))
			{
				//echo goToPage('awal/index');
				echo goToPage('./');
			}
			else
			{
				echo warning('Maaf, user name dan password yang Anda masukkan salah!','#');
			}
			
		}
	}
	
	public function logout()
	{
		$this->auth->logout();
		echo goToPage('dashboard/index');
        
	}
	
	function tampilkan_form_arsip_edit()
	{
		
		$data['status_arsip'] 	= $this->arsip_model->pilih_jenis_status();
		
		
		$id 					= $this->uri->segment(3);
		$query					= $this->arsip_model->ambil_arsip_by_id($id);
		$data['arsip']			= $query->row();	
		
		$this->load->view('dashboard/arsip_edit', $data);
	}
	
	function lookup2()
	{
		$json = [];

		$this->load->database();
		
		if(!empty($this->input->get("q"))){
			
			$this->db->like('no', $this->input->get("q"))->or_like('perihal', $this->input->get("q"))->or_like('no', $this->input->get("q"));
			$query = $this->db->select("id, CONCAT(no, ' ', perihal) as text")
						->limit(10)
						->get("irena_arsip");
			$json = $query->result();
			/*
			$q= $this->input->get("q");
			$sql =  "SELECT id, no + ' ' + perihal as text FROM irena_arsip
					WHERE no LIKE '%$q%' OR perihal LIKE  '%$q%' LIMIT 10";
			$query = 	$this->db->query($sql);		
			$json = $query->result();*/
		}
		
		echo json_encode($json);
	}
	
	function cari_proyek()
	{
		//$keyword 			= $this->input->post('cari');
		$keyword 		= $this->uri->segment(3);
		$data['sbsn'] 	= $this->dashboard_model->ambil_semua_proyek_sbsn($keyword);	
		$data['hibah'] 	= $this->dashboard_model->ambil_semua_proyek_hibah($keyword);	
		$this->load->view('dashboard/proyek_list', $data);
		//$this->load->view('dashboard/proyek_list');
	}
	
}
