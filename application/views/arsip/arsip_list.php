<!-- <table class="footable table table-stripped toggle-arrow-tiny border"  data-page-size="15"> -->
 <table class="table table-hover table-stripped toggle-arrow-tiny border" id="example" style="width:100%"> 
	<thead>
		<tr>
			<th style="display:none;">Update date</th>
			<th>&nbsp;</th>
			<th>No. Arsip</th>
			<th>Perihal</th>
			<th>Tanggal</th>
			<th>Dari</th>
			<th>Tingkat</th>
			<th>File</th>
			<th>Status</th> 
			<th></th>
			<th style="width:3%;">Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php
			$no=0;
			foreach($arsip->result() as $row):
			
		?>
		<tr class="gradeX">
			<td style="display:none;"><a href="#"><?php echo $row->update_date; ?></a></td>
			<td><i class="<?php echo $row->icon; ?>"></i></td>
			<td><a href="#" onclick="detail_list('arsip/detil/<?php echo $row->id_arsip;?>');"><?php echo $row->no; ?></a></td>
			<td><?php echo $row->perihal; ?></td>
			<td><?php echo date("d M'y", strtotime($row->tgl)); ?></td>
			<td><?php echo $row->dari; ?></td>
			<td><?php echo $row->tingkat; ?></td>
			<td><a href="<?php echo base_url(); ?>uploads/arsip/<?php echo $row->jenis; ?>/<?php echo $row->berkas; ?>" target="_blank" class="btn btn-info btn-xs" type="button"><i class="fa fa-download"></i></a></td>
			<td><span class="<?php echo $row->class; ?>"><?php echo $row->status; ?></span></td>
			<td><?php echo $row->update_by; ?></td>
			<!--<td>
				<div class="feed-element">
					<img alt="image" class="img-circle" src="assets/uploads/users/<?php  //echo $row->foto; ?>">
				</div>
			</td> -->
			<td class="text-center">
				<?php if($this->session->userdata('id_user_level') == '2' || $this->session->userdata('id_user_level') == '1') { ?>
					<div class="input-group-btn">
						<button tabindex="-1" class="btn btn-white small" type="button"><i class="fa fa-cog"></i> </button>
						<button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button"><span class="caret"></span></button>
						<ul class="dropdown-menu pull-right">
							<li><a href="#" onclick="edit('arsip/edit/<?php echo $row->id_arsip; ?>')">Edit</a></li>
							<li class="divider"></li>
							<li><a href="<?php echo base_url(); ?>arsip/lembar_edaran/<?php echo $row->id_arsip;?>" target="_blank">Lembar Edaran</a></li>
							<li><a href="#" onclick="disposisi('arsip/disposisi_index/<?php echo $row->id_arsip;?>');">Disposisi</a></li>
							<li><a href="#" onclick="lampiran('arsip/lampiran/<?php echo $row->id_arsip;?>');">Lampiran</a></li>
							<li class="divider"></li>
							<li><a href="#" onclick="hapus('arsip/hapus/<?php echo $row->id_arsip; ?>')"><span class="text-danger" ><strong>Hapus</strong></span></a></li>
						</ul>
					</div>
				<?php }else{ 
						echo "<i class='fa fa-lock'></i>"; } 
				?>
			</td>
			</td>
		</tr>
		<?php endforeach; ?>
	</tbody>
	<tfoot>
		<tr>
			<td colspan="10">
				<ul class="pagination pull-right"></ul>
			</td>
		</tr>
	</tfoot>
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
	
	function edit(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalEdit').modal('show');
		},
		dataType:"html"});
		return false;
	}
	
	function hapus(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalHapus').modal('show');
		},
		dataType:"html"});
		return false;
	}
	
	function lampiran(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalLampiran').modal('show');
		},
		dataType:"html"});
		return false;
	}
	
	function disposisi(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalDisposisi').modal('show');
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
		/*
		$('.dataTables-example').dataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]],
			//"tableTools": {
				//"sSwfPath": "js/plugins/dataTables/swf/copy_csv_xls_pdf.swf"
			//}
		});	
		
		$('.footable').footable
		({
			"paging": {
				"enabled": true
			},
			"filtering": {
				"enabled": true
			},
			"sorting": {
				"enabled": true
			}
		});
		*/
	});
</script>