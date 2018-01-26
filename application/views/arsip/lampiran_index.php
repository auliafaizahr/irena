<script>
/*
	$(function(){
		
		
		tampilkanSemuaLampiran();
		
		$('#btnTambahLampiran').click(function(){
			$('#modalTambahLampiran').modal('show');
			$('#myForm').attr('action', '<?php echo base_url() ?>arsip/simpanLampiran/<?php echo $this->uri->segment(3); ?>');
			
		});
		
		$('#tblTutup2').click(function(){
			tampilkanSemuaLampiran();
		});		
		
		$('#tblSimpan').click(function(){
			var url = $('#myForm').attr('action');
			var data = $('#myForm').serialize();
			//validate form
			$.ajax({				
				type: 'ajax',
				method: 'post',
				url: '<?php echo base_url() ?>arsip/simpanLampiran/<?php echo $this->uri->segment(3); ?>',
				data: data,
				async: false,
				dataType: 'json',
				success: function(response){
					$('#modalTambahLampiran').modal('hide');
					$('#myForm')[0].reset();
					tampilkanSemuaLampiran();
				}
			});
		});
		
		function tampilkanSemuaLampiran(){
			$.ajax({
				type: 'ajax',
				url: '<?php echo base_url() ?>arsip/lampiran2/<?php echo $this->uri->segment(3); ?>',
				async: true,
				dataType: 'json',
				success: function(data){
					var html = '';
					var i;
					if((data.length > 0)){
						
						html += '<table class="table table-stripped m-t-md">'+
									'<thead>'+
										'<tr>'+
											'<th>#</th>'+
											'<th>Nama</th>'+
											'<th>Keterangan</th>'+
											'<th>File</th>'+
											'<th>Aksi</th>'+
										'</tr>'+
									'</thead>'+
									'<tbody>';
									
										for(i=0; i<data.length; i++){
											html +='<tr>'+
														'<td>'+data[i].id+'</td>'+
														'<td>'+data[i].nama+'</td>'+
														'<td>'+data[i].keterangan+'</td>'+
														'<td>'+data[i].file+'</td>'+
														'<td>'+
															'<a href="javascript:;" class="btn btn-info item-edit btn-sm" data="'+data[i].id+'">Edit</a> '+
															'<a href="javascript:;" class="btn btn-danger item-delete btn-sm" data="'+data[i].id+'">Delete</a>'+
														'</td>'+
													'</tr>';
										}
						
						html += 	'</tbody>'+
								'</table>';
					}else{
						html = 'data tidak ada';
					}
					
					$('#showdata').html(html);
				},
				error: function(){
					alert('Could not get Data from Database');
				}
			});
		}

	});

	function tambahLampiran(page){
		$.ajax({
			url: "<?php echo base_url(); ?>"+page,
			beforeSend: function(){
				
				showLoading();
				$('#loader').fadeOut(1000);
			},
			success:function(response){

				$("#tmpModal").html(response);
				$('#modalTambahLampiran').modal('show');
			},
			dataType:"html"});
		return false;
	}
	*/
</script>



<div class="modal inmodal fade" id="modalLampiran" tabindex="-1" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog modal-lg">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Lampiran</h5>&nbsp;<small> Arsip Nomor <?php echo $arsip->no; ?> tanggal <?php echo $arsip->tgl; ?></small>
					<div class="pull-right">
						<div class="btn-group">
							<button type="button" id="btnTambah" class="btn btn-xs btn-success" >Tambah</button>
						</div>
					</div>
				</div>
				<div class="ibox-content">
					<div  id="tabel_lampiran">
					</div>
				</div>
			</div>
			<div class="modal-footer">
				<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
			</div>
		</div>
	</div>		
</div>

<div id="tmpModal2"></div>
<script>
	$(document).ready(function(){
		segarkan_lampiran();
		
		$('#btnTambah').click(function(){
			$.ajax({
				url: "<?php echo base_url(); ?>arsip/lampiran_tambah/<?php echo $this->uri->segment(3); ?>",
				success:function(response){
					$("#tmpModal2").html(response);
					$('#modalTambah').modal('show');
				},
				dataType:"html"});
			return false;
		});
	});
	
	function segarkan_lampiran(){
		$.get("<?php echo base_url(); ?>arsip/lampiran_list/<?php echo $this->uri->segment(3); ?>", function(data) {
			$("#tabel_lampiran").html(data);
		});
	}
</script>

