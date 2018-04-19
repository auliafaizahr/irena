<div class="ibox-content inspinia-timeline">
<button type="button" class="btn btn-success btn-sm pull-right" id="tmbhBttn_kr"><i class="glyphicon glyphicon-plus-sign" ></i> Tambahkan Kronologis</a></button>

<div class="timeline-item">
                            <div class="row">
                                <div class="col-xs-3 date">
                                    <i class="fa fa-briefcase"></i>
                                    6:00 am
                                    <br>
                                    
                                </div>
                                <div class="col-xs-10 content no-top-border">
                                    <p class="m-b-xs"><strong>Meeting</strong></p>

                                    <p>Conference on the sales results for the previous year. Monica please examine sales trends in marketing and products. Below please find the current status of the
                                        sale.</p>

                                   
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-3 date">
                                    <i class="fa fa-briefcase"></i>
                                    6:00 am
                                    <br>
                                   
                                </div>
                                <div class="col-xs-10 content no-top-border">
                                    <p class="m-b-xs"><strong>Meeting</strong></p>

                                    <p>Conference on the sales results for the previous year. Monica please examine sales trends in marketing and products. Below please find the current status of the
                                        sale.</p>

                                   
                                </div>
                            </div>s
                        </div>
</div>
</div>
<div id="tmpModal4"></div>

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

  $(document).on('click', '#tmbhBttn_kr', function(){  
           
         
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/tes_kosong",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal
  
                  $("#tmpModal4").html(response);
                $('#modal_arsip').modal('show');
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });
  });


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
	
/*	$(document).ready(function(){
		$('#example').DataTable({
			responsive: true,
			"dom": 'T<"clear">lfrtip',
			"order": [[ 0, "desc" ]]
		});
	});*/
</script>