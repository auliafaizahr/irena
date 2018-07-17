<!-- <div class="row wrapper">
	<div class="col-md-12">
		<h5>Dashboard Pinjaman Luar Negeri</h5>
		<ol class="breadcrumb">
			<li>
				
			</li>
		</ol>
	</div>
	<div class="col-lg-2">
		
	</div>
</div> -->

<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		
	
			<div class="col-lg-3" >
		<!-- 	untuk tabel dan grafik per kementerian -->
			<div class="ibox float-e-margins"> 
				<div class="ibox-title">
                    <h5>Total Kegiatan</h5>

                   
				</div>
				<div id="loader1" class="loader1" style='visibility: hidden;'></div>
				<div class="ibox-content" >

				<h3><div id="total_kegiatan"></div></h3>
				
				
				 </div>
			</div>

			</div>

			
<!-- 
				<div class="col-lg-8" >
					untuk tabel dan grafik per kementerian 
						
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

				</div> -->



	</div>

	<div class="row">
		
	
			<div class="col-lg-12" >
		<!-- 	untuk tabel dan grafik per kementerian -->
			<div class="ibox float-e-margins"> 
				<div class="ibox-title">
                    <h5>Persebaran Kategori Proyek SBSN</h5>

                   
				</div>
				<div id="loader1" class="loader1" style='visibility: hidden;'></div>
				<div class="ibox-content" >

				<div id="total_kegiatan"></div>
				
				
				 </div>
			</div>

			</div>



	</div>

	<div class="row">
		
	
			<div class="col-lg-12" >
		<!-- 	untuk tabel dan grafik per kementerian -->
			<div class="ibox float-e-margins"> 
				<div class="ibox-title">
                    <h5>Perkembangan DPP </h5>

                   
				</div>
				<div id="loader1" class="loader1" style='visibility: hidden;'></div>
				<div class="ibox-content" >

				<div id="total_kegiatan"></div>
				
				
				 </div>
			</div>

			</div>



	</div>

	<div class="row">
		
	
			<div class="col-lg-12" >
		<!-- 	untuk tabel dan grafik per kementerian -->
			<div class="ibox float-e-margins"> 
				<div class="ibox-title">
                    <h5>Daftar Proyek SBSN</h5>

                   
				</div>
				
				<div class="ibox-content" >
				<input type="hidden" name="id_lokasi2" id="id_lokasi2" class="form-control" value="<?php echo $id_lokasi; ?>"> 

				<div id="daftar_proyek"></div>
				
				
				 </div>
			</div>

			</div>



	</div>




	</div>

<div id="untukModal"></div>

<div class="wrapper wrapper-content animated fadeIn">
</div>




<script>

	$(document).ready(function(){
		
		segarkan_data5();
		segarkan_data_total();
		
	});

	function segarkan_data5(){
		var id = $("#id_lokasi2").val(); 
		console.log(id);
		$.get("<?php echo base_url(); ?>sbsn/tampilkan_proyek_prov/"+id, function(data) {
			$("#daftar_proyek").html(data);
		});
	}


	function segarkan_data_total(){
		var id = $("#id_lokasi2").val(); 
		console.log(id);
		$.get("<?php echo base_url(); ?>sbsn/hitung_total_proyek_prov/"+id, function(data) {
			$("#total_kegiatan").html(data);
		});
	}

	
</script> 