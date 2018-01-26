<div class="modal inmodal fade" id="modal_cat"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog "> <!-- modal-lg -->
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Catatan</h5>
				</div>
				
					<div class="ibox-content">
						<div class="form-group ">
						<?php foreach ($isi as $key => $value) { ?>
							
						
							<div class="col-sm-12 ">
								<div class=" alert alert-success">
								<p><?php echo $value->waktu; ?> </br>
								Staff, pada </br>


									<?php echo $value->catatan; ?>
								</p>
								</div>
							</div>
							<?php }; ?>


							
						</div><hr />

						
						<div class="form-group isi">
						
							
						
							<div class="col-sm-12 ini_isi">
								<div class=" coba_isi">
								
								
								</div>
							</div>
						


							
						</div><hr />


						
					
				<form class="form-horizontal" id="htmlForm" method="post" enctype="multipart/form-data"> 
						<div class="form-group">
                            <label for="catatan" class="col-sm-4 control-label">Tambah Catatan</label>
                           

                        </div>
                        <div class="form-group">
                           
                            <div class="col-sm-12">
                               

                                <textarea name="catatan" id="catatan" class="col-sm-12 pull-right" rows="5" ></textarea>
                                <button type="submit" id="tblTambah" class="btn btn-primary pull-right">Tambah</button>
                            </div>

                        </div>
                       
						
						<input type="hidden" name="id" id="id" class="form-control" value="<?php echo $id; ?>">
						<input type="hidden" name="waktu" id="waktu" class="form-control" value="<?php echo date("Y-m-d H:i:s"); ?>">
					</div>
					<div class="modal-footer">					
						
						<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>


				
<script>
    $(document).ready(function(){
		


		$("#is_lengkap").select2({
            placeholder: "Pilih Hasil Penilaian",
            width: "100%"
        });

		//var id = $(t)

	function fresh() {
		location.reload();
	}

	function segar() {
		$.get("<?php echo base_url(); ?>Usulan/catatan", function(data) {
			$(".isi").html(data);
		});
	}
		
		 
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id					= $("#id").val();
			var waktu					= $("#waktu").val();
			
			var is_lengkap 			= $("#is_lengkap").val();
			var catatan 			= $("#catatan").val();
			var id_usulan 			= $("#id").val();
				console.log(id);
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			
			form_data.append('catatan', catatan);
			form_data.append('id_usulan', id);
			form_data.append('waktu', waktu);

			var data = {};
			console.log(id);
            $.ajax({
            	 type: 'POST',
                url: '<?php echo base_url(); ?>Usulan/tambah_catatan',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
               


                success: function(data){
                		console.log("wqwq");
						//$('#modal_cat').modal('hide');
						//segar();
						alert(data);
						console.log(data);
						//var a = json.parse(data);
						//console.log(a);
						$("<div class='alert alert-success'> <p>" + waktu + "<br/>"+ catatan +"</p> </div>").appendTo(".ini_isi");  
						notif("Informasi", "Data berhasil disimpan.");



                   /* if (response.success == true) {
                    	
						
					}
					else {
						$.each(response.messages, function(key, value) {
							var element = $('#' + key);
							
							element.closest('div.form-group')
							.removeClass('has-error')
							.addClass(value.length > 0 ? 'has-error' : 'has-success')
							.find('.text-danger')
							.remove();
							console.log("huhu");

							element.after(value);
						});
					}*/


                }


            });
		});
	});
</script>

