	
  <div class="ibox-content">
  <table class="table table-striped table-hover js-table" id="example_x3">
    <thead>
      <tr>
        <th>Program</th>
        <th>Total Nilai Pinjaman</th>
        <!-- <th>Actions</th> -->
      </tr>
    </thead>
    
        <tbody>
        <?php foreach ($detail_isi as $key => $value): ?>
       
        <tr data-toggle="collapse" data-target="#collapse4039" class="clickable">
          <td><?php echo $value['nama']; ?></td>
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
		$('#example_x3').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});



	
</script>