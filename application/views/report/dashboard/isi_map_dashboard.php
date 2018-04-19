

				
					<?php echo $peta_2['js']; ?>
					<?php echo $peta_2['html']; ?>
			
			
			
		

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

