
<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="ibox">
        <div class="ibox-title">
        <h5>Detail Usulan <?php echo $detail->judul_proyek_eng; ?> </h5>
        </div>

<div class="ibox-content">
        <div class="ibox float-e-margins">
          <div class="ibox-title">
            <h5>I. Informasi Pada Dokumen Usulan</h5>
         
            
          </div>
       
          <table class="table table-hover table-mail">
            <tbody>
              <tr class="read">
                <td class="mail-ontact text-right">Status Usulan Proyek</td>
                <td class="mail-subject"> 
                <?php 
                //kalau udah LA
                if($detail->is_LA == "1" && $detail->is_DK == "1" && $detail->is_GB == "1"  && $detail->is_BB == "1" ){
                    $la_detail = $this->Usulan_model->ambil_la_detail($detail->id);
                    foreach ($la_detail as $key => $value):
                       echo "Sudah Loan Agreement pada ". $value->tgl_LA;
                        
                    endforeach; 
                    //kalau udah DK
                }elseif ($detail->is_DK == "1" && $detail->is_GB == "1"  && $detail->is_BB == "1" && $detail->is_LA == "0") {
                  $dk_detail = $this->Usulan_model->ambil_dk_detail($detail->id);

                      foreach ($dk_detail as $key => $value):
                         echo "Sudah Daftar Kegiatan pada ". $value->tgl_DK;
                      endforeach; 
                    //kalau udah GB
                }elseif ($detail->is_DK == "0" && $detail->is_GB == "1"  && $detail->is_BB == "1" && $detail->is_LA == "0") {
                  $gb_detail = $this->Usulan_model->ambil_gb_detail($detail->id);

                      foreach ($gb_detail as $key => $value):
                         echo "Sudah Masuk "; 
                       if($value->id_greenbook != ''){
                         echo $this->Greenbook_model->kode_greenbook($value->id_greenbook)->nama;
                        }else{
                          echo "";
                        }

                        echo ",";
                        
                      endforeach; 
                    //kalau udah BB
                }elseif ($detail->is_DK == "0" && $detail->is_GB == "0"  && $detail->is_BB == "1" && $detail->is_LA == "0") {
                  $bb_detail = $this->Usulan_model->ambil_bb_detail($detail->id);

                      foreach ($bb_detail as $key => $value):
                         echo "Sudah Masuk "; 
                       if($value->id_bluebook != ''){
                         echo $this->Bluebook_model->kode_bluebook($value->id_bluebook)->nama; 
                        }else{
                          echo "";
                        }                        
                      endforeach; 
                  }else{
                    echo "Belum Tercantum di Bluebook";
                  }
               ?></td>
              </tr>
               <tr class="read">
                <td class="mail-ontact text-right">Judul EN</td>
                <td class="mail-subject"><?php echo $detail->judul_proyek_eng; ?></td>
              </tr>
            <!--   <tr class="read">
                <td class="mail-ontact text-right">Judul ID</td>
                <td class="mail-subject"><?php echo $detail->judul_proyek_id; ?></td>
              </tr> -->
              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pengusul</td>
                <td class="mail-subject"><?php echo $this->Usulan_model->ambil_instansi_untuk_usulan($detail->id_instansi)->nama_instansi; ?></td>
              </tr>


              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pelaksana</td>
                <td class="mail-subject"><?php echo nl2br($detail->instansi_pelaksana); ?> </td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Program</td>
                <td class="mail-subject"><?php echo $this->Usulan_model->ambil_program_proyek($detail->id_program)->nama_program; ?></td>
              </tr>
             
             <!--  <tr class="read">
                <td class="mail-ontact text-right">Kategori</td>
                <td class="mail-subject"><?php 
                if ($detail->infra == '1') {
                 echo "INFRASTRUKTUR";
                }elseif ($detail->infra == '2') {
                 echo "NON INFRASTRUKTUR";
                  # code...
                }
                 ?></td>
              </tr> -->

              <tr class="read">
                <td class="mail-ontact text-right">Ruang Lingkup ENG</td>
                <td class="mail-subject"><?php echo  nl2br($detail->ruang_lingkup_eng); ?></pre></td>
              </tr>
              <!-- <tr class="read">
                <td class="mail-ontact text-right">Ruang Lingkup ID</td>
                <td class="mail-subject"><?php echo  nl2br($detail->ruang_lingkup_id); ?></td>
              </tr>
              -->

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
                <td class="mail-ontact text-right">Output</td>
                <td class="mail-subject"><?php echo nl2br($detail->output); ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Outcome</td>
                <td class="mail-subject"><?php echo nl2br($detail->outcome); ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Durasi</td>
                <td class="mail-subject"><?php echo $detail->durasi. " bulan"; ?></td>
              </tr>
              
              <tr class="read">
                <td class="mail-ontact text-right">Perkiraan Tahun Pertama Pelaksanaans</td>
                <td class="mail-subject"><?php echo $detail->proyeksi_tahun_pertama_penarikan; ?></td>
              </tr>


              <tr class="read">
                <td class="mail-ontact text-right">Nilai Pinjaman</td>
                <td class="mail-subject"><?php echo "USD " . number_format($detail->dana_usulan); ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Nilai Hibah</td>
                <td class="mail-subject"><?php echo "USD " . number_format($detail->dana_hibah); ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right"> Dana Pendamping</td>
                <td class="mail-subject"><?php echo "USD " . number_format($detail->dana_pendamping); ?></td>
              </tr>

               <tr class="read">
                <td class="mail-ontact text-right"> Total </td>
                <td class="mail-subject"><?php echo "USD " . number_format($detail->dana_pendamping + $detail->dana_hibah + $detail->dana_usulan); ?></td>
              </tr>
           <!--    <tr class="read">
                <td class="mail-ontact text-right">Sektor</td>
                <td class="mail-subject"><?php echo $this->Usulan_model->ambil_nama_sektor($detail->id_sektor)->nama; ?></td>
              </tr>
              
             
            
            

              <tr class="read">
                <td class="mail-ontact text-right">Status Umum</td>
                <td class="mail-subject"><?php echo $this->Usulan_model->ambil_nama_statusumum($detail->id_status)->nama; ?></td>
              </tr>
              
              -->
              </tbody>
              </table>
              </div>
             
            
     <?php if($detail->is_BB == "1"){ ?>

      <div class="ibox-content">
        <div class="ibox float-e-margins">
          <div class="ibox-title">
            <h5>II. Informasi Pada Dokumen Bluebook</h5>
         
            
          </div>
       
          <table class="table table-hover table-mail">
              <?php $bb_detail = $this->Usulan_model->ambil_bb_detail($detail->id);

                      foreach ($bb_detail as $key => $value):
                        # code...
                      
                     ?>
            <tbody>
              <tr class="read">
                <td class="mail-ontact text-right">Bluebook</td>
                <td class="mail-subject">  <?php  echo $this->Bluebook_model->kode_bluebook($value->id_bluebook)->nama; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Judul Proyek</td>
                <td class="mail-subject">  <?php  echo $value->judul_proyek_eng; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Program</td>
                <td class="mail-subject"> <?php echo $this->Usulan_model->ambil_program_proyek($value->id_program)->nama_program; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pengusul</td>
                <td class="mail-subject"> <?php echo $this->Usulan_model->ambil_instansi_untuk_usulan($value->id_instansi)->nama_instansi; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pelaksana</td>
                <td class="mail-subject">  <?php  echo $value->instansi_pelaksana; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Durasi</td>
                <td class="mail-subject"><?php echo $value->durasi. " bulan"; ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Lokasi</td>
              
                <td class="mail-subject"><?php $a =  explode(",", $value->lokasi); 
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
                <td class="mail-subject"><?php echo  nl2br($value->ruang_lingkup_eng); ?></pre></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Output</td>
                <td class="mail-subject"><?php echo nl2br($value->output); ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Nilai Pinjaman</td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->nilai_pinjaman); ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Nilai Hibah</td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->nilai_hibah); ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right"> Dana Pendamping</td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->dana_pendamping); ?></td>
              </tr>

               <tr class="read">
                <td class="mail-ontact text-right"> Total </td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->dana_pendamping + $value->nilai_hibah + $value->nilai_pinjaman); ?></td>
              </tr>


               <?php endforeach; ?>
               
               </tbody>
               </table>
               <?php }; ?>
              </div>
              </div>

    <?php if($detail->is_GB == "1"){ ?>

      <div class="ibox-content">
        <div class="ibox float-e-margins">
          <div class="ibox-title">
            <h5>III. Informasi Pada Dokumen Greenbook</h5>
         
            
          </div>
                <?php $gb_detail = $this->Usulan_model->ambil_gb_detail($detail->id);

                      foreach ($gb_detail as $key => $value):
                        # code...
                      
          ?>
        <h4> Detail   <?php  if($value->id_greenbook != ''){
                         echo $this->Greenbook_model->kode_greenbook($value->id_greenbook)->nama;
                        }else{
                          echo "";
                        } ?></h4>
          <table class="table table-hover table-mail">
               
            <tbody>
              <tr class="read">
                <td class="mail-ontact text-right">Judul Proyek</td>
                <td class="mail-subject">  <?php  echo $value->judul_proyek_eng; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Greenbook</td>
                <td class="mail-subject">  <?php  if($value->id_greenbook != ''){
                         echo $this->Greenbook_model->kode_greenbook($value->id_greenbook)->nama;
                        }else{
                          echo "";
                        } ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Program</td>
                <td class="mail-subject"> <?php echo $this->Usulan_model->ambil_program_proyek($value->id_program)->nama_program; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pengusul</td>
                <td class="mail-subject"> <?php echo $this->Usulan_model->ambil_instansi_untuk_usulan($value->id_instansi)->nama_instansi; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pelaksana</td>
                <td class="mail-subject">  <?php  echo $value->instansi_pelaksana; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Durasi</td>
                <td class="mail-subject"><?php echo $value->durasi. " bulan"; ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Lokasi</td>
              
                <td class="mail-subject"><?php $a =  explode(",", $value->lokasi); 
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
                <td class="mail-subject"><?php echo  nl2br($value->ruang_lingkup_eng); ?></pre></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Output</td>
                <td class="mail-subject"><?php echo nl2br($value->output); ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Nilai Pinjaman</td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->nilai_pinjaman); ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Nilai Hibah</td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->nilai_hibah); ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right"> Dana Pendamping</td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->dana_pendamping); ?></td>
              </tr>

               <tr class="read">
                <td class="mail-ontact text-right"> Total </td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->dana_pendamping + $value->nilai_hibah + $value->nilai_pinjaman); ?></td>
              </tr>


              
               
               </tbody>
               </table>
               <?php endforeach; ?>
               </div>
               </div> 

               <?php }; ?>

    <?php if($detail->is_DK == "1"){ ?>

      <div class="ibox-content">
        <div class="ibox float-e-margins">
          <div class="ibox-title">
            <h5>IV. Informasi Pada Dokumen Daftar Kegiatan</h5>
         
            
          </div>
                <?php $dk_detail = $this->Usulan_model->ambil_dk_detail($detail->id);

                      foreach ($dk_detail as $key => $value):
                        # code...
                      
          ?>
        
          <table class="table table-hover table-mail">
               
            <tbody>
              <tr class="read">
                <td class="mail-ontact text-right">Judul Proyek</td>
                <td class="mail-subject">  <?php  echo $value->judul_proyek_eng; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Tanggal DK</td>
                <td class="mail-subject"> <?php  echo $value->tgl_DK; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Greenbook</td>
                <td class="mail-subject">  <?php  if($value->id_greenbook != ''){
                         echo $this->Greenbook_model->kode_greenbook($value->id_greenbook)->nama;
                        }else{
                          echo "";
                } ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Program</td>
                <td class="mail-subject"> <?php echo $this->Usulan_model->ambil_program_proyek($value->id_program)->nama_program; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pengusul</td>
                <td class="mail-subject"> <?php echo $this->Usulan_model->ambil_instansi_untuk_usulan($value->id_instansi)->nama_instansi; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pelaksana</td>
                <td class="mail-subject">  <?php  echo $value->instansi_pelaksana; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Durasi</td>
                <td class="mail-subject"><?php echo $value->durasi. " bulan"; ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Lokasi</td>
              
                <td class="mail-subject"><?php $a =  explode(",", $value->lokasi); 
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
                <td class="mail-subject"><?php echo  nl2br($value->ruang_lingkup_eng); ?></pre></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Output</td>
                <td class="mail-subject"><?php echo nl2br($value->output); ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Nilai Pinjaman</td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->nilai_pinjaman); ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Nilai Hibah</td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->nilai_hibah); ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right"> Dana Pendamping</td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->dana_pendamping); ?></td>
              </tr>

               <tr class="read">
                <td class="mail-ontact text-right"> Total </td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->dana_pendamping + $value->nilai_hibah + $value->nilai_pinjaman); ?></td>
              </tr>


              
               
               </tbody>
               </table>
               <?php endforeach; ?>
               </div>
               </div> 

               <?php }; ?>

   <?php if($detail->is_LA == "1"){ ?>

      <div class="ibox-content">
        <div class="ibox float-e-margins">
          <div class="ibox-title">
            <h5>V. Informasi Pada Dokumen Loan Agreement</h5>
         
            
          </div>
                <?php $la_detail = $this->Usulan_model->ambil_la_detail($detail->id);

                      foreach ($la_detail as $key => $value):
                        # code...
                      
          ?>
        
          <table class="table table-hover table-mail">
               
            <tbody>
              <tr class="read">
                <td class="mail-ontact text-right">Judul Proyek</td>
                <td class="mail-subject">  <?php  echo $value->judul_proyek_eng; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Tanggal DK</td>
                <td class="mail-subject"> <?php  echo $value->tgl_LA; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Greenbook</td>
                <td class="mail-subject">  <?php  if($value->id_greenbook != ''){
                         echo $this->Greenbook_model->kode_greenbook($value->id_greenbook)->nama;
                        }else{
                          echo "";
                } ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Program</td>
                <td class="mail-subject"> <?php echo $this->Usulan_model->ambil_program_proyek($value->id_program)->nama_program; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pengusul</td>
                <td class="mail-subject"> <?php echo $this->Usulan_model->ambil_instansi_untuk_usulan($value->id_instansi)->nama_instansi; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Instansi Pelaksana</td>
                <td class="mail-subject">  <?php  echo $value->instansi_pelaksana; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Durasi</td>
                <td class="mail-subject"><?php echo $value->durasi. " bulan"; ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Lokasi</td>
              
                <td class="mail-subject"><?php $a =  explode(",", $value->lokasi); 
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
                <td class="mail-subject"><?php echo  nl2br($value->ruang_lingkup_eng); ?></pre></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Output</td>
                <td class="mail-subject"><?php echo nl2br($value->output); ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Nilai Pinjaman</td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->nilai_pinjaman); ?></td>
              </tr>

              <tr class="read">
                <td class="mail-ontact text-right">Nilai Hibah</td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->nilai_hibah); ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right"> Dana Pendamping</td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->dana_pendamping); ?></td>
              </tr>

               <tr class="read">
                <td class="mail-ontact text-right"> Total </td>
                <td class="mail-subject"><?php echo "USD " . number_format($value->dana_pendamping + $value->nilai_hibah + $value->nilai_pinjaman); ?></td>
              </tr>


              
               
               </tbody>
               </table>
               <?php endforeach; ?>
               </div>
               </div> 

               <?php }; ?>
       
       
       
       
        
         <!--  <?php if($detail->is_BB == "1"){ ?>
                <div class="ibox float-e-margins">
                  <div class="ibox-title">
                    <h5>I. Informasi Pada Dokumen Usulan</h5>
                 
                    
                  </div>
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
              </div>
              <?php }; ?>
        -->

              <?php if($detail->is_GB == "1"){ ?>

                <tr class="read">
                <td class="mail-ontact text-right">Detail Greenbook</td>
                <td class="mail-subject">
                <?php $all_detail = $this->Usulan_model->all_banding($detail->id);

                      foreach ($all_detail as $key => $value):
                        # code...
                      
                     ?>

                  <table class="table table-bordered">
                   
                    <thead>

                      <tr>
                        <th style="width: 150px;" tabindex="0">
                          Bluebook
                        </th>

                        <th>
                            <?php 
                         if($value->id_greenbook != ''){
                         echo $this->Greenbook_model->kode_greenbook($value->id_greenbook)->nama;
                        }else{
                          echo "";
                        }
                          ?>
                        </th>

                        <th style="width: 300px;" tabindex="0">
                         Daftar Kegiatan
                        </th>

                         <th>
                        Loan Agreement
                        </th>
                      </tr>
                    </thead>

                     <tbody>

                  
                    <tr>
                    <td> 

                    <b> Judul Proyek </b>  <br>
                    <b> Kode Bluebook </b>  <br>
                    <b> Instansi Pelaksana </b> <br>
                    <b> Ruang Lingkup </b> <br>
                    <b> Nilai Pinjaman</b> <br>
                    <b> Lender</b><br> 

                    </td>
                    <td> <?php echo $value->gb_judul; ?> <br/> a </td>
                    <td> <?php echo $value->dk_judul; ?> </td>
                    <td> <?php echo $value->la_judul; ?> </td>
                    </tr>

                    <tr>
                    <td> Instansi Pelaksana </td>
                    <td> <?php echo nl2br($value->gb_pelaksana); ?> </td>
                    <td> <?php echo nl2br($value->dk_pelaksana); ?> </td>
                    <td> <?php echo nl2br($value->la_pelaksana); ?> </td>
                    
                    </tr>

                    <tr>
                    <td>Ruang Lingkup </td>
                    <td> <?php echo nl2br($value->gb_ruang_lingkup); ?> </td>
                    <td> <?php echo nl2br($value->dk_ruang_lingkup); ?> </td>
                    <td> <?php echo nl2br($value->la_ruang_lingkup); ?> </td>
                    
                    </tr>

                    <tr>
                    <td> Nilai </td>
                    <td>  <?php echo  number_format($value->gb_pinjaman); ?></td>
                    <td>  <?php echo  number_format($value->dk_pinjaman); ?></td>
                    <td>  <?php echo  number_format($value->la_pinjaman); ?></td>
                
                    </tr>

                    <tr>
                    <td> Lokasi </td>
                    <td> 
                      <?php 
                      if ($value->gb_lokasi != NULL || $value->gb_lokasi != "" ) {
                        $a =  explode(",", $value->gb_lokasi); 
                                         $banyak_lokasi = (count($a));

                                         $lokasi = array();

                                         for ($i=0; $i < $banyak_lokasi ; $i++) { 
                                           $lokasi[$i] = $this->Usulan_model->ambil_nama_lokasi($a[$i])->nama;
                                         }

                                         $lokasi_fix = implode(",", $lokasi);

                                         echo $lokasi_fix;
                      }else{
                        echo "";
                      }
                       

                         ?>
                      
                    </td>
                    <td>    <?php 
                      if ($value->dk_lokasi != NULL || $value->dk_lokasi != "") {
                        $a =  explode(",", $value->gb_lokasi); 
                                         $banyak_lokasi = (count($a));

                                         $lokasi = array();

                                         for ($i=0; $i < $banyak_lokasi ; $i++) { 
                                           $lokasi[$i] = $this->Usulan_model->ambil_nama_lokasi($a[$i])->nama;
                                         }

                                         $lokasi_fix = implode(",", $lokasi);

                                         echo $lokasi_fix;
                      }else{
                        echo "";
                      }
                       

                         ?></td>
                    <td>  <?php 
                      if ($value->la_lokasi != NULL || $value->la_lokasi != "" ) {
                        $a =  explode(",", $value->la_lokasi); 
                                         $banyak_lokasi = (count($a));

                                         $lokasi = array();

                                         for ($i=0; $i < $banyak_lokasi ; $i++) { 
                                           $lokasi[$i] = $this->Usulan_model->ambil_nama_lokasi($a[$i])->nama;
                                         }

                                         $lokasi_fix = implode(",", $lokasi);

                                         echo $lokasi_fix;
                      }else{
                        echo "";
                      }
                       

                         ?></td>
                
                    </tr>

                     <tr>
                    <td> Durasi </td>
                    <td>  <?php echo  number_format($value->gb_durasi); ?></td>
                    <td>  <?php echo  number_format($value->dk_durasi); ?></td>
                    <td>  <?php echo  number_format($value->la_durasi); ?></td>
                
                    </tr>

                    </tbody>

                    <?php endforeach; ?>

                  </table>
                </td>
              </tr>

              <?php }; ?>


            <!--   <?php if($detail->is_DK == "1"){ ?>
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
                    <?php $la_detail = $this->Usulan_model->ambil_la_detail($detail->id);

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
             
              -->
            </tbody>
          </table>
     


        <div class="modal-footer">          
          <button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
        </div>
      </div>
    </div>
    

