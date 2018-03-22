<div class="modal inmodal fade" id="ModalEdit" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="ibox">
                <div class="ibox-title">
                    <h5>Tambah Proyek Greenbook (PBA)</h5>
                </div>
                <form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
                
                    <div class="ibox-content">
                        
                        <div class="form-group">
                            <label for="id_instansi" class="col-sm-3 control-label">Instansi Pengusul</label>
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
                            <label for="instansi_pelaksana" class="col-sm-3 control-label">Instansi Pelaksana</label>
                            <div class="col-sm-9">
                                <textarea name="instansi_pelaksana" id="instansi_pelaksana" class="col-sm-12" rows="5" placeholder="Instansi Pelaksana"></textarea>
                                <!-- <a  class="tambah_instansi ">Tambah Instansi Pelaksana</a> -->
                            </div>
                           
                        </div>

                        <div class="form-group">
                            <label for="id_infra" class="col-sm-3 control-label">Kategori </label>
                            <div class="col-sm-9">
                                <select name="id_infra" id="id_infra" class="form-control"  >
                                     <option value="1">Infrastruktur</option>
                                     <option value="2">Non Infrastruktur</option>
                                      
                                   
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="id_sektor" class="col-sm-3 control-label">Sektor </label>
                            <div class="col-sm-9">
                                <select name="id_sektor" id="id_sektor" class="form-control"  >
                                     
                                    <?php foreach($sektor as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['nama']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>







                        <div class="form-group">
                            <label for="id_program" class="col-sm-3 control-label">Program </label>
                            <div class="col-sm-9">
                                <select name="id_program" id="id_program" class="form-control" >
                                     
                                    <?php foreach($program as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['nama_program']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="id_bluebook" class="col-sm-3 control-label">Referensi Program Bluebook </label>
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
                            <label for="id_greenbook" class="col-sm-3 control-label">Kode Greenbook </label>
                            <div class="col-sm-9">
                                <select name="id_greenbook" id="id_greenbook" class="form-control" >
                                   
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
                                <input type="text" name="proyeksi_tahun_pertama_penarikan" id="proyeksi_tahun_pertama_penarikan" class="form-control" placeholder="Proyeksi Tahun Pertama Penarikan" value="">
                            </div>
                        </div>

                          <div class="form-group">
                            <label for="lokasi" class="col-sm-3 control-label">Lokasi</label>
                            <div class="col-sm-9">

                                <select name="lokasi" id="lokasi" class="form-control"  >
                                     
                                    <?php foreach($lokasi as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['nama']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                               <!-- <textarea name="lokasi" id="lokasi" class="col-sm-12" rows="5" placeholder="Lokasi"></textarea> -->
                            </div>
                        </div>
                        
                     
                        <div class="form-group">
                            <label for="judul_proyek_eng" class="col-sm-3 control-label">Judul EN</label>
                            <div class="col-sm-9">
                                <input type="text" name="judul_proyek_eng" id="judul_proyek_eng" class="form-control" placeholder="Judul Proyek Dalam Bahasa Inggris" value="">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="judul_proyek_id" class="col-sm-3 control-label">Judul ID</label>
                            <div class="col-sm-9">
                                <input type="text" name="judul_proyek_id" id="judul_proyek_id" class="form-control" placeholder="Judul Proyek Dalam Bahasa Indonesia" value="">
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="ruang_lingkup_eng" class="col-sm-3 control-label">Ruang Lingkup EN</label>
                            <div class="col-sm-9">
                              <textarea name="ruang_lingkup_eng" id="ruang_lingkup_eng" class="col-sm-12" rows="5" placeholder="Ruang Lingkup dalam Bahasa Inggris"></textarea>
                                
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="ruang_lingkup_id" class="col-sm-3 control-label">Ruang Lingkup ID</label>
                            <div class="col-sm-9">
                             <textarea name="ruang_lingkup_id" id="ruang_lingkup_id" class="col-sm-12" rows="5" placeholder="Ruang Lingkup dalam Bahasa Indonesia"></textarea>
                                
                            </div>
                        </div>

                       


                         <div class="form-group">
                            <label for="nilai_pinjaman" class="col-sm-3 control-label">Nilai Pinjaman</label>
                            <div class="col-sm-9">
                                <input type="text" name="nilai_pinjaman" id="nilai_pinjaman" class="form-control" placeholder="Dana Pinjaman yang Diajukan" value="">
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="nilai_hibah" class="col-sm-3 control-label">Nilai Hibah</label>
                            <div class="col-sm-9">
                                <input type="text" name="nilai_hibah" id="nilai_hibah" class="form-control" placeholder="Nilai Hibah" value="">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="dana_pendamping" class="col-sm-3 control-label">Dana Pendamping</label>
                            <div class="col-sm-9">
                                <input type="text" name="dana_pendamping" id="dana_pendamping" class="form-control" placeholder="Dana Pendamping" value="">
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
                                <textarea name="output" id="output" class="col-sm-12" rows="5" placeholder="Output Proyek"></textarea>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="judul_id" class="col-sm-3 control-label">Outcome</label>
                            <div class="col-sm-9">
                                <textarea name="outcome" id="outcome" class="col-sm-12" rows="5" placeholder="Ringkasan Proyek"></textarea>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="durasi" class="col-sm-3 control-label">Durasi</label>
                            <div class="col-sm-6">
                                <input type="text" name="durasi" id="durasi" class="form-control" placeholder="Durasi Pelaksanaan (dalam bulan)" value="">
                            </div>
                            <label for="durasi" class="col-sm-3">Bulan</label>
                        </div>

                        <input type="hidden" name="id" class="form-control" id="id" value="">
                    </div>
                    <div class="modal-footer">                  
                        <button type="button" class="btn btn-primary">Simpan</button>
                        <button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div id="tmpModalGB"></div>

<style>
    .modal { overflow: auto !important; }
</style>


  
<script>
    $(document).ready(function(){
        $("#id_instansi").select2({
            placeholder: "Pilih Instansi",
            width: "100%"
        });

        $("#id_instansi_pelaksana").select2({
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

         $("#id_sektor").select2({
            placeholder: "Pilih Sektor",
            width: "100%"
        });

           $("#id_infra").select2({
            placeholder: "Pilih Kategori",
            width: "100%"
        });
        
        $("#lokasi").select2({
            placeholder: "Pilih Lokasi",
            multiple:true,
            width: "100%"
        });

         $("#id_status_lender").select2({
            placeholder: "Pilih Status Lender",
            width: "100%"
        });

         $(document).on('click', '.tambah_instansi', function(){  
           
         
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);

       
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>usulan/tambah_instansi",
                //data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                $("#tmpModalGB").html(response);
                $('#modalTambah').modal('show');
                console.log("bisa");
                alert(response);
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });

        });



        
    /*    $('').on(click).*/
        $('#htmlForm').submit(function(e) {
            e.preventDefault();

            var me          = $(this);
            
            var id                          = $("#id").val();
           // var id_instansi_eselon_satu     = $("#id_instansi_eselon_satu").val();
            var id_instansi                 = $("#id_instansi").val();
            var id_eselon_1                  = $("#id_eselon_1").val();
            //var id_jenis                    = $("#id_jenis").val();
            var id_lender                    = $("#id_lender").val();
            var judul_proyek_eng                    = $("#judul_proyek_eng").val();
            var judul_proyek_id                    = $("#judul_proyek_id").val();
            var durasi                              = $("#durasi").val();
            //var id_mata_uang                = $("#id_mata_uang").val();
            var nilai_hibah                         = $("#nilai_hibah").val();
            var dana_pendamping                 = $("#dana_pendamping").val();
            var nilai_pinjaman                 = $("#nilai_pinjaman").val();
            
            var id_greenbook                    = $("#id_greenbook").val();
            var id_bluebook                    = $("#id_bluebook").val();
            var id_program                    = $("#id_program").val();
            var id_status_lembaga                    = $("#id_status_lembaga").val();
            var id_status_lender                    = $("#id_status_lender").val();
            var ruang_lingkup_id                    = $("#ruang_lingkup_id").val();
            var ruang_lingkup_eng                    = $("#ruang_lingkup_eng").val();
            var proyeksi_tahun_pertama_penarikan                    = $("#proyeksi_tahun_pertama_penarikan").val();
            var outcome                    = $("#outcome").val();
            var output                    = $("#output").val();
            var id_instansi_pelaksana                    = $("#id_instansi_pelaksana").val();
            var id_sektor                    = $("#id_sektor").val();
            var id_infra                    = $("#id_infra").val();
            
            var form_data   = new FormData();
            
            form_data.append('id', id);
            form_data.append('id_instansi', id_instansi);
            form_data.append('id_instansi_pelaksana', id_instansi_pelaksana);
            form_data.append('id_lender', id_lender);
            form_data.append('judul_proyek_eng', judul_proyek_eng);
            form_data.append('judul_proyek_id', judul_proyek_id);
            form_data.append('durasi', durasi);
            form_data.append('nilai_hibah', nilai_hibah);
            form_data.append('dana_pendamping', dana_pendamping);
            form_data.append('nilai_pinjaman', nilai_pinjaman);
            form_data.append('id_greenbook', id_greenbook);
            form_data.append('id_bluebook', id_bluebook);
            form_data.append('id_program', id_program);
            form_data.append('id_status_lembaga', id_status_lembaga);
            form_data.append('id_status_lender', id_status_lender);
            form_data.append('ruang_lingkup_id', ruang_lingkup_id);
            form_data.append('ruang_lingkup_eng', ruang_lingkup_eng);
            form_data.append('proyeksi_tahun_pertama_penarikan', proyeksi_tahun_pertama_penarikan);
            form_data.append('outcome', outcome);
            form_data.append('output', output);
            form_data.append('id_sektor', id_sektor);
            form_data.append('id_infra', id_infra);
            form_data.append('lokasi', lokasi);


            $.ajax({
            url: '<?php echo base_url(); ?>greenbook/tambah_manual_input',
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
