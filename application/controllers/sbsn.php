<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Sbsn extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->library('parser');

	}
	
	function usulan()
	{
		if(is_logged_in()) {
			
			//$data['arsip'] 	= $this->arsip_model->ambil_semua_arsip();
			
			$this->load->view('templates/header'); 
			$this->load->view('sbsn/usulan/usulan_index');
			//$this->load->view('sbsn/usulan/usulan_index', $data);
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function usulan_tampil_semua_data()
	{
		$data['usulan'] 	= $this->sbsn_model->usulan_tampil_semua_data();	
		$this->load->view('sbsn/usulan/usulan_list', $data);
	}
	
	function usulan_detail()
	{
		$id 					= $this->uri->segment(3);
		$query					= $this->sbsn_model->ambil_usulan_by_id($id);
		$data['usulan']			= $query->row();
		$this->load->view('sbsn/usulan/usulan_detail', $data);
	}
	
	function tampilkan_usulan_form_tambah()
	{
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$data['dpp']		= $this->sbsn_model->pilih_id_dpp();
		$data['instansi'] 	= $this->sbsn_model->pilih_instansi();
		$data['kat_pro'] 	= $this->sbsn_model->pilih_kategori_proyek();
		$data['lokasi'] 		= $this->Usulan_model->ambil_lokasi();
		$data['provinsi']= $this->Greenbook_model->ambil_provinsi();
		$data['kabkota']		= $this->Greenbook_model->ambil_kabkota();
		

		
		$this->load->view('sbsn/usulan/usulan_tambah', $data);
	}
	
	function ambil_data_instansi_es_1_by_id_instansi()
	{
		$id_instansi 		= $this->uri->segment(3); 
        $arrStates 			= $this->sbsn_model->ambil_data_instansi_es_1_by_id_instansi($id_instansi); 
		
		 echo json_encode($arrStates);
	}
	
	function usulan_simpan()
	{
		$status = array('success' => false, 'messages' => array());


		$this->form_validation->set_rules("id_instansi_eselon_satu", "Instansi Eselon I", "trim|required");
		$this->form_validation->set_rules("id_dpp", "Tahun Usulan", "trim|required");
		$this->form_validation->set_rules("id_kategori_proyek", "Kategori Proyek", "trim|required");
		$this->form_validation->set_rules("judul", "Nama/Judul Proyek", "trim|required");
		$this->form_validation->set_rules("nilai", "Nilai Proyek", "trim|required|numeric");
		$this->form_validation->set_rules("single_multi", "Pelaksanaan proyek", "trim|required|numeric");
		$this->form_validation->set_rules("output", "Output Proyek", "trim|required");
		$this->form_validation->set_rules("latar_belakang", "Latar Belakang Proyek", "trim|required");
		$this->form_validation->set_rules("tujuan", "Tujuan Proyek", "trim|required");
		$this->form_validation->set_rules("ruang_lingkup", "Ruang Lingkup", "trim|required");
		
		
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
			//var_dump($this->input->post());die();
			
			$data					= $_POST;
			$data['update_by']		= $this->session->userdata('id');
			$data['update_date']	= date('Y-m-d H:i:s');
			//print_r($this->input->post());die();
			
			//print_r($data);
			if($this->uri->segment(3) == 'tambah'){
				$data['nilai_admin']		= 0;
				$data['nilai_admin_ket']	= "-";
				$data['nilai_admin_id']		= $this->session->userdata('id');
				$data['nilai_admin_date']	= date('Y-m-d H:i:s');
				$data['nilai_layak']		= 0;
				$data['nilai_layak_ket']	= "-";
				$data['nilai_layak_id']		= $this->session->userdata('id');
				$data['nilai_layak_date']	= date('Y-m-d H:i:s');
				$data['masuk_dpp']			= 0;
				$data['masuk_dpp_ket']		= "-";
				$data['masuk_dpp_id']		= $this->session->userdata('id');
				$data['masuk_dpp_date']		= date('Y-m-d H:i:s');

				$result 				= $this->sbsn_model->usulan_simpan_data($data);

				$id_					= $this->input->post('id');
				$id_instansi			= $this->input->post('id_instansi');
			

				$this->sbsn_model->hapus_dari_lokasi($id_);
				//$this->sbsn_model->hapus_dari_poin($id_);

				$select2data = $this->input->post('lokasi');
				$array_lokasi = explode(",", $select2data);
				$id_2 = $this->sbsn_model->last()->id;
				
				$data2 = [];
				foreach($array_lokasi as $lokasi) {
				  $data2[] = [
				    'id_usulan' => $id_2,
				    'id_instansi' => $id_instansi,

				    'id_lokasi' => $lokasi,
				  ];
				}

				$data_prov = $this->input->post('id_provinsi');
	 			$array_prov = explode(",", $data_prov);

				$data4 = [];
				$j = 1;
			 	foreach($array_prov as $provinsi) {
			 	  $data4[] = [
			 	    'id_usulan' => $id_2 ,
			 	    'id_prov' => $provinsi,
			 	    'id_instansi' => $id_instansi,
			 	  ];
			 	}

			 	$data_kabkota = $this->input->post('id_kabkota');
	 			$array_kabkota = explode(",", $data_kabkota);

				$data5 = [];
			 	foreach($array_kabkota as $kabkota) {
			 	  $data5[] = [
			 	    'id_usulan' => $id_2 ,
			 	    'id_kabkota' => $kabkota,
			 	    'id_instansi' => $id_instansi,
			 	  ];
			 	}


				$poin_kabkota = $this->input->post('poin_kabkota');
			 	$id_kategori = $this->input->post('id_kategori_proyek');
	 			$array_poin = explode(",", $poin_kabkota);

			 	$data6 = [];
			 	$i = 1;
			 	foreach($array_poin as $poin) {

			 	$data6[] = [
			 	    'id_usulan' => $id_2 ,
			 	    'id_kategori' => $id_kategori ,
			 	    'id_urut' => $i++,
			 	    'id_kabkota' => $poin,
			 	  ];
			 	}

			 	//sssprint_r($id_usulan_pakai);




			 	$this->db->insert_batch('irena_sbsn_usulan_prov', $data4);
			 	$this->db->insert_batch('irena_sbsn_usulan_jalan_kabkota', $data6);
	 			$this->db->insert_batch('irena_sbsn_usulan_kabkota', $data5);
	 			$this->db->insert_batch('irena_sbsn_usulan_lokasi', $data2);
	 			
	 			

				
				
			}elseif($this->uri->segment(3) == 'edit'){
				
				//$data['id']		= $this->input->post('id');
				//var_dump($this->input->post());die();


				$id_					= $this->input->post('id');
				$id_instansi_eselon_satu			= $this->input->post('id_instansi_eselon_satu');
				$this->sbsn_model->hapus_dari_lokasi($id_);
				$this->sbsn_model->hapus_dari_usulan_prov($id_);
				$this->sbsn_model->hapus_dari_usulan_kabkota($id_);

				$select2data = $this->input->post('lokasi');
				$array_lokasi = explode(",", $select2data);
				
				$data2 = [];
				foreach($array_lokasi as $lokasi) {
				  $data2[] = [
				    'id_usulan' =>  $id_,
				    'id_instansi' => $id_instansi_eselon_satu,

				    'id_lokasi' => $lokasi,
				  ];
				}

				$data_prov = $this->input->post('id_provinsi');
	 			$array_prov = explode(",", $data_prov);

				$data4 = [];
			 	foreach($array_prov as $provinsi) {
			 	  $data4[] = [
			 	    'id_usulan' => $id_ ,
			 	    'id_prov' => $provinsi,
			 	    'id_instansi' => $id_instansi_eselon_satu,
			 	  ];
			 	}

			 	$data_kabkota = $this->input->post('id_kabkota');
			 	$id_kategori = $this->input->post('id_kategori_proyek');
	 			$array_kabkota = explode(",", $data_kabkota);

				$data5 = [];
			 	foreach($array_kabkota as $kabkota) {
			 	  $data5[] = [
			 	    'id_usulan' => $id_ ,
			 	    'id_kabkota' => $kabkota,
			 	    'id_instansi' => $id_instansi_eselon_satu,
			 	  ];
			 	}

			 	$poin_kabkota = $this->input->post('poin_kabkota');
			 	//$id_kategori = $this->input->post('id_kategori_proyek');
	 			$array_poin = explode(",", $poin_kabkota);

			 	$data6 = [];
			 	$i = 1;
			 	foreach($array_poin as $kabkota) {

			 	$data6[] = [
			 	    'id_usulan' => $id_ ,
			 	    'id_kategori' => $id_kategori ,
			 	    'id_urut' => $i++,
			 	    'id_kabkota' => $kabkota,
			 	  ];
			 	}




			 	$this->db->insert_batch('irena_sbsn_usulan_prov', $data4);
	 			$this->db->insert_batch('irena_sbsn_usulan_kabkota', $data5);
	 			$this->db->insert_batch('irena_sbsn_usulan_lokasi', $data2);
	 			$this->db->insert_batch('irena_sbsn_usulan_jalan_kabkota', $data6);

				$result 		= $this->sbsn_model->usulan_simpan_data($data);
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
		$this->load->model('sbsn_model');
		$data['instansi'] = array();
		$data['id_lokasi'] = $this->uri->segment(3);
		$id_lokasi = $this->uri->segment(3);
		//$id_lokasi = '339';
		$data['data']= $this->sbsn_model->ambil_proyek_berdasarkan_lokasi($id_lokasi);

		
		//$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('report/modal_map/dashboard_sbsn_modal_map', $data);
	}

	public function tampilkan_proyek_lokasi_1()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('dk_model');
		$this->load->model('sbsn_model');
		$data['instansi'] = array();
		$id_lokasi = $this->uri->segment(3);
		//$id_lokasi = '339';
		$data['data']= $this->sbsn_model->ambil_proyek_berdasarkan_lokasi($id_lokasi);

		
		//$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('Peta/sbsn_proyek_list', $data);
	}

	public function tampilkan_proyek_prov()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('dk_model');
		$this->load->model('sbsn_model');
		$data['instansi'] = array();
		$id_lokasi = $this->uri->segment(3);
		//$id_lokasi = '339';
		$data['data']= $this->sbsn_model->ambil_proyek_berdasarkan_prov($id_lokasi);

		
		//$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('Peta/sbsn_proyek_list', $data);
	}


	public function hitung_total_proyek_prov()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('sbsn_model');

		//$id = $this->input->post('id');
		$id= $this->uri->segment(3);


		

		$data['total_kegiatan']= $this->sbsn_model->hitung_total_proyek_prov($id);
		$data['total_nilai']= $this->sbsn_model->hitung_total_nilai_proyek_prov($id);


		
		
    
		$this->load->view('report/modal_map/total_kegiatan_sbsn', $data);
	}
	
	
	
	function usulan_tampil_form_edit()
	{	
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$id 					= $this->uri->segment(3);
		$query					= $this->sbsn_model->ambil_tabel_usulan_by_id($id);
		$data['usulan']			= $query->row();
		$data['instansi'] 		= $this->sbsn_model->pilih_instansi();
		$data['lokasi'] 		= $this->Usulan_model->ambil_lokasi();
		$data['provinsi']		= $this->Greenbook_model->ambil_provinsi();
		$data['kabkota']		= $this->Greenbook_model->ambil_kabkota();
		$data['kat_pro'] 		= $this->sbsn_model->pilih_kategori_proyek();
		$this->load->view('sbsn/usulan/usulan_edit', $data);
	}
	
	function usulan_tampil_form_hapus()
	{	
		$id 					= $this->uri->segment(3);
		$query					= $this->sbsn_model->ambil_usulan_by_id($id);
		$data['usulan']			= $query->row();	
		
		$this->load->view('sbsn/usulan/usulan_hapus', $data);
	}
	
	function usuan_hapus()
	{	
		$id 	= $this->input->post('id');
		$query	= $this->sbsn_model->usulan_hapus($id);
	}
	
	function usulan_tampil_form_nilai_admin()
	{
		$id						= $this->uri->segment(3); //ID_Proyek
		$query					= $this->sbsn_model->ambil_tabel_usulan_by_id($id);
		$data['usulan']			= $query->row();
		$this->load->view('sbsn/usulan/usulan_nilai_admin', $data);
	}
	
	function usulan_simpan_admin()
	{
		$status = array('success' => false, 'messages' => array());

		$this->form_validation->set_rules("id", "ID PRoyek", "trim|required");
		$this->form_validation->set_rules("nilai_admin", "Penilaian administrasi", "trim|required");
		$this->form_validation->set_rules("nilai_admin_ket", "Keterangan penilaian", "trim|required");
		
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
			
			$data 						= $_POST;
			$data['nilai_admin_id']		= $this->session->userdata('id');
			$data['nilai_admin_date']	= date('Y-m-d H:i:s');
			$result 					= $this->sbsn_model->usulan_simpan_data($data);
			$status['success'] 			= true;
			
			///
		}
		echo json_encode($status);
		//var_dump($data);
	}
	
	function usulan_tampil_form_nilai_layak()
	{
		$id						= $this->uri->segment(3); //ID_Proyek
		$query					= $this->sbsn_model->ambil_tabel_usulan_by_id($id);
		$data['usulan']			= $query->row();
		$this->load->view('sbsn/usulan/usulan_nilai_layak', $data);
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
			
			$data 						= $_POST;
			$data['nilai_layak_id']		= $this->session->userdata('id');
			$data['nilai_layak_date']	= date('Y-m-d H:i:s');
			$result 					= $this->sbsn_model->usulan_simpan_data($data);
			$status['success'] 			= true;
			
			///
		}
		echo json_encode($status);
		//var_dump($data);
	}
	
	
	function usulan_tampil_form_masuk_dpp()
	{
		$id						= $this->uri->segment(3); //ID_Proyek
		$query					= $this->sbsn_model->ambil_tabel_usulan_by_id($id);
		$data['usulan']			= $query->row();
		$this->load->view('sbsn/usulan/usulan_masuk_dpp', $data);
	}
	
	function usulan_simpan_masuk_dpp()
	{
		$status = array('success' => false, 'messages' => array());

		$this->form_validation->set_rules("id", "ID Proyek", "trim|required");
		$this->form_validation->set_rules("masuk_dpp", "Penilaian administrasi", "trim|required");
		$this->form_validation->set_rules("masuk_dpp_ket", "Keterangan penilaian", "trim|required");
		
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
			
			$data 						= $_POST;
			$data['masuk_dpp_id']		= $this->session->userdata('id');
			$data['masuk_dpp_date']		= date('Y-m-d H:i:s');
			
			$result 					= $this->sbsn_model->usulan_simpan_data($data);
			
			$dpp['id_proyek']		= $this->input->post('id');
			$dpp['id_dpp']			= $this->input->post('id_dpp');
			$dpp['judul']			= $this->input->post('judul');
			$dpp['nilai']			= $this->input->post('nilai');
			$dpp['update_by']		= $this->session->userdata('id');
			$dpp['update_date']		= date('Y-m-d H:i:s');
			
			$result 				= $this->sbsn_model->dpp_simpan_data($dpp);
			
			
			$status['success'] 			= true;
			
			///
		}
		echo json_encode($status);
		//var_dump($data);
	}

//------------------------------------------------LOG  USULAN ---------------------------------------
//------------------------------------------------LOG  USULAN ---------------------------------------
//------------------------------------------------LOG  USULAN ---------------------------------------	
	
	
	function tampilkan_log_usulan_index()
	{
		$id_proyek				= $this->uri->segment(3);
		$query					= $this->sbsn_model->ambil_usulan_by_id($id_proyek);
		$data['usulan']			= $query->row();
		$this->load->view('sbsn/usulan/log_usulan_index', $data);
		//$this->load->view('sbsn/usulan/log_usulan_index');
	}
	
	function tampilkan_data_log_usulan()
	{
		$id_proyek 		= $this->uri->segment(3);
		$data['log'] 	= $this->sbsn_model->ambil_data_log_usulan_by_id_proyek($id_proyek);
		$this->load->view('sbsn/usulan/log_usulan_list', $data);
	}
	
	function tampilkan_form_log_usulan_tambah()
	{
		$data['id_proyek']				= $this->uri->segment(3);
		$data['id_proyek_dok_kat']		= $this->sbsn_model->pilih_proyek_dok_kat();
		$this->load->view('sbsn/usulan/log_usulan_tambah', $data);
		//$this->load->view('sbsn/usulan/log_usulan_tambah2');
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
	
	function log_usulan_simpan()
	{
		$status = array('success' => false, 'messages' => array());

		$this->form_validation->set_rules("id_proyek", "Proyek", "trim|required");
		$this->form_validation->set_rules("id_proyek_dok_kategori", "Kategori", "trim|required");
		$this->form_validation->set_rules("id_arsip", "Surat", "trim|required");
		$this->form_validation->set_rules("nama", "Nama", "trim|required");
		$this->form_validation->set_rules("deskripsi", "Deskripsi", "trim|required");
		
		//$this->form_validation->set_rules("berkas", "Berka arsip", "required");
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');
		
		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
		}else{ //validasi benar semua
			//foreach ($_POST as $key => $value) {
				//$status['messages'][$key] = form_error($key);
			//}
			
			
			
				/*
			$data 					= $_POST;
			$status['success'] = false;
			$nilai_admin= $this->input->post('nilai_admin');
			var_dump($data);
			$status['messages']['nilai_admin'] =$nilai_admin;
			
			//*/
			

			$data 					= $_POST;
			$data['update_by']		= $this->session->userdata('id');
			$data['update_date']	= date('Y-m-d H:i:s');
			$result 				= $this->sbsn_model->log_usulan_simpan_data($data);
			
			$status['success'] 	= true;

			
		}

		echo json_encode($status);

	}
	
	function tampilkan_form_log_usulan_detail()
	{
		$id 					= $this->uri->segment(3);
		$query					= $this->sbsn_model->ambil_data_log_usulan_by_id($id);
		$data['log_usulan']		= $query->row();
		$this->load->view('sbsn/usulan/log_usulan_detail', $data);
	}
	
	function tampilkan_form_log_usulan_edit()
	{	
		$id 							= $this->uri->segment(3);
		$query							= $this->sbsn_model->ambil_data_log_usulan_by_id($id);
		$data['log_usulan']				= $query->row();
		$data['proyek_dok_kat']			= $this->sbsn_model->pilih_proyek_dok_kat();
		$this->load->view('sbsn/usulan/log_usulan_edit', $data);
	}
	
	function tampilkan_form_log_usulan_hapus()
	{	
		$data['id'] = $this->uri->segment(3);
		$this->load->view('sbsn/usulan/log_usulan_hapus', $data);
	}
	
	function log_usulan_hapus()
	{	
		$id 	= $this->input->post('id');
		$query	= $this->sbsn_model->log_usulan_hapus_data($id);
	}
	
//------------------------- SYARAT USULAN PROYEK --------------------------------------------
//------------------------- SYARAT USULAN PROYEK --------------------------------------------

	function tampilkan_syarat_usulan_index()
	{
		$id_proyek				= $this->uri->segment(3); //id_proyek
		$query					= $this->sbsn_model->ambil_usulan_by_id($id_proyek);
		$data['usulan']			= $query->row();
		$this->load->view('sbsn/usulan/syarat_usulan_index', $data);
		//$this->load->view('sbsn/usulan/syarat_usulan_index');
	}

	function tampilkan_syarat_usulan_list()
	{
		$id_proyek 		= $this->uri->segment(3);
		$data['syarat'] = $this->sbsn_model->ambil_syarat_usulan_by_id_proyek($id_proyek);
		$this->load->view('sbsn/usulan/syarat_usulan_list', $data);
	}
	
	function tampilkan_syarat_usulan_tambah()
	{
		$data['id_proyek']				= $this->uri->segment(3);
		$this->load->view('sbsn/usulan/syarat_usulan_tambah', $data);
	}
	
	function syarat_usulan_simpan()
	{	
		
		$status = array('success' => false, 'messages' => array());

		$this->form_validation->set_rules("kat", "Kategori dok. pendukung", "trim|required");
		$this->form_validation->set_rules("nama", "Nama File", "trim|required");
		$this->form_validation->set_rules("ket", "Keterangan", "trim|required");
		
		//$this->form_validation->set_rules("berkas", "Berka arsip", "required");
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');
		
		$panel = $this->uri->segment(3);
		
		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
			if($panel == "tambah"){
				if(isset($_FILES['berkas']["name"]) and $_FILES['berkas']["name"]<>""){
					//$status['messages']['berkas'] = '<p class="text-success">File berhasil diupload</p>';
				}else{
					$status['messages']['berkas'] = '<p class="text-danger">Silahkan pilih files.</p>';
				}
			}
			
		}else{ //validasi benar semua
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
			$status['success'] = true;
			
			if(isset($_FILES['berkas']["name"]) and $_FILES['berkas']["name"]<>""){
				//$status['success'] = false;
				
				$id_proyek 		= $this->input->post('id_proyek');
				$new_name 	= $id_proyek.'-'.$_FILES["berkas"]['name'];
				
				$config['allowed_types'] 	= '*';
				$config['max_size']  		= '0';
				$config['upload_path'] 		= './uploads/sbsn/';
				$config['file_name'] 		= $new_name;
				
				$this->load->library('upload', $config);
				
				$berkas_lama = $this->input->post('berkas_lama');
				//cek lagi apakah nama berkas masih sama dengan nama file

				if($berkas_lama == $new_name){
					$status['success'] = false;
					$status['messages']['berkas'] = '<p class="text-danger">File ini sudah ada. Silahkan pilih file lain atau ganti nama saja.</p>';
				}else{
					
					if ( ! $this->upload->do_upload('berkas')){
						$error = $this->upload->display_errors();
						$status['success'] = false;
						$status['messages']['berkas'] = $error;
					}else{
					
						$dataupload = $this->upload->data();
						$msg = $dataupload['file_name']." berhasil diupload";

						$status['messages']['berkas'] = '<p>'.$msg.'</p>';
						$status['success'] = true;

						$data 					= $_POST;
						unset($data['berkas_lama']);
						$data['berkas'] 		= $dataupload['file_name'];
						$data['update_by']		= $this->session->userdata('id');
						$data['update_date'] 	= date('Y-m-d H:i:s');
						$result 				= $this->sbsn_model->syarat_usulan_simpan_data($data);
					}
				}
				
			}else{
				
				if($panel == "edit"){
					
					$status['success'] = true;
					$data 					= $_POST;
					unset($data['berkas']);
					unset($data['berkas_lama']);
					$data['update_by']		= $this->session->userdata('id');
					$data['update_date'] 	= date('Y-m-d H:i:s');
					$result 	= $this->sbsn_model->syarat_usulan_simpan_data($data);
					
				}elseif($panel == "tambah"){
					$status['success'] = false;
					if(isset($_FILES['berkas']["name"]) and $_FILES['berkas']["name"]<>""){
					//$status['messages']['berkas'] = '<p class="text-success">File berhasil diupload</p>';
					}else{
						$status['messages']['berkas'] = '<p class="text-danger">Silahkan pilih files.</p>';
					}
				}
			}
		}
		echo json_encode($status);
	}
	
	function tampilkan_syarat_usulan_edit()
	{	
		$id 					= $this->uri->segment(3); //id table of irena_sbsn_usulan_syarat
		$query					= $this->sbsn_model->ambil_syarat_usulan_by_id($id);
		$data['syarat_usulan']	= $query->row();
		$this->load->view('sbsn/usulan/syarat_usulan_edit', $data);
	}
	
	function tampilkan_syarat_usulan_hapus()
	{
		$data['id'] = $this->uri->segment(3);
		$this->load->view('sbsn/usulan/syarat_usulan_hapus', $data);
	}
	
	function syarat_usulan_hapus()
	{
		$id 	= $this->input->post('id');
		$query	= $this->sbsn_model->syarat_usulan_hapus_data($id);
	}
	
//---------------------------------- DPP SBSN ---------------------------------------------
//---------------------------------- DPP SBSN ---------------------------------------------
//---------------------------------- DPP SBSN ---------------------------------------------

	function dpp()
	{
		//$id_proyek				= $this->uri->segment(3); //id_proyek
		//$query					= $this->sbsn_model->ambil_usulan_by_id($id_proyek);
		//$data['usulan']			= $query->row();
		//$this->load->view('sbsn/dpp/dpp_index', $data);
		
		if(is_logged_in()) {
			$this->load->view('templates/header'); 
			$this->load->view('sbsn/dpp/dpp_index');
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}

	function tampilkan_dpp_list()
	{
		$data['dpp'] = $this->sbsn_model->ambil_proyek_dpp();
		$this->load->view('sbsn/dpp/dpp_list', $data);
	}
	
	function tampilkan_dpp_detail()
	{
		$id				= $this->uri->segment(3);
		$query			= $this->sbsn_model->ambil_proyek_dpp_by_id($id);
		$data['dpp']	= $query->row();
		$this->load->view('sbsn/dpp/dpp_detail', $data);
	}
	
	function tampilkan_dpp_edit()
	{
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$id 					= $this->uri->segment(3); //id table of irena_sbsn_usulan_syarat
		$query					= $this->sbsn_model->ambil_tabel_proyek_dpp_by_id($id);
		$data['dpp']			= $query->row();
		$data['provinsi']= $this->Greenbook_model->ambil_provinsi();
		$data['kabkota']= $this->Greenbook_model->ambil_kabkota();
		
		$data['lokasi'] 		= $this->Usulan_model->ambil_lokasi();
		$data['jenis']			= $this->sbsn_model->pilih_id_dpp();
		$this->load->view('sbsn/dpp/dpp_edit', $data);
	}
	
	function dpp_proyek_simpan()
	{
		$status = array('success' => false, 'messages' => array());
			
		$this->form_validation->set_rules("id", "ID", "trim|required");
		$this->form_validation->set_rules("id_proyek", "ID Proyek", "trim|required");
		$this->form_validation->set_rules("id_dpp", "Jenis DPP", "trim|required");
		$this->form_validation->set_rules("judul", "Nama/Judul Proyek", "trim|required");
		$this->form_validation->set_rules("nilai", "Nilai Proyek", "trim|required|numeric");
		$this->form_validation->set_rules("lokasi", "Lokasi", "trim|required");

		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
		}else{ //validasi benar semua
			$status['success'] = true;
			
			$data 					= $_POST;
			$data['update_by']		= $this->session->userdata('id');
			$data['update_date']	= date('Y-m-d H:i:s');

			$id_					= $this->input->post('id_proyek');
			$id_dpp					= $this->input->post('id_dpp');
			$this->sbsn_model->hapus_dari_lokasi_dpp($id_);
/*
			$select2data = $this->input->post('lokasi');
			$array_lokasi = explode(",", $select2data);
				
			$data2 = [];
				foreach($array_lokasi as $lokasi) {
				  $data2[] = [
				    'id_usulan' =>  $id_,
				    'id_dpp' => $id_dpp,

				    'id_lokasi' => $lokasi,
				  ];
			}
	 		$this->db->insert_batch('irena_dpp_lokasi', $data2);*/

	 		$data_prov = $this->input->post('id_prov');
			$array_prov = explode(",", $data_prov);
				
			$data3 = [];
				foreach($array_prov as $prov) {
				  $data3[] = [
				    'id_usulan' =>  $id_,
				    'id_dpp' => $id_dpp,
				    'id_prov' => $prov,
				  ];
			}
	 		$this->db->insert_batch('irena_sbsn_dpp_prov', $data3);


	 		$data_kabkota = $this->input->post('id_kabkota');
			$array_kabkota = explode(",", $data_kabkota);
				
			$data4 = [];
				foreach($array_kabkota as $kabkota) {
				  $data4[] = [
				    'id_usulan' =>  $id_,
				    'id_dpp' => $id_dpp,
				    'id_kabkota' => $kabkota,
				  ];
			}
	 		$this->db->insert_batch('irena_sbsn_dpp_kabkota', $data4);
			
			$result 		= $this->sbsn_model->dpp_simpan_data($data);
			//$result 		= $this->sbsn_model->dpp_simpan_data($data);
			
			
		}

		echo json_encode($status);

	}
	
//---------------------------------- ON GOITNG ---------------------------------------------
//---------------------------------- ON GOITNG ---------------------------------------------
	
	function on_going()
	{
		//$id_proyek				= $this->uri->segment(3); //id_proyek
		//$query					= $this->sbsn_model->ambil_usulan_by_id($id_proyek);
		//$data['usulan']			= $query->row();
		//$this->load->view('sbsn/dpp/dpp_index', $data);
		
		if(is_logged_in()) {
			$this->load->view('templates/header'); 
			$this->load->view('sbsn/on_going/on_going_index');
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function tampilkan_on_going_list()
	{
		$data['on_going'] = $this->sbsn_model->ambil_data_on_going();
		$this->load->view('sbsn/on_going/on_going_list', $data);
	}
	
	function tampilkan_on_going_tambah()
	{
		$data['dpp']		= $this->sbsn_model->pilih_id_dpp();
		$data['instansi'] 	= $this->sbsn_model->pilih_instansi();
		
		$this->load->view('sbsn/on_going/on_going_tambah', $data);
	}

	function ambil_data_satker_by_id_instansi()
	{
		$id_instansi 		= $this->uri->segment(3); 
        $arrStates 			= $this->sbsn_model->ambil_data_satker_by_id_instansi($id_instansi); 
		
		 echo json_encode($arrStates);
	}
	
	function on_going_simpan()
	{
		$status = array('success' => false, 'messages' => array());
			
		$this->form_validation->set_rules("id_satker", "Satuan Kerja", "trim|required");
		$this->form_validation->set_rules("id_dpp", "Jenis DPP", "trim|required");
		$this->form_validation->set_rules("nilai", "Nilai Proyek", "trim|required|numeric");

		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
		}else{ //validasi benar semua
			$status['success'] = true;
			
			$data 					= $_POST;
			$data['update_by']		= $this->session->userdata('id');
			$data['update_date']	= date('Y-m-d H:i:s');
			
			$result 		= $this->sbsn_model->on_going_simpan_data($data);
			
			
		}

		echo json_encode($status);

	}
	
	function tampilkan_on_going_edit()
	{
		$id 					= $this->uri->segment(3); //id table of irena_sbsn_usulan_syarat
		$query					= $this->sbsn_model->ambil_on_going_by_id($id);
		$data['on_going']		= $query->row();
		$data['dpp']			= $this->sbsn_model->pilih_id_dpp();
		$data['instansi'] 		= $this->sbsn_model->pilih_instansi();
		$this->load->view('sbsn/on_going/on_going_edit', $data);
	}
	
	function tampilkan_on_going_hapus()
	{
		$data['id'] = $this->uri->segment(3);
		$this->load->view('sbsn/on_going/on_going_hapus', $data);
	}
	
	function on_going_hapus_data()
	{
		$id 	= $this->input->post('id');
		$query	= $this->sbsn_model->on_going_hapus_data($id);
	}
	
//------------------------------ REALISASI PENYERAPAN INDEX --------------------------------------------------
//------------------------------ REALISASI PENYERAPAN INDEX --------------------------------------------------

	function tampilkan_on_going_penyerapan_index()
	{
		$id_realisasi			= $this->uri->segment(3); 
		$query					= $this->sbsn_model->ambil_data_on_going_list_by_id($id_realisasi);
		$data['realisasi']		= $query->row();
		
		$this->load->view('sbsn/on_going/penyerapan_index', $data);
	}
	
	function tampilkan_on_going_penyerapan_list()
	{
		$id_realisasi			= $this->uri->segment(3); 
		$data['penyerapan'] 	= $this->sbsn_model->ambil_on_going_penyerapan_by_id_realisasi($id_realisasi);	
		$this->load->view('sbsn/on_going/penyerapan_list', $data);
	}
	
	function tampilkan_on_going_penyerapan_tambah()
	{
		$data['id_realisasi'] 			= $this->uri->segment(3); 
		$this->load->view('sbsn/on_going/penyerapan_tambah', $data);
	}
	
	function on_going_penyerapan_simpan()
	{
		$status = array('success' => false, 'messages' => array());
			
		$this->form_validation->set_rules("id_realisasi", "ID Realisasi", "trim|required");
		$this->form_validation->set_rules("triwulan", "Triwulan", "trim|required");
		$this->form_validation->set_rules("penyerapan", "Penyerapan", "trim|required|numeric");
		$this->form_validation->set_rules("progres_fisik", "Progres Fisik", "trim|required|numeric");
		$this->form_validation->set_rules("permasalahan", "Permasalahan", "trim|required");
		$this->form_validation->set_rules("tindak_lanjut", "Tindak Lanjut", "trim|required");
		$this->form_validation->set_rules("pihak_terlibat", "Pihak Terlibat", "trim|required");
		$this->form_validation->set_rules("catatan", "Catatan", "trim|required");

		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');
		$this->form_validation->set_message('numeric', '%s harus diisi dengan angka');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
		}else{ //validasi benar semua
			$status['success'] = true;
			
			$data 					= $_POST;
			$data['update_by']		= $this->session->userdata('id');
			$data['update_date']	= date('Y-m-d H:i:s');
			
			$result 		= $this->sbsn_model->on_going_realisasi_simpan_data($data);
			
			
		}

		echo json_encode($status);
	}
	
	function tampilkan_on_going_penyerapan_edit()
	{
		$id 					= $this->uri->segment(3); //id table of irena_sbsn_usulan_syarat
		$query					= $this->sbsn_model->ambil_on_going_penyerapan_by_id($id);
		$data['penyerapan']		= $query->row();

		$this->load->view('sbsn/on_going/penyerapan_edit', $data);
	}
	
	function tampilkan_on_going_penyerapan_hapus()
	{
		$data['id'] = $this->uri->segment(3);
		$this->load->view('sbsn/on_going/penyerapan_hapus', $data);
	}
	
	function on_going_penyerapan_hapus_data()
	{
		$id 	= $this->input->post('id');
		$query	= $this->sbsn_model->on_going_penyerapan_hapus_data($id);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
