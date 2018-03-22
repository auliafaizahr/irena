<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-12">
		<h2>Daftar Proyek Loan Agreement</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini memberikan informasi terkait proyek yang sudah menandatangani Loan Agreement
			</li>
		</ol>
	</div>
</div>

<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
                    <h5>Data</h5>
				</div>
				<!-- 
				<div class="ibox-content">	
					<a href="<?php  //echo base_url(); ?>arsip/send">Kirim Email</a> <br>
					<br>
					<select name="id_jenis" class="form-control m-b" required>
						<option value=""></option>
						<option value="">ok</option>
						<option value="">tk ok</option>
					</select>
				</div>
				-->
				<div id="loader1" class="loader1" style='visibility: hidden;'></div>
				     <ul class="nav nav-tabs tabs-up" id="friends">
                      <!--  <li><a href="#" id="contacts_tab" data-toggle="tab" rel="tooltip"> Contacts </a></li>
                       <li><a href="#" class="media_node span" id="friends_list_tab" data-toggle="tab" data-url="#" rel="tooltip"> Friends list</a></li> -->
                       <li><a href="#awaiting_request" class="media_node span" id="awaiting_request_tab" data-url="<?php echo base_url(); ?>loan_aggr/tampilkan_la_list" data-toggle="tab" rel="tooltip">Daftar Proyek</a></li>
                        <li><a href="#awaiting_request" class="media_node span" id="awaiting_request_tab" data-url="<?php echo base_url(); ?>usulan/tampilkan_usulan_list" data-toggle="tab" rel="tooltip">Penyerapan</a></li>
                 </ul>

                 <div class="tab-content">
                      <div class="tab-panel panel-default  active" id="contacts">
                      		<div class="ibox-content" >
                      		
                      			
                      		</div>
                       </div>
                       <div class="tab-pane" id="friends_list">

                       </div>
                       <div class="tab-panel panel-default  urlbox span8" id="awaiting_request">
                     <!--   <div  id="div_index">
                      			</div> -->
                       </div>
                </div>
				
			</div>
		</div>
	</div>
</div>

<script src="<?php echo base_url(); ?>assets/inspinia/js/jquery-2.1.1.js"></script>

<script>
	function detail(page){
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
	
	function showLoading2(){
		document.getElementById("loader1").style = "visibility: visible";
		$('#loader1').fadeOut(1000);
	}
	
/*	function segarkan_data(){
		$.get("<?php echo base_url(); ?>loan_aggr/tampilkan_la_list", function(data) {
			$("#div_index").html(data);
		});
	}
*/
	$(document).on('click', '.rekam', function(){  
           
         
             var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/arsip",
                data :  'id='+ id,
                success : function(response){
                //$('.fetched-data-arsip').html(data);//menampilkan data ke dalam modal
  
                  $("#tmpModal").html(response);
                $('#modal_arsip').modal('show');
              
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
                });
            });

	 $('#friends a').click(function(e) {
      e.preventDefault();
        var $this = $(this),
            loadurl = $this.data('url'),
            targ = $this.attr('href');
            id = $this.attr('id');

        $.get(loadurl, function(data) {
          console.log(data)
            $(targ).html(data);
        });

        $this.tab("show");
        return false;
    });


	$(document).on('click', '#tmbhBttn', function(){  
           
      /* $('#myModalDetail').modal('show');
           });*/

            var id = $(this).attr("id"); 
           console.log(id);
           //var rowid = $(e.relatedTarget).data('id');
           //console.log(rowid);
           $.ajax({
                type : 'post',
                url : "<?php echo base_url(); ?>Usulan/tambah_usulan",
                
                success : function(response){
                
                  $("#tmpModal").html(response);
                $('#modalTambah').modal('show');
          
                //  $('#modalKecil').modal('show');
               // $('.fetched-data-lagi').html(data);//menampilkan data ke dalam modal
                },
                dataType:"html"
            });
          });
	
	$(document).ready(function(){
		//segarkan_data();
		
		$('#btnDetil').click(function(){
			$.ajax({
				url: "<?php echo base_url(); ?>arsip/detil",
				beforeSend: function(){
					showLoading();
					$('#loader').fadeOut(1000);
				},
				success:function(response){
					alert('osk');
					//$("#tmpModal").html(response);
					//$('#modalTambah').modal('show');
				},
				dataType:"html"});
			return false;
		});
		
		//untuk hapus
		$('#btnTambah').click(function(){
			$.ajax({
				url: "<?php echo base_url(); ?>sbsn/tampilkan_usulan_form_tambah",
				beforeSend: function(){
					//notif();
					showLoading();
				},
				success:function(response){
					$("#tmpModal").html(response);
					$('#modalTambah').modal('show');
				},
				dataType:"html"});
			return false;
		});
 
	});
</script> 