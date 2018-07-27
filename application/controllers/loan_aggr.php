<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include 'function.php';

class Loan_aggr extends CI_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->library('parser');
		date_default_timezone_set('Asia/Jakarta');
	}
	
	public function index()
	{
			$this->load->view('templates/header'); 
			$this->load->view('PLN/usulan');
			$this->load->view('templates/footer'); 
	}


    function tampilkan_log_la_index()
	{
    	$this->load->model('dk_model');
    	$this->load->model('la_model');
    	$this->load->model('Bluebook_model');
    	$this->load->model('Usulan_model');

		$id_proyek							= $this->input->post('id');
		$data['usulan']						= $this->Bluebook_model->detail_proyek_by_usulan($id_proyek);
		//$data['usulan']			= $query->row();
		$this->load->view('LA/log_la_dokumen_index', $data);
		//$this->load->view('sbsn/usulan/log_usulan_index');
	}

	 public function tampilkan_proyek_lokasi()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('dk_model');
		$this->load->model('la_model');
		$data['instansi'] = array();
		$id_lokasi = $this->uri->segment(3);
		//$id_lokasi = '339';
		$data['data']= $this->la_model->ambil_proyek_berdasarkan_lokasi($id_lokasi);

		
		//$data['data']= $this->Bluebook_model->ambil_proyek_berdasarkan_lokasi();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('Peta/bb_proyek_list', $data);
	}




		public function catatan()
    {
    	$this->load->model('Greenbook_model');
    	$this->load->model('dk_model');
    	$this->load->model('la_model');
    	$data['id'] = $this->input->post('id');
    	$a = $this->input->post('id');
    	$data['isi'] = $this->la_model->ambil_catatan($a);
    	$this->load->view('LA/catatan_la', $data);
    }

    function detail_expand_la()
	{
		$this->load->model('Usulan_model');
		$this->load->model('Bluebook_model');
		$this->load->model('la_model');
		
		$id = $this->uri->segment(3);
		$data['isi'] = $this->la_model->all_banding($id);
		$data['isi2'] = $this->la_model->all_banding_tahun($id);

		echo json_encode($data);
		//var_dump($data);
	}


    function tambah_catatan()
	{
		$this->load->model('la_model');
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
				'id_la_proyek'							=> $this->input->post('id_la_proyek'),
				'catatan'							=> $this->input->post('catatan'),
				//$data['id_bluebook']					= $this->input->post('id_bluebook');
				'waktu'								=> date('Y-m-d H:i:s'),
				'id_user'								=> $this->session->userdata('id'),
				
				
				);

			$hasil3 = $this->db->insert('catatan_la', $data);

				$status['success'] 			= true;
				$data 						= $_POST;
				
			
			///
		}

		echo json_encode($data);
		//var_dump($data);
	}

	
	public function edit()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('Greenbook_model');
		$this->load->model('dk_model');
		$this->load->model('Usulan_model');
		$this->load->model('la_model');
		$a = $this->input->post('id');
		$data['detail'] = $this->la_model->detail_proyek($a);
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['status_lembaga']= $this->Bluebook_model->semua_status_lembaga();
		$data['status_lender']= $this->Bluebook_model->semua_status_lender();
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['greenbook']= $this->Greenbook_model->ambil_greenbook();
		$data['sektor'] = $this->Greenbook_model->ambil_sektor();
		$data['lokasi'] = $this->Usulan_model->ambil_lokasi();


		$data['provinsi']= $this->Greenbook_model->ambil_provinsi();
		$data['kabkota']= $this->Greenbook_model->ambil_kabkota();
		
		$data['lender']= $this->Bluebook_model->semua_lender();
		$data['program']= $this->Usulan_model->ambil_program();
		
		$data['a'] = $a;

	
		$this->load->view('LA/la_edit', $data);
		//$this->load->view('templates/footer1');
		
		
	}

	public function tampil_index()
	{
		if(is_logged_in()) {
			$this->load->view('templates/header'); 
			$this->load->view('LA/la_index');
			$this->load->view('templates/footer'); 
		}else{
			$this->load->view('templates/login');
		}
	}

	public function tampilkan_la_list()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('la_model');
		
		

		
		$data['instansi'] = array();

		
		$data['data']= $this->la_model->ambil_proyek_la();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('LA/la_list', $data);
	}

	public function tampilkan_la_monev_list()
	{
		$this->load->model('Bluebook_model');
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('la_model');
		
		

		
		$data['instansi'] = array();

		
		$data['data']= $this->la_model->ambil_proyek_la();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('LA/la_monev_list', $data);
	}

	public function update() {
		$this->load->model('la_model');
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
		$this->db->update('irena_la_proyek', $data);


    }

    function la_simpan()
	{
    	$this->load->model('Usulan_model');
    	$this->load->model('Bluebook_model');
    	$this->load->model('la_model');

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
				$id_gb					= $this->input->post('id_greenbook');
				$this->la_model->hapus_dari_lokasi($id_);
				$this->la_model->hapus_dari_prov($id_);
				$this->la_model->hapus_dari_kabkota($id_);

				
				$select2data 			= $this->input->post('lokasi');
				$isi_prov 				= $this->input->post('provinsi');
				$isi_kabkota 			= $this->input->post('kabkota');
				$array_lokasi			= explode(",", $select2data);
				$array_prov				= explode(",", $isi_prov);
				$array_kabkota			= explode(",", $isi_kabkota);
				
				$data2 = [];
				foreach($array_lokasi as $lokasi) {
				  $data2[] = [
				    'id_la_proyek' 		=>  $id_,
				    'id_bb' 		=>  $id_bb,
				    'id_gb' 		=>  $id_gb,
				    'id_lokasi' 		=> $lokasi,
				  ];
				}

				$data_prov = [];
				foreach($array_prov as $prov) {
				  $data_prov[] = [
				    'id_la_proyek' 		=>  $id_,
				    'id_bb' 		=>  $id_bb,
				    'id_gb' 		=>  $id_gb,
				    
				    'id_prov' 		=> $prov,
				  ];
				}

				$data_kabkota = [];
				foreach($array_kabkota as $kabkota) {
				  $data_kabkota[] = [
				    'id_la_proyek' 		=>  $id_,
				    'id_bb' 		=>  $id_bb,
				    'id_gb' 		=>  $id_gb,
				    
				    'id_kabkota' 		=> $kabkota,
				  ];
				}
	 			$this->db->insert_batch('irena_la_lokasi', $data2);
	 			$this->db->insert_batch('irena_la_prov', $data_prov);
	 			$this->db->insert_batch('irena_la_kabkota', $data_kabkota);

				$result 		= $this->la_model->la_simpan_data_edit($data);


			
			}
			
		}

		echo json_encode($status);

	}

	
	

	

	public function tampil_LA()
	{	
		$this->load->model('la_model');
		$this->load->model('Greenbook_model');
		$this->load->model('Usulan_model');

		
		
		$data['instansi'] = array();

		
		$data['data']= $this->la_model->ambil_proyek_la();
		$data['lembaga']= $this->Greenbook_model->ambil_instansi();
		$data['program']= $this->Greenbook_model->ambil_program();
		$data['arsip'] = $this->Greenbook_model->ambil_arsip();
		
		$this->load->view('templates/header'); 
		$this->load->view('LA/la_view', $data);
		$this->load->view('templates/footer'); 
	}

	public function arsip()
	{
	    	$this->load->model('dk_model');
	    	$this->load->model('la_model');
	    	$this->load->model('Bluebook_model');
	    	$this->load->model('Usulan_model');
			$a = $this->input->post('id');
			$data['detail'] = $this->la_model->detail_proyek($a);
			$data['lembaga']= $this->Usulan_model->ambil_instansi();

			$data['dok_tambahan'] = $this->Usulan_model->ambil_dokumen_tambahan_usulan($a);

	    	$this->load->view('LA/la_arsip_index', $data);
	    	//$this->load->view('templates/footer1');
	    

	}

	   public function fix_usulan_hapus()
    {
    	$this->load->model('la_model');
		$id_usulan = $this->input->post('id_usulan');
		$id_dk_proyek = $this->input->post('id_dk_proyek');
		$id = $this->input->post('id');

		$isi2 = array(
		   				'id' 	=>		$this->input->post('id_dk_proyek'),
		   				'is_la'			=> "0",
		   				'is_la_update_at' => date('Y-m-d H:i:s'),
		   		);
		$hasil4 = $this->la_model->save_update($isi2);

		$isi3 = array(
		   				'id' 	=>		$this->input->post('id_usulan'),
		   				'is_LA'			=> "0",
		   				
		   		);

		    
		 $hasil5 = $this->la_model->update_LA($isi3);

	
		    
		 

		$this->la_model->hapus_usulan_fix($id);
		
    }

	public function hapus() {

		$this->load->model('la_model');
		$a = $this->input->post('id');
		
		$data['detail'] = $this->la_model->detail_proyek($a);
		$data['id_usulan'] = $this->input->post('id_usulan');
		

       $this->load->view('LA/hapus_la', $data);
       // /$this->load->view('templates/footer1');

     
    }

	public function tambah()
	{
		$this->load->model('dk_model');
		$this->load->model('Bluebook_model');
		$data['detail']= $this->dk_model->ambil_proyek_dk();

		
		$this->load->view('LA/la_tambah', $data);
		$this->load->view('templates/footer1'); 
		
	}

	public function detil()
	{

		$this->load->model('la_model');
		 $this->load->model('Usulan_model');
		 $this->load->model('Bluebook_model');
		 $this->load->model('dk_model');
		 $this->load->model('Greenbook_model');
                                                
		$a = $this->input->post('id');
		$data['detail'] = $this->la_model->detail_proyek($a);

	
		$this->load->view('LA/la_detail', $data);
		//$this->load->view('templates/footer1');
		
		
		
	}


}
	

