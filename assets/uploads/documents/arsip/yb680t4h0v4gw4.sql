/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50621
Source Host           : localhost:3306
Source Database       : ci_sbsn

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-11-19 05:39:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for arsip
-- ----------------------------
DROP TABLE IF EXISTS `arsip`;
CREATE TABLE `arsip` (
  `id` int(11) NOT NULL DEFAULT '0',
  `id_kat_arsip` int(11) DEFAULT NULL,
  `id_proyek` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of arsip
-- ----------------------------

-- ----------------------------
-- Table structure for gambar
-- ----------------------------
DROP TABLE IF EXISTS `gambar`;
CREATE TABLE `gambar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_monev` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `ket` text,
  `gambar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of gambar
-- ----------------------------

-- ----------------------------
-- Table structure for instansi
-- ----------------------------
DROP TABLE IF EXISTS `instansi`;
CREATE TABLE `instansi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of instansi
-- ----------------------------
INSERT INTO `instansi` VALUES ('1', 'Kementerian Perhubungan', 'Kemenhub', 'merah.png');
INSERT INTO `instansi` VALUES ('2', 'Kementerian Agama', 'Kemenag', 'hijau.png');
INSERT INTO `instansi` VALUES ('3', 'Kementerian Pekerjaan Umum dan Perumahan Rakyat', 'Kemen PU dan Pera', 'kuning.png');
INSERT INTO `instansi` VALUES ('4', 'madont', 'rama', 'ga ada');

-- ----------------------------
-- Table structure for kabkota
-- ----------------------------
DROP TABLE IF EXISTS `kabkota`;
CREATE TABLE `kabkota` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_provinsi` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kabkota
-- ----------------------------
INSERT INTO `kabkota` VALUES ('1', '1', 'Kota Banda Aceh', '5.546182', '95.319054');
INSERT INTO `kabkota` VALUES ('3', '25', 'Kota Pekanbaru', '0.5070677', '101.4477793');
INSERT INTO `kabkota` VALUES ('4', '17', 'Kabupaten Natuna', '3.940909', '108.3872724');
INSERT INTO `kabkota` VALUES ('5', '7', 'Kota Jambi', null, null);
INSERT INTO `kabkota` VALUES ('6', '8', 'Kota Cikarang', '-6.2621933', '107.5416395');
INSERT INTO `kabkota` VALUES ('7', '14', 'Kota Balikpapan', '-1.2379274', '116.8528526');
INSERT INTO `kabkota` VALUES ('8', '14', 'Kota Samarinda', null, null);
INSERT INTO `kabkota` VALUES ('9', '6', 'Kota Jakarta', '-6.2087634', '106.845599');
INSERT INTO `kabkota` VALUES ('10', '20', 'Kota Tidore Kepulauan', '0.5060207', '127.681228');
INSERT INTO `kabkota` VALUES ('11', '32', 'Kota Medan', '3.6004249', '98.6820636');
INSERT INTO `kabkota` VALUES ('12', '8', 'Kota Cirebon', '-6.7320229', '108.5523164');
INSERT INTO `kabkota` VALUES ('13', '9', 'Kabupaten Cilacap', '-7.6178096', '108.902683');
INSERT INTO `kabkota` VALUES ('14', '29', 'Kota Manado', '1.4748305', '124.8420794');
INSERT INTO `kabkota` VALUES ('15', '28', 'Kabupaten Parigi Moutong', '-0.716097', '120.089897');
INSERT INTO `kabkota` VALUES ('16', '7', 'Kabupaten Batanghari', '-1.7083922', '103.0817903');
INSERT INTO `kabkota` VALUES ('17', '5', 'Kabupaten Gorontalo Utara', '0.9252647', '122.4920088');
INSERT INTO `kabkota` VALUES ('18', '12', 'Kota Banjarbaru', '-3.4572422', '114.8103181');
INSERT INTO `kabkota` VALUES ('19', '21', 'Kota Sumbawa Besar', '-8.504043', '117.428497');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES ('0', '-');
INSERT INTO `kategori` VALUES ('1', 'DPP SBSN 2013');
INSERT INTO `kategori` VALUES ('2', 'DPP SBSN 2014');
INSERT INTO `kategori` VALUES ('3', 'DPP SBSN 2015');
INSERT INTO `kategori` VALUES ('4', 'DPP SBSN 2016');

-- ----------------------------
-- Table structure for kategori_proyek
-- ----------------------------
DROP TABLE IF EXISTS `kategori_proyek`;
CREATE TABLE `kategori_proyek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kategori_proyek
-- ----------------------------
INSERT INTO `kategori_proyek` VALUES ('1', 'Gedung');
INSERT INTO `kategori_proyek` VALUES ('2', 'Jalan');
INSERT INTO `kategori_proyek` VALUES ('3', 'Jembatan');
INSERT INTO `kategori_proyek` VALUES ('4', 'Rel Kereta Api');

-- ----------------------------
-- Table structure for kat_arsip
-- ----------------------------
DROP TABLE IF EXISTS `kat_arsip`;
CREATE TABLE `kat_arsip` (
  `id` int(11) NOT NULL DEFAULT '0',
  `id_arsip` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kat_arsip
-- ----------------------------

-- ----------------------------
-- Table structure for lokasi
-- ----------------------------
DROP TABLE IF EXISTS `lokasi`;
CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_monev` int(11) DEFAULT NULL,
  `id_provinsi` int(11) DEFAULT NULL,
  `id_kabkota` int(11) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lokasi
-- ----------------------------
INSERT INTO `lokasi` VALUES ('1', '50', '17', '4', 'fsdsd');
INSERT INTO `lokasi` VALUES ('2', '19', null, '10', null);
INSERT INTO `lokasi` VALUES ('3', '48', '32', '11', null);
INSERT INTO `lokasi` VALUES ('4', '55', null, '12', null);
INSERT INTO `lokasi` VALUES ('5', '55', null, '13', null);
INSERT INTO `lokasi` VALUES ('6', '37', '29', '14', null);
INSERT INTO `lokasi` VALUES ('7', '49', '6', '9', null);
INSERT INTO `lokasi` VALUES ('8', '4', '6', '9', null);
INSERT INTO `lokasi` VALUES ('9', '47', '8', '12', null);
INSERT INTO `lokasi` VALUES ('10', '47', '9', '13', null);
INSERT INTO `lokasi` VALUES ('11', '1', '8', '12', null);
INSERT INTO `lokasi` VALUES ('12', '46', '28', '15', 'Ampibabo Toboli');
INSERT INTO `lokasi` VALUES ('13', '45', '7', '16', null);
INSERT INTO `lokasi` VALUES ('14', '44', '5', '17', 'Kecamatan Tolinggula');
INSERT INTO `lokasi` VALUES ('15', '43', '12', '18', 'Kecamatan Liang Anggang');
INSERT INTO `lokasi` VALUES ('16', '41', '17', '4', 'Desa Cemaga Besar');

-- ----------------------------
-- Table structure for monev
-- ----------------------------
DROP TABLE IF EXISTS `monev`;
CREATE TABLE `monev` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_status` int(11) DEFAULT NULL,
  `id_proyek` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `kode_satker` varchar(255) DEFAULT NULL,
  `nama_satker` varchar(255) DEFAULT NULL,
  `no_dipa` varchar(255) DEFAULT NULL,
  `tgl_dipa` date DEFAULT NULL,
  `nilai_dipa` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of monev
-- ----------------------------
INSERT INTO `monev` VALUES ('1', '2', '48', 'Pembangunan Jalur Ganda Lintas Cirebon-Kroya Segmen I (Cirebon-Larangan)', '001', 'Direktorat Jenderal Perkeretaapian', null, null, '745000000000');
INSERT INTO `monev` VALUES ('3', '1', '44', 'Rekonstruksi Jalan Ruas Simpang Batang - Simpang Kulim ', '498583', '-', 'SP DIPA-033.04.1.498583/2015', null, '30000000000');
INSERT INTO `monev` VALUES ('4', '1', '3', 'Paket B2 (1) (Modernisasi Fasilitas Perkeretaapian untuk Jatinegara s/d Bekasi)', '001', 'Ditjen. Perkeretaapian', null, null, '370000000000');
INSERT INTO `monev` VALUES ('5', '1', '16', 'Pembangunan Jalan Akses Pelabuhan Sorong Arar', '001', 'Ditjen. Bina Marga', null, null, '65900000000');
INSERT INTO `monev` VALUES ('6', '1', '47', 'Pembangunan Gedung dan Perlengkapan Sarana dan Prasarana Pendidikan', '001', '-', null, null, '280900000000');
INSERT INTO `monev` VALUES ('7', '2', '49', 'Pembangunan Railway Electrification and Double-Double Tracking of Java Main Line Project', '001', '-', null, null, '626000000000');
INSERT INTO `monev` VALUES ('8', '1', '46', 'Pembangunan Gedung Balai Nikah dan Manasik Haji', '-', '-', null, null, '19540000000');
INSERT INTO `monev` VALUES ('9', '1', '45', 'Revitalisasi dan Pengembangan Asrama Haji', '-', '-', null, null, '382930000000');
INSERT INTO `monev` VALUES ('10', '1', '43', 'Perbaikan Aligmen & Penataan Tikungan pada Lintas Timur Prov. Jambi', '-', '-', null, null, '30000000000');
INSERT INTO `monev` VALUES ('11', '1', '42', 'Peningkatan Struktur Jalan Duri Kandis', '498583', '-', 'SP DIPA-033.04.1.498583/2015', null, '44340000000');
INSERT INTO `monev` VALUES ('12', '2', '50', 'Revitalisasi dan Pengembangan Asrama Haji', '-', 'Ditjen. Penyelenggaraan Haji dan Umrah', null, null, '200000000000');
INSERT INTO `monev` VALUES ('13', '1', '40', 'Pembangunan Jembatan Wailata Besar', '-', '-', null, null, '54000000000');
INSERT INTO `monev` VALUES ('14', '1', '39', 'Pembangunan Jembatan Sangkup', '-', '-', null, null, '56250000000');
INSERT INTO `monev` VALUES ('15', '1', '38', 'Pembangunan Jembatan Pulau Balang', '498601', 'PELAKSANAAN JEMBATAN PULAU BALANG', '033.04.1.498601/2015', '2015-05-25', '320290000000');
INSERT INTO `monev` VALUES ('16', '1', '37', 'Pembangunan Jembatan Holtekam', '-', '-', null, null, '200500000000');
INSERT INTO `monev` VALUES ('17', '1', '36', 'Pembangunan Jembatan Batang Terusan', '-', '-', null, null, '35000000000');
INSERT INTO `monev` VALUES ('18', '1', '35', 'Pembangunan Jembatan Banyumulek Cs', '-', '-', null, null, '81000000000');
INSERT INTO `monev` VALUES ('19', '1', '34', 'Pembangunan Jembatan Ake Gosale', '-', '-', null, null, '53350000000');
INSERT INTO `monev` VALUES ('20', '1', '33', 'Pembangunan Jalan Tol Waropko Iwur', '-', '-', null, null, '210000000000');
INSERT INTO `monev` VALUES ('21', '1', '32', 'Pembangunan Jalan Tol Manado Bitung', '-', '-', null, null, '25000000000');
INSERT INTO `monev` VALUES ('22', '1', '31', 'Pembangunan Jalan Timika Waghete', '-', '-', null, null, '100000000000');
INSERT INTO `monev` VALUES ('23', '1', '30', 'Pembangunan Jalan Reba Siberida', '498584', '-', 'SP DIPA-033.04.1.498584/2015', '2014-11-14', '30250000000');
INSERT INTO `monev` VALUES ('24', '1', '29', 'Pembangunan Jalan Pameu - Genting Gerbang', '-', '-', null, null, '41500000000');
INSERT INTO `monev` VALUES ('25', '1', '28', 'Pembangunan Jalan Muara Wahau - Kelay', '-', '-', null, null, '110250000000');
INSERT INTO `monev` VALUES ('26', '1', '27', 'Pembangunan Jalan Maros - Watmpoe', '-', '-', null, null, '41860000000');
INSERT INTO `monev` VALUES ('27', '1', '26', 'Pembangunan Jalan Labuan - Maligano', '-', '-', null, null, '52800000000');
INSERT INTO `monev` VALUES ('28', '1', '25', 'Pembangunan Jalan Kelay - Lebanan', '-', '-', null, null, '105210000000');
INSERT INTO `monev` VALUES ('29', '1', '24', 'Pembangunan Jalan Jayapura Wamena', '-', '-', null, null, '255500000000');
INSERT INTO `monev` VALUES ('30', '1', '23', 'Pembangunan Jalan Jayapura Sarmi', '-', '-', null, null, '150000000000');
INSERT INTO `monev` VALUES ('31', '1', '22', 'Pembangunan Jalan Haberna Kenyam', '-', '-', null, null, '90000000000');
INSERT INTO `monev` VALUES ('32', '1', '21', 'Pembangunan Jalan Gerung (Patung Sapi) Mataram', '-', '-', null, null, '233930000000');
INSERT INTO `monev` VALUES ('33', '1', '14', 'Pelebaran Jalan Talabiu batas kota Bima', '-', '-', null, null, '65000000000');
INSERT INTO `monev` VALUES ('34', '1', '20', 'Pembangunan Jalan Fly Over (FO) SP. Surabaya', '498575	', 'Satuan Kerja Pelaksanaan Jalan Nasional Wilayah II Provinsi Aceh	', 'SP DIPA- 033.04.1.498575/2015, 14 Nopember 2014', '2014-11-14', '30000000000');
INSERT INTO `monev` VALUES ('35', '1', '19', 'Pembangunan Jalan Depapre - Bongkrang', '-', '-', null, null, '43200000000');
INSERT INTO `monev` VALUES ('36', '1', '18', 'Pembangunan Jalan Dekai - Oksibil', '-', '-', null, null, '180000000000');
INSERT INTO `monev` VALUES ('37', '1', '17', 'Pembangunan Jalan By Pass Manado II', '-', '-', null, null, '184400000000');
INSERT INTO `monev` VALUES ('38', '1', '15', 'Pembangunan Jalan Akses Dry Port', '498597', 'PELAKSANAAN JALAN NASIONAL METROPOLITAN I JAKARTA', 'SP DIPA-033.04.1.498597/2015', null, '55000000000');
INSERT INTO `monev` VALUES ('39', '1', '13', 'Pelebaran Jalan Ruas Tomata - Beteleme', '-', '-', null, null, '79800000000');
INSERT INTO `monev` VALUES ('40', '1', '12', 'Pelebaran Jalan Ruas Tolango - Bulintio', '-', '-', null, null, '54000000000');
INSERT INTO `monev` VALUES ('41', '1', '11', 'Pelebaran jalan Ruas Ruas Sp. Sekunyam - Desa Cemaga Besar', '498585	\r\n', 'SNVT Pelaksanaan Jalan Nasional Provinsi Kepulauan Riau', 'SP DIPA-033.04.1.498585/2015	', '2015-11-14', '44000000000');
INSERT INTO `monev` VALUES ('42', '1', '10', 'Pelebaran Jalan Ruas Simpang Negara - Batas Kota Sumbawa Besar', '-', '-', null, null, '87280000000');
INSERT INTO `monev` VALUES ('43', '1', '9', 'Pelebaran Jalan Ruas Pelabuhan Trisakti - Liang Anggang', '-', '-', null, null, '71500000000');
INSERT INTO `monev` VALUES ('44', '1', '8', 'Pelebaran Jalan Bulontio - Tolinggula (Bts. Prov. Sulteng) I', '-', '-', null, null, '54000000000');
INSERT INTO `monev` VALUES ('45', '1', '7', 'Pelebaran Jalan Batas Kota Muara Bulian - Batas. Kabupaten Muaro Jambi/Kabupaten Batanghari', '498586', 'Pelaksanaan Jalan Nasional Wilayah I Provinsi Jambi', 'DIPA-033.04.1.498586/2015', '2014-11-14', '32280000000');
INSERT INTO `monev` VALUES ('46', '1', '6', 'Pelebaran Jalan Ampibabo Toboli', '-', '-', null, null, '58410000000');
INSERT INTO `monev` VALUES ('47', '1', '5', 'Pembangunan Jalur Ganda KA antara Purwokerto - Kroya Lintas Cirebon - Kroya segmen III', '-', '-', null, null, '400000000000');
INSERT INTO `monev` VALUES ('48', '1', '4', 'Pembangunan Jalan KA Layang di Perkotaan Medan (tahap 1 antara Medan - Bandar Khalifah Baru lintas Medan - Araskabu - Kualanamu) ', '-', '-', null, null, '600000000000');
INSERT INTO `monev` VALUES ('49', '1', '2', 'Paket A (Pembangunan Fasilitas KA Manggarai - Jatinegara)', '-', '-', '-', null, '1220000000000');
INSERT INTO `monev` VALUES ('50', '1', '1', 'Pembangunan Jalur Ganda Kereta Api Antara Martapura - Baturaja total sepanjang 35 Km\'sp', '-', '-', null, null, '334500000000');
INSERT INTO `monev` VALUES ('51', '1', '41', 'Pembangunan Undepass Simpang Mandai Makasar', '-', '-', null, null, '80000000000');
INSERT INTO `monev` VALUES ('52', null, null, null, null, null, null, '2015-11-10', '0');
INSERT INTO `monev` VALUES ('53', null, null, null, null, null, null, '2015-11-10', '0');
INSERT INTO `monev` VALUES ('54', null, '56', 'Proyek tak yakin', null, null, null, null, '1000000000');
INSERT INTO `monev` VALUES ('55', '2', '59', 'Pembangunan Jalur Ganda Lintas Cirebon-Kroya Segmen I (Cirebon-Larangan)', '-', '-', null, null, '800000000');

-- ----------------------------
-- Table structure for paket_kontrak
-- ----------------------------
DROP TABLE IF EXISTS `paket_kontrak`;
CREATE TABLE `paket_kontrak` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_monev` int(11) DEFAULT NULL,
  `kode` varchar(255) DEFAULT NULL,
  `paket_kontrak` varchar(255) DEFAULT NULL,
  `uraian_pekerjaan` text,
  `tgl_kontrak` date DEFAULT NULL,
  `tgl_selesai_kontrak` date DEFAULT NULL,
  `pagu` double DEFAULT NULL,
  `nilai_paket_kontrak` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of paket_kontrak
-- ----------------------------
INSERT INTO `paket_kontrak` VALUES ('1', '1', '001', 'Peningkatan Jalur Ganda Lintas Cirebon - Kroya', null, '2014-04-01', '2014-12-31', '132626703000', '132626703000');
INSERT INTO `paket_kontrak` VALUES ('2', '1', '002', 'Pembangunan Jaluar Ganda KA Lintas Cirebon - Kroya', null, '2014-01-01', '2014-12-31', '268073193000', '268073193000');
INSERT INTO `paket_kontrak` VALUES ('3', '1', '003', 'Pengadaan Rel dan Wesel', null, '2014-01-01', '2014-12-31', '58133350000', '58133350000');
INSERT INTO `paket_kontrak` VALUES ('4', '1', '004', 'Pembangunan Jembatan/Terowongan/Gorong-gorong/Box Culvert/Underpass/Fly Over', null, '2014-01-01', '2014-12-31', '135708800000', '135708800000');
INSERT INTO `paket_kontrak` VALUES ('5', '1', '005', 'Pembangunan Pagar Fasilitas Pendukung', null, '2014-01-01', '2014-12-31', '3116916000', '3116916000');
INSERT INTO `paket_kontrak` VALUES ('6', '1', '006', 'Peningkatan Persinyalan', null, '2014-01-01', '2014-12-31', '133259521000', '133259521000');
INSERT INTO `paket_kontrak` VALUES ('7', '1', '007', 'Penyusunan Dokumen Pemantauan RKL-RPL', null, '2014-01-01', '2014-12-31', '450000000', '450000000');
INSERT INTO `paket_kontrak` VALUES ('8', '1', '008', 'Bimbingan dan Koordinasi Teknis', null, '2014-01-01', '2014-12-31', '13631517000', '13631517000');
INSERT INTO `paket_kontrak` VALUES ('13', '12', '-', 'Paket Revitalisasi dan Pengembangan Asrama Haji Medan', '-', '2014-01-01', '2014-12-31', '74000000000', '74000000000');
INSERT INTO `paket_kontrak` VALUES ('14', '12', '-', 'Paket Revitalisasi dan Pengembangan Asrama Haji Padang', '-', '2014-01-01', '2014-12-31', '35000000000', '3500000000');
INSERT INTO `paket_kontrak` VALUES ('15', '12', '-', 'Paket Revitalisasi dan Pengembangan Asrama Haji Jakarta Timur (Pondok Gede)', '-', '2014-01-01', '2014-12-31', '38000000000', '38000000000');
INSERT INTO `paket_kontrak` VALUES ('16', '12', '-', 'Paket Revitalisasi dan Pengembangan Asrama Haji Balikpapan', '-', '2014-01-01', '2014-12-31', '53000000000', '53000000000');
INSERT INTO `paket_kontrak` VALUES ('17', '24', '2409.005.006.53411\r\n', 'Rekonstruksi/Peningkatan Struktur Jalan  Pameu - Genting Gerbang Seksi III', '(1) Pasangan Batu dengan Mortar; \r\n(2) Lapis Pondasi Agregat Kelas A; \r\n(3)Lapis Pondasi Agregat Kelas B; \r\n(4) Laston Lapis Aus (AC-WC) (gradasi halus/kasar); \r\n(5)Laston Lapis Antara (AC-BC) (gradasi halus/kasar); \r\n(6) Beton Mutu Sedang dengan fc’ = 20 Mpa (K-250); \r\n(7) Bronjong dengan kawat yang dilapis galvanis', '2015-02-18', '2015-10-22', '20000000000', '19996040000');
INSERT INTO `paket_kontrak` VALUES ('18', '24', '2409.005.006.53411', 'Rekonstruksi/Peningkatan Struktur Jalan  Pameu - Genting Gerbang Seksi IV', 'Rekonstruksi/Peningkatan Struktur Jalan                          1) Pasangan Batu dengan Mortar.                                    2) Lapis Pondasi Agregat Kelas A.                              3)Lapis Pondasi Agregat Kelas B.                                 4)Laston Lapis Aus (AC-WC) (gradasi halus/kasar).                                                    5)Laston Lapis Antara (AC-BC) (gradasi halus/kasar)                                                                    6) Beton Mutu Sedang dengan fc’ = 20 Mpa (K-250),                                                                                   7) Baja Tulangan U 24 Polos                                           8)Bronjong dengan kawat yang dilapis galvanis                                                   \r\n', '2015-02-18', '2015-10-22', '21500000000', '19566091000');
INSERT INTO `paket_kontrak` VALUES ('19', '34', '2409.010.001', 'Pembangunan Fly Over, Struktur bangunan atas U Girder & Box Girder, Struktur bangunan bawah Bore pile dan Oprit dengan perkerasan Flexible Pavement', '1. Pembangunan Fly Over,\r\n2. Struktur bangunan atas U Girder & Box Girder, \r\n3. Struktur bangunan bawah Bore pile dan\r\n4. Oprit dengan perkerasan Flexible Pavement', null, null, '0', '0');
INSERT INTO `paket_kontrak` VALUES ('20', '3', '534111', 'Pelebaran Jalan Sp. Batang - Sp. Kulim (Seksi A)', '1. Pekerjaan Konstruksi Beton (Rigid pavement) sepanjang 2,6 KM\r\n2. Honorarium Panitia Pengadaan Barang dan Jasa\r\n3. Honorarium Panitia Penerima Hasil Pekerjaan', '2015-04-13', '2015-12-08', '30000000000', '30000000000');
INSERT INTO `paket_kontrak` VALUES ('21', '11', '534111', 'Pelebaran Jalan Duri - Kandis (Seksi C)', '1. Pekerjaan Konstruksi Beton (Rigid pavement) sepanjang 4,0 KM; \r\n2. Honorarium Panitia Pengadaan Barang dan Jasa;\r\n3. Honorarium Panitia Penerima Hasil Pekerjaan;\r\n4. Biaya Lelang', '2015-04-14', '2015-12-09', '44337500000', '44337500000');
INSERT INTO `paket_kontrak` VALUES ('22', '23', '534111', 'Rekonstruksi Jalan Pematang Reba - Siberida', '1. Rekonstruksi Jalan Pematang Reba - Siberida;\r\n2. Honorarium Panitia Pengadaan Barang Dan Jasa (Konstruksi) pagu pengadaan di atas  Rp25 miliar s.d. Rp50 miliar;\r\n3. Biaya Lelang', '2015-04-07', '2015-11-02', '30219700000', '28242951768');
INSERT INTO `paket_kontrak` VALUES ('23', '41', '534111', 'Pelebaran Jalan Sp. Sekunayam - Desa Cemega sepanjang 10 KM	', '1. Pelabaran Jalan Sp. Sekunyam - Desa Cemega;\r\n2. Honorarium Panitia Pengadaan Barang Dan Jasa (Konstruksi) pagu 17.150.000 pengadaan di atas Rp25 miliar s.d. Rp50 miliar;\r\n3. Honorarium Panitia Penerima Hasil Pekerjaan/Pengadaan 10.150.000 Barang/Jasa ( pagu di atas Rp25 miliar s.d. Rp50 miliar);\r\n4. Honorarium Panitia Peneliti Kontrak [5 ORG x 1 PKT];\r\n5. Biaya Tender', '2015-04-28', '2015-11-30', '44000000000', '44000000000');
INSERT INTO `paket_kontrak` VALUES ('24', '45', '1', 'Pelebaran Jalan Bts. Kota Muara Bulian - Batas Kabupaten Muara Jambi/Kabupaten Batanghari sepanjang 6 Km', 'Pelebaran jalan Sepanjang 6 KM', '2015-03-27', '2015-10-22', '32280000000', '30888000000');
INSERT INTO `paket_kontrak` VALUES ('25', '38', '534111', 'PEMBANGUNAN AKSES DRYPORT CIKARANG (MYC)', 'Pembangunan Jalan On Ramp Toll sepanjang ± 380 meter ; Pekerjaan Aspal ± 950 meter ; Pekerjaan Overpass Toll ± 300 meter; Pekerjaan Plaza Toll dan Fasilitas Gedung Toll', null, null, '0', '0');
INSERT INTO `paket_kontrak` VALUES ('26', '15', '2409.008', 'PEMBANGUNAN JEMBATAN PULAU BALANG II (MYC)', 'PEMBANGUNAN JEMBATAN PULAU BALANG II (MYC)', null, null, '0', '0');
INSERT INTO `paket_kontrak` VALUES ('27', '49', 'tes', 'tes', 'tes', null, null, '10', '10');
INSERT INTO `paket_kontrak` VALUES ('28', '19', '1', 'Penggantian Jembatan Ake Gosale I', '<p>Pekerjaan Jembatan dengan konstruksi presstres Fabrikasi dengan Instrumen &nbsp;pelengkung</p>', '2015-04-14', '2015-12-09', '53327800000', '0');
INSERT INTO `paket_kontrak` VALUES ('29', '19', '2', 'Honorarium Panitia Pengadaan Barang dan Jasa dan Panitia Peniliti Hasil Pekerjaan', '<p>Pekerjaan Jembatan dengan konstruksi presstres Fabrikasi dengan Instrumen &nbsp;pelengkung</p>', null, null, '22200000', '0');

-- ----------------------------
-- Table structure for penyerapan
-- ----------------------------
DROP TABLE IF EXISTS `penyerapan`;
CREATE TABLE `penyerapan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paket_kontrak` int(11) DEFAULT NULL,
  `triwulan` int(11) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `target_triwulan_selanjutnya` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of penyerapan
-- ----------------------------
INSERT INTO `penyerapan` VALUES ('3', '1', '1', '0', '33000000000');
INSERT INTO `penyerapan` VALUES ('4', '1', '2', '33000000000', '53000000000');
INSERT INTO `penyerapan` VALUES ('5', '1', '3', '22000000000', '20000000000');
INSERT INTO `penyerapan` VALUES ('6', '1', '4', '28000000000', '0');
INSERT INTO `penyerapan` VALUES ('7', '2', '1', '0', '67000000000');
INSERT INTO `penyerapan` VALUES ('8', '2', '2', '52000000000', '107000000000');
INSERT INTO `penyerapan` VALUES ('9', '2', '3', '57000000000', '40000000000');
INSERT INTO `penyerapan` VALUES ('10', '2', '4', '88000000000', '0');
INSERT INTO `penyerapan` VALUES ('11', '4', '1', '0', '34000000000');
INSERT INTO `penyerapan` VALUES ('12', '4', '2', '25000000000', '54000000000');
INSERT INTO `penyerapan` VALUES ('13', '4', '3', '32000000000', '20000000000');
INSERT INTO `penyerapan` VALUES ('14', '4', '4', '59000000000', '0');
INSERT INTO `penyerapan` VALUES ('15', '5', '1', '0', '1000000000');
INSERT INTO `penyerapan` VALUES ('16', '5', '2', '1000000000', '1000000000');
INSERT INTO `penyerapan` VALUES ('17', '5', '3', '0', '0');
INSERT INTO `penyerapan` VALUES ('18', '5', '4', '1000000000', '0');
INSERT INTO `penyerapan` VALUES ('20', '3', '1', '0', '15000000000');
INSERT INTO `penyerapan` VALUES ('21', '3', '2', '32000000000', '23000000000');
INSERT INTO `penyerapan` VALUES ('22', '3', '3', '18000000000', '9000000000');
INSERT INTO `penyerapan` VALUES ('23', '3', '4', '0', '0');
INSERT INTO `penyerapan` VALUES ('24', '6', '1', '0', '33000000000');
INSERT INTO `penyerapan` VALUES ('25', '6', '2', '26000000000', '53000000000');
INSERT INTO `penyerapan` VALUES ('26', '6', '3', '12000000000', '20000000000');
INSERT INTO `penyerapan` VALUES ('27', '6', '4', '54000000000', '0');
INSERT INTO `penyerapan` VALUES ('28', '7', '1', '0', '110000000');
INSERT INTO `penyerapan` VALUES ('29', '7', '2', '80000000', '180000000');
INSERT INTO `penyerapan` VALUES ('30', '7', '3', '0', '7000000');
INSERT INTO `penyerapan` VALUES ('31', '7', '4', '190000000', '0');
INSERT INTO `penyerapan` VALUES ('32', '8', '1', '0', '3000000000');
INSERT INTO `penyerapan` VALUES ('33', '8', '2', '2000000000', '5000000000');
INSERT INTO `penyerapan` VALUES ('34', '8', '3', '1000000000', '2000000000');
INSERT INTO `penyerapan` VALUES ('35', '8', '4', '5000000000', '0');
INSERT INTO `penyerapan` VALUES ('44', '13', '1', '0', '17000000000');
INSERT INTO `penyerapan` VALUES ('45', '14', '1', '0', '10000000000');
INSERT INTO `penyerapan` VALUES ('46', '15', '1', '0', '1000000000');
INSERT INTO `penyerapan` VALUES ('47', '16', '1', '0', '1000000000');
INSERT INTO `penyerapan` VALUES ('48', '13', '2', '0', '17000000000');
INSERT INTO `penyerapan` VALUES ('49', '14', '2', '0', '10000000000');
INSERT INTO `penyerapan` VALUES ('50', '15', '2', '1000000000', '22000000000');
INSERT INTO `penyerapan` VALUES ('51', '16', '2', '300000000', '34000000000');
INSERT INTO `penyerapan` VALUES ('52', '13', '3', '0', '57000000000');
INSERT INTO `penyerapan` VALUES ('53', '14', '3', '0', '15000000000');
INSERT INTO `penyerapan` VALUES ('54', '15', '3', '8000000000', '15000000000');
INSERT INTO `penyerapan` VALUES ('55', '16', '3', '12000000000', '18000000000');
INSERT INTO `penyerapan` VALUES ('56', '13', '4', '14000000000', '0');
INSERT INTO `penyerapan` VALUES ('57', '14', '4', '4000000000', '0');
INSERT INTO `penyerapan` VALUES ('58', '15', '4', '15000000000', '0');
INSERT INTO `penyerapan` VALUES ('59', '16', '4', '3000000000', '0');
INSERT INTO `penyerapan` VALUES ('64', '17', '1', '0', '0');
INSERT INTO `penyerapan` VALUES ('65', '17', '2', '5643869480', '0');
INSERT INTO `penyerapan` VALUES ('68', '18', '1', '0', '0');
INSERT INTO `penyerapan` VALUES ('69', '18', '2', '5478886204', '0');
INSERT INTO `penyerapan` VALUES ('72', '19', '1', '0', '0');
INSERT INTO `penyerapan` VALUES ('73', '19', '2', '0', '0');
INSERT INTO `penyerapan` VALUES ('76', '20', '1', '20150000', '0');
INSERT INTO `penyerapan` VALUES ('77', '20', '2', '5599954600', '0');
INSERT INTO `penyerapan` VALUES ('78', '21', '1', '0', '0');
INSERT INTO `penyerapan` VALUES ('79', '21', '2', '14720011577', '0');
INSERT INTO `penyerapan` VALUES ('80', '22', '1', '0', '0');
INSERT INTO `penyerapan` VALUES ('81', '22', '2', '5668001250', '0');
INSERT INTO `penyerapan` VALUES ('82', '23', '1', '0', '0');
INSERT INTO `penyerapan` VALUES ('83', '23', '2', '8528726600', '0');
INSERT INTO `penyerapan` VALUES ('84', '24', '1', '0', '0');
INSERT INTO `penyerapan` VALUES ('85', '24', '2', '6194750000', '0');
INSERT INTO `penyerapan` VALUES ('86', '25', '1', '0', '0');
INSERT INTO `penyerapan` VALUES ('87', '25', '2', '0', '0');
INSERT INTO `penyerapan` VALUES ('90', '26', '1', '0', '0');
INSERT INTO `penyerapan` VALUES ('91', '26', '2', '0', '0');
INSERT INTO `penyerapan` VALUES ('92', '28', '1', '0', '0');
INSERT INTO `penyerapan` VALUES ('93', '28', '2', '8738400000', '0');
INSERT INTO `penyerapan` VALUES ('94', '29', '1', '0', '0');
INSERT INTO `penyerapan` VALUES ('95', '29', '2', '13950000', '0');

-- ----------------------------
-- Table structure for prioritas
-- ----------------------------
DROP TABLE IF EXISTS `prioritas`;
CREATE TABLE `prioritas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of prioritas
-- ----------------------------
INSERT INTO `prioritas` VALUES ('1', 'Belum ada Prioritas');
INSERT INTO `prioritas` VALUES ('2', 'Penyediaan Sarana dan Prasarana');

-- ----------------------------
-- Table structure for progres_fisik
-- ----------------------------
DROP TABLE IF EXISTS `progres_fisik`;
CREATE TABLE `progres_fisik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_paket_kontrak` int(11) DEFAULT NULL,
  `triwulan` int(11) DEFAULT NULL,
  `target` double DEFAULT NULL,
  `realisasi` double DEFAULT NULL,
  `target_triwulan_selanjutnya` double DEFAULT NULL,
  `kendala` text,
  `tindak_lanjut` text,
  `pihak_terlibat` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of progres_fisik
-- ----------------------------
INSERT INTO `progres_fisik` VALUES ('2', '2', '1', '30', '0', '20', 'Tidak ada', 'Tidak ada', 'Ditjen. Perkeretapian');
INSERT INTO `progres_fisik` VALUES ('3', '17', '1', '35.47', '0', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('4', '17', '2', '35.47', '74.619', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('7', '18', '1', '23.717', '0', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('8', '18', '2', '23', '57.77', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('9', '19', '1', '0', '0', '0', 'Proses Lelang ', '-', '-');
INSERT INTO `progres_fisik` VALUES ('10', '19', '2', '0', '0', '0', 'Proses Lelang (Perubahan HPS)', '-', '-');
INSERT INTO `progres_fisik` VALUES ('11', '20', '1', '0', '0', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('12', '20', '2', '0', '0', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('13', '21', '1', '0', '0', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('14', '21', '2', '0', '0', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('15', '22', '1', '0', '0', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('16', '22', '2', '0', '0', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('17', '23', '1', '0', '0', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('18', '23', '2', '15.2', '26.12', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('19', '24', '1', '7', '35', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('20', '24', '2', '25.81', '21.15', '0', 'Pencairan uang muka belum bisa dilakukan, terkait dengan proses pencantuman nomor register SBSN di dalam DIPA', 'Telah diajukan revisi pencantuman nomor register SBSN ke Direktorat Jenderal Anggaran', 'BBPJN II Padang, Direktort Jenderal Bina Marga, Direktorat Jendaral Anggaran');
INSERT INTO `progres_fisik` VALUES ('21', '25', '1', '0', '0', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('22', '25', '2', '0', '0', '0', '-', '-', '-');
INSERT INTO `progres_fisik` VALUES ('23', '26', '1', '0', '0', '0', 'MASIH DALAM TAHAP PROSES PELELANGAN', 'PENGUPAYAAN PERCEPATAN PROSES PELELANGAN', '1. ULP/POKJA PAKET PEMBANGUNAN JEMBATAN PULAU BALANG TAHAP II ( MYC );\r\n2. PPK PEMBANGUNAN JEMBATAN PULAU BALANG TAHAP II ( MYC );\r\n3. SEMUA YANG TERKAIT DALAM PROSES PELELANGAN PEMBANGUNAN JEMBATAN PULAU BALANG TAHAP II ( MYC ) DI LINGKUP DIREKTORAT JENDERAL BINA MARGA KEMENTERIAN PU/PERA.');
INSERT INTO `progres_fisik` VALUES ('24', '28', '1', '0', '0', '0', '<p>Masih dalam Proses Lelang</p>', '<p>Percepatan Proses Evaluasi oleh POKJA</p>', '<p>POKJA Pengadaan Barang dan Jasa</p>');
INSERT INTO `progres_fisik` VALUES ('25', '28', '2', '2.7', '1.47', '0', '<p>Pengurusan Lahan Terkait izin Pembangunan Jembatan diatas Hutan Manggrove&nbsp;</p>', '<ol>\n	<li>Sudah dikordinasikan dan dipaparkan untuk mendapatkan izin pihak terkait guna mendapatkan izin Penggunaan Lahan Manggrove</li>\n	<li>Review desain disesuaikan dengan izin penggunaan lahan manggrove tanpa mengurangi Target RKP</li>\n</ol>', '<ol>\n	<li>Bapak Gubernur Provinsi Maluku Utara</li>\n	<li>Kepala Badan Lingkungan Provinsi Maluku Utara</li>\n	<li>Kepala Badan Lingkungan Hidup Kota Tidore kepulauan</li>\n	<li>Camat Oba Utara Kota Tidore Kepulauan</li>\n	<li>Kepala Satker P2JN Provinsi Maluku Utara</li>\n	<li>Core Team Konsultan Perencanaan</li>\n	<li>PPK. Pelaksanaan Jalan Pulau Halmahera 4</li>\n	<li>Rekanan/Peyedia Jasa Paket Tersebut</li>\n	<li>Direksi /Pengawas</li>\n</ol>\n\n<p>Tim Teknis dan Panitia Peneliti Kontrak</p>');

-- ----------------------------
-- Table structure for provinsi
-- ----------------------------
DROP TABLE IF EXISTS `provinsi`;
CREATE TABLE `provinsi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of provinsi
-- ----------------------------
INSERT INTO `provinsi` VALUES ('1', 'Aceh', '4.695135', '96.749399');
INSERT INTO `provinsi` VALUES ('2', 'Bali', '-8.409518', '115.188916');
INSERT INTO `provinsi` VALUES ('3', 'Banten', '-6.405817', '106.064018');
INSERT INTO `provinsi` VALUES ('4', 'Bengkulu', '-3.792067', '102.261996');
INSERT INTO `provinsi` VALUES ('5', 'Gorontalo', '0.699937', '122.446724');
INSERT INTO `provinsi` VALUES ('6', 'DKI Jakarta', '-6.174465', '106.822745');
INSERT INTO `provinsi` VALUES ('7', 'Jambi', '-1.485183', '102.438058');
INSERT INTO `provinsi` VALUES ('8', 'Jawa Barat', '-7.090911', '107.668887');
INSERT INTO `provinsi` VALUES ('9', 'Jawa Tengah', '-7.150975', '110.140259');
INSERT INTO `provinsi` VALUES ('10', 'Jawa Timur', '-7.536064', '112.238402');
INSERT INTO `provinsi` VALUES ('11', 'Kalimantan Barat', '-0.278781', '111.475285');
INSERT INTO `provinsi` VALUES ('12', 'Kalimantan Selatan', '-3.092642', '115.283758');
INSERT INTO `provinsi` VALUES ('13', 'Kalimantan Tengah', '-1.681488', '113.382355');
INSERT INTO `provinsi` VALUES ('14', 'Kalimantan Timur', '1.640630', '116.419389');
INSERT INTO `provinsi` VALUES ('15', 'Kalimantan Utara', '4.258979', '117.883179');
INSERT INTO `provinsi` VALUES ('16', 'Kepulauan Bangka Belitung', '-2.741051', '106.440587');
INSERT INTO `provinsi` VALUES ('17', 'Kepulauan Riau', '0.917921', '104.446464');
INSERT INTO `provinsi` VALUES ('18', 'Lampung', '-4.558585', '105.406808');
INSERT INTO `provinsi` VALUES ('19', 'Maluku', '-3.238462', '130.145273');
INSERT INTO `provinsi` VALUES ('20', 'Maluku Utara', null, null);
INSERT INTO `provinsi` VALUES ('21', 'Nusa Tenggara Barat', '-8.652933', '117.361648');
INSERT INTO `provinsi` VALUES ('22', 'Nusa Tenggara Timur', '-8.657382', '121.079370');
INSERT INTO `provinsi` VALUES ('23', 'Papua', '-4.269928', '138.080353');
INSERT INTO `provinsi` VALUES ('24', 'Papua Barat', '-1.336115', '133.174716');
INSERT INTO `provinsi` VALUES ('25', 'Riau', '0.293347', '101.706829');
INSERT INTO `provinsi` VALUES ('26', 'Sulawesi Barat', '-2.844137', '119.232078');
INSERT INTO `provinsi` VALUES ('27', 'Sulawesi Selatan', '-3.668799', '119.974053');
INSERT INTO `provinsi` VALUES ('28', 'Sulawesi Tengah', '-1.430025', '121.445618');
INSERT INTO `provinsi` VALUES ('29', 'Sulawesi Utara', '0.624693', '123.975002');
INSERT INTO `provinsi` VALUES ('30', 'Sumatera Barat', '-0.739940', '100.800005');
INSERT INTO `provinsi` VALUES ('31', 'Sumatera Selatan', '-3.319437', '103.914399');
INSERT INTO `provinsi` VALUES ('32', 'Sumatera Utara', '2.010856', '98.978489');
INSERT INTO `provinsi` VALUES ('33', 'DI Yogyakarta', '-7.797591', '110.370714');
INSERT INTO `provinsi` VALUES ('34', 'Sulawesi Tenggara', '-4.144910', '122.174605');
INSERT INTO `provinsi` VALUES ('37', 'madont', null, null);

-- ----------------------------
-- Table structure for proyek
-- ----------------------------
DROP TABLE IF EXISTS `proyek`;
CREATE TABLE `proyek` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_instansi` int(11) DEFAULT NULL,
  `id_sasaran_rpjmn` int(11) DEFAULT NULL,
  `id_prioritas` int(11) DEFAULT NULL,
  `id_kategori_proyek` int(11) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `output` varchar(11) DEFAULT NULL,
  `sat` varchar(255) DEFAULT NULL,
  `latar_belakang` text,
  `tujuan` text,
  `ruang_lingkup` text,
  `teknis` text,
  `ekonomi` text,
  `dampak` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of proyek
-- ----------------------------
INSERT INTO `proyek` VALUES ('1', '1', '1', '1', '4', '3', 'Pembangunan Jalur Ganda Kereta Api Antara Martapura - Baturaja total sepanjang 35 Km\'sp', '334500000000', '-', '-', '<p>Provinsi Sumatera Selatan merupakan salah satu daerah yang memiliki cadangan batubara terbesar di Indonesia, tercatat potensi yang ada sekitar 22,24 milyar ton atau + 38% cadangan nasional, dengan rincian yang sudah terukur sebesar 1,97 milyar ton, terunjuk sebesar 19,95 milyar ton dan tereka sebesar 0,32 Milyar ton. Potensi tersebut umumnya terdapat di kabupaten Muaraenim, Lahat, Musi Banyuasin, dan Musi Rawas.; Potensi batubara tersebut dapat dioptimalkan, perlu dikembangkan jaringan transportasi yang handal dan berkapasitas besar.Alternatif yang paling memungkinkan adalah dengan pengembangan jaringan jalan kereta api antara lain dengan membangun jalur ganda KA antara Stasiun Martapura -Stasiun Baturaja Sepanjang 35 Km&#39;Sp dan kegiatan ini masuk di Renstra Ditjen Perkeretaapian tahun 2009-2014. Selain itu pula tentunya akan sangat bermanfaat dalam meningkatkan kapasitas angkut kereta api dalam melayani kebutuhan angkutan berbagai hasil bumi dan lainnya.</p>', '<ol>\n	<li>Melakukan perencanaan pembangunan jalur KA Double Track antara Stasiun Martapura sampai Stasiun Baturaja di KM 195+641 sampai KM 227+987 Lintas Tarahan - Tanjung Enim (33 km) dalam bentuk DED.</li>\n	<li>Data hasil DED dapat digunakan sebagai dokumen pelaksanaan pembangunan jalan KA</li>\n</ol>', '<ol>\n	<li>Kegiatan Pengumpulan Data Sekunder;</li>\n	<li>Kegiatan Pengumpulan Data Primer;</li>\n	<li>Kegiatan Desain</li>\n</ol>', '<p>-</p>', '<p>kegiatan 1. Laporan pendahuluan bulan1; 2. Laporan Antara bulan ke2; 3. Konsep Laporan Akhr bulan ke 3; 4. Laporan akhir bulan ke4.</p>', '<p>Kelayakan ekonomi memberikan gambaran atas penggunaan sumber daya dengan manfaat yang diperoleh dalam pelaksanaan kegiatan yang didukung dengan analisis kuantitatif. Misalnya perhitungan EIRR ( Economic Internal Rate of Return).</p>');
INSERT INTO `proyek` VALUES ('2', '1', '1', '1', '4', '3', 'Paket A (Pembangunan Fasilitas KA Manggarai - Jatinegara)', '1220000000000', '-', '-', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>');
INSERT INTO `proyek` VALUES ('3', '1', '1', '1', '4', '3', 'Paket B2 (1) (Modernisasi Fasilitas Perkeretaapian untuk Jatinegara s/d Bekasi)', '370000000000', '-', '-', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>');
INSERT INTO `proyek` VALUES ('4', '1', '1', '1', '4', '3', 'Pembangunan Jalan KA Layang di Perkotaan Medan (tahap 1 antara Medan - Bandar Khalifah Baru lintas Medan - Araskabu - Kualanamu)', '600000000000', '-', '-', '<p>Bandara Polonia di Medan telah ditutup dan perannya digantikan oleh Bandara Kuala Namu di Deli Serdang dari Medan ke Kuala Namu mencapai 40 km. Untuk mendukung pengoperasian bandara tidak kalah pentingnya harus disiapkan saran transportasi darat. Transportasi darat selain menggunakan kendaraaan pribadi, para penumpang yang akan menuju BAndara Kuala Namu memiliki beberapa pilihan transportasi umum antara lain dengan menggunakan bus, taksi, maupun kereta api melalui Stasiun besar Medan. Mengingat berbagai kendala dalam aksesibilitas jalan raya dari dan menuju BAndara Kuala Namu terutama waktu perjalanan yang lama, maka sebagian pengguna bandar terutama para calon penumpang diharapkan memanfaatkan sarana moda Kereta Api Bandara yang dikelola oleh PT Railink. Kereta Api Bandara Kuala Namu merupakan fasilitas khusus berbasis rel pertamabagi bandara di Indonesia yang mengantar dan menhemput pengguna badara dari stasiun besar Medan menuji BAndara Kiala NAmu dan juga sebaliknya. Jalur Kereta api yang ada untuk melayani perjalanan antara Kota Medan dan BAndara Kuala Namu saat ini masih berupa jalur tunggal. Jalur kereta api eksisting yang merupakan at grade track ini mempunyai lintasan sebidang sebanyak 9 titik di kota Medan dan 12 titik di luar kota Medan. Dengan pengoperasian kereta api bandara maka akan menambah frekuensi penutupan perlintasan yang menyebabkan kemacetan lalu lintas di kota Medan secara signifikan. Peningkatan pelayanan angkutan kereta api bandara maka akan menambah frekuensi penutupan perlintasan yang menyebabkan kemacetan lalu lintas di kota Medan secara signifikan. Peningkatan pelayanan angkutan kereta api pada koridor kota Medan dan Bandara Kuala NAmu perlu dipertimbangkan debagai langkah strategis untuk meningkatkan kinerja angkutan penumpang Kereta Api Bandara. Pengembangan ini kemungkinan menuntut dibangunnya jalur ganda untuk melayani operasi perjalanan kereta api koridor tersebut sehingga diharapkan dapat meningkatkan kualitas dari pelayanan angkutan yang didambakan oleh masyarakat. Keterpaduan angkutan antar moda untuk pelayanan angkutan yang didambakan oleh masyarakat. Keterpaduan angkutan antar moda untuk pelayanan bandara Kuala Namu akan menciptakan pelayanan jasa transportasi massal yang efektif dan efisien, serta mendukung transportasi nasional yang berkesinmbungan.</p>', '<p>Tujuan kajian adalah diperolehnya dokumen kajian yang memberikan gambaran lengkap tentang kelayakan pembangunan jalur ganda kereta api pada lintas kota Medan-Bandara kuala Namu yang akan digunakan sebagai salah satu acuan penting dalam pengambilan keputusan terkait rencana pembangunan jalur ganda kereta api bandara tersebut.</p>', '<p>a. Melakukan kajian terhadap pola aksesibilitas bandara Kuala Namu sesuai dengan karakteristik sosio ekonomi daerah kajian dan karakteristik perencanaan bandara Kuala Namu serta sejalan dengan pola pengembangan transportasi wilayah studi. ; b. Melakukan analisis kebutuhan angkutan kereta api bandara Kuala Namu berdasarkan tinjauan pemilihan moda angkutan, melakukan analisis penyediaan operasi kereta api bandara agar sesuai dengan jumlah kebutuhan angkutan yang diperlukan, melakukan analisis keperluan jalur kereta api sesuai dengan rencana pola operasi perjalanan kereta api, melakukan tinjauan dampak operasi kereta api bandara terhadap kelancaran arus lalu lintas di lokasi-lokasi persimpangan sebidang, melakukan kajian atas keperluan persimpangan tidak sebidang di lokasi pertemuan jalan kereta api dengan jalan raya disertai usulan penanganannya, dan menentukan kebutuhan utama prasarana dan sarana yang diperlukan untuk mendukung penyelenggaraaan kereta api bandara Kuala Namu; c. Melakukan identifikasi alignmen jalur pada lintas Kota Medan-Kuala NAmu, yang dapat dikembangkan dengan mempertimbangkan ROW yang ada, ketersediaan dan data guna lahan sepanjang rencana alignmen, melakukan perencanaan awal konstruksi track, perencanaan awal struktur atas dan pondasi jalur layang, identifikasi kebutuhan telekomunikasi dan system persinyalan kereta api, termasuk mempertimbangkan kelayakan teknis pelaksanaan fisik dan kepatutan dimensi struktur; d. Melakukan estimasi kuantitas (volume) pekerjaan fisik jalur ganda termasuk jalur layang yang direncanakan, menghitung rencana kebutuhan biaya untuk pembangunan jalur ganda kereta api, menghitung keperluan jumlah sarana yang diperlukan untuk menyelenggarakan perjalanan kereta api bandara sesuai dengan perkembangan kebutuhan, menghitung keperluan biaya pengadaan sarana dan prasarana kereta api, estimasi biaya operasi dan pemelharaan baik untuk prasarana maupun sarana kereta api bandara ; e. Identifikasi dan perhitungan nilai manfaat keuangan maupun ekonomi rencana jalur ganda kereta api bandara Kuala NAmu serta melakukan analisis kelayakan keuangan dan ekonomu rencana tersebut; f. identifikasi masalah lingkungan penting yang mungkin timbul dari rencana pembangunan jalur ganda kereta api bandara Kuala Namu untuk masukan keperluan analisis dampak lingkungan lebih lanjut; g. Menyusun kesimpulan mengenai kelayakan teknis, keuangan, dan ekonomi pembangunan jalur ganda kereta api bandara Kuala Namu serta menyampaikan rekomendasi tindak lanjut analisis kelayakan lingkungan yang diperlukan.</p>', '<p>-</p>', '<p>a. Peningkatan kapasistas angkut, peningkatan kapasitas lintas, peningkatan kecepatan operasi, kelancaran, keselamatan dan kenyamanan yang lebih baik, dan ketepatan waktu pelayanan akan dapat dicapai melalui pembangunan jalur ganda ini. ; b. Jenis jalur gandan sepanjang 27.769 km ini terdiri atas jalur kereta api yang terletak sebidang dengan permukaan tanah asal sepanjang 21.799 km dan jalur ganda yang terletak diatas permukaan tanah asal sepanjang 5.970 km. ; c. Berdasarkan perbandingan antara struktur beton dan struktur baja maka ditentukan tipe struktur yang akan digunakan adalah konstruksi beton. Kriteria utama yang menjadi pertimbangan adalah harga yang lebih murah, perawatan yang jauh lebih sedikit dan bahan baku yang lebih mudah didapatkan di lokasi proyek. ; d. Jenis struktur jalur ganda layang terdiri atas box precast external 5.170 m, grider 318 m, slab on pile 170 m, dan ttimbunan 312 m. ; e. Metoda konstruksi dipilih agar selama pelaksanaan konstruksi maka perjalanan kereta api yang ada tetap dapat berlangsung.</p>', '<p>a. Indikator kelayakan keuangan ( Financial Internal Rate of Returm/FIRR) dengan adanya proyek mencapai 66,21 %. Hasil analisis kelayakan finansial tersebut menunjukkan nilai FIRR lebih besar dari discount factor sebesar 11,72% sehingga dari sisi OPerator Penyelenggaraan perjalanan kereta api bandara Kuala NAmu sangat layak untuk dijalankan. ; b. Indikator kelayakan ekonomi ( Economic Internal Rate of Return/EIRR) dengan skema adanya pembangunan jalur ganda dan layang menunjukkan angka hanya 12,22%. Hal ini memberikan gambaran bahwa pembangunan jalur ganda kereta api bandara Kuala Namu ini memberikan kontribusi yang cukup baik terhadap kinerja sistem transportasi di Sumatera Utara.</p>');
INSERT INTO `proyek` VALUES ('5', '1', '1', '1', '4', '3', 'Pembangunan Jalur Ganda KA antara Purwokerto - Kroya Lintas Cirebon - Kroya segmen III', '400000000000', '-', '-', '<p>PT Kereta Api Indonesia (Persero) sebagai operator perkeretaapian di Indonesia, sampai saat ini mengoperasikan sekitas 6.700 km jalur kereta api di Indonesia, dan 70 % terdapat di Pulau Jawa. Panjang rute di Jawa yaitu 4.967 km. Jaringan rel kereta api di Jawa tersebut menghubungkan kota-kota besar termasuk Jakarta, Surabaya, Bandung, Yogyakarta, Semarang, dsb. Terdapat tiga jalur utama, yaitu jalur KA lintas JAkrta - Surabaya via Semarang dan Bojonegoro (disebut LIntas Utara), jalur KA lintas JAkarta - Surabaya via Cirebon, Yogyakarta dan Madiun (Lintas Selatan) dan jalur Jakarta - BAndung via Cikampek yang dihubungkan dari JAkur utara di Cikampek. Transportasi jalur kereta mengalami keadaan krisis pada tahun 1976 karena harus berkonmpetisi dengan transporatasi darat lainnya seperti bus dan truk di bawah proses perkembangan jalan raya. Meskipun lalu lintas kereta api telah dperbaiki sebagai suatu transportasi untuk jarak jauh yang diukur kembali dengan proses industrialisasi dan arena dengan jumlah penduduk asli tinggi. Kapasitas jalur yang ada pada Lintas Selatan akan segera mencapai titik jenuh. Permintaan angkutan terus meningkat secara berangsur-angsur sesuai dengan pertumbuhan ekonomi lebih dari 6 % di Indonesia. Untuk itu jalur tersebut sebagai jalur tunggal / single track akan melampaui kapasitas jalur. Untuk mengakomodasi opersi kereta api di masa depan dan untuk memenuhi permintaan angkutan masa di masa yang akan datang, pembangunan jalur ganda - double tracking perlu untuk dilaksanakan pada bagian prioritas yang lebih tinggi. Dengan pembangunan jalur ganda dari Cirebon - Kroya - Yogyakarta - Solo, kapasitas jalur sekarang rata-rata 70 kereta/hari akan ditingkatkan menjadi 150 kereta/hari. Disamping peningkatan dari kapasitas jalur, pembangunan jalur ganda memiliki andil besar untuk mengurangi waktu perjalanan dan keselamatan yang lebih baik dan operasi tepat waktu, sistem transportasi kereta api di Lintas Selatan Jawa akan secara total meningkat dengan pembangunan jalur ganda ini dan akan berkontribusi pada peningkatan sistem transportasi darat. Dari pandangan ekonomi nasional, koridor antara Jakarta - Surabaya akan memainkan peranan penting di Indonesia. Penguatan kapasitas jalur dan kecepatan jalur merupakan hal yang penting untuk mengembalikan ekonomi Indonesia bersama-sama dengan perkembangan jalan tol. Dibawah kondisi tersebut, peningkatan kapasitas jalur, kecepatan rata-rata kereta api, dan pengoperasian KA yang aman, nyaman dan tepat waktu.</p>', '<p>Kapasitas jalur yang ada di lintas Cirebon - Kroya - Solobalapan dengan masih menggunakan jalur tunggal - single track berada pada titik jenuh. Frekuensi KA akan meningkat di masa yang akan datang dan jalur ini akan melampaui kapasitas jika pembangunan jalur ganda tidak segera dilaksanakan. Tujuan dari proyek ini yaitu menyediakan kapasitas jalur yang cukup dan memadai, dan untuk meningkatkan pelayanan bagi pengguna jasa kereta api, terutama untuk menumpang kelas ekonomu dan pelanggan jasa transportasi barang yang sangat mendukung pertumbuhan ekonomi, industri, perdagangan dan bisnis domestic, serta distribusi logistik barang, dsb.</p>', '<p>Lingkup kegiatan pekerjaan pembangunan jakur ganda antara Purwokerto - Kroya lintas Cirebon - Kroya adalah : 1. Pekerjaan Jalan Rel Kereta Api; 2. Pekerjaan Jembatan Kereta Api; 3. Pekerjaan Terowongan Kereta Api; 4. Pekerjaan Persinyalan dan Telekomunikasi Kereta Api; dan 5. Pekerjaan Jasa Supervisi.</p>', '<p>-</p>', '<p>Kapasitas jalur di lintas ini sudah mengalami titik jenuh pada beberapa bagian. Di sisi lain, jumlah KA yang diramalkan meningkat pada kecepatan lebih dari 5 % per satuan menurut pada peningkatan Gross Domestic Product (GDP) di Indonesia. Pembangunan jalur ganda - Double tracking merupakan hal yang penting untuk meningkatkan kapasitas jalur kereta api dan antisipasi dalam menanggulangi permintaan angkutan penumpang dan barang di masa yang akan datang.</p>', '<p>Tujuan utama dari analisis ekonomi proyek adalah untuk menunjukkan pengaruh dari pekerjaan jalur ganda lintas selatan antara Cirebon - Solo dari sudut pandang kehidupan suku, bangsa dan untuk memperkirakan angka keuntungan internal ekonomi yang diharapkan - Economic Internal Rate of Return (EIRR) dari sumber daya yang diinvestasikan. Evaluasi adalah penilaian dari viabilitas ekonomi dari proyek tersebut. Untuk tujuan evaluasi, EIRR ditunjukkan dalam deskripsi berikut ini. (1) Keuntungan ekonomi dari bagian Cirebon hingga Solo; Manfaat berupa penghematan waktu bagi para penumpang kereta api dan kargo pada lintas selatan antara Cirebon - Solo, biaya operasional kendaraan - Vehicle operation Cost (VOC) untuk transportasi jalan dan biaya penghematan modal dari transportasi jalan ditunjukkan dalam tabel berikut ini. (tabel) Berdasarkan manfaat di atas, biaya pekerjaan, biaya operasi dan pemeliharaan, EIRR dihitung. EIRR untuk kasus tersebut diperkirakan 15 % untuk jalur bagian Cirebon hingga Solo. (2) Manfaat Ekonomi untuk Jalur Lainnya; Disamping bagian tersebut di atas EIRR untuk jalur lainnya yaitu jalur Solo - Surabaya, jalur Semarang - Solo, dan jalur Bogor - Kroya diperkirakan berdasarkan metode yang sama untuk prioritas perbandingan bagi perkeretaapian Jawa.</p>');
INSERT INTO `proyek` VALUES ('6', '3', '1', '1', '2', '3', 'Pelebaran Jalan Ampibabo Toboli', '58410000000', '-', '-', '<p>Pelebaran jalan Ampibabo Toboli merupakan prioritas nasional dalam rangka mendukung priritas konektivitas nasional ,khususnya dalam upaya pemerintah untuk meningkatkan distribusi barang dan jasa dari outlet dan meningkatkan kinerja sistem logistik nasional.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan ; Peningkatan perekonomian Provinsi Sulawesi Tengah; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pelebaran jalan Ampibabo Toboli 14 Km</p>', '<p>-</p>', '<p>Proyek pelebaran jalan Ampibabo Toboli dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED</p>', '<p>Proyek pelebaran jalan Ampibabo Toboli dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar dari biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('7', '3', '1', '1', '2', '3', 'Pelebaran Jalan Batas Kota Muara Bulian - Batas. Kabupaten Muaro Jambi/Kabupaten Batanghari', '32280000000', '-', '-', '<p>Pelebaran Jalan Bts. Kota Ma. Bulian - Bts. Kab. Muaro Jambi/Kab. Batang hari sepanjang 6 Km merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untukmendorong keseimbangan pembangunan antar-wilayah dan meningkatkan kapasitas jalan di Jambi.</p>', '<ol>\n	<li>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan ;</li>\n	<li>Peningkatan perekonomian Provinsi Jambi;</li>\n	<li>Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</li>\n</ol>', '<p>Pelebaran Jalan Bts. Kota Ma. Bulian - Bts. Kab. Muaro Jambi/Kab. Batanghari sepanjang 6 Km</p>', '<p>-</p>', '<p>Proyek Pelebaran Jalan Bts. Kota Ma. Bulian - Bts. Kab. Muaro Jambi/Kab. Batanghari dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED</p>', '<p>Proyek pelebaran jalan Bts. Kota Ma. Bulian - Bts. Kab. Muaro Jambi/Kab. Batanghari dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar dari biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('8', '3', '1', '1', '2', '3', 'Pelebaran Jalan Bulontio - Tolinggula (Batas. Prov. Sulteng) I', '54000000000', '-', '-', '<p>Pelebaran Jalan Bulontio - Tolinggula (Bts. Prov. Sulteng) I sepanjang 9 Km merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk mendorong keseimbangan pembangunan antar-wilayah dan meningkatkan kapasitas jalan di Gorontalo.</p>', '<ol>\n	<li>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan</li>\n	<li>Peningkatan perekonomian Provinsi Gorontalo</li>\n	<li>Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi</li>\n</ol>', '<p>Pelebaran jalan Bulontio - Tolinggula (Bts. Prov. Sulteng) I sepanjang 9 Km</p>', '<p>-</p>', '<p>Proyek Pelebaran Jalan Bulontio - Tolinggula (Bts. Prov. Sulteng) I dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED</p>', '<p>Proyek pelebaran jalan Bulontio - Tolinggula (Bts. Prov. Sulteng) I dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar dari biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('9', '3', '1', '1', '2', '3', 'Pelebaran Jalan Ruas Pelabuhan Trisakti - Liang Anggang', '71500000000', '-', '-', '<p>Pelebaran jalan ruas Pelabuhan Trisakti - Liangganggang merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi arus barang dan jasa dari outlet menuju Pelabuhan Banjarmasin dan meningkatkan kinerja sistem logistik nasional.</p>', '<ol>\n	<li>Meningkatnyan kesejahteraan masyarakat ;</li>\n	<li>Meningkatnya pertumbuhan ekonomi Provinsi Kalimantan Selatan;</li>\n	<li>Meningkatkan aksesibilitas dan waktu tempuh menuju Pelabuhan Banjarmasin</li>\n</ol>', '<p>Pelebaran jalan ruas Pelabuhan Trisakti - Lianganggang sepanjang 4.00 Km</p>', '<p>-</p>', '<p>Proyek Pelebaran Jalan Trisakti - Lianganggang dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED</p>', '<p>Proyek pelebaran jalan Trisakti - Lianganggang dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar dari biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('10', '3', '1', '1', '2', '3', 'Pelebaran Jalan Ruas Simpang Negara - Batas Kota Sumbawa Besar', '87280000000', '-', '-', '<p>Pelebaran jalan ruas Simpang Negara - Batas Kota Sumbawa Besar merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi arus barang dan jasa di Provinsi Nusa Tenggara Barat sekaligus meningkatkan kinerja sistem logistik nasional</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan ; Peningkatan perekonomian Provinsi Nusa Tenggara Barat; Meningkatkan volume perdaganagan antar-wilayah dan antar-provinsi.</p>', '<p>Pelebaran jalan ruas Simpang Negara - Batas Kota Sumbawa Besar sepanjang 21.82 Km</p>', '<p>-</p>', '<p>Proyek Pelebaran Jalan ruas Simpang Negara - Batas Kota Sumbawa Besar dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED</p>', '<p>-</p>');
INSERT INTO `proyek` VALUES ('11', '3', '1', '1', '2', '3', 'Pelebaran jalan Ruas Ruas Simpang Sekunyam - Desa Cemaga Besar', '44000000000', '-', '-', '<p>Pelebaran jalan ruas Ruas Sp. Sekunyam - Desa Cemaga Besar merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi arus barang dan jasa pada kawasan perbatasan dan pulau-pulau terluar sekaligus untuk menjaga pertahanan dan keamanan wilayah NKRI.</p>', '<ol>\n	<li>Meningkatnya kesejahteraan masyarakat;</li>\n	<li>Meningkatnya pertumbuhan ekonomi pada kawasn pulau-pulau erluar dan perbatasan negara;</li>\n	<li>Meningkatnya volume perdagangan antar wilayah</li>\n</ol>', '<p>Pelebaran jalan ruas Sp. Sekunyam - Desa Cemaga sepanjang 10.00 Km</p>', '<p>-</p>', '<p>Proyek Pelebaran Jalan ruas Sp. Sekunyam - Desa Cemaga sepanjang 10 Km dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED</p>', '<p>Proyek pelebaran jalan ruas ruas Sp. Sekunyam - Desa Cemaga sepanjang 10 Km dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar dari biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('12', '3', '1', '1', '2', '3', 'Pelebaran Jalan Ruas Tolango - Bulintio', '54000000000', '-', '-', '<p>Pelebaran jalan Tolango - Bulintio merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi arus barang dan jasa dari outlet menuju Pelabuhan Banjarmasin dan meningkatkan kinerja sistem logistik nasional.</p>', '<p>Meningkatnyan kesejahteraan masyarakat ; Meningkatnya pertumbuhan ekonomi Provinsi Gorontalo; Meningkatkan aksesibilitas dan waktu tempuh menuju Pelabuhan Kwandang</p>', '<p>Pelebaran jalan Ruas Tolango - Bulintio sepanjang 9.00 Km</p>', '<p>-</p>', '<p>Proyek Pelebaran Jalan Ruas Tolango - Bulintio dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED</p>', '<p>Proyek pelebaran jalan Ruas Tolango - Bulintio dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar dari biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('13', '3', '1', '1', '2', '3', 'Pelebaran Jalan Ruas Tomata - Beteleme', '79800000000', '-', '-', '<p>Pelebaran jalan Tomata - Beteleme merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi arus barang dan jasa di Wilayah Provinsi Sulawesi Tengah danmeningkatkan kinerja sistem logistik nasional untuk regional Sulawesi</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan ; Peningkatan perekonomian Provinsi Sulawesi Tengah dan Regional Sulawesi; Meningkatkan volume perdaganagan antar-wilayah dan antar-provinsi.</p>', '<p>Panjang jalan yag medapat penanganan pelebaran sepanjang 10.00 Km</p>', '<p>-</p>', '<p>Proyek Pelebaran Jalan Ruas Tomata - Beteleme dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED</p>', '<p>Proyek pelebaran jalan Ruas Tomata - Beteleme dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar dari biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('14', '3', '1', '1', '2', '3', 'Pelebaran Jalan Talabiu Batas kota Bima', '65000000000', '-', '-', '<p>Peningkatan Struktur Jalan Duri Kandis sepanjang 5 Km merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya [emerintah untuk mendorong keseimbangan pembangunan antar-wilayah dan meningkatkan kapasitas jalan di Riau.\\</p>', '<p>Meningkatnyan kesejahteraan masyarakat ; Meningkatnya pertumbuhan ekonomi Provinsi Nusa Tenggara Barat; Meningkatkan aksesibilitas dan waktu tempuh menuju Pelabuhan dan Bandara di Kota Bima</p>', '<p>Pelebaran jalan Talabiu - Batas Kota Bima sepanjang 3.00 Km</p>', '<p>-</p>', '<p>-</p>', '<p>Proyek pelebaran jalan ruas Talabiu - Batas Kota Bima dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar dari biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('15', '3', '1', '1', '2', '3', 'Pembangunan Jalan Akses Dry Port', '55000000000', '-', '-', '<p>Pembangunan jalan Akses Dry port merupakan prioritas dalam rangka mendukung logistik nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi barang dan jasa dari outlet menuju pelabuhan Tj. Priok meningkatkan kinerja sistem logistik nasional.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan ; Peningkatan perekonomian Provinsi DKI Jakarta; Meningkatkan pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan infrastruktur Jalan Akses Dry Port sepanjang 0,3 Km</p>', '<p>-</p>', '<p>Proyek Pelebaran Jalan Akses Dry Port dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED</p>', '<p>Proyek pelebaran jalan Jalan Akses Dry Port dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar dari biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('16', '3', '1', '1', '2', '3', 'Pembangunan Jalan Akses Pelabuhan Sorong Arar', '65900000000', '-', '-', '<p>Pembangunan jalan Akses Pelabuhan Arar (Sorong) merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi barang dan jasa dari outlet menuju pelabuhan dan meningkatkan kinerja sistem logistik nasional.</p>', '<p>Meningkatnyan kesejahteraan masyarakat ; Meningkatnya pertumbuhan ekonomi Wilayah Papua Barat; Meningkatkan aksesibilitas dan waktu tempuh menuju outlet Pelabuhan Arar.</p>', '<p>Pembangunan infrastruktur Jalan Akses Pelabuhan Arar (Sorong) sepanjang 17.8 Km</p>', '<p>-</p>', '<p>Proyek Pelebaran Jalan Akses Pelabuhan Sorong Arar dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED</p>', '<p>Proyek pelebaran Jalan Akses Pelabuhan Sorong Arar dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar dari biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('17', '3', '1', '1', '2', '3', 'Pembangunan jalan by pass Manado II', '184400000000', '-', '-', '<p>Pembangunan jalan akses Bypass Manado II merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk mengatasi kemacetan lalu lintas di Kota Manado serta meninkatkan kelancaran distribusi barang dan jasa dari outlet menuju bandara SamRatulangi</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Kota Manado, Provinsi Sulawesi Utara; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan infrastruktur jalan bypass Manado II sepanjang 15 Km dan jembatan 238 M</p>', '<p>-</p>', '<p>Proyek Pembangunan Jalan Bypass Manado II dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>', '<p>Proyek Pembangunan Jalan Bypass Manado II dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('18', '3', '1', '1', '2', '3', 'Pembangunan Jalan Dekai - Oksibil', '180000000000', '-', '-', '<p>Pembangunan jalan Dekai - Oksibil bagian dari Jalan Trans Papua merupakan prioritas nasional dalam rangka mendukung peningkatan konektivitas nasional, khususnya dalam upaya pemerintah untuk mendorong keseimbangan pembangunan antar-wilayah dan menmbus keterisolasian dan keterbelakangan pada beberapa kabupaten di wilayah Pegunungan Tengah Papua bagian timur</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; peningkatan perekonomian Provinsi Papua; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan infrastruktur jalan Dekai - Oksibil sepanjang 30 Km</p>', '<p>-</p>', '<p>Proyek Pembangunan Jalan Dekai - Oksibil dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jalan Dekai - Oksibil dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('19', '3', '1', '1', '2', '3', 'Pembangunan Jalan Depapre - Bongkrang', '43200000000', '-', '-', '<p>Pembangunan jalan Depapre - Bongkrang bagian dari Jalan Trans Papua merupakan prioritas nasional dalam rangka mendukung peningkatan konektivitas nasional, khususnya dalam upaya pemerintah untuk mendorong keseimbangan pembangunan antar-wilayah dan menmbus keterisolasian dan keterbelakangan pada beberapa kabupaten di wilayah Pegunungan Tengah Papua bagian timur</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; peningkatan perekonomian Provinsi Papua; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan infrastruktur jalan Depapre - Bongkrang sepanjang 34,4 Km dan peningkatan struktur sepanjang 1,15 Km.</p>', '<p>-</p>', '<p>Proyek Pembangunan Jalan Depapre - Bongkrang dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jalan Depapre - Bongkrang dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('20', '3', '1', '1', '2', '3', 'Pembangunan Jalan Flyover (FO) SP. Surabaya', '30000000000', '-', '-', '<p>Pembangunan FO Sp. Surabaya merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi barang dan jasa dari outlet yang melintas perkotaan di wilayah Prov. Aceh.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; peningkatan perekonomian Provinsi Aceh; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan infrastruktur FO Sp. Surabaya sepanjang 152.86 m</p>', '<p>-</p>', '<p>Proyek Pembangunan Jalan FO SP. Surabaya dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jalan FO SP. Surabaya dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('21', '3', '1', '1', '2', '3', 'Pembangunan Jalan Gerung (Patung Sapi) Mataram', '233930000000', '-', '-', '<p>Pembangunan Jalan Gerung ( Patung Sapi)-Mataram sepanjang 3,5 km merupakan prioritas nasional dalam rangka mendukung peningkatan konektivitas nasional, khususnya dalam upaya pemerintah untuk mendorong keseimbangan pembangunan antar-wilayah dan menembus keterisolasian dan keterbelakangan pada beberapa kabupaten di wilayah NTB.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; peningkatan perekonomian Provinsi Nusa Tenggara Barat; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan Jalan Gerung (Patung Sapi)-Mataram sepanjang 3,5 km</p>', '<p>-</p>', '<p>Proyek Pembangunan Jalan Gerung (Patung Sapi)-Mataram dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jalan Gerung (Patung Sapi)-Mataram dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('22', '3', '1', '1', '2', '3', 'Pembangunan Jalan Haberna Kenyam', '90000000000', '-', '-', '<p>Pembangunan jalan Habema - Kenyam sepanjang 13 Km merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk mendorong keseimbangan pembangunan antar-wilayah dan menembus keterisolasian dan keterbelakangan masyarakat di 10 (sepuluh) kabupaten wilayah PEgunungan Tengah Papua.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; peningkatan perekonomian Provinsi Papua; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan infrastruktur jalan pada ruas Habena - Kenyam sepanjang 13 Km</p>', '<p>-</p>', '<p>Proyek Pembangunan ruas Habena - Kenyam dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan ruas Habena - Kenyam dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('23', '3', '1', '1', '2', '3', 'Pembangunan Jalan Jayapura Sarmi', '150000000000', '-', '-', '<p>Pembangunan jalan Jayapura - Sarmi merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan level of service jalan seiring dengan pertumbuhan dan perkembangan ekonomi di wilayah sepanjang koridor jalan ini. Pembangunan jalan ini juga untuk meningkatkan kelancaran distribusi barang dan orang serta meningkatkan kinerja sistem logistik nasional.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; peningkatan perekonomian Provinsi Papua; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pelebaran jalan Jayapura - Sarmi sepanjang 8,9 Km dan Rekonstruksi 6.6 Km</p>', '<p>-</p>', '<p>Proyek Pembangunan jalan Jayapura - Sarmi dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan jalan Jayapura - Sarmi dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('24', '3', '1', '1', '2', '3', 'Pembangunan Jalan Jayapura Wamena', '255500000000', '-', '-', '<p>Pembangunan jalan Jayapura - Wamena - Mulia merupakan prioritas nasional dalam rangka mendukung peningkatan konektivitas nasional, khususnya dalam upaya pemerintah untuk mendorong keseimbangan pembangunan antar-wilayah dan menembus keterisolasian dan keterbelakangan pada beberapa kabupaten di wilayah pegunungan Tengah Papua.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; peningkatan perekonomian Provinsi Papua; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Rekonstruksi infrastruktur jalan lingkar Jayapura - Wamena - Mulia sepanjang 56.8 Km</p>', '<p>-</p>', '<p>Proyek Pembangunan jalan Jayapura - Wamena - Mulia dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan jalan Jayapura - Wamena - Mulia dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('25', '3', '1', '1', '2', '3', 'Pembangunan Jalan Kelay - Lebanan', '105210000000', '-', '-', '<p>Peningkatan Struktur Jalan Kelay - Lebanan merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi barang dan jasa di wilayah Kalimantan Timur.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Kalimantan Timur; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Peningkatan struktur jalan Kelay - Labanan sepanjang 16,7 Km</p>', '<p>-</p>', '<p>Proyek Pembangunan Jalan Kelay - Lebanan dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jalan Kelay - Lebanan dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('26', '3', '1', '1', '2', '3', 'Pembangunan Jalan Labuan - Maligano', '52800000000', '-', '-', '<p>Penanganan Jalan Labuan - Maligano merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi barang dan jasa di wilayah Sulawesi Tenggara.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Sulawesi Tenggara; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Peningkatan struktur jalan Labuan - Maligano sepanjang 16,5 km</p>', '<p>-</p>', '<p>Proyek Pembangunan Jalan Labuan - Maligano dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jalan Labuan - Maligano dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('27', '3', '1', '1', '2', '3', 'Pembangunan Jalan Maros - Watmpoe', '41860000000', '-', '-', '<p>Penanganan Jalan Maros - Watmpoe merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi barang dan jasa di wilayah Sulawesi Selatan.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Sulawesi Selatan; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pelebaran jalan Maros - Watampoe sepanjang 8.5 km</p>', '<p>-</p>', '<p>Proyek Pembangunan Jalan Maros - Watmpoe dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jalan Maros - Watmpoe dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('28', '3', '1', '1', '2', '3', 'Pembangunan Jalan Muara Wahau - Kelay', '110250000000', '-', '-', '<p>Penanganan Jalan Muara Wahau - Kelay merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi barang dan jasa dan meningkatkan kinerja sistem logistik nasional di wilayah Kalimantan Timur.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Kalimantan Timur; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Penanganan jalan Muara Wahau - Kelay sepanjang 17,5 km</p>', '<p>-</p>', '<p>Proyek Pembangunan Jalan Muara Wahau - Kelay dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jalan Muara Wahau - Kelay dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('29', '3', '1', '1', '2', '3', 'Pembangunan Jalan Pameu - Genting Gerbang', '41500000000', '-', '-', '<p>Penanganan Jalan Pameu Genting merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi barang dan jasa dan meningkatkan kinerja sistem logistik nasional di wilayah provinsi Aceh.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Aceh; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Penanganan jalan Pameu - Genting Gerbang sepanjang 8,3 km</p>', '<p>-</p>', '<p>Proyek Pembangunan Jalan Pameu Genting dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jalan Pameu Genting dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('30', '3', '1', '1', '2', '3', 'Pembangunan Jalan Reba Siberida', '30250000000', '-', '-', '<p>Penanganan Jalan Reba Siberida merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi barang dan jasa dan meningkatkan kinerja sistem logistik nasional di wilayah provinsi Riau.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Riau; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Peningkatan struktur Jalan Reba Siberida sepanjang 2.75 km</p>', '<p>-</p>', '<p>Proyek Pembangunan Jalan Reba Siberida dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jalan Reba Siberida dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('31', '3', '1', '1', '2', '3', 'Pembangunan Jalan Timika Waghete', '100000000000', '-', '-', '<p>Pembangunan jalan Timika - Waghete, merupakan prioritas nasional dalam rangka mendukung peningkatan konektivitas nasional, khususnya dalam upaya pemerintah untuk mendrong keseimbangan pembangunan antar-wilayah dan menembus keterisolasian dan keterbelakangan, serta untuk menurunkan tingkat kemahalan harga-harga di beberapa kabupaten di wilayah Pegunungan Tengah Papua bagian barat. Ruas ini merupakan bagian dari Koridor 6 MP3EI.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; peningkatan perekonomian Wilayah Papua; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan infrastruktur jalan pada ruas Timika - Waghete sepanjnag 16 Km</p>', '<p>-</p>', '<p>Proyek Pembangunan jalan tol Manado - Bitung dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan jalan Timika - Waghete dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('32', '3', '1', '1', '2', '3', 'Pembangunan Jalan Tol Manado Bitung', '25000000000', '-', '-', '<p>Pembangunan jalan tol Manado - Bitung merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi arus barang dan jasa dari outlet menuju pelabuhan Bitung dan meningkatkan kinerja sistem logistik nasional.</p>', '<p>Meningkatnya kesejahteraan masyarakat; Meningkatnyapertumbuhan ekonomi Provinsi Sulawesi Utara dan Regional Sulawesi ; Meningkatnya aksesibilitas dan waktu tempuh menuju Pelabuhan Bitung.</p>', '<p>Pembangunan jalan tol Manado - Bitung sepanjang 0.20 Km</p>', '<p>-</p>', '<p>Proyek Pembangunan jalan Timika - Waghete dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan jalan tol Manado - Bitung dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('33', '3', '1', '1', '2', '3', 'Pembangunan Jalan Tol Waropko Iwur', '210000000000', '-', '-', '<p>Pembangunan jalan Waropko - Iwur, bagian dari Jalan Trans Papua merupakan prioritas nasional dalam rangka mendukung peningkatan konektivitas nasional, khususnya dalam upaya pemerintah untuk mendorong keseimbangan pembangunan antar-wilayah dan menembus keterisolasian dan keterbelakangan pada beberapa kabupaten di wilayah Pegunungan Tengah Papua bagian Timur.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Kota Jayapura, Provinsi Papua; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan infrastruktur jalan Trans Papua pada ruas Waropko-Iwur sepanjang 31.7 Km</p>', '<p>-</p>', '<p>Proyek Pembangunan jalan Waropko - Iwur dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan jalan Waropko - Iwur dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('34', '3', '1', '1', '3', '3', 'Pembangunan Jembatan Ake Gosale', '53350000000', '-', '-', '<p>Pembangunan Jembatan Ake Gosale merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk menghubungkan pulau di wilayah Maluku Utara.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Maluku Utara; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan jembatan Ake Gosale sepanjang 97 M</p>', '<p>-</p>', '<p>Proyek Pembangunan Jembatan Ake Gosale dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jembatan Ake Gosale dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('35', '3', '1', '1', '3', '3', 'Pembangunan Jembatan Banyumulek Cs', '81000000000', '-', '-', '<p>Pembangunan Jembatan Banyumulek CS sepanjang 162 M merupakan prioritas nasional dalam rangka mendukung konetivitas nasional, khususnya dalam upaya pemerintah untuk mendorong keseimbangan pembangunan antar-wilayah dan menembus keterisolasian dan keterbelakangan masyarakat di Nusa Tenggara Barat.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Nusa Tenggara Barat; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan Jembatan Banyumulek CS sepanjang 162 M</p>', '<p>-</p>', '<p>Proyek Pembangunan Jembatan Banyumulek CS dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jembatan Banyumulek CS dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('36', '3', '1', '1', '3', '3', 'Pembangunan Jembatan Batang Terusan', '35000000000', '-', '-', '<p>Pembangunan Jembatan Batang Terusan sepanjang 126,6 M merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khusunya dalam upaya pemerintah untuk menghubungkan pulau di wilayah Sumatera Barat.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Sumatera Barat; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan Jembatan Batang Terusan sepanjang 126,6 M</p>', '<p>-</p>', '<p>Proyek Pembangunan Jembatan Batang Terusan dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jembatan Batang Terusan dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('37', '3', '1', '1', '3', '3', 'Pembangunan Jembatan Holtekam', '200500000000', '-', '-', '<p>Pembangunan Jembatan Holtekam merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk mengatasi kemacetan lalu lintas dan pengembangan wilayah di kota Jayapura.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Papua; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan infrastruktur jembatan Holtekam yang menghubungkan Kota Jayapura ke ruas arteri nasional menuju Sentani.</p>', '<p>-</p>', '<p>Proyek Pembangunan Jembatan Holtekam Terusan dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan Jembatan Holtekam dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('38', '3', '1', '1', '3', '3', 'Pembangunan Jembatan Pulau Balang', '320290000000', '-', '-', '<p>Pembangunan jembatan Pulau Balang merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi barang dan jasa sehingga meningkatkan kinerja sistemik logistik nasional terutama di wilayah Kalimantan Timur dan sekitarnya</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Kalimantan Timur; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan infrastruktur jembatan Pulau Balang sepanjang 184.20 m</p>', '<p>-</p>', '<p>Proyek Pembangunan jembatan Pulau Balang dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan jembatan Pulau Balang dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('39', '3', '1', '1', '3', '3', 'Pembangunan Jembatan Sangkup', '56250000000', '-', '-', '<p>Pembangunan jembatan Sangkup merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi arus barang dan jasa, dan meningkatkan kinerja sistem logistik nasional.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Sulawesi Utara; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan jembatan Sangkup sepanjang 97 M</p>', '<p>-</p>', '<p>Proyek Pembangunan jembatan Sangkup dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan jembatan Sangkup dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('40', '3', '1', '1', '3', '3', 'Pembangunan Jembatan Wailata Besar', '54000000000', '-', '-', '<p>Pembangunan jembatan Wailata Besar merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi arus barang dan jasa untuk menunjang sektor perikanan di Provinsi Maluku.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Maluku; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Pembangunan jembatan sepanjang 180 meter</p>', '<p>-</p>', '<p>Proyek Pembangunan jembatan Wailata Besar dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan jembatan Wailata Besar dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('41', '3', '1', '1', '3', '3', 'Pembangunan Undepass Simpang Mandai Makasar', '80000000000', '-', '-', '<p>Pembangunan underpass Simpang Mandai Makassar merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran lalu lintas untuk menunjang kelancaran distribusi aarus barang dan jasa.</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Sulawesi Selatan; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>533.33 m undepass yang terbangun</p>', '<p>-</p>', '<p>Proyek Pembangunan underpass Simpang Mandai Makassar dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Proyek Pembangunan underpass Simpang Mandai Makassar dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('42', '3', '1', '1', '2', '3', 'Peningkatan Struktur Jalan Duri Kandis', '44340000000', '-', '-', '<p>Peningkatan Struktur Jalan Duri Kandis sepanjang 5 Km merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya [emerintah untuk mendorong keseimbangan pembangunan antar-wilayah dan meningkatkan kapasitas jalan di Riau</p>', '<p>Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; Peningkatan perekonomian Provinsi Riau; Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>Peningkatan Struktur Jalan Duri Kandis sepanjang 5 Km</p>', '<p>-</p>', '<p>Peningkatan Struktur Jalan Duri Kandis dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Peningkatan Struktur Jalan Duri Kandis dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('43', '3', '1', '1', '2', '3', 'Perbaikan Aligmen & Penataan Tikungan pada Lintas Timur Prov. Jambi', '30000000000', '-', '-', '<p>Perbaikan Aligmen dan Penataan Tikungan pada Lintas Timur Provinsi Jambi merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan keselamatan jalan bagi pengguna jalan dan sekaligus meningkatkan kelancaran distribusi barang dan jasa pada Lintas Timur Provinsi Jambi.</p>', '<p>- Peningkatan kesejahteraan masyarakat sekitar lokasi pembangunan; - Peningkatan perekonomian Provinsi Jambi; - Meningkatkan aksesibilitas pelayanan dan mobilitas antar-wilayah dan antar-provinsi.</p>', '<p>5 km infrastruktur jalan yang mendapatkan perbaikan aligmen dan penataan tikungan pada Lintas Timur Provinsi Jambi</p>', '<p>-</p>', '<p>Perbaikan Aligmen dan Penataan Tikungan pada Lintas Timur Provinsi Jambi dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Perbaikan Aligmen dan Penataan Tikungan pada Lintas Timur Provinsi Jambi dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('44', '3', '1', '1', '2', '3', 'Rekonstruksi Jalan Ruas Simpang Batang - Simpang Kulim', '30000000000', '-', '-', '<p>Rekonstruksi jalan ruas Simpang Batang - Simpang Kulim merupakan prioritas nasional dalam rangka mendukung konektivitas nasional, khususnya dalam upaya pemerintah untuk meningkatkan kelancaran distribusi barang dan jasa pada Jalan Lintas Timur Pulau Sumatera dan meningkatkan kinerja sistem logistik nasional.</p>', '<p>Meningkatnya kesejahteraan masyarakat; Meningkatnya pertumbuhan ekonomi Provinsi Riau dan Regional Pulau Sumatera ; Meningkatnya volume perdagangan antar-wilayah dan antar-provinsi.</p>', '<p>Rekonstruksi infrastruktur jalan ruas Simpang Batang - Simpang Kulim sepanjang 3 Km</p>', '<p>-</p>', '<p>Rekonstruksi jalan ruas Simpang Batang - Simpang Kulim dinyatakan layak dari segi teknis sesuai dengan rekomendasi dokumen DED.</p>', '<p>Rekonstruksi jalan ruas Simpang Batang - Simpang Kulim dinyatakan layak dari segi ekonomi dikarenakan manfaat yang diterima lebih besar daripada biaya yang dikeluarkan.</p>');
INSERT INTO `proyek` VALUES ('45', '2', '1', '1', '1', '3', 'Revitalisasi dan Pengembangan Asrama Haji', '382930000000', '-', '-', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>');
INSERT INTO `proyek` VALUES ('46', '2', '1', '1', '1', '3', 'Pembangunan Gedung Balai Nikah dan Manasik Haji', '19540000000', '-', '-', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>');
INSERT INTO `proyek` VALUES ('47', '2', '1', '1', '1', '3', 'Pembangunan Gedung dan Perlengkapan Sarana dan Prasarana Pendidikan', '280900000000', '-', '-', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>');
INSERT INTO `proyek` VALUES ('48', '1', '1', '1', '4', '2', 'Pembangunan Jalur Ganda Lintas Cirebon-Kroya Segmen I (Cirebon-Larangan)', '745000000000', 'Terbangunny', '-', '<p>-</p>', '<p>Untuk mewujudkan pelayanan jasa transportasi yang aman, tepat waktu, nyaman, dan memadai bagi pengguna jasa angkutan kereta api.</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>');
INSERT INTO `proyek` VALUES ('49', '1', '1', '1', '4', '2', 'Pembangunan Railway Electrification and Double-Double Tracking of Java Main Line Project', '626000000000', 'Terbangunny', '-', '<p>-</p>', '<p>Terselenggaranya dukungan sektor transportasi kereta api untuk meningkatkan aksebilitas masyarakat guna mendorong pengembangan konektivitas antarwilayah.</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>');
INSERT INTO `proyek` VALUES ('50', '2', '1', '1', '1', '2', 'Revitalisasi dan Pengembangan Asrama Haji', '200000000000', '-', '-', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>');
INSERT INTO `proyek` VALUES ('52', '1', '1', '1', '4', '0', 'Paket A (Pembangunan Fasilitas Perkeretaapian Untuk Manggarai s/d Jatinegara)/ Railway Electrification and Double-Double Tracking of Java Main Line Project (2016)', '854000000000', '-', '-', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>');
INSERT INTO `proyek` VALUES ('53', '1', '1', '1', '4', '0', 'Paket B2 (1) (Modernisasi Fasilitas Perkeretaapian untuk Jatinegara s/d Bekasi)', '530000000000', '-', '-', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>');
INSERT INTO `proyek` VALUES ('54', '1', '1', '1', '4', '0', 'Pembangunan Jalur Ganda KA antara Purwokerto - Kroya Lintas Cirebon - Kroya segmen III (2016)', '700000000000', '-', '-', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>');
INSERT INTO `proyek` VALUES ('55', '1', '1', '1', '4', '0', 'Pembangunan Jalur Ganda Kereta Api Antara Martapura - Baturaja total sepanjang 35 Km\'sp (2016)', '334500000000', '-', '-', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>');
INSERT INTO `proyek` VALUES ('59', '1', '1', '1', '4', '1', 'Pembangunan Jalur Ganda Lintas Cirebon-Kroya Segmen I (Cirebon-Larangan)', '800000000000', '-', '-', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>', '<p>-</p>');

-- ----------------------------
-- Table structure for proyek_dok
-- ----------------------------
DROP TABLE IF EXISTS `proyek_dok`;
CREATE TABLE `proyek_dok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_proyek` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `berkas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of proyek_dok
-- ----------------------------
INSERT INTO `proyek_dok` VALUES ('1', '1', 'dasd', '<p>asdada</p>', '29.png');

-- ----------------------------
-- Table structure for sasaran_rpjmn
-- ----------------------------
DROP TABLE IF EXISTS `sasaran_rpjmn`;
CREATE TABLE `sasaran_rpjmn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `output` double DEFAULT NULL,
  `sat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sasaran_rpjmn
-- ----------------------------
INSERT INTO `sasaran_rpjmn` VALUES ('1', 'Belum ada Sasaran', '0', '');

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of status
-- ----------------------------
INSERT INTO `status` VALUES ('1', 'Efektif');
INSERT INTO `status` VALUES ('2', 'Tutup');

-- ----------------------------
-- Table structure for target
-- ----------------------------
DROP TABLE IF EXISTS `target`;
CREATE TABLE `target` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_monev` int(11) DEFAULT NULL,
  `triwulan` int(11) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of target
-- ----------------------------
INSERT INTO `target` VALUES ('38', '1', '1', '149000000000');
INSERT INTO `target` VALUES ('39', '1', '2', '186000000000');
INSERT INTO `target` VALUES ('40', '1', '3', '298000000000');
INSERT INTO `target` VALUES ('41', '1', '4', '112000000000');
INSERT INTO `target` VALUES ('42', '12', '1', '1000000000');
INSERT INTO `target` VALUES ('43', '12', '2', '28000000000');
INSERT INTO `target` VALUES ('44', '12', '3', '66000000000');
INSERT INTO `target` VALUES ('45', '12', '4', '105000000000');
INSERT INTO `target` VALUES ('46', '24', '1', '0');
INSERT INTO `target` VALUES ('47', '24', '2', '0');
INSERT INTO `target` VALUES ('48', '24', '3', '0');
INSERT INTO `target` VALUES ('49', '24', '4', '0');
INSERT INTO `target` VALUES ('50', '34', '1', '0');
INSERT INTO `target` VALUES ('51', '34', '2', '0');
INSERT INTO `target` VALUES ('52', '34', '3', '0');
INSERT INTO `target` VALUES ('53', '34', '4', '0');
INSERT INTO `target` VALUES ('54', '3', '1', '0');
INSERT INTO `target` VALUES ('55', '3', '2', '0');
INSERT INTO `target` VALUES ('56', '3', '3', '0');
INSERT INTO `target` VALUES ('57', '3', '4', '0');
INSERT INTO `target` VALUES ('58', '11', '1', '0');
INSERT INTO `target` VALUES ('59', '11', '2', '0');
INSERT INTO `target` VALUES ('60', '11', '3', '0');
INSERT INTO `target` VALUES ('61', '11', '4', '0');
INSERT INTO `target` VALUES ('62', '23', '1', '0');
INSERT INTO `target` VALUES ('63', '23', '2', '0');
INSERT INTO `target` VALUES ('64', '23', '3', '0');
INSERT INTO `target` VALUES ('65', '23', '4', '0');
INSERT INTO `target` VALUES ('66', '41', '1', '0');
INSERT INTO `target` VALUES ('67', '41', '2', '0');
INSERT INTO `target` VALUES ('68', '41', '3', '0');
INSERT INTO `target` VALUES ('69', '41', '4', '0');
INSERT INTO `target` VALUES ('70', '45', '1', '0');
INSERT INTO `target` VALUES ('71', '45', '2', '0');
INSERT INTO `target` VALUES ('72', '45', '3', '0');
INSERT INTO `target` VALUES ('73', '45', '4', '0');
INSERT INTO `target` VALUES ('74', '38', '1', '0');
INSERT INTO `target` VALUES ('75', '38', '2', '0');
INSERT INTO `target` VALUES ('76', '38', '3', '0');
INSERT INTO `target` VALUES ('77', '38', '4', '0');
INSERT INTO `target` VALUES ('78', '49', '1', '2000000000');
INSERT INTO `target` VALUES ('79', '49', '2', '2000000000');
INSERT INTO `target` VALUES ('80', '6', '1', '1000000000');
INSERT INTO `target` VALUES ('81', '6', '2', '2000000000');
INSERT INTO `target` VALUES ('82', '9', '1', '0');
INSERT INTO `target` VALUES ('83', '19', '1', '0');
INSERT INTO `target` VALUES ('84', '19', '2', '0');
INSERT INTO `target` VALUES ('85', '19', '3', '0');
INSERT INTO `target` VALUES ('86', '19', '4', '0');

-- ----------------------------
-- Table structure for triwulan
-- ----------------------------
DROP TABLE IF EXISTS `triwulan`;
CREATE TABLE `triwulan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of triwulan
-- ----------------------------
INSERT INTO `triwulan` VALUES ('1', '1', '0');
INSERT INTO `triwulan` VALUES ('2', '2', '0');
INSERT INTO `triwulan` VALUES ('3', '3', '1');
INSERT INTO `triwulan` VALUES ('4', '4', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_level` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `kata_kunci` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', 'Firman Perangin-angin', 'f.manangin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'firman.jpg');
INSERT INTO `user` VALUES ('2', '1', 'Rahmat Ramadhan', 'ramadhan.dont@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'mamat.jpg');
INSERT INTO `user` VALUES ('5', '1', 'Sugeng Hendarto', 'sugeng.hendarto@gmail.com', 'db0d86597b95731b6e5172e80256f96e', '1170w3zp7ri804k.jpg');
INSERT INTO `user` VALUES ('6', '1', 'Beby Hanzian', 'bebyhanzian46@gmail.com', 'db0d86597b95731b6e5172e80256f96e', 'd9l4msaak2og8co.jpg');

-- ----------------------------
-- Table structure for user_level
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_level
-- ----------------------------
INSERT INTO `user_level` VALUES ('1', 'Administrator');
INSERT INTO `user_level` VALUES ('2', 'Operator');
INSERT INTO `user_level` VALUES ('3', 'Tamu');

-- ----------------------------
-- View structure for ambil_data_penyerapan_per_id_monev
-- ----------------------------
DROP VIEW IF EXISTS `ambil_data_penyerapan_per_id_monev`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `ambil_data_penyerapan_per_id_monev` AS select `penyerapan`.`id` AS `id`,`penyerapan`.`id_paket_kontrak` AS `id_paket_kontrak`,`paket_kontrak`.`paket_kontrak` AS `paket_kontrak`,`penyerapan`.`triwulan` AS `triwulan`,`penyerapan`.`nilai` AS `nilai` from (`penyerapan` join `paket_kontrak` on((`paket_kontrak`.`id` = `penyerapan`.`id_paket_kontrak`))); ;

-- ----------------------------
-- View structure for ambil_semua_monev
-- ----------------------------
DROP VIEW IF EXISTS `ambil_semua_monev`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `ambil_semua_monev` AS select `monev`.`id` AS `id`,`monev`.`judul` AS `judul`,`instansi`.`nama` AS `instansi`,`monev`.`nilai_dipa` AS `nilai`,`status`.`nama` AS `status`,`instansi`.`singkatan` AS `singkatan`,`kategori`.`nama` AS `kat_sbsn`,`proyek`.`id_instansi` AS `id_instansi` from ((((`monev` join `proyek` on((`proyek`.`id` = `monev`.`id_proyek`))) join `instansi` on((`instansi`.`id` = `proyek`.`id_instansi`))) join `status` on((`status`.`id` = `monev`.`id_status`))) join `kategori` on((`kategori`.`id` = `proyek`.`id_kategori`))) where (`monev`.`id_status` = 1); ;

-- ----------------------------
-- View structure for ambil_semua_penyerapan_per_id_monev
-- ----------------------------
DROP VIEW IF EXISTS `ambil_semua_penyerapan_per_id_monev`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `ambil_semua_penyerapan_per_id_monev` AS select `paket_kontrak`.`kode` AS `kode`,`paket_kontrak`.`paket_kontrak` AS `paket_kontrak`,`paket_kontrak`.`uraian_pekerjaan` AS `uraian_pekerjaan`,`paket_kontrak`.`tgl_kontrak` AS `tgl_kontrak`,`paket_kontrak`.`tgl_selesai_kontrak` AS `tgl_selesai_kontrak`,`paket_kontrak`.`pagu` AS `pagu`,`paket_kontrak`.`nilai_paket_kontrak` AS `nilai_paket_kontrak`,`penyerapan`.`triwulan` AS `triwulan`,`penyerapan`.`nilai` AS `nilai`,`penyerapan`.`target_triwulan_selanjutnya` AS `target_triwulan_selanjutnya`,`penyerapan`.`id` AS `id_penyerapan`,`paket_kontrak`.`id_monev` AS `id_monev`,`paket_kontrak`.`id` AS `id_paket_kontrak`,`kategori`.`nama` AS `kat_sbsn` from ((((`penyerapan` join `paket_kontrak` on((`paket_kontrak`.`id` = `penyerapan`.`id_paket_kontrak`))) join `monev` on((`monev`.`id` = `paket_kontrak`.`id_monev`))) join `proyek` on((`proyek`.`id` = `monev`.`id_proyek`))) join `kategori` on((`kategori`.`id` = `proyek`.`id_kategori`))); ;

-- ----------------------------
-- View structure for ambil_semua_progres_fisik_per_id_monev
-- ----------------------------
DROP VIEW IF EXISTS `ambil_semua_progres_fisik_per_id_monev`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `ambil_semua_progres_fisik_per_id_monev` AS select `monev`.`id` AS `id_monev`,`progres_fisik`.`triwulan` AS `triwulan`,`paket_kontrak`.`uraian_pekerjaan` AS `uraian_pekerjaan`,`progres_fisik`.`target` AS `target`,`progres_fisik`.`realisasi` AS `realisasi`,`progres_fisik`.`target_triwulan_selanjutnya` AS `target_triwulan_selanjutnya`,`progres_fisik`.`kendala` AS `kendala`,`progres_fisik`.`tindak_lanjut` AS `tindak_lanjut`,`progres_fisik`.`pihak_terlibat` AS `pihak_terlibat`,`paket_kontrak`.`paket_kontrak` AS `paket_kontrak` from ((`progres_fisik` join `monev`) join `paket_kontrak` on(((`monev`.`id` = `paket_kontrak`.`id_monev`) and (`paket_kontrak`.`id` = `progres_fisik`.`id_paket_kontrak`)))); ;

-- ----------------------------
-- View structure for v_kabkota
-- ----------------------------
DROP VIEW IF EXISTS `v_kabkota`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_kabkota` AS select `kabkota`.`id` AS `id_kabkota`,`provinsi`.`nama` AS `provinsi`,`kabkota`.`nama` AS `kabkota` from (`provinsi` join `kabkota` on((`provinsi`.`id` = `kabkota`.`id_provinsi`))); ;

-- ----------------------------
-- View structure for v_lokasi_map
-- ----------------------------
DROP VIEW IF EXISTS `v_lokasi_map`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_lokasi_map` AS select `kabkota`.`nama` AS `nama`,`kabkota`.`latitude` AS `latitude`,`kabkota`.`longitude` AS `longitude`,`proyek`.`id_instansi` AS `id_instansi`,`instansi`.`gambar` AS `gambar` from ((((`lokasi` join `kabkota` on((`kabkota`.`id` = `lokasi`.`id_kabkota`))) join `monev` on((`monev`.`id` = `lokasi`.`id_monev`))) join `proyek` on((`proyek`.`id` = `monev`.`id_proyek`))) join `instansi` on((`instansi`.`id` = `proyek`.`id_instansi`))); ;

-- ----------------------------
-- View structure for v_penarikan_per_proyek
-- ----------------------------
DROP VIEW IF EXISTS `v_penarikan_per_proyek`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_penarikan_per_proyek` AS select `proyek`.`id` AS `id`,`penyerapan`.`nilai` AS `nilai` from (((`proyek` join `monev` on((`proyek`.`id` = `monev`.`id_proyek`))) join `paket_kontrak` on((`monev`.`id` = `paket_kontrak`.`id_monev`))) join `penyerapan` on((`paket_kontrak`.`id` = `penyerapan`.`id_paket_kontrak`))); ;

-- ----------------------------
-- View structure for v_proyek
-- ----------------------------
DROP VIEW IF EXISTS `v_proyek`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_proyek` AS select `kategori`.`nama` AS `dpp`,`proyek`.`judul` AS `proyek`,`proyek`.`nilai` AS `nilai`,`penyerapan`.`nilai` AS `penyerapan` from ((((`proyek` join `kategori` on((`kategori`.`id` = `proyek`.`id_kategori`))) join `monev` on((`proyek`.`id` = `monev`.`id_proyek`))) join `paket_kontrak` on((`monev`.`id` = `paket_kontrak`.`id_monev`))) join `penyerapan` on((`paket_kontrak`.`id` = `penyerapan`.`id_paket_kontrak`))); ;

-- ----------------------------
-- View structure for v_proyek_per_kategori
-- ----------------------------
DROP VIEW IF EXISTS `v_proyek_per_kategori`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `v_proyek_per_kategori` AS select `kategori_proyek`.`nama` AS `nama`,count(`proyek`.`judul`) AS `jlh`,(sum(`proyek`.`nilai`) / 1000000000) AS `nilai` from (`proyek` join `kategori_proyek` on((`kategori_proyek`.`id` = `proyek`.`id_kategori_proyek`))) group by `proyek`.`id_kategori_proyek` ;
