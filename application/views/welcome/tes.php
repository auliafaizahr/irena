<!-- Morris Charts JavaScript -->
<!--
<script src="<?php //echo base_url(); ?>assets/bower_components/raphael/raphael-min.js"></script>

<script src="<?php //echo base_url(); ?>assets/bower_components/morrisjs/morris.min.js"></script>
<script src="<?php //echo base_url(); ?>assets/js/morris-data.js"></script>
	-->
<div id="page-main-dashboard">
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header"><a  href="javascript:void(0);" onclick='load("start/dashboard","#page-main-dashboard")'><span class="fa fa-dashboard"></span></a> Dashboard</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div id="page-dashboard">

	<div class="row">
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-bar-chart-o fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge"><?php echo $pinjaman_num;?></div>
							<div>PLN</div>
						</div>
					</div>
				</div>
				<a href="javascript:void(0);" onclick='load("project/pln/dashboard","#page-dashboard")'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-green">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-bar-chart-o fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge"><?php echo $hibah_num;?></div>
							<div>HIBAH</div>
						</div>
					</div>
				</div>
				<a href="javascript:void(0);" onclick='load("project/hibah/dashboard","#page-dashboard")'>
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-yellow">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-bar-chart-o fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge"><?php echo $sbsn_num;?></div>
							<div>SBSN</div>
						</div>
					</div>
				</div>
				<a href="http://pendanaan.bappenas.go.id/sbsn" target="_blank">
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
		<div class="col-lg-3 col-md-6">
			<div class="panel panel-red">
				<div class="panel-heading">
					<div class="row">
						<div class="col-xs-3">
							<i class="fa fa-bar-chart-o fa-5x"></i>
						</div>
						<div class="col-xs-9 text-right">
							<div class="huge">13</div>
							<div>PDN</div>
						</div>
					</div>
				</div>
				<a href="#">
					<div class="panel-footer">
						<span class="pull-left">View Details</span>
						<span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
						<div class="clearfix"></div>
					</div>
				</a>
			</div>
		</div>
	</div>

	<div class="row">
		<div class="col-lg-8">
			<div class="panel panel-default">

				<div class="panel-heading">
					<?php $triwulan = 1;  ?>
					<i class="fa fa-bar-chart-o fa-fw"></i> Rekapitulasi Perkembangan Pelaksanaan Proyek Pinjaman Luar Negeri
					<div class="pull-right">
						<div class="btn-group">
							<button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
								Pilih Triwulan
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right" role="menu">
								<li>
									<a href="#" onclick="load_lender4()">Triwulan I</a>
								</li>
								<li>
									<a href="#" onclick="load_lender3()">Triwulan II</a>
								</li>
								<li>
									<a href="#" onclick="load_lender1()">Triwulan III</a>
								</li>
							</ul>
							
							<script>
								function load_lender1(){
									$("#contentlender").load("penarikan/pinjamanlender/1/3");
								}
								function load_lender3(){
									$("#contentlender").load("penarikan/pinjamanlender/3/2");
								}
								function load_lender4(){
									$("#contentlender").load("penarikan/pinjamanlender/4/1");
								}
							</script>
						</div>
					</div>
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-hover bordered" id="contentlender">
							<thead>
								<tr>
									<th rowspan="2" class="text-center">#</th>
									<th class="text-center" colspan="2" rowspan="2">Mitra Pembangunan</th>
									<th class="text-center" rowspan="2">Jumlah Loan</th>
									<th class="text-center" rowspan="2">Nilai Pinjaman</th>
									<th colspan="2" class="text-center">Penarikan s/d Triwulan 2 TA. 2015</th>
									<th rowspan="2" class="text-center">Pinjaman Belum Ditarik</th>
									<th colspan="3" class="text-center">TA. 2015</th>
								</tr>
								<tr>
									<th class="text-center">Nilai</th>
									<th class="text-center">%</th>
									<th class="text-center">Target</th>
									<th class="text-center">Realisasi</th>
									<th class="text-center">%</th>
								</tr>
							</thead>
							<tbody>
								<?php
									$no=0;
									$total_proyek=0;
									$total_pinjaman=0;
									$total_penarikan_kum=0;
									$total_target=0;
									$total_realisasi=0;
									foreach($rekap_loan_per_lender_tw->result() as $row):
									$no++;
									$total_proyek+=$row->jlh_proyek;
									$total_pinjaman+=$row->jlh_pinjaman;
									$total_penarikan_kum+=$row->penarikan_kumulatif;
									$total_target+=$row->target;
									$total_realisasi+=$row->realisasi;
									$kum=$row->penarikan_kumulatif;
									
									if(empty($row->jlh_pinjaman) or ($row->jlh_pinjaman==0) or empty($row->penarikan_kumulatif) or ($row->penarikan_kumulatif==0))
									{
										$persen_kum=0;
									}else{
										$persen_kum=$row->penarikan_kumulatif/$row->jlh_pinjaman*100;
									}
									
									$pinjaman_belum_ditarik = ($row->jlh_pinjaman)-($row->penarikan_kumulatif);
									
									if(empty($row->target) or ($row->target==0) or empty($row->realisasi) or ($row->realisasi==0))
									{
										$persen_ta=0;
									}else{
										$persen_ta=$row->realisasi/$row->target*100;
									}
									
									if(empty($total_pinjaman) or ($total_pinjaman==0) or empty($total_penarikan_kum) or ($total_penarikan_kum==0))
									{
										$persen_total_penarikan_kum=0;
									}else{
										$persen_total_penarikan_kum=$total_penarikan_kum/$total_pinjaman*100;
									}
									
									$total_pinjaman_belum_ditarik = $total_pinjaman-$total_penarikan_kum;
									
									if(empty($total_target) or ($total_target==0) or empty($total_realisasi) or ($total_realisasi==0))
									{
										$persen_total_ta=0;
									}else{
										$persen_total_ta=$total_realisasi/$total_target*100;
									}
								?>
									<tr>
										<td><?php echo $no; ?></td>
										<td><?php echo $row->jenis; ?></td>
										<td><?php echo $row->lender; ?></td>
										<td class="text-center"><?php echo $row->jlh_proyek; ?></td>
										<td class="text-right"><?php echo number_format($row->jlh_pinjaman,1); ?></td>
										<td class="text-right"><?php echo number_format($row->penarikan_kumulatif,1); ?></td>
										<td class="text-right"><?php echo number_format($persen_kum,1); ?></td>
										<td class="text-right"><?php echo number_format($pinjaman_belum_ditarik,1); ?></td>
										<td class="text-right"><?php echo number_format($row->target,1); ?></td>
										<td class="text-right"><?php echo number_format($row->realisasi,1); ?></td>
										<td class="text-right"><?php echo number_format($persen_ta,1); ?></td>
									 </tr>
								 <?php endforeach; ?>
									<tr>
										<td colspan="3" class="text-center"><b>Total</b></td>
										<td class="text-center"><b><?php echo $total_proyek; ?></b></td>
										<td class="text-right"><b><?php echo number_format($total_pinjaman,1); ?></b></td>
										<td class="text-right"><b><?php echo number_format($total_penarikan_kum,1); ?></b></td>
										<td class="text-right"><b><?php echo number_format($persen_total_penarikan_kum,1); ?></b></td>
										<td class="text-right"><b><?php echo number_format($total_pinjaman_belum_ditarik,1); ?></b></td>
										<td class="text-right"><b><?php echo number_format($total_target,1); ?></b></td>
										<td class="text-right"><b><?php echo number_format($total_realisasi,1); ?></b></td>
										<td class="text-right"><b><?php echo number_format($persen_total_ta,1); ?></b></td>
									 </tr>
							</tbody>
						</table>
					</div>
					<!-- table rekapitulasi PLN -->
				</div>
				<!-- /.panel-body -->
			</div>
		</div>
	
		
		<div class="col-lg-4">
			<div class="panel panel-default">
				<div class="panel-heading">
					<?php $triwulan = 1;  ?>
					<i class="fa fa-bell fa-fw"></i> Penyampaian LPK-PHLN Triwulan <?php echo "3"; ?>/2015
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="list-group">
						<div class="alert alert-info">
							<h4>Pinjaman Luar Negeri</h4><?php //var_dump($this->db->last_query()); ?>
							<div class="progress progress-striped active">
								<?php
											
									$persen_pinjaman = $total_lpkphln_per_tw/$total_project_active*100;
									$persen_hibah = $total_lpkphln_hibah_per_tw/$total_project_grant_active*100;
								?>
							  <div class="progress-bar" role="progressbar" aria-valuenow="<?php echo $persen_pinjaman; ?>" aria-valuemin="0" aria-valuemax="100" style="width:<?php echo $persen_pinjaman; ?>%;">
							  </div>
							</div>
							<small>Jumlah proyek berdasarkan Loan Agreement </small><span class="label label-info pull"><?php echo $total_lpkphln_per_tw; ?>/
							<?php echo $total_project_active; ?></span>
						 </div>
						 
						 <div class="alert alert-success">
							<h4>Hibah Luar Negeri</h4>
							<div class="progress progress-striped active">
							  <div class="progress-bar " role="progressbar" aria-valuenow="<?php echo $persen_hibah; ?>" aria-valuemin="0" aria-valuemax="100" style="width:<?php echo $persen_hibah; ?>%; background-color: #5cb85c;">
								<span class="sr-only">70% Complete</span>
							  </div>
							</div>
							<small>Jumlah proyek berdasarkan Grant Agreement </small><span class="label label-success pull"><?php echo $total_lpkphln_hibah_per_tw; ?>/<?php echo $total_project_grant_active; ?></span>
						 </div>
					</div>
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
			
		</div>
	</div>


	<!-- /.row -->
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-bar-chart-o fa-fw"></i> Rekapitulasi Perkembangan Pelaksanaan Proyek Pinjaman Luar Negeri
					<div class="pull-right">
						<div class="btn-group">
							<button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
								Pilih Triwulan
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right" role="menu">
								<li>
									<a href="#" onclick="load_home4()">Triwulan I</a>
								</li>
								<li>
									<a href="#" onclick="load_home3()">Triwulan II</a>
								</li>
								<li>
									<a href="#" onclick="load_home1()">Triwulan III</a>
								</li>
							</ul>
							
							<script>
								  function load_home($tw){
										$("#content").load("penarikan/pinjaman/$tw");
							  }
							  function load_home1(){
										$("#content").load("penarikan/pinjaman/1/3");
							  }
							  function load_home3(){
										$("#content").load("penarikan/pinjaman/3/2");
							  }
							  function load_home4(){
										$("#content").load("penarikan/pinjaman/4/1");
							  }
							</script>
						</div>
					</div>
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">
						<table class="table table-hover bordered" id="content">
							<thead>
								<tr>
									<th rowspan="2" class="text-center">#</th>
									<th class="text-center" rowspan="2">Instansi Penanggung Jawab</th>
									<th class="text-center" rowspan="2">Jumlah Proyek</th>
									<th class="text-center" rowspan="2">Nilai Pinjaman</th>
									<th colspan="2" class="text-center">Penarikan s/d Triwulan 2 TA. 2015</th>
									<th rowspan="2" class="text-center">Pinjaman Belum Ditarik</th>
									<th colspan="3" class="text-center">TA. 2015</th>
								</tr>
								<tr>
									<th class="text-center">Nilai</th>
									<th class="text-center">%</th>
									<th class="text-center">Target</th>
									<th class="text-center">Realisasi</th>
									<th class="text-center">%</th>
								</tr>
							</thead>
							<tbody>
								<?php
									$no=0;
									$total_proyek=0;
									$total_pinjaman=0;
									$total_penarikan_kum=0;
									$total_target=0;
									$total_realisasi=0;
									foreach($rekap_loan_per_tw->result() as $row):
									$no++;
									$total_proyek+=$row->jlh_proyek;
									$total_pinjaman+=$row->jlh_pinjaman;
									$total_penarikan_kum+=$row->penarikan_kumulatif;
									$total_target+=$row->target;
									$total_realisasi+=$row->realisasi;
									$kum=$row->penarikan_kumulatif;
									
									if(empty($row->jlh_pinjaman) or ($row->jlh_pinjaman==0) or empty($row->penarikan_kumulatif) or ($row->penarikan_kumulatif==0))
									{
										$persen_kum=0;
									}else{
										$persen_kum=$row->penarikan_kumulatif/$row->jlh_pinjaman*100;
									}
									
									$pinjaman_belum_ditarik = $row->jlh_pinjaman-$row->penarikan_kumulatif;
									
									if(empty($row->target) or ($row->target==0) or empty($row->realisasi) or ($row->realisasi==0))
									{
										$persen_ta=0;
									}else{
										$persen_ta=$row->realisasi/$row->target*100;
									}
									
									if(empty($total_pinjaman) or ($total_pinjaman==0) or empty($total_penarikan_kum) or ($total_penarikan_kum==0))
									{
										$persen_total_penarikan_kum=0;
									}else{
										$persen_total_penarikan_kum=$total_penarikan_kum/$total_pinjaman*100;
									}
									
									$total_pinjaman_belum_ditarik = $total_pinjaman-$total_penarikan_kum;
									
									if(empty($total_target) or ($total_target==0) or empty($total_realisasi) or ($total_realisasi==0))
									{
										$persen_total_ta=0;
									}else{
										$persen_total_ta=$total_realisasi/$total_target*100;
									}
								?>
									<tr>
										<td><?php echo $no; ?></td>
										<td><?php echo $row->instansi; ?></td>
										<td class="text-center"><?php echo $row->jlh_proyek; ?></td>
										<td class="text-right"><?php echo number_format($row->jlh_pinjaman,1); ?></td>
										<td class="text-right"><?php echo number_format($row->penarikan_kumulatif,1); ?></td>
										<td class="text-right"><?php echo number_format($persen_kum,1); ?></td>
										<td class="text-right"><?php echo number_format($pinjaman_belum_ditarik,1); ?></td>
										<td class="text-right"><?php echo number_format($row->target,1); ?></td>
										<td class="text-right"><?php echo number_format($row->realisasi,1); ?></td>
										<td class="text-right"><?php echo number_format($persen_ta,1); ?></td>
									 </tr>
								 <?php endforeach; ?>
									<tr>
										<td colspan="2" class="text-center"><b>Total</b></td>
										<td class="text-center"><b><?php echo $total_proyek; ?></b></td>
										<td class="text-right"><b><?php echo number_format($total_pinjaman,1); ?></b></td>
										<td class="text-right"><b><?php echo number_format($total_penarikan_kum,1); ?></b></td>
										<td class="text-right"><b><?php echo number_format($persen_total_penarikan_kum,1); ?></b></td>
										<td class="text-right"><b><?php echo number_format($total_pinjaman_belum_ditarik,1); ?></b></td>
										<td class="text-right"><b><?php echo number_format($total_target,1); ?></b></td>
										<td class="text-right"><b><?php echo number_format($total_realisasi,1); ?></b></td>
										<td class="text-right"><b><?php echo number_format($persen_total_ta,1); ?></b></td>
									 </tr>
							</tbody>
						</table>
					</div>
					<!-- table rekapitulasi PLN -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
	</div>

	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">
					<i class="fa fa-bar-chart-o fa-fw"></i> Rekapitulasi Perkembangan Pelaksanaan Proyek Hibah
					<div class="pull-right">
						<div class="btn-group">
							<button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
								Pilih Triwulan
								<span class="caret"></span>
							</button>
							<ul class="dropdown-menu pull-right" role="menu">
								<li>
									<a href="#" onclick="load_hibah4()">Triwulan I</a>
								</li>
								<li>
									<a href="#" onclick="load_hibah3()">Triwulan II</a>
								</li>
								<li>
									<a href="#" onclick="load_hibah1()">Triwulan III</a>
								</li>
							</ul>
							
							<script>
								function load_hibah1(){
									$("#contenthibah").load("penarikan/hibah/1/3");
								}
								function load_hibah3(){
									$("#contenthibah").load("penarikan/hibah/3/2");
								}
								function load_hibah4(){
									$("#contenthibah").load("penarikan/hibah/4/1");
								}
							</script>
						</div>
					</div>
				</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-12">
							<div class="table-responsive" id="contenthibah">
								<table class="table table-hover bordered">
									<thead>
										<tr>
											<th class="text-center">#</th>
											<th class="text-center">Instansi Penanggung Jawab</th>
											<th class="text-center">Jumlah Proyek</th>
											<th class="text-center">Nilai Hibah</th>
											<th class="text-center">Realisasi TW II TA. 2015</th>
										</tr>
									</thead>
									<tbody>
										<?php
											$no=0;
											$total_proyek=0;
											$total_pinjaman=0;
											$total_penarikan_kum=0;
											$total_target=0;
											$total_realisasi=0;
											foreach($rekap_grant_per_tw->result() as $row):
											$no++;
											$total_proyek+=$row->jlh_proyek;
											$total_pinjaman+=$row->jlh_pinjaman;
											$total_penarikan_kum+=$row->penarikan_kumulatif;
											$total_target+=$row->target;
											$total_realisasi+=$row->realisasi;
											$kum=$row->penarikan_kumulatif;
											
											if(empty($row->jlh_pinjaman) or ($row->jlh_pinjaman==0) or empty($row->penarikan_kumulatif) or ($row->penarikan_kumulatif==0))
											{
												$persen_kum=0;
											}else{
												$persen_kum=$row->penarikan_kumulatif/$row->jlh_pinjaman*100;
											}
											
											$pinjaman_belum_ditarik = $row->jlh_pinjaman-$row->penarikan_kumulatif;
											
											if(empty($row->target) or ($row->target==0) or empty($row->realisasi) or ($row->realisasi==0))
											{
												$persen_ta=0;
											}else{
												$persen_ta=$row->realisasi/$row->target*100;
											}
											
											if(empty($total_pinjaman) or ($total_pinjaman==0) or empty($total_penarikan_kum) or ($total_penarikan_kum==0))
											{
												$persen_total_penarikan_kum=0;
											}else{
												$persen_total_penarikan_kum=$total_penarikan_kum/$total_pinjaman*100;
											}
											
											$pinjaman_belum_ditarik = $total_penarikan_kum-$total_pinjaman;
											
											if(empty($total_target) or ($total_target==0) or empty($total_realisasi) or ($total_realisasi==0))
											{
												$persen_total_ta=0;
											}else{
												$persen_total_ta=$total_realisasi/$total_target*100;
											}
										?>
											<tr>
												<td><?php echo $no; ?></td>
												<td><?php echo $row->instansi; ?></td>
												<td class="text-center"><?php echo $row->jlh_proyek; ?></td>
												<td class="text-right"><?php echo number_format($row->jlh_pinjaman,1); ?></td>
												<td class="text-right"><?php echo number_format($row->realisasi,1); ?></td>
											 </tr>
										 <?php endforeach; ?>
											<tr>
												<td colspan="2" class="text-center"><b>Total</b></td>
												<td class="text-center"><b><?php echo $total_proyek; ?></b></td>
												<td class="text-right"><b><?php echo number_format($total_pinjaman,1); ?></b></td>
												<td class="text-right"><b><?php echo number_format($total_realisasi,1); ?></b></td>
											 </tr>
									</tbody>
								</table>
							</div>
							<!-- /.table-responsive -->
						</div>
						<!-- /.col-lg-8 (nested) -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.panel-body -->
			</div>
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-8 -->
		
		<!-- /.col-lg-4 -->
	</div>
	<!-- /.row -->	
	
</div>			