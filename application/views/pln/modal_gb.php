 <div class="modal inmodal fade" id="modalEdit" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                        <div class="modal-dialog modal-lg">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                    </button>
                                        <h4 class="modal-title">Edit Proyek Bluebook</h4>
                                       
                                        
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
                                                        <h5 id="judul_id" > Detail Proyek </h5> 
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
                                                             <div class="col-sm-10"><div class="col-sm-6"> 
                                                             <div class="input-group ">
                                                                <select data-placeholder="Choose a Country..." class="form-control" style="width:650px;" tabindex="2" id="pengusul_edit">
                                                                <option value="">Select</option>
                                                                    
                                                                    <?php foreach ($program as $value) { ?>
                                                                        
                                                                        <option value="<?php echo $value['id']; ?> "> <?php echo $value['nama']; ?> </option>;
                                                                    <?php 
                                                                    
                                                                    }; 

                                                                    ?>
                                                                    
                                                                 </select>
                                                            </div>
                                                            </div></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-2 control-label">Instansi Pelaksana : </label> 

                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-2 control-label">Program : </label> 
                                                             <div class="col-sm-10"><p class="form-control-static" id="program"></p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-2 control-label">Judul Proyek (ID) : </label> 
                                                             <div class="col-sm-10"><input type="text" class="form-control" id="judul_edit_id"  ></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                         <div class="form-group">

                                                          <label class="col-sm-2 control-label">Ruang Lingkup (ID) : </label> 
                                                              <div class="col-sm-10"><input type="text" class="form-control" id="judul_edit_eng"  ></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-2 control-label">Output : </label> 
                                                             <div class="col-sm-10"><input type="text" class="form-control" id="output_edit"  ></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>


                                                        <div class="form-group">

                                                          <label class="col-sm-2 control-label">Durasi : </label> 
                                                             <div class="col-sm-10"><input type="text" class="form-control" id="durasi_edit"  ></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                         <div class="form-group">

                                                          <label class="col-sm-2 control-label">Indikasi Lender : </label> 
                                                             <div class="col-sm-10"><p class="form-control-static" id="lender"></p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                         <div class="form-group">

                                                          <label class="col-sm-2 control-label">Dana Usulan : </label> 
                                                             <div class="col-sm-10"><input type="text" class="form-control" id="usulan_edit"  ></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-2 control-label">Dana Hibah : </label> 
                                                                <div class="col-sm-10"><input type="text" class="form-control" id="hibah_edit"  ></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-2 control-label">Dana Pendamping : </label> 
                                                             <div class="col-sm-10"><input type="text" class="form-control" id="pendamping_edit"  ></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-2 control-label">Status Kesiapan Lender : </label> 
                                                             <div class="col-sm-10"><p class="form-control-static" id="status_lender"></p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-2 control-label">Status Kesiapan Lembaga : </label> 
                                                             <div class="col-sm-10"><p class="form-control-static" id="status_lembaga"></p></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                                        <div class="form-group">

                                                          <label class="col-sm-2 control-label">Catatan : </label> 
                                                             <div class="col-sm-10"><input type="text" class="form-control" id="catatan_edit"  ></div>
                                                        </div>
                                                        <div class="hr-line-dashed"></div>

                                    </form>
                                </div>
                                </div>

                                            <div class="modal-footer">
                                             <div class="form-group">
                                                    <button class="btn btn-primary" >Tambahkan</button>
                                                    <button class="btn btn-white" data-dismiss="modal">Kembali</button>
                                                

                                                </div>
                                            </div>
                            </div>
                            </div>