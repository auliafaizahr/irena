
<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="ibox">
        <div class="ibox-title">
          <h5>Detail Proyek Bluebook</h5>
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
                <td class="mail-ontact text-right">Program</td>
                <td class="mail-subject"><?php echo $this->Usulan_model->ambil_program_proyek($detail->id_program)->nama_program; ?></td>
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
                <td class="mail-ontact text-right">Durasi</td>
                <td class="mail-subject"><?php echo $detail->durasi. " bulan"; ?></td>
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
                <td class="mail-subject"><?php echo $detail->nilai_pinjaman; ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Nilai Hibah</td>
               <td class="mail-subject"><?php echo $detail->nilai_hibah; ?></td>
              </tr> 
              <tr class="read">
                <td class="mail-ontact text-right">Nilai Dana Pendamping</td>
                <td class="mail-subject"><?php echo $detail->dana_pendamping; ?></td>
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
                <td class="mail-ontact text-right">Penilaian Kelayakan Administrasi </td>
                <td class="mail-subject">
                 <?php 

                    if($this->Bluebook_model->ambil_layak($detail->id)->is_layak == '1'){

                      if($this->Bluebook_model->ambil_layak($detail->id)->is_kasubdit_layak == "0") {
                         echo "<p><span class='label label-warning'>Administrasi tidak lengkap, dalam proses menunggu persetujuan penilaian kasubdit</span></p>";
                        //echo "<p><span class='label label-danger'>Belum memenuhi kelengkapan</span></p>";
                      }elseif ($this->Bluebook_model->ambil_layak($detail->id)->is_kasubdit_layak == "1") {
                        echo "<p><span class='label label-warning'>Sudah dilakukan penilaian, namun kasubdit meminta untuk dinilai kembali</span></p>";
                      }else{
                        echo "<p><span class='label label-danger'>Hasil penilaian administrasi tidak lengkap</span></p>";
                      }

                      
                    }elseif($this->Bluebook_model->ambil_layak($detail->id)->is_layak == '2'){

                      if ($this->Bluebook_model->ambil_layak($detail->id)->is_kasubdit_layak == "0") {
                         echo "<p><span class='label label-warning'>Administrasi  lengkap, dalam proses menunggu persetujuan penilaian kasubdit</span></p>";
                        //echo "<p><span class='label label-danger'>Belum memenuhi kelengkapan</span></p>";
                      }elseif ($this->Bluebook_model->ambil_layak($detail->id)->is_kasubdit_layak == "1") {
                         echo "<p><span class='label label-warning'>Sudah dilakukan penilaian, namun kasubdit meminta untuk dinilai kembali</span></p>";
                      }else{
                        echo "<p><span class='label label-primary'>Hasil penilaian administrasi lengkap</span></p>";
                      }

                        /*$query  = $this->arsip_model->ambil_nama_user_by_id($usulan->nilai_admin_id);
                    $user = $query->row();
                    //echo $user->nama_panggilan;
                    echo "<p><code>Penilaian dilakukan oleh ".$user->nama_panggilan.", tanggal ". date("d M'y h:i:s A", strtotime($usulan->nilai_admin_date)) ."</code></p>";
                    echo "<p><code>Keterangan : ".$usulan->nilai_admin_ket."</code></p>";*/


                      
                    }else{
                      echo "<p><span class='label label-default'>Belum dilakukan penilaian administrasi</span></p>";
                    }

                    if ($this->Bluebook_model->ambil_layak($detail->id)->is_layak != '0') {
                     // $a = $detail->id;
                      $user = $this->Bluebook_model->ambil_layak($detail->id)->update_by;
                      $nama = $this->Bluebook_model->ambil_user($user)->nama_depan;
                      echo "<p> Penilaian dilakukan oleh ";
                      echo "<b>".$nama."</b> </br>";
                      echo "<p> Penilaian dilakukan pada " .$this->Bluebook_model->ambil_layak($detail->id)->update_at. "</p>";
                      echo "<p> Catatan Penilaian : </br> </p> ";
                      echo "<b>".$this->Bluebook_model->ambil_layak($detail->id)->layak_keterangan."</b> </br>";

                    }

                    if ($this->Bluebook_model->ambil_layak($detail->id)->is_kasubdit_layak != '0') {
                      $user2 = $this->Bluebook_model->ambil_layak($detail->id)->kasubdit_layak_by;
                      $nama2 = $this->Bluebook_model->ambil_user($user2)->nama_depan;
                      echo "<p> Disetujui atau dinilai ulang oleh " ."<b>".$nama2. "</b>"."</p>";
                      echo "<p> Penilaian dilakukan pada " .$this->Bluebook_model->ambil_layak($detail->id)->kasubdit_layak_at. "</p>";
                      echo "<p> Catatan Penilaian Kasubdit : </br> </p> ";
                      echo "<b>".$this->Bluebook_model->ambil_layak($detail->id)->layak_catatan_kasubdit."</b> </br>";
                     
                    }
                    /*$query  = $this->arsip_model->ambil_nama_user_by_id($usulan->nilai_admin_id);
                    $user = $query->row();
                    //echo $user->nama_panggilan;
                    echo "<p><code>Penilaian dilakukan oleh ".$user->nama_panggilan.", tanggal ". date("d M'y h:i:s A", strtotime($usulan->nilai_admin_date)) ."</code></p>";
                    echo "<p><code>Keterangan : ".$usulan->nilai_admin_ket."</code></p>";*/
                  ?>

                </td>
              </tr>
             
               <tr class="read">
                <td class="mail-ontact text-right">Pengusulan ke GB</td>
                <td class="mail-subject">
                 

                  <?php 

                    if($this->Bluebook_model->ambil_layak($detail->id)->is_GB == '1'){

                      if($this->Bluebook_model->ambil_layak($detail->id)->is_gb_kasubdit == "0") {
                         echo "<p><span class='label label-warning'>Tidak memenuhi penilaian diusulkan ke Greenbook, dalam proses menunggu persetujuan penilaian kasubdit</span></p>";
                        //echo "<p><span class='label label-danger'>Belum memenuhi kelengkapan</span></p>";
                      }elseif ($this->Bluebook_model->ambil_layak($detail->id)->is_gb_kasubdit == "1") {
                        echo "<p><span class='label label-warning'>Sudah dilakukan penilaian, namun kasubdit meminta untuk dinilai kembali</span></p>";
                      }else{
                        echo "<p><span class='label label-danger'>Hasil penilaian administrasi tidak lengkap</span></p>";
                      }

                      
                    }elseif($this->Bluebook_model->ambil_layak($detail->id)->is_GB == '2'){

                      if ($this->Bluebook_model->ambil_layak($detail->id)->is_gb_kasubdit == "0") {
                         echo "<p><span class='label label-warning'>Memenuhi penilaian diusulkan ke Greenbook, dalam proses menunggu persetujuan penilaian kasubdit</span></p>";
                        //echo "<p><span class='label label-danger'>Belum memenuhi kelengkapan</span></p>";
                      }elseif ($this->Bluebook_model->ambil_layak($detail->id)->is_gb_kasubdit == "1") {
                         echo "<p><span class='label label-warning'>Sudah dilakukan penilaian, namun kasubdit meminta untuk dinilai kembali</span></p>";
                      }else{
                        echo "<p><span class='label label-primary'>Hasil penilaian administrasi lengkap</span></p>";
                      }

                        /*$query  = $this->arsip_model->ambil_nama_user_by_id($usulan->nilai_admin_id);
                    $user = $query->row();
                    //echo $user->nama_panggilan;
                    echo "<p><code>Penilaian dilakukan oleh ".$user->nama_panggilan.", tanggal ". date("d M'y h:i:s A", strtotime($usulan->nilai_admin_date)) ."</code></p>";
                    echo "<p><code>Keterangan : ".$usulan->nilai_admin_ket."</code></p>";*/


                      
                    }else{
                      echo "<p><span class='label label-default'>Belum dilakukan penilaian administrasi</span></p>";

                    }

                    if ($this->Bluebook_model->ambil_layak($detail->id)->is_GB != '0') {

                      $user = $this->Bluebook_model->ambil_layak($detail->id)->is_gb_update_by;
                      $nama = $this->Bluebook_model->ambil_user($user)->nama_depan;
                      echo "<p> Penilaian dilakukan oleh ";
                      echo "<b>".$nama."</b> </br>";
                      echo "<p> Penilaian dilakukan pada " .$this->Bluebook_model->ambil_layak($detail->id)->is_gb_update_at. "</p>";
                      echo "<p> Catatan Penilaian : </br> </p> ";
                      echo "<b>".$this->Bluebook_model->ambil_layak($detail->id)->layak_keterangan."</b> </br>";
                      echo "<p> Penilaian dilakukan oleh </p>";
                    }

                    if ($this->Bluebook_model->ambil_layak($detail->id)->is_gb_kasubdit != '0') {
                      
                      $user8 = $this->Bluebook_model->ambil_layak($detail->id)->kasubdit_gb_by;
                      $nama8 = $this->Bluebook_model->ambil_user($user8)->nama_depan;
                      echo "<p> Penilaian dilakukan oleh ";
                      echo "<b>".$nama8."</b> </br>";
                      echo "<p> Penilaian dilakukan pada " .$this->Bluebook_model->ambil_layak($detail->id)->kasubdit_gb_at. "</p>";
                      echo "<p> Catatan Penilaian : </br> </p> ";
                      echo "<b>".$this->Bluebook_model->ambil_layak($detail->id)->gb_catatan_catatan."</b> </br>";
                     
                    }
                    /*$query  = $this->arsip_model->ambil_nama_user_by_id($usulan->nilai_admin_id);
                    $user = $query->row();
                    //echo $user->nama_panggilan;
                    echo "<p><code>Penilaian dilakukan oleh ".$user->nama_panggilan.", tanggal ". date("d M'y h:i:s A", strtotime($usulan->nilai_admin_date)) ."</code></p>";
                    echo "<p><code>Keterangan : ".$usulan->nilai_admin_ket."</code></p>";*/
                  ?>
                </td>
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


            <?php if($this->Bluebook_model->ambil_layak($detail->id)->is_GB != '0'){ ?>
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
                          Greenbook 2015
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

              <?php }; ?>

              


              
             
             
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

