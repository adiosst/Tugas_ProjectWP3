<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Kelas extends CI_Controller {

    public function __construct()
        {
            parent::__construct();
            //$this->Security_model->login_check();
        }
    public function index()
    {
        $data['log']=$this->db->get_where('tb_petugas',array('id_petugas' => $this->session->userdata('username')))->result();
        $cek = $this->session->userdata('logged_in');
        $stts = $this->session->userdata('stts');
        /*jika status login Yes dan status admin tampilkan*/
        if(!empty($cek) && $stts=='member')
        {
            /*layout*/  
            $data['title']='Daftar NIK';
            $data['pointer']="NIK";
            $data['classicon']="fa fa-book";
            $data['main_bread']="Data NIK";
            $data['sub_bread']="Daftar NIK";
            $data['desc']="Data Master NIK, Menampilkan data NIK";

            /*data yang ditampilkan*/
            //$data['data_agama'] = $this->Buku_model->getAllData("tb_agama");
            $data['data_kelas'] = $this->Buku_model->getAllData("tb_kelas");
            //$data['data_agama'] = $this->Buku_model->getAllData("tb_agama");
            //$data['isi']=$this->Anggota_model->get_all();
            //$data['js']=$this->load->view('admin/anggota/js');
            $tmp['content']=$this->load->view('member/kelas/View_kelas',$data, TRUE);
            $this->load->view('member/layout',$tmp);
        }
        else
        /*jika status login NO atau status bukan admin kembalikan ke login*/
        {
            header('location:'.base_url().'web/log');
        }
    }
        public function create()
    {
        $data['log']=$this->db->get_where('tb_petugas',array('id_petugas' => $this->session->userdata('username')))->result();
        $cek = $this->session->userdata('logged_in');
        $stts = $this->session->userdata('stts');
        if(!empty($cek) && $stts=='member')
        {   
                $this->form_validation->set_rules('kelas', 'kelas', 'trim|required');

                if($this->form_validation->run()==FALSE)
                {
                    $data['title']='Tambah NIK';
                    $data['pointer']="NIK";
                    $data['classicon']="fa fa-book";
                    $data['main_bread']="Data NIK";
                    $data['sub_bread']="Tambah NIK";
                    $data['desc']="form untuk Input data NIK";

                    /*data yang ditampilkan*/
                    //$data['data_provinsi'] = $this->Buku_model->getAllData("tb_provinsi");
                    $data['data_kelas'] = $this->Buku_model->getAllData("tb_kelas");
                    //$data['data_agama'] = $this->Buku_model->getAllData("tb_agama");
                    //$data['isi']=$this->Anggota_model->get_all();
                    //$data['js']=$this->load->view('admin/anggota/js');
                    $tmp['content']=$this->load->view('member/kelas/Create_kelas',$data, TRUE);
                    $this->load->view('member/layout',$tmp);
                }
                else
                {
                    $data = array('id_kelas' => '',
                                  'kelas' => $this->input->post('kelas')
                                );
                    $quer=$this->Buku_model->insertData('tb_kelas',$data);
                    redirect("member/Kelas","refresh");   
                }
        }
        else
        {
            header('location:'.base_url().'web/log');
        }
    }
        public function edit()
    { 
        $data['log']=$this->db->get_where('tb_petugas',array('id_petugas' => $this->session->userdata('username')))->result();
        $cek = $this->session->userdata('logged_in');
        $stts = $this->session->userdata('stts');
        if(!empty($cek) && $stts=='member')
        {       
                $id = $this->input->get('id_kelas',true);    
                $this->form_validation->set_rules('kelas', 'kelas', 'trim|required');

                if($this->form_validation->run()==FALSE)
                {
                    //$data ['err'] = validation_errors();
                    $data['title']='Edit NIK';
                    $data['pointer']="NIK";
                    $data['classicon']="fa fa-book";
                    $data['main_bread']="Data NIK";
                    $data['sub_bread']="Edit NIK";
                    $data['desc']="Form untuk melakukan edit data NIK";

                    /*data yang ditampilkan*/
                    //$data['provinsi'] = $this->Buku_model->get_detail1('tb_provinsi','id_provinsi',$id);
                    $data['kelas'] = $this->Buku_model->get_detail1('tb_kelas','id_kelas',$id);
                    //$data['agama'] = $this->Buku_model->get_detail1('tb_agama','id_agama',$id);
                    $tmp['content']=$this->load->view('member/kelas/Edit_kelas',$data,true);
                    $this->load->view('member/layout',$tmp);
                }
        }
        else
        {
            header('location:'.base_url().'web/log');
        }
    }
    public function update()
    {
        $data['log']=$this->db->get_where('tb_petugas',array('id_petugas' => $this->session->userdata('username')))->result(); 
        $cek = $this->session->userdata('logged_in');
        $stts = $this->session->userdata('stts');
        if(!empty($cek) && $stts=='member')
        {       
                $id = $this->input->post('id_kelas');    
                $this->form_validation->set_rules('kelas', 'kelas', 'trim|required');
                if($this->form_validation->run()==FALSE)
                {
                    //$data ['err'] = validation_errors();
                    $data['title']='Edit NIK';
                    $data['pointer']="NIK";
                    $data['classicon']="fa fa-book";
                    $data['main_bread']="Data NIK";
                    $data['sub_bread']="Edit NIK";
                    $data['desc']="Form untuk melakukan edit NIK";

                    /*data yang ditampilkan*/
                    //$data['agama'] = $this->Buku_model->get_detail1('tb_agama','id_agama',$id);
                    $data['kelas'] = $this->Buku_model->get_detail1('tb_kelas','id_kelas',$id);
                    //$data['data_agama'] = $this->Buku_model->getAllData("tb_agama");
                    $tmp['content']=$this->load->view('member/provinsi/Edit_anggota',$data,true);
                    $this->load->view('member/layout',$tmp);
                }
                else
                {
                    $id = $this->input->post('id_kelas');    
                    $field='id_kelas';
                    $data = array(
                                  'kelas' => $this->input->post('kelas')
                                );
                    $quer=$this->Buku_model->updateData1('tb_kelas',$data,$field,$id);
                    redirect("member/Kelas","refresh");   
                }
        }
        else
        {
            header('location:'.base_url().'web/log');
        }
    }
        public function delete()
        {
            $data['log']=$this->db->get_where('tb_petugas',array('id_petugas' => $this->session->userdata('username')))->result();
            $field='id_kelas';
            $id = $this->input->get('id_kelas',true);    
            $query = $this->Buku_model->delete('tb_kelas',$field,$id);                   
            if ($query)
                {
                    $this->session->set_flashdata("message","berhasil");
                    redirect("member/Kelas","refresh");
                }
            else
                {
                    $this->session->set_flashdata("message","gagal");
                    redirect("member/Kelas","refresh");
                }
        }
}
?>