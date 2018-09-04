<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>e-gov maturity</title>
<!-- Bootstrap -->
<link href="<?php echo base_url('assets/css/style.css');?>" rel="stylesheet" >
<link href="<?php echo base_url('assets/css/bootstrap.min.css');?>" rel="stylesheet">
<link href="<?php echo base_url('assets/css/bootstrap-datetimepicker.min.css');?>" rel="stylesheet">
<link href="<?php echo base_url('assets/css/metisMenu.min.css');?>" rel="stylesheet">
<link href="<?php echo base_url('assets/css/dataTables.bootstrap.css');?>" rel="stylesheet">
<link href="<?php echo base_url('assets/css/dataTables.responsive.css');?>" rel="stylesheet">
<link href="<?php echo base_url('assets/css/sb-admin-2.min.css');?>" rel="stylesheet">
<link href="<?php echo base_url('assets/css/font-awesome.min.css');?>" rel="stylesheet" type="text/css">
<link href="https://www.w3schools.com/w3css/4/w3.css" rel="stylesheet">

<!-- jQuery -->
<script src="<?php echo base_url('assets/js/jquery.js');?>"></script>
<script src="<?php echo base_url('assets/js/bootstrap.min.js');?>"></script>
<script src="<?php echo base_url('assets/js/moment.js');?>"></script>
<script src="<?php echo base_url('assets/js/metisMenu.min.js');?>"></script>
<script src="<?php echo base_url('assets/js/jquery.dataTables.min.js');?>"></script>
<script src="<?php echo base_url('assets/js/dataTables.bootstrap.min.js');?>"></script>
<script src="<?php echo base_url('assets/js/dataTables.responsive.js');?>"></script>
<script src="<?php echo base_url('assets/js/sb-admin-2.js');?>"></script>
<script src="<?php echo base_url('assets/js/tabs.js');?>"></script>
<script src="<?php echo base_url('assets/js/ckeditor/ckeditor.js');?>"></script>
<script src="<?php echo base_url('assets/js/bootstrap-datetimepicker.min.js');?>"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type='text/javascript'>
     google.charts.load('visualization', '1', {
  'packages': ['geochart'],
  'mapsApiKey': 'AIzaSyD-9tSrke72PouQMnMX-a7eZSW0jkFMBWY'
});
google.charts.setOnLoadCallback(drawVisualization);

function drawVisualization() {
  var data = google.visualization.arrayToDataTable([
    ['State', 'Value'],
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