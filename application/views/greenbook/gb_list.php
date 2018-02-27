<table class="table table-hover" id="example"  width="100%"> 
  <thead>
    <tr>
      <!-- <th style="display:none;">Update date</th> -->
      <th style="width:200px;">Instansi Pengusul</th>
      <th class="text-center" style="width:200px;">Judul Proyek</th>
      <th class="text-center">Program</th>
      <th> Kode Greenbook </th>
      <th> Kode Bluebook </th>
      <th style="width:100px;">Nilai Pinjaman</th>
      <th style="width:100px;">Indikasi Lender</th>
      <th style="width:100px;">Kelayakan Administrasi</th>
      <th style="width:100px;">Masuk DK</th>
      <th style="width:3%;">Aksi</th>
    </tr>
  </thead>
  <tbody>
    <?php
      foreach($data as $key => $value):
    ?>
    <tr class="gradeX">
      <!-- td style="display:none;"><?php echo $row->update_date; ?></td> -->
      <td><?php $c = $value['id'];
       $b = $this->Usulan_model->ambil_instansi_untuk_usulan($value['id_instansi'])->nama_instansi;
       echo $b; ?>
         
       </td>

      <td><a class="detail" id="<?php echo $value['id'];  ?>" data-id="<?php echo $value['id'];  ?>" ><?php echo $value['judul_proyek_id']; ?></td>

      <td><?php  $d = $this->Usulan_model->ambil_program_proyek($value['id_program'])->nama_program;
      echo $d; ?></td>

      <td><?php 

              if($value['id_bluebook']!= ""){
                  echo $this->Bluebook_model->kode_bluebook($value['id_bluebook'])->nama;; 
               }else {
                  echo ""; 
                    }  ?>
      </td>


       <td><?php 

                            if($value['id_greenbook']!= ""){
                            $z = $this->Greenbook_model->kode_greenbook($value['id_greenbook']);

                                echo $z->nama; 
                            }else {
                                echo ""; 
                            }
                             ?>
                        </td>
      <td><?php 

                                echo $value['nilai_pinjaman'];
                            ?></td>
      <td> <?php 
                            $g = $this->Bluebook_model->lender($value['id_lender']);

                                if($value['id_lender']!= ""){
                                echo $g->lender; 
                            }else {
                                echo ""; 
                            }
                                    
                            ?></td>

                             <td>
                          <?php 

                          $layak = $this->Greenbook_model->ambil_layak($value['id'])->is_layak;
                          $kasubdit_layak = $this->Greenbook_model->ambil_layak($value['id'])->is_kasubdit_layak;
                            $user_level = $this->session->userdata('id_user_level');

                      //mengganti ikon kalo udah layak atau belum
                         if ($layak == '1') {

                           if ($kasubdit_layak == '0') {
                            echo "<a id='".$value['id']."' class='layak' data-id='".$layak."' data-kasubdit='".$kasubdit_layak."' data-user='".$user_level."'><i class='btn fa fa-times-circle btn-warning'></i></a>";
                             
                          }elseif ($kasubdit_layak == '2') {
                             echo "<a id='".$value['id']."' class='layak' data-id='".$layak."' data-kasubdit='".$kasubdit_layak."'  data-user='".$user_level."'><i class='btn fa fa-warning btn-warning'></i></a>";
                             
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger" ></i></a>';
                          }

                         
                        }elseif ($layak == '2') {

                         
                          if ($kasubdit_layak == '0') {
                            echo "<a id='".$value['id']."' class='layak' data-id='".$layak."' data-user='".$user_level."' data-kasubdit='".$kasubdit_layak."'><i class='btn fa fa-check-square btn-warning' ></i></a>";
                             
                          }elseif ($kasubdit_layak == '1') {
                            echo "<a id='".$value['id']."' data-user='".$user_level."' class='layak' data-id='".$layak."' data-kasubdit='".$kasubdit_layak."' data-user='".$user_level."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                            
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<a id='".$value['id']."' data-id='".$layak."' data-kasubdit='".$kasubdit_layak."' data-user='".$user_level."' class='layak' ><i class='btn fa fa-times-circle  btn-default'></i></a>";
                          
                        }

                        ?>

                         

                        </td>
      <td> <?php 

                              $is_dk = $this->Greenbook_model->ambil_layak($value['id'])->is_dk;
                              $dk_kasubdit = $this->Greenbook_model->ambil_layak($value['id'])->is_dk_kasubdit;
                             $c = $value['id'];

                      /*  if ($is_dk == '1') {
                          echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                        }else{
                          echo "<div class='btn-group'>
                            <button type='button'  class='btn btn-xs  btn-danger' onclick='nilai_dk($layak, $c)' ><i class='fa fa-plus'></i> Tambah ke DK</button>
                        </div>";
                        }
*/
                     
                        if ($is_dk == '1') {

                            if ($dk_kasubdit == '0') {
                                echo "<a id='".$value['id']."' class='tambahkeDK' data-id='".$is_dk."' data-kasubdit='".$dk_kasubdit."' data-user='".$user_level."'  data-layak='".$kasubdit_layak."'><i class='btn fa fa-times-circle btn-warning'></i></a>";
                                 
                            }elseif ($dk_kasubdit == '1') {
                                 echo "<a id='".$value['id']."' class='tambahkeDK' data-id='".$is_dk."' data-kasubdit='".$dk_kasubdit."' data-user='".$user_level."'  data-layak='".$kasubdit_layak."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                                 
                            }else{
                                echo '<a ><i class="btn fa fa-times-circle btn-danger" ></i></a>';
                            }

                         
                        }elseif ($is_dk == '2') {

                         
                          if ($dk_kasubdit == '0') {
                            echo "<a id='".$value['id']."' class='tambahkeDK' data-id='".$is_dk."' data-kasubdit='".$dk_kasubdit."' data-user='".$user_level."'  data-layak='".$kasubdit_layak."'><i class='btn fa fa-check-square btn-warning'></i></a>";
                             
                          }elseif ($dk_kasubdit == '1') {
                            echo "<a id='".$value['id']."' class='tambahkeDK' data-id='".$is_dk."' data-kasubdit='".$dk_kasubdit."' data-user='".$user_level."'  data-layak='".$kasubdit_layak."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                            
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>'; 
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<div class='btn-group'>
                            <button type='button'  class='tambahkeDK btn btn-xs  btn-danger' data-id='".$is_dk."' data-kasubdit='".$dk_kasubdit."' id='".$value['id']."' data-layak='".$kasubdit_layak."' data-user='".$user_level."'><i class='fa fa-plus'></i> Tambah ke DK</button>
                        </div>";
                         // echo "<a id='".$value['id']."' class='tambahBB' ><i class='btn fa fa-plus  btn-danger'></i></a>";
                          
                        }

                           
                            ?></td>
                  
            
      <td class="text-center">
        <!-- <?php if($this->session->userdata('id_user_level') == '3' || $this->session->userdata('id_user_level') == '1') { ?>
          <a class="btn btn-white btn-xs" type="button" href="#" onclick="tampilkan_form_edit('hibah/tampilkan_drkh_edit/<?php echo $row->id; ?>')"><i class="fa fa-pencil"></i> Edit</a>
        <?php }else{ 
            echo "<i class='fa fa-lock'></i>"; } 
        ?> -->

        <div class="input-group-btn">
                           <button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button" >Aksi <span class="caret"></span></button>
                           
                           <ul class="dropdown-menu pull-right">
                                                   <li><a  data-toggle="" data-target="modal" class="rekam_gb" id="<?php echo $value['id']; ?>">Rekam Jejak</a></li>
                                                   <li><a  data-toggle="" data-target="modal" class="catatan" id="<?php echo $value['id']; ?>">Catatan</a></li>
                                                   <li><a  data-toggle="" data-target="modal" class="edit" id="<?php echo $value['id']; ?>" >Edit</a></li>
                                                    <li><a  class="del-proyek" id="<?php echo $value['id']; ?>">Hapus</a></li>
                                                   
                                                </ul>
                            </div>
      </td>
    </tr>
    <?php endforeach; ?>
  </tbody>
</table>


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

    $(document).on('click', '.layak', function(){  
           
         
             var id = $(this).attr("id"); 
             var kasubdit_layak = $(this).attr("data-kasubdit"); 
             var layak = $(this).attr("data-id"); 
             var user_level = $(this).attr("data-user"); 
           console.log(id);
           console.log(kasubdit_layak);
           console.log(layak);
           console.log(user_level);



      if (user_level != '5') {

              //cek kasubdit
           

                  if (kasubdit_layak == '0') {

                      if (layak == '0') {

                           $.ajax({
                            type : 'post',
                                      url : "<?php echo base_url(); ?>Greenbook/layak",
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
                                              url : "<?php echo base_url(); ?>Greenbook/layak",
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
                                      url : "<?php echo base_url(); ?>Greenbook/layak",
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


  function nilai_admin(adm, c, kasubdit){
    console.log("sukses");
   
     var id = c;
     console.log(id); 
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
    } else if ( kasubdit == '0' ){
     
     alert('Menunggu penilaian kasubdit')
      console.log("gagal bray");
    } else {
      alert('Selesaikan penilaian kelayakan terlebih dahulu');
    }

  }

   $(document).on('click', '.rekam_gb', function(){  
           
         
             var id = $(this).attr("id"); 
           //console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>greenbook/tampilkan_log_gb_index",
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
  


  $(document).on('click', '.catatan', function(){  
           
         
             var id = $(this).attr("id"); 
          
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>greenbook/catatan",
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
                url : "<?php echo base_url(); ?>Greenbook/hapus",
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

  
  

  

  $(document).on('click', '.tambahkeDK', function(){  

        var id = $(this).attr("id"); 
        var usul_DK = $(this).attr("data-id"); 
        var kasubdit = $(this).attr("data-kasubdit"); 
        var layak = $(this).attr("data-layak");
        var user_level = $(this).attr("data-user"); 


        console.log(id);
        console.log(usul_DK);
        console.log(kasubdit);
        console.log(layak);

        if (user_level != '5') {

              //cek kasubdit
              if (layak == '2') {
                  if (kasubdit == '0') {
                      if (usul_DK == '0') {
                           $.ajax({
                            type : 'post',
                                      url : "<?php echo base_url(); ?>Greenbook/tambahkeDK",
                                      data :  'id='+ id,
                                      success : function(response){
                                         $("#tmpModal").html(response);
                                      $('#modalDK').modal('show');
                                    
                                      //  $('#modalKecil').modal('show');
                                     // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                      },
                                      dataType:"html"
                          });
                      } else if(usul_DK != '0'){
                        alert('Belum dinilai oleh kasubdit');
                        console.log('Belum dinilai oleh kasubdit');                     
                     }
                      //cek kalo hasil penilaian staff dan kasubdit berbeda
                  }else if( (kasubdit  == '2' && usul_DK == '1') || (kasubdit == '1' && usul_DK == '2') ){
                      $.ajax({
                                    type : 'post',
                                              url : "<?php echo base_url(); ?>Greenbook/tambahkeDK",
                                              data :  'id='+ id,
                                              success : function(response){
                                               $("#tmpModal").html(response);
                                              $('#modalDK ').modal('show');
                                            
                                              //  $('#modalKecil').modal('show');
                                             // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                              },
                                              dataType:"html"
                                  });
                   
                             
                        
                          
              }else if (layak != 2) {
                alert('Belum bisa melanjutkan proses ini');
              }
          
      }
    }

           if (user_level == '5') {

            console.log("ini di kasubdit");

              //cek kasubdit
              if (layak == '2') {
                  if (kasubdit == '0') {
                      if (usul_DK == '2') {
                           $.ajax({
                            type : 'post',
                                      url : "<?php echo base_url(); ?>Greenbook/tambahkeDK",
                                      data :  'id='+ id,
                                      success : function(response){
                                         $("#tmpModal").html(response);
                                      $('#modalDK').modal('show');
                                    
                                      //  $('#modalKecil').modal('show');
                                     // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                                      },
                                      dataType:"html"
                          });
                      } else if(usul_DK != '0'){
                        alert('Belum dinilai oleh kasubdit');
                        console.log('Belum dinilai oleh kasubdit');                     
                     }
                      //cek kalo hasil penilaian staff dan kasubdit berbeda
                  }else if( (kasubdit  == '2' && usul_DK == '1') || (kasubdit == '1' && usul_DK == '2') ){
                      $.ajax({
                                    type : 'post',
                                              url : "<?php echo base_url(); ?>Greenbook/tambahkeDK",
                                              data :  'id='+ id,
                                              success : function(response){
                                               $("#tmpModal").html(response);
                                              $('#modalDK ').modal('show');
                                            
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
        
           //console.log(id); 
  /*        if (layak_kasubdit == '2') {
            console.log("sukses");
         console.log(id);
             $.ajax({
                     type : 'post',
                      url : "<?php echo base_url(); ?>Greenbook/tambahkeDK",
                      data :  'id='+ id,
                      success : function(response){
                        console.log("sudah ditambah");
                        //console.log(response);
                      
                       $("#tmpModal").html(response);
                      $('#modalDK').modal('show');
                    
                      //  $('#modalKecil').modal('show');
                     // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                      },
                      dataType:"html"
                      
          });
             return false;
          }else {
              
              alert("Harus menyelesaikan penilaian kelayakan administrasi terlebih dahulu");
            console.log("gagal bray");
              return false;
          }
*/



          });

  $(document).on('click', '.detail', function(){  
           
          
          
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Greenbook/detil",
                data :  'id='+ id,
                success : function(response){
                $("#tmpModal").html(response);
                $('#modalDetail').modal('show');
                },
                 dataType:"html"
            });
          });

  $(document).on('click', '.edit', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

          //$('#ModalEdit').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          $.ajax({
               
                url : "<?php echo base_url(); ?>Greenbook/edit",
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
  
  $(document).ready(function(){
    $('#example').DataTable({
      responsive: true,
      "dom": 'T<"clear">lfrtip',
      "order": [[ 0, "desc" ]]
    });
  });
</script>