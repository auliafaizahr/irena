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
							<label for="id_instansi" class="col-sm-2 control-label">Instansi</label>
							<div class="col-sm-10">
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
							<label for="id_instansi_eselon_satu" class="col-sm-2 control-label">Instansi Eselon I</label>
							<div class="col-sm-10">
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
							<label for="id_dpp" class="col-sm-2 control-label">Tahun Usulan</label>
							<div class="col-sm-10">
								<select id="id_dpp" name="id_dpp" class="form-control">
									<?php 
										$query 	= $this->sbsn_model->ambil_dpp_by_id($usulan->id_dpp); 
										foreach ($query as $key) 
										{
									?>
										<option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
									<?php } ?>
									<?php foreach($dpp as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="id_kategori_proyek" class="col-sm-2 control-label">Kategori</label>
							<div class="col-sm-10">
								<select id="id_kategori_proyek" name="id_kategori_proyek" class="form-control" onclick='test()'>
									<?php 
										$query 	= $this->sbsn_model->ambil_kategori_proyek_by_id($usulan->id_kategori_proyek); 
										foreach ($query as $key) 
										{
									?>
										<option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
									<?php } ?>
									<?php foreach($kat_pro as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>


						
						<div class="form-group">
							<label for="judul" class="col-sm-2 control-label">Proyek</label>
							<div class="col-sm-10">
								<input type="text" name="judul" id="judul" class="form-control" placeholder="Judul Proyek" value="<?php echo $usulan->judul; ?>">
							</div>
						</div>

						 <div class="form-group">
                            <label for="lokasi" class="col-sm-2 control-label">Lokasi </label>
                            <div class="col-sm-10">
                                <select name="lokasi" id="lokasi" class="form-control" multiple>
                           
                                <?php $key = array($usulan->lokasi);
                                $a = array();
                                $a = explode(",", $usulan->lokasi);
                                $key2 = array("1", "2", "4", "3");
                                 


                                foreach($lokasi as $row ){ ?>
                                <option value="<?php echo $row['id']; ?>" <?php echo in_array($row['id'] , $a) ? 'selected' : '' ?>><?php echo $row['nama']; ?>
                                 </option>
                                 <?php } ?>
                                 </select>
                            </div>
                        </div>


                          <div class="form-group">
                            <label for="provinsi" class="col-sm-2 control-label">Provinsi </label>
                            <div class="col-sm-9">
                                <select name="provinsi" id="provinsi" class="form-control" multiple>
                           
                                <?php $key = array($detail->id_provinsi);
                                $a = array();
                                $a = explode(",", $detail->id_provinsi);
                                $key2 = array("1", "2", "4", "3");
                                 


                                foreach($provinsi as $row ){ ?>
                                <option value="<?php echo $row['id']; ?>" <?php echo in_array($row['id'] , $a) ? 'selected' : '' ?>><?php echo $row['nama']; ?>
                                 </option>
                                 <?php } ?>
                                 </select>
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="kabkota" class="col-sm-2 control-label">Kabupaten / Kota </label>
                            <div class="col-sm-9">
                                <select name="kabkota" id="kabkota" class="form-control" multiple>
                           
                                <?php $key = array($detail->kabkota);
                                $a = array();
                                $a = explode(",", $detail->kabkota);
                                $key2 = array("1", "2", "4", "3");
                                 


                                foreach($kabkota as $row ){ ?>
                                <option value="<?php echo $row['id']; ?>" <?php echo in_array($row['id'] , $a) ? 'selected' : '' ?>><?php echo $row['nama']; ?>
                                 </option>
                                 <?php } ?>
                                 </select>
                            </div>
                        </div>

                       <!--  <div class="form-group">
                            <label for="kabkota" class="col-sm-2 control-label">Poin </label>
                            <div class="col-sm-9">
                              <select name="kabkota" id="e10" class="form-control" >
                              </select>
                            </div>
                        </div> -->

                         <div class="form-group timesheet_2-rows" >
                        <fieldset id="timesheet-rows">
                            

                            <div class="timesheet-row">

                              
                                <label class="col-sm-2 control-label" >Poin :    </label>
                                <div class="col-sm-9">
                                    <select name="poin_kabkota[]"   class="poin_kabkota"  required>

                                   <?php foreach($kabkota as $row ){ ?>
                                    <option value="<?php echo $row['id']; ?>" <?php echo in_array($row['id'] , $a) ? 'selected' : '' ?>><?php echo $row['nama']; ?>
                                     </option>
                                     <?php } ?>
                                    </select>
                                </div>
                             

								                            

                            </div>
                             <input  type="button" id="add-row" name="add-row" value="Add row" />    

                           
                        </fieldset>
                        </div>

                        
						
						<div class="form-group">
							<label for="nilai" class="col-sm-2 control-label">Nilai</label>
							<div class="col-sm-10">
								<input type="text" name="nilai" id="nilai" class="form-control" placeholder="Nilai Proyek (Rp)" value="<?php echo $usulan->nilai; ?>">
							</div>
						</div>
						
						<div class="form-group">
							<label for="single_multi" class="col-sm-2 control-label">Pelaksanaan Proyek</label>
							<div class="col-sm-10">
								<select id="single_multi" name="single_multi" class="form-control">
									<?php  	if($usulan->single_multi == "0"){
												echo "<option value='.$usulan->single_multi.'>Kontrak Tahun Tunggal (Single Year Contract/SYC)</option>";
											}else{
												echo "<option value='. $usulan->single_multi .'>Kontrak Tahun Jamak (Multi Years Contract/MYC)</option>";
											}
									?>
									<option value="0">Kontrak Tahun Tunggal (Single Year Contract/SYC)</option>
									<option value="1">Kontrak Tahun Jamak (Multi Years Contract/MYC)</option>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="output" class="col-sm-2 control-label">Output</label>
							<div class="col-sm-10">
								<textarea name="output" id="output" class="col-sm-12" rows="5" placeholder="Output Proyek"><?php echo $usulan->output; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="latar_belakang" class="col-sm-2 control-label">Latar Belakang</label>
							<div class="col-sm-10">
								<textarea name="latar_belakang" id="latar_belakang" class="col-sm-12" rows="5" placeholder="Latar Belakang Proyek" ><?php echo $usulan->latar_belakang; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="tujuan" class="col-sm-2 control-label">Tujuan</label>
							<div class="col-sm-10">
								<textarea name="tujuan" id="tujuan" class="col-sm-12" rows="5" placeholder="Tujuan Proyek" ><?php echo $usulan->tujuan; ?></textarea>
							</div>
						</div>
						
						<div class="form-group">
							<label for="ruang_lingkup" class="col-sm-2 control-label">Ruang Lingkup</label>
							<div class="col-sm-10">
								<textarea name="ruang_lingkup" id="ruang_lingkup" class="col-sm-12" rows="5" placeholder="Ruang Lingkup Proyek" ><?php echo $usulan->ruang_lingkup; ?></textarea>
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
		
		$("#id_dpp").select2({
			placeholder: "Pilih Tahun Usulan",
			width: "100%"
		});
		
		$("#id_kategori_proyek").select2({
			placeholder: "Pilih Kategori Proyek",
			width: "100%"
		});

		$("#lokasi").select2({
			placeholder: "Pilih Lokasi Proyek",
			width: "100%",
			multiple:true,
            tags: true
		});


          $("#provinsi").select2({
            placeholder: "Pilih Provinsi",
            multiple:true,
            width: "100%"
        });
        
          $("#kabkota").select2({
            placeholder: "Pilih Kabupaten / Kota",
            multiple:true,
            width: "100%"
        });

         $(".poin_kabkota").select2({
            placeholder: "Pilih Kabupaten / Kota",
           
            width: "100%"
        });


        jQuery(function($){
            var $button = $('#add-row'),
                $row = $('.timesheet-row').clone(),
                $row_2 = $('.timesheet-row');

        	

             var $test = '<div><a href="#" class="remove_field">Remove</a></div>'; 
               // $tombol_hapus = "<div><a href="#" class="remove_field">Remove</a></div>";

            $button.click(function(){
            	var $tambah =  $row.clone().append('<div><a href="#" class="remove_field">Remove</a></div>').insertAfter( $button );
            	
          	//var $tambah =  $row.append('<div><a href="#" class="remove_field">Remove</a></div>').insertAfter( $button ).clone();
          		$tambah.clone();
          	// $row.clone().insertAfter( $button ).append('<div><a href="#" class="remove_field">Remove</a></div>');
                //$row_2.insertBefore( $button ).append('<div><a href="#" class="remove_field">Remove</a></div>');
                //$row.append($test);
              
                $(".poin_kabkota").select2({
                	                placeholder: "Pilih Kabupaten / Kota",
                	               
                	                width: "100%"
               	});
               	$(".poin_kabkota").last().next().next().remove();


            });
        });


       function tambah_poin_kabkota(argument) {
       	// body...
       }

 
		 function test() {
		    if (document.getElementById('id_kategori_proyek').value == 6) {
		        document.getElementById('second_child').style.display = 'block';
		    } else {
		        document.getElementById('second_child').style.display = 'none';
		    }
		}
		
		
		
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

			var isi_data	= $('#htmlForm').serialize();
			//var coba_isi_data	= JSON.parse(isi_data);
			
			var id						 	= $("#id").val();
			var id_instansi_eselon_satu 	= $("#id_instansi_eselon_satu").val();
			var id_dpp 						= $("#id_dpp").val();
			var id_kategori_proyek 			= $("#id_kategori_proyek").val();
			var judul 						= $("#judul").val();
			var nilai 						= $("#nilai").val();
			var single_multi 				= $("#single_multi").val();
			var output 						= $("#output").val();
			var latar_belakang 				= $("#latar_belakang").val();
			var tujuan 						= $("#tujuan").val();
			var ruang_lingkup 				= $("#ruang_lingkup").val();
			var lokasi 						= $("#lokasi").val();
			//var id_instansi 						= $("#id_instansi").val();
			var id_provinsi                 = $("#provinsi").val();
            var id_kabkota                  = $("#kabkota").val();
            var poin_kabkota                =  $(".poin_kabkota").serializeArray();
            var panjang						= poin_kabkota.length;
            //var arr_poin 					= JSON.stringify(poin_kabkota[0].value);
            //var ambil_value_saja			= arr_poin[value];
            //buat tampungan untuk looping arr_poin

            var poin_urut = new Array();

            for(var i = 0; i<panjang; i++){
            	console.log(JSON.stringify(poin_kabkota[i].value));
            	poin_urut[i] = poin_kabkota[i].value;

            }

            console.log(poin_urut);
            var poin_pakai 		= poin_urut.toString();


			console.log(poin_kabkota);
			console.log(poin_pakai);
			console.log(panjang);
			//console.log(arr_poin);
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('id_instansi_eselon_satu', id_instansi_eselon_satu);
			form_data.append('id_dpp', id_dpp);
			form_data.append('id_kategori_proyek', id_kategori_proyek);
			form_data.append('judul', judul);
			form_data.append('nilai', nilai);
			form_data.append('single_multi', single_multi);
			form_data.append('output', output);
			form_data.append('latar_belakang', latar_belakang);
			form_data.append('tujuan', tujuan);
			form_data.append('ruang_lingkup', ruang_lingkup);
			form_data.append('lokasi', lokasi);
			//form_data.append('id_instansi', id_instansi);
			form_data.append('id_provinsi', id_provinsi);
            form_data.append('id_kabkota', id_kabkota);
            form_data.append('poin_kabkota', poin_pakai);

            console.log(isi_data);



            $.ajax({
                url: '<?php echo base_url(); ?>sbsn/usulan_simpan/edit',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
						$('#modalEdit').modal('hide');
						//console.log(data);
						//console.log(form_data);
						//console.log(response);
						segarkan_data();
						notif("Informasi", "Data berhasil disimpan.");
					}
					else {
						$.each(response.messages, function(key, value) {
							var element = $('#' + key);
							//console.log(data);
							//console.log(response);
							//console.log(error);

							
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
