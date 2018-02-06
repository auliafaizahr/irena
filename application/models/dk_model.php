<?php
/**
	* Model : Usulan Model PHLN
	* Tujuan : Menampilkan dan menambahkan usulan PHLN ke database (dan atau greenbook atau bluebook)
	* Table : phln_usulan, phln_bluebook, phln_greenbook
	* Dibuat oleh: Faizah Aulia R
	* Dimodifikasi : 
**/

class Dk_model extends CI_Model {
	
	public function ambil_proyek_dk()
	{
		$this->db->select()->from('irena_daftarkegiatan_proyek');
		$query = $this->db->get();
		return $query->result_array();
	
	}

	public function ambil_catatan($a)
	{
		 $query = "SELECT * FROM catatan_dk WHERE id_dk_proyek = '$a' ORDER BY waktu ASC";
        return $this->db->query($query)->result();
	}


	public function ambil_bb($x)
	{
		$query = "SELECT nama FROM irena_bluebook_kode WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function ambil_gb($x)
	{
		$query = "SELECT nama FROM irena_greenbook_kode WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function ambil_layak($x)
	{
		$query = "SELECT * FROM irena_dk_layak WHERE id_proyek_dk = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function update_LA($data2)
	{
			$id = $data2['id'];
			unset($data2['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_usulan_pln', $data2);
			
	}

		public function last_la()
	{
		$query = "SELECT id FROM irena_la_proyek ORDER BY ID DESC LIMIT 1";


		$a = $this->db->query($query);

		return $a->row();
	}

	public function hapus_usulan_fix($a)
	{
		$this->db->where('id', $a);
		return $this->db->delete('irena_daftarkegiatan_proyek');
	}


		function save_update($isi2)
	{
		if(array_key_exists('id', $isi2))
		{
			$id = $isi2['id'];
			unset($isi2['id']);
			$this->db->where('id_proyek_dk',$id);
			$this->db->update('irena_dk_layak', $isi2);
		}
		else
		{
			$this->db->insert('irena_dk_layak', $isi2);
		}		
	}






	public function ambil_proyek_gb()
	{
		$query = "SELECT * FROM irena_greenbook_proyek";
		 $a= $this->db->query($query);

		return $a->result_array();
	}


	public function ambil_instansi_untuk_usulan($x)
	{
		$query = "SELECT nama_instansi FROM irena_instansi_2 WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	function usulan_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id_proyek_dk',$id);
			$this->db->update('irena_dk_layak', $data);
		}
		else
		{
			$this->db->insert('irena_dk_layak', $data);
		}		
	}



	public function lender_untuk_proyek($x)
	{
		$query = "SELECT lender FROM irena_lender WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}


	public function ambil_program_proyek($x)
	{
		
		$query = "SELECT nama_program FROM irena_program_pln WHERE id = '$x'";
		 $a= $this->db->query($query);
		return $a->row();
		
		
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

	public function detail_proyek($x)
	{
		$query = "SELECT * FROM irena_daftarkegiatan_proyek WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}


	public function ambil_adm($x)
	{
		$query = "SELECT is_lengkap FROM irena_Usulan_adm WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function ambil_rekomen_BB($x)
	{
		$query = "SELECT is_usulkan FROM irena_usulkan_bb WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}
}
?>