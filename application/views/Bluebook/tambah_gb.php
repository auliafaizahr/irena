<div class="modal inmodal fade" id="modalGB" role="dialog"  aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
    <div class="modal-content">  
				<div class="ibox-title">
					<h5>Tambahkan ke Greenbook </h5>
				</div>
				<form class="form-horizontal" id="htmlForm" action="" method="post" name="keBB" enctype="multipart/form-data"> 
					<div class="ibox-content">
						<div class="form-group">
							<label class="col-sm-4 control-label">Proyek</label>
							<div class="col-sm-8">
								<div class="checkbox">
										<label><?php echo $detail->judul_proyek_id; ?></label>
								</div>
							</div>
						</div><hr />
						<div class="form-group">
							<label for="nilai_layak" class="col-sm-4 control-label">Hasil Penilaian</label>
							<div class="col-sm-8">
								<div class="checkbox">
									<label>
										<input type="checkbox" id="check_nilai_layak"> Usulan Layak
										<input type="hidden" name="nilai_layak" id="nilai_layak" class="form-control" value="">
										<input type="hidden" name="id" id="id" class="form-control" value="<?php echo $detail->id; ?>">
										<input type="hidden" name="id_usulan" id="id_usulan" class="form-control" value="<?php echo $detail->id_usulan; ?>">
										<!-- <input type="hidden" name="id_bluebook" id="id_bluebook" class="form-control" value="<?php echo $detail->id_bluebook; ?>">
										<input type="hidden" name="id_instansi" id="id_instansi" class="form-control" value="<?php echo $detail->id_instansi; ?>">
										<input type="hidden" name="id_status_lender" id="id_status_lender" class="form-control" value="<?php echo $detail->id_status_lender; ?>">
										<input type="hidden" name="id_status_lembaga" id="id_status_lembaga" class="form-control" value="<?php echo $detail->id_status_lembaga; ?>">
										<input type="hidden" name="instansi_pelaksana" id="instansi_pelaksana" class="form-control" value="<?php echo $detail->instansi_pelaksana; ?>">
										<input type="hidden" name="judul_proyek_id" id="judul_proyek_id" class="form-control" value="<?php echo $detail->judul_proyek_id; ?>">
										<input type="hidden" name="judul_proyek_eng" id="judul_proyek_eng" class="form-control" value="<?php echo $detail->judul_proyek_eng; ?>">
										<input type="hidden" name="ruang_lingkup_id" id="ruang_lingkup_id" class="form-control" value="<?php echo $detail->ruang_lingkup_id; ?>">
										<input type="hidden" name="ruang_lingkup_eng" id="ruang_lingkup_eng" class="form-control" value="<?php echo $detail->ruang_lingkup_eng; ?>">
										<input type="hidden" name="durasi" id="durasi" class="form-control" value="<?php echo $detail->durasi; ?>">
										<input type="hidden" name="output" id="output" class="form-control" value="<?php echo $detail->output; ?>">
										<input type="hidden" name="outcome" id="outcome" class="form-control" value="<?php echo $detail->outcome; ?>">
										<input type="hidden" name="lokasi" id="lokasi" class="form-control" value="<?php echo $detail->lokasi; ?>">
										<input type="hidden" name="nilai_pinjaman" id="nilai_pinjaman" class="form-control" value="<?php echo $detail->nilai_pinjaman; ?>">
										<input type="hidden" name="id_program" id="id_program" class="form-control" value="<?php echo $detail->id_program; ?>">
										<input type="hidden" name="id_sektor" id="id_sektor" class="form-control" value="<?php echo $detail->id_sektor; ?>">
										
										
										<input type="hidden" name="nilai_hibah" id="nilai_hibah" class="form-control" value="<?php echo $detail->nilai_hibah; ?>">
										<input type="hidden" name="id_lender" id="id_lender" class="form-control" value="<?php echo $detail->id_lender; ?>">
										<input type="hidden" name="id_eselon_1" id="id_eselon_1" class="form-control" value="<?php echo $detail->id_eselon_1; ?>">
										<input type="hidden" name="nilai_pendamping" id="nilai_pendamping" class="form-control" value="<?php echo $detail->dana_pendamping; ?>">
										<input type="hidden" name="tahun_usulan" id="tahun_usulan" class="form-control" value="<?php echo $detail->tahun_usulan; ?>">
										<input type="hidden" name="proyeksi_tahun_pertama_penarikan" id="proyeksi_tahun_pertama_penarikan" class="form-control" value="<?php echo $detail->proyeksi_tahun_pertama_penarikan; ?>">
										<input type="hidden" name="id_status" id="id_status" class="form-control" value="<?php echo $detail->id_status; ?>">
										<input type="hidden" name="infra" id="infra" class="form-control" value="<?php echo $detail->infra; ?>"> -->
									
									</label>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="nilai_layak_ket" class="col-sm-4 control-label">Keterangan</label>
							<div class="col-sm-8">
								<textarea name="nilai_layak_ket" id="nilai_layak_ket" class="col-sm-12" rows="5">-</textarea>
							</div>
						</div>

					<div class="form-group">
					    <label for="id_greenbook" class="col-sm-3 control-label">Kode Greenbook </label>
					    <div class="col-sm-9">
					        <select name="id_greenbook" id="id_greenbook" class="form-control" >
					             <?php 
					                $query  = $this->Usulan_model->ambil_gb($detail->id_greenbook); 
					                foreach ($query as $key) 
					                {
					            ?>
					                <option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
					            <?php } ?>
					            <?php foreach($greenbook as $row){ ?>
					                <option value="<?php echo $row['id']; ?>"><?php echo $row['nama']; ?>
					              </option>
					            <?php } ?>
					        </select>
					    </div>
					</div>

					<div class="form-group">
                            <label for="id_bluebook" class="col-sm-3 control-label">Kode Bluebook </label>
                            <div class="col-sm-9">
                                <select name="id_bluebook" id="id_bluebook" class="form-control" >
                                     <?php 
                                        $query  = $this->Usulan_model->ambil_bb($detail->id_bluebook); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
                                    <?php } ?>
                                    <?php foreach($bluebook as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['nama']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                     <div class="form-group">
                            <label for="judul_proyek_eng" class="col-sm-3 control-label">Judul EN</label>
                            <div class="col-sm-9">
                                <input type="text" name="judul_proyek_eng" id="judul_proyek_eng" class="form-control" placeholder="Judul Proyek Dalam Bahasa Inggris" value="<?php echo $detail->judul_proyek_eng; ?>">
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="judul_proyek_id" class="col-sm-3 control-label">Judul ID</label>
                            <div class="col-sm-9">
                                <input type="text" name="judul_proyek_id" id="judul_proyek_id" class="form-control" placeholder="Judul Proyek Dalam Bahasa Indonesia" value="<?php echo $detail->judul_proyek_id; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="id_program" class="col-sm-3 control-label">Program </label>
                            <div class="col-sm-9">
                                <select name="id_program" id="id_program" class="form-control" >
                                     <?php 
                                        $query  = $this->Usulan_model->ambil_program_proyek_id($detail->id_program); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->nama_program; ?></option>
                                    <?php } ?>
                                    <?php foreach($program as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['nama_program']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="id_instansi" class="col-sm-3 control-label">Instansi Pengusul</label>
                            <div class="col-sm-9">
                                <select id="id_instansi" class="form-control" >
                                  
                                      
                                    <?php 
                                        $query  = $this->Usulan_model->ambil_instansi_id($detail->id_instansi); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->nama_instansi; ?></option>
                                    <?php } ?>
                                    
                                    <?php foreach($lembaga as $row){ ?>
                                        <option value="<?php echo $row['id_lembaga']; ?>"><?php echo $row['nama_instansi']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label for="id_eselon_1" class="col-sm-3 control-label">Instansi Pelaksana </label>
                            <div class="col-sm-9">
                                <textarea name="instansi_pelaksana" id="instansi_pelaksana" class="col-sm-12" rows="5" placeholder="instansi_pelaksana"><?php echo $detail->instansi_pelaksana; ?></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="durasi" class="col-sm-3 control-label">Durasi</label>
                            <div class="col-sm-6">
                                <input type="text" name="durasi" id="durasi" class="form-control" placeholder="Durasi Pelaksanaan (dalam bulan)" value="<?php echo $detail->durasi; ?>">
                            </div>
                            <label for="durasi" class="col-sm-3">Bulan</label>
                        </div>

                        <div class="form-group">
                            <label for="lokasi" class="col-sm-3 control-label">Lokasi </label>
                            <div class="col-sm-9">
                                <select name="lokasi" id="lokasi" class="form-control" multiple>
                           
                                <?php $key = array($detail->lokasi);
                                $a = array();
                                $a = explode(",", $detail->lokasi);
                                $key2 = array("1", "2", "4", "3");
                                 


                                foreach($lokasi as $row ){ ?>
                                <option value="<?php echo $row['id']; ?>" <?php echo in_array($row['id'] , $a) ? 'selected' : '' ?>><?php echo $row['nama']; ?>
                                 </option>
                                 <?php } ?>
                                 </select>
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="ruang_lingkup_eng" class="col-sm-3 control-label">Ruang Lingkup EN</label>
                            <div class="col-sm-9">
                             <textarea name="ruang_lingkup_eng" id="ruang_lingkup_eng" class="col-sm-12" rows="5" placeholder="Ruang Lingkup dalam Bahasa Inggris"><?php echo $detail->ruang_lingkup_eng; ?></textarea>
                            </div>
                               
                        </div>

                         <div class="form-group">
                            <label for="ruang_lingkup_id" class="col-sm-3 control-label">Ruang Lingkup ID</label>
                            <div class="col-sm-9">
                                <textarea name="ruang_lingkup_id" id="ruang_lingkup_id" class="col-sm-12" rows="5" placeholder="Ruang Lingkup dalam Bahasa Indonesia"><?php echo $detail->ruang_lingkup_id; ?></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="output" class="col-sm-3 control-label">Output</label>
                            <div class="col-sm-9">
                                <textarea name="output" id="output" class="col-sm-12" rows="5" placeholder="Output Proyek"><?php echo $detail->output; ?></textarea>
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="judul_id" class="col-sm-3 control-label">Outcome</label>
                            <div class="col-sm-9">
                                <textarea name="outcome" id="outcome" class="col-sm-12" rows="5" placeholder="Ringkasan Proyek"><?php echo $detail->outcome; ?></textarea>
                            </div>
                        </div>
                        



                        

                     <div class="form-group">
                            <label for="infra" class="col-sm-3 control-label">Kategori </label>
                            <div class="col-sm-9">
                                <select name="infra" id="infra" class="form-control" >
                                    <?php 
                                        $query  = $this->Usulan_model->ambil_infra_id($detail->infra); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
                                    <?php } ?>
                                    <?php foreach($infra as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['nama']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="id_sektor" class="col-sm-3 control-label">Sektor </label>
                            <div class="col-sm-9">
                                <select name="id_sektor" id="id_sektor" class="form-control"  >
                                     
                                    <?php foreach($sektor as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['nama']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                       
                        
                        
                        <div class="form-group">
                            <label for="proyeksi_tahun_pertama_penarikan" class="col-sm-3 control-label">Perkiraan Tahun Pertama Pelaksanaan</label>
                            <div class="col-sm-9">
                                <input type="text" name="proyeksi_tahun_pertama_penarikan" id="proyeksi_tahun_pertama_penarikan" class="form-control" placeholder="Proyeksi Tahun Pertama Penarikan" value="<?php echo $detail->proyeksi_tahun_pertama_penarikan; ?>">
                            </div>
                        </div>

                       
                        
                     
                       

                        

                         <div class="form-group">
                            <label for="nilai_pinjaman" class="col-sm-3 control-label">Nilai Pinjaman</label>
                            <div class="col-sm-9">
                                <input type="text" name="nilai_pinjaman" id="nilai_pinjaman" class="form-control" placeholder="Dana Pinjaman yang Diajukan" value="<?php echo $detail->nilai_pinjaman; ?>">
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="nilai_hibah" class="col-sm-3 control-label">Nilai Hibah</label>
                            <div class="col-sm-9">
                                <input type="text" name="nilai_hibah" id="nilai_hibah" class="form-control" placeholder="Nilai Hibah" value="<?php echo $detail->nilai_hibah; ?>">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="dana_pendamping" class="col-sm-3 control-label">Dana Pendamping</label>
                            <div class="col-sm-9">
                                <input type="text" name="dana_pendamping" id="dana_pendamping" class="form-control" placeholder="Dana Pendamping" value="<?php echo $detail->dana_pendamping; ?>">
                            </div>
                        </div>



                         <div class="form-group">
                            <label for="id_lender" class="col-sm-3 control-label">Indikasi Lender</label>
                            <div class="col-sm-9">
                                <select name="id_lender" id="id_lender" class="form-control" >
                                     <?php 
                                        $query  = $this->Usulan_model->ambil_lender($detail->id_lender); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->lender; ?></option>
                                    <?php } ?>
                                    <?php foreach($lender as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['lender']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                          <div class="form-group">
                            <label for="id_status" class="col-sm-3 control-label">Status Umum</label>
                            <div class="col-sm-9">
                                <select name="id_status" id="id_status" class="form-control" >
                                     <?php 
                                        $query  = $this->Usulan_model->status_umum($detail->id_status); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->nama; ?></option>
                                    <?php } ?>
                                    <?php foreach($status_umum as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['nama']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                         <div class="form-group">
                            <label for="id_status_lender" class="col-sm-3 control-label">Status Kesiapan Lender</label>
                            <div class="col-sm-9">
                                <select name="id_status_lender" id="id_status_lender" class="form-control" >
                                     <?php 
                                        $query  = $this->Usulan_model->status_lender($detail->id_status_lender); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->status; ?></option>
                                    <?php } ?>
                                    <?php foreach($status_lender as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['status']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="id_status_lembaga" class="col-sm-3 control-label">Status Kesiapan Instansi Pengusul</label>
                            <div class="col-sm-9">
                                <select name="id_status_lembaga" id="id_status_lembaga" class="form-control" >
                                     <?php 
                                        $query  = $this->Usulan_model->status_lembaga($detail->id_status_lembaga); 
                                        foreach ($query as $key) 
                                        {
                                    ?>
                                        <option value="<?php echo $key->id; ?>"><?php echo $key->status; ?></option>
                                    <?php } ?>
                                    <?php foreach($status_lembaga as $row){ ?>
                                        <option value="<?php echo $row['id']; ?>"><?php echo $row['status']; ?>
                                      </option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>


						
						<div class="modal-footer">					
						<button type="submit" id="tblSimpan" class="btn btn-primary">Simpan</button>
						<button type="button" id="tblTutup" class="btn btn-white" data-dismiss="modal">Tutup</button>
					</div>
						<input type="hidden" name="id" id="id" class="form-control" value="">
						
					</div>
					
				</form>
			</div>
		</div>
	</div>
</div>

				
<script>
    $(document).ready(function(){
		$('#check_nilai_layak').change(function() {
			if($("#check_nilai_layak").is(':checked') == true){
				$('#nilai_layak').val(2);
			}else{
				$('#nilai_layak').val(1);
			}
			
		});

		$("#id_instansi").select2({
            placeholder: "Pilih Instansi",
            width: "100%"
        });

         $("#id_sektor").select2({
            placeholder: "Pilih Sektor",
            width: "100%"
        });

           $("#id_infra").select2({
            placeholder: "Pilih Kategori",
            width: "100%"
        });
        
        $("#id_eselon_1").select2({
            placeholder: "Pilih Instansi Eselon I",
            width: "100%"
        });
        
        $("#id_donor").select2({
            placeholder: "Pilih Donor",
            width: "100%"
        });

        $("#id_program").select2({
            placeholder: "Pilih Program",
            width: "100%"
        });

        $("#id_greenbook").select2({
            placeholder: "Pilih Greenbook",
            width: "100%"
        });
        
        $("#id_mata_uang").select2({
            placeholder: "Pilih Mata Uang",
            width: "100%"
        });
        
        $("#id_jenis").select2({
            placeholder: "Pilih Tahun",
            width: "100%"
        });

         $("#id_bluebook").select2({
            placeholder: "Pilih Bluebook",
            width: "100%"
        });

        $("#id_lender").select2({
            placeholder: "Pilih Lender",
            width: "100%"
        });

         $("#id_status_lembaga").select2({
            placeholder: "Pilih Status Lembaga",
            width: "100%"
        });


         $("#id_greenbook").select2({
            placeholder: "Pilih Kode Greenbook",
            width: "100%"
        });

          $("#lokasi").select2({
            placeholder: "Pilih Lokasi",
            width: "100%",
            multiple:true,
            tags: true
        });
        
        

         $("#id_status_lender").select2({
            placeholder: "Pilih Status Lender",
            width: "100%"
        });

		function fresh() {
		location.reload();
		}
		
		$('#htmlForm').submit(function(e) {
			e.preventDefault();

			var me 			= $(this);
			
			var id					= $("#id").val();
			var nilai_layak 		= $("#nilai_layak").val();
			var id_usulan 			= $("#id_usulan").val();
			var nilai_layak_ket 	= $("#nilai_layak_ket").val();
			var judul_proyek_id 	= $("#judul_proyek_id").val();
			var judul_proyek_eng 	= $("#judul_proyek_eng").val();
			var ruang_lingkup_id 	= $("#ruang_lingkup_id").val();
			var ruang_lingkup_eng 	= $("#ruang_lingkup_eng").val();
			var id_instansi 		= $("#id_instansi").val();
			var id_program		 	= $("#id_program").val();
			var instansi_pelaksana		 	= $("instansi_pelaksana").val();
			var proyeksi_tahun_pertama_penarikan		 	= $("#proyeksi_tahun_pertama_penarikan").val();
			var id_lender		 	= $("#id_lender").val();
			var id_eselon_1		 	= $("#id_eselon_1").val();
			var output		 		= $("#output").val();
			var outcome		 		= $("#outcome").val();
			var nilai_hibah		 	= $("#nilai_hibah").val();
			var nilai_pinjaman		 		= $("#nilai_pinjaman").val();
			var dana_pendamping		 		= $("#dana_pendamping").val();
			var id_status_lembaga		 	= $("#id_status_lembaga").val();
			var id_status_lender		 	= $("#id_status_lender").val();
			var durasi		 				= $("#durasi").val();
			var lokasi		 				= $("#lokasi").val();
			var tahun_usulan			 	= $("#tahun_usulan").val();
			var id_sektor		 			= $("#id_sektor").val();
			var id_status		 			= $("#id_status").val();
			var infra		 				= $("#infra").val();
			var id_bluebook		 				= $("#id_bluebook").val();
			var id_greenbook		 				= $("#id_greenbook").val();






			
			
            var form_data 	= new FormData();
			
			form_data.append('id', id);
			form_data.append('durasi', durasi);

			form_data.append('nilai_layak', nilai_layak);
			form_data.append('nilai_layak_ket', nilai_layak_ket);
			form_data.append('judul_proyek_id', judul_proyek_id);
			form_data.append('judul_proyek_eng', judul_proyek_eng);
			form_data.append('id_program', id_program);
			form_data.append('instansi_pelaksana', instansi_pelaksana);
			form_data.append('id_instansi', id_instansi);
			form_data.append('proyeksi_tahun_pertama_penarikan', proyeksi_tahun_pertama_penarikan);
			form_data.append('id_lender', id_lender);
			form_data.append('id_eselon_1', id_eselon_1);
			form_data.append('output', output);
			form_data.append('outcome', outcome);
			form_data.append('nilai_hibah', nilai_hibah);
			form_data.append('nilai_pinjaman', nilai_pinjaman);
			form_data.append('dana_pendamping', dana_pendamping);
			form_data.append('id_status_lender', id_status_lender);
			form_data.append('id_status_lembaga', id_status_lembaga);
			form_data.append('id_usulan', id_usulan);
			form_data.append('ruang_lingkup_eng', ruang_lingkup_eng);
			form_data.append('ruang_lingkup_id', ruang_lingkup_id);
			form_data.append('lokasi', lokasi);
			form_data.append('tahun_usulan', tahun_usulan);
			form_data.append('id_sektor', id_sektor);
			form_data.append('id_status', id_status);
			form_data.append('infra', infra);
			form_data.append('id_bluebook', id_bluebook);
			form_data.append('id_greenbook', id_greenbook);





			
			


            $.ajax({
            	 type: 'POST',
                url: '<?php echo base_url(); ?>Bluebook/tambah_ke_GB',
                dataType: 'json',
                cache: false,
                contentType: false,
                processData: false,
                data: form_data,
               
                success: function(response){
                    if (response.success == true) {

						$('#modalGB').modal('hide');
						alert(response);
						console.log("ok");
						fresh();
						
						notif("Informasi", "Penilaian kelayakan telah berhasil disimpan.");
					}
					else {
						$.each(response.messages, function(key, value) {
							var element = $('#' + key);
							
							element.closest('div.form-group')
							.removeClass('has-error')
							.addClass(value.length > 0 ? 'has-error' : 'has-success')
							.find('.text-danger')
							.remove();

							element.after(value);
						});
					}
                }
            });
		});
	});
</script>



