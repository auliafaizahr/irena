<table class="table table-hover" id="example"  width="100%"> 
  <thead>
    <tr>
      <!-- <th style="display:none;">Update date</th> -->
      <th style="width:300px;">Instansi Pengusul</th>
      <th class="text-center" style="width:300px;">Judul Proyek</th>

      <th class="text-center">Bluebook</th>
      <th> Pinjaman </th>
      <th> Lender </th>
     
      <th style="width:20px;">Status</th>
     
    </tr>
  </thead>
    <tbody>
      <?php
        foreach($data as $key => $value):
      ?>
      <tr class="gradeX">
       
        <td><?php echo $value['instansi']; ?></td>
        <td><?php echo $value['judul_proyek']; ?></td>
        <td><?php echo $value['bb']; ?></td>
        <td><?php echo $value['nilai_pinjaman']; ?></td>
        <td><?php echo $value['lender']; ?></td>
        <td><?php echo $value['status_umum']; ?></td>

      </tr>
      <?php endforeach; ?>
    </tbody>
  
</table>

<div id="tmpModal5"></div>
<script>





  $(document).on('click', '.catatan', function(){  
           
         
             var id = $(this).attr("id"); 
          
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>daftar_kegiatan/catatan",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal
                console.log(id);
                  $("#tmpModal").html(response);
                $('#modal_cat').modal('show');
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });
     });
  
  function tampilkan_form_hapus(page){
    $.ajax({
      url: "<?php echo base_url(); ?>"+page,
      success:function(response){
        $("#tmpModal").html(response);
        $('#modalHapus').modal('show');
    },
    dataType:"html"});
    return false;
  }

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

   $(document).on('click', '.rekam_dk', function(){  
           
         
             var id = $(this).attr("id"); 
           //console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>daftar_kegiatan/tampilkan_log_dk_index",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal
  
                  $("#tmpModal").html(response);
                $('#modalLog').modal('show');
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
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

   $(document).on('click', '.edit', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

          
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>daftar_kegiatan/edit",
                data :  'id='+ id,
                success : function(response){

                $("#tmpModal").html(response);
                $('#ModalEdit').modal('show');
               // $('.fetched-data-edit').html(data);//menampilkan data ke dalam modal
                }
            });

          });

     $(document).on('click', '.del-proyek', function(){  
           
          
          //$('#myModalDetail').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/hapus",
                data :  'id='+ id,
                success : function(response){
                
                  $("#tmpModal").html(response);
                $('#modalHapus').modal('show');
              
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
            });
          });

  
 

  $(document).on('click', '.detail_dk', function(){  
           
          
          
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
    $('#example').DataTable({
      responsive: true,
      "dom": 'T<"clear">lfrtip',
      "order": [[ 0, "desc" ]]
    });
  });
</script>