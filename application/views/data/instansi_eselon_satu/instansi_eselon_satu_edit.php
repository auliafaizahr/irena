<div class="modal inmodal fade" id="modalEdit" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Edit Instansi</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
				
					<div class="ibox-content">
						
						<div class="form-group">
							<label for="id_instansi" class="col-sm-2 control-label">Instansi</label>
							<div class="col-sm-10">
								<select id="id_instansi" class="form-control" >
									<?php
										$query 	= $this->sbsn_model->ambil_instansi_by_id_eselon_satu($instansi_eselon_satu->id); 
										foreach ($query as $key) 
										{
									?>
										<option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
									<?php } ?>
									<?php foreach($instansi as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="nama" class="col-sm-2 control-label">Nama</label>
							<div class="col-sm-10">
								<input type="text" name="nama" id="nama" class="form-control" placeholder="Nama Instansi" value="<?php echo $instansi_eselon_satu->nama; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="ket" class="col-sm-2 control-label">Keterangan</label>
							<div class="col-sm-10">
								<textarea name="ket" id="ket" class="col-sm-12" rows="5" placeholder="Keterangan" ><?php echo $instansi_eselon_satu->ket; ?></textarea>
							</div>
						</div>
						
						
						<input type="hidden" name="id" id="id" class="form-control" value="<?php echo $instansi_eselon_satu->id; ?>">
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

		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id 			= $("#id").val();
			var id_instansi = $("#id_instansi").val();
			var nama 		= $("#nama").val();
			var ket 		= $("#ket").val();
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('id_instansi', id_instansi);
			form_data.append('nama', nama);
			form_data.append('ket', ket);


            $.ajax({
                url: '<?php echo base_url(); ?>data/instansi_eselon_satu_simpan/edit',
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
