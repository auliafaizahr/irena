<!-- jQuery UI -->
<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-12">
		<h2>Arsip</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini memberikan informasi terkait dokumen/arsip/surat/nota dinas/memorandum perencanaan pendanaan pembangunan.
			</li>
		</ol>
	</div>
</div>

<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-lg-3">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
                    <h5>Arsip Masuk</h5>
					<div class="pull-right">
						<select id="select_tahun_arsip_masuk">
							<option value="0">Semua Tahun</option>
							<option value="2017">Tahun 2017</option>
							<option value="2018">Tahun 2018</option>
							<option value="2019">Tahun 2019</option>
						</select>
					</div>
				</div>
				<div class="ibox-content">
					<div class="text-center">
						<h1 id="arsip_masuk"></h1>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-3">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
                    <h5>Arsip keluar</h5>
					<div class="pull-right">
						<select id="select_tahun_arsip_keluar">
							<option value="0">Semua Tahun</option>
							<option value="2017">Tahun 2017</option>
							<option value="2018">Tahun 2018</option>
							<option value="2019">Tahun 2019</option>
						</select>
					</div>
				</div>
				<div class="ibox-content">
					<div class="text-center">
						<h1 id="arsip_keluar"></h1>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-6">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
                    <h5>Disposisi Yang Belum Diselesaikan</h5>
				</div>
				<div class="ibox-content css-animation-box">
					<div id="staf_blm_selesai_disposisi">
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
                    <h5>Data</h5>
					<?php if($this->session->userdata('id_user_level') == '2' || $this->session->userdata('id_user_level') == '1') { ?>
					<div class="pull-right">
						<div class="btn-group">
							<button type="button" id="btnTambah" class="btn btn-xs" >Tambah</button>
						</div>
					</div>
					<?php } ?>
				</div>
				<!-- 
				<div class="ibox-content">	
					<a href="<?php  //echo base_url(); ?>arsip/send">Kirim Email</a> <br>
					<br>
					<select name="id_jenis" class="form-control m-b" required>
						<option value=""></option>
						<option value="">ok</option>
						<option value="">tk ok</option>
					</select>
				</div>
				-->
				<div id="loader1" class="loader1" style='visibility: hidden;'></div>
				<div class="ibox-content" id="tabel_arsip">
				</div>
			</div>
		</div>
	</div>
</div>


<script src="<?php echo base_url(); ?>assets/inspinia/js/jquery-2.1.1.js"></script>

<script>
	function detail(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			beforeSend: function(){
				
				showLoading();
				$('#loader').fadeOut(1000);
			},
			success:function(response){

				$("#tmpModal").html(response);
				$('#modalDetail').modal('show');
			},
			dataType:"html"});
		return false;
	}
	
	function showLoading2(){
		document.getElementById("loader1").style = "visibility: visible";
		$('#loader1').fadeOut(1000);
	}
	
	/*function showLoading(){
		document.getElementById("loader").style = "visibility: visible";
		$('#loader').fadeOut(1000);
	}
	*/
	function tampilkan_jumlah_arsip_masuk(tahun){
		$.get("<?php echo base_url(); ?>arsip/tampilkan_jumlah_arsip_masuk/"+tahun, function(data) {
			$("#arsip_masuk").html(data);
		});
	}
	
	function tampilkan_jumlah_arsip(jenis, tahun){
		$.get("<?php echo base_url(); ?>arsip/tampilkan_jumlah_arsip/"+tahun+"/"+jenis, function(data) {
			$("#arsip_"+jenis).html(data);
		});
	}
	
	function tampilkan_staf_blm_selesai_disposisi(){
		$.get("<?php echo base_url(); ?>arsip/tampilkan_staf_blm_selesai_disposisi/", function(data) {
			$("#staf_blm_selesai_disposisi").html(data);
		});
	}
	
	function segarkan_data(){
		
	$.get("<?php echo base_url(); ?>arsip/shodata", function(data) {
		$("#tabel_arsip").html(data);
	});
		

	/*
		$.ajax({
				url: "<?php echo base_url(); ?>arsip/shodata",
				beforeSend: function(){
					//notif("Data tak jadi disimpan loh", "tutupaja");
					//showLoading();
					//showLoading2();
					//$('#loader').fadeOut(1000);
				},
				success:function(response){
						//response.preventDefault();
					$("#tabel_arsip").html(response);
					//$('#tabel_arsip').html();
				},
				dataType:"html",
				error: function(){
					alert('gagal noh!');
				}
				
			});
			*/
	}
	
	$(document).ready(function(){
		segarkan_data();
		//tampilkan_jumlah_arsip_masuk(0);
		tampilkan_jumlah_arsip("masuk", 0);
		tampilkan_jumlah_arsip("keluar", 0);
		tampilkan_staf_blm_selesai_disposisi();
		
		$('#select_tahun_arsip_masuk').change(function(){
			var id = $(this).val();
			tampilkan_jumlah_arsip("masuk", id);
		});
		
		$('#select_tahun_arsip_keluar').change(function(){
			var id = $(this).val();
			tampilkan_jumlah_arsip("keluar", id);
		});
		
		$('#btnDetil').click(function(){
			$.ajax({
				url: "<?php echo base_url(); ?>arsip/detil",
				beforeSend: function(){
					showLoading();
					$('#loader').fadeOut(1000);
				},
				success:function(response){
					alert('osk');
					//$("#tmpModal").html(response);
					//$('#modalTambah').modal('show');
				},
				dataType:"html"});
			return false;
		});
		
		//untuk hapus
		$('#btnTambah').click(function(){
			$.ajax({
				url: "<?php echo base_url(); ?>arsip/tambah",
				beforeSend: function(){
					showLoading();
				},
				success:function(response){
					$("#tmpModal").html(response);
					$('#modalTambah').modal('show');
				},
				dataType:"html"
			});
			//return false;
		});
 
	});
</script> 





