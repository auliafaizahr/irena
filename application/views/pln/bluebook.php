<div class="row wrapper border-bottom white-bg page-heading">

	<div class="col-lg-12">
		<h2>Bluebook</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini menampilkan Daftar Proyek Bluebook ke Direktorat Perencanaan Pembangunan
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
					<h5>Daftar Bluebook</h5> 
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

               	<div id="DataTables_Table_0_filter" class="dataTables_filter">
               
                </div><table class="table table-striped table-bordered table-hover dataTables-example dataTable dtr-inline" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">

                    <thead>

                    <tr role="row">
                    <th class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column descending" style="width: 5px;" aria-sort="ascending">#
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Instansi: activate to sort column ascending" style="width: 314px;">Instansi
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="judul_proyek: activate to sort column ascending" style="width: 289px;">Judul Proyek
                    </th>

                     <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="judul_proyek: activate to sort column ascending" style="width: 289px;">Program
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="durasi: activate to sort column ascending" style="width: 150px;">Kode Bluebook
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="dana_usulan: activate to sort column ascending" style="width: 150px;">Status Lembaga
                    </th>

                     <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="rencana: activate to sort column ascending" style="width: 150px;">Status Lender
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="BB: activate to sort column ascending" style="width: 150px;">Nilai Pinjaman
                    </th>

                    

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="DK: activate to sort column ascending" style="width: 150px;">Indikasi Lender
                    </th>

                     <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Files: activate to sort column ascending" style="width: 150px;">Kelayakan Administrasi
                    </th>


                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Files: activate to sort column ascending" style="width: 150px;">Masuk ke GB
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Files: activate to sort column ascending" style="width: 150px;">Aksi
                    </th>


                    </tr>
                    </thead>
                    <tbody>
                    
                    <?php foreach ($data as $key => $value): ?>

                    <tr class="gradeA odd" role="row">
                        <td class="sorting_1"></td>
                        <td><?php 

                        $this->load->model('Bluebook_model'); //load model
                        $b = $this->Bluebook_model->ambil_instansi_untuk_usulan($value['id_instansi']);
                        $h = $this->Bluebook_model->ambil_instansi_untuk_usulan($value['id_instansi_pelaksana']);
                        $c = $value['id'];
                        $d = $this->Bluebook_model->kode_bluebook($value['id_bluebook']);
                        $e = $this->Bluebook_model->status_lender($value['id_status_lender']);
                        $f = $this->Bluebook_model->status_lembaga($value['id_status_lembaga']);
                        $g = $this->Bluebook_model->lender($value['id_lender']);
                        $h = $this->Bluebook_model->ambil_program_untuk_detail($value['id_program']);

                       echo $b->nama_instansi; ?></td>
                        <td> <a class="detail" id="<?php echo $value['id']; ?>" data-toggle="#myModalDetail" data-target="modal" ><?php echo $value['judul_proyek_id']; ?> </a></td>
                        
                        <td><?php 

                            if($value['id_program']!= ""){
                                echo $h->nama_program; 
                            }else {
                                echo "-"; 
                            }
                             ?>
                        </td>
                        <td><?php 

                            if($value['id_bluebook']!= ""){
                                echo $d->nama; 
                            }else {
                                echo ""; 
                            }
                             ?></td>

                        <td><?php 

                            if($value['id_status_lembaga']!= ""){
                                echo $f->status; 
                            }else {
                                echo ""; 
                            }
                             ?></td>
                        <td><?php 

                            if($value['id_status_lender']!= ""){
                                echo $e->status; 
                            }else {
                                echo ""; 
                            }
                             ?></td>
                        
                        <td><?php 

                                echo $value['dana_pendamping'];
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
                       
                        $layak = $this->Bluebook_model->ambil_layak($value['id'])->is_layak;
                        $kasubdit_layak = $this->Bluebook_model->ambil_layak($value['id'])->is_kasubdit_layak;
                       
                        $c = $value['id'];


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
                          echo "<a id='".$value['id']."' class='layak'php data-id='".$layak."' data-kasubdit='".$kasubdit_layak."' ><i class='btn fa fa-times-circle  btn-default'></i></a>";
                          
                        }

                        ?>
                           
                         </td>
                   

                         <td>

                         <?php 

                         //ganti ikon untuk usulkan ke GB

                        $is_GB = $this->Bluebook_model->ambil_layak($value['id'])->is_GB;
                        $gb_kasubdit = $this->Bluebook_model->ambil_layak($value['id'])->is_gb_kasubdit;

                        if ($is_GB == '1') {

                           if ($gb_kasubdit == '0') {
                            echo "<a id='".$value['id']."' class='tambahkeGB' data-id='".$is_GB."' data-kasubdit='".$gb_kasubdit."'><i class='btn fa fa-times-circle btn-warning'></i></a>";
                             
                        }elseif ($gb_kasubdit == '1') {
                             echo "<a id='".$value['id']."' class='tambahkeGB' data-id='".$is_GB."' data-kasubdit='".$gb_kasubdit."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                             
                        }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger" ></i></a>';
                          }

                         
                        }elseif ($is_GB == '2') {

                         
                          if ($gb_kasubdit == '0') {
                            echo "<a id='".$value['id']."' class='tambahkeGB' data-id='".$is_GB."' data-kasubdit='".$gb_kasubdit."'><i class='btn fa fa-check-square btn-warning'></i></a>";
                             
                          }elseif ($gb_kasubdit == '1') {
                            echo "<a id='".$value['id']."' class='tambahkeGB' data-id='".$is_GB."' data-kasubdit='".$gb_kasubdit."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                            
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>'."<a id='".$value['id']."' data-id='".$is_GB."' data-kasubdit='".$gb_kasubdit."' class='tambahkeGB' ><i class='btn fa fa-plus  btn-danger'></i></a>"; 
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<div class='btn-group'>
                            <button type='button'  class='tambahkeGB btn btn-xs  btn-danger' id='".$value['id']."' data-id='".$is_GB."' data-kasubdit='".$gb_kasubdit."'><i class='fa fa-plus'></i> Tambah ke GB</button>
                            </div>";
                         // echo "<a id='".$value['id']."' class='tambahBB' ><i class='btn fa fa-plus  btn-danger'></i></a>";
                          
                        }

                        ?>
                           
                            


                       </td>

                       <td>
                           
                           <div class="input-group-btn">
                           <button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button" aria-expanded="false">Aksi <span class="caret"></span></button>
                           
                           <ul class="dropdown-menu pull-right">
                                                   <li><a  class="rekam" id="<?php echo $value['id']; ?>">Rekam Jejak</a></li>
                                                   <li><a  class="edit" id="<?php echo $value['id']; ?>" >Edit</a></li>
                                                    <li><a  class="del-proyek" id="<?php echo $value['id']; ?>" >Hapus</a></li>
                                                   
                                                </ul>
                            </div>

                       </td>

                        <?php endforeach; ?>
                    </tr>
                    <div></div>
               
                    </tbody>

                    
                    </table>

                     

                            
                                

                            
                        </div>
                    
                    </div>


                    <div class="modal inmodal fade" id="modalUsulan" tabindex="-1" role="dialog" aria-hidden="true" style="display:  none;">
                      

                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                    </button>
                                        <h4 class="modal-title" id="judul_proyek">Daftar Proyek Usulan</h4>
                                        <small class="font-bold">Berikut Daftar Proyek Usulan yang Bisa ditambahkan ke Bluebook</small>
                                        
                                </div>
                                <div class="modal-body">
                                    <div class="wrapper wrapper-content animated fadeIn">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="ibox float-e-margins">
                                                    <div class="ibox-title">
                                                        <?php
                                                        
                                                        $a = $this->uri->segment(3);

                                                        ?>
                                                        <h5 id="judul_proyek" > Detail Proyek </h5> 
                                                        <div class="ibox-tools">

                                                            <a class="collapse-link">
                                                                <i class="fa fa-chevron-up"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                <div class="ibox-content css-animation-box">

                                                <div class="dataTables_length" id="DataTables_Table_0_length"> 
                </div>
                  <div>
                <table class="table table-striped table-bordered table-hover dataTables-example dataTable dtr-inline" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">

                    <thead>

                    <tr role="row">
                    <th class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column descending" style="width: 5px;" aria-sort="ascending">#
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Instansi: activate to sort column ascending" style="width: 314px;">Instansi Pengusul
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Instansi: activate to sort column ascending" style="width: 314px;">Judul
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Instansi: activate to sort column ascending" style="width: 20px;">Aksi
                    </th>
                                               
                                               </tr>
                                               </thead>
                    <tbody>
                        <?php foreach ($layak as $key => $value): ?>

                    <tr class="gradeA odd" role="row">
                    <td class="sorting_1"></td>
                    <td><?php

                    $this->load->model('Bluebook_model');

                    $a = $this->Bluebook_model->ambil_instansi_untuk_usulan($value['id_usulan'])->nama_instansi;
                   

                     echo $a; ?></td>

                     <td>  <?php echo $b = $this->Bluebook_model->ambil_judul($value['id_usulan'])->judul_proyek_id; ?></td>
                     <td><div class="tambahBB" id="<?php echo $value['id']; ?>"><i class="btn fa fa-plus-square btn-success" ></i></div></td>
                      </tr>
                      <?php endforeach; ?>
                    </tbody>

                 

                     

                 
                                               </table>


                    </div>
                    </div>
                    <div class="hr-line-dashed"></div>

                                                    

                                                   
                                                    
                                                    



                                              </div>
                                

                                    </div>

                                    </div>
              

</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="tmpModal2"></div>

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
 


    <script>
        $(document).ready(function(){
                $("#tmbhBttn").click(function(){
                        $("#modalUsulan").modal('show');
                });
        });
    </script>

<script type="text/javascript">
  $(document).ready(function(){
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
                $("#tmpModal2").html(response);
                $('#modalDetail').modal('show');
                }
            });
          });
});

    
  </script>

   <script type="text/javascript">
  $(document).ready(function(){


  $(document).on('click', '.rekam', function(){  
           
         
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/arsip",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal2").html(response);
                $('#modal_arsip_bb').modal('show');
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });
            });
       
});

    
  </script>


   </script>


   <script type="text/javascript">
  $(document).ready(function(){
    refresh();

     function refresh(){
    $.get("<?php echo base_url(); ?>Usulan/tampil_usulan", function(data) {
     
    });
  }

  $(document).on('click', '.layak', function(){  
           
         
             var id = $(this).attr("id"); 
             var layak = $(this).attr("data-id"); 
             var kasubdit_layak = $(this).attr("data-kasubdit"); 
           console.log(id);
           console.log(layak);
           console.log(kasubdit_layak);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);

        if (layak == '0') {
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/layak",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal2").html(response);
                $('#modalLayak2').modal('show');
                console.log("bisa");
              alert(response);
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });

          } else if (kasubdit_layak == '0'){
            alert('Menunggu persetujuan kasubdit');
            
          };
        });
       

        $(document).on('click', '.tambahkeGB', function(){  
           
         
             var gb = $(this).attr("id"); 
             var id = $(this).attr("id"); 
             var layak = $(this).attr("data-id"); 
             var kasubdit = $(this).attr("data-kasubdit"); 
          // console.log(id);
           console.log(gb);
           console.log(layak);
           console.log(kasubdit);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);

        if (layak == '0') {

          if(kasubdit == '0')
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/tambahkeGB",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal2").html(response);
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

                  $("#tmpModal2").html(response);
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

          ;
        });
       


});

    
  </script>

  <script type="text/javascript">

 function nilai_gb(layak, id){
    console.log("sukses");
   
     var id = id;
     //console.log(id); 
    if (layak == '1') {
      console.log("sukses");
  
       $.ajax({
               type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/tambahkeGB",
                data :  'id='+ id,
                success : function(response){
                  console.log("sudah ditambah");
                  console.log(response);
                 console.log(id);
                 $("#tmpModal2").html(response);
              $('#modalGB').modal('show');
              
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
                
                  $("#tmpModal2").html(response);
                $('#modalHapus').modal('show');
              
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
            });
          });

    $(document).on('click', '.del_proyek', function(){  
           
          
          
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/delete",
                data :  'id='+ id,
                success : function(data){
               console.log("sukses dihapus"); //menampilkan data ke dalam modal
                }
            });
          });

    $(document).on('click', '.tambahBB', function(){  
           
          
          
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/tambah_usulan",
                data :  'id='+ id,
                success : function(data){
               console.log("sukses dihapus"); //menampilkan data ke dalam modal
                }
            });
          });
});

    
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
               
                url : "<?php echo base_url(); ?>Bluebook/edit",
                data :  'id='+ id,
                 type : 'post',
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal2").html(response);
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



