 <table class="table table-hover table-stripped toggle-arrow-tiny border" id="example_lampiran" style="width:100%"> 
	<thead>
		<tr>
			<th>Kategori</th>
			<th>Nama</th>
			<th>Deskripsi</th>
			<th>File</th>
			<th>Update</th>
			<th class="text-center">Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php $no=0; foreach($log->result() as $row): $no++?>
		<tr class="gradeX">
			<td><?php echo $row->kategori; ?></td>
			<!-- <td><a href="#" onclick="tampilkan_form_detail('hibah/tampilkan_form_log_usulan_detail/<?php echo $row->id; ?>')"><?php echo $row->nama; ?></a></td> -->
			<td><?php echo $row->nama; ?></td>
			<td><?php echo $row->deskripsi; ?></td>
			<td><a href="<?php echo base_url(); ?>uploads/arsip/<?php echo $row->folder; ?>/<?php echo $row->berkas; ?>" target="_blank" class="btn btn-xs btn-info" type="button"><i class="fa fa-download"></i></a></td>
			<td><?php echo $row->nama_panggilan; ?></td>
			<td class="text-center">
			<?php 
				if($this->session->userdata('id_user_level') == '3' || $this->session->userdata('id_user_level') == '1'){ 
			?>
					<div class="input-group-btn">
						<button tabindex="-1" class="btn btn-white small" type="button"><i class="fa fa-cog"></i> </button>
						<button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button"><span class="caret"></span></button>
						<ul class="dropdown-menu pull-right">
							<li>
								<a href="#" onclick="tampilkan_form_edit('hibah/tampilkan_form_log_usulan_edit/<?php echo $row->id; ?>')">Edit</a>
							</li>
							<li>
								<a href="#" onclick="tampilkan_form_hapus('usulan/tampilkan_form_log_usulan_hapus/<?php echo $row->id; ?>')"><span class="text-danger" ><strong>Hapus</strong></span></a>
							</li>
						</ul>
					</div>
				<?php }else{ 
						echo "<i class='fa fa-lock'></i>"; } 
				?>
					
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