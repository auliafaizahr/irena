<table class="table table-hover" id="example"  width="100%"> 
	<thead>
		<tr>
			<!-- <th style="display:none;">Update date</th> -->
      <th></th>
			<th style="width:300px;">Instansi Pengusul</th>
			<th class="text-center" style="width:300px;">Judul Proyek</th>
			<th class="text-center">Program</th>
			<th> Pinjaman </th>
			<th style="width:20px;">Lender</th>
			<th style="width:20px;">Bluebook</th>
			<th style="width:20px;">Greenbook</th>
			<th style="width:20px;">Tanggal DK</th>
			<th style="width:20px;">Tanggal LA</th>
		
			<th style="width:3%;">Aksi</th>
		</tr>
	</thead>
	<tbody>
		<?php
			foreach($data as $key => $value):
		?>
		<tr class="gradeX">
			<!-- td style="display:none;"><?php echo $row->update_date; ?></td> -->
      <td class="child"  data-id="<?php echo $value['id_usulan'];  ?>"></td>
			<td><?php $c = $value['id'];
			 $b = $this->Usulan_model->ambil_instansi_untuk_usulan($value['id_instansi'])->nama_instansi;
			 echo $b; ?>
         
       </td>

			<td><a class="detail" id="<?php echo $value['id'];  ?>" data-id="<?php echo $value['id'];  ?>" ><?php echo $value['judul_proyek_eng']; ?></td>

			<td><?php  $d = $this->Usulan_model->ambil_program_proyek($value['id_program'])->nama_program;
			echo $d; ?></td>

      <td><?php 

                                echo number_format($value['nilai_pinjaman']);
                            ?></td>

       <td> <?php 
                            $g = $this->Bluebook_model->lender($value['id_lender']);

                                if($value['id_lender']!= ""){
                                echo $g->lender; 
                            }else {
                                echo ""; 
                            }
                                    
                            ?></td>

			<td><?php 

              if($value['id_bluebook']!= ""){
                  echo $this->Bluebook_model->kode_bluebook($value['id_bluebook'])->nama;; 
               }else {
                  echo ""; 
                    }  ?>
      </td>


      <td><?php 

                            if($value['id_greenbook']!= ""){
                            $z = $this->Greenbook_model->kode_greenbook($value['id_greenbook']);

                                echo $z->nama; 
                            }else {
                                echo ""; 
                            }
                             ?>
      </td>

		
     
       <td> <?php echo $value['tgl_DK']; ?> </td>
                        <td> <?php echo $value['tgl_LA']; ?> </td>
						
			<td class="text-center">
				<!-- <?php if($this->session->userdata('id_user_level') == '3' || $this->session->userdata('id_user_level') == '1') { ?>
					<a class="btn btn-white btn-xs" type="button" href="#" onclick="tampilkan_form_edit('hibah/tampilkan_drkh_edit/<?php echo $row->id; ?>')"><i class="fa fa-pencil"></i> Edit</a>
				<?php }else{ 
						echo "<i class='fa fa-lock'></i>"; } 
				?> -->

				<div class="input-group-btn">
                           <button data-toggle="dropdown" class="btn btn-white dropdown-toggle" type="button" >Aksi <span class="caret"></span></button>
                           
                           <ul class="dropdown-menu pull-right">
                                                   <li><a  data-toggle="" data-target="modal" class="rekam_la" id="<?php echo $value['id_usulan']; ?>">Rekam Jejak</a></li>
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


   $(document).on('click', '.rekam_la', function(){  
           
         
             var id = $(this).attr("id"); 
           //console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>loan_aggr/tampilkan_log_la_index",
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
             var id_usulan = $(this).attr("data-id"); 
             var id_dk_proyek = $(this).attr("data-isi"); 
           console.log(id);
           console.log(id_usulan);
           console.log(id_dk_proyek);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>loan_aggr/hapus",
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
           
          
          
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Loan_aggr/detil",
                data :  'id='+ id,
                success : function(response){
               $("#tmpModal").html(response);
                $('#modalDetail').modal('show');
                },
                dataType: "html"
            });
          });

  $(document).on('click', '.edit', function(){  
           
           // console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
          /* $('#myModalDetail').modal('show');
           });*/

         
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>loan_aggr/edit",
                data :  'id='+ id,
                success : function(response){
                $("#tmpModal").html(response);
                $('#ModalEdit').modal('show');
                }
            });
          });
	
	$(document).ready(function(){
		$('#example').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});

  var table = $('#example').DataTable();

  $('#example tbody').on('click', 'td:first-child', function () {
  var tr = $(this).closest('tr');
  var row = table.row( tr );
  var id = $(this).attr('data-id');

  if (row.child.isShown()) {
    // This row is already open - close it.
    row.child.hide();
    tr.removeClass('shown');
  } else {
    // Open row.
     $.get("<?php echo base_url(); ?>loan_aggr/detail_expand_la/"+id, function(data) {
          //console.log(data[10]);
          //console.log(data);
          //var results = JSON.parse(data);
          //console.log(results.isi[0].judul_usulan);
          row.child(format(data)).show();
          //dibuat load dari halaman lain terpisah, jadi ga di js buat tabel html nya
        
          tr.addClass('shown');
        
      });
   /* row.child(format()).show();
    tr.addClass('shown');*/

   /*   $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Loan_aggr/detil",
                data :  'id='+ id,
                success : function(response){
               row.child.html(response);
                $('#modalDetail').modal('show');
                },
                dataType: "html"
            });*/
  }
});


    function format(d){

  console.log(d);
 var results = JSON.parse(d);

  //console.log(results.isi[1].judul_usulan);
 console.log(results.isi.length);
 console.log(results.isi2.length);
 console.log(results.isi[0]);
// console.log(results.isi[2].id_urut_disb);


  //var banyak_gb = sizeof(results.isi.gb_pinjaman);
  //var banyak_gb = sizeof(isi.gb_pinjaman);
//  console.log(banyak_gb);

    return '<table >'+
        '<tr>'+
            '<td  style="width:200px;" rowspan="2" >Kategori  </td>' +
            /*'<td style="width:100px; align:text-center;">  1  </td>'+
            '<td style="width:100px;"> 2   </td>'+*/
             //((typeof results.isi[2].id_urut_disb == 3)? '<td style="width:100px;"> 3   </td>')+
            ((typeof results.isi[0] !== 'undefined')?  '<td style="width:100px;"> 3   </td>' : "" )+
            ((typeof results.isi[1] !== 'undefined')?  '<td style="width:100px;"> 3   </td>' : "" )+
            ((typeof results.isi[2] !== 'undefined')?  '<td style="width:100px;"> 3   </td>' : "" )+
            ((typeof results.isi[3] !== 'undefined')?  '<td style="width:100px;"> 4   </td>' : "" )+
             ((typeof results.isi[4] !== 'undefined' )? '<td style="width:100px;"> 5   </td>' : "" )+
             ((typeof results.isi[5] !== 'undefined')? '<td style="width:100px;"> 6   </td>' : "" )+
             ((typeof results.isi[6] !== 'undefined')? '<td style="width:100px;"> 7   </td>' : "" )+
             ((typeof results.isi[7] !== 'undefined')? '<td style="width:100px;"> 8   </td>' : "" )+
             ((typeof results.isi[8] !== 'undefined')? '<td style="width:100px;"> 9   </td>' : "" )+
           /* '<td style="width:100px;"> 4  </td>'+
            '<td style="width:100px;"> Total  </td>'+*/
            
        '</tr>'+

        '<tr>'+

           
           /* '<td style="width:100px; align:text-center;">  2015  </td>'+
            '<td style="width:100px;"> 201   </td>'+*/
             //((typeof results.isi[2].id_urut_disb == 3)? '<td style="width:100px;"> 3   </td>')+
            ((typeof results.isi2[0] !== 'undefined')?  '<td style="width:100px;"> '+ results.isi2[0].tahun +'   </td>' : "" )+
            ((typeof results.isi2[1] !== 'undefined')?  '<td style="width:100px;"> '+ results.isi2[1].tahun +'   </td>' : "" )+
            ((typeof results.isi2[2] !== 'undefined')?  '<td style="width:100px;"> '+ results.isi2[2].tahun +'   </td>' : "" )+
            ((typeof results.isi2[3] !== 'undefined')?  '<td style="width:100px;"> '+ results.isi2[3].tahun +'   </td>' : "" )+
            ((typeof results.isi2[4] !== 'undefined')?  '<td style="width:100px;"> '+ results.isi2[4].tahun +'   </td>' : "" )+
            ((typeof results.isi2[5] !== 'undefined')?  '<td style="width:100px;"> '+ results.isi2[5].tahun +'   </td>' : "" )+
            ((typeof results.isi2[6] !== 'undefined')?  '<td style="width:100px;"> '+ results.isi2[6].tahun +'   </td>' : "" )+
            ((typeof results.isi2[7] !== 'undefined')?  '<td style="width:100px;"> '+ results.isi2[7].tahun +'   </td>' : "" )+
            ((typeof results.isi2[8] !== 'undefined')?  '<td style="width:100px;"> '+ results.isi2[8].tahun +'   </td>' : "" )+
           /* ((typeof results.isi[3].tahun !== 'undefined')?  '<td style="width:100px;"> '+ results.isi[3].tahun +'   </td>' : "" )+
            ((typeof results.isi[4].tahun !== 'undefined')?  '<td style="width:100px;"> '+ results.isi[4].tahun +'   </td>' : "" )+
            ((typeof results.isi[5].tahun !== 'undefined')?  '<td style="width:100px;"> '+ results.isi[5].tahun +'   </td>' : "" )+
            ((typeof results.isi[6].tahun !== 'undefined')?  '<td style="width:100px;"> '+ results.isi[6].tahun +'   </td>' : "" )+
            ((typeof results.isi[7].tahun !== 'undefined')?  '<td style="width:100px;"> '+ results.isi[7].tahun +'   </td>' : "" )+
           */
          
            
        '</tr>'+

        '<tr>'+
           
            '<td style="width:100px;"> Disbursement GB  </td>'+
            ((typeof results.isi[0] !== 'undefined')?  '<td style="width:100px;"> '+ numeral(results.isi[0].nilai_disb).format('0,0') +'   </td>' : "" )+
            ((typeof results.isi[1] !== 'undefined')?  '<td style="width:100px;">  '+ numeral(results.isi[1].nilai_disb).format('0,0') +'   </td>' : "" )+
             ((typeof results.isi[2] !== 'undefined' )? '<td style="width:100px;"> '+ numeral(results.isi[2].nilai_disb).format('0,0') +'   </td>' : "" )+
             ((typeof results.isi[3] !== 'undefined')? '<td style="width:100px;"> '+ numeral(results.isi[3].nilai_disb).format('0,0') +'   </td>' : "" )+
             ((typeof results.isi[4] !== 'undefined')? '<td style="width:100px;"> '+ numeral(results.isi[4].nilai_disb).format('0,0')   +'   </td>' : "" )+
             ((typeof results.isi[5] !== 'undefined')? '<td style="width:100px;"> '+ numeral(results.isi[5].nilai_disb).format('0,0')  +'   </td>' : "" )+
             ((typeof results.isi[6] !== 'undefined')? '<td style="width:100px;"> '+ numeral(results.isi[6].nilai_disb).format('0,0') +'   </td>' : "" )+
             ((typeof results.isi[7] !== 'undefined')? '<td style="width:100px;"> '+ numeral(results.isi[7].nilai_disb).format('0,0')  +'   </td>' : "" )+
             ((typeof results.isi[8] !== 'undefined')? '<td style="width:100px;"> '+ numeral(results.isi[8].nilai_disb).format('0,0')  +'   </td>' : "" )+
             ((typeof results.isi[9] !== 'undefined')? '<td style="width:100px;"> '+ numeral(results.isi[9].nilai_disb).format('0,0')  +'   </td>' : "" )+
             ((typeof results.isi[10] !== 'undefined')? '<td style="width:100px;"> '+ numeral(results.isi[10].nilai_disb).format('0,0')  +'   </td>' : "" )+
            
        '</tr>'+

         /*'<tr>'+
           
            '<td style="width:100px;"> Penyerapan </td>'+

            ((typeof results.isi2[0] !== 'undefined')?  '<td style="width:100px;"> '+ numeral(results.isi2[0].pagu_nilai).format('0,0') +'    </td>' : "" )+
            ((typeof results.isi2[1] !== 'undefined')?  '<td style="width:100px;"> '+ numeral(results.isi2[1].pagu_nilai).format('0,0') +'    </td>' : "" )+
            ((typeof results.isi2[2] !== 'undefined')?  '<td style="width:100px;"> '+ numeral(results.isi2[2].pagu_nilai).format('0,0') +'    </td>' : "" )+
            ((typeof results.isi2[3] !== 'undefined')?  '<td style="width:100px;"> '+ numeral(results.isi2[3].pagu_nilai).format('0,0') +'    </td>' : "" )+
            ((typeof results.isi2[4] !== 'undefined')?  '<td style="width:100px;"> '+ numeral(results.isi2[4].pagu_nilai).format('0,0') +'    </td>' : "" )+
            ((typeof results.isi2[5] !== 'undefined')?  '<td style="width:100px;"> '+ numeral(results.isi2[5].pagu_nilai).format('0,0') +'    </td>' : "" )+
            ((typeof results.isi2[6] !== 'undefined')?  '<td style="width:100px;"> '+ numeral(results.isi2[6].pagu_nilai).format('0,0') +'    </td>' : "" )+
            ((typeof results.isi2[7] !== 'undefined')?  '<td style="width:100px;"> '+ numeral(results.isi2[7].pagu_nilai).format('0,0') +'    </td>' : "" )+
            ((typeof results.isi2[8] !== 'undefined')?  '<td style="width:100px;"> '+ numeral(results.isi2[8].pagu_nilai).format('0,0') +'    </td>' : "" )+
            ((typeof results.isi2[9] !== 'undefined')?  '<td style="width:100px;"> '+ numeral(results.isi2[9].pagu_nilai).format('0,0') +'    </td>' : "" )+
            ((typeof results.isi2[10] !== 'undefined')?  '<td style="width:100px;"> '+ numeral(results.isi2[10].pagu_nilai).format('0,0') +'    </td>' : "" )+
            
            
            
        '</tr>'+*/

        '<tr>'+
           
            '<td style="width:100px;"> Selisih </td>'+
            ((typeof results.isi2[0] !== 'undefined')?  '<td style="width:100px;"> '+ numeral(results.isi2[0].pagu_nilai).format('0,0') +'    </td>' : "" )+
            '<td style="width:100px;"> 0   </td>'+
            '<td style="width:100px;"> 0   </td>'+
            '<td style="width:100px;"> 0  </td>'+
            
        '</tr>'+
        
        

    '</table>' +
    
    '<div class="progress progress-mini" style="width:200px;">'+
          '<div style="width:50%;" class="progress-bar"></div>'+ 
        '</div>' ;
}
</script>

<style type="text/css">
  th,

div.dataTables_wrapper {
  
  margin: 0 auto;
}

td.child {
  background: url('https://datatables.net/examples/resources/details_open.png') no-repeat center center;
  cursor: pointer;
}

tr.shown td.child {
  background: url('https://datatables.net/examples/resources/details_close.png') no-repeat center center;
}
</style>