<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include 'function.php';

class Daftar_kegiatan extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->library('parser');
		$this->load->model('dk_model');
		$this->load->helper(array('form', 'url'));
		date_default_timezone_set('Asia/Jakarta');
	}

	function dk_simpan()
	{
    	$this->load->model('dk_model');
    	$this->load->model('Greenbook_model');

		$status = array('success' => false, 'messages' => array());


		$this->form_validation->set_rules("id_instansi", "Instansi ", "trim|required");
		$this->form_validation->set_rules("instansi_pelaksana", "Instansi Pelaksana", "trim|required");
		$this->form_validation->set_rules("id_program", "Program", "trim|required");
		$this->form_validation->set_rules("proyeksi_tahun_pertama_penarikan", "Tahun Pertama Penarikan", "trim|required");
		$this->form_validation->set_rules("durasi", "Durasi", "trim|required|is_natural_no_zero");
		$this->form_validation->set_rules("judul_proyek_id", "Judul Proyek dalam Bahasa Indonesia", "trim|required");
		$this->form_validation->set_rules("judul_proyek_eng", "Judul Proyek dalam Bahasa Inggris", "trim|required");
		$this->form_validation->set_rules("ruang_lingkup_id", "Ruang Lingkup dalam Bahasa Indonesia", "trim|required");
		$this->form_validation->set_rules("ruang_lingkup_eng", "Ruang Lingkup dalam Bahasa Inggris", "trim|required");
		$this->form_validation->set_rules("dana_pendamping", "Dana Pendamping", "trim|required|numeric");
		$this->form_validation->set_rules("nilai_hibah", "Nilai Hibah", "trim|required");
		$this->form_validation->set_rules("nilai_pinjaman", "Nilai Pinjaman", "trim|required");
		$this->form_validation->set_rules("output", "Output", "trim|required");
		$this->form_validation->set_rules("outcome", "Outcome", "trim|required");
		$this->form_validation->set_rules("id_bluebook", "Kode Bluebook", "trim|required");
		$this->form_validation->set_rules("id_lender", "Lender", "trim|required");
		$this->form_validation->set_rules("id_status_lender", "Status Lender", "trim|required");
		$this->form_validation->set_rules("id_status_lembaga", "Status Lembaga", "trim|required");
		$this->form_validation->set_rules("id_greenbook", "Greenbook", "trim|required");
	
		
		//$this->form_validation->set_rules("berkas", "Berka arsip", "required");
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
		}else{ //validasi benar semua
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
			$status['success'] = true;
			
			$data 					= $_POST;
			/*$data['update_by']		= $this->session->userdata('id');
			$data['update_date']	= date('Y-m-d H:i:s');*/
			
			if($this->uri->segment(3) == 'tambah'){
				$data['nilai_admin']		= 0;
				$data['nilai_admin_ket']	= "-";
				$data['nilai_admin_id']		= $this->session->userdata('id');
				$data['nilai_admin_date']	= date('Y-m-d H:i:s');
				$data['nilai_layak']		= 0;
				$data['nilai_layak_ket']	= "-";
				$data['nilai_layak_id']		= $this->session->userdata('id');
				$data['nilai_layak_date']	= date('Y-m-d H:i:s');
				$data['masuk_drkh']			= 0;
				$data['masuk_drkh_ket']		= "-";
				$data['masuk_drkh_id']		= $this->session->userdata('id');
				$data['masuk_drkh_date']	= date('Y-m-d H:i:s');
				
				$result 				= $this->hibah_model->usulan_simpan_data($data);
			}elseif($this->uri->segment(3) == 'edit'){
				//$data['id']		= $this->input->post('id');
				$result 		= $this->dk_model->dk_simpan_data_edit($data);
			}
			
		}

		echo json_encode($status);

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
    	$this->load->model('Bluebook_model');
    	$data['id'] = $this->input->post('id');
    	$a = $this->input->post('id');
    	$data['isi'] = $this->dk_model->ambil_catatan($a);
    	$this->load->view('daftar_keg/catatan_dk', $data);
    }

    function tambah_catatan()
	{
		$this->load->model('Greenbook_model');
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
				'id_dk_proyek'							=> $this->input->post('id_dk_proyek'),
				'catatan'							=> $this->input->post('catatan'),
				//$data['id_bluebook']					= $this->input->post('id_bluebook');
				'waktu'								=> date('Y-m-d H:i:s'),
				'id_user'								=> $this->session->userdata('id'),
				
				
				);

			$hasil3 = $this->db->insert('catatan_dk', $data);

				$status['success'] 			= true;
				$data 						= $_POST;
				
			
			///
		}

		echo json_encode($data);
		//var_dump($data);
	}


	 function tambah_ke_LA()
	{
		$this->load->model('dk_model');
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
				'id_dk_proyek'					=> $this->input->post('id'),
				'id_bluebook'					=> $this->input->post('id_bluebook'),
				'id_greenbook'					=> $this->input->post('id_greenbook'),
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
				'dana_pendamping'					=> $this->input->post('dana_pendamping'),
				'id_status_lender'					=> $this->input->post('id_status_lender'),
				'id_status_lembaga'					=> $this->input->post('id_status_lembaga'),
				'tgl_DK'					=> $this->input->post('tgl_DK'),
				
				);

			$hasil3 = $this->db->insert('irena_la_proyek', $data);

			$data2 = array(
				'id' =>$this->input->post('id_usulan'),
				'is_LA'			=> "1",
				);

		 	$hasil1 =  $this->dk_model->update_LA($data2);

		   	$isi = array(
		    			'id_proyek_la' 		=> $this->dk_model->last_la()->id_usulan,
		    			
		    		);

		    //$hasil2 = $this->db->insert('irena_la_layak', $isi);

		   	$isi2 = array(
		   				'id' 	=>		$this->input->post('id'),
		   				'is_la'			=> "1",
		   				'is_la_update_at' => date('Y-m-d H:i:s'),
		   		);

		    
		    $hasil4 = $this->dk_model->save_update($isi2);
		   
					
		    	
				
			
				$data2 						= $_POST;
				//$isi 						= $_POST;
				$isi2 						= $_POST;
				$status['success'] 			= true;
					$data 						= $_POST;
				
			
			///
		}

		echo json_encode($status);
		//var_dump($data);
	}

	 public function tambahkeLA()
	{
		$this->load->model('dk_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->dk_model->detail_proyek($a);


		$this->load->view('daftar_keg/tambah_LA', $data); 
	}

	public function tampil_index()
	{
		if(is_logged_in()) {
			$this->load->view('templates/header'); 
			$this->load->view('daftar_keg/dk_index');
			$this->load->view('templates/footer'); 
		}else{
			$this->load->view('templates/login');
		}
	}

	public function tampilkan_dk_list()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('dk_model');
		$data['instansi'] = array();

		
		$data['data']= $this->dk_model->ambil_proyek_dk();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('daftar_keg/dk_list', $data);
	}


	public function hapus() {

		$this->load->model('dk_model');
		$a = $this->input->post('id');
		
		$data['detail'] = $this->dk_model->detail_proyek($a);
		

       $this->load->view('Daftar_keg/hapus_dk', $data);
       // /$this->load->view('templates/footer1');

     
    }


	   public function fix_usulan_hapus()
    {
    	$this->load->model('dk_model');
    	$this->load->model('Greenbook_model');
		$a = $this->input->post('id');

		$isi2 = array(
		   				'id' 	=>		$this->input->post('id_proyek_gb'),
		   				'is_dk'			=> "0",
		   				'is_dk_update_at' => date('Y-m-d H:i:s'),
		);

		$hasil4 = $this->Greenbook_model->save_update($isi2);

		$isi3 = array(
		   				'id' 	=>		$this->input->post('id_usulan'),
		   				'is_DK'			=> "0",
		   				
		   		);

		    
		 $hasil5 = $this->Greenbook_model->update_DK($isi3);



		$this->dk_model->hapus_usulan_fix($a);
		
    }

	public function update() {
		$this->load->model('Greenbook_model');
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
		$this->db->update('irena_daftarkegiatan_proyek', $data);


    }

	public function edit()
	{
		$this->load->model('Greenbook_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Usulan_model');
		$this->load->model('dk_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->dk_model->detail_proyek($a);
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['program']= $this->Usulan_model->ambil_program();
		$data['a'] = $a;
		$data['status_lembaga']= $this->Bluebook_model->semua_status_lembaga();
		$data['status_lender']= $this->Bluebook_model->semua_status_lender();
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['greenbook']= $this->Greenbook_model->ambil_greenbook();
		$data['lender']= $this->Bluebook_model->semua_lender();

		$this->load->view('daftar_keg/dk_edit', $data);
		//$this->load->view('templates/footer1');
		
		
	}

	public function layak()
    {
    	$this->load->model('dk_model');
		$a = $this->input->post('id');
		$data['isi'] = $this->dk_model->detail_proyek($a);
		
    	$this->load->view('daftar_keg/dk_layak', $data);
    	//$this->load->view('templates/footer1');
    }

    function dk_simpan_layak()
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
			
			$data['update_by']			= $this->session->userdata('id');
			
			//$data['nilai_admin_id']		= $this->session->userdata('id');
			$data['update_at']			= date('Y-m-d H:i:s');
			$data['is_layak']			= "1";
			$data['id']					= $this->input->post('id');
			
			$result 					= $this->dk_model->usulan_simpan_data($data);
			$status['success'] 			= true;
			$data 						= $_POST;

			
			
			///
		}
		echo json_encode($status);
		//var_dump($data);
	}



	public function ambil_gb_untuk_dk()
	{
		$this->load->helper('xcrud');
		$xcrud2 = xcrud_get_instance();	
		$xcrud2->table('irena_greenbook_proyek');	
		$xcrud2->columns('judul_proyek(ID)',  false);

		$xcrud2->unset_edit();
		$xcrud2->unset_view();
		$xcrud2->unset_remove();
		$xcrud2->unset_csv();
		$xcrud2->unset_print();
		$xcrud2->hide_button('add');
		$xcrud2->label(
			array(
				'judul_proyek(ID)'				=> 'Judul Proyek(ID)',
				)
			);

		$xcrud2->create_action('tambah_dk', 'tambah_dk_action');

		$xcrud2->button('#', 'tambah', 'fa fa-plus', 'xcrud-action', 

			array(
			'data-task' => 'action',
			'data-action' => 'tambah_dk',
			'data-primary' => '{id}',
			'data-instansi' => '{id_instansi}',
			'data-id_usulan' => '{id_usulan}',
			'data-pelaksana' => '{id_instansi_pelaksana}',
			'data-eselon_1' => '{id_eselon_1}',
			'data-judul_id' => '{judul_proyek(ID)}',
			'data-judul_eng' => '{judul_proyek(eng)}',
			'data-dana_usulan' => '{dana_usulan}',
			'data-dana_hibah' => '{nilai_hibah}',
			'data-durasi' => '{durasi}',
			'data-output' => '{output}',
			'data-outcome' => '{outcome}',
			'data-dana_pendamping' => '{dana_pendamping}',
			'data-tahun_usulan' => '{tahun_usulan}',
			'data-dana_usulan' => '{dana_usulan}',
			'data-id_program' => '{id_program}',
			'data-proyeksi' => '{proyeksi_tahun_pertama_penarikan}',
			'data-ruang_eng' => '{ruang_lingkup(eng)}',
			'data-ruang_id' => '{ruang_lingkup(ID)}',
			
			),
			'');

		return $xcrud2->render();

	}

	public function tambah()
	{
		$this->load->model('dk_model');
		$this->load->model('Greenbook_model');
		$this->load->model('Bluebook_model');
		$data['detail']= $this->dk_model->ambil_proyek_gb();

		
		$this->load->view('daftar_keg/dk_tambah', $data);
		$this->load->view('templates/footer1'); 
		
	}
	


	public function tampil_dk()
	{
		$this->load->model('dk_model');
		$this->load->model('Greenbook_model');

		$data['instansi'] = array();

		
		$data['data']= $this->dk_model->ambil_proyek_dk();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
		
		$this->load->view('templates/header'); 
		$this->load->view('daftar_keg/daftar_keg', $data);
		$this->load->view('templates/footer'); 
	}

	public function arsip()
	{
	    	$this->load->model('dk_model');
	    	$this->load->model('Bluebook_model');
	    	$this->load->model('Usulan_model');
			$a = $this->input->post('id');
			$data['detail'] = $this->dk_model->detail_proyek($a);
			$data['lembaga']= $this->Usulan_model->ambil_instansi();

			$data['dok_tambahan'] = $this->Usulan_model->ambil_dokumen_tambahan_usulan($a);

	    	$this->load->view('daftar_keg/dk_arsip_index', $data);
	    	//$this->load->view('templates/footer1');
	    

	}

	public function detil()
	{
			$this->load->model('dk_model');
		 $this->load->model('Usulan_model');
		 $this->load->model('Bluebook_model');
		 $this->load->model('Greenbook_model');
                                                
		$a = $this->input->post('id');
		$data['detail'] = $this->dk_model->detail_proyek($a);

	
		$this->load->view('daftar_keg/dk_detail', $data);
		//$this->load->view('templates/footer1');
		
	}

	
}
	

