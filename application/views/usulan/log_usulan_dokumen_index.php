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
						<p>Proyek <strong><?php echo $usulan->judul_proyek_eng; ?></strong> yang diusulkan oleh <strong><?php echo $this->Usulan_model->ambil_nama_instansi($usulan->id_instansi)->nama_instansi;  ?></strong></p>
						<input type="hidden" name="id" class="form-control" id="id" value="<?php echo $usulan->id; ?>" >

					</div>
					<div id="tabel">
					</div>
				</div>

				<div class="ibox-title">
					<h5>Dokumen Pendukung Proyek</h5>
					<div class="pull-right">
						<div class="btn-group">
							<button type="button" id="btnTambah2" class="btn btn-xs btn-success" ><i class="fa fa-plus"></i> Tambah</button>
						</div>
					</div>
				</div>

				<div class="ibox-content">
					<div id="tabel2">
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
				</div>
			</div>
		</div>
	</div>
</div>


<div id="tmpModal3"></div>
<script>
	$(document).ready(function(){
		segarkan_log();
		segarkan_log2();


		
		$('#btnTambah').click(function(){

			var id = $("#id").val();
           console.log(id);

			$.ajax({
				url: "<?php echo base_url(); ?>usulan/tampilkan_form_log_usulan_tambah/"+id,
				success:function(response){
					//$("body").addClass("modal-open"); //untuk scroll
					$("#tmpModal3").html(response);
					$('#modalTambah').modal('show');
				},
				dataType:"html"});
			return false;
		//}).on("hidden", function () {
			//$("body").removeClass("modal-open");
		});
	});
	
	$('#btnTambah2').click(function(){
		var id = $("#id").val();
           console.log(id);
			$.ajax({
				url: "<?php echo base_url(); ?>usulan/tampilkan_form_dok_usulan_tambah/"+id,
				success:function(response){
					//$("body").addClass("modal-open"); //untuk scroll
					$("#tmpModal3").html(response);
					$('#modalTambahDokumen').modal('show');
				},
				dataType:"html"});
			return false;
		//}).on("hidden", function () {
			//$("body").removeClass("modal-open");
		});

	function segarkan_log(){

		var id = $("#id").val();
           console.log(id);
		$.get("<?php echo base_url(); ?>usulan/tampilkan_data_log_usulan/"+id, function(data) {
			$("#tabel").html(data);
		});
	}

	function segarkan_log2(){
		var id = $("#id").val();
           console.log(id);
		$.get("<?php echo base_url(); ?>usulan/tampilkan_dok_usulan_list/"+id, function(data) {
			$("#tabel2").html(data);
		});
	}
</script>

