<table class="table table-hover" id="example"  width="100%"> 
	<thead>
		<tr>
			<th style="display:none;">Update Date</th>
			<th>Level</th>
			<th>Email</th>
			<th class="text-center">Nama Lengkap</th>
			<th class="text-center">Tanggal Lahir</th>
			<th class="text-center">Handphone</th>
			<th class="text-center">Status</th>
			<th class="text-center">Update by</th>
			<th style="width:3%;">Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php
			foreach($user->result() as $row):
		?>
		<tr class="gradeX">
			<td style="display:none;"><?php echo $row->update_date; ?></td>
			<td><?php echo $row->nama_level; ?></td>
			<td><?php echo $row->email; ?></td>
			<td><?php echo $row->nama_depan.' '.$row->nama_belakang; ?></td>
			
			<td><?php echo $row->tgl_lahir; ?></td>
			<td><?php echo $row->no_hp; ?></td>
			<td><?php echo $row->aktif; ?></td> 
			<td><?php echo $row->nama_panggilan_; ?></td> 
			<td><a href="#" onclick="tampilkan_form_edit('data/user_edit/<?php echo $row->id; ?>')" type="button" class="btn btn-white"><i class="fa fa-pencil"> Edit</i></a>
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