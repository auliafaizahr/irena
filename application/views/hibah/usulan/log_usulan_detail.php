
<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Detail Log Usulan</h5>
				</div>
				<div class="ibox-content">
					

					<table class="table table-hover table-mail" style="border: 0;">
						<tbody>
							<tr class="read">
								<td class="mail-ontact text-right">Kategori</td>
								<td class="mail-subject"><?php echo $log_usulan->nama_proyek_dok_kategori; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Nama</td>
								<td class="mail-subject"><?php echo $log_usulan->nama; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Deskripsi</td>
								<td class="mail-subject"><?php echo $log_usulan->deskripsi; ?></td>
							</tr>
							<tr>
								<td class="mail-ontact text-right">Arsip</td>
								<td class="mail-subject"><a href="<?php echo base_url(); ?>uploads/arsip/<?php echo $log_usulan->folder; ?>/<?php echo $log_usulan->berkas; ?>" target="_blank" class="btn btn-xs btn-info" type="button"><i class="fa fa-download"></i></a></td>
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

<style>
	.modal { overflow: auto !important; }
</style>
