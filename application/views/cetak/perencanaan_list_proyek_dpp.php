<!DOCTYPE html>
<html>
<head>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th {
    background-color: #4CAF50;
    color: white;
}

th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
</style>
</head>
<body>

<h3>DAFTAR PRIORITAS PROYEK SBSN 2013-2016</h3> <br> <br>
<table>
	<thead>
	<tr>
		<th style="width: 3%; text-align:center;">#</th>
		<th style="text-align:center; width: 10%;">DPP</th>
		<th style="text-align:center; width: 20%;">Instansi</th>
		<th style="text-align:center;">Proyek</th>
		<th style="text-align:center; width: 20%;">Nilai<br><small>(dalam Rp. Miliar)</small></th>
	</tr>
	</thead>
	<tbody>
		<?php 
			$no=0;
			$total_nilai=0;
			foreach($list_proyek->result() as $row):
			$no++;
			$total_nilai=$total_nilai+$row->nilai;
		?>
			<tr>
				<td style="text-align:center;"><?php echo $no; ?></td>
				<td style="text-align:center;"><?php echo $row->dpp; ?></td>
				<td><?php echo $row->instansi; ?></td>
				<td><?php echo $row->proyek; ?></td>
				<td style="text-align:right;"><?php echo number_format($row->nilai/10000000000,1); ?></td>
			</tr>
		
		<?php endforeach; ?>
			
			<tr>
				<td colspan="4" style="text-align:center;"><b>Total</b></td>
				<td style="text-align:right;"><b><?php echo number_format($total_nilai/10000000000,1); ?></b></td>
			</tr>
			
	</tbody>
</table>

</body>
</html>