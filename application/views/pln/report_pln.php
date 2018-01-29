<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-12">
		<h2>Laporan Pinjaman Luar Negeri</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini memberikan informasi terkait laporan Pinjaman Luar Negeri
			</li>
		</ol>
	</div>
	<div class="col-lg-2">
		
	</div>
</div>

<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-lg-3">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
                    <h5>Filter</h5>

                    <div class="ibox-tools">
                    	<a class="collapse-links">
                    		<i class="fa fa-chevron-up"></i>
                    	</a>
                    </div>
				</div>
				<div id="loader1" class="loader1" style='visibility: hidden;'></div>
				<div class="ibox-content" >

				 
				 <form role="form" method="POST" action="<?php ?>" enctype="multipart/formdata">
				 	<div class="form-group">
				 		<label>Bluebook</label>
				 		<select class="form-control m-b" name="kode_bb" id="kode_bb">
				 			<option value=""> Silahkan Pilih </option>
				 			<?php foreach ($bluebook as $key => $value) { ?>

				 				<option value="<?php echo $value['id']; ?>"> <?php echo $value['nama']; ?></option>';
				 			<?php } ?>
				 		</select>
				 	</div>
				 	<button id="submit_btn" class="btn btn-primary">Submit</button>
				 	<button id="tes" class="btn btn-primary">tes</button>
				 </form>
				 </div>
				</div>
			</div>

			<div class="col-lg-9">
		<!-- 	untuk tabel dan grafik per kementerian -->
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>Tabel dan Grafik Laporan Persebaran per Kementerian / Lembaga</h5>
						<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
						</div>
					</div>

					<div class="ibox-content css-animation-box">
					<div id="chart1"></div>
				
					
				 		
				 		<p id="cek"></p>
						
					</div>
				</div>

				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>Tabel dan Grafik Laporan Perseberan per Lender</h5>
						<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
						</div>
					</div>

					<div class="ibox-content css-animation-box">
					
					<div id="chart2"></div>

				 		<p id="cek"></p>
						
					</div>
				</div>

				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>Tabel dan Grafik Laporan Persebaran per Program</h5>
						<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
						</div>
					</div>

					<div class="ibox-content css-animation-box">
				
					<div id="chart3"></div>
				 		<p id="cek"></p>
						
					</div>
				</div>

				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>Tabel dan Grafik Laporan Persebaran per Sektor</h5>
						<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
						</div>
					</div>

					<div class="ibox-content css-animation-box">
				
					<div id="chart4"></div>
				 		<p id="cek"></p>
						
					</div>
				</div>

				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>Tabel dan Grafik Laporan Persebaran per pembagian Infrastruktur dan Non Infra</h5>
						<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
						</div>
					</div>

					<div class="ibox-content css-animation-box">
				
					<div id="chart5"></div>
				 		<p id="cek"></p>
						
					</div>
				</div>

				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>Tabel dan Grafik Laporan Persebaran per Status</h5>
						<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
						</div>
					</div>

					<div class="ibox-content css-animation-box">
				
					<div id="chart6"></div>
				 		<p id="cek"></p>
						
					</div>
				</div>
				
				
				
			</div>
			</div>


				</div>
		

<script src="<?php echo base_url(); ?>assets/inspinia/js/jquery-2.1.1.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script>
<!-- 
<script src="<?php echo base_url(); ?>assets/highcharts/highcharts.js"></script>
<script src="<?php echo base_url(); ?>assets/highcharts/modules/data.js"></script>
<script src="<?php echo base_url(); ?>assets/highcharts/modules/drilldown.js"></script> --> -->


<script>

	
	function showLoading2(){
		document.getElementById("loader1").style = "visibility: visible";
		$('#loader1').fadeOut(1000);
	}

		


	
	
		
		//untuk hapus
		$('#submit_btn').click(function(){
			
			var id = $("#kode_bb").val();


			function chart(){
				$.get("<?php echo base_url(); ?>usulan/filter_kl_bluebook/"+id, function(data) {
					$("#chart1").html(data);
				});
			}

			function chart2(){
				$.get("<?php echo base_url(); ?>usulan/filter_lender_bluebook/"+id, function(data) {
					$("#chart2").html(data);
				});
			}


			function chart3(){
				$.get("<?php echo base_url(); ?>usulan/filter_program_bluebook/"+id, function(data) {
					$("#chart3").html(data);
				});
			}

			function chart4(){
				$.get("<?php echo base_url(); ?>usulan/filter_sektor_bluebook/"+id, function(data) {
					$("#chart4").html(data);
				});
			}

			function chart5(){
				$.get("<?php echo base_url(); ?>usulan/filter_infra_bluebook/"+id, function(data) {
					$("#chart5").html(data);
				});
			}

			function chart6(){
				$.get("<?php echo base_url(); ?>usulan/filter_statusumum_bluebook/"+id, function(data) {
					$("#chart6").html(data);
				});
			}

			chart();
			chart2();
			chart3();
			chart4();
			chart5();
			chart6();
			console.log(id);
			console.log("diatas ini kode bb");
			

			return false;
		});

	
</script> 