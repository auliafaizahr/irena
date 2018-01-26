
<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Detail DPP</h5>
				</div>
				<div class="ibox-content">
					<table class="table table-hover table-mail">
						<tbody>
							<tr class="read">
								<td class="mail-ontact text-right">Instansi</td>
								<td class="mail-subject"><?php echo $dpp->instansi; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Instansi Eselon I</td>
								<td class="mail-subject"><?php echo $dpp->instansi_eselon_satu; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">DRKH</td>
								<td class="mail-subject"><?php echo $dpp->dpp; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Kategori Proyek</td>
								<td class="mail-subject"><?php echo $dpp->kategori_proyek; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Proyek</td>
								<td class="mail-subject"><?php echo $dpp->judul; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Nilai</td>
								<td class="mail-subject">Rp.<?php echo number_format($dpp->nilai,2); ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Output</td>
								<td class="mail-subject"><?php echo $dpp->output; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Latar Belakang</td>
								<td class="mail-subject"><?php echo $dpp->latar_belakang; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Ruang Lingkup</td>
								<td class="mail-subject"><?php echo $dpp->ruang_lingkup; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Tujuan</td>
								<td class="mail-subject"><?php echo $dpp->tujuan; ?></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">					
					<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
				</div>
			</div>
		</div>
		
	</div>
</div>


<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">Detail Usulan</h4>
			</div>
			
				
			
		</div>
	</div>
</div>


<script>
    $(document).ready(function(){
		$("#select_instansi").select2({
			placeholder: "Pilih Instansi",
			width: "100%"
		});
		
		$("#select_tahun").select2({
			placeholder: "Pilih Tahun Usulan",
			width: "100%"
		});


		$('#tblSimpan').click(function(){
			$.ajax({
				url: "<?php echo base_url(); ?>sbsn/usulan_simpan/edit",
				type: "POST",
				data: $('#htmlForm').serialize(),
				success:function(html){
					$('#modalEdit').modal('hide');
					segarkan_data();
					notif("Informasi", "Data berhasil disimpan.");

				},
				error: function(){
					alert('Error Updating!');
				}
				
			});
		});
		
	});
</script>

