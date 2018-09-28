



         
        <div style="padding-left: 30px;">
          <table class="table table-hover table-mail sortable " id="tabel_detail" style="width: 500px;">


                        <thead>
                          <tr>

                            <th style="width: 300px;" class="text-center" tabindex="0">
                              Judul Proyek
                            </th>

                            <th style="width: 300px;" class="text-center" tabindex="0">
                              Nilai Pinjaman
                            </th>


                           
                          </tr>
                        </thead>

                        <tbody>
                          <?php 
                            foreach($detail as $key => $value):

                           ?>

                          <tr>

                            
                            <td><?php echo $value['judul']; ?></td>
                            <td class="text-right"><?php echo number_format($value['pinjaman']); ?></td>

                         
                          </tr>

                        <?php endforeach; ?>
                        </tbody>
             
              </table>
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
            

