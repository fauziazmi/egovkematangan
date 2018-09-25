<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Model extends CI_Model{

    public function GetDtlp($where = ''){
        return $this->db->query('select * from laporan '.$where);
    }

    public function GetNotifikasi($where = ''){
        return $this->db->query('select * from notifikasi '.$where);
        //return $data;
    }

    public function GetPertanyaan($where ='')
    {
        $data = $this->db->query('select * from pertanyaan '.$where);
        return $data;
    }

    public function GetDimensi1($where =''){
        return $this->db->query('select * from dimensi_1 '.$where);
    }

    public function GetDimensi2($where =''){
        return $this->db->query('select * from dimensi_2 '.$where);
    }

    public function GetDimensi3($where =''){
        return $this->db->query('select * from dimensi_3 '.$where);
    }

    public function GetDimensi4($where =''){
        return $this->db->query('select * from dimensi_4 '.$where);
    }

    public function GetTotDtlp($where = ''){
        return $this->db->query('select *, pendanaan.pendanaan_name, years.years_name from laporan LEFT JOIN pendanaan 
                  ON laporan.pendanaan = pendanaan.code_pendanaan LEFT JOIN years ON laporan.tahun_penelitian = years.code_years '.$where);
    }

    public function GetYears($where ='')
    {
        $data = $this->db->query('select * from years '.$where);
        return $data;
    }
    
    public function GetPendanaan($where = ''){
        $data = $this->db->query('select * from pendanaan '.$where);
        return $data;
    }

    public function GetUser($where = ''){
        return $this->db->query('select * from user '.$where);
    }

    public function GetPenilaian($where = ''){
        return $this->db->query('select * from penilaian '.$where);
    }

    public function LikeDtlp($jawaban_1,$jawaban_2,$jawaban_3,$jawaban_4){
        return $this->db->query("select * from laporan WHERE 
        jawaban_1 LIKE '%$jawaban_1%' and jawaban_2 LIKE '%$jawaban_2%' and jawaban_3 LIKE '%$jawaban_3%' and jawaban_4 LIKE '%$jawaban_4%'");
    }

    public function Simpan($table, $data){
        return $this->db->insert($table, $data);
    }

    public function Update($table,$data,$where){
        return $this->db->update($table,$data,$where);
    }

    public function Hapus($table,$where){
        return $this->db->delete($table,$where);
    }

}
?>