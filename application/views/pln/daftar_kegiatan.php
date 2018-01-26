<div class="row wrapper border-bottom white-bg page-heading">

	<div class="col-lg-12">
		<h2>Usulan</h2>
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
                <button type="button" class="btn btn-default btn-lg" id="tombol1">Tes</button>
                <div class="clear"> 

            

                <div class="dataTables_length" id="DataTables_Table_0_length"> 
                
               	</div>

                <label>
                <select name="DataTables_Table_0_length" aria-controls="DataTables_Table_0" class="form-control input-sm">  
                <option value="10">10</option>
                <option value="25">25</option>
                <option value="50">50</option>
                <option value="100">100</option>
              
                </select>
                Data per Halaman
                </label>

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
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="ruang_lingkup: activate to sort column ascending" style="width: 199px;">Ruang Lingkup
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="durasi: activate to sort column ascending" style="width: 150px;">Kode Bluebook
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="dana_usulan: activate to sort column ascending" style="width: 150px;">Status Lembaga
                    </th>

                     <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="rencana: activate to sort column ascending" style="width: 150px;">Status Lender
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="BB: activate to sort column ascending" style="width: 150px;">Nilai Pinjaman
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="GB: activate to sort column ascending" style="width: 150px;">Dana Pendamping

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="DK: activate to sort column ascending" style="width: 150px;">Indikasi Lender
                    </th>


                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="LA: activate to sort column ascending" style="width: 150px;">Instansi Pelaksana
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Files: activate to sort column ascending" style="width: 150px;">Files
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
                        $b = $this->Greenbook_model->ambil_instansi_untuk_usulan($value['id_instansi']);
                        $h = $this->Greenbook_model->ambil_instansi_untuk_usulan($value['id_instansi_pelaksana']);
                        $c = $value['id'];
                        $d = $this->Greenbook_model->kode_bluebook($value['id_bluebook']);
                        $e = $this->Greenbook_model->status_lender($value['id_status_lender']);
                        $f = $this->Greenbook_model->status_lembaga($value['id_status_lembaga']);
                        $g = $this->Greenbook_model->lender($value['id_lender']);

                       echo $b->nama_instansi; ?></td>
                        <td> <a href="<?php echo base_url(); ?>Usulan/detil"  id="coba" onclick="getPilih(<?php echo $c; ?>);" data-toggle="modal" data-target="myModalDetail" ><?php echo $value['judul_proyek(ID)']; ?> </a></td>
                        <td><?php echo $value['ruang_lingkup(ID)']; ?></td>
                        <td><?php 

                            if($value['id_bluebook']!= ""){
                                echo $d->nama; 
                            }else {
                                echo ""; 
                            }
                             ?>
                        </td>
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

                                 echo $value['nilai_pinjaman'];
                         
                           ?>
                            
                        </td>
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

                            if($value['id_instansi_pelaksana'] != ""){
                                echo $h->nama_instansi; 
                            }else {
                                echo ""; 
                            }
                                    
                            
                            ?>

                        </td>
                        <td>

                            <?php 

                                    if($value['Files'] == 0){
                                    echo 'Tidak ada File';
                                  }else{
                                     echo ($value['Files']);
                                  }; 
                            ?>


                       </td>

                       <td>
                           
                           <div class="input-group-btn">
                           <button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button" aria-expanded="false">Action <span class="caret"></span></button>
                           
                           <ul class="dropdown-menu pull-right">
                                                   <li><a href="#" data-toggle="#myModalDetail" data-target="modal" >Rekam Jejak</a></li>
                                                    <li><a href="#">Hapus</a></li>
                                                   
                                                </ul>
                            </div>

                       </td>

                        <?php endforeach; ?>
                    </tr>
               
                    </tbody>

                    
                    </table>

                     
                    <div class="modal inmodal fade" id="myModal5" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                    </button>
                                        <h4 class="modal-title">Tambah Usulan Proyek</h4>
                                        <small class="font-bold">Input data Usulan Proyek pada Halaman ini</small>
                                        
                                </div>
                            
                                <div class="modal-body">
                                    <div class="wrapper wrapper-content animated fadeIn">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="ibox float-e-margins">
                                                    
                                                <?php echo $isi; ?>
                                                    </div>
                                            
                                        
                                    
                                    </div>

                                                            
                            

                                  
                               </div>
                               
                            
                                </div>  
                                        
                                       
                                </div>

                                        <div class="modal-footer">
                                             <div class="form-group">
                                                    
                                                    <button class="btn btn-white" data-dismiss="modal">Kembali</button>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                     </div>

                                    </div>
                                </div>
                            </div>
                            </div>


                    <div class="modal inmodal fade" id="myModalDetail" tabindex="-1" role="dialog" aria-hidden="true" style="display:  none;">
                        <div>

                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                    </button>
                                        <h4 class="modal-title">Detail Proyek</h4>
                                        <small class="font-bold">Input data Usulan Proyek pada Halaman ini</small>
                                        
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
                                                        <h5>Detail Proyek <?php echo $this->uri->segment(2); ?></h5> 
                                                        <div class="ibox-tools">

                                                            <a class="collapse-link">
                                                                <i class="fa fa-chevron-up"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                <div class="ibox-content css-animation-box">

                                                    <form method="get" class="form-horizontal">
                                                        <div class="form-group">

                                                        <label class="col-sm-2 control-label">Instansi Pengusul : </label>
                                                             <div class="input-group ">
                                                                <select data-placeholder="Choose a Country..." class="chosen-select" style="width:650px;" tabindex="2">
                                                               <!--  <option value="">Select</option>
                                                                    
                                                                    <?php foreach ($lembaga as $value) { ?>
                                                                        
                                                                        <option value="<?php echo $value['id']; ?> "> <?php echo $value['nama_instansi']; ?> </option>;
                                                                    <?php 
                                                                    
                                                                    }; 

                                                                    ?>
                                                                    
                                                                 </select> -->
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>
                            </div>

                        </div>
                            
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
        $(document).ready(function() {
            $('.dataTables-example').dataTable({
                responsive: true,
                "dom": 'T<"clear">lfrtip',
                "tableTools": {
                    "sSwfPath": "irena/assets/inspinia/js/plugins/dataTables/swf/copy_csv_xls_pdf.swf"
                }
            });

            
        



            /* Init DataTables */
            var oTable = $('#editable').dataTable();

            /* Apply the jEditable handlers to the table */
            oTable.$('td').editable( '../example_ajax.php', {
                "callback": function( sValue, y ) {
                    var aPos = oTable.fnGetPosition( this );
                    oTable.fnUpdate( sValue, aPos[0], aPos[1] );
                },
                "submitdata": function ( value, settings ) {
                    return {
                        "row_id": this.parentNode.getAttribute('id'),
                        "column": oTable.fnGetPosition( this )[2]
                    };
                },

                "width": "90%",
                "height": "100%"
            } );


        

        function fnClickAddRow() {
            $('#editable').dataTable().fnAddData( [
                "Custom row",
                "New row",
                "New row",
                "New row",
                "New row" ] );

        }

    });
    </script>

    <script>
        $(document).ready(function(){
                $("#tombol1").click(function(){
                        $("#myModalDetail").modal();
                });
        });
    </script>

     <script>
        function getPilih($a){
                       
                    var dptPilih = $a;
                    console.log(dptPilih);

                $.ajax({

                    type: 'POST',
                    data: {id: id},
                    url: '<?php echo base_url('Usulan/detil'); ?>',
                    
                    success: function(result){

                        $('#myModalDetail').html(result);
                    }
                });
                  
                };
        
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
