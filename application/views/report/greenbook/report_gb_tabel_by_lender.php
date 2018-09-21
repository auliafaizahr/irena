	
  <table class="table table-striped table-hover js-table" id="example_x">
    <thead>
      <tr>
        <th>Lender</th>
        <th>Total Nilai Pinjaman</th>
        <!-- <th>Actions</th> -->
      </tr>
    </thead>
    <tbody>
   

    
</tbody>
  </table>


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



	
</script>