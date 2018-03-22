
<div class="modal inmodal fade" id="modalDetail"  role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="ibox">
        <div class="ibox-title">
        <h5>Detail Usulan</h5>
        </div>


        <div id="loader1" class="loader1" style='visibility: hidden;'></div>
        <input type="hidden" name="id" id="id" class="form-control" value="<?php echo $a; ?>">
             <ul class="nav nav-tabs tabs-up" id="friend">
                      <!--  <li><a href="#" id="contacts_tab" data-toggle="tab" rel="tooltip"> Contacts </a></li>
                       <li><a href="#" class="media_node span" id="friends_list_tab" data-toggle="tab" data-url="#" rel="tooltip"> Friends list</a></li> -->
                       <li><a href="#awaiting_request" class="media_node span active" id="awaiting_request_tab" data-url="<?php echo base_url(); ?>usulan/detil_isi/<?php echo $a; ?>" data-toggle="tab" rel="tooltip">Detail Proyek</a></li>
                       <li><a href="#awaiting_request" class="media_node span" id="friends_list_tab" data-url="<?php echo base_url(); ?>usulan/kronologis" data-toggle="tab" rel="tooltip">Kronologis Proyek</a></li>
                 </ul>

                 <div class="tab-content">
                      <div class="tab-panel panel-default" id="contacts">
                          
                       </div>
                       <div class="tab-panel " id="friends_list">

                       </div>
                       <div class="tab-pane panel-default  urlbox span8 active" id="awaiting_request">
                     
                       </div>
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

    $('#friend a').click(function(e) {
          e.preventDefault();
            var id =  $("#id").val();
            var $this = $(this),
                loadurl = $this.data('url'),
                targ = $this.attr('href');
            console.log(id);

            $.get(loadurl, function(data) {
              //console.log(data)
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

