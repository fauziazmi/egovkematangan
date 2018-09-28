<?php
    $ses_level = $this->session->userdata('ses_pekerjaan');

    function time_elapsed_string($datetime) {
        $now = new DateTime;
        $ago = $datetime;
        $diff = $now->diff($ago);
    
        $diff->w = floor($diff->d / 7);
        $diff->d -= $diff->w * 7;
    
        $string = array(
            'y' => 'year',
            'm' => 'month',
            'w' => 'week',
            'd' => 'day',
            'h' => 'hour',
            'i' => 'minute',
            's' => 'second',
        );
        foreach ($string as $k => &$v) {
            if ($diff->$k) {
                $v = $diff->$k . ' ' . $v . ($diff->$k > 1 ? 's' : '');
            } else {
                unset($string[$k]);
            }
        }
    
        if (!$full) $string = array_slice($string, 0, 1);
        return $string ? implode(', ', $string) . ' ago' : 'just now';
    }
?>
<div class="page-header" style="margin-left:45px">
    <h2>Feedback</h2>
</div>
<div class="col-sm-12 col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                List Feedback
                <a href="#widget1" data-toggle="collapse"><span class="fa fa-chevron-down" style="float: right"></span>
                </a>
            </div>
            <div id="widget1" class="panel-body collapse in">
                <table id="table" class="table penelitian table-bordered table-striped" width="100%">
                    <thead>
                    <tr>
                        <th width="4%">NO</th>
                        <th width="10%">TANGGAL TERIMA</th>
                        <th width="10%">ASSESSOR</th>
                        <th width="36%">KOMENTAR KESELURUHAN</th>
                        <th width="10%">SUMBER DAYA</th>
                        <th width="10%">PENGUNGKIT</th>
                        <th width="10%">NILAI</th>
                        <th width="10%">DAMPAK</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    $no = 0; foreach ($data_laporan as $data){ $no++
                        ?>
                        <tr>
                            <td><?php echo $no;?></td>
                            <td><?php echo $data['tgl_terima'];?></td>
                            <td><?php echo $data['username_assessor'];?></td>
                            <td><?php echo $data['komentar_overall'];?></td>
                            <td><?php echo $data['komentar_1'];?></td>
                            <td><?php echo $data['komentar_2'];?></td>
                            <td><?php echo $data['tgl_terima'];?></td>
                            <td><a href="#komentar_sumber_daya_<?php echo $no ?>" data-toggle="modal" ><span class="fa fa-info" style="font-size: 14pt;"> </span></a>
                                <div id="komentar_sumber_daya_<?php echo $no ?>" class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4>Penjelasan Indikator</h4>
                                                </div>
                                                <div class="modal-body">
                                                <table class="table penelitian table-bordered table-striped">
                                                    <tr>
                                                        <th width="20%"><h6>Pertanyaan</h6></th>
                                                        <th width="80%"><h6>Deskripsi</h6></th>
                                                    </tr>
                                                    <?php for($i=01; $i<=14; $i++) {?>
                                                    <tr>
                                                        <th><h6>Pertanyaan <?php echo $i ?></h6></th>
                                                        <th><h6><?php echo $data_feedback_1['feedback_1_1'] ?></h6></th>
                                                    </tr>
                                                    <?php }?>
                                                </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </td>
                        </tr>
                    <?php }?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>