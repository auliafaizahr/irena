<?php
/**
	* Model : Perencanaan_model
	* Tujuan : menampilkan data perencanaan proyek
	* Table : proyek, instansi, instansi_eselon_satu, kategori
	* Dibuat oleh: Firman Perangin-angin (f.nangin23@gmail.com)
	* Dimodifikasi : Jumat, 29/01/2016
**/

class Program_bluebook_model extends CI_Model {
	
	public function ambil_per_bluebook()
	{
		$sql="SELECT *
		  	 FROM irena_program_pln
		  	 WHERE 
		  	 irena_bluebook_proyek.id_program = irena_program_pln.id_program";
		return $this->db->query($sql);
	}
	
	
				
}
?>