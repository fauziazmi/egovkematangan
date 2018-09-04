<?php
    $ses_level = $this->session->userdata('ses_pekerjaan');
?>
<div class="page-header">
    <h2>Data e-gov maturity wilayah</h2>
</div>
<div class="row">
<div class="col-sm-12 col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">
                List Data
                <a href="#widget1" data-toggle="collapse"><span class="fa fa-chevron-down" style="float: right"></span>
                </a>
            </div>
            <div id="widget1" class="panel-body collapse in">
                <table id="table" class="table penelitian table-bordered table-striped" width="100%">
                    <thead>
                    <tr>
                        <th width="4%">NO</th>
                        <th width="10%">WILAYAH</th>
                        <th width="10%">JAWABAN 1</th>
                        <th width="10%">JAWABAN 2</th>
                        <th width="10%">JAWABAN 3</th>
                        <th width="10%">JAWABAN 4</th>
                        <th width="10%">NILAI</th>
                        <th width="16%">Tanggal TERIMA</th>
                        <th width="10%">PDF</th>
                        <?php if ($ses_level != 'Pemda'){?><li>
                        <th width="10%" class="text-center">Opsi<br></th>
                        <?php } ?>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    $no = 0; foreach ($data_laporan as $data){ $no++
                        ?>
                        <tr>
                            <td><?php echo $no;?></td>
                            <td><?php echo $data['wilayah'];?></td>
                            <td><?php echo $data['jawaban_1'];?></td>
                            <td><?php echo $data['jawaban_2'];?></td>
                            <td><?php echo $data['jawaban_3'];?></td>
                            <td><?php echo $data['jawaban_4'];?></td>
                            <td><?php echo $data['Nilai'];?></td>
                            <td><?php echo $data['tgl_terima'];?></td>
                            <td><a href="<?php echo base_url('assets/pdf/'.$data['wilayah'].'/'.$data['pdf'])?>" data-toggle="tooltip" data-placement ="top" title="lihat pdf" target="_blank"><span class="fa fa-file-pdf-o" style="font-size: 14pt;"> </span></a></td>
                                <td class="text-center">
                                    <?php if ($ses_level != 'Pemda'){?>
                                    <a href="<?php echo base_url()?>dtlp/kirim_email/<?php echo $data['wilayah'];?>" data-toggle="tooltip" data-placement ="top" title="Komentar" target="_blank"><span class="fa fa-commenting-o" style="font-size: 14pt;"> </span></a>                                 
                                    <a href="<?php echo base_url()?>dtlp/detail_data/<?php echo $data['id'];?>" data-toggle="tooltip" data-placement ="top" title="detail"><span class="glyphicon glyphicon-check" style="font-size: 14pt"></span></a>
                                    <a href="<?php echo base_url()?>dtlp/export_excel/<?php echo $data['wilayah'];?>" data-toggle="tooltip" data-placement ="top" title="excel"><span class="fa fa-file-excel-o" style="font-size: 14pt"></span></a>
                                    <a href="<?php echo base_url()?>dtlp/hapus_data/<?php echo $data['wilayah'];?>" onclick="return confirm('Yakin data dihapus')" data-toggle="tooltip" data-placement ="top" title="hapus"><span class="glyphicon glyphicon-trash" style="font-size: 12pt"></span></a>
                                    <?php } ?>
                                </td>
                        </tr>
                    <?php }?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <?php if ($ses_level != 'Pengunjung'){?>
        <div class="col-sm-5 col-md-5">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Filtur Report Laporan Pemda
                    <a href="#widget2" data-toggle="collapse"><span class="fa fa-chevron-down" style="float: right"></span>
                    </a>
                </div>
                <div id="widget2" class="panel-body collapse in">
                    <form action="cek.php" method="post" name="form_cek" id="form_cek">
                        <div class="form-group">
                            <label>Jawaban 1</label>
                            <select name="jawaban_1" class="form-control">
                                <option value="">Pilih</option>
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Jawaban 2</label>
                            <select name="jawaban_2" class="form-control">
                                <option value="">Pilih</option>
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Jawaban 3</label>
                            <select name="jawaban_3" class="form-control">
                                <option value="">Pilih</option>
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Jawaban 4</label>
                            <select name="jawaban_4" class="form-control">
                                <option value="">Pilih</option>
                                    <option value="yes">Yes</option>
                                    <option value="no">No</option>
                            </select>
                        </div>
                        <div class="pull-right">
                            <a href="" onclick="document.form_cek.action = '<?php echo base_url('dtlp/export_print');?>'"><button class="btn btn-success">
                                    <span class="fa fa-print"></span> Print
                                </button></a>
                            <a href="" onclick="document.form_cek.action = '<?php echo base_url('dtlp/export_excel_report');?>'"><button class="btn btn-primary" >
                                    <span class="fa fa-file-excel-o"></span> Excel
                                </button></a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    <?php } ?>
</div>