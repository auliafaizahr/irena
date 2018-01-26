<table class="table table-hover" id="example"  width="100%"> 
	<thead>
		<tr>
			<!-- <th style="display:none;">Update date</th> -->
			<th>Instansi Pengusul</th>
			<th class="text-center" style="width:300px;">Judul Proyek</th>
			<th class="text-center">Program</th>
			<th>Pinjaman</th>
			<th style="width:20px;">Administrasi</th>
			<th style="width:20px;">Kelayakan</th>
			<th style="width:20px;">BB</th>
			<th style="width:20px;">GB</th>
			<th style="width:20px;">DK</th>
			<th style="width:20px;">LA</th>
			<th style="width:3%;">Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php
			foreach($data as $key => $value):
		?>
		<tr class="gradeX">
			<!-- td style="display:none;"><?php echo $row->update_date; ?></td> -->
			<td><?php $c = $value['id'];
			 $b = $this->Usulan_model->ambil_instansi_untuk_usulan($value['id_instansi'])->nama_instansi;
			 echo $b; ?></td>
			<td><a class="detail" id="<?php echo $value['id'];  ?>" data-id="<?php echo $value['id'];  ?>" ><?php echo $value['judul_proyek_id']; ?></td>
			<td><?php  $d = $this->Usulan_model->ambil_program_proyek($value['id_program'])->nama_program;
			echo $d; ?></td>
			<td><?php echo $value['dana_usulan'];; ?></a></td>
			<td><?php 
                        $adm = $this->Usulan_model->ambil_adm($value['id'])->is_lengkap;
                        $kasubdit_adm = $this->Usulan_model->ambil_adm($value['id'])->is_kasubdit;

                        if ($adm == '1') {

                           if ($kasubdit_adm == '0') {
                             echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm)'><i class=' btn fa fa-times-circle btn-warning'></i></a>";
                          }elseif ($kasubdit_adm == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm)'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger"></i></a>';
                          }

                         
                        }elseif ($adm == '2') {

                         
                          if ($kasubdit_adm == '0') {
                             echo '<a ><i class="btn fa fa-check-square btn-warning"></i></a>';
                          }elseif ($kasubdit_adm == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm)'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<a   id='".$c."'  onclick='nilai_admin($adm, $c, $kasubdit_adm)'><i class=' btn fa fa-times-circle btn-default'></i></a>";
                        }


                         ?></td>

			<td><?php 
                        $layak = $this->Usulan_model->ambil_layak($value['id'])->is_layak;
                        $kasubdit_layak = $this->Usulan_model->ambil_layak($value['id'])->is_kasubdit;

                         if ($layak == '1') {

                          if ($kasubdit_layak == '0') {
                             echo '<a ><i class="btn fa fa-times-circle btn-warning"></i></a>';
                          }elseif ($kasubdit_layak == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger"></i></a>';
                          }
                         
                        }elseif ($layak == '2') {

                          if ($kasubdit_layak == '0') {
                             echo '<a ><i class="btn fa fa-check-square btn-warning"></i></a>';
                          }elseif ($kasubdit_layak == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-check-square btn-primary'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-times-circle btn-default'></i></a>";
                        }


                        ?></td>
			<td><?php 
                          $bb = $value['is_BB'];
                        $usul_BB = $this->Usulan_model->ambil_adm($value['id'])->is_BB;
                        $kasubdit_usul = $this->Usulan_model->ambil_adm($value['id'])->is_bb_kasubdit;


                       /*if ($usul_BB == '1') {
                          echo '<a class="usul_btn" id="'.$c.'"><i class="btn fa fa-check-square btn-primary"></i></a>';
                        }elseif($usul_BB == '1'){
                          echo "<a  id='".$c."'  onclick='tambah_BB($usul_BB, $c, $kasubdit_usul)'><i class=' btn fa fa-check-square btn-warning'></i></a>";
                        }else{
                           echo "<div class='btn-group'>
                            <button type='button'  class='btn btn-xs  btn-danger' onclick='tambah_BB($usul_BB, $c, $kasubdit_usul)' ><i class='fa fa-plus'></i> Tambah ke BB</button>
                        </div>";
                        }*/

                         if ($usul_BB == '1') {

                          if ($kasubdit_usul == '0') {
                             echo '<a ><i class="usul_btn btn fa fa-times-circle btn-warning"  id="'.$c.'"></i></a>';
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }elseif ($kasubdit_usul == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-warning btn-warning'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger"></i></a>';
                          }
                         
                        }elseif ($usul_BB == '2') {

                          if ($kasubdit_usul == '0') {
                             echo '<a ><i class="btn fa fa-check-square btn-warning"></i></a>';
                          }elseif ($kasubdit_usul == '1') {
                             echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-check-square btn-primary'></i></a>";
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<div class='btn-group'>
                            <button type='button'  class='btn btn-xs  btn-danger' onclick='tambah_BB($usul_BB, $c, $kasubdit_usul)' ><i class='fa fa-plus'></i> Tambah ke BB</button>
                        </div>";
                         /* echo "<a   id='".$c."'  onclick='nilai_layak($layak, $adm, $c)'><i class=' btn fa fa-times-circle btn-default'></i></a>";*/
                        }


                         ?></td>
						<td><?php 
                        $gb = $this->Usulan_model->ambil_pln($value['id'])->is_GB;

                       if ($gb == '1') {
                          echo '<a class="usul_btn" id="'.$c.'"><i class="btn fa fa-check-square btn-primary"></i></a>';
                        }else{
                          echo "
                            <a><i class='btn fa fa-times-circle btn-danger'></i></a>
                        ";
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
                                                   <li><a  data-toggle="" data-target="modal" class="rekam_arsip" id="<?php echo $value['id']; ?>">Rekam Jejak</a></li>
                                                   <li><a  data-toggle="" data-target="modal" class="catatan" id="<?php echo $value['id']; ?>">Catatan</a></li>
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
	function detail_list(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			beforeSend: function(){
				
				showLoading();
				$('#loader').fadeOut(1000);
			},
			success:function(response){

				$("#tmpModal").html(response);
				$('#modalDetail').modal('show');
			},
			dataType:"html"});
		return false;
	}

	$(document).on('click', '.rekam_arsip', function(){  
           
         
             var id = $(this).attr("id"); 
           //console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/tampilkan_log_usulan_index",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal
  
                  $("#tmpModal").html(response);
                $('#modalLog').modal('show');
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });
            });

	function nilai_admin(adm, c, kasubdit){
    console.log("sukses");
   
     var id = c;
     console.log(id); 
    if (adm == '0') {
      console.log("sukses");
  
    $.ajax({
      type : 'post',
                url : "<?php echo base_url(); ?>Usulan/adm",
                data :  'id='+ id,
                success : function(response){
                 $("#tmpModal").html(response);
                $('#modal_adm').modal('show');
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
    });
    } else if ( kasubdit == '0' ){
     
     alert('Menunggu penilaian kasubdit')
      console.log("gagal bray");
    } else {
      alert('Selesaikan penilaian kelayakan terlebih dahulu');
    }

  }

  $(document).on('click', '.edit', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

          //$('#ModalEdit').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          $.ajax({
               
                url : "<?php echo base_url(); ?>Usulan/edit",
                data :  'id='+ id,
                 type : 'post',
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal").html(response);
                $('#modalEditUsulan').modal('show');
                console.log("hahaha");
                console.log(id);
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });
            });

	
	function tampilkan_form_edit(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalEdit').modal('show');
		},
		dataType:"html"});
		return false;
	}
	
	
	
	function tampilkan_syarat_usulan(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalIndex').modal('show');
		},
		dataType:"html"});
		return false;
	}

	$(document).on('click', '.catatan', function(){  
           
         
             var id = $(this).attr("id"); 
          
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
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
	
	function tampilkan_form_hapus(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalHapus').modal('show');
		},
		dataType:"html"});
		return false;
	}

	
     function nilai_layak(layak, nilai_admin, c){
      console.log(c);

      var id = c;
    //alert(id+','+nilai_admin);
   if (nilai_admin == '2') {
      console.log("sukses");
    $.ajax({
      type : 'post',
                url : "<?php echo base_url(); ?>Usulan/layak",
                data :  'id='+ id,
                success : function(response){
                   $("#tmpModal").html(response);
                $('#modalLayak').modal('show');
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
    });
    }else {
     
      console.log("gagal bray");
      alert("Belum selesai penilaian Administrasi");
    }
  }

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

	
	
	function masuk_dpp(id, nilai_admin, nilai_layak){
		if(nilai_admin == '1' && nilai_layak == '1'){
			$.ajax({
				url: "<?php echo base_url(); ?>sbsn/usulan_tampil_form_masuk_dpp/"+id,
				beforeSend: function(){
					showLoading();
				},
				success:function(response){
					$("#tmpModal").html(response);
					$('#modalNilai').modal('show');
				},
				dataType:"html"
			});
			
		}else{
			alert('Maaf! Penilaian administrasi atau penilaian kelayakan belum dilakukan. Silahkan dilakukan penilaian administrasi dan penilaian kelayakan.');
		}
	}

	$(document).on('click', '.detail', function(){  
           
          
          //$('#myModalDetail').modal('show');
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/detil",
                data :  'id='+ id,
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