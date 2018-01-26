<div class="modal inmodal fade" id="modalEdit" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Edit Realiasasi Penyerapan</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="<?php echo base_url(); ?>arsip/disposisi_simpan/<?php  echo $this->uri->segment(3); ?>" method="post" enctype="multipart/form-data">
					<div class="ibox-content">
						
						<div class="form-group">
							<label for="triwulan" class="col-sm-2 control-label">Triwulan</label>
							<div class="col-sm-10">
								<select name="triwulan" id="triwulan" class="form-control">
									<option value="<?php  echo $penyerapan->triwulan; ?>">Triwulan <?php  echo $penyerapan->triwulan; ?></option>
									<option value="1">Triwulan I</option>
									<option value="2">Triwulan II</option>
									<option value="3">Triwulan III</option>
									<option value="3">Triwulan IV</option>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="penyerapan" class="col-sm-2 control-label">Penyerapan</label>
							<div class="col-sm-10">
								<input type="text" name="penyerapan" id="penyerapan" class="form-control" placeholder="Penyerapan dalam Rupiah" value="<?php  echo $penyerapan->penyerapan; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="progres_fisik" class="col-sm-2 control-label">Progres Fisik</label>
							<div class="col-sm-10">
								<input type="text" name="progres_fisik" id="progres_fisik" class="form-control" placeholder="Progres Fisik dalam %" value="<?php  echo $penyerapan->progres_fisik; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="permasalahan" class="col-sm-2 control-label">Permasalahan</label>
							<div class="col-sm-10">
								<textarea name="permasalahan" id="permasalahan" class="col-sm-12" rows="5" placeholder="Permasalahan"><?php  echo $penyerapan->permasalahan; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="tindak_lanjut" class="col-sm-2 control-label">Tindak Lanjut</label>
							<div class="col-sm-10">
								<textarea name="tindak_lanjut" id="tindak_lanjut" class="col-sm-12" rows="5" placeholder="Tindak Lanjut"><?php  echo $penyerapan->tindak_lanjut; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="pihak_terlibat" class="col-sm-2 control-label">Pihak</label>
							<div class="col-sm-10">
								<textarea name="pihak_terlibat" id="pihak_terlibat" class="col-sm-12" rows="5" placeholder="Pihak Yang Terlibat"><?php  echo $penyerapan->pihak_terlibat; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="catatan" class="col-sm-2 control-label">Catatan</label>
							<div class="col-sm-10">
								<textarea name="catatan" id="catatan" class="col-sm-12" rows="5" placeholder="Catatan"><?php  echo $penyerapan->catatan; ?></textarea>
							</div>
						</div>
						
						<input type="hidden" name="id" id="id" class="form-control" value="<?php  echo $penyerapan->id; ?>">
						<input type="hidden" name="id_realisasi" id="id_realisasi" class="form-control" value="<?php  echo $penyerapan->id_realisasi; ?>">
						
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

<style>
	.modal { overflow: auto !important; }
</style>


<script>
    $(document).ready(function(){
		$("#triwulan").select2({
			placeholder: "Pilih Triwulan",
			width: "100%"
		});
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id			 	= $("#id").val();
			var id_realisasi 	= $("#id_realisasi").val();
			var triwulan 		= $("#triwulan").val();
			var penyerapan 		= $("#penyerapan").val();
			var progres_fisik 	= $("#progres_fisik").val();
			var permasalahan 	= $("#permasalahan").val();
			var tindak_lanjut 	= $("#tindak_lanjut").val();
			var pihak_terlibat 	= $("#pihak_terlibat").val();
			var catatan 		= $("#catatan").val();
			
            var form_data 	= new FormData();
 
			form_data.append('id', id);
			form_data.append('id_realisasi', id_realisasi);
			form_data.append('triwulan', triwulan);
			form_data.append('penyerapan', penyerapan);
			form_data.append('progres_fisik', progres_fisik);
			form_data.append('permasalahan', permasalahan);
			form_data.append('tindak_lanjut', tindak_lanjut);
			form_data.append('pihak_terlibat', pihak_terlibat);
			form_data.append('catatan', catatan);

            $.ajax({
                url: '<?php echo base_url(); ?>sbsn/on_going_penyerapan_simpan/',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
						$('#modalEdit').modal('hide');
						segarkan_penyerapan();
						notif("Informasi", "Data berhasil disimpan.");
					}
					else {
						$.each(response.messages, function(key, value) {
							var element = $('#' + key);
							
							element.closest('div.form-group')
							.removeClass('has-error')
							.addClass(value.length > 0 ? 'has-error' : 'has-success')
							.find('.text-danger')
							.remove();

							element.after(value);
						});
					}
                }
            });
		});
	});
</script>