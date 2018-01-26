<div class="modal inmodal fade" id="modalEdit" tabindex="-1" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Perbaharui Arsip</h5>
				</div>
				<div class="ibox-content">
					<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
					
						<input type="hidden" name="id" id="id" class="form-control" value="<?php echo $arsip->id; ?>">
						
						<div class="form-group">
							<label class="col-sm-3 text-right">Nomor</label>
							<label class="col-sm-9 text-left"><?php echo $arsip->no; ?>, tanggal <?php echo date("dM'y", strtotime($arsip->tgl)); ?></label>
						</div><hr />
						
						<div class="form-group">
							<label class="col-sm-3 text-right">Dari</label>
							<label class="col-sm-9 text-left"><?php echo $arsip->dari; ?></label>
						</div><hr />
						
						<div class="form-group">
							<label class="col-sm-3 text-right">Perihal</label>
							<label class="col-sm-9 text-left"><?php echo $arsip->perihal; ?></label>
						</div><hr />
						
						<div class="form-group">
							<label for="id_status" class="col-sm-3 control-label">Status</label>
							<div class="col-sm-9">
								<select name="id_status" id="id_status" class="form-control m-b">
									<?php 
										$query 	= $this->arsip_model->pilih_status_by_id($arsip->id_status); 
										foreach ($query as $key) 
										{
									?>
											<option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>';
									<?php
										}
										foreach($status_arsip as $row)
										{ 
									?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="selesai_cat" class="col-sm-3 control-label">Catatan</label>
							<div class="col-sm-9">
								<textarea name="selesai_cat" id="selesai_cat" class="col-sm-12" rows="5"  ><?php echo $arsip->selesai_cat; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 text-right">Diselesaikan oleh</label>
							<label class="col-sm-9 text-left"><input type="hidden" name="selesai_by" id="selesai_by" class="form-control" placeholder="selesai_by" value="<?php echo $this->session->userdata('id'); ?>" ><?php echo $this->session->userdata('nama_panggilan'); ?></label>
						</div>
						
						
						<div class="form-group">
							<label for="selesai_date" class="col-sm-3 text-right">Diselesaikan Tanggal</label>
							<label for="selesai_date"  class="col-sm-9 text-left"><?php echo date('Y-m-d'); ?></label>
							<input type="hidden" name= "selesai_date" id="selesai_date" class="form-control" value="<?php echo date('Y-m-d'); ?>" data-date-format='yyyy-mm-dd'>
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
</div>


<script>
    $(document).ready(function(){
		$('#btnLihat').click(function(){
			
		});


		$('#btnHapus').click(function(){
			$("#pesan").append('<div class="alert alert-success">' +
                            '<span class="glyphicon glyphicon-ok"></span>' +
                            ' Data has been saved' +
                            '</div>');

			// close the message after seconds
                        $('.alert-success').delay(500).show(10, function() {
                            $(this).delay(3000).hide(10, function() {
                                $(this).remove();
                            });
                        })
		});
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id 				= $("#id").val();
			var id_status 		= $("#id_status").val();
			var selesai_cat 	= $("#selesai_cat").val();
			var selesai_by 		= $("#selesai_by").val();
			var selesai_date 	= $("#selesai_date").val();

			
            var form_data 	= new FormData();
 

			form_data.append('id', id);
			form_data.append('id_status', id_status);
			form_data.append('selesai_cat', selesai_cat);
			form_data.append('selesai_by', selesai_by);
			form_data.append('selesai_date', selesai_date);


            $.ajax({
                url: '<?php echo base_url(); ?>dashboard/simpan_arsip',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
						$('#modalEdit').modal('hide');
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
