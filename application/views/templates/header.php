<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>IRENA | Integrasi Data Perencanaan Pendanaan Pembangunan</title>

    <link href="<?php echo base_url(); ?>assets/inspinia/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/inspinia/font-awesome/css/font-awesome.css" rel="stylesheet">

    <!-- Toastr style -->
    <link href="<?php echo base_url(); ?>assets/inspinia/css/plugins/toastr/toastr.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="<?php echo base_url(); ?>assets/inspinia/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="<?php echo base_url(); ?>assets/inspinia/css/animate.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/inspinia/css/style.css" rel="stylesheet">
	
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&amp;subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
	 
	<!-- Data Tables -->
	<!-- 
    <link href="<?php //echo base_url(); ?>assets/inspinia/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="<?php //echo base_url(); ?>assets/inspinia/css/plugins/dataTables/dataTables.responsive.css" rel="stylesheet">
    <link href="<?php //echo base_url(); ?>assets/inspinia/css/plugins/dataTables/dataTables.tableTools.min.css" rel="stylesheet">
	-->

	<script src="<?php echo base_url(); ?>assets/inspinia/js/jquery-2.1.1.js"></script>
	<script src="<?php echo base_url(); ?>assets/js/date.format.js"></script>
	<script src="<?php echo base_url(); ?>assets/js/numeral.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/jquery-ui/jquery-ui.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
	
	<!-- Data Picker -->
	<link href="<?php echo base_url(); ?>assets/inspinia/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
	
	<!-- summernote -->
	<link href="<?php echo base_url(); ?>assets/inspinia/css/plugins/summernote/summernote.css" rel="stylesheet">
	
	<!-- DROPZONE -->
	<link href="<?php echo base_url(); ?>assets/inspinia/css/plugins/dropzone/basic.css" rel="stylesheet">
	
	<!-- SELECT2 -->
	<link href="<?php echo base_url(); ?>assets/select2/css/select2.css" rel="stylesheet" />
	
	<!--
	<link href="<?php //echo base_url(); ?>assets/inspinia/css/plugins/awesome-bootstrap-checkbox/awesome-bootstrap-checkbox.css" rel="stylesheet">
	-->
	
	<link href="<?php echo base_url(); ?>assets/inspinia/css/plugins/iCheck/custom.css" rel="stylesheet">



	
	<style>
		.loader {
				position: fixed;
				left: 0px;
				top: 0px;
				width: 100%;
				height: 100%;
				z-index: 9999;
				background: url('<?php echo base_url() ?>assets/images/load.gif') 50% 50% no-repeat rgb(249,249,249);
				background-color: black; 
				opacity: .8;
			}
			
		.loader1 {
				position: absolute;\
				left: 0;
				top: 0;
				right: 0;
				bottom: 0;
				margin: auto;
				z-index: 1000;
				opacity: .8;
				background: url('<?php echo base_url() ?>assets/images/load.gif') 50% 50% no-repeat rgb(249,249,249);
				background-color: gray; 
			}
	</style>
	
</head>

<body>
	<div id="loader" class="loader" style='visibility: hidden;'></div>
	<div id="tmpModal10"></div>

	<div id="tmpModal2"></div>
	<div id="tmpModal"></div>
    <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header ">
                        <div class="dropdown profile-element"> 
							<span>
								<?php 
									if ($this->session->userdata('foto')<>""){
									?>
										<img alt="image" width="48px" class="img-circle" src="<?php echo base_url();?>assets/uploads/users/<?php echo $this->session->userdata('foto');?>" alt="" />
									<?php
									}else{
										?>
										<img alt="image" width="48px" class="img-circle" src="<?php echo base_url();?>assets/uploads/users/no-image-user.png" alt="" />
									<?php
									}
									?>
								<?php /* <img alt="image" class="img-circle" src="<?php echo base_url(); ?>/assets/inspinia/img/profile_small.jpg" /> */?>
                             </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold"><?php echo $this->session->userdata('nama_panggilan');?></strong>
                             </span> <span class="text-muted text-xs block"><?php echo $this->session->userdata('level');?><b class="caret"></b></span> </span> </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
								<li><a href="<?php echo base_url(); ?>dashboard/logout">Logout</a></li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            IRENA
                        </div>
                    </li>
                    <li <?php if($this->uri->segment(1)=="dashboard" or $this->uri->segment(1)==""){ echo "class='active'"; }?>>
                       <a href="<?php echo base_url(); ?>"><i class="fa fa-th-large"></i> <span class="nav-label">Dashboard</span></span></a>
                    </li>
					
					<li <?php if($this->uri->segment(1)=="arsip"){ echo "class='active'"; }	?>>
						<a href="<?php echo base_url(); ?>arsip"><i class="fa fa-files-o"></i> <span class="nav-label">Arsip</span> </a>
                    </li>
					
                  

                    <li <?php if($this->uri->segment(1)=="usulan"){ echo "class='active'"; }	?>>
                        <a href="<?php echo base_url(); ?>Program/tampil_program"><i class="fa fa-building-o"></i> <span class="nav-label">Pinjaman Luar Negeri</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">

                        	<li <?php if($this->uri->segment(2)=="dashboard_pln"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>Usulan/dashboard_pln">Dashboard</a>
							</li>

                        	<li <?php if($this->uri->segment(1)=="Program"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>Program/tampil_program">Program</a>
							</li>

                        	<li <?php if($this->uri->segment(1)=="Usulan" && $this->uri->segment(2)=="tampil_index" ){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>Usulan/tampil_index">Usulan Proyek</a>
							</li>



								
							<li <?php if($this->uri->segment(1)=="Bluebook"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>Bluebook/tampil_index">Bluebook</a>
							</li>

							<li <?php if($this->uri->segment(1)=="Greenbook"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>Greenbook/tampil_index">Greenbook</a>
							</li>

						<li <?php if($this->uri->segment(1)=="daftar_kegiatan"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>daftar_kegiatan/tampil_index">Daftar Kegiatan</a>
							</li>

							<li <?php if($this->uri->segment(1)=="loan_aggr"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>loan_aggr/tampil_index">Loan Agreement (LA)</a>
							</li>
						</ul>
                    </li>

                    <li <?php if($this->uri->segment(1)=="pln"){ echo "class='active'"; }	?>>
                        <a href="<?php echo base_url(); ?>"><i class="fa fa-line-chart"></i> <span class="nav-label">Report Pinjaman Luar Negeri</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">

                        	<li <?php if($this->uri->segment(1)=="Program"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>usulan/report_pln">Blue Book</a>
							</li>



                        	<li <?php if($this->uri->segment(1)=="Usulan"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>Usulan/report_gb">Green Book</a>
							</li>

						



					
						</ul>
                    </li>

                     <li <?php if($this->uri->segment(1)=="pln"){ echo "class='active'"; }	?>>
                        <a href="<?php echo base_url(); ?>"><i class="fa fa-map-marker"></i> <span class="nav-label">Peta Pendanaan</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">

                        	<li <?php if($this->uri->segment(2)=="map_phln"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>usulan/map_phln"><span class="nav-label">Peta PHLN</span><span class="fa arrow"></a>
								  <ul class="nav nav-third-level">
								  <li <?php if($this->uri->segment(2)=="map_phln"){ echo "class='active'"; }	?>>
								  <a href="<?php echo base_url(); ?>usulan/map_phln">Persebaran Semua</span></a></li>
								  <li><a href="<?php echo base_url(); ?>usulan/map_bb">Perseberan Bluebook</span></a></li>
								  <li><a href="<?php echo base_url(); ?>usulan/map_gb">Persebaran Greenbook</span></a></li>
								  <li><a href="<?php echo base_url(); ?>">Persebaran DK</span></a></li>
								  <li><a href="<?php echo base_url(); ?>usulan/map_la">Persebaran LA</span></a></li>
								  </ul>
							</li>

                        	<!-- <li <?php if($this->uri->segment(1)=="Usulan"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>Usulan/report_gb">Peta SBSN</a>
							</li> -->

							<li <?php if($this->uri->segment(1)=="Usulan"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>usulan/map_gabung_1">Peta PHLN dan SBSN</a>
							</li>

						</ul>
                    </li>

					<li <?php if($this->uri->segment(1)=="hibah"){ echo "class='active'"; }	?>>
                        <a href="#"><i class="fa fa-dollar"></i> <span class="nav-label">Hibah</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li <?php if($this->uri->segment(2)=="usulan"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>hibah/usulan">Usulan</a>
							</li>
							<li <?php if($this->uri->segment(2)=="drkh"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>hibah/drkh">DRKH</a>
							</li>
						</ul>
                    </li>
					<li <?php if($this->uri->segment(1)=="sbsn"){ echo "class='active'"; }	?>>
                        <a href="#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">SBSN</span><span class="fa arrow"></span></a>
						<ul class="nav nav-second-level">
							<li <?php if($this->uri->segment(2)=="usulan"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>sbsn/usulan">Usulan</a>
							</li>
							<li <?php if($this->uri->segment(2)=="dpp"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>sbsn/dpp">DPP  SBSN</a>
							</li>
							<li <?php if($this->uri->segment(2)=="on_going"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>sbsn/on_going">On-Going</a>
							</li>
						</ul>
                    </li>

                    <?php 
						if ($this->session->userdata('id_user_level') == "1"){
					?> 
					<li <?php if($this->uri->segment(1)=="data"){ echo "class='active'"; }	?>>
                        <a href="#"><i class="fa fa-laptop"></i> <span class="nav-label">Master Data</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
							<li <?php if($this->uri->segment(2)=="instansi"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>data/instansi">Instansi</a>
							</li>
							<li <?php if($this->uri->segment(2)=="instansi_eselon_satu"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>data/instansi_eselon_satu">Instansi Eselon I</a>
							</li>
							<li <?php if($this->uri->segment(2)=="donor"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>data/donor">Donor</a>
							</li>
							<li <?php if($this->uri->segment(2)=="drkh"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>data/drkh">DRKH</a>
							</li>
							<li <?php if($this->uri->segment(2)=="dpp"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>data/dpp">DPP SBSN</a>
							</li>
							<li <?php if($this->uri->segment(2)=="kat_sbsn"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>data/kat_sbsn">Kategori Proyek SBSN</a>
							</li>
							<!--
							<li <?php //if($this->uri->segment(2)=="provinsi"){ echo "class='active'"; }	?>>
								<a href="<?php //echo base_url(); ?>data/provinsi">Provinsi</a>
							</li>
							<li <?php //if($this->uri->segment(2)=="kabkota"){ echo "class='active'"; }	?>>
								<a href="<?php //echo base_url(); ?>data/kabkota">Kabupaten/Kota</a>
							</li>
							-->
							<li <?php if($this->uri->segment(2)=="user"){ echo "class='active'"; }	?>>
								<a href="<?php echo base_url(); ?>data/user">Pengguna</a>
							</li>
                        </ul>
                    </li>

					<?php } ?>
					<!-- 
					<li <?php //if($this->uri->segment(1)=="cetak"){ echo "class='active'"; }	?>>
                        <a href="<?php //echo base_url(); ?>cetak"><i class="fa fa-print"></i> <span class="nav-label">Cetak</span></a>
						
                    </li>
					-->
					<?php 
						//if ($this->session->userdata('level')<>"Tamu"){
					?>
                    
					<!-- 
					<li <?php //if($this->uri->segment(1)=="data"){ echo "class='active'"; }	?>>
                        <a href="#"><i class="fa fa-laptop"></i> <span class="nav-label">Master Data</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
							<li <?php //if($this->uri->segment(2)=="proyek"){ echo "class='active'"; }	?>>
								<a href="<?php ///echo base_url(); ?>data/proyek">Proyek</a>
							</li>
							<li <?php //if($this->uri->segment(2)=="monev"){ echo "class='active'"; }	?>>
								<a href="<?php //echo base_url(); ?>data/monev">Monev</a>
							</li>
							<li <?php //if($this->uri->segment(2)=="kategori_proyek"){ echo "class='active'"; }	?>>
								<a href="<?php //echo base_url(); ?>data/kategori_proyek">Kategori Proyek</a>
							</li>
							<li <?php //if($this->uri->segment(2)=="kategori"){ echo "class='active'"; }	?>>
								<a href="<?php //echo base_url(); ?>data/kategori">DPP SBSN</a>
							</li>
							<li <?php //if($this->uri->segment(2)=="instansi"){ echo "class='active'"; }	?>>
								<a href="<?php //echo base_url(); ?>data/instansi">Instansi</a>
							</li>
							<li <?php //if($this->uri->segment(2)=="instansi_es_satu"){ echo "class='active'"; }	?>>
								<a href="<?php //echo base_url(); ?>data/instansi_es_satu">Unit Kerja Eselon I</a>
							</li>
							<li <?php //if($this->uri->segment(2)=="provinsi"){ echo "class='active'"; }	?>>
								<a href="<?php //echo base_url(); ?>data/provinsi">Provinsi</a>
							</li>
							<li <?php //if($this->uri->segment(2)=="kabkota"){ echo "class='active'"; }	?>>
								<a href="<?php //echo base_url(); ?>data/kabkota">Kabupaten/Kota</a>
							</li>
							<li <?php //if($this->uri->segment(2)=="user"){ echo "class='active'"; }	?>>
								<a href="<?php //echo base_url(); ?>data/user">Pengguna</a>
							</li>
                        </ul>
                    </li>
					-->
					<?php //} ?>
                    <li class="landing_link">
						<a target="_blank" href="#"><i class="fa fa-star"></i> <span class="nav-label">v. Alpha 2017.11.15</span></a>
					</li>
                </ul>

            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg dashbard-1">
			<div class="row border-bottom">
				<nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
					<div class="navbar-header">
						<a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="#"><i class="fa fa-bars"></i> </a>
					</div>
				</nav>
			</div>
			
			
			
			
				
				