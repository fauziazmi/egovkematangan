<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Report</title>
    <style>
        table{
            border-collapse: collapse;
        }
        table, td, th {
            border: 1px solid black;
        }
        h2{
            text-align: center;
        }
        table thead tr th{
            background: #e1e1e1;
        }
        table th{
            padding: 5px;
            font-size: 12pt;
        }
        table td{
            padding: 3px 5px;
            font-size: 11pt;
        }
    </style>
</head>
<body onload="window.print()">
<h2><?php echo $title;?>
</h2>
<table align="center">
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
</body>
</html>