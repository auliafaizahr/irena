<div class="modal inmodal fade" id="ModalEdit" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="ibox">
                <div class="ibox-title">
                    <h5>Edit Proyek Loan Agreement</h5>
                </div>
                <form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
                
                    <div class="ibox-content">
                        
                        <div class="form-group">
                            <label for="id_instansi" class="col-sm-3 control-label">Instansi</label>
                            <div class="col-sm-9">
                                
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="id_eselon_1" class="col-sm-3 control-label">Instansi Eselon I</label>
                            <div class="col-sm-9">
                               
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="id_program" class="col-sm-3 control-label">Program </label>
                            <div class="col-sm-9">
                                <select name="id_program" id="id_program" class="form-control" >
                                     <?php 
                                        $query  = $this->Usulan_model->ambil_program_proyek_id($detail->id_program); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->nama_program; ?></option>
                                    <?php } ?>
                                    <?php foreach($program as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['nama_program']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="id_bluebook" class="col-sm-3 control-label">Kode Bluebook </label>
                            <div class="col-sm-9">
                                <select name="id_bluebook" id="id_bluebook" class="form-control" >
                                     <?php 
                                        $query  = $this->Usulan_model->ambil_bb($detail->id_bluebook); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
                                    <?php } ?>
                                    <?php foreach($bluebook as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['nama']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="id_greenbook" class="col-sm-3 control-label">Kode Greenbook </label>
                            <div class="col-sm-9">
                                <select name="id_greenbook" id="id_greenbook" class="form-control" >
                                     <?php 
                                        $query  = $this->Usulan_model->ambil_gb($detail->id_greenbook); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
                                    <?php } ?>
                                    <?php foreach($greenbook as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['nama']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="proyeksi_tahun_pertama_penarikan" class="col-sm-3 control-label">Proyeksi Tahun Pertama Penarikan</label>
                            <div class="col-sm-9">
                                <input type="text" name="proyeksi_tahun_pertama_penarikan" id="proyeksi_tahun_pertama_penarikan" class="form-control" placeholder="Proyeksi Tahun Pertama Penarikan" value="<?php echo $detail->proyeksi_tahun_pertama_penarikan; ?>">
                            </div>
                        </div>
                        
                     
                        <div class="form-group">
                            <label for="judul_proyek_eng" class="col-sm-3 control-label">Judul EN</label>
                            <div class="col-sm-9">
                                <input type="text" name="judul_proyek_eng" id="judul_proyek_eng" class="form-control" placeholder="Judul Proyek Dalam Bahasa Inggris" value="<?php echo $detail->judul_proyek_eng; ?>">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="judul_proyek_id" class="col-sm-3 control-label">Judul ID</label>
                            <div class="col-sm-9">
                                <input type="text" name="judul_proyek_id" id="judul_proyek_id" class="form-control" placeholder="Judul Proyek Dalam Bahasa Indonesia" value="<?php echo $detail->judul_proyek_id; ?>">
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="ruang_lingkup_eng" class="col-sm-3 control-label">Ruang Lingkup EN</label>
                            <div class="col-sm-9">
                                <input type="text" name="ruang_lingkup_eng" id="" class="form-control" placeholder="Ruang Lingkup dalam Bahasa Inggris" value="<?php echo $detail->ruang_lingkup_eng; ?>">
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="ruang_lingkup_id" class="col-sm-3 control-label">Ruang Lingkup ID</label>
                            <div class="col-sm-9">
                                <input type="text" name="ruang_lingkup_id" id="ruang_lingkup_id" class="form-control" placeholder="Ruang Lingkup dalam Bahasa Indonesia" value="<?php echo $detail->ruang_lingkup_id; ?>">
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="nilai_pinjaman" class="col-sm-3 control-label">Nilai Pinjaman</label>
                            <div class="col-sm-9">
                                <input type="text" name="nilai_pinjaman" id="nilai_pinjaman" class="form-control" placeholder="Dana Pinjaman yang Diajukan" value="<?php echo $detail->nilai_pinjaman; ?>">
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="nilai_hibah" class="col-sm-3 control-label">Nilai Hibah</label>
                            <div class="col-sm-9">
                                <input type="text" name="nilai_hibah" id="nilai_hibah" class="form-control" placeholder="Nilai Hibah" value="<?php echo $detail->nilai_hibah; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="dana_pendamping" class="col-sm-3 control-label">Dana Pendamping</label>
                            <div class="col-sm-9">
                                <input type="text" name="dana_pendamping" id="dana_pendamping" class="form-control" placeholder="Dana Pendamping" value="<?php echo $detail->dana_pendamping; ?>">
                            </div>
                        </div>



                         <div class="form-group">
                            <label for="id_lender" class="col-sm-3 control-label">Indikasi Lender</label>
                            <div class="col-sm-9">
                                <select name="id_lender" id="id_lender" class="form-control" >
                                     <?php 
                                        $query  = $this->Usulan_model->ambil_lender($detail->id_lender); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->lender; ?></option>
                                    <?php } ?>
                                    <?php foreach($lender as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['lender']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="tgl" class="col-sm-3 control-label">Tanggal LA</label>
                            <div class="col-sm-9">
                                <div class="input-group date" >
                                    <span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" name= "tgl" id="tgl" class="form-control" value="" data-date-format='yyyy-mm-dd'>
                                </div>
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="id_status_lender" class="col-sm-3 control-label">Status Kesiapan Lender</label>
                            <div class="col-sm-9">
                                <select name="id_status_lender" id="id_status_lender" class="form-control" >
                                     <?php 
                                        $query  = $this->Usulan_model->status_lender($detail->id_status_lender); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->status; ?></option>
                                    <?php } ?>
                                    <?php foreach($status_lender as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['status']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="id_status_lembaga" class="col-sm-3 control-label">Status Kesiapan K/L</label>
                            <div class="col-sm-9">
                                <select name="id_status_lembaga" id="id_status_lembaga" class="form-control" >
                                     <?php 
                                        $query  = $this->Usulan_model->status_lembaga($detail->id_status_lembaga); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->status; ?></option>
                                    <?php } ?>
                                    <?php foreach($status_lembaga as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['status']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>





                        <div class="form-group">
                            <label for="output" class="col-sm-3 control-label">Output</label>
                            <div class="col-sm-9">
                                <textarea name="output" id="output" class="col-sm-12" rows="5" placeholder="Output Proyek"><?php echo $detail->output; ?></textarea>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="judul_id" class="col-sm-3 control-label">Outcome</label>
                            <div class="col-sm-9">
                                <textarea name="outcome" id="outcome" class="col-sm-12" rows="5" placeholder="Ringkasan Proyek"><?php echo $detail->outcome; ?></textarea>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="durasi" class="col-sm-3 control-label">Durasi</label>
                            <div class="col-sm-6">
                                <input type="text" name="durasi" id="durasi" class="form-control" placeholder="Durasi Pelaksanaan (dalam bulan)" value="<?php echo $detail->durasi; ?>">
                            </div>
                            <label for="durasi" class="col-sm-3">Bulan</label>
                        </div>

                        <input type="hidden" name="id" class="form-control" id="id" value="">
                    </div>
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

         $("#id_bluebook").select2({
            placeholder: "Pilih Bluebook",
            width: "100%"
        });

        $("#id_lender").select2({
            placeholder: "Pilih Lender",
            width: "100%"
        });

         $("#id_status_lembaga").select2({
            placeholder: "Pilih Status Lembaga",
            width: "100%"
        });


         $("#id_greenbook").select2({
            placeholder: "Pilih Kode Greenbook",
            width: "100%"
        });
        
        

         $("#id_status_lender").select2({
            placeholder: "Pilih Status Lender",
            width: "100%"
        });

         $("#tgl").datepicker({
            todayHighlight: true
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
            var id_instansi_eselon_satu     = $("#id_instansi_eselon_satu").val();
            var id_jenis                    = $("#id_jenis").val();
            var id_donor                    = $("#id_donor").val();
            var judul_en                    = $("#judul_en").val();
            var judul_id                    = $("#judul_id").val();
            var durasi                      = $("#durasi").val();
            var id_mata_uang                = $("#id_mata_uang").val();
            var nilai_hibah                 = $("#nilai_hibah").val();
            var nilai_dp                    = $("#nilai_dp").val();
            var ringkasan                   = $("#ringkasan").val();
            
            var form_data   = new FormData();
            
            form_data.append('id', id);
            form_data.append('id_instansi_eselon_satu', id_instansi_eselon_satu);
            form_data.append('id_donor', id_donor);
            form_data.append('id_jenis', id_jenis);
            form_data.append('judul_en', judul_en);
            form_data.append('judul_id', judul_id);
            form_data.append('durasi', durasi);
            form_data.append('id_mata_uang', id_mata_uang);
            form_data.append('nilai_hibah', nilai_hibah);
            form_data.append('nilai_dp', nilai_dp);
            form_data.append('ringkasan', ringkasan);


            $.ajax({
                url: '<?php echo base_url(); ?>loan_aggr/la_simpan/edit',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
                        $('#modalEdit').modal('hide');
                        segarkan_data();
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
