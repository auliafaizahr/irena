<div class="modal inmodal fade" id="modalProyek" tabindex="-1" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Project Simalirity</h5>
				</div>
				<div class="ibox-content">
					 <table class="table table-hover table-stripped toggle-arrow-tiny border" id="example_lampiran" style="width:100%"> 
						<thead>
							<tr>
								<th>#</th>
								<th>Sumber</th>
								<th>Proyek</th>
								<th>Nilai (.juta)</th>
							</tr>
						</thead>
						<tbody>
							<?php $no=0; foreach($sbsn->result() as $row): $no++?>
							<tr class="gradeX">
								<td><?php echo $no; ?></td>
								<td><?php echo $row->sumber; ?></td>
								<td><?php echo $row->judul; ?></td>
								<td><?php echo number_format(($row->nilai/1000000),2); ?></td>
							</tr>
							<?php endforeach; ?>
							<?php $no=0; foreach($hibah->result() as $row): $no++?>
							<tr class="gradeX">
								<td><?php echo $no; ?></td>
								<td><?php echo $row->sumber; ?></td>
								<td><?php echo $row->judul; ?></td>
								<td><?php echo number_format(($row->nilai/1000000),2); ?></td>
							</tr>
							<?php endforeach; ?>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
				</div>
			</div>
		</div>
	</div>
</div>


<script>
    $(document).ready(function(){
		$('#example_lampiran').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});
	
</script>
