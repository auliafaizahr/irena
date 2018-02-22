<?php
/**
	* Model : Usulan Model PHLN
	* Tujuan : Menampilkan dan menambahkan usulan PHLN ke database (dan atau greenbook atau bluebook)
	* Table : phln_usulan, phln_bluebook, phln_greenbook
	* Dibuat oleh: Faizah Aulia R
	* Dimodifikasi : 
**/

class Usulan_model extends CI_Model {
	
	public function ambil_proyek_usulan()
	{
		$this->db->select()->from('irena_usulan_pln');
		$query = $this->db->get();
		return $query->result_array();
	
	}

	function ambil_data_instansi_es_1_by_id_instansi($id)
	{
		 $query = "SELECT * FROM irena_eselon_1 WHERE id_instansi = '$id' ORDER BY nama_eselon_1 ASC";
        return $this->db->query($query)->result();
	}

	function ambil_kabkota_by_prov($id)
	{
		 $query = "SELECT * FROM irena_kabkota WHERE id_provinsi = '$id' ORDER BY nama ASC";
        return $this->db->query($query)->result();
	}

	public function tambahBB($a)
	{
		
	}

	public function ambil_user($x)
	{
		$query = "SELECT * FROM irena_user WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function ambil_catatan($a)
	{
		 $query = "SELECT * FROM catatan_usulan WHERE id_usulan = '$a' ORDER BY waktu ASC";
        return $this->db->query($query)->result();
	}

	public function tambah_usulan($a)
	{
		
	}

		function usulan_simpan_data_edit($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_usulan_pln', $data);
		}
		else
		{
			$this->db->insert('irena_usulan_pln', $data);
		}		
	}

	public function jumlah_judul()
	{
		
		$query = "SELECT judul_proyek_id FROM irena_usulan_pln";
		 $a= $this->db->query($query);
		return $a->num_rows();
	}

	public function ambil_judul_proyek()
	{
		
		$query = "SELECT judul_proyek_id FROM irena_usulan_pln ";
		 $a= $this->db->query($query);
		return $a->result();
	}


		public function hapus_usulan_fix($a)
	{
		$this->db->where('id', $a);
		return $this->db->delete('irena_usulan_pln');
		
	}

	public function hapus_dari_layak($a)
	{
		
		$this->db->where('id_usulan', $a);
		return $this->db->delete('irena_usulan_layak');
		
	}

	public function hapus_dari_usulkan_bb($a)
	{

		$this->db->where('id_usulan', $a);
		return $this->db->delete('irena_usulkan_bb');
		
	}

	public function hapus_dari_adm($a)
	{

		$this->db->where('id_usulan', $a);
		return $this->db->delete('irena_usulan_adm');
		
	}

	public function hapus_dari_dok($a)
	{

		$this->db->where('id_proyek', $a);
		return $this->db->delete('irena_usulan_pln_dok');
		
	}

	/*public function ($a)
	{

		$this->db->where('id_proyek', $a);
		return $this->db->delete('irena_usulan_pln_log');
		
	}
*/
	public function jenis_arsip()
	{
		 $query = "SELECT * FROM irena_arsip_jenis  ORDER BY nama ASC";
        return $this->db->query($query)->result_array();
	}

	public function ambil_lokasi()
	{
		 $query = "SELECT * FROM irena_provinsi_kabkota  ORDER BY nama ASC";
        return $this->db->query($query)->result_array();
	}


	public function ambil_instansi_untuk_usulan($x)
	{
		$query = "SELECT * FROM irena_instansi_2 WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	function ambil_data_log_usulan_by_id_proyek($id)
	{
		$sql = "	SELECT * FROM irena_view_usulan_pln_log
					WHERE 
						id_proyek = '$id' 
					";
						
		return $this->db->query($sql);
	}

	function log_usulan_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id=$data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_usulan_pln_log',$data);
		}
		else
		{
			$this->db->insert('irena_usulan_pln_log',$data);
		}		
	}
	

	public function ambil_nama_instansi($x)
	{
		$query = "SELECT nama_instansi FROM irena_instansi_2 WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}


	public function lender_untuk_proyek($x)
	{
		$query = "SELECT lender FROM irena_lender WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}


	public function ambil_program_proyek($x)
	{
		
		$query = "SELECT nama_program FROM irena_program_pln WHERE id = '$x'";
		 $a= $this->db->query($query);
		return $a->row();
		
	}

	public function ambil_lokasi_proyek_id($x)
	{
		
		$query = "SELECT * FROM irena_provinsi_kabkota WHERE id = '$x'";
		 $a= $this->db->query($query);
		return $a->result();
	}

	public function ambil_program_proyek_id($x)
	{
		
		$query = "SELECT * FROM irena_program_pln WHERE id = '$x'";
		 $a= $this->db->query($query);
		return $a->result();
	}




	public function ambil_instansi_id($x)
	{
		
		$query = "SELECT * FROM irena_instansi_2 WHERE id = '$x'";
		 $a= $this->db->query($query);
		return $a->result();
		
	}






	public function ambil_bb($x)
	{
		
		$query = "SELECT * FROM irena_bluebook_kode WHERE id = '$x'";
		 $a= $this->db->query($query);
		return $a->result();
		
	}

	public function ambil_bb_detail($x)
	{
		
		$query = "SELECT * FROM irena_bluebook_proyek WHERE id_usulan_proyek = '$x'";
		 $a= $this->db->query($query);
		return $a->result();
		
	}

	public function ambil_gb_detail($x)
	{
		
		$query = "SELECT * FROM irena_greenbook_proyek WHERE id_usulan = '$x'";
		 $a= $this->db->query($query);
		return $a->result();
		
	}


	public function ambil_dk_detail($x)
	{
		
		$query = "SELECT * FROM irena_daftarkegiatan_proyek WHERE id_usulan = '$x'";
		 $a= $this->db->query($query);
		return $a->result();
		
	}

	public function ambil_la_detail($x)
	{
		
		$query = "SELECT * FROM irena_la_proyek WHERE id_usulan = '$x'";
		 $a= $this->db->query($query);
		return $a->result();
		
	}

		public function ambil_gb($x)
	{
		
		$query = "SELECT * FROM irena_bluebook_kode WHERE id = '$x'";
		 $a= $this->db->query($query);
		return $a->result();
		
	}

	public function ambil_lender($x)
	{
		
		$query = "SELECT * FROM irena_lender WHERE id = '$x'";
		 $a= $this->db->query($query);
		return $a->result();
		
	}

	public function status_lender($x)
	{
		
		$query = "SELECT * FROM irena_status_lender_pln WHERE id = '$x'";
		 $a= $this->db->query($query);
		return $a->result();
		
	}


	public function status_umum($x)
	{
		
		$query = "SELECT * FROM irena_status_umum WHERE id = '$x'";
		 $a= $this->db->query($query);
		return $a->result();
		
	}

	public function semua_status_umum($x)
	{
		
		$query = "SELECT * FROM irena_status_umum ORDER BY nama ASC";
		 $a= $this->db->query($query);
		return $a->result_array();
		
	}


	public function status_lembaga($x)
	{
		
		$query = "SELECT * FROM irena_status_lembaga WHERE id = '$x'";
		 $a= $this->db->query($query);
		return $a->result();
		
	}



	function ambil_instansi_by_id_eselon_satu($id)
	{
		$query = "
					SELECT
						irena_eselon_1.id AS id_eselon_1,
						irena_eselon_1.nama_eselon_1 AS nama_eselon_1,
						irena_instansi.nama_instansi AS nama_instansi,
						irena_instansi.id_lembaga AS id
					FROM
						irena_instansi
					INNER JOIN irena_eselon_1 ON irena_instansi.id_lembaga = irena_eselon_1.id_instansi 
					WHERE irena_eselon_1.id = '$id'
		
		";
		return $this->db->query($query)->result();
	}

	function ambil_instansi_eselon_satu_by_id($id)
	{
		$query = "SELECT * FROM irena_eselon_1 WHERE id = '$id'";
		return $this->db->query($query)->result();
	}
	

	public function ambil_instansi()
	{
		$query = "SELECT * FROM irena_instansi_2 ORDER BY nama_instansi ASC";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_program()
	{
		$query = "SELECT * FROM irena_program_pln";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_arsip()
	{
		$query = "SELECT * FROM irena_arsip_file";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_arsip_proyek($x)
	{
		$query = "SELECT * FROM irena_arsip_file WHERE id_usulan= '$x' ";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function detail_proyek($x)
	{
		$query = "SELECT * FROM irena_usulan_pln WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function detail_proyek_lokasi_saja($x)
	{
		$query = "SELECT lokasi FROM irena_usulan_pln WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->result_array();
	}


	public function ambil_layak($x)
	{
		$query = "SELECT * FROM irena_Usulan_layak WHERE id_usulan = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

		public function ambil_pln($x)
	{
		$query = "SELECT * FROM irena_usulan_pln WHERE id = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function simpan_adm($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id_usulan',$id);
			$this->db->update('irena_usulan_adm', $data);
		}
		else
		{
			$this->db->insert('irena_usulan_adm', $data);
		}		
	}

	public function tambah_ke_BB($data)
	{
		
		if(array_key_exists('id', $data))
		{
			$id = $data['id_usulan'];
			unset($data['id_usulan']);
			$this->db->where('id_usulan',$id);
			$this->db->update('irena_bluebook_proyek', $data);
		}
		else
		{
			$this->db->insert('irena_bluebook_proyek', $data);
		}		
			
	}

	public function tambah_ke_BB_layak($data)
	{
		
		if(array_key_exists('id', $data))
		{
			$id = $data['id_proyek_bb'];
			unset($data['id_proyek_bb']);
			$this->db->where('id_proyek_bb',$id);
			$this->db->update('irena_bb_layak', $data);
		}
		else
		{
			$this->db->insert('irena_bb_layak', $data);
		}		
			
	}

	public function update_isBB($data)
	{
		
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_usulan_pln', $data);
		}
			
			
	}


	public function update_BB($data2)
	{
			$id = $data2['id'];
			unset($data2['id']);
			$this->db->where('id',$id);
			$this->db->update('irena_usulan_pln', $data2);
			
	}

	function usulan_simpan_data($data)
	{
		if(array_key_exists('id', $data))
		{
			$id = $data['id'];
			unset($data['id']);
			$this->db->where('id_usulan',$id);
			$this->db->update('irena_usulan_layak', $data);
		}
		else
		{
			$this->db->insert('irena_usulan_layak', $data);
		}		
	}

	function usulan_simpan_keBB($data)
	{
		
			$this->db->insert('irena_bluebook_proyek', $data);
	
				
	}

	function tambah_dok_usulan($data)
	{
		
			$this->db->insert('irena_usulan_pln_dok',$data);
		
	}

	function instansi_by_eselon1($a)
	{
		$query = "
					SELECT
						irena_eselon_1.id AS id_eselon_1,
						irena_eselon_1.nama_eselon_1 AS nama_eselon_satu,
						irena_instansi.nama_instansi AS nama,
						irena_instansi.id AS id
					FROM
						irena_instansi
					INNER JOIN irena_eselon_1 ON irena_instansi.id = irena_eselon_1.id_instansi 
					WHERE irena_instansi_eselon_satu.id = '$a'
		
		";
		return $this->db->query($query)->result();
	}

	public function ambil_dokumen_tambahan_usulan($a)
	{
		$query = "SELECT * FROM irena_arsip_usulan WHERE id_usulan = '$a'";
		 $a= $this->db->query($query);

		return $a->result_array();
	}

	public function ambil_dok_usulan_by_id_proyek($x)
	{
		$sql = "SELECT * FROM irena_view_usulan_pln_dok WHERE id_proyek = '$x' ";
		return $this->db->query($sql);
	}

	function dok_baru_simpan($data)
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

	public function ambil_adm($x)
	{
		$query = "SELECT * FROM irena_Usulan_adm WHERE id_usulan = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function ambil_rekomen_BB($x)
	{
		$query = "SELECT is_usulkan FROM irena_usulkan_bb WHERE id_usulan = '$x'";
		 $a= $this->db->query($query);

		return $a->row();
	}

	public function last()
	{
		$query = "SELECT id FROM irena_usulan_pln ORDER BY ID DESC LIMIT 1";


		$a = $this->db->query($query);

		return $a->row();
	}

	public function last_bb()
	{
		$query = "SELECT id FROM irena_bluebook_proyek ORDER BY ID DESC LIMIT 1";


		$a = $this->db->query($query);

		return $a->row();
	}
}
?>