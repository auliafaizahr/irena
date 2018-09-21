
      <div class="ibox float-e-margins">

<table class="table table-hover" id="example_gb"  width="100%"> 
	<thead>
		<tr>
			<!-- <th style="display:none;">Update date</th> -->
      <th></th>
      <th style="width:200px;">Greenbook</th>
      <th class="text-center">Total Kegiatan</th>
			<th class="text-center">Total Program</th>
			<th class="text-center"> Total Pinjaman </th>
			
		</tr>
	</thead>
	<tbody>
		<?php
			foreach($data as $key => $value):
		?>
		<tr class="gradeX">
			<!-- td style="display:none;"><?php echo $row->update_date; ?></td> -->
        <td class="child"  data-id="<?php echo $value['id_gb'];  ?>"  ></td>
        <td ><?php echo $value['nama_gb']; ?></td>
        <td class="text-center" ><?php echo $value['total_keg']; ?></td>
        <td class="text-center" ><?php echo $value['total_program']; ?></td>
        <td class="text-center"> <?php echo number_format($value['total_nilai']); ?></td>
		
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>
</div>
</div>
</div>
</div>


<script>


  $(document).on('click', '.layak', function(){  
           
         
             var id = $(this).attr("id"); 
             var layak = $(this).attr("data-id"); 
             var kasubdit_layak = $(this).attr("data-kasubdit"); 
             var user_level = $(this).attr("data-user"); 
           console.log(id);
           console.log(layak);
           console.log(kasubdit_layak);
           console.log(user_level);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);


      if (user_level != '5') {

              //cek kasubdit
           

                  if (kasubdit_layak == '0') {

                      if (layak == '0') {

                           $.ajax({
                            type : 'post',
                                      url : "<?php echo base_url(); ?>Bluebook/layak",
                                      data :  'id='+ id,
                                      success : function(response){
                                         $("#tmpModal").html(response);
                                      $('#modalLayak2').modal('show');
                                    
                                      //  $('#modalKecil').modal('show');
                                     // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                      },
                                      dataType:"html"
                          });

                      } else if(layak != '0'){

                        alert('Belum dinilai oleh kasubdit');
                        console.log('Belum dinilai oleh kasubdit');
                      
                      }
                      //cek kalo hasil penilaian staff dan kasubdit berbeda
                  }else if( (kasubdit_layak  == '2' && layak == '1') || (kasubdit_layak == '1' && layak == '2') ){
                      $.ajax({
                                    type : 'post',
                                              url : "<?php echo base_url(); ?>Bluebook/layak",
                                              data :  'id='+ id,
                                              success : function(response){
                                               $("#tmpModal").html(response);
                                              $('#modalLayak2').modal('show');
                                            
                                              //  $('#modalKecil').modal('show');
                                             // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                              },
                                              dataType:"html"
                                  });
                     } 
                     
                        
                          
              }


      if (user_level == '5') {

              //cek kasubdit
           

                  if (kasubdit_layak == '0') {

                      if (layak != '0') {

                           $.ajax({
                            type : 'post',
                                      url : "<?php echo base_url(); ?>Bluebook/layak",
                                      data :  'id='+ id,
                                      success : function(response){
                                         $("#tmpModal").html(response);
                                      $('#modalLayak2').modal('show');
                                    
                                      //  $('#modalKecil').modal('show');
                                     // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                      },
                                      dataType:"html"
                          });

                      } 
                      //cek kalo hasil penilaian staff dan kasubdit berbeda
                  }
                        
                          
              }
      



        });
	

     $(document).on('click', '.tambahkeGB', function(){  
           
         
             var gb = $(this).attr("id"); 
             var id = $(this).attr("id"); 
             var usul_GB = $(this).attr("data-id"); 
             var layak = $(this).attr("data-layak"); 
             var kasubdit = $(this).attr("data-kasubdit"); 
             var user_level = $(this).attr("data-user"); 
          // console.log(id);
           console.log(gb);
           console.log(layak);
           console.log(kasubdit);
           console.log(usul_GB);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           
            if (user_level != '5') {

              //cek kasubdit
              if (layak == '2') {
                  if (kasubdit == '0') {
                      if (usul_GB == '0') {
                           $.ajax({
                            type : 'post',
                                      url : "<?php echo base_url(); ?>Bluebook/tambahkeGB",
                                      data :  'id='+ id,
                                      success : function(response){
                                         $("#tmpModal").html(response);
                                      $('#modalGB').modal('show');
                                    
                                      //  $('#modalKecil').modal('show');
                                     // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                      },
                                      dataType:"html"
                          });
                      } else if(usul_GB != '0'){
                        alert('Belum dinilai oleh kasubdit');
                        console.log('Belum dinilai oleh kasubdit');                     
                     }
                      //cek kalo hasil penilaian staff dan kasubdit berbeda
                  }else if( (kasubdit  == '2' && usul_GB == '1') || (kasubdit == '1' && usul_GB == '2') ){
                      $.ajax({
                                    type : 'post',
                                              url : "<?php echo base_url(); ?>Bluebook/tambahkeGB",
                                              data :  'id='+ id,
                                              success : function(response){
                                               $("#tmpModal").html(response);
                                              $('#modalGB ').modal('show');
                                            
                                              //  $('#modalKecil').modal('show');
                                             // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                              },
                                              dataType:"html"
                                  });
                  }else if(usul_GB == '2' && kasubdit == '2'){
                    alert('Yakin akan menambahkan lagi ?');

                     $.ajax({
                        type : 'post',
                        url : "<?php echo base_url(); ?>Bluebook/tambah_lagi",
                        data :  'id='+ id,
                        success : function(response){
                        //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                          $("#tmpModal").html(response);
                        $('#tambah_lagi').modal('show');
                        console.log("bisa");
                      alert(response);
                        //  $('#modalKecil').modal('show');
                       // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                        },
                        dataType:"html"
                        });
                  }else{
                    alert("Selesaikan dahulu penilaian kelayakan");
                  } 
                             
                        
                          
              }else if (layak != 2) {
                alert('Belum bisa melanjutkan proses ini');
              }
          
      }

           if (user_level == '5') {

            console.log("ini di kasubdit");

              //cek kasubdit
              if (layak == '2') {
                  if (kasubdit == '0') {
                      if (usul_GB == '2') {
                           $.ajax({
                            type : 'post',
                                      url : "<?php echo base_url(); ?>Bluebook/tambahkeGB",
                                      data :  'id='+ id,
                                      success : function(response){
                                         $("#tmpModal").html(response);
                                      $('#modalGB').modal('show');
                                    
                                      //  $('#modalKecil').modal('show');
                                     // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                      },
                                      dataType:"html"
                          });
                      } else if(usul_GB != '0'){
                        alert('Belum dinilai oleh kasubdit');
                        console.log('Belum dinilai oleh kasubdit');                     
                     }
                      //cek kalo hasil penilaian staff dan kasubdit berbeda
                  }else if( (kasubdit  == '2' && usul_GB == '1') || (kasubdit == '1' && usul_GB == '2') ){
                      $.ajax({
                                    type : 'post',
                                              url : "<?php echo base_url(); ?>Bluebook/tambahkeGB",
                                              data :  'id='+ id,
                                              success : function(response){
                                               $("#tmpModal").html(response);
                                              $('#modalGB ').modal('show');
                                            
                                              //  $('#modalKecil').modal('show');
                                             // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                              },
                                              dataType:"html"
                                  });
                  }else if(usul_GB == '2' && kasubdit == '2'){
                    alert('Yakin akan menambahkan lagi ?');

                     $.ajax({
                        type : 'post',
                        url : "<?php echo base_url(); ?>Bluebook/tambah_lagi",
                        data :  'id='+ id,
                        success : function(response){
                        //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                          $("#tmpModal").html(response);
                        $('#tambah_lagi').modal('show');
                        console.log("bisa");
                      alert(response);
                        //  $('#modalKecil').modal('show');
                       // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                        },
                        dataType:"html"
                        });
                  }else{
                    alert("Selesaikan dahulu penilaian kelayakan");
                  } 
                             
                        
                          
              }else if (layak != 2) {
                alert('Belum bisa melanjutkan proses ini');
              }
          
      }




   /*   


        if (layak == '0') {

          if(kasubdit == '0')
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/tambahkeGB",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal").html(response);
                $('#modalGB').modal('show');
                console.log("bisa");
              alert(response);
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });

          } else if (kasubdit == '0'){
            alert('Menunggu persetujuan kasubdit');
            
          } else if(layak == '2' && kasubdit == '2'){
            alert('Yakin akan menambahkan lagi ?');

             $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/tambah_lagi",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal").html(response);
                $('#tambah_lagi').modal('show');
                console.log("bisa");
              alert(response);
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });
          }else{
            alert("Selesaikan dahulu penilaian kelayakan");
          }

          ;*/
        });


	
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
                $("#tmpModal").html(response);
                $('#modalDetail').modal('show');
                },

                dataType:"html"
            });
          });

    $(document).on('click', '.edit', function(){  
           
          
             var id = $(this).attr("id"); 
           console.log(id);
          
          $.ajax({
               
                url : "<?php echo base_url(); ?>Bluebook/edit",
                data :  'id='+ id,
                 type : 'post',
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal").html(response);
                $('#ModalEdit').modal('show');
                console.log("hahaha");
                console.log(id);
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });
            });


	$(document).on('click', '.catatan', function(){  
           
         
             var id = $(this).attr("id"); 
          
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>bluebook/catatan",
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
	



     $(document).on('click', '.del-proyek', function(){  
           
          
          //$('#myModalDetail').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/hapus",
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

	 $(document).on('click', '.rekam_bb', function(){  
           
         
             var id = $(this).attr("id"); 
             console.log(id);
           //console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/tampilkan_log_bb_index",
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
	

	
/*	$(document).ready(function(){
		$('#example_bb').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});
*/

 var table = $('#example_gb').DataTable();

$('#example_gb tbody').on('click', 'td:first-child', function () {
  var tr = $(this).closest('tr');
  var row = table.row( tr );
  var id = $(this).attr('data-id');

  if (row.child.isShown()) {
    // This row is already open - close it.
    row.child.hide();
    tr.removeClass('shown');
  } else {
    // Open row.
     $.get("<?php echo base_url(); ?>bluebook/anak_bluebook_1/"+id, function(data) {
          //console.log(data[10]);
          //console.log(data);
          //var results = JSON.parse(data);
          //console.log(results.isi[0].judul_usulan);

          //$("td.child").html(data);
          row.child(data).show();
         console.log(data);
          tr.addClass('shown');
        
      });
   /* row.child(format()).show();
    tr.addClass('shown');*/
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