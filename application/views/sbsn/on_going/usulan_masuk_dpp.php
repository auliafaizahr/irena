<div class="modal inmodal fade" id="modalNilai"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog "> <!-- modal-lg -->
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Rekomendasi Masuk DPP</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="<?php echo base_url(); ?>arsip/usulan_simpan_admin" method="post" enctype="multipart/form-data"> 
					<div class="ibox-content">
						<div class="form-group">
							<label class="col-sm-4 control-label">Proyek</label>
							<div class="col-sm-8">
								<div class="checkbox">
									<label><?php echo $usulan->judul; ?></label>
								</div>
							</div>
						</div><hr />
						<div class="form-group">
							<label for="masuk_dpp" class="col-sm-4 control-label">Hasil Penilaian</label>
							<div class="col-sm-8">
								<div class="checkbox">
									<label>
										<input type="checkbox" id="check_masuk_dpp"> Masuk dalam DPP
										<input type="hidden" name="masuk_dpp" id="masuk_dpp" class="form-control" value="<?php echo $usulan->masuk_dpp; ?>">
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="masuk_dpp_ket" class="col-sm-4 control-label">Keterangan</label>
							<div class="col-sm-8">
								<textarea name="masuk_dpp_ket" id="masuk_dpp_ket" class="col-sm-12" rows="5"><?php echo $usulan->masuk_dpp_ket; ?></textarea>
							</div>
						</div>
						
						<input type="hidden" name="id" id="id" class="form-control" value="<?php echo $usulan->id; ?>">
						<input type="text" name="id_dpp" id="id_dpp" class="form-control" value="<?php echo $usulan->id_dpp; ?>">
						<input type="text" name="judul" id="judul" class="form-control" value="<?php echo $usulan->judul; ?>">
						<input type="text" name="nilai" id="nilai" class="form-control" value="<?php echo $usulan->nilai; ?>">
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
		$('#check_masuk_dpp').change(function() {
			if($("#check_masuk_dpp").is(':checked') == true){
				$('#masuk_dpp').val(1);
			}else{
				$('#masuk_dpp').val(0);
			}
			
		});
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id				= $("#id").val();
			var masuk_dpp 		= $("#masuk_dpp").val();
			var masuk_dpp_ket 	= $("#masuk_dpp_ket").val();
			var id_dpp 			= $("#id_dpp").val();
			var judul 			= $("#judul").val();
			var nilai 			= $("#nilai").val();
			
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('masuk_dpp', masuk_dpp);
			form_data.append('masuk_dpp_ket', masuk_dpp_ket);
			form_data.append('id_dpp', id_dpp);
			form_data.append('judul', judul);
			form_data.append('nilai', nilai);


            $.ajax({
                url: '<?php echo base_url(); ?>sbsn/usulan_simpan_masuk_dpp',
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
						notif("Informasi", "Penilaian kelayakan telah berhasil disimpan.");
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

