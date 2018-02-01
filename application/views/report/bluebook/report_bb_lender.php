					<div id="container_8" style="min-width: 400px; max-width: 800px; height: 400px; margin: 0 auto"></div>
					<div id="container_15" style="min-width: 400px; max-width: 800px; height: 400px; margin: 0 auto"></div>
					
					<container>
  <table class="table table-striped table-hover js-table" id="example2">
    <thead>
      <tr>
        <th>Lender</th>
        <th>Total Nilai Pinjaman</th>
        <th>Actions</th>
      </tr>
    </thead>
    <tbody>
    <?php foreach ($detail as $key => $value): ?>
   
    <tr data-toggle="collapse" data-target="#collapse4039" class="clickable">
      <td><?php echo $value['lender']; ?></td>
      <td><?php echo $value['total']; ?></td>
   
     
      <td>
        <div class="btn-group btn-group-sm" role="group" aria-label="...">
          <div class="btn-group " role="group" aria-label="Voir le detail">
            <a id="<?php echo $value['id_lender']; ?>" class="parents js-view-parents" data-href="formation_json_parents" data-id=4039 data-toggle="tooltip" data-placement="top" alt="Voir les details" title="Details">
              <span class="glyphicon glyphicon-eye-close" aria-hidden="true" style="color:black; margin: 5px;"></span>
            </a>
          </div>

        </div>
        <input type="hidden" name="untuk_id" value="<?php echo $value['id_lender'];?>">
      </td>
    </tr>
    <?php endforeach;   ?>
     <input type="hidden" name="fetch_id" id="fetch_id" value="<?php echo $id; ?>">

    
</tbody>
  </table>
</container>

<script type="text/javascript">
var id = $("#fetch_id").val();

$(document).ready(function(){
		$('#example2').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});
$(document).ready(function() {


var $table = $('.js-table');

$table.find('.js-view-parents').on('click', function(e) {
  e.preventDefault();
  var $btn = $(e.target), $row = $btn.closest('tr'), $nextRow = $row.next('tr.expand-child');
  $btn.toggleClass('glyphicon-eye-close glyphicon-eye-open');
  // if .expand-chid row exist already, toggle
  if ($nextRow.length) {
      $nextRow.toggle($btn.hasClass('glyphicon-eye-open'));
  // if not, create .expand-child row
  } else {
 // var parentsData = [];

    $.ajax({
        url: "<?php echo base_url(); ?>usulan/filter_infra_bluebook",
        dataType: "json",
        //data: parentsData,
        success: function (isi) {
        	console.log(isi);
        	console.log("inidibawah parentsdata");
   
		  var parentsData = {
		  "success": true,
		  "parents": isi
			};

        	data: parentsData;

    var newRow = '<tr class="expand-child" id="collapse' + $btn.data('name') + '">' +
      '<td colspan="12">' +
      '<table class="table table-condensed table-bordered" width=100% >' +
      '<thead>' +
      '<tr>' +
      '<th>Surname</th>' +
      '<th>FirstName</th>' +
      '<th>School Id</th>' +
      '<th>School name</th>' +
      '</tr>' +
      '</thead>' +
      '<tbody>';

    if (parentsData.parents) {
      $.each(parentsData.parents, function(i, parent) {
        newRow += '<tr>' +
          '<td>' + parent.name + '</td>' +
          '<td>' + parent.y + '</td>' +
        
          '</tr>';
      });
    }
    newRow += '</tbody></table></td></tr>';
    // set next row
    $nextRow = $(newRow).insertAfter($row);
    
    
    }
        });
  }
});

});

	
	$.ajax({
				url: "<?php echo base_url(); ?>usulan/filter_lender_isi_bluebook/"+id,
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

					  
					$.getJSON("<?php echo base_url(); ?>usulan/filter_lender_isi_bluebook/"+id, function(json) {
					console.log(json);
					console.log(json.length);0
					//console.log(json[1].y);
					//console.log(json1[0].name2);

					var banyak = json.length;
					var a = json[0].name;
					var b = parseFloat(json[0].y);
					//var c = JSON.parse(json);
					var d = json;
					//var e = JSON.parse(d);
					//console.log(e);
					console.log(a);
					console.log("isi diatas json 0 nama");

						var person = []; // Array is empty

					var isi= [];
					var isi2= [];
								var title = [];

					
					//var isi2= [];
					var series = {
						name: ["a", "b", "c"],
						id: ["1", "b", "z"],
						y:[2, 3, 4],
						index: [
       						{ "name":"Ford", "models":[ "Fiesta", "Focus", "Mustang" ] }]
					}


					for (var i = banyak - 1; i >= 0; i--) {

						isi.push({
						name: [json[i].name],
						id_: parseFloat([json[i].id]),
						y: parseFloat([json[i].y]),
						
						});

						console.log(isi);
						console.log("diatas ini isi yg tumpah");

						//ngambil isi untuk drilldown 



						$.getJSON("<?php echo base_url(); ?>usulan/filter_lender_isi_bluebook_program/"+id+"/"+json[i].id, function(json1) {

							var title = [];
								for (var i=0; i<5; i++) {
								    title[i] = {
								        name: "name" + i+1,
								        age: "age" + i+1,
								        hometown: "hometown" + i+1
								    };
								}
							series['index'].push(title)
							
							console.log(title);

								
						});
					
						
					

					}
							series['name'].push("hahaha");
								series['name'].push(isi);
								//series.push(title);


					console.log(series.name);
					console.log(series.index);
					console.log(title);
					
					console.log(series.id);
					console.log(series.y);
						console.log("diatas ini isi yg tumpah2");

				

				console.log(person);
				console.log("diatas ini person");

/*
					var title = [];
					for (var i=0; i<5; i++) {
					    title[i] = {
					        name: "name" + i+1,
					        age: "age" + i+1,
					        hometown: "hometown" + i+1
					    };
					}
					console.log(title);*/


					Highcharts.chart('container_8', {
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

					    	name: 'Brands',
        					colorByPoint: true,
					        data: isi
					        		
					    }]
					});


					});
					


					
				},
				dataType:"html"});



Highcharts.chart('container_15', {
    chart: {
        type: 'pie'
    },
    title: {
        text: 'Browser market shares. January, 2015 to May, 2015'
    },
    subtitle: {
        text: 'Click the slices to view versions. Source: netmarketshare.com.'
    },
    plotOptions: {
        series: {
            dataLabels: {
                enabled: true,
                format: '{point.name}: {point.y:.1f}%'
            }
        }
    },

    tooltip: {
        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:.2f}%</b> of total<br/>'
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [{
            name: 'IE',
            y: 56.33,
            drilldown: 'IE'
        }, {
            name: 'Chrome',
            y: 24.03,
            drilldown: 'Chrome'
        }, {
            name: 'Firefox',
            y: 10.38,
            drilldown: 'Firefox'
        }, {
            name: 'Safari',
            y: 4.77,
            drilldown: 'Safari'
        }, {
            name: 'Opera',
            y: 0.91,
            drilldown: 'Opera'
        }, {
            name: 'Proprietary or Undetectable',
            y: 0.2,
            drilldown: null
        }]
    }],
    drilldown: {
        series: [{
            name: 'IE',
            id: 'IE',
            data: [
                ['v11.0', 24.13],
                ['v8.0', 17.2],
                ['v9.0', 8.11],
                ['v10.0', 5.33],
                ['v6.0', 1.06],
                ['v7.0', 0.5]
            ]
        }, {
            name: 'Chrome',
            id: 'Chrome',
            data: [
                ['v40.0', 5],
                ['v41.0', 4.32],
                ['v42.0', 3.68],
                ['v39.0', 2.96],
                ['v36.0', 2.53],
                ['v43.0', 1.45],
                ['v31.0', 1.24],
                ['v35.0', 0.85],
                ['v38.0', 0.6],
                ['v32.0', 0.55],
                ['v37.0', 0.38],
                ['v33.0', 0.19],
                ['v34.0', 0.14],
                ['v30.0', 0.14]
            ]
        }, {
            name: 'Firefox',
            id: 'Firefox',
            data: [
                ['v35', 2.76],
                ['v36', 2.32],
                ['v37', 2.31],
                ['v34', 1.27],
                ['v38', 1.02],
                ['v31', 0.33],
                ['v33', 0.22],
                ['v32', 0.15]
            ]
        }, {
            name: 'Safari',
            id: 'Safari',
            data: [
                ['v8.0', 2.56],
                ['v7.1', 0.77],
                ['v5.1', 0.42],
                ['v5.0', 0.3],
                ['v6.1', 0.29],
                ['v7.0', 0.26],
                ['v6.2', 0.17]
            ]
        }, {
            name: 'Opera',
            id: 'Opera',
            data: [
                ['v12.x', 0.34],
                ['v28', 0.24],
                ['v27', 0.17],
                ['v29', 0.16]
            ]
        }]
    }
});

</script>