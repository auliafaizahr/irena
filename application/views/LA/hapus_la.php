<div id="modalHapus" class="modal fade" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">Confirm Delete</h4>
			</div>
			<div class="modal-body">
				Apakah Anda yakin untuk menghapus proyek <span class="text-danger"><strong><?php echo $detail->judul_proyek_id; ?></strong></span> ?
			</div>
			<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data"> 
				<input type="hidden" name="id" class="form-control" value="<?php echo $detail->id; ?>">
				<input type="hidden" name="id_usulan" class="form-control" value="<?php echo $detail->id_usulan; ?>">
				<input type="hidden" name="id_dk_proyek" class="form-control" value="<?php echo $detail->id_dk_proyek; ?>">
			</form>
			<div class="modal-footer">
				<button type="button" id="tblHapus" class="btn btn-danger">Hapus</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script>
    $(document).ready(function(){
		$('#tblHapus').click(function()
		{
			var id = $("#id").val();
			var id_usulan = $("#id_usulan").val();
			var id_dk_proyek = $("#id_dk_proyek").val();
			console.log(id);
			console.log(id_dk_proyek);
			$.ajax({
				url: "<?php echo base_url(); ?>loan_aggr/fix_usulan_hapus",
				type: "POST",
				data: $('#htmlForm').serialize(),
				success:function(html){

					$('#modalHapus').modal('hide');
					
					notif("Informasi", "Data berhasil dihapus.");
					fresh();
				},
				error: function(){
					alert('Error Updating!');
				}
				
			});
		});
		

		 function fresh() {
	      location.reload();
	    }

		$('#tblTutup').click(function(){
			//notif("ditutul", "tutupaja");
			$.ajax({
				url: "<?php echo base_url(); ?>arsip/shodata",
				beforeSend: function(){
					notif_bahaya("Data tak jadi disimpan loh", "tutupaja");
					//showLoading();
					showLoading2();
					//$('#loader').fadeOut(1000);
				},
				success:function(response){
					$("#tabel_arsip").html(response);
					//$('#tabel_arsip').html();
				},
				dataType:"html",
				error: function(){
					alert('gagal noh!');
				}
				
			});
			//alert('tak oke');
		});
	});
		
</script>