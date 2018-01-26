<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Data extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->library('parser');
		$this->load->model('data_model');
	}
	
	function instansi()
	{
		if(is_logged_in()) {
			
			
			$this->load->view('templates/header'); 
			$this->load->view('data/instansi/instansi_index');
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function instansi_list()
	{
		if(is_logged_in()) {
			$data['instansi'] 	= $this->data_model->instansi_list();
			$this->load->view('data/instansi/instansi_list', $data);
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function instansi_tambah()
	{
		$this->load->view('data/instansi/instansi_tambah');
	}
	
	function instansi_simpan()
	{
		$status = array('success' => false, 'messages' => array());
		
		//$this->form_validation->set_rules("id", "ID", "trim|required");
		$this->form_validation->set_rules("nama", "Nama Instansi", "trim|required");
		$this->form_validation->set_rules("singkatan", "Singkatan Instansi", "trim|required");
		$this->form_validation->set_rules("aktif", "Status", "trim|required");
		
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}	
		}else{ //validasi benar semua

			
			$data 						= $_POST;
			$data['update_by']			= $this->session->userdata('id');
			$data['update_date']		= date('Y-m-d H:i:s');
			$result 					= $this->data_model->instansi_simpan_data($data);
			$status['success'] 			= true;
			
		}
		echo json_encode($status);
	}
	
	function instansi_edit(){
		$id 					= $this->uri->segment(3);
		$query					= $this->data_model->ambil_tabel_instansi_by_id($id);
		$data['instansi']		= $query->row();
		$this->load->view('data/instansi/instansi_edit', $data);
	}
	
	
	function instansi_hapus()
	{
		$id 					= $this->uri->segment(3);
		$query					= $this->data_model->ambil_tabel_instansi_by_id($id);
		$data['instansi']		= $query->row();	
		
		$this->load->view('data/instansi/instansi_hapus', $data);
	}
	
	function instansi_hapus_data()
	{
		$id 	= $this->input->post('id');
		$query	= $this->data_model->instansi_hapus_data($id);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	function instansi_eselon_satu()
	{
		if(is_logged_in()) {
			
			
			$this->load->view('templates/header'); 
			$this->load->view('data/instansi_eselon_satu/instansi_eselon_satu_index');
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function instansi_eselon_satu_list()
	{
		if(is_logged_in()) {
			$data['instansi_eselon_satu'] 	= $this->data_model->instansi_eselon_satu_list();
			$this->load->view('data/instansi_eselon_satu/instansi_eselon_satu_list', $data);
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function instansi_eselon_satu_tambah()
	{
		$data['instansi'] 		= $this->sbsn_model->pilih_instansi();
		$this->load->view('data/instansi_eselon_satu/instansi_eselon_satu_tambah', $data);
	}
	
	function instansi_eselon_satu_simpan()
	{
		$status = array('success' => false, 'messages' => array());
		
		//$this->form_validation->set_rules("id", "ID", "trim|required");
		$this->form_validation->set_rules("id_instansi", "Instansi", "trim|required");
		$this->form_validation->set_rules("nama", "Nama Unit Kerja Eselon I", "trim|required");
		$this->form_validation->set_rules("ket", "Keterangan", "trim|required");
		
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}	
		}else{ //validasi benar semua

			
			$data 						= $_POST;
			$data['update_by']			= $this->session->userdata('id');
			$data['update_date']		= date('Y-m-d H:i:s');
			$result 					= $this->data_model->instansi_eselon_satu_simpan_data($data);
			$status['success'] 			= true;
			
		}
		echo json_encode($status);
	}
	
	function instansi_eselon_satu_edit(){
		$id 								= $this->uri->segment(3);
		$query								= $this->data_model->ambil_tabel_instansi_eselon_satu_by_id($id);
		$data['instansi_eselon_satu']		= $query->row();
		$data['instansi'] 					= $this->data_model->pilih_instansi();
		$this->load->view('data/instansi_eselon_satu/instansi_eselon_satu_edit', $data);
	}
	
	
	function instansi_eselon_satu_hapus()
	{
		$id 					= $this->uri->segment(3);
		$query					= $this->data_model->ambil_tabel_instansi_eselon_satu_by_id($id);
		$data['instansi_eselon_satu']		= $query->row();	
		
		$this->load->view('data/instansi_eselon_satu/instansi_eselon_satu_hapus', $data);
	}
	
	function instansi_eselon_satu_hapus_data()
	{
		$id 	= $this->input->post('id');
		$query	= $this->data_model->instansi_eselon_satu_hapus_data($id);
	}
	
	
	
	
	
	
	
	
	function donor()
	{
		if(is_logged_in()) {
			
			
			$this->load->view('templates/header'); 
			$this->load->view('data/donor/donor_index');
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function donor_list()
	{

		$this->load->model('data_model');
		if(is_logged_in()) {
			$data['donor'] 	= $this->data_model->donor_list();
			$this->load->view('data/donor/donor_list', $data);
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function donor_tambah()
	{
		$this->load->view('data/donor/donor_tambah');
	}
	
	function donor_simpan()
	{
		$status = array('success' => false, 'messages' => array());
		
		//$this->form_validation->set_rules("id", "ID", "trim|required");
		$this->form_validation->set_rules("tampilkan", "Status", "trim|required");
		$this->form_validation->set_rules("nama", "Nama Donor", "trim|required");
		$this->form_validation->set_rules("keterangan", "Keterangan", "trim|required");
		
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}	
		}else{ //validasi benar semua

			
			$data 						= $_POST;
			$data['update_by']			= $this->session->userdata('id');
			$data['update_date']		= date('Y-m-d H:i:s');
			$result 					= $this->data_model->donor_simpan_data($data);
			$status['success'] 			= true;
			
		}
		echo json_encode($status);
	}
	
	function donor_edit(){
		$id 				= $this->uri->segment(3);
		$query				= $this->data_model->ambil_tabel_donor_by_id($id);
		$data['donor']		= $query->row();
		$this->load->view('data/donor/donor_edit', $data);
	}
	
	
	function donor_hapus()
	{
		$id 					= $this->uri->segment(3);
		$query					= $this->data_model->ambil_tabel_donor_by_id($id);
		$data['donor']		= $query->row();	
		
		$this->load->view('data/donor/donor_hapus', $data);
	}
	
	function donor_hapus_data()
	{
		$id 	= $this->input->post('id');
		$query	= $this->data_model->donor_hapus_data($id);
	}
	
	
	
	
	
	
	
	
	function drkh()
	{
		if(is_logged_in()) {
			
			
			$this->load->view('templates/header'); 
			$this->load->view('data/drkh/drkh_index');
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function drkh_list()
	{
		if(is_logged_in()) {
			$data['drkh'] 	= $this->data_model->drkh_list();
			$this->load->view('data/drkh/drkh_list', $data);
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function drkh_tambah()
	{
		$this->load->view('data/drkh/drkh_tambah');
	}
	
	function drkh_simpan()
	{
		$status = array('success' => false, 'messages' => array());
		
		//$this->form_validation->set_rules("id", "ID", "trim|required");
		
		$this->form_validation->set_rules("nama", "Nama DRKH", "trim|required");
		$this->form_validation->set_rules("keterangan", "Keterangan", "trim|required");
		$this->form_validation->set_rules("aktif", "Status", "trim|required");
		
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}	
		}else{ //validasi benar semua

			
			$data 						= $_POST;
			$data['update_by']			= $this->session->userdata('id');
			$data['update_date']		= date('Y-m-d H:i:s');
			$result 					= $this->data_model->drkh_simpan_data($data);
			$status['success'] 			= true;
			
		}
		echo json_encode($status);
	}
	
	function drkh_edit(){
		$id 				= $this->uri->segment(3);
		$query				= $this->data_model->ambil_tabel_drkh_by_id($id);
		$data['drkh']		= $query->row();
		$this->load->view('data/drkh/drkh_edit', $data);
	}
	
	
	function drkh_hapus()
	{
		$id 				= $this->uri->segment(3);
		$query				= $this->data_model->ambil_tabel_drkh_by_id($id);
		$data['drkh']		= $query->row();	
		
		$this->load->view('data/drkh/drkh_hapus', $data);
	}
	
	function drkh_hapus_data()
	{
		$id 	= $this->input->post('id');
		$query	= $this->data_model->drkh_hapus_data($id);
	}
	
	
	
	
	
	
	
	
	
	
	
	function dpp()
	{
		if(is_logged_in()) {
			
			
			$this->load->view('templates/header'); 
			$this->load->view('data/dpp/dpp_index');
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function dpp_list()
	{
		if(is_logged_in()) {
			$data['dpp'] 	= $this->data_model->dpp_list();
			$this->load->view('data/dpp/dpp_list', $data);
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function dpp_tambah()
	{
		$this->load->view('data/dpp/dpp_tambah');
	}
	
	function dpp_simpan()
	{
		$status = array('success' => false, 'messages' => array());
		
		//$this->form_validation->set_rules("id", "ID", "trim|required");
		
		$this->form_validation->set_rules("nama", "Nama DPP", "trim|required");
		$this->form_validation->set_rules("keterangan", "Keterangan", "trim|required");
		$this->form_validation->set_rules("aktif", "Status", "trim|required");
		
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}	
		}else{ //validasi benar semua

			
			$data 						= $_POST;
			$data['update_by']			= $this->session->userdata('id');
			$data['update_date']		= date('Y-m-d H:i:s');
			$result 					= $this->data_model->dpp_simpan_data($data);
			$status['success'] 			= true;
			
		}
		echo json_encode($status);
	}
	
	function dpp_edit(){
		$id 				= $this->uri->segment(3);
		$query				= $this->data_model->ambil_tabel_dpp_by_id($id);
		$data['dpp']		= $query->row();
		$this->load->view('data/dpp/dpp_edit', $data);
	}
	
	
	function dpp_hapus()
	{
		$id 				= $this->uri->segment(3);
		$query				= $this->data_model->ambil_tabel_dpp_by_id($id);
		$data['dpp']		= $query->row();	
		
		$this->load->view('data/dpp/dpp_hapus', $data);
	}
	
	function dpp_hapus_data()
	{
		$id 	= $this->input->post('id');
		$query	= $this->data_model->dpp_hapus_data($id);
	}
	
	
	
	
	
	
	
	
	
	
	function kat_sbsn()
	{
		if(is_logged_in()) {
			
			
			$this->load->view('templates/header'); 
			$this->load->view('data/kat_sbsn/kat_sbsn_index');
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function kat_sbsn_list()
	{
		if(is_logged_in()) {
			$data['kat_sbsn'] 	= $this->data_model->kat_sbsn_list();
			$this->load->view('data/kat_sbsn/kat_sbsn_list', $data);
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function kat_sbsn_tambah()
	{
		$this->load->view('data/kat_sbsn/kat_sbsn_tambah');
	}
	
	function kat_sbsn_simpan()
	{
		$status = array('success' => false, 'messages' => array());
		
		//$this->form_validation->set_rules("id", "ID", "trim|required");
		
		$this->form_validation->set_rules("nama", "Nama Kategori", "trim|required");
		$this->form_validation->set_rules("keterangan", "Keterangan", "trim|required");
		$this->form_validation->set_rules("aktif", "Status", "trim|required");
		
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');

		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}	
		}else{ //validasi benar semua

			
			$data 						= $_POST;
			$data['update_by']			= $this->session->userdata('id');
			$data['update_date']		= date('Y-m-d H:i:s');
			$result 					= $this->data_model->kat_sbsn_simpan_data($data);
			$status['success'] 			= true;
			
		}
		echo json_encode($status);
	}
	
	function kat_sbsn_edit(){
		$id 				= $this->uri->segment(3);
		$query				= $this->data_model->ambil_tabel_kat_sbsn_by_id($id);
		$data['kat_sbsn']	= $query->row();
		$this->load->view('data/kat_sbsn/kat_sbsn_edit', $data);
	}
	
	
	function kat_sbsn_hapus()
	{
		$id 				= $this->uri->segment(3);
		$query				= $this->data_model->ambil_tabel_kat_sbsn_by_id($id);
		$data['kat_sbsn']		= $query->row();	
		
		$this->load->view('data/kat_sbsn/kat_sbsn_hapus', $data);
	}
	
	function kat_sbsn_hapus_data()
	{
		$id 	= $this->input->post('id');
		$query	= $this->data_model->kat_sbsn_hapus_data($id);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	function user()
	{
		if(is_logged_in()) {
			
			
			$this->load->view('templates/header'); 
			$this->load->view('data/user/user_index');
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function user_list()
	{
		if(is_logged_in()) {
			$data['user'] 	= $this->data_model->user_list();
			$this->load->view('data/user/user_list', $data);
		}else{
			$this->load->view('templates/login');
		}
	}
	
	function user_tambah()
	{
		$data['level'] 	= $this->data_model->pilih_user_level();
		$this->load->view('data/user/user_tambah', $data);
	}
	
	function user_simpan()
	{
		$status = array('success' => false, 'messages' => array());
		
		//$this->form_validation->set_rules("id", "ID", "trim|required");
		
		$this->form_validation->set_rules("id_user_level", "Level User", "trim|required");
		$this->form_validation->set_rules("email", "Email", "trim|required|valid_email");
		$this->form_validation->set_rules("password", "Password", "trim|required|matches[password_conf]");
		$this->form_validation->set_rules("password_conf", "Konfirmasi Password", "trim|required|matches[password]");
		$this->form_validation->set_rules("nama_depan", "Nama Depan", "trim|required");
		$this->form_validation->set_rules("nama_belakang", "Nama Belakang", "trim|required");
		$this->form_validation->set_rules("nama_panggilan", "Nama Panggilan", "trim|required");
		$this->form_validation->set_rules("tgl_lahir", "Tanggal Lahir", "trim|required");
		$this->form_validation->set_rules("no_hp", "No. Handphone", "trim|required|numeric");
		$this->form_validation->set_rules("aktif", "status", "trim|required");
		
		$this->form_validation->set_message('required', '%s harus diisi');
		$this->form_validation->set_message('is_natural_no_zero', '%s harus diisi dengan angka dan lebih dari 0');

		$this->form_validation->set_error_delimiters('<p class="text-danger">', '</p>');
		
		
		$panel = $this->uri->segment(3);
		
		if ($this->form_validation->run() == FALSE) {
			foreach ($_POST as $key => $value) {
				$status['messages'][$key] = form_error($key);
			}	
			
			if(isset($_FILES['foto']["name"]) and $_FILES['foto']["name"]<>""){
					//$status['messages']['berkas'] = '<p class="text-success">File berhasil diupload</p>';
			}else{
				$status['messages']['foto'] = '<p class="text-danger">Silahkan pilih file.</p>';
			}
		}else{ //validasi benar semua
			
			//cek email apakah sudah ada atau belum
			$email = $this->input->post('email');
			$query = $this->data_model->cek_email($email);
			if($query->num_rows()>0 && $panel=="tambah")
			{
				$status['success'] 				= false;
				$status['messages']['email'] 	= '<p class="text-danger">Email sudah terdaftar.</p>';
			}else{
			
				if(isset($_FILES['foto']["name"]) and $_FILES['foto']["name"]<>""){
					
					$id 		= $this->input->post('id');
					$new_name 	= $id.'-'.$_FILES["foto"]['name'];
					

					$config['allowed_types']    = 'gif|jpg|png';
					$config['upload_path'] 		= './uploads/user/';
					$config['max_size']  		= '100';
					$config['max_width']        = '200';
					$config['max_height']       = '200';
					$config['remove_space'] 	= TRUE;
					
					$config['file_name'] 		= $new_name;
					
					$this->load->library('upload', $config);
					
					
					if ( ! $this->upload->do_upload('foto')){
						
						$error = $this->upload->display_errors();
						$status['success'] = false;
						$status['messages']['foto'] = '<p class="text-danger">'.$error.'</p>';
						
					}else{
					
						$dataupload = $this->upload->data();
						$msg = $dataupload['file_name']." berhasil diupload";

						$status['messages']['foto'] = '<p class="text-danger">'.$msg.'</p>';
						$status['success'] = true;

						$data 					= $_POST;
						$data['password']		= md5($this->input->post('password'));
						$data['update_by']		= $this->session->userdata('id');
						$data['update_date']	= date('Y-m-d H:i:s');
						$result 				= $this->data_model->user_simpan_data($data);
						
						$status['success'] 			= true;
					}
					
				}else{
					$status['success'] = false;
					$status['messages']['foto'] = '<p class="text-danger">Silahkan pilih file.</p>';
					
					
					if($panel == "edit"){
						
						$data 					= $_POST;
						unset($data['foto']);
						$data['password']		= md5($this->input->post('password'));
						$data['update_by']		= $this->session->userdata('id');
						$data['update_date'] 	= date('Y-m-d H:i:s');
						$result 				= $this->data_model->user_simpan_data($data);
						
						$status['success'] 		= true;
					}
				}
			
			}
		}
		echo json_encode($status);
	}
	
	function user_edit(){
		$id 				= $this->uri->segment(3);
		$query				= $this->data_model->ambil_tabel_user_by_id($id);
		$data['user']		= $query->row();
		$data['level'] 		= $this->data_model->pilih_user_level();
		$this->load->view('data/user/user_edit', $data);
	}
	
	
	function user_hapus()
	{
		$id 				= $this->uri->segment(3);
		$query				= $this->data_model->ambil_tabel_user_by_id($id);
		$data['user']	= $query->row();	
		
		$this->load->view('data/user/user_hapus', $data);
	}
	
	function user_hapus_data()
	{
		$id 	= $this->input->post('id');
		$query	= $this->data_model->user_hapus_data($id);
	}
	
	
	
		
	
	
	
	
	
	
	
	
	
	
}