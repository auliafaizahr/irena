<?php
/**
	*This model is "proyek_model"
**/

class Welcome_model extends CI_Model {
	

	
	function v_lokasi_map($instansi, $dpp_sbsn, $provinsi)
	{
		if($instansi=="" AND $dpp_sbsn == "" AND $provinsi == ""){
			$this->db->select('*');
			$this->db->from('sbsn_view_lokasi_map');
			
		}elseif($dpp_sbsn<>"" AND $instansi=="" AND $provinsi ==""){
			$this->db->select('*');
			$this->db->from('sbsn_view_lokasi_map');
			$this->db->where('dpp_sbsn', $dpp_sbsn);
			
		}elseif($dpp_sbsn<>"" AND $instansi<>"" AND $provinsi ==""){
			$this->db->select('*');
			$this->db->from('sbsn_view_lokasi_map');
			$this->db->where('dpp_sbsn', $dpp_sbsn);
			$this->db->where('id_instansi', $instansi);
		
		}elseif($dpp_sbsn<>"" AND $instansi<>"" AND $provinsi <>""){
			$this->db->select('*');
			$this->db->from('sbsn_view_lokasi_map');
			$this->db->where('dpp_sbsn', $dpp_sbsn);
			$this->db->where('id_instansi', $instansi);
			$this->db->where('provinsi', $provinsi);
		//------
		}elseif($dpp_sbsn=="" AND $instansi<>"" AND $provinsi ==""){
			$this->db->select('*');
			$this->db->from('sbsn_view_lokasi_map');
			$this->db->where('id_instansi', $instansi);
			
		}elseif($dpp_sbsn=="" AND $instansi<>"" AND $provinsi <>""){
			$this->db->select('*');
			$this->db->from('sbsn_view_lokasi_map');
			$this->db->where('id_instansi', $instansi);
			$this->db->where('provinsi', $provinsi);
		//---
		}elseif($dpp_sbsn=="" AND $instansi=="" AND $provinsi <>""){
			$this->db->select('*');
			$this->db->from('sbsn_view_lokasi_map');
			$this->db->where('provinsi', $provinsi);
			
		}elseif($dpp_sbsn=="" AND $instansi<>"" AND $provinsi <>""){
			$this->db->select('*');
			$this->db->from('sbsn_view_lokasi_map');
			$this->db->where('provinsi', $provinsi);
			$this->db->where('id_instansi', $instansi);
			
		}elseif($dpp_sbsn<>"" AND $instansi=="" AND $provinsi <>""){
			$this->db->select('*');
			$this->db->from('sbsn_view_lokasi_map');
			$this->db->where('provinsi', $provinsi);
			$this->db->where('dpp_sbsn', $dpp_sbsn);
		}
		
		$query = $this->db->get();
		return $query;
	}
	
	function ambil_peta_per_proyek($id_proyek)
	{
		$sql="SELECT * FROM sbsn_view_lokasi_per_proyek WHERE id_proyek = '$id_proyek'";
		return $this->db->query($sql);
	}
	
	function detil_proyek($id_proyek)
	{
		$sql="SELECT * FROM sbsn_view_detil_proyek WHERE id_proyek = '$id_proyek'";
		return $this->db->query($sql);
	}
	
	function ambil_lokasi_per_monev($id_monev){
		$this->db->select('*');
		$this->db->from('sbsn_view_ambil_lokasi_per_monev');
		$this->db->where('id_monev', $id_monev);
		$query = $this->db->get();
		
		return $query;
	}
	
	function rekap_perencanaan_per_dpp()
	{
		$sql="SELECT * FROM sbsn_view_rekap_perencanaan_per_dpp";
		return $this->db->query($sql);
	}
	
	function rekap_penarikan_per_dpp()
	{
		$sql="SELECT * FROM sbsn_view_rekap_penarikan_per_dpp";
		return $this->db->query($sql);
	}
	
	function rekap_perencanaan_per_instansi()
	{
		$sql="SELECT * FROM sbsn_view_rekap_perencanaan_per_instansi";
		return $this->db->query($sql);
	}
	
	function rekap_penarikan_per_instansi()
	{
		$sql="SELECT * FROM sbsn_view_rekap_penarikan_per_instansi";
		return $this->db->query($sql);
	}
	
	function ambil_instansi()
	{
		$query = "SELECT * FROM sbsn_instansi ORDER BY nama";
		return $this->db->query($query)->result();
	}
	
	function ambil_data_instansi($id_instansi=null)
	{
		$sql="SELECT * FROM sbsn_instansi where id LIKE '%$id_instansi%'";
		return $this->db->query($sql);
	}
	
	function ambil_dpp_sbsn()
	{
		$query = "SELECT * FROM sbsn_kategori WHERE aktif = 1";
		return $this->db->query($query)->result();
	}
	
	function ambil_provinsi()
	{
		$query = "SELECT * FROM sbsn_provinsi ORDER BY nama";
		return $this->db->query($query)->result();
	}
	
	function ambil_long_lat_prov($id_provinsi)
	{
		$query = "SELECT * FROM sbsn_provinsi WHERE id = '$id_provinsi'";
		return $this->db->query($query)->result();
	}
	
	public function v_proyek($dpp_sbsn=null)
	{
		$sql="SELECT COUNT(proyek) AS jlh FROM sbsn_view_proyek WHERE dpp = '$dpp_sbsn'";
		return $this->db->query($sql);
	}
	
	
	function v_proyek_per_kategori()
	{
		$this->db->select('*');
		$this->db->from('v_proyek_per_kategori');
		$query = $this->db->get();
		
		if ($query->num_rows() > 0){
			return $query->result_array();
		}else{
			return 0;
		}
	}
	
	function v_pivot_dpp()
	{
		$this->db->select('*');
		$this->db->from('v_pivot_dpp');
		$query = $this->db->get();
		
		if ($query->num_rows() > 0){
			return $query->result_array();
		}else{
			return 0;
		}
	}
	
	
	function ambil_monev_per_idkabkota($id_kabkota){
		$this->db->select('*');
		$this->db->from('sbsn_view_ambil_monev_per_idkabkota');
		$this->db->where('id_kabkota', $id_kabkota);
		$this->db->order_by('alokasi', 'DESC');
		$query = $this->db->get();
		
		return $query;
	}
	
	function v_pivot_penarikan_per_instansi_2()
	{
		$this->db->select('*');
		$this->db->from('v_pivot_penarikan_per_instansi_2');
		$query = $this->db->get();
		
		if ($query->num_rows() > 0){
			return $query->result_array();
		}else{
			return 0;
		}
	}
	
	
	
}

?>