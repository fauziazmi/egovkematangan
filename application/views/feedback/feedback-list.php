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
<div style="margin-left:45px">
    <?php $no = 0; foreach ($data_laporan as $data) { $no++ ?>
        <b>Feedback </b>
        <b><?php echo $no;?></b><br>
        <b><?php echo $data['username_assessor'];?></b>  posted on <b><?php echo $data['tgl_terima'];?></b> <br>
        <b>Feedback 1:</b>
        <?php echo $data['komentar_1'];?><br>
        <b>Feedback 2:</b>
        <?php echo $data['komentar_2'];?><br>
        <b>Feedback 3:</b>
        <?php echo $data['komentar_3'];?><br>
        <b>Feedback 4:</b>
        <?php echo $data['komentar_4'];?><br>
        <b>Feedback Overall</b>
        <?php echo $data['komentar_overall'];?><br><br>
        <?php }?>
</div>