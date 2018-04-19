<table class="table table-hover" id="example"  width="100%"> 
	<thead>
		<tr>
			<!-- <th style="display:none;">Update date</th> -->
			<th class="text-center" style="width:500px;">Program</th>
			<th  class="text-center" style="width:200px;">Bluebook</th>
      <th class="text-center" style="width:200px;">Total Nilai</th>
			<th class="text-center" style="width:200px;">Total Kegiatan</th>
			
			<th style="width:3%;">Aksi <!-- <?php echo $this->session->userdata('id_user_level'); ?> --></th>
		</tr>
	</thead>
	<tbody>
		<?php
			foreach($data as $key => $value):
		?>
		<tr class="gradeX">
    <td><a class="detail" id="<?php echo $value['id'];  ?>" data-id="<?php echo $value['id'];  ?>" data-bb="<?php echo $value['id_bb'];  ?>" ><?php  echo $value['program']; ?></td>
    <td><?php  echo $value['bb']; ?></td>
    <td><?php  echo number_format($value['total_pinjaman']); ?></td>
    <td><?php  echo $value['total_kegiatan']; ?></td>
		
			<!-- <td><?php $c = $value['id'];
			 $b = $this->Usulan_model->ambil_instansi_untuk_usulan($value['id_instansi'])->nama_instansi;
			 echo $b; ?></td>
			<td><a class="detail" id="<?php echo $value['id'];  ?>" data-id="<?php echo $value['id'];  ?>" ><?php echo $value['judul_proyek_eng']; ?></td>
			
			<td><?php echo number_format($value['dana_usulan']); ?></a></td> -->
			<!-- <td><?php 
                        $adm = $this->Usulan_model->ambil_adm($value['id'])->is_lengkap;
                        $kasubdit_adm = $this->Usulan_model->ambil_adm($value['id'])->is_kasubdit;
                        $user_level = $this->session->userdata('id_user_level');


                        if ($adm == '1') {

                           if ($kasubdit_adm == '0') {
                             echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm, $user_level )'><i class=' btn fa fa-times-circle btn-warning'></i></a>";
                          }elseif ($kasubdit_adm == '2') {
                             echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm, $user_level )'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger"></i></a>';
                          }

                         
                        }elseif ($adm == '2') {

                         
                          if ($kasubdit_adm == '0') {
                            echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm, $user_level )'><i class='btn fa fa-check-square btn-warning'></i></a>";
                            
                          }elseif ($kasubdit_adm == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm, $user_level )'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm, $user_level )'><i class=' btn fa fa-times-circle btn-default'></i></a>";
                        }


                         ?></td>

			<td><?php 
                        $layak = $this->Usulan_model->ambil_layak($value['id'])->is_layak;
                        $kasubdit_layak = $this->Usulan_model->ambil_layak($value['id'])->is_kasubdit;

                         if ($layak == '1') {

                          if ($kasubdit_layak == '0') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c, $user_level, $kasubdit_layak )'><i class='btn fa fa-times-circle btn-warning'></i></a>";
                             //echo '<a ><i class="btn fa fa-times-circle btn-warning"></i></a>';
                          }elseif ($kasubdit_layak == '2') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c, $user_level, $kasubdit_layak )'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger"></i></a>';
                          }
                         
                        }elseif ($layak == '2') {

                          if ($kasubdit_layak == '0') {
                            echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c, $user_level, $kasubdit_layak )'><i class='btn fa fa-check-square btn-warning'></i></a>";
                             //echo '<a ><i class="btn fa fa-check-square btn-warning"></i></a>';
                          }elseif ($kasubdit_layak == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c, $user_level, $kasubdit_layak )'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c, $user_level, $kasubdit_layak )'><i class=' btn fa fa-times-circle btn-default'></i></a>";
                        }


                        ?></td>
			<td><?php 
                        $bb = $value['is_BB'];
                        $usul_BB = $this->Usulan_model->ambil_adm($value['id'])->is_BB;
                        $kasubdit_usul = $this->Usulan_model->ambil_adm($value['id'])->is_bb_kasubdit;



                        if ($usul_BB == '1') {

                          if ($kasubdit_usul == '0') {
                             
                             echo "<a   id='".$c."'  onclick='tambah_BB($usul_BB, $c, $kasubdit_usul, $user_level, $layak )'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }elseif ($kasubdit_usul == '1') {
                             echo "<a   id='".$c."'  onclick='tambah_BB($usul_BB, $c, $kasubdit_usul, $user_level, $layak  )'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger"></i></a>';
                          }
                         
                        }elseif ($usul_BB == '2') {

                          if ($kasubdit_usul == '0') {
                             echo "<a   id='".$c."'  onclick='tambah_BB($usul_BB, $c, $kasubdit_usul, $user_level, $layak )'><i class='btn fa fa-check-square btn-warning'></i></a>";
                             //echo '<a ><i class="btn fa fa-check-square btn-warning"></i></a>';
                          }elseif ($kasubdit_usul == '2') {
                             echo "<a   id='".$c."'  onclick='tambah_BB($usul_BB, $c, $kasubdit_usul, $user_level, $layak  )'><i class=' btn fa fa-check-square btn-primary'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<div class='btn-group'>
                            <button type='button'  class='btn btn-xs  btn-danger' onclick='tambah_BB($usul_BB, $c, $kasubdit_usul, $user_level, $layak  )' ><i class='fa fa-plus'></i> Tambah ke BB</button>
                          </div>";
                         /* echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-times-circle btn-default'></i></a>";*/
                        }


                         ?></td>
						<td><?php 
                        $gb = $this->Usulan_model->ambil_pln($value['id'])->is_GB;

                       if ($gb == '1') {
                          echo '<a class="usul_btn" id="'.$c.'"><i class="btn fa fa-check-square btn-primary"></i></a>';
                        }else{
                        echo "<a><i class='btn fa fa-times-circle btn-danger'></i></a>";
                        }

                         ?>
                           
                         </td>

            

                         <td><?php 
                        $dk = $this->Usulan_model->ambil_pln($value['id'])->is_DK;

                       if ($dk == '1') {
                          echo '<a class="usul_btn" id="'.$c.'"><i class="btn fa fa-check-square btn-primary"></i></a>';
                        }else{
                          echo "
                            <a><i class='btn fa fa-times-circle btn-danger'></i></a>
                        ";
                        }

                         ?>

                         <td><?php 
                        $la = $this->Usulan_model->ambil_pln($value['id'])->is_LA;

                       if ($la == '1') {
                          echo '<a class="usul_btn" id="'.$c.'"><i class="btn fa fa-check-square btn-primary"></i></a>';
                        }else{
                          echo "
                            <a><i class='btn fa fa-times-circle btn-danger'></i></a>
                        ";
                        }

                         ?>
				<div class="feed-element">
					<!-- <img alt="image" class="img-circle" src="<?php //echo base_url(); ?>assets/uploads/users/<?php //echo $row->foto; ?>">-->
				</div>
			</td> 
			<td class="text-center">
				<!-- <?php if($this->session->userdata('id_user_level') == '3' || $this->session->userdata('id_user_level') == '1') { ?>
					<a class="btn btn-white btn-xs" type="button" href="#" onclick="tampilkan_form_edit('hibah/tampilkan_drkh_edit/<?php echo $row->id; ?>')"><i class="fa fa-pencil"></i> Edit</a>
				<?php }else{ 
						echo "<i class='fa fa-lock'></i>"; } 
				?> -->

				<div class="input-group-btn">
                           <button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button" >Aksi <span class="caret"></span></button>
                           
                           <ul class="dropdown-menu pull-right">
                                                  
                                                   
                                                   <li><a  data-toggle="" data-target="modal" class="edit" id="<?php echo $value['id']; ?>" >Edit</a></li>
                                                    <li><a  class="del-proyek" id="<?php echo $value['id']; ?>">Hapus</a></li>
                                                   
                                                </ul>
                            </div>
			</td>
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>


<script>

	

  $(document).on('click', '.edit', function(){  
           
        
             var id = $(this).attr("id"); 
           console.log(id);
         
          $.ajax({
               
                url : "<?php echo base_url(); ?>Program/edit",
                data :  'id='+ id,
                 type : 'post',
                success : function(response){
                

                  $("#tmpModal").html(response);
                $('#modalEditUsulan').modal('show');
                console.log("hahaha");
                console.log(id);
             
                },
                dataType:"html"
                });
            });

	


	$(document).on('click', '.catatan', function(){  
           
         
             var id = $(this).attr("id"); 
          
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/catatan",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal
                console.log(id);
                  $("#tmpModal").html(response);
                $('#modal_cat').modal('show');
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
            });
    });
	

   

   

     $(document).on('click', '.del-proyek', function(){  
           
          
          //$('#myModalDetail').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/hapus",
                data :  'id='+ id,
                success : function(response){
                
                  $("#tmpModal").html(response);
                $('#modalHapus').modal('show');
              
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
            });
          });



	$(document).on('click', '.detail', function(){  
           
          
          //$('#myModalDetail').modal('show');
             var id = $(this).attr("id"); 
             var id_bb = $(this).attr("data-bb"); 
           console.log(id);
           console.log(id_bb);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Program/detil",
                data :  'id='+ id + '&id_bb=' +id_bb,
                success : function(response){
                
                  $("#tmpModal").html(response);
                $('#modalDetail').modal('show');
          
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
            });
          });
	
	$(document).ready(function(){
		$('#example').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});
</script>