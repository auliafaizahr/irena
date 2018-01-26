<div class="modal inmodal fade" id="modalNilai"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog "> <!-- modal-lg -->
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Penilaian Kelayakan</h5>
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
							<label for="nilai_layak" class="col-sm-4 control-label">Hasil Penilaian</label>
							<div class="col-sm-8">
								<div class="checkbox">
									<label>
										<input type="checkbox" id="check_nilai_layak"> Layak dan siap direkomendasikan untuk masuk dalam DPP
										<input type="hidden" name="nilai_layak" id="nilai_layak" class="form-control" value="<?php echo $usulan->nilai_layak; ?>">
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="nilai_layak_ket" class="col-sm-4 control-label">Keterangan</label>
							<div class="col-sm-8">
								<textarea name="nilai_layak_ket" id="nilai_layak_ket" class="col-sm-12" rows="5"><?php echo $usulan->nilai_layak_ket; ?></textarea>
							</div>
						</div>
						
						<input type="hidden" name="id" id="id" class="form-control" value="<?php echo $usulan->id; ?>">
						
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
		$('#check_nilai_layak').change(function() {
			if($("#check_nilai_layak").is(':checked') == true){
				$('#nilai_layak').val(1);
			}else{
				$('#nilai_layak').val(0);
			}
			
		});
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id					= $("#id").val();
			var nilai_layak 		= $("#nilai_layak").val();
			var nilai_layak_ket 	= $("#nilai_layak_ket").val();
			
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('nilai_layak', nilai_layak);
			form_data.append('nilai_layak_ket', nilai_layak_ket);


            $.ajax({
                url: '<?php echo base_url(); ?>hibah/usulan_simpan_layak',
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

