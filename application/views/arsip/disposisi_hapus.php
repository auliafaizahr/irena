<div id="modalHapus" class="modal fade" tabindex="-1" role="dialog">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title">Perhatian!</h4>
			</div>
			<div class="modal-body">
			Apakah Anda yakin untuk mengghapus disposisi ini ?
			</div>
			<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data"> 
				<input type="hidden" name="id" class="form-control" value="<?php echo $id; ?>">
			</form>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
				<button type="button" id="tblHapus" class="btn btn-danger">Hapus</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<script>
    $(document).ready(function(){
		$('#tblHapus').click(function()
		{
			$.ajax({
				url: "<?php echo base_url(); ?>arsip/disposisi_hapus_yakin",
				type: "POST",
				data: $('#htmlForm').serialize(),
				success:function(html){
					$('#modalHapus').modal('hide');
					segarkan_disposisi();
					notif("Informasi", "Data berhasil dihapus.");

				},
				error: function(){
					notif_bahaya();
				}
				
			});
		});

	});
		
</script>