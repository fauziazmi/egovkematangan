<html>
<head>
    <?php $this->load->view('template/header');?>
    <script type="text/javascript"> 
    		$('#job').on('change', function(){
    if($(this).val() =='Assessor'){
        $('#region').attr('disabled', 'disabled');
    }else{
        $('#region').attr('disabled', false);
    }
});
</script>
</head>
<body>
<div class="container" style="margin: auto auto;">
    <div class="row">
        <div class="col-md-4 col-md-offset-4" style="margin-top: 130px;margin-bottom: 130px">
            <div class="panel panel-default modal-content">
                <div class="panel-heading">
                    <div style="font-size: 14pt" class="panel-title text-center">Login Sistem</div>
                </div>
                <form action="<?php echo site_url('login/sign_in');?>" method="post">
                    <div class="panel-body">
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
                        <div style="margin-bottom: 25px; margin-top: 10px" class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                            <input type="text" name="username" class="form-control" placeholder="Username" required>
                        </div>
                        <div style="margin-bottom: 20px" class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                            <input type="password" name="password" class="form-control" placeholder="Password" required>
                        </div>
                        <div class="input-group" style="width: 100%">
                            <input type="submit" class="btn btn-primary" name="log" value="LOGIN" style="width:100%;">
                        </div>
                        <div class="" style="margin-top: 10px">
                            <div class="pull-left">
                                <a href="" data-toggle="modal" data-target="#lupa">Lupa Password</a>
                            </div>
                            <div class="pull-right">
                                <a href="#" data-toggle="modal" data-target="#register">Daftar</a>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div id="register" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Registrasi</h4>
            </div>
            <form action="<?php echo site_url('login/daftar_data')?>" enctype="multipart/form-data" method="post">
                <div class="modal-body">
                    <div class="form-group">
                            <label>Tugas Anda</label>
                            <select id='job' name="pekerjaan" class="form-control">
                                <option value="Assessor">Assessor</option>
                                <option value="Pemda" selected="selected">Pemda</option>
                            </select>
                    </div>
                    <div class="form-group">
                        <label>Wilayah</label>
                        <select id='region' name="wilayah" class="form-control">
                                <option value="Aceh">Aceh</option>
                                <option value="Bali">Bali</option>
                                <option value="Banten">Banten</option>
                                <option value="Bengkulu">Bengkulu</option>
                                <option value="Gorontalo">Gorontalo</option>
                                <option value="Jakarta">Jakarta</option>
                                <option value="Jambi">Jambi</option>
                                <option value="Jawa Barat">Jawa Barat</option>
                                <option value="Jawa Tengah">Jawa Tengah</option>
                                <option value="Jawa Timur">Jawa Timur</option>
                                <option value="Kalimantan Barat">Kalimantan Barat</option>
                                <option value="Kalimantan Selatan">Kalimantan Selatan</option>
                                <option value="Kalimantan Tengah">Kalimantan Tengah</option>
                                <option value="Kalimantan Timur">Kalimantan Timur</option>
                                <option value="Kalimantan Utara">Kalimantan Utara</option>
                                <option value="Kepulauan Bangka Belitung">Kepulauan Bangka Belitung</option>
                                <option value="Kepulauan Riau">Kepulauan Riau</option>
                                <option value="Lampung">Lampung</option>
                                <option value="Maluku">Maluku</option>
                                <option value="Maluku Utara">Maluku Utara</option>
                                <option value="Nusa Tenggara Barat">Nusa Tenggara Barat</option>
                                <option value="Nusa Tenggara Timur">Nusa Tenggara Timur</option>
                                <option value="Papua">Papua</option>
                                <option value="Papua Barat">Papua Barat</option>
                                <option value="Riau">Riau</option>
                                <option value="Sulawesi Barat">Sulawesi Barat</option>
                                <option value="Sulawesi Selatan">Sulawesi Selatan</option>
                                <option value="Sulawesi Tengah">Sulawesi Tengah</option>
                                <option value="Sulawesi Tenggara">Sulawesi Tenggara</option>
                                <option value="Sulawesi Utara">Sulawesi Utara</option>
                                <option value="Sumatera Barat">Sumatera Barat</option>
                                <option value="Sumatera Selatan">Sumatera Selatan</option>
                                <option value="Sumatera Utara">Sumatera Utara</option>
                                <option value="Yogyakarta">Yogyakarta</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" name="email" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" name="username" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Password</label>
                        <input type="password" name="password" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Foto</label>
                        <input type="file" name="file_upload" value="">
                    </div>



                </div>
                <div class="modal-footer">
                    <button type="reset" class="btn btn-danger">Reset</button>
                    <button type="button" class="btn btn-warning" data-dismiss="modal">Batal</button>
                    <input type="submit" class="btn btn-primary" value="Daftar" name="daftar">
                </div>
            </form>
        </div>
    </div>
</div>
<div id="lupa" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Lupa Password</h4>
            </div>
            <form action="<?php echo site_url('login/lupa_password')?>" method="post">
                <div class="modal-body">
                    <div class="form-group">
                        <label>Email</label>
                        <input type="text" class="form-control" name="email" required>
                    </div>
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" name="username" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Password Baru</label>
                        <input type="password" name="password" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label>Ulangi Password</label>
                        <input type="password" name="ulangi_password" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="reset" class="btn btn-danger">Reset</button>
                    <button type="button" class="btn btn-warning" data-dismiss="modal">Batal</button>
                    <input type="submit" class="btn btn-primary" value="Ubah" name="ganti">
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>