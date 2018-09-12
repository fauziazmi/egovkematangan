<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Feedback extends CI_Controller{

    public function index(){
        $wilayah = $this->session->userdata('ses_wilayah');
        $data = array(
            'ses_level' => $this->session->userdata('ses_level'),
            'data_laporan' => $this->model->GetPenilaian(("where wilayah = '$wilayah' order by id_penilaian DESC"))->result_array(),
            'content' => 'feedback/index',
            );
        $this->load->view('template/site', $data);
    }
}
