
	<div class="row">
		
		
		<div class="col-lg-12">
			
				<div class="ibox-title">
					<h5>Sebaran Proyek Daftar Kegiatan Berdasarkan Lokasi</h5>
					<div class="ibox-tools">
						
					</div>
				</div>
				<div class="ibox-content css-animation-box" >
					<?php echo $peta_2['js']; ?>
					<?php echo $peta_2['html']; ?>
				</div>
				
			
			
		</div>
		
	</div>

	

	</div>


<script>

	function bukaDetailBB(id_lokasi) {
        	
        	$.ajax({
        	                  type : 'post',
        	                  url : "<?php echo base_url(); ?>Bluebook/detail_map",
        	                  data :  'id='+ id_lokasi,
        	                   success : function(response){
        	          
        	                  $("#tmpModal").html(response);
        	                   $('#modalDetail').modal('show');
        	                                  
        	                              
        	                   },
        	                  dataType:"html"
        	});
        }
</script>

