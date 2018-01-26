<div class="modal inmodal fade" id="modalEdit" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Edit Proyek DRKH</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
				
					<div class="ibox-content">
						
						<div class="form-group">
							<label for="id_jenis" class="col-sm-3 control-label">DRKH</label>
							<div class="col-sm-9">
								<select id="id_jenis" name="id_jenis" class="form-control">
									<?php 
										$query 	= $this->hibah_model->ambil_jenis_by_id($drkh->id_jenis); 
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
							<label for="id_prioritas" class="col-sm-3 control-label">Prioritas</label>
							<div class="col-sm-9">
								<select id="id_prioritas" name="id_prioritas" class="form-control">
									<?php 
										$query 	= $this->hibah_model->ambil_prioritas_by_id($drkh->id_prioritas); 
										foreach ($query as $key) 
										{
									?>
										<option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
									<?php } ?>
									<?php foreach($prioritas as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="id_donor" class="col-sm-3 control-label">Donor</label>
							<div class="col-sm-9">
								<select id="id_donor" name="id_donor" class="form-control">
									<?php 
										$query 	= $this->hibah_model->ambil_donor_by_id($drkh->id_donor); 
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
							<label for="judul_en" class="col-sm-3 control-label">Judul (EN)</label>
							<div class="col-sm-9">
								<input type="text" name="judul_en" id="judul_en" class="form-control" placeholder="Judul Proyek Dalam Bahasa Inggris" value="<?php echo $drkh->judul_en; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="judul_id" class="col-sm-3 control-label">Judul (ID)</label>
							<div class="col-sm-9">
								<input type="text" name="judul_id" id="judul_id" class="form-control" placeholder="Judul Proyek Dalam Bahasa Indonesia" value="<?php echo $drkh->judul_id; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="id_mata_uang" class="col-sm-3 control-label">Mata Uang</label>
							<div class="col-sm-9">
								<select id="id_mata_uang" name="id_mata_uang" class="form-control">
									<?php 
										$query 	= $this->hibah_model->ambil_mata_uang_by_id($drkh->id_mata_uang); 
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
								<input type="text" name="nilai_hibah" id="nilai_hibah" class="form-control" placeholder="Nilai Hibah" value="<?php echo $drkh->nilai_hibah; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="nilai_dp" class="col-sm-3 control-label">Dana Pendamping</label>
							<div class="col-sm-9">
								<input type="text" name="nilai_dp" id="nilai_dp" class="form-control" placeholder="Nilai Dana Pendamping" value="<?php echo $drkh->nilai_dp; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="latar_belakang_en" class="col-sm-3 control-label">Latar Belakang (EN)</label>
							<div class="col-sm-9">
								<textarea name="latar_belakang_en" id="latar_belakang_en" class="col-sm-12" rows="5" placeholder="Latar Belakang dalam Bahasa Inggris"><?php echo $drkh->latar_belakang_en; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="latar_belakang_id" class="col-sm-3 control-label">Latar Belakang (ID)</label>
							<div class="col-sm-9">
								<textarea name="latar_belakang_id" id="latar_belakang_id" class="col-sm-12" rows="5" placeholder="Latar Belakang dalam Bahasa Indonesia"><?php echo $drkh->latar_belakang_id; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="ruang_lingkup_en" class="col-sm-3 control-label">Ruang Lingkup (EN)</label>
							<div class="col-sm-9">
								<textarea name="ruang_lingkup_en" id="ruang_lingkup_en" class="col-sm-12" rows="5" placeholder="Ruang Lingkup dalam Bahasa Inggris"><?php echo $drkh->ruang_lingkup_en; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="ruang_lingkup_id" class="col-sm-3 control-label">Ruang Lingkup (ID)</label>
							<div class="col-sm-9">
								<textarea name="ruang_lingkup_id" id="ruang_lingkup_id" class="col-sm-12" rows="5" placeholder="Ruang Lingkup dalam Bahasa Indonesia"><?php echo $drkh->ruang_lingkup_id; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="output_en" class="col-sm-3 control-label">Output (EN)</label>
							<div class="col-sm-9">
								<textarea name="output_en" id="output_en" class="col-sm-12" rows="5" placeholder="Output dalam Bahasa Inggris"><?php echo $drkh->output_en; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="output_id" class="col-sm-3 control-label">Output (ID)</label>
							<div class="col-sm-9">
								<textarea name="output_id" id="output_id" class="col-sm-12" rows="5" placeholder="Output dalam Bahasa Indonesia"><?php echo $drkh->output_id; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="outcome_en" class="col-sm-3 control-label">Outcome (EN)</label>
							<div class="col-sm-9">
								<textarea name="outcome_en" id="outcome_en" class="col-sm-12" rows="5" placeholder="Outcome dalam Bahasa Inggris"><?php echo $drkh->outcome_en; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="outcome_id" class="col-sm-3 control-label">Outcome (ID)</label>
							<div class="col-sm-9">
								<textarea name="outcome_id" id="outcome_id" class="col-sm-12" rows="5" placeholder="Outcome dalam Bahasa Indonesia"><?php echo $drkh->outcome_id; ?></textarea>
							</div>
						</div>
				
						<input type="hidden" name="id" class="form-control" id="id" value="<?php  echo $drkh->id; ?>">
						<input type="hidden" name="id_proyek" class="form-control" id="id_proyek" value="<?php  echo $drkh->id_proyek; ?>">
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
		$("#id_jenis").select2({
			placeholder: "Pilih DRKH",
			width: "100%"
		});
		
		$("#id_prioritas").select2({
			placeholder: "Pilih Prioritas RPJMN",
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
		
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id					= $("#id").val();
			var id_proyek 			= $("#id_proyek").val();
			var id_jenis 			= $("#id_jenis").val();
			var id_donor 			= $("#id_donor").val();
			var id_prioritas 		= $("#id_prioritas").val();
			var judul_en 			= $("#judul_en").val();
			var judul_id 			= $("#judul_id").val();
			var durasi 				= $("#durasi").val();
			var id_mata_uang 		= $("#id_mata_uang").val();
			var nilai_hibah 		= $("#nilai_hibah").val();
			var nilai_dp 			= $("#nilai_dp").val();
			var latar_belakang_en 	= $("#latar_belakang_en").val();
			var latar_belakang_id 	= $("#latar_belakang_id").val();
			var ruang_lingkup_en 	= $("#ruang_lingkup_en").val();
			var ruang_lingkup_id 	= $("#ruang_lingkup_id").val();
			var output_en 			= $("#output_en").val();
			var output_id 			= $("#output_id").val();
			var outcome_en 			= $("#outcome_en").val();
			var outcome_id 			= $("#outcome_id").val();
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('id_proyek', id_proyek);
			form_data.append('id_jenis', id_jenis);
			form_data.append('id_donor', id_donor);
			form_data.append('id_prioritas', id_prioritas);
			form_data.append('judul_en', judul_en);
			form_data.append('judul_id', judul_id);
			form_data.append('durasi', durasi);
			form_data.append('id_mata_uang', id_mata_uang);
			form_data.append('nilai_hibah', nilai_hibah);
			form_data.append('nilai_dp', nilai_dp);
			form_data.append('latar_belakang_en', latar_belakang_en);
			form_data.append('latar_belakang_id', latar_belakang_id);
			form_data.append('ruang_lingkup_en', ruang_lingkup_en);
			form_data.append('ruang_lingkup_id', ruang_lingkup_id);
			form_data.append('output_en', output_en);
			form_data.append('output_id', output_id);
			form_data.append('outcome_en', outcome_en);
			form_data.append('outcome_id', outcome_id);


            $.ajax({
                url: '<?php echo base_url(); ?>hibah/drkh_simpan/edit',
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
