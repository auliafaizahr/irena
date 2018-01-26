<div class="wrapper wrapper-content animated fadeIn">
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
					<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
					<?php echo $map['js']; ?>
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
																<td><a href="proyek/detil/<?php echo $row->id_monev; ?>" target="_blank"><?php echo $row->proyek; ?></a></td>
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
		
		<div class="col-md-3">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Profil SBSN</h5>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div>
					<div class="ibox-content no-padding border-left-right">
						<img alt="image" class="img-responsive" src="<?php echo base_url(); ?>assets/images/profil_sbsn.jpg">
					</div>
					<div class="ibox-content profile-content">
						<h4><strong>Apa itu SBSN?</strong></h4>
						<p>
							SBSN/Sukuk Negara adalah surat berharga negara yang diterbitkan berdasarkan prinsip syariah dalam mata uang rupiah maupun valuta asing.
						</p><br>
						<h4><strong>Dasar Hukum</strong></h4>
						<p>
							<ul>
								<li>Undang Undang No. 19 Tahun 2008 tentang Surat Berharga Syariah Negara</li>
								<li>Peraturan Pemerintah No. 56 Tahun 2011 tentang Pembiayaan Proyek melalui Penerbitan Surat Berharga Syariah Negara </li>
								<li>DSN-MUI No. 01/DSN-MUI/III/2012</li>
							</ul>
						</p><br>
						<!-- 
						<div class="row m-t-lg">
							<div class="col-md-4">
								<span class="bar">5,3,9,6,5,9,7,3,5,2</span>
								<h5><strong>169</strong> Posts</h5>
							</div>
							<div class="col-md-4">
								<span class="line">5,3,9,6,5,9,7,3,5,2</span>
								<h5><strong>28</strong> Following</h5>
							</div>
							<div class="col-md-4">
								<span class="bar">5,3,2,-1,-3,-2,2,3,5,2</span>
								<h5><strong>240</strong> Followers</h5>
							</div>
						</div>-->
						<div class="user-button">
							<div class="row">
								<div class="col-md-12">
									<button type="button" class="btn btn-primary btn-sm btn-block" data-toggle="modal" data-target="#myModal5">Alur Perencanaan SBSN PBS</button>
								</div>
							</div>
						</div>
						
						<div class="modal inmodal fade" id="myModal5" tabindex="-1" role="dialog"  aria-hidden="true">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                            <h4 class="modal-title">Alur Perencanaan Pembiayaan SBSN PBS</h4>
                                        </div>
                                        <div class="modal-body">
												<img src="<?php echo base_url(); ?>/assets/images/alur_sbsn.jpg" style="width: 100%; height: 100%">
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
						
					</div>
			</div>
		</div>
		
		<!-- 
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
									/*$no=0;
									foreach($proyek_kat as $row):
									$no++;
									*/
								?>
									<tr>
										<td><?php //echo $no; ?></td>
										<td><?php //echo $row['nama']; ?></td>
										<td align="center"><?php //echo $row['jlh']; ?></td>
										<td align="right"><?php //echo number_format($row['nilai'],2); ?></td>
									</tr>
								<?php //endforeach; ?>
							</tbody>
						</table>
						<small>Merupakan kelompok proyek dan terdapat proyek yang multiyears</small>
					</div>
					
				</div>
			</div>
			-->

		</div>
		
	</div>
	
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
		
		<div class="col-lg-6">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Penarikan Kumulatif Pembiayaan SBSN</h5> <?php //var_dump( $this->db->last_query()); ?>
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
									<th colspan="15" class="text-center">DPP SBSN <br><small>(Rp. Miliar)</small></th>
								</tr>
								<tr>
									
									<th class="text-center">2013</th>
									<th class="text-center">2014</th>
									<th class="text-center">2015</th>
									<th class="text-center">Total</th>
								</tr>
							</thead>
							<tbody>
								<?php 
									$no=0;
									$alokasi13=0;
									$alokasi14=0;
									$alokasi15=0;
									
									foreach($penarikan_per_instansi as $row):
									
									$no++;
									$total_baris=$row['alokasi_2013']+$row['alokasi_2014']+$row['alokasi_2015']+$row['alokasi_2016'];
									$alokasi13+=$row['alokasi_2013'];
									$alokasi14+=$row['alokasi_2014'];
									$alokasi15+=$row['alokasi_2015'];
									
									$total_kolom=$alokasi13+$alokasi14+$alokasi15;
								?>
									<tr>
										<td><?php echo $no; ?></td>
										<td><?php echo $row['instansi']; ?></td>
										<td align="right"><?php echo number_format($row['alokasi_2013']/1000000000,1); ?></td>
										<td align="right"><?php echo number_format($row['alokasi_2014']/1000000000,1); ?></td>
										<td align="right"><?php echo number_format($row['alokasi_2015']/1000000000,1); ?></td>
										<td align="right"><?php echo number_format($total_baris/1000000000,1); ?></td>
									</tr>
								<?php endforeach; ?>
									<tr>
										<td colspan="2" class="text-center"><b>Total</b></td>
										<td align="right"><b><?php echo number_format($alokasi13/1000000000,1); ?></b></td>
										<td align="right"><b><?php echo number_format($alokasi14/1000000000,1); ?></b></td>
										<td align="right"><b><?php echo number_format($alokasi15/1000000000,1); ?></b></td>
										<td align="right"><b><?php echo number_format($total_kolom/1000000000,1); ?></b></td>
									</tr>
								
							</tbody>
						</table><br>
						<small>Proyek pada DPP SBSN TA. 2016 belum ada penarikan, karena proyek tersebut akan dilaksanakan tahun 2016.</small>
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
							<th class="text-center">#</th>
							<th class="text-center">Instansi</th>
							<th class="text-center" width="5%">Alokasi</th>
							<th class="text-center">Status</th>
							<th class="text-center">Proyek</th>
							<th class="text-center" width="5%">Nilai Pagu</th>
							<th class="text-center">Paket Kontrak</th>
							<th class="text-center">Penarikan Kumulatif</th>
							<th class="text-center">%</th>
							<th class="text-center">Sisa Paket Kontrak</th>
							<th class="text-center">%</th>
						</tr>
						</thead>
						<tbody>
							<?php 
								$this->db->select('*');
								$this->db->from('v_monev');
								$proyek_monev = $this->db->get();
								$no=0;
								foreach($proyek_monev->result() as $row):
								$no++;
							?>
								<tr>
									<td><?php echo $no; ?></td>
									<td><?php echo $row->instansi; ?></td>
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
									<td><a href="proyek/detil/<?php echo $row->id_monev; ?>" target="_blank"><?php echo $row->proyek; ?></a></td>
									<td class="text-right"><?php echo number_format($row->nilai/1000000000,1); ?>
									</td>
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
											
											if($persen>=0 && $persen<=30){
												echo '<span class="label label-danger">';
											}elseif($persen>30 && $persen<=60){
												echo '<span class="label label-warning">';
											}else{
												echo '<span class="label label-primary">';
											}
											
											echo number_format($persen,1); 
											echo '</span>';
										?>
											
									</td>
									<td class="text-right">
										<?php 
											$sisa_paket = $total_paket - $total_kum;
											echo number_format($sisa_paket/1000000000,1); 
										?>
									</td>
									<td class="text-right" width="10%">
										<?php
											if($total_paket<>0){
												$persen=($total_kum/$total_paket)*100;
											}else{
												$persen=0;
											}
											
											if($persen>=0 && $persen<=30){
												echo '<span class="label label-danger">';
											}elseif($persen>30 && $persen<=60){
												echo '<span class="label label-warning">';
											}else{
												echo '<span class="label label-primary">';
											}
											echo number_format($persen,1);
											echo '</span>';
											
										?>
											
									</td>
								</tr>
							
							<?php endforeach; ?>
								
						</tbody>
					</table>
					<small><i>Nilai Pagu, Paket Kontrak, Penarikan Kumulatif, dan Sisa Paket Kontrak menggunakan satuan Rp. Miliar</i></small>
				</div>
			</div>
		</div>
	</div>
</div>


 