<div id="container_4" style="min-width: 200px; max-width: 500px; height: 300px; margin: 0 auto"></div>
					
<container>
  <table class="table table-striped table-hover js-table" id="example0">
    <thead>
      <tr>
        <th>Kategori</th>
        <th>Total Nilai Pinjaman</th>
       <!--  <th>Actions</th> -->
      </tr>
    </thead>
    <tbody>
   <!--  <?php foreach ($detail as $key => $value): ?>
   
    <tr data-toggle="collapse" data-target="#collapse4039" class="clickable">
      <td><?php echo $value['nama']; ?></td>
      <td><?php echo number_format($value['total']); ?></td>
   
     
    </tr>
    <?php endforeach;   ?>
     <input type="hidden" name="fetch_id" id="fetch_id" value="<?php echo $id; ?>">
     <input type="hidden" name="id_lokasi2" id="id_lokasi2" class="form-control" value="<?php echo $id_lokasi; ?>">  -->


    
</tbody>
  </table>
</container>

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/data.js"></script>
<script src="https://code.highcharts.com/modules/drilldown.js"></script>


<script type="text/javascript">

	$.getJSON("<?php echo base_url(); ?>sbsn/filter_sanding_dpp_isi/"+id, function(json) {
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
					//console.log(b);

					var isi= [];
					//var isi2= [];


					for (var i = banyak - 1; i >= 0; i--) {
						isi.push({
						name: [json[i].name],
						y: parseFloat([json[i].y])
						});
					}

					var kategori = [];
			

					for (var i = banyak - 1; i >= 0; i--) {
						kategori.push({
						name: [json[i].nama]
						});
					}

					//var data2 = JSON.parse(kategori);
					//alert(data2);


					//console.log(isi);
					console.log(kategori[0].name);
					alert(json[1].nama);


					Highcharts.chart('container_4', {
					    chart: {
					        type: 'column'
					    },
					    title: {
					        text: 'Pemanfaatan SBSN'
					    },
					    subtitle: {
					        text: ''
					    },
					    xAxis: {
					        categories: [
					         	kategori.name
					        ],
					        crosshair: true
					    },
					    yAxis: {
					        min: 0,
					        title: {
					            text: 'Rainfall (mm)'
					        }
					    },
					    tooltip: {
					        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
					        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
					            '<td style="padding:0"><b>{point.y:.1f} mm</b></td></tr>',
					        footerFormat: '</table>',
					        shared: true,
					        useHTML: true
					    },
					    plotOptions: {
					        column: {
					            pointPadding: 0.2,
					            borderWidth: 0
					        }
					    },
					    series: [{
					       
					       name: 'DPP',
					       data: isi

					    }]
						});


				
					


				dataType:"html"});

</script>