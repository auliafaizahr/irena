<table class="table table-hover" id="example_72"  width="100%"> 
	<thead>
		  <tr>
      <!-- <th style="display:none;">Update date</th> -->
      <th style="width:150px;">Instansi Pengusul</th>
      <th class="text-center" style="width:200px;">Judul Proyek</th>
      
 
      <th style="width:100px;">Masa Aktif</th>
      <th style="width:20px;">Progress</th>
  
    
     
    </tr>
	</thead>
	<tbody>
		<?php
			foreach($data as $key => $value):
		?>
		
		<tr class="gradeX">
        <td><?php $c = $value['id'];
       $b = $this->Usulan_model->ambil_instansi_untuk_usulan($value['id_instansi'])->nama_instansi;
       echo $b; ?>
         
       </td>


      


       <td><a class="detail" id="<?php echo $value['id'];  ?>" data-id="<?php echo $value['id'];  ?>" ><?php echo $value['judul_proyek_id']; ?></td>

       <td><?php echo $value['tgl_efektif_mulai']; ?> - <?php echo $value['tgl_efektif_akhir']; ?></td>

       <td>
       <div class="progress progress-mini">
          <div style="width: <?php echo $value['penyerapan']; ?>%;" class="progress-bar"></div> 
        </div>
          <?php echo $value['penyerapan']; ?>%</td>

      </tr>
		<?php endforeach; ?>
	</tbody>
</table>


<script>




	$(document).on('click', '.catatan', function(){  
           
         
             var id = $(this).attr("id"); 
          
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/catatan",
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

    $(document).on('click', '.del-proyek', function(){  
           
          
          //$('#myModalDetail').modal('show');
             var id = $(this).attr("id"); 
             var id_usulan = $(this).attr("data-id"); 
             var id_dk_proyek = $(this).attr("data-isi"); 
           console.log(id);
           console.log(id_usulan);
           console.log(id_dk_proyek);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>loan_aggr/hapus",
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
	
	

	$(document).on('click', '.detail', function(){  
           
          
          
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Loan_aggr/detil",
                data :  'id='+ id,
                success : function(response){
               $("#tmpModal").html(response);
                $('#modalDetail').modal('show');
                },
                dataType: "html"
            });
          });

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
                url : "<?php echo base_url(); ?>loan_aggr/edit",
                data :  'id='+ id,
                success : function(response){
                $("#tmpModal").html(response);
                $('#ModalEdit').modal('show');
                }
            });
          });
	
	$(document).ready(function(){
		$('#example_72').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});
</script>