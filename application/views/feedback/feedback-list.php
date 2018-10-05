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
                            <td align="center"><a href="#komentar_sumber_daya_<?php echo $no ?>" data-toggle="modal" ><button class="btn btn-primary">Lihat</button></a>
                                <div id="komentar_sumber_daya_<?php echo $no ?>" class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4>Dimensi Sumber Daya</h4>
                                                </div>
                                                <div class="modal-body">
                                                <table class="table penelitian table-bordered table-striped">
                                                    <tr>
                                                        <th width="20%"><h6>Pertanyaan</h6></th>
                                                        <th width="80%"><h6>Ulasan</h6></th>
                                                    </tr>
                                                    <?php for($i=1; $i<=14; $i++) {?>
                                                    <tr>
                                                        <th><h6>Pertanyaan <?php echo $i ?></h6></th>
                                                        <th><h6><?php echo $data_feedback_1[$no]['feedback_1_'.$i] ?></h6></th>
                                                    </tr>
                                                    <?php }?>
                                                </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </td>
                            <td align="center"><a href="#komentar_pengungkit_<?php echo $no ?>" data-toggle="modal" ><button class="btn btn-success">Lihat</button></a>
                                <div id="komentar_pengungkit_<?php echo $no ?>" class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4>Dimensi Pengungkit</h4>
                                                </div>
                                                <div class="modal-body">
                                                <table class="table penelitian table-bordered table-striped">
                                                    <tr>
                                                        <th width="20%"><h6>Pertanyaan</h6></th>
                                                        <th width="80%"><h6>Ulasan</h6></th>
                                                    </tr>
                                                    <?php for($i=1; $i<=10; $i++) {?>
                                                    <tr>
                                                        <th><h6>Pertanyaan <?php echo $i ?></h6></th>
                                                        <th><h6><?php echo $data_feedback_2[$no]['feedback_2_'.$i] ?></h6></th>
                                                    </tr>
                                                    <?php }?>
                                                </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </td>
                            <td align="center"><a href="#komentar_nilai_<?php echo $no ?>" data-toggle="modal" ><button class="btn btn-info">Lihat</button></a>
                                <div id="komentar_nilai_<?php echo $no ?>" class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4>Dimensi Nilai</h4>
                                                </div>
                                                <div class="modal-body">
                                                <table class="table penelitian table-bordered table-striped">
                                                    <tr>
                                                        <th width="20%"><h6>Pertanyaan</h6></th>
                                                        <th width="80%"><h6>Ulasan</h6></th>
                                                    </tr>
                                                    <?php for($i=1; $i<=6; $i++) {?>
                                                    <tr>
                                                        <th><h6>Pertanyaan <?php echo $i ?></h6></th>
                                                        <th><h6><?php echo $data_feedback_3[$no]['feedback_3_'.$i] ?></h6></th>
                                                    </tr>
                                                    <?php }?>
                                                </table>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </td>
                            <td align="center"><a href="#komentar_dampak_<?php echo $no ?>" data-toggle="modal" ><button class="btn btn-warning">Lihat</button></a>
                                <div id="komentar_dampak_<?php echo $no ?>" class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    <h4>Dimensi Dampak</h4>
                                                </div>
                                                <div class="modal-body">
                                                <table class="table penelitian table-bordered table-striped">
                                                    <tr>
                                                        <th width="20%"><h6>Pertanyaan</h6></th>
                                                        <th width="80%"><h6>Ulasan</h6></th>
                                                    </tr>
                                                    <?php for($i=1; $i<=5; $i++) {?>
                                                    <tr>
                                                        <th><h6>Pertanyaan <?php echo $i ?></h6></th>
                                                        <th><h6><?php echo $data_feedback_4[$no]['feedback_4_'.$i] ?></h6></th>
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