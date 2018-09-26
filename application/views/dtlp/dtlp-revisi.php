<script type="text/javascript">
        $(function () {
        //CKEditor
        CKEDITOR.replace('ckeditor');
        CKEDITOR.config.height = 100;

        //TinyMCE
        tinymce.init({
            selector: "textarea#tinymce",
            theme: "modern",
            height: 300,
            plugins: [
                'advlist autolink lists link image charmap print preview hr anchor pagebreak',
                'searchreplace wordcount visualblocks visualchars code fullscreen',
                'insertdatetime media nonbreaking save table contextmenu directionality',
                'emoticons template paste textcolor colorpicker textpattern imagetools'
            ],
            toolbar1: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image',
            toolbar2: 'print preview media | forecolor backcolor emoticons',
            image_advtab: true
        });
        tinymce.suffix = ".min";
        tinyMCE.baseURL = '<?php echo base_url()?>assets/plugins/tinymce';
    });
    </script>
<?php 
    $ses_username = $this->session->userdata('ses_nama');
?>
<form action="<?php echo base_url()?>dtlp/aksi_kirim" method="post">
<div class="panel-heading" align="center" style="font-weight: bold;">
    <?php echo $wilayah;?>
</div>
    <div class="panel panel-default">
            <div class="panel-heading">
            <b>Sumber Daya</b>
                <a href="#widget1" data-toggle="collapse"><span class="fa fa-chevron-down" style="float: right"></span>
                </a>
            </div>
            <div id="widget1" class="panel-body collapse in">
            <table id="table" class="table penelitian table-bordered table-striped" width="100%">
                    <thead>
                    <tr>
                        <th width="4%">NO</th>
                        <th width="40%">Pertanyaan</th>
                        <th width="10%">Jawaban</th>
                        <th width="40%">Feedback</th>
                        <th width="6%">Bukti</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php   $no = 0; foreach ($data_pertanyaan_1 as $data){ $no++ ?>  
                        <tr>
                            <td><?php echo $no;?></td>
                            <td><?php echo $data['pertanyaan'];?></td>
                            <td><?php if ($data_dimensi1['jawaban_1_'.$no] != null ){ echo $data_dimensi1['jawaban_1_'.$no]; } else {echo '-';}?></td>
                            <td><textarea class="form-control" name="komentar_1"></textarea></td>
                            <td><a href="<?php echo base_url('assets/pdf/'.$wilayah.'/'.$data_dimensi1['pdf_1_'.$no])?>" data-toggle="tooltip" data-placement ="top" title="lihat pdf" target="_blank"><span class="fa fa-file-pdf-o" style="font-size: 18pt;"> </span></a></td>                          
                        </tr>
                    <?php }?>
                    </tbody>
                </table>
            </div>
    </div>
    <div class="panel panel-default">
            <div class="panel-heading">
            <b>Pengungkit</b>
                <a href="#widget2" data-toggle="collapse"><span class="fa fa-chevron-down" style="float: right"></span>
                </a>
            </div>
            <div id="widget2" class="panel-body collapse in">
                <table id="table" class="table penelitian table-bordered table-striped" width="100%">
                    <thead>
                    <tr>
                        <th width="4%">NO</th>
                        <th width="40%">Pertanyaan</th>
                        <th width="10%">Jawaban</th>
                        <th width="40%">Feedback</th>
                        <th width="6%">Bukti</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php   $no = 0; foreach ($data_pertanyaan_2 as $data){ $no++ ?>  
                        <tr>
                            <td><?php echo $no;?></td>
                            <td><?php echo $data['variabel'];?></td>
                            <td><?php if ($data_dimensi2['jawaban_2_'.$no] != null ){ echo $data_dimensi2['jawaban_2_'.$no]; } else {echo '-';}?></td>
                            <td><textarea class="form-control" name="komentar_2"></textarea></td>
                            <td><a href="<?php echo base_url('assets/pdf/'.$wilayah.'/'.$data_dimensi2['pdf_2_'.$no])?>" data-toggle="tooltip" data-placement ="top" title="lihat pdf" target="_blank"><span class="fa fa-file-pdf-o" style="font-size: 18pt;"> </span></a></td>                          
                        </tr>
                    <?php }?>
                    </tbody>
                </table>
            </div>
    </div>
    <div class="panel panel-default">
            <div class="panel-heading">
            <b>Nilai</b>
                <a href="#widget3" data-toggle="collapse"><span class="fa fa-chevron-down" style="float: right"></span>
                </a>
            </div>
            <div id="widget3" class="panel-body collapse in">
                <table id="table" class="table penelitian table-bordered table-striped" width="100%">
                    <thead>
                    <tr>
                        <th width="4%">NO</th>
                        <th width="40%">Pertanyaan</th>
                        <th width="10%">Jawaban</th>
                        <th width="40%">Feedback</th>
                        <th width="6%">Bukti</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php   $no = 0; foreach ($data_pertanyaan_3 as $data){ $no++ ?>  
                        <tr>
                            <td><?php echo $no;?></td>
                            <td><?php echo $data['pertanyaan'];?></td>
                            <td><?php if ($data_dimensi3['jawaban_3_'.$no] != null ){ echo $data_dimensi3['jawaban_3_'.$no]; } else {echo '-';}?></td>
                            <td><textarea class="form-control" name="komentar_3"></textarea></td>
                            <td><a href="<?php echo base_url('assets/pdf/'.$wilayah.'/'.$data_dimensi3['pdf_3_'.$no])?>" data-toggle="tooltip" data-placement ="top" title="lihat pdf" target="_blank"><span class="fa fa-file-pdf-o" style="font-size: 18pt;"> </span></a></td>                          
                        </tr>
                    <?php }?>
                    </tbody>
                </table>
            </div>
    </div>
    <div class="panel panel-default">
            <div class="panel-heading">
            <b>Dampak</b>
                <a href="#widget4" data-toggle="collapse"><span class="fa fa-chevron-down" style="float: right"></span>
                </a>
            </div>
            <div id="widget4" class="panel-body collapse in">
                <table id="table" class="table penelitian table-bordered table-striped" width="100%">
                    <thead>
                    <tr>
                        <th width="4%">NO</th>
                        <th width="40%">Pertanyaan</th>
                        <th width="10%">Jawaban</th>
                        <th width="40%">Feedback</th>
                        <th width="6%">Bukti</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php   $no = 0; foreach ($data_pertanyaan_4 as $data){ $no++ ?>  
                        <tr>
                            <td><?php echo $no;?></td>
                            <td><?php echo $data['pertanyaan'];?></td>
                            <td><?php if ($data_dimensi4['jawaban_4_'.$no] != null ){ echo $data_dimensi4['jawaban_4_'.$no]; } else {echo '-';}?></td>
                            <td><textarea class="form-control" name="komentar_4"></textarea></td>
                            <td><a href="<?php echo base_url('assets/pdf/'.$wilayah.'/'.$data_dimensi4['pdf_4_'.$no])?>" data-toggle="tooltip" data-placement ="top" title="lihat pdf" target="_blank"><span class="fa fa-file-pdf-o" style="font-size: 18pt;"> </span></a></td>                          
                        </tr>
                    <?php }?>
                    </tbody>
                </table>
            </div>
    </div>

	<label style="margin-right: 7%; margin-left: 7%;">Review</label>
	<div class="form-group" style="margin-right: 7%; margin-left: 7%;">
		<div class="form-line">
			<textarea class="form-control" name="komentar_overall" id="ckeditor"></textarea>
		</div>
	</div>
            <input type="hidden" name="username_assessor" value="<?php echo $ses_username?>">
            <input type="hidden" name="wilayah" value="<?php echo $wilayah?>">
            <input type="hidden" name="tgl_terima" value="<?php echo date("Y-m-d")?>">
	<div class="form-group" align="center">
		<button type="submit" class="btn btn-primary" style="margin-left: 7%;" >Kirim</button>
	</div>
</form>