<?php
/**
	* Model : tutup_model
	* Tabel terkait : monev (dengan status tutup)
**/

class Arsip_model extends CI_Model 
{
	
	function ambil_semua_arsip()
	{
		$sql="SELECT * FROM irena_view_arsip order by update_date DESC";
		return $this->db->query($sql);
	}
	
	function jumlah_arsip_masuk_by_tahun($tahun)
	{
		if($tahun == "0"){
			$sql = "SELECT Count(irena_view_arsip.`no`) as jumlah FROM irena_view_arsip WHERE irena_view_arsip.jenis = 'Masuk'";
		}else{
			$sql = "SELECT Count(irena_view_arsip.`no`) as jumlah FROM irena_view_arsip WHERE irena_view_arsip.jenis = 'Masuk' AND irena_view_arsip.tahun_surat = '$tahun'";
		}
		return $this->db->query($sql);
	}
	
	function jumlah_arsip_by_tahun($jenis, $tahun)
	{
		if($tahun == "0"){
			$sql = "SELECT Count(irena_view_arsip.`no`) as jumlah FROM irena_view_arsip WHERE irena_view_arsip.jenis = '$jenis'";
		}else{
			$sql = "SELECT Count(irena_view_arsip.`no`) as jumlah FROM irena_view_arsip WHERE irena_view_arsip.jenis = '$jenis' AND irena_view_arsip.tahun_surat = '$tahun'";
		}
		return $this->db->query($sql);
	}
	
	function ambil_staf_yg_blm_selesai_disposisi()
	{
		$sql    = "	SELECT
						id_user,
						nama_panggilan as nama_panggilan,
						count(no_arsip) AS jlh
					FROM
						irena_view_disposisi_internal
					WHERE
					id_status = 1
					GROUP BY
						id_user
					ORDER BY
						jlh DESC
                        ";
            return $this->db->query($sql);
	}
	
	function ambil_arsip_per_id($id)
	{
		$sql="SELECT * FROM irena_view_arsip WHERE id_arsip = '$id'";
		return $this->db->query($sql);
	}
	
	function ambil_nama_user_by_id($id_user)
	{
		
		$sql="SELECT * FROM irena_user WHERE id = '$id_user'";
		return $this->db->query($sql);
	}
	
	function ambil_arsip_per_id2()
	{
		$sql="SELECT * FROM irena_view_arsip WHERE  no like '%a%'";
		return $this->db->query($sql);
	}
	
	function ambil_lampiran_per_id($id)
	{
		$sql = "	SELECT 
							irena_arsip_lampiran.id			AS id, 
							irena_arsip_lampiran.nama		AS nama,
							irena_arsip_lampiran.keterangan	AS keterangan,
							irena_arsip_lampiran.berkas		AS berkas,
							irena_user.nama_panggilan		AS nama_panggilan
					FROM 
						irena_arsip_lampiran 
					INNER JOIN
						irena_user ON irena_user.id = irena_arsip_lampiran.update_by
					WHERE 
						id_arsip = '$id' 
					ORDER BY 
						update_date DESC";
						
		return $this->db->query($sql);
	}
	
	function hapusArsip($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('irena_arsip');
		if($this->db->affected_rows() > 0)
		{
			return true;
		}else
		{
			return false;
		}
	}
	
	function pilih_jenis_arsip()
	{
		$query = "SELECT * FROM irena_arsip_jenis ORDER BY id";
		return $this->db->query($query)->result();
	}
	
	function pilih_jenis_arsip_by_id($id)
	{
		$query = "SELECT * FROM irena_arsip_jenis WHERE id = '$id'";
		return $this->db->query($query)->result();
	}
	
	function pilih_jenis_status()
	{
		$query = "SELECT * FROM irena_arsip_status ORDER BY id";
		return $this->db->query($query)->result();
	}
	
	function pilih_status_by_id($id)
	{
		$query = "SELECT * FROM irena_arsip_status WHERE id = '$id'";
		return $this->db->query($query)->result();
	}
	
	function pilih_jenis_tingkat()
	{
		$query = "SELECT * FROM irena_arsip_tingkat ORDER BY id";
		return $this->db->query($query)->result();
	}
	
	function pilih_tingkat_by_id($id)
	{
		$query = "SELECT * FROM irena_arsip_tingkat WHERE id = '$id'";
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
		unset($data['berkas_lama']);
		if(array_key_exists('id', $data))
		{
			$id=$data['id'];
			unset($data['id']);
			
			$this->db->where('id',$id);
			$this->db->update('irena_arsip',$data);
		}
		else
		{
			$this->db->insert('irena_arsip',$data);
		}		
	}
	
	function ambil_arsip_by_id($id){
		$this->db->where('id', $id);
		return $this->db->get('irena_arsip');
	}
	
	function hapus($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_arsip');
	}
	
	// ---------------------------------------------- LAMPIRAN -------------------------------
	
	function lampiran_simpan_data($data)
	{
		unset($data['berkas_lama']);
		
		if(array_key_exists('id', $data))
		{
			$id=$data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_arsip_lampiran',$data);
		}
		else
		{
			$this->db->insert('irena_arsip_lampiran',$data);
		}		
	}
	
	function lampiran_hapus($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_arsip_lampiran');
		
		if($this->db->affected_rows() > 0){
			return true;
		}else{
			return false;
		}
	}
	
	
	
	function ambil_lampiran_by_id($id)
	{
		$sql="SELECT * FROM irena_arsip_lampiran WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	
	
	public function simpanLampiranLah($field){
		$this->db->insert('irena_arsip_lampiran', $field);
		
		if($this->db->affected_rows() > 0){
			return true;
		}else{
			return false;
		}
	}
	
	//------------------
	
	//---- DIPOSISI
	
	function ambil_disposisi_by_id_arsip($id_arsip)
	{
		$sql    = "	SELECT
						irena_arsip_disposisi.id 				AS id,
						irena_arsip_disposisi_jenis.nama 		AS jenis,
						irena_arsip_disposisi_jenis.eksternal 	AS eksternal,
						irena_arsip_disposisi.nomor 			AS nomor,
						irena_arsip_disposisi.tgl 				AS tgl,
						irena_arsip_disposisi.catatan 			AS catatan,
						irena_arsip_disposisi.berkas 			AS berkas
					FROM
						irena_arsip_disposisi
					INNER JOIN 
						irena_arsip_disposisi_jenis 
						ON 
							irena_arsip_disposisi_jenis.id = irena_arsip_disposisi.id_jenis
					WHERE 
						irena_arsip_disposisi.id_arsip = '$id_arsip'
					ORDER BY
						'order' ASC
                        ";
            return $this->db->query($sql);
			
	}
	
	function ambil_disposisi_internal_by_id_arsip($id_arsip)
	{
		$sql    = "	SELECT
						irena_arsip_disposisi_internal.id AS id_arsip_disposisi_internal,
						irena_arsip_disposisi_internal.id_disposisi AS id_disposisi,
						irena_arsip_disposisi_internal.id_disposisi_user AS id_disposisi_user,
						irena_arsip_disposisi.id_arsip AS id_arsip,
						irena_user.nama_panggilan AS nama_panggilan
						FROM
						irena_arsip_disposisi_internal
						INNER JOIN irena_arsip_disposisi ON irena_arsip_disposisi.id = irena_arsip_disposisi_internal.id_disposisi
						INNER JOIN irena_arsip ON irena_arsip.id = irena_arsip_disposisi.id_arsip
						INNER JOIN irena_user ON irena_user.id = irena_arsip_disposisi_internal.id_disposisi_user
					WHERE 
						irena_arsip_disposisi.id_arsip = '$id_arsip'
                        ";
            return $this->db->query($sql);
	}
	
	function ambil_disposisi_internal_aksi_by_id_arsip($id_arsip)
	{
		$sql    = "	SELECT
							irena_arsip_disposisi_internal_aksi.id AS id,
							irena_arsip_disposisi_internal_aksi.id_disposisi AS id_disposisi,
							irena_arsip_disposisi_aksi.nama AS aksi_nama,
							irena_arsip_disposisi.id_arsip AS id_arsip
							FROM
							irena_arsip_disposisi_internal_aksi
							INNER JOIN irena_arsip_disposisi ON irena_arsip_disposisi.id = irena_arsip_disposisi_internal_aksi.id_disposisi
							INNER JOIN irena_arsip_disposisi_aksi ON irena_arsip_disposisi_aksi.id = irena_arsip_disposisi_internal_aksi.id_disposisi_aksi

					WHERE 
						irena_arsip_disposisi.id_arsip = '$id_arsip'
                        ";
            return $this->db->query($sql);
	}
	
	
	function cek_disposisi_internal_by_id_disposisi($id)
	{
		$sql    = "	SELECT * FROM irena_arsip_disposisi_internal WHERE id_disposisi = '$id'";
		return $this->db->query($sql);
	}
	
	function ambil_disposisi_internal_by_id_disposisi($id)
	{
		$sql    = "	SELECT * FROM irena_arsip_disposisi_internal WHERE id_disposisi = '$id'";
		return $this->db->query($sql);
		//return $this->db->query($sql)->result();
	}
	
	function ambil_disposisi_internal_aksi_by_id_disposisi($id)
	{
		$sql    = "	SELECT * FROM irena_arsip_disposisi_internal_aksi WHERE id_disposisi = '$id'";
		return $this->db->query($sql);
		//return $this->db->query($sql)->result();
	}
	
	function select_jenis_disposisi()
	{
		$query    = "SELECT * FROM irena_arsip_disposisi_jenis ORDER BY ID ASC";
        return $this->db->query($query)->result();
	}
	
	function disposisi_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			//$data['modified_date']  = date('Y-m-d H:i:s');
			$id=$data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_arsip_disposisi',$data);
		}
		else
		{
			//$data['create_date']    = date('Y-m-d H:i:s');
			//$data['modified_date']  = date('Y-m-d H:i:s');
			//var_dump($data);
			$this->db->insert('irena_arsip_disposisi',$data);
		}       
	}
	

	
	
	
	function ambil_staf_pns()
	{
		$sql    = "SELECT * FROM irena_arsip_disposisi_user WHERE jabatan = '1' ORDER BY 'order' ASC";
        return $this->db->query($sql);
	}
	
	function ambil_staf_non_pns()
	{
		$sql    = "SELECT * FROM irena_arsip_disposisi_user WHERE jabatan = '0' ORDER BY 'order' ASC";
        return $this->db->query($sql);
	}
	
	function ambil_disposisi_aksi()
	{
		$sql    = "SELECT * FROM irena_arsip_disposisi_aksi WHERE id_jenis = '4' ORDER BY 'order' ASC";
        return $this->db->query($sql);
	}
	
	function disposisi_internal_simpan_data($data)
	{

		$this->db->insert('irena_arsip_disposisi_internal',$data);  
	}
	
	function disposisi_internal_hapus_data($data)
	{
		$id_disposisi 		= $data['id_disposisi'];
		$id_disposisi_user 	= $data['id_disposisi_user'];
		
		$sql="SELECT * FROM irena_arsip_disposisi_internal WHERE id_disposisi = '$id_disposisi' AND id_disposisi_user = '$id_disposisi_user'";
		$query = $this->db->query($sql);
		$hasil = $query->row();
		
		var_dump($hasil->id);
		
		$this->db->where('id', $hasil->id);
		$result = $this->db->delete('irena_arsip_disposisi_internal');
		var_dump($result);
	}
	
	function disposisi_internal_aksi_simpan_data($data)
	{
		$this->db->insert('irena_arsip_disposisi_internal_aksi',$data);  
	}
		
	function disposisi_internal_aksi_hapus_data($data)
	{
		$id_disposisi 		= $data['id_disposisi'];
		$id_disposisi_aksi 	= $data['id_disposisi_aksi'];
		
		$sql="SELECT * FROM irena_arsip_disposisi_internal_aksi WHERE id_disposisi = '$id_disposisi' AND id_disposisi_aksi = '$id_disposisi_aksi'";
		
		
		$query = $this->db->query($sql);
		$hasil = $query->row();
		//var_dump($hasil->id);
		$this->db->where('id', $hasil->id);
		$this->db->delete('irena_arsip_disposisi_internal_aksi');
		
	}
	
	function disposisi_hapus_data($id)
	{
		$this->db->where('id', $id);
		$this->db->delete('irena_arsip_disposisi');
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