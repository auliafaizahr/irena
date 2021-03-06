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

	public function detail_map()
	{
		$this->load->model('Greenbook_model');
		 $this->load->model('Usulan_model');
		 $this->load->model('Bluebook_model');
		$data['id_lokasi'] = $this->input->post('id');
		//$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi();
		
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['program']= $this->Usulan_model->ambil_program();
		$data['arsip'] = $this->Usulan_model->ambil_arsip();
		$data['lokasi'] = $this->Usulan_model->ambil_lokasi();
		
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['status_lembaga']= $this->Bluebook_model->semua_status_lembaga();
		$data['status_lender']= $this->Bluebook_model->semua_status_lender();
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['greenbook']= $this->Greenbook_model->ambil_greenbook();
		$data['provinsi']= $this->Greenbook_model->ambil_provinsi();
		$data['sektor']= $this->Greenbook_model->ambil_sektor();
		
		$data['lender']= $this->Bluebook_model->semua_lender();
	


		$this->load->view('Peta/modal_bb', $data);
	}

	public function tampilkan_proyek_lokasi()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('dk_model');
		$data['instansi'] = array();
		$id_lokasi = $this->uri->segment(3);
		//$id_lokasi = '339';
		$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi($id_lokasi);

		
		//$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('Peta/bb_proyek_list', $data);
	}

	public function tampilkan_proyek_lokasi_2()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('dk_model');
		$data['instansi'] = array();
		$id_lokasi = $this->uri->segment(3);
		//$id_lokasi = '339';
		$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi($id_lokasi);

		
		//$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('Peta/bb_proyek_list', $data);
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

	function bb_simpan()
	{
    	$this->load->model('Usulan_model');
    	$this->load->model('Bluebook_model');

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

				$id_					= $this->input->post('id');
				$id_bb					= $this->input->post('id_bluebook');
				$id_instansi			= $this->input->post('id_instansi');
				$id_lender				= $this->input->post('id_lender');
				$id_status				= $this->input->post('id_status');
				$this->Bluebook_model->hapus_dari_lokasi($id_);

				$select2data 			= $this->input->post('lokasi');
				$array_lokasi			= explode(",", $select2data);
				
				$data2 = [];
				foreach($array_lokasi as $lokasi) {
				  $data2[] = [
				    'id_bb_proyek' 		=>  $id_,
				    'id_instansi' 		=>  $id_instansi,
				    'id_status' 		=>  $id_status,
				    'id_bb' 			=>  $id_bb,
				    'id_lender' 		=>  $id_lender,
				    
				    'id_lokasi' 		=> $lokasi,
				  ];
				}
	 			$this->db->insert_batch('irena_bb_lokasi', $data2);
				$result 		= $this->Bluebook_model->bb_simpan_data_edit($data);

			
				/*
				//untuk ngambil id_lokasi yang sama

				SELECT irena_view_bb_lokasi.id_proyek AS id_bb_proyek, irena_view_gb_lokasi.id_proyek AS id_gb_proyek, irena_view_dk_lokasi.id_proyek AS id_dk_proyek FROM irena_view_bb_lokasi 
				LEFT JOIN irena_view_gb_lokasi ON irena_view_bb_lokasi.id_lokasi = irena_view_gb_lokasi.id_lokasi
				FULL JOIN irena_view_dk_lokasi ON irena_view_bb_lokasi.id_lokasi = irena_view_dk_lokasi.id_lokasi
				ORDER BY id_bb_proyek

				SELECT irena_view_bb_lokasi.id_proyek AS id_bb_proyek, irena_view_bb_lokasi.id_lokasi AS id_lokasi, irena_view_gb_lokasi.id_proyek AS id_gb_proyek, irena_view FROM irena_view_bb_lokasi, irena_view_gb_lokasi WHERE irena_view_bb_lokasi.id_lokasi IN (SELECT irena_view_gb_lokasi.id_lokasi FROM irena_view_gb_lokasi) GROUP BY id_lokasi

				SELECT irena_view_bb_lokasi.id_proyek AS id_bb_proyek, irena_view_bb_lokasi.id_lokasi AS id_lokasi, irena_view_gb_lokasi.id_proyek AS id_gb_proyek FROM irena_view_bb_lokasi, irena_view_gb_lokasi WHERE irena_view_bb_lokasi.id_lokasi IN (SELECT irena_view_gb_lokasi.id_lokasi FROM irena_view_gb_lokasi) GROUP BY id_lokasi

				SELECT irena_view_bb_lokasi.id_proyek AS id_bb_proyek, irena_view_bb_lokasi.id_lokasi AS id_lokasi, irena_view_gb_lokasi.id_proyek AS id_gb_proyek, irena_view_dk_lokasi.id_proyek AS id_dk_proyek FROM irena_view_bb_lokasi, irena_view_gb_lokasi, irena_view_dk_lokasi WHERE irena_view_bb_lokasi.id_lokasi IN (SELECT irena_view_gb_lokasi.id_lokasi FROM irena_view_gb_lokasi) OR irena_view_bb_lokasi.id_lokasi IN(SELECT irena_view_dk_lokasi.id_lokasi) OR irena_view_gb_lokasi.id_lokasi IN (SELECT irena_view_dk_lokasi.id_lokasi)  GROUP BY id_lokasi

				SELECT irena_view_bb_lokasi.id_proyek AS id_bb_proyek, irena_view_bb_lokasi.id_lokasi AS id_lokasi, irena_view_gb_lokasi.id_proyek AS id_gb_proyek, irena_view_dk_lokasi.id_proyek AS id_dk_proyek FROM irena_view_bb_lokasi, irena_view_gb_lokasi, irena_view_dk_lokasi WHERE irena_view_bb_lokasi.id_lokasi IN (SELECT irena_view_gb_lokasi.id_lokasi FROM irena_view_gb_lokasi) OR irena_view_bb_lokasi.id_lokasi IN(SELECT irena_view_dk_lokasi.id_lokasi) OR irena GROUP BY id_lokasi

				SELECT irena_view_bb_lokasi.id_proyek AS id_bb_proyek, irena_view_bb_lokasi.id_lokasi AS id_lokasi, irena_view_gb_lokasi.id_proyek AS id_gb_proyek, irena_view_gb_lokasi.id_lokasi AS lokasi_proyek_gb FROM irena_view_bb_lokasi, irena_view_gb_lokasi WHERE irena_view_bb_lokasi.id_lokasi IN (SELECT irena_view_gb_lokasi.id_lokasi FROM irena_view_gb_lokasi)

				SELECT irena_view_bb_lokasi.id_proyek AS id_bb_proyek, irena_view_bb_lokasi.id_lokasi AS id_lokasi, irena_view_gb_lokasi.id_proyek AS id_gb_proyek, irena_view_dk_lokasi.id_proyek AS id_dk_proyek FROM irena_view_bb_lokasi, irena_view_gb_lokasi, irena_view_dk_lokasi WHERE irena_view_bb_lokasi.id_lokasi IN (SELECT irena_view_gb_lokasi.id_lokasi FROM irena_view_gb_lokasi) OR irena_view_bb_lokasi.id_lokasi IN(SELECT irena_view_dk_lokasi.id_lokasi) GROUP BY id_lokasi


				CREATE VIEW irena_view_bb_lokasi AS
				SELECT irena_bb_lokasi.id AS id_proyek, irena_bb_lokasi.id_bb AS id_bb, irena_bb_lokasi.id_lokasi AS id_lokasi, irena_provinsi_kabkota.nama AS lokasi, irena_provinsi_kabkota.latitude AS latitude, irena_provinsi_kabkota.longitude AS longitude FROM irena_bb_lokasi JOIN irena_provinsi_kabkota ON irena_bb_lokasi.id_lokasi = irena_provinsi_kabkota.id

				CREATE VIEW irena_view_gb_lokasi AS
				SELECT irena_gb_lokasi.id AS id_proyek, irena_instansi_2.nama_instansi AS instansi, irena_greenbook_proyek.judul_proyek_eng AS judul_proyek, irena_greenbook_proyek.nilai_pinjaman AS nilai_pinjaman, irena_lender.lender AS lender, irena_gb_lokasi.id_bb AS id_bb, irena_bluebook_kode.nama AS bluebook,  irena_gb_lokasi.id_lokasi AS id_lokasi,irena_gb_lokasi.id_gb AS id_gb, irena_greenbook_kode.nama AS kode_gb, irena_provinsi_kabkota.nama AS lokasi, irena_provinsi_kabkota.latitude AS latitude, irena_provinsi_kabkota.longitude AS longitude FROM irena_gb_lokasi JOIN irena_lender ON irena_gb_lokasi.id_lender = irena_lender.id JOIN irena_instansi_2 ON irena_gb_lokasi.id_instansi = irena_instansi_2.nama_instansi JOIN irena_provinsi_kabkota ON irena_gb_lokasi.id_lokasi = irena_provinsi_kabkota.id JOIN irena_bluebook_kode ON irena_gb_lokasi.id_bb = irena_bluebook_kode.id JOIN irena_greenbook_kode ON irena_gb_lokasi.id_gb = irena_greenbook_kode.id JOIN irena_greenbook_proyek ON irena_gb_lokasi.id_gb_proyek = irena_greenbook_proyek.id

				CREATE VIEW irena_view_bb_lokasi AS
				SELECT irena_bb_lokasi.id AS id_proyek, irena_instansi_2.nama_instansi AS instansi, irena_bluebook_proyek.judul_proyek_eng AS judul_proyek, irena_bluebook_proyek.nilai_pinjaman AS nilai_pinjaman, irena_lender.lender AS lender, irena_bb_lokasi.id_bb AS id_bb, irena_bluebook_kode.nama AS bluebook, irena_status_umum.nama AS status_, irena_bb_lokasi.id_lokasi AS id_lokasi, irena_provinsi_kabkota.nama AS lokasi, irena_provinsi_kabkota.latitude AS latitude, irena_provinsi_kabkota.longitude AS longitude FROM irena_bluebook_proyek JOIN irena_lender ON irena_bluebook_proyek.id_lender = irena_lender.id JOIN irena_status_umum ON irena_bluebook_proyek.id_status = irena_status_umum.id JOIN irena_instansi_2 ON irena_bluebook_proyek.id_instansi = irena_instansi_2.nama_instansi JOIN irena_provinsi_kabkota ON irena_bb_lokasi.id_lokasi = irena_provinsi_kabkota.id JOIN irena_bluebook_kode ON irena_bluebook_proyek.id_bluebook = irena_bluebook_kode.id   

*/


				/*$isi = array(
					'id_bb_proyek'  		=> $this->input->post('id'),
					'id_bb_proyek'  		=> $this->input->post('id'),
					);*/
				//$result2		= $this->Bluebook_model->tambah_proyek_lokasi($isi);
			}
			
		}

		echo json_encode($status);

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

		function tampilkan_data_log_bb()
	{
		$this->load->model('hibah_model');
		$id_proyek 		= $this->uri->segment(3);
		$data['log'] 	= $this->Bluebook_model->ambil_data_log_bb_by_id_proyek($id_proyek);
		$this->load->view('usulan/log_usulan_list', $data);
	}

	public function tampilkan_dok_bb_list()
	{
		$this->load->model('Usulan_model');

		$data['id_proyek'] 		= $this->uri->segment(3);
		$id_proyek		= $this->uri->segment(3);
		$data['dok'] 	= $this->Bluebook_model->ambil_dok_bb_by_id_proyek($id_proyek);
		$this->load->view('usulan/dok_usulan_list', $data);

		 			
	}




	 
	 function tambah_ke_GB()
	{
		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
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
		
			$data['id']					= $this->input->post('id');
			date_default_timezone_set('Asia/Jakarta');
			if ($this->session->userdata('id_user_level') != '5') {

			//$data['nilai_admin_id']		= $this->session->userdata('id');
			$data['is_gb_update_by']			= $this->session->userdata('id');
			$data['is_gb_update_at']			= date('Y-m-d H:i:s');
			$data['is_gb_kasubdit']				= '0';
			$data['is_GB']						= $this->input->post('nilai_layak');
			$data['gb_catatan_catatan']			= $this->input->post('nilai_layak_ket');
			$result 							= $this->Bluebook_model->bb_layak_simpan_data($data);
			$status['success'] 					= true;
			$data 								= $_POST;

			}elseif ($this->session->userdata('id_user_level') == '5') {
			
				$gb_staff							= $this->Bluebook_model->ambil_layak($data['id'])->is_GB; //ngambil nilai dari staff buat dibandingin
				
				$gb_kasubdit 					= $this->input->post('nilai_layak');
				
				if ($gb_staff == '2') {
					if ( $gb_kasubdit	== '2' ) {

						//tambah ke database proyek bluebook
						# code...

							
			    	$data = array(
					'id'					=> $this->input->post('id'),
			        
			        'kasubdit_gb_at'			=> date('Y-m-d H:i:s'),
			        'is_gb_kasubdit'			=>  $this->input->post('nilai_layak'),
			        'gb_catatan_kasubdit'			=>  $this->input->post('nilai_layak_ket'),
			        'kasubdit_gb_by'			=> $this->session->userdata('id'),

			        
			   		 );
					$result 					= $this->Bluebook_model->bb_layak_simpan_data($data);

					$data_isGB = array(
					'id'					=> $this->input->post('id_usulan'),
			        'is_GB'					=> '1',
			        
			   		 );
					$result4 					= $this->Usulan_model->update_isBB($data_isGB);



			    	$data2 = array(
					//'id'					=> $this->input->post('id'),
					'id_usulan'					=> $this->input->post('id_usulan'),
					'id_bb_proyek'					=> $this->input->post('id'),

			        
			        'id_program'			=> $this->input->post('id_program'),
			        'id_instansi'			=>  $this->input->post('id_instansi'),
			        'instansi_pelaksana'			=>  $this->input->post('instansi_pelaksana'),
			        'tahun_usulan'			=> $this->input->post('tahun_usulan'),
			        'id_lender'			=> $this->input->post('id_lender'),
			        'id_bluebook'			=> $this->input->post('id_bluebook'),
			        'judul_proyek_id'			=>  $this->input->post('judul_proyek_id'),
			        'judul_proyek_eng'			=>  $this->input->post('judul_proyek_eng'),
			        'ruang_lingkup_id'			=>  $this->input->post('ruang_lingkup_id'),
			        'ruang_lingkup_eng'			=>  $this->input->post('ruang_lingkup_eng'),
			        'id_status_lembaga'			=>  $this->input->post('id_status_lembaga'),
			        'id_status_lender'			=>  $this->input->post('id_status_lender'),
			        'durasi'			=>  $this->input->post('durasi'),
			        'proyeksi_tahun_pertama_penarikan'			=>  $this->input->post('proyeksi_tahun_pertama_penarikan'),
			        'output'			=>  $this->input->post('output'),
			        'outcome'			=>  $this->input->post('outcome'),
			        'nilai_pinjaman'			=>  $this->input->post('nilai_pinjaman'),
			        'nilai_hibah'			=>  $this->input->post('nilai_hibah'),
			        'dana_pendamping'			=>  $this->input->post('dana_pendamping'),
			        'id_sektor'			=>  $this->input->post('id_sektor'),
			        'infra'			=>  $this->input->post('infra'),
			        'id_status'			=>  $this->input->post('id_status'),
			        'lokasi'			=>  $this->input->post('lokasi'),
			   		 );

					$result2 					= $this->Bluebook_model->tambah_ke_GB($data2);

					$isi = array(
		    			'id_proyek_gb' 		=> $this->Bluebook_model->last_gb()->id,
		    			
		    		);

					$result3 					= $this->Bluebook_model->tambah_ke_GB_layak($isi);

		    	
		    		

						//$data 						= $_POST;
						$data2 						= $_POST;
						$data 						= $_POST;
						$data_isGB 						= $_POST;
						$isi 						= $_POST;
				
						$status['success'] 			= true;

					}elseif( $gb_kasubdit	== '1' ){
						$data['kasubdit_gb_at']			= date('Y-m-d H:i:s');
						$data['is_gb_kasubdit']			= $this->input->post('nilai_layak');
						$data['kasubdit_gb_by']			= $this->session->userdata('id');


						$data['gb_catatan_kasubdit']			= $this->input->post('nilai_layak_ket');
						$result 					= $this->Bluebook_model->bb_layak_simpan_data($data);

						$status['success'] 			= true;
						$data 						= $_POST;
					}

				}else{
					$data['kasubdit_gb_at']			= date('Y-m-d H:i:s');
					$data['gb_catatan_kasubdit']			= $this->input->post('nilai_layak_ket');
					$result 					= $this->Bluebook_model->bb_layak_simpan_data($data);
					$data['kasubdit_gb_by']			= $this->session->userdata('id');

					$status['success'] 			= true;
					$data 						= $_POST;
				}
			}

		
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
		   				'id' 	=>		$this->input->post('id_usulan_pln'),
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
   /* CREATE VIEW irena_view_bb_lokasi AS
    SELECT irena_bb_lokasi.id AS id, irena_bb_lokasi.id_bb_proyek AS id_proyek, irena_instansi_2.nama_instansi AS instansi, irena_bluebook_proyek.judul_proyek_eng AS judul_proyek, irena_bb_lokasi.id_lokasi as id_lokasi, irena_provinsi_kabkota.nama AS lokasi, irena_provinsi_kabkota.latitude AS latitude, irena_provinsi_kabkota.longitude AS longitude, irena_status_umum.nama AS status_umum, irena_lender.lender AS lender, irena_bluebook_kode.nama AS bb, irena_bluebook_proyek.nilai_pinjaman AS nilai_pinjaman FROM irena_bb_lokasi JOIN irena_bluebook_proyek ON  irena_bb_lokasi.id_bb_proyek = irena_bluebook_proyek.id JOIN irena_instansi_2 ON irena_bb_lokasi.id_instansi = irena_instansi_2.id JOIN irena_bluebook_kode ON irena_bb_lokasi.id_bb = irena_bluebook_kode.id JOIN irena_lender ON irena_bb_lokasi.id_lender = irena_lender.id JOIN irena_status_umum ON irena_bb_lokasi.id_status = irena_status_umum.id JOIN irena_provinsi_kabkota ON irena_bb_lokasi.id_lokasi = irena_provinsi_kabkota.id*/
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
			
			$data['id']					= $this->input->post('id');
			date_default_timezone_set('Asia/Jakarta');
			if ($this->session->userdata('id_user_level') != '5') {

			//$data['nilai_admin_id']		= $this->session->userdata('id');
			$data['update_by']			= $this->session->userdata('id');
			$data['update_at']			= date('Y-m-d H:i:s');
			$data['is_kasubdit_layak']		= '0';
			$data['is_layak']			= $this->input->post('is_layak');
			$data['layak_keterangan']			= $this->input->post('nilai_layak_ket');
			$result 					= $this->Bluebook_model->bb_layak_simpan_data($data);
			$status['success'] 			= true;
			$data 						= $_POST;

			}elseif ($this->session->userdata('id_user_level') == '5') {
				$data['kasubdit_layak_by']			= $this->session->userdata('id');
				$data['kasubdit_layak_at']			= date('Y-m-d H:i:s');
				$data['is_kasubdit_layak']			= $this->input->post('is_layak');
				$data['layak_catatan_kasubdit']			= $this->input->post('nilai_layak_ket');
				$result 					= $this->Bluebook_model->bb_layak_simpan_data($data);
				$status['success'] 			= true;
				$data 						= $_POST;
			}
			
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
		$this->load->model('Greenbook_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->Bluebook_model->detail_proyek($a);
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['status_lembaga']= $this->Bluebook_model->semua_status_lembaga();
		$data['status_lender']= $this->Bluebook_model->semua_status_lender();
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['sektor']= $this->Greenbook_model->ambil_sektor();
		$data['status_umum']= $this->Usulan_model->semua_status_umum();
		$data['lokasi'] = $this->Usulan_model->ambil_lokasi();
		
		$data['lender']= $this->Bluebook_model->semua_lender();
		$data['program']= $this->Usulan_model->ambil_program();
		$data['infra'] = $this->Usulan_model->ambil_infra();
		
		
		$data['a'] = $a;

		$this->load->view('Bluebook/bb_edit', $data);
		//$this->load->view('templates/footer1');
		
		
	}

	 function tampilkan_log_bb_index()
	{
    	$this->load->model('Usulan_model');
    	$this->load->model('Bluebook_model');

		$id_proyek							= $this->input->post('id');
		$data['usulan']						= $this->Bluebook_model->detail_proyek($id_proyek);
		//$data['usulan']			= $query->row();
		$this->load->view('Bluebook/log_bb_dokumen_index', $data);
		//$this->load->view('sbsn/usulan/log_usulan_index');
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


