<table class="table table-hover" id="example"  width="100%"> 
	<thead>
		<tr>
			<th style="display:none;">Update date</th>
			<th>Instansi</th>
			<th class="text-center">Tahun Usulan</th>
			<th class="text-center">Kategori</th>
			<th>Proyek</th>
			<th>Nilai (Rp. Juta)</th>
			<th>S/MYC</th>
			<th class="text-center">Administrasi</th>
			<th class="text-center">Kelayakan</th>
			<th class="text-center">DPP</th>
			<th>&nbsp;</th>
			<th style="width:3%;">Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php
			foreach($usulan->result() as $row):
		?>
		<tr class="gradeX">
			<td style="display:none;"><?php echo $row->update_date; ?></td>
			<td><?php echo $row->instansi_singkatan; ?></td>
			<td><?php echo $row->dpp; ?></td>
			<td><?php echo $row->kategori_proyek; ?></td>
			<td><a href="#" onclick="detail_list('sbsn/usulan_detail/<?php echo $row->id_proyek; ?>');"><?php echo $row->judul; ?></a></td>
			<td><?php echo number_format(($row->nilai),2); ?></td>
			<td><?php 	if($row->single_multi == "0"){ 
							echo "<span class='label '>SYC</span>"; 
						}else{ 
							echo "<span class='label label-info'>MYC</span>"; 
						}   ?></td>
			<td class="text-center">
				<?php 
					if($row->nilai_admin == 0){
						echo "<a href='#' type='button' class='btn btn-xs btn-danger' onclick='nilai_admin($row->id_proyek)'><i class='fa fa-times-circle'></i></a>";
					}else{
						echo "<span type='button' class='btn btn-xs btn-primary'><i class='fa fa-check-circle'></i></span>";
					}
					//echo $row->nilai_admin; 
				?>
			</td>
			<td class="text-center">
				<?php 
					if($row->nilai_layak == FALSE){
						echo "<a href='#' type='button' class='btn btn-xs btn-danger' onclick='nilai_layak($row->id_proyek, $row->nilai_admin)'><i class='fa fa-times-circle'></i></a>";
					}else{
						echo "<span type='button' class='btn btn-xs btn-primary'><i class='fa fa-check-circle'></i></span>";
					}
					//echo $row->nilai_layak; 
				?>
			</td>
			<td>
				<?php 
					if($row->masuk_dpp == FALSE){
						echo "<a href='#' type='button' class='btn btn-xs btn-danger' onclick='masuk_dpp($row->id_proyek, $row->nilai_admin, $row->nilai_layak)'><i class='fa fa-times-circle'></i></a>";
					}else{
						echo "<span type='button' class='btn btn-xs btn-primary'><i class='fa fa-check-circle'></i></span>";
					}
					//echo $row->masuk_dpp; 
				?>
			</td>
			<td><?php echo $row->user_nama_panggilan; ?>
				<div class="feed-element">
					<!-- <img alt="image" class="img-circle" src="<?php //echo base_url(); ?>assets/uploads/users/<?php //echo $row->foto; ?>">-->
				</div>
			</td> 
			<td>
				
						<div class="input-group-btn">
							<button tabindex="-1" class="btn btn-white small" type="button"><i class="fa fa-cog"></i> </button>
							<button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button"><span class="caret"></span></button>
							<ul class="dropdown-menu pull-right">
								<?php 
									if($this->session->userdata('id_user_level') == '4' || $this->session->userdata('id_user_level') == '1'){ 
								?>
										<li><a href="#" onclick="tampilkan_form_edit('sbsn/usulan_tampil_form_edit/<?php echo $row->id_proyek; ?>')">Edit</a></li>
										<li class="divider"></li>
								<?php } ?>
										<li><a href="#" onclick="tampilkan_log_usulan_index('sbsn/tampilkan_log_usulan_index/<?php echo $row->id_proyek; ?>')">Rekam Proyek</a></li>
										<li><a href="#" onclick="tampilkan_syarat_usulan('sbsn/tampilkan_syarat_usulan_index/<?php echo $row->id_proyek; ?>')">Dok. Persyaratan</a></li>
								<?php 
									if($this->session->userdata('id_user_level') == '4' || $this->session->userdata('id_user_level') == '1'){ 
								?>
										<li class="divider"></li>
										<li><a href="#" onclick="tampilkan_form_hapus('sbsn/usulan_tampil_form_hapus/<?php echo $row->id_proyek; ?>')"><span class="text-danger" ><strong>Hapus</strong></span></a></li>
								<?php } ?>
							</ul>
						</div>
			</td>
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>


<script>
	function detail_list(page){
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
	
	function tampilkan_form_edit(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalEdit').modal('show');
		},
		dataType:"html"});
		return false;
	}
	
	function tampilkan_log_usulan_index(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalLog').modal('show');
		},
		dataType:"html"});
		return false;
	}
	
	function tampilkan_syarat_usulan(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalIndex').modal('show');
		},
		dataType:"html"});
		return false;
	}
	
	function tampilkan_form_hapus(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalHapus').modal('show');
		},
		dataType:"html"});
		return false;
	}
	
	function nilai_admin(id){
		$.ajax({
			url: "<?php echo base_url(); ?>sbsn/usulan_tampil_form_nilai_admin/"+id,
			beforeSend: function(){
				showLoading();
			},
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalNilai').modal('show');
			},
			dataType:"html"
		});
	}
	
	function nilai_layak(id, nilai_admin){
		//alert(id+','+nilai_admin);
		if(nilai_admin == '1'){
			$.ajax({
				url: "<?php echo base_url(); ?>sbsn/usulan_tampil_form_nilai_layak/"+id,
				beforeSend: function(){
					showLoading();
				},
				success:function(response){
					$("#tmpModal").html(response);
					$('#modalNilai').modal('show');
				},
				dataType:"html"
			});
			
		}else{
			alert('Maaf! Hasil administrasi belum lengkap. Silahkan dilakukan penilaian administrasi.');
		}
	}
	
	function masuk_dpp(id, nilai_admin, nilai_layak){
		if(nilai_admin == '1' && nilai_layak == '1'){
			$.ajax({
				url: "<?php echo base_url(); ?>sbsn/usulan_tampil_form_masuk_dpp/"+id,
				beforeSend: function(){
					showLoading();
				},
				success:function(response){
					$("#tmpModal").html(response);
					$('#modalNilai').modal('show');
				},
				dataType:"html"
			});
			
		}else{
			alert('Maaf! Penilaian administrasi atau penilaian kelayakan belum dilakukan. Silahkan dilakukan penilaian administrasi dan penilaian kelayakan.');
		}
	}
	
	$(document).ready(function(){
		$('#example').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});
</script>