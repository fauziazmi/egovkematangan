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
                <h2><?php echo $title;?></h2>
                    <div class="table-responsive">   
                        <table align="center" class="table">
                            <thead>
                            <tr>
                                <th rowspan="2">No</th>
                                <th rowspan="2">Wilayah</th>
                                <th colspan="4" style="text-align:center">Dimensi</th>
                                <th rowspan="2">Nilai Rata-rata</th>
                                <th rowspan="2">Tanggal Terima</th>
                            </tr>
                            <tr>
                                <th>Sumber Daya</th>
                                <th>Pengungkit</th>
                                <th>Nilai</th>
                                <th>Dampak</th>
                            </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td><?php echo $data_laporan['wilayah']; ?></td>
                                    <td><?php echo $data_laporan['jawaban_1']; ?></td>
                                    <td><?php echo $data_laporan['jawaban_2']; ?></td>
                                    <td><?php echo $data_laporan['jawaban_3']; ?></td>
                                    <td><?php echo $data_laporan['jawaban_4']; ?></td>
                                    <td><?php echo $data_laporan['Nilai']; ?></td>
                                    <td><?php echo $data_laporan['tgl_terima']; ?></td>
                                </tr>
                            </tbody>
                        </table>
                        <br>
                        <table class="table">
                            <thead>
                            <tr>
                                <th rowspan="2"></th>
                                <th colspan="14" style="text-align:center">Dimensi Sumber Daya</th>
                            </tr>
                            <tr>
                                <?php for($n = 1; $n <= 14; $n++){ ?>
                                    <th>pernyataan <?php echo $n ?> </th> <?php } ?>
                            </tr>
                            </thead>
                            <tbody>
                            <?php for($i = 1;$i<=2;$i++) { ?>
                                <tr>
                                    <?php if($i == 1) { ?> 
                                    <td><b>Level Kematangan</b></td>
                                    <?php for($n = 1; $n <= 14; $n++){ ?>
                                    <td><?php echo $data_dimensi_1['jawaban_1_'.$n]; ?></td> 
                                    <?php }} if($i == 2) { ?>
                                    <td><b>File Bukti</b></td>
                                    <?php for($n = 1; $n <= 14; $n++){ ?>
                                    <td><?php echo $data_dimensi_1['pdf_1_'.$n]; ?></td>
                                    <?php }} ?>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                        <br>
                        <table class="table">
                            <thead>
                            <tr>
                                <th rowspan="2"></th>
                                <th colspan="10" style="text-align:center">Dimensi Pengungkit</th>
                            </tr>
                            <tr>
                                <?php for($n = 1; $n <= 10; $n++){ ?>
                                    <th>pernyataan <?php echo $n ?> </th> <?php } ?>
                            </tr>
                            </thead>
                            <tbody>
                            <?php for($i = 1;$i<=2;$i++) { ?>
                                <tr>
                                    <?php if($i == 1) { ?> 
                                    <td><b>Level Kematangan</b></td>
                                    <?php for($n = 1; $n <= 10; $n++){ ?>
                                    <td><?php echo $data_dimensi_2['jawaban_2_'.$n]; ?></td> 
                                    <?php }} if($i == 2) { ?>
                                    <td><b>File Bukti</b></td>
                                    <?php for($n = 1; $n <= 10; $n++){ ?>
                                    <td><?php echo $data_dimensi_2['pdf_2_'.$n]; ?></td>
                                    <?php }} ?>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                        <br>
                        <table class="table">
                            <thead>
                            <tr>
                                <th rowspan="2"></th>
                                <th colspan="6" style="text-align:center">Dimensi Nilai</th>
                            </tr>
                            <tr>
                                <?php for($n = 1; $n <= 6; $n++){ ?>
                                    <th>pernyataan <?php echo $n ?> </th> <?php } ?>
                            </tr>
                            </thead>
                            <tbody>
                            <?php for($i = 1;$i<=2;$i++) { ?>
                                <tr>
                                    <?php if($i == 1) { ?> 
                                    <td><b>Level Kematangan</b></td>
                                    <?php for($n = 1; $n <= 6; $n++){ ?>
                                    <td><?php echo $data_dimensi_3['jawaban_3_'.$n]; ?></td> 
                                    <?php }} if($i == 2) { ?>
                                    <td><b>File Bukti</b></td>
                                    <?php for($n = 1; $n <= 6; $n++){ ?>
                                    <td><?php echo $data_dimensi_3['pdf_3_'.$n]; ?></td>
                                    <?php }} ?>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                        <br>
                        <table class="table">
                            <thead>
                            <tr>
                                <th rowspan="2"></th>
                                <th colspan="5" style="text-align:center">Dimensi Dampak</th>
                            </tr>
                            <tr>
                                <?php for($n = 1; $n <= 5; $n++){ ?>
                                    <th>pernyataan <?php echo $n ?> </th> <?php } ?>
                            </tr>
                            </thead>
                            <tbody>
                            <?php for($i = 1;$i<=2;$i++) { ?>
                                <tr>
                                    <?php if($i == 1) { ?> 
                                    <td><b>Level Kematangan</b></td>
                                    <?php for($n = 1; $n <= 5; $n++){ ?>
                                    <td><?php echo $data_dimensi_4['jawaban_4_'.$n]; ?></td> 
                                    <?php }} if($i == 2) { ?>
                                    <td><b>File Bukti</b></td>
                                    <?php for($n = 1; $n <= 5; $n++){ ?>
                                    <td><?php echo $data_dimensi_4['pdf_4_'.$n]; ?></td>
                                    <?php }} ?>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    <button class="btn btn-warning" onclick="history.back()"> KEMBALI</button>
                </div>
            </div>
        </div>
    </div>
</div>