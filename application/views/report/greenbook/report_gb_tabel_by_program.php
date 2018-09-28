	
  <div class="ibox-content">
  <table class="table table-striped table-hover js-table" id="example_x2">
    <thead>
      <tr>
        <th></th>
        <th>Program</th>
        <th>Total Nilai Pinjaman</th>
        <!-- <th>Actions</th> -->
      </tr>
    </thead>
    
        <tbody>
        <?php foreach ($detail_isi as $key => $value): ?>
       
        <tr data-toggle="collapse" data-target="#collapse4039" class="clickable">
          <td class="child" data-id="<?php echo $id;  ?>" data-program="<?php echo $value['id_program'];  ?>" ></td>
          <td><?php echo $value['program']; ?></td>
          <td><?php echo number_format($value['total']); ?></td>

        </tr>
        <?php endforeach;   ?>
       

        
    </tbody>


  </table>
</div>

<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js">
  </script>
<!--   <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js">
  </script> -->
<script type="text/javascript">		
//var id = $("#fetch_id").val();
//console.log(id);
console.log('apaaannnn');

$(document).ready(function(){
		$('#example_x2').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});


  var table = $('#example_x2').DataTable();
$('#example_x2 tbody').on('click', 'td:first-child', function () {
  var tr = $(this).closest('tr');
  var row = table.row( tr );
  var id = $(this).attr('data-id');
  var b = $(this).attr('data-program');

  if (row.child.isShown()) {
    // This row is already open - close it.
    row.child.hide();
    tr.removeClass('shown');
  } else {
    // Open row.
     $.get("<?php echo base_url(); ?>greenbook/expand_anak_program/"+id+"/"+b, function(data) {
          //console.log(data[10]);
          //console.log(data);
          //var results = JSON.parse(data);
          //console.log(results.isi[0].judul_usulan);

          //$("td.child").html(data);
          row.child(data).show();
         
          tr.addClass('shown');
        
      });
   
  }
});



	
</script>

<style type="text/css">
  th,

div.dataTables_wrapper {
  
  margin: 0 auto;
}

td.child {
  background: url('https://datatables.net/examples/resources/details_open.png') no-repeat center center;
  cursor: pointer;
}

tr.shown td.child {
  background: url('https://datatables.net/examples/resources/details_close.png') no-repeat center center;
}
</style>