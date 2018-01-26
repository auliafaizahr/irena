
<div class="row wrapper border-bottom white-bg page-heading">

	<div class="col-lg-12">
		<h2>Greenbook</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini menampilkan Daftar Proyek GreenBook ke Direktorat Perencanaan Pembangunan
			</li>
		</ol>
	</div>
	<div class="col-lg-2">

	</div>
</div>

<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
					<h5>Daftar Greenbook</h5> 
					<div class="ibox-tools">

						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content css-animation-box">
						
				
                <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline"><div class="DTTT_container"><a class="DTTT_button DTTT_button_print" id="ToolTables_DataTables_Table_0_4" title="View print view" tabindex="0" aria-controls="DataTables_Table_0"></a>
                </div>
            
                <div class="clear"> 

               
                <div class="dataTables_length" id="DataTables_Table_0_length"> 
                
               	</div>

                        
             
                           
               <button type="button" class="btn btn-success btn-sm pull-right" id="tambahBaru"><i class="glyphicon glyphicon-plus-sign" ></i> Tambahkan Proyek Baru ke Greenbook</a></button>

               	<div id="DataTables_Table_0_filter" class="dataTables_filter">
               
                </div><table class="table table-striped table-bordered table-hover dataTables-example dataTable dtr-inline" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">

                    <thead>

                    <tr role="row">
                    <th class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column descending" style="width: 5px;" aria-sort="ascending">#
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Instansi: activate to sort column ascending" style="width: 314px;">Instansi Pengusul
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Instansi: activate to sort column ascending" style="width: 314px;">Program
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="judul_proyek: activate to sort column ascending" style="width: 289px;">Judul Proyek
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="ruang_lingkup: activate to sort column ascending" style="width: 199px;">Kode Greenbook
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="durasi: activate to sort column ascending" style="width: 150px;">Kode Bluebook
                    </th>


                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="BB: activate to sort column ascending" style="width: 150px;">Nilai Pinjaman
                    </th>

             
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="DK: activate to sort column ascending" style="width: 150px;">Indikasi Lender
                    </th>


                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="dana_usulan: activate to sort column ascending" style="width: 150px;">Kelayakan
                    </th>

                     <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="rencana: activate to sort column ascending" style="width: 150px;">DK



                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Files: activate to sort column ascending" style="width: 150px;">Aksi
                    </th>


                    </tr>
                    </thead>
                    <tbody>
                    
                    <?php foreach ($data as $key => $value): ?>

                    <tr class="gradeA odd" role="row">
                        <td class="sorting_1"></td>
                        <td><?php 

                        $this->load->model('Greenbook_model'); //load model
                        $this->load->model('Usulan_model'); //load model
                        $b = $this->Usulan_model->ambil_instansi_untuk_usulan($value['id_instansi']);
                        $h = $this->Usulan_model->ambil_instansi_untuk_usulan($value['id_instansi_pelaksana']);
                        $c = $value['id'];
                        $d = $this->Greenbook_model->kode_bluebook($value['id_bluebook']);
                        $e = $this->Greenbook_model->status_lender($value['id_status_lender']);
                        $f = $this->Greenbook_model->status_lembaga($value['id_status_lembaga']);
                        $g = $this->Greenbook_model->lender($value['id_lender']);
                        $i = $this->Usulan_model->ambil_program_proyek($value['id_program']);
                         $z = $this->Greenbook_model->kode_greenbook($value['id_greenbook']);

                       echo $b->nama_instansi; ?></td>
                       <td><?php 

                            if($value['id_program']!= ""){
                                echo $i->nama_program; 
                            }else {
                                echo ""; 
                            }
                             ?>
                        </td>
                        <td> <a id="<?php echo $value['id']; ?>" class="detail" ><?php echo $value['judul_proyek_id']; ?> </a></td>
                        <td><?php 

                            if($value['id_greenbook']!= ""){
                                echo $z->nama; 
                            }else {
                                echo ""; 
                            }
                             ?>
                        </td>
                        
                        <td><?php 

                            if($value['id_bluebook']!= ""){
                                echo $d->nama; 
                            }else {
                                echo ""; 
                            }
                             ?>
                        </td>
                      
                        <td><?php

                                 echo $value['nilai_pinjaman'];
                         
                           ?>
                            
                        </td>
                       
                        <td>
                            <?php 

                                if($value['id_lender']!= ""){
                                echo $g->lender; 
                            }else {
                                echo ""; 
                            }
                                    
                            ?>
                                
                        </td>



                        <td>
                          <?php 

                          $layak = $this->Greenbook_model->ambil_layak($value['id'])->is_layak;
                          $kasubdit_layak = $this->Greenbook_model->ambil_layak($value['id'])->is_kasubdit_layak;

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
                                echo "<a id='".$value['id']."' class='tambahkeDK' data-id='".$is_dk."' data-kasubdit='".$dk_kasubdit."'><i class='btn fa fa-times-circle btn-warning'></i></a>";
                                 
                            }elseif ($dk_kasubdit == '1') {
                                 echo "<a id='".$value['id']."' class='tambahkeDK' data-id='".$is_dk."' data-kasubdit='".$dk_kasubdit."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                                 
                            }else{
                                echo '<a ><i class="btn fa fa-times-circle btn-danger" ></i></a>';
                            }

                         
                        }elseif ($is_dk == '2') {

                         
                          if ($dk_kasubdit == '0') {
                            echo "<a id='".$value['id']."' class='tambahkeDK' data-id='".$is_dk."' data-kasubdit='".$dk_kasubdit."'><i class='btn fa fa-check-square btn-warning'></i></a>";
                             
                          }elseif ($dk_kasubdit == '1') {
                            echo "<a id='".$value['id']."' class='tambahkeDK' data-id='".$is_dk."' data-kasubdit='".$dk_kasubdit."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                            
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>'; 
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<div class='btn-group'>
                            <button type='button'  class='tambahkeDK btn btn-xs  btn-danger' data-id='".$is_dk."' data-kasubdit='".$dk_kasubdit."' id='".$value['id']."' data-layak='".$kasubdit_layak."'><i class='fa fa-plus'></i> Tambah ke DK</button>
                        </div>";
                         // echo "<a id='".$value['id']."' class='tambahBB' ><i class='btn fa fa-plus  btn-danger'></i></a>";
                          
                        }

                           
                            ?>


                       </td>
                       

                       <td>
                           
                           <div class="input-group-btn">
                           <button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button" aria-expanded="false">Aksi <span class="caret"></span></button>
                           
                           <ul class="dropdown-menu pull-right">
                                                   <li><a class="rekam" id="<?php echo $value['id']; ?>" >Rekam Jejak</a></li>
                                                   
                                                   <li><a  class="edit" id="<?php echo $value['id']; ?>" >Edit</a></li>
                                                    <li><a class="del-proyek" id="<?php echo $value['id']; ?>">Hapus</a></li>
                                                   
                                                </ul>
                            </div>

                       </td>

                        <?php endforeach; ?>
                    </tr>
               
                    </tbody>

                    
                    </table>

                     
                


       <div class="modal inmodal fade" id="myModalDetail" tabindex="-1" role="dialog" aria-hidden="true" style="display:  none;">
                         <div class="modal-dialog modal-lg">
                            
                                
                                <div class="modal-body">
                               
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                    </button> 

                                 <div class="fetched-data"></div>
                                    
                           

                        </div>
                            
                        </div>
                        </div>
                    

                 
                   
                        
                    





                  

                </div>


			</div>
			</div>

		</div>
	</div>
</div>
</td>
</tr>
</tbody>
</th>
</tr>
</thead>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<div id="tmpModal3"></div>

<!-- Mainly scripts -->
    <script src="<?php echo base_url(); ?>assets/inspinia/js/jquery-2.1.1.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/bootstrap.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/jeditable/jquery.jeditable.js"></script>
    <script src="<?php echo base_url(); ?>assets/xcrud/plugins/jquery.min.js"></script>
   
    <!-- Data Tables -->
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/dataTables/dataTables.responsive.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/dataTables/dataTables.tableTools.min.js"></script>


    <!-- Custom and plugin javascript -->
    <script src="<?php echo base_url(); ?>assets/inspinia/js/inspinia.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/pace/pace.min.js"></script>

   

    <!-- Page-Level Scripts -->
   

     
   
   <script type="text/javascript">
  $(document).ready(function(){
    refresh();

     function refresh(){
    $.get("<?php echo base_url(); ?>Usulan/tampil_usulan", function(data) {
     
    });
  }

  $(document).on('click', '.layak', function(){  
           
         
             var id = $(this).attr("id"); 
             var kasubdit = $(this).attr("data-kasubdit"); 
             var layak = $(this).attr("data-id"); 
           console.log(id);
           console.log(kasubdit);

        if (layak == '0') {
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Greenbook/layak",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal3").html(response);
                $('#modalLayak2').modal('show');
                console.log("bisa");
              alert(response);
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });

         } else if(kasubdit == '0'){

            alert('Menunggu persetujuan kasbudit');

         };
         
         });

       
});

    
  </script>
   
   <script type="text/javascript">

  $(document).on('click', '#tambah', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

          $('#modalBB').modal('show');
             //var id = $(this).attr("id"); 
           
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                
                url : "<?php echo base_url(); ?>greenbook/tambah",
                
                success : function(data){
                $('.fetch-data').html(data);//menampilkan data ke dalam modal
                console.log("tes");
                }
            });
          });


    
  </script>

   <script type="text/javascript">
  $(document).ready(function(){
    refresh();

     function refresh(){
    $.get("<?php echo base_url(); ?>Usulan/tampil_usulan", function(data) {
     
    });
  }

  $(document).on('click', '.rekam', function(){  
           
         
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Greenbook/arsip",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal3").html(response);
                $('#modal_arsip').modal('show');
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });
            });
       
});

    
  </script>



  <script type="text/javascript">

  $(document).on('click', '.del-proyek', function(){  
           
          
          //$('#myModalDetail').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTparget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Greenbook/hapus",
                data :  'id='+ id,
                success : function(response){
                
                  $("#tmpModal3").html(response);
                $('#modalHapus').modal('show');
              
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
            });
          });


  $(document).on('click', '#tambahBaru', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

          //$('#modalBB').modal('show');
             //var id = $(this).attr("id"); 
           
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                
                url : "<?php echo base_url(); ?>greenbook/tambah_manual",
                
                success : function(response){
               // $('.fetch-data').html(data);//menampilkan data ke dalam modal
                console.log("tes");
                  $("#tmpModal3").html(response);
                  $('#ModalEdit').modal('show');
                }
            });
          });

  $(document).on('click', '.tambahkeDK', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

        var id = $(this).attr("id"); 
        var dk = $(this).attr("data-id"); 
        var kasubdit = $(this).attr("data-kasubdit"); 
        var layak_kasubdit = $(this).attr("data-layak"); 

        console.log(id);
        console.log(dk);
        console.log(kasubdit);
        console.log(layak_kasubdit);
        
           //console.log(id); 
          if (layak_kasubdit == '2') {
            console.log("sukses");
         console.log(id);
             $.ajax({
                     type : 'post',
                      url : "<?php echo base_url(); ?>Greenbook/tambahkeDK",
                      data :  'id='+ id,
                      success : function(response){
                        console.log("sudah ditambah");
                        //console.log(response);
                      
                       $("#tmpModal3").html(response);
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
          });


    
  </script>

  <script type="text/javascript">
 function nilai_dk(layak, id){
    console.log("sukses");
   
     var id = id;
     //console.log(id); 
    if (layak == '1') {
      console.log("sukses");
   console.log(id);
       $.ajax({
               type : 'post',
                url : "<?php echo base_url(); ?>Greenbook/tambahkeDK",
                data :  'id='+ id,
                success : function(response){
                  console.log("sudah ditambah");
                  //console.log(response);
                
                 $("#tmpModal3").html(response);
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
  }
         
   </script>


  <script type="text/javascript">
    $(document).ready(function(){
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

                  $("#tmpModal3").html(response);
                $('#ModalEdit').modal('show');
                console.log("hahaha");
                console.log(id);
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });
            });
});

  </script>

  <script type="text/javascript">
  $(document).ready(function(){
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
                $("#tmpModal3").html(response);
                $('#modalDetail').modal('show');
                }
            });
          });
});

    
  </script>


  
    
<style>
    body.DTTT_Print {
        background: #fff;

    }
    .DTTT_Print #page-wrapper {
        margin: 0;
        background:#fff;
    }

    button.DTTT_button, div.DTTT_button, a.DTTT_button {
        border: 1px solid #e7eaec;
        background: #fff;
        color: #676a6c;
        box-shadow: none;
        padding: 6px 8px;
    }
    button.DTTT_button:hover, div.DTTT_button:hover, a.DTTT_button:hover {
        border: 1px solid #d2d2d2;
        background: #fff;
        color: #676a6c;
        box-shadow: none;
        padding: 6px 8px;
    }

    .dataTables_filter label {
        margin-right: 5px;

    }
</style>


 <div class="ibox-content">
