<div class="row wrapper border-bottom white-bg page-heading">

	<div class="col-lg-12">
		<h2>Program</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini menampilkan Daftar Program yang ada pada Direktorat Perencanaan Pembangunan
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
					<h5>Daftar Program</h5> 
					<div class="ibox-tools">

						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>
						</a>
					</div>
				</div>
				<div class="ibox-content css-animation-box">
						
				
                <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper form-inline"><div class="DTTT_container"><a class="DTTT_button DTTT_button_print" id="ToolTables_DataTables_Table_0_4" title="View print view" tabindex="0" aria-controls="DataTables_Table_0"></a>
                </div>
                <button type="button" class="btn btn-default btn-sm" id="tambah_program_btn">Tambah Program</button>
                <div class="clear"> 

               

                <div class="dataTables_length" id="DataTables_Table_0_length"> 
                
               	</div>

               	<div id="DataTables_Table_0_filter" class="dataTables_filter">
               
                </div><table class="table table-striped table-bordered table-hover dataTables-example dataTable dtr-inline" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">

                    <thead>

                    <tr role="row">
                    <th class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column descending" style="width: 5px;" aria-sort="ascending">#
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Instansi: activate to sort column ascending" style="width: 314px;">Program
                    </th>
                  
                
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Files: activate to sort column ascending" style="width: 150px;">Aksi
                    </th>


                    </tr>
                    </thead>
                    <tbody>
                    
                    <?php foreach ($data as $key => $value): ?>

                    <tr class="gradeA odd" role="row">
                        <td class="sorting_1"></td>
                        <td><a class="detail" id="<?php echo $value['id']; ?>"><?php  echo $value['nama_program']; ?>
                             </a>   
                        </td>

                       <td>
                           
                           <div class="input-group-btn">
                           <button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button" aria-expanded="false">Action <span class="caret"></span></button>
                           
                           <ul class="dropdown-menu pull-right">
                                                   <li><a href="#" data-toggle="#myModalDetail" data-target="modal" >Rekam Jejak</a></li>
                                                   <li><a href="#" class="update" id="<?php echo $value['id']; ?>" >Edit</a></li>
                                                    <li><a href="#">Hapus</a></li>
                                                   
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
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                    </button>
                                        <h4 class="modal-title" id="judul_proyek">Detail Program </h4>
                                        <small class="font-bold">Input data Detail Program pada Halaman ini</small>
                                        
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
                                                        <h5 id="judul_proyek" > Isi Detail Program </h5> 
                                                        <div class="ibox-tools">

                                                            <a class="collapse-link">
                                                                <i class="fa fa-chevron-up"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                <div class="ibox-content css-animation-box">

                                                     <form method="get" class="form-horizontal">

                                                     <div class="form-group">

                                                          <label class="col-sm-4 control-label">Kode Bluebook : </label> 
                                                              <div class="col-sm-6"><p class="form-control-static" id="kode_bb_isi"> </p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>
                                                        <div class="form-group">

                                                          <label class="col-sm-4 control-label">Kategori Program : </label> 
                                                             <div class="col-sm-6"><p class="form-control-static" id="kat_program_isi"> </p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-4 control-label">Kategori Sektor : </label> 
                                                             <div class="col-sm-6"><p class="form-control-static" id="sektor_isi"> </p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-4 control-label">Executing Agency : </label> 
                                                             <div class="col-sm-6"><p class="form-control-static" id="execute_agency_isi"> </p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-4 control-label">Judul Program (ID) : </label> 
                                                              <div class="col-sm-6"><p class="form-control-static" id="judul_program_id_is"> </p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-4 control-label">Judul Program (ENG) : </label> 
                                                              <div class="col-sm-6"><p class="form-control-static" id="judul_program_eng_isi"> </p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-4 control-label">Latar Belakang (ID) : </label> 
                                                              <div class="col-sm-6"><p class="form-control-static" id="latar_belakang_id_isi"> </p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                         <div class="form-group">

                                                          <label class="col-sm-4 control-label">Latar Belakang (ENG) : </label> 
                                                              <div class="col-sm-6"><p class="form-control-static" id="latar_belakang_eng_isi"> </p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                          <div class="form-group">

                                                          <label class="col-sm-4 control-label">Ruang Lingkup (ID) : </label> 
                                                             <div class="col-sm-6"><p class="form-control-static" id="ruang_lingkup_id_isi"> </p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                         <div class="form-group">

                                                          <label class="col-sm-4 control-label">Ruang Lingkup (ENG) : </label> 
                                                             <div class="col-sm-6"><p class="form-control-static" id="ruang_lingkup_eng_isi"> </p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                         <div class="form-group">

                                                          <label class="col-sm-4 control-label">Outcome : </label> 
                                                              <div class="col-sm-6"><p class="form-control-static" id="outcome_isi"> </p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                            
                                            </div>
                                            </form>
                                            </div>

                        </form>
                        <div class="modal-footer">
                                             <div class="form-group">
                                                  
                                                    <button class="btn btn-white" data-dismiss="modal">Kembali</button>
                                                    
                                                </div>
                                            </div>
                    </div>


                    <div class="modal inmodal fade" id="myModalTambah" tabindex="-1" role="dialog" aria-hidden="true" style="display:  none;">
                        <div>

                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                    </button>
                                        <h4 class="modal-title" id="judul_proyek">Tambah Program </h4>
                                        <small class="font-bold">Input data Detail Program pada Halaman ini</small>
                                        
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
                                                        <h5 id="judul_proyek" > Isi Detail Program </h5> 
                                                        <div class="ibox-tools">

                                                            <a class="collapse-link">
                                                                <i class="fa fa-chevron-up"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                <div class="ibox-content css-animation-box">

                                                     <form method="get" class="form-horizontal">

                                                     <div class="form-group">

                                                          <label class="col-sm-4 control-label">Kode Bluebook : </label> 
                                                             <div class="input-group ">
                                                                <select data-placeholder="Choose a Country..." class="form-control" style="width:450px;" tabindex="2" id="kode_bb">
                                                                <option value="">Select</option>
                                                                    
                                                                    <?php foreach ($kode as $value) { ?>
                                                                        
                                                                        <option value="<?php echo $value['id']; ?> "> <?php echo $value['nama']; ?> </option>;
                                                                    <?php 
                                                                    
                                                                    }; 

                                                                    ?>
                                                                    
                                                                 </select>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>
                                                        <div class="form-group">

                                                          <label class="col-sm-4 control-label">Kategori Program : </label> 
                                                             <div class="input-group ">
                                                                <select data-placeholder="Choose a Country..." class="form-control" style="width:450px;" tabindex="2" id="kat_program">
                                                                <option value="">Select</option>
                                                                    
                                                                    <?php foreach ($kategori as $value) { ?>
                                                                        
                                                                        <option value="<?php echo $value['id']; ?> "> <?php echo $value['nama']; ?> </option>;
                                                                    <?php 
                                                                    
                                                                    }; 

                                                                    ?>
                                                                    
                                                                 </select>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-4 control-label">Kategori Sektor : </label> 
                                                             <div class="input-group ">
                                                                <select data-placeholder="Choose a Country..." class="form-control" style="width:450px;" tabindex="2" id="sektor">
                                                                <option value="">Select</option>
                                                                    
                                                                    <?php foreach ($sektor as $value) { ?>
                                                                        
                                                                        <option value="<?php echo $value['id']; ?> "> <?php echo $value['nama']; ?> </option>;
                                                                    <?php 
                                                                    
                                                                    }; 

                                                                    ?>
                                                                    
                                                                 </select>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-4 control-label">Executing Agency : </label> 
                                                             <div class="input-group ">
                                                                <select data-placeholder="Choose a Country..." class="form-control" style="width:450px;" tabindex="2" id="execute_agency">
                                                                <option value="">Select</option>
                                                                    
                                                                    <?php foreach ($instansi as $value) { ?>
                                                                        
                                                                        <option value="<?php echo $value['id']; ?> "> <?php echo $value['nama_instansi']; ?> </option>;
                                                                    <?php 
                                                                    
                                                                    }; 

                                                                    ?>
                                                                    
                                                                 </select>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-4 control-label">Judul Program (ID) : </label> 
                                                             <div class="col-sm-4">
                                                            <textarea class="form-control" style="margin: 0px 0px 0px 0px; height: 54px; width: 450px;" id="judul_program_id"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-4 control-label">Judul Program (ENG) : </label> 
                                                             <div class="col-sm-4">
                                                            <textarea class="form-control " style="margin: 0px 0px 0px 0px; height: 54px; width: 450px;" id="judul_program_eng"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-4 control-label">Latar Belakang (ID) : </label> 
                                                             <div class="col-sm-4 ">
                                                            <textarea class="form-control " style="margin: 0px 0px 0px 0px; height: 300px; width: 450px;" id="latar_belakang_id"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                         <div class="form-group">

                                                          <label class="col-sm-4 control-label">Latar Belakang (ENG) : </label> 
                                                             <div class="col-sm-4 ">
                                                            <textarea class="form-control " style="margin: 0px 0px 0px 0px; height: 300px; width: 450px;" id="latar_belakang_eng"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                          <div class="form-group">

                                                          <label class="col-sm-4 control-label">Ruang Lingkup (ID) : </label> 
                                                             <div class="col-sm-4 ">
                                                            <textarea class="form-control " style="margin: 0px 0px 0px 0px; height: 200px; width: 450px;" id="ruang_lingkup_id"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                         <div class="form-group">

                                                          <label class="col-sm-4 control-label">Ruang Lingkup (ENG) : </label> 
                                                             <div class="col-sm-4 ">
                                                            <textarea class="form-control " style="margin: 0px 0px 0px 0px; height: 200px; width: 450px;" id="ruang_lingkup_eng"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                         <div class="form-group">

                                                          <label class="col-sm-4 control-label">Outcome : </label> 
                                                             <div class="col-sm-4 ">
                                                            <textarea class="form-control " style="margin: 0px 0px 0px 0px; height: 240px; width: 450px;" id="outcome"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                            
                        </div>
                        <div class="modal-footer">
                                             <div class="form-group">
                                                    <button class="btn btn-primary" id="program_tambah">Tambahkan</button>
                                                    <button class="btn btn-white" data-dismiss="modal">Kembali</button>
                                                    
                                                </div>
                                            </div>
                        </form>

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
        $(document).ready(function(){
                $("#tambah_program_btn").click(function(){
                        $("#myModalTambah").modal('show');
                });
        });
    </script>

     <script>
        $(document).ready(function(){

         $("#program_tambah").click(function(){

                 var kode_bb = document.getElementById("kode_bb").value;
                var kat_program = document.getElementById("kat_program").value;
                var sektor = document.getElementById("sektor").value;
                var execute_agency = document.getElementById("execute_agency").value;
                var judul_program_id = document.getElementById("judul_program_id").value;
                var judul_program_eng = document.getElementById("judul_program_eng").value;
                var latar_belakang_id = document.getElementById("latar_belakang_id").value;
                var latar_belakang_eng = document.getElementById("latar_belakang_eng").value;
                var ruang_lingkup_id = document.getElementById("ruang_lingkup_id").value;
                var ruang_lingkup_eng = document.getElementById("ruang_lingkup_eng").value;
                var outcome = document.getElementById("outcome").value;

                        
                if (kode_bb === '' || kat_program === '' || sektor === '' || execute_agency === '' || judul_program_id === '' || judul_program_eng === '' || latar_belakang_id === '' || latar_belakang_eng === '' || ruang_lingkup_id === '' || ruang_lingkup_eng === '' || outcome === ''){

                    alert('tidak boleh kosong!');
                     console.log("halo0");
                     console.log(kode_bb);
                     console.log(document.getElementById("outcome").value);
                
                }else{

                    $.ajax({
                         url:"<?php echo base_url(); ?>program/tambah_program",  
                            method:"POST",  
                            //data:{user_id:id},

                            //dataType:"json",
                            error: function (xhr, desc, error) {
                                console.log(xhr);
                                alert("Details: " + desc + "\nError:" + error);
                                console.warn(xhr.responseText);
                            },  
                            success:function()  
                            {  
                                
                                console.log("hehe");
                            }
                
                        });
                }
            });
        });
    </script>


<script type="text/javascript">
        
        $(document).on('click', '.detail', function(){  
           var id = $(this).attr("id");  
           $('#myModalDetail').modal('show');  
           console.log(id);

          $.ajax({  
                url:"<?php echo base_url(); ?>Program/detail",  
                method:"POST",  
                data:{user_id:id},

                dataType:"json",
                error: function (xhr, desc, error) {
                    console.log(xhr);
                    alert("Details: " + desc + "\nError:" + error);
                    console.warn(xhr.responseText);
                },  
                success:function(data)  
                {  
                     $('#myModalDetail').modal('show');  
                     //alert(data.judul_proyek);
                     //console.log(val(data.judul_proyek));
                    $('#kode_bb_isi').text(data.kode_bb);  
                    $('#kat_program_isi').text(data.kat_program);  
                     /*$('#judul_proyek').text(data.judul_proyek);  
                     $('#ruang_lingkup_id').text(data.ruang_lingkup_id);  
                     $('#instansi_pengusul').text(data.instansi_pengusul);  
                     $('#instansi_pelaksana').text(data.instansi_pelaksana);  
                     $('#durasi').text(data.durasi);  
                     $('#tahun_pertama').text(data.tahun_pertama);  
                     $('#lender').text(data.lender);  
                     $('#program').text(data.program);  
                     $('#durasi').text(data.durasi);  
                     $('#pinjaman').text(data.pinjaman);  
                     $('#dana_pendamping').text(data.dana_pendamping);  
                     $('#hibah').text(data.hibah);  
                     $('#output').text(data.output);  
                     $('#status_lender').text(data.status_lender);  
                     $('#status_lembaga').text(data.status_lembaga);  */
                     /*$('#last_name').val(data.last_name);  
                     $('.modal-title').text("Edit User");  
                     $('#user_id').val(user_id);  
                 
                     $('#action').val("Edit");  */
                }
                
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
