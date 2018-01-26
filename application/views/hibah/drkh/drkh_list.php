<table class="table table-hover" id="example"  width="100%"> 
	<thead>
		<tr>
			<th style="display:none;">Update date</th>
			<th>Instansi</th>
			<th class="text-center">DRKH</th>
			<th class="text-center">Donor</th>
			<th>Proyek</th>
			<th></th>
			<th>Hibah (Juta)</th>
			<th>DP (Juta)</th>
			<th>&nbsp;</th>
			<th style="width:3%;">Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php
			foreach($dpp->result() as $row):
		?>
		<tr class="gradeX">
			<td style="display:none;"><?php echo $row->update_date; ?></td>
			<td><?php echo $row->instansi_singkatan; ?></td>
			<td><?php echo $row->jenis; ?></td>
			<td><?php echo $row->donor; ?></td>
			<td><a href="#" onclick="detail_list('hibah/tampilkan_drkh_detail/<?php echo $row->id; ?>');"><?php echo $row->judul_en; ?></a></td>
			<td><?php echo $row->mata_uang_singkatan; ?></td>
			<td class="text-right"><?php echo number_format(($row->nilai_hibah/1000000),2); ?></td>
			<td class="text-right"><?php echo number_format(($row->nilai_dp/1000000),2); ?></td>
			<td><?php echo $row->nama_panggilan; ?>
				<div class="feed-element">
					<!-- <img alt="image" class="img-circle" src="<?php //echo base_url(); ?>assets/uploads/users/<?php //echo $row->foto; ?>">-->
				</div>
			</td> 
			<td class="text-center">
				<?php if($this->session->userdata('id_user_level') == '3' || $this->session->userdata('id_user_level') == '1') { ?>
					<a class="btn btn-white btn-xs" type="button" href="#" onclick="tampilkan_form_edit('hibah/tampilkan_drkh_edit/<?php echo $row->id; ?>')"><i class="fa fa-pencil"></i> Edit</a>
				<?php }else{ 
						echo "<i class='fa fa-lock'></i>"; } 
				?>
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