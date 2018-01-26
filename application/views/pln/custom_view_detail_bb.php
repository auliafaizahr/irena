<div class="wrapper wrapper-content animated fadeIn">
	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
				<h5>Filter</h5>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>							
						</a>
					</div>
				</div>
			

				
				<div class="ibox-content" style="display: block;">

					<form role="form" method="POST" action="<?php echo base_url(); ?>report_lender/index" enctype="multipart/form-data">
						<div class="form-group">
							<label>Lender</label>
							<select class="form-control m-b" name="lender" id="id_lender">
								<option value="">Silahkan Pilih</option>
								<?php foreach($lender as $row){ ?>
									<option value="<?php echo $row->id; ?>"><?php echo $row->lender; ?></option>';

								<?php } ;

								?>
							</select>

							<label>Bluebook</label>
							<select class="form-control m-b" name="bluebook" id="id_bb">
								<option value="">Silahkan Pilih</option>
								<?php foreach($kode as $row){ ?>
									<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';

								<?php } ;

								?>
							</select>

								<label>Greenbook</label>
							<select class="form-control m-b" name="bluebook" id="id_bb">
								<option value="">Silahkan Pilih</option>
								<?php foreach($id_gb as $row){ ?>
									<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';

								<?php } ;

								?>
							</select>

							<label>Program</label>
							<select class="form-control m-b" name="bluebook" id="id_bb">
								<option value="">Silahkan Pilih</option>
								<?php foreach($program as $row){ ?>
									<option value="<?php echo $row->id; ?>"><?php echo $row->nama_program; ?></option>';

								<?php } ;

								?>
							</select>


							<label>Kementerian/Lembaga</label>
							<select class="form-control m-b" name="bluebook" id="id_bb">
								<option value="">Silahkan Pilih</option>
								<?php foreach($instansi as $row){ ?>
									<option value="<?php echo $row->id; ?>"><?php echo $row->nama_instansi; ?></option>';

								<?php } ;

								?>
							</select>

							<label>Sektor</label>
							<select class="form-control m-b" name="bluebook" id="id_bb">
								<option value="">Silahkan Pilih</option>
								<?php foreach($sektor as $row){ ?>
									<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';

								<?php } ;

								?>
							</select>

							<label>Lokasi</label>
							<select class="form-control m-b" name="bluebook" id="id_bb">
								<option value="">Silahkan Pilih</option>
								<?php foreach($prov as $row){ ?>
									<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';

								<?php } ;

								?>
							</select>

							<label>Status Lender</label>
							<select class="form-control m-b" name="bluebook" id="id_bb">
								<option value="">Silahkan Pilih</option>
								<?php foreach($stat_lender as $row){ ?>
									<option value="<?php echo $row->id; ?>"><?php echo $row->status; ?></option>';

								<?php } ;

								?>
							</select>

							<label>Status Kementerian Lembaga</label>
							<select class="form-control m-b" name="bluebook" id="id_bb">
								<option value="">Silahkan Pilih</option>
								<?php foreach($lembaga as $row){ ?>
									<option value="<?php echo $row->id; ?>"><?php echo $row->status; ?></option>';

								<?php } ;

								?>
							</select>
						</form>

						</div>
						<div class="form-group">
							<input class="btn btn-primary "  type="submit" id="filter_lender" name="filter_lender" value="Submit"/>
						</div>

			
                <div>
       </div>

     

                        <div class="modal inmodal fade" id="myModal5" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                            <h4 class="modal-title">Tambah Proyek ke Bluebook</h4>
                                            <small class="font-bold">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</small>
                                        </div>
                                        <div class="modal-body">
                                           
											<?php 

											
											


											  ?>
											
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal inmodal fade" id="myModaldetail" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                            <h4 class="modal-title">Lihat </h4>
                                            <small class="font-bold">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</small>
                                        </div>
                                        <div class="modal-body">
                                           
											<?php  ?>
											
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>


		</div>
	</div>


	<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
				<h5>Tabel</h5>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>							
						</a>
					</div>
				</div>
			

				
				<div class="ibox-content" style="display: block;">

				<?php echo $isi2; ?>
                <div>
       </div>
       </div>
</div>
<div class="row">
		<div class="col-lg-12">
			<div class="ibox float-e-margins">
				<div class="ibox-title">
				<h5>Grafik</h5>
					<div class="ibox-tools">
						<a class="collapse-link">
							<i class="fa fa-chevron-up"></i>							
						</a>
					</div>
				</div>
			

				
				<div class="ibox-content" style="display: block;">

				<?php echo $isi2; ?>
                <div>
       </div>
       </div>
     

                        <div class="modal inmodal fade" id="myModal5" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                            <h4 class="modal-title">Tambah Proyek ke Bluebook</h4>
                                            <small class="font-bold">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</small>
                                        </div>
                                        <div class="modal-body">
                                           
											<?php 

											
											


											  ?>
											
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="modal inmodal fade" id="myModaldetail" tabindex="-1" role="dialog" aria-hidden="true" style="display: none;">
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
                                            <h4 class="modal-title">Lihat </h4>
                                            <small class="font-bold">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</small>
                                        </div>
                                        <div class="modal-body">
                                           
											<?php  ?>
											
                                        </div>

                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-white" data-dismiss="modal">Close</button>
                                            <button type="button" class="btn btn-primary">Save changes</button>
                                        </div>
                                    </div>
                                </div>
                            </div>


		</div>
	</div>


<script>
	
	$('.detailButton').click(function(e){
    e.preventDefault();
    var reportCode = $(this).attr('href');

    var url = "Usulan/tampil_modal";
    $.post(url,{ code:reportCode },function(data){
        //do stuff
        //i.e: $('.modal').html(data).show();
    });
	});

</script>
 