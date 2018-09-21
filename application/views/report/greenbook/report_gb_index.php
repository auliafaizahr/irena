<div class="row wrapper border-bottom white-bg page-heading">
	<div class="col-lg-12">
		<h2>Laporan Persebaran Pinjaman Luar Negeri Pada Green Book</h2>
		<ol class="breadcrumb">
			<li>
				Halaman ini memberikan informasi dan laporan terkait laporan Pinjaman Luar Negeri berupa statistiknya pada Green Book
			</li>
		</ol>
	</div>
	<div class="col-lg-2">
		
	</div>
</div>

<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<!-- <div class="ibox-title">
                    <h5>Data</h5>
				</div> -->
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
				     <ul class="nav nav-tabs tabs-up active" id="friends">
                      <!--  <li><a href="#" id="contacts_tab" data-toggle="tab" rel="tooltip"> Contacts </a></li>
                       <li><a href="#" class="media_node span" id="friends_list_tab" data-toggle="tab" data-url="#" rel="tooltip"> Friends list</a></li> -->
                      <li><a href="#awaiting_request" class="media_node span center" id="contacts" data-url="<?php echo base_url(); ?>greenbook/tampilkan_gb_list_1" data-toggle="tab" style='width: 300px; text-align: center'  rel="tooltip">Proyek</a></li>
                       
                     

                       <li><a href="#awaiting_request" class="media_node span" id="awaiting_request_tab" data-url="<?php echo base_url(); ?>greenbook/tampil_gb_banding"  style='width: 300px; text-align: center' data-toggle="tab" rel="tooltip">Banding</a></li>

                         <li><a href="#awaiting_request" class="media_node span" id="friends_list_tab" data-url="<?php echo base_url(); ?>usulan/report_gb_tab_proyek"  style='width: 300px; text-align: center' data-toggle="tab" rel="tooltip">Grafik</a></li>
                 	</ul>

                 <div class="tab-content">
                      <!-- <div class="tab-panel " id="contacts">
                      		
                       </div>
                       <div class="tab-panel " id="friends_list">

                       </div> -->
                       <div class="tab-panel panel-default  urlbox span8" id="awaiting_request">
                     
                       </div>
                </div>
				
			</div>
		</div>
	</div>
</div>


<script>
	
	 $('#friends a').click(function(e) {
      e.preventDefault();
        var $this = $(this),
            loadurl = $this.data('url'),
            targ = $this.attr('href');
            id = $this.attr('id');

        $.get(loadurl, function(data) {
          //console.log(data)
            $(targ).html(data);
        });

        $this.tab("show");
        return false;
    });


</script>

