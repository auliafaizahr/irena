<!-- Tampilkan semua data dari tabel -->
<div class="table-responsive">
    <table class="table table-striped">
    	<thead>
            <tr>
                <th data-field="id" class="text-center">#</th>
                <th data-field="nama" class="text-center"  data-sortable="true">Instansi</th>
                <th data-field="judul" class="text-center">Judul</th>
                <th data-field="nilai" class="text-center">Nilai <br>(Rp. Miliar)</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                //var_dump( $this->db->last_query());
                $no=0;
                foreach($proyek->result() as $row):
                $no++; 
            ?>
            <tr>
                <td><?php echo $no;?></td>
                <td><?php echo $row->singkatan;?></td>
                <td><a href="#" title="Detil Proyek" target="_blank"><?php echo $row->judul;?></a></td>
				<td><?php echo number_format($row->nilai/1000000000, 2);?></td>
            </tr>
            <?php
                endforeach;
            ?>
        </tbody>
    </table>
</div>