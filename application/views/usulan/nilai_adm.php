<div class="modal inmodal fade" id="modal_adm"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog "> <!-- modal-lg -->
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Penilaian Administrasi</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" method="post" enctype="multipart/form-data"> 
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
                            <label for="is_lengkap" class="col-sm-4 control-label">Hasil Penilaian</label>
                            <div class="col-sm-8">
                                <select name="is_lengkap" id="is_lengkap" class="form-control" >
                                    <option value="0">Belum Lengkap</option>
                                    <option value="1">Tidak Lengkap</option>
                                    <option value="2">Sudah Lengkap</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="is_lengkap" class="col-sm-4 control-label">Kelengkapan Administrasi</label>
                            <div class="col-sm-8">
                                <input type="checkbox" id="is_usulan_menteri"> Usulan Menteri / Sekjen
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="is_lengkap" class="col-sm-4 control-label"></label>
                            <div class="col-sm-8">
                                <input type="checkbox" id="is_dipk_duk"> DIPK
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="is_lengkap" class="col-sm-4 control-label"></label>
                            <div class="col-sm-8">
                                <input type="checkbox" id="is_duk"> DUK
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="is_lengkap" class="col-sm-4 control-label"></label>
                            <div class="col-sm-8">
                                <input type="checkbox" id="is_rek_menteri_dn"> Rekomendasi Menteri Dalam Negeri
                        </div>
                        </div>
                        <div class="form-group">
                            <label for="is_lengkap" class="col-sm-4 control-label"></label>
                            <div class="col-sm-8">
                                <input type="checkbox" id="is_rek_menteri_bumn"> Rekomendasi Menteri BUMN
                        </div>
                        </div>

                         <div class="form-group">
                            <label for="is_lengkap" class="col-sm-4 control-label"></label>
                            <div class="col-sm-8">
                                <input type="checkbox" id="is_setuju_ia"> Surat Persetujuan Implementing Agency
                               </div>
                         </div>

						<div class="form-group">
							<label for="nilai_admin_ket" class="col-sm-4 control-label">Keterangan</label>
							<div class="col-sm-8">
								<textarea name="nilai_admin_ket" id="nilai_admin_ket" class="col-sm-12" rows="5"><?php echo $this->Usulan_model->ambil_adm($isi->id)->keterangan; ?></textarea>
							</div>
						</div>
						
						<input type="hidden" name="id" id="id" class="form-control" value="<?php echo $isi->id; ?>">
						
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
		$('#check_nilai_admin').change(function() {
			if($("#check_nilai_admin").is(':checked') == true){
				$('#nilai_admin').val(1);
			}else{
				$('#nilai_admin').val(0);
			}
			
		});


		$("#is_lengkap").select2({
            placeholder: "Pilih Hasil Penilaian",
            width: "100%"
        });

		//var id = $(t)

	function fresh() {
		location.reload();
	}
		
		 
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id					= $("#id").val();
			var nilai_admin 		= $("#nilai_admin").val();
			var nilai_admin_ket 	= $("#nilai_admin_ket").val();
			var is_lengkap 			= $("#is_lengkap").val();
				console.log(id);
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('nilai_admin', nilai_admin);
			form_data.append('nilai_admin_ket', nilai_admin_ket);
			form_data.append('is_lengkap', is_lengkap);

			var data = {};
			console.log(id);
            $.ajax({
            	 type: 'POST',
                url: '<?php echo base_url(); ?>Usulan/usulan_simpan_admin',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
               


                success: function(response){
                    if (response.success == true) {
                    	console.log("wqwq");
						$('#modal_adm').modal('hide');
						fresh();
						alert(response);
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
							console.log("huhu");

							element.after(value);
						});
					}


                }


            });
		});
	});
</script>

