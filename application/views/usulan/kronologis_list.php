<div class="ibox-content">
<table class="table table-hover table-mail">
            <tbody>
              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pengusul</td>
                 <td class="mail-subject"></td> 
              </tr>


              <tr class="read">
                <td class="mail-ontact text-right">Judul Proyek</td>
                <td class="mail-subject"></td> 
              </tr>
            
              </tbody>
</table>


<table class="table table-hover center" id="example"  width="100%"> 
<button type="button" class="btn btn-success btn-sm pull-right" id="tmbhBttn"><i class="glyphicon glyphicon-plus-sign" ></i> Tambahkan Kronologis</a></button>
	<thead>
		<tr>
			<!-- <th style="display:none;">Update date</th> -->
			<th style="width:50px;">Arsip</th>
			<th class="text-center" style="width:200px;">Deskripsi Arsip</th>
			<th class="text-center" style="width:300px;">Catatan Kronologis</th>
			<th style="width:20px;"></th>
			<th style="width:20px;">Update</th>
			
		</tr>
	</thead>
	<tbody>
	
	</tbody>
</table>
</div>

<script>
	function detail_list(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			beforeSend: function(){
				
				showLoading();
				$('#loader').fadeOut(1000);
			},
			success:function(response){

				$("#tmpModal").html(response);
				$('#modalDetail').modal('show');
			},
			dataType:"html"});
		return false;
	}

	$(document).on('click', '.rekam_arsip', function(){  
           
         
             var id = $(this).attr("id"); 
           //console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/tampilkan_log_usulan_index",
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

	function nilai_admin(adm, c, kasubdit, user_level){
    console.log("sukses");
   
     var id = c;
     console.log(id); 
   

     if (user_level != '5') {

        if ( kasubdit == '0' ) {

              //cek kasubdit
              if (adm == '0') {
                      console.log("sukses");
                        
                          $.ajax({
                            type : 'post',
                                      url : "<?php echo base_url(); ?>Usulan/adm",
                                      data :  'id='+ id,
                                      success : function(response){
                                       $("#tmpModal").html(response);
                                      $('#modal_adm').modal('show');
                                    
                                      //  $('#modalKecil').modal('show');
                                     // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                      },
                                      dataType:"html"
                          });
              }else if(adm != '0'){
                alert("Belum dinilai oleh kasubdit");
              } 
          }else if( (kasubdit  == '2' && adm == '1') || (kasubdit == '1' && adm == '2') ){
              $.ajax({
                            type : 'post',
                                      url : "<?php echo base_url(); ?>Usulan/adm",
                                      data :  'id='+ id,
                                      success : function(response){
                                       $("#tmpModal").html(response);
                                      $('#modal_adm').modal('show');
                                    
                                      //  $('#modalKecil').modal('show');
                                     // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                      },
                                      dataType:"html"
                          });
          }
      }
    

    if( user_level == '5'){

       if ( kasubdit == '0' ) {

              //cek kasubdit
              if (adm == '0') {
                      console.log("sukses");
                        
                          $.ajax({
                            type : 'post',
                                      url :  "<?php echo base_url(); ?>Usulan/adm",
                                      data :  'id='+ id,
                                      success : function(response){
                                       $("#tmpModal").html(response);
                                      $('#modal_adm').modal('show');
                                    
                                      //  $('#modalKecil').modal('show');
                                     // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                      },
                                      dataType:"html"
                          });
              }else if(adm != '0'){
                alert("Akan melakukan penilaian");

                console.log("sukses");
                        
                          $.ajax({
                            type : 'post',
                                      url :  "<?php echo base_url(); ?>Usulan/adm",
                                      data :  'id='+ id,
                                      success : function(response){
                                       $("#tmpModal").html(response);
                                      $('#modal_adm').modal('show');
                                    
                                      //  $('#modalKecil').modal('show');
                                     // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                      },
                                      dataType:"html"
                          });
          } 
          }
     

    }/*else if ( kasubdit == '0' ){
     
     alert('Menunggu penilaian kasubdit')
      console.log("gagal bray");
    }*/ 

  }

  $(document).on('click', '.edit', function(){  
           
        
             var id = $(this).attr("id"); 
           console.log(id);
         
          $.ajax({
               
                url : "<?php echo base_url(); ?>Usulan/edit",
                data :  'id='+ id,
                 type : 'post',
                success : function(response){
                

                  $("#tmpModal").html(response);
                $('#modalEditUsulan').modal('show');
                console.log("hahaha");
                console.log(id);
             
                },
                dataType:"html"
                });
            });

	


	$(document).on('click', '.catatan', function(){  
           
         
             var id = $(this).attr("id"); 
          
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
	

    function nilai_layak(layak, nilai_admin, c, user_level, kasubdit_layak){
      console.log(c);
      var id = c;


      if (user_level != '5') {

              //cek kasubdit
              if (nilai_admin == '2') {


                  if (kasubdit_layak == '0') {

                      if (layak == '0') {

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

                      } else if(layak != '0'){

                        alert('Belum dinilai oleh kasubdit');
                        console.log('Belum dinilai oleh kasubdit');
                      
                      }
                      //cek kalo hasil penilaian staff dan kasubdit berbeda
                  }else if( (kasubdit_layak  == '2' && layak == '1') || (kasubdit_layak == '1' && layak == '2') ){
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
          } 
                     
                        
                          
              }else if (nilai_admin != 2) {
                alert('Belum bisa melanjutkan proses ini');
              }
          
      }

      if (user_level == '5') {

              //cek kasubdit
              if (nilai_admin == '2') {


                  if (kasubdit_layak == '0') {

                      if (layak != '0') {

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

                      } 

                  } 
                     
                        
                          
              }
          
      }

    
    }

    function tambah_BB(usul_BB, c, kasubdit_usul, user_level, layak  ){
      console.log(c);
      var id = c;


      if (user_level != '5') {

              //cek kasubdit
              if (layak == '2') {
                  if (kasubdit_usul == '0') {
                      if (usul_BB == '0') {
                           $.ajax({
                            type : 'post',
                                      url : "<?php echo base_url(); ?>Usulan/tambahBB",
                                      data :  'id='+ id,
                                      success : function(response){
                                         $("#tmpModal").html(response);
                                      $('#modalBB').modal('show');
                                    
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
                  }else if( (kasubdit_usul  == '2' && usul_BB == '1') || (kasubdit_usul == '1' && usul_BB == '2') ){
                      $.ajax({
                                    type : 'post',
                                              url : "<?php echo base_url(); ?>Usulan/tambahBB",
                                              data :  'id='+ id,
                                              success : function(response){
                                               $("#tmpModal").html(response);
                                              $('#modalBB').modal('show');
                                            
                                              //  $('#modalKecil').modal('show');
                                             // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                              },
                                              dataType:"html"
                                  });
          } 
                     
                        
                          
              }else if (layak != 2) {
                alert('Belum bisa melanjutkan proses ini');
              }
          
      }

      if (user_level == '5') {

              //cek kasubdit
              if (layak == '2') {


                  if (kasubdit_usul == '0') {

                      if (usul_BB != '0') {

                           $.ajax({
                            type : 'post',
                                      url : "<?php echo base_url(); ?>Usulan/tambahBB",
                                      data :  'id='+ id,
                                      success : function(response){
                                         $("#tmpModal").html(response);
                                      $('#modalBB').modal('show');
                                    
                                      //  $('#modalKecil').modal('show');
                                     // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                      },
                                      dataType:"html"
                          });

                      } 

                  } 
                     
                        
                          
              }
          
      }

    
    }

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



	$(document).on('click', '.detail', function(){  
           
          
          //$('#myModalDetail').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/detil",
                data :  'id='+ id,
                success : function(response){
                
                  $("#tmpModal").html(response);
                $('#modalDetail').modal('show');
          
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
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