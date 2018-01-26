<div class="modal inmodal fade" id="modalInternal" tabindex="-1" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Disposisi Internal</h5>
				</div>
				<div class="ibox-content">
					<form class="form-horizontal" id="myForm" action="#" method="post" enctype="multipart/form-data"> <div class="i-checks"> </div><input class="source" type="checkbox" id="cek" value="ok">
						<table class="table">
							<thead>
                                <tr>
                                    <th class="text-center">Diteruskan Kepada</th>
                                    <th class="text-center">Diposisi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><strong>PNS</strong></td>
                                    <td rowspan="4">
										<?php foreach($aksi_disposisi->result() as $row): ?>
										<div class="i-checks">
											<label> 
												<div id="myDiv">
												<input type="checkbox" name="id_disposisi_aksi" value="<?php echo $row->id; ?>" > <i></i> <?php echo $row->nama; ?> 
												</div>
											</label>
										</div>
										<?php endforeach; ?>
									</td>
                                </tr>
                                <tr>
                                    <td>
										<?php foreach($pns->result() as $row): ?>
										<div class="i-checks">
											<label> 
												<input class="source" type="checkbox" value="<?php echo $row->id_user; ?>" name="id_user"> <i></i> <?php echo $row->nama; ?>
											</label>
										</div>
										<?php endforeach; ?>
									</td>
                                </tr>
                                <tr>
                                    <td>Non-PNS</td>
								</tr>
								<tr>
									<td>
										<?php foreach($non_pns->result() as $row): ?>
										<div class="i-checks">
											<label> 
												<input type="checkbox" value="<?php echo $row->id_user; ?>" name="id_user" id="<?php echo "user".$row->id_user; ?>"> <i></i> <?php echo $row->nama; ?> 
											</label>
										</div>
										<?php endforeach; ?>
									</td>
								</tr>
                            </tbody>
						</table>
						<div class="form-group">
							<label class="col-sm-2 control-label">ID Disposisi</label>
							<div class="col-sm-10">
								<input type="text" name="id_disposisi" class="form-control" id="id_disposisi" value="<?php  echo $this->uri->segment(3); ?>">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">		
					<button type="button" id="btnCek" class="btn btn-white" >Cek</button>
					<button type="button" id="tblSimpan" class="btn btn-primary">Simpan</button>
					<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
    $(document).ready(function(){
		
		$('.i-checks').iCheck({
			checkboxClass: 'icheckbox_square-green',
			radioClass: 'iradio_square-green',
		});

			
		$('#tblSimpan').click(function()
		{
			var values = [];
			$('input:checkbox[name="id_user"]:checked').each(function(){
				values.push($(this).val());
			});
			
			var id_disposisi = $('#id_disposisi').val();
			//console.log(values.length);
			//console.log(values);
			
			var id_user   = $('input[name="id_user"]:checked').map(function(){
				return $(this).val();
			 }).get();
			 
			var id_disposisi_aksi   = $('input[name="id_disposisi_aksi"]:checked').map(function(){
				return $(this).val();
			}).get();
			 
			console.log(id_user.length);
			console.log(id_user);
			
			jQuery.each( id_user, function( i, val ) {
				$.ajax({
					url: "<?php echo base_url(); ?>arsip/disposisi_internal_simpan/"+id_disposisi+"/"+val,
					success:function(response){
						alert('simpan_user');
					}	,
					dataType:"html",
					error: function(){
						alert('gagal noh!');
					}
				});
			});
			
			jQuery.each( id_disposisi_aksi, function( i, val ) {
				$.ajax({
					url: "<?php echo base_url(); ?>arsip/disposisi_internal_aksi_simpan/"+id_disposisi+"/"+val,
					success:function(response){
						alert('simpan_aksi');
					}	,
					dataType:"html",
					error: function(){
						alert('gagal noh!');
					}
				});
			});
			
		});
		
		$('#btnCek').click(function(){
			alert('tekan');
			$("#cek").checked = true;
			//document.getElementById("cek").checked = true;
			document.getElementById("user").checked = true;
			document.getElementById("user4").checked = true;
		});
		
		$('#tblTutup').click(function(){
			//notif("ditutul", "tutupaja");
			/*
			$.ajax({
				url: "<?php echo base_url(); ?>arsip/shodata",
				beforeSend: function(){
					notif_bahaya("Data tak jadi disimpan loh", "tutupaja");
					//showLoading();
					showLoading2();
					//$('#loader').fadeOut(1000);
				},
				success:function(response){
					$("#tabel_arsip").html(response);
					//$('#tabel_arsip').html();
				},
				dataType:"html",
				error: function(){
					alert('gagal noh!');
				}
				
			});
			*/
		});
	});
</script>