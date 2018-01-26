<div class="modal inmodal fade" id="modalTambah" tabindex="-1" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Tambah Disposisi</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="<?php echo base_url(); ?>arsip/disposisi_simpan/<?php  echo $this->uri->segment(3); ?>" method="post" enctype="multipart/form-data">
					<div class="ibox-content">
						<input type="hidden" name="id_arsip" id="id_arsip" class="form-control" value="<?php  echo $id_arsip; ?>">
						<div class="form-group">
							<label for="id_jenis" class="col-sm-2 control-label">Jenis</label>
							<div class="col-sm-10">
								<select name="id_jenis" id="id_jenis" class="form-control m-b">
									<option value="">Pilih Jenis Diposisi</option>
									<?php foreach($jenis as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?>
									  </option>
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="nomor" class="col-sm-2 control-label">Nomor</label>
							<div class="col-sm-10">
								<input type="text" name="nomor" id="nomor" class="form-control" placeholder="Nomor Disposisi">
							</div>
						</div>
						<div class="form-group">
							<label for="tgl" class="col-sm-2 control-label">Tanggal Disposisi</label>
							<div class="col-sm-10">
								<div class="input-group date" >
									<span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" name= "tgl" id="tgl" value="<?php echo date('Y-m-d'); ?>" class="form-control" data-date-format='yyyy-mm-dd'>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="catatan" class="col-sm-2 control-label">Catatan</label>
							<div class="col-sm-10">
								<textarea name="catatan" id="catatan" class="col-sm-12" rows="5"  placeholder="Catatan Pimpinan"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="berkas" class="col-sm-2 control-label">File</label>
							<div class="col-sm-10">
								<input type="file" name="berkas" id="berkas" size = "20" /> 
							</div>
						</div>
						<input type="hidden" name="update_by" class="form-control" value="<?php echo $this->session->userdata('id'); ?>">
						
					</div>
					<div class="modal-footer">					
						<button type="submit" class="btn btn-primary">Simpan</button>
						<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<script>
    $(document).ready(function(){
		$("#tgl").datepicker({
			todayHighlight: true
		});
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id_jenis 	= $("#id_jenis").val();
			var id_arsip 	= $("#id_arsip").val();
			var nomor 		= $("#nomor").val();
			var tgl 		= $("#tgl").val();
			var catatan 	= $("#catatan").val();
			var update_by 	= $("#update_by").val();
            var berkas 		= $('#berkas').prop('files')[0];
			
            var form_data 	= new FormData();
 
			form_data.append('id_jenis', id_jenis);
			form_data.append('id_arsip', id_arsip);
			form_data.append('nomor', nomor);
			form_data.append('tgl', tgl);
			form_data.append('catatan', catatan);
			form_data.append('update_by', update_by);
			form_data.append('berkas', berkas);

            $.ajax({
                url: '<?php echo base_url(); ?>arsip/disposisi_simpan/<?php  echo $this->uri->segment(3); ?>',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
						$('#modalTambah').modal('hide');
						segarkan_disposisi();
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
			
			
		$('#tblSimpan').click(function()
		{
			$.ajax({
				url: "<?php echo base_url(); ?>arsip/disposisi_simpan/<?php  echo $this->uri->segment(3); ?>",
				type: "POST",
				data: $('#myForm').serialize(),
				success:function(html){
					$('#modalTambah').modal('hide');
					segarkan_lampiran();
					notif("Informasi", "Data berhasil disimpan.");
				},
				error: function(){
					alert('Error Updating!');
				}
				
			});
		});
		

	});
</script>