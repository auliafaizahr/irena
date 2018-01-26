/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : irena

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-11-16 20:05:02
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `irena_arsip`
-- ----------------------------
DROP TABLE IF EXISTS `irena_arsip`;
CREATE TABLE `irena_arsip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis` int(11) DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `id_tingkat` int(11) DEFAULT NULL,
  `no` varchar(255) DEFAULT NULL,
  `perihal` varchar(255) DEFAULT NULL,
  `dari` varchar(255) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `ringkasan` text,
  `keywords` text,
  `berkas` varchar(255) DEFAULT NULL,
  `tgl_terima` date DEFAULT NULL,
  `selesai_cat` text,
  `selesai_by` int(11) DEFAULT NULL,
  `selesai_date` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_arsip
-- ----------------------------
INSERT INTO irena_arsip VALUES ('62', '1', '2', '3', 'S-85/MK.8/2017', 'Permohonan Bahan Penyusunan Prospectus Dalam Rangka Penerbitan Surat Utang Negara Valuta Asing untuk Pembiayaan Defisit APBN Tahun 2018', 'Menteri Keuangan', '2017-08-22', '-', '-', null, '2017-08-29', 'Sesuai dengan arahan Ibu Direktur.', '1', '2017-11-06 00:00:00', '1', '2017-11-06 18:42:41');
INSERT INTO irena_arsip VALUES ('76', '1', '1', '3', 'B-0407/PTRI-NEWYORK/171026', 'Laporan Pertemuan G20 Development Working Group (DWG) Workshop on Sustainable Development and Inclusive Globalisation Meeting di New York, Amerika Serikat, 16-17 Oktober 2017', 'KUAI PTRI New York', '2017-10-10', 'G20 DWG Workshop merupakan kegiatan untuk mendiskusikan berbagai masukan dan rekomendasi dari dari apa yang telah dicapai pada Presidensi Jerman 2017 terkait isu Pembangunan untuk mendukung pencapaian agenda 2030, serta harapan dan tindak lanjut pembahasan di tingkat DWG pada Presidensi Argentina 2018.\r\nArgentina saat ini belum memfinalisasi prioritasnya, namun secara umum akan membahas isu kesehatan, pendidikan, anti korupsi, pertanian, energi, perubahan iklim,ketenagakerjaan, digitalisasi, perdagangan, investasi, dan infrastruktur', 'Laporan Pertemuan G20 Development Working Group (DWG) Workshop on Sustainable Development and Inclusive Globalisation Meeting di New York, Amerika Serikat, 16-17 Oktober 2017', '2017-10-10-8-0407_PTRI-NEWYORK_171026_Laporan_Pertemuan_G20_(DWG)_Workshop_on_Sustainable_Development_and_Inclusive_Globalisation_Meeting_di_New_York,Amerika_Serikat,_16-17_Oktober_2017.pdf', '2017-10-31', null, null, null, '11', '2017-11-07 11:03:55');
INSERT INTO irena_arsip VALUES ('77', '1', '1', '3', '270/D.8.ND/11/2017', 'Penyampaian Usulan Kajian Strategis dan Policy Paper Lingkup Kedeputian Bidang Pendanaan Pembangunan Tahun 2018', 'Deputi Bidang Pendanaan', '2017-11-02', 'Penyampaian Usulan KaJian Strategis dan Policy Paper Lingkup Kedeputian Bidang Pendanaan Pembangunan Tahun 2018', 'Penyampaian Usulan KaJian Strategis dan Policy Paper Lingkup Kedeputian Bidang Pendanaan Pembangunan Tahun 2018', '2017-11-02-270_D.8.ND_11_2017_Penyampaian_Usulan_Kajian_Strategis_dan_Policy_Paper_Lingkup_Kedeputian_Bidang_Pendanaan_Pembangunan_Tahun_20181.pdf', '2017-11-02', null, null, null, '11', '2017-11-07 11:04:41');
INSERT INTO irena_arsip VALUES ('78', '1', '1', '3', 'UND-456/AG .4/20 17', 'Undangan Rapat Realokasi Pembangunan Gedung KUA dari Kabupaten Belu NTT ke Kota Bitung Sulawesi Utara', 'Kementerian Keuangan', '2017-11-01', 'Undangan Rapat Realokasi Pembangunan Gedung KUA dari Kabupaten Belu NTT ke Kota Bitung Sulawesi Utara\r\nHari, tanggal        : Rabu, 1 November 2017\r\nJam                        : 14.00 WIB s.d. selesai\r\nTempat                 : Ruang Rapat DJA, Gedung Sutikno Slamet Jl. Wahidin Raya No.1, Jakarta Pusat, 10710', 'Undangan Rapat Realokasi Pembangunan Gedung KUA dari Kabupaten Belu NTT ke Kota Bitung Sulawesi Utara', '2017-11-01-UND-456_AG.4_2017_Undangan_Rapat_Realokasi_Pembangunan_Gedung_KUA_dari_Kabupaten_Belu_NTT_ke_Kota_Bitung_Sulawesi_Utara.pdf', '2017-11-01', null, null, null, '11', '2017-11-07 12:32:31');
INSERT INTO irena_arsip VALUES ('79', '1', '2', '3', 'UND-96/D.I.M.EKON/ 10/2017', 'FGD Alternatif Pembiayaan Infrastruktur an tara lain melalui Credit Enhancement, Obligasi Daerah, dan Green Infrastructure Financing', 'Kemenko Perekonomian', '2017-10-24', 'FGD Alternatif Pembiayaan Infrastruktur an tara lain melalui Credit Enhancement, Obligasi Daerah, dan Green Infrastructure Financing\r\nHari/Tanggal   : Kamis, 2 November 2017\r\nWaktu          : 09.00 WIB- selcsai\r\nTempat         : Ruang Sera.yu Lt3 - Gedung Ali Wardhana Jl. Lapangan Banteng Timur No.2-4. Jakarta Pusat.\r\nPimpinan Rapat : Deputi Koordinasi Bidang Ekonomi Makro dan Keuangan\r\nAgenda         : 1. AltematifPembiayaan Infrastruktur antar lain melalui credit enhancement. Obligasi Daerah, dan green infrastruclure financing\r\n                 2. Sharing knowledged tentang municipal financing di IndiaPermohonan Sebagai Narasumber Dalam rangka mendapalkan masukan bagi penyempurnaan proses perencanaan dan penetapan pinjaman luar negeri yang diteruskan sebagai hibah kepada Pemda,', 'FGD Alternatif Pembiayaan Infrastruktur an tara lain melalui Credit Enhancement, Obligasi Daerah, dan Green Infrastructure Financing', '2017-10-24-UND-96_D.I.M.EKON_10_2017_FGD_Alternatif_Pembiayaan_Infrastruktur_an_tara_lain_melalui_Credit_Enhancement,_Obligasi_Daerah,_dan_Green_Infrastructure_Financing.pdf', '2017-11-07', 'hadir', '3', '2017-11-16 00:00:00', '11', '2017-11-07 12:38:35');
INSERT INTO irena_arsip VALUES ('80', '1', '1', '2', 'S-792/PR/2017', 'Perjanjian Realisasi Pinjaman Dalam Negeri (PDN) Tahun Anggaran 2016 antara Pemerintah Indonesia dan PT. Bank Negara Indonesia (Persero), Tbk. - untuk kegiatan pada Kementerian Pertahanan yaitu Pengadaan Platform KCR; Pengadaan Pesud MPA (Full Mission); d', 'DITJEN PENGELOLMN PEMBIAYAAN DAN RISIKO', '2017-10-26', 'Perjanjian Realisasi Pinjaman Dalam Negeri (PDN) Tahun Anggaran 2016 antara Pemerintah Indonesia dan PT. Bank Negara Indonesia (Persero), Tbk. - untuk kegiatan pada Kementerian Pertahanan yaitu Pengadaan Platform KCR; Pengadaan Pesud MPA (Full Mission); dan Pengadaan Full Combat Mission untuk Heli AKS.', 'Perjanjian Realisasi Pinjaman Dalam Negeri (PDN) Tahun Anggaran 2016 antara Pemerintah Indonesia dan PT. Bank Negara Indonesia (Persero), Tbk', '2017-10-26-S-792_PR_2017_Perjanjian_(PDN)_TA_2016_antara_RI_dan_PT._BNI_(Persero),_Tbk.-_kegiatan_Kementerian_Pertahanan_yaitu_Pengadaan_Platform_KCR__Pesud_MPA_Full_Combat_Mission_untuk_Heli_AK.pdf', '2017-10-26', null, null, null, '11', '2017-11-07 12:49:16');
INSERT INTO irena_arsip VALUES ('81', '1', '1', '3', '272/D.B.ND/11/2017 dan 350/D.3.ND/11/2017', 'Laporan Pelaksanaan Pertemuan the 6t11 Session of the Assembly and 10th Session ofthe Council ofGGGI di Addis Ababa, Ethiopia', 'D 8 DAN DEPUTI BIDANG KEMARITIMAN DAN SDA', '2017-11-07', 'Laporan Pelaksanaan Pertemuan the 6t11 Session of the Assembly and 10th Session of the Council of GGGI di Addis Ababa, Ethiopia', 'Laporan Pelaksanaan Pertemuan the 6t11 Session of the Assembly and 10th Session of the Council of GGGI di Addis Ababa, Ethiopia', '2017-11-07-272_D.8.ND_11_2017_350_D.3.ND_11_2017_Laporan_Pelaksanaan_Pertemuan_the_6t11_Session_of_the_Assembly_and_10th_Session_ofthe_Council_ofGGGI_di_Addis_Ababa,_Ethiopia.pdf', '2017-11-07', null, null, null, '11', '2017-11-07 13:00:04');
INSERT INTO irena_arsip VALUES ('82', '1', '1', '3', '302/I.02.ND/11/2017', 'Rapat Koordinasi dan Konfirmasi terkait Kebijakan Pengadaan Alutsista dengan Pembiayaan Pinjaman Luar Negeri dengan BPK', 'IBKK', '2017-11-01', 'Rapat Koordinasi dan Konfirmasi terkait Kebijakan Pengadaan\r\nAlutsista dengan Pembiayaan Pinjaman Luar Negeri dengan BPK\r\nHari/Tanggal : Senin, 6 November 2017\r\nWaktu             : 16.00 WIB selesai\r\nTempat           : Ruang lnspektur Bidang Kinerja Kelembagaan, Gedung Baru Lantai 5, Kementerian PPN/Bappenas.', 'Rapat Koordinasi dan Konfirmasi terkait Kebijakan Pengadaan Alutsista dengan Pembiayaan Pinjaman Luar Negeri dengan BPK', '2017-11-01-302_I.02.ND_11_2017_Rapat_Koordinasi_dan_Konfirmasi_terkait_Kebijakan_Pengadaan_Alutsista_dengan_Pembiayaan_Pinjaman_Luar_Negeri_dengan_BPK.pdf', '2017-11-01', null, null, null, '11', '2017-11-07 13:03:31');
INSERT INTO irena_arsip VALUES ('83', '1', '1', '3', '473/Dt.8.4.ND/11/2017', 'Usulan Kegiatan Arise Plus Indonesia', 'Direktur Pendanaan Luar Negeri Multilateral', '2017-11-03', 'Usulan Kegiatan Arise Plus Indonesia bersama ini kami sampaikan beberapa hal sebagai berikut:\r\n1. Kegiatan tersebut akan dibiayai dengan hibah dari Uni Eropa sebesar EUR 10.000.000 dengan durasi selama 5 tahun (2018-2022).\r\n2. Deputi Bidang Ekonomi, Bappenas akan bertindak sebagai executing agency serta Kementerian Perdagangan dan Kementerian Hukum dan HAM sebagai implementing agency.\r\n3. Deputi Bidang Ekonomi Bappenas telah menyampaikan kelengkapan persyaratan usulan yang terdiri dari Daftar Isian Pengusulan Kegiatan (DIPK) dan Dokumen Usulan\r\nKegiatan (DUK) kepada Sekretaris Kementerian PPN/Sekretaris Utama Bappenas melalui Memorandum nomor 403/D.l.M/10/2017 (terlampir)', 'Arise Plus Indonesia', '2017-11-03-473_Dt.8.4.ND_11_2017_Usulan_Kegiatan_Arise_Plus_Indonesia.pdf', '2017-11-03', null, null, null, '11', '2017-11-07 13:14:05');
INSERT INTO irena_arsip VALUES ('84', '1', '1', '3', '2085/B.02.ND/11/2017', 'Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama (Es. II. b) di Lingkungan Sekretariat Jenderal KPU', 'Plt. Karo SDM', '2017-11-01', 'Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama (Es. II. b) di Lingkungan Sekretariat Jenderal KPU', 'Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama (Es. II. b) di Lingkungan Sekretariat Jenderal KPU', '2017-11-01-2085_B.02.ND_11_2017_Seleksi_Terbuka_Jabatan_Pimpinan_Tinggi_Pratama_(Es._II._b)_di_Lingkungan_Sekretariat_Jenderal_KPU.pdf', '2017-11-01', null, null, null, '11', '2017-11-07 13:40:10');
INSERT INTO irena_arsip VALUES ('85', '1', '1', '3', '2086/B.02.ND/ 11/2017', 'Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama (JPT Pratama) di Lingkungan Badan Ekonomi Kreatif (BEKRAF)', 'Plh. Karo SDM', '2017-11-01', 'Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama (JPT Pratama) di Lingkungan Badan Ekonomi Kreatif (BEKRAF)', 'Badan Ekonomi Kreatif (BEKRAF)', '2017-11-01-2086_B.02.ND_11_2017_Seleksi_Terbuka_Jabatan_Pimpinan_Tinggi_Pratama_(JPT_Pratama)_di_Lingkungan_Badan_Ekonomi_Kreatif_(BEKRAF).pdf', '2017-11-01', null, null, null, '11', '2017-11-07 14:12:49');
INSERT INTO irena_arsip VALUES ('86', '1', '1', '3', '4731/A.A1/PR/2017', 'Usulan Kegiatan Pinjaman Luar Negeri Kementerian Ristek Dikti', 'Kementerian Ristek Dikti', '2017-10-31', 'Usulan Kegiatan Pinjaman Luar Negeri Kementerian Ristek Dikti\r\n1 Hilirisasi Riset dan Inovasi dalarn Kerangka Teaching Industry : Upaya Strategis menuju Perguruan Tinggi Berkelas Dunia di Institut Teknologi Sepuluh Nopember\r\n2 Pengernbangan Rumah Sakit Universitas Brawijaya\r\n3 Peningkatan Mutu Pendidikan Kedokteran melalui Pembangunan Rumah Sakit PTN dan Research Center Universitas Lampung', 'Usulan Kegiatan Pinjaman Luar Negeri Kementerian Ristek Dikti', '2017-10-31-4731_A.A1_PR_2017_Usulan_Kegiatan_Pinjaman_Luar_Negeri_Kementerian_Ristekdikti.pdf', '2017-11-01', null, null, null, '11', '2017-11-07 14:27:14');
INSERT INTO irena_arsip VALUES ('87', '1', '1', '3', 'B/1233-03/05/18/Srenaau', 'Daftar Isian Pengusulan Kegiatan Pengadaan Alutsista UO TNI AU Program PDN Tahun 2015-2019', 'Mabes Angkatan Udara', '2017-11-13', 'Daftar Isian Pengusulan Kegiatan Pengadaan Alutsista UO TNI AU Program PDN Tahun 2015-2019', 'Daftar Isian Pengusulan Kegiatan Pengadaan Alutsista UO TNI AU Program PDN Tahun 2015-2019', '2017-11-13-B_1233-03_05_18_Srenaau_Daftar_isian_pengusulan_kegiatan_pengadaan_alutsista_UO_TNI_AU_program_PDN_tahun_2015-2019.pdf', '2017-11-01', null, null, null, '11', '2017-11-07 14:31:03');
INSERT INTO irena_arsip VALUES ('88', '2', '2', '3', '241/Dt.8.l.ND/11/2017', 'Laporan Pelaksanaan Pertemuan the 6th Session of the Assembly and 1 Qth Session of the Council ofGGGI di Addis Ababa, Ethiopia', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-11-02', 'Laporan Pelaksanaan Pertemuan the 6th Session of the Assembly and 1 Qth Session of the Council of GGGI di Addis Ababa, Ethiopia', 'GGGI, Adis Ababa', '2017-11-02-241_Dt.8.1.ND_11_2017_Laporan_Pelaksanaan_Pertemuan_the_6th_Session_of_the_Assembly_and_1_Qth_Session_of_the_Council_ofGGGI_di_Addis_Ababa,_Ethiopia.pdf', '2017-11-02', null, null, null, '11', '2017-11-07 15:17:16');
INSERT INTO irena_arsip VALUES ('89', '2', '2', '3', '240/Dt.8.1.ND/10/2017', 'Pelaksanaan Evaluasi Perencanaan Kegiatan PDN dalam rangka tugas Diklatpim Tingkat III di LAN atas nama Mukhtiali', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-10-27', 'Pelaksanaan Evaluasi Perencanaan Kegiatan PDN dalam rangka tugas Diklatpim Tingkat III di LAN atas nama Mukhtiali', 'Diklatpim Tingkat III di LAN', '2017-10-27-240_Dt.8.1.ND_11_2017_Pelaksanaan_Evaluasi_Perencanaan_Kegiatan_PDN_dalam_rangka_tugas_Diklatpim_Tingkat_III_di_LAN_atas_nama_Mukhtiali.pdf', '2017-11-07', null, null, null, '11', '2017-11-07 15:20:13');
INSERT INTO irena_arsip VALUES ('90', '2', '2', '3', '242/Dt.8.l.ND/11/2017', 'Daftar Pertanyaan dalam Seleksi Wawancana CPNS Kementerian PPN/Bappenas', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-11-03', 'Daftar Pertanyaan dalam Seleksi Wawancana CPNS Kementerian PPN/Bappenas dalam rangka menjaring aspirasi terhadap kebutuhan kompetensi teknis/bidang minimal yang harus dimiliki oleh kandidat CPNS di unit kerja kami', 'Daftar Pertanyaan dalam Seleksi Wawancana CPNS', '2017-11-03-242_Dt.8.1.ND_11_2017_Daftar_Pertanyaan_dalam_Seleksi_Wawancana_CPNS_Kementerian_PPN_Bappenas.pdf', '2017-11-03', null, null, null, '11', '2017-11-07 15:22:19');
INSERT INTO irena_arsip VALUES ('91', '2', '2', '3', '243/Dt.8.l.ND/11/2017', 'Tanggapan Terkait Agricultural Value Chain Development Project (Loans) and Inclusive and Climate Resilient Coffee Value Chain (TA)', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-11-06', 'Tanggapan Terkait Agricultural Value Chain Development Project (Loans) and Inclusive and Climate Resilient Coffee Value Chain (TA)', 'Agricultural Value Chain Development Project (Loans) and Inclusive and Climate Resilient Coffee Value Chain (TA),', '2017-11-06-243_Dt.8.1.ND_11_2017_Tanggapan_Terkait_Agricultural_Value_Chain_Development_Project_(Loans)_and_Inclusive_and_Climate_Resilient_Coffee_Value_Chain_(TA).pdf', '2017-11-07', null, null, null, '11', '2017-11-07 15:24:56');
INSERT INTO irena_arsip VALUES ('92', '2', '2', '3', '244/Dt.8.1.ND/10/2017', 'Tanggapan Surat dari Pit. Direktur Pinjaman dan Hibah Kementerian Keuangan perihal Pengusulan Hibah ADB TA 9391-INO: Knowledge and Support TA for Leveraging Information and Communication Technology for Irrigated Agricultural Information Project-Requested ', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-11-06', 'Tanggapan Surat dari Pit. Direktur Pinjaman dan Hibah Kementerian Keuangan perihal Pengusulan Hibah ADB TA 9391-INO: Knowledge and Support TA for Leveraging Information and Communication Technology for Irrigated Agricultural Information Project-Requested for No.Objection', 'Knowledge and Support TA for Leveraging Information and Communication Technology for Irrigated Agricultural Information Project-Requested for No.Objection', '2017-11-06-244_Dt.8.1.ND_11_2017_Tanggapan_Surat_dari_Pit._Direktur_Pinjaman_dan_Hibah_Kementerian_Keuangan_perihal_Pengusulan_Hibah_ADB_TA_9391-INO.pdf', '2017-11-06', null, null, null, '11', '2017-11-07 15:49:20');
INSERT INTO irena_arsip VALUES ('93', '2', '2', '3', '245/Dt.8.1.ND/10/2017', 'Konfirmasi atas Progres Rancangan Peraturan Menteri PPN/Kepala Bappenas Tahun 2017', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-11-06', 'Konfirmasi atas Progres Rancangan Peraturan Menteri PPN/Kepala Bappenas Tahun 2017', 'Rancangan Peraturan Menteri PPN/Kepala Bappenas Tahun 2017', '2017-11-06-245_Dt.8.1.ND_11_2017_Konfirmasi_atas_Progres_Rancangan_Peraturan_Menteri_PPN_Kepala_Bappenas_Tahun_2017.pdf', '2017-11-07', null, null, null, '11', '2017-11-07 15:50:43');
INSERT INTO irena_arsip VALUES ('94', '1', '1', '3', 'B-6808/A2.1/11/2017', 'Permohonan Narasumber', 'BADAN PENGUSAHAAN KAWASAN PERDAGANGAN BEBAS DAN PELABUHAN BEBAS BATAM', '2017-11-06', 'Permohonan Narasumber sosialisasi terkait pendanaan Kerjasama Pemerintah dan Swasta (KPS), skema Pembiayaan lnvestasi Non-Anggaran Pemerintah (PINA) dan pendanaan yang bersumber dari Surat Berharga Syariah Negara (SBSN) serta penjaminannya.', 'Permohonan Narasumber BADAN PENGUSAHAAN KAWASAN PERDAGANGAN BEBAS DAN PELABUHAN BEBAS BATAM', '2017-11-06-B-6808_A2.1_11_2017_Permohonan_Narasumber_(Sosialisasi_Program_Pendanaan_Partnership_BP_Batam).pdf', '2017-11-08', null, null, null, '11', '2017-11-09 09:32:04');
INSERT INTO irena_arsip VALUES ('95', '1', '1', '3', '9984/Dt.8.3/11/2017', 'Undangan pertemuan untuk membahas proyek Geothermal Seulawah Agam yang dibiayai dari hibah Pemerintah Jerman', 'Bilateral', '2017-11-07', 'Undangan pertemuan untuk membahas proyek Geothermal Seulawah Agam yang dibiayai dari hibah Pemerintah Jerman\r\nHari/ tanggal Kamis, : 16 November 2017\r\nWaktu                          : 13.30 s.d selesai\r\nTempat                       : Ruang Rapat Serba Guna 1-2, Lantai 1, Gedung Bappenas Jalan Taman Suropati No.2, Jakarta', 'Geothermal Seulawah Agam', '2017-11-07-9984_Dt.8.3_11_2017_Undangan_(Membahas_Proyek_Geothermal_Seulawah_Agam_yang_dibiayai_dari_Hibah_Pemerintah_Jerman).pdf', '2017-11-08', null, null, null, '11', '2017-11-09 09:43:08');
INSERT INTO irena_arsip VALUES ('96', '1', '1', '3', '9980/Dt.8.3/11/2017', 'Undangan Membahas Usulan Proyek ITTS III', 'Dir. Bilateral', '2017-11-09', 'Undangan Membahas Usulan Proyek ITTS III', 'ITTS III', '2017-11-09-9980_Dt.8.3_11_2017_Undangan_Membahas_Usulan_Proyek_ITTS_III.pdf', '2017-11-08', null, null, null, '11', '2017-11-09 09:45:25');
INSERT INTO irena_arsip VALUES ('97', '1', '1', '3', '2115/8.02.ND/11/2017', 'Kelengkapan Dokumen Peserta Peiatihan SPIRIT untuk Proses Pencairan Anggaran', 'SDM', '2017-11-08', 'Kelengkapan Dokumen Peserta Peiatihan SPIRIT untuk Proses\r\nPencairan Anggaran', 'SPIRIT', '2017-11-08-2115_8.02.ND_11_2017_Kelengkapan_Dokumen_Peserta_Peiatihan_SPIRIT_untuk_Proses_Pencairan_Anggaran.pdf', '2017-11-08', null, null, null, '11', '2017-11-09 09:49:37');
INSERT INTO irena_arsip VALUES ('98', '1', '1', '3', '1824/Ses.M/11/2017', 'Undangan Peresmian Penamaan Gedung dan Ruang Rapat di Lingkungan Kementerian PPN/Bappenas', 'Plh.Sekretaris Kementerian PPN/Sestama Bappenas', '2017-11-06', 'Undangan Peresmian Penamaan Gedung dan Ruang Rapat di Lingkungan Kementerian PPN/Bappenas\r\nJumat, 10 November 2017 09.00 WIB- Selesai Ruang SG 1 - 5, Kementerian PPN/Bappenas', 'Undangan Peresmian Penamaan Gedung dan Ruang Rapat di\r\nLingkungan Kementerian PPN/Bappenas', '2017-11-06-1824_Ses.M_11_2017_Undangan_Peresmian_Penamaan_Gedung_dan_Ruang_Rapat_di_Lingkungan_Kementerian_PPN_Bappenas.pdf', '2017-11-08', null, null, null, '11', '2017-11-09 09:52:05');
INSERT INTO irena_arsip VALUES ('99', '1', '1', '3', '307/Dt.4.2.ND/11/2017', 'Permohonan Konfirmasi !sian Matriks RAN SDGs Tujuan 8', 'Direktur Tenaga Kerja dan Perluasan Kesempatan Kerja', '2017-11-08', 'Permohonan Konfirmasi isian Matriks RAN SDGs Tujuan 8\r\nsampaikan bahwa kami telah melakukan perbaikan isian matriks berdasarkan masukan yang telah kami terima dari beberapa direktorat terkait dan kementerianjlembaga mitra.', 'RAN SDGs Tujuan 8', '2017-11-08-307_Dt.4.2.ND_11_2017_Permohonan_Konfirmasi_!sian_Matriks_RAN_SDGs_Tujuan_8.pdf', '2017-11-08', null, null, null, '11', '2017-11-09 09:55:18');
INSERT INTO irena_arsip VALUES ('100', '1', '1', '3', 'KU 03.01-Db/852', 'Realoksai kegiatan/proyek SBSN project based sukuk T A 2017 di Direktorat Jenderal Bina Marga', 'KEMENTRIAN PU DAN PR', '2017-11-17', 'Realokasi Kegiatan/Proyek Surat Berharga Syariah Negara Project Based Sukuk (SBSN-PBS) TA.2017 di Direktorat Jenderal Bina Marga', '(SBSN-PBS) TA.2017 di Direktorat Jenderal Bina Marga', '2017-11-17-KU_03.01-Db_852_Realoksai_kegiatan_proyek_SBSN_project_based_sukuk_T_A_2017_di_Direktorat_Jenderal_Bina_Marga.pdf', '2017-10-17', null, null, null, '1', '2017-11-16 11:30:30');
INSERT INTO irena_arsip VALUES ('101', '1', '1', '3', 'UM.0206-Bp/1258', 'Permohonan Bantuan Nara Sumber untuk Acara Konsolidasi Pelaksanaan Anggaran 2017 dan Persiapan Anggaran 2018 serta Paket-Paket Multi Years Contract yang Dibiayai Melalui SBSN di Lingkungan Ditjen Bina Marga', 'Kementerian PUPR', '2017-11-09', 'Permohonan Bantuan Nara Sumber untuk Acara Konsolidasi Pelaksanaan Anggaran 2017 dan Persiapan Anggaran 2018 serta Paket-Paket Multi Years Contract yang Dibiayai Melalui SBSN di Lingkungan Ditjen Bina Marga', 'Nara Sumber untuk Acara Konsolidasi Pelaksanaan Anggaran 2017 dan Persiapan Anggaran 2018', '2017-11-09-UM.0206-Bp_1258_Permohonan_Bantuan_Nara_Surnber_Acara_Konsolidasi_PA_2017_dan_PA_2018_serta_Paket-2_Multi_Years_Contract_yang_Dibiayai_Melalui_SBSN_di_Lingkungan_Ditjen_Bina_Marga.pdf', '2017-11-13', null, null, null, '11', '2017-11-13 14:51:01');
INSERT INTO irena_arsip VALUES ('102', '1', '1', '3', '1391/BSN/A0-b1/05/2017', 'Penyampaian Usulan Proyek BSN yang akan dibiayai melalui penerbitan SBSN TA. 2018', 'Kepala BSN', '2017-05-17', '-', '-', '2017-05-17-1391.pdf', '2017-05-22', null, null, null, '1', '2017-11-15 17:47:31');
INSERT INTO irena_arsip VALUES ('103', '1', '1', '3', '0202/M.PPN/05/2016', 'Usulan Hibah Australia Infrasructure Program 2017-2027', 'Sesmen PPN/Sestama Bappenas', '2016-05-31', '-', '-', '2016-05-31-0202_M.PPN_05_2016-Usulan_Hibah_Australia_Infrastructure_Program_2017-2027_DIPK_DUK.pdf', '2016-05-31', 'Sesuai arahan Direktur', '12', '2017-11-16 00:00:00', '17', '2017-11-16 11:02:13');
INSERT INTO irena_arsip VALUES ('104', '1', '1', '3', '9980/Dt.8.3/11/2017', 'Pembahasan Proyek ITTS III (15 November 2017)', 'Dit. PLN Bilateral', '2017-11-07', 'Pembahasan mengenai tindak lanjut pinjaman ITTS III karena Presiden Jokowi telah bertemu Presiden Perancis dan Perdana Menteri Jepang, adapun tersedia banyak lender yang berminat yaitu Spanyol, perancis, us exim, JICA', 'Rencana tindak lanjut ITTS III', '2017-11-07-9980_Dt.8.3_11_2017_Pembahasan_Proyek_ITTS_III_(15_November_2017).pdf', '2017-11-14', 'Menunggu honor', '3', '2017-11-16 00:00:00', '17', '2017-11-16 10:38:54');
INSERT INTO irena_arsip VALUES ('105', '1', '2', '3', '25/Dt.8.5.ND/06/2016', 'Penyampaian Hasil Penilaian Kelayakan Teknis Usulan Hibah Australia Infrastructure Program', 'Direktur Sistem dan Prosedur Pendanaan Pembangunan', '2016-06-30', '-', '-', '2016-06-30-25_Dt.8.5.ND_06_2016_Penyampaian_Hasil_penilaian_kelayakan_teknis_usulan_hibah_australia_infrastructure_program.pdf', '2016-06-30', null, null, null, '12', '2017-11-16 11:03:55');

-- ----------------------------
-- Table structure for `irena_arsip_disposisi`
-- ----------------------------
DROP TABLE IF EXISTS `irena_arsip_disposisi`;
CREATE TABLE `irena_arsip_disposisi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis` int(11) DEFAULT NULL,
  `id_arsip` int(11) DEFAULT NULL,
  `nomor` varchar(255) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `catatan` text,
  `berkas` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_arsip_disposisi
-- ----------------------------
INSERT INTO irena_arsip_disposisi VALUES ('16', '1', '0', 'adsad', '2017-11-06', 'sadasda', '2017-11-06-Jwb5.pdf', '1', '2017-11-06 12:14:26');
INSERT INTO irena_arsip_disposisi VALUES ('19', '1', '75', 'adas', '2017-11-06', 'dadsa', '2017-11-06-Jwb8.pdf', '1', '2017-11-06 12:20:21');
INSERT INTO irena_arsip_disposisi VALUES ('21', '1', '62', 'adas', '2017-11-06', 'adadas', '2017-11-06-Jwb10.pdf', '1', '2017-11-06 12:21:47');
INSERT INTO irena_arsip_disposisi VALUES ('26', '4', '62', 'sadas', '2017-11-06', 'asdasda', '2017-11-06-Jwb15.pdf', '1', '2017-11-06 19:03:49');
INSERT INTO irena_arsip_disposisi VALUES ('28', '4', '75', 'adsadsadsa', '2017-11-06', 'sdasdasdas', '2017-11-06-Jwb17.pdf', '1', '2017-11-06 23:54:16');
INSERT INTO irena_arsip_disposisi VALUES ('29', '4', '76', '1472/Dt.8.1/10/2017', '2017-10-31', '-', '2017-10-31-Disposisi_8-0407_PTRI-NEWYORK_171026_Laporan_Pertemuan_G20_(DWG)_Workshop_on_Sustainable_Development_and_Inclusive_Globalisation_Meeting_di_New_York,Amerika_Serikat,_16-17_Oktober_2017.pdf', '11', '2017-11-07 10:58:20');
INSERT INTO irena_arsip_disposisi VALUES ('30', '4', '77', '1493/Dt.8.1/11/2017', '2017-11-02', 'Ica Koordinasi ok kita siapkan Policy paper Renbang - Siapkam Time Table Pelaksanaan - Rekrut yang akan mengerjakan ke APBN tidak cukup dicari sumber pendanaanya ( tanya ADB)', '2017-11-02-Disposisi_270_D.8.ND_11_2017_Penyampaian_Usulan_Kajian_Strategis_dan_Policy_Paper_Lingkup_Kedeputian_Bidang_Pendanaan_Pembangunan_Tahun_2018.pdf', '11', '2017-11-07 11:07:18');
INSERT INTO irena_arsip_disposisi VALUES ('31', '4', '78', '1484/Dt.8.1/11/2017', '2017-11-01', 'Tidak Bisa Hadir', '2017-11-01-UND-456_AG.4_2017_Undangan_Rapat_Realokasi_Pembangunan_Gedung_KUA_dari_Kabupaten_Belu_NTT_ke_Kota_Bitung_Sulawesi_Utara.pdf', '11', '2017-11-07 12:33:41');
INSERT INTO irena_arsip_disposisi VALUES ('32', '4', '79', '1483/Dt.8.1/11/2017', '2017-11-01', '- Tolong Minta ADB supaya bisa dishare bahan bahanya bisa jadi masukan dalam kajian strategis -Telat disposisi', '2017-11-01-UND-96_D.I.M.EKON_10_2017_FGD_Alternatif_Pembiayaan_Infrastruktur_an_tara_lain_melalui_Credit_Enhancement,_Obligasi_Daerah,_dan_Green_Infrastructure_Financing.pdf', '11', '2017-11-07 12:40:41');
INSERT INTO irena_arsip_disposisi VALUES ('33', '4', '82', '1492/Dt.8.1/11/2017', '2017-11-01', 'Ali Koordinasi bahan2 yang diperlukan ketemu pa iwan siang sore ini', '2017-11-01-Disposisi_302_I.02.ND_11_2017_Rapat_Koordinasi_dan_Konfirmasi_terkait_Kebijakan_Pengadaan_Alutsista_dengan_Pembiayaan_Pinjaman_Luar_Negeri_dengan_BPK.pdf', '11', '2017-11-07 13:07:37');
INSERT INTO irena_arsip_disposisi VALUES ('35', '4', '84', '1486/Dt.8.1/11/2017', '2017-11-01', 'Kalau ada yang minat ?', '2017-11-01-2085_B.02.ND_11_2017_Seleksi_Terbuka_Jabatan_Pimpinan_Tinggi_Pratama_(Es._II._b)_di_Lingkungan_Sekretariat_Jenderal_KPU.pdf', '11', '2017-11-07 13:41:38');
INSERT INTO irena_arsip_disposisi VALUES ('36', '4', '85', '1485/Dt.8.1/ 11/2017', '2017-11-01', 'Kalau berminat Silahkan', '2017-11-01-2086_B.02.ND_11_2017_Seleksi_Terbuka_Jabatan_Pimpinan_Tinggi_Pratama_(JPT_Pratama)_di_Lingkungan_Badan_Ekonomi_Kreatif_(BEKRAF).pdf', '11', '2017-11-07 14:13:44');
INSERT INTO irena_arsip_disposisi VALUES ('37', '4', '87', '1480/Dt.8.1/11/2017', '2017-11-01', 'Mana Dokumen Pendukungnya', '2017-11-01-Disposisi_B_1233-03_05_18_Srenaau_Daftar_isian_pengusulan_kegiatan_pengadaan_alutsista_UO_TNI_AU_program_PDN_tahun_2015-2019.pdf', '11', '2017-11-07 14:32:06');
INSERT INTO irena_arsip_disposisi VALUES ('38', '4', '99', '1513/Dt.8.1/11/2017', '2017-11-08', '-', '2017-11-08-307.pdf', '11', '2017-11-13 10:07:40');
INSERT INTO irena_arsip_disposisi VALUES ('39', '4', '83', '1500/Dt.8.1/11/2017', '2017-11-03', '-', '2017-11-03-473.pdf', '11', '2017-11-13 10:10:25');
INSERT INTO irena_arsip_disposisi VALUES ('40', '4', '100', '1497 /Dt.8.1/11/2017', '2017-11-03', '-', '2017-11-03-852.pdf', '11', '2017-11-13 10:15:27');
INSERT INTO irena_arsip_disposisi VALUES ('41', '4', '102', '0744/Dt.8.1/5/2017', '2017-05-22', '-', '2017-05-22-0744_Dt.8.1_5_2017.pdf', '1', '2017-11-15 17:50:28');
INSERT INTO irena_arsip_disposisi VALUES ('42', '4', '103', '-', '2017-11-16', '-', '2017-11-16-0202_M.PPN_05_2016-Usulan_Hibah_Australia_Infrastructure_Program_2017-2027_DIPK_DUK.pdf', '12', '2017-11-16 10:37:29');
INSERT INTO irena_arsip_disposisi VALUES ('43', '4', '104', '-', '2017-11-16', 'hadiri /wakili', '2017-11-16-9980_Dt.8.3_11_2017_Pembahasan_Proyek_ITTS_III_(15_November_2017).pdf', '17', '2017-11-16 10:40:14');

-- ----------------------------
-- Table structure for `irena_arsip_disposisi_aksi`
-- ----------------------------
DROP TABLE IF EXISTS `irena_arsip_disposisi_aksi`;
CREATE TABLE `irena_arsip_disposisi_aksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_jenis` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_arsip_disposisi_aksi
-- ----------------------------
INSERT INTO irena_arsip_disposisi_aksi VALUES ('1', '4', 'Untuk Diselesaikan', '0');
INSERT INTO irena_arsip_disposisi_aksi VALUES ('2', '4', 'Untuk Dikoreksi', '1');
INSERT INTO irena_arsip_disposisi_aksi VALUES ('3', '4', 'Teliti/Pendapat dan Laporkan', '2');
INSERT INTO irena_arsip_disposisi_aksi VALUES ('4', '4', 'Siapkan Jawaban', '3');
INSERT INTO irena_arsip_disposisi_aksi VALUES ('5', '4', 'Dibahas Bersama', '4');
INSERT INTO irena_arsip_disposisi_aksi VALUES ('6', '4', 'Untuk Diketahui', '5');
INSERT INTO irena_arsip_disposisi_aksi VALUES ('7', '4', 'Untuk Dipergunakan', '6');
INSERT INTO irena_arsip_disposisi_aksi VALUES ('8', '4', 'Salin dan Kembalikan', '7');
INSERT INTO irena_arsip_disposisi_aksi VALUES ('9', '4', 'Hadiri/Wakili', '8');
INSERT INTO irena_arsip_disposisi_aksi VALUES ('10', '4', 'Untuk di File', '9');

-- ----------------------------
-- Table structure for `irena_arsip_disposisi_internal`
-- ----------------------------
DROP TABLE IF EXISTS `irena_arsip_disposisi_internal`;
CREATE TABLE `irena_arsip_disposisi_internal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_disposisi` int(11) DEFAULT NULL,
  `id_disposisi_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_arsip_disposisi_internal
-- ----------------------------
INSERT INTO irena_arsip_disposisi_internal VALUES ('15', '24', '1');
INSERT INTO irena_arsip_disposisi_internal VALUES ('16', '24', '2');
INSERT INTO irena_arsip_disposisi_internal VALUES ('18', '22', '1');
INSERT INTO irena_arsip_disposisi_internal VALUES ('19', '27', '1');
INSERT INTO irena_arsip_disposisi_internal VALUES ('20', '28', '1');
INSERT INTO irena_arsip_disposisi_internal VALUES ('25', '31', '5');
INSERT INTO irena_arsip_disposisi_internal VALUES ('26', '32', '3');
INSERT INTO irena_arsip_disposisi_internal VALUES ('27', '33', '2');
INSERT INTO irena_arsip_disposisi_internal VALUES ('28', '33', '3');
INSERT INTO irena_arsip_disposisi_internal VALUES ('29', '33', '4');
INSERT INTO irena_arsip_disposisi_internal VALUES ('30', '33', '5');
INSERT INTO irena_arsip_disposisi_internal VALUES ('31', '33', '7');
INSERT INTO irena_arsip_disposisi_internal VALUES ('32', '35', '2');
INSERT INTO irena_arsip_disposisi_internal VALUES ('33', '35', '3');
INSERT INTO irena_arsip_disposisi_internal VALUES ('34', '35', '4');
INSERT INTO irena_arsip_disposisi_internal VALUES ('35', '36', '2');
INSERT INTO irena_arsip_disposisi_internal VALUES ('36', '36', '3');
INSERT INTO irena_arsip_disposisi_internal VALUES ('37', '36', '4');
INSERT INTO irena_arsip_disposisi_internal VALUES ('38', '37', '4');
INSERT INTO irena_arsip_disposisi_internal VALUES ('39', '37', '7');
INSERT INTO irena_arsip_disposisi_internal VALUES ('40', '41', '5');
INSERT INTO irena_arsip_disposisi_internal VALUES ('41', '41', '13');
INSERT INTO irena_arsip_disposisi_internal VALUES ('42', '41', '18');
INSERT INTO irena_arsip_disposisi_internal VALUES ('43', '42', '12');
INSERT INTO irena_arsip_disposisi_internal VALUES ('44', '42', '3');
INSERT INTO irena_arsip_disposisi_internal VALUES ('45', '43', '3');
INSERT INTO irena_arsip_disposisi_internal VALUES ('46', '42', '19');
INSERT INTO irena_arsip_disposisi_internal VALUES ('48', '40', '4');

-- ----------------------------
-- Table structure for `irena_arsip_disposisi_internal_aksi`
-- ----------------------------
DROP TABLE IF EXISTS `irena_arsip_disposisi_internal_aksi`;
CREATE TABLE `irena_arsip_disposisi_internal_aksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_disposisi` int(11) DEFAULT NULL,
  `id_disposisi_aksi` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_arsip_disposisi_internal_aksi
-- ----------------------------
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('17', '24', '2');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('21', '24', '4');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('22', '27', '4');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('23', '28', '1');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('24', '28', '2');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('25', '28', '3');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('26', '28', '5');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('27', '28', '4');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('28', '26', '1');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('29', '26', '2');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('30', '26', '3');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('31', '26', '4');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('32', '31', '6');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('33', '32', '7');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('34', '33', '1');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('35', '35', '7');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('36', '36', '7');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('37', '37', '7');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('38', '43', '9');
INSERT INTO irena_arsip_disposisi_internal_aksi VALUES ('39', '42', '4');

-- ----------------------------
-- Table structure for `irena_arsip_disposisi_jenis`
-- ----------------------------
DROP TABLE IF EXISTS `irena_arsip_disposisi_jenis`;
CREATE TABLE `irena_arsip_disposisi_jenis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `eksternal` int(11) DEFAULT NULL,
  `internal` int(11) DEFAULT NULL,
  `order` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_arsip_disposisi_jenis
-- ----------------------------
INSERT INTO irena_arsip_disposisi_jenis VALUES ('1', 'Menteri PPN/Kepala Bappenas', '1', '0', '');
INSERT INTO irena_arsip_disposisi_jenis VALUES ('2', 'SesMen. PPN/Sestama Bappenas', '2', '0', '');
INSERT INTO irena_arsip_disposisi_jenis VALUES ('3', 'Deputi Bidang Pendanaan Pembangunan', '3', '0', '');
INSERT INTO irena_arsip_disposisi_jenis VALUES ('4', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '0', '1', '');

-- ----------------------------
-- Table structure for `irena_arsip_disposisi_user`
-- ----------------------------
DROP TABLE IF EXISTS `irena_arsip_disposisi_user`;
CREATE TABLE `irena_arsip_disposisi_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_arsip_disposisi_user
-- ----------------------------
INSERT INTO irena_arsip_disposisi_user VALUES ('1', '2', 'Tati Lies Aryati', '1', '1');
INSERT INTO irena_arsip_disposisi_user VALUES ('2', '3', 'Riza Hamzah', '1', '2');
INSERT INTO irena_arsip_disposisi_user VALUES ('3', '4', 'Mukhtiali', '1', '3');
INSERT INTO irena_arsip_disposisi_user VALUES ('4', '5', 'Sugeng Wahyu Hendarto', '1', '4');
INSERT INTO irena_arsip_disposisi_user VALUES ('5', '6', 'Beby Hanzian', '1', '5');
INSERT INTO irena_arsip_disposisi_user VALUES ('6', '7', 'Yustina Wijayanti', '1', '6');
INSERT INTO irena_arsip_disposisi_user VALUES ('7', '8', 'Tien Iswartini', '1', '7');
INSERT INTO irena_arsip_disposisi_user VALUES ('8', '9', 'Dadan Kusdarsana', '1', '8');
INSERT INTO irena_arsip_disposisi_user VALUES ('9', '10', 'Ino Sutrisno', '1', '9');
INSERT INTO irena_arsip_disposisi_user VALUES ('10', '1', 'Firman Perangin-angin', '0', '10');
INSERT INTO irena_arsip_disposisi_user VALUES ('11', '11', 'Adi Nurhadi', '0', '11');
INSERT INTO irena_arsip_disposisi_user VALUES ('12', '12', 'Eftin Ula Kurnia', '0', '12');
INSERT INTO irena_arsip_disposisi_user VALUES ('13', '13', 'Sahna Putri Aselira', '0', '13');
INSERT INTO irena_arsip_disposisi_user VALUES ('14', '14', 'Bonataon M. T. V. Simandjorang', '0', '14');
INSERT INTO irena_arsip_disposisi_user VALUES ('15', '15', 'Pristi N. K. Panggabean', '0', '15');
INSERT INTO irena_arsip_disposisi_user VALUES ('16', '16', 'Kristianto Wibowo', '0', '16');
INSERT INTO irena_arsip_disposisi_user VALUES ('17', '17', 'Muhammad Faisal Siddiq', '0', '17');
INSERT INTO irena_arsip_disposisi_user VALUES ('18', '18', 'Derry Afriandri', '0', '18');
INSERT INTO irena_arsip_disposisi_user VALUES ('19', '19', 'Reezali Raharjaya', '0', '19');
INSERT INTO irena_arsip_disposisi_user VALUES ('20', '20', 'Faizah Aulia Rahmah', '0', '20');

-- ----------------------------
-- Table structure for `irena_arsip_jenis`
-- ----------------------------
DROP TABLE IF EXISTS `irena_arsip_jenis`;
CREATE TABLE `irena_arsip_jenis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_arsip_jenis
-- ----------------------------
INSERT INTO irena_arsip_jenis VALUES ('1', 'Masuk', 'fa fa-play text-info fa-rotate-90');
INSERT INTO irena_arsip_jenis VALUES ('2', 'Keluar', 'fa fa-play text-warning fa-rotate-270');

-- ----------------------------
-- Table structure for `irena_arsip_lampiran`
-- ----------------------------
DROP TABLE IF EXISTS `irena_arsip_lampiran`;
CREATE TABLE `irena_arsip_lampiran` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_arsip` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `berkas` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_arsip_lampiran
-- ----------------------------
INSERT INTO irena_arsip_lampiran VALUES ('20', '34', 'fff', 'fff', 'oke', '1', '2017-10-04 10:16:18');
INSERT INTO irena_arsip_lampiran VALUES ('23', '34', 'dd', 'dd', 'oke', '1', '2017-10-04 10:20:15');
INSERT INTO irena_arsip_lampiran VALUES ('24', null, null, null, 'oke', null, '2017-10-04 10:20:35');
INSERT INTO irena_arsip_lampiran VALUES ('25', '34', 'uu', 'uu', 'oke', '1', '2017-10-04 10:22:18');
INSERT INTO irena_arsip_lampiran VALUES ('26', '34', 'rr', 'rr', '10.1.1.499.684810.pdf', '1', '2017-10-04 10:23:25');
INSERT INTO irena_arsip_lampiran VALUES ('27', '34', 'aa', 'aa', '10.1.1.499.684811.pdf', '1', '2017-10-04 10:34:08');
INSERT INTO irena_arsip_lampiran VALUES ('28', '34', 'ss', 'ss', 'oke', '1', '2017-10-04 10:35:13');
INSERT INTO irena_arsip_lampiran VALUES ('30', '34', 'dd', 'dd', '10.1.1.499.684812.pdf', '1', '2017-10-04 10:36:23');
INSERT INTO irena_arsip_lampiran VALUES ('31', '61', 'das', 'sadas', null, '1', '2017-10-17 10:58:05');
INSERT INTO irena_arsip_lampiran VALUES ('32', '61', 'das', 'sadas', null, '1', '2017-10-17 10:58:05');
INSERT INTO irena_arsip_lampiran VALUES ('39', '55', 'ini tes aja', '-', null, '1', '2017-10-18 14:45:25');
INSERT INTO irena_arsip_lampiran VALUES ('40', '56', 'aa', 'bkkk', null, '1', '2017-10-18 15:03:16');
INSERT INTO irena_arsip_lampiran VALUES ('41', '56', 'bb', 'bb', null, '1', '2017-10-19 05:24:40');
INSERT INTO irena_arsip_lampiran VALUES ('42', '0', 'sadas', 'asdsa', 'Jwb.pdf', '1', '2017-11-07 00:19:34');
INSERT INTO irena_arsip_lampiran VALUES ('43', '0', 'dasdas', 'dasdada', 'Jwb1.pdf', '1', '2017-11-07 00:23:54');
INSERT INTO irena_arsip_lampiran VALUES ('44', '62', 'adas', 'adas', 'Jwb2.pdf', '1', '2017-11-07 00:24:38');
INSERT INTO irena_arsip_lampiran VALUES ('48', '62', 'tes', 'ini adalah bentuk keterangan sehingga bentuk ini dapat berjalan dengan baik adalah begitu sehingga oke', '62-Jwb4.pdf', '1', '2017-11-07 09:49:46');
INSERT INTO irena_arsip_lampiran VALUES ('49', '99', 'Matrik 1 Angka Target', 'Matrik 1 Angka Target', '99-Matriks_1_Angka_Target.xlsx', '11', '2017-11-09 10:27:40');
INSERT INTO irena_arsip_lampiran VALUES ('50', '99', 'Mattrik 2 Identifikasi Program Kegiatan', 'Mattrik 2 Identifikasi Program Kegiatan', '99-Matriks_2_Identifikasi_Program-Kegiatan.xlsx', '11', '2017-11-09 10:28:55');

-- ----------------------------
-- Table structure for `irena_arsip_status`
-- ----------------------------
DROP TABLE IF EXISTS `irena_arsip_status`;
CREATE TABLE `irena_arsip_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_arsip_status
-- ----------------------------
INSERT INTO irena_arsip_status VALUES ('1', 'Belum Selesai', 'label label-primary');
INSERT INTO irena_arsip_status VALUES ('2', 'Selesai', 'label label-danger');

-- ----------------------------
-- Table structure for `irena_arsip_tingkat`
-- ----------------------------
DROP TABLE IF EXISTS `irena_arsip_tingkat`;
CREATE TABLE `irena_arsip_tingkat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_arsip_tingkat
-- ----------------------------
INSERT INTO irena_arsip_tingkat VALUES ('1', 'Rahasia');
INSERT INTO irena_arsip_tingkat VALUES ('2', 'Segera');
INSERT INTO irena_arsip_tingkat VALUES ('3', 'Biasa');

-- ----------------------------
-- Table structure for `irena_hibah_donor`
-- ----------------------------
DROP TABLE IF EXISTS `irena_hibah_donor`;
CREATE TABLE `irena_hibah_donor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tampilkan` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_hibah_donor
-- ----------------------------
INSERT INTO irena_hibah_donor VALUES ('1', 'Belum Ada Donor', null, '');
INSERT INTO irena_hibah_donor VALUES ('3', 'Australia', null, '');
INSERT INTO irena_hibah_donor VALUES ('4', 'European Union', null, null);
INSERT INTO irena_hibah_donor VALUES ('5', 'ADB', null, null);
INSERT INTO irena_hibah_donor VALUES ('6', 'JICA', null, null);
INSERT INTO irena_hibah_donor VALUES ('7', 'UNDP-GEF', null, null);
INSERT INTO irena_hibah_donor VALUES ('8', 'Bank Dunia', null, null);
INSERT INTO irena_hibah_donor VALUES ('9', 'Trust Fund', null, null);
INSERT INTO irena_hibah_donor VALUES ('10', 'GEF through UNDP', null, null);
INSERT INTO irena_hibah_donor VALUES ('11', 'KfW', null, null);

-- ----------------------------
-- Table structure for `irena_hibah_jenis`
-- ----------------------------
DROP TABLE IF EXISTS `irena_hibah_jenis`;
CREATE TABLE `irena_hibah_jenis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `aktif` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_hibah_jenis
-- ----------------------------
INSERT INTO irena_hibah_jenis VALUES ('1', '2013', '1');
INSERT INTO irena_hibah_jenis VALUES ('2', '2014', '1');
INSERT INTO irena_hibah_jenis VALUES ('3', '2015', '1');
INSERT INTO irena_hibah_jenis VALUES ('4', '2016', '1');
INSERT INTO irena_hibah_jenis VALUES ('5', '2017', '1');
INSERT INTO irena_hibah_jenis VALUES ('6', '2018', '1');
INSERT INTO irena_hibah_jenis VALUES ('7', '2019', '0');

-- ----------------------------
-- Table structure for `irena_hibah_log`
-- ----------------------------
DROP TABLE IF EXISTS `irena_hibah_log`;
CREATE TABLE `irena_hibah_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyek` int(11) DEFAULT NULL,
  `id_log_kategori` int(11) DEFAULT NULL,
  `id_arsip` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_hibah_log
-- ----------------------------
INSERT INTO irena_hibah_log VALUES ('5', '28', '2', '76', 'penilaian', 'okelahmantap', '1', '2017-11-14 14:48:07');
INSERT INTO irena_hibah_log VALUES ('6', '30', '2', '62', 'adasad', 'asdas', '1', '2017-11-15 14:25:21');
INSERT INTO irena_hibah_log VALUES ('8', '31', '2', '105', 'Form Penilaian Kelayakan Teknis dari Dit. Sektor', '-', '12', '2017-11-16 11:05:13');
INSERT INTO irena_hibah_log VALUES ('9', '31', '1', '103', 'Surat Usulan', '-', '1', '2017-11-16 15:56:45');

-- ----------------------------
-- Table structure for `irena_hibah_log_kategori`
-- ----------------------------
DROP TABLE IF EXISTS `irena_hibah_log_kategori`;
CREATE TABLE `irena_hibah_log_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `order` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_hibah_log_kategori
-- ----------------------------
INSERT INTO irena_hibah_log_kategori VALUES ('1', 'Pengajuan Usulan', '1');
INSERT INTO irena_hibah_log_kategori VALUES ('2', 'Penilaian Teknis', '2');
INSERT INTO irena_hibah_log_kategori VALUES ('3', 'DRKH', '3');

-- ----------------------------
-- Table structure for `irena_hibah_proyek`
-- ----------------------------
DROP TABLE IF EXISTS `irena_hibah_proyek`;
CREATE TABLE `irena_hibah_proyek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_instansi_eselon_satu` int(11) DEFAULT NULL,
  `id_donor` int(11) DEFAULT NULL,
  `id_jenis` int(11) DEFAULT NULL,
  `judul_en` varchar(255) DEFAULT NULL,
  `judul_id` varchar(255) DEFAULT NULL,
  `durasi` int(11) DEFAULT NULL,
  `id_mata_uang` int(11) DEFAULT NULL,
  `nilai_hibah` double DEFAULT NULL,
  `nilai_dp` double DEFAULT NULL,
  `ringkasan` text,
  `nilai_admin` text,
  `nilai_admin_ket` varchar(255) DEFAULT NULL,
  `nilai_admin_id` int(11) DEFAULT NULL,
  `nilai_admin_date` datetime DEFAULT NULL,
  `nilai_layak` text,
  `nilai_layak_ket` varchar(255) DEFAULT NULL,
  `nilai_layak_id` int(11) DEFAULT NULL,
  `nilai_layak_date` datetime DEFAULT NULL,
  `masuk_drkh` text,
  `masuk_drkh_ket` varchar(255) DEFAULT NULL,
  `masuk_drkh_id` int(11) DEFAULT NULL,
  `masuk_drkh_date` datetime DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_hibah_proyek
-- ----------------------------
INSERT INTO irena_hibah_proyek VALUES ('31', '9', '3', '4', 'New Australian Infrastructure Program 2017-2027', 'New Australian Infrastructure Program 2017-2027', '60', '1', '106980000', '1', '-', '1', '-', '1', '2017-11-16 15:53:48', '1', 'tapi bukan DPP', '1', '2017-11-16 15:59:31', '1', '-', '1', '2017-11-16 15:59:37', '1', '2017-11-16 11:44:21');
INSERT INTO irena_hibah_proyek VALUES ('32', '10', '6', '4', 'Development of Integrated Fishing Port and Market in 6 Outer Islands Programme', 'Pengembangan Pelabuhan Perikanan Terpadu dan Pasar di 6 Program Luar Pulau', '24', '1', '69835054', '1', '-', '0', '-', '1', '2017-11-16 11:42:25', '0', '-', '1', '2017-11-16 11:42:25', '0', '-', '1', '2017-11-16 11:42:25', '1', '2017-11-16 11:42:25');

-- ----------------------------
-- Table structure for `irena_hibah_proyek_disb`
-- ----------------------------
DROP TABLE IF EXISTS `irena_hibah_proyek_disb`;
CREATE TABLE `irena_hibah_proyek_disb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyek_drkh` int(11) DEFAULT NULL,
  `tahun_ke` varchar(255) DEFAULT NULL,
  `niai` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_hibah_proyek_disb
-- ----------------------------

-- ----------------------------
-- Table structure for `irena_hibah_proyek_dok`
-- ----------------------------
DROP TABLE IF EXISTS `irena_hibah_proyek_dok`;
CREATE TABLE `irena_hibah_proyek_dok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyek` int(11) DEFAULT NULL,
  `kat` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `berkas` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_hibah_proyek_dok
-- ----------------------------
INSERT INTO irena_hibah_proyek_dok VALUES ('1', '30', 'sadas', 'asdasda', 'dasdasdas', '30-Jwb.pdf', '1', '2017-11-15 14:26:24');

-- ----------------------------
-- Table structure for `irena_hibah_proyek_drkh`
-- ----------------------------
DROP TABLE IF EXISTS `irena_hibah_proyek_drkh`;
CREATE TABLE `irena_hibah_proyek_drkh` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyek` int(11) DEFAULT NULL,
  `id_jenis` int(11) DEFAULT NULL,
  `id_donor` int(11) DEFAULT NULL,
  `id_prioritas` int(11) DEFAULT NULL,
  `judul_en` varchar(255) DEFAULT NULL,
  `judul_id` varchar(255) DEFAULT NULL,
  `durasi` int(11) DEFAULT NULL,
  `id_mata_uang` int(11) DEFAULT NULL,
  `nilai_hibah` double DEFAULT NULL,
  `nilai_dp` double DEFAULT NULL,
  `latar_belakang_en` text,
  `latar_belakang_id` text,
  `ruang_lingkup_en` text,
  `ruang_lingkup_id` text,
  `output_en` text,
  `output_id` text,
  `outcome_en` text,
  `outcome_id` text,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_hibah_proyek_drkh
-- ----------------------------
INSERT INTO irena_hibah_proyek_drkh VALUES ('33', '31', '4', '3', null, 'New Australian Infrastructure Program 2017-2027', 'New Australian Infrastructure Program 2017-2027', '60', '1', '106980000', '1', null, null, null, null, null, null, null, null, '1', '2017-11-16 15:59:37');

-- ----------------------------
-- Table structure for `irena_hibah_proyek_drkh_pc`
-- ----------------------------
DROP TABLE IF EXISTS `irena_hibah_proyek_drkh_pc`;
CREATE TABLE `irena_hibah_proyek_drkh_pc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyek_drkh` int(11) DEFAULT NULL,
  `instansi_pelaksana` varchar(255) DEFAULT NULL,
  `nilai_hibah` double DEFAULT NULL,
  `nilai_dp` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_hibah_proyek_drkh_pc
-- ----------------------------

-- ----------------------------
-- Table structure for `irena_instansi`
-- ----------------------------
DROP TABLE IF EXISTS `irena_instansi`;
CREATE TABLE `irena_instansi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `order` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_instansi
-- ----------------------------
INSERT INTO irena_instansi VALUES ('1', 'Kementerian Perhubungan', 'KEMHUB', 'merah.png', '2');
INSERT INTO irena_instansi VALUES ('2', 'Kementerian Agama', 'KEMENAG', 'hijau.png', '1');
INSERT INTO irena_instansi VALUES ('3', 'Kementerian Pekerjaan Umum dan Perumahan Rakyat', 'PUPR', 'kuning.png', '3');
INSERT INTO irena_instansi VALUES ('4', 'Badan Standarisasi Nasional', 'BSN', null, null);
INSERT INTO irena_instansi VALUES ('5', 'Kementerian Riset Teknologi Dan Pendidikan Tinggi', 'RISTEKDIKTI', null, null);
INSERT INTO irena_instansi VALUES ('6', 'Kementerian PPN/Bappenas', 'BAPPENAS', null, null);
INSERT INTO irena_instansi VALUES ('7', 'Kementerian Kelautan dan Perikanan', 'KKP', null, null);

-- ----------------------------
-- Table structure for `irena_instansi_eselon_satu`
-- ----------------------------
DROP TABLE IF EXISTS `irena_instansi_eselon_satu`;
CREATE TABLE `irena_instansi_eselon_satu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_instansi` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_instansi_eselon_satu
-- ----------------------------
INSERT INTO irena_instansi_eselon_satu VALUES ('1', '1', 'Ditjen. Perkeretaapian');
INSERT INTO irena_instansi_eselon_satu VALUES ('2', '2', 'Ditjen. Pendidikan Islam');
INSERT INTO irena_instansi_eselon_satu VALUES ('3', '2', 'Ditjen. Bimas Islam');
INSERT INTO irena_instansi_eselon_satu VALUES ('4', '2', 'Ditjen. Penyelenggaraan Haji dan Umrah');
INSERT INTO irena_instansi_eselon_satu VALUES ('5', '3', 'Ditjen. Bina Marga');
INSERT INTO irena_instansi_eselon_satu VALUES ('6', '3', 'Ditjen. Sumber Daya Air');
INSERT INTO irena_instansi_eselon_satu VALUES ('7', '5', 'Ditjen. Sumber Daya IPTEK DIKTI');
INSERT INTO irena_instansi_eselon_satu VALUES ('8', '4', 'Sekretariat Utama BSN');
INSERT INTO irena_instansi_eselon_satu VALUES ('9', '6', 'Sesmen/Sestama Bappenas');
INSERT INTO irena_instansi_eselon_satu VALUES ('10', '7', 'Sekjen. Kementerian Kelautan dan Perikanan');

-- ----------------------------
-- Table structure for `irena_instansi_satker`
-- ----------------------------
DROP TABLE IF EXISTS `irena_instansi_satker`;
CREATE TABLE `irena_instansi_satker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_instansi` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_instansi_satker
-- ----------------------------
INSERT INTO irena_instansi_satker VALUES ('1', '1', 'Balai Teknik Perkeretaapian Wilayah Jakarta dan Banten', null);
INSERT INTO irena_instansi_satker VALUES ('2', '1', 'Balai Teknik Perkeretaapian Wilayah Sumatera Bagian Selatan', null);
INSERT INTO irena_instansi_satker VALUES ('3', '1', 'Balai Teknik Perkeretaapian Wilayah Sumatera Bagian Utara', null);
INSERT INTO irena_instansi_satker VALUES ('4', '1', 'Balai Teknik Perkeretaapian Wilayah Jawa Bagian Tengah', null);
INSERT INTO irena_instansi_satker VALUES ('5', '1', 'Balai Teknik Perkeretaapian Wilayah Jawa Bagian Timur', null);

-- ----------------------------
-- Table structure for `irena_mata_uang`
-- ----------------------------
DROP TABLE IF EXISTS `irena_mata_uang`;
CREATE TABLE `irena_mata_uang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_mata_uang
-- ----------------------------
INSERT INTO irena_mata_uang VALUES ('1', 'US Dollar', 'USD', 'Dollar Amerika', '1', '2017-11-14 11:35:23');

-- ----------------------------
-- Table structure for `irena_pendanaan`
-- ----------------------------
DROP TABLE IF EXISTS `irena_pendanaan`;
CREATE TABLE `irena_pendanaan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_pendanaan
-- ----------------------------
INSERT INTO irena_pendanaan VALUES ('1', 'Pinjaman luar Negeri');
INSERT INTO irena_pendanaan VALUES ('2', 'Hibah');
INSERT INTO irena_pendanaan VALUES ('3', 'SBSN');

-- ----------------------------
-- Table structure for `irena_prioritas`
-- ----------------------------
DROP TABLE IF EXISTS `irena_prioritas`;
CREATE TABLE `irena_prioritas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `periode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `ket` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_prioritas
-- ----------------------------
INSERT INTO irena_prioritas VALUES ('1', '2015-2019', 'Pendidikan', null);
INSERT INTO irena_prioritas VALUES ('2', '2015-2019', 'Kesehatan', null);
INSERT INTO irena_prioritas VALUES ('3', '2015-2019', 'Perumahan', null);
INSERT INTO irena_prioritas VALUES ('4', '2015-2019', 'Mental/Karakter', null);
INSERT INTO irena_prioritas VALUES ('5', '2015-2019', 'Kedaulatan Pangan', null);
INSERT INTO irena_prioritas VALUES ('6', '2015-2019', 'Kedaulatan Energi & Ketenagalistrikan', null);
INSERT INTO irena_prioritas VALUES ('7', '2015-2019', 'Kemaritiman dan Kelautan', null);
INSERT INTO irena_prioritas VALUES ('8', '2015-2019', 'Pariwisata dan Industri', null);
INSERT INTO irena_prioritas VALUES ('9', '2015-2019', 'Antarkelompok Pendapatan', null);
INSERT INTO irena_prioritas VALUES ('10', '2015-2019', 'Antarwilayah: (1) Desa, (2) Pinggiran,(3) Luar Jawa, (4) Kawasan Timur', null);

-- ----------------------------
-- Table structure for `irena_provinsi`
-- ----------------------------
DROP TABLE IF EXISTS `irena_provinsi`;
CREATE TABLE `irena_provinsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_provinsi
-- ----------------------------
INSERT INTO irena_provinsi VALUES ('1', 'Aceh', '4.695135', '96.749399');
INSERT INTO irena_provinsi VALUES ('2', 'Bali', '-8.409518', '115.188916');
INSERT INTO irena_provinsi VALUES ('3', 'Banten', '-6.405817', '106.064018');
INSERT INTO irena_provinsi VALUES ('4', 'Bengkulu', '-3.792067', '102.261996');
INSERT INTO irena_provinsi VALUES ('5', 'Gorontalo', '0.699937', '122.446724');
INSERT INTO irena_provinsi VALUES ('6', 'DKI Jakarta', '-6.174465', '106.822745');
INSERT INTO irena_provinsi VALUES ('7', 'Jambi', '-1.485183', '102.438058');
INSERT INTO irena_provinsi VALUES ('8', 'Jawa Barat', '-7.090911', '107.668887');
INSERT INTO irena_provinsi VALUES ('9', 'Jawa Tengah', '-7.150975', '110.140259');
INSERT INTO irena_provinsi VALUES ('10', 'Jawa Timur', '-7.536064', '112.238402');
INSERT INTO irena_provinsi VALUES ('11', 'Kalimantan Barat', '-0.278781', '111.475285');
INSERT INTO irena_provinsi VALUES ('12', 'Kalimantan Selatan', '-3.092642', '115.283758');
INSERT INTO irena_provinsi VALUES ('13', 'Kalimantan Tengah', '-1.681488', '113.382355');
INSERT INTO irena_provinsi VALUES ('14', 'Kalimantan Timur', '1.640630', '116.419389');
INSERT INTO irena_provinsi VALUES ('15', 'Kalimantan Utara', '4.258979', '117.883179');
INSERT INTO irena_provinsi VALUES ('16', 'Kepulauan Bangka Belitung', '-2.741051', '106.440587');
INSERT INTO irena_provinsi VALUES ('17', 'Kepulauan Riau', '0.917921', '104.446464');
INSERT INTO irena_provinsi VALUES ('18', 'Lampung', '-4.558585', '105.406808');
INSERT INTO irena_provinsi VALUES ('19', 'Maluku', '-3.238462', '130.145273');
INSERT INTO irena_provinsi VALUES ('20', 'Maluku Utara', '1.57100', '127.80877');
INSERT INTO irena_provinsi VALUES ('21', 'Nusa Tenggara Barat', '-8.652933', '117.361648');
INSERT INTO irena_provinsi VALUES ('22', 'Nusa Tenggara Timur', '-8.657382', '121.079370');
INSERT INTO irena_provinsi VALUES ('23', 'Papua', '-4.269928', '138.080353');
INSERT INTO irena_provinsi VALUES ('24', 'Papua Barat', '-1.336115', '133.174716');
INSERT INTO irena_provinsi VALUES ('25', 'Riau', '0.293347', '101.706829');
INSERT INTO irena_provinsi VALUES ('26', 'Sulawesi Barat', '-2.844137', '119.232078');
INSERT INTO irena_provinsi VALUES ('27', 'Sulawesi Selatan', '-3.668799', '119.974053');
INSERT INTO irena_provinsi VALUES ('28', 'Sulawesi Tengah', '-1.430025', '121.445618');
INSERT INTO irena_provinsi VALUES ('29', 'Sulawesi Utara', '0.624693', '123.975002');
INSERT INTO irena_provinsi VALUES ('30', 'Sumatera Barat', '-0.739940', '100.800005');
INSERT INTO irena_provinsi VALUES ('31', 'Sumatera Selatan', '-3.319437', '103.914399');
INSERT INTO irena_provinsi VALUES ('32', 'Sumatera Utara', '2.010856', '98.978489');
INSERT INTO irena_provinsi VALUES ('33', 'DI Yogyakarta', '-7.797591', '110.370714');
INSERT INTO irena_provinsi VALUES ('34', 'Sulawesi Tenggara', '-4.144910', '122.174605');
INSERT INTO irena_provinsi VALUES ('38', 'Bangka Belitung', '-2.74105', '106.44059');

-- ----------------------------
-- Table structure for `irena_provinsi_kabkota`
-- ----------------------------
DROP TABLE IF EXISTS `irena_provinsi_kabkota`;
CREATE TABLE `irena_provinsi_kabkota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_provinsi` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_provinsi_kabkota
-- ----------------------------
INSERT INTO irena_provinsi_kabkota VALUES ('1', '1', 'Kota Banda Aceh', '5.546182', '95.319054');
INSERT INTO irena_provinsi_kabkota VALUES ('3', '25', 'Kota Pekanbaru', '0.5070677', '101.4477793');
INSERT INTO irena_provinsi_kabkota VALUES ('4', '17', 'Kabupaten Natuna', '3.940909', '108.3872724');
INSERT INTO irena_provinsi_kabkota VALUES ('5', '7', 'Kota Jambi', '-1.6101229', '103.6131203');
INSERT INTO irena_provinsi_kabkota VALUES ('6', '8', 'Kota Cikarang', '-6.2621933', '107.5416395');
INSERT INTO irena_provinsi_kabkota VALUES ('7', '14', 'Kota Balikpapan', '-1.2379274', '116.8528526');
INSERT INTO irena_provinsi_kabkota VALUES ('8', '14', 'Kota Samarinda', '-0.4993933', '117.1529458');
INSERT INTO irena_provinsi_kabkota VALUES ('9', '6', 'Kota Jakarta', '-6.2087634', '106.845599');
INSERT INTO irena_provinsi_kabkota VALUES ('10', '20', 'Kota Tidore Kepulauan', '0.5060207', '127.681228');
INSERT INTO irena_provinsi_kabkota VALUES ('11', '32', 'Kota Medan', '3.6004249', '98.6820636');
INSERT INTO irena_provinsi_kabkota VALUES ('12', '8', 'Kota Cirebon', '-6.7320229', '108.5523164');
INSERT INTO irena_provinsi_kabkota VALUES ('13', '9', 'Kabupaten Cilacap', '-7.6178096', '108.902683');
INSERT INTO irena_provinsi_kabkota VALUES ('14', '29', 'Kota Manado', '1.4748305', '124.8420794');
INSERT INTO irena_provinsi_kabkota VALUES ('15', '28', 'Kabupaten Parigi Moutong', '-0.716097', '120.089897');
INSERT INTO irena_provinsi_kabkota VALUES ('16', '7', 'Kabupaten Batanghari', '-1.7083922', '103.0817903');
INSERT INTO irena_provinsi_kabkota VALUES ('17', '5', 'Kabupaten Gorontalo Utara', '0.9252647', '122.4920088');
INSERT INTO irena_provinsi_kabkota VALUES ('18', '12', 'Kota Banjarbaru', '-3.4572422', '114.8103181');
INSERT INTO irena_provinsi_kabkota VALUES ('19', '21', 'Kota Sumbawa Besar', '-8.504043', '117.428497');
INSERT INTO irena_provinsi_kabkota VALUES ('20', '30', 'Kota Padang', '-0.853278', '100.3947116');
INSERT INTO irena_provinsi_kabkota VALUES ('21', '10', 'Kabupaten Kediri', '-7.8480156', '112.0178286');
INSERT INTO irena_provinsi_kabkota VALUES ('22', '23', 'Kabupaten Sarmi', '-2.4678144', '139.2030851');
INSERT INTO irena_provinsi_kabkota VALUES ('23', '23', 'Kota Jayapura', '-2.5916025', '140.6689995');
INSERT INTO irena_provinsi_kabkota VALUES ('24', '23', 'Kabupaten Jayawijaya', '-4.0004481', '138.7995122');
INSERT INTO irena_provinsi_kabkota VALUES ('25', '10', 'Kabupaten Lumajang', '-7.43600705', '113.80050659');
INSERT INTO irena_provinsi_kabkota VALUES ('27', '10', 'Kabupaten Bojonegoro', '-7.1524786', '111.8869293');
INSERT INTO irena_provinsi_kabkota VALUES ('28', '10', 'Kabupaten Mojokerto', '-7.4704747', '112.4401329');
INSERT INTO irena_provinsi_kabkota VALUES ('29', '10', 'Kabupaten Sumenep', '-6.9253999', '113.9060624');
INSERT INTO irena_provinsi_kabkota VALUES ('30', '10', 'Kabupaten Sampang', '-7.1697095', '113.2513554');
INSERT INTO irena_provinsi_kabkota VALUES ('31', '10', 'Kabupaten Blitar', '-8.1308657', '112.2200091');
INSERT INTO irena_provinsi_kabkota VALUES ('32', '10', 'Kabupaten Bondowoso', '-7.9673906', '113.9060624');
INSERT INTO irena_provinsi_kabkota VALUES ('33', '10', 'Kota Malang', '-7.9666204', '112.6326321');
INSERT INTO irena_provinsi_kabkota VALUES ('34', '10', 'Kabupaten Situbondo', '-7.7050532', '113.9952789');
INSERT INTO irena_provinsi_kabkota VALUES ('35', '10', 'Kabupaten Gresik', '-7.1652437', '112.6519882');
INSERT INTO irena_provinsi_kabkota VALUES ('36', '10', 'Kabupaten Nganjuk', '-7.6043721', '111.8993478');
INSERT INTO irena_provinsi_kabkota VALUES ('37', '10', 'Kabupaten Banyu Wangi', '-8.2190944', '114.3691416');
INSERT INTO irena_provinsi_kabkota VALUES ('38', '10', 'Kabupaten Jember', '-8.1733118', '113.7009312');
INSERT INTO irena_provinsi_kabkota VALUES ('39', '10', 'Kabupaten Malang', '-8.242209', '112.7152125');
INSERT INTO irena_provinsi_kabkota VALUES ('40', '18', 'Kabupaten Lampung Tengah', '-4.8008086', '105.3131185');
INSERT INTO irena_provinsi_kabkota VALUES ('41', '18', 'Kabupaten Lampung Timur', '-5.1134995', '105.6881788');
INSERT INTO irena_provinsi_kabkota VALUES ('42', '33', 'Kabupaten Kulon Progo', '-7.8266798', '110.1640846');
INSERT INTO irena_provinsi_kabkota VALUES ('43', '33', 'Kabupaten Bantul', '-7.9190169', '110.3785438');
INSERT INTO irena_provinsi_kabkota VALUES ('44', '33', 'Kabupaten Gunung Kidul', '-8.0305091', '110.6168921');
INSERT INTO irena_provinsi_kabkota VALUES ('45', '33', 'Kota Yogyakarta', '-7.7955798', '110.3694896');
INSERT INTO irena_provinsi_kabkota VALUES ('46', '33', 'Kabupaten Sleman', '-7.716165', '110.335403');
INSERT INTO irena_provinsi_kabkota VALUES ('48', '28', 'Kabupaten Morowali', '-2.6987231', '121.9017954');
INSERT INTO irena_provinsi_kabkota VALUES ('49', '28', 'Kota Palu', '-0.9002915', '119.8779987');
INSERT INTO irena_provinsi_kabkota VALUES ('50', '28', 'Kabupaten Tojo Una-Una', '-1.098757', '121.5370003');
INSERT INTO irena_provinsi_kabkota VALUES ('51', '28', 'Kabupaten Donggala', '-0.4233155', '119.8352303');
INSERT INTO irena_provinsi_kabkota VALUES ('52', '28', 'Kabupaten Banggai Kepulauan', '-1.3075939', '123.0338767');
INSERT INTO irena_provinsi_kabkota VALUES ('53', '28', 'Kabupaten Poso', '-1.6468883', '120.4357631');
INSERT INTO irena_provinsi_kabkota VALUES ('55', '28', 'Kabupaten Sigi', '-1.3859904', '119.8815203');
INSERT INTO irena_provinsi_kabkota VALUES ('57', '14', 'Kabupaten Kutai Timur', '0.9433774', '116.9852422');
INSERT INTO irena_provinsi_kabkota VALUES ('58', '9', 'Kabupaten Banjarnegara', '-7.3794368', '109.6163185');
INSERT INTO irena_provinsi_kabkota VALUES ('59', '9', 'Kabupaten Blora', '-7.012244', '111.3798928');
INSERT INTO irena_provinsi_kabkota VALUES ('61', '9', 'Kabupaten Batang', '-7.0392183', '109.9020509');
INSERT INTO irena_provinsi_kabkota VALUES ('62', '9', 'Kabupaten Boyolali', '-7.4317773', '110.6883536');
INSERT INTO irena_provinsi_kabkota VALUES ('64', '9', 'Kabupaten Purbalingga', '-7.3058578', '109.4259114');
INSERT INTO irena_provinsi_kabkota VALUES ('65', '9', 'Kabupaten Kebumen', '-7.6680559', '109.6524575');
INSERT INTO irena_provinsi_kabkota VALUES ('66', '9', 'Kabupaten Klaten', '-7.657893', '110.6645683');
INSERT INTO irena_provinsi_kabkota VALUES ('67', '9', 'Kabupaten Pati', '-6.7449635', '111.0460407');
INSERT INTO irena_provinsi_kabkota VALUES ('68', '9', 'Kabupaten Pekalongan', '-7.0517128', '109.6163185');
INSERT INTO irena_provinsi_kabkota VALUES ('69', '9', 'Kabupaten Sragen', '-7.43027', '111.0091855');
INSERT INTO irena_provinsi_kabkota VALUES ('70', '9', 'Kabupaten Sukoharjo', '-7.6483506', '110.8552919');
INSERT INTO irena_provinsi_kabkota VALUES ('71', '9', 'Kabupaten Wonogiri', '-7.8846484', '111.0460407');
INSERT INTO irena_provinsi_kabkota VALUES ('72', '9', 'Kabupaten Wonosobo', '-7.3632094', '109.9001796');
INSERT INTO irena_provinsi_kabkota VALUES ('73', '9', 'Kabupaten Brebes', '-6.9591793', '108.902683');
INSERT INTO irena_provinsi_kabkota VALUES ('74', '9', 'Kabupaten Tegal', '-6.8588473', '109.1047663');
INSERT INTO irena_provinsi_kabkota VALUES ('75', '9', 'Kabupaten Kendal', '-7.0265442', '110.1879106');
INSERT INTO irena_provinsi_kabkota VALUES ('76', '9', 'Kabupaten Karang Anyar', '-7.6070727', '110.9866942');
INSERT INTO irena_provinsi_kabkota VALUES ('77', '9', 'Kabupaten Purwerejo', '-7.7403739', '110.0330554');
INSERT INTO irena_provinsi_kabkota VALUES ('78', '26', 'Kabupaten Majene', '-3.0297251', '118.9062794');
INSERT INTO irena_provinsi_kabkota VALUES ('79', '26', 'Kabupaten Polewali Mandar', '-3.3419323', '119.1390642');
INSERT INTO irena_provinsi_kabkota VALUES ('80', '26', 'Kabupaten Mamasa', '-2.9118209', '119.3250347');
INSERT INTO irena_provinsi_kabkota VALUES ('81', '26', 'Kabupaten Mamuju Utara', '-1.526454', '119.510771');
INSERT INTO irena_provinsi_kabkota VALUES ('82', '27', 'Kabupaten Bone', '-4.7443383', '120.0665236');
INSERT INTO irena_provinsi_kabkota VALUES ('83', '27', 'Kabupaten Sinjai', '-5.2171961', '120.112735');
INSERT INTO irena_provinsi_kabkota VALUES ('84', '27', 'Kabupaten Jeneponto', '-5.554579', '119.6730939');
INSERT INTO irena_provinsi_kabkota VALUES ('85', '27', 'Kabupaten Bulukumba', '-5.4329368', '120.2051096');
INSERT INTO irena_provinsi_kabkota VALUES ('86', '27', 'Kabupaten Enrekang', '-3.4590744', '119.8815203');
INSERT INTO irena_provinsi_kabkota VALUES ('87', '27', 'Kabupaten Luwu Utara', '-2.2690446', '119.9740534');
INSERT INTO irena_provinsi_kabkota VALUES ('88', '27', 'Kota Makassar', '-5.1476651', '119.4327314');
INSERT INTO irena_provinsi_kabkota VALUES ('89', '27', 'Kabupaten Pangkajene Kepulauan', '-4.805035', '119.5571677');
INSERT INTO irena_provinsi_kabkota VALUES ('90', '27', 'Kabupaten Pangkep', '-4.805035', '119.5571677');
INSERT INTO irena_provinsi_kabkota VALUES ('91', '27', 'Kabupaten Takalar', '-5.4162493', '119.4875668');
INSERT INTO irena_provinsi_kabkota VALUES ('92', '27', 'Kabupaten Tana Toraja', '-3.0753003', '119.742604');
INSERT INTO irena_provinsi_kabkota VALUES ('93', '27', 'Kabupaten Bantaeng', '-5.5169316', '120.0202964');
INSERT INTO irena_provinsi_kabkota VALUES ('94', '27', 'Kabupaten Sidenreng Rappang', '-3.7738981', '120.0202964');
INSERT INTO irena_provinsi_kabkota VALUES ('95', '27', 'Kabupaten Soppeng', '-4.3518541', '119.9277947');
INSERT INTO irena_provinsi_kabkota VALUES ('96', '27', 'Kabupaten Selayar', '-6.2869786', '120.5048792');
INSERT INTO irena_provinsi_kabkota VALUES ('97', '27', 'Kabupaten Wajo', '-4.022229', '120.0665236');
INSERT INTO irena_provinsi_kabkota VALUES ('98', '27', 'Kabupaten Barru', '-4.436417', '119.6499162');
INSERT INTO irena_provinsi_kabkota VALUES ('99', '21', 'Kabupaten Lombok Timur', '-8.5134471', '116.5609857');
INSERT INTO irena_provinsi_kabkota VALUES ('101', '21', 'Kabupaten Bima', '-8.4353962', '118.626479');
INSERT INTO irena_provinsi_kabkota VALUES ('102', '21', 'Kota Mataram', '-8.5769951', '116.1004894');
INSERT INTO irena_provinsi_kabkota VALUES ('103', '21', 'Kabupaten Lombok Barat', '-8.6464599', '116.1123078');
INSERT INTO irena_provinsi_kabkota VALUES ('104', '21', 'Kabupaten Dompu', '-8.5363958', '118.3461948');
INSERT INTO irena_provinsi_kabkota VALUES ('105', '2', 'Kota Denpasar', '-8.6704582', '115.2126293');
INSERT INTO irena_provinsi_kabkota VALUES ('106', '25', 'Kabupaten Indragiri Hili', '-0.1456733', '102.989615');
INSERT INTO irena_provinsi_kabkota VALUES ('107', '31', 'Kabupaten Muara Enim', '-3.7114163', '104.0072348');
INSERT INTO irena_provinsi_kabkota VALUES ('108', '4', 'Kabupaten Kepahiang', '-3.6130091', '102.6675575');
INSERT INTO irena_provinsi_kabkota VALUES ('109', '11', 'Kabupaten Sanggau', '0.1400117', '110.5215459');
INSERT INTO irena_provinsi_kabkota VALUES ('110', '11', 'Kabupaten Kapuas Hulu', '0.8336697', '113.0011989');
INSERT INTO irena_provinsi_kabkota VALUES ('111', '1', 'Kabupaten Aceh Tengah', '4.4482641', '96.8350999');
INSERT INTO irena_provinsi_kabkota VALUES ('112', '13', 'Kabupaten Kapuas', '-1.8116445', '114.3341432');
INSERT INTO irena_provinsi_kabkota VALUES ('113', '13', 'Kabupaten Kotawaringin Timur', '-2.1225475', '112.8105512');
INSERT INTO irena_provinsi_kabkota VALUES ('114', '13', 'Kota Palangkaraya', '-2.2161048', '113.913977');
INSERT INTO irena_provinsi_kabkota VALUES ('115', '13', 'Kabupaten Barito Selatan', '-1.875943', '114.8092691');
INSERT INTO irena_provinsi_kabkota VALUES ('116', '13', 'Kabupaten Barito Timur', '-2.0123999', '115.188916');
INSERT INTO irena_provinsi_kabkota VALUES ('117', '13', 'Kabupaten Seruyan', '-3.0123467', '112.4291464');
INSERT INTO irena_provinsi_kabkota VALUES ('118', '13', 'Kabupaten Katingan', '-0.9758379', '112.8105512');
INSERT INTO irena_provinsi_kabkota VALUES ('119', '13', 'Kabupaten Gunung MAS', '-1.2522464', '113.5728501');
INSERT INTO irena_provinsi_kabkota VALUES ('120', '34', 'Kota Kendari', '-3.9984597', '122.5129742');
INSERT INTO irena_provinsi_kabkota VALUES ('121', '34', 'Kabupaten Buton', '-5.3096355', '122.9888319');
INSERT INTO irena_provinsi_kabkota VALUES ('122', '34', 'Kabupaten Konawe Selatan', '-4.2027915', '122.4467238');
INSERT INTO irena_provinsi_kabkota VALUES ('123', '34', 'Kabupaten Konawe', '-3.9380432', '122.0837445');
INSERT INTO irena_provinsi_kabkota VALUES ('125', '34', 'Kabupaten Muna', '-4.901629', '122.6277455');
INSERT INTO irena_provinsi_kabkota VALUES ('126', '24', 'Kabupaten Sorong', '-1.1223204', '131.4883373');
INSERT INTO irena_provinsi_kabkota VALUES ('127', '24', 'Kabupaten Kaimana', '-3.288406', '133.9436788');
INSERT INTO irena_provinsi_kabkota VALUES ('128', '24', 'Kabupaten Fakfak', '-3.097706', '133.0194897');
INSERT INTO irena_provinsi_kabkota VALUES ('129', '24', 'Kota Sorong', '-0.8819986', '131.2954834');
INSERT INTO irena_provinsi_kabkota VALUES ('131', '28', 'Kabupaten Banggai', '-0.956178', '122.6277455');
INSERT INTO irena_provinsi_kabkota VALUES ('132', '32', 'Kota Padang Sidempuan', '1.3721801', '99.2730146');
INSERT INTO irena_provinsi_kabkota VALUES ('133', '27', 'Kabupaten Palopo', '-3.0108458', '120.2022239');
INSERT INTO irena_provinsi_kabkota VALUES ('134', '9', 'Kota Salatiga', '-7.3305234', '110.5084366');
INSERT INTO irena_provinsi_kabkota VALUES ('135', '10', 'Kabupaten Tulungagung', '-8.0843211', '111.9045541');
INSERT INTO irena_provinsi_kabkota VALUES ('136', '30', 'Kota Bukit Tinggi', '-0.3039178', '100.383479');
INSERT INTO irena_provinsi_kabkota VALUES ('137', '1', 'Kabupaten Langsa', '4.4757799', '97.9641022');
INSERT INTO irena_provinsi_kabkota VALUES ('140', '4', 'Kota Bengkulu', '-3.7928451', '102.2607641');
INSERT INTO irena_provinsi_kabkota VALUES ('141', '8', 'Kota Bandung', '-6.9174639', '107.6191228');
INSERT INTO irena_provinsi_kabkota VALUES ('142', '27', 'Kota Banjarmasin', '-3.3096594', '114.5920653');
INSERT INTO irena_provinsi_kabkota VALUES ('143', '12', 'Kota Banjarmasin', '-3.3186067', '114.5943784');
INSERT INTO irena_provinsi_kabkota VALUES ('144', '13', 'Kabupaten Tanah Bumbu', '-3.4615926', '116.0000104');
INSERT INTO irena_provinsi_kabkota VALUES ('145', '12', 'Kabupaten Tanah Bambu', '-3.4615926', '116.0000104');
INSERT INTO irena_provinsi_kabkota VALUES ('146', '5', 'Kota Gorontalo', '0.5435442', '123.0567693');
INSERT INTO irena_provinsi_kabkota VALUES ('147', '19', 'Kabupaten Maluku Tenggara', '-5.4737337', '133.0531122');
INSERT INTO irena_provinsi_kabkota VALUES ('148', '19', 'Kabupaten Maluku Tenggara Barat', '-7.5322642', '131.3611121');
INSERT INTO irena_provinsi_kabkota VALUES ('149', '19', 'Kabupaten Maluku Barat Daya', '-7.7851588', '126.3498097');
INSERT INTO irena_provinsi_kabkota VALUES ('150', '20', 'Kabupaten Kepulauan Sula', '-1.8321222', '125.958777');
INSERT INTO irena_provinsi_kabkota VALUES ('151', '21', 'Kabupaten Sumbawa', '-8.6529334', '117.3616476');
INSERT INTO irena_provinsi_kabkota VALUES ('152', '19', 'Kabupaten Maluku Tengah', '-2.936697', '129.403398');
INSERT INTO irena_provinsi_kabkota VALUES ('153', '20', 'Kabupaten Halmahera Tengah', '0.4419543', '128.3587174');
INSERT INTO irena_provinsi_kabkota VALUES ('154', '21', 'Kota Bima', '-8.4642661', '118.7449028');
INSERT INTO irena_provinsi_kabkota VALUES ('155', '24', 'kabupaten Tambrauw', '-0.781856', '132.3938375');
INSERT INTO irena_provinsi_kabkota VALUES ('156', '5', 'Kabupaten Gorontalo', '0.5692733', '122.8084496');
INSERT INTO irena_provinsi_kabkota VALUES ('157', '23', 'Kabupaten Boven DigoeL', '-5.7400018', '140.3481835');
INSERT INTO irena_provinsi_kabkota VALUES ('159', '25', 'Kabupaten Indragiri Hulu', '-0.7361181', '102.2547919');
INSERT INTO irena_provinsi_kabkota VALUES ('160', '38', 'Kabupaten Bangka Barat', '-1.8405046', '105.5005483');
INSERT INTO irena_provinsi_kabkota VALUES ('161', '18', 'Kabupaten Lampung Utara', '-4.8133905', '104.7520939');
INSERT INTO irena_provinsi_kabkota VALUES ('162', '14', 'Kabupaten Paser', '-1.7175266', '115.9467997');
INSERT INTO irena_provinsi_kabkota VALUES ('163', '28', 'Kabupaten Morowali Utara', '-1.6311761', '121.3541631');
INSERT INTO irena_provinsi_kabkota VALUES ('164', '34', 'Kota Bau Bau', '-5.4700112', '122.5976841');
INSERT INTO irena_provinsi_kabkota VALUES ('165', '20', 'Kabupaten Halmahera Utara', '1.5074308', '127.8936663');
INSERT INTO irena_provinsi_kabkota VALUES ('166', '9', 'Kota Solo/Surakarta', '-7.5754887', '110.8243272');
INSERT INTO irena_provinsi_kabkota VALUES ('167', '9', 'Kabupaten Nganjuk', '-7.6272276', '111.1314358');
INSERT INTO irena_provinsi_kabkota VALUES ('168', '23', 'Kabupaten Puncak Jaya', '-3.4467891', '137.8427298');
INSERT INTO irena_provinsi_kabkota VALUES ('169', '3', 'Kota Serang', '-6.1103661', '106.1639749');
INSERT INTO irena_provinsi_kabkota VALUES ('170', '18', 'Kota Bandar Lampung', '-5.3971396', '105.2667887');
INSERT INTO irena_provinsi_kabkota VALUES ('171', '10', 'Kota Surabaya', '-7.2574719', '112.7520883');
INSERT INTO irena_provinsi_kabkota VALUES ('172', '17', 'Kota Batam', '1.0458378', '103.98402');
INSERT INTO irena_provinsi_kabkota VALUES ('173', '31', 'Kota Palembang', '-2.9760735', '104.7754307');
INSERT INTO irena_provinsi_kabkota VALUES ('174', '7', 'Kabupaten Sarolangun', '-2.3230422', '102.7135121');
INSERT INTO irena_provinsi_kabkota VALUES ('175', '7', 'Kabupaten Tebo', '-1.2592999', '102.3463875');
INSERT INTO irena_provinsi_kabkota VALUES ('176', '22', 'Kota Kupang', '-10.1771997', '123.6070329');
INSERT INTO irena_provinsi_kabkota VALUES ('177', '1', 'Kota Beureunuen', '5.2796524', '95.9742801');
INSERT INTO irena_provinsi_kabkota VALUES ('178', '1', 'Kabupaten Aceh Timur', '4.5224111', '97.6114217');
INSERT INTO irena_provinsi_kabkota VALUES ('179', '32', 'Kabupaten Mandailing Natal', '0.7432372', '99.3673084');
INSERT INTO irena_provinsi_kabkota VALUES ('180', '21', 'Kabupaten Lombok Tengah', '-8.694623', '116.2777073');
INSERT INTO irena_provinsi_kabkota VALUES ('181', '24', 'Kabupaten Sorong Selatan', '-1.7657744', '132.1572702');
INSERT INTO irena_provinsi_kabkota VALUES ('182', '8', 'Kota Bekasi', '-6.2382699', '106.9755726');
INSERT INTO irena_provinsi_kabkota VALUES ('183', '31', 'Kota Baturaja', '-4.1240198', '104.1679963');
INSERT INTO irena_provinsi_kabkota VALUES ('184', '31', 'Kota Martapura', '-4.3139423', '104.360461');
INSERT INTO irena_provinsi_kabkota VALUES ('185', '10', 'Kabupaten Jombang', '-7.5740867', '112.28609');
INSERT INTO irena_provinsi_kabkota VALUES ('186', '10', 'Kota Madiun', '-7.6310587', '111.5300159');
INSERT INTO irena_provinsi_kabkota VALUES ('187', '9', 'Kota Semarang', '-7.0051453', '110.4381254');
INSERT INTO irena_provinsi_kabkota VALUES ('188', '9', 'Kabupaten Kudus', '-6.7726186', '110.8791343');
INSERT INTO irena_provinsi_kabkota VALUES ('189', '9', 'Kabupaten Rembang', '-6.8082115', '111.4275888');
INSERT INTO irena_provinsi_kabkota VALUES ('190', '9', 'Kabupaten Jepara', '111.4275888', '110.6786933');
INSERT INTO irena_provinsi_kabkota VALUES ('191', '9', 'Kabupaten Grobogan', '-7.1541672', '110.9506636');
INSERT INTO irena_provinsi_kabkota VALUES ('192', '18', 'Kabupaten Pasawaran', '-5.493245', '105.0791228');
INSERT INTO irena_provinsi_kabkota VALUES ('193', '18', 'Kabupaten Lampung Selatan', '-5.5622614', '105.5474373');
INSERT INTO irena_provinsi_kabkota VALUES ('194', '18', 'Kabupaten Pring Sewu', '-5.3558465', '104.9767999');
INSERT INTO irena_provinsi_kabkota VALUES ('196', '18', 'Kabupaten Way Kanan', '-4.4963689', '104.5655273');
INSERT INTO irena_provinsi_kabkota VALUES ('197', '18', 'Kabupaten Tulang Bawang Barat', '-4.3303072', '104.6296338');
INSERT INTO irena_provinsi_kabkota VALUES ('198', '22', 'Kabupaten Alor', '-8.2928427', '124.5528387');
INSERT INTO irena_provinsi_kabkota VALUES ('199', '22', 'Kabupaten Kupang', '-9.9906166', '123.8857747');
INSERT INTO irena_provinsi_kabkota VALUES ('200', '22', 'Kabupaten Manggarai', '-8.6796987', '120.3896651');
INSERT INTO irena_provinsi_kabkota VALUES ('201', '22', 'Kabupaten Ende', '-8.6762912', '121.7195459');
INSERT INTO irena_provinsi_kabkota VALUES ('202', '22', 'Kabupaten Sika', '-8.6766175', '122.1291843');
INSERT INTO irena_provinsi_kabkota VALUES ('203', '22', 'Kabupaten Timor Tengah Utara', '-9.4522647', '124.597132');
INSERT INTO irena_provinsi_kabkota VALUES ('204', '22', 'Kabupaten Flores Timur', '-8.3130942', '122.9663018');
INSERT INTO irena_provinsi_kabkota VALUES ('205', '22', 'Kabupaten Sumba Timur', '-9.9802103', '120.3435506');
INSERT INTO irena_provinsi_kabkota VALUES ('206', '22', 'Kabupaten Sumba Barat Daya', '-9.539139', '119.1390642');
INSERT INTO irena_provinsi_kabkota VALUES ('207', '7', 'Kabupaten Tanjab', '-1.105846', '103.0817903');
INSERT INTO irena_provinsi_kabkota VALUES ('208', '1', 'Kabupaten Aceh Besar', '5.452917', '95.477781');
INSERT INTO irena_provinsi_kabkota VALUES ('209', '1', 'Kabupaten Pidie', '5.384776', '95.960237');
INSERT INTO irena_provinsi_kabkota VALUES ('210', '32', 'Kabupaten Langkat', '3.849371', '98.443331');
INSERT INTO irena_provinsi_kabkota VALUES ('212', '32', 'Kabupaten Batu Bara', '3.174098', '99.500614');
INSERT INTO irena_provinsi_kabkota VALUES ('213', '23', 'Kabupaten Asmat', '-5.05740', '138.398819');
INSERT INTO irena_provinsi_kabkota VALUES ('214', '23', 'Kabupaten Yahukimo', '-4.49397', '139.52800');
INSERT INTO irena_provinsi_kabkota VALUES ('215', '32', 'Kabupaten Labuhan Batu', '2.343986', '100.170326');
INSERT INTO irena_provinsi_kabkota VALUES ('216', '32', 'Kabupaten Labuan Batu Selatan', '1.879935', '100.170326');
INSERT INTO irena_provinsi_kabkota VALUES ('217', '32', 'Kabupaten Deli Serdang', '3.420180', '98.704075');
INSERT INTO irena_provinsi_kabkota VALUES ('218', '7', 'Kabupaten Tanjung Jabung Barat', '-1.105846', '103.081790');
INSERT INTO irena_provinsi_kabkota VALUES ('219', '7', 'Kabupaten Tanjung Jabung Timur', '-1.102437', '103.821626');
INSERT INTO irena_provinsi_kabkota VALUES ('220', '7', 'Kabupaten Muaro Jambi', '-1.552136', '103.821626');
INSERT INTO irena_provinsi_kabkota VALUES ('221', '23', 'Kabupaten Yalimo', '-3.78528', '139.44660');
INSERT INTO irena_provinsi_kabkota VALUES ('222', '25', 'kabupaten Siak', '0.811881', '101.797961');
INSERT INTO irena_provinsi_kabkota VALUES ('223', '25', 'kabupaten Bengkalis', '1.413919', '101.615777');
INSERT INTO irena_provinsi_kabkota VALUES ('224', '25', 'Kabupaten Rokan Hilir', '1.646398', '100.800005');
INSERT INTO irena_provinsi_kabkota VALUES ('225', '24', 'Kabupaten Teluk Bintuni', '-1.90568', '133.32947');
INSERT INTO irena_provinsi_kabkota VALUES ('226', '24', 'Kabupaten Manokwari', '-0.99896', '133.01949');
INSERT INTO irena_provinsi_kabkota VALUES ('227', '24', 'Kabupaten Kepulauan Yapen', '-1.74694', '136.17090');
INSERT INTO irena_provinsi_kabkota VALUES ('228', '25', 'Kota Dumai', '1.666635', '101.400186');
INSERT INTO irena_provinsi_kabkota VALUES ('229', '25', 'Kabupaten Kuantan Singingi', '-0.441160', '101.524805');
INSERT INTO irena_provinsi_kabkota VALUES ('230', '31', 'Kabupaten Musi Banyuasin', '-2.544203', '103.728917');
INSERT INTO irena_provinsi_kabkota VALUES ('231', '24', 'Kabupaten Nabire', '-3.50955', '135.75210');
INSERT INTO irena_provinsi_kabkota VALUES ('232', '31', 'Kabupaten Ogan Komering Ilir', '-3.455974', '105.219481');
INSERT INTO irena_provinsi_kabkota VALUES ('233', '18', 'Kabupaten Tulang Bawang', '-4.317658', '105.500548');
INSERT INTO irena_provinsi_kabkota VALUES ('234', '18', 'Kabupaten Lampung Tenggara', '-5.113499', '105.688179');
INSERT INTO irena_provinsi_kabkota VALUES ('235', '1', 'Kabupaten Aceh Jaya', '4.787368', '95.645795');
INSERT INTO irena_provinsi_kabkota VALUES ('236', '23', 'Kabupaten Mamberamo Raya', '-2.53313', '137.76376');
INSERT INTO irena_provinsi_kabkota VALUES ('237', '32', 'Kabupaten Tapanuli Selatan', '1.577493', '99.278558');
INSERT INTO irena_provinsi_kabkota VALUES ('238', '30', 'Kabupaten Solok', '-0.964384', '100.890310');
INSERT INTO irena_provinsi_kabkota VALUES ('239', '25', 'Kabupaten Kampar', '0.146671', '101.161736');
INSERT INTO irena_provinsi_kabkota VALUES ('240', '20', 'Kabupaten Pulau Morotai', '2.36567', '128.40084');
INSERT INTO irena_provinsi_kabkota VALUES ('241', '20', 'Kabupaten Halmahera Selatan', '-1.51090', '127.72377');
INSERT INTO irena_provinsi_kabkota VALUES ('242', '32', 'Kabupaten Samosir', '2.627443', '98.792184');
INSERT INTO irena_provinsi_kabkota VALUES ('243', '9', 'Kabupaten Semarang', '-7.176479', '110.473876');
INSERT INTO irena_provinsi_kabkota VALUES ('244', '9', 'Kabupaten Magelang', '-7.430524', '110.283222');
INSERT INTO irena_provinsi_kabkota VALUES ('245', '9', 'Kabupaten Temanggung', '-7.274872', '110.089189');
INSERT INTO irena_provinsi_kabkota VALUES ('246', '7', 'Kabupaten Merangin', '-2.175279', '101.980461');
INSERT INTO irena_provinsi_kabkota VALUES ('247', '21', 'Kabupaten Lombok Utara', '-8.373908', '116.277707');
INSERT INTO irena_provinsi_kabkota VALUES ('248', '10', 'Kabupaten Pasuruan', '-7.785996', '112.858217');
INSERT INTO irena_provinsi_kabkota VALUES ('249', '10', 'Kabupaten Lamongan', '-7.126926', '112.333777');
INSERT INTO irena_provinsi_kabkota VALUES ('250', '14', 'Kabupaten Paser', '-1.717527', '115.946800');
INSERT INTO irena_provinsi_kabkota VALUES ('251', '14', 'Kabupaten Penajam Paser Utara', '-1.187564', '116.560986');
INSERT INTO irena_provinsi_kabkota VALUES ('252', '14', 'Kabupaten Berau', '2.045088', '117.361648');
INSERT INTO irena_provinsi_kabkota VALUES ('253', '14', 'Kabupaten Kutai Barat', '-0.405180', '115.852176');
INSERT INTO irena_provinsi_kabkota VALUES ('254', '15', 'Kabupaten Bulungan', '2.904248', '116.985242');
INSERT INTO irena_provinsi_kabkota VALUES ('255', '11', 'Kabupaten Bengkayang', '1.069110', '109.663931');
INSERT INTO irena_provinsi_kabkota VALUES ('256', '11', 'Kabupaten Sanggau', '0.140012', '110.521546');
INSERT INTO irena_provinsi_kabkota VALUES ('257', '15', 'Kabupaten Malinau', '3.073093', '116.041389');
INSERT INTO irena_provinsi_kabkota VALUES ('258', '11', 'Kabupaten Sambas', '1.362519', '109.283153');
INSERT INTO irena_provinsi_kabkota VALUES ('259', '5', 'Kabupaten Boalemo', '0.701342', '122.265389');
INSERT INTO irena_provinsi_kabkota VALUES ('260', '34', 'Kabupaten Kolaka Utara', '-3.134723', '121.171039');
INSERT INTO irena_provinsi_kabkota VALUES ('261', '27', 'Kabupaten Pinrang', '-3.648349', '119.557168');
INSERT INTO irena_provinsi_kabkota VALUES ('262', '11', 'Kabupaten Mamuju Utara', '-1.526454', '119.510771');
INSERT INTO irena_provinsi_kabkota VALUES ('263', '8', 'Kabupaten Indramayu', '-6.337310', '108.325833');
INSERT INTO irena_provinsi_kabkota VALUES ('264', '10', 'Kabupaten Tuban', '-6.984746', '111.952249');
INSERT INTO irena_provinsi_kabkota VALUES ('265', '10', 'Kabupaten Sidoarjo', '-7.472613', '112.667540');
INSERT INTO irena_provinsi_kabkota VALUES ('266', '10', 'Kota Probolinggo', '-7.776423', '113.203713');
INSERT INTO irena_provinsi_kabkota VALUES ('267', '10', 'Kabupaten Pacitan', '-8.126331', '111.141423');
INSERT INTO irena_provinsi_kabkota VALUES ('268', '10', 'Kota Mojokerto', '-7.470475', '112.440133');
INSERT INTO irena_provinsi_kabkota VALUES ('269', '9', 'Kabupaten Banyumas', '-7.483213', '109.140438');
INSERT INTO irena_provinsi_kabkota VALUES ('270', '8', 'Kabupaten Sumedang', '-6.832858', '107.953184');
INSERT INTO irena_provinsi_kabkota VALUES ('271', '2', 'Kabupaten Badung', '-8.581930', '115.177059');
INSERT INTO irena_provinsi_kabkota VALUES ('272', '12', 'Kabupaten Banjar', '-3.320023', '114.999146');
INSERT INTO irena_provinsi_kabkota VALUES ('273', '23', 'Kabupaten Pegunungan Bintang', '-4.558987', '140.513559');
INSERT INTO irena_provinsi_kabkota VALUES ('274', '23', 'Kabupaten Keerom', '-3.344954', '140.762449');
INSERT INTO irena_provinsi_kabkota VALUES ('275', '24', 'Kabupaten manokwari', '-0.998958', '133.019490');
INSERT INTO irena_provinsi_kabkota VALUES ('276', '24', 'Kabupaten Teluk Wondama', '-2.855170', '134.323656');
INSERT INTO irena_provinsi_kabkota VALUES ('277', '1', 'KAbupaten Aceh Utara', '4.978633', '97.222142');
INSERT INTO irena_provinsi_kabkota VALUES ('278', '30', 'Kabupaten Dharmasraya', '-1.130580', '101.684059');
INSERT INTO irena_provinsi_kabkota VALUES ('279', '23', 'Kabupaten Tolikara', '-3.481132', '138.478726');
INSERT INTO irena_provinsi_kabkota VALUES ('280', '8', 'Kabupaten Ciamis', '-7.332077', '108.349254');
INSERT INTO irena_provinsi_kabkota VALUES ('281', '8', 'Kabupaten Bogor', '-6.551776', '106.629130');
INSERT INTO irena_provinsi_kabkota VALUES ('282', '8', 'Kota Bogor', '-6.597147', '106.806039');
INSERT INTO irena_provinsi_kabkota VALUES ('283', '27', 'Kabupaten Kepulauan Selayar', '-6.286979', '120.504879');
INSERT INTO irena_provinsi_kabkota VALUES ('284', '3', 'Kabupaten Lebak', '-6.564396', '106.252214');
INSERT INTO irena_provinsi_kabkota VALUES ('285', '14', 'Kabupaten Bulungan', '2.904248', '116.985242');
INSERT INTO irena_provinsi_kabkota VALUES ('286', '23', 'Kabupaten Merauke', '-8.486219', '140.554972');
INSERT INTO irena_provinsi_kabkota VALUES ('287', '2', 'Kabupaten Klungkung', '-8.727807', '115.544423');
INSERT INTO irena_provinsi_kabkota VALUES ('288', '29', 'Kabupaten Minahasa Utara', '1.532797', '124.994751');
INSERT INTO irena_provinsi_kabkota VALUES ('289', '22', 'Kabupaten Sumba Tengah', '-9.487923', '119.696268');
INSERT INTO irena_provinsi_kabkota VALUES ('291', '27', 'Kabupaten Luwu Timur', '-2.582552', '121.171039');
INSERT INTO irena_provinsi_kabkota VALUES ('292', '31', 'Kabupaten Ogan Komering Ulu Timur', '-3.856793', '104.752094');
INSERT INTO irena_provinsi_kabkota VALUES ('293', '21', 'Kabupaten Sumbawa Barat', '-8.929291', '116.891034');
INSERT INTO irena_provinsi_kabkota VALUES ('294', '17', 'Kota Tanjungpinang', '0.918550', '104.466507');
INSERT INTO irena_provinsi_kabkota VALUES ('295', '9', 'Kabupaten Bojonegoro', '-7.317463', '111.761466');
INSERT INTO irena_provinsi_kabkota VALUES ('296', '19', 'Kabupaten Buru Selatan', '-3.727397', '126.695722');
INSERT INTO irena_provinsi_kabkota VALUES ('297', '1', 'Kabupaten Aceh Barat', '4.454274', '96.152699');
INSERT INTO irena_provinsi_kabkota VALUES ('298', '1', 'Kabupaten Aceh Singkil', '2.358946', '97.872160');
INSERT INTO irena_provinsi_kabkota VALUES ('299', '30', 'Kabupaten Agam', '-0.220939', '100.170326');
INSERT INTO irena_provinsi_kabkota VALUES ('300', '23', 'Kabupaten Nduga', '-4.406950', '138.239353');
INSERT INTO irena_provinsi_kabkota VALUES ('301', '29', 'Kabupaten Bolaang Mongondow Utara', '0.907036', '123.265731');
INSERT INTO irena_provinsi_kabkota VALUES ('302', '22', 'Kabupaten Belu', '-9.153898', '124.906551');
INSERT INTO irena_provinsi_kabkota VALUES ('303', '38', 'Kabupaten Bangka Tengah', '-2.400782', '106.205148');
INSERT INTO irena_provinsi_kabkota VALUES ('304', '22', 'Kabupaten Malaka', '-9.530859', '124.906551');
INSERT INTO irena_provinsi_kabkota VALUES ('305', '28', 'Kabupaten Buol', '0.969545', '121.354163');
INSERT INTO irena_provinsi_kabkota VALUES ('306', '3', 'Kabupaten Pandeglang', '-6.748271', '105.688179');
INSERT INTO irena_provinsi_kabkota VALUES ('307', '5', 'Kabupaten Bone Bolango', '0.565789', '123.348615');
INSERT INTO irena_provinsi_kabkota VALUES ('308', '20', 'Kota Ternate', '0.771031', '127.369518');
INSERT INTO irena_provinsi_kabkota VALUES ('309', '27', 'Kabupaten Gowa', '-5.203994', '119.457607');
INSERT INTO irena_provinsi_kabkota VALUES ('310', '15', 'Kota Tarakan', '3.327360', '117.578505');
INSERT INTO irena_provinsi_kabkota VALUES ('311', '30', 'Kota Tanah Datar', '0.521698', '101.444562');
INSERT INTO irena_provinsi_kabkota VALUES ('312', '12', 'Kabupaten Barito Kuala', '-3.071474', '114.666794');
INSERT INTO irena_provinsi_kabkota VALUES ('313', '31', 'Kabupaten Rejang Lebong', '-3.454815', '102.667557');
INSERT INTO irena_provinsi_kabkota VALUES ('314', '2', 'Kabupaten Jembrana', '-8.323344', '114.666794');
INSERT INTO irena_provinsi_kabkota VALUES ('315', '17', 'Kabupaten Bintan', '1.061917', '104.518921');
INSERT INTO irena_provinsi_kabkota VALUES ('316', '8', 'Kabupaten Bandung', '-7.134070', '107.621532');
INSERT INTO irena_provinsi_kabkota VALUES ('317', '8', 'Kabupaten Purwakarta', '-6.564924', '107.432196');
INSERT INTO irena_provinsi_kabkota VALUES ('318', '27', 'Kabupaten Musi Banyuasin', '-2.544203', '103.728917');
INSERT INTO irena_provinsi_kabkota VALUES ('319', '14', 'Kabupaten Mahakam Ulu', '0.961668', '114.714292');
INSERT INTO irena_provinsi_kabkota VALUES ('320', '15', 'Kabupaten Nunukan', '4.080965', '116.608165');
INSERT INTO irena_provinsi_kabkota VALUES ('321', '27', 'Kabupaten Maros', '-5.054914', '119.696268');
INSERT INTO irena_provinsi_kabkota VALUES ('322', '19', 'Kota Ambon', '-3.655393', '128.190772');
INSERT INTO irena_provinsi_kabkota VALUES ('323', '24', 'Kabupaten Manokwari Selatan', '-0.913511', '134.000867');
INSERT INTO irena_provinsi_kabkota VALUES ('324', '24', 'Kabupaten Maybrat', '-1.297098', '132.315099');
INSERT INTO irena_provinsi_kabkota VALUES ('325', '23', 'Kabupaten Nabire', '-3.509546', '135.752098');
INSERT INTO irena_provinsi_kabkota VALUES ('326', '6', 'Jakarta Timur', '-6.225014', '106.900447');
INSERT INTO irena_provinsi_kabkota VALUES ('327', '38', 'Kota Pangkal Pinang', '-2.131627', '106.116930');
INSERT INTO irena_provinsi_kabkota VALUES ('328', '4', 'Kabupaten Bengkulu Tengah', '-3.696232', '102.392214');
INSERT INTO irena_provinsi_kabkota VALUES ('329', '5', 'Kabupaten Pohuwato', '0.705528', '121.719546');
INSERT INTO irena_provinsi_kabkota VALUES ('330', '8', 'Kabupaten Kuningan Jawa Barat', '-7.013805', '108.570064');
INSERT INTO irena_provinsi_kabkota VALUES ('331', '8', 'Kabupaten Cianjur', '-7.357977', '107.195720');
INSERT INTO irena_provinsi_kabkota VALUES ('332', '8', 'Kabupaten Garut', '-6.305891', '106.378758');
INSERT INTO irena_provinsi_kabkota VALUES ('333', '8', 'Kabupaten Subang', '-6.348762', '107.763621');
INSERT INTO irena_provinsi_kabkota VALUES ('334', '8', 'Kota Sukabumi', '-6.927736', '106.929958');
INSERT INTO irena_provinsi_kabkota VALUES ('335', '8', 'Kota Tasikmalaya', '-7.350581', '108.217163');
INSERT INTO irena_provinsi_kabkota VALUES ('336', '9', 'Kabupaten Pemalang', '-7.059942', '109.425911');
INSERT INTO irena_provinsi_kabkota VALUES ('337', '10', 'Kabupaten Bangkalan', '-7.038375', '112.913669');
INSERT INTO irena_provinsi_kabkota VALUES ('338', '10', 'Kabupaten Pamekasan', '-7.105086', '113.525232');

-- ----------------------------
-- Table structure for `irena_sbsn_dpp`
-- ----------------------------
DROP TABLE IF EXISTS `irena_sbsn_dpp`;
CREATE TABLE `irena_sbsn_dpp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `aktif` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_sbsn_dpp
-- ----------------------------
INSERT INTO irena_sbsn_dpp VALUES ('1', '2013', '1');
INSERT INTO irena_sbsn_dpp VALUES ('2', '2014', '1');
INSERT INTO irena_sbsn_dpp VALUES ('3', '2015', '1');
INSERT INTO irena_sbsn_dpp VALUES ('4', '2016', '1');
INSERT INTO irena_sbsn_dpp VALUES ('5', '2017', '1');
INSERT INTO irena_sbsn_dpp VALUES ('6', '2018', '1');
INSERT INTO irena_sbsn_dpp VALUES ('7', '2019', '0');

-- ----------------------------
-- Table structure for `irena_sbsn_kategori_proyek`
-- ----------------------------
DROP TABLE IF EXISTS `irena_sbsn_kategori_proyek`;
CREATE TABLE `irena_sbsn_kategori_proyek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_sbsn_kategori_proyek
-- ----------------------------
INSERT INTO irena_sbsn_kategori_proyek VALUES ('1', 'Pembangunan Revitalisasi dan Pengembangan Asrama Haji');
INSERT INTO irena_sbsn_kategori_proyek VALUES ('2', 'Pembangunan Gedung Balia Nikah dan Manasik Haji');
INSERT INTO irena_sbsn_kategori_proyek VALUES ('3', 'Peningkatan Akses dan Mutu Pendidikan Madrasah');
INSERT INTO irena_sbsn_kategori_proyek VALUES ('4', 'Peningkatan Mutu Sarana dan Prasarana Perguruan Tinggi Keagamaan Islam');
INSERT INTO irena_sbsn_kategori_proyek VALUES ('5', 'Pemeliharaan Jalan dan Jembatan');
INSERT INTO irena_sbsn_kategori_proyek VALUES ('6', 'Pembangunan Jalan dan Jembatan');
INSERT INTO irena_sbsn_kategori_proyek VALUES ('7', 'Pengembangan dan Rehabilitasi Jaringan Irigasi Permukaan, Rawa, dan Tambah');
INSERT INTO irena_sbsn_kategori_proyek VALUES ('8', 'Pengendalian Banjir, Lahar, Pengelolaan Drainase Utama Perkotaan, dan Pengamanan Pantai');
INSERT INTO irena_sbsn_kategori_proyek VALUES ('9', 'Pengelolaan Bendungan, Danau, dan Bangunan Penampung Air Lainnya');

-- ----------------------------
-- Table structure for `irena_sbsn_on_going`
-- ----------------------------
DROP TABLE IF EXISTS `irena_sbsn_on_going`;
CREATE TABLE `irena_sbsn_on_going` (
  `id` int(11) NOT NULL,
  `id_dpp` int(11) DEFAULT NULL,
  `id_eselon_satu` int(11) DEFAULT NULL,
  `nilai_pagu` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_sbsn_on_going
-- ----------------------------

-- ----------------------------
-- Table structure for `irena_sbsn_proyek`
-- ----------------------------
DROP TABLE IF EXISTS `irena_sbsn_proyek`;
CREATE TABLE `irena_sbsn_proyek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_instansi_eselon_satu` int(11) DEFAULT NULL,
  `id_dpp` int(11) DEFAULT NULL,
  `id_kategori_proyek` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `output` text,
  `latar_belakang` text,
  `tujuan` text,
  `ruang_lingkup` text,
  `nilai_admin` text,
  `nilai_admin_ket` varchar(255) DEFAULT NULL,
  `nilai_admin_id` int(11) DEFAULT NULL,
  `nilai_admin_date` datetime DEFAULT NULL,
  `nilai_layak` text,
  `nilai_layak_ket` varchar(255) DEFAULT NULL,
  `nilai_layak_id` int(11) DEFAULT NULL,
  `nilai_layak_date` datetime DEFAULT NULL,
  `masuk_dpp` text,
  `masuk_dpp_ket` varchar(255) DEFAULT NULL,
  `masuk_dpp_id` int(11) DEFAULT NULL,
  `masuk_dpp_date` datetime DEFAULT NULL,
  `single_multi` varchar(255) DEFAULT NULL COMMENT '0 : SYC dan 1 : MYC',
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_sbsn_proyek
-- ----------------------------
INSERT INTO irena_sbsn_proyek VALUES ('28', '8', '6', '4', 'Pengembangan Laboratorium Standar Nasional Satuan Ukuran (SNSU)', '50000000000', '-', '-', '-', '-', '1', '-', '19', '2017-11-16 10:57:24', '0', '-', '1', '2017-11-15 17:48:27', '0', '-', '1', '2017-11-15 17:48:27', '0', '1', '2017-11-15 17:48:27');

-- ----------------------------
-- Table structure for `irena_sbsn_proyek_dok`
-- ----------------------------
DROP TABLE IF EXISTS `irena_sbsn_proyek_dok`;
CREATE TABLE `irena_sbsn_proyek_dok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyek` int(11) DEFAULT NULL,
  `id_proyek_dok_kategori` int(11) DEFAULT NULL,
  `id_arsip` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_sbsn_proyek_dok
-- ----------------------------
INSERT INTO irena_sbsn_proyek_dok VALUES ('1', '27', '1', '76', '-', '-', '1', '2017-11-13 10:32:00');
INSERT INTO irena_sbsn_proyek_dok VALUES ('2', '27', '2', '62', 'Nota DInas Deputi SDM', '-', '1', '2017-11-13 10:36:38');
INSERT INTO irena_sbsn_proyek_dok VALUES ('3', '24', '1', '76', 'Surat Sesmen Agama kepada Deputi Pendanaan', '-', '1', '2017-11-13 11:00:28');
INSERT INTO irena_sbsn_proyek_dok VALUES ('4', '28', '1', '102', 'Surat Kepala BSN', '-', '1', '2017-11-15 17:49:03');
INSERT INTO irena_sbsn_proyek_dok VALUES ('5', '28', '1', '102', 'Surat Usulan', 'Usulan Baru 2018', '1', '2017-11-16 16:04:43');

-- ----------------------------
-- Table structure for `irena_sbsn_proyek_dok_kategori`
-- ----------------------------
DROP TABLE IF EXISTS `irena_sbsn_proyek_dok_kategori`;
CREATE TABLE `irena_sbsn_proyek_dok_kategori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `order` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_sbsn_proyek_dok_kategori
-- ----------------------------
INSERT INTO irena_sbsn_proyek_dok_kategori VALUES ('1', 'Pengajuan Usulan', '1');
INSERT INTO irena_sbsn_proyek_dok_kategori VALUES ('2', 'Penilaian Teknis', '2');
INSERT INTO irena_sbsn_proyek_dok_kategori VALUES ('3', 'DPP', '3');

-- ----------------------------
-- Table structure for `irena_sbsn_proyek_dpp`
-- ----------------------------
DROP TABLE IF EXISTS `irena_sbsn_proyek_dpp`;
CREATE TABLE `irena_sbsn_proyek_dpp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyek` int(11) DEFAULT NULL,
  `id_dpp` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_sbsn_proyek_dpp
-- ----------------------------

-- ----------------------------
-- Table structure for `irena_sbsn_proyek_log`
-- ----------------------------
DROP TABLE IF EXISTS `irena_sbsn_proyek_log`;
CREATE TABLE `irena_sbsn_proyek_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyek` int(11) DEFAULT NULL,
  `id_arsip` int(11) DEFAULT NULL,
  `kegiatan` varchar(255) DEFAULT NULL,
  `ket` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_sbsn_proyek_log
-- ----------------------------

-- ----------------------------
-- Table structure for `irena_sbsn_proyek_syarat`
-- ----------------------------
DROP TABLE IF EXISTS `irena_sbsn_proyek_syarat`;
CREATE TABLE `irena_sbsn_proyek_syarat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyek` int(11) DEFAULT NULL,
  `kat` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `berkas` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_sbsn_proyek_syarat
-- ----------------------------
INSERT INTO irena_sbsn_proyek_syarat VALUES ('1', '27', 'DIPK', 'DIPK Proye', '-', '27-Jwb.pdf', '1', '2017-11-14 14:56:56');
INSERT INTO irena_sbsn_proyek_syarat VALUES ('2', '24', 'asdsa', 'asdasasda', 'asdasda', '24-Jwb1.pdf', '1', '2017-11-14 19:08:48');

-- ----------------------------
-- Table structure for `irena_sbsn_realisasi`
-- ----------------------------
DROP TABLE IF EXISTS `irena_sbsn_realisasi`;
CREATE TABLE `irena_sbsn_realisasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_dpp` int(11) DEFAULT NULL,
  `id_satker` int(11) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_sbsn_realisasi
-- ----------------------------
INSERT INTO irena_sbsn_realisasi VALUES ('1', '4', '1', '1750000000000', '1', '2017-11-15 19:51:29');
INSERT INTO irena_sbsn_realisasi VALUES ('2', '4', '2', '523140000000', '1', '2017-11-15 19:35:03');
INSERT INTO irena_sbsn_realisasi VALUES ('4', '3', '3', '1000000000', '1', '2017-11-16 16:01:21');

-- ----------------------------
-- Table structure for `irena_sbsn_realisasi_penyerapan`
-- ----------------------------
DROP TABLE IF EXISTS `irena_sbsn_realisasi_penyerapan`;
CREATE TABLE `irena_sbsn_realisasi_penyerapan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_realisasi` int(11) DEFAULT NULL,
  `triwulan` int(11) DEFAULT NULL,
  `penyerapan` double DEFAULT NULL,
  `progres_fisik` double DEFAULT NULL,
  `permasalahan` text,
  `tindak_lanjut` text,
  `pihak_terlibat` text,
  `catatan` text,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_sbsn_realisasi_penyerapan
-- ----------------------------
INSERT INTO irena_sbsn_realisasi_penyerapan VALUES ('2', '1', '2', '1000000000', '10', 'tak ada masaah', '-', '-', '-', '1', '2017-11-15 20:56:29');
INSERT INTO irena_sbsn_realisasi_penyerapan VALUES ('7', '1', '1', '0', '0', '-', '-', '-', '-', '1', '2017-11-16 09:05:17');
INSERT INTO irena_sbsn_realisasi_penyerapan VALUES ('8', '4', '1', '0', '0', '-', '-', '-', '-', '1', '2017-11-16 16:01:55');
INSERT INTO irena_sbsn_realisasi_penyerapan VALUES ('9', '4', '2', '5000000', '30', '-', '-', '-', '-', '1', '2017-11-16 16:02:16');

-- ----------------------------
-- Table structure for `irena_sbsn_satker`
-- ----------------------------
DROP TABLE IF EXISTS `irena_sbsn_satker`;
CREATE TABLE `irena_sbsn_satker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_instansi` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_sbsn_satker
-- ----------------------------
INSERT INTO irena_sbsn_satker VALUES ('1', '1', 'Balai Teknik Perkeretaapian Wilayah Jakarta dan Banten', null);
INSERT INTO irena_sbsn_satker VALUES ('2', '1', 'Balai Teknik Perkeretaapian Wilayah Sumatera Bagian Selatan', null);
INSERT INTO irena_sbsn_satker VALUES ('3', '1', 'Balai Teknik Perkeretaapian Wilayah Sumatera Bagian Utara', null);
INSERT INTO irena_sbsn_satker VALUES ('4', '1', 'Balai Teknik Perkeretaapian Wilayah Jawa Bagian Tengah', null);
INSERT INTO irena_sbsn_satker VALUES ('5', '1', 'Balai Teknik Perkeretaapian Wilayah Jawa Bagian Timur', null);

-- ----------------------------
-- Table structure for `irena_user`
-- ----------------------------
DROP TABLE IF EXISTS `irena_user`;
CREATE TABLE `irena_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_level` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama_depan` varchar(255) DEFAULT NULL,
  `nama_belakang` varchar(255) DEFAULT NULL,
  `nama_panggilan` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `aktif` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_user
-- ----------------------------
INSERT INTO irena_user VALUES ('1', '1', 'f.manangin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Firman', 'Perangin-angin', 'Firman', '2010-10-12', 'firman.jpg', null, '');
INSERT INTO irena_user VALUES ('2', '2', 'aryati@bappenas.go.id', '21232f297a57a5a743894a0e4a801fc3', 'Tati', 'Lies Aryati', 'Tati', '1961-04-04', 'no-image-user.png', null, '');
INSERT INTO irena_user VALUES ('3', '3', 'riza.hamzah@bappenas.go.id', '21232f297a57a5a743894a0e4a801fc3', 'Riza', 'Hamzah', 'Icha', '1971-05-21', 'no-image-user.png', '3', '');
INSERT INTO irena_user VALUES ('4', '2', 'm_ali@bappenas.go.id', '21232f297a57a5a743894a0e4a801fc3', 'Mukhtiali', null, 'Ali', '1972-05-01', 'no-image-user.png', '4', '');
INSERT INTO irena_user VALUES ('5', '4', 'sugeng.hendarto@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Sugeng', 'Wahyu Hendarto', 'Sugeng', '1975-03-01', 'no-image-user.png', null, '');
INSERT INTO irena_user VALUES ('6', '3', 'beby.hanzian@bappenas.go.id', '21232f297a57a5a743894a0e4a801fc3', 'Beby', 'Hanzian', 'Beby', null, 'no-image-user.png', null, '');
INSERT INTO irena_user VALUES ('7', '3', 'yustina.wijayanti@bappenas.go.id', '21232f297a57a5a743894a0e4a801fc3', 'Yustina', 'Wijayanti', 'Yustina', null, 'no-image-user.png', null, '');
INSERT INTO irena_user VALUES ('8', '2', 'tien.iswartini@bappenas.go.id', '21232f297a57a5a743894a0e4a801fc3', 'Tien', 'Iswartini', 'Tien', '1965-02-18', 'no-image-user.png', null, '');
INSERT INTO irena_user VALUES ('9', '2', 'dadan.kusdarsana@bappenas.go.id', '21232f297a57a5a743894a0e4a801fc3', 'Dadan', 'Kusdarsana', 'Dadan', '1964-01-06', 'no-image-user.png', null, '');
INSERT INTO irena_user VALUES ('10', '2', 'ino.sutrisno@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Ino', 'Sutrisno', 'Ino', null, 'no-image-user.png', null, '');
INSERT INTO irena_user VALUES ('11', '2', 'nurhadi0303@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Adi', 'Nurhadi', 'Adi', null, 'no-image-user.png', null, '');
INSERT INTO irena_user VALUES ('12', '3', 'eftinulakurnia@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Eftin', 'Ula Kurnia', 'Ula', '1995-11-18', 'ula.jpg', null, '');
INSERT INTO irena_user VALUES ('13', '4', 'sahnaselira@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Sahna', 'Putri Aselira', 'Sahna', '1995-11-17', 'sahna.jpg', null, '');
INSERT INTO irena_user VALUES ('14', '2', 'vincent.simandjorang@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Bonataon', 'M. T. V. Simandjorang', 'Vincent', null, 'no-image-user.png', null, '');
INSERT INTO irena_user VALUES ('15', '2', 'pristipanggabean@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Pristi', 'N. K. Panggabean', 'Pristi', null, 'no-image-user.png', null, '');
INSERT INTO irena_user VALUES ('16', '2', 'kristianto79@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Kristianto', 'Wibowo', 'Kris', null, 'no-image-user.png', null, '');
INSERT INTO irena_user VALUES ('17', '3', 'muhamadfaisal02@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Muhamad', 'Faisal Siddiq', 'Faisal', null, 'faisal.jpg', null, '');
INSERT INTO irena_user VALUES ('18', '4', 'derryafiandri.da@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Derry', 'Afriandri', 'Derry', null, 'no-image-user.png', null, '');
INSERT INTO irena_user VALUES ('19', '4', 'raharjayareezali@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Reezali', 'Raharjaya', 'Zali', '1995-11-16', 'zali.jpg', null, '');
INSERT INTO irena_user VALUES ('20', '1', 'zahaulia@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Faizah ', 'Aulia Rahmah', 'Fai', null, 'no-image-user.png', null, '');

-- ----------------------------
-- Table structure for `irena_user_level`
-- ----------------------------
DROP TABLE IF EXISTS `irena_user_level`;
CREATE TABLE `irena_user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_user_level
-- ----------------------------
INSERT INTO irena_user_level VALUES ('1', 'Super Administrator', 'Level paling atas mampu ');
INSERT INTO irena_user_level VALUES ('2', 'Tim Sekretariat', 'input data');
INSERT INTO irena_user_level VALUES ('3', 'Tim PHLN', null);
INSERT INTO irena_user_level VALUES ('4', 'Tim SBSN', null);

-- ----------------------------
-- Table structure for `irena_user_log`
-- ----------------------------
DROP TABLE IF EXISTS `irena_user_log`;
CREATE TABLE `irena_user_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `on_off` bit(1) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of irena_user_log
-- ----------------------------
INSERT INTO irena_user_log VALUES ('1', '1', '', '2017-09-19 10:19:27');
INSERT INTO irena_user_log VALUES ('2', '1', '', '2017-09-19 10:21:27');
INSERT INTO irena_user_log VALUES ('3', '1', '', '2017-09-19 10:23:01');
INSERT INTO irena_user_log VALUES ('5', '1', '', '2017-09-19 10:23:43');
INSERT INTO irena_user_log VALUES ('7', '1', '', '2017-09-19 10:25:15');
INSERT INTO irena_user_log VALUES ('8', '1', '', '2017-09-19 10:25:40');
INSERT INTO irena_user_log VALUES ('9', '1', '', '2017-09-19 10:26:41');
INSERT INTO irena_user_log VALUES ('10', '1', '', '2017-09-19 13:07:42');
INSERT INTO irena_user_log VALUES ('11', '1', '', '2017-09-25 12:39:06');
INSERT INTO irena_user_log VALUES ('12', '1', '', '2017-09-26 09:34:06');
INSERT INTO irena_user_log VALUES ('13', '1', '', '2017-09-26 11:52:25');
INSERT INTO irena_user_log VALUES ('14', '1', '', '2017-09-26 11:53:53');
INSERT INTO irena_user_log VALUES ('15', '1', '', '2017-09-26 11:58:49');
INSERT INTO irena_user_log VALUES ('16', '1', '', '2017-09-26 12:25:46');
INSERT INTO irena_user_log VALUES ('17', '1', '', '2017-09-27 04:30:10');
INSERT INTO irena_user_log VALUES ('18', '1', '', '2017-09-27 04:46:21');
INSERT INTO irena_user_log VALUES ('19', '1', '', '2017-09-27 04:47:12');
INSERT INTO irena_user_log VALUES ('20', '1', '', '2017-09-27 04:48:15');
INSERT INTO irena_user_log VALUES ('21', '1', '', '2017-09-27 04:48:34');
INSERT INTO irena_user_log VALUES ('22', '1', '', '2017-09-27 04:48:50');
INSERT INTO irena_user_log VALUES ('23', '1', '', '2017-09-27 04:51:18');
INSERT INTO irena_user_log VALUES ('24', '1', '', '2017-09-27 04:53:55');
INSERT INTO irena_user_log VALUES ('25', '1', '', '2017-09-27 04:54:06');
INSERT INTO irena_user_log VALUES ('26', '1', '', '2017-09-27 04:56:22');
INSERT INTO irena_user_log VALUES ('27', '1', '', '2017-09-27 05:02:16');
INSERT INTO irena_user_log VALUES ('28', '1', '', '2017-09-27 05:02:23');
INSERT INTO irena_user_log VALUES ('29', '1', '', '2017-09-27 05:06:32');
INSERT INTO irena_user_log VALUES ('30', '1', '', '2017-09-27 05:06:36');
INSERT INTO irena_user_log VALUES ('31', '1', '', '2017-09-27 05:07:50');
INSERT INTO irena_user_log VALUES ('32', '1', '', '2017-09-27 05:58:54');
INSERT INTO irena_user_log VALUES ('33', '1', '', '2017-09-27 06:12:02');
INSERT INTO irena_user_log VALUES ('34', '1', '', '2017-09-27 06:12:20');
INSERT INTO irena_user_log VALUES ('35', '1', '', '2017-09-27 06:12:53');
INSERT INTO irena_user_log VALUES ('36', '1', '', '2017-09-27 06:19:13');
INSERT INTO irena_user_log VALUES ('37', null, '', '2017-09-28 06:44:29');
INSERT INTO irena_user_log VALUES ('38', '1', '', '2017-09-28 06:44:39');
INSERT INTO irena_user_log VALUES ('39', '1', '', '2017-09-28 07:00:18');
INSERT INTO irena_user_log VALUES ('40', '1', '', '2017-09-28 08:25:12');
INSERT INTO irena_user_log VALUES ('41', '1', '', '2017-09-29 08:52:48');
INSERT INTO irena_user_log VALUES ('42', '1', '', '2017-09-29 13:35:04');
INSERT INTO irena_user_log VALUES ('43', '1', '', '2017-10-02 05:16:09');
INSERT INTO irena_user_log VALUES ('44', '1', '', '2017-10-02 13:10:01');
INSERT INTO irena_user_log VALUES ('45', '1', '', '2017-10-03 09:29:59');
INSERT INTO irena_user_log VALUES ('46', '1', '', '2017-10-04 04:24:35');
INSERT INTO irena_user_log VALUES ('47', '1', '', '2017-10-04 04:29:56');
INSERT INTO irena_user_log VALUES ('48', '1', '', '2017-10-04 04:45:04');
INSERT INTO irena_user_log VALUES ('49', '1', '', '2017-10-04 06:07:29');
INSERT INTO irena_user_log VALUES ('50', '1', '', '2017-10-10 06:23:40');
INSERT INTO irena_user_log VALUES ('51', '1', '', '2017-10-12 04:48:31');
INSERT INTO irena_user_log VALUES ('52', '1', '', '2017-10-12 08:31:17');
INSERT INTO irena_user_log VALUES ('53', null, '', '2017-10-12 08:31:23');
INSERT INTO irena_user_log VALUES ('54', '1', '', '2017-10-12 08:31:33');
INSERT INTO irena_user_log VALUES ('55', '1', '', '2017-10-12 08:45:37');
INSERT INTO irena_user_log VALUES ('56', '1', '', '2017-10-12 10:47:22');
INSERT INTO irena_user_log VALUES ('57', '1', '', '2017-10-12 11:18:47');
INSERT INTO irena_user_log VALUES ('58', null, '', '2017-10-12 12:15:45');
INSERT INTO irena_user_log VALUES ('59', '1', '', '2017-10-12 12:17:17');
INSERT INTO irena_user_log VALUES ('60', '1', '', '2017-10-13 04:20:31');
INSERT INTO irena_user_log VALUES ('61', '1', '', '2017-10-13 06:40:47');
INSERT INTO irena_user_log VALUES ('62', '1', '', '2017-10-13 11:58:01');
INSERT INTO irena_user_log VALUES ('63', '1', '', '2017-10-13 16:00:40');
INSERT INTO irena_user_log VALUES ('64', '1', '', '2017-10-13 19:26:24');
INSERT INTO irena_user_log VALUES ('65', '1', '', '2017-10-13 19:54:55');
INSERT INTO irena_user_log VALUES ('66', '1', '', '2017-10-14 02:36:28');
INSERT INTO irena_user_log VALUES ('67', '1', '', '2017-10-17 04:07:41');
INSERT INTO irena_user_log VALUES ('68', '1', '', '2017-10-17 05:45:59');
INSERT INTO irena_user_log VALUES ('69', '1', '', '2017-10-17 10:30:07');
INSERT INTO irena_user_log VALUES ('70', '1', '', '2017-10-18 07:27:16');
INSERT INTO irena_user_log VALUES ('71', '1', '', '2017-10-18 10:51:47');
INSERT INTO irena_user_log VALUES ('72', '1', '', '2017-10-18 14:44:59');
INSERT INTO irena_user_log VALUES ('73', '1', '', '2017-10-19 05:21:04');
INSERT INTO irena_user_log VALUES ('74', '1', '', '2017-10-19 05:27:31');
INSERT INTO irena_user_log VALUES ('75', '1', '', '2017-10-19 13:26:35');
INSERT INTO irena_user_log VALUES ('76', '1', '', '2017-10-19 14:24:39');
INSERT INTO irena_user_log VALUES ('77', '1', '', '2017-10-20 04:11:41');
INSERT INTO irena_user_log VALUES ('78', '1', '', '2017-10-20 05:12:10');
INSERT INTO irena_user_log VALUES ('79', '1', '', '2017-10-20 11:52:39');
INSERT INTO irena_user_log VALUES ('80', '2', '', '2017-10-20 14:44:47');
INSERT INTO irena_user_log VALUES ('81', '1', '', '2017-10-21 06:02:13');
INSERT INTO irena_user_log VALUES ('82', '1', '', '2017-10-21 11:13:13');
INSERT INTO irena_user_log VALUES ('83', '1', '', '2017-10-26 14:00:01');
INSERT INTO irena_user_log VALUES ('84', '1', '', '2017-10-27 14:31:25');
INSERT INTO irena_user_log VALUES ('85', '1', '', '2017-10-28 14:30:16');
INSERT INTO irena_user_log VALUES ('86', '1', '', '2017-10-29 10:22:31');
INSERT INTO irena_user_log VALUES ('87', '1', '', '2017-10-30 00:45:55');
INSERT INTO irena_user_log VALUES ('88', '1', '', '2017-10-30 09:08:17');
INSERT INTO irena_user_log VALUES ('89', '1', '', '2017-10-30 14:12:21');
INSERT INTO irena_user_log VALUES ('90', '1', '', '2017-10-30 14:44:51');
INSERT INTO irena_user_log VALUES ('91', '1', '', '2017-10-30 18:25:51');
INSERT INTO irena_user_log VALUES ('92', '1', '', '2017-10-31 12:32:01');
INSERT INTO irena_user_log VALUES ('93', '1', '', '2017-11-01 15:52:02');
INSERT INTO irena_user_log VALUES ('94', '1', '', '2017-11-01 15:52:11');
INSERT INTO irena_user_log VALUES ('95', null, '', '2017-11-01 15:53:13');
INSERT INTO irena_user_log VALUES ('96', '1', '', '2017-11-01 15:53:56');
INSERT INTO irena_user_log VALUES ('97', '1', '', '2017-11-02 09:04:59');
INSERT INTO irena_user_log VALUES ('98', '1', '', '2017-11-03 09:05:02');
INSERT INTO irena_user_log VALUES ('99', '1', '', '2017-11-03 18:18:27');
INSERT INTO irena_user_log VALUES ('100', '1', '', '2017-11-05 18:39:54');
INSERT INTO irena_user_log VALUES ('101', '1', '', '2017-11-06 09:19:55');
INSERT INTO irena_user_log VALUES ('102', '1', '', '2017-11-06 23:13:27');
INSERT INTO irena_user_log VALUES ('103', '1', '', '2017-11-07 09:06:20');
INSERT INTO irena_user_log VALUES ('104', '1', '', '2017-11-07 10:07:28');
INSERT INTO irena_user_log VALUES ('105', '11', '', '2017-11-07 10:09:07');
INSERT INTO irena_user_log VALUES ('106', '1', '', '2017-11-07 10:18:18');
INSERT INTO irena_user_log VALUES ('107', '11', '', '2017-11-07 16:18:52');
INSERT INTO irena_user_log VALUES ('108', '1', '', '2017-11-07 16:19:00');
INSERT INTO irena_user_log VALUES ('109', '1', '', '2017-11-08 14:57:48');
INSERT INTO irena_user_log VALUES ('110', '1', '', '2017-11-08 17:45:36');
INSERT INTO irena_user_log VALUES ('111', '1', '', '2017-11-10 09:45:03');
INSERT INTO irena_user_log VALUES ('112', '1', '', '2017-11-10 13:01:49');
INSERT INTO irena_user_log VALUES ('113', '1', '', '2017-11-10 13:26:32');
INSERT INTO irena_user_log VALUES ('114', '1', '', '2017-11-10 14:30:18');
INSERT INTO irena_user_log VALUES ('115', '1', '', '2017-11-11 17:20:18');
INSERT INTO irena_user_log VALUES ('116', '1', '', '2017-11-12 10:08:06');
INSERT INTO irena_user_log VALUES ('117', '1', '', '2017-11-12 14:02:03');
INSERT INTO irena_user_log VALUES ('118', '1', '', '2017-11-12 21:32:53');
INSERT INTO irena_user_log VALUES ('119', '1', '', '2017-11-12 22:02:44');
INSERT INTO irena_user_log VALUES ('120', '1', '', '2017-11-13 09:21:23');
INSERT INTO irena_user_log VALUES ('121', '1', '', '2017-11-13 13:50:59');
INSERT INTO irena_user_log VALUES ('122', '1', '', '2017-11-13 13:51:09');
INSERT INTO irena_user_log VALUES ('123', '1', '', '2017-11-13 13:53:02');
INSERT INTO irena_user_log VALUES ('124', '13', '', '2017-11-13 13:53:09');
INSERT INTO irena_user_log VALUES ('125', '13', '', '2017-11-13 13:53:39');
INSERT INTO irena_user_log VALUES ('126', '1', '', '2017-11-13 13:53:45');
INSERT INTO irena_user_log VALUES ('127', '1', '', '2017-11-13 14:22:04');
INSERT INTO irena_user_log VALUES ('128', '1', '', '2017-11-13 14:22:11');
INSERT INTO irena_user_log VALUES ('129', '1', '', '2017-11-13 14:24:58');
INSERT INTO irena_user_log VALUES ('130', '1', '', '2017-11-13 14:25:18');
INSERT INTO irena_user_log VALUES ('131', '1', '', '2017-11-13 14:38:45');
INSERT INTO irena_user_log VALUES ('132', '1', '', '2017-11-13 14:38:57');
INSERT INTO irena_user_log VALUES ('133', null, '', '2017-11-14 10:04:34');
INSERT INTO irena_user_log VALUES ('134', '1', '', '2017-11-14 10:04:41');
INSERT INTO irena_user_log VALUES ('135', '1', '', '2017-11-14 18:59:35');
INSERT INTO irena_user_log VALUES ('136', '1', '', '2017-11-14 22:22:15');
INSERT INTO irena_user_log VALUES ('137', '1', '', '2017-11-15 09:14:34');
INSERT INTO irena_user_log VALUES ('138', '1', '', '2017-11-15 14:22:50');
INSERT INTO irena_user_log VALUES ('139', '1', '', '2017-11-15 14:22:56');
INSERT INTO irena_user_log VALUES ('140', '1', '', '2017-11-15 14:28:19');
INSERT INTO irena_user_log VALUES ('141', '1', '', '2017-11-15 14:28:26');
INSERT INTO irena_user_log VALUES ('142', '1', '', '2017-11-15 14:52:07');
INSERT INTO irena_user_log VALUES ('143', '1', '', '2017-11-15 14:52:16');
INSERT INTO irena_user_log VALUES ('144', '1', '', '2017-11-15 17:13:53');
INSERT INTO irena_user_log VALUES ('145', '1', '', '2017-11-15 17:14:00');
INSERT INTO irena_user_log VALUES ('146', '1', '', '2017-11-15 17:20:22');
INSERT INTO irena_user_log VALUES ('147', '1', '', '2017-11-15 17:40:11');
INSERT INTO irena_user_log VALUES ('148', '1', '', '2017-11-15 17:40:18');
INSERT INTO irena_user_log VALUES ('149', '1', '', '2017-11-15 17:41:45');
INSERT INTO irena_user_log VALUES ('150', '1', '', '2017-11-15 17:41:50');
INSERT INTO irena_user_log VALUES ('151', '1', '', '2017-11-15 17:42:11');
INSERT INTO irena_user_log VALUES ('152', '1', '', '2017-11-15 17:42:15');
INSERT INTO irena_user_log VALUES ('153', '1', '', '2017-11-15 17:54:58');
INSERT INTO irena_user_log VALUES ('154', '20', '', '2017-11-15 17:55:51');
INSERT INTO irena_user_log VALUES ('155', '1', '', '2017-11-15 18:57:56');
INSERT INTO irena_user_log VALUES ('156', '1', '', '2017-11-16 09:04:08');
INSERT INTO irena_user_log VALUES ('157', '1', '', '2017-11-16 09:04:39');
INSERT INTO irena_user_log VALUES ('158', '11', '', '2017-11-16 09:26:39');
INSERT INTO irena_user_log VALUES ('159', '17', '', '2017-11-16 10:25:48');
INSERT INTO irena_user_log VALUES ('160', '12', '', '2017-11-16 10:26:55');
INSERT INTO irena_user_log VALUES ('161', '1', '', '2017-11-16 10:27:18');
INSERT INTO irena_user_log VALUES ('162', '19', '', '2017-11-16 10:51:06');
INSERT INTO irena_user_log VALUES ('163', '20', '', '2017-11-16 11:14:47');
INSERT INTO irena_user_log VALUES ('164', '1', '', '2017-11-16 13:22:17');
INSERT INTO irena_user_log VALUES ('165', '1', '', '2017-11-16 14:36:56');
INSERT INTO irena_user_log VALUES ('166', '1', '', '2017-11-16 14:45:58');
INSERT INTO irena_user_log VALUES ('167', '1', '', '2017-11-16 14:46:05');
INSERT INTO irena_user_log VALUES ('168', '1', '', '2017-11-16 14:46:10');
INSERT INTO irena_user_log VALUES ('169', '20', '', '2017-11-16 15:01:21');
INSERT INTO irena_user_log VALUES ('170', '1', '', '2017-11-16 15:27:28');
INSERT INTO irena_user_log VALUES ('171', '4', '', '2017-11-16 15:27:49');
INSERT INTO irena_user_log VALUES ('172', '12', '', '2017-11-16 15:28:39');
INSERT INTO irena_user_log VALUES ('173', '1', '', '2017-11-16 15:29:54');
INSERT INTO irena_user_log VALUES ('174', '3', '', '2017-11-16 15:30:08');
INSERT INTO irena_user_log VALUES ('175', '3', '', '2017-11-16 15:50:53');
INSERT INTO irena_user_log VALUES ('176', '1', '', '2017-11-16 15:51:07');
INSERT INTO irena_user_log VALUES ('177', '1', '', '2017-11-16 16:27:03');
INSERT INTO irena_user_log VALUES ('178', '1', '', '2017-11-16 16:35:36');

-- ----------------------------
-- View structure for `irena_view_arsip`
-- ----------------------------
DROP VIEW IF EXISTS `irena_view_arsip`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_arsip` AS select `irena_arsip`.`id` AS `id_arsip`,`irena_arsip`.`no` AS `no`,`irena_arsip`.`perihal` AS `perihal`,`irena_arsip`.`dari` AS `dari`,`irena_arsip`.`tgl` AS `tgl`,year(`irena_arsip`.`tgl`) AS `tahun_surat`,`irena_arsip_status`.`nama` AS `status`,`irena_arsip_jenis`.`nama` AS `jenis`,`irena_arsip_tingkat`.`nama` AS `tingkat`,`irena_user`.`nama_panggilan` AS `update_by`,`irena_arsip`.`update_date` AS `update_date`,`irena_arsip_status`.`class` AS `class`,`irena_arsip_jenis`.`icon` AS `icon`,`irena_arsip`.`ringkasan` AS `ringkasan`,`irena_arsip`.`keywords` AS `keyword`,`irena_arsip`.`berkas` AS `berkas`,`irena_arsip`.`tgl_terima` AS `tgl_terima`,`irena_user`.`foto` AS `foto`,`irena_arsip`.`selesai_cat` AS `selesai_cat`,`irena_arsip`.`selesai_by` AS `selesai_by`,`irena_arsip`.`selesai_date` AS `selesai_date` from ((((`irena_arsip` join `irena_arsip_jenis` on((`irena_arsip_jenis`.`id` = `irena_arsip`.`id_jenis`))) join `irena_arsip_status` on((`irena_arsip_status`.`id` = `irena_arsip`.`id_status`))) join `irena_arsip_tingkat` on((`irena_arsip_tingkat`.`id` = `irena_arsip`.`id_tingkat`))) join `irena_user` on((`irena_user`.`id` = `irena_arsip`.`update_by`))) order by `irena_arsip`.`update_by` desc;

-- ----------------------------
-- View structure for `irena_view_disposisi_internal`
-- ----------------------------
DROP VIEW IF EXISTS `irena_view_disposisi_internal`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_disposisi_internal` AS select `irena_arsip`.`no` AS `no_arsip`,`irena_arsip`.`tgl` AS `tgl_arsip`,`irena_arsip_status`.`nama` AS `status`,`irena_arsip`.`dari` AS `dari`,`irena_user`.`id` AS `id_user`,`irena_arsip_disposisi`.`catatan` AS `catatan`,`irena_arsip`.`id_status` AS `id_status`,`irena_arsip_status`.`class` AS `class`,`irena_arsip`.`berkas` AS `berkas_arsip`,`irena_arsip`.`id_jenis` AS `jenis_arsip`,`irena_arsip`.`id` AS `id_arsip`,`irena_user`.`nama_panggilan` AS `nama_panggilan` from ((((`irena_arsip_disposisi_internal` join `irena_arsip_disposisi` on((`irena_arsip_disposisi`.`id` = `irena_arsip_disposisi_internal`.`id_disposisi`))) join `irena_arsip` on((`irena_arsip`.`id` = `irena_arsip_disposisi`.`id_arsip`))) join `irena_arsip_status` on((`irena_arsip_status`.`id` = `irena_arsip`.`id_status`))) join `irena_user` on((`irena_user`.`id` = `irena_arsip_disposisi_internal`.`id_disposisi_user`)));

-- ----------------------------
-- View structure for `irena_view_hibah_dok`
-- ----------------------------
DROP VIEW IF EXISTS `irena_view_hibah_dok`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_hibah_dok` AS select `irena_hibah_proyek_dok`.`id` AS `id`,`irena_hibah_proyek_dok`.`id_proyek` AS `id_proyek`,`irena_hibah_proyek_dok`.`kat` AS `kat`,`irena_hibah_proyek_dok`.`nama` AS `nama`,`irena_hibah_proyek_dok`.`ket` AS `ket`,`irena_hibah_proyek_dok`.`berkas` AS `berkas`,`irena_user`.`nama_panggilan` AS `nama_panggilan` from (`irena_hibah_proyek_dok` join `irena_user` on((`irena_user`.`id` = `irena_hibah_proyek_dok`.`update_by`)));

-- ----------------------------
-- View structure for `irena_view_hibah_drkh`
-- ----------------------------
DROP VIEW IF EXISTS `irena_view_hibah_drkh`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_hibah_drkh` AS select `irena_hibah_proyek_drkh`.`id` AS `id`,`irena_hibah_proyek_drkh`.`id_proyek` AS `id_proyek`,`irena_hibah_donor`.`nama` AS `donor`,`irena_mata_uang`.`singkatan` AS `mata_uang_singkatan`,`irena_hibah_proyek_drkh`.`nilai_hibah` AS `nilai_hibah`,`irena_hibah_proyek_drkh`.`nilai_dp` AS `nilai_dp`,`irena_hibah_proyek_drkh`.`update_date` AS `update_date`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_instansi_eselon_satu`.`nama` AS `instansi_eselon_satu`,`irena_instansi`.`nama` AS `instansi`,`irena_instansi`.`singkatan` AS `instansi_singkatan`,`irena_hibah_jenis`.`nama` AS `jenis`,`irena_hibah_proyek_drkh`.`judul_en` AS `judul_en`,`irena_hibah_proyek_drkh`.`judul_id` AS `judul_id`,`irena_hibah_proyek_drkh`.`latar_belakang_en` AS `latar_belakang_en`,`irena_hibah_proyek_drkh`.`latar_belakang_id` AS `latar_belakang_id`,`irena_hibah_proyek_drkh`.`ruang_lingkup_en` AS `ruang_lingkup_en`,`irena_hibah_proyek_drkh`.`ruang_lingkup_id` AS `ruang_lingkup_id`,`irena_hibah_proyek_drkh`.`durasi` AS `durasi`,`irena_hibah_proyek_drkh`.`output_en` AS `output_en`,`irena_hibah_proyek_drkh`.`output_id` AS `output_id`,`irena_hibah_proyek_drkh`.`outcome_en` AS `outcome_en`,`irena_hibah_proyek_drkh`.`outcome_id` AS `outcome_id` from (((((((`irena_hibah_proyek_drkh` join `irena_hibah_proyek` on((`irena_hibah_proyek`.`id` = `irena_hibah_proyek_drkh`.`id_proyek`))) join `irena_instansi_eselon_satu` on((`irena_instansi_eselon_satu`.`id` = `irena_hibah_proyek`.`id_instansi_eselon_satu`))) join `irena_instansi` on((`irena_instansi`.`id` = `irena_instansi_eselon_satu`.`id_instansi`))) join `irena_hibah_donor` on((`irena_hibah_donor`.`id` = `irena_hibah_proyek_drkh`.`id_donor`))) join `irena_mata_uang` on((`irena_mata_uang`.`id` = `irena_hibah_proyek_drkh`.`id_mata_uang`))) join `irena_user` on((`irena_user`.`id` = `irena_hibah_proyek_drkh`.`update_by`))) join `irena_hibah_jenis` on((`irena_hibah_jenis`.`id` = `irena_hibah_proyek_drkh`.`id_jenis`)));

-- ----------------------------
-- View structure for `irena_view_hibah_log`
-- ----------------------------
DROP VIEW IF EXISTS `irena_view_hibah_log`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_hibah_log` AS select `irena_hibah_log`.`id` AS `id`,`irena_hibah_log_kategori`.`nama` AS `kategori`,`irena_hibah_log`.`nama` AS `nama`,`irena_hibah_log`.`deskripsi` AS `deskripsi`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_hibah_log`.`id_proyek` AS `id_proyek`,`irena_arsip_jenis`.`nama` AS `folder`,`irena_arsip`.`berkas` AS `berkas`,`irena_hibah_log`.`id_log_kategori` AS `id_log_kategori`,`irena_hibah_log`.`id_arsip` AS `id_arsip`,`irena_arsip`.`no` AS `no_arsip` from (((((`irena_hibah_log` join `irena_hibah_proyek` on((`irena_hibah_proyek`.`id` = `irena_hibah_log`.`id_proyek`))) join `irena_hibah_log_kategori` on((`irena_hibah_log_kategori`.`id` = `irena_hibah_log`.`id_log_kategori`))) join `irena_arsip` on((`irena_arsip`.`id` = `irena_hibah_log`.`id_arsip`))) join `irena_user` on((`irena_user`.`id` = `irena_hibah_log`.`update_by`))) join `irena_arsip_jenis` on((`irena_arsip_jenis`.`id` = `irena_arsip`.`id_jenis`)));

-- ----------------------------
-- View structure for `irena_view_hibah_usulan_awal`
-- ----------------------------
DROP VIEW IF EXISTS `irena_view_hibah_usulan_awal`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_hibah_usulan_awal` AS select `irena_hibah_proyek`.`id` AS `id`,`irena_instansi_eselon_satu`.`nama` AS `instansi_eselon_satu`,`irena_instansi`.`nama` AS `instansi`,`irena_instansi`.`singkatan` AS `instansi_singkatan`,`irena_hibah_proyek`.`judul_id` AS `judul_id`,`irena_hibah_proyek`.`judul_en` AS `judul_en`,`irena_hibah_proyek`.`nilai_hibah` AS `nilai_hibah`,`irena_hibah_proyek`.`nilai_admin` AS `nilai_admin`,`irena_hibah_proyek`.`nilai_admin_ket` AS `nilai_admin_ket`,`irena_hibah_proyek`.`nilai_admin_id` AS `nilai_admin_id`,`irena_hibah_proyek`.`nilai_admin_date` AS `nilai_admin_date`,`irena_hibah_proyek`.`nilai_layak` AS `nilai_layak`,`irena_hibah_proyek`.`nilai_layak_ket` AS `nilai_layak_ket`,`irena_hibah_proyek`.`nilai_layak_id` AS `nilai_layak_id`,`irena_hibah_proyek`.`nilai_layak_date` AS `nilai_layak_date`,`irena_hibah_proyek`.`masuk_drkh` AS `masuk_drkh`,`irena_hibah_proyek`.`masuk_drkh_ket` AS `masuk_drkh_ket`,`irena_hibah_proyek`.`masuk_drkh_id` AS `masuk_drkh_id`,`irena_hibah_proyek`.`masuk_drkh_date` AS `masuk_drkh_date`,`irena_user`.`nama_panggilan` AS `user_nama_panggilan`,`irena_hibah_proyek`.`update_date` AS `update_date`,`irena_hibah_donor`.`nama` AS `donor`,`irena_mata_uang`.`nama` AS `mata_uang`,`irena_mata_uang`.`singkatan` AS `mata_uang_singkatan`,`irena_hibah_proyek`.`durasi` AS `durasi`,`irena_hibah_proyek`.`nilai_dp` AS `nilai_dp`,`irena_hibah_proyek`.`ringkasan` AS `ringkasan`,`irena_hibah_jenis`.`nama` AS `jenis` from ((((((`irena_hibah_proyek` join `irena_instansi_eselon_satu` on((`irena_instansi_eselon_satu`.`id` = `irena_hibah_proyek`.`id_instansi_eselon_satu`))) join `irena_instansi` on((`irena_instansi`.`id` = `irena_instansi_eselon_satu`.`id_instansi`))) join `irena_user` on((`irena_user`.`id` = `irena_hibah_proyek`.`update_by`))) join `irena_hibah_donor` on((`irena_hibah_donor`.`id` = `irena_hibah_proyek`.`id_donor`))) join `irena_mata_uang` on((`irena_mata_uang`.`id` = `irena_hibah_proyek`.`id_mata_uang`))) join `irena_hibah_jenis` on((`irena_hibah_jenis`.`id` = `irena_hibah_proyek`.`id_jenis`)));

-- ----------------------------
-- View structure for `irena_view_sbsn_log_proyek`
-- ----------------------------
DROP VIEW IF EXISTS `irena_view_sbsn_log_proyek`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_log_proyek` AS select `irena_sbsn_proyek_dok`.`id` AS `id`,`irena_sbsn_proyek_dok`.`nama` AS `nama`,`irena_sbsn_proyek_dok`.`deskripsi` AS `deskripsi`,`irena_sbsn_proyek_dok_kategori`.`nama` AS `nama_proyek_dok_kategori`,`irena_sbsn_proyek_dok_kategori`.`order` AS `order_proyek_dok_kategori`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_arsip`.`berkas` AS `berkas`,`irena_sbsn_proyek_dok`.`id_proyek` AS `id_proyek`,`irena_sbsn_proyek_dok`.`id_arsip` AS `id_arsip`,`irena_arsip_jenis`.`nama` AS `folder`,`irena_arsip`.`no` AS `no_arsip` from (((((`irena_sbsn_proyek_dok` join `irena_sbsn_proyek_dok_kategori` on((`irena_sbsn_proyek_dok_kategori`.`id` = `irena_sbsn_proyek_dok`.`id_proyek_dok_kategori`))) join `irena_sbsn_proyek` on((`irena_sbsn_proyek`.`id` = `irena_sbsn_proyek_dok`.`id_proyek`))) join `irena_arsip` on((`irena_arsip`.`id` = `irena_sbsn_proyek_dok`.`id_arsip`))) join `irena_user` on((`irena_user`.`id` = `irena_sbsn_proyek_dok`.`update_by`))) join `irena_arsip_jenis` on((`irena_arsip_jenis`.`id` = `irena_arsip`.`id_jenis`)));

-- ----------------------------
-- View structure for `irena_view_sbsn_on_going`
-- ----------------------------
DROP VIEW IF EXISTS `irena_view_sbsn_on_going`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_on_going` AS select `irena_sbsn_realisasi`.`id` AS `id`,`irena_sbsn_dpp`.`nama` AS `dpp`,`irena_sbsn_realisasi`.`nilai` AS `nilai`,`irena_sbsn_realisasi`.`update_date` AS `update_date`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_instansi_satker`.`nama` AS `satker`,`irena_instansi`.`nama` AS `instansi`,`irena_instansi`.`singkatan` AS `instansi_singkatan` from ((((`irena_sbsn_realisasi` join `irena_sbsn_dpp` on((`irena_sbsn_dpp`.`id` = `irena_sbsn_realisasi`.`id_dpp`))) join `irena_user` on((`irena_user`.`id` = `irena_sbsn_realisasi`.`update_by`))) join `irena_instansi_satker` on((`irena_instansi_satker`.`id` = `irena_sbsn_realisasi`.`id_satker`))) join `irena_instansi` on((`irena_instansi`.`id` = `irena_instansi_satker`.`id_instansi`)));

-- ----------------------------
-- View structure for `irena_view_sbsn_proyek_dpp`
-- ----------------------------
DROP VIEW IF EXISTS `irena_view_sbsn_proyek_dpp`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_proyek_dpp` AS select `irena_sbsn_proyek_dpp`.`id` AS `id`,`irena_sbsn_proyek_dpp`.`judul` AS `judul`,`irena_sbsn_proyek_dpp`.`nilai` AS `nilai`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_sbsn_proyek_dpp`.`update_date` AS `update_date`,`irena_sbsn_proyek`.`id` AS `id_proyek`,`irena_instansi_eselon_satu`.`nama` AS `instansi_eselon_satu`,`irena_instansi`.`nama` AS `instansi`,`irena_instansi`.`singkatan` AS `instansi_singkatan`,`irena_sbsn_kategori_proyek`.`nama` AS `kategori_proyek`,`irena_sbsn_dpp`.`nama` AS `dpp`,`irena_user`.`id_user_level` AS `user_level`,`irena_sbsn_proyek`.`output` AS `output`,`irena_sbsn_proyek`.`latar_belakang` AS `latar_belakang`,`irena_sbsn_proyek`.`tujuan` AS `tujuan`,`irena_sbsn_proyek`.`ruang_lingkup` AS `ruang_lingkup` from ((((((`irena_sbsn_proyek_dpp` join `irena_sbsn_dpp` on((`irena_sbsn_dpp`.`id` = `irena_sbsn_proyek_dpp`.`id_dpp`))) join `irena_user` on((`irena_user`.`id` = `irena_sbsn_proyek_dpp`.`update_by`))) join `irena_sbsn_proyek` on((`irena_sbsn_proyek`.`id` = `irena_sbsn_proyek_dpp`.`id_proyek`))) join `irena_instansi_eselon_satu` on((`irena_instansi_eselon_satu`.`id` = `irena_sbsn_proyek`.`id_instansi_eselon_satu`))) join `irena_instansi` on((`irena_instansi`.`id` = `irena_instansi_eselon_satu`.`id_instansi`))) join `irena_sbsn_kategori_proyek` on((`irena_sbsn_kategori_proyek`.`id` = `irena_sbsn_proyek`.`id_kategori_proyek`)));

-- ----------------------------
-- View structure for `irena_view_sbsn_realiasi_penyerapan_list`
-- ----------------------------
DROP VIEW IF EXISTS `irena_view_sbsn_realiasi_penyerapan_list`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_realiasi_penyerapan_list` AS select `irena_sbsn_realisasi_penyerapan`.`id` AS `id`,`irena_sbsn_realisasi_penyerapan`.`id_realisasi` AS `id_realisasi`,`irena_sbsn_realisasi_penyerapan`.`triwulan` AS `triwulan`,`irena_sbsn_realisasi_penyerapan`.`penyerapan` AS `penyerapan`,`irena_sbsn_realisasi_penyerapan`.`progres_fisik` AS `progres_fisik`,`irena_sbsn_realisasi_penyerapan`.`permasalahan` AS `permasalahan`,`irena_sbsn_realisasi_penyerapan`.`tindak_lanjut` AS `tindak_lanjut`,`irena_sbsn_realisasi_penyerapan`.`pihak_terlibat` AS `pihak_terlibat`,`irena_sbsn_realisasi_penyerapan`.`catatan` AS `catatan`,`irena_user`.`nama_panggilan` AS `nama_panggilan` from ((`irena_sbsn_realisasi_penyerapan` join `irena_sbsn_realisasi` on((`irena_sbsn_realisasi`.`id` = `irena_sbsn_realisasi_penyerapan`.`id_realisasi`))) join `irena_user` on((`irena_user`.`id` = `irena_sbsn_realisasi_penyerapan`.`update_by`)));

-- ----------------------------
-- View structure for `irena_view_sbsn_usulan_awal`
-- ----------------------------
DROP VIEW IF EXISTS `irena_view_sbsn_usulan_awal`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_usulan_awal` AS select `irena_sbsn_proyek`.`id` AS `id_proyek`,`irena_instansi`.`nama` AS `instansi`,`irena_instansi`.`singkatan` AS `instansi_singkatan`,`irena_instansi_eselon_satu`.`nama` AS `instansi_eselon_satu`,`irena_sbsn_dpp`.`nama` AS `dpp`,`irena_sbsn_kategori_proyek`.`nama` AS `kategori_proyek`,`irena_sbsn_proyek`.`judul` AS `judul`,`irena_sbsn_proyek`.`nilai` AS `nilai`,`irena_sbsn_proyek`.`output` AS `output`,`irena_sbsn_proyek`.`latar_belakang` AS `latar_belakang`,`irena_sbsn_proyek`.`tujuan` AS `tujuan`,`irena_sbsn_proyek`.`ruang_lingkup` AS `ruang_lingkup`,`irena_sbsn_proyek`.`update_date` AS `update_date`,`irena_user`.`nama_panggilan` AS `user_nama_panggilan`,`irena_sbsn_proyek`.`nilai_admin` AS `nilai_admin`,`irena_sbsn_proyek`.`nilai_admin_id` AS `nilai_admin_id`,`irena_sbsn_proyek`.`nilai_admin_ket` AS `nilai_admin_ket`,`irena_sbsn_proyek`.`nilai_admin_date` AS `nilai_admin_date`,`irena_sbsn_proyek`.`nilai_layak` AS `nilai_layak`,`irena_sbsn_proyek`.`nilai_layak_id` AS `nilai_layak_id`,`irena_sbsn_proyek`.`nilai_layak_ket` AS `nilai_layak_ket`,`irena_sbsn_proyek`.`nilai_layak_date` AS `nilai_layak_date`,`irena_sbsn_proyek`.`masuk_dpp` AS `masuk_dpp`,`irena_sbsn_proyek`.`masuk_dpp_id` AS `masuk_dpp_id`,`irena_sbsn_proyek`.`masuk_dpp_ket` AS `masuk_dpp_ket`,`irena_sbsn_proyek`.`masuk_dpp_date` AS `masuk_dpp_date`,`irena_sbsn_proyek`.`single_multi` AS `single_multi` from (((((`irena_sbsn_proyek` join `irena_instansi_eselon_satu` on((`irena_instansi_eselon_satu`.`id` = `irena_sbsn_proyek`.`id_instansi_eselon_satu`))) join `irena_instansi` on((`irena_instansi`.`id` = `irena_instansi_eselon_satu`.`id_instansi`))) join `irena_sbsn_dpp` on((`irena_sbsn_dpp`.`id` = `irena_sbsn_proyek`.`id_dpp`))) join `irena_sbsn_kategori_proyek` on((`irena_sbsn_kategori_proyek`.`id` = `irena_sbsn_proyek`.`id_kategori_proyek`))) join `irena_user` on((`irena_user`.`id` = `irena_sbsn_proyek`.`update_by`)));

-- ----------------------------
-- View structure for `irena_view_sbsn_usulan_syarat`
-- ----------------------------
DROP VIEW IF EXISTS `irena_view_sbsn_usulan_syarat`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_usulan_syarat` AS select `irena_sbsn_proyek_syarat`.`id` AS `id`,`irena_sbsn_proyek_syarat`.`kat` AS `kat`,`irena_sbsn_proyek_syarat`.`nama` AS `nama`,`irena_sbsn_proyek_syarat`.`ket` AS `ket`,`irena_sbsn_proyek_syarat`.`berkas` AS `berkas`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_sbsn_proyek_syarat`.`id_proyek` AS `id_proyek` from (`irena_sbsn_proyek_syarat` join `irena_user` on((`irena_user`.`id` = `irena_sbsn_proyek_syarat`.`update_by`)));
