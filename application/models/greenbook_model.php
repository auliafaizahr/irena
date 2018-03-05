<?php
/**
	* Model : Usulan Model PHLN
	* Tujuan : Menampilkan dan menambahkan usulan PHLN ke database (dan atau greenbook atau bluebook)
	* Table : phln_usulan, phln_bluebook, phln_greenbook
	* Dibuat oleh: Faizah Aulia R
	* Dimodifikasi : 
**/

class Greenbook_model extends CI_Model {
	
	public function ambil_proyek_greenbook()
	{
		$this->db->select()->from('irena_greenbook_proyek');
		$query = $this->db->get();
		return $query->result_array();
	
	}

	public function hapus_dari_lokasi($a)
	{

		$this->db->where('id_gb_proyek', $a);
		return $this->db->delete('irena_gb_lokasi');
		
	}


	public function ambil_catatan($a)
	{
		 $query = "SELECT * FROM catatan_gb WHERE id_gb_proyek = '$a' ORDER BY waktu ASC";
        return $this->db->query($query)->result();
	}

	public function save_update($isi2)
	{
		if(array_key_exists('id', $isi2))
		{
			$id = $isi2['id'];
			unset($isi2['id']);
			$this->db->where('id_proyek_gb',$id);
			$this->db->update('irena_gb_layak', $isi2);
		}
		else
		{
			$this->db->insert('irena_gb_layak', $isi2);
		}		
	}

	public function ambil_user($a)
	{
		$query = "SELECT * FROM irena_user WHERE id = '$a'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	function gb_simpan_data_edit($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_greenbook_proyek', $data);
		}
		else
		{
			$this->db->insert('irena_greenbook_proyek', $data);
		}		
	}

		public function tambah_ke_DK($data)
	{
		
		if(array_key_exists('id', $data))
		{
			$id = $data['id_gb_proyek'];
			unset($data['id_gb_proyek']);
			$this->db->where('id_gb_proyek',$id);
			$this->db->update('irena_daftarkegiatan_proyek', $data);
		}
		else
		{
			$this->db->insert('irena_daftarkegiatan_proyek', $data);
		}		
			
	}

		public function tambah_ke_DK_layak($data)
	{
		
		if(array_key_exists('id', $data))
		{
			$id = $data['id_proyek_dk'];
			unset($data['id_proyek_dk']);
			$this->db->where('id_proyek_dk',$id);
			$this->db->update('irena_dk_layak', $data);
		}
		else
		{
			$this->db->insert('irena_dk_layak', $data);
		}		
			
	}

	


		function usulan_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id_proyek_gb',$id);
			$this->db->update('irena_gb_layak', $data);
		}
		else
		{
			$this->db->insert('irena_gb_layak', $data);
		}		
	}

	public function ambil_instansi_untuk_usulan($x)
	{
		$query = "SELECT nama_instansi FROM irena_instansi WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function last_dk()
	{
		$query = "SELECT id FROM irena_daftarkegiatan_proyek ORDER BY ID DESC LIMIT 1";


		$a = $this->db->query($query);

		return $a->row();
	}

	public function update_DK($data2)
	{
			$id = $data2['id'];
			unset($data2['id']);
			$this->db->where('id', $id);
			$this->db->update('irena_usulan_pln', $data2);
			
	}

	public function hapus_usulan_fix($a)
	{
		$this->db->where('id', $a);
		return $this->db->delete('irena_greenbook_proyek');
	}

	public function ambil_layak($x)
	{
		$query = "SELECT * FROM irena_gb_layak WHERE id_proyek_gb = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}


	public function detail_proyek($x)
	{
		$query = "SELECT * FROM irena_greenbook_proyek WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function kode_bluebook($x)
	{
		$query = "SELECT nama FROM irena_bluebook_kode WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function ambil_program_proyek($x)
	{
		
		$query = "SELECT nama_program FROM irena_program_pln WHERE id = '$x'";
		 $a= $this->db->query($query);
		return $a->row();
		
	}

	public function kode_greenbook($x)
	{
		$query = "SELECT nama FROM irena_greenbook_kode WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
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

	public function ambil_greenbook()
	{
		$query = "SELECT * FROM irena_greenbook_kode";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_sektor()
	{
		$query = "SELECT * FROM irena_sektor";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_kl_per_gb($x)
	{
		$query = "SELECT irena_instansi_2.nama_instansi AS nama, SUM(IF(id_greenbook = 1 , nilai_pinjaman, 0)) AS total, irena_greenbook_proyek.id_instansi as id_instansi FROM irena_greenbook_proyek LEFT JOIN irena_instansi_2 ON irena_greenbook_proyek.id_instansi = irena_instansi_2.id GROUP BY id_instansi HAVING total > 0 ";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_lender_per_gb($x)
	{
		$query = "SELECT irena_lender.lender AS lender, SUM(IF(id_greenbook = 1, nilai_pinjaman, 0)) AS total, irena_greenbook_proyek.id_lender AS id_lender FROM irena_greenbook_proyek LEFT JOIN irena_lender ON irena_greenbook_proyek.id_lender = irena_lender.id GROUP BY id_lender HAVING total > 0";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_program_per_gb($x)
	{
		$query = "SELECT irena_program_pln.nama_program AS program, SUM(IF(irena_greenbook_proyek.id_greenbook = 1, nilai_pinjaman, 0)) AS total, irena_greenbook_proyek.id_program AS id_program FROM irena_greenbook_proyek LEFT JOIN irena_program_pln ON irena_greenbook_proyek.id_program = irena_program_pln.id GROUP BY id_program HAVING total > 0";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_status_per_gb($x)
	{
		$query = "SELECT irena_status_umum.nama AS nama, SUM(IF(irena_greenbook_proyek.id_greenbook = 1, nilai_pinjaman, 0)) AS total FROM irena_greenbook_proyek LEFT JOIN irena_status_umum ON irena_greenbook_proyek.id_status = irena_status_umum.id GROUP BY id_status HAVING total > 0";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_infra_per_gb($x)
	{
		$query = "SELECT irena_infra.nama AS nama, SUM(IF(irena_greenbook_proyek.id_greenbook = 1, nilai_pinjaman, 0)) AS total FROM irena_greenbook_proyek LEFT JOIN irena_infra ON irena_greenbook_proyek.id_Infra = irena_infra.id GROUP BY nama HAVING total > 0";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_sektor_per_gb($x)
	{
		$query = "SELECT irena_sektor.nama AS sektor, SUM(IF(irena_greenbook_proyek.id_greenbook = 1, nilai_pinjaman, 0)) AS total FROM irena_greenbook_proyek LEFT JOIN irena_sektor ON irena_greenbook_proyek.id_sektor = irena_sektor.id GROUP BY id_sektor HAVING total > 0";

		 $a= $this->db->query($query);

		return $a->result_array();
	}








		public function ambil_provinsi()
	{
		$query = "SELECT * FROM irena_provinsi";
		 $a= $this->db->query($query);

		return $a->result_array();
	}


	public function ambil_instansi()
	{
		$query = "SELECT * FROM irena_instansi";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	
	public function ambil_program()
	{
		$query = "SELECT * FROM irena_program";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_arsip()
	{
		$query = "SELECT * FROM irena_arsip_file";
		 $a= $this->db->query($query);

		return $a->result_array();
	}


	public function instansi_pelaksana($x)
	{
		# code...
	}

	public function usulan_bluebook()
	{
		$query = "SELECT * FROM irena_bluebook_proyek";
		 $a= $this->db->query($query);

		return $a->result_array();
	}
}
?>