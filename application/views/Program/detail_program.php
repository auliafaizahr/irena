
<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="ibox">
        <div class="ibox-title">
          <h5>Detail Program</h5>
        </div>
        <div class="ibox-content">
          <table class="table table-hover table-mail">
            <tbody>

             <tr class="read">
              <td class="mail-ontact text-right">Program Title</td>
              <td class="mail-subject"><?php echo $detail->nama_program; ?></td>
            </tr>

            <tr class="read">
              <td class="mail-ontact text-right">Bluebook</td>
              <td class="mail-subject"><?php echo $isi->bb; ?></td>
            </tr>


            <tr class="read">
              <td class="mail-ontact text-right">Executing Agency</td>
              <td class="mail-subject"><?php echo $isi->instansi; ?></td>
            </tr>

            <tr class="read">
              <td class="mail-ontact text-right">Scope of Work</td>
              <td class="mail-subject"><?php echo $detail->ruang_lingkup_eng; ?></td>
            </tr>
            <tr class="read">
              <td class="mail-ontact text-right">Outcomes</td>
              <td class="mail-subject"><?php echo $detail->outcome; ?></td>
            </tr>

            <tr class="read">
                <td class="mail-ontact text-right">Indications of Financing Need</td>
                <td class="mail-subject">
                    
                    <table class="table table-bordered">
                      <tr>
                        <td>Loan</td>
                        <td>USD <?php echo number_format($isi->total_pinjaman); ?></td>
                      </tr>
                      <tr>
                        <td>Grant</td>
                        <td>USD <?php echo number_format($isi->total_hibah); ?></td>
                      </tr>
                      <tr>
                        <td>Counterpart Funds</td>
                        <td>USD <?php echo number_format($isi->dana_pendamping); ?></td>
                      </tr>
                      <tr>
                        <td>Total</td>
                        <td>USD <?php echo number_format($isi->dana_pendamping + $isi->total_hibah + $isi->total_pinjaman); ?></td>
                      </tr>
                    </table>


                </td>
              </tr>
              </tbody>
              </table>

              <h4>Daftar Kegiatan   <?php echo $detail->nama_program; ?> </h4>
              <table class="table table-bordered">
              
              
            
                     <thead>
                      <tr>
                        <th tabindex="0" >Judul Proyek</th>
                        <th tabindex="0">Nilai Pinjaman</th>
                        
                      </tr>
                     </thead>

                     <tbody>

                     <?php foreach ($proyek as $key => $value): ?>

                      <tr>
                        <td>
                         <?php echo $value['judul_proyek']; ?>
                        </td>
                        <td>
                        <?php  echo number_format($value['pinjaman']); ?>
                        </td>
                      </tr>
                       <?php endforeach; ?>
                     </tbody>
                      
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
   
    
    $("#select_tahun").select2({
      placeholder: "Pilih Tahun Usulan",
      width: "100%"
    });

    $('#friends a').click(function(e) {
      e.preventDefault();
        var $this = $(this),
            loadurl = $this.data('url'),
            targ = $this.attr('href');
            id = $this.attr('id');

        $.get(loadurl, function(data) {
          console.log(data)
            $(targ).html(data);
        });

        $this.tab("show");
        return false;
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

