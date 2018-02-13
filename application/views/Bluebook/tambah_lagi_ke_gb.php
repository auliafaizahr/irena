<div class="modal inmodal fade" id="tambah_lagi" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
    <div class="modal-content">  
				<div class="ibox-title">
					<h5>Detail Proyek pada Greenbook </h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" name="keBB" enctype="multipart/form-data"> 
					<div class="ibox-content">
						<div class="form-group">
							<label class="col-sm-4 control-label">Proyek</label>
							<div class="col-sm-8">
								<div class="checkbox">
										<label><?php echo $detail->judul_proyek_id; ?></label>
								</div>
							</div>
						</div><hr />
						<div class="form-group">
							<!-- <label for="nilai_layak" class="col-sm-4 control-label">Hasil Penilaian</label> -->
							<div class="col-sm-8">
								<div class="checkbox">
									<label>
										<!-- <input type="checkbox" id="check_nilai_layak"> Usulan Layak -->
										<input type="hidden" name="nilai_layak" id="nilai_layak" class="form-control" value="">
										<input type="hidden" name="id" id="id" class="form-control" value="<?php echo $detail->id; ?>">
										<input type="hidden" name="id_usulan" id="id_usulan" class="form-control" value="<?php echo $detail->id_usulan; ?>">
										<input type="hidden" name="id_bluebook" id="id_bluebook" class="form-control" value="<?php echo $detail->id_bluebook; ?>">
										<input type="hidden" name="id_instansi" id="id_instansi" class="form-control" value="<?php echo $detail->id_instansi; ?>">
										<input type="hidden" name="id_status_lender" id="id_status_lender" class="form-control" value="<?php echo $detail->id_status_lender; ?>">
										<input type="hidden" name="id_status_lembaga" id="id_status_lembaga" class="form-control" value="<?php echo $detail->id_status_lembaga; ?>">
										<input type="hidden" name="instansi_pelaksana" id="instansi_pelaksana" class="form-control" value="<?php echo $detail->instansi_pelaksana; ?>">
										<input type="hidden" name="judul_proyek_id" id="judul_proyek_id" class="form-control" value="<?php echo $detail->judul_proyek_id; ?>">
										<input type="hidden" name="judul_proyek_eng" id="judul_proyek_eng" class="form-control" value="<?php echo $detail->judul_proyek_eng; ?>">
										<input type="hidden" name="ruang_lingkup_id" id="ruang_lingkup_id" class="form-control" value="<?php echo $detail->ruang_lingkup_id; ?>">
										<input type="hidden" name="ruang_lingkup_eng" id="ruang_lingkup_eng" class="form-control" value="<?php echo $detail->ruang_lingkup_eng; ?>">
										<input type="hidden" name="durasi" id="durasi" class="form-control" value="<?php echo $detail->durasi; ?>">
										<input type="hidden" name="output" id="output" class="form-control" value="<?php echo $detail->output; ?>">
										<input type="hidden" name="outcome" id="outcome" class="form-control" value="<?php echo $detail->outcome; ?>">
										<input type="hidden" name="nilai_pinjaman" id="nilai_pinjaman" class="form-control" value="<?php echo $detail->nilai_pinjaman; ?>">
										<input type="hidden" name="id_program" id="id_program" class="form-control" value="<?php echo $detail->id_program; ?>">
										
										<input type="hidden" name="nilai_hibah" id="nilai_hibah" class="form-control" value="<?php echo $detail->nilai_hibah; ?>">
										<input type="hidden" name="id_lender" id="id_lender" class="form-control" value="<?php echo $detail->id_lender; ?>">
										<input type="hidden" name="id_eselon_1" id="id_eselon_1" class="form-control" value="<?php echo $detail->id_eselon_1; ?>">
										<input type="hidden" name="nilai_pendamping" id="nilai_pendamping" class="form-control" value="<?php echo $detail->dana_pendamping; ?>">
										<input type="hidden" name="proyeksi_tahun_pertama_penarikan" id="proyeksi_tahun_pertama_penarikan" class="form-control" value="<?php echo $detail->proyeksi_tahun_pertama_penarikan; ?>">
									
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="nilai_layak_ket" class="col-sm-4 control-label">Detail Bluebook </label>
							<div class="col-sm-8">
								 <table class="table table-bordered">
				                    <thead>
				                      <tr>
				                        <th style="width: 150px;" tabindex="0">
				                          Bluebook
				                        </th>

				                        <th>
				                          Nilai (dalam USD)
				                        </th>

				                       
				                      </tr>
				                    </thead>

				                    <tbody>
				                      <tr>
				                        <td>
				                          Bluebook 2015
				                        </td>
				                        <td>
				                         200
				                        </td>


				                      </tr>
				                    </tbody>

				                  </table>
							</div>
						</div>
						<div class="form-group">
							<label for="nilai_layak_ket" class="col-sm-4 control-label">Detail Greenbook </label>
							<div class="col-sm-8">
								 <table class="table table-bordered">
				                    <thead>
				                      <tr>
				                        <th style="width: 150px;" tabindex="0">
				                          Greenbook
				                        </th>

				                        <th>
				                          Nilai (dalam USD)
				                        </th>

				                        <th>
				                         Lender
				                        </th>
				                      </tr>
				                    </thead>

				                    <tbody>
				                      <tr>
				                        <td>
				                          Bluebook 2015
				                        </td>
				                        <td>
				                         200
				                        </td>

				                        <td>
				                         JICA
				                        </td>
				                      </tr>
				                    </tbody>

				                  </table>
							</div>
						</div>

						<div class="form-group">
							<label for="nilai_layak_ket" class="col-sm-4 control-label">Keterangan</label>
							<div class="col-sm-8">
								<textarea name="nilai_layak_ket" id="nilai_layak_ket" class="col-sm-12" rows="5">-</textarea>
							</div>
						</div>
						
						<div class="modal-footer">					
						<button type="submit" id="tblTambah" class="btn btn-primary">Tambahkan</button>
						<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
					</div>
						<input type="hidden" name="id" id="id" class="form-control" value="">
						
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

		function fresh() {
		location.reload();
		}
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			alert("Yakin menambahkan ? ");

			var me 			= $(this);
			
			var id					= $("#id").val();
			var nilai_layak 		= $("#nilai_layak").val();
			var id_usulan 		= $("#id_usulan").val();
			var nilai_layak_ket 	= $("#nilai_layak_ket").val();
			var judul_proyek_id 	= $("#judul_proyek_id").val();
			var judul_proyek_eng 	= $("#judul_proyek_eng").val();
			var judul_proyek_eng 	= $("#judul_proyek_eng").val();
			var id_instansi 		= $("#id_instansi").val();
			var id_program		 	= $("#id_program").val();
			var id_instansi_pelaksana		 	= $("#id_instansi_pelaksana").val();
			var proyeksi_tahun_pertama_penarikan		 	= $("#proyeksi_tahun_pertama_penarikan").val();
			var id_lender		 	= $("#id_lender").val();
			var id_eselon_1		 	= $("#id_eselon_1").val();
			var output		 	= $("#output").val();
			var outcome		 	= $("#outcome").val();
			var nilai_hibah		 	= $("#nilai_hibah").val();
			var nilai_pinjaman		 	= $("#nilai_pinjaman").val();
			var nilai_pendamping		 	= $("#nilai_pendamping").val();
			var id_status_lembaga		 	= $("#id_status_lembaga").val();
			var id_status_lender		 	= $("#id_status_lender").val();
			
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('nilai_layak', nilai_layak);
			form_data.append('nilai_layak_ket', nilai_layak_ket);
			form_data.append('judul_proyek_id', judul_proyek_id);
			form_data.append('judul_proyek_eng', judul_proyek_eng);
			form_data.append('id_program', id_program);
			form_data.append('id_instansi_pelaksana', id_instansi_pelaksana);
			form_data.append('id_instansi', id_instansi);
			form_data.append('proyeksi_tahun_pertama_penarikan', proyeksi_tahun_pertama_penarikan);
			form_data.append('id_lender', id_lender);
			form_data.append('id_eselon_1', id_eselon_1);
			form_data.append('output', output);
			form_data.append('outcome', outcome);
			form_data.append('nilai_hibah', nilai_hibah);
			form_data.append('nilai_pinjaman', nilai_pinjaman);
			form_data.append('nilai_pendamping', nilai_pendamping);
			form_data.append('id_status_lender', id_status_lender);
			form_data.append('id_status_lembaga', id_status_lembaga);
			form_data.append('id_usulan', id_usulan);
			
			


            $.ajax({
            	 type: 'POST',
                url: '<?php echo base_url(); ?>Bluebook/tambah_ke_GB',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
               
                success: function(response){
                    if (response.success == true) {

						$('#modalBB').modal('hide');
						alert(response);
						console.log("ok");
						fresh();
						
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



