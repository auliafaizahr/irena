 <table class="table table-hover table-stripped toggle-arrow-tiny border" id="example_lampiran" style="width:100%"> 
	<thead>
		<tr>
			<th style="display:none;">Update date</th>
			<th>#</th>
			<th>Nama</th>
			<th>Keterangan</th>
			<th>File</th>
			<th>Diupdate oleh</th>
			<th>Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php $no=0; foreach($lampiran->result() as $row): $no++?>
		<tr class="gradeX">
			<td style="display:none;"><?php echo $row->update_date; ?></td>
			<td><?php echo $no; ?></td>
			<td><?php echo $row->nama; ?></td>
			<td><?php echo $row->keterangan; ?></td>
			<td><a href="<?php echo base_url(); ?>uploads/arsip/lampiran/<?php echo $row->berkas; ?>" target="_blank" class="btn btn-info btn-xs" type="button"><i class="fa fa-download"></i></a></td>
			<td><?php echo $row->nama_panggilan; ?></td>
			<td>
				<div class="input-group-btn">
					<button tabindex="-1" class="btn btn-white small" type="button"><i class="fa fa-cog"></i> </button>
					<button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button"><span class="caret"></span></button>
					<ul class="dropdown-menu pull-right">
						<li>
							<a href="#" onclick="edit_lampiran('arsip/lampiran_edit/<?php echo $row->id; ?>')">Edit</a>
						</li>
						<li>
							<a href="#" onclick="hapus_lampiran('arsip/lampiran_hapus/<?php echo $row->id; ?>')"><span class="text-danger" ><strong>Hapus</strong></span></a>
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
	
	function edit_lampiran(page){
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
	
	function hapus_lampiran(page){
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