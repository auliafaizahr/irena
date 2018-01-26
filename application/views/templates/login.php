<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>IRENA | Integrasi Database Perencanaan Pendanaan</title>

    <link href="<?php echo base_url(); ?>assets/inspinia/css/bootstrap.min.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/inspinia/font-awesome/css/font-awesome.css" rel="stylesheet">

    <link href="<?php echo base_url(); ?>assets/inspinia/css/animate.css" rel="stylesheet">
    <link href="<?php echo base_url(); ?>assets/inspinia/css/style.css" rel="stylesheet">
	
	<style type="text/css">
		body { 
			background: url('<?php echo base_url(); ?>/assets/images/gd_bappenas.jpg') no-repeat center center fixed; 
			-webkit-background-size: cover;
			-moz-background-size: cover;
			-o-background-size: cover;
			background-size: cover;
		}

		.panel-default {
			opacity: 0.9;
			margin-top:30px;
		}
		.form-group.last { margin-bottom:0px; }

	</style>
</head>


<body>
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-md-offset-6">
				<div class="panel panel-default">
					<div class="panel-heading">
						<span class="glyphicon glyphicon-lock"></span> Irena Login</div>
					<div class="panel-body">
						<?php echo form_open('dashboard/do_login',array('name'=>'login_form', 'class'=>'m-t'));?>
						<form class="m-t" role="form">
							<div class="form-group">
								<div class="col-sm-12">
									<input type="email" class="form-control" name="email" placeholder="Email" required>
								</div>
							</div>
							<hr /><br>
							<div class="form-group">
								<div class="col-sm-12">
									<input type="password" class="form-control" name="password" placeholder="Password" required>
								</div>
							</div>
							<hr><br>
							<div class="form-group last">
								<div class="col-sm-offset-3 col-sm-12">
									<button type="submit" class="btn btn-success btn-sm">Sign in</button>
									<button type="reset" class="btn btn-default btn-sm">Reset</button>
								</div>
							</div>
						</form>
					</div>
					<div class="panel-footer">
						<small>IRENA | Integrasi Database Perencanaan Pendanaan Pembangunan</small><br>
						<code>IRENA version 20171109</code>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Mainly scripts -->
    <script src="<?php echo base_url(); ?>assets/inspinia/js/jquery-2.1.1.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/bootstrap.min.js"></script>

</body>
</html>
