<div class="modal inmodal fade" id="modalBB" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
    <div class="modal-content">  
				<div class="ibox-title">
					<h5>Tambahkan ke Bluebook </h5>
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
							<label for="nilai_layak" class="col-sm-4 control-label">Hasil Penilaian</label>
							<div class="col-sm-8">
								<div class="checkbox">
									<label>
										<input type="checkbox" id="check_nilai_layak"> Usulan Layak ditambahkan ke Bluebook
										<input type="hidden" name="nilai_layak" id="nilai_layak" class="form-control" value="">
										<input type="hidden" name="id" id="id" class="form-control" value="<?php echo $detail->id; ?>">
										<input type="hidden" name="id_usulan" id="id_usulan" class="form-control" value="<?php echo $detail->id; ?>">
										
										<input type="hidden" name="id_program" id="id_program" class="form-control" value="<?php echo $detail->id_program; ?>">
										<input type="hidden" name="id_instansi" id="id_instansi" class="form-control" value="<?php echo $detail->id_instansi; ?>">
										<input type="hidden" name="instansi_pelaksana" id="instansi_pelaksana" class="form-control" value="<?php echo $detail->instansi_pelaksana; ?>">
										<input type="hidden" name="judul_proyek_id" id="judul_proyek_id" class="form-control" value="<?php echo $detail->judul_proyek_id; ?>">
										<input type="hidden" name="judul_proyek_eng" id="judul_proyek_eng" class="form-control" value="<?php echo $detail->judul_proyek_eng; ?>">
										<input type="hidden" name="ruang_lingkup_id" id="ruang_lingkup_id" class="form-control" value="<?php echo $detail->ruang_lingkup_id; ?>">
										<input type="hidden" name="ruang_lingkup_eng" id="ruang_lingkup_eng" class="form-control" value="<?php echo $detail->ruang_lingkup_eng; ?>">
										<input type="hidden" name="durasi" id="durasi" class="form-control" value="<?php echo $detail->durasi; ?>">
										<input type="hidden" name="output" id="output" class="form-control" value="<?php echo $detail->output; ?>">
										<input type="hidden" name="outcome" id="outcome" class="form-control" value="<?php echo $detail->outcome; ?>">
										<input type="hidden" name="nilai_pinjaman" id="nilai_pinjaman" class="form-control" value="<?php echo $detail->dana_usulan; ?>">
										
										<input type="hidden" name="nilai_hibah" id="nilai_hibah" class="form-control" value="<?php echo $detail->dana_hibah; ?>">

										<input type="hidden" name="lokasi" id="lokasi" class="form-control" value="<?php echo $detail->lokasi; ?>">

										<input type="hidden" name="id_sektor" id="id_sektor" class="form-control" value="<?php echo $detail->id_sektor; ?>">

										<input type="hidden" name="infra" id="infra" class="form-control" value="<?php echo $detail->infra; ?>">

										<input type="hidden" name="tahun_usulan" id="tahun_usulan" class="form-control" value="<?php echo $detail->tahun_usulan; ?>">

										<input type="hidden" name="id_status" id="id_status" class="form-control" value="<?php echo $detail->id_status; ?>">
										
										<input type="hidden" name="id_eselon_1" id="id_eselon_1" class="form-control" value="<?php echo $detail->id_eselon_1; ?>">
										<input type="hidden" name="dana_pendamping" id="dana_pendamping" class="form-control" value="<?php echo $detail->dana_pendamping; ?>">
										<input type="hidden" name="proyeksi_tahun_pertama_penarikan" id="proyeksi_tahun_pertama_penarikan" class="form-control" value="<?php echo $detail->proyeksi_tahun_pertama_penarikan; ?>">
									
									</label>
								</div>
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

		function fresh() {
		location.reload();
		}
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();


			var me 			= $(this);
			
			var id					= $("#id").val();
			var id_usulan					= $("#id_usulan").val();
			var nilai_layak 		= $("#nilai_layak").val();
			var nilai_layak_ket 	= $("#nilai_layak_ket").val();
			var judul_proyek_id 	= $("#judul_proyek_id").val();
			var judul_proyek_eng 	= $("#judul_proyek_eng").val();
			var ruang_lingkup_id 	= $("#ruang_lingkup_id").val();
			var ruang_lingkup_eng 	= $("#ruang_lingkup_eng").val();
			var id_instansi 		= $("#id_instansi").val();
			var id_program		 	= $("#id_program").val();
			var durasi		 	= $("#durasi").val();
			var instansi_pelaksana		 	= $("#instansi_pelaksana").val();
			var proyeksi_tahun_pertama_penarikan		 	= $("#proyeksi_tahun_pertama_penarikan").val();
			
			var id_eselon_1		 	= $("#id_eselon_1").val();
			var output		 	= $("#output").val();
			var outcome		 	= $("#outcome").val();
			var dana_pendamping		 	= $("#dana_pendamping").val();
			var nilai_hibah		 	= $("#nilai_hibah").val();
			var nilai_pinjaman		 	= $("#nilai_pinjaman").val();
			var tahun_usulan		 	= $("#tahun_usulan").val();
			var id_sektor		 	= $("#id_sektor").val();
			var infra		 	= $("#infra").val();
			var lokasi		 	= $("#lokasi").val();
			var id_status		 	= $("#id_status").val();
			
			console.log(nilai_layak);
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('id_usulan', id_usulan);
			form_data.append('nilai_layak', nilai_layak);
			form_data.append('nilai_layak_ket', nilai_layak_ket);
			form_data.append('judul_proyek_id', judul_proyek_id);
			form_data.append('judul_proyek_eng', judul_proyek_eng);
			form_data.append('ruang_lingkup_eng', ruang_lingkup_eng);
			form_data.append('ruang_lingkup_id', ruang_lingkup_id);
			form_data.append('id_program', id_program);
			form_data.append('instansi_pelaksana', instansi_pelaksana);
			form_data.append('id_instansi', id_instansi);
			form_data.append('proyeksi_tahun_pertama_penarikan', proyeksi_tahun_pertama_penarikan);
		
			form_data.append('id_eselon_1', id_eselon_1);
			form_data.append('output', output);
			form_data.append('outcome', outcome);
			form_data.append('nilai_hibah', nilai_hibah);
			form_data.append('nilai_pinjaman', nilai_pinjaman);
			form_data.append('dana_pendamping', dana_pendamping);
			form_data.append('tahun_usulan', tahun_usulan);
			form_data.append('id_sektor', id_sektor);
			form_data.append('lokasi', lokasi);
			form_data.append('id_status', id_status);
			form_data.append('durasi', durasi);
			form_data.append('infra', infra);
			
			
			

            $.ajax({
            	 type: 'POST',
                url: '<?php echo base_url(); ?>Usulan/tambah_ke_BB',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
               
                success: function(response){
                    if (response.success == true) {

						
						alert(response);
						console.log("ok");
						fresh();
						$('#modalBB').modal('hide');
						
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



