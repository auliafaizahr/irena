<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-12">
		<h2>Donor</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini memberikan informasi terkait data donor.
			</li>
		</ol>
	</div>
</div>

<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
                    <h5>Data</h5>
					<div class="pull-right">
						<div class="btn-group">
							<button type="button" id="btnTambah" class="btn btn-xs btn-success" ><i class="fa fa-plus"></i> Tambah</button>
						</div>
					</div>
				</div>
				<div id="loader1" class="loader1" style='visibility: hidden;'></div>
				<div class="ibox-content" >
					<div  id="div_index">
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script src="<?php echo base_url(); ?>assets/inspinia/js/jquery-2.1.1.js"></script>

<script>
	
	function segarkan_data(){
		$.get("<?php echo base_url(); ?>data/donor_list", function(data) {
			$("#div_index").html(data);
		});
	}
	
	$(document).ready(function(){
		segarkan_data();
		
		//untuk hapus
		$('#btnTambah').click(function(){
			$.ajax({
				url: "<?php echo base_url(); ?>data/donor_tambah",
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