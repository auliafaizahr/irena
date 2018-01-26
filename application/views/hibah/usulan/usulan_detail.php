
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
								<td class="mail-ontact text-right">Judul EN</td>
								<td class="mail-subject"><?php echo $usulan->judul_en; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Judul ID</td>
								<td class="mail-subject"><?php echo $usulan->judul_id; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Durasi</td>
								<td class="mail-subject"><?php echo $usulan->durasi. " bulan"; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Donor</td>
								<td class="mail-subject"><?php echo $usulan->donor; ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Nilai Hibah</td>
								<td class="mail-subject"><?php echo $usulan->mata_uang_singkatan. " ". number_format($usulan->nilai_hibah,2); ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Nilai Dana Pendamping</td>
								<td class="mail-subject"><?php echo $usulan->mata_uang_singkatan. " ". number_format($usulan->nilai_dp,2); ?></td>
							</tr>
							<tr class="read">
								<td class="mail-ontact text-right">Ringkasan</td>
								<td class="mail-subject"><?php echo $usulan->ringkasan; ?></td>
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
								<td class="mail-ontact text-right">Rekomendasi Masuk DRKH</td>
								<td class="mail-subject">
									<?php 
										if($usulan->masuk_drkh == FALSE || $usulan->masuk_drkh == '0'){
											echo "<p><span class='label label-danger'>Belum Direkomendasikan</span></p>";
										}else{
											echo "<p><span class='label label-primary'>Lengkap</span></p>";
										}
										$query	= $this->arsip_model->ambil_nama_user_by_id($usulan->masuk_drkh_id);
										$user	= $query->row();
										//echo $user->nama_panggilan;
										echo "<p><code>Penilaian dilakukan oleh ".$user->nama_panggilan.", tanggal ". date("d M'y h:i:s A", strtotime($usulan->masuk_drkh_date)) ."</code></p>";
										echo "<p><code>Keterangan : ".$usulan->masuk_drkh_ket."</code></p>";
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

