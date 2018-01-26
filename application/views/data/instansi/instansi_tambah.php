<div class="modal inmodal fade" id="modalTambah" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Tambah Instansi</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
				
					<div class="ibox-content">
						
						<div class="form-group">
							<label for="nama" class="col-sm-2 control-label">Nama</label>
							<div class="col-sm-10">
								<input type="text" name="nama" id="nama" class="form-control" placeholder="Nama Instansi" >
							</div>
						</div>
						
						<div class="form-group">
							<label for="singkatan" class="col-sm-2 control-label">Singkatan</label>
							<div class="col-sm-10">
								<input type="text" name="singkatan" id="singkatan" class="form-control" placeholder="Singkatan Instansi" >
							</div>
						</div>
						
						<div class="form-group">
							<label for="aktif" class="col-sm-2 control-label">Status</label>
							<div class="col-sm-10">
								<select name="aktif" id="aktif" class="form-control" >
									<option value=""></option>
									<option value="1">Aktif</option>
									<option value="0">Tidak Aktif</option>
								</select>
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
		$("#aktif").select2({
			placeholder: "Pilih Status",
			width: "100%"
		});

		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var nama 		= $("#nama").val();
			var singkatan 	= $("#singkatan").val();
			var aktif 		= $("#aktif").val();
			
            var form_data 	= new FormData();
			
			form_data.append('nama', nama);
			form_data.append('singkatan', singkatan);
			form_data.append('aktif', aktif);


            $.ajax({
                url: '<?php echo base_url(); ?>data/instansi_simpan/tambah',
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
