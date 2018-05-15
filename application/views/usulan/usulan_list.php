<table class="detail_expand table table-hover" id="example_id"  width="100%"> 
	<thead>
		<tr>
			<!-- <th style="display:none;">Update date</th> -->
      <th></th>
			<th>Instansi Pengusul</th>
			<th class="text-center" style="width:700px;">Judul Proyek</th>
			<th class="text-center" style="width:200px;">Program</th>
			<th>Pinjaman</th>
			<th style="width:20px;">Administrasi</th>
			<th style="width:20px;">Kelayakan</th>
			<th style="width:20px;">BB</th>
			<th style="width:20px;">GB</th>
			<th style="width:20px;">DK</th>
			<th style="width:20px;">LA</th>
			<th style="width:3%;">Aksi <!-- <?php echo $this->session->userdata('id_user_level'); ?> --></th>
		</tr>
	</thead>
	<tbody>
		<?php
			foreach($data as $key => $value):
		?>
		<tr class="gradeX parent">
      <?php $c = $value['id']; ?>
      <?php

      $sql = $this->Usulan_model->ambil_total_di_gb($c);
      //$a = mysql_fetch_row($sql);

      if ($sql >= 2) {
         $warning = 1;
      }else{
        $warning = 0;
      }

       ?>
			<!-- td style="display:none;"><?php echo $row->update_date; ?></td> -->
      <td class="child"></td>
      
      <td><?php $c = $value['id'];
       $b = $this->Usulan_model->ambil_instansi_untuk_usulan($value['id_instansi'])->nama_instansi;
       echo $b; ?></td>

			

			<td ><a class="detail" id="<?php echo $value['id'];  ?>" data-id="<?php echo $value['id'];  ?>" ><?php echo $value['judul_proyek_eng']; ?></a> 


      <?php if ($warning == 1) {
        echo "<i class='fa fa-warning pull-right' style='color:orange' ></i> ";
      }else{

        } ?> </td>
			<td><?php  $d = $this->Usulan_model->ambil_program_proyek($value['id_program'])->nama_program;
			echo $d; ?></td>
			<td><?php echo number_format($value['dana_usulan']); ?></a></td>
			<td><?php 
                        $adm = $this->Usulan_model->ambil_adm($value['id'])->is_lengkap;
                        $kasubdit_adm = $this->Usulan_model->ambil_adm($value['id'])->is_kasubdit;
                        $user_level = $this->session->userdata('id_user_level');


                        if ($adm == '1') {

                           if ($kasubdit_adm == '0') {
                             echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm, $user_level )'><i class=' btn fa fa-times-circle btn-warning'></i></a>";
                          }elseif ($kasubdit_adm == '2') {
                             echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm, $user_level )'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger"></i></a>';
                          }

                         
                        }elseif ($adm == '2') {

                         
                          if ($kasubdit_adm == '0') {
                            echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm, $user_level )'><i class='btn fa fa-check-square btn-warning'></i></a>";
                            
                          }elseif ($kasubdit_adm == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm, $user_level )'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm, $user_level )'><i class=' btn fa fa-times-circle btn-default'></i></a>";
                        }


                         ?></td>

			<td><?php 
                        $layak = $this->Usulan_model->ambil_layak($value['id'])->is_layak;
                        $kasubdit_layak = $this->Usulan_model->ambil_layak($value['id'])->is_kasubdit;

                         if ($layak == '1') {

                          if ($kasubdit_layak == '0') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c, $user_level, $kasubdit_layak )'><i class='btn fa fa-times-circle btn-warning'></i></a>";
                             //echo '<a ><i class="btn fa fa-times-circle btn-warning"></i></a>';
                          }elseif ($kasubdit_layak == '2') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c, $user_level, $kasubdit_layak )'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger"></i></a>';
                          }
                         
                        }elseif ($layak == '2') {

                          if ($kasubdit_layak == '0') {
                            echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c, $user_level, $kasubdit_layak )'><i class='btn fa fa-check-square btn-warning'></i></a>";
                             //echo '<a ><i class="btn fa fa-check-square btn-warning"></i></a>';
                          }elseif ($kasubdit_layak == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c, $user_level, $kasubdit_layak )'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c, $user_level, $kasubdit_layak )'><i class=' btn fa fa-times-circle btn-default'></i></a>";
                        }


                        ?></td>
			<td><?php 
                        $bb = $value['is_BB'];
                        $usul_BB = $this->Usulan_model->ambil_adm($value['id'])->is_BB;
                        $kasubdit_usul = $this->Usulan_model->ambil_adm($value['id'])->is_bb_kasubdit;



                        if ($usul_BB == '1') {

                          if ($kasubdit_usul == '0') {
                             
                             echo "<a   id='".$c."'  onclick='tambah_BB($usul_BB, $c, $kasubdit_usul, $user_level, $layak )'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }elseif ($kasubdit_usul == '1') {
                             echo "<a   id='".$c."'  onclick='tambah_BB($usul_BB, $c, $kasubdit_usul, $user_level, $layak  )'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger"></i></a>';
                          }
                         
                        }elseif ($usul_BB == '2') {

                          if ($kasubdit_usul == '0') {
                             echo "<a   id='".$c."'  onclick='tambah_BB($usul_BB, $c, $kasubdit_usul, $user_level, $layak )'><i class='btn fa fa-check-square btn-warning'></i></a>";
                             //echo '<a ><i class="btn fa fa-check-square btn-warning"></i></a>';
                          }elseif ($kasubdit_usul == '2') {
                             echo "<a   id='".$c."'  onclick='tambah_BB($usul_BB, $c, $kasubdit_usul, $user_level, $layak  )'><i class=' btn fa fa-check-square btn-primary'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<div class='btn-group'>
                            <button type='button'  class='btn btn-xs  btn-danger' onclick='tambah_BB($usul_BB, $c, $kasubdit_usul, $user_level, $layak  )' ><i class='fa fa-plus'></i> Tambah ke BB</button>
                          </div>";
                         /* echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-times-circle btn-default'></i></a>";*/
                        }


                         ?></td>
						<td><?php 
                        $gb = $this->Usulan_model->ambil_pln($value['id'])->is_GB;

                       if ($gb == '1') {
                          echo '<a class="usul_btn" id="'.$c.'"><i class="btn fa fa-check-square btn-primary"></i></a>';
                        }else{
                        echo "<a><i class='btn fa fa-times-circle btn-danger'></i></a>";
                        }

                         ?>
                           
                         </td>

            

                         <td><?php 
                        $dk = $this->Usulan_model->ambil_pln($value['id'])->is_DK;

                       if ($dk == '1') {
                          echo '<a class="usul_btn" id="'.$c.'"><i class="btn fa fa-check-square btn-primary"></i></a>';
                        }else{
                          echo "
                            <a><i class='btn fa fa-times-circle btn-danger'></i></a>
                        ";
                        }

                         ?>

                         <td><?php 
                        $la = $this->Usulan_model->ambil_pln($value['id'])->is_LA;

                       if ($la == '1') {
                          echo '<a class="usul_btn" id="'.$c.'"><i class="btn fa fa-check-square btn-primary"></i></a>';
                        }else{
                          echo "
                            <a><i class='btn fa fa-times-circle btn-danger'></i></a>
                        ";
                        }

                         ?>
				<div class="feed-element">
					<!-- <img alt="image" class="img-circle" src="<?php //echo base_url(); ?>assets/uploads/users/<?php //echo $row->foto; ?>">-->
				</div>
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
                                                   <li><a  data-toggle="" data-target="modal" class="rekam_arsip" id="<?php echo $value['id']; ?>">Rekam Jejak</a></li>
                                                   <li><a  data-toggle="" data-target="modal" class="catatan" id="<?php echo $value['id']; ?>">Catatan</a></li>
                                                   <li><a  data-toggle="" data-target="modal" class="edit" id="<?php echo $value['id']; ?>" >Edit</a></li>
                                                    <li><a  class="del-proyek" id="<?php echo $value['id']; ?>">Hapus</a></li>
                                                   
                                                </ul>
                            </div>
			</td>
		</tr>
   <!--  <tr class="child">
      <td>Tes 1</td>
      <td>Tes 2</td>
    </tr> -->
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

  function format(){
    // `d` is the original data object for the row
/*
       $.ajax({
               
                url : "<?php echo base_url(); ?>Usulan/detail_expand_usulan",
              
                 type : 'get',
                 dataType:'json',
                success : function(response){
                alert(response);
                console.log("isi");
           
             
                },
                
          });
*/

    return '<table >'+
        '<tr>'+
            '<td  style="width:500px;" >Bluebook :</td>'+
            '<td> Nilai Pinjaman : </td>'+
        '</tr>'+
        '<tr>'+
            '<td>Greenbook :</td>'+
            '<td>Nilai Pinjaman : </td>'+
        '</tr>'+
        '<tr>'+
            '<td>Tanggal DK :</td>'+
            '<td>Nilai Pinjaman : </td>'+
        '</tr>'+
        '<tr>'+
            '<td>Tanggal LA :</td>'+
            '<td>Nilai Pinjaman : </td>'+
        '</tr>'+
        '<tr>'+
            '<td>Catatan Khusus :</td>'+
            '<td> </td>'+
        '</tr>'+
    '</table>';
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

          $.ajax({
               
                url : "<?php echo base_url(); ?>Usulan/detail_expand_usulan",
              
                 type : 'get',
                 dataType:'json',
                success : function(response){
                alert(response);
                console.log("isi");
           
             
                },
                
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
		$('#example_id').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});

  var table = $('#example_id').DataTable();

$('#example_id tbody').on('click', 'td:first-child', function () {
  var tr = $(this).closest('tr');
  var row = table.row( tr );

  if (row.child.isShown()) {
    // This row is already open - close it.
    row.child.hide();
    tr.removeClass('shown');
  } else {
    // Open row.
    row.child(format()).show();
    tr.addClass('shown');
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