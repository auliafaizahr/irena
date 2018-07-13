<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="ibox">
        <div class="ibox-title">
          <center><h5>
          <?php $a = $id_lokasi; 
          echo $lokasi_nama; ?> </h5></center>
        </div>

        		<div id="loader1" class="loader1" style='visibility: hidden;'></div>
				     <ul class="nav nav-tabs tabs-up" id="friends">
                      <!--  <li><a href="#" id="contacts_tab" data-toggle="tab" rel="tooltip"> Contacts </a></li>
                       <li><a href="#" class="media_node span" id="friends_list_tab" data-toggle="tab" data-url="#" rel="tooltip"> Friends list</a></li> -->
                       <input type="hidden" name="id_lokasi" id="id_lokasi" class="form-control" value="<?php echo $id_lokasi; ?>"> 
                       
                       <li><a href="#target_1" class="media_node span" id="awaiting_request_tab" data-url="<?php echo base_url(); ?>usulan/tampilkan_dashboard_modal_map/<?php echo $a; ?>" data-toggle="tab" rel="tooltip">Dashboard</a></li>

                       <li><a href="#target_1" class="media_node span" id="awaiting_request_tab" data-url="<?php echo base_url(); ?>usulan/tampilkan_proyek_lokasi_tes_1/<?php echo $a; ?>" data-toggle="tab" rel="tooltip">Proyek PHLN </a></li>

                       <li><a href="#target_1" class="media_node span" id="friends_list_tab" data-url="<?php echo base_url(); ?>sbsn/tampilkan_proyek_lokasi/<?php echo $a; ?>" data-toggle="tab" rel="tooltip">Proyek SBSN</a></li>
                 </ul>

                 <div class="tab-content">
                      <div class="tab-panel panel-default  active" id="contacts">
                      		
                       </div>

                       <div class="active " id="target_1">
	                       	<!-- <div class="ibox-content" >
						
							</div> -->
                       </div>
                       <div class="tab-panel " id="target_1">

                       		<!-- <center><h5>Proyek PHLN</h5></center>
				
								<div  id="div_index">
								</div>
								<input type="hidden" name="id_lokasi" id="id_lokasi" class="form-control" value="<?php echo $id_lokasi; ?>"> -->

                       </div>
                       <div class="tab-panel panel-default  urlbox span8" id="target_1">
                     	
		                       <!-- 	<center><h5>Proyek SBSN</h5></center>
		                       	
		                       	<div  id="div_index_5">
		                       	</div>
		                       	<input type="hidden" name="id_lokasi2" id="id_lokasi2" class="form-control" value="<?php echo $id_lokasi; ?>"> -->
                       </div>
                </div>
				

        	<div id="loader1" class="loader1" style='visibility: hidden;'></div>
				<div class="ibox-content" >
					
				

					


					
				</div>
			

			<div id="loader1" class="loader1" style='visibility: hidden;'></div>
				
			
			<div class="modal-footer">                  
			   
			    <button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
			</div>
		</div>
		
	</div>
</div>



<div id="tmpModal5"></div>



<script>
	function detail(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			beforeSend: function(){
				
				showLoading();
				$('#loader').fadeOut(1000);
			},
			success:function(response){

				$("#tmpModal").html(response);
				$('#modalDetail').modal('show');
			},
			dataType:"html"});
		return false;
	}
	
	function showLoading2(){
		document.getElementById("loader1").style = "visibility: visible";
		$('#loader1').fadeOut(1000);
	}
	
	function segarkan_data(){
		var id = $("#id_lokasi").val(); 
		console.log(id);
		$.get("<?php echo base_url(); ?>usulan/tampilkan_proyek_lokasi_tes/"+id, function(data) {
			$("#div_index").html(data);
		});
	}

	 $('#friends a').click(function(e) {
      e.preventDefault();
        var $this = $(this),
            loadurl = $this.data('url'),
            targ = $this.attr('href');
            id = $this.attr('id');

        $.get(loadurl, function(data) {
          //console.log(data)
            $(targ).html(data);
        });

        $this.tab("show");
        return false;
    });

	

	function segarkan_data5(){
		var id = $("#id_lokasi2").val(); 
		console.log(id);
		$.get("<?php echo base_url(); ?>sbsn/tampilkan_proyek_lokasi/"+id, function(data) {
			$("#div_index_5").html(data);
		});
	}

	
	$(document).ready(function(){
		//segarkan_data();
		/*segarkan_data2();
		segarkan_data3();
		segarkan_data4();*/
		//segarkan_data5();
		
		$('#btnDetil').click(function(){
			$.ajax({
				url: "<?php echo base_url(); ?>arsip/detil",
				beforeSend: function(){
					showLoading();
					$('#loader').fadeOut(1000);
				},
				success:function(response){
					alert('osk');
					//$("#tmpModal").html(response);
					//$('#modalTambah').modal('show');
				},
				dataType:"html"});
			return false;
		});
		
		//untuk hapus
		$('#btnTambah').click(function(){
			$.ajax({
				url: "<?php echo base_url(); ?>sbsn/tampilkan_usulan_form_tambah",
				beforeSend: function(){
					//notif();
					showLoading();
				},
				success:function(response){
					$("#tmpModal").html(response);
					$('#modalTambah').modal('show');
				},
				dataType:"html"});
			return false;
		});
 
	});
</script> 