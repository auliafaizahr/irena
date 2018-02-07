<table class="table table-hover" id="example"  width="100%"> 
	<thead>
		<tr>
			<!-- <th style="display:none;">Update date</th> -->
			<th style="width:200px;">Instansi Pengusul</th>
			<th class="text-center" style="width:200px;">Judul Proyek</th>
			<th class="text-center">Program</th>
			<th> Kode Bluebook </th>
			<th style="width:200px;">Status Lembaga</th>
			<th style="width:200px;">Status Lender</th>
			<th style="width:100px;">Nilai Pinjaman</th>
			<th style="width:100px;">Indikasi Lender</th>
			<th style="width:100px;">Kelayakan Administrasi</th>
			<th style="width:100px;">Masuk GB</th>
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
			 echo $b; ?>
         
       </td>

			<td><a class="detail" id="<?php echo $value['id'];  ?>" data-id="<?php echo $value['id'];  ?>" ><?php echo $value['judul_proyek_id']; ?></td>

			<td><?php  $d = $this->Usulan_model->ambil_program_proyek($value['id_program'])->nama_program;
			echo $d; ?></td>

			<td><?php 

              if($value['id_bluebook']!= ""){
                  echo $this->Bluebook_model->kode_bluebook($value['id_bluebook'])->nama;; 
               }else {
                  echo ""; 
                    }  ?>
      </td>

			<td><?php 
                           $f = $this->Bluebook_model->status_lembaga($value['id_status_lembaga']);
                            if($value['id_status_lembaga']!= ""){
                                echo $f->status; 
                            }else {
                                echo ""; 
                            }
                             ?></td>

			<td> <?php 
                             $e = $this->Bluebook_model->status_lender($value['id_status_lender']);
                            if($value['id_status_lender']!= ""){
                                echo $e->status; 
                            }else {
                                echo ""; 
                            }
                             ?></td>
      <td><?php 

                                echo $value['nilai_pinjaman'];
                            ?></td>
      <td> <?php 
                            $g = $this->Bluebook_model->lender($value['id_lender']);

                                if($value['id_lender']!= ""){
                                echo $g->lender; 
                            }else {
                                echo ""; 
                            }
                                    
                            ?></td>
      <td> <?php 
                       
                        $layak = $this->Bluebook_model->ambil_layak($value['id'])->is_layak;
                        $kasubdit_layak = $this->Bluebook_model->ambil_layak($value['id'])->is_kasubdit_layak;
                       
                        $c = $value['id'];


                         //mengganti ikon kalo udah layak atau belum
                         if ($layak == '1') {

                           if ($kasubdit_layak == '0') {
                            echo "<a id='".$value['id']."' class='layak' data-id='".$layak."' data-kasubdit='".$kasubdit_layak."'><i class='btn fa fa-times-circle btn-warning'></i></a>";
                             
                          }elseif ($kasubdit_layak == '1') {
                             echo "<a id='".$value['id']."' class='layak' data-id='".$layak."' data-kasubdit='".$kasubdit_layak."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                             
                          }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger" ></i></a>';
                          }

                         
                        }elseif ($layak == '2') {

                         
                          if ($kasubdit_layak == '0') {
                            echo "<a id='".$value['id']."' class='layak' data-id='".$layak."' data-kasubdit='".$kasubdit_layak."'><i class='btn fa fa-check-square btn-warning'></i></a>";
                             
                          }elseif ($kasubdit_layak == '1') {
                            echo "<a id='".$value['id']."' class='layak' data-id='".$layak."' data-kasubdit='".$kasubdit_layak."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                            
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>';
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<a id='".$value['id']."' class='layak'php data-id='".$layak."' data-kasubdit='".$kasubdit_layak."' ><i class='btn fa fa-times-circle  btn-default'></i></a>";
                          
                        }

                        ?></td>
			<td><?php 

                         //ganti ikon untuk usulkan ke GB

                        $is_GB = $this->Bluebook_model->ambil_layak($value['id'])->is_GB;
                        $gb_kasubdit = $this->Bluebook_model->ambil_layak($value['id'])->is_gb_kasubdit;

                        if ($is_GB == '1') {

                           if ($gb_kasubdit == '0') {
                            echo "<a id='".$value['id']."' class='tambahkeGB' data-id='".$is_GB."' data-kasubdit='".$gb_kasubdit."'><i class='btn fa fa-times-circle btn-warning'></i></a>";
                             
                        }elseif ($gb_kasubdit == '1') {
                             echo "<a id='".$value['id']."' class='tambahkeGB' data-id='".$is_GB."' data-kasubdit='".$gb_kasubdit."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                             
                        }else{
                            echo '<a ><i class="btn fa fa-times-circle btn-danger" ></i></a>';
                          }

                         
                        }elseif ($is_GB == '2') {

                         
                          if ($gb_kasubdit == '0') {
                            echo "<a id='".$value['id']."' class='tambahkeGB' data-id='".$is_GB."' data-kasubdit='".$gb_kasubdit."'><i class='btn fa fa-check-square btn-warning'></i></a>";
                             
                          }elseif ($gb_kasubdit == '1') {
                            echo "<a id='".$value['id']."' class='tambahkeGB' data-id='".$is_GB."' data-kasubdit='".$gb_kasubdit."' ><i class='btn fa fa-warning btn-warning'></i></a>";
                            
                          }else{
                            echo '<a ><i class="btn fa fa-check-square btn-primary"></i></a>'."<a id='".$value['id']."' data-id='".$is_GB."' data-kasubdit='".$gb_kasubdit."' class='tambahkeGB' ><i class='btn fa fa-plus  btn-danger'></i></a>"; 
                          }
                           
                        }else{
                          //echo "<a   id='".$c."' layak='".$c."' onclick='nilai_admin($adm)'><i class=' btn fa fa-times-circle btn-danger'></i></a>";
                          echo "<div class='btn-group'>
                            <button type='button'  class='tambahkeGB btn btn-xs  btn-danger' id='".$value['id']."' data-id='".$is_GB."' data-kasubdit='".$gb_kasubdit."'><i class='fa fa-plus'></i> Tambah ke GB</button>
                            </div>";
                         // echo "<a id='".$value['id']."' class='tambahBB' ><i class='btn fa fa-plus  btn-danger'></i></a>";
                          
                        }

                        ?>
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
                                                   <li><a  data-toggle="" data-target="modal" class="rekam" id="<?php echo $value['id']; ?>">Rekam Jejak</a></li>
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

  $(document).on('click', '.layak', function(){  
           
         
             var id = $(this).attr("id"); 
             var layak = $(this).attr("data-id"); 
             var kasubdit_layak = $(this).attr("data-kasubdit"); 
           console.log(id);
           console.log(layak);
           console.log(kasubdit_layak);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);

        if (layak == '0') {
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/layak",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal").html(response);
                $('#modalLayak2').modal('show');
                console.log("bisa");
              alert(response);
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });

          } else if (kasubdit_layak == '0'){
            alert('Menunggu persetujuan kasubdit');
            
          };
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

     $(document).on('click', '.tambahkeGB', function(){  
           
         
             var gb = $(this).attr("id"); 
             var id = $(this).attr("id"); 
             var layak = $(this).attr("data-id"); 
             var kasubdit = $(this).attr("data-kasubdit"); 
          // console.log(id);
           console.log(gb);
           console.log(layak);
           console.log(kasubdit);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);

        if (layak == '0') {

          if(kasubdit == '0')
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/tambahkeGB",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal").html(response);
                $('#modalGB').modal('show');
                console.log("bisa");
              alert(response);
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });

          } else if (kasubdit == '0'){
            alert('Menunggu persetujuan kasubdit');
            
          } else if(layak == '2' && kasubdit == '2'){
            alert('Yakin akan menambahkan lagi ?');

             $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/tambah_lagi",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal").html(response);
                $('#tambah_lagi').modal('show');
                console.log("bisa");
              alert(response);
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });
          }else{
            alert("Selesaikan dahulu penilaian kelayakan");
          }

          ;
        });


	
    $(document).on('click', '.detail', function(){  
           
          

             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);p
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/detil",
                data :  'id='+ id,
                success : function(response){
                $("#tmpModal").html(response);
                $('#modalDetail').modal('show');
                },

                dataType:"html"
            });
          });

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
               
                url : "<?php echo base_url(); ?>Bluebook/edit",
                data :  'id='+ id,
                 type : 'post',
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal

                  $("#tmpModal").html(response);
                $('#ModalEdit').modal('show');
                console.log("hahaha");
                console.log(id);
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });
            });

	function tampilkan_log_usulan_index(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			success:function(response){
				$("#tmpModal").html(response);
				$('#modalLog').modal('show');
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
                url : "<?php echo base_url(); ?>bluebook/catatan",
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

	 $(document).on('click', '.rekam', function(){  
           
         
             var id = $(this).attr("id"); 
           //console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Bluebook/tampilkan_log_bb_index",
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

	
	
	$(document).ready(function(){
		$('#example').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});
</script>