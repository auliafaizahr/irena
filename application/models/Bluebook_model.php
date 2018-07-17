<?php
/**
	* Model : Usulan Model PHLN
	* Tujuan : Menampilkan dan menambahkan usulan PHLN ke database (dan atau greenbook atau bluebook)
	* Table : phln_usulan, phln_bluebook, phln_greenbook
	* Dibuat oleh: Faizah Aulia R
	* Dimodifikasi : 
**/

class Bluebook_model extends CI_Model {
	
	public function ambil_proyek_bluebook()
	{
		$this->db->select()->from('irena_bluebook_proyek');
		$query = $this->db->get();
		return $query->result_array();
	
	}

	public function ambil_dok_bb_by_id_proyek($x)
	{
		$sql = "SELECT * FROM irena_view_usulan_pln_dok WHERE id_proyek = '$x' ";
		return $this->db->query($sql);
	}

	public function ambil_proyek_berdasarkan_lokasi($x)
	{
		$sql = "SELECT * FROM irena_view_bb_lokasi WHERE id_lokasi = '$x' ";
		return $this->db->query($sql)->result_array();
	}

	public function hapus_dari_lokasi($a)
	{

		$this->db->where('id_bb_proyek', $a);
		return $this->db->delete('irena_bb_lokasi');
		
	}

	public function hapus_dari_prov($a)
	{

		$this->db->where('id_bb_proyek', $a);
		return $this->db->delete('irena_bb_prov');
		
	}


	public function hapus_dari_kabkota($a)
	{

		$this->db->where('id_bb_proyek', $a);
		return $this->db->delete('irena_bb_kabkota');
		
	}


	

		function bb_simpan_data_edit($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_bluebook_proyek', $data);
		}
		else
		{
			$this->db->insert('irena_bluebook_proyek', $data);
		}		
	}

		function bb_layak_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id_proyek_bb',$id);
			$this->db->update('irena_bb_layak', $data);
		}
		else
		{
			$this->db->insert('irena_bb_layak', $data);
		}		
	}


	public function ambil_catatan($a)
	{
		 $query = "SELECT * FROM catatan_bb WHERE id_bb_proyek = '$a' ORDER BY waktu ASC";
        return $this->db->query($query)->result();
	}


function usulan_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id_proyek_bb',$id);
			$this->db->update('irena_bb_layak', $data);
		}
		else
		{
			$this->db->insert('irena_bb_layak', $data);
		}		
	}

	function save_update($data2)
	{
		if(array_key_exists('id', $data2))
		{
			$id = $data2['id'];
			unset($data2['id']);
			$this->db->where('id_proyek_bb',$id);
			$this->db->update('irena_bb_layak', $data2);
		}
		else
		{
			$this->db->insert('irena_bb_layak', $data2);
		}		
	}


	public function update_GB($data2)
	{
			$id = $data2['id'];
			unset($data2['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_usulan_pln', $data2);
			
	}




	public function ambil_usulan()
	{
		$query = "SELECT * FROM irena_usulan_layak WHERE is_layak = '1'";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_judul($x)
	{
		$query = "SELECT judul_proyek_id FROM irena_usulan_pln WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function total_kegiatan_bb($x)
	{
		$query = "SELECT COUNT(IF(irena_bluebook_proyek.id_bluebook = '$x', irena_bluebook_proyek.id, NULL)) AS total_kegiatan FROM irena_bluebook_proyek";
		 $a= $this->db->query($query);

		return $a->row()->total_kegiatan;
	}

	public function total_nilai_bb($x)
	{
		$query = "SELECT SUM(IF(irena_bluebook_proyek.id_bluebook = '$x', irena_bluebook_proyek.nilai_pinjaman, 0)) AS total_nilai FROM irena_bluebook_proyek JOIN irena_usulan_pln ON irena_usulan_pln.id = irena_bluebook_proyek.id_usulan";
		 $a= $this->db->query($query);

		return $a->row()->total_nilai;
	}

	public function total_kegiatan_la($x)
	{
		$query = "SELECT COUNT(IF(irena_bluebook_proyek.id_bluebook = '$x' AND irena_usulan_pln.is_LA = 1, irena_bluebook_proyek.id, NULL)) AS total_kegiatan FROM irena_bluebook_proyek JOIN irena_usulan_pln ON irena_usulan_pln.id = irena_bluebook_proyek.id_usulan";
		 $a= $this->db->query($query);

		return $a->row()->total_kegiatan;
	}

		public function total_nilai_la($x)
	{
		$query = "SELECT SUM(IF(irena_bluebook_proyek.id_bluebook = '$x' AND irena_usulan_pln.is_LA = 1, irena_bluebook_proyek.nilai_pinjaman, 0)) AS total_nilai FROM irena_bluebook_proyek JOIN irena_usulan_pln ON irena_usulan_pln.id = irena_bluebook_proyek.id_usulan";
		 $a= $this->db->query($query);

		return $a->row()->total_nilai;
	}


		public function detail_proyek($x)
	{
		$query = "SELECT * FROM irena_bluebook_proyek WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function detail_proyek_by_usulan($x)
	{
		$query = "SELECT * FROM irena_bluebook_proyek WHERE id_usulan = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

		public function ambil_grafik_kl_per_bb($x)
	{
		$query = "SELECT irena_instansi_2.nama_instansi AS nama, SUM(IF(id_bluebook = '$x', nilai_pinjaman, 0)) AS total, irena_bluebook_proyek.id_instansi as id_instansi FROM irena_bluebook_proyek LEFT JOIN irena_instansi_2 ON irena_bluebook_proyek.id_instansi = irena_instansi_2.id GROUP BY id_instansi HAVING total > 0";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_lender_per_bb($x)
	{
		$query = "SELECT  irena_lender.lender AS lender, SUM(IF(id_bluebook = '$x', nilai_pinjaman, 0)) AS total, irena_bluebook_proyek.id_lender AS id_lender
    		FROM irena_bluebook_proyek  LEFT JOIN irena_lender ON irena_bluebook_proyek.id_lender  = irena_lender.id GROUP BY id_lender HAVING total > 0";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function FunctionName($value='')
	{
		if ($id_program != "") {
			
			if ($id_lender != "" ) {
				
				if ($id_sektor != "") {
					
					if ($id_status !=  "") {
						
						if ($id_instansi != "") {
							//semua syarat terisi
						}

					}elseif (condition) {
						/*CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW irena_bb_gabung_view AS SELECT irena_bluebook_proyek.id AS id, irena_bluebook_proyek.id_bluebook AS id_bluebook,  irena_bluebook_kode.nama AS bluebook, irena_bluebook_proyek.id_program AS id_program, irena_program_pln.nama_program AS program, irena_bluebook_proyek.id_instansi AS id_instansi, irena_instansi_2.nama_instansi AS instansi, irena_bluebook_proyek.id_instansi_pelaksana AS instansi_pelaksana, irena_bluebook_proyek.judul_proyek_id AS judul_proyek, irena_bluebook_proyek.id_status AS id_status, irena_status_umum.nama AS status_proyek, irena_bluebook_proyek.id_lender AS id_lender, irena_lender.lender AS lender, irena_bluebook_proyek.id_sektor AS id_sektor, irena_sektor.nama AS sektor, irena_bluebook_proyek.infra AS infra, irena_bluebook_proyek.nilai_pinjaman AS pinjaman FROM irena_bluebook_proyek JOIN irena_program_pln ON irena_bluebook_proyek.id_program = irena_program_pln.id  JOIN irena_lender ON irena_bluebook_proyek.id_lender = irena_lender.id JOIN irena_instansi_2 ON irena_bluebook_proyek.id_instansi = irena_instansi_2.id JOIN irena_status_umum on irena_bluebook_proyek.id_status = irena_status_umum.id JOIN irena_sektor on irena_bluebook_proyek.id_sektor = irena_sektor.id JOIN irena_bluebook_kode on irena_bluebook_proyek.id_bluebook = irena_bluebook_kode.id


						CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW irena_gb_gabung_view AS SELECT irena_greenbook_proyek.id AS id, irena_greenbook_proyek.id_greenbook AS id_greenbook,  irena_greenbook_kode.nama AS greenbook, irena_greenbook_proyek.id_program AS id_program, irena_program_pln.nama_program AS program, irena_greenbook_proyek.id_instansi AS id_instansi, irena_instansi_2.nama_instansi AS instansi, irena_greenbook_proyek.instansi_pelaksana AS instansi_pelaksana, irena_greenbook_proyek.judul_proyek_id AS judul_proyek, irena_greenbook_proyek.id_status AS id_status, irena_status_umum.nama AS status_proyek, irena_greenbook_proyek.id_lender AS id_lender, irena_lender.lender AS lender, irena_greenbook_proyek.id_sektor AS id_sektor, irena_sektor.nama AS sektor, irena_greenbook_proyek.id_Infra AS infra, irena_greenbook_proyek.nilai_pinjaman AS pinjaman FROM irena_greenbook_proyek JOIN irena_program_pln ON irena_greenbook_proyek.id_program = irena_program_pln.id  JOIN irena_lender ON irena_greenbook_proyek.id_lender = irena_lender.id JOIN irena_instansi_2 ON irena_greenbook_proyek.id_instansi = irena_instansi_2.id JOIN irena_status_umum on irena_greenbook_proyek.id_status = irena_status_umum.id JOIN irena_sektor on irena_greenbook_proyek.id_sektor = irena_sektor.id JOIN irena_greenbook_kode on irena_greenbook_proyek.id_greenbook = irena_greenbook_kode.id */
					}
				}
			}
		}
	}



	public function ambil_grafik_lender_per_bb_program($x)
	{
		$query = "SELECT  irena_lender.lender AS lender, SUM(IF(id_bluebook = 1 AND irena_bluebook_proyek.id_program = 6, nilai_pinjaman, 0)) AS total, irena_bluebook_proyek.id_lender AS id_lender
    		FROM irena_bluebook_proyek  LEFT JOIN irena_lender ON irena_bluebook_proyek.id_lender  = irena_lender.id GROUP BY id_lender HAVING total > 0";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_program_per_bb($x)
	{
		$query = "SELECT irena_program_pln.nama_program AS program, SUM(IF(irena_bluebook_proyek.id_bluebook = '$x', nilai_pinjaman, 0)) AS total, irena_bluebook_proyek.id_program AS id_program FROM irena_bluebook_proyek LEFT JOIN irena_program_pln ON irena_bluebook_proyek.id_program = irena_program_pln.id GROUP BY id_program HAVING total > 0";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_program_untuk_prov($x)
	{
		$query = "SELECT irena_program_pln.nama_program AS program, SUM(IF(irena_bluebook_proyek.id_bluebook = '$x', nilai_pinjaman, 0)) AS total, irena_bluebook_proyek.id_program AS id_program FROM irena_bluebook_proyek LEFT JOIN irena_program_pln ON irena_bluebook_proyek.id_program = irena_program_pln.id GROUP BY id_program HAVING total > 0";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_sektor_per_bb($x)
	{
		$query = "SELECT irena_sektor.nama AS sektor, SUM(IF(irena_bluebook_proyek.id_bluebook = '$x', nilai_pinjaman, 0)) AS total FROM irena_bluebook_proyek LEFT JOIN irena_sektor ON irena_bluebook_proyek.id_sektor = irena_sektor.id GROUP BY id_sektor HAVING total > 0";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_infra_per_bb($x)
	{
		$query = "SELECT irena_infra.nama AS nama, SUM(IF(irena_bluebook_proyek.id_bluebook = '$x', nilai_pinjaman, 0)) AS total FROM irena_bluebook_proyek LEFT JOIN irena_infra ON irena_bluebook_proyek.infra = irena_infra.id GROUP BY nama HAVING total > 0";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

		public function ambil_grafik_status_per_bb($x)
	{
		$query = "SELECT irena_status_umum.nama AS nama, SUM(IF(irena_bluebook_proyek.id_bluebook = '$x', nilai_pinjaman, 0)) AS total FROM irena_bluebook_proyek LEFT JOIN irena_status_umum ON irena_bluebook_proyek.id_status = irena_status_umum.id GROUP BY id_status HAVING total > 0";

		 $a= $this->db->query($query);

		return $a->result_array();
	}



	public function ambil_user($x)
	{
		$query = "SELECT * FROM irena_user WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function ambil_layak($x)
	{
		$query = "SELECT * FROM irena_bb_layak WHERE id_proyek_bb = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

		public function tambah_ke_GB($data)
	{
		
		if(array_key_exists('id', $data))
		{
			$id = $data['id_bb_proyek'];
			unset($data['id_bb_proyek']);
			$this->db->where('id_bb_proyek',$id);
			$this->db->update('irena_greenbook_proyek', $data);
		}
		else
		{
			$this->db->insert('irena_greenbook_proyek', $data);
		}		
			
	}

		public function tambah_ke_GB_layak($data)
	{
		
		if(array_key_exists('id', $data))
		{
			$id = $data['id_proyek_gb'];
			unset($data['id_proyek_gb']);
			$this->db->where('id_proyek_gb',$id);
			$this->db->update('irena_gb_layak', $data);
		}
		else
		{
			$this->db->insert('irena_gb_layak', $data);
		}		
			
	}

	public function last_gb()
	{
		$query = "SELECT id FROM irena_greenbook_proyek ORDER BY ID DESC LIMIT 1";


		$a = $this->db->query($query);

		return $a->row();
	}


	public function ambil_instansi_untuk_usulan($x)
	{
		$query = "SELECT nama_instansi FROM irena_instansi_2 WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function semua_lender()
	{
		
		$query = "SELECT * FROM irena_lender";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_statusumum()
	{
		
		$query = "SELECT * FROM irena_status_umum";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

		public function ambil_sektor()
	{
		
		$query = "SELECT * FROM irena_sektor";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function kode_bluebook($x)
	{
		$query = "SELECT nama FROM irena_bluebook_kode WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

		public function kode_greenbook($x)
	{
		$query = "SELECT nama FROM irena_greenbook_kode WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}


	public function semua_status_lender()
	{
		$query = "SELECT * FROM irena_status_lender_pln";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function semua_bluebook()
	{
		$query = "SELECT * FROM irena_bluebook_kode";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function semua_status_lembaga()
	{
		$query = "SELECT * FROM irena_status_lembaga";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function status_lender($x)
	{
		$query = "SELECT status FROM irena_status_lender_pln WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function status_lembaga($x)
	{
		$query = "SELECT status FROM irena_status_lembaga WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function lender($x)
	{
		$query = "SELECT lender FROM irena_lender WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function delete($x)
	{
		$query = "DELETE FROM irena_bluebook_proyek WHERE id='$x' ";
		 $a= $this->db->query($query);

		return 0;
	}

	public function ambil_instansi()
	{
		$query = "SELECT * FROM irena_instansi_2";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_program()
	{
		$query = "SELECT * FROM irena_program_pln";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_arsip()
	{
		$query = "SELECT * FROM irena_arsip_file";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function hapus_usulan_fix($a)
	{
		$this->db->where('id', $a);
		return $this->db->delete('irena_bluebook_proyek');
	}

	public function detil_proyek($user_id)
	{
		$query = "SELECT * FROM irena_greenbook_proyek WHERE id = '$user_id'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function instansi_pelaksana($x)
	{
		# code...
	}

	public function ambil_program_untuk_detail($x)
	{
		$query = "SELECT nama_program FROM irena_program_pln WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}
}
?>