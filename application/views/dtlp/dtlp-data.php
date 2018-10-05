<style>
.checkboxgroup{
    display:inline-block;
    text-align:center;
}
.checkboxgroup label {
    display:block;
}
</style>
<link href="<?php echo base_url('assets/css/dtlp-style.css');?>" rel="stylesheet" >
<?php $ses_wilayah = $this->session->userdata('ses_wilayah'); ?>
<div class="page-header" style="margin-left:45px;">
    <h2>Input Data Laporan</h2>
    <?php date_default_timezone_set('Asia/Jakarta'); echo date("Y-m-d")?>
</div>
<div class="row">
    <div class="col-sm-12 col-md-12">
        <h4 class="modal-title" style="text-align: center"><b>Dimensi egov Maturity</b></h4>
    <div class="tabs" style="margin-top:20px">
    <ul class="tab-links">
		    <li class="active"><a href="#tab1">Sumber Daya</a></li>
		    <li><a href="#tab2">Pengungkit</a></li>
		    <li><a href="#tab3">Nilai</a></li>
		    <li><a href="#tab4">Dampak</a></li>
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
                <div class="row">
                    <div class="col-sm-4"><h4 style="text-align:center;"><b>Pernyataan</b></h4></div>
                    <div class="col-sm-6"><h4 style="text-align:center;"><b>Level Kematangan</b></h4></div>
                    <div class="col-sm-2"><h4 style="text-align:center;"><b>Bukti</b></h4></div>
                </div>
                <?php
                    $no = 0; foreach ($data_pertanyaan_1 as $data){ $no++  
                        ?>
                    <div class="row">
                    <div class="modal-body">
                        <div class="form-group">                            
                            <p style="color:black;" class="col-sm-4"><?php echo $data['pertanyaan'];?> <br><font color="grey"><i><?php echo $data['bukti'];?></i></font></p>
                        </div>
                        <div class="col-sm-6" align="center">
                            <div id="checkboxes">
                                <div class="checkboxgroup">    
                                    <label for="my_radio_button_id1">0</label><input type="radio" checked="" name="jawaban_1_<?php echo $no ?>" value="0">                
                                </div>
                                <div class="checkboxgroup">                                
                                    <label for="my_radio_button_id2">1</label><input type="radio" checked="" name="jawaban_1_<?php echo $no ?>" value="1">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id3">2</label><input type="radio" checked="" name="jawaban_1_<?php echo $no ?>" value="2">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id4">3</label><input type="radio" checked="" name="jawaban_1_<?php echo $no ?>" value="3">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id5">4</label><input type="radio" checked="" name="jawaban_1_<?php echo $no ?>" value="4">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id6">5</label><input type="radio" checked="" name="jawaban_1_<?php echo $no ?>" value="5">
                                </div>
                                <div class="checkboxgroup">
                                    <a href="#info1_<?php echo $no ?>" data-toggle="modal"><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <div id="info1_<?php echo $no ?>" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4>Penjelasan Indikator</h4>
                                            </div>
                                            <div class="modal-body">
                                            <table class="table penelitian table-bordered table-striped">
                                                <tr>
                                                    <th width="20%"><h6>Level</h6></th>
                                                    <th width="80%"><h6>Deskripsi</h6></th>
                                                </tr>
                                                <?php for($i=0; $i<=5; $i++) {?>
                                                <tr>
                                                    <th><h6>level <?php echo $i ?></h6></th>
                                                    <th><h6><?php echo $data['level_'.$i]; ?></h6></th>
                                                </tr>
                                                <?php }?>
                                            </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="col-sm-2">
                        
                            <div class="form-group">
                                <input type="file" name="pdf_1_<?php echo $no ?>">
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="modal-footer" style="margin-top:5px"></div>
                    <?php }?>
                    <div align="right">
                    <a href="#tab2" class="next" >Next &raquo;</a>
                    </div>
            </div>
            
            <div id="tab2" class="tab">
            <div class="row">
                    <div class="col-sm-4"><h4 style="text-align:center;"><b>Pernyataan</b></h4></div>
                    <div class="col-sm-6"><h4 style="text-align:center;"><b>Level Kematangan</b></h4></div>
                    <div class="col-sm-2"><h4 style="text-align:center;"><b>Bukti</b></h4></div>
            </div>
            <?php  $no = 0; foreach ($data_pertanyaan_2 as $data){ $no++ ?>
                <div class="row">
                    <div class="modal-body">
                        <div class="form-group">                            
                            <p style="color:black;" class="col-sm-4"><?php echo $data['pertanyaan'];?></p>
                        </div>
                        <div class="col-sm-6" align="center">
                        <div id="checkboxes">
                                <div class="checkboxgroup">    
                                    <label for="my_radio_button_id1">0</label><input type="radio" checked="" name="jawaban_2_<?php echo $no ?>" value="0">                
                                </div>
                                <div class="checkboxgroup">                                
                                    <label for="my_radio_button_id2">1</label><input type="radio" checked="" name="jawaban_2_<?php echo $no ?>" value="1">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id3">2</label><input type="radio" checked="" name="jawaban_2_<?php echo $no ?>" value="2">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id4">3</label><input type="radio" checked="" name="jawaban_2_<?php echo $no ?>" value="3">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id5">4</label><input type="radio" checked="" name="jawaban_2_<?php echo $no ?>" value="4">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id6">5</label><input type="radio" checked="" name="jawaban_2_<?php echo $no ?>" value="5">
                                </div>
                                <div class="checkboxgroup">
                                    <a href="#info2_<?php echo $no ?>" data-toggle="modal" ><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <div id="info2_<?php echo $no ?>" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4>Penjelasan Indikator</h4>
                                            </div>
                                            <div class="modal-body">
                                            <table class="table penelitian table-bordered table-striped">
                                                <tr>
                                                    <th width="20%"><h6>Level</h6></th>
                                                    <th width="80%"><h6>Deskripsi</h6></th>
                                                </tr>
                                                <?php for($i=0; $i<=5; $i++) {?>
                                                <tr>
                                                    <th><h6>level <?php echo $i ?></h6></th>
                                                    <th><h6><?php echo $data['level_'.$i]; ?></h6></th>
                                                </tr>
                                                <?php }?>
                                            </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        
                        <div class="col-sm-2">
                            <input type="file" name="pdf_2_<?php echo $no ?>">
                        </div>
                    </div>
                </div>
                    <div class="modal-footer" style="margin-top:5px"></div>
                <?php }?>
                <div align="center">
                    <a href="#tab1" class="previous">&laquo; Previous</a>
                    <a href="#tab3" class="next">Next &raquo;</a>
                </div>
            </div>

            <div id="tab3" class="tab">
            <div class="row">
                    <div class="col-sm-4"><h4 style="text-align:center;"><b>Pernyataan</b></h4></div>
                    <div class="col-sm-6"><h4 style="text-align:center;"><b>Level Kematangan</b></h4></div>
                    <div class="col-sm-2"><h4 style="text-align:center;"><b>Bukti</b></h4></div>
            </div>
            <?php  $no = 0; foreach ($data_pertanyaan_3 as $data){ $no++ ?>
                <div class="row">
                    <div class="modal-body">
                        <div class="form-group">
                            <p style="color:black;" class="col-sm-4"><?php echo $data['pertanyaan'];?> <br><font color="grey"><i><?php echo $data['bukti'];?></i></font></p>
                        </div>
                        <div class="col-sm-6" align="center">    
                        <div id="checkboxes">
                                <div class="checkboxgroup">    
                                    <label for="my_radio_button_id1">0</label><input type="radio" checked="" name="jawaban_3_<?php echo $no ?>" value="0">                
                                </div>
                                <div class="checkboxgroup">                                
                                    <label for="my_radio_button_id2">1</label><input type="radio" checked="" name="jawaban_3_<?php echo $no ?>" value="1">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id3">2</label><input type="radio" checked="" name="jawaban_3_<?php echo $no ?>" value="2">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id4">3</label><input type="radio" checked="" name="jawaban_3_<?php echo $no ?>" value="3">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id5">4</label><input type="radio" checked="" name="jawaban_3_<?php echo $no ?>" value="4">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id6">5</label><input type="radio" checked="" name="jawaban_3_<?php echo $no ?>" value="5">
                                </div>
                                <div class="checkboxgroup">
                                    <a href="#info3_<?php echo $no ?>" data-toggle="modal" ><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <div id="info3_<?php echo $no ?>" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4>Penjelasan Indikator</h4>
                                            </div>
                                            <div class="modal-body">
                                            <table class="table penelitian table-bordered table-striped">
                                                <tr>
                                                    <th width="20%"><h6>Level</h6></th>
                                                    <th width="80%"><h6>Deskripsi</h6></th>
                                                </tr>
                                                <?php for($i=0; $i<=5; $i++) {?>
                                                <tr>
                                                    <th><h6>level <?php echo $i ?></h6></th>
                                                    <th><h6><?php echo $data['level_'.$i]; ?></h6></th>
                                                </tr>
                                                <?php }?>
                                            </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="col-sm-2">
                            <input type="file" name="pdf_3_<?php echo $no ?>">
                        </div>
                    </div>
                </div>
                
                    <div class="modal-footer" style="margin-top:5px"></div>
                <?php }?>
                    <div align="center">
                        <a href="#tab2" class="previous">&laquo; Previous</a>
                        <a href="#tab4" class="next">Next &raquo;</a>
                    </div>
            </div>

            <div id="tab4" class="tab">
            <div class="row">
                    <div class="col-sm-4"><h4 style="text-align:center;"><b>Pernyataan</b></h4></div>
                    <div class="col-sm-6"><h4 style="text-align:center;"><b>Level Kematangan</b></h4></div>
                    <div class="col-sm-2"><h4 style="text-align:center;"><b>Bukti</b></h4></div>
            </div>
            <?php   $no = 0; foreach ($data_pertanyaan_4 as $data){ $no++ ?>
                <div class="row">
                    <div class="modal-body">
                        <div class="form-group">
                            <p style="color:black;" class="col-sm-4"><?php echo $data['pertanyaan'];?></p>
                        </div>
                        <div class="col-sm-6" align="center">
                            <div id="checkboxes">
                                <div class="checkboxgroup">    
                                    <label for="my_radio_button_id1">0</label><input type="radio" checked="" name="jawaban_4_<?php echo $no ?>" value="0">                
                                </div>
                                <div class="checkboxgroup">                                
                                    <label for="my_radio_button_id2">1</label><input type="radio" checked="" name="jawaban_4_<?php echo $no ?>" value="1">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id3">2</label><input type="radio" checked="" name="jawaban_4_<?php echo $no ?>" value="2">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id4">3</label><input type="radio" checked="" name="jawaban_4_<?php echo $no ?>" value="3">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id5">4</label><input type="radio" checked="" name="jawaban_4_<?php echo $no ?>" value="4">
                                </div>
                                <div class="checkboxgroup">
                                    <label for="my_radio_button_id6">5</label><input type="radio" checked="" name="jawaban_4_<?php echo $no ?>" value="5">
                                </div>
                                <div class="checkboxgroup">
                                    <a href="#info4_<?php echo $no ?>" data-toggle="modal" ><i class="fa fa-info-circle" aria-hidden="true"></i></a>
                                </div>
                            </div>
                            <div id="info4_<?php echo $no ?>" class="modal fade">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <h4>Penjelasan Indikator</h4>
                                            </div>
                                            <div class="modal-body">
                                            <table class="table penelitian table-bordered table-striped">
                                                <tr>
                                                    <th width="20%"><h6>Level</h6></th>
                                                    <th width="80%"><h6>Deskripsi</h6></th>
                                                </tr>
                                                <?php for($i=0; $i<=5; $i++) {?>
                                                <tr>
                                                    <th><h6>level <?php echo $i ?></h6></th>
                                                    <th><h6><?php echo $data['level_'.$i]; ?></h6></th>
                                                </tr>
                                                <?php }?>
                                            </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </div>
                        <div class="col-sm-2">
                            <div class="form-group">
                                <input type="file" name="pdf_4_<?php echo $no ?>">
                                <h6 style="color:gray"><i>dibuktikan dengan gambar bisnis proses</i></h6>
                            </div>
                        </div>
                    </div>
                </div>
                    <div class="modal-footer" style="margin-top:5px"></div>
                <?php }?>
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