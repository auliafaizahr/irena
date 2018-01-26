					<div id="container8" style="min-width: 400px; max-width: 800px; height: 400px; margin: 0 auto"></div>
					<p> AYO KITA LIHAT KELUARANNYA ADAAN GA NIH </p>

<script type="text/javascript">
	
	$.ajax({
				url: "<?php echo base_url(); ?>usulan/filter_kl_isi_bluebook/",
				type: "GET",
				dataType: "html",
				
				//dataType: 'json'
				beforeSend: function(){
					//notif();
					//showLoading();
				},
				success:function(data,){

					var isi = data;
					var a = isi.length;
					console.log(data[0]);
					console.log(a);

					  
					$.getJSON("<?php echo base_url(); ?>usulan/filter_kl_isi_bluebook/", function(json) {
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

					
					

					Highcharts.chart('container8', {
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

</script>