<div class="modal inmodal fade" id="modalDisposisi" tabindex="-1" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Disposisi</h5>
					<div class="pull-right">
						<div class="btn-group">
							<button type="button" id="btnTambah" class="btn btn-xs btn-success" >Tambah</button>
						</div>
					</div>
				</div>
				<div class="ibox-content">
					<div  id="tabel_lampiran">
					</div>
				</div>
			</div>
			<!-- 
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>

				<h5 class="modal-title">Lampiran <br> Arsip Nomor <?php //echo $arsip->no; ?> tanggal <?php //echo $arsip->tgl; ?></h5>
				<div class="btn-group">
					<button type="button" id="btnTambah" class="btn btn-xs btn-success" >Tambah</button>
				</div>
			</div>
			
			<div class="modal-body">
				<div  id="tabel_lampiran">
				</div>
			</div>-->
			<div class="modal-footer">
				<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
			</div>
		</div>
	</div>		
</div>
<div id="tmpModal2"></div>
<script>
	$(document).ready(function(){
		segarkan_disposisi();
		
		$('#btnTambah').click(function(){
			$.ajax({
				url: "<?php echo base_url(); ?>arsip/disposisi_tambah/<?php echo $this->uri->segment(3); ?>",
				success:function(response){
					$("#tmpModal2").html(response);
					$('#modalTambah').modal('show');
				},
				dataType:"html"});
			return false;
		});
	});
	
	function segarkan_disposisi(){
		$.get("<?php echo base_url(); ?>arsip/tampilkan_data_disposisi_by_id_arsip/<?php echo $this->uri->segment(3); ?>", function(data) {
			$("#tabel_lampiran").html(data);
		});
	}
</script>

