<div class="modal inmodal fade" id="modalTambah" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Tambah Pemantauan</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
				
					<div class="ibox-content">
						
						<div class="form-group">
							<label for="id_instansi" class="col-sm-3 control-label">Instansi</label>
							<div class="col-sm-9">
								<select id="id_instansi" class="form-control" >
									<option value="">Pilih Instansi</option>
									<?php foreach($instansi as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="id_satker" class="col-sm-3 control-label">Satuan Kerja</label>
							<div class="col-sm-9">
								<select name="id_satker" id="id_satker" class="form-control" >
									<option value=""></option>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="id_dpp" class="col-sm-3 control-label">DPP</label>
							<div class="col-sm-9">
								<select id="id_dpp" name="id_dpp" class="form-control">
									<option value="">Tahun Usulan</option>
									<?php foreach($dpp as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="nilai" class="col-sm-3 control-label">Nilai</label>
							<div class="col-sm-9">
								<input type="text" name="nilai" id="nilai" class="form-control" placeholder="Nilai Proyek (Rp)">
							</div>
						</div>
						
						
						
					</div>
					<div class="modal-footer">					
						<button type="submit"class="btn btn-primary">Simpan</button>
						<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>


<script>
    $(document).ready(function(){
		$("#id_instansi").select2({
			placeholder: "Pilih Instansi",
			width: "100%"
		});
		
		$("#id_satker").select2({
			placeholder: "Pilih Satuan Kerja",
			width: "100%"
		});
		
		$("#id_dpp").select2({
			placeholder: "Pilih DPP",
			width: "100%"
		});
		
		
		
		$('#id_instansi').change(function () {
            var selProv = $(this).val();
            console.log(selProv);
            $.ajax({
                url: "<?php echo base_url(); ?>sbsn/ambil_data_satker_by_id_instansi/"+selProv,
                dataType: "json",
                success: function(data) {
                    $("#id_satker").empty();
                    $("#id_satker").append('<option value="">Pilih Satuan Kerja</option>');
                    $(data).each(function(){
                        var option = $('<option />');
                        option.attr('value', this.id).text(this.nama);
                        $('#id_satker').append(option);
                    });
                }
            })
        });
		
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id_satker 	= $("#id_satker").val();
			var id_dpp 		= $("#id_dpp").val();
			var nilai 		= $("#nilai").val();
			
            var form_data 	= new FormData();
 
			form_data.append('id_satker', id_satker);
			form_data.append('id_dpp', id_dpp);
			form_data.append('nilai', nilai);


            $.ajax({
                url: '<?php echo base_url(); ?>sbsn/on_going_simpan/tambah',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
						$('#modalTambah').modal('hide');
						segarkan_data();
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

