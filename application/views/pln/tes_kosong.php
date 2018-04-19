<div class="modal inmodal fade" id="modal_arsip" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-md">
    <div class="modal-content">            
        <div class="modal-header">
            

    <div class="modal-footer">
           <button type="submit" id="tbl_tambah" class="btn btn-primary">Simpan</button>
          <button type="button" id="tblTutup_tes" class="btn btn-white" data-dismiss="modal_arsip">Tutup</button>
        </div>
</div>
       


<div id="tmpModal7"></div>


       
<script>
    $(document).ready(function(){
 
        $(document).on('click', '#tmbh_arsip', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

             var id = $(this).attr("id"); 
           console.log("tes");
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
              type : 'post',
                url : "<?php echo base_url(); ?>Usulan/tambah_arsip_surat",
                data :  'id='+ id,
                success : function(response){
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                $("#tmpModal7").html(response);
                $('#modalTambah').modal('show');
              
                }
            });

          });

    $('#tblTutup_tes').click(function(){

       $('#modal_arsip').modal('hide');

       
      /*$.ajax({
        url: "<?php echo base_url(); ?>usulan/kronologis",
        beforeSend: function(){
        },
        success:function(response){
          $("#tabel_arsip").html(response);
        },
        dataType:"html",
        error: function(){
          alert('gagal noh!');
        }
        
      });*/
    });

         $(document).on('click', '.tmbh_dokumen', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

         //$('#modalKecil2').modal('show');
             var id = $(this).attr("id"); 
           console.log("tes");
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
              type : 'post',
                url : "<?php echo base_url(); ?>Usulan/tambah_dokumen",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                 $("#tmpModal7").html(response);
                $('#modalTambahDokumen').modal('show');
                console.log("sussskses");
                console.log(id);

                }
            });

          });

    });
    
    function segarkan_log(){
        $.get("<?php echo base_url(); ?>hibah/tampilkan_data_log_usulan/<?php echo $this->uri->segment(3); ?>", function(data) {
            $("#tabel").html(data);
        });
    }
</script>

