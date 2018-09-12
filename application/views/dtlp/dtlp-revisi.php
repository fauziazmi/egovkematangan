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
                        <tr>
                            <td>1</td>
                            <td>Is there a clear, long-term strategy for e-government that sees IT as a means to achieving broader reform objectives?</td>
                            <td><?php if ($jawaban_1 != null ){ echo $jawaban_1; } else {echo '-';}?></td>
                            <td><textarea class="form-control" name="komentar_1"></textarea></td>
                            <td><a href="<?php echo base_url('assets/pdf/'.$wilayah.'/'.$pdf_1)?>" data-toggle="tooltip" data-placement ="top" title="lihat pdf" target="_blank"><span class="fa fa-file-pdf-o" style="font-size: 18pt;"> </span></a></td>                          
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Are there other factors likely to cause the e-government project to fail?</td>
                            <td><?php if ($jawaban_1 != null ){ echo $jawaban_2; } else {echo '-';}?></td>
                            <td><textarea class="form-control" name="komentar_2"></textarea></td>                          
                            <td><a href="<?php echo base_url('assets/pdf/'.$wilayah.'/'.$pdf_2)?>" data-toggle="tooltip" data-placement ="top" title="lihat pdf" target="_blank"><span class="fa fa-file-pdf-o" style="font-size: 18pt;"> </span></a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Are there other factors likely to cause the e-government project to fail?</td>
                            <td><?php if ($jawaban_1 != null ){ echo $jawaban_3; } else {echo '-';}?></td>
                            <td><textarea class="form-control" name="komentar_3"></textarea></td>
                            <td><a href="<?php echo base_url('assets/pdf/'.$wilayah.'/'.$pdf_3)?>" data-toggle="tooltip" data-placement ="top" title="lihat pdf" target="_blank"><span class="fa fa-file-pdf-o" style="font-size: 18pt;"> </span></a></td>                          
                        </tr>
                        <tr>
                            <td>4</td>
                            <td>Are there other factors likely to cause the e-government project to fail?</td>
                            <td><?php if ($jawaban_1 != null ){ echo $jawaban_4; } else {echo '-';}?></td>
                            <td><textarea class="form-control" name="komentar_4"></textarea></td>
                            <td><a href="<?php echo base_url('assets/pdf/'.$wilayah.'/'.$pdf_4)?>" data-toggle="tooltip" data-placement ="top" title="lihat pdf" target="_blank"><span class="fa fa-file-pdf-o" style="font-size: 18pt;"> </span></a></td>                          
                        </tr>
                    </tbody>
                </table>
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