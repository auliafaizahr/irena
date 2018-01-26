
<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-content">
					<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data"> 
						<div class="input-group">
							<input type="text" id="cari" class="input-sm form-control" placeholder="Cari Proyek"> 
							<span class="input-group-btn">
								<button type="button" id="btnCari" class="btn btn-sm btn-primary"> Go!</button> 
							</span>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<!--
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
                    <h5>Sebaran Lokasi Proyek</h5>
				</div>
				<div class="ibox-content css-animation-box">	
					<div class="row">
						<div class="col-lg-8">
							<?php //echo $map['html']; ?>
						</div>
						<div class="col-lg-4">
							<form role="form" method="POST" action="<?php //echo base_url(); ?>welcome/index" enctype="multipart/form-data">
								<div class="form-group">
									<label>Jenis Pendanaan</label>
									<select class="form-control m-b" name="dpp_sbsn" id="dpp_sbsn">
										<option value="">Silahkan Pilih</option>
										<option value="PLN">Pinjaman Luar Negeri</option>
										<option value="hibah">Hibah</option>
										<option value="SBSN">SBSN</option>
									</select>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	-->
	<div class="row">
		<div class="col-lg-8">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
                    <h5>Disposisi</h5>
				</div>
				<div class="ibox-content css-animation-box" id="tabel_arsip">	
					
				</div>
			</div>
		</div>
		<div class="col-lg-4">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
                    <h5>Ulang Tahun</h5>
				</div>
				<div class="ibox-content css-animation-box">	
					<?php 
						if($ulang_tahun->num_rows() > 0){
							
							foreach($ulang_tahun->result() as $row): 
								$today = date("Y-m-d");
								//echo $today; echo "<br>";
								//echo date("Y-m", strtotime($row->tgl_lahir));
								//echo date_diff(date_create($row->tgl_lahir), date_create($today))->y;
								//if($today <= $row->tgl_lahir){
					?>
					<div class="feed-element">
                        <a href="#" class="pull-left">
                            <img alt="image" class="img-circle" src="assets/uploads/users/<?php  echo $row->foto; ?>">
                        </a>
                        <div class="media-body">
                            <?php echo "<strong>".$row->nama_depan." ".$row->nama_belakang."</strong>"; ?>  
							<!-- <span class="badge badge-primary">16</span> -->
                            <br>
                            <small class="text-muted"><?php echo date('d F Y', strtotime($row->tgl_lahir)); ?></small>
                        </div>
						
                    </div>
					<?php 		//} 
							endforeach; 
						}else{
					?>
						<div class="feed-element">
							Tidak ada yang berulang tahun bulan ini.
						</div>
					<?php 
						}
					?>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- FooTable -->
 <script src="<?php echo base_url(); ?>assets/inspinia/js/jquery-2.1.1.js"></script>

<script>
	function segarkan_disposisi(){
		$.get("<?php echo base_url(); ?>dashboard/tampilkan_disposisi_by_user", function(data) {
			$("#tabel_arsip").html(data);
		});
	}
	
	$(document).ready(function(){
		segarkan_disposisi();
		
		$('#btnCari').click(function(){
			
			$.ajax({
				url: "<?php echo base_url(); ?>dashboard/cari_proyek/"+$("#cari").val(),
				beforeSend: function(){
					showLoading();
				},
				success:function(response){
					$("#tmpModal").html(response);
					$('#modalProyek').modal('show');
				},
				dataType:"html"
			});
		});
	});
</script>   

    <!-- Page-Level Scripts -->


	<?php echo $map['js']; ?>

