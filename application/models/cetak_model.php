<?php
/**
	* Model : tutup_model
	* Tabel terkait : monev (dengan status tutup)
**/

class Cetak_model extends CI_Model {

	function rekap_perencanaan_per_dpp(){
		$sql="SELECT * FROM sbsn_view_rekap_perencanaan_per_dpp";
		return $this->db->query($sql);
	}
	
	function perencanaan_list_proyek_dpp(){
		$sql="SELECT
				sbsn_instansi.nama AS instansi,
				sbsn_kategori.nama AS dpp,
				sbsn_proyek.judul AS proyek,
				sbsn_proyek.nilai AS nilai
				FROM
					sbsn_proyek
					INNER JOIN sbsn_instansi ON sbsn_instansi.id = sbsn_proyek.id_instansi
					INNER JOIN sbsn_kategori ON sbsn_kategori.id = sbsn_proyek.id_kategori
				WHERE
				sbsn_kategori.aktif = 1
				ORDER BY
				sbsn_kategori.id ASC
				";
		return $this->db->query($sql);
	}

    
	
	
}
?>