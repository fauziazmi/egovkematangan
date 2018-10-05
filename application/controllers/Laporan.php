<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Laporan extends CI_Controller{

    public function index(){
        $wilayah = $this->session->userdata('ses_wilayah');
        $data_laporan = $this->model->GetDtlp("order by id DESC")->result_array(); 
        //$id_laporan_feedback1 = $this->model->GetFeedback1("where id_laporan = 14")->row_array();
        $no = 1; foreach ($data_laporan as $data){
            $id_laporan[$no] = $data['id'];
            $dimensi1[$no] = $this->model->GetDimensi1("where id_laporan = '$id_laporan[$no]'")->row_array(); //pencocokan id_laporan pada tabel penilaian dengan id_laporan (FK) pada tabel feedback_1
            $dimensi2[$no] = $this->model->GetDimensi2("where id_laporan = '$id_laporan[$no]'")->row_array();
            $dimensi3[$no] = $this->model->GetDimensi3("where id_laporan = '$id_laporan[$no]'")->row_array();
            $dimensi4[$no] = $this->model->GetDimensi4("where id_laporan = '$id_laporan[$no]'")->row_array();
            //$penilaian_id[$no] = $feedback1[$no]['id_laporan'];
            $no++;
        }
        
        //$no = 0;
        //$id_laporan = $data_penilaian['id_laporan'];
        $data = array(
            'ses_level' => $this->session->userdata('ses_level'),
            'data_laporan' => $data_laporan,
            //'data_feedback_1' => $this->model->GetFeedback1(("where id_laporan = '$penilaian_id[0]'"))->row_array(),
            'data_dimensi_1' => array(),
            'data_dimensi_2' => array(),
            'data_dimensi_3' => array(),
            'data_dimensi_4' => array(),
            'content' => 'laporan/laporan-list',
            );
        for ($i = 1; $i < $no ; $i++) { //1 itu yang descending di id_laporan
            $data['data_dimensi_1'][$i] = $dimensi1[$i];
            $data['data_dimensi_2'][$i] = $dimensi2[$i];
            $data['data_dimensi_3'][$i] = $dimensi3[$i];
            $data['data_dimensi_4'][$i] = $dimensi4[$i];
        }
        $this->load->view('template/site', $data);
    }
}
