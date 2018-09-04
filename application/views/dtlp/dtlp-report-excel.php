<?php
header("Content-type: application/vnd-ms-excel");
header("Content-Disposition: attachment; filename=report_dtlp.xls");
header("Pragma: no-cache");
header("Expires: 0");
?>
<table border="1">
    <thead>
    <tr>
        <th colspan="9"><h2><?php echo $title;?></h2></th>
    </tr>
    <tr>
        <th>No</th>
        <th>Wilayah</th>
        <th>Jawaban 1</th>
        <th>Jawaban 2</th>
        <th>Jawaban 3</th>
        <th>Jawaban 4</th>
        <th>Nilai</th>
        <th>Tanggal Terima</th>
        <th>Pdf</th>
    </tr>
    </thead>
    <tbody>
    <?php $i=1; foreach($data_laporan as $data) { ?>
        <tr>
            <td><?php echo $i; ?></td>
            <td><?php echo $data['wilayah']; ?></td>
            <td><?php echo $data['jawaban_1']; ?></td>
            <td><?php echo $data['jawaban_2']; ?></td>
            <td><?php echo $data['jawaban_3']; ?></td>
            <td><?php echo $data['jawaban_4']; ?></td>
            <td><?php echo $data['Nilai']; ?></td>
            <td><?php echo $data['tgl_terima']; ?></td>
            <td><?php echo $data['pdf']; ?></td>
        </tr>
        <?php $i++; } ?>
    </tbody>
</table>