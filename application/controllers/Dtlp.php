<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Dtlp extends CI_Controller{

    public function __construct()
    {
        parent::__construct();
        $this->cek_login();
        $this->load->helper(array('form','url'));
        $this->load->library('form_validation');
    }

    private function cek_login(){
        if (!$this->session->userdata('ses_id')){
            $this->session->set_flashdata('error', 'Silahkan login terlebih dahulu');
            redirect('login');
        }
    }

    public function cek_user(){
        if ($this->session->userdata('ses_level') == 'Pemda' or $this->session->userdata('ses_level') == 'Pimpinan'){
            $this->session->set_flashdata('error','Maaf anda tidak bisa masuk kehalaman tersebut');
            redirect('dtlp');
        }
    }

    public function cek_pengunjung(){
        if ($this->session->userdata('ses_level') == 'Pengunjung'){
            $this->session->set_flashdata('error','Maaf anda tidak bisa masuk kehalaman tersebut');
            redirect('dtlp');
        }
    }

    public function index(){
        $data = array(
            'ses_level' => $this->session->userdata('ses_level'),
            //'data_pendanaan' => $this->model->GetPendanaan('order by pendanaan_name asc')->result_array(),
            //'data_years' => $this->model->GetYears('order by years_name asc')->result_array(),
            //'data_npj' => $this->model->GetDtlp('order by npj')->result_array(),
            'content' => 'dtlp/dtlp-data', //ke folder vie dtlp/dtlp-data
            //'data_laporan' => $this->model->GetTotDtlp('order by years_name asc')->result_array(),
            'data_pertanyaan_1' => $this->model->GetPertanyaan("where dimensi = 'sumber daya'")->result_array(),
            'data_pertanyaan_2' => $this->model->GetPertanyaan("where dimensi = 'pengungkit'")->result_array(),
            'data_pertanyaan_3' => $this->model->GetPertanyaan("where dimensi = 'nilai'")->result_array(),
            'data_pertanyaan_4' => $this->model->GetPertanyaan("where dimensi = 'dampak'")->result_array(),
        );
        $this->load->view('template/site', $data);
    }

    public function simpan_data(){
        $this->cek_user();
        if (!$_POST['simpan']){
            $this->session->set_flashdata('warning', 'Tambah data belum dilakukan');
            redirect('dtlp');
        }
        $wilayah = $this->input->post('wilayah');
        //$tahun_penelitian = $this->input->post('tahun_penelitian');
        //$cek_kode = $this->model->GetNotifikasi("where wilayah = '$wilayah'")->num_rows();
        $data_notifikasi = $this->model->GetNotifikasi("where wilayah = '$wilayah'")->row_array();
        //$data_years = $this->model->GetYears("where code_years = '$tahun_penelitian'")->row_array();
        if ($data_notifikasi['state'] == 1){
            $this->session->set_flashdata('warning', 'Data sudah ada');
            redirect('dtlp');
        }else {
            $config = array(
                'upload_path' => './assets/pdf/'.$wilayah,
                'allowed_types' => 'gif|jpg|JPG|png|JPEG|pdf|doc',
                'max_size' => '1000000',
            );
            $this->load->library('upload', $config);
            //$this->upload->do_upload('pdf_1');
            for($n = 1; $n <= 14; $n++){
                $this->upload->do_upload('pdf_1_'.$n);
                $upload_data = $this->upload->data();
                $pdf1[$n] = $upload_data['file_name'];
            }

            for($n = 1; $n <= 10; $n++){
                $this->upload->do_upload('pdf_2_'.$n);
                $upload_data = $this->upload->data();
                $pdf2[$n] = $upload_data['file_name'];
            }

            for($n = 1; $n <= 6; $n++){
                $this->upload->do_upload('pdf_3_'.$n);
                $upload_data = $this->upload->data();
                $pdf3[$n] = $upload_data['file_name'];
            }

            for($n = 1; $n <= 5; $n++){
                $this->upload->do_upload('pdf_4_'.$n);
                $upload_data = $this->upload->data();
                $pdf4[$n] = $upload_data['file_name'];
            }
            //$this->upload->do_upload('pdf_2');
            /*$this->upload->do_upload('pdf_2_1');
            $upload_data = $this->upload->data();
            $pdf_2= $upload_data['file_name'];

            //$this->upload->do_upload('pdf_3');
            $this->upload->do_upload('pdf_3_1');
            $upload_data = $this->upload->data();
            $pdf_3= $upload_data['file_name'];

            //$this->upload->do_upload('pdf_4');
            $this->upload->do_upload('pdf_4_1');
            $upload_data = $this->upload->data();
            $pdf_4= $upload_data['file_name'];*/
            $jawaban1 = 0;$jawaban2 = 0;$jawaban3 = 0;$jawaban4 = 0;
            for($n=1 ; $n <= 14 ; $n++){
                $jawaban_1[$n] = $this->input->post('jawaban_1_'.$n);
                $jawaban1 = $jawaban_1[$n] + $jawaban1;
            }
            $jawaban1 = $jawaban1/14;
            for($n=1 ; $n <= 10 ; $n++){
                $jawaban_2[$n] = $this->input->post('jawaban_2_'.$n);
                $jawaban2 = $jawaban_2[$n] + $jawaban2;
            }
            $jawaban2 = $jawaban2/10;
            for($n=1 ; $n <= 6 ; $n++){
                $jawaban_3[$n] = $this->input->post('jawaban_3_'.$n);
                $jawaban3 = $jawaban_3[$n] + $jawaban3;
            }
            $jawaban3 = $jawaban3/6;
            for($n=1 ; $n <= 5 ; $n++){
                $jawaban_4[$n] = $this->input->post('jawaban_4_'.$n);
                $jawaban4 = $jawaban_4[$n] + $jawaban4;
            }
            $jawaban4 = $jawaban4/5;
            $nilai = ($jawaban1 + $jawaban2 + $jawaban3 + $jawaban4)/4;
            /*if($jawaban_1 == 'yes') $nilai_1 = 1; else 0; 
            if($jawaban_2 == 'yes') $nilai_2 = 1; else 0; 
            if($jawaban_3 == 'yes') $nilai_3 = 1; else 0; 
            if($jawaban_4 == 'yes') $nilai_4 = 1; else 0;*/ 
            //$nilai = $nilai_1 + $nilai_2 + $nilai_3 + $nilai_4;
            $data = array(
                //'kode_penelitian' => $kode_penelitian,
                'jawaban_1' => $jawaban1,
                'jawaban_2' => $jawaban2,
                'jawaban_3' => $jawaban3,
                'jawaban_4' => $jawaban4,
                'nilai' => $nilai,
                'wilayah' => $this->input->post('wilayah'),
                'tgl_terima' => $this->input->post('tgl_terima'),
                /*'pdf_1' => $pdf_1,
                'pdf_2' => $pdf_2,
                'pdf_3' => $pdf_3,
                'pdf_4' => $pdf_4,*/
                'aktif' => '1'
            );
            $this->model->Simpan('laporan', $data);
            $id_laporan = $this->model->GetID();
            $data_laporan = $this->model->GetDtlp("where id = '$id_laporan' AND wilayah = '$wilayah' AND aktif = 1")->row_array();
            $data_dim1 = array(
                'id_laporan' => $data_laporan['id'],
                'jawaban_1_1' => $this->input->post('jawaban_1_1'),'jawaban_1_2' => $this->input->post('jawaban_1_2'),'jawaban_1_3' => $this->input->post('jawaban_1_3'),'jawaban_1_4' => $this->input->post('jawaban_1_4'),'jawaban_1_5' => $this->input->post('jawaban_1_5'),'jawaban_1_6' => $this->input->post('jawaban_1_6'),'jawaban_1_7' => $this->input->post('jawaban_1_7'),'jawaban_1_8' => $this->input->post('jawaban_1_8'),'jawaban_1_9' => $this->input->post('jawaban_1_9'),'jawaban_1_10' => $this->input->post('jawaban_1_10'),'jawaban_1_11' => $this->input->post('jawaban_1_11'),'jawaban_1_12' => $this->input->post('jawaban_1_12'),'jawaban_1_13' => $this->input->post('jawaban_1_13'),'jawaban_1_14' => $this->input->post('jawaban_1_14'),
                'pdf_1_1' => $pdf1[1],'pdf_1_2' => $pdf1[2],'pdf_1_3' => $pdf1[3],'pdf_1_4' => $pdf1[4],'pdf_1_5' => $pdf1[5],'pdf_1_6' => $pdf1[6],'pdf_1_7' => $pdf1[7],'pdf_1_8' => $pdf1[8],'pdf_1_9' => $pdf1[9],'pdf_1_10' => $pdf1[10],'pdf_1_11' => $pdf1[11],'pdf_1_12' => $pdf1[12],'pdf_1_13' => $pdf1[13],'pdf_1_14' => $pdf1[14],
            );
            $this->model->Simpan('dimensi_1', $data_dim1);
            $data_dim2 = array(
                'id_laporan' => $data_laporan['id'],
                'jawaban_2_1' => $this->input->post('jawaban_2_1'),'jawaban_2_2' => $this->input->post('jawaban_2_2'),'jawaban_2_3' => $this->input->post('jawaban_2_3'),'jawaban_2_4' => $this->input->post('jawaban_2_4'),'jawaban_2_5' => $this->input->post('jawaban_2_5'),'jawaban_2_6' => $this->input->post('jawaban_2_6'),'jawaban_2_7' => $this->input->post('jawaban_2_7'),'jawaban_2_8' => $this->input->post('jawaban_2_8'),'jawaban_2_9' => $this->input->post('jawaban_2_9'),'jawaban_2_10' => $this->input->post('jawaban_2_10'),
                'pdf_2_1' => $pdf2[1],'pdf_2_2' => $pdf2[2],'pdf_2_3' => $pdf2[3],'pdf_2_4' => $pdf2[4],'pdf_2_5' => $pdf2[5],'pdf_2_6' => $pdf2[6],'pdf_2_7' => $pdf2[7],'pdf_2_8' => $pdf2[8],'pdf_2_9' => $pdf2[9],'pdf_2_10' => $pdf2[10],
            );
            $this->model->Simpan('dimensi_2', $data_dim2);
            $data_dim3 = array(
                'id_laporan' => $data_laporan['id'],
                'jawaban_3_1' => $jawaban_3[1],'jawaban_3_2' => $jawaban_3[2],'jawaban_3_3' => $jawaban_3[3],'jawaban_3_4' => $jawaban_3[4],'jawaban_3_5' => $jawaban_3[5],'jawaban_3_6' => $jawaban_3[6],
                'pdf_3_1' => $pdf3[1],'pdf_3_2' => $pdf3[2],'pdf_3_3' => $pdf3[3],'pdf_3_4' => $pdf3[4],'pdf_3_5' => $pdf3[5],'pdf_3_6' => $pdf3[6],
            );
            $this->model->Simpan('dimensi_3', $data_dim3);
            $data_dim4 = array(
                'id_laporan' => $data_laporan['id'],
                'jawaban_4_1' => $jawaban_4[1],'jawaban_4_2' => $jawaban_4[2],'jawaban_4_3' => $jawaban_4[3],'jawaban_4_4' => $jawaban_4[4],'jawaban_4_5' => $jawaban_4[5],
                'pdf_4_1' => $pdf4[1],'pdf_4_2' => $pdf4[2],'pdf_4_3' => $pdf4[3],'pdf_4_4' => $pdf4[4],'pdf_4_5' => $pdf4[5],
            );
            $this->model->Simpan('dimensi_4', $data_dim4);
            $data_notifikasi = array(
                'state' => 1
            );
            $this->model->Update('notifikasi', $data_notifikasi, array('wilayah' => $wilayah));
            $this->session->set_flashdata('sukses', 'Simpan data berhasil dilakukan');
            redirect('dtlp');
        }
    }

    public function edit_data($kode = 0){
        $this->cek_user();
        if ($this->uri->segment(3) == null){
            $this->session->set_flashdata('warning','Anda belum memilih data untuk di edit');
            redirect('dtlp');
        }
        $data_laporan = $this->model->GetDtlp("where kode_penelitian = '$kode'")->row_array();

        $pendanaan_post_array = array();
        foreach ($this->model->GetDtlp("where kode_penelitian = '$kode'")->result_array() as $pendanaan){
            $pendanaan_post_array[] = $pendanaan['pendanaan'];
        }

        $years_post_array = array();
        foreach ($this->model->GetDtlp("where kode_penelitian = '$kode'")->result_array() as $years){
            $years_post_array[] = $years['tahun_penelitian'];
        }

        $tahun = $this->model->GetTotDtlp("where kode_penelitian = '$kode'")->row_array();

        $data = array(
            'kode_penelitian' => $data_laporan['kode_penelitian'],
            'judul_penelitian' => $data_laporan['judul_penelitian'],
            'npj' => $data_laporan['npj'],
            'years_post' => $years_post_array,
            'tahun_penelitian' => $tahun['years_name'],
            'nama_instansi' => $data_laporan['nama_instansi'],
            'alamat_instansi' => $data_laporan['alamat_instansi'],
            'pendanaan_post' => $pendanaan_post_array,
            'tgl_terima' => $data_laporan['tgl_terima'],
            'nomor_induk' => $data_laporan['nomor_induk'],
            'hadiah_tukar' => $data_laporan['hadiah_tukar'],
            'pdf' => $data_laporan['pdf'],
            'pendanaan' => $this->model->GetPendanaan()->result_array(),
            'years' => $this->model->GetYears()->result_array(),
            'content' => 'dtlp/dtlp-edit',
        );
        $this->load->view('template/site',$data);
    }

    public function update_data(){
        $this->cek_user();
        if (!$_POST['update']){
            $this->session->set_flashdata('warning','Update data belum dilakukan');
            redirect('dtlp');
        }
        $kode_penelitian = $this->input->post('kode_penelitian');
        $kode_penelitian1 = $this->input->post('kode_penelitian1');
        $tahun_penelitian_lama = $this->input->post('tahun_penelitian');
        $tahun_penelitian_baru = $this->input->post('tahun_penelitian1');
        $data_years = $this->model->GetYears("where code_years = '$tahun_penelitian_baru'")->row_array();
        $pdf_lama = $this->input->post('pdf_lama');
        if ($_FILES['pdf']['name'] == null){
            $pdf = $pdf_lama;
        }else{
            $config = array(
                'upload_path' => './assets/pdf/'.$data_years['years_name'],
                'allowed_types' => 'pdf',
                'max_size' => '1000000',
            );
            $this->load->library('upload', $config);
            $this->upload->do_upload('pdf');
            $upload_data = $this->upload->data();
            $pdf = $upload_data['file_name'];
        }
        $data = array(
            'kode_penelitian' => $kode_penelitian1,
            'judul_penelitian' => $this->input->post('judul_penelitian'),
            'npj' => $this->input->post('npj'),
            'tahun_penelitian' => $this->input->post('tahun_penelitian1'),
            'nama_instansi' => $this->input->post('nama_instansi'),
            'alamat_instansi' => $this->input->post('alamat_instansi'),
            'pendanaan' => $this->input->post('pendanaan'),
            'nomor_induk' => $this->input->post('nomor_induk'),
            'hadiah_tukar' => $this->input->post('hadiah_tukar'),
            'pdf' => $pdf,
        );
        $result = $this->model->Update('laporan',$data,array('kode_penelitian' => $kode_penelitian));
        if ($result == 1){
            if ($_FILES['pdf']['name'] == null and $_POST['pdf_lama'] != null and $data_years['years_name'] == $tahun_penelitian_lama){
            }else{
                unlink('./assets/pdf/'.$tahun_penelitian_lama.'/'.$pdf_lama);
            }
            $this->session->set_flashdata('sukses', 'Simpan data berhasil dilakukan');
            redirect('dtlp');
        }else{
            $this->session->set_flashdata('error', 'Simpan data gagal dilakukan');
            redirect('dtlp');
        }
    }

    public function hapus_data($id = 1){
        $this->cek_user();
        if ($this->uri->segment(3) == null){
            $this->session->set_flashdata('warning','Hapus data belum dilakukan');
            redirect('dtlp');
        }
        $data_laporan = $this->model->GetDtlp("where id = '$id'")->row_array();
        $result = $this->model->Hapus('laporan',array('id' => $id));
        $wilayah = $data_laporan['wilayah'];
        $pdf_1 = $data_laporan['pdf_1'];
        $pdf_2 = $data_laporan['pdf_2'];
        $pdf_3 = $data_laporan['pdf_3'];
        $pdf_4 = $data_laporan['pdf_4'];
        if ($result == 1){
            if ($wilayah != null){
                unlink('./assets/pdf/'.$wilayah.'/'.$pdf_1);
                unlink('./assets/pdf/'.$wilayah.'/'.$pdf_2);
                unlink('./assets/pdf/'.$wilayah.'/'.$pdf_3);
                unlink('./assets/pdf/'.$wilayah.'/'.$pdf_4);
            }
            $this->session->set_flashdata('sukses','Hapus data berhasil dilakukan');
            redirect('years');
        }else{
            $this->session->set_flashdata('error','Hapus data gagal dilakukan');
            redirect('years');
        }

    }

    public function detail_data($id = 1){
        $this->cek_user();
        if ($this->uri->segment(3) == null){
            $this->session->set_flashdata('warning','Anda belum memilih data untuk melihat detail data');
            redirect('dtlp');
        }
        $data_laporan = $this->model->GetDtlp("where id = '$id' AND aktif = 1")->row_array();
        $data = array(
            'wilayah' => $data_laporan['wilayah'],
            'jawaban_1' => $data_laporan['jawaban_1'],
            'jawaban_2' => $data_laporan['jawaban_2'],
            'jawaban_3' => $data_laporan['jawaban_3'],
            'jawaban_4' => $data_laporan['jawaban_4'],
            'nilai' => $data_laporan['Nilai'],
            'tgl_terima' => $data_laporan['tgl_terima'],
            'pdf_1' => $data_laporan['pdf_1'],
            'pdf_2' => $data_laporan['pdf_2'],
            'pdf_3' => $data_laporan['pdf_3'],
            'pdf_4' => $data_laporan['pdf_4'],
            'content' => 'dtlp/dtlp-detail',
        );
        $this->load->view('template/site',$data);
    }

    public function export_excel($id = 1){
        $this->cek_pengunjung();
        $data = array(
            'title' => 'Data Laporan Pemda',
            'data_laporan' => $this->model->GetDtlp("where id = '$id'")->row_array(),
            'data_dimensi_1' => $this->model->GetDimensi1("where id_laporan = '$id'")->row_array(),
        );
        $this->load->view('dtlp/dtlp-report-excel',$data);
    }

    public function export_excel_report(){
        $this->cek_pengunjung();
        //$data_laporan = $this->model->GetDtlp("where wilayah = '$wilayah'")->result_array();
        $jawaban_1 = $this->input->post('jawaban_1');
        $jawaban_2 = $this->input->post('jawaban_2');
        $jawaban_3 = $this->input->post('jawaban_3');
        $jawaban_4 = $this->input->post('jawaban_4');
        $result = $this->model->LikeDtlp($jawaban_1,$jawaban_2,$jawaban_3,$jawaban_4)->result_array();
        $data = array(
            'title' => 'Data Laporan Pemda',
            'data_laporan' => $result,
        );
        $this->load->view('dtlp/dtlp-report-excel',$data);
    }

    public function kirim_email($id = 1)
    {
        $this->cek_user();
        if ($this->uri->segment(3) == null){
            $this->session->set_flashdata('warning','Anda belum memilih data untuk melihat detail data');
            redirect('dtlp');
        }
        $data_laporan = $this->model->GetDtlp("where id = '$id' AND aktif = 1")->row_array();
        $data = array(
            'data_pertanyaan_1' => $this->model->GetPertanyaan("where dimensi = 'sumber daya'")->result_array(),
            'data_pertanyaan_2' => $this->model->GetPertanyaan("where dimensi = 'pengungkit'")->result_array(),
            'data_pertanyaan_3' => $this->model->GetPertanyaan("where dimensi = 'nilai'")->result_array(),
            'data_pertanyaan_4' => $this->model->GetPertanyaan("where dimensi = 'dampak'")->result_array(),
            'wilayah' => $data_laporan['wilayah'],
            'jawaban_1' => $data_laporan['jawaban_1'],
            'jawaban_2' => $data_laporan['jawaban_2'],
            'jawaban_3' => $data_laporan['jawaban_3'],
            'jawaban_4' => $data_laporan['jawaban_4'],
            'data_dimensi1' => $this->model->GetDimensi1("where id_laporan = '$id'")->row_array(),
            'data_dimensi2' => $this->model->GetDimensi2("where id_laporan = '$id'")->row_array(),
            'data_dimensi3' => $this->model->GetDimensi3("where id_laporan = '$id'")->row_array(),
            'data_dimensi4' => $this->model->GetDimensi4("where id_laporan = '$id'")->row_array(),
            /*'pdf_1' => $data_laporan['pdf_1'],
            'pdf_2' => $data_laporan['pdf_2'],
            'pdf_3' => $data_laporan['pdf_3'],
            'pdf_4' => $data_laporan['pdf_4'],*/
            'content' => 'dtlp/dtlp-revisi',
            'lokasi' => 'Kirim Email',
            );
        $this->load->view('template/site', $data);
    }

    public function aksi_kirim()
    {
        $wilayah = $this->input->post('wilayah');
        //$tahun_penelitian = $this->input->post('tahun_penelitian');
       /* $cek_kode = $this->model->GetPenilaian("where wilayah = '$wilayah'")->num_rows();
        //$data_years = $this->model->GetYears("where code_years = '$tahun_penelitian'")->row_array();
        if ($cek_kode > 0){
            $this->session->set_flashdata('warning', 'Data sudah ada');
            redirect('years');
        }else {*/
            $username_assessor = $this->input->post('username_assessor');
            $komentar_overall = $this->input->post('komentar_overall');
            $tgl_terima = $this->input->post('tgl_terima');
            for($n=1 ; $n <= 14 ; $n++){
                $feedback_1[$n] = $this->input->post('feedback_1_'.$n);
            }

            for($n=1 ; $n <= 10 ; $n++){
                $feedback_2[$n] = $this->input->post('feedback_2_'.$n);
            }
            for($n=1 ; $n <= 6 ; $n++){
                $feedback_3[$n] = $this->input->post('feedback_3_'.$n);
            }
            for($n=1 ; $n <= 5 ; $n++){
                $feedback_4[$n] = $this->input->post('feedback_4_'.$n);
            }
            $data = array(
                //'kode_penelitian' => $kode_penelitian,
                'username_assessor' => $username_assessor,
                'wilayah' => $wilayah,
                /*'komentar_1' => $this->input->post('komentar_1'),
                'komentar_2' => $this->input->post('komentar_2'),
                'komentar_3' => $this->input->post('komentar_3'),
                'komentar_4' => $this->input->post('komentar_4'),*/
                'komentar_overall' => $komentar_overall,
                'tgl_terima' => $tgl_terima
            );
            
            $this->model->Simpan('penilaian', $data);
            $id_penilaian = $this->model->GetID();
            //$data_penilaian = $this->model->GetPenilaian("where id_penilaian = '$id_penilaian'");
            $data_feed1 = array(
                'id_penilaian' => $id_penilaian,
                'feedback_1_1' => $feedback_1[1],'feedback_1_2' => $feedback_1[2],'feedback_1_3' => $feedback_1[3],'feedback_1_4' => $feedback_1[4],'feedback_1_5' => $feedback_1[5],'feedback_1_6' => $feedback_1[6],'feedback_1_7' => $feedback_1[7],'feedback_1_8' => $feedback_1[8],'feedback_1_9' => $feedback_1[9],'feedback_1_10' => $feedback_1[10],'feedback_1_11' => $feedback_1[11],'feedback_1_12' => $feedback_1[12],'feedback_1_13' => $feedback_1[13],'feedback_1_14' => $feedback_1[14],
            );
            $this->model->Simpan('feedback_1', $data_feed1);
            $data_feed2 = array(
                'id_penilaian' => $id_penilaian,
                'feedback_2_1' => $feedback_2[1],'feedback_2_2' => $feedback_2[2],'feedback_2_3' => $feedback_2[3],'feedback_2_4' => $feedback_2[4],'feedback_2_5' => $feedback_2[5],'feedback_2_6' => $feedback_2[6],'feedback_2_7' => $feedback_2[7],'feedback_2_8' => $feedback_2[8],'feedback_2_9' => $feedback_2[9],'feedback_2_10' => $feedback_2[10],
            );
            $this->model->Simpan('feedback_2', $data_feed2);
            $data_feed3 = array(
                'id_penilaian' => $id_penilaian,
                'feedback_3_1' => $feedback_3[1],'feedback_3_2' => $feedback_3[2],'feedback_3_3' => $feedback_3[3],'feedback_3_4' => $feedback_3[4],'feedback_3_5' => $feedback_3[5],'feedback_3_6' => $feedback_3[6],
            );
            $this->model->Simpan('feedback_3', $data_feed3);
            $data_feed4 = array(
                'id_penilaian' => $id_penilaian,
                'feedback_4_1' => $feedback_4[1],'feedback_4_2' => $feedback_4[2],'feedback_4_3' => $feedback_4[3],'feedback_4_4' => $feedback_4[4],'feedback_4_5' => $feedback_4[5],
            );
            $this->model->Simpan('feedback_4', $data_feed4);
            $data_notifikasi = array(
                'state' => 0
            );
            $this->model->Update('notifikasi', $data_notifikasi, array('wilayah' => $wilayah));
            $data_aktif = array(
                'aktif' => 0
            );
            $this->model->Update('laporan', $data_aktif, array('wilayah' => $wilayah));
            $this->session->set_flashdata('sukses', 'Simpan data berhasil dilakukan');
            redirect('years');
        //}
    }

    public function export_pdf(){
        $this->cek_pengunjung();
        $kode_penelitian = $this->input->post('kode_penelitian');
        $npj = $this->input->post('npj');
        $pendanaan = $this->input->post('pendanaan');
        $tahun_penelitian = $this->input->post('tahun_penelitian');
        $result = $this->model->LikeDtlp($kode_penelitian,$npj,$tahun_penelitian,$pendanaan)->result_array();
        ob_start();
        $data = array(
            'title' => 'Data Laporan Penelitian',
            'data_laporan' => $result,
        );
        $this->load->view('dtlp/dtlp-report-pdf', $data);
        $html = ob_get_clean();

        require_once ('./assets/html2pdf/html2pdf.class.php');
        $pdf = new HTML2PDF('P','A4','en');
        $pdf->WriteHTML($html);
        $pdf->Output('Data Laporan Penelitian.pdf','D');
    }

    public function export_print(){
        $this->cek_pengunjung();
        $jawaban_1 = $this->input->post('jawaban_1');
        $jawaban_2 = $this->input->post('jawaban_2');
        $jawaban_3 = $this->input->post('jawaban_3');
        $jawaban_4 = $this->input->post('jawaban_4');
        $result = $this->model->LikeDtlp($jawaban_1,$jawaban_2,$jawaban_3,$jawaban_4)->result_array();
        $data = array(
            'title' => 'Data Laporan Pemda',
            'data_laporan' => $result,
        );
        $this->load->view('dtlp/dtlp-report-pdf', $data);
    }

}
?>