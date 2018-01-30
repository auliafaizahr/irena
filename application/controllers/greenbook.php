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
		
		$data['lender']= $this->Bluebook_model->semua_lender();
		$data['program']= $this->Usulan_model->ambil_program();
		
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
		
			/*
			$status['success'] 	= false;
			$nilai_admin =$this->input->nilai_admin;
			$status['messages']['nilai_admin'] = $nilai_admin;
			*/

			$data = array(
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
		}

		echo json_encode($status);
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
		
			/*
			$status['success'] 	= false;
			$nilai_admin =$this->input->nilai_admin;
			$status['messages']['nilai_admin'] = $nilai_admin;
			*/
			
			
			//$data['nilai_admin_id']		= $this->session->userdata('id');
			$data['update_at']			= date('Y-m-d H:i:s');
			$data['update_by']			= $this->session->userdata('id');
			$data['id']					= $this->input->post('id');
			
			$data['is_layak']			= "1";
			$result 					= $this->Greenbook_model->usulan_simpan_data($data);
			$status['success'] 			= true;
			$data 						= $_POST;

			
			
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

	
		$this->load->view('greenbook/detail_gb', $data);
		//$this->load->view('templates/footer1');
		
		
		
	}

	 public function tambah_manual_input()
    {
    	$this->load->model('Usulan_model');
    	$this->load->model('Greenbook_model');

    	$data = array(
        'id_program'				=> $this->input->post('id_program'),
        'judul_proyek_id'			=> $this->input->post('judul_proyek_id'),
        'judul_proyek_eng'			=> $this->input->post('judul_proyek_eng'),
        'ruang_lingkup_id'			=> $this->input->post('ruang_lingkup_id'),
        'ruang_lingkup_eng'				=> $this->input->post('ruang_lingkup_eng'),
        'id_instansi'					=> $this->input->post('id_instansi'),
        'id_instansi_pelaksana'			=> $this->input->post('id_instansi_pelaksana'),
        'proyeksi_tahun_pertama_penarikan'			=> $this->input->post('proyeksi_tahun_pertama_penarikan'),
        'dana_usulan'				=> $this->input->post('dana_usulan'),
        'dana_hibah'				=> $this->input->post('dana_hibah'),
        'durasi'				=> $this->input->post('durasi'),
        'output'				=> $this->input->post('output'),
        'outcome'				=> $this->input->post('outcome'),
        'dana_pendamping'				=> $this->input->post('dana_pendamping'),
   		 );

    	$this->db->insert('irena_usulan_pln', $data);
/*
    	$query = "SELECT id FROM irena_usulan_layak ORDER BY ID DESC LIMIT 1";
    	$a = $this->db->query($query);
*/
    	$isi = array(
    			'id_usulan' 		=> $this->Usulan_model->last()->id,
    			
    		);

    	
    	$this->db->insert('irena_usulan_layak', $isi);
    	$this->db->insert('irena_usulan_adm', $isi);
    	$this->db->insert('irena_usulkan_bb', $isi);

    	return true;
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
		
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['status_lembaga']= $this->Bluebook_model->semua_status_lembaga();
		$data['status_lender']= $this->Bluebook_model->semua_status_lender();
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['greenbook']= $this->Greenbook_model->ambil_greenbook();
		
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
	

