<div class="modal inmodal fade" id="modalPenyerapan" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Realisasi Penarikan</h5>
					<div class="pull-right">
						<div class="btn-group">
							<button type="button" id="btnTambah" class="btn btn-xs btn-success" ><i class="fa fa-plus"></i> Tambah</button>
						</div>
					</div>
				</div>
				<div class="ibox-content">
					<div class="alert alert-warning">
						<p>Satkler <strong><?php echo $realisasi->satker; echo " (".$realisasi->dpp.")"; ?></p>
						
					</div>
					<div id="tabel">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
				</div>
			</div>
		</div>
	</div>
</div>


<div id="tmpModal2"></div>
<script>
	$(document).ready(function(){
		segarkan_penyerapan();
		
		$('#btnTambah').click(function(){
			$.ajax({
				url: "<?php echo base_url(); ?>sbsn/tampilkan_on_going_penyerapan_tambah/<?php echo $this->uri->segment(3); ?>",
				success:function(response){
					//$("body").addClass("modal-open"); //untuk scroll
					$("#tmpModal2").html(response);
					$('#modalTambah').modal('show');
				},
				dataType:"html"});
			return false;
		//}).on("hidden", function () {
			//$("body").removeClass("modal-open");
		});
	});
	
	function segarkan_penyerapan(){
		$.get("<?php echo base_url(); ?>sbsn/tampilkan_on_going_penyerapan_list/<?php echo $this->uri->segment(3); ?>", function(data) {
			$("#tabel").html(data);
		});
	}
</script>

