<?php
/**
	* Model : tutup_model
	* Tabel terkait : monev (dengan status tutup)
**/

class Dashboard_model extends CI_Model {
	
	function ambil_ulang_tahun($bulan){
		$sql="SELECT * FROM irena_user WHERE DATE_FORMAT(tgl_lahir, '%m') = '$bulan' ORDER BY tgl_lahir ASC";
		return $this->db->query($sql);
	}
	
	function ambil_disposisi_per_user($id_user){
		$sql="SELECT * FROM irena_view_disposisi_internal WHERE id_user = '$id_user'";
		return $this->db->query($sql);
	}
	
	function ambil_lampiran_per_id($id){
		/*
		$sql="SELECT * FROM irena_arsip_lampiran WHERE id_arsip = '$id'";
		return $this->db->query($sql);
		*/
		
		$this->db->select('*');
		$this->db->from('irena_arsip_lampiran');
		$this->db->where('id_arsip', $id);
		
		$query = $this->db->get();
		
		if($query->num_rows() > 0){
			return $query->result();
		}else{
			return false;
		}
	}
	
	
	function ambil_semua_proyek_sbsn($keyword)
	{
		$sql="SELECT 'sbsn' as sumber, judul as judul, nilai as nilai FROM irena_sbsn_proyek WHERE judul LIKE '%$keyword%'";
		return $this->db->query($sql);
	}
	
	function ambil_semua_proyek_hibah($keyword)
	{
		$sql="SELECT 'hibah' as sumber, judul_id as judul, nilai_hibah as nilai FROM irena_hibah_proyek WHERE judul_id LIKE '%$keyword%'";
		return $this->db->query($sql);
	}
	
	
	
	function hapusArsip($id){
		$this->db->where('id', $id);
		$this->db->delete('irena_arip');
		if($this->db->affected_rows() > 0){
			return true;
		}else{
			return false;
		}
	}
	
	
	
	function pilih_jenis_arsip()
	{
		$query = "SELECT * FROM irena_arsip_jenis ORDER BY id";
		return $this->db->query($query)->result();
	}
	
	function pilih_jenis_status()
	{
		$query = "SELECT * FROM irena_arsip_status ORDER BY id";
		return $this->db->query($query)->result();
	}
	
	function pilih_jenis_tingkat()
	{
		$query = "SELECT * FROM irena_arsip_tingkat ORDER BY id";
		return $this->db->query($query)->result();
	}
	
	function tambah_data($data)
	{
		$this->db->insert('irena_arsip',$data);
		if($this->db->affected_rows() > 0){
			return true;
		}else{
			return false;
		}
	}
	
	function simpan_data($data)
	{
		/*
		if(array_key_exists('arsip_id',$data))
		{
			$id=$data['arsip_id'];
			unset($data['arsip_id']);
			$this->db->where('arsip_id',$id);
			$this->db->update('d8_arsip',$data);
		}
		else
		{
			*/
			$this->db->insert('irena_arsip',$data);
	//	}		
	}
	
	// ---------------------------------------------- LAMPIRAN -------------------------------
	
	public function simpanLampiranLah($field){
		$this->db->insert('irena_arsip_lampiran', $field);
		
		if($this->db->affected_rows() > 0){
			return true;
		}else{
			return false;
		}
	}
	
	
	function ambil_semua_proyek_tutup(){
		$this->db->select('*');
		$this->db->from('list_proyek_tutup');
		$query = $this->db->get();
		
		//return $query->result_array();
		//return $this->db->get();
		
		$sql="SELECT * FROM list_proyek_tutup";
		return $this->db->query($sql);
	}

    function total_monev($id_instansi=null, $cari=null)
    {
		$this->db->select('*');
		$this->db->from('ambil_semua_monev');
		if($id_instansi != null && $id_instansi != 0){
			$this->db->where('id_instansi', $id_instansi);
		}
		if($cari){
			$this->db->like('judul', $cari);
		}
		$query = $this->db->get();
		return $query->num_rows();        
    }

    function ambil_instansi($cari=null, $order=null, $order_type='Asc', $limit_start=null, $limit_end=null)
    {
    	$this->db->select('*');
		$this->db->from('instansi');

		if($cari){
			$this->db->like('nama', $cari);
		}

		if($order){
			$this->db->order_by($order, $order_type);
		}else{
		    $this->db->order_by('nama', $order_type);
		}

        if($limit_start && $limit_end){
          $this->db->limit($limit_start, $limit_end);	
        }

        if($limit_start != null){
          $this->db->limit($limit_start, $limit_end);    
        }
        
		$query = $this->db->get();
		
		return $query->result_array(); 	
    }

    function combo_instansi($default="")
	{
		$this->db->select('*');
		$this->db->from('instansi');
		$this->db->order_by('nama', 'ASC');
        
		$query = $this->db->get();
		
		return $query->result_array();
	}
	
	function combo_prioritas($default="")
	{
		$this->db->select('*');
		$this->db->from('prioritas');
		$this->db->order_by('nama', 'ASC');
        
		$query = $this->db->get();
		
		return $query->result_array();
	}
	
	function combo_provinsi($default="")
	{
		$this->db->select('*');
		$this->db->from('provinsi');
		$this->db->order_by('nama', 'ASC');
        
		$query = $this->db->get();
		
		return $query->result_array();
	}
	
	function combo_status($default="")
	{
		$this->db->select('*');
		$this->db->from('status');
		$this->db->order_by('nama', 'ASC');
        
		$query = $this->db->get();
		
		return $query->result_array();
		
	}
	
	function combo_sasaran($default="")
	{
		$this->db->select('*');
		$this->db->from('sasaran_rpmn_1519');
		$this->db->order_by('nama', 'ASC');
        
		$query = $this->db->get();
		
		return $query->result_array();
		
	}
	
	
	function tambah_monev($data)
    {
		$insert = $this->db->insert('monev', $data);
	    return $insert;
	}
		
	public function ambil_semua_detil_proyek($id){
		$sql="SELECT * FROM ambil_semua_detil_proyek WHERE id = $id";
		return $this->db->query($sql);
	}
	
	 public function edit_tabel_monev_per_id($id)
    {
		$this->db->select('*');
		$this->db->from('monev');
		$this->db->where('id', $id);
		return $this->db->get();
    }
	
	public function ambil_instansi_per_id($id)
    {
		$this->db->where('id',$id);			
		$data=$this->db->get('instansi'); 
		
		if ($data->num_rows() > 0){
			foreach ($data->result() as $row): 	
				$hasil = $row->nama;
			endforeach;
		}else{
			$hasil="";
		}
		
		return $hasil;
    }
	
	public function ambil_status_per_id($id)
    {
		$this->db->where('id',$id);			
		$data=$this->db->get('status'); 
		
		if ($data->num_rows() > 0){
			foreach ($data->result() as $row): 	
				$hasil = $row->nama;
			endforeach;
		}else{
			$hasil="";
		}
		
		return $hasil;
    }
	
	
	
	
	public function ambil_kategori_per_id($id)
    {
		$this->db->where('id',$id);			
		$data=$this->db->get('kategori'); 
		
		if ($data->num_rows() > 0){
			foreach ($data->result() as $row): 	
				$hasil = $row->nama;
			endforeach;
		}else{
			$hasil="";
		}
		
		return $hasil;
    }
	
	public function ambil_prioritas_per_id($id)
    {
		$this->db->where('id',$id);			
		$data=$this->db->get('prioritas'); 
		
		if ($data->num_rows() > 0){
			foreach ($data->result() as $row): 	
				$hasil = $row->nama;
			endforeach;
		}else{
			$hasil="";
		}
		
		return $hasil;
    }
	
	public function ambil_sasaran_per_id($id)
    {
		$this->db->where('id',$id);			
		$data=$this->db->get('sasaran_rpmn_1519'); 
		
		if ($data->num_rows() > 0){
			foreach ($data->result() as $row): 	
				$hasil = $row->nama;
			endforeach;
		}else{
			$hasil="";
		}
		
		return $hasil;
    }
	
	public function ambil_provinsi_per_id($id)
    {
		$this->db->where('id',$id);			
		$data=$this->db->get('provinsi'); 
		
		if ($data->num_rows() > 0){
			foreach ($data->result() as $row): 	
				$hasil = $row->nama;
			endforeach;
		}else{
			$hasil="";
		}
		
		return $hasil;
    }
	
	function edit_monev($id, $data)
    {
		$id=$data['id'];
		unset($data['id']);
		$this->db->where('id', $id);
		$this->db->update('monev', $data);
		$report = array();
		$report['error'] = $this->db->_error_number();
		$report['message'] = $this->db->_error_message();
		if($report !== 0){
			return true;
		}else{
			return false;
		}
	}
	
	
	function cek_proyek_monev($id)
	{
		
		$this->db->where('id_proyek',$id);			
		$data=$this->db->get('monev'); 
		
		if ($data->num_rows() > 0){
			return TRUE;
		}else{
			return FALSE;
		}
		

	}
	
	
	
	
	
	
	
	
	
	public function ambil_lokasi_per_id($id)
    {
		$this->db->where('id',$id);			
		$data=$this->db->get('provinsi');
		if ($data->num_rows() > 0){		
			foreach ($data->result() as $row): 	
				$lokasi = $row->nama;
			endforeach;
		}else{
			$lokasi="";
		}
		
		return $lokasi;
    }
	
		
	public function ambil_semua_monev_per_id($id)
	{
		$sql="SELECT * FROM ambil_semua_monev_per_id WHERE id = $id";
		return $this->db->query($sql);
	}
	
	public function ambil_target_per_id_monev($id)
	{
		//$sql = "SELECT * FROM target WHERE id_monev = $id";
		$sql = 	"SELECT id_proyek, id_monev,
					MAX(CASE WHEN triwulan = 1 then nilai_target END) triwulan1,
					MAX(CASE WHEN triwulan = 2 then nilai_target END) triwulan2,
					MAX(CASE WHEN triwulan = 3 then nilai_target END) triwulan3,
					MAX(CASE WHEN triwulan = 4 then nilai_target END) triwulan4
				FROM ambil_total_target_per_id_proyek_id_monev 
				WHERE id_monev = $id
				GROUP BY id_proyek";
		return $this->db->query($sql);
	}
	
	function ambil_total_penyerapan_per_id_monev($id)
	{
		$sql = 	"SELECT id_proyek, id_monev,
					MAX(CASE WHEN triwulan = 1 then nilai_serap END) triwulan1,
					MAX(CASE WHEN triwulan = 2 then nilai_serap END) triwulan2,
					MAX(CASE WHEN triwulan = 3 then nilai_serap END) triwulan3,
					MAX(CASE WHEN triwulan = 4 then nilai_serap END) triwulan4
				FROM ambil_total_penyerapan_per_id_proyek_id_monev
				WHERE id_monev = $id
				GROUP BY id_proyek";
		return $this->db->query($sql);
	}
	
	public function ambil_semua_penyerapan_per_id_monev($id, $triwulan=null)
	{
		$sql="SELECT * FROM ambil_semua_penyerapan_per_id_monev WHERE id_monev = $id and triwulan = $triwulan";
		return $this->db->query($sql);
	}
	
	public function ambil_semua_progres_fisik_per_id_monev($id, $triwulan=null)
	{
		$sql="SELECT * FROM ambil_semua_progres_fisik_per_id_monev WHERE id_monev = $id and triwulan = $triwulan";
		return $this->db->query($sql);
	}
	
	public function ambil_data_target_per_id_monev($id)
	{
		$sql="SELECT * FROM target WHERE id_monev = $id order by triwulan ASC";
		return $this->db->query($sql);
	}
	
	function tambah_target($data)
    {
		$insert = $this->db->insert('target', $data);
	    return $insert;
	}
	
	function edit_target($id, $data)
    {
		$id=$data['id'];
		unset($data['id']);
		$this->db->where('id', $id);
		$this->db->update('target', $data);
		$report = array();
		$report['error'] = $this->db->_error_number();
		$report['message'] = $this->db->_error_message();
		if($report !== 0){
			return true;
		}else{
			return false;
		}
	}
	
	public function ambil_data_paket_kontrak_per_id_monev($id)
	{
		$sql="SELECT * FROM paket_kontrak WHERE id_monev = $id";
		return $this->db->query($sql);
	}
	
	public function ambil_total_target_per_id_proyek_id_monev($id)
	{
		$sql="SELECT triwulan, nilai_target/1000000000 AS nilai_target FROM ambil_total_target_per_id_proyek_id_monev WHERE id_monev = $id";
		return $this->db->query($sql);
	}
	
	public function ambil_total_penyerapan_per_id_proyek_id_monev($id)
	{
		$sql="SELECT triwulan, nilai_serap/1000000000 AS nilai_serap FROM ambil_total_penyerapan_per_id_proyek_id_monev WHERE id_monev = $id";
		return $this->db->query($sql);
	}
	
	
	
	
	
}
?>