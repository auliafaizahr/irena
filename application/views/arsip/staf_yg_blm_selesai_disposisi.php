<?php 
	if($staf->num_rows() == "0"){
		echo "Semua staf menyelesaikan disposisi!";
	}else{
		foreach($staf->result() as $row):
			echo '<span class="label label-primary">'.$row->nama_panggilan.' <i class="fa fa-caret-right"></i> '.$row->jlh.'</span> ';
		endforeach;
	}
 ?>