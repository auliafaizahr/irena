<div class="modal inmodal fade" id="modalLog" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Rekam Dokumentasi Proyek</h5>
					<div class="pull-right">
						<div class="btn-group">
							<button type="button" id="btnTambah" class="btn btn-xs btn-success" ><i class="fa fa-plus"></i> Tambah</button>
						</div>
					</div>
				</div>
				<div class="ibox-content">
					<div class="alert alert-warning">
						<p>Proyek <strong><?php echo $usulan->judul_en; ?></strong> yang diusulkan oleh <strong><?php echo $usulan->instansi_eselon_satu; echo ", ".$usulan->instansi; ?></strong></p>
						
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
		segarkan_log();
		
		$('#btnTambah').click(function(){
			$.ajax({
				url: "<?php echo base_url(); ?>hibah/tampilkan_form_log_usulan_tambah/<?php echo $this->uri->segment(3); ?>",
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
	
	function segarkan_log(){
		$.get("<?php echo base_url(); ?>hibah/tampilkan_data_log_usulan/<?php echo $this->uri->segment(3); ?>", function(data) {
			$("#tabel").html(data);
		});
	}
</script>

