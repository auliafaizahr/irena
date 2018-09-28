	
  <div class="ibox-content">
  <table class="table table-striped table-hover js-table" id="example_x3">
    <thead>
      <tr>
        <th>Lender</th>
        <th>Total Nilai Pinjaman</th>
        <!-- <th>Actions</th> -->
      </tr>
    </thead>
    
        <tbody>
        <?php foreach ($detail as $key => $value): ?>
       
        <tr data-toggle="collapse" data-target="#collapse4039" class="clickable">
          <td><?php echo $value['lender']; ?></td>
          <td><?php echo number_format($value['total']); ?></td>
       
         
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
		$('#example_x3').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});



	
</script>