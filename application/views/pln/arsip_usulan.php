<div class="modal inmodal fade" id="modal_arsip" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-lg">
    <div class="modal-content">            
        <div class="modal-header">
            
        <h4><?php echo $detail->judul_proyek_id; ?></h4>
        </div>
          <div class="ibox float-e-margins">

                     <div class="ibox-title">
                       <?php
                                                        
                             $a = $this->uri->segment(3);

                        ?>
                        
                        <h5 id="judul_proyek" > Arsip Persuratan </h5> 
                            <div class="ibox-tools">

                             <a class="collapse-link">
                                     <i class="fa fa-chevron-up"></i>
                            </a>
                             </div>
                        </div>

                        <div class="ibox-content css-animation-box">

                        <div class="pull-right">
                        <div class="btn-group">
                            <button type="button" id="tmbh_arsip" class="btn btn-xs btn-success" ><i class="fa fa-plus"></i> Tambah</button>
                          </div>
                        </div>


            <div id="DataTables_Table_0_filter" class="dataTables_filter">
               
                
                <table class="table table-striped table-bordered table-hover dataTables-example dataTable dtr-inline" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">

                    <thead>

                    <tr role="row">
                    <th class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column descending" style="width: 5px;" aria-sort="ascending">#
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Instansi: activate to sort column ascending" style="width: 314px;">Jenis Arsip
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="judul_proyek: activate to sort column ascending" style="width: 300px;">Judul Arsip
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="judul_proyek: activate to sort column ascending" style="width: 50px;">File</th>
                    
                     <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="judul_proyek: activate to sort column ascending" style="width: 50px;">Aksi</th>
                    

                    </tr>
                    </thead>
                  
                    
                    </tbody>
                    </table>
                   
                  
                   

       

          <div class="ibox float-e-margins">
                                                    <div class="ibox-title">
                                                        <?php
                                                        
                                                        $a = $this->uri->segment(3);

                                                        ?>
                                                        <h5 id="judul_proyek" > Dokumen Pendukung </h5> 
                                                        <div class="ibox-tools">

                                                            <a class="collapse-link">
                                                                <i class="fa fa-chevron-up"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                <div class="ibox-content css-animation-box">
                        <div class="pull-right">
                        <div class="btn-group">
                            <button type="button" id="<?php echo $detail->id; ?>" class="tmbh_dokumen btn btn-xs btn-success" ><i class="fa fa-plus"></i> Tambah</button>
                        </div>
                        </div>
                        </div>
                        </div>

                        
            <div id="DataTables_Table_0_filter" class="dataTables_filter">
               
                </div><table class="table table-striped table-bordered table-hover dataTables-example dataTable dtr-inline" id="DataTables_Table_0" role="grid" aria-describedby="DataTables_Table_0_info">

                    <thead>

                    <tr role="row">
                    <th class="sorting_asc" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Rendering engine: activate to sort column descending" style="width: 5px;" aria-sort="ascending">#
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="Instansi: activate to sort column ascending" style="width: 314px;">Jenis Arsip
                    </th>
                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="judul_proyek: activate to sort column ascending" style="width: 300px;">Judul Arsip
                    </th>

                    <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="judul_proyek: activate to sort column ascending" style="width: 50px;">File</th>


                     <th class="sorting" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" aria-label="judul_proyek: activate to sort column ascending" style="width: 50px;">Aksi</th>
                    
                    
                    

                    </tr>
                    </thead>
                    <tbody>

                    <?php foreach ($dok_tambahan as $key => $value): ?>

                      <tr class="gradeA odd" role="row">
                        <td class="sorting_1"></td>
                        <td><?php 

                                echo $value['nama'];
                        ?>
                        </td>

                        <td><?php 

                                echo $value['nama'];
                        ?>
                        </td>

                        <td><a href="<?php echo base_url(); ?>uploads/dokumen_pendukung/<?php echo $value['berkas']; ?>" target="_blank" class="btn btn-xs btn-info" type="button"><i class="fa fa-download"></i></a>
                        </td>

                          <td>
                           
                           <div class="input-group-btn">
                           <button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button" >Aksi <span class="caret"></span></button>
                           
                           <ul class="dropdown-menu pull-right">
                                                 
                                                   <li><a  data-toggle="" data-target="modal" class="edit" id="<?php echo $value['id']; ?>" >Edit</a></li>
                                                    <li><a  class="del-proyek" id="<?php echo $value['id']; ?>">Hapus</a></li>
                                                   
                                                </ul>
                            </div>

                       </td>
                      
                    
                        
                    </tr>




                    </tbody>
                      <?php endforeach; ?>
                   
                    </tr>
                    </thead>
                    </table>
                    
                    
<div class="modal-footer">
                    <button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
                </div>

        </form>
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
                    


<div id="tmpModal7"></div>


       
<script>
    $(document).ready(function(){
 
        $(document).on('click', '#tmbh_arsip', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

             var id = $(this).attr("id"); 
           console.log("tes");
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
              type : 'post',
                url : "<?php echo base_url(); ?>Usulan/tambah_arsip_surat",
                data :  'id='+ id,
                success : function(response){
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                $("#tmpModal7").html(response);
                $('#modalTambah').modal('show');
              
                }
            });

          });

         $(document).on('click', '.tmbh_dokumen', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

         //$('#modalKecil2').modal('show');
             var id = $(this).attr("id"); 
           console.log("tes");
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
              type : 'post',
                url : "<?php echo base_url(); ?>Usulan/tambah_dokumen",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                 $("#tmpModal7").html(response);
                $('#modalTambahDokumen').modal('show');
                console.log("sussskses");
                console.log(id);

                }
            });

          });

    });
    
    function segarkan_log(){
        $.get("<?php echo base_url(); ?>hibah/tampilkan_data_log_usulan/<?php echo $this->uri->segment(3); ?>", function(data) {
            $("#tabel").html(data);
        });
    }
</script>

