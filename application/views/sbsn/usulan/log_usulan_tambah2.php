<div class="modal inmodal fade" id="modalTambah" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Tambah Dokumen</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="<?php echo base_url(); ?>arsip/disposisi_simpan/<?php  echo $this->uri->segment(3); ?>" method="post" enctype="multipart/form-data">
					<div class="ibox-content">
						
						<div class="form-group">
							<label for="id_proyek_dok_kategori" class="col-sm-2 control-label">Kategori</label>
							<div class="col-sm-10">
								<select name="id_proyek_dok_kategori" id="id_proyek_dok_kategori" class="form-control">
									<option value=""></option>
								</select>
							</div>
						</div>
						
						
					<div class="modal-footer">					
						<button type="submit" class="btn btn-primary">Simpan</button>
						<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>




<script>
    $(document).ready(function(){
		$("#id_proyek_dok_kategori").select2({
			placeholder: "Pilih Dokumen Kategori",
			width: "100%"
			//dropdownParent: $("#modalTambah");
		});
		
		

	});
</script>