<div class="modal inmodal fade" id="modalTambah" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Tambah Realisasi</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
					<div class="ibox-content">
						
						<div class="form-group">
							<label for="triwulan" class="col-sm-2 control-label">Triwulan</label>
							<div class="col-sm-10">
								<select name="triwulan" id="triwulan" class="form-control">
									<option value=""></option>
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
								<input type="text" name="penyerapan" id="penyerapan" class="form-control" placeholder="Penyerapan dalam Rupiah">
							</div>
						</div>
						<div class="form-group">
							<label for="progres_fisik" class="col-sm-2 control-label">Progres Fisik</label>
							<div class="col-sm-10">
								<input type="text" name="progres_fisik" id="progres_fisik" class="form-control" placeholder="Progres Fisik dalam %">
							</div>
						</div>
						<div class="form-group">
							<label for="permasalahan" class="col-sm-2 control-label">Permasalahan</label>
							<div class="col-sm-10">
								<textarea name="permasalahan" id="permasalahan" class="col-sm-12" rows="5" placeholder="Permasalahan"></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="tindak_lanjut" class="col-sm-2 control-label">Tindak Lanjut</label>
							<div class="col-sm-10">
								<textarea name="tindak_lanjut" id="tindak_lanjut" class="col-sm-12" rows="5" placeholder="Tindak Lanjut"></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="pihak_terlibat" class="col-sm-2 control-label">Pihak</label>
							<div class="col-sm-10">
								<textarea name="pihak_terlibat" id="pihak_terlibat" class="col-sm-12" rows="5" placeholder="Pihak Yang Terlibat"></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="catatan" class="col-sm-2 control-label">Catatan</label>
							<div class="col-sm-10">
								<textarea name="catatan" id="catatan" class="col-sm-12" rows="5" placeholder="Catatan"></textarea>
							</div>
						</div>
						
						<input type="hidden" name="id_realisasi" id="id_realisasi" class="form-control" value="<?php  echo $id_realisasi; ?>">
						
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
			
			var id_realisasi 	= $("#id_realisasi").val();
			var triwulan 		= $("#triwulan").val();
			var penyerapan 		= $("#penyerapan").val();
			var progres_fisik 	= $("#progres_fisik").val();
			var permasalahan 	= $("#permasalahan").val();
			var tindak_lanjut 	= $("#tindak_lanjut").val();
			var pihak_terlibat 	= $("#pihak_terlibat").val();
			var catatan 		= $("#catatan").val();
			
            var form_data 	= new FormData();
 
			form_data.append('id_realisasi', id_realisasi);
			form_data.append('triwulan', triwulan);
			form_data.append('penyerapan', penyerapan);
			form_data.append('progres_fisik', progres_fisik);
			form_data.append('permasalahan', permasalahan);
			form_data.append('tindak_lanjut', tindak_lanjut);
			form_data.append('pihak_terlibat', pihak_terlibat);
			form_data.append('catatan', catatan);

            $.ajax({
                url: '<?php echo base_url(); ?>sbsn/on_going_penyerapan_simpan/<?php  echo $this->uri->segment(3); ?>',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
						$('#modalTambah').modal('hide');
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