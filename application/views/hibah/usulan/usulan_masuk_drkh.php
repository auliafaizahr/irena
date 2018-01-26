<div class="modal inmodal fade" id="modalNilai"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog "> <!-- modal-lg -->
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Rekomendasi Masuk DRKH</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="<?php echo base_url(); ?>arsip/usulan_simpan_admin" method="post" enctype="multipart/form-data"> 
					<div class="ibox-content">
						<div class="form-group">
							<label class="col-sm-4 control-label">Proyek</label>
							<div class="col-sm-8">
								<div class="checkbox">
									<label><?php echo $usulan->judul_en; ?></label>
								</div>
							</div>
						</div><hr />
						<div class="form-group">
							<label for="masuk_drkh" class="col-sm-4 control-label">Hasil Penilaian</label>
							<div class="col-sm-8">
								<div class="checkbox">
									<label>
										<input type="checkbox" id="check_masuk_drkh"> Masuk dalam DRKH
										<input type="hidden" name="masuk_drkh" id="masuk_drkh" class="form-control" value="<?php echo $usulan->masuk_drkh; ?>">
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="masuk_drkh_ket" class="col-sm-4 control-label">Keterangan</label>
							<div class="col-sm-8">
								<textarea name="masuk_drkh_ket" id="masuk_drkh_ket" class="col-sm-12" rows="5"><?php echo $usulan->masuk_drkh_ket; ?></textarea>
							</div>
						</div>
						
						<input type="hidden" name="id" id="id" class="form-control" value="<?php echo $usulan->id; ?>">
						<input type="hidden" name="id_donor" id="id_donor" class="form-control" value="<?php echo $usulan->id_donor; ?>">
						<input type="hidden" name="id_jenis" id="id_jenis" class="form-control" value="<?php echo $usulan->id_jenis; ?>">
						<input type="hidden" name="judul_en" id="judul_en" class="form-control" value="<?php echo $usulan->judul_en; ?>">
						<input type="hidden" name="judul_id" id="judul_id" class="form-control" value="<?php echo $usulan->judul_id; ?>">
						<input type="hidden" name="durasi" id="durasi" class="form-control" value="<?php echo $usulan->durasi; ?>">
						<input type="hidden" name="id_mata_uang" id="id_mata_uang" class="form-control" value="<?php echo $usulan->id_mata_uang; ?>">
						<input type="hidden" name="nilai_hibah" id="nilai_hibah" class="form-control" value="<?php echo $usulan->nilai_hibah; ?>">
						<input type="hidden" name="nilai_dp" id="nilai_dp" class="form-control" value="<?php echo $usulan->nilai_dp; ?>">
					</div>
					<div class="modal-footer">					
						<button type="submit" id="tblSimpan" class="btn btn-primary">Simpan</button>
						<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>


				
<script>
    $(document).ready(function(){
		$('#check_masuk_drkh').change(function() {
			if($("#check_masuk_drkh").is(':checked') == true){
				$('#masuk_drkh').val(1);
			}else{
				$('#masuk_drkh').val(0);
			}
			
		});
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id				= $("#id").val();
			var masuk_drkh 		= $("#masuk_drkh").val();
			var masuk_drkh_ket 	= $("#masuk_drkh_ket").val();
			
			var id_jenis 		= $("#id_jenis").val();
			var id_donor 		= $("#id_donor").val();
			var judul_en 		= $("#judul_en").val();
			var judul_id 		= $("#judul_id").val();
			var durasi 			= $("#durasi").val();
			var id_mata_uang 	= $("#id_mata_uang").val();
			var nilai_hibah 	= $("#nilai_hibah").val();
			var nilai_dp 		= $("#nilai_dp").val();
			
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('masuk_drkh', masuk_drkh);
			form_data.append('masuk_drkh_ket', masuk_drkh_ket);
			
			form_data.append('id_jenis', id_jenis);
			form_data.append('id_donor', id_donor);
			form_data.append('judul_en', judul_en);
			form_data.append('judul_id', judul_id);
			form_data.append('durasi', durasi);
			form_data.append('id_mata_uang', id_mata_uang);
			form_data.append('nilai_hibah', nilai_hibah);
			form_data.append('nilai_dp', nilai_dp);


            $.ajax({
                url: '<?php echo base_url(); ?>hibah/usulan_simpan_masuk_drkh',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
						$('#modalNilai').modal('hide');
						segarkan_data();
						notif("Informasi", "Rekomendasi masuk DRKH telah berhasil disimpan.");
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

