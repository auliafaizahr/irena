<div class="modal inmodal fade" id="modalTambah" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="ibox">
                <div class="ibox-title">
                    <h5>Tambah Program</h5>
                </div>
                <form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">


                
                 <div class="ibox-content">

                        <div class="form-group">
                            <label for="nama_program" class="col-sm-3 control-label">Judul Program (id)</label>
                             <div class="col-sm-9">
                             <input type="text" name="nama_program" id="nama_program" class="form-control" placeholder="Nama Programs" >
                             </div>
                           
                        </div>

                         <div class="form-group">
                            <label for="judul_eng" class="col-sm-3 control-label">Judul Program (eng)</label>
                             <div class="col-sm-9">
                             <input type="text" name="judul_eng" id="judul_eng" class="form-control" placeholder="Judul Program (eng)" >
                             </div>
                           
                        </div>

                        <div class="form-group">
                                <label for="id_bluebook" class="col-sm-3 control-label"> Bluebook </label>
                                <div class="col-sm-9">
                                    <select name="id_bluebook" id="id_bluebook" class="form-control" >
                                         
                                        <?php foreach($bluebook as $row){ ?>
                                            <option value="<?php echo $row['id']; ?>"><?php echo $row['nama']; ?>
                                          </option>
                                        <?php } ?>
                                    </select>
                                </div>
                        </div>

                         <div class="form-group">
                            <label for="id_instansi" class="col-sm-3 control-label">Instansi</label>
                            <div class="col-sm-9">
                                 <select id="id_instansi" class="form-control" >
                                  
                                      
                                   
                                    
                                    <?php foreach($lembaga as $row){ ?>
                                        <option value="<?php echo $row['id_lembaga']; ?>"><?php echo $row['nama_instansi']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="latar_belakang_eng" class="col-sm-3 control-label">Background and Justification</label>
                            <div class="col-sm-9">
                             <textarea name="latar_belakang_eng" id="latar_belakang_eng" class="col-sm-12" rows="10" placeholder="Latar Belakang dalam Bahasa Inggris"></textarea>
                            </div>
                               
                        </div>

                         <div class="form-group">
                            <label for="ruang_lingkup_eng" class="col-sm-3 control-label">Scope of Work</label>
                            <div class="col-sm-9">
                             <textarea name="ruang_lingkup_eng" id="ruang_lingkup_eng" class="col-sm-12" rows="10" placeholder="Ruang Lingkup dalam Bahasa Inggris"></textarea>
                            </div>
                               
                        </div>

                         <div class="form-group">
                            <label for="outcome" class="col-sm-3 control-label">Outcome</label>
                            <div class="col-sm-9">
                             <textarea name="outcome" id="outcome" class="col-sm-12" rows="5" placeholder="Ruang Lingkup dalam Bahasa Inggris"></textarea>
                            </div>
                               
                        </div>
                         
                    <!-- 
                        
                    </div> -->
                    <div class="modal-footer">                  
                        <button type="submit"class="btn btn-primary">Simpan</button>
                        <button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<style>
    .modal { overflow: auto !important; }
</style>


  
<script>
    $(document).ready(function(){
        $("#id_instansi").select2({
            placeholder: "Pilih Instansi",
            width: "100%"
        });

        $("#id_bluebook").select2({
            placeholder: "Pilih Bluebook",
            width: "100%"
        });
        
        $("#id_eselon_1").select2({
            placeholder: "Pilih Instansi Eselon I",
            width: "100%"
        });
        
        $("#id_donor").select2({
            placeholder: "Pilih Donor",
            width: "100%"
        });

        $("#id_program").select2({
            placeholder: "Pilih Program",
            width: "100%"
        });
        
        $("#id_mata_uang").select2({
            placeholder: "Pilih Mata Uang",
            width: "100%"
        });
        
        $("#id_jenis").select2({
            placeholder: "Pilih Tahun",
            width: "100%"
        });

        $("#id_sektor").select2({
            placeholder: "Pilih Tahun",
            width: "100%"
        });

        $("#id_status").select2({
            placeholder: "Pilih Tahun",
            width: "100%"
        });

         $("#infra").select2({
            placeholder: "Pilih Tahun",
            width: "100%"
        });

  
    
        
        
        $('#id_instansi').change(function () {
            var selProv = $(this).val();
            console.log(selProv);
            $.ajax({
                url: "<?php echo base_url(); ?>Usulan/ambil_data_instansi_es_1_by_id_instansi/"+selProv,
                dataType: "json",
                success: function(data) {
                    $("#id_eselon_1").empty();
                    $("#id_eselon_1").append('<option value="">Pilih Instansi Eselon I</option>');
                    $(data).each(function(){
                        var option = $('<option />');
                        option.attr('value', this.id).text(this.nama_eselon_1);
                        $('#id_eselon_1').append(option);
                    });
                }
            })
        });
        
        
        $('#htmlForm').submit(function(e) {
            e.preventDefault();

            var me          = $(this);
            
            var id                          = $("#id").val();
            var id_instansi                          = $("#id_instansi").val();
          
         
            var ruang_lingkup_eng                 = $("#ruang_lingkup_eng").val();
            var latar_belakang_eng                 = $("#latar_belakang_eng").val();
            var id_bluebook                 = $("#id_bluebook").val();
           
            var outcome                   = $("#outcome").val();
           
            var judul_eng                   = $("#judul_eng").val();
            var nama_program                   = $("#nama_program").val();
            
            var form_data   = new FormData();
            
            
            form_data.append('id_instansi', id_instansi);
            
            form_data.append('judul_eng', judul_eng);
         
            form_data.append('ruang_lingkup_eng', ruang_lingkup_eng);
            form_data.append('latar_belakang_eng', latar_belakang_eng);
           
            form_data.append('outcome', outcome);
           
            form_data.append('nama_program', nama_program);
            form_data.append('id_bluebook', id_bluebook);
                       // console.log(lokasi);
           


            $.ajax({
                url: '<?php echo base_url(); ?>program/usulan_simpan/tambah',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
                        $('#modalEditUsulan').modal('hide');
                        segarkan_data();
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

                            element.after(value);
                        });
                    }
                }
            });
        });
    });
</script>
