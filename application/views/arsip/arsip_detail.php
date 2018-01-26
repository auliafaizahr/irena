<div class="modal inmodal fade" id="modalDetail" tabindex="-1" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Detail Arsip</h5>
				</div>
				<div class="ibox-content">
					<?php foreach($arsip->result() as $row):?>
						<table class="table">
                            <tbody>
								<tr>
									<td class="col-sm-3">Jenis</td>
									<td class="col-sm-9"><?php echo $row->jenis; ?></td>
								</tr>
								<tr>
									<td class="col-sm-2">Tingkat</td>
									<td class="col-sm-10"><?php echo $row->tingkat; ?></td>
								</tr>
								<tr>
									<td class="col-sm-2">Nomor</td>
									<td class="col-sm-10"><?php echo $row->no; ?></td>
								</tr>
								<tr>
									<td class="col-sm-2">Perihal</td>
									<td class="col-sm-10"><?php echo $row->perihal; ?></td>
								</tr>
								<tr>
									<td class="col-sm-2">Dari</td>
									<td class="col-sm-10"><?php echo $row->dari; ?></td>
								</tr>
								<tr>
									<td class="col-sm-3">Tanggal Surat</td>
									<td class="col-sm-9"><?php echo date("d F Y", strtotime($row->tgl)); ?></td>
								</tr>
								<tr>
									<td class="col-sm-3">Tanggal Terima</td>
									<td class="col-sm-9"><?php echo date("d F Y", strtotime($row->tgl_terima)); ?></td>
								</tr>
								<tr>
									<td class="col-sm-3">Ringkasan</td>
									<td class="col-sm-9"><?php echo $row->ringkasan; ?></td>
								</tr>
								<tr>
									<td class="col-sm-3">Keyword</td>
									<td class="col-sm-9"><?php echo $row->keyword; ?></td>
								</tr>
								<tr>
									<td class="col-sm-3">File</td>
									<td class="col-sm-9"><a href="<?php echo base_url(); ?>uploads/arsip/<?php echo $row->jenis; ?>/<?php echo $row->berkas; ?>" target="_blank" class="btn btn-info btn-xs" type="button"><i class="fa fa-download"></i></a></td>
								</tr>
								<tr>
									<td class="col-sm-2">Didisposisikan kepada</td>
									<td class="col-sm-10">
										<?php 
											if($disposisi_internal->num_rows() == 0){
												echo "<span class='label label-danger'>Belum didisposisikan kepada Staf</span>";
											}else{
												foreach($disposisi_internal->result() as $baris) :
													echo '<span class="label label-warning">'.$baris->nama_panggilan.'</span> ';
													
												endforeach;
											}
										?><hr class="hr-line-dashed">
										<?php 
											if($disposisi_aksi->num_rows() == 0){
												echo "<span class='label label-danger'>Belum Ada Arahan Direktur.</span>";
											}else{
												foreach($disposisi_aksi->result() as $baris) :
													echo '<span class="label label-primary">'.$baris->aksi_nama.'</span> ';
													
												endforeach;
											}
										?>
										
									</td>
								</tr>
								<tr>
									<td class="col-sm-2">Status</td>
									<td class="col-sm-10">
										<span class="<?php echo $row->class; ?>"><?php echo $row->status; ?></span>
										<?php 
											if($row->status == "Selesai"){ 
												if($row->selesai_by == NULL){
													echo "<br /><code>Diselesaikan oleh Tim Sekretariat.</code>";
												}else{
										?>
													<br /><code>Oleh: <?php 
													$query				= $this->arsip_model->ambil_nama_user_by_id($row->selesai_by);
													$user	= $query->row();
													echo $user->nama_panggilan;
													 ?></code>
													<br /><code>Tanggal: <?php echo date("d M'y h:i:s A", strtotime($row->selesai_date));  ?></code>
													<br /><code>Catatan: <?php echo $row->selesai_cat; ?></code>
										<?php 	
												} 
											}
										?>
									</td>
								</tr>
							</tbody>
						</table>
					<?php endforeach; ?>
				</div>
				<div class="ibox-title">
					<h5>Lampiran</h5>
				</div>
				<div class="ibox-content">
					<table class="table table-stripped">
						<thead>
							<tr>
								<th>Nama</th>
								<th>Keterangan</th>
								<th>File</th>
							</tr>
						</thead>
						<tbody>
							<?php 
								$no=0;
								if($lampiran == TRUE){
								foreach($lampiran->result() as $row):
								$no++;
							?>
								<tr>
									<td><?php echo $row->nama; ?></td>
									<td><?php echo $row->keterangan; ?></td>
									<td><a href="<?php echo base_url(); ?>uploads/arsip/lampiran/<?php echo $row->berkas; ?>" target="_blank" class="btn btn-info btn-xs" type="button"><i class="fa fa-download"></i></a>
								</tr>
								<?php endforeach; } ?>
						</tbody>
					</table>
				</div>
				<div class="ibox-title">
					<h5>Disposisi</h5>
				</div>
				<div class="ibox-content">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Nama</th>
								<th>Nomor</th>
								<th>Catatan</th>
								<th>File</th>
							</tr>
						</thead>
						<tbody>
							<?php 
								$no=0;
								if($disposisi == TRUE){
								foreach($disposisi->result() as $row):
								$no++;
							?>
								<tr>
									<td><?php echo $row->jenis; ?></td>
									<td><?php echo $row->nomor; ?></a></td>
									<td><?php echo $row->catatan; ?></td>
									<td><a href="<?php echo base_url(); ?>uploads/arsip/disposisi/<?php echo $row->berkas; ?>" target="_blank" class="btn btn-info btn-xs" type="button"><i class="fa fa-download"></i></a></td>
								</tr>
								<?php endforeach; } ?>
						</tbody>
					</table>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
			</div>
		</div>
	</div>		
</div>


	