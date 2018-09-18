<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-12">
		<h2>Laporan Persebaran Pinjaman Luar Negeri Pada Green Book</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini memberikan informasi dan laporan terkait laporan Pinjaman Luar Negeri berupa statistiknya pada Green Book
			</li>
		</ol>
	</div>
	<div class="col-lg-2">
		
	</div>
</div>

<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<!-- <div class="ibox-title">
                    <h5>Data</h5>
				</div> -->
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
				     <ul class="nav nav-tabs tabs-up active" id="friends">
                      <!--  <li><a href="#" id="contacts_tab" data-toggle="tab" rel="tooltip"> Contacts </a></li>
                       <li><a href="#" class="media_node span" id="friends_list_tab" data-toggle="tab" data-url="#" rel="tooltip"> Friends list</a></li> -->
                      <li><a href="#awaiting_request" class="media_node span center" id="awaiting_request_tab" data-url="<?php echo base_url(); ?>loan_aggr/tampilkan_la_list" data-toggle="tab" style='width: 300px; text-align: center'  rel="tooltip">Proyek</a></li>
                       
                       <li><a href="#awaiting_request" class="media_node span" id="friends_list_tab" data-url="<?php echo base_url(); ?>loan_aggr/tampilkan_la_monev_list"  style='width: 300px; text-align: center' data-toggle="tab" rel="tooltip">Grafik</a></li>

                       <li><a href="#awaiting_request" class="media_node span" id="friends_list_tab" data-url="<?php echo base_url(); ?>loan_aggr/tampilkan_la_monev_list"  style='width: 300px; text-align: center' data-toggle="tab" rel="tooltip">Banding</a></li>
                 	</ul>

                 <div class="tab-content">
                      <div class="tab-panel panel-default  active" id="contacts">
                      		
                       </div>
                       <div class="tab-panel " id="friends_list">

                       </div>
                       <div class="tab-panel panel-default  urlbox span8" id="awaiting_request">
                     
                       </div>
                </div>
				
			</div>
		</div>
	</div>
</div>


<!-- <div class="wrapper wrapper-content animated fadeIn">
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
				 		<label>Greenbook</label>
				 		<select class="form-control m-b" name="kode_gb" id="kode_gb">
				 			<option value=""> Silahkan Pilih </option>
				 			<?php foreach ($greenbook as $key => $value) { ?>

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
			untuk tabel dan grafik per kementerian -->
				<!-- <div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>Tabel dan Grafik Laporan Persebaran per Kementerian / Lembaga</h5>
						<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
						</div>
					</div>

					<div class="ibox-content css-animation-box">
					<div id="chart_"></div>
				
					
				 		
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
					
					<div id="chart_2"></div>

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
				
					<div id="chart_3"></div>
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
				
					<div id="chart_4"></div>
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
				
					<div id="chart_5"></div>
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
				
					<div id="chart_6"></div>
				 		<p id="cek"></p>
						
					</div>
				</div>
				
				
				
			</div>
			</div>


				</div> -->
		

<script src="<?php echo base_url(); ?>assets/inspinia/js/jquery-2.1.1.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script>
<!-- 
<script src="<?php echo base_url(); ?>assets/highcharts/highcharts.js"></script>
<script src="<?php echo base_url(); ?>assets/highcharts/modules/data.js"></script>
<script src="<?php echo base_url(); ?>assets/highcharts/modules/drilldown.js"></script> --> 


<script>

	
	function showLoading2(){
		document.getElementById("loader1").style = "visibility: visible";
		$('#loader1').fadeOut(1000);
	}

		


	
	
		
		//untuk hapus
		$('#submit_btn').click(function(){
			
			var id = $("#kode_gb").val();


			function chart(){
				$.get("<?php echo base_url(); ?>greenbook/filter_kl_gb/"+id, function(data) {
					$("#chart_").html(data);
				});
			}

			function chart2(){
				$.get("<?php echo base_url(); ?>greenbook/filter_lender_gb/"+id, function(data) {
					$("#chart_2").html(data);
				});
			}


			function chart3(){
				$.get("<?php echo base_url(); ?>greenbook/filter_program_gb/"+id, function(data) {
					$("#chart_3").html(data);
				});
			}

			function chart4(){
				$.get("<?php echo base_url(); ?>greenbook/filter_sektor_bluebook/"+id, function(data) {
					$("#chart_4").html(data);
				});
			}

			function chart5(){
				$.get("<?php echo base_url(); ?>greenbook/filter_infra_gb/"+id, function(data) {
					$("#chart_5").html(data);
				});
			}

			function chart6(){
				$.get("<?php echo base_url(); ?>greenbook/filter_statusumum_gb/"+id, function(data) {
					$("#chart_6").html(data);
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