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

	public function last_gb()
	{
		$query = "SELECT id FROM irena_greenbook_proyek ORDER BY ID DESC LIMIT 1";


		$a = $this->db->query($query);

		return $a->row();
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

		public function detail_proyek($x)
	{
		$query = "SELECT * FROM irena_bluebook_proyek WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

		public function ambil_grafik_kl_per_bb($x)
	{
		$query = "SELECT irena_instansi_2.nama_instansi AS nama, SUM(IF(id_bluebook = '$x', nilai_pinjaman, 0)) AS total, irena_bluebook_proyek.id_instansi as id_instansi FROM irena_bluebook_proyek LEFT JOIN irena_instansi_2 ON irena_bluebook_proyek.id_instansi = irena_instansi_2.id GROUP BY id_instansi";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_lender_per_bb($x)
	{
		$query = "SELECT  irena_lender.lender AS lender, SUM(IF(id_bluebook = 2, nilai_pinjaman, 0)) AS total, irena_bluebook_proyek.id_lender AS id_lender
    		FROM irena_bluebook_proyek  LEFT JOIN irena_lender ON irena_bluebook_proyek.id_lender  = irena_lender.id GROUP BY id_lender";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_program_per_bb($x)
	{
		$query = "SELECT irena_program_pln.nama_program AS program, SUM(IF(irena_bluebook_proyek.id_bluebook = 2, nilai_pinjaman, 0)) AS total, irena_bluebook_proyek.id_program AS id_program FROM irena_bluebook_proyek LEFT JOIN irena_program_pln ON irena_bluebook_proyek.id_program = irena_program_pln.id GROUP BY id_program";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_sektor_per_bb($x)
	{
		$query = "SELECT irena_sektor.nama AS sektor, SUM(IF(irena_bluebook_proyek.id_bluebook = 2, nilai_pinjaman, 0)) AS total FROM irena_bluebook_proyek LEFT JOIN irena_sektor ON irena_bluebook_proyek.id_sektor = irena_sektor.id GROUP BY id_sektor";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_grafik_infra_per_bb($x)
	{
		$query = "SELECT irena_infra.nama AS nama, SUM(IF(irena_bluebook_proyek.id_bluebook = 2, nilai_pinjaman, 0)) AS total FROM irena_bluebook_proyek LEFT JOIN irena_infra ON irena_bluebook_proyek.infra = irena_infra.id GROUP BY nama";

		 $a= $this->db->query($query);

		return $a->result_array();
	}

		public function ambil_grafik_status_per_bb($x)
	{
		$query = "SELECT irena_status_umum.nama AS nama, SUM(IF(irena_bluebook_proyek.id_bluebook = 2, nilai_pinjaman, 0)) AS total FROM irena_bluebook_proyek LEFT JOIN irena_status_umum ON irena_bluebook_proyek.id_status = irena_status_umum.id GROUP BY id_status";

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

	public function tambahkeGB()
	{
		# code...
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

	public function kode_bluebook($x)
	{
		$query = "SELECT nama FROM irena_bluebook_kode WHERE id = '$x'";
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