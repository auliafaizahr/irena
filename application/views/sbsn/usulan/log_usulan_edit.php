<div class="modal inmodal fade" id="modalEdit" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Edit Dokumen</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="<?php echo base_url(); ?>arsip/disposisi_simpan/<?php  echo $this->uri->segment(3); ?>" method="post" enctype="multipart/form-data">
					<div class="ibox-content">
						
						<div class="form-group">
							<label for="id_proyek_dok_kategori" class="col-sm-2 control-label">Kategori</label>
							<div class="col-sm-10">
								<select name="id_proyek_dok_kategori" id="id_proyek_dok_kategori" class="form-control">
									<?php
										$query				= $this->sbsn_model->ambil_proyek_dok_kat_by_id($log_usulan->id);
										$dok_kat			= $query->row();
										
									?>
									<option value="<?php echo $dok_kat->id; ?>"><?php echo $dok_kat->nama; ?></option>
									<?php foreach($proyek_dok_kat as $row){ ?>
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
									<option value="<?php echo $log_usulan->id_arsip; ?>"><?php echo $log_usulan->no_arsip; ?></option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="nama" class="col-sm-2 control-label">Nama</label>
							<div class="col-sm-10">
								<input type="text" name="nama" id="nama" class="form-control" placeholder="Nama" value="<?php echo $log_usulan->nama; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="deskripsi" class="col-sm-2 control-label">Deskripsi</label>
							<div class="col-sm-10">
								<textarea name="deskripsi" id="deskripsi" class="col-sm-12" rows="5" placeholder="Deskripsi"> <?php echo $log_usulan->deskripsi; ?></textarea>
							</div>
						</div>
						<input type="hidden" name="id" id="id" class="form-control" value="<?php  echo $log_usulan->id; ?>">
						<input type="hidden" name="id_proyek" id="id_proyek" class="form-control" value="<?php  echo $log_usulan->id_proyek; ?>">
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
		$("#id_proyek_dok_kategori").select2({
			placeholder: "Pilih Dokumen Kategori",
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
			
			var id		 				= $("#id").val();
			var id_proyek 				= $("#id_proyek").val();
			var id_arsip 				= $("#id_arsip").val();
			var id_proyek_dok_kategori 	= $("#id_proyek_dok_kategori").val();
			var nama 					= $("#nama").val();
			var deskripsi 				= $("#deskripsi").val();
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('id_proyek', id_proyek);
			form_data.append('id_arsip', id_arsip);
			form_data.append('id_proyek_dok_kategori', id_proyek_dok_kategori);
			form_data.append('nama', nama);
			form_data.append('deskripsi', deskripsi);

            $.ajax({
                url: '<?php echo base_url(); ?>sbsn/log_usulan_simpan/<?php  echo $this->uri->segment(3); ?>',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
						$('#modalEdit').modal('hide');
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