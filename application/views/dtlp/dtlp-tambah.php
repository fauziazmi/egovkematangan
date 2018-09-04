<style>
/*----- Tabs -----*/
.tabs {
	width:100%;
	display:inline-block;
}

/*----- Tab Links -----*/
/* Clearfix */
	.tab-links:after {
	display:block;
	clear:both;
	content:'';
}

.tab-links li {
	margin:0px 5px;
	float:left;
	list-style:none;
}

.tab-links a {
	padding:9px 15px;
	display:inline-block;
	border-radius:3px 3px 0px 0px;
	background:#7FB5DA;
	font-size:16px;
	font-weight:600;
	color:#4c4c4c;
	transition:all linear 0.15s;
}

.tab-links a:hover {
	background:#a7cce5;
	text-decoration:none;
}

li.active a, li.active a:hover {
	background:#fff;
	color:#4c4c4c;
}

/*----- Content of Tabs -----*/
.tab-content {
	padding:15px;
	border-radius:3px;
	box-shadow:-1px 1px 1px rgba(0,0,0,0.15);
	background:#fff;
}

.tab {
	display:none;
}

.tab.active {
	display:block;
}
</style>

<div id="data-tambah" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Tambah Data</h4>
            </div>
            <div class="tabs">
            <h5 class="modal-title" style="text-align: center"><b>Pertanyaan</b></h5>
	<ul class="tab-links">
		<li class="active"><a href="#tab1">1</a></li>
		<li><a href="#tab2">2</a></li>
		<li><a href="#tab3">3</a></li>
		<li><a href="#tab4">4</a></li>
	</ul>

	<div class="tab-content">
    <form action="<?php echo site_url('dtlp/simpan_data')?>" enctype="multipart/form-data" method="post">
		<div id="tab1" class="tab active">
                <div class="modal-body">
                    <div class="form-group">
                        <label>Pertanyaan</label>
                        <p style="color:black;">Is there a clear, long-term strategy for e-government that sees IT as a means to achieving broader reform objectives?</p>
                    </div>
                    <div class="form-group">
                        <label>Bukti</label>
                        <input type="file" name="pdf">
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="btn btn-primary">	
                    <input type="radio" name="choice" id="yes" checked>
                    <label for="yes">Yes</label>
                    </div>
                    <div class="btn btn-danger">
                    <input type="radio" name="choice" id="no">
                    <label for="no">No</label>
                    </div>
                    <span class="switchFilter"></span>
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
                        <input type="file" name="pdf">
                    </div>
        </div>
                <div class="modal-footer">
                    <div class="btn btn-primary">	
                    <input type="radio" name="choice" id="yes" checked>
                    <label for="yes">Yes</label>
                    </div>
                    <div class="btn btn-danger">
                    <input type="radio" name="choice" id="no">
                    <label for="no">No</label>
                    </div>
                    <span class="switchFilter"></span>
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
                        <input type="file" name="pdf">
                    </div>
        </div>
                <div class="modal-footer">
                    <div class="btn btn-primary">	
                    <input type="radio" name="choice" id="yes" checked>
                    <label for="yes">Yes</label>
                    </div>
                    <div class="btn btn-danger">
                    <input type="radio" name="choice" id="no">
                    <label for="no">No</label>
                    </div>
                    <span class="switchFilter"></span>
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
                        <input type="file" name="pdf">
                    </div>
        </div>
                <div class="modal-footer">
                    <div class="btn btn-primary">	
                    <input type="radio" name="choice" id="yes" checked>
                    <label for="yes">Yes</label>
                    </div>
                    <div class="btn btn-danger">
                    <input type="radio" name="choice" id="no">
                    <label for="no">No</label>
                    </div>
                    <span class="switchFilter"></span>
                </div>
        </div>
        </form>
	</div>
</div>
            
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $('#datetimepicker').datetimepicker({
            format: 'DD MMMM YYYY HH:mm'
        });

        $('#datepicker').datetimepicker({
            format: 'DD MMMM YYYY'
        });

        $('#timepicker').datetimepicker({
            format: 'HH:mm'
        });
    });
</script>