	
  <div class="ibox-content">
  <table class="table table-striped table-hover js-table" id="example_x">
    <thead>
      <tr>
        <th></th>
        <th>Lender</th>
        <th>Total Nilai Pinjaman</th>
        <!-- <th>Actions</th> -->
      </tr>
    </thead>
    
        <tbody>
        <?php foreach ($detail as $key => $value): ?>
       
        <tr data-toggle="collapse" data-target="#collapse4039" class="clickable">
           <td class="child" data-id="<?php echo $id;  ?>" data-lender="<?php echo $value['id_lender'];  ?>" ></td>
          <td><?php echo $value['lender']; ?></td>
          <td><?php echo number_format($value['total']); ?>
            
          </td>
       
         
         <!--  <td>
            <div class="btn-group btn-group-sm" role="group" aria-label="...">
              <div class="btn-group " role="group" aria-label="Voir le detail">
                <a id="<?php echo $value['id_lender']; ?>" class="parents js-view-parents" data-href="formation_json_parents" data-id=4039 data-toggle="tooltip" data-placement="top" alt="Voir les details" title="Details">
                  <span class="glyphicon glyphicon-eye-close" aria-hidden="true" style="color:black; margin: 5px;"></span>
                </a>
              </div>

            </div>
            <input type="hidden" name="untuk_id" value="<?php echo $value['id_lender'];?>">
          </td> -->
        </tr>
        <?php endforeach;   ?>
         <input type="hidden" name="fetch_id" id="fetch_id" value="<?php echo $id; ?>">

        
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
		$('#example_x').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});

  var table = $('#example_x').DataTable();

$('#example_x tbody').on('click', 'td:first-child', function () {
  var tr = $(this).closest('tr');
  var row = table.row( tr );
  var id = $(this).attr('data-id');
  var b = $(this).attr('data-lender');

  if (row.child.isShown()) {
    // This row is already open - close it.
    row.child.hide();
    tr.removeClass('shown');
  } else {
    // Open row.
     $.get("<?php echo base_url(); ?>greenbook/expand_anak_lender/"+id+"/"+b, function(data) {
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