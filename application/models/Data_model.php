<?php
/**
	* Model : data_model
	* Tabel terkait : monev (dengan status tutup)
**/

class Data_model extends CI_Model 
{
	
	function instansi_list()
	{
		$sql = "	
				SELECT 
					irena_instansi.id AS id,
					irena_instansi.nama AS nama,
					irena_instansi.singkatan AS singkatan, 
					irena_instansi.aktif AS aktif, 
					irena_instansi.update_date AS update_date, 
					irena_user.nama_panggilan AS nama_panggilan
				FROM 
					irena_instansi 
				INNER JOIN
					irena_user ON irena_instansi.update_by = irena_user.id 
				";
					
		return $this->db->query($sql);
	}
	
	function instansi_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_instansi', $data);
		}
		else
		{
			$this->db->insert('irena_instansi', $data);
		}		
	}
	
	function ambil_tabel_instansi_by_id($id)
	{
		$sql="SELECT * FROM irena_instansi WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function instansi_hapus_data($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_instansi');
	}
	
	
	
	
	
	
	
	
	function instansi_eselon_satu_list()
	{
		$sql = "	
				SELECT 
					irena_instansi_eselon_satu.id AS id,
					irena_instansi_eselon_satu.nama AS nama,
					irena_instansi.singkatan AS singkatan, 
					irena_instansi_eselon_satu.update_date AS update_date, 
					irena_user.nama_panggilan AS nama_panggilan
				FROM 
					irena_instansi_eselon_satu 
				INNER JOIN
					irena_instansi ON irena_instansi_eselon_satu.id_instansi = irena_instansi.id 
				INNER JOIN
					irena_user ON irena_instansi_eselon_satu.update_by = irena_user.id 
				";
					
		return $this->db->query($sql);
	}
	
	function instansi_eselon_satu_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_instansi_eselon_satu', $data);
		}
		else
		{
			$this->db->insert('irena_instansi_eselon_satu', $data);
		}		
	}
	
	function ambil_tabel_instansi_eselon_satu_by_id($id)
	{
		$sql="SELECT * FROM irena_instansi_eselon_satu WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function instansi_eselon_satu_hapus_data($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_instansi_eselon_satu');
	}
	
	function pilih_instansi()
	{
		$query = "SELECT * FROM irena_instansi ORDER BY nama ASC";
		return $this->db->query($query)->result();
	}
	
	
	
	
	
	
	
	function donor_list()
	{
		$sql = "	
				SELECT 
					irena_hibah_donor.id AS id,
					irena_hibah_donor.nama AS nama,
					irena_hibah_donor.keterangan AS keterangan,
					irena_hibah_donor.update_date AS update_date, 
					irena_hibah_donor.tampilkan AS tampilkan, 
					irena_user.nama_panggilan AS nama_panggilan
				FROM 
					irena_hibah_donor 
				INNER JOIN
					irena_user ON irena_hibah_donor.update_by = irena_user.id 
				";
					
		return $this->db->query($sql);
	}
	
	function donor_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_hibah_donor', $data);
		}
		else
		{
			$this->db->insert('irena_hibah_donor', $data);
		}		
	}
	
	function ambil_tabel_donor_by_id($id)
	{
		$sql="SELECT * FROM irena_hibah_donor WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function donor_hapus_data($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_hibah_donor');
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	function drkh_list()
	{
		$sql = "	
				SELECT 
					irena_hibah_jenis.id AS id,
					irena_hibah_jenis.nama AS nama,
					irena_hibah_jenis.keterangan AS keterangan,
					irena_hibah_jenis.update_date AS update_date, 
					irena_hibah_jenis.aktif AS aktif, 
					irena_user.nama_panggilan AS nama_panggilan
				FROM 
					irena_hibah_jenis 
				INNER JOIN
					irena_user ON irena_hibah_jenis.update_by = irena_user.id 
				";
					
		return $this->db->query($sql);
	}
	
	function drkh_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_hibah_jenis', $data);
		}
		else
		{
			$this->db->insert('irena_hibah_jenis', $data);
		}		
	}
	
	function ambil_tabel_drkh_by_id($id)
	{
		$sql="SELECT * FROM irena_hibah_jenis WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function drkh_hapus_data($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_hibah_jenis');
	}
	
	
	
	
	
	
	
	
	
	
	function dpp_list()
	{
		$sql = "	
				SELECT 
					irena_sbsn_dpp.id AS id,
					irena_sbsn_dpp.nama AS nama,
					irena_sbsn_dpp.keterangan AS keterangan,
					irena_sbsn_dpp.update_date AS update_date, 
					irena_sbsn_dpp.aktif AS aktif, 
					irena_user.nama_panggilan AS nama_panggilan
				FROM 
					irena_sbsn_dpp 
				INNER JOIN
					irena_user ON irena_sbsn_dpp.update_by = irena_user.id 
				";
					
		return $this->db->query($sql);
	}
	
	function dpp_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_sbsn_dpp', $data);
		}
		else
		{
			$this->db->insert('irena_sbsn_dpp', $data);
		}		
	}
	
	function ambil_tabel_dpp_by_id($id)
	{
		$sql="SELECT * FROM irena_sbsn_dpp WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function dpp_hapus_data($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_sbsn_dpp');
	}
	
	
	
	
	
	
	
	
	
	
	function kat_sbsn_list()
	{
		$sql = "	
				SELECT 
					irena_sbsn_kategori_proyek.id AS id,
					irena_sbsn_kategori_proyek.nama AS nama,
					irena_sbsn_kategori_proyek.keterangan AS keterangan,
					irena_sbsn_kategori_proyek.update_date AS update_date, 
					irena_sbsn_kategori_proyek.aktif AS aktif, 
					irena_user.nama_panggilan AS nama_panggilan
				FROM 
					irena_sbsn_kategori_proyek 
				INNER JOIN
					irena_user ON irena_sbsn_kategori_proyek.update_by = irena_user.id 
				";
					
		return $this->db->query($sql);
	}
	
	function kat_sbsn_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_sbsn_kategori_proyek', $data);
		}
		else
		{
			$this->db->insert('irena_sbsn_kategori_proyek', $data);
		}		
	}
	
	function ambil_tabel_kat_sbsn_by_id($id)
	{
		$sql="SELECT * FROM irena_sbsn_kategori_proyek WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function kat_sbsn_hapus_data($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_sbsn_kategori_proyek');
	}
	
	
	
	
	
	
	
	
	
	
	
	
	function user_list()
	{
		$sql = "	
				SELECT 
					irena_user.id 				AS id,
					irena_user.email 			AS email,
					irena_user.nama_depan 		AS nama_depan,
					irena_user.nama_belakang 	AS nama_belakang, 
					irena_user.nama_panggilan 	AS nama_panggilan, 
					irena_user.tgl_lahir 		AS tgl_lahir, 
					irena_user.foto				AS foto,
					irena_user.no_hp 			AS no_hp,
					irena_user.aktif			AS aktif, 
					irena_user_level.nama 		AS nama_level,
					b.nama_panggilan			AS nama_panggilan_
				FROM 
					irena_user 
				INNER JOIN 
					irena_user_level ON irena_user_level.id = irena_user.id_user_level
				INNER JOIN irena_user as b ON b.id = irena_user.update_by 
				ORDER BY irena_user.update_date DESC
				";
					
		return $this->db->query($sql);
	}
	
	function user_simpan_data($data)
	{
		unset($data['password_conf']);
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_user', $data);
		}
		else
		{
			$this->db->insert('irena_user', $data);
		}		
	}
	
	function ambil_tabel_user_by_id($id)
	{
		$sql="SELECT * FROM irena_user WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function user_hapus_data($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_user');
	}
	
	function pilih_user_level()
	{
		$query = "SELECT * FROM irena_user_level ORDER BY nama ASC";
		return $this->db->query($query)->result();
	}
	
	function cek_email($email)
	{
		$sql = "SELECT * FROM irena_user WHERE email = '$email'";
		return $this->db->query($sql);
	}
	
	function ambil_user_level_by_id($id)
	{
		$query = "SELECT * FROM irena_user_level WHERE id = '$id'";
		return $this->db->query($query)->result();
	}
	
	
	
	
	
	
	
	
}
?>