<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="ibox">
        <div class="ibox-title">
          <h5>Proyek  pada Lokasi 
          <?php $a = $id_lokasi; 
          echo $lokasi_nama; ?> </h5>
        </div>

        	<div id="loader1" class="loader1" style='visibility: hidden;'></div>
				<div class="ibox-content" >
					<center><h5>Proyek Bluebook</h5></center>
				
					<div  id="div_index">
					</div>
					<input type="hidden" name="id_lokasi" id="id_lokasi" class="form-control" value="<?php echo $id_lokasi; ?>">
				
					<center><h5>Proyek Greenbook</h5></center>
				
					<div  id="div_index_2">
					</div>
					<input type="hidden" name="id_lokasi2" id="id_lokasi2" class="form-control" value="<?php echo $id_lokasi; ?>">

					<center><h5>Proyek Daftar Kegiatan</h5></center>
				
					<div  id="div_index_3">
					</div>
					<input type="hidden" name="id_lokasi2" id="id_lokasi2" class="form-control" value="<?php echo $id_lokasi; ?>">

					<center><h5>Proyek Loan Agreement</h5></center>
				
					<div  id="div_index_4">
					</div>
					<input type="hidden" name="id_lokasi2" id="id_lokasi2" class="form-control" value="<?php echo $id_lokasi; ?>">

					<center><h5>Proyek SBSN</h5></center>
				
					<div  id="div_index_5">
					</div>
					<input type="hidden" name="id_lokasi2" id="id_lokasi2" class="form-control" value="<?php echo $id_lokasi; ?>">



					
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
		$.get("<?php echo base_url(); ?>bluebook/tampilkan_proyek_lokasi/"+id, function(data) {
			$("#div_index").html(data);
		});
	}

	function segarkan_data2(){
		var id = $("#id_lokasi2").val(); 
		console.log(id);
		$.get("<?php echo base_url(); ?>greenbook/tampilkan_proyek_lokasi/"+id, function(data) {
			$("#div_index_2").html(data);
		});
	}

	function segarkan_data3(){
		var id = $("#id_lokasi2").val(); 
		console.log(id);
		$.get("<?php echo base_url(); ?>daftar_kegiatan/tampilkan_proyek_lokasi/"+id, function(data) {
			$("#div_index_3").html(data);
		});
	}

	function segarkan_data4(){
		var id = $("#id_lokasi2").val(); 
		console.log(id);
		$.get("<?php echo base_url(); ?>loan_aggr/tampilkan_proyek_lokasi/"+id, function(data) {
			$("#div_index_4").html(data);
		});
	}

	function segarkan_data5(){
		var id = $("#id_lokasi2").val(); 
		console.log(id);
		$.get("<?php echo base_url(); ?>sbsn/tampilkan_proyek_lokasi/"+id, function(data) {
			$("#div_index_5").html(data);
		});
	}

	
	$(document).ready(function(){
		segarkan_data();
		segarkan_data2();
		segarkan_data3();
		segarkan_data4();
		segarkan_data5();
		
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