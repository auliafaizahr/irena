<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-12">
		<h2>Dashboard</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini memberikan informasi sebaran lokasi proyek Pinjaman Luar Negeri di seluruh Indonesia, rekapitulasi perencanaan dan perkembangan pelaksanaan proyek SBSN. 
			</li>
		</ol>
	</div>
	<div class="col-lg-2">

	</div>
</div>

<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		
		
		<div class="col-lg-9">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Sebaran Proyek Usulan Berdasarkan Lokasi</h5>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content css-animation-box">
					<?php echo $map['js']; ?>
					<?php echo $map['html']; ?>
				</div>
				
			
		</div>	
		</div>
		
	
	<div class="row">
		<div class="col-lg-9">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Sebaran Proyek Bluebook Berdasarkan Lokasi</h5> <?php //var_dump( $this->db->last_query()); ?>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content css-animation-box">

					<?php echo $peta['js']; ?>
					<?php echo $peta['html']; ?>
					
				</div>
			</div>
		</div>
		
		<div class="col-lg-6">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Sebaran Proyek Greenbook Berdasarkan Lokasi</h5> <?php //var_dump( $this->db->last_query()); ?>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content">
					<?php echo $map['js']; ?>
					<?php echo $map['html']; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
</div>
</div>

<script>
	
</script>

 