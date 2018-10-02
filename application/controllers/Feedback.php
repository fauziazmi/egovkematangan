<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Feedback extends CI_Controller{

    public function index(){
        $wilayah = $this->session->userdata('ses_wilayah');
        $data_penilaian = $this->model->GetPenilaian(("where wilayah = '$wilayah' order by id_penilaian DESC"))->result_array();
        //$id_penilaian_feedback1 = $this->model->GetFeedback1("where id_penilaian = 14")->row_array();
        $no = 1; foreach ($data_penilaian as $data){
            $id_penilaian[$no] = $data['id_penilaian'];
            $feedback1[$no] = $this->model->GetFeedback1("where id_penilaian = '$id_penilaian[$no]'")->row_array(); //pencocokan id_penilaian pada tabel penilaian dengan id_penilaian (FK) pada tabel feedback_1
            $feedback2[$no] = $this->model->GetFeedback2("where id_penilaian = '$id_penilaian[$no]'")->row_array();
            $feedback3[$no] = $this->model->GetFeedback3("where id_penilaian = '$id_penilaian[$no]'")->row_array();
            $feedback4[$no] = $this->model->GetFeedback4("where id_penilaian = '$id_penilaian[$no]'")->row_array();
            //$penilaian_id[$no] = $feedback1[$no]['id_penilaian'];
            $no++;
        }
        //$no = 0;
        //$id_penilaian = $data_penilaian['id_penilaian'];
        $data = array(
            'ses_level' => $this->session->userdata('ses_level'),
            'data_laporan' => $data_penilaian,
            //'data_feedback_1' => $this->model->GetFeedback1(("where id_penilaian = '$penilaian_id[0]'"))->row_array(),
            'data_feedback_1' => array(),
            'data_feedback_2' => array(),
            'data_feedback_3' => array(),
            'data_feedback_4' => array(),
            'content' => 'feedback/feedback-list',
            );
        for ($i = 1; $i < $no ; $i++) { //1 itu yang descending di id_penilaian
            $data['data_feedback_1'][$i] = $feedback1[$i];
            $data['data_feedback_2'][$i] = $feedback2[$i];
            $data['data_feedback_3'][$i] = $feedback3[$i];
            $data['data_feedback_4'][$i] = $feedback4[$i];
        }
        $this->load->view('template/site', $data);
    }
}
