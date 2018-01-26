
                                   
                <h4 id="judul_proyek" > Tambah Arsip Rekam Jejak </h4> 

                <form method="post" class="form-horizontal" name="tambah_gb">
                                                        <div class="form-group">

                                                          <label class="col-sm-2 control-label">Instansi Pengusul : </label>
                                                             <div class="input-group ">
                                                                <select data-placeholder="Choose a Country..." class="form-control " style="width:550px;" tabindex="2" name="id_instansi">
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
