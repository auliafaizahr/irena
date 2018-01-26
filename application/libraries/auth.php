<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); 

class Auth {

	var $CI = null;

	function __construct()
	{
		$this->CI =& get_instance();
		$this->CI->load->database();
	}
	
	function do_login($login = NULL)
	{
		if(!isset($login))
			return FALSE;
	
		//Our array has to have 2 values
		//No more, no less!
		if(count($login) != 2)
		return FALSE;
	
		$email 		= $login['email'];
		$password 	= $login['password'];
		
		$qry = "SELECT
					irena_user.id as id,
					irena_user.id_user_level as id_user_level,
					irena_user_level.nama AS `level`,
					irena_user.email AS email,
					irena_user.nama_depan AS nama_depan,
					irena_user.nama_belakang AS nama_belakang,
					irena_user.nama_panggilan AS nama_panggilan,
					irena_user.`password` AS `password`,
					irena_user.foto AS foto
				FROM
				irena_user
					INNER JOIN irena_user_level ON irena_user_level.id = irena_user.id_user_level
				WHERE 
					irena_user.email = '$email' AND irena_user.password = '$password'";
					
		$query=$this->CI->db->query($qry);
		
		//$this->CI->db->from('users');
		//$this->CI->db->where('user_name', $user_name);
		//$this->CI->db->where("password=('$password')");
		//$query = $this->CI->db->get();
		
		
     	foreach ($query->result() as $row)
       	{
       		$user_id 			= $row->id;
			$email 				= $row->email;
			$nama_depan 		= $row->nama_depan;
			$nama_belakang 		= $row->nama_belakang;
			$nama_panggilan 	= $row->nama_panggilan;
			$foto 				= $row->foto;
			$level				= $row->level;
			$id_user_level		= $row->id_user_level;
        }
	
		if ($query->num_rows() == 1){
			$newdata = array(
					'id'				=> $user_id,
					'email'  			=> $email,
					'nama_depan'  		=> $nama_depan,
					'nama_belakang'  	=> $nama_belakang,
					'nama_panggilan'	=> $nama_panggilan,
					'foto'  			=> $foto,
					'level'  			=> $level,
					'id_user_level'  	=> $id_user_level,
					'mon_logged_in' 	=> TRUE
				);
				
			//insert log
			//update data
			$field = array(
						'id_user'		=> $user_id,
						'on_off'		=> '1',
						'update_date'	=> date('Y-m-d H:i:s')
					);
			$this->CI->db->insert('irena_user_log', $field);
				
			// Our user exists, set session.
			$this->CI->session->set_userdata($newdata);
			return TRUE;
		}else{
			//update
		$field = array(
					'id_user'		=> $this->CI->session->userdata('id'),
					'on_off'		=> False,
					'update_date'	=> date('Y-m-d H:i:s')
				);
		$this->CI->db->insert('irena_user_log', $field);
		
			// No existing user.
			return FALSE;
		}
	}
 
	 /**
         *
         * This function restricts users from certain pages.
         * use restrict(TRUE) if a user can't access a page when logged in
         *
         * @access	public
         * @param	boolean	wether the page is viewable when logged in
         * @return	void
         */	
    	function restrict($logged_out = FALSE)
    	{
		// If the user is logged in and he's trying to access a page
		// he's not allowed to see when logged in,
		// redirect him to the index!
		if ($logged_out && is_logged_in())
		{
		      echo warning('Maaf, sepertinya Anda sudah login...',"#");
		      die();
		}else{
			
		}
		
		// If the user isn' logged in and he's trying to access a page
		// he's not allowed to see when logged out,
		// redirect him to the login page!
		if ( ! $logged_out && !is_logged_in()) 
		{
		      echo warning('Anda diharuskan untuk Login bila ingin mengakses halaman ini.',"#");
		      $this->CI->session->sess_destroy();	
			  //echo goToPage('mulai/index');
			  echo goToPage('mulai/index');
		}

	}

	function logout() 
	{
		//update
		$field = array(
					'id_user'		=> $this->CI->session->userdata('id'),
					'on_off'		=> False,
					'update_date'	=> date('Y-m-d H:i:s')
				);
		$this->CI->db->insert('irena_user_log', $field);
		
		$this->CI->session->sess_destroy();	
		return TRUE;
	}
	

	
}
// End of library class
// Location: system/application/libraries/Auth.php
