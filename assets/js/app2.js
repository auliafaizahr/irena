$(document).ready(function(){
	
	
	
});
		
function showLoading(){
	document.getElementById("loader").style = "visibility: visible";
	$('#loader').fadeOut(1000);
}

function notif(judul, isi){
	setTimeout(function() {
		toastr.options = {
			closeButton: true,
			progressBar: true,
			showMethod: 'slideDown',
			timeOut: 4000
		};
		toastr.success(isi, judul);

	}, 1300);
}

function notif_bahaya(){
	var isi = "Silahkan hubungi Bang Firman.";
	var judul = "Bah!";
	
	setTimeout(function() {
		toastr.options = {
			closeButton: true,
			progressBar: true,
			showMethod: 'slideDown',
			timeOut: 4000
		};
		toastr.error(isi, judul);

	}, 1300);
}
