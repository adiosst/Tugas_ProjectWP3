<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Web extends CI_Controller {


	public function _construct()
	{
		session_start();
		parent::__construct();
		$this->load->model('Perpus_model');
	}
	public function index(){
		$data['title']='Home Perpustakaan';
		$tmp['content']=$this->load->view('global/home',$data, TRUE);
		$this->load->view('global/layout',$tmp);
	}
	public function lognew()
	{
		$cek = $this->session->userdata('logged_in');
		if(empty($cek))
		{

			//buat atribut form
			$frm['username'] = array('name' => 'username',
				'id' => 'username',
				'type' => 'text',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'YA'
			);
			$frm['password'] = array('name' => 'password',
				'id' => 'password',
				'type' => 'password',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'YA'
			);
			$frm['Nama'] = array('name' => 'Nama',
				'id' => 'Nama',
				'type' => 'Nama',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'Nama	'
			);
			$frm['Gender'] = array('name' => 'Gender',
				'id' => 'Gender',
				'type' => 'Gender',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'Jenis Kelamin : L/P	'
			);
			$frm['Alamat'] = array('name' => 'Alamat',
				'id' => 'Alamat',
				'type' => 'Alamat',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'Alamat	'
			);
			$frm['Agama'] = array('name' => 'Agama',
				'id' => 'Agama',
				'type' => 'Agama',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'Agama	'
			);
			$frm['Status'] = array('name' => 'Status Member',
				'id' => 'Status Member',
				'type' => 'Status Member',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'Status Member	'
			);
			$frm['HP'] = array('name' => 'HP',
				'id' => 'HP',
				'type' => 'HP',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'HP	'
			);
			$frm['Keterangan'] = array('name' => 'Keterangan',
				'id' => 'Keterangan',
				'type' => 'Keterangan',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'Keterangan	'
			);

			$frm['title']='Register';
			$tmp['content']=$this->load->view('global/loginnew',$frm);
	
		}
		else
		{
			$st = $this->session->userdata('stts');
			echo $s = $this->session->userdata('username');
			if($st=='admin')
			{				
				header('location:'.base_url().'admin/Home');
			}
			else if($st=='petugas')
			{
				header('location:'.base_url().'petugas/Home');
			}
			else if($st=='member')
			{
				header('location:'.base_url().'member/Home');
			}
			else if($st=='register')
			{
				header('location:'.base_url().'registering/Home');
			}
		
		}
	}
	//halaman login
	public function log()
	{
		$cek = $this->session->userdata('logged_in');
		if(empty($cek))
		{

			//buat atribut form
			$frm['username'] = array('name' => 'username',
				'id' => 'username',
				'type' => 'text',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'Username'
			);
			$frm['password'] = array('name' => 'password',
				'id' => 'password',
				'type' => 'password',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'Password'
			);

			$frm['title']='Login & Register';
			$tmp['content']=$this->load->view('global/login',$frm);
	
		}
		else
		{
			$st = $this->session->userdata('stts');
			echo $s = $this->session->userdata('username');
			if($st=='admin')
			{				
				header('location:'.base_url().'admin/Home');
			}
			else if($st=='petugas')
			{
				header('location:'.base_url().'petugas/Home');
			}
			else if($st=='member')
			{
				header('location:'.base_url().'member/Home');
			}
			else if($st=='register')
			{
				header('location:'.base_url().'registering/Home');
			}
		
		}
	}
	//halaman login salah
	public function log_salah()
	{
		$cek = $this->session->userdata('logged_in');
		if(empty($cek))
		{

			//buat atribut form
			$frm['username'] = array('name' => 'username',
				'id' => 'username',
				'type' => 'text',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'Username'
			);
			$frm['password'] = array('name' => 'password',
				'id' => 'password',
				'type' => 'password',
				'value' => '',
				'class' => 'form-control',
				'placeholder' => 'Password'
				
			);
			
			

			$frm['title']='Login & Register';
			$tmp['content']=$this->load->view('global/logsalah',$frm);
	
		}
		else
		{
			$st = $this->session->userdata('stts');
			echo $s = $this->session->userdata('username');
			if($st=='admin')
			{				
				header('location:'.base_url().'admin/Home');
			}
			else if($st=='petugas')
			{
				header('location:'.base_url().'petugas/Home');
			}
			else if($st=='member')
			{
				header('location:'.base_url().'member/Home');
			}
			else if($st=='register')
			{
				header('location:'.base_url().'registering/Home');
			}
		
		}
	}

	
	
	//mengambil data login
	public function login()
	{
		$u = $this->input->post('username');
		$p = $this->input->post('password');
		$this->Perpus_model->getLoginData($u,$p);
	}
	public function login2()
	{
		$u = $this->input->post('username');
		$p = $this->input->post('password');
		$this->Perpus_model->getLoginData($u,$u);
	}
	
	//logout
	public function logout()
	{
		$cek = $this->session->userdata('logged_in');
		if(empty($cek))
		{
			
			header('location:'.base_url().'web/log');
		}
		else
		{
			
			$this->session->sess_destroy();
			header('location:'.base_url().'web/log');
			
		}
	}

}

/* End of file web.php */
/* Location: ./application/controllers/web.php */