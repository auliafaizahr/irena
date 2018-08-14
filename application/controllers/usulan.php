<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Usulan extends CI_Controller {


	function __construct()
	{
		parent::__construct();
		$this->load->library('parser');
		$this->load->model('Usulan_model');
		$this->load->helper(array('form', 'url'));
		date_default_timezone_set('Asia/Jakarta');
	}
	

	public function index()
	{
			$this->load->view('templates/header'); 
			//$this->load->view('PLN/usulan');
			$this->load->view('templates/footer'); 
	}

	function tampilkan_form_log_usulan_edit()
	{	
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$id 							= $this->uri->segment(3);
		$query							= $this->Usulan_model->ambil_data_log_usulan_by_id($id);
		$data['log_usulan']				= $query->row();
		$data['id_log_kategori']		= $this->hibah_model->pilih_log_kategori();
		$this->load->view('pln/log_usulan_edit', $data);
	}

	

	public function tampil_index()
	{
		if(is_logged_in()) {
			$this->load->view('templates/header'); 
			$this->load->view('pln/usulan_index');
			$this->load->view('templates/footer'); 
			
		}else{
			$this->load->view('templates/login');
		}
	}


	public function tampilkan_usulan_list()
	{
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
			$data['instansi'] = array();

			
			$data['data']= $this->Usulan_model->ambil_proyek_usulan();
			
			$data['lembaga']= $this->Usulan_model->ambil_instansi();
			$data['program']= $this->Usulan_model->ambil_program();
			$data['arsip'] = $this->Usulan_model->ambil_arsip();

			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('Usulan/usulan_list', $data);
	}

	public function riwayat_usulan()
	{
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$id = $this->uri->segment(3);

			$data['instansi'] = array();

			
			$data['data']= $this->Usulan_model->ambil_proyek_usulan();
			$data['riwayat']= $this->Usulan_model->detail_proyek_2($id);
			
			$data['lembaga']= $this->Usulan_model->ambil_instansi();
			$data['program']= $this->Usulan_model->ambil_program();
			$data['arsip'] = $this->Usulan_model->ambil_arsip();

			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('Usulan/riwayat_usulan', $data);
	}


	

	public function tampilkan_tes()
	{
		
		$this->load->view('Peta/tes');
	}

	public function tampilkan_dashboard_modal_map()
	{
		$data['id_lokasi'] = $this->uri->segment(3);
		$this->load->view('report/modal_map/dashboard_map', $data);
	}

	public function hitung_total_proyek_prov()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('sbsn_model');
		$this->load->model('Usulan_model');

		//$id = $this->input->post('id');
		$id= $this->uri->segment(3);


		

		$data['total_kegiatan']= $this->Usulan_model->hitung_total_proyek_prov($id);
		$data['total_nilai']= $this->Usulan_model->hitung_total_nilai_proyek_prov($id);


		
		
    
		$this->load->view('report/modal_map/total_kegiatan_phln', $data);
	}
	

	
	
	public function tampil_usulan()
	{	

		
		if(is_logged_in()) {
				$this->load->model('Usulan_model');
			$data['instansi'] = array();

			
			$data['data']= $this->Usulan_model->ambil_proyek_usulan();
			
			$data['lembaga']= $this->Usulan_model->ambil_instansi();
			$data['program']= $this->Usulan_model->ambil_program();
			$data['arsip'] = $this->Usulan_model->ambil_arsip();

			
			$this->load->view('templates/header'); 
			$this->load->view('PLN/usulan', $data);
			$this->load->view('templates/footer'); 
				
		}else{
			$this->load->view('templates/login');
		}
		
	}

	public function tambah_arsip_surat()
	{
		$this->load->model('Usulan_model');
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['jenis_arsip']= $this->Usulan_model->jenis_arsip();

		$this->load->view('Usulan/log_arsip_tambah', $data);
    	//$this->load->view('templates/footer1');
	}

	public function tambah_dokumen()
	{
		$this->load->model('Usulan_model');
		$this->load->model('dk_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->Usulan_model->detail_proyek($a);

		$this->load->view('Usulan/log_dokumen_tambah', $data);
    	//$this->load->view('templates/footer1');
	}

	public function yakin_bb()
	{
		$this->load->view('Usulan/yakin_bb');
    	//$this->load->view('templates/footer1');
	}

	public function filter_kl_bluebook()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$data['id'] = $this->uri->segment(3);
		$data['detail'] = $this->Bluebook_model->ambil_grafik_kl_per_bb($data['id'] );

		

    	 //echo json_encode($data);
    	 //$data2 = json_encode($data);
    	 $this->load->view('report/bluebook/report_bb_kl', $data);
	}

	function detail_expand_usulan()
	{
		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		
		$id = $this->uri->segment(3);
		$data['isi'] = $this->Usulan_model->all_banding($id);

		echo json_encode($data);
		//var_dump($data);
	}

	function dok_usulan_simpan()
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
						$result 				= $this->Usulan_model->tambah_dok_usulan($data);
					}
				}
				
			}else{
				
				if($panel == "edit"){
					
					$status['success'] = true;
					$data 					= $_POST;
					unset($data['berkas']);
					unset($data['berkas_lama']);
					$data['id']		= $this->input->post('id');

					$data['update_by']		= $this->session->userdata('id');
					$data['update_date'] 	= date('Y-m-d H:i:s');
					$result 	= $this->Usulan_model->tambah_dok_usulan($data);
					
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

	public function filter_kl_isi_bluebook()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		foreach ($this->Bluebook_model->ambil_grafik_kl_per_bb($a) as $row) {
			$data[] = array(
				'name' => $row['nama'],
				'y' => $row['total']
				);
		}

    	 echo json_encode($data);
    	 //$data2 = json_encode($data);
    	
	}


	public function filter_lender_bluebook()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$data['id'] = $this->uri->segment(3);
	
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		$data['detail'] = $this->Bluebook_model->ambil_grafik_lender_per_bb($data['id']);
		
    	 //echo json_encode($data);
    	 $this->load->view('report/bluebook/report_bb_lender', $data);
	}

		public function filter_lender_isi_bluebook()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		
		foreach ($this->Bluebook_model->ambil_grafik_lender_per_bb($a) as $row) {
			$data[] = array(
				'name' => $row['lender'],
				'y' => $row['total'],
				'id' => $row['id_lender']
				);
		}
    	 echo json_encode($data);
    	 
	}

	public function filter_lender_isi_bluebook_program()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		$b = $this->uri->segment(4);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		
		foreach ($this->Bluebook_model->ambil_grafik_lender_per_bb_program($a) as $row) {
			$data[] = array(
				'name' => $row['lender'],
				'y' => $row['total'],
				
				);
		}
    	 echo json_encode($data);
    	 
	}


	public function filter_program_bluebook()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		$data['id'] = $this->uri->segment(3);
		
		$data['detail'] = $this->Bluebook_model->ambil_grafik_program_per_bb($data['id']);
		

    	 //echo json_encode($data);
    	 $this->load->view('report/bluebook/report_bb_program', $data);

	}

	public function filter_program_isi_bluebook()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		
		foreach ($this->Bluebook_model->ambil_grafik_program_per_bb($a) as $row) {
			$data[] = array(
				'name' => $row['program'],
				'y' => $row['total']
				);
		}
    	 echo json_encode($data);
	}

	public function filter_program_isi_prov()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		
		foreach ($this->Bluebook_model->ambil_grafik_program_untuk_prov($a) as $row) {
			$data[] = array(
				'name' => $row['program'],
				'y' => $row['total']
				);
		}
    	 echo json_encode($data);
	}



	public function filter_sektor_bluebook()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);
		$data['id'] = $this->uri->segment(3);

		$data['detail'] = $this->Bluebook_model->ambil_grafik_sektor_per_bb($data['id']);
		
		$this->load->view('report/bluebook/report_bb_sektor', $data);
	}

	public function filter_sektor_isi_bluebook()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		
		foreach ($this->Bluebook_model->ambil_grafik_sektor_per_bb($a) as $row) {
			$data[] = array(
				'name' => $row['sektor'],
				'y' => $row['total']
				);
		}
    	 echo json_encode($data);
	}


	public function filter_infra_bluebook()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);
		$data['id'] = $this->uri->segment(3);

		$data['detail'] = $this->Bluebook_model->ambil_grafik_infra_per_bb($data['id']);

		
		$this->load->view('report/bluebook/report_bb_infra', $data);
		
	}

	public function filter_phln_prov()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);
		$data['id'] = $this->uri->segment(3);
		$data['id_lokasi'] = $this->uri->segment(3);

		$data['detail'] = $this->Bluebook_model->ambil_grafik_program_untuk_prov($data['id']);

		
		$this->load->view('report/modal_map/program_phln_grafik', $data);
		
	}

	public function filter_infra_isi_bluebook()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		
		foreach ($this->Bluebook_model->ambil_grafik_infra_per_bb($a) as $row) {
			$data[] = array(
				'name' => $row['nama'],
				'y' => $row['total']
				);
		}
			

    	 echo json_encode($data);
	}

	public function filter_statusumum_bluebook()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		$data['id'] = $this->uri->segment(3);
		if ($data['id'] == '0' || $data['id'] == NULL || $data['id'] == 'undefined') {
			$data['id'] = 2;
		}
		
		$data['detail'] = $this->Bluebook_model->ambil_grafik_status_per_bb($data['id']);
		
		
		$this->load->view('report/bluebook/report_bb_status', $data);
	}


	public function filter_statusumum_bluebook_dashboard()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		$data['id'] = $this->uri->segment(3);
		if ($data['id'] == '0' || $data['id'] == NULL || $data['id'] == 'undefined') {
			$data['id'] = 2;
		}
		
		$data['detail'] = $this->Bluebook_model->ambil_grafik_status_per_bb($data['id']);
		
		
		$this->load->view('report/dashboard/bb_status', $data);
	}


	public function filter_statusumum_isi_bluebook()
	{

		$this->load->model('Usulan_model');
	
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
	
		$a = $this->input->post('id');

		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);


		if ($a == '0' || $a == NULL || $a == 'undefined' || $a == '') {
			$a = 2;
		}
		
		
		foreach ($this->Bluebook_model->ambil_grafik_status_per_bb($a) as $row) {
			$data[] = array(
				'name' => $row['nama'],
				'y' => $row['total']
				);
		}
    	 echo json_encode($data);
	}

	public function detil()
	{

		$this->load->model('Usulan_model');
		$this->load->model('dk_model');
		$this->load->model('Greenbook_model');
		$this->load->model('Bluebook_model');
		$a = $this->input->post('id');
		$data['a'] = $this->input->post('id');
		$data['detail'] = $this->Usulan_model->detail_proyek($a);

		
		
		$this->load->view('Usulan/isi_detail_usulan', $data);
		//$this->load->view('templates/footer1');
		
	}

		public function detil_isi()
	{

		$this->load->model('Usulan_model');
		$this->load->model('dk_model');
		$this->load->model('Greenbook_model');
		$this->load->model('Bluebook_model');
		//$a = $this->input->post('id');
		$a = $this->uri->segment(3);
		$data['detail'] = $this->Usulan_model->detail_proyek($a);

		
		
		$this->load->view('Usulan/isi_detail_usulan', $data);
		//$this->load->view('templates/footer1');
		
	}

		public function kronologis()
	{

		$this->load->model('Usulan_model');
		$this->load->model('dk_model');
		$this->load->model('Greenbook_model');
		$this->load->model('Bluebook_model');
		//$a = $this->input->post('id');
		$a = $this->uri->segment(3);
		$data['detail'] = $this->Usulan_model->detail_proyek($a);

		
		
		$this->load->view('Usulan/kronologis_list');
		//$this->load->view('templates/footer1');
		
	}

	
	public function edit() {

		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('Bluebook_model');
		$a = $this->input->post('id');
		
		$data['detail'] = $this->Usulan_model->detail_proyek($a);
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['program']= $this->Usulan_model->ambil_program();
		$data['lokasi'] = $this->Usulan_model->ambil_lokasi();
		$data['sektor'] = $this->Greenbook_model->ambil_sektor();
		$data['status'] = $this->Bluebook_model->ambil_statusumum();
		$data['infra'] = $this->Usulan_model->ambil_infra();
		$data['usulan']= $this->Usulan_model->ambil_usulan();
		$data['provinsi']= $this->Greenbook_model->ambil_provinsi();
		$data['kabkota']= $this->Greenbook_model->ambil_kabkota();

		
		
		

       $this->load->view('Usulan/edit_usulan', $data);
       // /$this->load->view('templates/footer1');

     
    }

    public function ambil_poin_kabkota() {

		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('Bluebook_model');
		$a = $this->input->post('id');
		
		
		$data['kabkota']= $this->Greenbook_model->ambil_kabkota();

		
		
		
		return $data;
       
       // /$this->load->view('templates/footer1');

     
    }


    public function hapus() {

		$this->load->model('Usulan_model');
		$a = $this->input->post('id');
		
		$data['detail'] = $this->Usulan_model->detail_proyek($a);
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['program']= $this->Usulan_model->ambil_program();
		

       $this->load->view('Usulan/hapus_usulan', $data);
       // /$this->load->view('templates/footer1');

     
    }

    public function hapus_dokumen_pendukung()
    {
    	
		$this->load->model('Usulan_model');
		$a = $this->input->post('id');
		
		$data['detail'] = $this->Usulan_model->detail_proyek($a);
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['program']= $this->Usulan_model->ambil_program();
		

       $this->load->view('Usulan/hapus_usulan', $data);
    }

    public function fix_usulan_hapus()
    {
    	$this->load->model('Usulan_model');
		$a = $this->input->post('id');

		$this->Usulan_model->hapus_usulan_fix($a);
		$this->Usulan_model->hapus_dari_usulkan_bb($a);
		$this->Usulan_model->hapus_dari_layak($a);
		$this->Usulan_model->hapus_dari_adm($a);
		$this->Usulan_model->hapus_dari_dok($a);
		//$this->Usulan_model->hapus_dari_log($a);
		$this->Usulan_model->hapus_dari_lokasi($a);
		
    }

    public function tambah_usulan()
	{
		$this->load->model('Greenbook_model');
		 $this->load->model('Usulan_model');
		 $this->load->model('Bluebook_model');

		$data['data']= $this->Usulan_model->ambil_proyek_usulan();
		
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['program']= $this->Usulan_model->ambil_program();
		$data['arsip'] = $this->Usulan_model->ambil_arsip();
		$data['lokasi'] = $this->Usulan_model->ambil_lokasi();
		
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['usulan']= $this->Usulan_model->ambil_usulan();
		$data['status_lembaga']= $this->Bluebook_model->semua_status_lembaga();
		$data['status_lender']= $this->Bluebook_model->semua_status_lender();
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['greenbook']= $this->Greenbook_model->ambil_greenbook();
		$data['provinsi']= $this->Greenbook_model->ambil_provinsi();
		$data['kabkota']= $this->Greenbook_model->ambil_kabkota();
		$data['sektor']= $this->Greenbook_model->ambil_sektor();
		
		$data['lender']= $this->Bluebook_model->semua_lender();
	


		$this->load->view('Usulan/tambah_manual', $data);
	}

	public function detail_map()
	{
		$this->load->model('Greenbook_model');
		 $this->load->model('Usulan_model');
		 $this->load->model('Bluebook_model');
		$id_lokasi = $this->input->post('id');
		$data['data']= $this->Usulan_model->ambil_proyek_usulan();
		
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



    public function tambah_baru_dokumen()
	{	
		$this->load->model('Usulan_model');
		
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
				$nama 		= $this->input->post('nama');
				$new_name 	= $id_proyek.'-'.$_FILES["berkas"]['name'];

				//$nama 		= "saya";
				
				$config['allowed_types'] 	= '*';
				$config['max_size']  		= '0';
				$config['upload_path'] 		= './uploads/PLN/';
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
						
						//$id = $this->input->post('id');
						
						//unset($data['berkas_lama']);
						$data['berkas'] 		= $dataupload['file_name'];
						$data['update_by']		= $this->session->userdata('id');
						$data['update_date'] 	= date('Y-m-d H:i:s');
						$data['id_proyek'] 	=  $this->input->post('id_proyek');
						$data['nama'] 	= $nama;
						$data['ket'] = $this->input->post('ket');
						$data['kat'] = $this->input->post('kat');

						
						
						$result 				= $this->Usulan_model->tambah_dok_usulan($data);

						$data 					= $_POST;
						$status['success'] = true;
					}
				}
				
			}else{
				//$status['success'] = false;
				//$status['messages']['berkas'] = '<p class="text-danger">Silahkan pilih file.</p>';
				
				
				
				if($panel == "edit"){
					$data 					= $_POST;
					date_default_timezone_set('Asia/Jakarta');
					unset($data['berkas']);
					unset($data['berkas_lama']);
					$data['id'] 					= $this->input->post('id');

					$data['update_by']		= $this->session->userdata('id');
					$data['update_date'] 	= date('Y-m-d H:i:s');
					$result 	= $this->Usulan_model->tambah_dok_usulan($data);
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

	public function report_pln()
	{
		$this->load->model('Bluebook_model');

		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['program']= $this->Bluebook_model->ambil_program();
		$data['instansi']= $this->Bluebook_model->ambil_instansi();
		$data['lender']= $this->Bluebook_model->semua_lender();
		$data['sektor']= $this->Bluebook_model->ambil_sektor();
		$data['status']= $this->Bluebook_model->ambil_statusumum();
		
    	$this->load->view('templates/header'); 
		$this->load->view('pln/report_pln', $data);
		$this->load->view('templates/footer'); 
	}


		//map untuk yang di dashboard
		public function dashboard_pln()
	{
		$this->load->model('Bluebook_model');

		$id = $this->input->post('id');
		$id = $this->uri->segment(3);


		if ($id == '0' || $id == NULL) {
			$id = 2;
		}

		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['program']= $this->Bluebook_model->ambil_program();
		$data['instansi']= $this->Bluebook_model->ambil_instansi();
		$data['lender']= $this->Bluebook_model->semua_lender();
		$data['sektor']= $this->Bluebook_model->ambil_sektor();
		$data['status']= $this->Bluebook_model->ambil_statusumum();
		$data['total_kegiatan']= $this->Bluebook_model->total_kegiatan_bb($id);
		$data['total_sudah_LA']= $this->Bluebook_model->total_kegiatan_la($id);
		$data['total_nilai']= $this->Bluebook_model->total_nilai_bb($id);
		$data['total_nilai_LA']= $this->Bluebook_model->total_nilai_la($id);
		$data['nama_bb']= $this->Bluebook_model->kode_bluebook($id)->nama;

		$this->load->model('Bluebook_model');

		$this->load->library('googlemaps');

			
			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta_2';
			$config['fullscreenControl'] = 'true';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			//$marker['fullscreenControl'] = 'TRUE';
			$this->googlemaps->initialize($config);

			/*$query1 = "SELECT id_provinsi FROM irena_usulan_lokasi";
			$b = $this->db->query($query1);*/

			/*SELECT irena_view_bb_lokasi.id_proyek AS id_bb_proyek, irena_view_dk_lokasi.id_proyek AS id_dk_proyek FROM irena_view_bb_lokasi, irena_view_dk_lokasi WHERE irena_view_bb_lokasi.id_lokasi IN (SELECT irena_view_dk_lokasi.id_lokasi FROM irena_view_dk_lokasi)*/

			$query = "SELECT * FROM irena_view_la_lokasi GROUP BY id_lokasi";
			//$query2 = "SELECT * FROM irena_view_bb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			//$b = $this->db->query($query2)->result();

			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_kuning.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				$id_lokasi = $baris->id_lokasi;
				$marker['onclick'] = 'bukaDetailgabung_1('.$baris->id_lokasi.')';

				//tambah disini poin untuk polyline
				//$marker['onclick'] = '$("#myModal2'.$baris->id_kabkota.'").modal("show")';
				//$marker['onclick'] = 'alert("tes")';
				$this->googlemaps->add_marker($marker);
			}
			$data['peta_2'] = $this->googlemaps->create_map();	


		
		
    	$this->load->view('templates/header'); 
		$this->load->view('report/dashboard/dashboard_pln', $data);
		$this->load->view('templates/footer'); 
	}

	public function dashboard_total_kegiatan_bb()
	{
		$this->load->model('Bluebook_model');

		//$id = $this->input->post('id');
		$id= $this->uri->segment(3);


		if ($id == '0' || $id == NULL) {
			$id = 2;
		}

		$data['total_kegiatan']= $this->Bluebook_model->total_kegiatan_bb($id);
		$data['total_nilai']= $this->Bluebook_model->total_nilai_bb($id);


		
		
    
		$this->load->view('report/dashboard/total_kegiatan_BB', $data);
		
	}

	public function dashboard_total_kegiatan_la()
	{
		$this->load->model('Bluebook_model');

		//$id = $this->input->post('id');
		$id = $this->uri->segment(3);
		
		if ($id == '0' || $id == NULL) {
			$id = 2;
		}

		$data['total_kegiatan']= $this->Bluebook_model->total_kegiatan_bb($id);
		$data['total_nilai']= $this->Bluebook_model->total_nilai_bb($id);
		$data['total_sudah_LA']= $this->Bluebook_model->total_kegiatan_la($id);
		$data['total_nilai_LA']= $this->Bluebook_model->total_nilai_la($id);
		
		
    
		$this->load->view('report/dashboard/total_kegiatan_LA', $data);
		
	}




		public function map_phln()
	{
		$this->load->model('Bluebook_model');

		$this->load->library('googlemaps');

			
			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta_2';
			$config['fullscreenControl'] = 'true';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			//$marker['fullscreenControl'] = 'TRUE';
			$this->googlemaps->initialize($config);

			/*$query1 = "SELECT id_provinsi FROM irena_usulan_lokasi";
			$b = $this->db->query($query1);*/

			/*SELECT irena_view_bb_lokasi.id_proyek AS id_bb_proyek, irena_view_dk_lokasi.id_proyek AS id_dk_proyek FROM irena_view_bb_lokasi, irena_view_dk_lokasi WHERE irena_view_bb_lokasi.id_lokasi IN (SELECT irena_view_dk_lokasi.id_lokasi FROM irena_view_dk_lokasi)*/

			$query = "SELECT * FROM irena_view_pln_gabung_lokasi GROUP BY id_lokasi";
			//$query2 = "SELECT * FROM irena_view_bb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			//$b = $this->db->query($query2)->result();

			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_kuning.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				$id_lokasi = $baris->id_lokasi;
				$marker['onclick'] = 'bukaDetailBB('.$baris->id_lokasi.')';
				//$marker['onclick'] = '$("#myModal2'.$baris->id_kabkota.'").modal("show")';
				//$marker['onclick'] = 'alert("tes")';
				$this->googlemaps->add_marker($marker);
			}
			$data['peta_2'] = $this->googlemaps->create_map();	


			/*$query = "SELECT * FROM irena_view_bb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_biru.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;

				$marker['position'] = $baris->latitude.','.$baris->longitude;
					
				$marker['onclick'] = 'bukaDetailBB('.$baris->id_lokasi.')';
				$this->googlemaps->add_marker($marker);
			}*/


			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			$this->googlemaps->initialize($config);


			$query = "SELECT * FROM irena_view_gb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_hijau.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				//$marker['onclick'] = '$("#myModal2'.$baris->id_proyek.'").modal("show")';
				//$marker['onclick'] = 'bukaDetail('.$baris->id_lokasi.')';
				$this->googlemaps->add_marker($marker);
			}
			
			$data['peta'] = $this->googlemaps->create_map();	



		
    	$this->load->view('templates/header'); 
		$this->load->view('Peta/map_phln', $data);
		$this->load->view('templates/footer'); 
	}

	public function map_la()
	{
		$this->load->model('Bluebook_model');

		$this->load->library('googlemaps');

			
			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta_2';
			$config['fullscreenControl'] = 'true';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			//$marker['fullscreenControl'] = 'TRUE';
			$this->googlemaps->initialize($config);

			/*$query1 = "SELECT id_provinsi FROM irena_usulan_lokasi";
			$b = $this->db->query($query1);*/

			/*SELECT irena_view_bb_lokasi.id_proyek AS id_bb_proyek, irena_view_dk_lokasi.id_proyek AS id_dk_proyek FROM irena_view_bb_lokasi, irena_view_dk_lokasi WHERE irena_view_bb_lokasi.id_lokasi IN (SELECT irena_view_dk_lokasi.id_lokasi FROM irena_view_dk_lokasi)*/

			$query = "SELECT * FROM irena_view_la_lokasi GROUP BY id_lokasi";
			//$query2 = "SELECT * FROM irena_view_bb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			//$b = $this->db->query($query2)->result();

			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_kuning.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				$id_lokasi = $baris->id_lokasi;
				$marker['onclick'] = 'bukaDetailBB('.$baris->id_lokasi.')';
				//$marker['onclick'] = '$("#myModal2'.$baris->id_kabkota.'").modal("show")';
				//$marker['onclick'] = 'alert("tes")';
				$this->googlemaps->add_marker($marker);
			}
			$data['peta_2'] = $this->googlemaps->create_map();	


			
			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			$this->googlemaps->initialize($config);


			$query = "SELECT * FROM irena_view_la_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_hijau.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				//$marker['onclick'] = '$("#myModal2'.$baris->id_proyek.'").modal("show")';
				//$marker['onclick'] = 'bukaDetail('.$baris->id_lokasi.')';
				$this->googlemaps->add_marker($marker);
			}
			
			$data['peta'] = $this->googlemaps->create_map();	

		
    	$this->load->view('templates/header'); 
		$this->load->view('Peta/map_la', $data);
		$this->load->view('templates/footer'); 
	}

	public function map_la_dashboard()
	{
		$this->load->library('googlemaps');

		$this->load->model('Bluebook_model');


			
			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta_2';
			$config['fullscreenControl'] = 'true';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			//$marker['fullscreenControl'] = 'TRUE';
			$this->googlemaps->initialize($config);

			/*$query1 = "SELECT id_provinsi FROM irena_usulan_lokasi";
			$b = $this->db->query($query1);*/

			/*SELECT irena_view_bb_lokasi.id_proyek AS id_bb_proyek, irena_view_dk_lokasi.id_proyek AS id_dk_proyek FROM irena_view_bb_lokasi, irena_view_dk_lokasi WHERE irena_view_bb_lokasi.id_lokasi IN (SELECT irena_view_dk_lokasi.id_lokasi FROM irena_view_dk_lokasi)*/

			$query = "SELECT * FROM irena_view_la_lokasi GROUP BY id_lokasi";
			//$query2 = "SELECT * FROM irena_view_bb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			//$b = $this->db->query($query2)->result();

			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_kuning.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				$id_lokasi = $baris->id_lokasi;
				$marker['onclick'] = 'bukaDetailBB('.$baris->id_lokasi.')';
				//$marker['onclick'] = '$("#myModal2'.$baris->id_kabkota.'").modal("show")';
				//$marker['onclick'] = 'alert("tes")';
				$this->googlemaps->add_marker($marker);
			}
			$data['peta_2'] = $this->googlemaps->create_map();	


			
			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			$this->googlemaps->initialize($config);


			$query = "SELECT * FROM irena_view_la_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_hijau.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				//$marker['onclick'] = '$("#myModal2'.$baris->id_proyek.'").modal("show")';
				//$marker['onclick'] = 'bukaDetail('.$baris->id_lokasi.')';
				$this->googlemaps->add_marker($marker);
			}

			
			$data['peta'] = $this->googlemaps->create_map();	

		
    	
		$this->load->view('Report/dashboard/isi_map_dashboard', $data);
		
	
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
		$data['data']= $this->Usulan_model->ambil_proyek_berdasarkan_lokasi($id_lokasi);

		
		//$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('Peta/bb_proyek_list', $data);
	}

	public function tampilkan_proyek_lokasi_tes()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('dk_model');
		$data['instansi'] = array();
		$data['id_lokasi'] = $this->uri->segment(3);
		$id_lokasi = $this->uri->segment(3);
		//$id_lokasi = '339';
		$data['data']= $this->Usulan_model->ambil_proyek_berdasarkan_lokasi($id_lokasi);

		
		//$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('Peta/usulan_proyek_list', $data);
	}

	public function tampilkan_proyek_prov_tes()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('dk_model');
		$data['instansi'] = array();
		$data['id_lokasi'] = $this->uri->segment(3);
		$id_lokasi = $this->uri->segment(3);
		//$id_lokasi = '339';
		$data['data']= $this->Usulan_model->ambil_proyek_berdasarkan_prov($id_lokasi);

		
		//$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		
		$this->load->view('Peta/la_proyek_list_provinsi', $data);
	}

	public function tampilkan_proyek_lokasi_tes_1()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('dk_model');
		$data['instansi'] = array();
		$data['id_lokasi'] = $this->uri->segment(3);
		$id_lokasi = $this->uri->segment(3);
		//$id_lokasi = '339';
		//$data['data']= $this->Usulan_model->ambil_proyek_berdasarkan_lokasi($id_lokasi);
		$data['data']= $this->Usulan_model->ambil_proyek_berdasarkan_prov($id_lokasi);

		
		//$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		
		$this->load->view('report/modal_map/dashboard_phln_modal_map', $data);
	}





		public function map_bb()
	{
		$this->load->model('Bluebook_model');

		$this->load->library('googlemaps');

			
			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta_2';
			$config['fullscreenControl'] = 'true';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			//$marker['fullscreenControl'] = 'TRUE';
			$this->googlemaps->initialize($config);

			$query = "SELECT * FROM irena_view_bb_lokasi GROUP BY id_lokasi";
			//$query2 = "SELECT * FROM irena_view_bb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			//$b = $this->db->query($query2)->result();

			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_biru.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				$id_lokasi = $baris->id_lokasi;
				$marker['onclick'] = 'bukaDetailBB('.$baris->id_lokasi.')';
				//$marker['onclick'] = '$("#myModal2'.$baris->id_kabkota.'").modal("show")';
				//$marker['onclick'] = 'alert("tes")';
				$this->googlemaps->add_marker($marker);
			}
			$data['peta_2'] = $this->googlemaps->create_map();	


			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			$this->googlemaps->initialize($config);


			$query = "SELECT * FROM irena_view_gb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_hijau.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				//$marker['onclick'] = '$("#myModal2'.$baris->id_proyek.'").modal("show")';
				//$marker['onclick'] = 'bukaDetail('.$baris->id_lokasi.')';
				$this->googlemaps->add_marker($marker);
			}
			
			$data['peta'] = $this->googlemaps->create_map();	


		
    	$this->load->view('templates/header'); 
		$this->load->view('Peta/map_bb', $data);
		$this->load->view('templates/footer'); 
	}


		public function map_gb()
	{
		$this->load->model('Bluebook_model');

		$this->load->library('googlemaps');

			
			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta_2';
			$config['fullscreenControl'] = 'true';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			//$marker['fullscreenControl'] = 'TRUE';
			$this->googlemaps->initialize($config);

			$query = "SELECT * FROM irena_view_gb_lokasi GROUP BY id_lokasi";
			//$query2 = "SELECT * FROM irena_view_bb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			//$b = $this->db->query($query2)->result();

			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_hijau.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				$id_lokasi = $baris->id_lokasi;
				$marker['onclick'] = 'bukaDetailBB('.$baris->id_lokasi.')';
				//$marker['onclick'] = '$("#myModal2'.$baris->id_kabkota.'").modal("show")';
				//$marker['onclick'] = 'alert("tes")';
				$this->googlemaps->add_marker($marker);
			}
			$data['peta_2'] = $this->googlemaps->create_map();	


			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			$this->googlemaps->initialize($config);


			$query = "SELECT * FROM irena_view_gb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_hijau.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				//$marker['onclick'] = '$("#myModal2'.$baris->id_proyek.'").modal("show")';
				//$marker['onclick'] = 'bukaDetail('.$baris->id_lokasi.')';
				$this->googlemaps->add_marker($marker);
			}
			
			$data['peta'] = $this->googlemaps->create_map();	


		
    	$this->load->view('templates/header'); 
		$this->load->view('Peta/map_gb', $data);
		$this->load->view('templates/footer'); 
	}

	public function map_gabung()
	{
		$this->load->model('Bluebook_model');

		$this->load->library('googlemaps');

			
			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta_2';
			$config['fullscreenControl'] = 'true';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			//$marker['fullscreenControl'] = 'TRUE';
			$this->googlemaps->initialize($config);

			$query = "SELECT * FROM irena_view_lokasi_gabung_semua GROUP BY id_lokasi";
			//$query2 = "SELECT * FROM irena_view_bb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			//$b = $this->db->query($query2)->result();

			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_pink.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				$id_lokasi = $baris->id_lokasi;
				$marker['onclick'] = 'bukaDetailgabung('.$baris->id_lokasi.')';
				//$marker['onclick'] = '$("#myModal2'.$baris->id_kabkota.'").modal("show")';
				//$marker['onclick'] = 'alert("tes")';
				$this->googlemaps->add_marker($marker);
			}
			$data['peta_3'] = $this->googlemaps->create_map();	


			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			$this->googlemaps->initialize($config);


			$query = "SELECT * FROM irena_view_gb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_hijau.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				//$marker['onclick'] = '$("#myModal2'.$baris->id_proyek.'").modal("show")';
				//$marker['onclick'] = 'bukaDetail('.$baris->id_lokasi.')';
				$this->googlemaps->add_marker($marker);
			}
			
			$data['peta'] = $this->googlemaps->create_map();	


		
    	$this->load->view('templates/header'); 
		$this->load->view('Peta/map_gabung', $data);
		$this->load->view('templates/footer'); 
	}

	public function map_gabung_1()
	{
		$this->load->model('Bluebook_model');

		$this->load->library('googlemaps');

			
			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta_2';
			$config['fullscreenControl'] = 'true';


			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			//$marker['fullscreenControl'] = 'TRUE';
			$this->googlemaps->initialize($config);

			//$query = "SELECT * FROM irena_view_lokasi_gabung_semua GROUP BY id_lokasi";
			$query = "SELECT * FROM irena_view_prov_sbsn_phln GROUP BY id_prov";
			//$query2 = "SELECT * FROM irena_view_bb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			//$b = $this->db->query($query2)->result();

			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_pink.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				$id_lokasi = $baris->id_prov;
				$marker['onclick'] = 'bukaDetailgabung_1('.$baris->id_prov.')';
				//$marker['onclick'] = '$("#myModal2'.$baris->id_kabkota.'").modal("show")';
				//$marker['onclick'] = 'alert("tes")';
				$this->googlemaps->add_marker($marker);
			}


			$this->googlemaps->initialize($config);

			$sql1 	= "SELECT DISTINCT id_usulan FROM irena_sbsn_jalan_usulan_poin_kabkota_view ";
			$sql6 	= "SELECT COUNT(DISTINCT id_usulan) FROM irena_sbsn_jalan_usulan_poin_kabkota_view ";
			$sql2	= "SELECT id_usulan FROM irena_sbsn_jalan_usulan_poin_kabkota_view GROUP BY id_usulan";
			$sql3	= "SELECT * FROM irena_sbsn_jalan_usulan_poin_kabkota_view 	ORDER BY id_usulan";
			$sql7	= "SELECT * FROM irena_sbsn_jalan_usulan_poin_kabkota_view 	";

			$sql5	= "SELECT id_usulan FROM irena_sbsn_jalan_usulan_poin_kabkota_view 	  ORDER BY urut";
			$sql4	= "SELECT COUNT(urut) FROM irena_sbsn_jalan_usulan_poin_kabkota_view 	 ORDER BY urut";

			$d 		= $this->db->query($sql3)->result_array(); //ambil semua field diurutkan berdasarkan id_usulan return nya array
			//$e 		= $this->db->query($sql5)->row(); //ambil id_usulan nya aja yg diurutin berdasarkan urutan, return row
			$b 		= $this->db->query($sql6)->num_rows(); //ngitung count distinct id_usulan, return jumlah baris aja, ini dobel karena di sql nya udah count distinct
			$c 		= $this->db->query($sql2)->row();  //ambil id_usulan group by id_usulan, return nya row
			$f		= $this->db->query($sql1)->num_rows(); //ambil data id_usulan , datanya bukan jumlahnya, return nya jumlah baris -> ini dobel, karena udah 
			$g		= $this->db->query($sql1)->result_array(); //ambil data id_usulan , datanya bukan jumlahnya, return nya jumlah baris -> ini dobel, karena udah 
			$h		= $this->db->query($sql7)->result_array(); //ambil data id_usulan , datanya bukan jumlahnya, return nya jumlah baris -> ini dobel, karena udah 
			$isi_array = array();
			$isi_array1 = array();

			$banyak_usulan = $b;

			$array_koordinat = array();


			//for untuk jumlah id_usulan yang ada di tabel untuk dibuat array utama , for untuk array utama doang
			for ($i=0; $i < $f  ; $i++) {


				//sql untuk ngambil jumlah baris id_usulan tertentu yg diurutkan berdasarkan id_urut
				$sql9 	= "SELECT DISTINCT id_usulan FROM irena_sbsn_jalan_usulan_poin_kabkota_view  ";
				$sql10 	= "SELECT * FROM irena_sbsn_jalan_usulan_poin_kabkota_view WHERE id_usulan =  ORDER BY urut ";

				$e 		= $this->db->query($sql9)->result_array(); 
				$q 		= $this->db->query($sql9)->num_rows(); 

				$arr_id_usulan = array();
				$arr_koor = array();
				# code...

				


				//pindahin id_usulan kesini, untuk dijadiin parameter di nextnya
				for ($k=0; $k < $f ; $k++) { 
					# code...
					$arr_id_usulan[$k] = $g[$k]['id_usulan'];
				}

				for ($k=0; $k < $f ; $k++) { 
					# code...
					//print_r($arr_id_usulan[$k]);
				}


			
		}
		
			$array_koordinat = array();

			$banyak_id = sizeof($arr_id_usulan);
			//print_r('<pre>');
			print_r($banyak_id);

					$r = 0;
			

			$arr_koor4 = array();
			$arr_koor3 = array();
			
					//print_r('<pre>');
			for ($b2=0; $b2 < $banyak_id; $b2++) { 


					$a1 	= "SELECT * FROM irena_sbsn_jalan_usulan_poin_kabkota_view WHERE id_usulan = '$arr_id_usulan[$b2]'";
					$t 		= $this->db->query($a1)->result_array(); 
					
					$t1 	= $this->db->query($a1)->num_rows(); 

					//print_r($t1);
					
					
				

					for ($p=0; $p < $t1 ; $p++) { 
						
						$arr_koor[$b2][$p]	 	 =  implode("," , array($t[$p]['lat'] .", ". $t[$p]['longitude']));
						//$arr_koor[$b2][$p] 		=  explode("," , $t[$p]['lat'] ."," .  $t[$p]['longitude']);

						

						//$arr_koor4[$b2][$p] 	= array_push($arr_koor4, $arr_koor[$b2][$p]);
						//print_r($arr_koor[$b2][$p]);

					}

				

			}



				
			$isi 		= array();
			$isi[0]		= array('5.546182, 95.319054' , '0.5070677, 101.4477793' , '-0.853278, 100.3947116');
			$isi[1]		= array('-7.1524786, 111.8869293', '-7.4704747, 112.4401329');
			$isi[2]		= array('-7.1652437, 112.6519882', '-7.6043721, 111.8993478');
		/*	print_r('<pre>');
			print_r($arr_koor[1]);
			// print_r($arr_koor);
			print_r($isi);*/
			// $tes_array 	= array();


			for ($i=0; $i < $banyak_id; $i++) { 
				$polyline = array();
				
				/*$polyline['points'] = 
								array(
									'5.546182, 95.319054',
							    	'0.5070677, 101.4477793',
							    	'-0.853278, 100.3947116'
				);*/

				$polyline['points'] = $arr_koor[$i];
				//$polyline['onclick'] = 'bukaDetailgabung_1('.$baris->id_lokasi.')';

								

				$polyline['infowindow_content'] =  'Hello World';
				$this->googlemaps->add_polyline($polyline);
			}


			

			/*$polyline['points'] = 
							array(
							'5.546182, 95.319054',
						    '0.5070677, 101.4477793');*/
			
			$data['peta_3'] = $this->googlemaps->create_map();	


			$config['center'] = '-0.789275, 113.921327';
			$config['zoom'] = '4';
			$config['map_name'] = 'peta';
			

			$marker = array();
			$marker['position'] = '0.7893, 113.9213';
			$this->googlemaps->initialize($config);


			$query = "SELECT * FROM irena_view_gb_lokasi GROUP BY id_lokasi";
			$a = $this->db->query($query);
			foreach ($a->result() as $baris)
			{
				$marker = array();
				$marker['animation'] = 'DROP';
				$marker['icon'] = base_url().'assets/images/map_hijau.png';
				//$marker['icon'] = base_url().'assets/images/'.$baris->gambar;
				$marker['position'] = $baris->latitude.','.$baris->longitude;
				//$marker['onclick'] = '$("#myModal2'.$baris->id_proyek.'").modal("show")';
				//$marker['onclick'] = 'bukaDetail('.$baris->id_lokasi.')';
				$this->googlemaps->add_marker($marker);
			}
			
			$data['peta'] = $this->googlemaps->create_map();	


		
    	$this->load->view('templates/header'); 
		$this->load->view('Peta/map_gabung_1', $data);
		$this->load->view('templates/footer'); 
	}





		public function report_gb()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');

		$data['greenbook']= $this->Greenbook_model->ambil_greenbook();
		
    	$this->load->view('templates/header'); 
		$this->load->view('report/greenbook/report_gb_index', $data);
		$this->load->view('templates/footer'); 
	}
    

    public function update() {
		$this->load->model('Usulan_model');
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
        'dana_pendamping'				=> $this->input->post('dana_pendamping'),
   		 );


    	$this->db->where('id', $a);
		$this->db->update('irena_usulan_pln', $data);


    }

    function ambil_data_instansi_es_1_by_id_instansi()
	{
		$id_instansi 		= $this->uri->segment(3); 
        $arrStates 			= $this->Usulan_model->ambil_data_instansi_es_1_by_id_instansi($id_instansi); 
		
		 echo json_encode($arrStates);
	}

	function ambil_kabkota_id_prov()
	{
		$id_provinsi 		= $this->uri->segment(3); 
        $arrStates 			= $this->Usulan_model->ambil_kabkota_by_prov($id_provinsi); 
		
		 echo json_encode($arrStates);
	}

    public function arsip()
    {
    	$this->load->model('Usulan_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->Usulan_model->detail_proyek($a);
		$data['lembaga']= $this->Usulan_model->ambil_instansi();

		$data['dok_tambahan'] = $this->Usulan_model->ambil_dokumen_tambahan_usulan($a);

    	$this->load->view('PLN/arsip_usulan', $data);
    	//$this->load->view('templates/footer1');
    

    }

      public function tes_kosong()
    {
    	$this->load->model('Usulan_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->Usulan_model->detail_proyek($a);
		$data['lembaga']= $this->Usulan_model->ambil_instansi();

		$data['dok_tambahan'] = $this->Usulan_model->ambil_dokumen_tambahan_usulan($a);

    	$this->load->view('PLN/tes_kosong', $data);
    	//$this->load->view('templates/footer1');
    

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

    public function mirip()
    {
    	$this->load->model('Usulan_model');

    	$cari = $this->uri->segment(3);

		//get the q parameter from URL
		//$q=$_GET["q"];
		$d = $this->Usulan_model->ambil_judul_proyek();
    	$b = $this->Usulan_model->jumlah_judul();;
		$a = strlen($cari);

		//lookup all links from the xml file if length of q>0
		if ($a>0) {

		  $hint="";
		  for($i=0; $i<($b); $i++) {
		    //$y=$x->item($i)->getElementsByTagName('title');
		    $data['y'] = $this->Usulan_model->ambil_judul_proyek($cari);
		    //$z=$this->Usulan_model->ambil_proyek_usulan->judul_proyek_id;
		    //$z=$x->item($i)->getElementsByTagName('url');
		    //if ($y->item(0)->nodeType==1) {
		      //find a link matching the search text
		      if (stristr("tr" ,$cari)) {
		        if ($hint=="") {

		        	$hint = "ada";
		         /* $hint="<a href='" . 
		          $z->item(0)->childNodes->item(0)->nodeValue . 
		          "' target='_blank'>" . 
		          $y->item(0)->childNodes->item(0)->nodeValue . "</a>";*/
		        } else {

		        	$hint = "tidak ada";
		          /*$hint=$hint . "<br /><a href='" . 
		          $z->item(0)->childNodes->item(0)->nodeValue . 
		          "' target='_blank'>" . 
		          $y->item(0)->childNodes->item(0)->nodeValue . "</a>";*/
		        }
		      }
		  /*  }
		  }*/
		

		// Set output to "no suggestion" if no hint was found
		// or to the correct values
		if ($hint=="") {
		  $response="no suggestion";
		} else {
		  $response=$hint;
		}

		//output the response
		echo $response;

    	//var_dump($response);
    }
}
}

    public function tambahBB()
    {
    	$this->load->model('Usulan_model');
    	$this->load->model('Bluebook_model');
    	$this->load->model('Greenbook_model');
    	$id = $this->input->post('id');
    	$data['detail'] = $this->Usulan_model->detail_proyek($id);
    	$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['program']= $this->Usulan_model->ambil_program();
		$data['lokasi'] = $this->Usulan_model->ambil_lokasi();
		$data['sektor'] = $this->Greenbook_model->ambil_sektor();
		$data['status'] = $this->Bluebook_model->ambil_statusumum();
		$data['infra'] = $this->Usulan_model->ambil_infra();
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['provinsi']= $this->Greenbook_model->ambil_provinsi();
		$data['kabkota']= $this->Greenbook_model->ambil_kabkota();
    	//$this->Usulan_model->tambahBB($id);
    	$this->load->view('usulan/tambahBB', $data);
    }

    public function tambah_instansi()
    {
    	$this->load->view('usulan/tambah_instansi');
    }

   

    public function cari()
    {
    	$this->load->model('Usulan_model');
    	$id = $this->input->post('id');
    	$data['detail'] = $this->Usulan_model->detail_proyek($id);
    	//$this->Usulan_model->tambahBB($id);

    	$this->load->view('usulan/pencarian', $data);
    }

        public function adm()
    {


    	$this->load->model('Usulan_model');
		$a = $this->input->post('id');
		$data['isi'] = $this->Usulan_model->detail_proyek($a);

    	$this->load->view('Usulan/nilai_adm', $data);
    	//$this->load->view('templates/footer1');
    }

    function usulan_simpan()
	{
    	$this->load->model('Usulan_model');

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
		$this->form_validation->set_rules("dana_hibah", "Dana Hibah", "trim|required");
		$this->form_validation->set_rules("dana_usulan", "Dana Usulan", "trim|required");
		$this->form_validation->set_rules("output", "Output", "trim|required");
		$this->form_validation->set_rules("outcome", "Outcome", "trim|required");
	
		
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
				
						$data 					= $_POST;
				    	$this->db->insert('irena_usulan_pln', $data);

					 	$isi = array(
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

					 	$data_histori = $this->input->post('id_usulan_hub');
					 	$array_usulan = explode(",", $data_histori);

					 	$data3 = [];
					 	foreach($array_usulan as $usulan) {
					 	  $data3[] = [
					 	    'id_usulan' => $isi['id_usulan'],
					 	    'id_usulan_terkait' => $usulan,
					 	  ];
					 	}

					 	$data_prov = $this->input->post('id_provinsi');
					 	$array_prov = explode(",", $data_prov);
					 

					 	

					 	$data4 = [];
					 	foreach($array_prov as $provinsi) {
					 	  $data4[] = [
					 	    'id_usulan' => $isi['id_usulan'],
					 	    'id_prov' => $provinsi,
					 	    'id_instansi' => $id_instansi,
					 	  ];
					 	}

					 	$data_kabkota = $this->input->post('id_kabkota');
					 	$array_kabkota = explode(",", $data_kabkota);

						$data5 = [];
							 foreach($array_kabkota as $kabkota) {
							 	  $data5[] = [
							 	    'id_usulan' => $id_ ,
							 	    'id_kabkota' => $kabkota,
							 	    'id_instansi' => $id_instansi,
							 	  ];
							 }
					 	
					 	

					 	
				    	$this->db->insert_batch('irena_usulan_kabkota', $data5);
				    	$this->db->insert_batch('irena_usulan_prov', $data4);

				    	$this->db->insert_batch('irena_usulan_lokasi', $data2);
				    	$this->db->insert_batch('irena_usulan_historis', $data3);
				    	

				    	$status['success'] 			= true;
				
				
			}elseif($this->uri->segment(3) == 'edit'){
				$id_			= $this->input->post('id');
				$this->Usulan_model->hapus_dari_lokasi($id_);
				$this->Usulan_model->hapus_dari_histori($id_);
				$this->Usulan_model->hapus_dari_prov($id_);
				$this->Usulan_model->hapus_dari_kabkota($id_);
				$this->Usulan_model->hapus_dari_adm($id_);
				$this->Usulan_model->hapus_dari_layak($id_);
				$id_instansi			= $this->input->post('id_instansi');
				$data 					= $_POST;
				$result 				= $this->Usulan_model->usulan_simpan_data_edit($data);


				$select2data = $this->input->post('lokasi');
				$array_lokasi = explode(",", $select2data);

				$isi = array(
				    			'id_usulan' 		=> $id_
				    			
				    			//'is_gb_update_by'			=> $this->session->userdata('id')
				    			
				    		);
				
				$data2 = [];
				foreach($array_lokasi as $lokasi) {
				  $data2[] = [
				    'id_usulan' =>  $id_,
				    'id_instansi' =>  $id_instansi,
				    'id_lokasi' => $lokasi,
				  ];
				}

				$data_histori = $this->input->post('id_usulan_hub');
				$array_usulan = explode(",", $data_histori);

				$data3 = [];
				foreach($array_usulan as $usulan) {
					$data3[] = [
					'id_usulan' => $id_,
					'id_usulan_terkait' => $usulan,
					  ];
				}

				$data_prov = $this->input->post('id_provinsi');
	 			$array_prov = explode(",", $data_prov);

				$data4 = [];
			 	foreach($array_prov as $provinsi) {
			 	  $data4[] = [
			 	    'id_usulan' => $id_ ,
			 	    'id_prov' => $provinsi,
			 	    'id_instansi' => $id_instansi,
			 	  ];
			 	}

			 	$data_kabkota = $this->input->post('id_kabkota');
	 			$array_kabkota = explode(",", $data_kabkota);

				$data5 = [];
			 	foreach($array_kabkota as $kabkota) {
			 	  $data5[] = [
			 	    'id_usulan' => $id_ ,
			 	    'id_kabkota' => $kabkota,
			 	    'id_instansi' => $id_instansi,
			 	  ];
			 	}

			 	$this->db->insert('irena_usulan_layak', $isi);
				$this->db->insert('irena_usulan_adm', $isi);
	 	
	 	

	 	
    			$this->db->insert_batch('irena_usulan_kabkota', $data5);
	 	
    			$this->db->insert_batch('irena_usulan_prov', $data4);

	 			$this->db->insert_batch('irena_usulan_lokasi', $data2);
				$this->db->insert_batch('irena_usulan_historis', $data3);



				
			}
			
		}

		echo json_encode($status);

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
			$data['is_kasubdit']		= '0';
			$data['is_layak']			= $this->input->post('is_layak');
			$data['ket']			= $this->input->post('nilai_layak_ket');
			$result 					= $this->Usulan_model->usulan_simpan_data($data);
			$status['success'] 			= true;
			$data 						= $_POST;

			}elseif ($this->session->userdata('id_user_level') == '5') {
				$data['by_kasubdit']			= $this->session->userdata('id');
				$data['at_kasubdit']			= date('Y-m-d H:i:s');
				$data['is_kasubdit']			= $this->input->post('is_layak');
				$data['catatan']			= $this->input->post('nilai_layak_ket');
				$result 					= $this->Usulan_model->usulan_simpan_data($data);
				$status['success'] 			= true;
				$data 						= $_POST;
			}
			
			///
		}
		echo json_encode($status);
		//var_dump($data);
	}

	 function tambah_ke_BB()
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

			$data['id']					= $this->input->post('id');
			date_default_timezone_set('Asia/Jakarta');
			if ($this->session->userdata('id_user_level') != '5') {

			//$data['nilai_admin_id']		= $this->session->userdata('id');
			$data['is_BB_by']			= $this->session->userdata('id');
			$data['is_BB_at']			= date('Y-m-d H:i:s');
			$data['is_bb_kasubdit']		= '0';
			$data['is_BB']			= $this->input->post('nilai_layak');
			$data['is_BB_catatan']			= $this->input->post('nilai_layak_ket');
			$result 					= $this->Usulan_model->simpan_adm($data);
			$status['success'] 			= true;
			$data 						= $_POST;

			}elseif ($this->session->userdata('id_user_level') == '5') {
			
				$bb_staff							= $this->Usulan_model->ambil_adm($data['id']	)->is_BB; //ngambil nilai dari staff buat dibandingin
				$bb_kasubdit 					= $this->input->post('nilai_layak');
				
				if ($bb_staff == '2') {
					if ( $bb_kasubdit	== '2' ) {

						//tambah ke database proyek bluebook
						# code...

							
			    	$data = array(
					'id'					=> $this->input->post('id'),
			        
			        'kasubdit_bb_at'			=> date('Y-m-d H:i:s'),
			        'is_bb_kasubdit'			=>  $this->input->post('nilai_layak'),
			        'catatan_kasubdit'			=>  $this->input->post('nilai_layak_ket'),
			        'kasubdit_bb_by'			=> $this->session->userdata('id'),

			        
			   		 );
					$result 					= $this->Usulan_model->simpan_adm($data);

					$data_isBB = array(
					'id'					=> $this->input->post('id'),
			        'is_BB'					=> '1',
			        
			   		 );
					$result4 					= $this->Usulan_model->update_isBB($data_isBB);



			    	$data2 = array(
					//'id'					=> $this->input->post('id'),
					'id_usulan'					=> $this->input->post('id_usulan'),

			        
			        'id_program'			=> $this->input->post('id_program'),
			        'id_instansi'			=>  $this->input->post('id_instansi'),
			        'instansi_pelaksana'			=>  $this->input->post('instansi_pelaksana'),
			        'tahun_usulan'			=> $this->input->post('tahun_usulan'),
			        'judul_proyek_id'			=>  $this->input->post('judul_proyek_id'),
			        'judul_proyek_eng'			=>  $this->input->post('judul_proyek_eng'),
			        'ruang_lingkup_id'			=>  $this->input->post('ruang_lingkup_id'),
			        'ruang_lingkup_eng'			=>  $this->input->post('ruang_lingkup_eng'),
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
			        'id_bluebook'			=>  $this->input->post('id_bluebook'),
			        'lokasi'			=>  $this->input->post('lokasi'),
			        'provinsi'			=>  $this->input->post('id_provinsi'),
			        'kabkota'			=>  $this->input->post('id_kabkota'),
			   		 );

					$result2 					= $this->Usulan_model->tambah_ke_BB($data2);

					$isi = array(
		    			'id_proyek_bb' 		=> $this->Usulan_model->last_bb()->id,
		    			
		    		);

					$result3 					= $this->Usulan_model->tambah_ke_BB_layak($isi);

		    		
				
				
		    		

						//$data 						= $_POST;
						$data2 						= $_POST;
						$data 						= $_POST;
						$data_isBB 						= $_POST;
						$isi 						= $_POST;

						$status['success'] 			= true;

					}elseif( $bb_kasubdit	== '1' ){
						$data['kasubdit_bb_at']			= date('Y-m-d H:i:s');
						$data['is_bb_kasubdit']			= $this->input->post('nilai_layak');
						$data['kasubdit_bb_by']			= $this->session->userdata('id');


						$data['catatan_kasubdit']			= $this->input->post('nilai_layak_ket');
						$result 					= $this->Usulan_model->simpan_adm($data);

						$status['success'] 			= true;
						$data 						= $_POST;
					}

				}else{
					$data['kasubdit_bb_at']			= date('Y-m-d H:i:s');
					$data['catatan_kasubdit']			= $this->input->post('nilai_layak_ket');
					$result 					= $this->Usulan_model->simpan_adm($data);
					$data['kasubdit_bb_by']			= $this->session->userdata('id');

					$status['success'] 			= true;
					$data 						= $_POST;
				}
			}

		
		}

		echo json_encode($status);
		//var_dump($data);
	}

	function tambah_catatan()
	{
		$this->load->model('Usulan_model');
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
				'id_usulan'							=> $this->input->post('id_usulan'),
				'catatan'							=> $this->input->post('catatan'),
				//$data['id_bluebook']					= $this->input->post('id_bluebook');
				'waktu'								=> date('Y-m-d H:i:s'),
				'id_user'								=> $this->session->userdata('id'),

				
				
				);

			$hasil3 = $this->db->insert('catatan_usulan', $data);

				$status['success'] 			= true;
				$data 						= $_POST;
				
			
			///
		}

		echo json_encode($data);
		//var_dump($data);
	}


	 function input_instansi()
	{
		$this->load->model('Usulan_model');
		$status = array('success' => false, 'messages' => array());

		$this->form_validation->set_rules("nama", "Nama Lembaga", "trim|required");
		

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
				'nama'					=> $this->input->post('nama'),
				
				
				);

			$data2 = array(
				'nama_instansi'					=> $this->input->post('nama'),
				
				
				);

			$hasil3 = $this->db->insert('irena_instansi_campur', $data);
			$hasil4= $this->db->insert('irena_instansi', $data2);

				
				$status['success'] 			= true;
				$data 						= $_POST;
				
			
			///
		}

		echo json_encode($status);
		//var_dump($data);
	}


    public function layak()
    {
    	$this->load->model('Usulan_model');
		$a = $this->input->post('id');
		$data['isi'] = $this->Usulan_model->detail_proyek($a);
    	$this->load->view('Usulan/nilai_layak', $data);
    	//$this->load->view('templates/footer1');
    }

    public function usulan_simpan_admin()
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
			
            date_default_timezone_set('Asia/Jakarta');

            if ($this->session->userdata('id_user_level') != '5') {
	            $data['update_by']			= $this->session->userdata('id');
				$data['id']					= $this->input->post('id');
				$data['is_lengkap']			= $this->input->post('is_lengkap');
				
				$data['keterangan']			= $this->input->post('nilai_admin_ket');
				$data['update_at']			= date('Y-m-d H:i:s');

				$result 					= $this->Usulan_model->simpan_adm($data);
				$status['success'] 			= true;
				$data 						= $_POST;

            } elseif ($this->session->userdata('id_user_level') == '5') {
            	 $data['by_kasubdit']			= $this->session->userdata('id');
				$data['at_kasubdit']			= date('Y-m-d H:i:s');
				$data['id']					= $this->input->post('id');
				
				$data['is_kasubdit']		= $this->input->post('is_lengkap');
				$data['catatan']			= $this->input->post('nilai_admin_ket');
				$result 					= $this->Usulan_model->simpan_adm($data);
				$status['success'] 			= true;
				$data 						= $_POST;
            }
			
			//$data['nilai_admin_id']		= $this->session->userdata('id');
			


			
			///
		}
		echo json_encode($status);
	
	}

	function tampilkan_dok_usulan_edit()
	{	
    	$this->load->model('Usulan_model');
    	$this->load->model('hibah_model');

		$id 					= $this->uri->segment(3); //id table of irena_sbsn_usulan_syarat
		$query					= $this->Usulan_model->ambil_dok_usulan_by_id($id);
		$data['dok']			= $query->row();
		$this->load->view('pln/dok_usulan_edit', $data);
	}

	function tampilkan_form_log_usulan_hapus()
	{	
		$data['id'] = $this->uri->segment(3);
		$this->load->view('usulan/log_usulan_hapus', $data);
	}

	function log_usulan_hapus()
	{	
		$id 	= $this->input->post('id');
		$query	= $this->usulan_hapus->log_usulan_hapus_data($id);
	}



    public function tambah_arsip()
    {
    	$this->load->view('Usulan/rekam_jejak');
    	//$this->load->view('templates/footer1');
    }

    function tampilkan_log_usulan_index()
	{
    	$this->load->model('Usulan_model');

		$id_proyek							= $this->input->post('id');
		$data['usulan']						= $this->Usulan_model->detail_proyek($id_proyek);
		//$data['usulan']			= $query->row();
		$this->load->view('usulan/log_usulan_dokumen_index', $data);
		//$this->load->view('sbsn/usulan/log_usulan_index');
	}

	function tampilkan_form_log_usulan_tambah()
	{
		$this->load->model('Usulan_model');
		$this->load->model('hibah_model');
		$data['id_proyek']				= $this->uri->segment(3);
		$data['id_log_kategori']		= $this->hibah_model->pilih_log_kategori();
		$this->load->view('usulan/log_usulan_dokumen_tambah', $data);
		//$this->load->view('sbsn/usulan/log_usulan_tambah2');
	}

	function tampilkan_form_dok_usulan_tambah()
	{
		$this->load->model('Usulan_model');
		$this->load->model('hibah_model');
		$data['id_proyek']				= $this->uri->segment(3);
		$data['id_log_kategori']		= $this->hibah_model->pilih_log_kategori();
		$this->load->view('usulan/log_dokumen_tambah', $data);
		//$this->load->view('sbsn/usulan/log_usulan_tambah2');
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
			$data['id'] 					= $this->uri->segment(3);

			$data['update_by']		= $this->session->userdata('id');
			$data['update_date']	= date('Y-m-d H:i:s');
			$result 				= $this->Usulan_model->log_usulan_simpan_data($data);
			
			$status['success'] 	= true;

			
		}

		echo json_encode($status);

	}

	function log_usulan_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id=$data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_hibah_log',$data);
		}
		else
		{
			$this->db->insert('irena_hibah_log',$data);
		}		
	}
	
	function tampilkan_data_log_usulan()
	{
		$this->load->model('hibah_model');
		$id_proyek 		= $this->uri->segment(3);
		$data['log'] 	= $this->Usulan_model->ambil_data_log_usulan_by_id_proyek($id_proyek);
		$this->load->view('usulan/log_usulan_list', $data);
	}

	public function tampilkan_dok_usulan_list()
	{
		$this->load->model('Usulan_model');

		$data['id_proyek'] 		= $this->uri->segment(3);
		$id_proyek		= $this->uri->segment(3);
		$data['dok'] 	= $this->Usulan_model->ambil_dok_usulan_by_id_proyek($id_proyek);
		$this->load->view('usulan/dok_usulan_list', $data);

		 			
	}
	

	

    public function tambah()
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
        'infra'					=> $this->input->post('id_infra'),
        
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
        'status_usulan'				=> $this->input->post('status_usulan'),
        'id_usulan_hub'				=> $this->input->post('id_usulan_hub'),
        'id_provinsi'				=> $this->input->post('id_provinsi'),
        'id_kabkota'				=> $this->input->post('id_kabkota'),
   		 );

    	$this->db->insert('irena_usulan_pln', $data);

	 	$isi = array(
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

	 	$data_histori = $this->input->post('id_usulan_hub');
	 	$array_usulan = explode(",", $data_histori);

	 	$data3 = [];
	 	foreach($array_usulan as $usulan) {
	 	  $data3[] = [
	 	    'id_usulan' => $isi['id_usulan'],
	 	    'id_usulan_terkait' => $usulan,
	 	  ];
	 	}

	 	$data_prov = $this->input->post('id_provinsi');
	 	$array_prov = explode(",", $data_prov);
	 

	 	

	 	$data4 = [];
	 	foreach($array_prov as $provinsi) {
	 	  $data4[] = [
	 	    'id_usulan' => $isi['id_usulan'],
	 	    'id_prov' => $provinsi,
	 	    'id_instansi' => $id_instansi,
	 	  ];
	 	}

	 	$data_kabkota = $this->input->post('id_kabkota');
	 	$array_kabkota = explode(",", $data_kabkota);

		$data5 = [];
			 foreach($array_kabkota as $kabkota) {
			 	  $data5[] = [
			 	    'id_usulan' => $isi['id_usulan'],
			 	    'id_kabkota' => $kabkota,
			 	    'id_instansi' => $id_instansi,
			 	  ];
			 }
	 	
	 	

	 	
    	$this->db->insert_batch('irena_usulan_kabkota', $data5);
    	$this->db->insert_batch('irena_usulan_prov', $data4);

    	$this->db->insert_batch('irena_usulan_lokasi', $data2);
    	$this->db->insert_batch('irena_usulan_historis', $data3);
    	

    	$status['success'] 			= true;

		}
    	 echo json_encode($status);
    }



    public function catatan()
    {
    	$this->load->model('Usulan_model');
    	$this->load->model('Greenbook_model');
    	$data['id'] = $this->input->post('id');
    	$a = $this->input->post('id');
    	$data['isi'] = $this->Usulan_model->ambil_catatan($a);
    	$this->load->view('Usulan/catatan_usulan', $data);
    }

    public function catatan_tampil()
    {
    	$this->load->model('Usulan_model');
    	$data['id'] = $this->input->post('id');
    	$a = $this->input->post('id');
    	$data['isi'] = $this->Usulan_model->ambil_catatan($a);
    	return $data;
    }

	
}


/*
			foreach ($c as  $value) {
				
				$sql3	= "SELECT * FROM irena_sbsn_jalan_usulan_poin_kabkota_view 	WHERE id_usulan = '$value'   ORDER BY urut";

				$sql5	= "SELECT id_usulan FROM irena_sbsn_jalan_usulan_poin_kabkota_view 	WHERE id_usulan = '$value'   ORDER BY urut";
				$sql4	= "SELECT COUNT(urut) FROM irena_sbsn_jalan_usulan_poin_kabkota_view 	WHERE id_usulan = '$value'   ORDER BY urut";

				$d 		= $this->db->query($sql3)->result_array();
				$e 		= $this->db->query($sql5)->row();
				//print_r($d);
				print_r($e);
				//$e 		= $this->db->query($sql4);

				$i 		= 0;

				//coba pakai for bukan foreach



				/*foreach ($d as  $value2) {

					$sql5	= "SELECT * FROM irena_sbsn_jalan_usulan_poin_kabkota_view 	WHERE id_usulan = '$value2'   ORDER BY urut";
					$f 		= $this->db->query($sql5)->result_array();

					$isi_array[$i] = $value2['lat']; //ini error katanya try to get property non object
				}*/
/*/*
				$i++;


			}*/

			//for ($i=0; $i < ; $i++) { 
				# code...
			//}

			//print_r($banyak_usulan);
			//print_r($isi_array1);
//*/*/
			/*for ($a=0; $a < b ; $a++) { //ini di akhir aja bisa, cuma untuk nampung kalo semuanya udah tergabung buat dipanggil buat pointing polyline
				
				



			}
*/


