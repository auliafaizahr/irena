<?php
/**
	* Model : Usulan Model PHLN
	* Tujuan : Menampilkan dan menambahkan usulan PHLN ke database (dan atau greenbook atau bluebook)
	* Table : phln_usulan, phln_bluebook, phln_greenbook
	* Dibuat oleh: Faizah Aulia R
	* Dimodifikasi : 
**/

class Program_model extends CI_Model {
	


	public function ambil_kode_bluebook($x)
	{
		$query = "SELECT nama FROM irena_bluebook_kode WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function ambil_kategori_program($x)
	{
		$query = "SELECT nama FROM irena_kategori_program WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function ambil_arsip()
	{
		$query = "SELECT * FROM irena_arsip_file";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_list_program()
	{
		$query = "SELECT * FROM irena_view_total_program";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_proyek_program($a, $b)
	{
		$query = "SELECT irena_bluebook_proyek.judul_proyek_eng AS judul_proyek, irena_bluebook_proyek.nilai_pinjaman AS pinjaman FROM irena_bluebook_proyek WHERE irena_bluebook_proyek.id_program = '$a' AND irena_bluebook_proyek.id_bluebook = '$b' ";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_list_program_by_id($x)
	{
		$query = "SELECT * FROM irena_view_total_program WHERE id = '$x' ";
		 $a= $this->db->query($query);

		return $a->row();
	}

	function program_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_program_pln', $data);
		}
		else
		{
			$this->db->insert('irena_program_pln', $data);
		}		
	}





	public function detail_program($x)
	{
		$query = "SELECT * FROM irena_program_pln WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function instansi_pelaksana($x)
	{
		# code...
	}

	public function instansi_semua()
	{
		$query = "SELECT * FROM irena_instansi";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function kode_bluebook_semua()
	{
		$query = "SELECT * FROM irena_bluebook_kode";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_semua_kategori()
	{
		$query = "SELECT * FROM irena_kategori_program";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_program()
	{
		$query = "SELECT * FROM irena_program_pln";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_semua_sektor()
	{
		$query = "SELECT * FROM irena_sektor";
		 $a= $this->db->query($query);

		return $a->result_array();
	}


}
?>