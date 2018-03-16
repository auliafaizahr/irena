<table class="table table-hover" id="example"  width="100%"> 
  <thead>
    <tr>
      <!-- <th style="display:none;">Update date</th> -->
      <th style="width:300px;">Instansi Pengusul</th>
      <th class="text-center" style="width:300px;">Judul Proyek</th>

      <th class="text-center">Nilai</th>
      <th> BB </th>
      <th> GB </th>
      <th> DK </th>
      <th> LA </th>
     
     
     
    </tr>
  </thead>
    <tbody>
      <?php
        foreach($data as $key => $value):
      ?>
      <tr class="gradeX">
       
        <td><?php echo $value['instansi']; ?></td>
        <td><?php echo $value['judul']; ?></td>
        <td><?php echo number_format($value['nilai']);?></td>
        <td><?php 

        if ($value['bb']=='0') {
          echo "<a><i class='btn fa fa-times-circle btn-danger'></i></a>";
        }else{
          echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
        }
        ?></td>
        
        <td><?php 

        if ($value['gb']=='0') {
          echo "<a><i class='btn fa fa-times-circle btn-danger'></i></a>";
        }else{
          echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
        }
        ?></td>

        <td><?php 

        if ($value['dk']=='0') {
          echo "<a><i class='btn fa fa-times-circle btn-danger'></i></a>";
        }else{
          echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
        }
        ?></td>

        <td><?php 

        if ($value['la']=='0') {
          echo "<a><i class='btn fa fa-times-circle btn-danger'></i></a>";
        }else{
          echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
        }
        ?></td>

      </tr>
      <?php endforeach; ?>
    </tbody>
  
</table>

<div id="tmpModal5"></div>
<script>





  $(document).on('click', '.detail', function(){  
         
        

           var id = $(this).attr("id"); 
         console.log(id);
         //var rowid = $(e.relatedTarget).data('id');
         //console.log(rowid);p
         $.ajax({
              type : 'post',
              url : "<?php echo base_url(); ?>Bluebook/detil",
              data :  'id='+ id,
              success : function(response){
              $("#tmpModal10").html(response);
              $('#modalDetail').modal('show');
              },

              dataType:"html"
          });
        });

  
  
     function nilai_layak(layak, nilai_admin, c){
      console.log(c);

      var id = c;
    //alert(id+','+nilai_admin);
   if (nilai_admin == '2') {
      console.log("sukses");
    $.ajax({
      type : 'post',
                url : "<?php echo base_url(); ?>Usulan/layak",
                data :  'id='+ id,
                success : function(response){
                   $("#tmpModal").html(response);
                $('#modalLayak').modal('show');
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
    });
    }else {
     
      console.log("gagal bray");
      alert("Belum selesai penilaian Administrasi");
    }
  }

 
  
 


  
  $(document).ready(function(){
    $('#example').DataTable({
      responsive: true,
      "dom": 'T<"clear">lfrtip',
      "order": [[ 0, "desc" ]]
    });
  });
</script>