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
                            <th>PDF 1</th>
                            <th>:</th>
                            <th><?php if ($pdf_1 != null ){ echo $pdf_1; echo "<a href='".base_url('assets/pdf/'.$wilayah.'/'.$pdf_1)."'style='color:blue'> Lihat PDF 1</a>";} else{echo '-';}?></th>
                        </tr>
                        <tr>
                            <th>PDF 2</th>
                            <th>:</th>
                            <th><?php if ($pdf_2 != null ){ echo $pdf_2; echo "<a href='".base_url('assets/pdf/'.$wilayah.'/'.$pdf_2)."'style='color:blue'> Lihat PDF 2</a>";} else{echo '-';}?></th>
                        </tr>
                        <tr>
                            <th>PDF 3</th>
                            <th>:</th>
                            <th><?php if ($pdf_3 != null ){ echo $pdf_3; echo "<a href='".base_url('assets/pdf/'.$wilayah.'/'.$pdf_3)."'style='color:blue'> Lihat PDF 3</a>";} else{echo '-';}?></th>
                        </tr>
                        <tr>
                            <th>PDF 4</th>
                            <th>:</th>
                            <th><?php if ($pdf_4 != null ){ echo $pdf_4; echo "<a href='".base_url('assets/pdf/'.$wilayah.'/'.$pdf_4)."'style='color:blue'> Lihat PDF 4</a>";} else{echo '-';}?></th>
                        </tr>
                    </table>
                    <a href="<?php echo base_url('assets/pdf/'.$wilayah.'/'.$pdf_1)?>"><button class="btn btn-danger"><span class="fa fa-file-pdf-o"></span> PDF 1</button></a>
                    <a href="<?php echo base_url('assets/pdf/'.$wilayah.'/'.$pdf_2)?>"><button class="btn btn-danger"><span class="fa fa-file-pdf-o"></span> PDF 2</button></a>
                    <a href="<?php echo base_url('assets/pdf/'.$wilayah.'/'.$pdf_3)?>"><button class="btn btn-danger"><span class="fa fa-file-pdf-o"></span> PDF 3</button></a>
                    <a href="<?php echo base_url('assets/pdf/'.$wilayah.'/'.$pdf_4)?>"><button class="btn btn-danger"><span class="fa fa-file-pdf-o"></span> PDF 4</button></a>
                    <button class="btn btn-warning" onclick="history.back()"> KEMBALI</button>
                </div>
            </div>
        </div>
    </div>
</div>