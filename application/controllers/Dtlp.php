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
        if ($this->session->userdata('ses_level') == 'Pengunjung' or $this->session->userdata('ses_level') == 'Pimpinan'){
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
        $cek_kode = $this->model->GetDtlp("where wilayah = '$wilayah'")->num_rows();
        //$data_years = $this->model->GetYears("where code_years = '$tahun_penelitian'")->row_array();
        if ($cek_kode > 0){
            $this->session->set_flashdata('warning', 'Data sudah ada');
            redirect('dtlp');
        }else {
            $config = array(
                'upload_path' => './assets/pdf/'.$wilayah,
                'allowed_types' => 'pdf',
                'max_size' => '1000000',
            );
            $this->load->library('upload', $config);
            $this->upload->do_upload('pdf_1');
            $upload_data = $this->upload->data();

            $jawaban_1 = $this->input->post('jawaban_1');
            $jawaban_2 = $this->input->post('jawaban_2');
            $jawaban_3 = $this->input->post('jawaban_3');
            $jawaban_4 = $this->input->post('jawaban_4');

            if($jawaban_1 == 'yes') $nilai_1 = 1; else 0; 
            if($jawaban_2 == 'yes') $nilai_2 = 1; else 0; 
            if($jawaban_3 == 'yes') $nilai_3 = 1; else 0; 
            if($jawaban_4 == 'yes') $nilai_4 = 1; else 0; 
            $nilai = $nilai_1 + $nilai_2 + $nilai_3 + $nilai_4;
            $data = array(
                //'kode_penelitian' => $kode_penelitian,
                'jawaban_1' => $jawaban_1,
                'jawaban_2' => $jawaban_2,
                'jawaban_3' => $jawaban_3,
                'jawaban_4' => $jawaban_4,
                'nilai' => $nilai,
                'wilayah' => $this->input->post('wilayah'),
                'tgl_terima' => $this->input->post('tgl_terima'),
                'pdf' => $upload_data['file_name'],
            );
            $this->model->Simpan('laporan', $data);
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

    public function hapus_data($kode = 1){
        $this->cek_user();
        if ($this->uri->segment(3) == null){
            $this->session->set_flashdata('warning','Hapus data belum dilakukan');
            redirect('dtlp');
        }
        $data_laporan = $this->model->GetTotDtlp("where kode_penelitian = '$kode'")->row_array();
        $result = $this->model->Hapus('laporan',array('kode_penelitian' => $kode));
        $years = $data_laporan['years_name'];
        $pdf = $data_laporan['pdf'];
        if ($result == 1){
            if ($years != null){
                unlink('./assets/pdf/'.$years.'/'.$pdf);
            }
            $this->session->set_flashdata('sukses','Hapus data berhasil dilakukan');
            redirect('dtlp');
        }else{
            $this->session->set_flashdata('error','Hapus data gagal dilakukan');
            redirect('dtlp');
        }

    }

    public function detail_data($id = 1){
        $this->cek_user();
        if ($this->uri->segment(3) == null){
            $this->session->set_flashdata('warning','Anda belum memilih data untuk melihat detail data');
            redirect('dtlp');
        }
        $data_laporan = $this->model->GetDtlp("where id = '$id'")->row_array();
        $data = array(
            'wilayah' => $data_laporan['wilayah'],
            'jawaban_1' => $data_laporan['jawaban_1'],
            'jawaban_2' => $data_laporan['jawaban_2'],
            'jawaban_3' => $data_laporan['jawaban_3'],
            'jawaban_4' => $data_laporan['jawaban_4'],
            'nilai' => $data_laporan['Nilai'],
            'tgl_terima' => $data_laporan['tgl_terima'],
            'pdf' => $data_laporan['pdf'],
            'content' => 'dtlp/dtlp-detail',
        );
        $this->load->view('template/site',$data);
    }

    public function export_excel($wilayah = 1){
        $this->cek_pengunjung();
        $data_laporan = $this->model->GetDtlp("where wilayah = '$wilayah'")->result_array();
        //$result = $this->model->LikeDtlp($kode_penelitian,$npj,$tahun_penelitian,$pendanaan)->result_array();
        $data = array(
            'title' => 'Data Laporan Pemda',
            'data_laporan' => $data_laporan,
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
        $data_laporan = $this->model->GetDtlp("where id = '$id'")->row_array();
        $data = array(
            'wilayah' => $data_laporan['wilayah'],
            'jawaban_1' => $data_laporan['jawaban_1'],
            'jawaban_2' => $data_laporan['jawaban_2'],
            'jawaban_3' => $data_laporan['jawaban_3'],
            'jawaban_4' => $data_laporan['jawaban_4'],
            'pdf' => $data_laporan['pdf'],
            'content' => 'dtlp/dtlp-revisi',
            'lokasi' => 'Kirim Email',
            );
        $this->load->view('template/site', $data);
    }

    public function aksi_kirim()
    {
        $email = 'boykurniawan123@gmail.com';
        $subjek = $this->input->post('judul');
        $pesan = $this->input->post('isi');

        $query = $this->db->get('email');
        foreach ($query->result() as $row) {

             $config = Array(
                  'protocol' => 'smtp',
                  'smtp_host' => 'ssl://smtp.googlemail.com',
                  'smtp_port' => 465,
                  'smtp_user' => 'fauzaze@gmail.com', //isi dengan gmailmu!
                  'smtp_pass' => '28059428', //isi dengan password gmailmu!
                  'mailtype' => 'html',
                  'charset' => 'iso-8859-1',
                  'wordwrap' => TRUE
                );
            $this->load->library('email', $config);
            $this->email->set_newline("\r\n");
            $this->email->from($email);
            $this->email->to($row->email); //email tujuan. Isikan dengan emailmu!
            $this->email->subject($subjek);
            $this->email->message($pesan);
            if($this->email->send())
            {
              //echo 'Email sent.';
                ?>
                <script type="text/javascript">
                    alert('Berhasil mengirim email !');
                    window.location='<?php echo base_url()?>email/kirim_email';
                </script>
                <?php
            } else {
              show_error($this->email->print_debugger());
            }
        }
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