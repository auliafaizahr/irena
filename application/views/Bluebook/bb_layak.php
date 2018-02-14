<div class="modal inmodal fade" id="modalLayak2" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
    <div class="modal-content">  
				<div class="ibox-title">
					<h5>Penilaian Kelayakan</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data"> 
					<div class="ibox-content">
						<div class="form-group">
							<label class="col-sm-4 control-label">Proyek</label>
							<div class="col-sm-8">
								<div class="checkbox">
										<label><?php echo $isi->judul_proyek_id; ?></label>
								</div>
							</div>
						</div><hr />

						<div class="form-group">
                            <label for="is_layak" class="col-sm-4 control-label">Hasil Penilaian</label>
                            <div class="col-sm-8">
                                <select name="is_layak" id="is_layak" class="form-control" >
                                    <option value="0">Belum Lengkap</option>
                                    <option value="1">Tidak Lengkap</option>
                                    <option value="2">Sudah Lengkap</option>
                                </select>
                            </div>
                        </div>

						<div class="form-group">
							<label for="nilai_layak_ket" class="col-sm-4 control-label">Keterangan</label>
							<div class="col-sm-8">
								<textarea name="nilai_layak_ket" id="nilai_layak_ket" class="col-sm-12" rows="5">-</textarea>
							</div>
						</div>
						
						<div class="modal-footer">					
						<button type="submit" id="tblSimpan" class="btn btn-primary">Simpan</button>
						<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
					</div>
						<input type="hidden" name="id" id="id" class="form-control" value="<?php echo $isi->id; ?>">
						
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
				$('#nilai_layak').val(2);
			}else{
				$('#nilai_layak').val(1);
			}
			
		});

		$("#is_layak").select2({
            placeholder: "Pilih Hasil Penilaian",
            width: "100%"
        });

		function fresh() {
			location.reload();
		}

		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id					= $("#id").val();
			var nilai_layak 		= $("#nilai_layak").val();
			var nilai_layak_ket 	= $("#nilai_layak_ket").val();
			var is_layak 			= $("#is_layak").val();
			
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('nilai_layak', nilai_layak);
			form_data.append('nilai_layak_ket', nilai_layak_ket);
			form_data.append('is_layak', is_layak);

			console.log("cuma sampe sini");
            $.ajax({
            	 
                url: '<?php echo base_url(); ?>Bluebook/usulan_simpan_layak',
                
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                dataType: 'json',
               type: 'POST',
                success: function(response){
                    if (response.success == true) {
						$('#modalLayak2').modal('hide');
						console.log("ok");
						fresh();
						//segarkan_data();
						alert(response);
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



