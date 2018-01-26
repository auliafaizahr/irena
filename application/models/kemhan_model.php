<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Kemhan_model extends CI_Model {
    var $table 		= 'persons';
    var $column 	= array('firstname','lastname','gender','address','dob');
    var $order 		= array('id' => 'desc');
 
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
	
	public function ambil_list_semua_proyek()
	{
		$qry 	= 	"SELECT
						kemhan_proyek.id AS id_proyek,
						kemhan_instansi.nama AS instansi,
						kemhan_kategori_bb.nama AS kat_bb,
						kemhan_proyek.nama AS proyek,
						kemhan_proyek.output AS output,
						kemhan_proyek.nilai AS nilai_pagu
					FROM
						kemhan_proyek
					INNER JOIN kemhan_instansi ON kemhan_instansi.id = kemhan_proyek.id_instansi
					INNER JOIN kemhan_kategori_bb ON kemhan_kategori_bb.id = kemhan_proyek.id_kategori_bb";
		
		$query = $this->db->query($qry);
        return $query->result();
	}
 
    private function _get_datatables_query()
    {
        $this->db->from($this->table);
        $i = 0;
        foreach ($this->column as $item)
        {
            if($_POST['search']['value'])
                ($i===0) ? $this->db->like($item, $_POST['search']['value']) : $this->db->or_like($item, $_POST['search']['value']);
            $column[$i] = $item;
            $i++;
        }
 
        if(isset($_POST['order']))
        {
            $this->db->order_by($column[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
        }
        else if(isset($this->order))
        {
            $order = $this->order;
            $this->db->order_by(key($order), $order[key($order)]);
        }
    }
 
    function get_datatables()
    {
        $this->_get_datatables_query();
        if($_POST['length'] != -1)
        $this->db->limit($_POST['length'], $_POST['start']);
        $query = $this->db->get();
        return $query->result();
    }
 
    function count_filtered()
    {
        $this->_get_datatables_query();
        $query = $this->db->get();
        return $query->num_rows();
    }
 
    public function count_all()
    {
        $this->db->from($this->table);
        return $this->db->count_all_results();
    }
 
    public function get_by_id($id)
    {
        $this->db->from($this->table);
        $this->db->where('id',$id);
        $query = $this->db->get();
 
        return $query->row();
    }
 
    public function save($data)
    {
        $this->db->insert($this->table, $data);
        return $this->db->insert_id();
    }
 
    public function update($where, $data)
    {
        $this->db->update($this->table, $data, $where);
        return $this->db->affected_rows();
    }
 
    public function delete_by_id($id)
    {
        $this->db->where('id', $id);
        $this->db->delete($this->table);
    }
 
}