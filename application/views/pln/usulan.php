<div class="row wrapper border-bottom white-bg page-heading">

	<div class="col-lg-12">
		<h2>Usulan Pinjaman Luar Negeri</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini menampilkan daftar usulan proyek ke Direktorat Perencanaan Pembangunan
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
                 <button type="button" class="btn btn-success btn-sm pull-right" id="tmbhBttn"><i class="glyphicon glyphicon-plus-sign" ></i> Tambahkan Usulan</a></button>

                 <button type="button" class="btn btn-success btn-sm pull-right" id="cariProyek"><i class="fa fa-search" ></i> Pencarian</a></button>

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
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Instansi: activate to sort column ascending" style="width: 314px;">Instansi
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="judul_proyek: activate to sort column ascending" style="width: 289px;">Judul Proyek
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="judul_proyek: activate to sort column ascending" style="width: 289px;">Program
                    
                    

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="dana_usulan: activate to sort column ascending" style="width: 150px;">Pinjaman
                    </th>

                    

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="rencana: activate to sort column ascending" style="width: 150px;">Administrasi
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="rencana: activate to sort column ascending" style="width: 150px;">Kelayakan
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="rencana: activate to sort column ascending" style="width: 150px;">Masuk BB
                    </th>


                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="rencana: activate to sort column ascending" style="width: 150px;">GB
                    </th>


                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="rencana: activate to sort column ascending" style="width: 150px;">DK

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="rencana: activate to sort column ascending" style="width: 150px;">LA


                     <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Files: activate to sort column ascending" style="width: 150px;">Aksi
                    </th>


                    </tr>
                    </thead>
                    <tbody>
                    
                    <?php foreach ($data as $key => $value): ?>

                    <tr class="gradeA odd" role="row">
                        <td class="sorting_1"></td>
                        <td><?php 

                        $this->load->model('Usulan_model'); //load model

                        if ($value['id_instansi'] != '' || $value['id_instansi'] != NULL ) {
                           $b = $this->Usulan_model->ambil_instansi_untuk_usulan($value['id_instansi'])->nama_instansi;
                        }

                        if ($value['id_program'] != '' || $value['id_program'] != '0') {
                           $d = $this->Usulan_model->ambil_program_proyek($value['id_program'])->nama_program;
                        }
                       
                        $c = $value['id'];

                       echo $b; ?></td>
                        <td> <a class="detail" id="<?php echo $value['id'];  ?>" data-id="<?php echo $value['id'];  ?>" ><?php echo $value['judul_proyek_id']; ?> </a></td>
                
                      
                        <td><?php 
                        if ($d != '' ) {
                          echo $d;
                        }else{
                          echo "";
                        }
                         ?></td>
                        
                        <td><?php echo $value['dana_usulan']; ?></td>
                     
                        

                           <td><?php 
                        $adm = $this->Usulan_model->ambil_adm($value['id'])->is_lengkap;
                        $kasubdit_adm = $this->Usulan_model->ambil_adm($value['id'])->is_kasubdit;

                        if ($adm == '1') {

                           if ($kasubdit_adm == '0') {
                             echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm)'><i class=' btn fa fa-times-circle btn-warning'></i></a>";
                          }elseif ($kasubdit_adm == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm)'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger"></i></a>';
                          }

                         
                        }elseif ($adm == '2') {

                         
                          if ($kasubdit_adm == '0') {
                             echo '<a ><i class="btn fa fa-check-square btn-warning"></i></a>';
                          }elseif ($kasubdit_adm == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm)'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm)'><i class=' btn fa fa-times-circle btn-default'></i></a>";
                        }


                         ?>
                         </td>

                         <td><?php 
                        $layak = $this->Usulan_model->ambil_layak($value['id'])->is_layak;
                        $kasubdit_layak = $this->Usulan_model->ambil_layak($value['id'])->is_kasubdit;

                         if ($layak == '1') {

                          if ($kasubdit_layak == '0') {
                             echo '<a ><i class="btn fa fa-times-circle btn-warning"></i></a>';
                          }elseif ($kasubdit_layak == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger"></i></a>';
                          }
                         
                        }elseif ($layak == '2') {

                          if ($kasubdit_layak == '0') {
                             echo '<a ><i class="btn fa fa-check-square btn-warning"></i></a>';
                          }elseif ($kasubdit_layak == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-check-square btn-primary'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-times-circle btn-default'></i></a>";
                        }


                        ?>
                         </td>


                          <td><?php 
                          $bb = $value['is_BB'];
                        $usul_BB = $this->Usulan_model->ambil_adm($value['id'])->is_BB;
                        $kasubdit_usul = $this->Usulan_model->ambil_adm($value['id'])->is_bb_kasubdit;


                       /*if ($usul_BB == '1') {
                          echo '<a class="usul_btn" id="'.$c.'"><i class="btn fa fa-check-square btn-primary"></i></a>';
                        }elseif($usul_BB == '1'){
                          echo "<a  id='".$c."'  onclick='tambah_BB($usul_BB, $c, $kasubdit_usul)'><i class=' btn fa fa-check-square btn-warning'></i></a>";
                        }else{
                           echo "<div class='btn-group'>
                            <button type='button'  class='btn btn-xs  btn-danger' onclick='tambah_BB($usul_BB, $c, $kasubdit_usul)' ><i class='fa fa-plus'></i> Tambah ke BB</button>
                        </div>";
                        }*/

                         if ($usul_BB == '1') {

                          if ($kasubdit_usul == '0') {
                             echo '<a ><i class="usul_btn btn fa fa-times-circle btn-warning"  id="'.$c.'"></i></a>';
                          }elseif ($kasubdit_usul == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger"></i></a>';
                          }
                         
                        }elseif ($usul_BB == '2') {

                          if ($kasubdit_usul == '0') {
                             echo '<a ><i class="btn fa fa-check-square btn-warning"></i></a>';
                          }elseif ($kasubdit_usul == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-check-square btn-primary'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<div class='btn-group'>
                            <button type='button'  class='btn btn-xs  btn-danger' onclick='tambah_BB($usul_BB, $c, $kasubdit_usul)' ><i class='fa fa-plus'></i> Tambah ke BB</button>
                        </div>";
                         /* echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-times-circle btn-default'></i></a>";*/
                        }


                         ?>
                           
                         </td>

                           <td><?php 
                        $gb = $this->Usulan_model->ambil_pln($value['id'])->is_GB;

                       if ($gb == '1') {
                          echo '<a class="usul_btn" id="'.$c.'"><i class="btn fa fa-check-square btn-primary"></i></a>';
                        }else{
                          echo "
                            <a><i class='btn fa fa-times-circle btn-danger'></i></a>
                        ";
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
                           
                         </td>

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
                           
                         </td>

                       
                       
                      
                  
                       

                       <td>
                           
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

                        <?php endforeach; ?>
                    </tr>
               
                    </tbody>

                    
                    </table>

                     
                    <div class="modal inmodal fade" id="myModal5" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;" data-backdrop="static" data-keyboard="false"s>
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
                                                    <div class="ibox-title">
                                                        <h5>Isi Daftar Usulan</h5> 
                                                        <div class="ibox-tools">

                                                            <a class="collapse-link">
                                                                <i class="fa fa-chevron-up"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                <div class="ibox-content css-animation-box">

                                                    <form method="post" class="form-horizontal form_tambah" name="form_tambah" id="form_tambah">

                                                        <div class="form-group">

                                                          <label class="col-sm-2 control-label">Instansi Pengusul : </label>
                                                             <div class="input-group ">
                                                                <select data-placeholder="Choose a Country..." class="form-control" style="width:650px;" tabindex="2" name="id_instansi">
                                                                <option value="">Select</option>
                                                                    
                                                                    <?php foreach ($lembaga as $value) { ?>
                                                                        
                                                                        <option value="<?php echo $value['id']; ?> "> <?php echo $value['nama_instansi']; ?> </option>;
                                                                    <?php 
                                                                    
                                                                    }; 

                                                                    ?>
                                                                    
                                                                 </select>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>


                                                        <div class="form-group">
                                                            <label class="col-sm-2 control-label">Instansi Pelaksana : </label>
                                                             <div class="input-group ">
                                                                <select data-placeholder="Choose a Country..." class="form-control" style="width:650px;" tabindex="2" name="id_instansi_pelaksana">
                                                                <option value="">Select</option>
                                                                    
                                                                    <?php foreach ($lembaga as $value) { ?>
                                                                        
                                                                        <option value="<?php echo $value['id']; ?> "> <?php echo $value['nama_instansi']; ?> </option>
                                                                    <?php 
                                                                    
                                                                    }; 

                                                                    ?>
                                                                    
                                                                 </select>
                                                            </div>
                                                        </div>
                                                         <div class="hr-line-dashed"></div>

                                                         <div class="form-group">
                                                            <label class="col-sm-2 control-label">Program : </label>
                                                             <div class="input-group ">
                                                                <select data-placeholder="Choose a Country..." class="form-control" style="width:650px;" tabindex="2" name="id_program">
                                                                <option value="">Select</option>
                                                                    
                                                                    <?php foreach ($program as $value) { ?>
                                                                        
                                                                        <option value="<?php echo $value['id']; ?> "> <?php echo $value['nama']; ?> </option>;
                                                                    <?php 
                                                                    
                                                                    }; 

                                                                    ?>
                                                                    
                                                                 </select>
                                                            </div>
                                                        </div>

                                                        <div class="hr-line-dashed"></div>


                                                        <div class="form-group"><label class="col-sm-2 control-label">Judul Proyek(ID)</label>
                                                                <div class="col-sm-10"><input type="text" class="form-control" name="judul_proyek_id" ></div>

                                                        </div>
                                                         <div class="hr-line-dashed"></div>



                                                        <div class="form-group"><label class="col-sm-2 control-label">Judul Proyek(Eng)</label>

                                                           <div class="col-sm-10"><input type="text" class="form-control" name="judul_proyek_eng"></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group"><label class="col-sm-2 control-label">Ruang Lingkup (ID)</label>

                                                           <div class="col-sm-10"><input type="text" class="form-control" name="ruang_lingkup_id"></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                       
                                                         <div class="hr-line-dashed"></div>


                                                         <div class="form-group"><label class="col-sm-2 control-label">Ruang Lingkup (Eng)</label>

                                                            <div class="col-sm-10"><input type="text" class="form-control" name="ruang_lingkup_eng"></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>


                                                        <div class="form-group"><label class="col-sm-2 control-label">Dana Usulan</label>

                                                            <div class="col-sm-10"><input type="text" class="form-control" name="dana_usulan"></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group"><label class="col-sm-2 control-label">Dana Hibah</label>

                                                            <div class="col-sm-10"><input type="text" class="form-control" name="dana_hibah"></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                         <div class="form-group"><label class="col-sm-2 control-label">Dana Pendamping</label>

                                                            <div class="col-sm-10"><input type="text" class="form-control" name="dana_pendamping"></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group"><label class="col-sm-2 control-label">Durasi</label>

                                                            <div class="col-sm-10"><input type="text" class="form-control" style="width: 70px;" name="durasi"></div>

                                                            <div label class="col-sm-2"> </div>
                                                            
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group"><label class="col-sm-2 control-label">Proyeksi Tahun Pertama Penarikan</label>

                                                            <div class="col-sm-10"><input type="text" class="form-control" style="width: 70px;" name="proyeksi_tahun_pertama_penarikan"></div>

                                                            <div label class="col-sm-2"> </div>
                                                            
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group"><label class="col-sm-2 control-label">Output</label>

                                                            <div class="col-sm-10">
                                                            <textarea class="form-control" style="margin: 0px 31.3281px 0px 0px; height: 84px; width: 650px;" name="output"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group"><label class="col-sm-2 control-label">Outcome</label>

                                                            <div class="col-sm-10">
                                                            <textarea class="form-control" style="margin: 0px 31.3281px 0px 0px; height: 84px; width: 650px;" name="outcome"></textarea>
                                                            </div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>




                                                       
                                                    </form>
                                                    </div>
                                                    </div>
                                            
                                                    
                            

                                  
                               </div>
                               
                            
                                </div>  
                                        
                                       
                                </div>

                                        <div class="modal-footer">
                                             <div class="form-group">
                                                    <button class="btn btn-primary" type="submit" id="tambah_usulan">Tambahkan</button>
                                                    <button class="btn btn-warning" data-dismiss="modal">Kembali</button>
                                                    
                                                </div>
                                        </div>
                                        </div>
                                     </div>

                                    </div>
                                </div>
                            </div>
                            </div>


                     <div class="modal inmodal fade" id="modalKecil" tabindex="-1" role="dialog" aria-hidden="true" style="display:  none;" data-backdrop="static" data-keyboard="false">
                       
                        <div class="modal-dialog">
                            
                                
                                 <div class="fetched-data-lagi"></div>
                                    
                           

                        </div>
                            
                        </div>
                    
                    </div>

                  

                    <div class="modal inmodal fade" id="myModalDetail" tabindex="-1" role="dialog"  data-backdrop="static" data-keyboard="false" aria-hidden="true" style="display:  none;">
                       
                        <div class="modal-dialog modal-lg">
                            
                                
                                <div class="modal-body">
                                  <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                    </button>
                                 <div class="fetched-data"></div>
                                    
                           

                        </div>
                            
                        </div>
                    
                    </div>

                   
                    <div class="modal inmodal fade" id="ModalEdit" tabindex="-1" role="dialog" aria-hidden="true" style="display:  none;"  data-backdrop="static" data-keyboard="false" >
                       

                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                
                                <div class="modal-body">
                                 <div class="fetched-data-edit"></div>
                                    
                            </div>

                        </div>
                            
                        </div>
                    </div>

                    <div class="modal inmodal fade" id="modalArsip" tabindex="-1" role="dialog" aria-hidden="true" style="display:  none;"  data-backdrop="static" data-keyboard="false" >
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

    

    <!-- Page-Level Scripts -->
    

     
       <script src="<?php echo base_url(); ?>assets/inspinia/js/bootstrap.min.js"></script>
        <script src="<?php echo base_url(); ?>assets/inspinia/js/jquery-2.1.1.js"></script>
   
   
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/jeditable/jquery.jeditable.js"></script>
    <script src="<?php echo base_url(); ?>assets/xcrud/plugins/jquery.min.js"></script>
     <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/metisMenu/jquery.metisMenu.js"></script>

        <!-- Custom and plugin javascript -->
    <script src="<?php echo base_url(); ?>assets/inspinia/js/inspinia.js"></script>
    <script src="<?php echo base_url(); ?>assets/inspinia/js/plugins/pace/pace.min.js"></script>
    
   

    <script>
        $(document).ready(function(){
                $("#tombol1").click(function(){
                        $("#myModalDetail").modal();
                });
        });
    </script>

  <script type="text/javascript">
  $(document).ready(function(){
    
    function fresh() {
      location.reload();
    }
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

  function refresh() {
    location.reload();
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
                url : "<?php echo base_url(); ?>Usulan/arsip",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal
  
                  $("#tmpModal").html(response);
                $('#modal_arsip').modal('show');
              
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
       
});

    
  </script>

<script type="text/javascript">
   $(document).ready(function(){
   $(document).on('click', '#tambah_usulan', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

          
             
           console.log("sukses 1");
            console.log($("#form_tambah").serialize());
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);

           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/tambah",
                data : $("#form_tambah").serialize(),
                success : function(data){
                  $("#myModal5").modal('hide');
                  fresh();
                console.log(data);//menampilkan data ke dalam modal
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
               
                url : "<?php echo base_url(); ?>Usulan/edit",
                data :  'id='+ id,
                 type : 'post',
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal").html(response);
                $('#modalEditUsulan').modal('show');
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
  $(document).on('click', '.layak_btn', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

          $('#modalKecil').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
              type : 'post',
                url : "<?php echo base_url(); ?>Usulan/layak",
                data :  'id='+ id,
                success : function(data){
               $("#tmpModal").html(response);
                $('#modalLayak').modal('show');
                console.log("hahaha");
                console.log(id);
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });
            });
       

  $(document).on('click', '.adm_btn', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

           if (true) {}

          $('#modalKecil').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);

           if (id) {}
           $.ajax({
              type : 'post',
                url : "<?php echo base_url(); ?>Usulan/adm",
                data :  'id='+ id,
                success : function(data){
                $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                console.log(id);
                }
            });

          });



  $(document).on('click', '#tmbhBttn', function(){  
           
      /* $('#myModalDetail').modal('show');
           });*/

            var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/tambah_usulan",
                
                success : function(response){
                
                  $("#tmpModal").html(response);
                $('#modalTambah').modal('show');
          
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
            });
          });
        // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);

  $(document).on('click', '#cariProyek', function(){  
           
      /* $('#myModalDetail').modal('show');
           });*/

            var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/cari",
                
                success : function(response){
                
                  $("#tmpModal").html(response);
                $('#modalCari').modal('show');
          
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
            });
          });



  $(document).on('click', '#tmbh_BB', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

          $('#modalKecil').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
              type : 'post',
                url : "<?php echo base_url(); ?>Usulan/yakin_bb",
                data :  'id='+ id,
                success : function(data){
                $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                }
            });

          });

  $(document).on('click', '.gb_btn', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

          $('#modalKecil').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
              type : 'post',
                url : "<?php echo base_url(); ?>Usulan/layak",
                data :  'id='+ id,
                success : function(data){
                $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                }
            });

          });

  $(document).on('click', '.dk_btn', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

          $('#modalKecil').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
              type : 'post',
                url : "<?php echo base_url(); ?>Usulan/layak",
                data :  'id='+ id,
                success : function(data){
                $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                }
            });

          });

  $(document).on('click', '.la_btn', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

          $('#modalKecil').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
              type : 'post',
                url : "<?php echo base_url(); ?>Usulan/layak",
                data :  'id='+ id,
                success : function(data){
                $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                }
            });

          });
});

  </script>
  

<script type="text/javascript">
  
 $(document).ready(function(){
    $("#tambah_usulan").click(function(){
      console.log(" sukses 1 ");
       var str = $( "#form_tambah" ).serialize();

       $.ajax
        console.log($("form").serialize());
    });
});

</script>

 <script type="text/javascript">
 
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

</script>

<script type="text/javascript">
 function nilai_usul(adm, c, b){
    console.log("sukses");
   
     var id = c;
     //console.log(id); 
    if (c == '2') {
      console.log("sukses");
  
       $.ajax({
               type : 'post',
                url : "<?php echo base_url(); ?>Usulan/tambahkeBB",
                data :  'id='+ id,
                success : function(response){
                  console.log("sudah ditambah");
                  console.log(response);
                 
                //   $("#tmpModal").html(response);
                // $('#modal_adm').modal('show');
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                
    });
       return false;
    }else {
     
      alert('Belum selesai penilaian kelayakan');
        return false;
    }
  }
         
   </script>



<script type="text/javascript">

   

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
  

     function tambah_BB(usul_BB, c, kasubdit){
      console.log(c);

      var id = c;
    //alert(id+','+nilai_admin);
   if (usul_BB == '0') {
      console.log("sukses");
    $.ajax({
                 type : 'post',
                url : "<?php echo base_url(); ?>Usulan/tambahBB",
                data :  'id='+ id,
                success : function(response){
                  console.log(id);
                   $("#tmpModal").html(response);
                $('#modalBB').modal('show');
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
    });
    
    } else {
      alert('Selesaikan penilaian kelayakan terlebih dahulu');
    }
  }


  // body...


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


