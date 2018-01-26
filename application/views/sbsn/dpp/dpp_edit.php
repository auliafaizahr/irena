<div class="modal inmodal fade" id="modalEdit" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Edit Proyek DPP SBSN</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
				
					<div class="ibox-content">
						
						<div class="form-group">
							<label for="id_dpp" class="col-sm-2 control-label">DPP</label>
							<div class="col-sm-10">
								<select id="id_dpp" name="id_dpp" class="form-control">
									<?php 
										$query 	= $this->sbsn_model->ambil_dpp_by_id($dpp->id_dpp); 
										foreach ($query as $key) 
										{
									?>
										<option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
									<?php } ?>
									<?php foreach($jenis as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="judul" class="col-sm-2 control-label">Proyek</label>
							<div class="col-sm-10">
								<input type="text" name="judul" id="judul" class="form-control" placeholder="Judul Proyek" value="<?php echo $dpp->judul; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="nilai" class="col-sm-2 control-label">Nilai</label>
							<div class="col-sm-10">
								<input type="text" name="nilai" id="nilai" class="form-control" placeholder="Nilai Proyek (Rp)" value="<?php echo $dpp->nilai; ?>">
							</div>
						</div>
						
						
						<input type="hidden" name="id" class="form-control" id="id" value="<?php  echo $dpp->id; ?>">
						<input type="hidden" name="id_proyek" class="form-control" id="id_proyek" value="<?php  echo $dpp->id_proyek; ?>">
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
		
		$("#id_dpp").select2({
			placeholder: "Pilih Tahun Usulan",
			width: "100%"
		});
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id			= $("#id").val();
			var id_proyek 	= $("#id_proyek").val();
			var id_dpp 		= $("#id_dpp").val();
			var judul 		= $("#judul").val();
			var nilai 		= $("#nilai").val();
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('id_proyek', id_proyek);
			form_data.append('id_dpp', id_dpp);
			form_data.append('judul', judul);
			form_data.append('nilai', nilai);


            $.ajax({
                url: '<?php echo base_url(); ?>sbsn/dpp_proyek_simpan/edit',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
						$('#modalEdit').modal('hide');
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
