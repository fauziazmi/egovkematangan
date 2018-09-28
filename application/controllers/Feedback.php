<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Feedback extends CI_Controller{

    public function index(){
        $wilayah = $this->session->userdata('ses_wilayah');
        $data_penilaian = $this->model->GetPenilaian(("where wilayah = '$wilayah' order by id_penilaian DESC"))->result_array();
        //$id_penilaian = $data_penilaian['id_penilaian'];
        $data = array(
            'ses_level' => $this->session->userdata('ses_level'),
            'data_laporan' => $data_penilaian,
            'data_feedback_1' => $this->model->GetFeedback1(("where id_penilaian = '$data_penilaian['id_penilaian']'"))->result_array(),
            'content' => 'feedback/feedback-list',
            );
        $this->load->view('template/site', $data);
    }
}
