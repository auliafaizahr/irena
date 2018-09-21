<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include 'function.php';

class Greenbook extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->library('parser');
		$this->load->model('Greenbook_model');
		$this->load->helper(array('form', 'url'));
		date_default_timezone_set('Asia/Jakarta');
	}
	
	public function index()
	{
			$this->load->view('templates/header'); 
			$this->load->view('PLN/usulan');
			$this->load->view('templates/footer'); 
	}

		public function tampilkan_gb_list_1()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		
		
		$data['instansi'] = array();

		$data['layak'] = $this->Bluebook_model->ambil_usulan();
		$data['data']= $this->Greenbook_model->total_kegiatan_dan_nilai_gb();
		$data['lembaga']= $this->Bluebook_model->ambil_instansi();
		$data['program']= $this->Bluebook_model->ambil_program();
		$data['arsip'] = $this->Bluebook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('report/Greenbook/gb_report_list', $data);
	}

			public function tampil_gb_banding()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		
		
		$data['instansi'] = array();

		$data['layak'] = $this->Bluebook_model->ambil_usulan();
		$data['data']= $this->Greenbook_model->total_kegiatan_dan_nilai_gb();
		$data['lembaga']= $this->Bluebook_model->ambil_instansi();
		$data['program']= $this->Bluebook_model->ambil_program();
		$data['arsip'] = $this->Bluebook_model->ambil_arsip();
		$data['greenbook']= $this->Greenbook_model->ambil_greenbook();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('report/Greenbook/gb_banding', $data);
	}




	function gb_simpan()
	{
    	$this->load->model('Usulan_model');
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
				$id_			= $this->input->post('id');
				$id_bb			= $this->input->post('id_bluebook');
				$id_gb			= $this->input->post('id_greenbook');
				$id_instansi			= $this->input->post('id_instansi');
				$id_lender				= $this->input->post('id_lender');
				$id_status				= $this->input->post('id_status');
				$this->Greenbook_model->hapus_dari_lokasi($id_);
				$this->Greenbook_model->hapus_dari_prov($id_);
				$this->Greenbook_model->hapus_dari_kabkota($id_);

				$select2data 			= $this->input->post('lokasi');
				$isi_prov 				= $this->input->post('provinsi');
				$isi_kabkota 			= $this->input->post('kabkota');
				$array_lokasi			= explode(",", $select2data);
				$array_prov				= explode(",", $isi_prov);
				$array_kabkota			= explode(",", $isi_kabkota);
				
				$data2 = [];
				foreach($array_lokasi as $lokasi) {
				  $data2[] = [
				    'id_gb_proyek' =>  $id_,
				    'id_bb' =>  $id_bb,
				    'id_instansi' 		=>  $id_instansi,
				    'id_lender' 		=>  $id_lender,
				    'id_gb' =>  $id_gb,
				    'id_lokasi' => $lokasi,
				  ];
				}

				$data_prov = [];
				foreach($array_prov as $prov) {
				  $data_prov[] = [
				   'id_gb_proyek' =>  $id_,
				    'id_bb' =>  $id_bb,
				    'id_instansi' 		=>  $id_instansi,
				    'id_lender' 		=>  $id_lender,
				    'id_gb' =>  $id_gb,
				  
				    'id_prov' 		=> $prov,

				  ];
				}

				$data_kabkota = [];
				foreach($array_kabkota as $kabkota) {
				  $data_kabkota[] = [
				    'id_gb_proyek' =>  $id_,
				    'id_bb' =>  $id_bb,
				    'id_instansi' 		=>  $id_instansi,
				    'id_lender' 		=>  $id_lender,
				    'id_gb' =>  $id_gb,
				    
				    'id_kabkota' 		=> $kabkota,

				  ];
				}
				
	 			$this->db->insert_batch('irena_gb_lokasi', $data2);
	 			$this->db->insert_batch('irena_gb_prov', $data_prov);
	 			$this->db->insert_batch('irena_gb_kabkota', $data_kabkota);

				$result 		= $this->Greenbook_model->gb_simpan_data_edit($data);
			}
			
		}

		echo json_encode($status);

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
		$data['data']= $this->Greenbook_model->ambil_proyek_berdasarkan_lokasi($id_lokasi);

		
		//$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('Peta/gb_proyek_list', $data);
	}


	public function edit()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');
		$this->load->model('Usulan_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->Greenbook_model->detail_proyek($a);
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['status_lembaga']= $this->Bluebook_model->semua_status_lembaga();
		$data['status_lender']= $this->Bluebook_model->semua_status_lender();
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['greenbook']= $this->Greenbook_model->ambil_greenbook();
		$data['sektor']= $this->Greenbook_model->ambil_sektor();
		$data['lokasi'] = $this->Usulan_model->ambil_lokasi();
		
		$data['lender']= $this->Bluebook_model->semua_lender();
		$data['program']= $this->Usulan_model->ambil_program();
		$data['provinsi']= $this->Greenbook_model->ambil_provinsi();
		$data['kabkota']= $this->Greenbook_model->ambil_kabkota();
		
		$data['a'] = $a;

	

		$this->load->view('greenbook/gb_edit', $data);
		//$this->load->view('templates/footer1');
		
		
	}

	public function filter_kl_gb()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');
		

			
		$id = $this->input->post('id');
		$data['id'] = $this->uri->segment(3);
		$data['detail'] = $this->Greenbook_model->ambil_grafik_kl_per_gb($data['id'] );

		

    	 //echo json_encode($data);
    	 //$data2 = json_encode($data);
    	 $this->load->view('report/greenbook/report_gb_kl', $data);
	}

	public function catatan()
    {
    	$this->load->model('Greenbook_model');
    	$this->load->model('Bluebook_model');
    	$data['id'] = $this->input->post('id');
    	$a = $this->input->post('id');
    	$data['isi'] = $this->Greenbook_model->ambil_catatan($a);
    	$this->load->view('greenbook/catatan_gb', $data);
    }


	function tambah_catatan()
	{
		$this->load->model('Greenbook_model');
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
				'id_gb_proyek'							=> $this->input->post('id_gb_proyek'),
				'catatan'							=> $this->input->post('catatan'),
				//$data['id_bluebook']					= $this->input->post('id_bluebook');
				'waktu'								=> date('Y-m-d H:i:s'),
				'id_user'								=> $this->session->userdata('id'),
				
				
				);

			$hasil3 = $this->db->insert('catatan_gb', $data);

				$status['success'] 			= true;
				$data 						= $_POST;
				
			
			///
		}

		echo json_encode($data);
		//var_dump($data);
	}

	 function tampilkan_log_gb_index()
	{
    	$this->load->model('Usulan_model');
    	$this->load->model('Greenbook_model');
    	$this->load->model('Bluebook_model');

		$id_proyek							= $this->input->post('id');
		$data['usulan']						= $this->Bluebook_model->detail_proyek_by_usulan($id_proyek);
		//$data['usulan']			= $query->row();
		$this->load->view('Greenbook/log_gb_dokumen_index', $data);
		//$this->load->view('sbsn/usulan/log_usulan_index');
	}

	public function filter_kl_isi_gb()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');

			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		foreach ($this->Greenbook_model->ambil_grafik_kl_per_gb($a) as $row) {
			$data[] = array(
				'name' => $row['nama'],
				'y' => $row['total']
				);
		}

    	 echo json_encode($data);
    	 //$data2 = json_encode($data);
    	
	}


	public function filter_lender_gb()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');

			
		$id = $this->input->post('id');
		$data['id'] = $this->uri->segment(3);
	
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		$data['detail'] = $this->Greenbook_model->ambil_grafik_lender_per_gb($data['id']);
		
    	 //echo json_encode($data);
    	 $this->load->view('report/greenbook/report_gb_lender', $data);
	}

		public function tampilkan_tabel_group_lender()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');

			
		/*$id = $this->input->post('id');
		$data['id'] = $this->uri->segment(3);*/

		$data['id'] = $this->uri->segment(3);
		$data['pilih'] = $this->uri->segment(4);
		


	
		$data['detail'] = $this->Greenbook_model->ambil_grafik_lender_per_gb($data['id']);

		//$data['detail'] = $this->Greenbook_model->ambil_grafik_lender_per_gb($data['id']);
		
    	 //echo json_encode($data);
    	 $this->load->view('report/greenbook/report_gb_tabel_by_lender', $data);
	}

		public function tampilkan_tabel_group_program()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');

			
		/*$id = $this->input->post('id');
		$data['id'] = $this->uri->segment(3);*/

		$data['id'] = $this->uri->segment(3);
		$data['pilih'] = $this->uri->segment(4);
		


	
		$data['detail_isi'] = $this->Greenbook_model->ambil_grafik_program_per_gb($data['id']);

		//$data['detail'] = $this->Greenbook_model->ambil_grafik_lender_per_gb($data['id']);
		
    	 //echo json_encode($data);
    	 $this->load->view('report/greenbook/report_gb_tabel_by_program', $data);
	}



		public function filter_lender_isi_gb()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');

			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		
		foreach ($this->Greenbook_model->ambil_grafik_lender_per_gb($a) as $row) {
			$data[] = array(
				'name' => $row['lender'],
				'y' => $row['total']
				);
		}
    	 echo json_encode($data);
    	 
	}


	public function filter_program_gb()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');

			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		$data['id'] = $this->uri->segment(3);
		
		$data['detail'] = $this->Greenbook_model->ambil_grafik_program_per_gb($data['id']);
		

    	 //echo json_encode($data);
    	 $this->load->view('report/greenbook/report_gb_program', $data);

	}

	public function filter_program_isi_gb()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');

			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		
		foreach ($this->Greenbook_model->ambil_grafik_program_per_gb($a) as $row) {
			$data[] = array(
				'name' => $row['program'],
				'y' => $row['total']
				);
		}
    	 echo json_encode($data);
	}



	public function filter_sektor_gb()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');

			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);
		$data['id'] = $this->uri->segment(3);

		$data['detail'] = $this->Greenbook_model->ambil_grafik_sektor_per_gb($data['id']);
		
		$this->load->view('report/greenbook/report_gb_sektor', $data);
	}

	public function filter_sektor_isi_gb()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');

			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		
		foreach ($this->Greenbook_model->ambil_grafik_sektor_per_gb($a) as $row) {
			$data[] = array(
				'name' => $row['sektor'],
				'y' => $row['total']
				);
		}
    	 echo json_encode($data);
	}


	public function filter_infra_gb()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');

			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);
		$data['id'] = $this->uri->segment(3);

		$data['detail'] = $this->Greenbook_model->ambil_grafik_infra_per_gb($data['id']);

		
		$this->load->view('report/greenbook/report_gb_infra', $data);
		
	}

	public function filter_infra_isi_gb()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');

			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		
		foreach ($this->Greenbook_model->ambil_grafik_infra_per_gb($a) as $row) {
			$data[] = array(
				'name' => $row['nama'],
				'y' => $row['total']
				);
		}
			

    	 echo json_encode($data);
	}

	public function filter_statusumum_gb()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');

			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		$data['id'] = $this->uri->segment(3);
		
		$data['detail'] = $this->Greenbook_model->ambil_grafik_status_per_gb($data['id']);
		
		
		$this->load->view('report/greenbook/report_gb_status', $data);
	}

	public function filter_statusumum_isi_gb()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		
		foreach ($this->Greenbook_model->ambil_grafik_status_per_gb($a) as $row) {
			$data[] = array(
				'name' => $row['nama'],
				'y' => $row['total']
				);
		}
    	 echo json_encode($data);
	}

	public function arsip()
	    {
	    	$this->load->model('Greenbook_model');
	    	$this->load->model('Bluebook_model');
	    	$this->load->model('Usulan_model');
			$a = $this->input->post('id');
			$data['detail'] = $this->Greenbook_model->detail_proyek($a);
			$data['lembaga']= $this->Usulan_model->ambil_instansi();

			$data['dok_tambahan'] = $this->Usulan_model->ambil_dokumen_tambahan_usulan($a);

	    	$this->load->view('Greenbook/gb_arsip_index', $data);
	    	//$this->load->view('templates/footer1');
	    

	    }

	public function layak()
    {
    	$this->load->model('Greenbook_model');
		$a = $this->input->post('id');
		$data['isi'] = $this->Greenbook_model->detail_proyek($a);
		
    	$this->load->view('Greenbook/gb_layak', $data);
    	//$this->load->view('templates/footer1');
    }

    	 function tambah_ke_DK()
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
		
			
			$data['id']					= $this->input->post('id');
			date_default_timezone_set('Asia/Jakarta');
			if ($this->session->userdata('id_user_level') != '5') {

			//$data['nilai_admin_id']		= $this->session->userdata('id');
			$data['is_dk_update_by']			= $this->session->userdata('id');
			$data['is_dk_update_at']			= date('Y-m-d H:i:s');
			$data['is_dk_kasubdit']				= '0';
			$data['is_dk']						= $this->input->post('nilai_layak');
			$data['dk_cat_staff']				= $this->input->post('nilai_layak_ket');
			$result 							= $this->Greenbook_model->usulan_simpan_data($data);
			$status['success'] 					= true;
			$data 								= $_POST;

			}elseif ($this->session->userdata('id_user_level') == '5') {
			
				$dk_staff							= $this->Greenbook_model->ambil_layak($data['id'])->is_dk; //ngambil nilai dari staff buat dibandingin
				
				$dk_kasubdit 					= $this->input->post('nilai_layak');
				
				if ($dk_staff == '2') {
					if ( $dk_kasubdit	== '2' ) {

						//tambah ke database proyek bluebook
						# code...

							
			    	$data = array(
					'id'					=> $this->input->post('id'),
			        
			        'kasubdit_dk_at'			=> date('Y-m-d H:i:s'),
			        'is_dk_kasubdit'			=>  $this->input->post('nilai_layak'),
			        'dk_catatan_kasubdit'			=>  $this->input->post('nilai_layak_ket'),
			        'kasubdit_dk_by'			=> $this->session->userdata('id'),

			        
			   		 );
					$result 					= $this->Greenbook_model->usulan_simpan_data($data);

					$data_isDK = array(
					'id'						=> $this->input->post('id_usulan'),
			        'is_DK'						=> '1',
			        
			   		 );
					$result4 					= $this->Usulan_model->update_isBB($data_isDK);



			    	$data2 = array(
					//'id'					=> $this->input->post('id'),
					'id_usulan'						=> $this->input->post('id_usulan'),
					'id_gb_proyek'					=> $this->input->post('id'),
					'id_bb_proyek'					=> $this->input->post('id_bb_proyek'),

			        
			        'id_program'					=> $this->input->post('id_program'),
			        'id_instansi'					=>  $this->input->post('id_instansi'),
			        'instansi_pelaksana'			=>  $this->input->post('instansi_pelaksana'),
			        'tahun_usulan'					=> $this->input->post('tahun_usulan'),
			        'id_lender'						=> $this->input->post('id_lender'),
			        'id_bluebook'					=> $this->input->post('id_bluebook'),
			        'id_greenbook'					=> $this->input->post('id_greenbook'),
			        'judul_proyek_id'				=>  $this->input->post('judul_proyek_id'),
			        'judul_proyek_eng'				=>  $this->input->post('judul_proyek_eng'),
			        'ruang_lingkup_id'				=>  $this->input->post('ruang_lingkup_id'),
			        'ruang_lingkup_eng'				=>  $this->input->post('ruang_lingkup_eng'),
			        'id_status_lembaga'				=>  $this->input->post('id_status_lembaga'),
			        'id_status_lender'				=>  $this->input->post('id_status_lender'),
			        'durasi'						=>  $this->input->post('durasi'),
			        'proyeksi_tahun_pertama_penarikan'			=>  $this->input->post('proyeksi_tahun_pertama_penarikan'),
			        'output'						=>  $this->input->post('output'),
			        'outcome'						=>  $this->input->post('outcome'),
			        'nilai_pinjaman'				=>  $this->input->post('nilai_pinjaman'),
			        'nilai_hibah'					=>  $this->input->post('nilai_hibah'),
			        'dana_pendamping'				=>  $this->input->post('dana_pendamping'),
			        'id_sektor'						=>  $this->input->post('id_sektor'),
			        'infra'							=>  $this->input->post('infra'),
			        'id_status'						=>  $this->input->post('id_status'),
			        'lokasi'						=>  $this->input->post('lokasi'),
			   		 );

					$result2 					= $this->Greenbook_model->tambah_ke_DK($data2);

					$isi = array(
		    			'id_proyek_dk' 		=> $this->Greenbook_model->last_dk()->id,
		    			
		    		);

					$result3 					= $this->Greenbook_model->tambah_ke_DK_layak($isi);

		    	
		    		

						//$data 						= $_POST;
						$data2 							= $_POST;
						$data 							= $_POST;
						$data_isDK 						= $_POST;
						$isi 							= $_POST;
				
						$status['success'] 				= true;

					}elseif( $dk_kasubdit	== '1' ){
						$data['kasubdit_dk_at']			= date('Y-m-d H:i:s');
						$data['is_dk_kasubdit']			= $this->input->post('nilai_layak');
						$data['kasubdit_dk_by']			= $this->session->userdata('id');


						$data['dk_catatan_kasubdit']			= $this->input->post('nilai_layak_ket');
						$result 					= $this->Greenbook_model->usulan_simpan_data($data);

						$status['success'] 			= true;
						$data 						= $_POST;
					}

				}else{
					$data['kasubdit_dk_at']			= date('Y-m-d H:i:s');
					$data['dk_catatan_kasubdit']			= $this->input->post('nilai_layak_ket');
					$result 					= $this->Greenbook_model->usulan_simpan_data($data);
					$data['kasubdit_dk_by']			= $this->session->userdata('id');

					$status['success'] 			= true;
					$data 						= $_POST;
				}
			}

		
		}

		echo json_encode($status);

			/*$data = array(
				'id_usulan'					=> $this->input->post('id_usulan'),
				//$data['id_bluebook']					= $this->input->post('id_bluebook');
				'id_program'					=> $this->input->post('id_program'),
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
				'dana_pendamping'					=> $this->input->post('nilai_pendamping'),
				'id_status_lender'					=> $this->input->post('id_status_lender'),
				'id_status_lembaga'					=> $this->input->post('id_status_lembaga'),
				'id_gb_proyek'					=> $this->input->post('id'),
				
				);

			$hasil3 = $this->db->insert('irena_daftarkegiatan_proyek', $data);

			$data2 = array(
				'id' => $this->input->post('id_usulan'),
				'is_DK'			=> "1",
				);

		 	$hasil1 =  $this->Greenbook_model->update_DK($data2);

		   	$isi = array(
		    			'id_proyek_dk' 		=> $this->Greenbook_model->last_dk()->id,
		    			
		    		);

		    $hasil2 = $this->db->insert('irena_dk_layak', $isi);

		   	$isi2 = array(
		   				'is_dk_update_by' => $this->session->userdata('id'),
		   				'id' 	=>		$this->input->post('id'),
		   				'is_DK'			=> "1",
		   				'is_dk_update_at' => date('Y-m-d H:i:s'),

		   		);

		    
		    $hasil4 = $this->Greenbook_model->save_update($isi2);
		   
					
		    	
				
			
				$data2 						= $_POST;
				$isi 						= $_POST;
				$isi2 						= $_POST;
				$status['success'] 			= true;
					$data 						= $_POST;
				
			
			///
		}*/

		//echo json_encode($status);
		//var_dump($data);
	}

    public function tambahkeDK()
	{
		$this->load->model('Greenbook_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->Greenbook_model->detail_proyek($a);


		$this->load->view('greenbook/tambah_dk', $data); 
	}

	public function greenbook_simpan_layak()
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

			$data['id']					= $this->input->post('id');
			date_default_timezone_set('Asia/Jakarta');
			if ($this->session->userdata('id_user_level') != '5') {

			//$data['nilai_admin_id']		= $this->session->userdata('id');
			$data['update_by']			= $this->session->userdata('id');
			$data['update_at']			= date('Y-m-d H:i:s');
			$data['is_kasubdit_layak']		= '0';
			$data['is_layak']			= $this->input->post('nilai_layak');
			$data['catatan_staff_layak']			= $this->input->post('nilai_layak_ket');
			$result 					= $this->Greenbook_model->usulan_simpan_data($data);
			$status['success'] 			= true;
			$data 						= $_POST;

			}elseif ($this->session->userdata('id_user_level') == '5') {
				$data['kasubdit_layak_by']			= $this->session->userdata('id');
				$data['kasubdit_layak_at']			= date('Y-m-d H:i:s');
				$data['is_kasubdit_layak']			= $this->input->post('nilai_layak');
				$data['layak_catatan_kasubdit']			= $this->input->post('nilai_layak_ket');
				$result 					= $this->Greenbook_model->usulan_simpan_data($data);
				$status['success'] 			= true;
				$data 						= $_POST;
			}
			
			///
		
		
			/*
			$status['success'] 	= false;
			$nilai_admin =$this->input->nilai_admin;
			$status['messages']['nilai_admin'] = $nilai_admin;
			*/
			
			
			//$data['nilai_admin_id']		= $this->session->userdata('id');
			/*$data['update_at']			= date('Y-m-d H:i:s');
			$data['update_by']			= $this->session->userdata('id');
			$data['id']					= $this->input->post('id');
			
			$data['is_layak']			= "1";
			$result 					= $this->Greenbook_model->usulan_simpan_data($data);
			$status['success'] 			= true;
			$data 						= $_POST;
*/
			
			
			///
		}
		echo json_encode($status);
		//var_dump($data);
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
		$this->db->update('irena_greenbook_proyek', $data);


    }

	   public function fix_usulan_hapus()
    {
    	$this->load->model('Greenbook_model');
    	$this->load->model('Bluebook_model');
		$a = $this->input->post('id');

		$isi2 = array(
		   				'id' 	=>		$this->input->post('id_bb_proyek'),
		   				'is_GB'			=> "0",
		   				'is_gb_update_at' => date('Y-m-d H:i:s'),
		   		);

		    
		$hasil4 = $this->Bluebook_model->save_update($isi2);

		$isi3 = array(
		   				'id' 	=>		$this->input->post('id_usulan'),
		   				'is_GB'			=> "0",
		   				
		   		);

		    
		 $hasil5 = $this->Bluebook_model->update_GB($isi3);

		$this->Greenbook_model->hapus_usulan_fix($a);
		
    }


	public function hapus() {

		$this->load->model('Greenbook_model');
		$a = $this->input->post('id');
		
		$data['detail'] = $this->Greenbook_model->detail_proyek($a);
		

       $this->load->view('Greenbook/hapus_gb', $data);
       // /$this->load->view('templates/footer1');

     
    }


	


	

	public function tampil_greenbook()
	{	
		$this->load->model('Greenbook_model');
		$this->load->model('Usulan_model');
		
		
		$data['instansi'] = array();

		
		$data['data']= $this->Greenbook_model->ambil_proyek_greenbook();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
		
		$this->load->view('templates/header'); 
		$this->load->view('PLN/greenbook', $data);
		$this->load->view('templates/footer'); 
	}

	public function tampil_index()
	{
		if(is_logged_in()) {
			$this->load->view('templates/header'); 
			$this->load->view('greenbook/gb_index');
			$this->load->view('templates/footer'); 
		}else{
			$this->load->view('templates/login');
		}
	}

	public function tampilkan_gb_list()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		
		$data['instansi'] = array();

		
		$data['data']= $this->Greenbook_model->ambil_proyek_greenbook();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('greenbook/gb_list', $data);
	}


	
	public function detil()
	{

		$this->load->model('Greenbook_model');
		 $this->load->model('Usulan_model');
		 $this->load->model('Bluebook_model');
                                                
		$a = $this->input->post('id');
		$data['detail'] = $this->Greenbook_model->detail_proyek($a);

	
		$this->load->view('greenbook/detail_gb_2', $data);
		//$this->load->view('templates/footer1');
		
		
		
	}

	 public function tambah_gb()
    {
    	$this->load->model('Usulan_model');
    	$status = array('success' => false, 'messages' => array());

    	$this->form_validation->set_rules("id_program", "Program", "trim|required");
		$this->form_validation->set_rules("instansi_pelaksana", "Instansi Pelaksana", "trim|required");
		$this->form_validation->set_rules("id_instansi", "Instansi Pengusul", "trim|required");
		$this->form_validation->set_rules("judul_proyek_eng", "Judul Proyek Eng", "trim|required");
		$this->form_validation->set_rules("judul_proyek_id", "Judul Proyek ID", "trim|required");
		$this->form_validation->set_rules("ruang_lingkup_id", "Ruang Lingkup ID", "trim|required");
		$this->form_validation->set_rules("ruang_lingkup_eng", "Ruang Lingkup ENG", "trim|required");
		$this->form_validation->set_rules("proyeksi_tahun_pertama_penarikan", "Tahun Pertama Penarikan", "trim|required");
		$this->form_validation->set_rules("dana_usulan", "Nilai Pinjaman", "trim|required");
		$this->form_validation->set_rules("dana_hibah", "Nilai Hibah", "trim|required");
		$this->form_validation->set_rules("dana_pendamping", "Dana Pendamping", "trim|required");
		$this->form_validation->set_rules("outcome", "Outcome", "trim|required");
		$this->form_validation->set_rules("output", "Output", "trim|required");
		$this->form_validation->set_rules("tahun_usulan", "Tahun Usulan", "trim|required");
		$this->form_validation->set_rules("lokasi", "Lokasi", "trim|required");
		$this->form_validation->set_rules("durasi", "Durasi", "trim|required");
		$this->form_validation->set_rules("id_sektor", "Sektor", "trim|required");
		$this->form_validation->set_rules("id_infra", "Kategori", "trim|required");
		//$this->form_validation->set_rules("berkas", "Berka arsip", "required");
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
		}else{ //validasi benar semua

		
    	$data = array(
        'id_program'				=> $this->input->post('id_program'),
        'judul_proyek_id'			=> $this->input->post('judul_proyek_id'),
        'judul_proyek_eng'			=> $this->input->post('judul_proyek_eng'),
        'ruang_lingkup_id'			=> $this->input->post('ruang_lingkup_id'),
        'ruang_lingkup_eng'				=> $this->input->post('ruang_lingkup_eng'),
        'id_instansi'					=> $this->input->post('id_instansi'),
        'id_infra'					=> $this->input->post('id_infra'),
        
        'proyeksi_tahun_pertama_penarikan'			=> $this->input->post('proyeksi_tahun_pertama_penarikan'),
        'dana_usulan'				=> $this->input->post('dana_usulan'),
        'dana_hibah'				=> $this->input->post('dana_hibah'),
        'durasi'				=> $this->input->post('durasi'),
        'output'				=> $this->input->post('output'),
        'outcome'				=> $this->input->post('outcome'),
        'lokasi'				=> $this->input->post('lokasi'),
        'dana_pendamping'				=> $this->input->post('dana_pendamping'),
        'instansi_pelaksana'				=> $this->input->post('instansi_pelaksana'),
        'tahun_usulan'				=> $this->input->post('tahun_usulan'),
        'id_sektor'				=> $this->input->post('id_sektor'),
   		 );

    	$this->db->insert('irena_greenbook_proyek', $data);

	 	$isi = array(
    			'id_usulan' 		=> $this->Usulan_model->last()->id,
    			//'is_gb_update_by'			=> $this->session->userdata('id')
    			
    		);

    	
    	$this->db->insert('irena_usulan_layak', $isi);
    	$this->db->insert('irena_usulan_adm', $isi);
    	$this->db->insert('irena_usulkan_bb', $isi);
    	$status['success'] 			= true;

		}
    	 echo json_encode($status);
    }


	 public function tambah_manual_input()
    {
    	$this->load->model('Usulan_model');
    	$this->load->model('Greenbook_model');
    	$status = array('success' => false, 'messages' => array());

    	$this->form_validation->set_rules("id_program", "Program", "trim|required");
		$this->form_validation->set_rules("instansi_pelaksana", "Instansi Pelaksana", "trim|required");
		$this->form_validation->set_rules("id_instansi", "Instansi Pengusul", "trim|required");
		$this->form_validation->set_rules("judul_proyek_eng", "Judul Proyek Eng", "trim|required");
		$this->form_validation->set_rules("judul_proyek_id", "Judul Proyek ID", "trim|required");
		$this->form_validation->set_rules("ruang_lingkup_id", "Ruang Lingkup ID", "trim|required");
		$this->form_validation->set_rules("ruang_lingkup_eng", "Ruang Lingkup ENG", "trim|required");
		$this->form_validation->set_rules("proyeksi_tahun_pertama_penarikan", "Tahun Pertama Penarikan", "trim|required");
		$this->form_validation->set_rules("nilai_pinjaman", "Nilai Pinjaman", "trim|required");
		$this->form_validation->set_rules("nilai_hibah", "Nilai Hibah", "trim|required");
		$this->form_validation->set_rules("dana_pendamping", "Dana Pendamping", "trim|required");
		$this->form_validation->set_rules("outcome", "Outcome", "trim|required");
		$this->form_validation->set_rules("output", "Output", "trim|required");
		
		$this->form_validation->set_rules("lokasi", "Lokasi", "trim|required");
		$this->form_validation->set_rules("durasi", "Durasi", "trim|required");
		$this->form_validation->set_rules("id_sektor", "Sektor", "trim|required");
		$this->form_validation->set_rules("id_infra", "Kategori", "trim|required");
		//$this->form_validation->set_rules("berkas", "Berka arsip", "required");
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
		}else{ //validasi benar semua

		
    	$data = array(
        'id_program'				=> $this->input->post('id_program'),
        
   		 );

    	$this->db->insert('irena_greenbook_proyek', $data);

	 	/*$isi = array(
    			'id_usulan' 		=> $this->Usulan_model->last()->id
    			
    			//'is_gb_update_by'			=> $this->session->userdata('id')
    			
    		);

	 	$this->db->insert('irena_usulan_layak', $isi);
    	$this->db->insert('irena_usulan_adm', $isi);
    	$this->db->insert('irena_usulkan_bb', $isi);

	 	$select2data = $this->input->post('lokasi');
	 	$array_lokasi = explode(",", $select2data);
	 	$id_instansi			= $this->input->post('id_instansi');

	 	$data2 = [];
	 	foreach($array_lokasi as $lokasi) {
	 	  $data2[] = [
	 	    'id_usulan' => $isi['id_usulan'],
	 	    'id_lokasi' => $lokasi,
	 	    'id_instansi' => $id_instansi,
	 	  ];
	 	}
	 	
	 	

	 	

    	$this->db->insert_batch('irena_usulan_lokasi', $data2);
    	*/

    	$status['success'] 			= true;

		}
    	 echo json_encode($status);
    }





	
	
	
	public function tambah_manual()
	{

		$this->load->model('Greenbook_model');
		 $this->load->model('Usulan_model');
		 $this->load->model('Bluebook_model');
		$data['data']= $this->Usulan_model->ambil_proyek_usulan();
		
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['program']= $this->Usulan_model->ambil_program();
		$data['arsip'] = $this->Usulan_model->ambil_arsip();
		$data['usulan']= $this->Usulan_model->ambil_usulan();
		
		
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['status_lembaga']= $this->Bluebook_model->semua_status_lembaga();
		$data['status_lender']= $this->Bluebook_model->semua_status_lender();
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['greenbook']= $this->Greenbook_model->ambil_greenbook();
		$data['sektor']= $this->Greenbook_model->ambil_sektor();
		$data['lokasi']= $this->Usulan_model->ambil_lokasi();
		$data['lokasi']= $this->Usulan_model->ambil_lokasi();
		
		$data['lender']= $this->Bluebook_model->semua_lender();
	


		$this->load->view('greenbook/tambah_manual', $data);
		//$this->load->view('templates/footer1');
	}

	public function tambah()
	{
		$this->load->model('Greenbook_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Usulan_model');
		
		$data['detail'] = $this->Greenbook_model->usulan_bluebook();
		$this->load->view('greenbook/tambah_proyek', $data);
		//$this->load->view('templates/footer1');
	}

}
	

