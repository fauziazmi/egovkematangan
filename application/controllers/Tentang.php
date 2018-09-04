<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tentang extends CI_Controller{

    public function index(){
        $data = array(
            'ses_level' => $this->session->userdata('ses_level'),
            //'data_pendanaan' => $this->model->GetPendanaan('order by pendanaan_name asc')->result_array(),
            //'data_years' => $this->model->GetYears('order by years_name asc')->result_array(),
            //'data_npj' => $this->model->GetDtlp('order by npj')->result_array(),
            'content' => 'tentang/index',
            //'data_laporan' => $this->model->GetTotDtlp('order by years_name asc')->result_array(),
        );
        $this->load->view('template/site', $data);
    }
}
