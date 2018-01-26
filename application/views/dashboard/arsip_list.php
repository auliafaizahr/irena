<?php if($disposisi->num_rows() > 0){ ?>
 <table class="table table-hover table-stripped toggle-arrow-tiny border" id="example" style="width:100%"> 
	<thead>
		<tr>
			<th>#</th>
			<th>No. Arsip</th>
			<th>Dari</th>
			<th>Tanggal</th>
			<th>Catatan Pimpinan</th>
			<th>Aksi</th>
		</tr>
	</thead>
	<tbody>
	<?php 
		$no = 0;
		foreach($disposisi->result() as $row): 
		$no++;
	?>
		<tr>
			<td><span class="<?php echo $row->class; ?>"><?php echo $row->status; ?></span></td>
			<td><a href="#" onclick="detail_list('arsip/detil/<?php echo $row->id_arsip;?>');"><?php echo $row->no_arsip; ?>
				</a>
			</td>
			<td><?php echo $row->dari;  ?></td>
			<td><?php echo date("dM'y", strtotime($row->tgl_arsip)); ?></td>
			<td><?php echo $row->catatan;  ?></td>
			<td>
				<?php  if($row->id_status == "1"){ ?>
				<div class="btn-group"><a href="#" type="button" class="btn-success btn btn-xs" onclick="tampilkan_form_arsip_edit('dashboard/tampilkan_form_arsip_edit/<?php echo $row->id_arsip; ?>')">Selesaikan</a></div>
				<?php } ?>
			</td>
		</tr>
	<?php
		endforeach;
	?>
	</tbody>
</table>
<?php }else{
	echo "Tidak ada disposisi untuk Anda!";
}?>



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

	function tampilkan_form_arsip_edit(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalEdit').modal('show');
		},
		dataType:"html"});
		return false;
	}


	$(document).ready(function(){
		$('#example').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "asc" ]]
		});
	});
</script>  

