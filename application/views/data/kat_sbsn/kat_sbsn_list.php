<table class="table table-hover" id="example"  width="100%"> 
	<thead>
		<tr>
			<th style="display:none;">Update Date</th>
			<th>Nama</th>
			<th class="text-center">Keterangan</th>
			<th class="text-center">Status</th>
			<th class="text-center">Update by</th>
			<th style="width:3%;">Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php
			foreach($kat_sbsn->result() as $row):
		?>
		<tr class="gradeX">
			<td style="display:none;"><?php echo $row->update_date; ?></td>
			<td><?php echo $row->nama; ?></td>
			<td><?php echo $row->keterangan; ?></td>
			<td><?php echo $row->aktif; ?></td> 
			<td><?php echo $row->nama_panggilan; ?></td> 
			<td>
				<div class="input-group-btn">
					<button tabindex="-1" class="btn btn-white small" type="button"><i class="fa fa-cog"></i> </button>
					<button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button"><span class="caret"></span></button>
					<ul class="dropdown-menu pull-right">
						<li><a href="#" onclick="tampilkan_form_edit('data/kat_sbsn_edit/<?php echo $row->id; ?>')">Edit</a></li>
						<li><a href="#" onclick="tampilkan_form_hapus('data/kat_sbsn_hapus/<?php echo $row->id; ?>')"><span class="text-danger" ><strong>Hapus</strong></span></a></li>
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

	$(document).ready(function(){
		$('#example').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});
</script>