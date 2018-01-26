<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>E-SBSN | Perencanaan dan Pemantauan Proyek SBSN PBS</title>

    <link href="<?php echo base_url(); ?>assets/inspinia/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/inspinia/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="<?php echo base_url(); ?>assets/inspinia/css/animate.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/inspinia/css/style.css" rel="stylesheet">

</head>

<body class="gray-bg"">
	<div class="wrapper wrapper-content">
		<div class="row animated fadeInRight">

			<div class="col-md-10 col-lg-offset-1">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<?php foreach($detil_proyek->result() as $row): ?>
						<h5><?php echo $row->proyek; ?></h5>
						<div class="ibox-tools">
							<?php 
								if($row->status=="Efektif"){
									echo "<span class='label label-primary'>".$row->status."</span>";
								}elseif($row->status=="Belum Efektif"){
									echo "<span class='label label-warning'>".$row->status."</span>";
								}elseif($row->status=="Tutup"){
									echo "<span class='label label-danger'>".$row->status."</span>";
								}
							?>
						</div>
						<?php endforeach; ?>
					</div>
					
					<div>
						<div class="ibox-content no-padding border-left-right">
							<div class="ibox-content profile-content">
								<div class="row">
									<div class="col-md-12">
										<div class="tabs-container">
											<ul class="nav nav-tabs">
												<li class=""><a data-toggle="tab" href="#tab-1">Overview</a></li>
												<li class="active"><a data-toggle="tab" href="#tab-2">Details</a></li>
												<li class=""><a data-toggle="tab" href="#tab-3">Pelaksanaan</a></li>
												<li class=""><a data-toggle="tab" href="#tab-3">Procurement</a></li>
												<li class=""><a data-toggle="tab" href="#tab-4">Results</a></li>
												<li class=""><a data-toggle="tab" href="#tab-5">Documents</a></li>
												<li class=""><a data-toggle="tab" href="#tab-5">News & Media</a></li>
											</ul>
											<div class="tab-content">
												<div id="tab-1" class="tab-pane">
													<div class="panel-body">
														<div class="row">
															<div class="col-md-6">
															<div class="ibox-content profile-content">
																<h3>Lokasi Proyek</h3>
																
																	<?php echo $map['html']; ?>
																	<!-- <div id="directionsDiv"></div> -->
																</div>
															</div>
															<div class="col-md-6">
																<?php foreach($detil_proyek->result() as $row): ?>
																<div>
																	<dl class="dl-horizontal">
																		<dt>Status:</dt> 
																		<dd>
																			<?php 
																				if($row->status=="Efektif"){
																					echo "<span class='label label-primary'>".$row->status."</span>";
																				}elseif($row->status=="Belum Efektif"){
																					echo "<span class='label label-warning'>".$row->status."</span>";
																				}elseif($row->status=="Tutup"){
																					echo "<span class='label label-danger'>".$row->status."</span>";
																				}
																			?>
																		</dd>
																	</dl>
																	<dl class="dl-horizontal">
																		<dt>Tahun:</dt> 
																		<dd>
																			<?php echo $row->dpp_sbsn; ?>
																		</dd>
																	</dl>
																	<dl class="dl-horizontal">
																		<dt>Nilai:</dt> 
																		<dd>
																			Rp<?php echo number_format($row->nilai); ?>
																		</dd>
																	</dl>
																	<dl class="dl-horizontal">
																		<dt>Instansi:</dt> 
																		<dd>
																			<?php echo $row->instansi_es_satu.', '.$row->instansi;?>
																		</dd>
																	</dl>
																	<dl class="dl-horizontal">
																		<dt>Output:</dt> 
																		<dd>
																			<?php echo $row->output.' '.$row->sat;?>
																		</dd>
																	</dl>
																	<div>
																		
																		<table class="table table-striped">
																			<thead>
																			<tr>
																				<th>#</th>
																				<th>Provinsi</th>
																				<th>Kabupaten/Kota</th>
																				<th>Keterangan</th>
																			</tr>
																			</thead>
																			<tbody>
																			<?php 
																				$lokasi=$this->welcome_model->ambil_lokasi_per_monev($row->id_monev);
																				$no=0;
																				foreach($lokasi->result() as $baris):
																				$no++;
																			?>
																				<tr>
																					<td><?php echo $no; ?></td>
																					<td><?php echo $baris->provinsi; ?></td>
																					<td><?php echo $baris->kabkota; ?></td>
																					<td><?php echo $baris->lokasi_ket; ?></td>
																				</tr>
																			<?php endforeach; ?>
																			</tbody>
																			
																		</table>
																	</div>
																</div>
																<?php endforeach; ?>
															</div>
														</div>
													</div>
												</div>
												<div id="tab-2" class="tab-pane active">
														<?php 
															$proyek = $this->welcome_model->detil_proyek($this->uri->segment(3));
															foreach($proyek->result() as $row):
														?>
														<div class="ibox-content form-horizontal">
															<div class="form-group">
																<label class="col-sm-2 control-label">Judul Proyek</label>
																<div class="col-sm-10">
																	<p class="form-control-static"><?php echo $row->proyek; ?></p>
																</div>
															</div>
															<div class="hr-line-dashed"></div>
															<div class="form-group">
																<label class="col-sm-2 control-label">Instansi</label>
																<div class="col-sm-10">
																	<p class="form-control-static"><?php echo $row->instansi; ?></p>
																</div>
															</div>
															<div class="hr-line-dashed"></div>
															<div class="form-group">
																<label class="col-sm-2 control-label">DPP SBSN</label>
																<div class="col-sm-10">
																	<p class="form-control-static"><?php echo $row->dpp_sbsn; ?></p>
																</div>
															</div>
															<div class="hr-line-dashed"></div>
															<div class="form-group">
																<label class="col-sm-2 control-label">Kategori Proyek</label>
																<div class="col-sm-10">
																	<p class="form-control-static"><?php echo $row->kat_proyek; ?></p>
																</div>
															</div>
															<div class="hr-line-dashed"></div>
															<div class="form-group">
																<label class="col-sm-2 control-label">Nilai</label>
																<div class="col-sm-10">
																	<p class="form-control-static"><?php echo $row->nilai; ?></p>
																</div>
															</div>
															<div class="hr-line-dashed"></div>
															<div class="form-group">
																<label class="col-sm-2 control-label">Latar Belakang</label>
																<div class="col-sm-10">
																	<p class="form-control-static"><?php echo $row->latar_belakang; ?></p>
																</div>
															</div>
															<div class="hr-line-dashed"></div>
														</div>
														
														<?php endforeach;?>
												</div>
												<div id="tab-3" class="tab-pane active">
													ini tab 3
												</div>
											</div>


										</div>

									</div>
								</div>
                                
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Mainly scripts -->
	<?php if($hilang != 1){ ?>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/jquery-2.1.1.js"></script>
    <?php  } ?>
	<script src="<?php echo base_url(); ?>assets/inspinia/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
	<?php if($atas == 1){ echo $map['js']; }?>
</body>
</html>
