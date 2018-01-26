<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-lg-6">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Perkembangan Pemanfaatan SBSN</h5> <?php //var_dump( $this->db->last_query()); ?>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content">
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>

									<th rowspan="2" class="text-center">#</th>
									<th rowspan="2" class="text-center">Instansi </th>
									<th colspan="5" class="text-center">DPP SBSN <br><small>(Rp. Miliar)</small></th>
								</tr>
								<tr>
									
									<th class="text-center">2013</th>
									<th class="text-center">2014</th>
									<th class="text-center">2015</th>
									<th class="text-center">2016</th>
									<th class="text-center">Total</th>
								</tr>
							</thead>
							<tbody>
								<?php 
									$no=0;
									$alokasi13=0;
									$alokasi14=0;
									$alokasi15=0;
									$alokasi16=0;
									
									foreach($sbsn2013 as $row):
									
									$no++;
									$total_baris=$row['2013']+$row['2014']+$row['2015']+$row['2016'];
									$alokasi13+=$row['2013'];
									$alokasi14+=$row['2014'];
									$alokasi15+=$row['2015'];
									$alokasi16+=$row['2016'];
									$total_kolom=$alokasi13+$alokasi14+$alokasi15+$alokasi16;
								?>
									<tr>
										<td><?php echo $no; ?></td>
										<td><?php echo $row['instansi']; ?></td>
										<td align="right"><?php echo number_format($row['2013'],1); ?></td>
										<td align="right"><?php echo number_format($row['2014'],1); ?></td>
										<td align="right"><?php echo number_format($row['2015'],1); ?></td>
										<td align="right"><?php echo number_format($row['2016'],1); ?></td>
										<td align="right"><?php echo number_format($total_baris,1); ?></td>
									</tr>
								<?php endforeach; ?>
									<tr>
										<td colspan="2" class="text-center"><b>Total</b></td>
										<td align="right"><b><?php echo number_format($alokasi13,1); ?></b></td>
										<td align="right"><b><?php echo number_format($alokasi14,1); ?></b></td>
										<td align="right"><b><?php echo number_format($alokasi15,1); ?></b></td>
										<td align="right"><b><?php echo number_format($alokasi16,1); ?></b></td>
										<td align="right"><b><?php echo number_format($total_kolom,1); ?></b></td>
									</tr>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
		
		
		
	</div>

	<div class="row">
		<div class="col-lg-9">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Sebaran Lokasi</h5>
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
					$this->db->select('lokasi.id_kabkota as id_kabkota, kabkota.nama as kabkota, provinsi.nama as provinsi');
					$this->db->from('lokasi');
					$this->db->join('kabkota', 'kabkota.id = lokasi.id_kabkota');
					$this->db->join('provinsi', 'provinsi.id = lokasi.id_provinsi');
					$query = $this->db->get();
					foreach($query->result() as $row):
				?>
						<div class="modal inmodal" id="myModal2<?php echo $row->id_kabkota; ?>" tabindex="-1" role="dialog" aria-hidden="true">
							<div class="modal-dialog modal-lg">
								<div class="modal-content animated fadeIn">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
										<h4 class="modal-title"><?php echo $row->kabkota; ?></h4>
										<small class="font-bold">Provinsi <?php echo $row->provinsi; ?></small>
									</div>
									<div class="modal-body">
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
															<th class="text-center">Nilai</th>
															<th class="text-center">Paket Kontrak</th>
															<th class="text-center">Penarikan Kumulatif</th>
															<th class="text-center">%</th>
														</tr>
													</thead>
													<tbody>
														<?php 
															$monev=$this->dashboard_model->ambil_monev_per_idkabkota($row->id_kabkota);
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
																<td><a href="#"><?php echo $row->proyek; ?></a></td>
																<td class="text-right"><?php echo number_format($row->nilai/1000000000,1); ?></td>
																<td class="text-right">
																	<?php 
																						
																		$sql='SELECT SUM(nilai_paket_kontrak) as nilai_paket_kontrak FROM paket_kontrak WHERE id_monev ='.$row->id_monev.'';
																		$paket_kontrak=$this->db->query($sql);
																		foreach ($paket_kontrak->result() as $baris):
																		$total_paket = $baris->nilai_paket_kontrak;
																		echo number_format($baris->nilai_paket_kontrak/1000000000,1); 
																		endforeach;
																	?>
																</td>
																<td class="text-right">
																	<?php 
																						
																		$sql='SELECT SUM(nilai) as kum FROM ambil_semua_penyerapan_per_id_monev WHERE id_monev ='.$row->id_monev.'';
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
		
		<div class="col-lg-3">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Kategori Proyek</h5>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content css-animation-box">
					
					<div class="table-responsive">
						<table class="table table-striped">
							<thead>
								<tr>

									<th>#</th>
									<th>Kategori </th>
									<th width="10%">Jumlah Proyek</th>
									<th align="center">Nilai <br>(Rp. Miliar)</th>
								</tr>
							</thead>
							<tbody>
								<?php 
									$no=0;
									foreach($proyek_kat as $row):
									$no++;
									
								?>
									<tr>
										<td><?php echo $no; ?></td>
										<td><?php echo $row['nama']; ?></td>
										<td align="center"><?php echo $row['jlh']; ?></td>
										<td align="right"><?php echo number_format($row['nilai'],2); ?></td>
									</tr>
								<?php endforeach; ?>
							</tbody>
						</table>
						<small>Merupakan kelompok proyek dan terdapat proyek yang multiyears</small>
					</div>
					
				</div>
			</div>

		</div>
	</div>
	
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Proyek SBSN</h5>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content css-animation-box">
					<table class="table table-striped table-bordered table-hover dataTables-example" >
						<thead>
						<tr>
							<th>#</th>
							<th>Instansi</th>
							<th>Alokasi</th>
							<th>Status</th>
							<th>Proyek</th>
							<th>Nilai Pagu <br> <small>(Rp. Miliar)</small></th>
						</tr>
						</thead>
						<tbody>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Proyek SBSN</h5>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content css-animation-box">
					<?php //echo $content;  ?>
				</div>
			</div>
		</div>
	</div>
</div>


 