<div class="modal inmodal fade" id="modalTambah" tabindex="-1" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Tambah Lampiran</h5>
				</div>
				<div class="ibox-content">
					<div id="the-message"></div>
					<form class="form-horizontal" id="htmlForm" action="<?php echo base_url(); ?>arsip/simpan2" method="post" enctype="multipart/form-data"> 
						<div class="form-group">
							<label for="nama" class="col-sm-2 control-label">Nama</label>
							<div class="col-sm-10">
								<input type="text" name="nama" id="nama" class="form-control" placeholder="Nama Lampiran" >
							</div>
						</div>
						<div class="form-group">
							<label for="keterangan" class="col-sm-2 control-label">Keterangan</label>
							<div class="col-sm-10">
								<textarea name="keterangan" id="keterangan" class="col-sm-12 " rows="5" placeholder="Keterangan Lampiran" ></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="berkas" class="col-sm-2 control-label">File</label>
							<div class="col-sm-10">
								<input type="file" name="berkas" id="berkas" size = "20" /> 
							</div>
						</div>
						<input type="hidden" name="berkas_lama" class="form-control" value="">
						<input type="hidden" name="id_arsip" id="id_arsip" class="form-control" value="<?php  echo $this->uri->segment(3); ?>">
						<input type="hidden" name="update_by" id="update_by" class="form-control" value="<?php echo $this->session->userdata('id'); ?>">
						<div class="modal-footer">					
							<button type="submit"class="btn btn-primary">Simpan</button>
							<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


<script>
    $(document).ready(function(){
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id_arsip 	= $("#id_arsip").val();
			var nama 		= $("#nama").val();
			var keterangan 	= $("#keterangan").val();
			var update_by 	= $("#update_by").val();
            var berkas 		= $('#berkas').prop('files')[0];
			
            var form_data 	= new FormData();
 
			form_data.append('id_arsip', id_arsip);
			form_data.append('nama', nama);
			form_data.append('keterangan', keterangan);
			form_data.append('update_by', update_by);
			form_data.append('berkas', berkas);


            $.ajax({
                url: '<?php echo base_url(); ?>arsip/lampiran_simpan',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
						$('#modalTambah').modal('hide');
						segarkan_lampiran();
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