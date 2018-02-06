<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include 'function.php';

class Loan_aggr extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->library('parser');
		date_default_timezone_set('Asia/Jakarta');
	}
	
	public function index()
	{
			$this->load->view('templates/header'); 
			$this->load->view('PLN/usulan');
			$this->load->view('templates/footer'); 
	}


		public function catatan()
    {
    	$this->load->model('Greenbook_model');
    	$this->load->model('dk_model');
    	$this->load->model('la_model');
    	$data['id'] = $this->input->post('id');
    	$a = $this->input->post('id');
    	$data['isi'] = $this->la_model->ambil_catatan($a);
    	$this->load->view('LA/catatan_la', $data);
    }

    function tambah_catatan()
	{
		$this->load->model('la_model');
		$this->load->model('dk_model');
		$status = array('success' => false, 'messages' => array());

		$this->form_validation->set_rules("id", "ID PRoyek", "trim|required");
		

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}	
		}else{ //validasi benar semua
		
			/*
			$status['success'] 	= false;
			$nilai_admin =$this->input->nilai_admin;
			$status['messages']['nilai_admin'] = $nilai_admin;
			*/

			$data = array(
				'id_la_proyek'							=> $this->input->post('id_la_proyek'),
				'catatan'							=> $this->input->post('catatan'),
				//$data['id_bluebook']					= $this->input->post('id_bluebook');
				'waktu'								=> date('Y-m-d H:i:s'),
				'id_user'								=> $this->session->userdata('id'),
				
				
				);

			$hasil3 = $this->db->insert('catatan_la', $data);

				$status['success'] 			= true;
				$data 						= $_POST;
				
			
			///
		}

		echo json_encode($data);
		//var_dump($data);
	}

	
	public function edit()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');
		$this->load->model('dk_model');
		$this->load->model('Usulan_model');
		$this->load->model('la_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->la_model->detail_proyek($a);
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['status_lembaga']= $this->Bluebook_model->semua_status_lembaga();
		$data['status_lender']= $this->Bluebook_model->semua_status_lender();
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['greenbook']= $this->Greenbook_model->ambil_greenbook();
		
		$data['lender']= $this->Bluebook_model->semua_lender();
		$data['program']= $this->Usulan_model->ambil_program();
		
		$data['a'] = $a;

	
		$this->load->view('LA/la_edit', $data);
		//$this->load->view('templates/footer1');
		
		
	}

	public function tampil_index()
	{
		if(is_logged_in()) {
			$this->load->view('templates/header'); 
			$this->load->view('LA/la_index');
			$this->load->view('templates/footer'); 
		}else{
			$this->load->view('templates/login');
		}
	}

	public function tampilkan_la_list()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('la_model');
		
		

		
		$data['instansi'] = array();

		
		$data['data']= $this->la_model->ambil_proyek_la();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('LA/la_list', $data);
	}

	public function update() {
		$this->load->model('la_model');
	 	$a	= $this->input->post('id');

		$data = array(
        'id_program'				=> $this->input->post('id_program'),
        'judul_proyek_id'			=> $this->input->post('judul_proyek_id'),
        'judul_proyek_eng'			=> $this->input->post('judul_proyek_eng'),
        'ruang_lingkup_id'			=> $this->input->post('ruang_lingkup_id'),
        'ruang_lingkup_eng'				=> $this->input->post('ruang_lingkup_eng'),
        'id_instansi'					=> $this->input->post('id_instansi'),
        'id_instansi_pelaksana'			=> $this->input->post('id_instansi_pelaksana'),
        'dana_usulan'				=> $this->input->post('dana_usulan'),
        'dana_hibah'				=> $this->input->post('dana_hibah'),
        'durasi'				=> $this->input->post('durasi'),
        'output'				=> $this->input->post('output'),
        'outcome'				=> $this->input->post('outcome'),
        'dana_pendamping'				=> $this->input->post('dana_pendamping'),
   		 );


    	$this->db->where('id', $a);
		$this->db->update('irena_la_proyek', $data);


    }

	
	

	

	public function tampil_LA()
	{	
		$this->load->model('la_model');
		$this->load->model('Greenbook_model');
		$this->load->model('Usulan_model');

		
		
		$data['instansi'] = array();

		
		$data['data']= $this->la_model->ambil_proyek_la();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
		
		$this->load->view('templates/header'); 
		$this->load->view('LA/la_view', $data);
		$this->load->view('templates/footer'); 
	}

	public function arsip()
	{
	    	$this->load->model('dk_model');
	    	$this->load->model('la_model');
	    	$this->load->model('Bluebook_model');
	    	$this->load->model('Usulan_model');
			$a = $this->input->post('id');
			$data['detail'] = $this->la_model->detail_proyek($a);
			$data['lembaga']= $this->Usulan_model->ambil_instansi();

			$data['dok_tambahan'] = $this->Usulan_model->ambil_dokumen_tambahan_usulan($a);

	    	$this->load->view('LA/la_arsip_index', $data);
	    	//$this->load->view('templates/footer1');
	    

	}

	   public function fix_usulan_hapus()
    {
    	$this->load->model('la_model');
		$id_usulan = $this->input->post('id_usulan');
		$id_dk_proyek = $this->input->post('id_dk_proyek');
		$id = $this->input->post('id');

		$isi2 = array(
		   				'id' 	=>		$this->input->post('id_dk_proyek'),
		   				'is_la'			=> "0",
		   				'is_la_update_at' => date('Y-m-d H:i:s'),
		   		);
		$hasil4 = $this->la_model->save_update($isi2);

		$isi3 = array(
		   				'id' 	=>		$this->input->post('id_usulan'),
		   				'is_LA'			=> "0",
		   				
		   		);

		    
		 $hasil5 = $this->la_model->update_LA($isi3);

	
		    
		 

		$this->la_model->hapus_usulan_fix($id);
		
    }

	public function hapus() {

		$this->load->model('la_model');
		$a = $this->input->post('id');
		
		$data['detail'] = $this->la_model->detail_proyek($a);
		$data['id_usulan'] = $this->input->post('id_usulan');
		

       $this->load->view('LA/hapus_la', $data);
       // /$this->load->view('templates/footer1');

     
    }

	public function tambah()
	{
		$this->load->model('dk_model');
		$this->load->model('Bluebook_model');
		$data['detail']= $this->dk_model->ambil_proyek_dk();

		
		$this->load->view('LA/la_tambah', $data);
		$this->load->view('templates/footer1'); 
		
	}

	public function detil()
	{

		$this->load->model('la_model');
		 $this->load->model('Usulan_model');
		 $this->load->model('Bluebook_model');
		 $this->load->model('dk_model');
		 $this->load->model('Greenbook_model');
                                                
		$a = $this->input->post('id');
		$data['detail'] = $this->la_model->detail_proyek($a);

	
		$this->load->view('LA/la_detail', $data);
		//$this->load->view('templates/footer1');
		
		
		
	}


}
	

