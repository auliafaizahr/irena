<div class="modal inmodal fade" id="modalTambah" tabindex="-1" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Tambah Arsip</h5>
				</div>
				<div class="ibox-content">
					<div id="the-message"></div>
					<form class="form-horizontal" id="htmlForm" action="<?php echo base_url(); ?>arsip/simpan2" method="post" enctype="multipart/form-data"> 
						<div class="form-group">
							<label for="id_jenis" class="col-sm-3 control-label">Jenis</label> 
							<div class="col-sm-9">
								<select name="id_jenis" id="id_jenis" class="form-control m-b">
									<option value="">Pilih Jenis Arsip</option>
									<?php foreach($jenis_arsip as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="id_tingkat" class="col-sm-3 control-label">Tingkat</label>
							<div class="col-sm-9">
								<select name="id_tingkat" id="id_tingkat" class="form-control m-b">
									<option value="">Pilih Tingkat Arsip</option>
									<?php foreach($tingkat_arsip as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="id_status" class="col-sm-3 control-label">Status</label>
							<div class="col-sm-9">
								<select name="id_status" id="id_status" class="form-control m-b">
									<option value="">Pilih Status Arsip</option>
									<?php foreach($status_arsip as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="no" class="col-sm-3 control-label">Nomor</label>
							<div class="col-sm-9">
								<input type="text" name="no" id="no" class="form-control" placeholder="Nomor Arsip" >
							</div>
						</div>
						<div class="form-group">
							<label for="tgl" class="col-sm-3 control-label">Tanggal Surat</label>
							<div class="col-sm-9">
								<div class="input-group date" >
									<span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" name= "tgl" id="tgl" class="form-control" value="<?php echo date('Y-m-d'); ?>" data-date-format='yyyy-mm-dd'>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="dari" class="col-sm-3 control-label">Dari</label>
							<div class="col-sm-9">
								<input type="text" name="dari" id="dari" class="form-control" placeholder="Dari" >
							</div>
						</div>
						<div class="form-group">
							<label for="perihal" class="col-sm-3 control-label">Perihal</label>
							<div class="col-sm-9">
								<input type="text" name="perihal" id="perihal" class="form-control" placeholder="Perihal Arsip" >
							</div>
						</div>
						<div class="form-group">
							<label for="tgl_terima" class="col-sm-3 control-label">Tanggal Terima</label>
							<div class="col-sm-9">
								<div class="input-group date">
									<span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="tgl_terima" type="text" name= "tgl_terima" id="tgl_terima" value="<?php echo date('Y-m-d'); ?>" class="form-control" data-date-format='yyyy-mm-dd' >
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="ringkasan" class="col-sm-3 control-label">Ringkasan</label>
							<div class="col-sm-9">
								<textarea name="ringkasan" id="ringkasan" class="col-sm-12" rows="5" ></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="keywords" class="col-sm-3 control-label">Keywords</label>
							<div class="col-sm-9">
								<textarea name="keywords" id="keywords" class="col-sm-12" rows="5" ></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="berkas" class="col-sm-3 control-label">File</label>
							<div class="col-sm-9">
								<input type="file" name="berkas" id="berkas" size="30"> 
							</div>
						</div>
						<input type="hidden" name="berkas_lama" class="form-control" value="">
						<input type="hidden" name="update_by" class="form-control" value="<?php echo $this->session->userdata('id'); ?>">
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
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			var id_jenis 	= $("#id_jenis").val();
			var id_status 	= $("#id_status").val();
			var id_tingkat 	= $("#id_tingkat").val();
			var perihal 	= $("#perihal").val();
			var no 			= $("#no").val();
			var dari 		= $("#dari").val();
			var tgl 		= $("#tgl").val();
			var ringkasan 	= $("#ringkasan").val();
			var keywords 	= $("#keywords").val();
			var tgl_terima 	= $("#tgl_terima").val();
			var update_by 	= $("#update_by").val();
            var file_data 	= $('#berkas').prop('files')[0];
			
            var form_data 	= new FormData();
 
            form_data.append('berkas', file_data);
			form_data.append('id_jenis', id_jenis);
			form_data.append('id_status', id_status);
			form_data.append('id_tingkat', id_tingkat);
			form_data.append('no', no);
			form_data.append('perihal', perihal);
			form_data.append('dari', dari);
			form_data.append('tgl', tgl);
			form_data.append('ringkasan', ringkasan);
			form_data.append('keywords', keywords);
			form_data.append('tgl_terima', tgl_terima);
			form_data.append('update_by', update_by);


            $.ajax({
                url: '<?php echo base_url(); ?>arsip/simpan2',
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
		
		
		$('#tblTutup').click(function(){
			$.ajax({
				url: "<?php echo base_url(); ?>arsip/shodata",
				beforeSend: function(){
				},
				success:function(response){
					$("#tabel_arsip").html(response);
				},
				dataType:"html",
				error: function(){
					alert('gagal noh!');
				}
				
			});
		});
		
	
		function ok(){
			setTimeout(function() {
                toastr.options = {
                    closeButton: true,
                    progressBar: true,
                    showMethod: 'slideDown',
                    timeOut: 4000
                };
                toastr.success('Responsive Admin Theme', 'data ok');

            }, 1300);
		}
		
		$("#tgl").datepicker({
			todayHighlight: true
			});
			
		$("#tgl_terima").datepicker({
			todayHighlight: true
			});
			
		$('.codemirror').summernote({
			height: 150,
			codemirror: { // codemirror options
				mode: 'text/html',
				htmlMode: true,
				lineNumbers: true,
				theme: 'monokai'
			}
		});
	});
</script>
