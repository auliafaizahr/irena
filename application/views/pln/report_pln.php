<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-12">
		<h2>Laporan Pinjaman Luar Negeri</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini memberikan informasi terkait laporan Pinjaman Luar Negeri
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
                    <h5>Filter</h5>

                    <div class="ibox-tools">
                    	<a class="collapse-links">
                    		<i class="fa fa-chevron-up"></i>
                    	</a>
                    </div>
				</div>
				<div id="loader1" class="loader1" style='visibility: hidden;'></div>
				<div class="ibox-content" >

				 
				 <form role="form" method="POST" action="<?php ?>" enctype="multipart/formdata">
				 	<div class="form-group">
				 		<label>Bluebook</label>
				 		<select class="form-control m-b" name="kode_bb" id="kode_bb">
				 			<option value=""> Silahkan Pilih </option>
				 			<?php foreach ($bluebook as $key => $value) { ?>

				 				<option value="<?php echo $value['id']; ?>"> <?php echo $value['nama']; ?></option>';
				 			<?php } ?>
				 		</select>
				 	</div>
				 	<button id="submit_btn" class="btn btn-primary">Submit</button>
				 	<button id="tes" class="btn btn-primary">tes</button>
				 </form>
				 </div>
				</div>
			</div>

			<div class="col-lg-9">
				<div class="ibox float-e-margins">
					<div class="ibox-title">
						<h5>Tabel dan Grafik Laporan</h5>
						<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
						</div>
					</div>

					<div class="ibox-content css-animation-box">
					<div id="container" style="min-width: 400px; max-width: 800px; height: 400px; margin: 0 auto"></div>
					<div id="container2" style="min-width: 310px; max-width: 600px; height: 400px; margin: 0 auto"></div>
					<div id="container3" style="min-width: 400px; max-width: 1200px; height: 400px; margin: 0 auto"></div>
					<div id="container4" style="min-width: 400px; max-width: 1200px; height: 400px; margin: 0 auto"></div>
					<div id="container5" style="min-width: 400px; max-width: 1200px; height: 400px; margin: 0 auto"></div>
					<div id="container6" style="min-width: 400px; max-width: 1200px; height: 400px; margin: 0 auto"></div>

					

				 		<canvas id="chart_1" width="800" height="500"></canvas>
				 		<p id="cek"></p>
						
					</div>
				</div>
			</div>


				</div>
			</div>
		</div>

<script src="<?php echo base_url(); ?>assets/inspinia/js/jquery-2.1.1.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script>
<!-- 
<script src="<?php echo base_url(); ?>assets/highcharts/highcharts.js"></script>
<script src="<?php echo base_url(); ?>assets/highcharts/modules/data.js"></script>
<script src="<?php echo base_url(); ?>assets/highcharts/modules/drilldown.js"></script> --> -->


<script>

	
	function showLoading2(){
		document.getElementById("loader1").style = "visibility: visible";
		$('#loader1').fadeOut(1000);
	}
	
		
		//untuk hapus
		$('#submit_btn').click(function(){
			var id = $("#kode_bb").val();
			console.log(id);
			$.ajax({
				url: "<?php echo base_url(); ?>usulan/filter_kl_bluebook/"+id,
				type: "GET",
				dataType: "json",
				
				//dataType: 'json'
				beforeSend: function(){
					//notif();
					showLoading();
				},
				success:function(data,){

					var isi = data;
					var a = isi.length;
					console.log(data[0]);
					console.log(a);

					  
					$.getJSON("<?php echo base_url(); ?>usulan/filter_kl_bluebook/", function(json) {
					console.log(json);
					console.log(json.length);
					console.log(json[0].name);
					//console.log(json1[0].name2);

					var banyak = json.length;
					var a = json[0].name;
					var b = parseFloat(json[0].y);
					//var c = JSON.parse(json);
					var d = json;
					//var e = JSON.parse(d);
					//console.log(e);
					console.log(b);

					var isi= [];
					//var isi2= [];


					for (var i = banyak - 1; i >= 0; i--) {
						isi.push({
						name: [json[i].name],
						y: parseFloat([json[i].y])
						});
					}

					
					/*options.series[0].data = json;
					chart = new Highcharts.Chart(options);
*/

					Highcharts.chart('container', {
					    chart: {
					        plotBackgroundColor: null,
					        plotBorderWidth: null,
					        plotShadow: false,
					        type: 'pie'
					    },
					    title: {
					        text: 'Persebaran Bluebook berdasarkan Kementerian Lembaga'
					    },
					    tooltip: {
					        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
					    },
					    plotOptions: {
					        pie: {
					            allowPointSelect: true,
					            cursor: 'pointer',
					            dataLabels: {
					                enabled: true,
					                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
					                style: {
					                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
					                }
					            }
					        }
					    },
					    series: [{

					    	name: 'Brands',
        					colorByPoint: true,
					        data: isi
					        		
					    }]
					});


					});
					


					
				},
				dataType:"html"});

			$.ajax({
				url: "<?php echo base_url(); ?>usulan/filter_lender_bluebook/"+id,
				type: "GET",
				dataType: "json",
				
				//dataType: 'json'
				beforeSend: function(){
					//notif();
					showLoading();
				},
				success:function(data,){

					var isi = data;
					var a = isi.length;
					console.log(data[0]);
					console.log(a);

					  
					$.getJSON("<?php echo base_url(); ?>usulan/filter_lender_bluebook/", function(json) {
					console.log(json);
					console.log(json.length);
					console.log(json[0].name);
					//console.log(json1[0].name2);

					var banyak = json.length;
					var a = json[0].name;
					var b = parseFloat(json[0].y);
					//var c = JSON.parse(json);
					var d = json;
					//var e = JSON.parse(d);
					//console.log(e);
					console.log(b);

					var isi= [];
					//var isi2= [];


					for (var i = banyak - 1; i >= 0; i--) {
						isi.push({
						name: [json[i].name],
						y: parseFloat([json[i].y])
						});
					}

					
					/*options.series[0].data = json;
					chart = new Highcharts.Chart(options);
*/

					Highcharts.chart('container2', {
					    chart: {
					        plotBackgroundColor: null,
					        plotBorderWidth: null,
					        plotShadow: false,
					        type: 'pie'
					    },
					    title: {
					        text: 'Persebaran Bluebook berdasarkan Lender'
					    },
					    tooltip: {
					        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
					    },
					    plotOptions: {
					        pie: {
					            allowPointSelect: true,
					            cursor: 'pointer',
					            dataLabels: {
					                enabled: true,
					                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
					                style: {
					                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
					                }
					            }
					        }
					    },
					    series: [{

					    	name: 'Persentase',
        					colorByPoint: true,
					        data: isi
					        		
					    }]
					});


					});

					
				},
				dataType:"html"});

			$.ajax({
				url: "<?php echo base_url(); ?>usulan/filter_program_bluebook/"+id,
				type: "GET",
				dataType: "json",
				
				//dataType: 'json'
				beforeSend: function(){
					//notif();
					showLoading();
				},
				success:function(data,){

					var isi = data;
					var a = isi.length;
					console.log(data[0]);
					console.log(a);

					  
					$.getJSON("<?php echo base_url(); ?>usulan/filter_program_bluebook/", function(json) {
					console.log(json);
					console.log(json.length);
					console.log(json[0].name);
					//console.log(json1[0].name2);

					var banyak = json.length;
					var a = json[0].name;
					var b = parseFloat(json[0].y);
					//var c = JSON.parse(json);
					var d = json;
					//var e = JSON.parse(d);
					//console.log(e);
					console.log(b);

					var isi= [];
					//var isi2= [];


					for (var i = banyak - 1; i >= 0; i--) {
						isi.push({
						name: [json[i].name],
						y: parseFloat([json[i].y])
						});
					}

					
					/*options.series[0].data = json;
					chart = new Highcharts.Chart(options);
*/

					Highcharts.chart('container3', {
					    chart: {
					        plotBackgroundColor: null,
					        plotBorderWidth: null,
					        plotShadow: false,
					        type: 'pie'
					    },
					    title: {
					        text: 'Persebaran Bluebook berdasarkan Program'
					    },
					    tooltip: {
					        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
					    },
					    plotOptions: {
					        pie: {
					            allowPointSelect: true,
					            cursor: 'pointer',
					            dataLabels: {
					                enabled: true,
					                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
					                style: {
					                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
					                }
					            }
					        }
					    },
					    series: [{

					    	name: 'Persentase',
        					colorByPoint: true,
					        data: isi
					        		
					    }]
					});


					});

					
				},
				dataType:"html"});

			$.ajax({
				url: "<?php echo base_url(); ?>usulan/filter_sektor_bluebook/"+id,
				type: "GET",
				dataType: "json",
				
				//dataType: 'json'
				beforeSend: function(){
					//notif();
					showLoading();
				},
				success:function(data,){

					var isi = data;
					var a = isi.length;
					console.log(data[0]);
					console.log(a);

					  
					$.getJSON("<?php echo base_url(); ?>usulan/filter_sektor_bluebook/", function(json) {
					console.log(json);
					console.log(json.length);
					console.log(json[0].name);
					//console.log(json1[0].name2);

					var banyak = json.length;
					var a = json[0].name;
					var b = parseFloat(json[0].y);
					//var c = JSON.parse(json);
					var d = json;
					//var e = JSON.parse(d);
					//console.log(e);
					console.log(b);

					var isi= [];
					//var isi2= [];


					for (var i = banyak - 1; i >= 0; i--) {
						isi.push({
						name: [json[i].name],
						y: parseFloat([json[i].y])
						});
					}

					
					/*options.series[0].data = json;
					chart = new Highcharts.Chart(options);
*/

					Highcharts.chart('container4', {
					    chart: {
					        plotBackgroundColor: null,
					        plotBorderWidth: null,
					        plotShadow: false,
					        type: 'pie'
					    },
					    title: {
					        text: 'Persebaran Bluebook berdasarkan Sektor'
					    },
					    tooltip: {
					        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
					    },
					    plotOptions: {
					        pie: {
					            allowPointSelect: true,
					            cursor: 'pointer',
					            dataLabels: {
					                enabled: true,
					                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
					                style: {
					                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
					                }
					            }
					        }
					    },
					    series: [{

					    	name: 'Persentase',
        					colorByPoint: true,
					        data: isi
					        		
					    }]
					});


					});

					
				},
				dataType:"html"});

			$.ajax({
				url: "<?php echo base_url(); ?>usulan/filter_infra_bluebook/"+id,
				type: "GET",
				dataType: "json",
				
				//dataType: 'json'
				beforeSend: function(){
					//notif();
					showLoading();
				},
				success:function(data,){

					var isi = data;
					var a = isi.length;
					console.log(data[0]);
					console.log(a);

					  
					$.getJSON("<?php echo base_url(); ?>usulan/filter_infra_bluebook/", function(json) {
					console.log(json);
					console.log(json.length);
					console.log(json[0].name);
					//console.log(json1[0].name2);

					var banyak = json.length;
					var a = json[0].name;
					var b = parseFloat(json[0].y);
					//var c = JSON.parse(json);
					var d = json;
					//var e = JSON.parse(d);
					//console.log(e);
					console.log(b);

					var isi= [];
					//var isi2= [];


					for (var i = banyak - 1; i >= 0; i--) {
						isi.push({
						name: [json[i].name],
						y: parseFloat([json[i].y])
						});
					}

					
					/*options.series[0].data = json;
					chart = new Highcharts.Chart(options);
*/

					Highcharts.chart('container5', {
					    chart: {
					        plotBackgroundColor: null,
					        plotBorderWidth: null,
					        plotShadow: false,
					        type: 'pie'
					    },
					    title: {
					        text: 'Persebaran Bluebook berdasarkan Infrastuktur dan Non Infrastukturs'
					    },
					    tooltip: {
					        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
					    },
					    plotOptions: {
					        pie: {
					            allowPointSelect: true,
					            cursor: 'pointer',
					            dataLabels: {
					                enabled: true,
					                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
					                style: {
					                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
					                }
					            }
					        }
					    },
					    series: [{

					    	name: 'Persentase',
        					colorByPoint: true,
					        data: isi
					        		
					    }]
					});


					});

					
				},
				dataType:"html"});

			$.ajax({
				url: "<?php echo base_url(); ?>usulan/filter_statusumum_bluebook/"+id,
				type: "GET",
				dataType: "json",
				
				//dataType: 'json'
				beforeSend: function(){
					//notif();
					showLoading();
				},
				success:function(data,){

					var isi = data;
					var a = isi.length;
					console.log(data[0]);
					console.log(a);

					  
					$.getJSON("<?php echo base_url(); ?>usulan/filter_statusumum_bluebook/", function(json) {
					console.log(json);
					console.log(json.length);
					console.log(json[0].name);
					//console.log(json1[0].name2);

					var banyak = json.length;
					var a = json[0].name;
					var b = parseFloat(json[0].y);
					//var c = JSON.parse(json);
					var d = json;
					//var e = JSON.parse(d);
					//console.log(e);
					console.log(b);

					var isi= [];
					//var isi2= [];


					for (var i = banyak - 1; i >= 0; i--) {
						isi.push({
						name: [json[i].name],
						y: parseFloat([json[i].y])
						});
					}

					
					/*options.series[0].data = json;
					chart = new Highcharts.Chart(options);
*/

					Highcharts.chart('container6', {
					    chart: {
					        plotBackgroundColor: null,
					        plotBorderWidth: null,
					        plotShadow: false,
					        type: 'pie'
					    },
					    title: {
					        text: 'Persebaran Bluebook berdasarkan Status'
					    },
					    tooltip: {
					        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
					    },
					    plotOptions: {
					        pie: {
					            allowPointSelect: true,
					            cursor: 'pointer',
					            dataLabels: {
					                enabled: true,
					                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
					                style: {
					                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
					                }
					            }
					        }
					    },
					    series: [{

					    	name: 'Persentase',
        					colorByPoint: true,
					        data: isi
					        		
					    }]
					});


					});

					
				},
				dataType:"html"});
			return false;
		});

	
</script> 