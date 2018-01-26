
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span>
                                    </button>
                                        <h4 class="modal-title" id="judul_proyek">Daftar Proyek </h4>
                                        <small class="font-bold">Berikut Daftar Proyek yang Dapat Ditambahkan ke Daftar Proyek Loan Agreement</small>
                                        
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
                                                        <h5 id="judul_proyek" > Daftar Proyek </h5> 
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
                        <?php foreach ($detail as $key => $value): ?>

                    <tr class="gradeA odd" role="row">
                    <td class="sorting_1"></td>
                    <td><?php

                    $this->load->model('dk_model');

                    
                   

                     echo $this->dk_model->ambil_instansi_untuk_usulan($value['id_instansi'])->nama_instansi; ?></td>

                     <td>  <?php echo $value['judul_proyek_id']; ?></td>
                     <td> <i class="btn fa fa-plus-square btn-success "></i></td>
                      </tr>
                    </tbody>

                  <?php endforeach; ?>

                     

                 
                                               </table>
                    </div>
                    </div>
                    <div class="hr-line-dashed"></div>

                                                    

                                                   
                                                    
                                                    



                                              </div>
                                        <div class="modal-footer">
                                             <div class="form-group">
                                                    <button class="btn btn-primary" >Tambahkan</button>
                                                    <button class="btn btn-white" data-dismiss="modal">Kembali</button>
                                                    
                                                </div>
                                        </div>


                                    </div>
                                    </div>
              

</div>
</div>



