
<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="ibox">
        <div class="ibox-title">
          <h5>Detail Proyek Loan Agreement</h5>
        </div>
        <div class="ibox-content">
          <table class="table table-hover table-mail">
            <tbody>
              <tr class="read">
                <td class="mail-ontact text-right">Instansi</td>
                <td class="mail-subject"><?php echo $this->Usulan_model->ambil_instansi_untuk_usulan($detail->id_instansi)->nama_instansi; ?></td>
              </tr>


              <tr class="read">
                <td class="mail-ontact text-right">Instansi Eselon I</td>
                <td class="mail-subject"><!-- <?php echo $usulan->instansi_eselon_satu; ?> --></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pelaksana</td>
                <td class="mail-subject"><?php echo $this->Usulan_model->ambil_instansi_untuk_usulan($detail->id_instansi_pelaksana)->nama_instansi; ?></td>
              </tr>
               <tr class="read">
                <td class="mail-ontact text-right">Program</td>
                <td class="mail-subject"><?php echo ($detail->id_program!="")?$this->Usulan_model->ambil_program_proyek($detail->id_program)->nama_program:'';?>
                </td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Kode Bluebook</td>
                <td class="mail-subject"><?php echo ($detail->id_bluebook!="")?$this->Bluebook_model->kode_bluebook($detail->id_bluebook)->nama:'';?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Kode Greenbook</td>
                <td class="mail-subject"><?php echo ($detail->id_greenbook!="")?$this->Bluebook_model->kode_greenbook($detail->id_greenbook)->nama:'';?></td>
              </tr>
               <tr class="read">
                <td class="mail-ontact text-right">Indikasi Lender</td>
                <td class="mail-subject"><?php echo ($detail->id_lender!="")?$this->Bluebook_model->lender($detail->id_lender)->lender:'';?></td>

              </tr>

               <tr class="read">
                <td class="mail-ontact text-right">Status Kesiapan Lender</td>
                <td class="mail-subject"><?php echo ($detail->id_status_lender!="")?$this->Bluebook_model->status_lender($detail->id_status_lender)->status:'';?>
                </td>
              </tr>

               <tr class="read">
                <td class="mail-ontact text-right">Status Kesiapan K/L</td>
                <td class="mail-subject"><?php echo ($detail->id_status_lembaga!="")?$this->Bluebook_model->status_lembaga($detail->id_status_lembaga)->status:'';?>
                  </td>
                
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Durasi</td>
                <td class="mail-subject"><?php echo $detail->durasi. " bulan"; ?></td>
              </tr>
              
              <tr class="read">
                <td class="mail-ontact text-right">Proyeksi Tahun Pertama Penarikan</td>
                <td class="mail-subject"><?php echo $detail->proyeksi_tahun_pertama_penarikan; ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Tanggal DK</td>
                <td class="mail-subject"><?php echo ($detail->tgl_DK!="")?$detail->tgl_DK:'';?></td>
              </tr>

               <tr class="read">
                <td class="mail-ontact text-right">Tanggal LA</td>
                <td class="mail-subject"><?php echo ($detail->tgl_LA!="")?$detail->tgl_LA:'';?></td>
              </tr>


              <tr class="read">
                <td class="mail-ontact text-right">Judul EN</td>
                <td class="mail-subject"><?php echo $detail->judul_proyek_eng; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Judul ID</td>
                <td class="mail-subject"><?php echo $detail->judul_proyek_id; ?></td>
              </tr>
              
              <tr class="read">
                <td class="mail-ontact text-right">Ruang Lingkup ENG</td>
                <td class="mail-subject"><?php echo  $detail->ruang_lingkup_eng; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Ruang Lingkup ID</td>
                <td class="mail-subject"><?php echo  $detail->ruang_lingkup_id; ?></td>
              </tr>
               <tr class="read">
                <td class="mail-ontact text-right">Nilai Pinjaman</td>
                <td class="mail-subject"><?php echo ($detail->nilai_pinjaman!="")?$detail->nilai_pinjaman:'';?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Nilai Hibah</td>
                <td class="mail-subject"><?php echo ($detail->nilai_hibah!="")?$detail->nilai_hibah:'';?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right"> Dana Pendamping</td>
                <td class="mail-subject"><?php echo ($detail->dana_pendamping!="")?$detail->dana_pendamping:'';?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Output</td>
                <td class="mail-subject"><?php echo $detail->output; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Outcome</td>
                <td class="mail-subject"><?php echo $detail->outcome; ?></td>
              </tr>

               <tr class="read">
                <td class="mail-ontact text-right">Detail Bluebook</td>
                <td class="mail-subject">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th style="width: 300px;" tabindex="0">
                          Bluebook
                        </th>

                        <th>
                          Nilai (dalam USD)
                        </th>
                      </tr>
                    </thead>

                    <tbody>
                      <tr>
                        <td>
                          Bluebook 2015
                        </td>
                        <td>
                         200
                        </td>
                      </tr>
                    </tbody>

                  </table>
                </td>
              </tr>

                <tr class="read">
                <td class="mail-ontact text-right">Detail Greenbook</td>
                <td class="mail-subject">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th style="width: 300px;" tabindex="0">
                          Greenbook
                        </th>

                        <th>
                          Nilai (dalam USD)
                        </th>

                        <th>
                         Lender
                        </th>
                      </tr>
                    </thead>

                    <tbody>
                      <tr>
                        <td>
                          Bluebook 2015
                        </td>
                        <td>
                         200
                        </td>
                        <td>
                         Lender
                        </td>
                      </tr>
                    </tbody>

                  </table>
                </td>
              </tr>

             
              <tr class="read">
                <td class="mail-ontact text-right">Detail DK</td>
                <td class="mail-subject">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th style="width: 300px;" tabindex="0">
                          Tanggal DK
                        </th>

                        <th>
                          Nilai (dalam USD)
                        </th>
                        <th>
                         Lender
                        </th>
                      </tr>
                    </thead>

                    <tbody>
                      <tr>
                        <td>
                          Tanggal DK
                        </td>
                        <td>
                         200
                        </td>

                         <td>
                         Lender
                        </td>
                      </tr>
                    </tbody>

                  </table>
                </td>
              </tr>


          
              <tr class="read">
                <td class="mail-ontact text-right">Detail Detail LA</td>
                <td class="mail-subject">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th style="width: 300px;" tabindex="0">
                          Tanggal LA
                        </th>

                        <th>
                          Nilai (dalam USD)
                        </th>
                        <th>
                         Lender
                        </th>
                      </tr>
                    </thead>

                    <tbody>
                      <tr>
                        <td>
                          Tanggal LA
                        </td>
                        <td>
                         200
                        </td>

                         <td>
                         Lender
                        </td>
                      </tr>
                    </tbody>

                  </table>
                </td>
              </tr>

             
             
             
            </tbody>
          </table>
        </div>
        <div class="modal-footer">          
          <button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
        </div>
      </div>
    </div>
    
  </div>
</div>


<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Detail Usulan</h4>
      </div>
      
        
      
    </div>
  </div>
</div>


<script>
    $(document).ready(function(){
    $("#select_instansi").select2({
      placeholder: "Pilih Instansi",
      width: "100%"
    });
    
    $("#select_tahun").select2({
      placeholder: "Pilih Tahun Usulan",
      width: "100%"
    });


    $('#tblSimpan').click(function(){
      $.ajax({
        url: "<?php echo base_url(); ?>sbsn/usulan_simpan/edit",
        type: "POST",
        data: $('#htmlForm').serialize(),
        success:function(html){
          $('#modalEdit').modal('hide');
          segarkan_data();
          notif("Informasi", "Data berhasil disimpan.");

        },
        error: function(){
          alert('Error Updating!');
        }
        
      });
    });
    
  });
</script>

