<div class="modal inmodal fade" id="modalEdit" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Edit Donor</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
				
					<div class="ibox-content">
						
						<div class="form-group">
							<label for="nama" class="col-sm-2 control-label">Nama</label>
							<div class="col-sm-10">
								<input type="text" name="nama" id="nama" class="form-control" placeholder="Nama Donor" value="<?php echo $donor->nama; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="keterangan" class="col-sm-2 control-label">Keterangan</label>
							<div class="col-sm-10">
								<input type="text" name="keterangan" id="keterangan" class="form-control" placeholder="Keterangan" value="<?php echo $donor->keterangan; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="tampilkan" class="col-sm-2 control-label">Status</label>
							<div class="col-sm-10">
								<select name="tampilkan" id="tampilkan" class="form-control" >
									<option value="<?php echo $donor->tampilkan; ?>">
										<?php 
											if($donor->tampilkan == 1){
												echo "Aktif"; 
											}else{
												echo "Tidak Aktif";
											}
										?>
									</option>
									<option value="1">Aktif</option>
									<option value="0">Tidak Aktif</option>
								</select>
							</div>
						</div>
						<input type="hidden" name="id" id="id" class="form-control" value="<?php echo $donor->id; ?>">
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
		$("#tampilkan").select2({
			placeholder: "Pilih Status",
			width: "100%"
		});

		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id 			= $("#id").val();
			var nama 		= $("#nama").val();
			var keterangan	= $("#keterangan").val();
			var tampilkan	= $("#tampilkan").val();
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('nama', nama);
			form_data.append('keterangan', keterangan);
			form_data.append('tampilkan', tampilkan);

            $.ajax({
                url: '<?php echo base_url(); ?>data/donor_simpan/edit',
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
