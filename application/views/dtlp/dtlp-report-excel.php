<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=report_dtlp.xls");
header("Pragma: no-cache");
header("Expires: 0");
?>
<table border="1">
    <thead>
    <tr>
        <th colspan="8"><h2><?php echo $title;?></h2></th>
    </tr>
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
            <td><?php echo $data_laporan['id']; ?></td>
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

<table border="1">
    <thead>
    <tr>
        <th colspan="15"><h2>Dimensi Sumber Daya</h2></th>
    </tr>
    <tr>
        <th><?php $data_dimensi_1['id'] ?></th>
        <?php for($n = 1; $n <= 14; $n++){ ?>
            <th>pernyataan <?php echo $n ?> </th> <?php } ?>
    </tr>
    </thead>
    <tbody>
    <?php for($i = 1;$i<=2;$i++) { ?>
        <tr>
            <?php if($i == 1) { ?> 
            <td>Level Kematangan</td>
            <?php for($n = 1; $n <= 14; $n++){ ?>
            <td><?php echo $data_dimensi_1['jawaban_1_'.$n]; ?></td> 
            <?php }} if($i == 2) { ?>
            <td>PDF</td>
            <?php for($n = 1; $n <= 14; $n++){ ?>
            <td><?php echo $data_dimensi_1['pdf_1_'.$n]; ?></td>
            <?php }} ?>
        </tr>
        <?php } ?>
    </tbody>
</table>

<table border="1">
    <thead>
    <tr>
        <th colspan="11"><h2>Dimensi Pengungkit</h2></th>
    </tr>
    <tr>
        <th><?php $data_dimensi_1['id'] ?></th>
        <?php for($n = 1; $n <= 10; $n++){ ?>
            <th>pernyataan <?php echo $n ?> </th> <?php } ?>
    </tr>
    </thead>
    <tbody>
    <?php for($i = 1;$i<=2;$i++) { ?>
        <tr>
            <?php if($i == 1) { ?> 
            <td>Level Kematangan</td>
            <?php for($n = 1; $n <= 10; $n++){ ?>
            <td><?php echo $data_dimensi_1['jawaban_1_'.$n]; ?></td> 
            <?php }} if($i == 2) { ?>
            <td>PDF</td>
            <?php for($n = 1; $n <= 10; $n++){ ?>
            <td><?php echo $data_dimensi_1['pdf_1_'.$n]; ?></td>
            <?php }} ?>
        </tr>
        <?php } ?>
    </tbody>
</table>

<table border="1">
    <thead>
    <tr>
        <th colspan="7"><h2>Dimensi Nilai</h2></th>
    </tr>
    <tr>
        <th><?php $data_dimensi_1['id'] ?></th>
        <?php for($n = 1; $n <= 6; $n++){ ?>
            <th>pernyataan <?php echo $n ?> </th> <?php } ?>
    </tr>
    </thead>
    <tbody>
    <?php for($i = 1;$i<=2;$i++) { ?>
        <tr>
            <?php if($i == 1) { ?> 
            <td>Level Kematangan</td>
            <?php for($n = 1; $n <= 6; $n++){ ?>
            <td><?php echo $data_dimensi_1['jawaban_1_'.$n]; ?></td> 
            <?php }} if($i == 2) { ?>
            <td>PDF</td>
            <?php for($n = 1; $n <= 6; $n++){ ?>
            <td><?php echo $data_dimensi_1['pdf_1_'.$n]; ?></td>
            <?php }} ?>
        </tr>
        <?php } ?>
    </tbody>
</table>

<table border="1">
    <thead>
    <tr>
        <th colspan="6"><h2>Dimensi Dampak</h2></th>
    </tr>
    <tr>
        <th><?php $data_dimensi_1['id'] ?></th>
        <?php for($n = 1; $n <= 5; $n++){ ?>
            <th>pernyataan <?php echo $n ?> </th> <?php } ?>
    </tr>
    </thead>
    <tbody>
    <?php for($i = 1;$i<=2;$i++) { ?>
        <tr>
            <?php if($i == 1) { ?> 
            <td>Level Kematangan</td>
            <?php for($n = 1; $n <= 5; $n++){ ?>
            <td><?php echo $data_dimensi_1['jawaban_1_'.$n]; ?></td> 
            <?php }} if($i == 2) { ?>
            <td>PDF</td>
            <?php for($n = 1; $n <= 5; $n++){ ?>
            <td><?php echo $data_dimensi_1['pdf_1_'.$n]; ?></td>
            <?php }} ?>
        </tr>
        <?php } ?>
    </tbody>
</table>