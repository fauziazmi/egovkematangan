<style>
    .isi{
    color: #111111;
    font-size: 14px;
    line-height: 20px
 }
 .notif{
    background-color:LEMONCHIFFON;
    margin-top: 10px;
    margin-right: 45px;
    margin-left: 45px;
 }
 </style>
 <script type='text/javascript'>
     google.charts.load('visualization', '1', {
  'packages': ['geochart'],
  'mapsApiKey': 'AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFMBWY'
});
google.charts.setOnLoadCallback(drawVisualization);

function drawVisualization() {
  var data = new google.visualization.DataTable();
  data.addColumn('string', 'Provinsi');
    data.addColumn('number', 'Value');
    data.addRows([
    ['Aceh', 1],
    ['Bali', 2],
    ['Bangka Belitung', 3],
    ['Banten', 4],
    ['Bengkulu', 5],
    ['Gorontalo', 6],
    ['Jambi', 7],
    ['Jawa Barat', 8],
    ['Jawa Tengah', 9],
    ['Jawa Timur', 10],
    ['Kalimantan Barat', 11],
    ['Kalimantan Selatan', 12],
    ['Kalimantan Tengah', 13],
    ['Kalimantan Timur', 14],
    ['Kalimantan Utara', 15],
    ['ID-KR', 16],
    ['Lampung', 17],
    ['ID-MA', 18],
    ['Maluku Utara', 19],
    ['Nusa Tenggara Barat', 20],
    ['Nusa Tenggara Timur', 21],
    ['Papua', 22],
    ['ID-PB', 23],
    ['Riau', 24],
    ['Sulawesi Barat', 25],
    ['Sulawesi Selatan', 26],
    ['Sulawesi Tengah', 27],
    ['Sulawesi Utara', 28],
    ['Sulawesi Tenggara', 34],
    ['Sumatera Barat', 29],
    ['Sumatera Selatan', 30],
    ['Sumatera Utara', 31],
    ['Daerah Khusus Ibukota Jakarta', 32],
    ['Daerah Istimewa Yogyakarta', 33]
 ]);

  var opts = {
    region: 'ID',
    displayMode: 'regions',
    resolution: 'provinces',
    colorAxis: {colors: ['#e31b23', 'black', '#00853f']},
          backgroundColor: '#81d4fa',
          datalessRegionColor: '#f8bbd0',
          defaultColor: '#f5f5f5',
  };
  var geochart = new google.visualization.GeoChart(
    document.getElementById('visualization'));
  geochart.draw(data, opts);
};
    </script>
<?php
$ses_level = $this->session->userdata('ses_pekerjaan');
?>
<?php if ($ses_level == 'Pemda'){ if($state_notifikasi == 0 && $total_penilaian > 0) { ?>
    <p class="notif" align="center" > Anda mendapatkan Feedback terbaru, harap mengupdate <a href="<?php echo site_url('dtlp');?>"><b> Form</b></a> kembali </p> <?php }} ?>
<div id="visualization" style="width: 100%; height: 433px;" align="center"></div>
<div class="col-md-12">
<?php if ($ses_level == 'Pemda'){?>
<div class="col-lg-8 col-md-8">
<?php } ?>
<h3 style="text-align:center">Berita</h3>
<div style="height:400px;width:100%;font:16px/26px Georgia, Garamond, Serif;overflow:auto;margin-top: 1em;">
<h4 style="font-weight: bold;"> e-Government Terintegrasi Sebagai Salah-Satu Pencapaian Good Governance <h2>
<p class="isi"> JAYAPURA (Bisnis Papua), –  Dinas Komunikasi dan Informatika Provinsi Papua menggelar Sosialisasi dan Evaluasi Pemanfaatan Sistem Aplikasi e-Government  di Hotel Horison,  Jayapura, Senin (30/7/2018).

Kegiatan yang dibuka Asisten Bidang Pemerintahan Sekda Provinsi Papua Doren Wakerkwa, didampingi  Kepala Dinas Komunikasi dan Informatika Provinsi Papua Kansiana Salle, diikuti para Pimpinan SKPD di lingkup Pemprov Papua. ...<a href="#" style="color:blue">Selengkapnya</a></p>
<h4 style="font-weight: bold;"> Datangkan Ahli Cyber, Banjar Sosialisasi Keamanan Informasi </h4>
<h6 class="isi"> BANJARMASINPOST.CO.ID, MARTAPURA -  Dinas Komunikasi Informasi Statistik dan Persandian bekerja sama dengan Badan Siber dan Sandi Negara (BSSN) melakukan sosialisasi untuk keamanan informasi milik negara atasupun milik pemerintah dari para Cyber dan Hacker yang tidak bertanggung jawab....<a href="#" style="color:blue">Selengkapnya</a></h6>
<h4 style="font-weight: bold;">Menpan RB : Penerapan e-Government Nasional Mulai Tahun ini </h4>
<h6 class="isi"> Bandung - Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi (Menpan-RB) Asman Abnur berjanji mulai menerapkan sistem pemerintah berbasis elektronik (e-Government) secara nasional tahun ini. Payung hukum berupa Perpres akan segera terbit dalam waktu dekat....<a href="#" style="color:blue">Selengkapnya</a> </h6>
<h4 style="font-weight: bold;"> Gubernur, Media Sosial, dan Fenomena "Like and Dislike"</h4>
<h6 class="isi"> GUBERNUR Daerah Khusus Ibukota (DKI) Jakarta Anies Baswedan berusaha menanggapi cecaran pertanyaan awak media mengenai sejumlah isu yang berkembang di media sosial. Dari mulai revitalisasi pedestrian di Jalan Sudirman dan Jalan MH Thamrin yang menyisakan tanya mengapa ada jarak pemisah rumput dari halte bis dengan perhentian, tidak terawatnya Kalijodo dan penutupan Kali Item menggunakan waring. Darimana awal mula isu-isu itu muncul, tidak lain dan tidak bukan dari medsos....<a href="#" style="color:blue">Selengkapnya</a></h6>
<?php if ($ses_level == 'Pemda'){?></div><?php } ?>
</div>
<?php if ($ses_level == 'Pemda'){?>
        <div class="col-lg-4 col-md-8" align="center" style="margin-top:20px">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col-xs-4">
                            <i class="fa fa-bell fa-5x"></i>
                        </div>
                        <div class="col-xs-8 text-right">
                            <div class="huge"><?php echo $total_penilaian;?></div>
                            <div> Feedback</div>
                        </div>
                    </div>
                </div>
                <a href="#">
                    <div class="panel-footer">
                        <a href="<?php echo site_url('feedback');?>" class="pull-left">View Details</a>
                        <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                        <div class="clearfix"></div>
                    </div>
                </a>
            </div>
        </div>
<?php } ?>    
</div>