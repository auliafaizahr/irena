<table class="table table-hover" id="example"  width="100%"> 
  <thead>
    <tr>
      <!-- <th style="display:none;">Update date</th> -->
      <th style="width:300px;">Instansi Pengusul</th>
      <th class="text-center" style="width:300px;">Judul Proyek</th>

      <th class="text-center">Program</th>
      <th> Kode Greenbook </th>
      <th> Kode Bluebook </th>
      <th style="width:20px;">Nilai Pinjaman</th>
      <th style="width:20px;"> Lender</th>
      <th style="width:20px;">Kelayakan Administrasi</th>
      <th style="width:20px;">Masuk LA</th>
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
                         //kolom ubah ikon

                       /*   $layak = $this->dk_model->ambil_layak($value['id'])->is_layak;

                        if ($layak == '1') {
                          echo '<a class="layak_btn" id="'.$c.'"><i class="btn fa fa-check-square btn-primary"></i></a>';
                        }else{
                          echo "<a   id='".$value['id']."' class='layak'><i class='btn fa fa-times-circle btn-danger'></i></a>";
                        }
*/
                        $layak = $this->dk_model->ambil_layak($value['id'])->is_layak;
                        $kasubdit_layak = $this->dk_model->ambil_layak($value['id'])->is_kasubdit_layak;

                      //mengganti ikon kalo udah layak atau belum
                         if ($layak == '1') {

                           if ($kasubdit_layak == '0') {
                            echo "<a id='".$value['id']."' class='layak' data-id='".$layak."' data-kasubdit='".$kasubdit_layak."'><i class='btn fa fa-times-circle btn-warning'></i></a>";
                             
                          }elseif ($kasubdit_layak == '1') {
                             echo "<a id='".$value['id']."' class='layak' data-id='".$layak."' data-kasubdit='".$kasubdit_layak."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                             
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger" ></i></a>';
                          }

                         
                        }elseif ($layak == '2') {

                         
                          if ($kasubdit_layak == '0') {
                            echo "<a id='".$value['id']."' class='layak' data-id='".$layak."' data-kasubdit='".$kasubdit_layak."'><i class='btn fa fa-check-square btn-warning'></i></a>";
                             
                          }elseif ($kasubdit_layak == '1') {
                            echo "<a id='".$value['id']."' class='layak' data-id='".$layak."' data-kasubdit='".$kasubdit_layak."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                            
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<a id='".$value['id']."' class='layak' ><i class='btn fa fa-times-circle  btn-warning'></i></a>";
                          
                        }

                         ?>

                       </td>
      <td>

                            <?php 

                              $is_la = $this->dk_model->ambil_layak($value['id'])->is_la;
                              $la_kasubdit = $this->dk_model->ambil_layak($value['id'])->is_la_kasubdit;
                        $c = $value['id'];
/*
                            if ($is_la == '1') {
                          echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                        }else{
                          echo "<div class='btn-group'>
                            <button type='button'  class='btn btn-xs  btn-danger' onclick='nilai_la($layak, $c)' ><i class='fa fa-plus'></i> Tambah ke LA</button>
                        </div>";
                        }*/

                     
                        if ($is_la == '1') {

                            if ($la_kasubdit == '0') {
                                echo "<a id='".$value['id']."' class='tambahkeLA' data-id='".$is_la."' data-kasubdit='".$la_kasubdit."'><i class='btn fa fa-times-circle btn-warning'></i></a>";
                                 
                            }elseif ($la_kasubdit == '1') {
                                 echo "<a id='".$value['id']."' class='tambahkeLA' data-id='".$is_la."' data-kasubdit='".$la_kasubdit."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                                 
                            }else{
                                echo '<a ><i class="btn fa fa-times-circle btn-danger" ></i></a>';
                            }

                         
                        }elseif ($is_la == '2') {

                         
                          if ($la_kasubdit == '0') {
                            echo "<a id='".$value['id']."' class='tambahkeLA' data-id='".$is_la."' data-kasubdit='".$la_kasubdit."'><i class='btn fa fa-check-square btn-warning'></i></a>";
                             
                          }elseif ($la_kasubdit == '1') {
                            echo "<a id='".$value['id']."' class='tambahkeLA' data-id='".$is_la."' data-kasubdit='".$la_kasubdit."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                            
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>'; 
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<div class='btn-group'>
                            <button type='button'  class='btn btn-xs  btn-danger' ><i class='fa fa-plus'></i> Tambah ke LA</button>
                        </div>";
                         // echo "<a id='".$value['id']."' class='tambahBB' ><i class='btn fa fa-plus  btn-danger'></i></a>";
                          
                        }


                           
                            ?>


                       </td>
            
      <td class="text-center">
        <!-- <?php if($this->session->userdata('id_user_level') == '3' || $this->session->userdata('id_user_level') == '1') { ?>
          <a class="btn btn-white btn-xs" type="button" href="#" onclick="tampilkan_form_edit('hibah/tampilkan_drkh_edit/<?php echo $row->id; ?>')"><i class="fa fa-pencil"></i> Edit</a>
        <?php }else{ 
            echo "<i class='fa fa-lock'></i>"; } 
        ?> -->

        <div class="input-group-btn">
                           <button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button" >Aksi <span class="caret"></span></button>
                           
                           <ul class="dropdown-menu pull-right">
                                                   <li><a  data-toggle="" data-target="modal" class="rekam" id="<?php echo $value['id']; ?>">Rekam Jejak</a></li>
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
  
  function tampilkan_form_edit(page){
    $.ajax({
      url: "<?php echo base_url(); ?>"+page,
      success:function(response){
        $("#tmpModal").html(response);
        $('#modalEdit').modal('show');
    },
    dataType:"html"});
    return false;
  }
  
  function tampilkan_log_usulan_index(page){
    $.ajax({
      url: "<?php echo base_url(); ?>"+page,
      success:function(response){
        $("#tmpModal").html(response);
        $('#modalLog').modal('show');
    },
    dataType:"html"});
    return false;
  }
  
  function tampilkan_syarat_usulan(page){
    $.ajax({
      url: "<?php echo base_url(); ?>"+page,
      success:function(response){
        $("#tmpModal").html(response);
        $('#modalIndex').modal('show');
    },
    dataType:"html"});
    return false;
  }

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

  
  
  function masuk_dpp(id, nilai_admin, nilai_layak){
    if(nilai_admin == '1' && nilai_layak == '1'){
      $.ajax({
        url: "<?php echo base_url(); ?>sbsn/usulan_tampil_form_masuk_dpp/"+id,
        beforeSend: function(){
          showLoading();
        },
        success:function(response){
          $("#tmpModal").html(response);
          $('#modalNilai').modal('show');
        },
        dataType:"html"
      });
      
    }else{
      alert('Maaf! Penilaian administrasi atau penilaian kelayakan belum dilakukan. Silahkan dilakukan penilaian administrasi dan penilaian kelayakan.');
    }
  }

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
    $('#example').DataTable({
      responsive: true,
      "dom": 'T<"clear">lfrtip',
      "order": [[ 0, "desc" ]]
    });
  });
</script>