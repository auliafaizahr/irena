<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Detail DRKH</h5>
				</div>
				<div class="ibox-content">
					<table class="table table-hover table-mail">
						<tbody>
							<tr class="read">
								<td class="mail-ontact text-right">Instansi</td>
								<td class="mail-subject"><?php echo $drkh->instansi; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Instansi Eselon I</td>
								<td class="mail-subject"><?php echo $drkh->instansi_eselon_satu; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">DRKH</td>
								<td class="mail-subject"><?php echo $drkh->jenis; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Judul (EN)</td>
								<td class="mail-subject"><?php echo $drkh->judul_en; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Judul (ID)</td>
								<td class="mail-subject"><?php echo $drkh->judul_id; ?></td>
							</tr>
							
							<tr class="read">
								<td class="mail-ontact text-right">Nilai Hibah</td>
								<td class="mail-subject"><?php echo $drkh->mata_uang_singkatan . ' '. number_format($drkh->nilai_hibah,2); ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Nilai DP</td>
								<td class="mail-subject"><?php echo $drkh->mata_uang_singkatan . ' '. number_format($drkh->nilai_hibah,2); ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Durasi</td>
								<td class="mail-subject"><?php echo $drkh->durasi; ?> bulan</td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Latar Belakang (EN)</td>
								<td class="mail-subject"><?php echo $drkh->latar_belakang_en; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Latar Belakang (ID)</td>
								<td class="mail-subject"><?php echo $drkh->latar_belakang_id; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Ruang Lingkup (EN)</td>
								<td class="mail-subject"><?php echo $drkh->ruang_lingkup_en; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Ruang Lingkup (ID)</td>
								<td class="mail-subject"><?php echo $drkh->ruang_lingkup_id; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Output (EN)</td>
								<td class="mail-subject"><?php echo $drkh->output_en; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Output (ID)</td>
								<td class="mail-subject"><?php echo $drkh->output_id; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Outcome (EN)</td>
								<td class="mail-subject"><?php echo $drkh->outcome_en; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Outcome (ID)</td>
								<td class="mail-subject"><?php echo $drkh->outcome_id; ?></td>
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
