<?php
/**
	* Model : Perencanaan_model
	* Tujuan : menampilkan data perencanaan proyek
	* Table : proyek, instansi, instansi_eselon_satu, kategori
	* Dibuat oleh: Firman Perangin-angin (f.nangin23@gmail.com)
	* Dimodifikasi : Jumat, 29/01/2016
**/

class Perencanaan_model extends CI_Model {
	
	public function ambil_tahun_alokasi()
	{
		$sql="SELECT * FROM sbsn_kategori";
		return $this->db->query($sql);
	}
	
	public function grafik_rekap_perencanaan_per_alokasi()
	{
		$sql="SELECT * FROM sbsn_view_rekap_nilai_per_alokasi";
		return $this->db->query($sql);
	}
	
	public function grafik_rekap_perencanaan_per_instansi()
	{
		$sql="SELECT * FROM sbsn_view_rekap_nilai_per_kl";
		return $this->db->query($sql);
	}
	
	
	
	
	public function ambil_semua_penyerapan_per_id_monev($id_monev=null, $triwulan=null)
	{

		$sql="SELECT * FROM ambil_semua_penyerapan_per_id_monev WHERE id_monev = $id_monev and triwulan = $triwulan";
		return $this->db->query($sql);
	}
	
	function ambil_total_penyerapan_per_paket_kontrak_dan_triwulan($id_monev, $triwulan)
	{
		$sql="SELECT kode AS kode,  sum(nilai) AS nilai FROM ambil_semua_penyerapan_per_id_monev where triwulan <= $triwulan and id_monev = $id_monev GROUP BY kode";
		return $this->db->query($sql);
	}
	
	public function ambil_penyerapan_per_id($id)
    {
		$this->db->select('*');
		$this->db->from('penyerapan');
		$this->db->where('id', $id);
		return $this->db->get();
    }
	
	public function ambil_paket_kontrak_per_id($id)
    {
		$this->db->select('*');
		$this->db->from('paket_kontrak');
		$this->db->where('id', $id);
		return $this->db->get();
    }
	
	function combo_paket_kontrak($id_monev)
	{
		$this->db->select('*');
		$this->db->from('paket_kontrak');
		$this->db->where('id_monev', $id_monev);
		$this->db->order_by('paket_kontrak', 'ASC');
        
		$query = $this->db->get();
		
		return $query->result_array();
	}
	
	function tambah($data)
    {
		$insert = $this->db->insert('penyerapan', $data);
	    return $insert;
	}
	
	function ambil_id_monev_dari_paket_kontrak($id_paket_kontrak)
	{
		$sql = "SELECT id_monev FROM paket_kontrak WHERE id = $id_paket_kontrak";
		$data=$this->db->query($sql);		
		$row = $data->row(); 
		return $row->id_monev;
	}
	
	function edit_penyerapan($id, $data)
    {
		$id=$data['id'];
		unset($data['id']);
		$this->db->where('id', $id);
		$this->db->update('penyerapan', $data);
		$report = array();
		$report['error'] = $this->db->_error_number();
		$report['message'] = $this->db->_error_message();
		if($report !== 0){
			return true;
		}else{
			return false;
		}
	}
	
	function ambil_total_penyerapan_kum_per_id_kontrak($id_paket_kontrak, $triwulan)
	{
		$sql = "SELECT id_paket_kontrak, sum(nilai) AS total FROM ambil_data_penyerapan_per_id_monev WHERE triwulan <= $triwulan AND id_paket_kontrak = $id_paket_kontrak GROUP BY id_paket_kontrak";
		$data=$this->db->query($sql);		
		$row = $data->row(); 
		return $row->total;
	}
}
?>