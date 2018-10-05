<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller{
    /*public function __construct()
    {
        parent::__construct();
        $this->cek_login();
    }*/

    private function cek_login(){
        if (!$this->session->userdata('ses_id')){
            $this->session->set_flashdata('error','Silahkan login terlebih dahulu');
            redirect('login');
        }
    }

    public function index(){
        $wilayah = $this->session->userdata('ses_wilayah');
        $data_notifikasi = $this->model->GetNotifikasi("where wilayah = '$wilayah'")->row_array();
        $tanggal_hari_ini = date("Y-m-d");
        $data = array(
            'wilayah' => $wilayah,
            'total_years' => $this->model->GetYears()->num_rows(),
            'total_pendanaan' => $this->model->GetPendanaan()->num_rows(),
            'total_penilaian' => $this->model->GetPenilaian(("where wilayah = '$wilayah'"))->num_rows(),
            'total_laporan' => $this->model->GetDtlp()->num_rows(),
            'state_notifikasi' => $data_notifikasi['state'],
            'data_laporan' => $this->model->GetDtlp("where aktif = 1 order by wilayah asc")->result_array(),
            'data_laporan_hari_ini' => $this->model->GetDtlp("where tgl_terima = '$tanggal_hari_ini'")->num_rows(),
            'content' => 'template/dashboard',
        );
        $this->load->view('template/site', $data);
    }

}
?>