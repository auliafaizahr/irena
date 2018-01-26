<div class="row wrapper border-bottom white-bg page-heading">

	<div class="col-lg-12">
		<h2>Daftar Kegiatan</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini menampilkan Daftar Kegiatan proyek Direktorat Perencanaan Pembangunan
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
					<h5 >Daftar Usulan</h5> 
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
                </div>

                <div class="dataTables_length" id="DataTables_Table_0_length"> 
               
               	</div>

                

               	<div id="DataTables_Table_0_filter" class="dataTables_filter">
               
                </div><table class="table table-striped table-bordered table-hover dataTables-example dataTable dtr-inline" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">

                    <thead>

                    <tr role="row">
                    <th class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column descending" style="width: 5px;" aria-sort="ascending">#
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Instansi: activate to sort column ascending" style="width: 314px;">Instansi Pengusul
                    </th>

                   
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="judul_proyek: activate to sort column ascending" style="width: 289px;">Judul Proyek
                    </th>

                     <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="judul_proyek: activate to sort column ascending" style="width: 289px;">Program
                    

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="dana_usulan: activate to sort column ascending" style="width: 150px;">Pinjaman
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="dana_usulan: activate to sort column ascending" style="width: 150px;">Lender
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="rencana: activate to sort column ascending" style="width: 150px;">Bluebook
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="rencana: activate to sort column ascending" style="width: 150px;">Greenbook
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="rencana: activate to sort column ascending" style="width: 150px;">Kelayakan Administrasi
                    </th>


                     <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Files: activate to sort column ascending" style="width: 150px;">LA
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

                        $this->load->model('dk_model'); //load model
                        $b = $this->dk_model->ambil_instansi_untuk_usulan($value['id_instansi']);
                        if ($value['id_lender']!= "") {
                            $d = $this->dk_model->lender_untuk_proyek($value['id_lender'])->lender;
                        }else{
                            $d="";
                        }

                        if ($value['id_bluebook']!= "") {
                            $e = $this->dk_model->ambil_bb($value['id_bluebook'])->nama;
                         }else{
                            $e="";
                         }


                        if ($value['id_greenbook']!= "") {
                            $f = $this->dk_model->ambil_gb($value['id_greenbook'])->nama;
                         }else{
                            $f="";
                         }



                        if ($value['id_program']!= "") {
                           $g = $this->dk_model->ambil_program_proyek($value['id_program'])->nama_program;
                         }else{
                            $g="";
                         }


                         

                       
                       
                       

                        $c = $value['id'];

                       echo $b->nama_instansi; ?></td>
                        <td> <a class="detail" id="<?php echo $value['id'];  ?>" data-id="<?php echo $value['id'];  ?>" ><?php echo $value['judul_proyek_id']; ?> </a></td>
                         <td> <?php echo $g; ?> </td>
                        <td> <?php echo $value['nilai_pinjaman']; ?> </td>
                        <td> <?php echo $d; ?> </td>
                        <td> <?php echo $e; ?> </td>
                        <td> <?php echo $f; ?> </td>   


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
                       
                    
                      
                       
                       

                       <td>
                           
                           <div class="input-group-btn">
                           <button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button" aria-expanded="false">Aksi <span class="caret"></span></button>
                           
                           <ul class="dropdown-menu pull-right">
                                                   <li><a  class="rekam" id="<?php echo $value['id']; ?>">Rekam Jejak</a></li>
                                                   <li><a href="#" data-toggle="" data-target="modal" class="edit" id="<?php echo $value['id']; ?>" >Edit</a></li>
                                                    <li><a class="del-proyek" id="<?php echo $value['id']; ?>">Hapus</a></li>
                                                   
                                                </ul>
                            </div>

                       </td>

                        <?php endforeach; ?>
                    </tr>
               
                    </tbody>

                    
                    </table>

                    

                    <div class="modal inmodal fade" id="myModalDetail" tabindex="-1" role="dialog" aria-hidden="true" style="display:  none;">
                        <div>

                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                
                                <div class="modal-body">
                                 <button type="button" class="close" data-dismiss="modal" id="hide_modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                    </button> 

                                 <div class="fetched-data"></div>
                                    
                            </div>

                        </div>
                            
                        </div>
                    </div>

                    <div class="modal inmodal fade" id="ModalEdit" tabindex="-1" role="dialog" aria-hidden="true" style="display:  none;">
                        <div>

                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                
                                <div class="modal-body">
                                 <div class="fetched-data-edit"></div>
                                    
                            </div>

                        </div>
                            
                        </div>
                    </div>

                    <div class="modal inmodal fade" id="modalArsip" tabindex="-1" role="dialog" aria-hidden="true" style="display:  none;">
                        <div>

                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                
                                <div class="modal-body">
                                 <div class="fetched-data-arsip"></div>
                                    
                            </div>

                        </div>
                            
                        </div>
                    </div>
                    </div>

                    <div class="modal inmodal fade" id="modalKecil" tabindex="-1" role="dialog" aria-hidden="true" style="display:  none;">
                       
                        <div class="modal-dialog">
                            
                                
                                 <div class="fetched-data-lagi"></div>
                                    
                           

                        </div>
                            
            </div>






                    <div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
                        <ul class="pagination">
                            <li class="paginate_button previous disabled" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_previous"><a href="#">Previous</a>
                            </li>

                            <li class="paginate_button active" aria-controls="DataTables_Table_0" tabindex="0"><a href="#">1</a>
                            </li>

                            <li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">2</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">3</a>
                            </li>

                            <li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">4</a></li><li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">5</a>
                            </li>

                            <li class="paginate_button " aria-controls="DataTables_Table_0" tabindex="0"><a href="#">6</a>
                            </li>

                            <li class="paginate_button next" aria-controls="DataTables_Table_0" tabindex="0" id="DataTables_Table_0_next"><a href="#">Next</a>
                            </li>

                        </ul>

                    </div>

                </div>


			</div>
			</div>

		</div>
	</div>
</div>
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

<div id="tmpModal4"></div>

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
               $("#tmpModal4").html(response);
                $('#modalDetail').modal('show');
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
                url : "<?php echo base_url(); ?>daftar_kegiatan/hapus",
                data :  'id='+ id,
                success : function(response){
                
                  $("#tmpModal4").html(response);
                $('#modalHapus').modal('show');
              
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
            });
          });


   $(document).on('click', '#hide_modal', function(){  
           
          
          $('#myModalDetail').modal('hide');
             var id = $(this).attr("id"); 
           console.log("tutup");
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>daftar_kegiatan/tambah",
                data :  'id='+ id,
                success : function(data){
                $('.fetched-data').html(data);//menampilkan data ke dalam modal
                console.log(variable);
console.info(variable);
console.warn(variable);
console.error(variable);
                }
            });
          });

  $(document).on('click', '#tmbhBttn', function(){  
           
          
          $('#myModalDetail').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>daftar_kegiatan/tambah",
                data :  'id='+ id,
                success : function(data){
                $('.fetched-data').html(data);//menampilkan data ke dalam modal
                $('#myModalDetail').modal({
    backdrop: 'static',
    keyboard: false
})
                console.log(variable);
console.info(variable);
console.warn(variable);
console.error(variable);
                }
            });
          });


});


    
  </script>
<script type="text/javascript">
 
  function nilai_admin(){
    console.log("sukses");
      $('#modalKecil').modal('show');
   
      console.log("sukses");
    $.ajax({
      type : 'post',
                url : "<?php echo base_url(); ?>Usulan/adm",
              //  data :  'id='+ id,
                success : function(data){
                  $('#modalKecil').modal('show');
                $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                }
    });
    
  }
         
    </script>


  <script type="text/javascript">
$(document).on('click', '.tambahkeLA', function(){  
           
         
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

                  $("#tmpModal4").html(response);
                $('#modalLayak2').modal('show'); //ganti nama nanti
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
             var kasubdit = $(this).attr("data-kasubdit"); 
           console.log(id);
           console.log(layak);
           console.log(kasubdit);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
        if(layak == '0'){
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>daftar_kegiatan/layak",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal4").html(response);
                $('#modalLayak2').modal('show');
                console.log("bisa");
              alert(response);
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });

            }else if(kasubdit == '0'){
                  alert('Menunggu persetujuan kasubdit');
            };
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
                url : "<?php echo base_url(); ?>daftar_kegiatan/arsip",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal4").html(response);
                $('#modal_arsip').modal('show');
                console.log("haha");
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

                $("#tmpModal4").html(response);
                $('#ModalEdit').modal('show');
               // $('.fetched-data-edit').html(data);//menampilkan data ke dalam modal
                }
            });

          });
});

  </script>

  





<script type="text/javascript">
   $(document).ready(function(){
  $('#irow').click(function(){
    
    if($('#row').val() || cekRow <= 1){
        $('#mtable tbody').append($("#mtable tbody tr:first").clone());
        $('#mtable tbody tr:last :checkbox').attr('checked',false);
        $('#mtable tbody tr:last td:first').html($('#row').val());
        console.log($('#row').val());
    }else{alert('Enter Text');}
});
$('#icol').click(function(){
    if($('#col').val()){
        $('#mtable tr').append($("<td>"));
        $('#mtable thead tr>td:last').html($('#col').val());
        $('#mtable tbody tr').each(function(){$(this).children('td:last').append($('<input type="checkbox">'))});
    }else{alert('Enter Text');}
});

 $("#mtable").on('click','.remove',function(){
        var cekRow = $('#mtable tbody tr').length;

        if(cekRow <=1){
          alert("Tidak bisa menghapus semua baris");
        }else {
        $(this).parent().parent().remove();
      }
    });
})

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
