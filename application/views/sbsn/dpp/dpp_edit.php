<div class="modal inmodal fade" id="modalEdit" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Edit Proyek DPP SBSN</h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
				
					<div class="ibox-content">
						
						<div class="form-group">
							<label for="id_dpp" class="col-sm-2 control-label">DPP</label>
							<div class="col-sm-10">
								<select id="id_dpp" name="id_dpp" class="form-control">
									<?php 
										$query 	= $this->sbsn_model->ambil_dpp_by_id($dpp->id_dpp); 
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
							<label for="judul" class="col-sm-2 control-label">Proyek</label>
							<div class="col-sm-10">
								<input type="text" name="judul" id="judul" class="form-control" placeholder="Judul Proyek" value="<?php echo $dpp->judul; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="nilai" class="col-sm-2 control-label">Nilai</label>
							<div class="col-sm-10">
								<input type="text" name="nilai" id="nilai" class="form-control" placeholder="Nilai Proyek (Rp)" value="<?php echo $dpp->nilai; ?>">
							</div>
						</div>

					<!-- 	<div class="form-group">
							<label for="nilai" class="col-sm-2 control-label">Lokasi</label>
							<div class="col-sm-10">
							<select name="lokasi" id="lokasi" class="form-control" multiple>
                           
                                <?php $key = array($dpp->lokasi);
                                $a = array();
                                $a = explode(",", $detail->lokasi);
                              
                                 


                                foreach($lokasi as $row ){ ?>
                                <option value="<?php echo $row['id']; ?>" <?php echo in_array($row['id'] , $a) ? 'selected' : '' ?>><?php echo $row['nama']; ?>
                                 </option>
                                 <?php } ?>
                            </select>
								
							</div>
						</div>
 -->

						<div class="form-group">
							<label for="nilai" class="col-sm-2 control-label">Provinsi</label>
							<div class="col-sm-10">
							<select name="id_prov" id="id_prov" class="form-control" multiple>
                           
                                <?php $key = array($dpp->provinsi);
                                $a = array();
                                $a = explode(",", $dpp->id_prov);
                              
                                 


                                foreach($provinsi as $row ){ ?>
                                <option value="<?php echo $row['id']; ?>" <?php echo in_array($row['id'] , $a) ? 'selected' : '' ?>><?php echo $row['nama']; ?>
                                 </option>
                                 <?php } ?>
                            </select>
								
							</div>
						</div>


						<div class="form-group">
							<label for="nilai" class="col-sm-2 control-label">Kabupaten / Kota </label>
							<div class="col-sm-10">
							<select name="id_kabkota" id="id_kabkota" class="form-control" multiple>
                           
                                <?php $key = array($dpp->kabkota);
                                $a = array();
                                $a = explode(",", $dpp->id_kabkota);
                              
                                 


                                foreach($kabkota as $row ){ ?>
                                <option value="<?php echo $row['id']; ?>" <?php echo in_array($row['id'] , $a) ? 'selected' : '' ?>><?php echo $row['nama']; ?>
                                 </option>
                                 <?php } ?>
                            </select>
								
							</div>
						</div>

						<div class="form-group">
							<label for="nilai" class="col-sm-2 control-label">Kecamatan</label>
							<div class="col-sm-10">
							<select name="id_kabkota" id="kecamatan" class="form-control" multiple>
                           
                                <?php $key = array($dpp->id_kecamatan);
                                $a = array();
                                $a = explode(",", $dpp->id_kecamatan);
                              
                                 


                                foreach($kecamatan as $row ){ ?>
                                <option value="<?php echo $row['id']; ?>" <?php echo in_array($row['id'] , $a) ? 'selected' : '' ?>><?php echo $row['nama']; ?>
                                 </option>
                                 <?php } ?>
                            </select>
								
							</div>
						</div>
						
						
						<input type="hidden" name="id" class="form-control" id="id" value="<?php  echo $dpp->id; ?>">
						<input type="hidden" name="id_proyek" class="form-control" id="id_proyek" value="<?php  echo $dpp->id_proyek; ?>">
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
		
		$("#id_dpp").select2({
			placeholder: "Pilih Tahun Usulan",
			width: "100%"
		});

		$("#lokasi").select2({
			placeholder: "Pilih Lokasi Proyek",
			width: "100%",
			multiple:true,
            tags: true
		});

		$("#id_prov").select2({
			placeholder: "Pilih Lokasi Proyek Provinsi",
			width: "100%",
			multiple:true,
            tags: true
		});

		$("#kecamatan").select2({
			placeholder: "Pilih Lokasi Proyek Provinsi",
			width: "100%",
			multiple:true,
            tags: true
		});


		$("#id_kabkota").select2({
			placeholder: "Pilih Lokasi Proyek Kabupaten / Kota",
			width: "100%",
			multiple:true,
            tags: true
		});
		
		
		
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id			= $("#id").val();
			var id_proyek 	= $("#id_proyek").val();
			var id_dpp 		= $("#id_dpp").val();
			var judul 		= $("#judul").val();
			var nilai 		= $("#nilai").val();
			var lokasi 		= $("#lokasi").val();
			var id_prov 		= $("#id_prov").val();
			var id_kabkota 		= $("#id_kabkota").val();
			var id_kecamatan 		= $("#kecamatan").val();
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('id_proyek', id_proyek);
			form_data.append('id_dpp', id_dpp);
			form_data.append('judul', judul);
			form_data.append('nilai', nilai);
			form_data.append('lokasi', lokasi);
			form_data.append('id_prov', id_prov);
			form_data.append('id_kabkota', id_kabkota);
			form_data.append('id_kecamatan', id_kecamatan);


			console.log(id);
			console.log(id_proyek);


            $.ajax({
                url: '<?php echo base_url(); ?>sbsn/dpp_proyek_simpan/edit',
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
