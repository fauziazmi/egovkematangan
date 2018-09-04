<?php
$ses_id = $this->session->userdata('ses_id');
$ses_nama = $this->session->userdata('ses_nama');
$ses_email = $this->session->userdata('ses_email');
$ses_foto = $this->session->userdata('ses_foto');

?>
<nav class="navbar navbar-default navbir" role="navigation" style="margin-bottom: 0px;border-radius: 0;background: #737373;border: 0">
    <div class="navbar-header">
        <a class="navbar-brand " href="#" style="color: white">e-gov Maturity</a>
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
</nav>
        
            <div class="w3-bar w3-light-grey">
            <ul class="nav" id="side-menu">
                <li>
                    <a href="<?php echo site_url('dashboard')?>" class="w3-bar-item w3-button"> Dashboard</a>
                </li>
                <li>
                    <a href="<?php echo site_url('dtlp');?>" class="w3-bar-item w3-button"> Data Laporan Penelitian</a>
                </li>
                <li>
                    <a href="<?php echo site_url('years')?>" class="w3-bar-item w3-button"> Data Tahun Penelitian</a>
                </li>
                <li>
                    <a href="<?php echo site_url('pendanaan')?>" class="w3-bar-item w3-button"> Data Pendanaan</a>
                </li>
                <li>
                    <a href="<?php echo site_url('user');?>" class="w3-bar-item w3-button"> Data User</a>
                </li>
                    <div class="w3-dropdown-hover">
                    <li>
                        <button class="w3-button">Account</button>
                        <div class="w3-dropdown-content w3-bar-block w3-card-4">
                        <ul class="nav nav-second-level">
                            <li>
                            <a href="<?php echo site_url('user/detail_data/'.$this->session->userdata('ses_id'))?>">Profile</a>
                            </li>
                            <li>
                            <a href="<?php echo site_url('user/ganti_password/'.$this->session->userdata('ses_id'))?>">Ganti Password</a>
                            </li>
                            <li>
                            <a href="<?php echo site_url('login/sign_out');?>" onclick="return confirm('Apakah anda ingin keluar dari program')">Logout</a>
                            </li>
                        </ul>
                        </div>
                        </li>
                    </div>
            </ul>
            </div>
        
