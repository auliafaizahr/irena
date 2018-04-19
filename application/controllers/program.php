<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Program extends CI_Controller {


	function __construct()
	{
		parent::__construct();
		$this->load->library('parser');
		$this->load->model('Usulan_model');
	}
	
	public function index()
	{
			$this->load->view('templates/header'); 
			$this->load->view('PLN/program');
			$this->load->view('templates/footer'); 
	}

		public function tampilkan_program_list()
	{
		$this->load->model('hibah_model');
		$this->load->model('Usulan_model');
		$this->load->model('Program_model');
			$data['instansi'] = array();

			
			$data['data']= $this->Program_model->ambil_list_program();
			
			$data['lembaga']= $this->Usulan_model->ambil_instansi();
			$data['program']= $this->Usulan_model->ambil_program();
			$data['arsip'] = $this->Usulan_model->ambil_arsip();

			

		$data['dpp'] = $this->hibah_model->ambil_proyek_drkh();
		$this->load->view('Program/program_list', $data);
	}

	
	public function ambil_usulan() {
		
		$this->load->helper('xcrud');
		$xcrud5 = xcrud_get_instance('');		
        $xcrud5->table('irena_usulan_pln');

		$xcrud5->table_name('Usulan_PLN');
		
		$xcrud5->relation('id_instansi_pelaksana', 'irena_instansi', 'id', 'nama_instansi');
		$xcrud5->relation('id_instansi', 'irena_instansi', 'id', 'nama_instansi');
		$xcrud5->relation('id_eselon_1', 'irena_eselon_1', 'id', 'nama_eselon_1');
		$xcrud5->relation('id_program', 'irena_program', 'id', 'nama');

		$xcrud5->table_name('Usulan Pinjaman Luar Negeri');
		$xcrud5->columns('id_instansi, judul_proyek(ID), dana_usulan, durasi, dana_usulan, dana_pendamping, is_BB, is_GB, is_DK, is_LA, Files',  false);
		$xcrud5->column_width('id_instansi, judul_proyek(ID)', '200px');
		$xcrud5->column_width('dana_usulan', '50px');
		$xcrud5->create_action('show_desc2', 'show_desc2_action');	
		$xcrud5->fields('id_instansi, id_eselon_1, id_instansi_pelaksana, judul_proyek(ID), ruang_lingkup(ID), dana_usulan, dana_hibah, dana_pendamping, durasi, output, outcome', false, false, true);
		$xcrud5->column_callback('is_BB, is_GB, is_DK, is_LA', 'show_description');
		$xcrud5->sum('dana_usulan', 'align-center', '{value}');
		//$xcrud->column_callback('Files', 'show_desc2');
		//$xcrud->set_edit();

		$xcrud5->label(
			array(
				'id_instansi'					=> 'Instansi',
				'id_eselon_1'					=> 'Eselon 1',
				'id_instansi_pelaksana'			=> 'Instansi Pelaksana',
				'judul_proyek(ID)'				=> 'Judul Proyek(ID)',
				'ruang_lingkup(ID)'				=> 'Ruang Lingkup(ID)',
				'dana_usulan'					=> 'Pinjaman',
				'dana_hibah'					=> 'Dana Hibah',
				'dana_pendamping'				=> 'Dana Pendamping',
				'durasi'						=> 'Durasi',
				'output'						=> 'Output',
				'outcome'						=> 'Outcome',
				'is_BB'							=> 'Bluebook', 
				'is_GB'							=> 'Greenbook', 
				'is_DK'							=> 'DK', 
				'is_LA'							=> 'LA', 
				'Files'							=> 'Files', 
				)
			);

		//$xcrud3->links_label();

		
		return $xcrud5->render();
		//$data['isi'] = $this->ambil_proyek();
	
	}

	public function tampil_program()
	{	
		$this->load->model('Program_model');
		
		
		$data['instansi'] = array();

	
		$data['kategori']= $this->Program_model->ambil_semua_kategori();
		$data['sektor']= $this->Program_model->ambil_semua_sektor();
		$data['instansi']= $this->Program_model->instansi_semua();
		$data['kode']= $this->Program_model->kode_bluebook_semua();
		$data['data']= $this->Program_model->ambil_program();

		
		//$data['isi'] = $this->ambil_bb_untuk_gb();
		
		$this->load->view('templates/header'); 
		$this->load->view('Program/program_index', $data);
		$this->load->view('templates/footer'); 
	}

	public function edit() {

		$this->load->model('Usulan_model');
		$this->load->model('Greenbook_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Program_model');
		$a = $this->input->post('id');
		
		
		$data['lembaga']= $this->Usulan_model->ambil_instansi();
		$data['program']= $this->Usulan_model->ambil_program();
		$data['lokasi'] = $this->Usulan_model->ambil_lokasi();
		$data['sektor'] = $this->Greenbook_model->ambil_sektor();
		$data['status'] = $this->Bluebook_model->ambil_statusumum();
		$data['infra'] = $this->Usulan_model->ambil_infra();
		$data['detail'] = $this->Program_model->detail_program($a);
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['lembaga']= $this->Usulan_model->ambil_instansi();

		
		
		

       $this->load->view('Program/edit_program', $data);
       // /$this->load->view('templates/footer1');

     
    }

    function usulan_simpan()
	{
    	$this->load->model('Usulan_model');
    	$this->load->model('Program_model');

		$status = array('success' => false, 'messages' => array());


		$this->form_validation->set_rules("nama_program", "Nama Program ", "trim|required");
		$this->form_validation->set_rules("judul_eng", "Judul dalam Bahasa Inggris", "trim|required");
		$this->form_validation->set_rules("id_bluebook", "Kode Bluebook", "trim|required");
		$this->form_validation->set_rules("id_instansi", "Instansi", "trim|required");
		$this->form_validation->set_rules("latar_belakang_eng", "Latar Belakang", "trim|required");
		$this->form_validation->set_rules("ruang_lingkup_eng", "Ruang Lingkup", "trim|required");
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
				$id			= $this->input->post('id');
				
				
				$result 				= $this->Program_model->program_simpan_data($data);
			}elseif($this->uri->segment(3) == 'edit'){
				
				

				$result 		= $this->Program_model->program_simpan_data($data);
			}
			
		}

		echo json_encode($status);

	}

	   public function tambah_program()
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
		$data['status_lembaga']= $this->Bluebook_model->semua_status_lembaga();
		$data['status_lender']= $this->Bluebook_model->semua_status_lender();
		$data['bluebook']= $this->Bluebook_model->semua_bluebook();
		$data['greenbook']= $this->Greenbook_model->ambil_greenbook();
		$data['provinsi']= $this->Greenbook_model->ambil_provinsi();
		$data['sektor']= $this->Greenbook_model->ambil_sektor();
		
		$data['lender']= $this->Bluebook_model->semua_lender();
	


		$this->load->view('Program/tambah_program', $data);
	}



		public function detil()
	{

		$this->load->model('Usulan_model');
		$this->load->model('dk_model');
		$this->load->model('Greenbook_model');
		$this->load->model('Bluebook_model');
		$this->load->model('Program_model');
		$a = $this->input->post('id');
		//$data['a'] = $this->input->post('id');
		$id_bb = $this->input->post('id_bb');
		$data['detail'] = $this->Program_model->detail_program($a);
		$data['isi'] = $this->Program_model->ambil_list_program_by_id($a);
		$data['proyek'] = $this->Program_model->ambil_proyek_program($a, $id_bb);

		
		
		$this->load->view('Program/detail_program', $data);
		//$this->load->view('templates/footer1');
		
	}


	public function detail()
	{

		$this->load->model('Program_model');
		$this->load->model('program_model');
		$output = array();
		$data = $this->Program_model->detail_proyek($_POST["user_id"]);
		$a = $this->Program_model->ambil_kode_bluebook($data->id_bluebook);
		
		
		
			$output['kode_bb'] = $this->Program_model->ambil_kode_bluebook($data->id_bluebook)->nama;
			$output['kat_program'] = $this->Program_model->ambil_kategori_program($data->id_kategori)->nama;
			/*$output['judul_proyek_eng'] = $data->judul_proyek_eng;
			$output['ruang_lingkup_id'] = $data->ruang_lingkup_id;
			$output['ruang_lingkup_eng'] = $data->ruang_lingkup_eng;
			$output['durasi'] = $data->durasi;
			$output['tahun_pertama'] = $data->proyeksi_tahun_pertama_penarikan;
			$output['durasi'] = $data->durasi;
			$output['instansi_pengusul'] = $this->Bluebook_model->ambil_instansi_untuk_usulan($data->id_instansi)->nama_instansi;
			$output['instansi_pelaksana'] = $this->Bluebook_model->ambil_instansi_untuk_usulan($data->id_instansi_pelaksana)->nama_instansi;
			$output['lender'] = $this->Bluebook_model->lender($data->id_lender)->lender;
			$output['status_lender'] = $this->Bluebook_model->status_lender($data->id_status_lender)->status;
			$output['status_lembaga'] = $this->Bluebook_model->status_lembaga($data->id_status_lembaga)->status;
			$output['output'] = $data->output;
			$output['outcome'] = $data->outcome;
			$output['pinjaman'] = $data->nilai_pinjaman;
			$output['hibah'] = $data->nilai_hibah;
			$output['dana_pendamping'] = $data->dana_pendamping;

			
			$output['program'] = $this->Bluebook_model->ambil_program_untuk_detail($data->id_program)->nama_program;*/
			
			/*$output['judul_proyek'] = $data->judul_proyek_id;
			$output['judul_proyek'] = $data->judul_proyek_id;
			$output['judul_proyek'] = $data->judul_proyek_id;*/
		
		
		echo json_encode($output);
		
	}

	

	/*public function ambil_bb_untuk_gb()
	{
		$this->load->helper('xcrud');
		$xcrud = xcrud_get_instance();	
		$xcrud->table('irena_bluebook_proyek');	
		$xcrud->columns('judul_proyek(ID)',  false);

		$xcrud->unset_edit();
		$xcrud->unset_view();
		$xcrud->unset_remove();
		$xcrud->unset_csv();
		$xcrud->unset_print();
		$xcrud->hide_button('add');
		$xcrud->label(
			array(
				'judul_proyek(ID)'				=> 'Judul Proyek(ID)',
				)
			);

		$xcrud->create_action('tambah_greenbook', 'tambah_greenbook_action');

		$xcrud->button('#', 'tambah', 'fa fa-plus', 'xcrud-action', 

			array(
			'data-task' => 'action',
			'data-action' => 'tambah_greenbook',
			'data-primary' => '{id}',
			'data-instansi' => '{id_instansi}',
			'data-pelaksana' => '{id_instansi_pelaksana}',
			'data-eselon_1' => '{id_eselon_1}',
			'data-judul_id' => '{judul_proyek(ID)}',
			'data-judul_eng' => '{judul_proyek(eng)}',
			'data-dana_usulan' => '{nilai_usulan}',
			'data-dana_hibah' => '{nilai_hibah}',
			'data-durasi' => '{durasi}',
			'data-output' => '{output}',
			'data-outcome' => '{outcome}',
			'data-dana_pendamping' => '{dana_pendamping}',
			'data-tahun_usulan' => '{tahun_usulan}',
			'data-dana_usulan' => '{dana_usulan}',
			'data-id_program' => '{id_program}',
			'data-proyeksi' => '{proyeksi_tahun_pertama_penarikan}',
			'data-ruang_eng' => '{ruang_lingkup(eng)}',
			'data-ruang_id' => '{ruang_lingkup(ID)}',
			'data-id_usulan' => '{id_usulan}',
			
			),
			'');

		return $xcrud->render();

	}
	*/
}


