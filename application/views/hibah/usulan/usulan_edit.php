<div class="modal inmodal fade" id="modalEdit" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Edit Usulan Proyek</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
				
					<div class="ibox-content">
						
						<div class="form-group">
							<label for="id_instansi" class="col-sm-3 control-label">Instansi</label>
							<div class="col-sm-9">
								<select id="id_instansi" class="form-control" >
									<?php 
										$query 	= $this->sbsn_model->ambil_instansi_by_id_eselon_satu($usulan->id_instansi_eselon_satu); 
										foreach ($query as $key) 
										{
									?>
										<option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
									<?php } ?>
									<?php foreach($instansi as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="id_instansi_eselon_satu" class="col-sm-3 control-label">Instansi Eselon I</label>
							<div class="col-sm-9">
								<select name="id_instansi_eselon_satu" id="id_instansi_eselon_satu" class="form-control" >
									<?php 
										$query 	= $this->sbsn_model->ambil_instansi_eselon_satu_by_id($usulan->id_instansi_eselon_satu); 
										foreach ($query as $key) 
										{
									?>
										<option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
									<?php } ?>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="id_jenis" class="col-sm-3 control-label">Tahun</label>
							<div class="col-sm-9">
								<select id="id_jenis" name="id_jenis" class="form-control">
									<?php 
										$query 	= $this->hibah_model->ambil_jenis_by_id($usulan->id_jenis); 
										foreach ($query as $key) 
										{
									?>
										<option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
									<?php } ?>
									<?php foreach($jenis as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="judul_en" class="col-sm-3 control-label">Judul EN</label>
							<div class="col-sm-9">
								<input type="text" name="judul_en" id="judul_en" class="form-control" placeholder="Judul Proyek Dalam Bahasa Inggris" value="<?php echo $usulan->judul_en; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="judul_id" class="col-sm-3 control-label">Judul ID</label>
							<div class="col-sm-9">
								<input type="text" name="judul_id" id="judul_id" class="form-control" placeholder="Judul Proyek Dalam Bahasa Indonesia" value="<?php echo $usulan->judul_id; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="durasi" class="col-sm-3 control-label">Durasi</label>
							<div class="col-sm-6">
								<input type="text" name="durasi" id="durasi" class="form-control" placeholder="Durasi Pelaksanaan (dalam bulan)" value="<?php echo $usulan->durasi; ?>">
							</div>
							<label for="durasi" class="col-sm-3">Bulan</label>
						</div>
						
						<div class="form-group">
							<label for="id_donor" class="col-sm-3 control-label">Indikasi Donor</label>
							<div class="col-sm-9">
								<select id="id_donor" name="id_donor" class="form-control">
									<?php 
										$query 	= $this->hibah_model->ambil_donor_by_id($usulan->id_donor); 
										foreach ($query as $key) 
										{
									?>
										<option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
									<?php } ?>
									<?php foreach($donor as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="id_mata_uang" class="col-sm-3 control-label">Mata Uang</label>
							<div class="col-sm-9">
								<select id="id_mata_uang" name="id_mata_uang" class="form-control">
									<?php 
										$query 	= $this->hibah_model->ambil_mata_uang_by_id($usulan->id_mata_uang); 
										foreach ($query as $key) 
										{
									?>
										<option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
									<?php } ?>
									<?php foreach($mata_uang as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="nilai_hibah" class="col-sm-3 control-label">Hibah</label>
							<div class="col-sm-9">
								<input type="text" name="nilai_hibah" id="nilai_hibah" class="form-control" placeholder="Nilai Hibah" value="<?php echo $usulan->nilai_hibah; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="nilai_dp" class="col-sm-3 control-label">Pendamping Dalam Negeri</label>
							<div class="col-sm-9">
								<input type="text" name="nilai_dp" id="nilai_dp" class="form-control" placeholder="Nilai Pendamping Dalam Negeri" value="<?php echo $usulan->nilai_dp; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="ringkasan" class="col-sm-3 control-label">Ringkasan</label>
							<div class="col-sm-9">
								<textarea name="ringkasan" id="ringkasan" class="col-sm-12" rows="5" placeholder="Ringkasan Proyek"><?php echo $usulan->ringkasan; ?></textarea>
							</div>
						</div>
						
						<input type="hidden" name="id" class="form-control" id="id" value="<?php  echo $usulan->id; ?>">
					</div>
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
		$("#id_instansi").select2({
			placeholder: "Pilih Instansi",
			width: "100%"
		});
		
		$("#id_instansi_eselon_satu").select2({
			placeholder: "Pilih Instansi Eselon I",
			width: "100%"
		});
		
		$("#id_donor").select2({
			placeholder: "Pilih Donor",
			width: "100%"
		});
		
		$("#id_mata_uang").select2({
			placeholder: "Pilih Mata Uang",
			width: "100%"
		});
		
		$("#id_jenis").select2({
			placeholder: "Pilih Tahun",
			width: "100%"
		});
		
		
		$('#id_instansi').change(function () {
            var selProv = $(this).val();
            console.log(selProv);
            $.ajax({
                url: "<?php echo base_url(); ?>sbsn/ambil_data_instansi_es_1_by_id_instansi/"+selProv,
                dataType: "json",
                success: function(data) {
                    $("#id_instansi_eselon_satu").empty();
                    $("#id_instansi_eselon_satu").append('<option value="">Pilih Instansi Eselon I</option>');
                    $(data).each(function(){
                        var option = $('<option />');
                        option.attr('value', this.id).text(this.nama);
                        $('#id_instansi_eselon_satu').append(option);
                    });
                }
            })
        });
		
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id						 	= $("#id").val();
			var id_instansi_eselon_satu 	= $("#id_instansi_eselon_satu").val();
			var id_jenis 					= $("#id_jenis").val();
			var id_donor 					= $("#id_donor").val();
			var judul_en 					= $("#judul_en").val();
			var judul_id 					= $("#judul_id").val();
			var durasi 						= $("#durasi").val();
			var id_mata_uang 				= $("#id_mata_uang").val();
			var nilai_hibah 				= $("#nilai_hibah").val();
			var nilai_dp 					= $("#nilai_dp").val();
			var ringkasan 					= $("#ringkasan").val();
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('id_instansi_eselon_satu', id_instansi_eselon_satu);
			form_data.append('id_donor', id_donor);
			form_data.append('id_jenis', id_jenis);
			form_data.append('judul_en', judul_en);
			form_data.append('judul_id', judul_id);
			form_data.append('durasi', durasi);
			form_data.append('id_mata_uang', id_mata_uang);
			form_data.append('nilai_hibah', nilai_hibah);
			form_data.append('nilai_dp', nilai_dp);
			form_data.append('ringkasan', ringkasan);


            $.ajax({
                url: '<?php echo base_url(); ?>hibah/usulan_simpan/edit',
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
