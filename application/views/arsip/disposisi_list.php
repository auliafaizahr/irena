<!-- <table class="footable table table-stripped toggle-arrow-tiny border"  data-page-size="15"> -->
 <table class="table table-hover"> 
	<thead>
		<tr>
			<th>Jenis</th>
			<th>Nomor</th>
			<th>Tanggal</th>
			<th>Catatan</th>
			<th>File</th>
			<th style="width:3%;">Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php
			$no=0;
			foreach($disposisi->result() as $row):
			
		?>
		<tr class="gradeX">
			<td><?php echo $row->jenis; ?></td>
			<td><?php echo $row->nomor; ?></a></td>
			<td><?php echo date("dM'y", strtotime($row->tgl)); ?></td>
			<td><?php echo $row->catatan; ?></td>
			<td><a href="<?php echo base_url(); ?>uploads/arsip/disposisi/<?php echo $row->berkas; ?>" target="_blank" class="btn btn-info btn-xs" type="button"><i class="fa fa-download"></i></a></td>
			<td>
				<div class="input-group-btn">
				<?php 
					if($row->eksternal == 0){ 
				?>
					<a href='#' type="button" class="btn btn-primary  btn-xs" onclick="tampilkan_form_disposisi_internal('arsip/disposisi_internal/<?php echo $row->id;?>')"><i class="fa fa-cog"></i></a> &nbsp; &nbsp;
				<?php
					}
				?>
						
				<a href="#" type="button" class="btn btn-danger btn-xs"  onclick="tampilkan_form_hapus('arsip/tampilkan_disposisi_form_hapus/<?php echo $row->id; ?>')"><i class="fa fa-trash"></i></a>
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
			dataType:"html"
		});
		return false;
	}
	
	function tampilkan_form_disposisi_internal(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal2").html(response);
				$('#modalInternal').modal('show');
			},
			dataType:"html"
		});
		return false;
	}
	
	function tampilkan_form_hapus(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal2").html(response);
				$('#modalHapus').modal('show');
		},
		dataType:"html"});
		return false;
	}
	
	
	$(document).ready(function(){

	});
</script>