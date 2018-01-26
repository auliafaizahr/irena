<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

include 'function.php';


class Report_lender extends CI_Controller {

	function __construct()
	{
		parent::__construct();

		$this->load->library('parser');
		$this->load->model('program_bluebook_model');
	}
	
	public function index()
	{
			$this->load->helper('xcrud');
		$this->load->library('../controllers/usulan');
		$this->load->library('../models/program_bluebook_model');
		
		 $ci =& get_instance();
			
        
       
			$query = "SELECT * FROM irena_lender";
			$query2 = "SELECT * FROM irena_bluebook_proyek";
			$query3 = "SELECT * FROM irena_bluebook_kode";
			$query4 = "SELECT * FROM irena_program_pln";
			$query5 = "SELECT * FROM irena_greenbook_kode";
			$query6 = "SELECT * FROM irena_instansi";
			$query7 = "SELECT * FROM irena_sektor";
			$query8 = "SELECT * FROM irena_status_lender_pln";
			$query9 = "SELECT * FROM irena_status_lembaga";
			$query10 = "SELECT * FROM irena_provinsi";

			$data['lender'] = $this->db->query($query)->result();
			$data['kode'] = $this->db->query($query3)->result();
			$data['program'] = $this->db->query($query4)->result();
			$data['id_gb'] = $this->db->query($query5)->result();
			$data['instansi'] = $this->db->query($query6)->result();
			$data['sektor'] = $this->db->query($query7)->result();
			$data['stat_lender'] = $this->db->query($query8)->result();
			$data['lembaga'] = $this->db->query($query9)->result();
			$data['prov'] = $this->db->query($query10)->result();
			$lender           =   $this->input->post('lender');

			if(isset($_POST['filter_lender']) && $lender != '')
			{
				$xcrud2 = xcrud_get_instance();	
				;
				$xcrud2->table('irena_bluebook_proyek');
				$xcrud2->hide_button('add');
        		
        		$xcrud2->where('id_lender=',$lender);
        		$xcrud2->relation('id_instansi_pelaksana', 'irena_instansi', 'id', 'nama_instansi');
				$xcrud2->relation('id_instansi', 'irena_instansi', 'id', 'nama_instansi');
				$xcrud2->relation('id_eselon_1', 'irena_eselon_1', 'id', 'nama_eselon_1');
				$xcrud2->relation('id_program', 'irena_program_pln', 'id', 'nama_program');
				$xcrud2->relation('id_lender', 'irena_lender', 'id', 'lender');
				$xcrud2->relation('id_bluebook', 'irena_bluebook_kode', 'id', 'nama');

				$xcrud2->create_action('lihat_detail', 'lihat_detail_action');	
				$xcrud2->sum('nilai_hibah','align-center','{value}');
				
				$xcrud2->table_name('Daftar Bluebook');
				$xcrud2->columns('id_bluebook, id_program, id_instansi, judul_proyek(ID), id_lender',  false);
				
				 $data['isi2'] = $xcrud2->render();
				$this->load->view('templates/header'); 
				$this->load->view('PLN/lender', $data);
				$this->load->view('templates/footer'); 


			}else{
				$xcrud = xcrud_get_instance();	
				$xcrud->table('irena_bluebook_proyek');
		        $xcrud->table_name('Bluebook PLN');
				$xcrud->relation('id_instansi_pelaksana', 'irena_instansi', 'id', 'nama_instansi');
				$xcrud->relation('id_instansi', 'irena_instansi', 'id', 'nama_instansi');
				$xcrud->relation('id_eselon_1', 'irena_eselon_1', 'id', 'nama_eselon_1');
				$xcrud->relation('id_program', 'irena_program_pln', 'id', 'nama_program');
				$xcrud->relation('id_lender', 'irena_lender', 'id', 'lender');
				$xcrud->relation('id_bluebook', 'irena_bluebook_kode', 'id', 'nama');
				$xcrud->hide_button('add');
				$xcrud->unset_edit();
				$xcrud->unset_remove();

				$xcrud->create_action('lihat_detail', 'lihat_detail_action');	
				$xcrud->sum('nilai_pinjaman','align-center','{value}');
				
				$xcrud->table_name('Daftar Bluebook');
				$xcrud->columns('id_bluebook, id_program, id_instansi, judul_proyek(ID), id_lender, nilai_pinjaman',  false);
				 $data['isi2'] = $xcrud->render();
				 $this->load->view('templates/header'); 
			$this->load->view('PLN/lender', $data);
			$this->load->view('templates/footer'); 

			}

			
			
	}
	
	
	

	public function ambil_lender() {

		
		$this->load->helper('xcrud');
		//$this->load->library('../controllers/usulan');
		$this->load->library('../models/program_bluebook_model');
		$xcrud2 = xcrud_get_instance();	
				$lender =   $this->input->post('id_lender');
		
		if(isset($_POST['filter_lender']))
			{
				
				$xcrud2->table('irena_bluebook_proyek');
        		$xcrud2->table_name('Bluebook PLN');
        		$xcrud2->where('id_lender=','$lender');
        		$xcrud2->hide_button('add');
				
				 $data['isi2'] = $xcrud2->render();
				$this->load->view('templates/header'); 
				$this->load->view('PLN/lender', $data);
				$this->load->view('templates/footer'); 
		}
	}



	public function lihat_program()
	{
		
		$this->load->helper('xcrud');
		$this->load->library('model');
		//$a = $this->input->post('data-primary');
		
		//$a = $b;
		//$this->get_var('');

		
		
		$xcrud1 = xcrud_get_instance('xcrud1');
		$a = $this->uri->segment(3, 0);
		//$a = $postdata->get('data-primary'); 
		//$a = 1;
		$xcrud1->table('irena_bluebook_proyek');
		$xcrud1->where('id_bluebook =', $a);		
		$xcrud1->relation('id_instansi_pelaksana', 'irena_instansi', 'id', 'nama_instansi');
		$xcrud1->relation('id_instansi', 'irena_instansi', 'id', 'nama_instansi');
		$xcrud1->relation('id_eselon_1', 'irena_eselon_1', 'id', 'nama_eselon_1');
		$xcrud1->relation('id_program', 'irena_program_pln', 'id', 'nama_program');
		$xcrud1->relation('id_bluebook', 'irena_bluebook_kode', 'id', 'nama');

		$xcrud1->unset_edit();
		$xcrud1->unset_view();
		$xcrud1->unset_remove();
		$xcrud1->unset_csv();
		$xcrud1->unset_print();
		$xcrud1->hide_button('add');

		$xcrud1->columns('id_bluebook, id_program, id_instansi, judul_proyek(ID)',  false);

		$xcrud1->label(
			array(
				'id_bluebook'					=> 'Bluebook',
				'id_program'					=> 'Program',
				'id_instansi'					=> 'Instansi',
				'id_eselon_1'					=> 'Eselon 1'
			
				)
			);

		/*$a = $this->uri->segment(3);
		//$b = $xcrud->query("SELECT * FROM irena_bluebook_proyek WHERE id_bluebook='$a'");
		//$b = $this->db->query("SELECT * FROM irena_bluebook_proyek WHERE id_bluebook='$a'");
		$b = $this->program_bluebook_model->ambil_per_bluebook($a);*/
		/*$hasil = $b->result();
		$hitung = count($hasil);*/
		
		
		/*$data['baris'] = $hasil->num_rows();*/
/*
		foreach ($hasil as $isi => $value) {
			# code...
			var_dump($hasil[$isi]);
		}
		
*/
		
		//$data['content'] = $this->ambil_bluebook();
		//$this->load->view('templates/output', $data);
		echo $xcrud1->render();
		


	}

	public function FunctionName($value='')
	{
		# code...
	}

		public function ambil_proyek()
	{
		$this->load->helper('xcrud');
		$xcrud = xcrud_get_instance();	
		$xcrud->table('irena_usulan_pln');	
		$xcrud->columns('judul_proyek(ID)',  false);

		/*$xcrud->unset_edit();
		$xcrud->unset_view();
		$xcrud->unset_remove();
		$xcrud->unset_csv();*/
		$xcrud->unset_print();
		//$xcrud->hide_button('add');
		$xcrud->label(
			array(
				'judul_proyek(ID)'				=> 'Judul Proyek(ID)',
				)
			);

		$xcrud->create_action('tambah_bluebook', 'tambah_bluebook_action');

		$xcrud->button('#', 'tambah', 'fa fa-plus', 'xcrud-action', 

			array(
			'data-task' => 'action',
			'data-action' => 'tambah_bluebook',
			'data-primary' => '{id}',
			'data-instansi' => '{id_instansi}',
			'data-pelaksana' => '{id_instansi_pelaksana}',
			'data-eselon_1' => '{id_eselon_1}',
			'data-judul_id' => '{judul_proyek(ID)}',
			'data-judul_eng' => '{judul_proyek(eng)}',
			'data-dana_usulan' => '{dana_usulan}',
			'data-dana_hibah' => '{dana_hibah}',
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
			
			),
			'');


		return $xcrud->render();

	}
	
}
	
