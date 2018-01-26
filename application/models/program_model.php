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



	public function detail_proyek($x)
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