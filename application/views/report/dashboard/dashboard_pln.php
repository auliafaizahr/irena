<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-12">
		<h2>Dashboard Pinjaman Luar Negeri</h2>
		<ol class="breadcrumb">
			<li>
				
			</li>
		</ol>
	</div>
	<div class="col-lg-2">
		
	</div>
</div>

<div id="untukModal"></div>

<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		
		<div class="col-lg-12" >
		<!-- 	untuk tabel dan grafik per kementerian -->
			<div class="ibox float-e-margins"> 
				<div class="ibox-title">
                    <h5>Report Bluebook <?php echo $nama_bb; ?> <div id="judul"> </div></h5>

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
				 	
				 </form>
				 </div>
				</div>

			</div>

			<div class="col-lg-2" >
		<!-- 	untuk tabel dan grafik per kementerian -->
			<div class="ibox float-e-margins"> 
				<div class="ibox-title">
                    <h5>Total Usulan Kegiatan</h5>

                   
				</div>
				<div id="loader1" class="loader1" style='visibility: hidden;'></div>
				<div class="ibox-content" >

				<div id="total_kegiatan"></div>
				
				
				 </div>
				</div>

				</div>

				<div class="col-lg-2" >
					<!-- 	untuk tabel dan grafik per kementerian -->
						<div class="ibox float-e-margins"> 
							<div class="ibox-title">
			                    <h5>Kegiatan sudah LA</h5>

							</div>
							<div id="loader1" class="loader1" style='visibility: hidden;'></div>
							<div class="ibox-content" >

							<div id="total_kegiatan_LA"></div>
							
							 </div>
							</div>

				</div>

				<div class="col-lg-8" >
					<!-- 	untuk tabel dan grafik per kementerian -->
						
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


				<div class="col-lg-12" >
					<!-- 	untuk tabel dan grafik per kementerian -->
						
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>Peta Proyek sudah LA</h5>
						<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
						</div>
					</div>

					<div class="ibox-content css-animation-box">
				
					<div id="map1">
						
						<?php echo $peta_2['js']; ?>
						<?php echo $peta_2['html']; ?>
					</div>
				 		<p id="cek">cek</p>
						
					</div>
				</div>

				</div>


	</div>

<script src="<?php echo base_url(); ?>assets/inspinia/js/jquery-2.1.1.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script>


<script>


		function total_kegiatan(){
				$.get("<?php echo base_url(); ?>usulan/dashboard_total_kegiatan_bb/", function(data) {
					$("#total_kegiatan").html(data);
				});
		}
		function total_kegiatan_LA(){
				$.get("<?php echo base_url(); ?>usulan/dashboard_total_kegiatan_la/", function(data) {
					$("#total_kegiatan_LA").html(data);
				});
		}


	total_kegiatan();
	total_kegiatan_LA();


	$(document).ready(function(){

		function chart6(){
				$.get("<?php echo base_url(); ?>usulan/filter_statusumum_bluebook_dashboard/", function(data) {
					$("#chart6").html(data);
				});
		}



		
		chart6();
		
		total_kegiatan();
		total_kegiatan_LA();
	


	});

	function showLoading2(){
		document.getElementById("loader1").style = "visibility: visible";
		$('#loader1').fadeOut(1000);
	}

		
		//untuk hapus
		$('#submit_btn').click(function(){
			
			var id = $("#kode_bb").val();


			function chart6(){
				$.get("<?php echo base_url(); ?>usulan/filter_statusumum_bluebook_dashboard/"+id, function(data) {
					$("#chart6").html(data);
				});
			}

			function total_kegiatan(){
				$.get("<?php echo base_url(); ?>usulan/dashboard_total_kegiatan_bb/"+id, function(data) {
					$("#total_kegiatan").html(data);
					});
			}
			function total_kegiatan_LA(){
					$.get("<?php echo base_url(); ?>usulan/dashboard_total_kegiatan_la/"+id, function(data) {
						$("#total_kegiatan_LA").html(data);
					});
			}

		/*	chart();
			chart2();
			chart3();
			chart4();
			chart5();*/
			chart6();
			total_kegiatan();
			total_kegiatan_LA();
			console.log(id);
			
			console.log("diatas ini kode bb");
			

			return false;
		});

		 function bukaDetailgabung_1(id_lokasi) {
            
            $.ajax({
                              type : 'post',
                              url : "<?php echo base_url(); ?>Bluebook/detail_map_gabung_1",
                              data :  'id='+ id_lokasi,
                               success : function(response){
                      
                              $("#tmpModal").html(response);
                               $('#modalDetail').modal('show');
                                              
                                          
                               },
                              dataType:"html"
            });
    }

	
</script> 