<table class="table table-hover" id="tabel_la"  width="100%"> 
  <thead>
    <tr>
      <!-- <th style="display:none;">Update date</th> -->
      <th style="width:300px;">Instansi Pengusul</th>
      <th class="text-center" style="width:300px;">Judul Proyek</th>

      <th class="text-center">Bluebook</th>
      <th class="text-center">Greenbook</th>
      <th class="text-center">Tanggal LA</th>
      <th> Pinjaman </th>
      <th> Lender </th>
     
    
     
    </tr>
  </thead>
     <tbody>
      <?php
        foreach($data as $key => $value):
      ?>
      <tr class="gradeX">
       
        <td><?php echo $value['instansi']; ?></td>
       
        <td><?php echo $value['judul_proyek']; ?></td>
        
        <td><?php echo $value['nilai_pinjaman']; ?></td>
       
        <td><?php echo $value['lender']; ?></td>
       

      </tr>
      <?php endforeach; ?>
    </tbody> 
  
</table>


<script>




  $(document).on('click', '.detail', function(){  
           
          
          
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>daftar_kegiatan/detil",
                data :  'id='+ id,
                success : function(response){
               $("#tmpModal").html(response);
                $('#modalDetail').modal('show');
                },
                dataType: "html"
            });
          });

  
  $(document).ready(function(){
    $('#tabel_la').DataTable({
      responsive: true,
      "dom": 'T<"clear">lfrtip',
      "order": [[ 0, "desc" ]]
    });
  });
</script>