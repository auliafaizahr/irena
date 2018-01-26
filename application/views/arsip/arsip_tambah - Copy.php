<div class="modal inmodal fade" id="modalTambah" tabindex="-1" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
	<div class="modal-dialog ">
		<div class="modal-content">
			<div class="ibox">
				<div class="ibox-title">
					<h5>Tambah Arsip</h5>
				</div>
				<div class="ibox-content">
					<form class="form-horizontal" id="htmlForm" action="" method="post" enctype="multipart/form-data"> 
						<div class="form-group">
							<label class="col-sm-3 control-label">Jenis</label>
							<div class="col-sm-9">
								<select name="id_jenis" class="form-control m-b" required>
									<option value=""></option>
									<?php foreach($jenis_arsip as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Tingkat</label>
							<div class="col-sm-9">
								<select name="id_tingkat" class="form-control m-b" required="required">
									<option value=""></option>
									<?php foreach($tingkat_arsip as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Status</label>
							<div class="col-sm-9">
								<select name="id_status" class="form-control m-b" required>
									<option value=""></option>
									<?php foreach($status_arsip as $row){ ?>
										<option value="<?php echo $row->id; ?>"><?php echo $row->nama; ?></option>';
									<?php } ?>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Nomor</label>
							<div class="col-sm-9">
								<input type="text" name="no" class="form-control" placeholder="Nomor Arsip" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Tanggal Surat</label>
							<div class="col-sm-9">
								<div class="input-group date" >
									<span class="input-group-addon"><i class="fa fa-calendar"></i></span><input type="text" name= "tgl" id="tgl_arsip" class="form-control" data-date-format='yyyy-mm-dd'>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Perihal</label>
							<div class="col-sm-9">
								<input type="text" name="perihal" class="form-control" placeholder="Perihal Arsip" required>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Dari</label>
							<div class="col-sm-9">
								<input type="text" name="dari" class="form-control" placeholder="Dari" required>
							</div>
						</div>
						
						<div class="form-group">
							<label class="col-sm-3 control-label">Tanggal Terima</label>
							<div class="col-sm-9">
								<div class="input-group date">
									<span class="input-group-addon"><i class="fa fa-calendar"></i></span><input id="tgl_terima" type="text" name= "tgl_terima" class="form-control" data-date-format='yyyy-mm-dd' required>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Ringkasan</label>
							<div class="col-sm-9">
								<textarea name="ringkasan" class="col-sm-12" rows="5" ></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">Keyword</label>
							<div class="col-sm-9">
								<textarea name="keywords" class="col-sm-12" rows="5" required ></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-3 control-label">File</label>
							<div class="col-sm-9">
								<input type = "file" name = "file" size = "20" /> 
							</div>
						</div>
						<input type="hidden" name="update_by" class="form-control" value="<?php echo $this->session->userdata('id'); ?>">
					</form>
				</div>
			<div class="modal-footer">					
				<button type="button" id="tblSimpan" class="btn btn-primary">Simpan</button>
				<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
			</div>
		</div>
	</div>
</div>


<script>
	
	
    $(document).ready(function(){
		
		$('#tblSimpan').click(function()
		{
			$.ajax({
				url: "<?php echo base_url(); ?>arsip/simpan/tambah",
				type: "POST",
				data: $('#htmlForm').serialize(),
				success:function(html){
					$('#modalTambah').modal('hide');
					segarkan_data();
					notif("Informasi", "Data berhasil disimpan.");

				},
				error: function(){
					alert('Error Updating!');
				}
				
			});
			
			/*
			$.ajax
			({
				url : "<?php echo base_url(); ?>arsip/simpan",
				type: "POST",
				data: $('#htmlForm').serialize(),
				dataType: "JSON",
				success: function(response){
					$('#modalTambah').modal('hide');
					notif("ditutul", "tutupajssa");
					
					//toastr.success('Item Updated Successfully.', 'Success Alert', {timeOut: 5000});
					/*
					$.ajax
					({
						url: "<?php echo base_url(); ?>arsip/shodata",
						success:function(response){
							notif("ditutul", "tutupajssa");
						},
						dataType:"html"
					});
					*/
			/*		
				},
				error: function (jqXHR, textStatus, errorThrown)
				{
					alert('Error adding / update data');
				}
			});
			*/
		});
		
		$('#tblTutup').click(function(){
			//notif("ditutul", "tutupaja");
			$.ajax({
				url: "<?php echo base_url(); ?>arsip/shodata",
				beforeSend: function(){
					//notif_bahaya("Data tak jadi disimpan loh", "tutupaja");
					//showLoading();
					//showLoading2();
					//$('#loader').fadeOut(1000);
				},
				success:function(response){
					$("#tabel_arsip").html(response);
					//$('#tabel_arsip').html();
				},
				dataType:"html",
				error: function(){
					alert('gagal noh!');
				}
				
			});
			//alert('tak oke');
		});
		
		function showAllData(){
			$.ajax({
				type: 'ajax',
				url: '<?php echo base_url() ?>employee/showAllEmployee',
				async: false,
				dataType: 'json',
				success: function(data){
					var html = '';
					var i;
					for(i=0; i<data.length; i++){
						html +='<tr>'+
									'<td>'+data[i].id+'</td>'+
									'<td>'+data[i].employee_name+'</td>'+
									'<td>'+data[i].address+'</td>'+
									'<td>'+data[i].created_at+'</td>'+
									'<td>'+
										'<a href="javascript:;" class="btn btn-info item-edit" data="'+data[i].id+'">Edit</a>'+
										'<a href="javascript:;" class="btn btn-danger item-delete" data="'+data[i].id+'">Delete</a>'+
									'</td>'+
							    '</tr>';
					}
					$('#showdata').html(html);
				},
				error: function(){
					alert('Could not get Data from Database');
				}
			});
		}
	
		function ok(){
		setTimeout(function() {
                toastr.options = {
                    closeButton: true,
                    progressBar: true,
                    showMethod: 'slideDown',
                    timeOut: 4000
                };
                toastr.success('Responsive Admin Theme', 'data ok');

            }, 1300);
		}
		
		$("#tgl_arsip").datepicker({
			todayHighlight: true
			});
			
		$("#tgl_terima").datepicker({
			todayHighlight: true
			});
			
		$('.codemirror').summernote({
			height: 150,
			codemirror: { // codemirror options
				mode: 'text/html',
				htmlMode: true,
				lineNumbers: true,
				theme: 'monokai'
			}
		});
		

	});
</script>


<script>
/*
$(document).ready(function(){

$('#tblSimpan').click(function(){
var url;
url = "<?php echo base_url(); ?>wilayah/saveAddProvinsi";

$.ajax({
url : url,
type: "POST",
data: $('#htmlForm').serialize(),
dataType: "JSON",
done: function(data)
{
$('#modalTambahProvinsi').modal('hide');
$.ajax({
url: "<?php echo base_url(); ?>arsip/shodata",
success:function(response){
ok();
},
dataType:"html"});
},
error: function (jqXHR, textStatus, errorThrown)
{
alert('Error adding / update data');
}
});

});

$('#tblTutup').click(function(){
notif("ditutul", "tutupaja");
});
*/

</script>

