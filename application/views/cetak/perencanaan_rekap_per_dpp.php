<!DOCTYPE html>
<html>
<head>
<style>
table {
    border-collapse: collapse;
    width: 70%;
}


th, td {
    padding: 8px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}
</style>
</head>
<body>

<h3>REKAPITULASI PERENCANAAN PROYEK SBSN</h3> <br> <br>
<table>
	<thead>
	<tr>
		<th style="width: 3%; text-align:center;">#</th>
		<th style="width: 10%; text-align:center;">DPP</th>
		<th style="width: 10%; text-align:center;">Jumlah Proyek</th>
		<th style="width: 20%; text-align:center;">Nilai<br><small>(dalam Rupiah Miliar)</small></th>
	</tr>
	</thead>
	<tbody>
		<?php 
			$no=0;
			$jumlah_proyek=0;
			$total_nilai=0;
			foreach($rekap_per_dpp->result() as $row):
			$no++;
			$jumlah_proyek=$jumlah_proyek+$row->jumlah;
			$total_nilai=$total_nilai+$row->nilai;
		?>
			<tr>
				<td style="text-align:center;"><?php echo $no; ?></td>
				<td style="text-align:center;"><?php echo $row->alokasi; ?></td>
				<td style="text-align:center;"><?php echo number_format($row->jumlah); ?></td>
				<td style="text-align:right;"><?php echo number_format($row->nilai,1); ?></td>
			</tr>
		
		<?php endforeach; ?>
			
			<tr>
				<td colspan="2" style="text-align:center;"><b>Total</b></td>
				<td style="text-align:center;"><b><?php echo $jumlah_proyek; ?></b></td>
				<td style="text-align:right;"><b><?php echo number_format($total_nilai,1); ?></b></td>
			</tr>
			
	</tbody>
</table>

</body>
</html>