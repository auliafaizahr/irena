<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Bluebook extends CI_Controller {


	function __construct()
	{
		parent::__construct();
		$this->load->library('parser');
		$this->load->model('Bluebook_model');
		$this->load->helper(array('form', 'url'));
		date_default_timezone_set('Asia/Jakarta');
	}

		public function update_GB($data2)
	{
			$id = $data2['id_usulan'];
			$this->db->set('is_GB', 1);
			$this->db->where('id',$id);
			$this->db->update('irena_usulan_pln', $data2);
			
	}

	
	public function index()
	{
			$this->load->view('templates/header'); 
			//$this->load->view('PLN/usulan');
			$this->load->view('templates/footer'); 
	}

	public function tambahkeGB()
	{
		$this->load->model('Bluebook_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->Bluebook_model->detail_proyek($a);


		$this->load->view('Bluebook/tambah_gb', $data); 
	}

	public function tambah_lagi()
	{
		$this->load->model('Bluebook_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->Bluebook_model->detail_proyek($a);


		$this->load->view('Bluebook/tambah_lagi_ke_gb', $data); 
	}

		public function tampil_index()
	{
		if(is_logged_in()) {
			$this->load->view('templates/header'); 
			$this->load->view('bluebook/bluebook_index');
			$this->load->view('templates/footer'); 
		}else{
			$this->load->view('templates/login');
		}
	}

		public function tampilkan_bb_list()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		
		
		$data['instansi'] = array();

		$data['layak'] = $this->Bluebook_model->ambil_usulan();
		$data['data']= $this->Bluebook_model->ambil_proyek_bluebook();
		$data['lembaga']= $this->Bluebook_model->ambil_instansi();
		$data['program']= $this->Bluebook_model->ambil_program();
		$data['arsip'] = $this->Bluebook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('Bluebook/bb_list', $data);
	}

	public function catatan()
    {
    	$this->load->model('Usulan_model');
    	$this->load->model('Greenbook_model');
    	$this->load->model('Bluebook_model');
    	$data['id'] = $this->input->post('id');
    	$a = $this->input->post('id');
    	$data['isi'] = $this->Bluebook_model->ambil_catatan($a);
    	$this->load->view('Bluebook/catatan_bb', $data);
    }


	function tambah_catatan()
	{
		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
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
				'id_bb_proyek'							=> $this->input->post('id_bb_proyek'),
				'catatan'							=> $this->input->post('catatan'),
				//$data['id_bluebook']					= $this->input->post('id_bluebook');
				'waktu'								=> date('Y-m-d H:i:s'),
				'id_user'								=> $this->session->userdata('id'),
				
				
				
				);

			$hasil3 = $this->db->insert('catatan_bb', $data);

				$status['success'] 			= true;
				$data 						= $_POST;
				
			
			///
		}

		echo json_encode($data);
		//var_dump($data);
	}



	 function tambah_ke_GB()
	{
		$this->load->model('Usulan_model');
		$status = array('success' => false, 'messages' => array());

		$this->form_validation->set_rules("id", "ID PRoyek", "trim|required");
		$this->form_validation->set_rules("nilai_layak", "Penilaian administrasi", "trim|required");
		$this->form_validation->set_rules("nilai_layak_ket", "Keterangan penilaian", "trim|required");
		
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

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
				'id_usulan'					=> $this->input->post('id_usulan'),
				//$data['id_bluebook']					= $this->input->post('id_bluebook');
				'id_program'					=> $this->input->post('id_program'),
				'id_instansi'					=> $this->input->post('id_instansi'),
				'id_instansi_pelaksana'					=> $this->input->post('id_instansi_pelaksana'),
				//$data['id']					= $this->input->post('id');
				'judul_proyek_id'					=> $this->input->post('judul_proyek_id'),
				'judul_proyek_eng'					=> $this->input->post('judul_proyek_eng'),
				'id_lender'					=> $this->input->post('id_lender'),
				'id_eselon_1'					=> $this->input->post('id_eselon_1'),
				'output'					=> $this->input->post('output'),
				'outcome'					=> $this->input->post('outcome'),
				'nilai_hibah'					=> $this->input->post('nilai_hibah'),
				'nilai_pinjaman'					=> $this->input->post('nilai_pinjaman'),
				'dana_pendamping'					=> $this->input->post('nilai_pendamping'),
				'id_status_lender'					=> $this->input->post('id_status_lender'),
				'id_status_lembaga'					=> $this->input->post('id_status_lembaga'),
				'id_bb_proyek'					=> $this->input->post('id'),
				
				);

			$hasil3 = $this->db->insert('irena_greenbook_proyek', $data);

			$data2 = array
			( 'is_gb_update_by'			=> $this->session->userdata('id'),
			'id' =>$this->input->post('id_usulan'),
			'is_GB'			=> "1",
				
				);

		 	$hasil1 =  $this->Bluebook_model->update_GB($data2);

		   	$isi = array(
		    			'id_proyek_gb' 		=> $this->Bluebook_model->last_gb()->id,
		    			
		    		);

		    $hasil2 = $this->db->insert('irena_gb_layak', $isi);

		   	$isi2 = array(
		   				'is_gb_update_by' => $this->session->userdata('id'),
		   				'id' 	=>		$this->input->post('id'),
		   				'is_GB'			=> "1",
		   				'is_gb_update_at' => date('Y-m-d H:i:s'),
		   		);

		    
		    $hasil4 = $this->Bluebook_model->save_update($isi2);
		   
					
		    	
				
			
				$data2 						= $_POST;
				$isi 						= $_POST;
				$isi2 						= $_POST;
				$status['success'] 			= true;
					$data 						= $_POST;
				
			
			///
		}

		echo json_encode($status);
		//var_dump($data);
	}

	   public function fix_usulan_hapus()
    {
    	$this->load->model('Bluebook_model');
    	$this->load->model('Usulan_model');
		$a = $this->input->post('id');

		$isi3 = array(
		   				'id' 	=>		$this->input->post('id_usulan_proyek'),
		   				'is_BB'			=> "0",
		   				
		   		);

		    
		 $hasil5 = $this->Usulan_model->update_BB($isi3);


		$this->Bluebook_model->hapus_usulan_fix($a);
		
    }

    	


	public function hapus() {

		$this->load->model('Bluebook_model');
		$a = $this->input->post('id');
		
		$data['detail'] = $this->Bluebook_model->detail_proyek($a);
		

       $this->load->view('Bluebook/hapus_BB', $data);
       // /$this->load->view('templates/footer1');

     
    }
	
	public function layak()
    {
    	$this->load->model('Bluebook_model');
		$a = $this->input->post('id');
		$data['isi'] = $this->Bluebook_model->detail_proyek($a);

    	$this->load->view('Bluebook/bb_layak', $data);
    	//$this->load->view('templates/footer1');
    }

	 public function arsip()
	    {
	    	$this->load->model('Bluebook_model');
	    	$this->load->model('Usulan_model');
			$a = $this->input->post('id');
			$data['detail'] = $this->Bluebook_model->detail_proyek($a);
			$data['lembaga']= $this->Usulan_model->ambil_instansi();

			$data['dok_tambahan'] = $this->Usulan_model->ambil_dokumen_tambahan_usulan($a);

	    	$this->load->view('Bluebook/bb_arsip_index', $data);
	    	//$this->load->view('templates/footer1');
	    

	    }

	  public function tambah_arsip_surat()
	  {
	  	$this->load->model('Bluebook_model');
	  	$this->load->model('Usulan_model');
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['jenis_arsip']= $this->Usulan_model->jenis_arsip();

		$this->load->view('Bluebook/log_arsip_tambah', $data);
	  }


	public function tampil_bluebook()
	{	
		if(is_logged_in()) {
		$this->load->model('Bluebook_model');
		
		
		$data['instansi'] = array();

		$data['layak'] = $this->Bluebook_model->ambil_usulan();
		$data['data']= $this->Bluebook_model->ambil_proyek_bluebook();
		$data['lembaga']= $this->Bluebook_model->ambil_instansi();
		$data['program']= $this->Bluebook_model->ambil_program();
		$data['arsip'] = $this->Bluebook_model->ambil_arsip();
		//$data['isi'] = $this->ambil_bb_untuk_gb();
		
		$this->load->view('templates/header'); 
		$this->load->view('PLN/bluebook', $data);
		$this->load->view('templates/footer'); 

		}else{
			$this->load->view('templates/login');
		}
	}

	  function usulan_simpan_layak()
	{
		$status = array('success' => false, 'messages' => array());

		$this->form_validation->set_rules("id", "ID PRoyek", "trim|required");
		$this->form_validation->set_rules("nilai_layak", "Penilaian administrasi", "trim|required");
		$this->form_validation->set_rules("nilai_layak_ket", "Keterangan penilaian", "trim|required");
		
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

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
			
			
			//$data['nilai_admin_id']		= $this->session->userdata('id');
			$data['update_at']			= date('Y-m-d H:i:s');
			$data['update_by']			= $this->session->userdata('id');
			$data['id']					= $this->input->post('id');

			$data['is_layak']			= $this->input->post('is_layak');
			$result 					= $this->Bluebook_model->usulan_simpan_data($data);
			$status['success'] 			= true;
			$data 						= $_POST;
			

			
			
			///
		}
		echo json_encode($status);
		//var_dump($data);
	}

	public function detil()
	{

		$this->load->model('Bluebook_model');
		$this->load->model('Usulan_model');
		$this->load->model('dk_model');
		$this->load->model('Greenbook_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->Bluebook_model->detail_proyek($a);

	
		$this->load->view('bluebook/bb_detail', $data);
		//$this->load->view('templates/footer1');
		
		
		
	}

	public function delete($x)
	{
		$this->load->model('Bluebook_model');
		$a = $this->input->post('id');
		$this->Bluebook_model->delete($a);
	}

	public function edit()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('Usulan_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->Bluebook_model->detail_proyek($a);
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['status_lembaga']= $this->Bluebook_model->semua_status_lembaga();
		$data['status_lender']= $this->Bluebook_model->semua_status_lender();
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		
		$data['lender']= $this->Bluebook_model->semua_lender();
		$data['program']= $this->Usulan_model->ambil_program();
		
		$data['a'] = $a;

		$this->load->view('Bluebook/bb_edit', $data);
		//$this->load->view('templates/footer1');
		
		
	}

	public function update() {
		$this->load->model('Bluebook_model');
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
		$this->db->update('irena_bluebook_proyek', $data);


    }


	public function tambah_usulan()
	{
		$id = $this->input->post('id');

		$this->load->model('Usulan_model');
	}
}


