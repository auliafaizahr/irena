<div class="modal inmodal fade" id="modalTambah" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Tambah Log</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
					<div class="ibox-content">
						
						<div class="form-group">
							<label for="id_log_kategori" class="col-sm-2 control-label">Kategori</label>
							<div class="col-sm-10">
								<select name="id_log_kategori" id="id_log_kategori" class="form-control">
									<option value=""></option>
									<?php foreach($id_log_kategori as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?>
									  </option>
									<?php } ?>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="id_arsip" class="col-sm-2 control-label">Surat</label>
							<div class="col-sm-10">
								<select class="form-control" id="id_arsip"  name="id_arsip">
									<option value=""></option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="nama" class="col-sm-2 control-label">Nama</label>
							<div class="col-sm-10">
								<input type="text" name="nama" id="nama" class="form-control" placeholder="Nama">
							</div>
						</div>
						<div class="form-group">
							<label for="deskripsi" class="col-sm-2 control-label">Deskripsi</label>
							<div class="col-sm-10">
								<textarea name="deskripsi" id="deskripsi" class="col-sm-12" rows="5" placeholder="Deskripsi"></textarea>
							</div>
						</div>
						<input type="hidden" name="id_proyek" id="id_proyek" class="form-control" value="<?php  echo $id_proyek; ?>">
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

<style>
	.modal { overflow: auto !important; }
</style>


<script>
    $(document).ready(function(){
		$("#id_log_kategori").select2({
			placeholder: "Pilih Kategori",
			width: "100%"
		});
		
		$("#id_arsip").select2({
			placeholder: "Cari Nomor Surat",
			width: "100%",
			ajax: {
			  url: '<?php echo base_url() ?>sbsn/lookup2',
			  dataType: 'json',
			  delay: 250,
			  processResults: function (data) {
				return {
				  results: data
				};
			  },
			  cache: true
			}
			
		});
		
		
		

		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id_proyek 			= $("#id_proyek").val();
			var id_arsip 			= $("#id_arsip").val();
			var id_log_kategori 	= $("#id_log_kategori").val();
			var nama 				= $("#nama").val();
			var deskripsi 			= $("#deskripsi").val();
			
            var form_data 	= new FormData();
 
			form_data.append('id_proyek', id_proyek);
			form_data.append('id_arsip', id_arsip);
			form_data.append('id_log_kategori', id_log_kategori);
			form_data.append('nama', nama);
			form_data.append('deskripsi', deskripsi);

            $.ajax({
                url: '<?php echo base_url(); ?>usulan/log_usulan_simpan/<?php  echo $this->uri->segment(3); ?>',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
						$('#modalTambah').modal('hide');
						segarkan_log();
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