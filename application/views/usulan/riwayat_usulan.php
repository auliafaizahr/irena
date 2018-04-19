 <table class="table table-hover table-mail">
              <?php 

                      foreach ($riwayat as $key => $value):
                        # code...
                      
                     ?>
            <tbody>
              <tr class="read">
                <td class="mail-ontact text-right">Bluebook</td>
                <td class="mail-subject">  <?php  echo $value['bb']; ?></td>
              </tr>
              <tr class="read">
                <td class="mail-ontact text-right">Judul Proyek</td>
                <td class="mail-subject"> </td>
              </tr>
            </tbody>
          <?php endforeach;  ?>

</table>