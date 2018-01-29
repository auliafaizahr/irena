<?php
/**
	* Model : Hibah_model
	* Tabel terkait : irena_hibah_donor, irena_hibah_jenis, irena_hibah_log, irena_hibah_log_kategori, irena_hibah_proyek, irena_hibah_proyek_disb, irena_hibah_proyek_dok, irena_hibah_proyek_drkh, irena_hibah_proyek_drkh_pc
	* Author by Firman Perangin-angin
**/

class Hibah_model extends CI_Model 
{
	
	function usulan_tampil_semua_data()
	{
		$sql="SELECT * FROM irena_view_hibah_usulan_awal";
		return $this->db->query($sql);
	}
	
	function pilih_instansi()
	{
		$query = "SELECT * FROM irena_instansi ORDER BY nama ASC";
		return $this->db->query($query)->result();
	}
	
	function pilih_donor()
	{
		$query = "SELECT * FROM irena_hibah_donor ORDER BY nama ASC";
		return $this->db->query($query)->result();
	}
	
	function pilih_mata_uang()
	{
		$query = "SELECT * FROM irena_mata_uang ORDER BY nama ASC";
		return $this->db->query($query)->result();
	}
	
	function pilih_jenis()
	{
		$query = "SELECT * FROM irena_hibah_jenis ORDER BY nama ASC";
		return $this->db->query($query)->result();
	}
	
	function pilih_prioritas()
	{
		$query = "SELECT * FROM irena_prioritas ORDER BY nama ASC";
		return $this->db->query($query)->result();
	}
	
	function ambil_data_instansi_es_1_by_id_instansi($id)
	{
		 $query = "SELECT * FROM irena_instansi_eselon_satu WHERE id_instansi = '$id' ORDER BY nama ASC";
        return $this->db->query($query)->result();
	}
	
	function usulan_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_hibah_proyek', $data);
		}
		else
		{
			$this->db->insert('irena_hibah_proyek', $data);
		}		
	}
	
	function ambil_usulan_by_id($id)
	{
		$sql="SELECT * FROM irena_view_hibah_usulan_awal WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function usulan_hapus($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_hibah_proyek');
	}
	
	function ambil_instansi_by_id_eselon_satu($id)
	{
		$query = "
					SELECT
						irena_instansi_eselon_satu.id AS id_instansi_eselon_satu,
						irena_instansi_eselon_satu.nama AS nama_eselon_satu,
						irena_instansi.nama AS nama,
						irena_instansi.id AS id
					FROM
						irena_instansi
					INNER JOIN irena_instansi_eselon_satu ON irena_instansi.id = irena_instansi_eselon_satu.id_instansi 
					WHERE irena_instansi_eselon_satu.id = '$id'
		
		";
		return $this->db->query($query)->result();
	}
	
	function ambil_instansi_eselon_satu_by_id($id)
	{
		$query = "SELECT * FROM irena_instansi_eselon_satu WHERE id = '$id'";
		return $this->db->query($query)->result();
	}
	
	function ambil_donor_by_id($id)
	{
		$query = "SELECT * FROM irena_hibah_donor WHERE id = '$id'";
		return $this->db->query($query)->result();
	}
	
	function ambil_mata_uang_by_id($id)
	{
		$query = "SELECT * FROM irena_mata_uang WHERE id = '$id'";
		return $this->db->query($query)->result();
	}
	
	function ambil_jenis_by_id($id)
	{
		$query = "SELECT * FROM irena_hibah_jenis WHERE id = '$id'";
		return $this->db->query($query)->result();
	}
	
	
	
	function ambil_tabel_usulan_by_id($id)
	{
		$sql="SELECT * FROM irena_hibah_proyek WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function drkh_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_hibah_proyek_drkh', $data);
		}
		else
		{
			$this->db->insert('irena_hibah_proyek_drkh', $data);
		}		
	}
	
	//----------------------------------- LOG USULAN ----------------------------
	//----------------------------------- LOG USULAN ----------------------------
	//----------------------------------- LOG USULAN ----------------------------
	//----------------------------------- LOG USULAN ----------------------------
	//----------------------------------- LOG USULAN ----------------------------
	//----------------------------------- LOG USULAN ----------------------------
	
	
	function ambil_data_log_usulan_by_id_proyek($id)
	{
		$sql = "	SELECT * FROM irena_view_usulan_pln_log
					WHERE 
						id_proyek = '$id' 
					";
						
		return $this->db->query($sql);
	}
	
	function ambil_data_log_usulan_by_id($id)
	{
		$sql = "	SELECT * FROM irena_view_hibah_log
					WHERE 
						id = '$id' 
					";
						
		return $this->db->query($sql);
	}
	
	
	function pilih_log_kategori()
	{
		$query = "SELECT * FROM irena_hibah_log_kategori ORDER BY 'order' ASC";
		return $this->db->query($query)->result();
	}
	
	function ambil_log_kategori_by_id($id)
	{
		$query = "SELECT * FROM irena_hibah_log_kategori WHERE id = '$id'";
		return $this->db->query($query);
	}
	
	function lookup($keyword){ 
        $this->db->select('*')->from('irena_arsip'); 
        $this->db->like('no',$keyword,'after'); 
        $this->db->or_like('perihal',$keyword,'after'); 
        $query = $this->db->get();     
        return $query->result(); 
    } 
	
	function log_usulan_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id=$data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_hibah_log',$data);
		}
		else
		{
			$this->db->insert('irena_hibah_log',$data);
		}		
	}
	
	function log_usulan_hapus_data($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_hibah_log');
	}
	
//----------------------------------- SYARAT USULAN ----------------------------
//----------------------------------- SYARAT USULAN ----------------------------
//----------------------------------- SYARAT USULAN ----------------------------
//----------------------------------- SYARAT USULAN ----------------------------
//----------------------------------- SYARAT USULAN ----------------------------
//----------------------------------- SYARAT USULAN ----------------------------
	
	
	
	
	function dok_usulan_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_hibah_proyek_dok',$data);
		}
		else
		{
			$this->db->insert('irena_hibah_proyek_dok',$data);
		}
	}
	
	function ambil_dok_usulan_by_id($id)
	{
		$sql="SELECT * FROM irena_hibah_proyek_dok WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function dok_usulan_hapus_data($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_hibah_proyek_dok');
	}

//------------------------------------------ DRKH -------------------------------------------------------
//------------------------------------------ DRKH -------------------------------------------------------
//------------------------------------------ DRKH -------------------------------------------------------
//------------------------------------------ DRKG -------------------------------------------------------
	
	function ambil_proyek_drkh()
	{
		$sql="SELECT * FROM irena_view_hibah_drkh";
		return $this->db->query($sql);
	}
	
	function ambil_proyek_drkh_by_id($id)
	{
		$sql="SELECT * FROM irena_view_hibah_drkh WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function ambil_drkh_by_id($id)
	{
		$sql="SELECT * FROM irena_hibah_proyek_drkh WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function ambil_prioritas_by_id($id)
	{
		$query = "SELECT * FROM irena_prioritas WHERE id = '$id'";
		return $this->db->query($query)->result();
	}
	


	
	
	
	
}
?>