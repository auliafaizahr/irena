					<div id="container_3" style="min-width: 400px; max-width: 1200px; height: 400px; margin: 0 auto"></div>
					
					<container>
  <table class="table table-striped table-hover js-table" id="example0">
    <thead>
      <tr>
        <th>Program</th>
        <th>Total Nilai Pinjaman</th>
       <!--  <th>Actions</th> -->
      </tr>
    </thead>
    <tbody>
    <?php foreach ($detail as $key => $value): ?>
   
    <tr data-toggle="collapse" data-target="#collapse4039" class="clickable">
      <td><?php echo $value['program']; ?></td>
      <td><?php echo number_format($value['total']); ?></td>
   
     
    </tr>
    <?php endforeach;   ?>
     <input type="hidden" name="fetch_id" id="fetch_id" value="<?php echo $id; ?>">

    
</tbody>
  </table>
</container>

<script type="text/javascript">
var id = $("#fetch_id").val();


$(document).ready(function(){
		$('#example0').DataTable({
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
				url: "<?php echo base_url(); ?>usulan/filter_program_isi_bluebook/"+id,
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

					  
					$.getJSON("<?php echo base_url(); ?>usulan/filter_program_isi_bluebook/"+id, function(json) {
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

					
					

					Highcharts.chart('container_3', {
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

					    	name: 'Brands',
        					colorByPoint: true,
					        data: isi
					        		
					    }]
					});


					});
					


					
				},
				dataType:"html"});

</script>