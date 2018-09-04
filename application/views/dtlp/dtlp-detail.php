<div class="page-header">
    <h2>Data Laporan Penelitian</h2>
</div>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                Tampil Data
                <a href="#widget1" data-toggle="collapse"><span class="fa fa-chevron-down" style="float: right"></span>
                </a>
            </div>
            <div id="widget1" class="panel-body collapse in">
                <div class="table-responsive">
                    <table class="table">
                        <tr>
                            <th width="20%">Wilayah</th>
                            <th width="3%">:</th>
                            <th><?php if ($wilayah != null){echo $wilayah;}else {echo '-';}?></th>
                        </tr>
                        <tr>
                            <th>Jawaban 1</th>
                            <th>:</th>
                            <th><?php if ($jawaban_1 != null ){ echo $jawaban_1; } else {echo '-';}?></th>
                        </tr>
                        <tr>
                            <th>Jawaban 2</th>
                            <th>:</th>
                            <th><?php if ($jawaban_2 != null ){ echo $jawaban_2; } else { echo '-'; }?></th>
                        </tr>
                        <tr>
                            <th>Jawaban 3</th>
                            <th>:</th>
                            <th><?php if ($jawaban_3 != null ){ echo $jawaban_3; } else{echo '-';}?></th>
                        </tr>
                        <tr>
                            <th>Jawaban 4</th>
                            <th>:</th>
                            <th><?php if ($jawaban_4 != null ){ echo $jawaban_4; } else{echo '-';}?></th>
                        </tr>
                        <tr>
                            <th>Nilai</th>
                            <th>:</th>
                            <th><?php if ($nilai != null ){ echo $nilai; } else{echo '-';}?></th>
                        </tr>
                        <tr>
                            <th>Tanggal Terima</th>
                            <th>:</th>
                            <th><?php if ($tgl_terima != null ){ echo $tgl_terima; } else{echo '-';}?></th>
                        </tr>
                        <tr>
                            <th>PDF</th>
                            <th>:</th>
                            <th><?php if ($pdf != null ){ echo $pdf; } else{echo '-';}?></th>
                        </tr>
                    </table>
                    <a href="<?php echo base_url('assets/pdf/'.$wilayah.'/'.$pdf)?>"><button class="btn btn-danger"><span class="fa fa-file-pdf-o"></span> PDF</button></a>
                    <button class="btn btn-warning" onclick="history.back()"> KEMBALI</button>
                </div>
            </div>
        </div>
    </div>
</div>