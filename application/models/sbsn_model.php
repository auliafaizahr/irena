<?php
/**
	* Model : tutup_model
	* Tabel terkait : monev (dengan status tutup)
**/

class Sbsn_model extends CI_Model 
{
	
	function usulan_tampil_semua_data()
	{
		$sql="SELECT * FROM irena_view_sbsn_usulan_awal";
		return $this->db->query($sql);
	}
	
	function pilih_instansi()
	{
		$query = "SELECT * FROM irena_instansi ORDER BY nama ASC";
		return $this->db->query($query)->result();
	}


	public function last()
	{
		$query = "SELECT id FROM irena_sbsn_proyek ORDER BY ID DESC LIMIT 1";


		$a = $this->db->query($query);

		return $a->row();
	}
	
	function pilih_id_dpp()
	{
		$query = "SELECT * FROM irena_sbsn_dpp ORDER BY nama ASC";
		return $this->db->query($query)->result();
	}

		 function hapus_dari_lokasi($a)
	{

		$this->db->where('id_usulan', $a);
		return $this->db->delete('irena_sbsn_usulan_lokasi');
		
	}

		 function hapus_dari_usulan_prov($a)
	{

		$this->db->where('id_usulan', $a);
		return $this->db->delete('irena_sbsn_usulan_prov');
		
	}

		 function hapus_dari_usulan_kabkota($a)
	{

		$this->db->where('id_usulan', $a);
		return $this->db->delete('irena_sbsn_usulan_kabkota');
		
	}

		 function hapus_dari_lokasi_dpp($a)
	{

		$this->db->where('id_usulan', $a);
		return $this->db->delete('irena_dpp_lokasi');
		
	}

	public function ambil_proyek_berdasarkan_lokasi($x)
	{
		$sql = "SELECT * FROM irena_view_sbsn_gabung_lokasi WHERE id_lokasi = '$x' ";
		return $this->db->query($sql)->result_array();
	}

	public function hitung_total_proyek_prov($x)
	{
		$sql = "SELECT  COUNT(IF(irena_view_sbsn_dpp_prov.id_prov = '$x', irena_view_sbsn_dpp_prov.id_usulan, NULL)) AS total_kegiatan FROM irena_view_sbsn_dpp_prov";
		 $a= $this->db->query($sql);

		return $a->row()->total_kegiatan;
	}

		public function hitung_total_nilai_proyek_prov($x)
	{
		$sql = "SELECT  SUM(IF(irena_view_sbsn_dpp_prov.id_prov = '$x', irena_view_sbsn_dpp_prov.nilai, 0)) AS total_nilai FROM irena_view_sbsn_dpp_prov";
		 $a= $this->db->query($sql);

		return $a->row()->total_nilai;
	}

	public function ambil_proyek_berdasarkan_prov($x)
	{
		$sql = "SELECT * FROM irena_view_sbsn_dpp_prov WHERE id_prov = '$x' ";
		return $this->db->query($sql)->result_array();
	}

	
	function pilih_kategori_proyek()
	{
		$query = "SELECT * FROM irena_sbsn_kategori_proyek ORDER BY nama ASC";
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
			$this->db->update('irena_sbsn_proyek', $data);
		}
		else
		{
			$this->db->insert('irena_sbsn_proyek', $data);
		}		
	}
	
	function ambil_usulan_by_id($id)
	{
		$sql="SELECT * FROM irena_view_sbsn_usulan_awal WHERE id_proyek = '$id'";
		return $this->db->query($sql);
	}
	
	function usulan_hapus($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_sbsn_proyek');
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
	
	function ambil_dpp_by_id($id)
	{
		$query = "SELECT * FROM irena_sbsn_dpp WHERE id = '$id'";
		return $this->db->query($query)->result();
	}
	
	function ambil_kategori_proyek_by_id($id)
	{
		$query = "SELECT * FROM irena_sbsn_kategori_proyek WHERE id = '$id'";
		return $this->db->query($query)->result();
	}
	
	
	
	
	function ambil_tabel_usulan_by_id($id)
	{
		$sql="SELECT * FROM irena_sbsn_proyek WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function dpp_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_sbsn_proyek_dpp', $data);
		}
		else
		{
			$this->db->insert('irena_sbsn_proyek_dpp', $data);
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
		$sql = "	SELECT * FROM irena_view_sbsn_log_proyek
					WHERE 
						id_proyek = '$id' 
					";
						
		return $this->db->query($sql);
	}
	
	function ambil_data_log_usulan_by_id($id)
	{
		$sql = "	SELECT * FROM irena_view_sbsn_log_proyek
					WHERE 
						id = '$id' 
					";
						
		return $this->db->query($sql);
	}
	
	
	function pilih_proyek_dok_kat()
	{
		$query = "SELECT * FROM irena_sbsn_proyek_dok_kategori ";
		return $this->db->query($query)->result();
	}
	
	function ambil_proyek_dok_kat_by_id($id)
	{
		$query = "SELECT * FROM irena_sbsn_proyek_dok_kategori WHERE id = '$id'";
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
			$this->db->update('irena_sbsn_proyek_dok',$data);
		}
		else
		{
			$this->db->insert('irena_sbsn_proyek_dok',$data);
		}		
		
		if($this->db->affected_rows() > 0)
		{
			return true;
		}else
		{
			return false;
		}
	}
	
	function log_usulan_hapus_data($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_sbsn_proyek_dok');
	}
	
//----------------------------------- SYARAT USULAN ----------------------------
//----------------------------------- SYARAT USULAN ----------------------------
//----------------------------------- SYARAT USULAN ----------------------------
//----------------------------------- SYARAT USULAN ----------------------------
//----------------------------------- SYARAT USULAN ----------------------------
//----------------------------------- SYARAT USULAN ----------------------------
	
	
	function ambil_syarat_usulan_by_id_proyek($id)
	{
		$sql = "SELECT * FROM irena_view_sbsn_usulan_syarat WHERE id_proyek = '$id'	";
		return $this->db->query($sql);
	}
	
	function syarat_usulan_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_sbsn_proyek_syarat',$data);
		}
		else
		{
			$this->db->insert('irena_sbsn_proyek_syarat',$data);
		}
	}
	
	function ambil_syarat_usulan_by_id($id)
	{
		$sql="SELECT * FROM irena_sbsn_proyek_syarat WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function syarat_usulan_hapus_data($id){
		$this->db->where('id', $id);
		return $this->db->delete('irena_sbsn_proyek_syarat');
	}

//------------------------------------------ DPP SBSN -------------------------------------------------------
//------------------------------------------ DPP SBSN -------------------------------------------------------
//------------------------------------------ DPP SBSN -------------------------------------------------------
//------------------------------------------ DPP SBSN -------------------------------------------------------
	
	function ambil_proyek_dpp()
	{
		$sql="SELECT * FROM irena_view_sbsn_proyek_dpp";
		return $this->db->query($sql);
	}
	
	function ambil_proyek_dpp_by_id($id)
	{
		$sql="SELECT * FROM irena_view_sbsn_proyek_dpp WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function ambil_tabel_proyek_dpp_by_id($id)
	{
		$sql="SELECT * FROM irena_sbsn_proyek_dpp WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	
//------------------------------------------ ON GOING -------------------------------------------------------
//------------------------------------------ ON GOING -------------------------------------------------------
//------------------------------------------ ON GOING -------------------------------------------------------

	function ambil_data_on_going()
	{
		
		$sql="SELECT * FROM irena_view_sbsn_on_going";
		return $this->db->query($sql);
	}
	
	function ambil_data_satker_by_id_instansi($id)
	{
		 $query = "SELECT * FROM irena_instansi_satker WHERE id_instansi = '$id' ORDER BY nama ASC";
        return $this->db->query($query)->result();
	}
	
	function on_going_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_sbsn_realisasi',$data);
		}
		else
		{
			$this->db->insert('irena_sbsn_realisasi',$data);
		}
	}
	
	function ambil_satker_by_id($id)
	{
		$query = "SELECT * FROM irena_instansi_satker WHERE id = '$id'";
		return $this->db->query($query)->result();
	}
	
	function ambil_on_going_by_id($id)
	{
		$sql="SELECT * FROM irena_sbsn_realisasi WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function on_going_hapus_data($id)
	{
		$this->db->where('id', $id);
		return $this->db->delete('irena_sbsn_realisasi');
	}
	
	function ambil_on_going_penyerapan_by_id_realisasi($id)
	{
		$sql="SELECT * FROM irena_view_sbsn_realiasi_penyerapan_list WHERE id_realisasi = '$id'";
		return $this->db->query($sql);
		//return $this->db->query($query)->result();
	}
	
	function ambil_data_on_going_list_by_id($id)
	{
		
		$sql="SELECT * FROM irena_view_sbsn_on_going WHERE id = '$id'";
		return $this->db->query($sql);
	}
	
	function on_going_realisasi_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_sbsn_realisasi_penyerapan',$data);
		}
		else
		{
			$this->db->insert('irena_sbsn_realisasi_penyerapan',$data);
		}
	}
	
	function ambil_on_going_penyerapan_by_id($id)
	{
		$sql="SELECT * FROM irena_sbsn_realisasi_penyerapan WHERE id = '$id'";
		return $this->db->query($sql);
	}

	
	function on_going_penyerapan_hapus_data($id)
	{
		$this->db->where('id', $id);
		return $this->db->delete('irena_sbsn_realisasi_penyerapan');
	}
	
	function ambil_total_penyerapan_by_id_realisasi($id)
	{
		$sql = "	SELECT
						irena_sbsn_realisasi_penyerapan.id_realisasi,
						sum(irena_sbsn_realisasi_penyerapan.penyerapan) as penyerapan
					FROM
						irena_sbsn_realisasi_penyerapan 
					WHERE id_realisasi = '$id' 
					GROUP BY irena_sbsn_realisasi_penyerapan.id_realisasi 
				";
		return $this->db->query($sql);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
?>