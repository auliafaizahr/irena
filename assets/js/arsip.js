$(document).ready(function(){
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
});