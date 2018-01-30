<div class="modal inmodal fade" id="modalCari" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="ibox">
                <div class="ibox-title">
                    <h5>Pencarian Kemiripan Proyek</h5>
                </div>
                <form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data">
                
                    <div class="ibox-content">
                        
                        <div class="form-group">
                        <label for="cari" class="col-sm-3 control-label">Keyword Judul</label>
                            <div class="col-sm-9">
                                <input type="text" name="cari" onkeyup="showResult(this.value)" size="50">
                                 <div id="livesearch"></div>
                        </div>
                        </div>

                        <div class="form-group">
                        <label for="cari_lokasi" class="col-sm-3 control-label">Keyword Lokasi</label>
                            <div class="col-sm-9">
                                <input type="text" name="cari_lokasi" onkeyup="showResult2(this.value)" size="50">
                                 <div id="livesearch_lokasi"></div>
                        </div>
                        </div>

                        <div class="form-group">
                        <label for="cari_ruanglingkup" class="col-sm-3 control-label">Ruang Lingkup</label>
                            <div class="col-sm-9">
                                <input type="text" name="cari_ruanglingkup" onkeyup="showResult3(this.value)" size="50">
                                 <div id="livesearch_ruanglingkup"></div>
                        </div>
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


function showResult(str) {

  if (str.length==0) { 
    document.getElementById("livesearch").innerHTML="";
    document.getElementById("livesearch").style.border="0px";
    return;
  }
  if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp=new XMLHttpRequest();
  } else {  // code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function() {
    if (this.readyState==4 && this.status==200) {
      document.getElementById("livesearch").innerHTML=this.responseText;
      document.getElementById("livesearch").style.border="1px solid #A5ACB2";
    }
  }

  var base_url = '<?php echo base_url(); ?>';
  xmlhttp.open("GET",base_url + "Usulan/mirip/"+str,true);
  xmlhttp.send();
}

function showResult2(str) {

  if (str.length==0) { 
    document.getElementById("livesearch_lokasi").innerHTML="";
    document.getElementById("livesearch_lokasi").style.border="0px";
    return;
  }
  if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp=new XMLHttpRequest();
  } else {  // code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function() {
    if (this.readyState==4 && this.status==200) {
      document.getElementById("livesearch_lokasi").innerHTML=this.responseText;
      document.getElementById("livesearch_lokasi").style.border="1px solid #A5ACB2";
    }
  }

  var base_url = '<?php echo base_url(); ?>';
  xmlhttp.open("GET",base_url + "Usulan/mirip/"+str,true);
  xmlhttp.send();
}

function showResult3(str) {

  if (str.length==0) { 
    document.getElementById("livesearch_ruanglingkup").innerHTML="";
    document.getElementById("livesearch_ruanglingkup").style.border="0px";
    return;
  }
  if (window.XMLHttpRequest) {
    // code for IE7+, Firefox, Chrome, Opera, Safari
    xmlhttp=new XMLHttpRequest();
  } else {  // code for IE6, IE5
    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
  xmlhttp.onreadystatechange=function() {
    if (this.readyState==4 && this.status==200) {
      document.getElementById("livesearch_ruanglingkup").innerHTML=this.responseText;
      document.getElementById("livesearch_ruanglingkup").style.border="1px solid #A5ACB2";
    }
  }

  var base_url = '<?php echo base_url(); ?>';
  xmlhttp.open("GET",base_url + "Usulan/mirip/"+str,true);
  xmlhttp.send();
}

    $(document).ready(function(){
    
        
      
        $('#htmlForm').submit(function(e) {
            e.preventDefault();

            var me          = $(this);
            
           // var id                          = $("#id").val();
            var id_program     = $("#id_program").val();
            var proyeksi_tahun_pertama_penarikan                    = $("#proyeksi_tahun_pertama_penarikan").val();
          
            var judul_proyek_id                    = $("#judul_proyek_id").val();
            var judul_proyek_eng                    = $("#judul_proyek_eng").val();
            var durasi                      = $("#durasi").val();
            var id_mata_uang                = $("#id_mata_uang").val();
            var dana_hibah                 = $("#dana_hibah").val();
            var dana_pendamping                    = $("#dana_pendamping").val();
            var dana_usulan                    = $("#dana_usulan").val();
            var id_program                    = $("#id_program").val();
            var id_instansi                    = $("#id_instansi").val();
            var id_eselon_1                    = $("#id_eselon_1").val();
            var ruang_lingkup_id                    = $("#ruang_lingkup_id").val();
            var ruang_lingkup_eng                    = $("#ruang_lingkup_eng").val();
            var outcome                    = $("#outcome").val();
            var output                    = $("#output").val();
           
            
            var form_data   = new FormData();
            
            //form_data.append('id', id);
           // form_data.append('id_instansi_eselon_satu', id_instansi_eselon_satu);
           // form_data.append('id_donor', id_donor);
            form_data.append('id_program', id_program);
            form_data.append('judul_proyek_eng', judul_proyek_eng);
            form_data.append('judul_proyek_id', judul_proyek_id);
            form_data.append('ruang_lingkup_eng', ruang_lingkup_eng);
            form_data.append('ruang_lingkup_id', ruang_lingkup_id);
            form_data.append('durasi', durasi);
            form_data.append('output', output);
            form_data.append('outcome', outcome);
            form_data.append('id_instansi', id_instansi);
            
           
            form_data.append('dana_hibah', dana_hibah);
            form_data.append('dana_usulan', dana_usulan);
            form_data.append('dana_pendamping', dana_pendamping);
            form_data.append('proyeksi_tahun_pertama_penarikan', proyeksi_tahun_pertama_penarikan);
            


            $.ajax({
                url: '<?php echo base_url(); ?>Usulan/tambah',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
                type: 'post',
                success: function(response){
                    if (response.success == true) {
                        fresh();
                        $('#modalTambah').modal('hide');
                        
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
