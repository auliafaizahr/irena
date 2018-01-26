<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-12">
		<h2>Dashboard</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini memberikan informasi sebaran lokasi proyek SBSN di seluruh Indonesia, rekapitulasi perencanaan dan perkembangan pelaksanaan proyek SBSN. 
			</li>
		</ol>
	</div>
	<div class="col-lg-2">

	</div>
</div>

<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-lg-3">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Filter</h5> <?php //var_dump( $this->db->last_query()); ?>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content">
					<form role="form" method="POST" action="<?php echo base_url(); ?>welcome/index" enctype="multipart/form-data">
						<div class="form-group">
							<label>DPP SBSN</label>
							<select class="form-control m-b" name="dpp_sbsn" id="dpp_sbsn">
								<option value="">Silahkan Pilih</option>
								<?php foreach($dpp_sbsn as $row){ ?>
									<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
								<?php } ?>
							</select>
						</div>
						<div class="form-group">
							<label>Instansi</label>
							<select class="form-control m-b" name="instansi" id="instansi">
								<option value="">Silahkan Pilih</option>
								<?php foreach($instansi as $row){ ?>
									<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
								<?php } ?>
							</select>
						</div>
						<div class="form-group">
							<label>Provinsi</label>
							<select class="form-control m-b" name="provinsi" id="provinsi">
								<option value="">Silahkan Pilih</option>
								<?php foreach($provinsi as $row){ ?>
									<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
								<?php } ?>
							</select>
						</div>
						<div class="form-group">
							<input class="btn btn-primary "  type="submit" id="filter" name="filter" value="Submit"/>
						</div>
					</form>
				</div>
			</div>
		</div>
		
		<div class="col-lg-9">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Sebaran Proyek Berdasarkan Lokasi</h5>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content css-animation-box">
					<?php echo $map['html']; ?>
				</div>
				
				<?php
					$this->db->select('sbsn_lokasi.id_kabkota as id_kabkota, sbsn_kabkota.nama as kabkota, sbsn_provinsi.nama as provinsi');
					$this->db->from('sbsn_lokasi');
					$this->db->join('sbsn_kabkota', 'sbsn_kabkota.id = sbsn_lokasi.id_kabkota');
					$this->db->join('sbsn_provinsi', 'sbsn_provinsi.id = sbsn_lokasi.id_provinsi');
					$query = $this->db->get();
					foreach($query->result() as $row):
				?>
						<div class="modal inmodal" id="myModal2<?php echo $row->id_kabkota; ?>" tabindex="-1" role="dialog" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content animated fadeIn">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Tutup</span></button>
										<h4 class="modal-title"><?php echo $row->kabkota; ?></h4>
										<small class="font-bold">Provinsi <?php echo $row->provinsi; ?></small>
									</div>
									<div class="modal-body">
										<div class="text-right">
											<small class="label label-primary"><i class="fa fa-exclamation-circle"></i> Nilai dalam Rupiah Miliar</small>
										</div>
										<div class="ibox-content">
											
											<div class="table-responsive">
												<table class="table table-striped">
													<thead>
														<tr>
															<th>#</th>
															<th class="text-center">Instansi </th>
															<th class="text-center">Alokasi</th>
															<th class="text-center">Status</th>
															<th class="text-center">Proyek</th>
															<th class="text-center">Pagu</th>
															<!-- <th class="text-center">Paket Kontrak</th> -->
															<th class="text-center">Penarikan Kumulatif</th>
															<th class="text-center">%</th>
														</tr>
													</thead>
													<tbody>
														<?php 
															$monev=$this->welcome_model->ambil_monev_per_idkabkota($row->id_kabkota);
															$no=0;
															foreach($monev->result() as $row):
															$no++;
														?>
															<tr>
																<td><?php echo $no; ?></td>
																<td><?php echo $row->instansi_singkatan; ?></td>
																<td class="text-center"><?php echo $row->alokasi; ?></td>
																<td class="text-center">
																	<?php
																		if($row->status=='Tutup'){
																			echo '<span class="label label-danger">';
																		}elseif($row->status=='Efektif'){
																			echo '<span class="label label-primary">';
																		}else{
																			echo '<span class="label label-warning">';
																		}
																		echo $row->status; 
																		echo '</span>';
																	?>
																		
																</td>
																<td>
																	<a href="<?php echo base_url(); ?>welcome/detil/<?php echo $row->id_proyek; ?>" target="_blank">
																	<?php echo $row->proyek; ?></a>
																</td>
																
																<td class="text-right">
																	<?php 
																		echo number_format($row->nilai/1000000000,1); 
																		$total_paket = $row->nilai;
																	?>
																</td>
																<!-- 
																<td class="text-right">
																	<?php 
																						
																		//$sql='SELECT SUM(nilai_paket_kontrak) as nilai_paket_kontrak FROM sbsn_paket_kontrak WHERE id_monev ='.$row->id_monev.'';
																		//$paket_kontrak=$this->db->query($sql);
																		//foreach ($paket_kontrak->result() as $baris):
																		//$total_paket = $baris->nilai_paket_kontrak;
																		//echo number_format($baris->nilai_paket_kontrak/1000000000,1); 
																		//endforeach;
																	?>
																</td>
																-->
																<td class="text-right">
																	<?php 
																						
																		$sql='SELECT SUM(nilai) as kum FROM sbsn_view_ambil_semua_penyerapan_per_id_monev WHERE id_monev ='.$row->id_monev.'';
																		$kum=$this->db->query($sql);
																		foreach ($kum->result() as $baris):
																			$total_kum=$baris->kum;
																			echo number_format($baris->kum/1000000000,1); 
																		endforeach;
																	?>
																</td>
																<td class="text-right" width="10%">
																	<?php
																		if($total_paket<>0){
																			$persen=($total_kum/$total_paket)*100;
																		}else{
																			$persen=0;
																		}
																		
																		if($persen<=50){
																			echo '<div class="stat-percent font-bold text-danger"><i class="fa fa-level-down"></i>';
																		}else{
																			echo '<div class="stat-percent font-bold text-navy "><i class="fa fa-level-up"></i>';
																		}
																		
																		echo number_format($persen,1); 
																		echo '</span></div>';
																	?>
																		
																</td>
															</tr>
														<?php endforeach; ?>
													</tbody>
												</table>
												<?php //endforeach; ?>
											</div>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
				<?php endforeach; ?>
				
				
				
			</div>

		</div>
	
	</div>	
		
	
	<div class="row">
		<div class="col-lg-6">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Perkembangan Pemanfaatan SBSN Berdasarkan DPP</h5> <?php //var_dump( $this->db->last_query()); ?>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content">
					<div id="grafik_rekap_perencanaan_penarikan_per_dpp"></div>
				</div>
			</div>
		</div>
		
		<div class="col-lg-6">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Pemanfaatan SBSN Berdasarkan Instansi</h5> <?php //var_dump( $this->db->last_query()); ?>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content">
					<div id="grafik_rekap_perencanaan_penarikan_per_instansi"></div>
				</div>
			</div>
		</div>
	</div>
	
	
</div>

<script>
	document.getElementById('dpp_sbsn').value = "<?php echo  $dpp_sbsns;?>";
	document.getElementById('instansi').value = "<?php echo  $instansis;?>";
	document.getElementById('provinsi').value = "<?php echo  $provinsis;?>";
</script>

 