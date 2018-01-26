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
                <table class="table table-striped table-bordered table-hover dataTables-example-1 dataTable dtr-inline" id="DataTables_Table_1" role="grid" aria-describedby="DataTables_Table_1_info">

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

                    $this->load->model('Bluebook_model');

                    $a = $this->Bluebook_model->ambil_instansi_untuk_usulan($value['id_instansi'])->nama_instansi;
                   

                     echo $a; ?></td>

                     <td>  <?php echo $b = $this->Bluebook_model->ambil_judul($value['id_usulan'])->judul_proyek_id; ?></td>
                     <td><div class="tambahBB" id="<?php echo $value['id']; ?>"><i class="btn fa fa-plus-square btn-success" ></i></div></td>
                      </tr>
                      <?php endforeach; ?>
                    </tbody>

                 

                     

                 
                                               </table>



   <script>
        $(document).ready(function() {
            $('.dataTables-example-1').dataTable({
                responsive: true,
                "dom": 'T<"clear">lfrtip',
                "tableTools": {
                    "sSwfPath": "irena2/assets/inspinia/js/plugins/dataTables/swf/copy_csv_xls_pdf.swf"
                }
            });



            /* Init DataTables */
         

        

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
