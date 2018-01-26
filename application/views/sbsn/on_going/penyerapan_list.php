 <table class="table table-hover table-stripped toggle-arrow-tiny border" id="example_lampiran" style="width:100%"> 
	<thead>
		<tr>
			<th>Triwulan</th>
			<th>Penyerapan (Rp. Juta)</th>
			<th>Progres Fisik</th>
			<th>Permasalahan</th>
			<th>Tindak Lanjut</th>
			<th>Update</th>
			<th>Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php $no=0; foreach($penyerapan->result() as $row): $no++?>
		<tr class="gradeX">
			<td>Triwulan <?php echo $row->triwulan; ?></td>
			<td><?php echo number_format(($row->penyerapan/1000000),2); ?></td>
			<td><?php echo number_format(($row->progres_fisik), 2); ?></td>
			<td><?php echo $row->permasalahan; ?></td>
			<td><?php echo $row->tindak_lanjut; ?></td>
			<td><?php echo $row->nama_panggilan; ?></td>
			<td>
				<div class="input-group-btn">
					<button tabindex="-1" class="btn btn-white small" type="button"><i class="fa fa-cog"></i> </button>
					<button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button"><span class="caret"></span></button>
					<ul class="dropdown-menu pull-right">
						<li>
							<a href="#" onclick="tampilkan_form_edit('sbsn/tampilkan_on_going_penyerapan_edit/<?php echo $row->id; ?>')">Edit</a>
						</li>
						<li>
							<a href="#" onclick="tampilkan_form_hapus('sbsn/tampilkan_on_going_penyerapan_hapus/<?php echo $row->id; ?>')"><span class="text-danger" ><strong>Hapus</strong></span></a>
						</li>
					</ul>
				</div>
			</td>
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>

<script>
	$(document).ready(function(){
		$('#example_lampiran').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
		
	});
	
	function tampilkan_form_detail(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			beforeSend: function(){
				
				showLoading();
				$('#loader').fadeOut(1000);
			},
			success:function(response){

				$("#tmpModal2").html(response);
				$('#modalDetail').modal('show');
			},
			dataType:"html"});
		return false;
	}
	
	function tampilkan_form_edit(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal2").html(response);
				$('#modalEdit').modal('show');
		},
		dataType:"html",
		error: function(){
					alert('gagal noh!');
				}
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

</script>