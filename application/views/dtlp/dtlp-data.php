<link href="<?php echo base_url('assets/css/dtlp-style.css');?>" rel="stylesheet" >
</style>
<?php $ses_wilayah = $this->session->userdata('ses_wilayah'); ?>
<div class="page-header">
    <h2>Input Data Laporan</h2>
    <?php date_default_timezone_set('Asia/Jakarta'); echo date("Y-m-d")?>
</div>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <h4 class="modal-title" style="text-align: center"><b>Pertanyaan</b></h4>
    <div class="tabs">
    <ul class="tab-links">
		    <li class="active"><a href="#tab1">1</a></li>
		    <li><a href="#tab2">2</a></li>
		    <li><a href="#tab3">3</a></li>
		    <li><a href="#tab4">4</a></li>
	    </ul>
	    <div class="tab-content">
            <form action="<?php echo site_url('dtlp/simpan_data')?>" enctype="multipart/form-data" method="post">
            <div id="tab1" class="tab active">
            <?php
                $data=$this->session->flashdata('error');
                if($data!=""){ ?>
                    <div id="pesan-flash">
                        <div class='alert alert-danger alert-dismissable'>
                            <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                            <strong> Error! </strong> <?=$data;?>
                        </div>
                    </div>
                <?php } ?>
                <?php
                $data2=$this->session->flashdata('sukses');
                if($data2!=""){ ?>
                    <div id="pesan-error-flash">
                        <div class='alert alert-success alert-dismissable'>
                            <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                            <strong> Succes! </strong> <?=$data2;?>
                        </div>
                    </div>
                <?php } ?>
                <?php
                $data3=$this->session->flashdata('warning');
                if($data3!=""){ ?>
                    <div id="pesan-error-flash">
                        <div class='alert alert-warning alert-dismissable'>
                            <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
                            <strong> Warning! </strong> <?=$data3;?>
                        </div>
                    </div>
                <?php } ?>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Pertanyaan</label>
                            <p style="color:black;">Is there a clear, long-term strategy for e-government that sees IT as a means to achieving broader reform objectives?</p>
                        </div>
                        <div class="form-group">
                            <label>Bukti</label>
                            <input type="file" name="pdf_1">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <label>Yes</label><input type="radio" checked="" name="jawaban_1" value="yes">
                        <label>No</label><input type="radio" checked="" name="jawaban_1" value="no">
                    </div>
                    <div align="right">
                    <a href="#tab2" class="next" >Next &raquo;</a>
                    </div>
            </div>
            
            <div id="tab2" class="tab">
                <div class="modal-body">
                        <div class="form-group">
                            <label>Pertanyaan</label>
                            <p style="color:black;">Are there other factors likely to cause the e-government project to fail?</p>
                        </div>
                        <div class="form-group">
                            <label>Bukti</label>
                            <input type="file" name="pdf_2">
                        </div>
                </div>
                <div class="modal-footer">
                    <div id="button-holder">
                    <label>Yes</label><input type="radio" checked="" name="jawaban_2" value="yes">
                        <label>No</label><input type="radio" checked="" name="jawaban_2" value="no">
                    </div>
                </div>
                <div align="center">
                    <a href="#tab1" class="previous">&laquo; Previous</a>
                    <a href="#tab3" class="next">Next &raquo;</a>
                </div>
            </div>

            <div id="tab3" class="tab">
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Pertanyaan</label>
                            <p style="color:black;">Are there other factors likely to cause the e-government project to fail?</p>
                        </div>
                        <div class="form-group">
                            <label>Bukti</label>
                            <input type="file" name="pdf_3">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div id="button-holder">
                            <label>Yes</label><input type="radio" checked="" name="jawaban_3" value="yes">
                            <label>No</label><input type="radio" checked="" name="jawaban_3" value="no">
                        </div>
                    </div>
                    <div align="center">
                        <a href="#tab2" class="previous">&laquo; Previous</a>
                        <a href="#tab4" class="next">Next &raquo;</a>
                    </div>
            </div>

            <div id="tab4" class="tab">
                    <div class="modal-body">
                        <div class="form-group">
                            <label>Pertanyaan</label>
                            <p style="color:black;">Are there other factors likely to cause the e-government project to fail?</p>
                        </div>
                        <div class="form-group">
                            <label>Bukti</label>
                            <input type="file" name="pdf_4">
                        </div>
                    </div>
                    <div class="modal-footer">
                        <div id="button-holder">
                            <label>Yes</label><input type="radio" checked="" name="jawaban_4" value="yes">
                            <label>No</label><input type="radio" checked="" name="jawaban_4" value="no">
                        </div>
                    </div>
                    <div align="left">
                        <a href="#tab3" class="previous">&laquo; Previous</a>
                    </div>
                    <div align="center">
                    <button type="reset" class="btn btn-danger">Reset</button>
                    <input type="hidden" name="wilayah" value="<?php echo $ses_wilayah?>">
                    <input type="hidden" name="tgl_terima" value="<?php echo date("Y-m-d")?>">
                    <input type="submit" class="btn btn-primary" value="Simpan" name="simpan" onclick="myFunction()">
                    </div>
            </div>
            </form>
            
        </div>
        
    </div>
</div>  
</div>