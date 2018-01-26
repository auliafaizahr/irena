<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Arsip extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->library('parser');
		
	}
	
	function index()
	{
		if(is_logged_in()) {
			
			$data['arsip'] 	= $this->arsip_model->ambil_semua_arsip();
			
			
			$this->load->view('templates/header'); 
			$this->load->view('arsip/arsip_index', $data);
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function tampilkan_jumlah_arsip_masuk(){
		$tahun 							= $this->uri->segment(3);
		$qry_arsip_masuk				= $this->arsip_model->jumlah_arsip_masuk_by_tahun($tahun);
		$data['jumlah_arsip_masuk']		= $qry_arsip_masuk->row();
		$this->load->view('arsip/arsip_masuk', $data);
	}
	
	function tampilkan_jumlah_arsip(){
		$tahun 							= $this->uri->segment(3);
		$jenis 							= $this->uri->segment(4);
		$qry					= $this->arsip_model->jumlah_arsip_by_tahun($jenis, $tahun);
		$data['jumlah_arsip']		= $qry->row();
		$this->load->view('arsip/arsip_jumlah', $data);
	}
	
	function tampilkan_staf_blm_selesai_disposisi(){
		
		$data['staf'] 	= $this->arsip_model->ambil_staf_yg_blm_selesai_disposisi();	
		$this->load->view('arsip/staf_yg_blm_selesai_disposisi', $data);
	}
	
	function shodata()
	{
		//$data['arsip'] 	= $this->arsip_model->ambil_semua_arsip();	
		$id_arsip = 8;
		$data['arsip'] 	= $this->arsip_model->ambil_semua_arsip();	
		$this->load->view('arsip/arsip_list', $data);
	}
	
	function detil()
	{
		$id_arsip 						= $this->uri->segment(3);
		$data['arsip'] 					= $this->arsip_model->ambil_arsip_per_id($id_arsip);
		$data['lampiran'] 				= $this->arsip_model->ambil_lampiran_per_id($id_arsip);
		$data['disposisi'] 				= $this->arsip_model->ambil_disposisi_by_id_arsip($id_arsip);
		$data['disposisi_internal'] 	= $this->arsip_model->ambil_disposisi_internal_by_id_arsip($id_arsip);
		$data['disposisi_aksi'] 		= $this->arsip_model->ambil_disposisi_internal_aksi_by_id_arsip($id_arsip);
		
		$this->load->view('arsip/arsip_detail', $data);
	}
	
	function tambah()
	{
		$data['jenis_arsip'] 	= $this->arsip_model->pilih_jenis_arsip();
		$data['status_arsip'] 	= $this->arsip_model->pilih_jenis_status();
		$data['tingkat_arsip'] 	= $this->arsip_model->pilih_jenis_tingkat();
		
		$this->load->view('arsip/arsip_tambah', $data);
	}
	
	function simpan2()
	{	
		
		$status = array('success' => false, 'messages' => array());

		$this->form_validation->set_rules("id_jenis", "Jenis arsip", "trim|required");
		$this->form_validation->set_rules("id_status", "Status arsip", "trim|required");
		$this->form_validation->set_rules("id_tingkat", "Tingkat", "trim|required");
		$this->form_validation->set_rules("no", "Nomor arsip", "trim|required");
		$this->form_validation->set_rules("perihal", "Perihal arsip", "trim|required");
		$this->form_validation->set_rules("dari", "Dari arsip", "trim|required");
		$this->form_validation->set_rules("tgl", "Tanggal arsip", "trim|required");
		$this->form_validation->set_rules("ringkasan", "Ringkasan arsip", "trim|required");
		$this->form_validation->set_rules("keywords", "Keywords arsip", "trim|required");
		$this->form_validation->set_rules("tgl_terima", "Tanggal terima arsip", "trim|required");
		//$this->form_validation->set_rules("berkas", "Berka arsip", "required");
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
			
				if(isset($_FILES['berkas']["name"]) and $_FILES['berkas']["name"]<>""){
					//$status['messages']['berkas'] = '<p class="text-success">File berhasil diupload</p>';
				}else{
					$status['messages']['berkas'] = '<p class="text-danger">Silahkan pilih files.</p>';
				}
			
		}else{ //validasi benar semua
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
			$status['success'] = true;
			
			if(isset($_FILES['berkas']["name"]) and $_FILES['berkas']["name"]<>""){
				//$status['success'] = false;
				
				$tgl_arsip 		= $this->input->post('tgl');
				$jenis_arsip 	= $this->input->post('id_jenis');
				$new_name 	= $tgl_arsip.'-'.$_FILES["berkas"]['name'];
				
				if($jenis_arsip == "1"){
					$config['upload_path'] 		= './uploads/arsip/masuk/';
				}else{
					$config['upload_path'] 		= './uploads/arsip/keluar/';
				}
				$config['allowed_types'] 	= '*';
				$config['max_size']  		= '0';
				
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
						$data['berkas'] 		= $dataupload['file_name'];
						$data['update_by']		= $this->session->userdata('id');
						$data['update_date'] 	= date('Y-m-d H:i:s');
						$result 				= $this->arsip_model->simpan_data($data);
					}
				}
				
			}else{
				$status['success'] = false;
				$status['messages']['berkas'] = '<p class="text-danger">Silahkan pilih file.</p>';
				
				$panel = $this->uri->segment(3);
				if($panel == "edit"){
					$status['success'] = true;
					$data 					= $_POST;
					unset($data['berkas']);
					$data['update_by']		= $this->session->userdata('id');
					$data['update_date'] 	= date('Y-m-d H:i:s');
					$result 	= $this->arsip_model->simpan_data($data);
				}
			}
			
		}

		echo json_encode($status);
	}
	
	function simpan()
	{
		$status = array('success' => false, 'messages' => array());

		//$this->load->library('form_validation');
		$this->form_validation->set_rules("id", "id", "trim|required");
		$this->form_validation->set_rules("id_jenis", "Jenis arsip", "trim|required");
		$this->form_validation->set_rules("id_status", "Status arsip", "trim|required");
		$this->form_validation->set_rules("id_tingkat", "Tingkat", "trim|required");
		$this->form_validation->set_rules("no", "Nomor arsip", "trim|required");
		$this->form_validation->set_rules("perihal", "Perihal arsip", "trim|required");
		$this->form_validation->set_rules("dari", "Dari arsip", "trim|required");
		$this->form_validation->set_rules("tgl", "Tanggal arsip", "trim|required");
		$this->form_validation->set_rules("ringkasan", "Ringkasan arsip", "trim|required");
		$this->form_validation->set_rules("keywords", "Keywords arsip", "trim|required");
		$this->form_validation->set_rules("tgl_terima", "Tanggal terima arsip", "trim|required");
		$this->form_validation->set_rules("berkas", "Upload file arsip", "required");

		/*
		$this->form_validation->set_rules("kebutuhan_benih", "Kebutuhan Benih", "trim|required|is_natural_no_zero");
		
		$this->form_validation->set_rules("keb_pest_herb", "Kebutuhan Pestisida/Herbisida", "trim|required|is_natural_no_zero");
		$this->form_validation->set_rules("keb_organi_kaptan", "Kebutuhan Bahan Organik/Kaptan", "trim|required|is_natural_no_zero");
		$this->form_validation->set_rules("keb_pupuk", "Kebutuhan Pupuk", "trim|required|is_natural_no_zero");
		$this->form_validation->set_rules("keb_rhizobium", "Kebutuhan Rhizobium", "trim|required|is_natural_no_zero");
		$this->form_validation->set_rules("nilai_bantuan", "Nilai Bantuan", "trim|required|is_natural_no_zero");
		$this->form_validation->set_rules("ket", "Keterangan", "trim|required");
		//$this->form_validation->set_rules("sk_cpcl", "Surat Keputusan CPCL", "trim|required");
		//$this->form_validation->set_rules("spk", "Surat Perjanjian Kerjasama", "trim|required");
		//$this->form_validation->set_rules("sptjm", "Surat Perjanjian Tanggung Jawab Mutlak", "trim|required");	
		*/
		
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			/*
			$data 					= $_POST;
			$data['update_date'] 	= date('Y-m-d H:i:s');
			
			if($this->uri->segment(3) == 'tambah'){
				$result 	= $this->arsip_model->simpan_data($data);
			}elseif($this->uri->segment(3) == 'edit'){
				$result 	= $this->arsip_model->simpan_data($data);
			}
			*/
			/*
			$config['upload_path']          = './uploads/';
			$config['allowed_types']        = 'gif|jpg|png';
			$config['max_size']             = 0;
			//$config['max_width']          = 1024;
			//$config['max_height']           = 768;

			$this->load->library('upload', $config);

			if ( ! $this->upload->do_upload('berkas')){
					$error = $this->upload->display_errors();
					$status['messages']['berkas'] = $error;
					//$this->load->view('upload_form', $error);
			}else{
					//$data = array('upload_data' => $this->upload->data());
					$data  = $this->upload->data();
					$status['messages']['berkas'] = $data;

					//$this->load->view('upload_success', $data);
					$status['success'] = true;
			}
			*/
			
			
			
			//$status['success'] = true;
			//foreach ($_POST as $key => $value) {
				//$status['messages'][$key] = $value;
			//}
			
	
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
		}else{
			//if(isset($_FILES["berkas"]["name"]) and $_FILES["berkas"]["name"]<>""){
				$config['upload_path'] = './uploads/';
				$config['allowed_types'] = '*';
				
				
				$this->load->library('upload', $config);
				if (! $this->upload->do_upload('berkas'))
				{
					$status['messages']['berkas'] = $this->upload->display_errors();
				}else{
					$upload_data = $this->upload->data();
					$status['messages']['berkas'] = $upload_data['file_name'];
					$status['success'] = true;
				}
		//	}
		}

		echo json_encode($status);
	}
	
	function edit()
	{
		$data['jenis_arsip'] 	= $this->arsip_model->pilih_jenis_arsip();
		$data['status_arsip'] 	= $this->arsip_model->pilih_jenis_status();
		$data['tingkat_arsip'] 	= $this->arsip_model->pilih_jenis_tingkat();
		
		$id 					= $this->uri->segment(3);
		$query					= $this->arsip_model->ambil_arsip_by_id($id);
		$data['arsip']			= $query->row();	
		
		$this->load->view('arsip/arsip_edit', $data);
	}
	
	function hapus()
	{	
		$id 					= $this->uri->segment(3);
		$query					= $this->arsip_model->ambil_arsip_by_id($id);
		$data['arsip']			= $query->row();	
		
		$this->load->view('arsip/arsip_hapus', $data);
	}
	
	function hapus_yakin()
	{	
		$id 	= $this->input->post('id');
		$query	= $this->arsip_model->hapus($id);
	}
	
	//--------------------------- Fungsi Lampiran ----------------------
	
	function lampiran()
	{
		$id_arsip 		= $this->uri->segment(3);
		$query			= $this->arsip_model->ambil_arsip_by_id($id_arsip);
		$data['arsip']	= $query->row();
		
		$this->load->view('arsip/lampiran_index', $data);
	}
	
	function lampiran_list()
	{
		$id_arsip 			= $this->uri->segment(3);
		$data['lampiran'] 	= $this->arsip_model->ambil_lampiran_per_id($id_arsip);
		$this->load->view('arsip/lampiran_list', $data);
	}
			
	
	function lampiran_tambah()
	{
		$data['id_arsip']		= $this->uri->segment(3);
		$this->load->view('arsip/lampiran_tambah', $data);
	}
	
	function lampiran_simpan()
	{
		$status = array('success' => false, 'messages' => array());
		
		//$this->form_validation->set_rules("id", "ID Lampiran", "trim|required");
		$this->form_validation->set_rules("id_arsip", "ID Arsip", "trim|required");
		$this->form_validation->set_rules("nama", "Nama", "trim|required");
		$this->form_validation->set_rules("keterangan", "Keterangan", "trim|required");
		
		//$this->form_validation->set_rules("berkas", "Berka arsip", "required");
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
			
				if(isset($_FILES['berkas']["name"]) and $_FILES['berkas']["name"]<>""){
					//$status['messages']['berkas'] = '<p class="text-success">File berhasil diupload</p>';
				}else{
					$status['messages']['berkas'] = '<p class="text-danger">Silahkan pilih filesss.</p>';
				}
			
		}else{ //validasi benar semua
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
			$status['success'] = true;
			
			if(isset($_FILES['berkas']["name"]) and $_FILES['berkas']["name"]<>""){
				//$status['success'] = false;
				
				$id_arsip 	= $this->input->post('id_arsip');
				$new_name 	= $id_arsip.'-'.$_FILES["berkas"]['name'];
				
				$config['upload_path'] 		= './uploads/arsip/lampiran/';
				$config['allowed_types'] 	= '*';
				$config['max_size']  		= '0';
				
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
						$data['berkas'] 		= $dataupload['file_name'];
						$data['update_by']		= $this->session->userdata('id');
						$data['update_date'] 	= date('Y-m-d H:i:s');
						$result 				= $this->arsip_model->lampiran_simpan_data($data);
					}
				}
				
			}else{
				$status['success'] = false;
				$status['messages']['berkas'] = '<p class="text-danger">Silahkan pilih file.</p>';
				
				$panel = $this->uri->segment(3);
				if($panel == "edit"){
					$status['success'] = true;
					$data 					= $_POST;
					unset($data['berkas']);
					$data['update_by']		= $this->session->userdata('id');
					$data['update_date'] 	= date('Y-m-d H:i:s');
					$result 	= $this->arsip_model->lampiran_simpan_data($data);
				}
				
			}
			
		}

		echo json_encode($status);
		
		
		
		
		
		
		/*
		$data 					= $_POST;
		$data['update_date'] 	= date('Y-m-d H:i:s');
		
		if($this->uri->segment(4) == 'tambah'){
			$result 	= $this->arsip_model->lampiran_simpan($data);
		}elseif($this->uri->segment(4) == 'edit'){
			$result 	= $this->arsip_model->lampiran_simpan($data);
		}
		*/
	}
	
	function lampiran_hapus()
	{
		$data['id']			= $this->uri->segment(3);
		$this->load->view('arsip/lampiran_hapus', $data);
	}
	
	
	function lampiran_hapus_yakin()
	{	
		$id 	= $this->input->post('id');
		$query	= $this->arsip_model->lampiran_hapus($id);
	}
	
	function lampiran_edit()
	{
		$id 					= $this->uri->segment(3);
		$query					= $this->arsip_model->ambil_lampiran_by_id($id);
		$data['lampiran']		= $query->row();	
		//var_dump($query	);
		$this->load->view('arsip/lampiran_edit', $data);
	}
	
	
	public function simpanLampiran(){
/*
		$config['upload_path'] 		= './assets/uploads/arsip/lampiran/';
		$config['allowed_types'] 	= '*';
		$config['remove_spaces'] 	= TRUE;
		$config['max_size'] 		= '1024'; //1 MB
		
		
		$this->load->library('upload', $config);
		
		if ( ! $this->upload->do_upload('file')) {
			echo $this->upload->display_errors();
		}else{ 

			$upload_data = $this->upload->data();
					
			$data 					= $_POST;
			$data['file'] 			= $upload_data['file_name'];
			$data['timestamp'] 		= date('Y-m-d H:i:s');
			
			$result = $this->arsip_model->simpanLampiranLah($data);
			
			$msg['success'] = false;
			if($result){
				$msg['success'] = true;
			}
			echo json_encode($msg);
			
		} 
				*/

		$data 					= $_POST;
		$data['file'] 			= $upload_data['file_name'];
		$data['timestamp'] 		= date('Y-m-d H:i:s');
		
		$result = $this->arsip_model->simpanLampiranLah($data);
		
		$msg['success'] = false;
		if($result){
			$msg['success'] = true;
		}
		echo json_encode($msg);
	}
	
	//--------------------------------------------------------------------
	
	//--------------------------- Fungsi Dipsoisi ----------------------
	
	function disposisi_index()
	{
		$id_arsip 		= $this->uri->segment(3);
		$query			= $this->arsip_model->ambil_arsip_by_id($id_arsip);
		$data['arsip']	= $query->row();
		
		$this->load->view('arsip/disposisi_index', $data);
	}
	
	function tampilkan_data_disposisi_by_id_arsip()
	{
		$id_arsip 		= $this->uri->segment(3);
		$data['disposisi']			= $this->arsip_model->ambil_disposisi_by_id_arsip($id_arsip);
		$this->load->view('arsip/disposisi_list', $data);
	}
	
	function disposisi_tambah()
	{
		$data['id_arsip'] 	= $this->uri->segment(3);
		$data['jenis']		= $this->arsip_model->select_jenis_disposisi();
		$this->load->view('arsip/disposisi_tambah', $data);
	}
	
	function disposisi_simpan()
	{
		$status = array('success' => false, 'messages' => array());

		$this->form_validation->set_rules("id_jenis", "Jenis disposisi", "trim|required");
		$this->form_validation->set_rules("id_arsip", "ID arsip", "trim|required");
		$this->form_validation->set_rules("nomor", "Nomor disposisi", "trim|required");
		$this->form_validation->set_rules("tgl", "Tanggal disposisi", "trim|required");
		$this->form_validation->set_rules("catatan", "Catatan Pimpinan", "trim|required");
		//$this->form_validation->set_rules("berkas", "Dari arsip", "trim|required");

		//$this->form_validation->set_rules("berkas", "Berka arsip", "required");
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
				if(isset($_FILES['berkas']["name"]) and $_FILES['berkas']["name"]<>""){
					//$status['messages']['berkas'] = '<p class="text-success">File berhasil diupload</p>';
				}else{
					$status['messages']['berkas'] = '<p class="text-danger">Silahkan pilih files.</p>';
				}
			
		}else{ //validasi benar semua
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}
			
			$status['success'] = true;
			
			if(isset($_FILES['berkas']["name"]) and $_FILES['berkas']["name"]<>""){
				//$status['success'] = false;
				
				$tgl_arsip 	= $this->input->post('tgl');
				$new_name 	= $tgl_arsip.'-'.$_FILES["berkas"]['name'];
				
				$config['upload_path'] 		= './uploads/arsip/disposisi/';
				$config['allowed_types'] 	= '*';
				$config['max_size']  		= '0';
				
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
						
						unset($_POST['berkas_lama']);

						$data 					= $_POST;
						$data['berkas'] 		= $dataupload['file_name'];
						$data['update_by']		= $this->session->userdata('id');
						$data['update_date'] 	= date('Y-m-d H:i:s');
						$result 				= $this->arsip_model->disposisi_simpan_data($data);
					}
				}
				
			}else{
				$status['success'] = false;
				$status['messages']['berkas'] = '<p class="text-danger">Silahkan pilih file.</p>';
				/*
				$panel = $this->uri->segment(3);
				if($panel == "edit"){
					$status['success'] = true;
					$data 					= $_POST;
					unset($data['berkas']);
					$data['update_by']		= $this->session->userdata('id');
					$data['update_date'] 	= date('Y-m-d H:i:s');
					$result 	= $this->arsip_model->disposisi_simpan_data($data);
				}
				*/
			}
			
		}

		echo json_encode($status);
	
		
		//$data 		= $_POST;
		//$result 	= $this->arsip_model->disposisi_simpan_data($data);
	}
	
	function disposisi_internal()
	{
		$data['id_disposisi'] 	= $this->uri->segment(3);
		
		$data['pns']			= $this->arsip_model->ambil_staf_pns();
		$data['non_pns']		= $this->arsip_model->ambil_staf_non_pns();
		$data['aksi_disposisi']	= $this->arsip_model->ambil_disposisi_aksi();
		
		
		$qry = $this->arsip_model->ambil_disposisi_internal_by_id_disposisi($this->uri->segment(3));
		$data['user'] = $this->arsip_model->ambil_disposisi_internal_by_id_disposisi($this->uri->segment(3));
		$data['aksi'] = $this->arsip_model->ambil_disposisi_internal_aksi_by_id_disposisi($this->uri->segment(3));
		$this->load->view('arsip/disposisi_internal_edit', $data);
		/*
		if($qry->num_rows() > 0){
			
			$this->load->view('arsip/disposisi_internal_edit', $data);
		}else{
			
		}
		*/
	}
	
	function disposisi_internal_simpan()
	{
		$data['id_disposisi']		= $this->uri->segment(3);
		$data['id_disposisi_user'] 	= $this->uri->segment(4);
		
		$result = $this->arsip_model->disposisi_internal_simpan_data($data);
		
		
	}
	
	function disposisi_internal_hapus()
	{
		$data['id_disposisi']		= $this->uri->segment(3);
		$data['id_disposisi_user'] 	= $this->uri->segment(4);
		
		$result = $this->arsip_model->disposisi_internal_hapus_data($data);
	}
	
	function disposisi_internal_aksi_simpan()
	{
		$data['id_disposisi']		= $this->uri->segment(3);
		$data['id_disposisi_aksi'] 	= $this->uri->segment(4);
		
		$result = $this->arsip_model->disposisi_internal_aksi_simpan_data($data);
	}
	
	function disposisi_internal_aksi_hapus()
	{
		$data['id_disposisi']		= $this->uri->segment(3);
		$data['id_disposisi_aksi'] 	= $this->uri->segment(4);
		
		$result = $this->arsip_model->disposisi_internal_aksi_hapus_data($data);
	}
	
	function tampilkan_disposisi_form_hapus()
	{
		$data['id'] = $this->uri->segment(3);
		$this->load->view('arsip/disposisi_hapus', $data);
	}
	
	function disposisi_hapus_yakin()
	{
		$id 	= $this->input->post('id');
		$query	= $this->arsip_model->disposisi_hapus_data($id);
	}
	
	function lembar_edaran()
	{
		$this->load->library('dompdf_gen');
		
		$id_arsip = $this->uri->segment(3);
		
		$data['pns']			= $this->arsip_model->ambil_staf_pns();
		$data['non_pns']		= $this->arsip_model->ambil_staf_non_pns();
		$data['aksi_disposisi']	= $this->arsip_model->ambil_disposisi_aksi();
		$query					= $this->arsip_model->ambil_arsip_by_id($id_arsip);
		$data['arsip']			= $query->row();
		
		$this->load->view('arsip/lembar_edaran', $data);
		
        $paper_size  = 'A4'; //paper size
        $orientation = 'potrait'; //tipe format kertas
        $html = $this->output->get_output();
 
        $this->dompdf->set_paper($paper_size, $orientation);
        //Convert to PDF
        $this->dompdf->load_html($html);
        $this->dompdf->render();
        $this->dompdf->stream("laporan.pdf", array('Attachment'=>0));
		
	}

	
	
		
	
	public function send()  
	{  
		$config = Array(  
							'protocol' 	=> 'smtp',  
							'smtp_host' => 'ssl://smtp.googlemail.com',  
							'smtp_port' => 465,  
							'smtp_user' => 'firman.apriantop@gmail.com',   
							'smtp_pass' => 'Gmailok23',   
							'mailtype'	=> 'html',   
							'charset' 	=> 'iso-8859-1'  
						);  
		$this->load->library('email', $config);  
		$this->email->set_newline("\r\n");  
		$this->email->from('firman.apriantop@gmail.com', 'Admin Re:Code');   
		$this->email->to('f.manangin@gmail.com');   
		$this->email->subject('Percobaan email');   
		$this->email->message('Ini adalah email percobaan untuk Tutorial CodeIgniter: Mengirim Email via Gmail SMTP menggunakan Email Library CodeIgniter @ recodeku.blogspot.com');  
		if (!$this->email->send()) {  
			show_error($this->email->print_debugger());   
		}else{  
			echo 'Success to send email';   
		}  
	}
	
	
	function post()
	{
	//	if(isset($_POST['submit']))
        //{
			/*
			$id_jenis	= $this->input->post('id_jenis');
			$id_status	= $this->input->post('id_status');
			$id_tingkat	= $this->input->post('id_tingkat');
			$id_no		= $this->input->post('no');
			$perihal	= $this->input->post('perihal');
			$dari		= $this->input->post('dari');
			$tgl		= $this->input->post('tgl');
			$ringkasan	= $this->input->post('ringkasan');
			$keywords	= $this->input->post('keywords');
			$tgl_terima	= $this->input->post('tgl_terima');
			$update_by	= $this->input->post('update_by');
			*/
		//}
		
		$this->form_validation->set_rules('tgl', 'Tanggal Surat', 'required');
		$this->form_validation->set_rules('tgl_terima', 'Tangal Terima Surat', 'required');

		$this->form_validation->set_message('required', '%s harus diisi');
		
		if ($this->form_validation->run() == FALSE)
		{
			echo validation_errors();
		}else
		{
			if($this->input->post('id_jenis') == '1'){
				$config['upload_path'] = base_url().'/assets/uploads/arsip/masuk/';
			}else{
				$config['upload_path'] = base_url().'/assets/uploads/arsip/keluar/';
			}
			
			$config['upload_path'] 		= './assets/uploads/arsip/keluar/';
			$config['allowed_types'] 	= '*';
			$config['remove_spaces'] 	= TRUE;
			$config['max_size'] 		= '1024'; //1 MB
			
			
			$this->load->library('upload', $config);
			
			if ( ! $this->upload->do_upload('file')) {
				echo $this->upload->display_errors();
			}else{ 
			//	$data = array('upload_data' => $this->upload->data()); 
				$upload_data = $this->upload->data();
				
				$data 					= $_POST;
				$data['file'] 			= $upload_data['file_name'];
				$data['update_date'] 	= date('Y-m-d H:i:s');
				$this->arsip_model->simpan_data($data);
				
			} 
			
			
		}
		
	}
	
	
}
