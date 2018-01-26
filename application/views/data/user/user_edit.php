<div class="modal inmodal fade" id="modalEdit" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Edit Pengguna</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
				
					<div class="ibox-content">
					
						<div class="form-group">
							<label for="id_user_level" class="col-sm-3 control-label">Level</label>
							<div class="col-sm-9">
								<select name="id_user_level" id="id_user_level" class="form-control m-b">
									<?php 
										$query 	= $this->data_model->ambil_user_level_by_id($user->id_user_level); 
										foreach ($query as $key) 
										{
									?>
									<option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
									<?php 
										}
										foreach($level as $row)
										{ 
									?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>
									<?php } ?>
								</select>
							</div>
						</div>
					
						
						<div class="form-group">
							<label for="email" class="col-sm-3 control-label">Email</label>
							<div class="col-sm-9">
								<input type="text" name="email" id="email" class="form-control" placeholder="Email" value="<?php echo $user->email; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="password" class="col-sm-3 control-label">Password</label>
							<div class="col-sm-9">
								<input type="password" name="password" id="password" class="form-control" placeholder="Password" >
							</div>
						</div>
						
						<div class="form-group">
							<label for="password_conf" class="col-sm-3 control-label">Konfirmasi Password</label>
							<div class="col-sm-9">
								<input type="password" name="password_conf" id="password_conf" class="form-control" placeholder="Konfirmasi Password" >
							</div>
						</div>
						
						<div class="form-group">
							<label for="nama_depan" class="col-sm-3 control-label">Nama Depan</label>
							<div class="col-sm-9">
								<input type="text" name="nama_depan" id="nama_depan" class="form-control" placeholder="Nama Depan" value="<?php echo $user->nama_depan; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="nama_belakang" class="col-sm-3 control-label">Nama Belakang</label>
							<div class="col-sm-9">
								<input type="text" name="nama_belakang" id="nama_belakang" class="form-control" placeholder="Nama Belakang" value="<?php echo $user->nama_belakang; ?>" >
							</div>
						</div>
						
						<div class="form-group">
							<label for="nama_panggilan" class="col-sm-3 control-label">Nama Panggilan</label>
							<div class="col-sm-9">
								<input type="text" name="nama_panggilan" id="nama_panggilan" class="form-control" placeholder="Nama Panggilan" value="<?php echo $user->nama_panggilan; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="tgl_lahir" class="col-sm-3 control-label">Tanggal Lahir</label>
							<div class="col-sm-9">
								<div class="input-group date" >
									<span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" name= "tgl_lahir" id="tgl_lahir" class="form-control"  data-date-format='yyyy-mm-dd' value="<?php echo $user->tgl_lahir; ?>">
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label for="no_hp" class="col-sm-3 control-label">No Handphone</label>
							<div class="col-sm-9">
								<input type="text" name="no_hp" id="no_hp" class="form-control" placeholder="Nomor Handphone" value="<?php echo $user->no_hp; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="aktif" class="col-sm-3 control-label">Status</label>
							<div class="col-sm-9">
								<select name="aktif" id="aktif" class="form-control" >
									<option value="<?php echo $user->aktif; ?>">
										<?php 
											if($user->aktif == 1){
												echo "Aktif"; 
											}else{
												echo "Tidak Aktif";
											}
										?>
									</option>
									<option value=""></option>
									<option value="1">Aktif</option>
									<option value="0">Tidak Aktif</option>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="foto" class="col-sm-3 control-label">Foto</label>
							<div class="col-sm-9">
								<input type="file" name ="foto" id="foto" size = "20" />
								<p><small>	Besar file: maksimum 100.000 bytes (100 Kilobytes)<br />	
											Ekstensi file yang diperbolehkan: .JPG .JPEG .PNG <br />
											Resolusi 200x200 px
								</small></p>
							</div>
						</div>
					
					<input type="hidden" name="id" id="id" class="form-control" value="<?php echo $user->id; ?>">
					
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
		$("#id_user_level").select2({
			placeholder: "Pilih User Level",
			width: "100%"
		});
		
		$("#aktif").select2({
			placeholder: "Pilih Status",
			width: "100%"
		});
	
		$("#tgl_lahir").datepicker({
			todayHighlight: true
		});
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id 					= $("#id").val();
			var id_user_level 		= $("#id_user_level").val();
			var email				= $("#email").val();
			var password			= $("#password").val();
			var password_conf		= $("#password_conf").val();
			var nama_depan			= $("#nama_depan").val();
			var nama_belakang		= $("#nama_belakang").val();
			var nama_panggilan		= $("#nama_panggilan").val();
			var tgl_lahir			= $("#tgl_lahir").val();
			var no_hp				= $("#no_hp").val();
			var aktif				= $("#aktif").val();
			var foto 				= $('#foto').prop('files')[0];
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('id_user_level', id_user_level);
			form_data.append('email', email);
			form_data.append('password', password);
			form_data.append('password_conf', password_conf);
			form_data.append('nama_depan', nama_depan);
			form_data.append('nama_belakang', nama_belakang);
			form_data.append('nama_panggilan', nama_panggilan);
			form_data.append('tgl_lahir', tgl_lahir);
			form_data.append('no_hp', no_hp);
			form_data.append('aktif', aktif);
			form_data.append('foto', foto);

            $.ajax({
                url: '<?php echo base_url(); ?>data/user_simpan/edit',
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
