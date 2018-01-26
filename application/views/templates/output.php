<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5><?php echo $judul; ?>&nbsp;</h5>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content css-animation-box">
				<?php if(!empty($info)){ ?>
					<div class="alert alert-info alert-dismissable">
						<button aria-hidden="true" data-dismiss="alert" class="close" type="button">×</button>
						<?php echo $info; ?>
					</div>
					<hr>
				<?php } ?>
					<?php echo $content;  ?>
				</div>
			</div>

		</div>
	</div>
</div>


 