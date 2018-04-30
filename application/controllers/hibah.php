<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Hibah extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->library('parser');
		$this->load->model('hibah_model');
	}
	
	function usulan()
	{
		if(is_logged_in()) {
			
			//$data['arsip'] 	= $this->arsip_model->ambil_semua_arsip();
			
			$this->load->view('templates/header'); 
			$this->load->view('hibah/usulan/usulan_index');
			//$this->load->view('sbsn/usulan/usulan_index', $data);
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function usulan_list_data()
	{
		$data['usulan'] 	= $this->hibah_model->usulan_tampil_semua_data();	
		$this->load->view('hibah/usulan/usulan_list', $data);
	}
	
	function usulan_detail()
	{
		$id 					= $this->uri->segment(3);
		$query					= $this->hibah_model->ambil_usulan_by_id($id);
		$data['usulan']			= $query->row();
		$this->load->view('hibah/usulan/usulan_detail', $data);
	}
	
	function tampilkan_usulan_form_tambah()
	{
		$data['instansi'] 	= $this->hibah_model->pilih_instansi();
		$data['donor'] 		= $this->hibah_model->pilih_donor();
		$data['mata_uang'] 	= $this->hibah_model->pilih_mata_uang();
		$data['jenis'] 		= $this->hibah_model->pilih_jenis();
		
		$this->load->view('hibah/usulan/usulan_tambah', $data);
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
		$this->form_validation->set_rules("id_donor", "Donor", "trim|required");
		$this->form_validation->set_rules("judul_en", "Judul Proyek Dalam Bahasa Inggris", "trim|required");
		$this->form_validation->set_rules("judul_id", "Judul Proyek Dalam Bahasa Indonesia", "trim|required");
		$this->form_validation->set_rules("durasi", "Durasi", "trim|required|is_natural_no_zero");
		$this->form_validation->set_rules("id_mata_uang", "Mata Uang", "trim|required");
		$this->form_validation->set_rules("nilai_hibah", "Nilai Hibah", "trim|required|is_natural_no_zero");
		$this->form_validation->set_rules("nilai_dp", "Nilai Dana Pendamping", "trim|required|numeric");
		$this->form_validation->set_rules("ringkasan", "Ringkasan Proyek", "trim|required");
		
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
			$data['update_by']		= $this->session->userdata('id');
			$data['update_date']	= date('Y-m-d H:i:s');
			
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
				$result 		= $this->hibah_model->usulan_simpan_data($data);
			}
			
		}

		echo json_encode($status);

	}
	
	function usulan_tampil_form_edit()
	{	
		$id 					= $this->uri->segment(3);
		$query					= $this->hibah_model->ambil_tabel_usulan_by_id($id);
		$data['usulan']			= $query->row();
		$data['instansi'] 		= $this->hibah_model->pilih_instansi();
		$data['jenis'] 			= $this->hibah_model->pilih_jenis();
		$data['donor'] 		= $this->hibah_model->pilih_donor();
		
		$this->load->view('hibah/usulan/usulan_edit', $data);
	}
	
	function usulan_tampil_form_hapus()
	{	
		$id 					= $this->uri->segment(3);
		$query					= $this->hibah_model->ambil_usulan_by_id($id);
		$data['usulan']			= $query->row();	
		
		$this->load->view('hibah/usulan/usulan_hapus', $data);
	}
	
	function usulan_hapus()
	{	
		$id 	= $this->input->post('id');
		$query	= $this->hibah_model->usulan_hapus($id);
	}
	
	function usulan_tampil_form_nilai_admin()
	{
		$id						= $this->uri->segment(3); //ID_Proyek
		$query					= $this->hibah_model->ambil_usulan_by_id($id);
		$data['usulan']			= $query->row();
		$this->load->view('hibah/usulan/usulan_nilai_admin', $data);
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
			$result 					= $this->hibah_model->usulan_simpan_data($data);
			$status['success'] 			= true;
			
			///
		}
		echo json_encode($status);
		//var_dump($data);
	}
	
	function usulan_tampil_form_nilai_layak()
	{
		$id						= $this->uri->segment(3); //ID_Proyek
		$query					= $this->hibah_model->ambil_tabel_usulan_by_id($id);
		$data['usulan']			= $query->row();
		$this->load->view('hibah/usulan/usulan_nilai_layak', $data);
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
			$result 					= $this->hibah_model->usulan_simpan_data($data);
			$status['success'] 			= true;
			
			///
		}
		echo json_encode($status);
		//var_dump($data);
	}
	
	
	function usulan_tampil_form_masuk_drkh()
	{
		$id						= $this->uri->segment(3); //ID_Proyek
		$query					= $this->hibah_model->ambil_tabel_usulan_by_id($id);
		$data['usulan']			= $query->row();
		$this->load->view('hibah/usulan/usulan_masuk_drkh', $data);
	}
	
	function usulan_simpan_masuk_drkh()
	{
		$status = array('success' => false, 'messages' => array());

		$this->form_validation->set_rules("id", "ID Proyek", "trim|required");
		$this->form_validation->set_rules("masuk_drkh", "Penilaian ", "trim|required");
		$this->form_validation->set_rules("masuk_drkh_ket", "Keterangan penilaian", "trim|required");
		
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
			$masuk_drkh  				= $this->input->post('masuk_drkh');
			$data 						= $_POST;
			$data['masuk_drkh_id']		= $this->session->userdata('id');
			$data['masuk_drkh_date']	= date('Y-m-d H:i:s');
			
			$result 					= $this->hibah_model->usulan_simpan_data($data);
			
			if($masuk_drkh == "1"){
				$drkh['id_proyek']		= $this->input->post('id');
				$drkh['id_jenis']		= $this->input->post('id_jenis');
				$drkh['id_donor']		= $this->input->post('id_donor');
				$drkh['judul_en']		= $this->input->post('judul_en');
				$drkh['judul_id']		= $this->input->post('judul_id');
				$drkh['durasi']			= $this->input->post('durasi');
				$drkh['id_mata_uang']	= $this->input->post('id_mata_uang');
				$drkh['nilai_hibah']	= $this->input->post('nilai_hibah');
				$drkh['nilai_dp']		= $this->input->post('nilai_dp');
				
				$drkh['update_by']		= $this->session->userdata('id');
				$drkh['update_date']	= date('Y-m-d H:i:s');
				
				$result 				= $this->hibah_model->drkh_simpan_data($drkh);
			}
			
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
		$query					= $this->hibah_model->ambil_usulan_by_id($id_proyek);
		$data['usulan']			= $query->row();
		$this->load->view('hibah/usulan/log_usulan_index', $data);
		//$this->load->view('sbsn/usulan/log_usulan_index');
	}
	
	function tampilkan_data_log_usulan()
	{
		$id_proyek 		= $this->uri->segment(3);
		$data['log'] 	= $this->hibah_model->ambil_data_log_usulan_by_id_proyek($id_proyek);
		$this->load->view('hibah/usulan/log_usulan_list', $data);
	}
	
	function tampilkan_form_log_usulan_tambah()
	{
		$data['id_proyek']				= $this->uri->segment(3);
		$data['id_log_kategori']		= $this->hibah_model->pilih_log_kategori();
		$this->load->view('hibah/usulan/log_usulan_tambah', $data);
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
			
		}
		
		echo json_encode($json);
	}
	
	function log_usulan_simpan()
	{
		$status = array('success' => false, 'messages' => array());

		//$this->form_validation->set_rules("id_proyek", "Proyek", "trim|required");
		$this->form_validation->set_rules("id_log_kategori", "Kategori", "trim|required");
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

			$data 					= $_POST;
			$data['update_by']		= $this->session->userdata('id');
			$data['update_date']	= date('Y-m-d H:i:s');
			$result 				= $this->hibah_model->log_usulan_simpan_data($data);
			
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
		$query							= $this->hibah_model->ambil_data_log_usulan_by_id($id);
		$data['log_usulan']				= $query->row();
		$data['id_log_kategori']		= $this->hibah_model->pilih_log_kategori();
		$this->load->view('hibah/usulan/log_usulan_edit', $data);
	}
	
	function tampilkan_form_log_usulan_hapus()
	{	
		$data['id'] = $this->uri->segment(3);
		$this->load->view('hibah/usulan/log_usulan_hapus', $data);
	}
	
	function log_usulan_hapus()
	{	
		$id 	= $this->input->post('id');
		$query	= $this->hibah_model->log_usulan_hapus_data($id);
	}
	
//------------------------- DOKUMEN USULAN PROYEK --------------------------------------------
//------------------------- DOKUMEN USULAN PROYEK --------------------------------------------
	function tampilkan_dok_usulan_index()
	{
		$id_proyek				= $this->uri->segment(3); //id_proyek
		$query					= $this->hibah_model->ambil_usulan_by_id($id_proyek);
		$data['usulan']			= $query->row();
		$this->load->view('hibah/usulan/dok_usulan_index', $data);
	}

	function tampilkan_dok_usulan_list()
	{
		$id_proyek 		= $this->uri->segment(3);
		$data['dok']	 = $this->hibah_model->ambil_dok_usulan_by_id_proyek($id_proyek);
		$this->load->view('hibah/usulan/dok_usulan_list', $data);
	}
	
	function tampilkan_dok_usulan_tambah()
	{
		$data['id_proyek']				= $this->uri->segment(3);
		$this->load->view('hibah/usulan/dok_usulan_tambah', $data);
	}
	
	function dok_usulan_simpan()
	{	
		
		$status = array('success' => false, 'messages' => array());
		
		$this->form_validation->set_rules("id_proyek", "ID Proyek", "trim|required");
		$this->form_validation->set_rules("kat", "Kategori dok. pendukung", "trim|required");
		$this->form_validation->set_rules("nama", "Nama File", "trim|required");
		$this->form_validation->set_rules("ket", "Keterangan", "trim|required");
		
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');
		
		$panel = $this->uri->segment(3); //edit atau tambah
		
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
				$config['upload_path'] 		= './uploads/hibah/';
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
						$result 				= $this->hibah_model->dok_usulan_simpan_data($data);
					}
				}
				
			}else{
				//$status['success'] = false;
				//$status['messages']['berkas'] = '<p class="text-danger">Silahkan pilih file.</p>';
				
				
				
				if($panel == "edit"){
					$data 					= $_POST;
					unset($data['berkas']);
					unset($data['berkas_lama']);
					$data['update_by']		= $this->session->userdata('id');
					$data['update_date'] 	= date('Y-m-d H:i:s');
					$result 	= $this->hibah_model->dok_usulan_simpan_data($data);
					$status['success'] = true;
					
				}else{
					
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
	
	function tampilkan_dok_usulan_edit()
	{	
		$id 					= $this->uri->segment(3); //id table of irena_sbsn_usulan_syarat
		$query					= $this->hibah_model->ambil_dok_usulan_by_id($id);
		$data['dok']			= $query->row();
		$this->load->view('hibah/usulan/dok_usulan_edit', $data);
	}
	
	function tampilkan_dok_usulan_hapus()
	{
		$data['id'] = $this->uri->segment(3);
		$this->load->view('hibah/usulan/dok_usulan_hapus', $data);
	}
	
	function dok_usulan_hapus()
	{
		$id 	= $this->input->post('id');
		$query	= $this->hibah_model->dok_usulan_hapus_data($id);
	}
	
//---------------------------------- DPP SBSN ---------------------------------------------
//---------------------------------- DPP SBSN ---------------------------------------------
//---------------------------------- DPP SBSN ---------------------------------------------

	function drkh()
	{
		//$id_proyek				= $this->uri->segment(3); //id_proyek
		//$query					= $this->sbsn_model->ambil_usulan_by_id($id_proyek);
		//$data['usulan']			= $query->row();
		//$this->load->view('sbsn/dpp/dpp_index', $data);
		
		if(is_logged_in()) {
			$this->load->view('templates/header'); 
			$this->load->view('hibah/drkh/drkh_index');
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}

	function tampilkan_drkh_list()
	{
		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('hibah/drkh/drkh_list', $data);
	}
	
	function tampilkan_drkh_detail()
	{
		$id 					= $this->uri->segment(3);
		$query					= $this->hibah_model->ambil_proyek_drkh($id);
		$data['drkh']			= $query->row();
		$this->load->view('hibah/drkh/drkh_detail', $data);
	}
	
	function tampilkan_drkh_edit()
	{	
		$id 					= $this->uri->segment(3); //id table of irena_sbsn_usulan_syarat
		$query					= $this->hibah_model->ambil_drkh_by_id($id);
		$data['drkh']			= $query->row();
		
		$data['donor'] 			= $this->hibah_model->pilih_donor();
		$data['mata_uang'] 		= $this->hibah_model->pilih_mata_uang();
		$data['jenis'] 			= $this->hibah_model->pilih_jenis();
		$data['prioritas'] 		= $this->hibah_model->pilih_prioritas();
		
		$this->load->view('hibah/drkh/drkh_edit', $data);
	}
	
	function drkh_simpan()
	{
		$status = array('success' => false, 'messages' => array());
		
		$this->form_validation->set_rules("id", "ID", "trim|required");
		$this->form_validation->set_rules("id_proyek", "ID Proyek", "trim|required");
		$this->form_validation->set_rules("id_jenis", "Jenis DRKH", "trim|required");
		$this->form_validation->set_rules("id_donor", "Donor", "trim|required");
		$this->form_validation->set_rules("id_prioritas", "Prioritas", "trim|required");
		$this->form_validation->set_rules("judul_en", "Judul (EN)", "trim|required");
		$this->form_validation->set_rules("judul_id", "Judul (ID)", "trim|required");
		$this->form_validation->set_rules("durasi", "Durasi", "trim|required|is_natural_no_zero");
		$this->form_validation->set_rules("id_mata_uang", "Mata Uang", "trim|required");
		$this->form_validation->set_rules("nilai_hibah", "Nilai Hibah", "trim|required|is_natural_no_zero|numeric");
		$this->form_validation->set_rules("nilai_dp", "Nilai DP", "trim|required|is_natural_no_zero|numeric");
		$this->form_validation->set_rules("latar_belakang_en", "Latar Belakang (EN)", "trim|required");
		$this->form_validation->set_rules("latar_belakang_id", "Latar Belakang (ID)", "trim|required");
		$this->form_validation->set_rules("ruang_lingkup_en", "Ruang Lingkup (EN)", "trim|required");
		$this->form_validation->set_rules("ruang_lingkup_id", "Ruang Lingkup (ID)", "trim|required");
		$this->form_validation->set_rules("output_en", "Output (EN)", "trim|required");
		$this->form_validation->set_rules("output_id", "Output (ID)", "trim|required");
		$this->form_validation->set_rules("outcome_en", "Outcome (EN)", "trim|required");
		$this->form_validation->set_rules("outcome_id", "Outcome (ID)", "trim|required");
		
		$this->form_validation->set_rules("durasi", "Ringkasan Proyek", "trim|required");
		
		//$this->form_validation->set_rules("berkas", "Berka arsip", "required");
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
			
			$result 				= $this->hibah_model->drkh_simpan_data($data);
			
		}

		echo json_encode($status);

	}
	
}
