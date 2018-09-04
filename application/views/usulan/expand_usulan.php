



        <div class="ibox float-e-margins">
         
       
          <table class="table table-hover table-mail pull-right" id="tabel_detail" style="width: 1500px;">


                        <thead>
                          <tr>

                            <th style="width: 300px;" class="text-center" tabindex="0">
                              Bluebook
                            </th>

                            <th style="width: 300px;" class="text-center" tabindex="0">
                              Greenbook
                            </th>

                            <th style="width: 300px;" class="text-center" tabindex="0">
                              Daftar Kegiatan
                            </th>

                            <th style="width: 300px;" class="text-center" tabindex="0">
                              Loan Agreement
                            </th>

                           
                          </tr>
                        </thead>

                        <tbody>
                          <?php 
                            foreach($group_bb as $key => $value):

                           ?>

                          <tr>

                            <td>
                              <b><?php echo $value['nama_bb']; ?></b> </br>
                                </br><b>Nilai Pinjaman  </b>
                              <?php echo number_format($value['bb_pinjaman']); ?> </br>

                            </td>

                            <td>
                              
                              
                              <table>

                              <thead>
                                 <tr>
                                <td>
                                    <b>Greenbook</b>
                                </td>
                                <td>
                                    <b>Nilai Pinjaman</b>
                                </td>
                                <td>
                                   <b>Lender</b>
                                </td>
                              </tr>
                              </thead>
                             
                              <?php $gb = $this->Usulan_model->group_gb_by_bb($id, $value['id_bb']);


                              foreach ($gb as $key => $value1): ?>
                              <tbody>
                              <tr>
                                <td>
                                    <?php echo $value1['nama_gb']; ?>
                                </td>
                                <td>
                                    <?php echo number_format($value1['gb_pinjaman']); ?>
                                </td>
                                <td>
                                    <?php echo $value1['gb_lender']; ?>
                                </td>
                              </tr>
                              </tbody>
                              <?php endforeach; ?>
                              </table>
                            

                            




                            </td>
                          </tr>

                        <?php endforeach; ?>
                        </tbody>
             
              </table>
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
            

