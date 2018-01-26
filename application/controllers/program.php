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
		$this->load->view('PLN/program', $data);
		$this->load->view('templates/footer'); 
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

	public function tambah_program()
	{
		$this->load->model('Program_model');		
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


