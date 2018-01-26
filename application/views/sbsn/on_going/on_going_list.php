<table class="table table-hover" id="example"  width="100%"> 
	<thead>
		<tr>
			<th style="display:none;">Update date</th>
			<th>Instansi</th>
			<th>Satker</th>
			<th class="text-center">DPP</th>
			<th>Pagu (Rp. Juta)</th>
			<th>Penyerapan (Rp. Juta)</th>
			<th>&nbsp;</th>
			<th style="width:3%;">Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php
			foreach($on_going->result() as $row):
		?>
		<tr class="gradeX">
			<td style="display:none;"><?php echo $row->update_date; ?></td>
			<td><?php echo $row->instansi_singkatan; ?></td>
			<td><a href="#" onclick="detail_list('sbsn/usulan_detail/<?php echo $row->id; ?>');"><?php echo $row->satker; ?></a></td>
			<td><?php echo $row->dpp; ?></td>
			<td><?php echo number_format(($row->nilai/1000000),2); ?></td>
			<td>
				<?php 
					$query 			= $this->sbsn_model->ambil_total_penyerapan_by_id_realisasi($row->id); 
					$penyerapan		= $query->row();
					if($query->num_rows() > 0){
						echo number_format(($penyerapan->penyerapan/1000000), 2);
					}else{
						echo number_format((0), 2);
					}
				?>
			</td>
			<td><?php echo $row->nama_panggilan; ?></td>
			<td>
				<div class="input-group-btn">
					<button tabindex="-1" class="btn btn-white small" type="button"><i class="fa fa-cog"></i> </button>
					<button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button"><span class="caret"></span></button>
					<ul class="dropdown-menu pull-right">
						<li><a href="#" onclick="tampilkan_form_edit('sbsn/tampilkan_on_going_edit/<?php echo $row->id; ?>')">Edit</a></li>
						<li class="divider"></li>
						<li><a href="#" onclick="tampilkan_form_penyerapan('sbsn/tampilkan_on_going_penyerapan_index/<?php echo $row->id; ?>')">Realisasi Penyerapan</a></li>
						<li class="divider"></li>
						<li><a href="#" onclick="tampilkan_form_hapus('sbsn/tampilkan_on_going_hapus/<?php echo $row->id; ?>')"><span class="text-danger" ><strong>Hapus</strong></span></a></li>
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
	
	function tampilkan_form_penyerapan(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalPenyerapan').modal('show');
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