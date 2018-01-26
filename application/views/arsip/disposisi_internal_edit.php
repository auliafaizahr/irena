<div class="modal inmodal fade" id="modalInternal" tabindex="-1" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Edit Disposisi Internal</h5>
				</div>
				<div class="ibox-content">
					<form class="form-horizontal" id="myForm" action="#" method="post" enctype="multipart/form-data"> <div class="i-checks"> </div>
						<table class="table">
							<thead>
                                <tr>
                                    <th class="text-center">Diteruskan Kepada</th>
                                    <th class="text-center">Disposisi</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><strong>PNS</strong></td>
                                    <td rowspan="4">
										<?php foreach($aksi_disposisi->result() as $row): ?>
												<input type="checkbox" value="<?php echo $row->id; ?>" name="id_aksi_2" id="<?php echo "aksi".$row->id; ?>"> <i></i> <strong><?php echo $row->nama; ?></strong>
												
												<div class="i-checks">
													<label> 
														
													</label>
												</div>
										<?php endforeach; ?>
									</td>
                                </tr>
                                <tr>
                                    <td>
										<?php foreach($pns->result() as $row): ?>
													<input type="checkbox" value="<?php echo $row->id_user; ?>" name="id_user" id="<?php echo "user".$row->id_user; ?>"> <i></i> <strong><?php echo $row->nama; ?></strong>
													
													
													<div class="i-checks">
														<label> 
															
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
													
													<input type="checkbox" value="<?php echo $row->id_user; ?>" name="id_user" id="<?php echo "user".$row->id_user; ?>"> <i></i> <strong><?php echo $row->nama; ?> </strong>
													
													<div class="i-checks">
														<label> 
															
														</label>
													</div>
										<?php endforeach; ?>
									</td>
								</tr>
                            </tbody>
						</table>
						<input type="hidden" name="id_disposisi" class="form-control" id="id_disposisi" value="<?php  echo $this->uri->segment(3); ?>">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
    $(document).ready(function(){
		<?php
			foreach($user->result() as $row):
		?>
				document.getElementById("user<?php echo $row->id_disposisi_user; ?>").checked = true;
		<?php endforeach; ?>
		
		<?php
			foreach($aksi->result() as $row):
		?>
				document.getElementById("aksi<?php echo $row->id_disposisi_aksi; ?>").checked = true;
		<?php endforeach; ?>
		
		$('.i-checks').iCheck({
			checkboxClass: 'icheckbox_square-green',
			radioClass: 'iradio_square-green',
		});

		$('input[name="id_aksi"]').click(function() {
			var id_disposisi = $('#id_disposisi').val();
			
			if($(this).is(':checked') == true){
				var id_disposisi_aksi = $(this).val();
				
				alert('Aksi Tidak Dicentang!');
				
				$.ajax({
					url: "<?php echo base_url(); ?>arsip/disposisi_internal_aksi_hapus/"+id_disposisi+"/"+id_disposisi_aksi,
					success:function(response){
						
					}	,
					dataType:"html",
					error: function(){
						notif_bahaya();
					}
				});
			}else{
				var id_disposisi_aksi = $(this).val();
				
				alert('Aksi Dicentang!');
				
				$.ajax({
					url: "<?php echo base_url(); ?>arsip/disposisi_internal_aksi_simpan/"+id_disposisi+"/"+id_disposisi_aksi,
					success:function(response){
						
					}	,
					dataType:"html",
					error: function(){
						notif_bahaya();
					}
				});
			}
		});
		
		$('input[name="id_aksi_2"]').click(function() {
			var id_disposisi = $('#id_disposisi').val();
			
			if($(this).is(':checked') == true){
				var id_disposisi_aksi = $(this).val();
				
				alert('Aksi Dicentang!');
				
				$.ajax({
					url: "<?php echo base_url(); ?>arsip/disposisi_internal_aksi_simpan/"+id_disposisi+"/"+id_disposisi_aksi,
					success:function(response){
						
					}	,
					dataType:"html",
					error: function(){
						notif_bahaya();
					}
				});
				
			}else{
				var id_disposisi_aksi = $(this).val();
				
				
				
				alert('Aksi Tidak Dicentang!');
				
				$.ajax({
					url: "<?php echo base_url(); ?>arsip/disposisi_internal_aksi_hapus/"+id_disposisi+"/"+id_disposisi_aksi,
					success:function(response){
						
					}	,
					dataType:"html",
					error: function(){
						notif_bahaya();
					}
				});
			}
		});
		
		$('input[name="id_user"]').click(function() {
			var id_disposisi = $('#id_disposisi').val();
			
			if($(this).is(':checked') == true){
				var id_disposisi_user = $(this).val();
				
				alert('User Dicentang!');
				
				$.ajax({
					url: "<?php echo base_url(); ?>arsip/disposisi_internal_simpan/"+id_disposisi+"/"+id_disposisi_user,
					success:function(response){
						//alert('aksi ditambahkan');
					}	,
					dataType:"html",
					error: function(){
						notif_bahaya();
					}
				});
				
			}else{
				var id_disposisi_user = $(this).val();
				
				
				
				alert('User Tidak Dicentang!');
				
				$.ajax({
					url: "<?php echo base_url(); ?>arsip/disposisi_internal_hapus/"+id_disposisi+"/"+id_disposisi_user,
					success:function(response){
						//alert('aksi dibuang');
					}	,
					dataType:"html",
					error: function(){
						notif_bahaya();
					}
				});
			}
		});
		
		
	});
</script>