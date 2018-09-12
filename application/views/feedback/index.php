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
<div class="page-header">
    <h2>Feedback</h2>
</div>
<div class="col-md-12">
    <div class="col-md-12">
        <div class="col-lg-1 col-md-8">
            <b> No </b>
        </div>
        <div class="col-lg-1 col-md-8">
            
        </div>
        <div class="col-lg-2 col-md-8">
            <b>Feedback 1</b>
        </div>
        <div class="col-lg-2 col-md-8">
            <b>Feedback 2</b>
        </div>
        <div class="col-lg-2 col-md-8">
            <b>Feedback 3</b>
        </div>
        <div class="col-lg-2 col-md-8">
            <b>Feedback 4</b>
        </div>
        <div class="col-lg-2 col-md-8">
            <b>Feedback Overall</b>
        </div>
    </div>
    <?php $no = 0; foreach ($data_laporan as $data) { $no++ ?>
        <div class="col-md-12" style="LINE-HEIGHT:50px;">
            <div class="col-lg-1 col-md-8">
                <b><?php echo $no;?></b>
            </div>
            <div class="col-lg-1 col-md-8">
                <b><?php echo $data['username_assessor'];?></b>
                <?php echo '<br>';?> <?php echo time_elapsed_string($data['tgl_terima']);?>
            </div>
            <div class="col-lg-2 col-md-8">
                <?php echo $data['komentar_1'];?>
            </div>
            <div class="col-lg-2 col-md-8">
                <?php echo $data['komentar_2'];?>
            </div>
            <div class="col-lg-2 col-md-8">
                <?php echo $data['komentar_3'];?>
            </div>
            <div class="col-lg-2 col-md-8">
                <?php echo $data['komentar_4'];?>
            </div>
            <div class="col-lg-2 col-md-8">
                <?php echo $data['komentar_overall'];?>
            </div>
        </div>
        <?php }?>
    </div>