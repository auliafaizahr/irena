<div class="modal inmodal fade" id="modalEdit" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Edit Dokumen Pendukung</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="<?php echo base_url(); ?>arsip/disposisi_simpan/<?php  echo $this->uri->segment(3); ?>" method="post" enctype="multipart/form-data">
					<div class="ibox-content">
						<div class="form-group">
							<label for="kat" class="col-sm-2 control-label">Kategori</label>
							<div class="col-sm-10">
								<input type="text" name="kat" id="kat" class="form-control" placeholder="Kategori Dok. Pendukung" value="<?php echo $dok->kat; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="nama" class="col-sm-2 control-label">Nama</label>
							<div class="col-sm-10">
								<input type="text" name="nama" id="nama" class="form-control" placeholder="Nama" value="<?php echo $dok->nama; ?>">
							</div>
						</div>
						<div class="form-group">
							<label for="ket" class="col-sm-2 control-label">Keterangan</label>
							<div class="col-sm-10">
								<textarea name="ket" id="ket" class="col-sm-12" rows="5" placeholder="Keterangan"><?php echo $dok->ket; ?></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="berkas" class="col-sm-2 control-label">File</label>
							<div class="col-sm-10">
								<input type="file" name="berkas" id="berkas" size="30"> 
								<a href="<?php echo base_url(); ?>uploads/PLN/<?php echo $dok->berkas; ?>" target="_blank" class="btn btn-info btn-xs" type="button"><i class="fa fa-download"></i> Lihat</a>
							</div>
						</div>
						<input type="hidden" name="id_berkas" id="id_berkas" class="form-control" value="<?php  echo $dok->id; ?>">
						<input type="hidden" name="berkas_lama" id="berkas_lama" class="form-control" value="<?php echo $dok->berkas; ?>">
						<input type="hidden" name="id_proyek" id="id_proyek" class="form-control" value="<?php  echo $dok->id_proyek; ?>">
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
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id_berkas 			= $("#id_berkas").val();
			var id_proyek 	= $("#id_proyek").val();
			var kat 		= $("#kat").val();
			var nama 		= $("#nama").val();
			var ket 		= $("#ket").val();
			var berkas 		= $('#berkas').prop('files')[0];
			var berkas_lama = $("#berkas_lama").val();
			
            var form_data 	= new FormData();
	
			form_data.append('id', id_berkas);
			form_data.append('id_proyek', id_proyek);
			form_data.append('kat', kat);
			form_data.append('nama', nama);
			form_data.append('ket', ket);
			form_data.append('berkas', berkas);
			form_data.append('berkas_lama', berkas_lama);
			
			console.log(id_berkas);
			console.log(id_proyek);
			console.log(kat);
			console.log(nama);
			console.log(ket);
			console.log(berkas);
			console.log(berkas_lama);
			console.log("diatas ini id yg itu tea");

            $.ajax({
            url: '<?php echo base_url(); ?>usulan/dok_usulan_simpan/edit',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
						$('#modalEdit').modal('hide');
						segarkan_log2();
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