		<!-- Page content -->
	 	<div class="page-content">
			<!-- Page header -->
			<div class="page-header">
				<div class="page-title">
					<h3>Kontak <small></h3>
				</div>
				
				<!-- 
				<div id="reportrange" class="range">
					<div class="visible-xs header-element-toggle">
						<a class="btn btn-primary btn-icon"><i class="icon-calendar"></i></a>
					</div>
					<div class="date-range"></div>
					<span class="label label-danger">9</span>
				</div>
				-->
			</div>
			<!-- /page header -->
			
			
			<div class="datatable-media">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th class="image-column">Foto</th>
							<th>Nama</th>
							<th>Jabatan</th>
							<th>Instansi</th>
							<th>Alamat Email</th>
							<th>No. Telp/HP</th>
						</tr>
					</thead>
					<?php 
						//var_dump($this->db->last_query());
						$no=0;
						foreach($kontak as $row):
						$no++; 
					
					?>
					<tbody>
						<tr>
							<td class="text-center">
								<?php
								if(empty($row->foto) or $row->foto==""){
									$foto="no-image-user.png";
								}else{
									$foto=$row->foto;
								}
								?>
								<a href="<?php echo base_url(); ?>assets/uploads/users/<?php echo $foto; ?>" class="lightbox" title="<?php echo $row->nama; ?>"><img src="<?php echo base_url(); ?>assets/uploads/users/<?php echo $foto; ?>" alt="" class="img-media"></a>
							</td>
							<td class="text-semibold"><?php echo $row->nama; ?></td>
							<td class="muted"><?php echo $row->jabatan; ?></td>
							<td class="muted"><?php echo $row->instansi; ?>, <?php echo $row->kl; ?></td>
							<td class="muted"><?php echo $row->email; ?></td>
							<td class="muted"><?php echo $row->no_telp; ?></td>
						</tr>
					</tbody>
					<?php endforeach; ?>
				</table>
			</div>
			
		</div>
		<!-- /page content -->


