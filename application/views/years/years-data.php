<?php
    $ses_level = $this->session->userdata('ses_pekerjaan');
?>
<script>
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawBasic);
google.charts.setOnLoadCallback(drawBasic2);
google.charts.setOnLoadCallback(drawBasic3);
google.charts.setOnLoadCallback(drawBasic4);
google.charts.setOnLoadCallback(drawBasic5);
function drawBasic() {

      var data = google.visualization.arrayToDataTable([
        ['Provinsi', 'nilai dimensi sumber daya e-gov Maturity',],
        <?php foreach ($data_laporan as $data){ ?>
    ['<?php echo $data['wilayah'];?>', <?php echo $data['jawaban_1'];?>],<?php } ?>
      ]);

      var options = {
        title: 'Nilai dimensi sumber daya e-gov Maturity',
        chartArea: {height: '70%'},
        hAxis: {
          title: 'Provinsi',
        },
        vAxis: {
          title: 'Nilai dimensi sumber daya e-gov Maturity',
          minValue: 0,
          maxValue: 5,
        }
      };

      var chart = new google.visualization.ColumnChart(document.getElementById('chart_sumber_daya'));

      chart.draw(data, options);
    }

function drawBasic2() {

      var data = google.visualization.arrayToDataTable([
        ['Provinsi', 'nilai dimensi pengungkit e-gov Maturity',],
        <?php foreach ($data_laporan as $data){ ?>
    ['<?php echo $data['wilayah'];?>', <?php echo $data['jawaban_2'];?>],<?php } ?>
      ]);

      var options = {
        title: 'Nilai dimensi pengungkit e-gov Maturity',
        chartArea: {width: '70%'},
        hAxis: {
          title: 'Provinsi',
        },
        vAxis: {
          title: 'Nilai dimensi pengungkit e-gov Maturity',
        }
      };

      var chart = new google.visualization.ColumnChart(document.getElementById('chart_pengungkit'));

      chart.draw(data, options);
    }

function drawBasic3() {

      var data = google.visualization.arrayToDataTable([
        ['Provinsi', 'nilai dimensi nilai e-gov Maturity',],
        <?php foreach ($data_laporan as $data){ ?>
    ['<?php echo $data['wilayah'];?>', <?php echo $data['jawaban_3'];?>],<?php } ?>
      ]);

      var options = {
        title: 'Nilai dimensi nilai e-gov Maturity',
        chartArea: {width: '70%'},
        hAxis: {
          title: 'Provinsi',
        },
        vAxis: {
          title: 'Nilai dimensi nilai e-gov Maturity',
          minValue: 0,
          maxValue: 5,
        }
      };

      var chart = new google.visualization.ColumnChart(document.getElementById('chart_nilai'));

      chart.draw(data, options);
    }
function drawBasic4() {

      var data = google.visualization.arrayToDataTable([
        ['Provinsi', 'nilai dimensi dampak e-gov Maturity',],
        <?php foreach ($data_laporan as $data){ ?>
    ['<?php echo $data['wilayah'];?>', <?php echo $data['jawaban_4'];?>],<?php } ?>
      ]);

      var options = {
        title: 'Nilai dimensi dampak e-gov Maturity',
        chartArea: {width: '70%'},
        hAxis: {
          title: 'Provinsi',
        },
        vAxis: {
          title: 'Nilai dimensi dampak e-gov Maturity',
          minValue: 0,
          maxValue: 5,
        }
      };

      var chart = new google.visualization.ColumnChart(document.getElementById('chart_dampak'));

      chart.draw(data, options);
    }

function drawBasic5() {

      var data = google.visualization.arrayToDataTable([
        ['Provinsi', 'Rata-rata 4 dimensi e-gov Maturity',],
        <?php foreach ($data_laporan as $data){ ?>
    ['<?php echo $data['wilayah'];?>', <?php echo $data['Nilai'];?>],<?php } ?>
      ]);

      var options = {
        title: 'Rata-rata 4 dimensi e-gov Maturity',
        chartArea: {width: '70%'},
        hAxis: {
          title: 'Provinsi',
        },
        vAxis: {
          title: 'Rata-rata 4 dimensi e-gov Maturity',
          minValue: 0,
          maxValue: 5,
        }
      };

      var chart = new google.visualization.ColumnChart(document.getElementById('chart_rata'));

      chart.draw(data, options);
    }
</script>
<div class="page-header">
    <h2>Data e-gov maturity wilayah</h2>
</div>
<div class="row">
<div class="col-sm-12 col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                List Data
                <a href="#widget1" data-toggle="collapse"><span class="fa fa-chevron-down" style="float: right"></span>
                </a>
            </div>
            <div id="widget1" class="panel-body collapse in">
                <table id="table" class="table penelitian table-bordered table-striped" width="100%">
                    <thead>
                    <tr>
                        <th width="4%">NO</th>
                        <th width="10%">WILAYAH</th>
                        <th width="10%">NILAI DIMENSI 1</th>
                        <th width="10%">NILAI DIMENSI 2</th>
                        <th width="10%">NILAI DIMENSI 3</th>
                        <th width="10%">NILAI DIMENSI 4</th>
                        <th width="10%">NILAI</th>
                        <th width="16%">TANGGAL TERIMA</th>
                        <?php if ($ses_level == 'Assessor') {?>
                        <th width="10%">PDF</th> 
                        <?php }?>
                        <?php if ($ses_level != 'Assessor') {?>
                        <th width="20%"> PDF</th>
                        <?php ;}?>
                        <?php if ($ses_level == 'Assessor'){?><li>
                        <th width="10%" class="text-center">Opsi<br></th>
                        <?php } ?>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    $no = 0; foreach ($data_laporan as $data){ $no++
                        ?>
                        <tr>
                            <td><?php echo $no;?></td>
                            <td><?php echo $data['wilayah'];?></td>
                            <td><?php echo $data['jawaban_1'];?></td>
                            <td><?php echo $data['jawaban_2'];?></td>
                            <td><?php echo $data['jawaban_3'];?></td>
                            <td><?php echo $data['jawaban_4'];?></td>
                            <td><?php echo $data['Nilai'];?></td>
                            <td><?php echo $data['tgl_terima'];?></td>
                            <td><a href="<?php echo base_url('assets/pdf/'.$data['wilayah'].'/'.$data['pdf_1'])?>" data-toggle="tooltip" data-placement ="top" title="lihat pdf" target="_blank"><span class="fa fa-file-pdf-o" style="font-size: 14pt;"> </span></a></td>
                            <?php if ($ses_level == 'Assessor'){?>
                                <td class="text-center">
                                    <a href="<?php echo base_url()?>dtlp/kirim_email/<?php echo $data['id'];?>" data-toggle="tooltip" data-placement ="top" title="Komentar" target="_blank"><span class="fa fa-commenting-o" style="font-size: 14pt;"> </span></a>                                 
                                    <a href="<?php echo base_url()?>dtlp/detail_data/<?php echo $data['id'];?>" data-toggle="tooltip" data-placement ="top" title="detail"><span class="glyphicon glyphicon-check" style="font-size: 14pt"></span></a>
                                    <a href="<?php echo base_url()?>dtlp/export_excel/<?php echo $data['wilayah'];?>" data-toggle="tooltip" data-placement ="top" title="excel"><span class="fa fa-file-excel-o" style="font-size: 14pt"></span></a>
                                    <a href="<?php echo base_url()?>dtlp/hapus_data/<?php echo $data['id'];?>" onclick="return confirm('Yakin data dihapus')" data-toggle="tooltip" data-placement ="top" title="hapus"><span class="glyphicon glyphicon-trash" style="font-size: 12pt"></span></a>
                                </td>
                            <?php } ?>
                        </tr>
                    <?php }?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <?php if ($ses_level != 'Pengunjung'){?>
        <div class="col-sm-5 col-md-5">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Filtur Report Laporan Pemda
                    <a href="#widget2" data-toggle="collapse"><span class="fa fa-chevron-down" style="float: right"></span>
                    </a>
                </div>
                <div id="widget2" class="panel-body collapse in">
                    <form action="cek.php" method="post" name="form_cek" id="form_cek">
                        <div class="form-group">
                            <label>Jawaban 1</label>
                            <select name="jawaban_1" class="form-control">
                                <option value="">Pilih</option>
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Jawaban 2</label>
                            <select name="jawaban_2" class="form-control">
                                <option value="">Pilih</option>
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Jawaban 3</label>
                            <select name="jawaban_3" class="form-control">
                                <option value="">Pilih</option>
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Jawaban 4</label>
                            <select name="jawaban_4" class="form-control">
                                <option value="">Pilih</option>
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                            </select>
                        </div>
                        <div class="pull-right">
                            <a href="" onclick="document.form_cek.action = '<?php echo base_url('dtlp/export_print');?>'"><button class="btn btn-success">
                                    <span class="fa fa-print"></span> Print
                                </button></a>
                            <a href="" onclick="document.form_cek.action = '<?php echo base_url('dtlp/export_excel_report');?>'"><button class="btn btn-primary" >
                                    <span class="fa fa-file-excel-o"></span> Excel
                                </button></a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    <?php } ?>
    <div class="col-sm-7 col-md-7">
            <div class="panel panel-default" id="histogram">
                <div class="panel-heading">
                    Histogram
                    <a href="#widget3" data-toggle="collapse"><span class="fa fa-chevron-down" style="float: right"></span>
                    </a>
                </div>
                
                <div id="widget3" class="panel-body collapse in">
                <h3>Dimensi</h3>
                <ul class="nav nav-tabs">
                        <!-- Untuk Semua Tab.. pastikan a href=”#nama_id” sama dengan nama id di “Tap Pane” dibawah-->
                        <li class="active"><a href="#sumber_daya" data-toggle="tab">Sumber Daya</a></li> <!-- Untuk Tab pertama berikan li class=”active” agar pertama kali halaman di load tab langsung active-->
                        <li><a href="#pengungkit" data-toggle="tab">Pengungkit</a></li>
                        <li><a href="#nilai" data-toggle="tab">Nilai</a></li>
                        <li><a href="#dampak" data-toggle="tab">Dampak</a></li>
                        <li><a href="#rata" data-toggle="tab">rata-rata 4 Dimensi</a></li>
                        </ul>
                        <!-- Tab panes, ini content dari tab di atas -->
                        <div class="tab-content">
                        <div class="tab-pane active" id="sumber_daya"><div id="chart_sumber_daya" style="width:100%; height: 500px;"></div></div><!-- Untuk Tab pertama berikan div class=”active” agar pertama kali halaman di load content langsung active-->
                        <div class="tab-pane" id="pengungkit"><div id="chart_pengungkit" style="height: 500px;"></div></div>
                        <div class="tab-pane" id="nilai"><div id="chart_nilai" style="height: 500px;"></div></div>
                        <div class="tab-pane" id="dampak"><div id="chart_dampak" style="height: 500px;"></div></div>
                        <div class="tab-pane" id="rata"><div id="chart_rata" style="height: 500px;"></div></div>
</div>       
                </div>
            </div>
    </div>
</div>