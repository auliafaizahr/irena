<div class="modal inmodal fade" id="modalTambah"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog "> <!-- modal-lg -->
        <div class="modal-content">
            <div class="ibox">
                <div class="ibox-title">
                    <h5>Menambahkan Instansi</h5>
                </div>
                <form class="form-horizontal" id="htmlForm" method="post" enctype="multipart/form-data"> 
                    <div class="ibox-content">
                      
                        

                        <div class="form-group">
                            <label for="nama" class="col-sm-4 control-label">Nama Lembaga</label>
                            <div class="col-sm-8">
                               
                                    <input type="text" name="nama" id="nama" class="form-control" placeholder="Nama Lembaga">
                            </div>
                        </div>
                       
                        
                       
                        
                    </div>
                    <div class="modal-footer">                  
                        <button type="button" id="tblSimpan" class="btn btn-primary">Simpan</button>
                        <button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


                
<script>
    $(document).ready(function(){
        $('#check_nilai_admin').change(function() {
            if($("#check_nilai_admin").is(':checked') == true){
                $('#nilai_admin').val(1);
            }else{
                $('#nilai_admin').val(0);
            }
            
        });


        $("#is_lengkap").select2({
            placeholder: "Pilih Hasil Penilaian",
            width: "100%"
        });

        //var id = $(t)

         $(document).on('click', '#tblSimpan', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

          
             var nama                         = $("#nama").val();


            var form_data   = new FormData();

            form_data.append('nama', nama);

           console.log(nama);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          $.ajax({
              type : 'post',
                url : "<?php echo base_url(); ?>Usulan/input_instansi",
                data :  form_data,
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                success : function(response){
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal

                 if (response.success == true) {
                        console.log("wqwq");
                        $('#modalTambah').modal('hide');
                        fresh();
                        alert(response);
                        notif("Informasi", "Data berhasil disimpan.");
                        
                    }
                    else {
                        $.each(response.messages, function(key, value) {
                            var element = $('#' + key);
                            
                            element.closest('div.form-group')
                            .removeClass('has-error')
                            .addClass(value.length > 0 ? 'has-error' : 'has-success')
                            .find('.text-danger')
                            .remove();
                            console.log("huhu");

                            element.after(value);
                        });
                    }

                }
            });

          });


    function fresh() {
        location.reload();
    }
        
        $('#htmlForm').submit(function(e) {
            e.preventDefault();

            var me          = $(this);
            
            var id                  = $("#id").val();
            var nilai_admin         = $("#nilai_admin").val();
            var nilai_admin_ket     = $("#nilai_admin_ket").val();
            var is_lengkap          = $("#is_lengkap").val();
                console.log(id);
            
            var form_data   = new FormData();
            
            form_data.append('id', id);
            form_data.append('nilai_admin', nilai_admin);
            form_data.append('nilai_admin_ket', nilai_admin_ket);
            form_data.append('is_lengkap', is_lengkap);

            var data = {};
            console.log(id);
            $.ajax({
                 type: 'POST',
                url: '<?php echo base_url(); ?>Usulan/usulan_simpan_admin',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
               


                success: function(response){
                    if (response.success == true) {
                        console.log("wqwq");
                        $('#modal_adm').modal('hide');
                        fresh();
                        alert(response);
                        notif("Informasi", "Data berhasil disimpan.");
                        
                    }
                    else {
                        $.each(response.messages, function(key, value) {
                            var element = $('#' + key);
                            
                            element.closest('div.form-group')
                            .removeClass('has-error')
                            .addClass(value.length > 0 ? 'has-error' : 'has-success')
                            .find('.text-danger')
                            .remove();
                            console.log("huhu");

                            element.after(value);
                        });
                    }


                }


            });
        });
    });
</script>

