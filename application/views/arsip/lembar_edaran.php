<table style="width: 100%; ">
	<tr>
		<td valign="top" align="center">
			<span style="font-family: helvetica; font-size: 30px;"><b> LEMBAR EDARAN</b></span>
		</td>
	</tr>
	<tr>
		<td valign="top" align="center">
			<b><span style="font-family: helvetica; font-size: 15px;">DIREKTORAT PERENCANAAN DAN PENGEMBANGAN PENDANAAN PEMBANGUNAN</b></span>
		</td>
	</tr>
</table> <br /> <br />
<table style="width: 100%; margin: 0 auto;  border-collapse: collapse;">
	<tr style="height: 50px;">
		<td colspan="2" align="center" style="border: 1px solid #000;">
			<span style="font-family: helvetica; font-size: 12px;"><b>Nomor Disposisi</b></span>
		</td>
		<td colspan="2" align="center" style="border: 1px solid #000;">
			<span style="font-family: helvetica; font-size: 12px;"><b>Diterima Tanggal</b></span>
		</td>
		<td colspan="2" align="center" style="border: 1px solid #000;">
			<span style="font-family: helvetica; font-size: 12px;"><b>Tingkat Surat</b></span>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center" style="border: 1px solid #000;">
			<span style="font-family: helvetica; font-size: 12px;"></span>
		</td>
		<td colspan="2" align="center" style="border: 1px solid #000;">
			<span style="font-family: helvetica; font-size: 12px;"><?php echo date('d/m/Y', strtotime($arsip->tgl_terima));?></span>
		</td>
		<td colspan="2" align="center" style="border: 1px solid #000;">
			<span style="font-family: helvetica; font-size: 12px;"><b>Rahasia / Segera / Biasa</b></span>
		</td>
	</tr>
	<tr>
		<td colspan="6" style="border: 1px solid #000; font-family: helvetica; font-size: 12px;">
			<table >
				<tr style="padding: 10px;">
					<td>Diterima dari</td>
					<td>:</td>
					<td><?php echo $arsip->dari;?></td>
				</tr>
				<tr style="padding: 10px;">
					<td>No./Tgl. Surat</td>
					<td>:</td>
					<td><?php echo $arsip->no;?></td>
				</tr>
				<tr style="padding: 10px;">
					<td>Perihal</td>
					<td>:</td>
					<td><?php echo $arsip->perihal;?></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="3" style="border: 1px solid #000; font-family: helvetica; font-size: 14px; width:50%;" align="center"> <b>Diteruskan Kepada:</b>
		</td>
		<td colspan="3" style="border: 1px solid #000; font-family: helvetica; font-size: 14px; width:50%;" align="center"> <b>Disposisi:</b>
		</td>
	</td>
	<tr>
		<td colspan="3" style="border: 1px solid #000; font-family: helvetica; font-size: 14px; padding: 5px; width:50%;" align="center">
			<table>
				<?php $no=1; foreach($pns->result() as $row): ?>
				<tr>
					<td><img src="./assets/images/square.png" height='20px' align='ABSBOTTOM' /> </td>
					<td><?php echo $no++; echo ". "; echo $row->nama; ?><br /></td>
					
				</tr>
				<?php endforeach; ?>
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<?php $no=1; foreach($non_pns->result() as $row): ?>
				<tr>
					<td><img src="./assets/images/square.png" height='20px' align='ABSBOTTOM' /> </td>
					<td><?php echo $no++; echo ". "; echo $row->nama; ?><br /></td>	
				</tr>
				<?php endforeach; ?>
				
			</table> 
		</td>
		<td colspan="3" style="border: 1px solid #000; font-family: helvetica; font-size: 14px; width:50%;" align="center">
			<table>
				<?php $no=1; foreach($aksi_disposisi->result() as $row): ?>
				<tr>
					<td><img src="./assets/images/square.png" height='20px' align='ABSBOTTOM' /> </td>
					<td><?php echo $no++; echo ". "; echo $row->nama; ?><br /></td>
					
				</tr>
				<?php endforeach; ?>
				
			</table> 
		</td>
	</tr>
	<tr>
		<td colspan="6" style="border: 1px solid #000; font-family: helvetica; font-size: 14px; padding: 10px; width:50%;" align="top"> <i>Catatan:</i>
						<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<p align="right"><i><b> Teni Widuriyanti&nbsp;&nbsp;&nbsp; </b></i></p>
		</td>
	</tr>
</table>