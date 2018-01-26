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
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		foreach ($this->Bluebook_model->ambil_grafik_kl_per_bb($a) as $row) {
			$data[] = array(
				'name' => $row['nama'],
				'y' => $row['total']
				);
		}


	

    	 echo json_encode($data);
	}

	public function filter_lender_bluebook()
	{

		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
			
		$id = $this->input->post('id');
		$a = $this->uri->segment(3);
		//$data['detail'] = $this->Bluebook_model->ambil_proyek_per_bb($a);

		
		foreach ($this->Bluebook_model->ambil_grafik_lender_per_bb($a) as $row) {
			$data[] = array(
				'name' => $row['lender'],
				'y' => $row['total']
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

		
		foreach ($this->Bluebook_model->ambil_grafik_program_per_bb($a) as $row) {
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
		$data['detail'] = $this->Usulan_model->detail_proyek($a);

		
		
		$this->load->view('PLN/detail_usulan', $data);
		//$this->load->view('templates/footer1');
		
	}

	
	public function edit() {

		$this->load->model('Usulan_model');
		$a = $this->input->post('id');
		
		$data['detail'] = $this->Usulan_model->detail_proyek($a);
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['program']= $this->Usulan_model->ambil_program();
		

       $this->load->view('Usulan/edit_usulan', $data);
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
		
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['status_lembaga']= $this->Bluebook_model->semua_status_lembaga();
		$data['status_lender']= $this->Bluebook_model->semua_status_lender();
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['greenbook']= $this->Greenbook_model->ambil_greenbook();
		$data['provinsi']= $this->Greenbook_model->ambil_provinsi();
		
		$data['lender']= $this->Bluebook_model->semua_lender();
	


		$this->load->view('Usulan/tambah_manual', $data);
	}



    public function tambah_baru_dokumen()
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
						
						unset($data['berkas_lama']);
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
					$status['success'] = true;
					date_default_timezone_set('Asia/Jakarta');
					unset($data['berkas']);
					unset($data['berkas_lama']);
					$data['update_by']		= $this->session->userdata('id');
					$data['update_date'] 	= date('Y-m-d H:i:s');
					$result 	= $this->hibah_model->dok_usulan_simpan_data($data);
					$data 					= $_POST;
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
		
    	$this->load->view('templates/header'); 
		$this->load->view('pln/report_pln', $data);
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
    	$id = $this->input->post('id');
    	$data['detail'] = $this->Usulan_model->detail_proyek($id);
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

			//$data['nilai_admin_id']		= $this->session->userdata('id');
			$data['update_by']			= $this->session->userdata('id');
			$data['update_at']			= date('Y-m-d H:i:s');
			$data['is_layak']			= $this->input->post('is_layak');
			$result 					= $this->Usulan_model->usulan_simpan_data($data);
			$status['success'] 			= true;
			$data 						= $_POST;

			
			
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

			$data = array(
				'id_usulan'					=> $this->input->post('id'),
				'id_usulan_proyek'					=> $this->input->post('id'),
				//$data['id_bluebook']					= $this->input->post('id_bluebook');
				'id_program'					=> $this->input->post('id_program'),
				'id_instansi'					=> $this->input->post('id_instansi'),
				'id_eselon_1'					=> $this->input->post('id_eselon_1'),
				'nilai_hibah'					=> $this->input->post('nilai_hibah'),
				'nilai_pinjaman'					=> $this->input->post('nilai_pinjaman'),
				'dana_pendamping'					=> $this->input->post('dana_pendamping'),
				'id_instansi_pelaksana'					=> $this->input->post('id_instansi_pelaksana'),
				'proyeksi_tahun_pertama_penarikan'					=> $this->input->post('proyeksi_tahun_pertama_penarikan'),
				//$data['id']					= $this->input->post('id');
				'judul_proyek_id'					=> $this->input->post('judul_proyek_id'),
				'judul_proyek_eng'					=> $this->input->post('judul_proyek_eng'),
				'output'					=> $this->input->post('output'),
				'outcome'					=> $this->input->post('outcome'),
				
				);

			$hasil3 = $this->db->insert('irena_bluebook_proyek', $data);

			$data2 = array(
				'id' =>$this->input->post('id'),
				'is_BB' =>"1",

				);

		 	$hasil1 =  $this->Usulan_model->update_BB($data2);

		 	$data3 = array(
				'id' =>$this->input->post('id'),
				'is_BB' =>"2",
				);

		 	$hasil3 =  $this->Usulan_model->save_adm($data2);

		   	$isi = array(
		    			'id_proyek_bb' 		=> $this->Usulan_model->last_bb()->id,
		    			
		    		);

		    	
		    $hasil2 = $this->db->insert('irena_bb_layak', $isi);
					

				$data2 						= $_POST;
				$data3 						= $_POST;
				$isi 						= $_POST;
				$status['success'] 			= true;
				$data 						= $_POST;
				
			
			///
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
			
			//$data['nilai_admin_id']		= $this->session->userdata('id');
			$data['update_by']			= $this->session->userdata('id');
			$data['update_at']			= date('Y-m-d H:i:s');
			$data['id']					= $this->input->post('id');
			$data['is_lengkap']			= $this->input->post('is_lengkap');
			$data['is_kasubdit']		= "0";
			$data['keterangan']			= $this->input->post('nilai_admin_ket');
			$result 					= $this->Usulan_model->simpan_adm($data);
			$status['success'] 			= true;
			$data 						= $_POST;



			
			///
		}
		echo json_encode($status);
	
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
		$this->form_validation->set_rules("eselon_1", "Instansi Pelaksana", "trim|required");
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
        'instansi_pelaksana'			=> $this->input->post('eselon_1'),
        'proyeksi_tahun_pertama_penarikan'			=> $this->input->post('proyeksi_tahun_pertama_penarikan'),
        'dana_usulan'				=> $this->input->post('dana_usulan'),
        'dana_hibah'				=> $this->input->post('dana_hibah'),
        'durasi'				=> $this->input->post('durasi'),
        'output'				=> $this->input->post('output'),
        'outcome'				=> $this->input->post('outcome'),
        'lokasi'				=> $this->input->post('lokasi'),
        'dana_pendamping'				=> $this->input->post('dana_pendamping'),
        'id_eselon_1'				=> $this->input->post('eselon_1'),
        'tahun_usulan'				=> $this->input->post('tahun_usulan'),
   		 );

    	$this->db->insert('irena_usulan_pln', $data);
/*
    	$query = "SELECT id FROM irena_usulan_layak ORDER BY ID DESC LIMIT 1";
    	$a = $this->db->query($query);
*/
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



    public function catatan()
    {
    	$this->load->model('Usulan_model');
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


