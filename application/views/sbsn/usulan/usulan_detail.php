
<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Detail Usulan</h5>
				</div>
				<div class="ibox-content">
					<table class="table table-hover table-mail">
						<tbody>
							<tr class="read">
								<td class="mail-ontact text-right">Instansi</td>
								<td class="mail-subject"><?php echo $usulan->instansi; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Instansi Eselon I</td>
								<td class="mail-subject"><?php echo $usulan->instansi_eselon_satu; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Tahun Usulan</td>
								<td class="mail-subject"><?php echo $usulan->dpp; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Kategori Proyek</td>
								<td class="mail-subject"><?php echo $usulan->kategori_proyek; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Proyek</td>
								<td class="mail-subject"><?php echo $usulan->judul; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Nilai</td>
								<td class="mail-subject">Rp.<?php echo number_format($usulan->nilai,2); ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Pelaksanaan Proyek</td>
								<td class="mail-subject">
									<?php 
										if($usulan->single_multi == "0"){ 
											echo "<span class='label '>Kontrak Tahun Tunggal (Single Year Contract/SYC)</span>"; 
										}else{ 
											echo "<span class='label label-info'>Kontrak Tahun Jamak (Multi Years Contract/MYC)</span>"; 
										}   
									?>
								</td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Output</td>
								<td class="mail-subject"><?php echo nl2br($usulan->output); ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Latar Belakang</td>
								<td class="mail-subject"><?php echo $usulan->latar_belakang; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Tujuan</td>
								<td class="mail-subject"><?php echo $usulan->tujuan; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Ruang Lingkup</td>
								<td class="mail-subject"><?php echo $usulan->ruang_lingkup; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Penilaian Administrasi</td>
								<td class="mail-subject">
									<?php 
										if($usulan->nilai_admin == FALSE || $usulan->nilai_admin == '0'){
											echo "<p><span class='label label-danger'>Belum memenuhi kelengkapan</span></p>";
										}else{
											echo "<p><span class='label label-primary'>Lengkap</span></p>";
										}
										$query	= $this->arsip_model->ambil_nama_user_by_id($usulan->nilai_admin_id);
										$user	= $query->row();
										//echo $user->nama_panggilan;
										echo "<p><code>Penilaian dilakukan oleh ".$user->nama_panggilan.", tanggal ". date("d M'y h:i:s A", strtotime($usulan->nilai_admin_date)) ."</code></p>";
										echo "<p><code>Keterangan : ".$usulan->nilai_admin_ket."</code></p>";
									?>
								</td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Penilaian Kelayakan</td>
								<td class="mail-subject">
									<?php 
										if($usulan->nilai_layak == FALSE || $usulan->nilai_layak == '0'){
											echo "<p><span class='label label-danger'>Belum Direkomendasikan</span></p>";
										}else{
											echo "<p><span class='label label-primary'>Lengkap</span></p>";
										}
										$query	= $this->arsip_model->ambil_nama_user_by_id($usulan->nilai_layak_id);
										$user	= $query->row();
										//echo $user->nama_panggilan;
										echo "<p><code>Penilaian dilakukan oleh ".$user->nama_panggilan.", tanggal ". date("d M'y h:i:s A", strtotime($usulan->nilai_layak_date)) ."</code></p>";
										echo "<p><code>Keterangan : ".$usulan->nilai_layak_ket."</code></p>";
									?>
								</td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Rekomendasi Masuk DPP</td>
								<td class="mail-subject">
									<?php 
										if($usulan->masuk_dpp == FALSE || $usulan->masuk_dpp == '0'){
											echo "<p><span class='label label-danger'>Belum Direkomendasikan</span></p>";
										}else{
											echo "<p><span class='label label-primary'>Lengkap</span></p>";
										}
										$query	= $this->arsip_model->ambil_nama_user_by_id($usulan->masuk_dpp_id);
										$user	= $query->row();
										//echo $user->nama_panggilan;
										echo "<p><code>Penilaian dilakukan oleh ".$user->nama_panggilan.", tanggal ". date("d M'y h:i:s A", strtotime($usulan->masuk_dpp_date)) ."</code></p>";
										echo "<p><code>Keterangan : ".$usulan->masuk_dpp_ket."</code></p>";
									?>
								</td>
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

