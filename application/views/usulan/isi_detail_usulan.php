
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
       
          <table class="table table-hover table-mail" id="tabel_detail">
            <tbody>
              <tr class="read">
                <td class="mail-ontact text-right">Status Usulan Proyek</td>
                <td class="mail-subject"> 
                <?php 
                //kalau udah LA
                if($detail->is_LA == "1" && $detail->is_DK == "1" && $detail->is_GB == "1"  && $detail->is_BB == "1" ){
                    $la_detail = $this->Usulan_model->ambil_la_detail($detail->id);
                    foreach ($la_detail as $key => $value):
                       echo "Sudah Loan Agreement pada ".  date("d M Y ", strtotime($value->tgl_LA));
                        
                    endforeach; 
                    //kalau udah DK
                }elseif ($detail->is_DK == "1" && $detail->is_GB == "1"  && $detail->is_BB == "1" && $detail->is_LA == "0") {
                  $dk_detail = $this->Usulan_model->ambil_dk_detail($detail->id);

                      foreach ($dk_detail as $key => $value):
                         echo "Sudah Daftar Kegiatan pada ". date("d M  Y ", strtotime($value->tgl_DK));
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
                <td class="mail-subject"><?php echo $detail->judul_proyek_eng; ?> 
               <!--  <?php if ($detail->status_usulan == '1') {
                 echo "<button type='button' data-isi='".$detail->id."'  id='detail_riwayat' class='btn-sm' ><i class='fa fa-plus' ></i> Lihat Detail</a></button>";

                 echo "<div id='detail_riwayat_div'>  </div>";
                } ?>  --></td>
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
                <td class="mail-subject"> <?php  echo date("d M Y ", strtotime($value->tgl_DK)); ?></td>
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
                <td class="mail-subject"> <?php  echo date("d M Y", strtotime($value->tgl_LA)); ?></td>
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

       
       
            <?php if ($detail->status_usulan == '1') { 

                    $usulan_hub = $this->Usulan_model->detail_proyek_2($detail->id);

                    foreach ($usulan_hub as $key => $value):
                    

                     ?>
              <div class="ibox-content">
                <tr class="read">
                <td class="mail-ontact text-right">Detail Proyek Terkait</td>
                <td class="mail-subject">
               

                  <table class="table table-bordered">
                   
                    <thead>

                      <tr>
                        <th style="width: 400px;" tabindex="0">
                          Bluebook
                        </th>

                       
                      </tr>
                    </thead>

                     <tbody>

                 
                      
                   
                    <tr>
                     
                    <td> 

                    <b> Judul Proyek </b>  <br>
                    <?php echo $value['judul']; ?> <br> <br>
                    <b> Kode Bluebook </b>  <br>
                     <?php echo $value['bb']; ?> <br> <br>
                    <b> Instansi Pengusul </b> <br>
                     <?php echo $value['instansi_pengusul']; ?> <br> <br>

                    <b> Instansi Pelaksana </b> <br> 
                     <?php echo nl2br($value['instansi_pelaksana']); ?> <br> <br>

                    <b> Ruang Lingkup </b> <br>
                     <?php echo nl2br($value['ruang_lingkup_eng']); ?> <br> <br>

                    <b> Nilai Pinjaman</b> <br>
                     <?php echo number_format($value['pinjaman']); ?> <br> <br>

                  

                    </td>


                    <?php endforeach;  ?>

                 
                  
                    </tr>
                   

                   

                    </tbody>

                  

                  </table>
                </td>

              </tr>
              </div>
              <?php } ?>

              <div class="ibox-content">
                <tr class="read">
                <td class="mail-ontact text-right">Progress Proyek</td>
                <td class="mail-subject">
               

                 
                      
                   
                   

                  <table class="table table-bordered">
                   
                    <thead>

                      <tr>
                        <th style="width: 150px;" tabindex="0">
                          Bluebook
                        </th>

                        <th>
                           Greenbook
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

                   <?php 

                      $all_detail = $this->Usulan_model->all_banding($detail->id);
                      $banding_bb = $this->Usulan_model->banding_ambil_bb_saja($detail->id);

                      foreach ($banding_bb as $key => $value2):
                      foreach ($all_detail as $key => $value):
                     
                        # code...
                      
                     ?>
                   <tr>
                    <td> <b>  Bluebook  </b> <br> 
                   <?php echo $value2['nama_bb']; ?> <br/> </td>
                   <td> <b>  Greenbook  </b> <br> 
                   <?php echo $value['nama_gb']; ?> <br/> </td>
                   <td> <b>  Tanggal DK </b> <br> 
                   <?php 
                   if ($value['tgl_DK'] != NULL ) {
                     # code...
                    echo date("d M Y ", strtotime($value['tgl_DK']));
                   }else{
                    echo "-";
                    }  ?> </td>
                   <td> <b>  Tanggal LA </b> <br> 
                     <?php if ($value['tgl_LA'] != NULL ) {
                     # code...
                    echo date("d M Y ", strtotime($value['tgl_LA']));
                   }else{
                    echo "-";
                    }   ?> </td>
                   </tr>


                    <tr>
                     <td> <b>  Judul Kegiatan </b> <br> 
                    <?php echo $value2['bb_judul']; ?> <br/> </td>
                    <td> <b>  Judul Kegiatan </b> <br> 
                    <?php echo $value['gb_judul']; ?> <br/> </td>
                    <td> <b>  Judul Kegiatan </b> <br> 
                    <?php echo $value['dk_judul']; ?> </td>
                    <td> <b>  Judul Kegiatan </b> <br> 
                      <?php echo $value['la_judul']; ?> </td>
                    </tr>

                    <tr>
                     <td>  <b>  Instansi Pelaksana </b> <br> 
                    <?php echo nl2br($value2['bb_pelaksana']); ?> <br> </td>
                    <td>  <b>  Instansi Pelaksana </b> <br> 
                    <?php echo nl2br($value['gb_pelaksana']); ?> <br> </td>
                    <td> <b>  Instansi Pelaksana </b> <br> 
                    <?php echo nl2br($value['dk_pelaksana']); ?> <br>  </td>
                    <td> <b>  Instansi Pelaksana </b> <br>
                    <?php echo nl2br($value['la_pelaksana']); ?> </td>
                    
                    </tr>

                    <tr>
                    <td> <b>  Ruang Lingkup </b> <br> 
                     <?php echo nl2br($value2['bb_ruang_lingkup']); ?> </td>
                    <td> <b>  Ruang Lingkup </b> <br> 
                     <?php echo nl2br($value['gb_ruang_lingkup']); ?> </td>
                    <td> <b>  Ruang Lingkup </b> <br>
                    <?php echo nl2br($value['dk_ruang_lingkup']); ?> </td>
                    <td> <b>  Ruang Lingkup </b> <br>
                     <?php echo nl2br($value['la_ruang_lingkup']); ?> </td>
                    
                    </tr>

                    <tr>
                     <td>  <b> Nilai Pinjaman</b> <br>   
                    <?php echo  number_format($value2['bb_pinjaman']); ?></td>
                    <td>  <b> Nilai Pinjaman</b> <br>   
                    <?php echo  number_format($value['gb_pinjaman']); ?></td>
                    <td> <b> Nilai Pinjaman</b> <br>   
                     <?php echo  number_format($value['dk_pinjaman']); ?></td>
                    <td> <b> Nilai Pinjaman</b> <br>   
                     <?php echo  number_format($value['la_pinjaman']); ?></td>
                
                    </tr>

                    <tr>
                    <td>  <b> Lokasi </b> <br> 
                      <?php 
                      if ($value2['bb_lokasi'] != NULL || $value2['bb_lokasi'] != "" ) {
                        $a =  explode(",", $value2['bb_lokasi']); 
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
                    <td>  <b> Lokasi </b> <br> 
                      <?php 
                      if ($value['gb_lokasi'] != NULL || $value['gb_lokasi'] != "" ) {
                        $a =  explode(",", $value['gb_lokasi']); 
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
                    <td> <b> Lokasi </b> <br>    <?php 
                      if ($value['dk_lokasi'] != NULL || $value['dk_lokasi'] != "") {
                        $a =  explode(",", $value['dk_lokasi']); 
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
                    <td> <b> Lokasi </b> <br>   <?php 
                      if ($value['la_lokasi'] != NULL || $value['la_lokasi'] != "" ) {
                        $a =  explode(",", $value['la_lokasi']); 
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
                    <td> <b> Durasi </b> <br> 
                     <?php echo  number_format($value2['bb_durasi']); ?> bulan </td>
                    <td> <b> Durasi </b> <br> 
                     <?php echo  number_format($value['gb_durasi']); ?> bulan </td>
                    <td>  <b> Durasi </b> <br> 
                      <?php echo  number_format($value['dk_durasi']); ?> bulan </td>
                    <td>  <b> Durasi </b> <br> 
                     <?php echo  number_format($value['la_durasi']); ?> bulan</td>
                
                    </tr>
                    <tr>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                     </tr>

                    </tbody>

                    <?php endforeach; ?>
                    <?php endforeach; ?>

                    </tbody>

                  

                  </table>
                </td>

              </tr>
              </div>


              


        <div class="modal-footer">          
          <button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
        </div>
      </div>
    </div>
      </div>
               </div>

        <script type="text/javascript">

           /* function tampil_riwayat(){
                var id = $(this).attr("data-isi"); 
                  $.get("<?php echo base_url(); ?>Usulan/riwayat_usulan/"+id, function(data) {
                    $("#detail_riwayat_div").html(data);
                  });
            }
*/
          $(document).on('click', '#detail_riwayat', function(){  
           
         /* $('#myModalDetail').modal('show');
           });*/

        
            var id = $(this).attr("data-isi");
           console.log(id);

           $.ajax({
            url: "<?php echo base_url(); ?>usulan/riwayat_usulan/"+id,
            
            success:function(response){

              $("#detail_riwayat_div").html(response);
            
            },
            dataType:"html"});
           return false;
          });

        </script>
            

