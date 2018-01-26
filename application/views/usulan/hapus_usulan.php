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
			$.ajax({
				url: "<?php echo base_url(); ?>usulan/fix_usulan_hapus",
				type: "POST",
				data: $('#htmlForm').serialize(),
				success:function(html){
					$('#modalHapus').modal('hide');
					refresh_data();
					notif("Informasi", "Data berhasil dihapus.");
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