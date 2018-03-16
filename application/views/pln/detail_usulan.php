
<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="ibox">
        <div class="ibox-title">
          <h5>Detail Usulan</h5>
        </div>
        <div class="ibox-content">
          <table class="table table-hover table-mail">
            <tbody>
              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pengusul</td>
                <td class="mail-subject"><?php echo $this->Usulan_model->ambil_instansi_untuk_usulan($detail->id_instansi)->nama_instansi; ?></td>
              </tr>


              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pelaksana</td>
                <td class="mail-subject"><?php echo $detail->instansi_pelaksana; ?> </td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Tahun Usulan</td>
                <td class="mail-subject"><?php echo $detail->tahun_usulan; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Kategori</td>
                <td class="mail-subject"><?php 
                if ($detail->infra == '1') {
                 echo "INFRASTRUKTUR";
                }elseif ($detail->infra == '2') {
                 echo "NON INFRASTRUKTUR";
                  # code...
                }
                 ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Program</td>
                <td class="mail-subject"><?php echo $this->Usulan_model->ambil_program_proyek($detail->id_program)->nama_program; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Proyeksi Tahun Pertama Penarikan</td>
                <td class="mail-subject"><?php echo $detail->proyeksi_tahun_pertama_penarikan; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Sektor</td>
                <td class="mail-subject"><?php echo $this->Usulan_model->ambil_nama_sektor($detail->id_sektor)->nama; ?></td>
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
                <td class="mail-ontact text-right">Lokasi</td>
             
                <td class="mail-subject"><?php $a =  explode(",", $detail->lokasi); 
                   $banyak_lokasi = (count($a));

                   $lokasi = array();

                   for ($i=0; $i < $banyak_lokasi ; $i++) { 
                     $lokasi[$i] = $this->Usulan_model->ambil_nama_lokasi($a[$i])->nama;
                   }

                   $lokasi_fix = implode(",", $lokasi);

                   echo $lokasi_fix;

                ?></td>
               
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Ruang Lingkup ENG</td>
                <td class="mail-subject"><?php echo  nl2br($detail->ruang_lingkup_eng); ?></pre></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Ruang Lingkup ID</td>
                <td class="mail-subject"><?php echo  nl2br($detail->ruang_lingkup_id); ?></td>
              </tr>
               <tr class="read">
                <td class="mail-ontact text-right">Nilai Pinjaman</td>
                <td class="mail-subject"><?php echo number_format($detail->dana_usulan) . " juta USD"; ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Nilai Hibah</td>
                <td class="mail-subject"><?php echo number_format($detail->dana_hibah). " juta USD"; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Nilai Dana Pendamping</td>
                <td class="mail-subject"><?php echo number_format($detail->dana_pendamping). " juta USD"; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Output</td>
                <td class="mail-subject"><?php echo nl2br($detail->output); ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Outcome</td>
                <td class="mail-subject"><?php echo nl2br($detail->outcome); ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Status Umum</td>
                <td class="mail-subject"><?php echo $this->Usulan_model->ambil_nama_statusumum($detail->id_status)->nama; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Penilaian Administrasi</td>
                <td class="mail-subject">
                  <?php 

                    if($this->Usulan_model->ambil_adm($detail->id)->is_lengkap == '1'){

                      if($this->Usulan_model->ambil_adm($detail->id)->is_kasubdit == "0") {
                         echo "<p><span class='label label-warning'>Administrasi tidak lengkap, dalam proses menunggu persetujuan penilaian kasubdit</span></p>";
                        //echo "<p><span class='label label-danger'>Belum memenuhi kelengkapan</span></p>";
                      }elseif ($this->Usulan_model->ambil_adm($detail->id)->is_kasubdit == "2") {
                        echo "<p><span class='label label-warning'>Sudah dilakukan penilaian, namun kasubdit meminta untuk dinilai kembali</span></p>";
                      }else{
                        echo "<p><span class='label label-danger'>Hasil penilaian administrasi tidak lengkap</span></p>";
                      }

                      
                    }elseif($this->Usulan_model->ambil_adm($detail->id)->is_lengkap == '2'){

                      if ($this->Usulan_model->ambil_adm($detail->id)->is_kasubdit == "0") {
                         echo "<p><span class='label label-warning'>Administrasi  lengkap, dalam proses menunggu persetujuan penilaian kasubdit</span></p>";
                        //echo "<p><span class='label label-danger'>Belum memenuhi kelengkapan</span></p>";
                      }elseif ($this->Usulan_model->ambil_adm($detail->id)->is_kasubdit == "1") {
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

                    if ($this->Usulan_model->ambil_adm($detail->id)->is_lengkap != '0') {
                      date_default_timezone_set('Asia/Jakarta');
                      $user = $this->Usulan_model->ambil_adm($detail->id)->update_by;
                      $nama = $this->Usulan_model->ambil_user($user)->nama_depan;
                      echo "<p> Penilaian dilakukan oleh ";
                      echo "<b>".$nama."</b> </br>";
                      echo "<p> Penilaian dilakukan pada " .date("d M'y h:i:s ", strtotime($this->Usulan_model->ambil_adm($detail->id)->update_at)). "</p>";
                      echo "<p> Catatan Penilaian : </br> </p> ";
                      echo "<b>".$this->Usulan_model->ambil_adm($detail->id)->keterangan."</b> </br>";
                     
                    }

                    if ($this->Usulan_model->ambil_adm($detail->id)->is_kasubdit != '0') {
                       $user2 = $this->Usulan_model->ambil_adm($detail->id)->by_kasubdit;
                      $nama2 = $this->Usulan_model->ambil_user($user2)->nama_depan;
                      echo "<p> Disetujui atau dinilai ulang oleh " ."<b>".$nama2. "</b>"."</p>";
                      echo "<p> Penilaian dilakukan pada " . date("d M'y h:i:s ", strtotime($this->Usulan_model->ambil_adm($detail->id)->at_kasubdit)). "</p>";
                      echo "<p> Catatan Penilaian Kasubdit : </br> </p> ";
                      echo "<b>".$this->Usulan_model->ambil_adm($detail->id)->catatan."</b> </br>";
                     
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
                <td class="mail-ontact text-right">Penilaian Kelayakan</td>
                <td class="mail-subject">
                  <?php 

                    if($this->Usulan_model->ambil_layak($detail->id)->is_layak == '1'){

                      if($this->Usulan_model->ambil_layak($detail->id)->is_kasubdit == "0") {
                         echo "<p><span class='label label-warning'>Tidak memenuhi penilaian kelayakan, dalam proses menunggu persetujuan penilaian kasubdit</span></p>";
                        //echo "<p><span class='label label-danger'>Belum memenuhi kelengkapan</span></p>";
                      }elseif ($this->Usulan_model->ambil_layak($detail->id)->is_kasubdit == "2") {
                        echo "<p><span class='label label-warning'>Sudah dilakukan penilaian, namun kasubdit meminta untuk dinilai kembali</span></p>";
                      }else{
                        echo "<p><span class='label label-danger'>Hasil penilaian kelayakan tidak memenuhi</span></p>";
                      }

                      
                    }elseif($this->Usulan_model->ambil_layak($detail->id)->is_layak == '2'){

                      if ($this->Usulan_model->ambil_layak($detail->id)->is_kasubdit == "0") {
                         echo "<p><span class='label label-warning'>Memenuhi penilaian kelayakan, dalam proses menunggu persetujuan penilaian kasubdit</span></p>";
                        //echo "<p><span class='label label-danger'>Belum memenuhi kelengkapan</span></p>";
                      }elseif ($this->Usulan_model->ambil_layak($detail->id)->is_kasubdit == "1") {
                         echo "<p><span class='label label-warning'>Sudah dilakukan penilaian, namun kasubdit meminta untuk dinilai kembali</span></p>";
                      }else{
                        echo "<p><span class='label label-primary'>Hasil penilaian kelayakan sudah memenuhi</span></p>";
                      }

                        /*$query  = $this->arsip_model->ambil_nama_user_by_id($usulan->nilai_admin_id);
                    $user = $query->row();
                    //echo $user->nama_panggilan;
                    echo "<p><code>Penilaian dilakukan oleh ".$user->nama_panggilan.", tanggal ". date("d M'y h:i:s A", strtotime($usulan->nilai_admin_date)) ."</code></p>";
                    echo "<p><code>Keterangan : ".$usulan->nilai_admin_ket."</code></p>";*/


                      
                    }else{
                      echo "<p><span class='label label-default'>Belum dilakukan penilaian administrasi</span></p>";
                    }

                    if ($this->Usulan_model->ambil_layak($detail->id)->is_layak != '0') {

                      $user3 = $this->Usulan_model->ambil_layak($detail->id)->update_by;
                      $nama3 = $this->Usulan_model->ambil_user($user3)->nama_depan;
                      echo "<p> Penilaian dilakukan oleh ";
                      echo "<b>".$nama3."</b> </br>";
                      echo "<p> Penilaian dilakukan pada " .date("d M'y h:i:s", strtotime($this->Usulan_model->ambil_layak($detail->id)->update_at." UTC")) . "</p>";
                      echo "<p> Catatan Penilaian : </br> </p> ";
                      echo "<b>".$this->Usulan_model->ambil_layak($detail->id)->ket."</b> </br>";

                    
                    }

                    if ($this->Usulan_model->ambil_layak($detail->id)->is_kasubdit != '0' ) {
                      $user4 = $this->Usulan_model->ambil_layak($detail->id)->by_kasubdit;
                      $nama4 = $this->Usulan_model->ambil_user($user4)->nama_depan;
                      echo "<p> Dan disetujui atau dinilai ulang oleh kasubdit ";
                      echo "<b>".$nama4."</b> </br>";
                      echo "<p> Penilaian dilakukan pada " .$this->Usulan_model->ambil_layak($detail->id)->at_kasubdit. "</p>";
                      echo "<p> Catatan Penilaian Kasubdit : </br> </p> ";
                      echo "<b>".$this->Usulan_model->ambil_layak($detail->id)->catatan."</b> </br>";
                      

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
                <td class="mail-ontact text-right">Pengusulan ke BB</td>
                <td class="mail-subject">
                 

                   <?php 

                    if($this->Usulan_model->ambil_adm($detail->id)->is_BB == '1'){

                      if($this->Usulan_model->ambil_adm($detail->id)->is_bb_kasubdit == "0") {
                         echo "<p><span class='label label-warning'>Tidak memenuhi penilaian kelayakan, dalam proses menunggu persetujuan penilaian kasubdit</span></p>";
                        //echo "<p><span class='label label-danger'>Belum memenuhi kelengkapan</span></p>";
                      }elseif ($this->Usulan_model->ambil_adm($detail->id)->is_bb_kasubdit == "1") {
                        echo "<p><span class='label label-warning'>Sudah dilakukan penilaian, namun kasubdit meminta untuk dinilai kembali</span></p>";
                      }else{
                        echo "<p><span class='label label-danger'>Hasil penilaian kelayakan tidak memenuhi</span></p>";
                      }

                      
                    }elseif($this->Usulan_model->ambil_adm($detail->id)->is_BB == '2'){

                      if ($this->Usulan_model->ambil_adm($detail->id)->is_bb_kasubdit == "0") {
                         echo "<p><span class='label label-warning'>Memenuhi penilaian kelayakan, dalam proses menunggu persetujuan penilaian kasubdit</span></p>";
                        //echo "<p><span class='label label-danger'>Belum memenuhi kelengkapan</span></p>";
                      }elseif ($this->Usulan_model->ambil_adm($detail->id)->is_bb_kasubdit == "1") {
                         echo "<p><span class='label label-warning'>Sudah dilakukan penilaian, namun kasubdit meminta untuk dinilai kembali</span></p>";
                      }else{
                        echo "<p><span class='label label-primary'>Hasil penilaian kelayakan sudah memenuhi</span></p>";
                      }

                        /*$query  = $this->arsip_model->ambil_nama_user_by_id($usulan->nilai_admin_id);
                    $user = $query->row();
                    //echo $user->nama_panggilan;
                    echo "<p><code>Penilaian dilakukan oleh ".$user->nama_panggilan.", tanggal ". date("d M'y h:i:s A", strtotime($usulan->nilai_admin_date)) ."</code></p>";
                    echo "<p><code>Keterangan : ".$usulan->nilai_admin_ket."</code></p>";*/


                      
                    }else{
                      echo "<p><span class='label label-default'>Belum dilakukan penilaian administrasi</span></p>";
                    }

                    if ($this->Usulan_model->ambil_adm($detail->id)->is_BB != '0') {

                       $user5 = $this->Usulan_model->ambil_adm($detail->id)->is_BB_by;
                      $nama5 = $this->Usulan_model->ambil_user($user5)->nama_depan;
                      echo "<p> Penilaian dilakukan oleh ";
                      echo "<b>".$nama5."</b> </br>";
                      echo "<p> Penilaian dilakukan pada " .$this->Usulan_model->ambil_adm($detail->id)->is_BB_at. "</p>";
                      echo "<p> Catatan Penilaian : </br> </p> ";
                      echo "<b>".$this->Usulan_model->ambil_adm($detail->id)->is_BB_catatan."</b> </br>";

                    }

                    if ($this->Usulan_model->ambil_adm($detail->id)->is_bb_kasubdit != '0' ) {
                      $user6 = $this->Usulan_model->ambil_adm($detail->id)->kasubdit_bb_by;
                      $nama6 = $this->Usulan_model->ambil_user($user6)->nama_depan;
                      echo "<p> Dan disetujui atau dinilai ulang oleh kasubdit ";
                      echo "<b>".$nama6."</b> </br>";
                      echo "<p> Penilaian dilakukan pada " .$this->Usulan_model->ambil_adm($detail->id)->kasubdit_bb_at. "</p>";
                      echo "<p> Catatan Penilaian Kasubdit : </br> </p> ";
                      echo "<b>".$this->Usulan_model->ambil_adm($detail->id)->catatan_kasubdit
                      ."</b> </br>";
                    }
                    /*$query  = $this->arsip_model->ambil_nama_user_by_id($usulan->nilai_admin_id);
                    $user = $query->row();
                    //echo $user->nama_panggilan;
                    echo "<p><code>Penilaian dilakukan oleh ".$user->nama_panggilan.", tanggal ". date("d M'y h:i:s A", strtotime($usulan->nilai_admin_date)) ."</code></p>";
                    echo "<p><code>Keterangan : ".$usulan->nilai_admin_ket."</code></p>";*/
                  ?>
                </td>
              </tr>

              <?php if($detail->is_BB == "1"){ ?>
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
                    <?php $bb_detail = $this->Usulan_model->ambil_bb_detail($detail->id);

                      foreach ($bb_detail as $key => $value):
                        # code...
                      
                     ?>
                      <tr>
                        <td>
                         <?php 

                          echo $this->Bluebook_model->kode_bluebook($value->id_bluebook)->nama; ?>
                        </td>
                        <td>
                        <?php  echo number_format($value->nilai_pinjaman); ?>
                        </td>
                      </tr>
                      <?php endforeach; ?>
                    </tbody>

                  </table>
                </td>
              </tr>

              <?php }; ?>

              <?php if($detail->is_GB == "1"){ ?>
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
                    <?php $gb_detail = $this->Usulan_model->ambil_gb_detail($detail->id);

                      foreach ($gb_detail as $key => $value):
                        # code...
                      
                     ?>
                      <tr>
                        <td>
                         <?php 
                         if($value->id_greenbook != ''){
                         echo $this->Greenbook_model->kode_greenbook($value->id_greenbook)->nama;
                        }else{
                          echo "";
                        }
                          ?>
                        
                        </td>
                        <td>
                        <?php  echo number_format($value->nilai_pinjaman); ?>
                        </td>
                         <td>
                        <?php echo $this->Greenbook_model->lender($value->id_lender)->lender;
                         ?>
                        </td>
                      </tr>
                      <?php endforeach; ?>
                    </tbody>


                  </table>
                </td>
              </tr>

              <?php }; ?>


              <?php if($detail->is_DK == "1"){ ?>
                <tr class="read">
                <td class="mail-ontact text-right">Detail Daftar Kegiatan</td>
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
                    <?php $dk_detail = $this->Usulan_model->ambil_dk_detail($detail->id);

                      foreach ($dk_detail as $key => $value):
                        # code...
                      
                     ?>
                      <tr>
                        <td>
                         <?php echo $value->tgl_DK; ?>
                        
                        </td>
                        <td>
                        <?php  echo number_format($value->nilai_pinjaman); ?>
                        </td>
                         <td>
                        <?php echo $this->Greenbook_model->lender($value->id_lender)->lender;
                         ?>
                        </td>
                      </tr>
                      <?php endforeach; ?>
                    </tbody>

                  </table>
                </td>
              </tr>

              <?php }; ?>


              <?php if($detail->is_LA == "1"){ ?>
                <tr class="read">
                <td class="mail-ontact text-right">Detail Loan Agreement</td>
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
                    <?php $dk_detail = $this->Usulan_model->ambil_la_detail($detail->id);

                      foreach ($la_detail as $key => $value):
                        # code...
                      
                     ?>
                      <tr>
                        <td>
                         <?php echo $value->tgl_LA; ?>
                        
                        </td>
                        <td>
                        <?php  echo number_format($value->nilai_pinjaman); ?>
                        </td>
                         <td>
                        <?php echo $this->Greenbook_model->lender($value->id_lender)->lender;
                         ?>
                        </td>
                      </tr>
                      <?php endforeach; ?>
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

