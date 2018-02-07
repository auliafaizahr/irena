-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2018 at 04:17 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `irena3`
--

-- --------------------------------------------------------

--
-- Table structure for table `catatan_usulan`
--

CREATE TABLE `catatan_usulan` (
  `id` int(11) NOT NULL,
  `id_usulan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `catatan_bb` (
  `id` int(11) NOT NULL,
  `id_bb_proyek` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `catatan_gb` (
  `id` int(11) NOT NULL,
  `id_gb_proyek` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `catatan_dk` (
  `id` int(11) NOT NULL,
  `id_dk_proyek` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `catatan_la` (
  `id` int(11) NOT NULL,
  `id_la_proyek` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



--
-- Dumping data for table `catatan_usulan`
--

INSERT INTO `catatan_usulan` (`id`, `id_usulan`, `id_user`, `waktu`, `catatan`) VALUES
(1, 10, 0, '2018-01-02 02:33:19', 'tes'),
(2, 10, 0, '2018-01-02 02:45:23', 'menurut hasil rapat'),
(3, 11, 0, '2018-01-02 03:11:47', 'menurutnya'),
(4, 10, 0, '2018-01-02 21:47:50', 'katanya sih'),
(5, 11, 0, '2018-01-02 21:49:50', 'belum ada kabar'),
(6, 14, 0, '2018-01-02 22:01:50', 'belum ada pertemuan'),
(7, 14, 0, '2018-01-02 22:02:23', 'belum ada hehehehe'),
(8, 14, 0, '2018-01-02 22:04:39', 'nanti pertemuan lagi'),
(9, 11, 0, '2018-01-02 22:07:39', 'katanya'),
(10, 11, 0, '2018-01-02 22:08:08', 'tes dulu lagi'),
(11, 14, 0, '2018-01-02 22:08:40', 'gege'),
(12, 10, 0, '2018-01-02 22:12:14', 'abc'),
(13, 11, 0, '2018-01-02 22:23:10', 'wqwqwq'),
(14, 11, 0, '2018-01-02 22:24:34', 'abcagaga'),
(15, 10, 0, '2018-01-02 22:33:19', 'bcd'),
(16, 14, 0, '2018-01-02 22:35:21', 'haha'),
(17, 11, 0, '2018-01-02 22:36:06', 'tes lagi'),
(18, 14, 0, '2018-01-02 22:37:52', 'menurut nya'),
(19, 14, 0, '2018-01-02 22:39:20', 'diminta untuk'),
(20, 10, 0, '2018-01-02 22:44:39', 'abcd'),
(21, 14, 0, '2018-01-02 22:45:32', 'ta be'),
(22, 11, 0, '2018-01-02 23:09:38', 'bcde'),
(23, 10, 0, '2018-01-02 23:14:42', 'coba lagi'),
(24, 14, 0, '2018-01-02 23:20:18', 'loih'),
(25, 57, 0, '2018-01-02 23:20:49', 'tesss'),
(26, 57, 0, '2018-01-02 23:21:18', 'diminta menunggu dari multilateral, selanjutnya hubungi ibu '),
(27, 10, 0, '2018-01-03 00:31:15', 'abcdefgh'),
(28, 57, 0, '2018-01-03 00:31:22', 'abcdefg'),
(29, 56, 0, '2018-01-03 00:32:48', 'segera cek hasil rapat multilateral'),
(30, 10, 0, '2018-01-03 04:34:16', 'katanya ada tambahan dari '),
(31, 10, 0, '2018-01-04 02:50:59', 'bagaimana jika');

-- --------------------------------------------------------

--
-- Table structure for table `irena_agenda`
--

CREATE TABLE `irena_agenda` (
  `id` int(11) NOT NULL,
  `id_arsip` int(11) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `jam` varchar(255) DEFAULT NULL,
  `tempat` varchar(255) DEFAULT NULL,
  `acara` text,
  `dari` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '1=On Going, 2=Next, 3=Selesai',
  `ket` text,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_agenda`
--

INSERT INTO `irena_agenda` (`id`, `id_arsip`, `tgl`, `jam`, `tempat`, `acara`, `dari`, `status`, `ket`, `update_by`, `update_date`) VALUES
(1, 0, '2017-11-30', '08.30 - 17.00', 'Hotel Asley, Jl. K. H. Wahid Hasyim No. 73-75 - Menteng', 'Focus Group Discussion (FGD) untuk Persiapan International Workshop on Disaster Risk Management for Countries in the Regions of Asia Pacific, Africa, Europe, South America and the Caribbean 2018', 'Kementerian Luar Negeri', 3, '-', 1, '2017-12-04 14:26:46'),
(2, 0, '2017-11-30', '12.30 - Selesai', 'R. Direktur Renbang PP', 'Pembahasan Pengembangan Sistem Informasi Direktorat Renbang PP', 'Dir. Renbang PP', 3, '-', 1, '2017-12-04 14:25:30'),
(3, 0, '2017-11-30', '09.30 - Selesa', 'R. Dir. Renbang PP', 'The ADB Pak Robert Boothe, Public Management Speacilist (Mission Leader) and team (Bu Kanya, Bu Dini, Pak Sani, dan Pak Dodi) to discuss ADB Support for regulatory review of project base sukuk (PBS)', 'ADB (Ummy Chasan)', 3, '-', 1, '2017-12-04 14:26:56'),
(7, 112, '2017-12-06', '08.30 - Selesai', 'Hotel Double Tree', 'Workshop SBSN', 'Dir. Renbang PP', 3, '-', 11, '2017-12-11 10:57:54'),
(8, 109, '2017-12-07', '14.00 Wib- Selesai', 'R. R. Portofolio, Gd. Frans Seda Lt. 8, DJPPR Jalan Dr. Wahidin Raya No. 1 Jakarta Pusat', 'Pembahasan Penyusunan Penetapan Sumber Pembiayaan untuk Kementerian Pertahanan Tahun 2017.', 'Dir.Strategi dan Fortofolio Pembiayaan', 3, '-', 11, '2017-12-11 10:59:03'),
(9, 111, '2017-12-07', '09.00 WIB', 'Ruang Mandala Bhakti Praja (lt.4 Kantor Bupati Gresik).', '\"Pemahaman Konsep dan Peran PKBL/CSR yang Tepat antara Perusahaan bersama Pemerintah dalam Kolaborasi yang Terbuka\"', 'PEMERINTAH KABUPATEN GRESIK BADAN PERENCANAAN PEMBANGUNAN, PENELITIAN DAN PENGEMBANGAN DAERAH', 3, 'Permohonan Menjadi Nara Sumber', 1, '2017-12-14 02:55:38'),
(10, 107, '2017-12-11', '10.00 s/d Selesai', 'Ruang Rapat Direktorat Hankam, Bappenas', 'Undangan Rapat Dalam rangka melakukan penilaian kesiapan pe!aksanaan atas rencana kegiatan Pinjaman Dalam Negeri (PDN) Tahun 2018', 'Direktur Pertahanan dan Keamanan', 3, '-', 1, '2017-12-14 02:58:38'),
(11, 114, '2017-12-07', '13.00-15.30', 'Ruang Rapat SS-1&2,Gedung TS-2A, Bappenas Jalan Taman Suropati No. 2, Menteng, Jakarta Pusat', 'Undangan Pembahasan Perpanjangan Loan Small Scale Water Treatment Plantfor Emergency Relief', 'Direktur Perkotaan, Perumahan dan Permukiman, Bappenas', 3, '-', 1, '2017-12-14 02:56:07'),
(12, 115, '2017-12-12', '08.00 S/D 12.00', 'Djunaedi Hadisumarto Room, Saleh Afiff Building Ministry of National Development Planning/BAPPENAS Jl. Taman Suropati No. 2, Menteng, Jakarta Pusat', 'PUBLIC LECTURE on \"GROWTH DIAGNOSTICS-A NEW APPROACH TO NATIONAL DEVELOPMENT STRATEGIES\"\r\nIdentifying the Binding Constraint to Growth in Indonesia: Early Findings', 'Minister of National Development Planning/Head of BAPPENAS', 3, '-', 1, '2017-12-14 02:58:59'),
(13, 118, '2017-12-06', '14.00 Wib- Selesai', 'Hotel AONE. Jl. KH. Wahid Hasyim No.SO, RT.15/RW.3, Kb.Sirih, Menteng, Kota Jakarta Pusat, Oaerah Khusus lbukota Jakarta 10340', 'Undangan Project Implementation Unit ( PIU) Meeting National Urban Development Program (NUDP)', 'Deputi Bidang Pengembangan Regional', 3, '-', 11, '2017-12-11 10:58:53'),
(14, 118, '2017-12-06', '14.00 Wib- Selesai', 'Hotel AONE. Jl. KH. Wahid Hasyim No.SO, RT.15/RW.3, Kb.Sirih, Menteng, Kota Jakarta Pusat, Oaerah Khusus lbukota Jakarta 10340', 'Undangan Project Implementation Unit ( PIU) Meeting National Urban Development Program (NUDP)', 'Deputi Bidang Pengembangan Regional', 3, '-', 11, '2017-12-11 10:58:18'),
(15, 129, '2017-12-07', '08.30 - 14.00 WIB', 'Ruang Rapat Benny S. Muljana, Gedung Wijoyo Nitisastro Lantai 2, Jl. Taman Suropati No. 1-2, Bappenas', 'Workshop \"Menuju Sistem Bantuan Sosial di Indonesia yang Komprehensif, Terintegrasi dan Efektif\'.', 'Deputi Kependudukan dan Ketenagakerjaan', 3, '-', 1, '2017-12-14 02:56:41'),
(16, 130, '2017-12-10', '10.00 WIB s.d. selesai', 'Ruang Rapat Direktorat Hankam, Bappenas', 'Rapat koordinasi Pinjaman Dalam Negeri (PDN) Tahun 2018', 'Direktur Pertahanan dan Keamanan', 3, 'Menyusuli Surat Undangan kami sebelumnya Nomor: 10955/0.7.5/11/2017, bersama ini kami sampaikan penundaan rapat koordinasi Pinjaman Dalam Negeri (PDN) Tahun 2018 yang sedianya dilaksanakan pada tanggal11 Desember 2017 diundur menjadi:\r\nHari/ tanggal 	: Rabu, 13 Desember 2017\r\nWaktu		: 10.00 WIB s.d. selesai\r\nTempat		: Ruang Rapat Direktorat Hankam, Bappenas', 1, '2017-12-14 02:56:25'),
(17, 131, '2017-12-08', '13.30 s/d Selesai', 'Hotel Herminttage, Menteng, Jakarta', 'Dalam rangka pelaksanaan studi analisa potensi Green Sukuk dalam mobilisasi pendanaan untuk perubahan iklim', 'Direktur Lingkungan Hidup, Bappenas', 3, '-', 1, '2017-12-14 02:56:17'),
(18, 131, '2017-12-08', '13.30 s/d Selesai', 'Hotel Herminttage, Menteng, Jakarta', 'Dalam rangka pelaksanaan studi analisa potensi Green Sukuk dalam mobilisasi pendanaan untuk perubahan iklim', 'Direktur Lingkungan Hidup, Bappenas', 3, '-', 1, '2017-12-14 02:55:46'),
(20, 136, '2017-12-13', '08.00 WIB s/d Selesai', 'Hotel Sari Pan Pasific, Jl. M.H. Thamrin No.6,Menteng, Jakarta Pusat, 10340', 'Rapat Koordinasi Kedeputian Bidang Pendanaan Pembangunan', 'Deputi Bidang Pendanaan Pembangunan', 3, '-', 1, '2017-12-14 02:58:04'),
(21, 136, '2017-12-13', '08.00 WIB s/d Selesai', 'Hotel Sari Pan Pasific, Jl. M.H. Thamrin No.6,Menteng, Jakarta Pusat, 10340', 'Rapat Koordinasi Kedeputian Bidang Pendanaan Pembangunan', 'Deputi Bidang Pendanaan Pembangunan', 3, '-', 1, '2017-12-14 02:58:14'),
(22, 137, '2017-12-08', '09.00 Wib s/d Selesai', 'Ruang Rapat SS-4 Gedung TS-2A Lantai 2', 'Persiapan Penyusunan Laporan Keuangan TA 2017 dan Pemeriksaan BPK', 'lnspektur Bidang Administrasi Umum', 3, '-', 1, '2017-12-14 02:56:52'),
(23, 144, '2017-12-11', '10.00 s/d 15.00', 'Hotel Spark Life, Jl. Mangga Besar No.42, RT.2/RW.2, Taman Sari, Tamansari, Kota Jakarta Barat', 'Koordinasi Pengelolaan Proyek Pinjaman dan Hibah Luar Negeri (PHLN) dan Surat Berharga Syariah Negara (SBSN) Kementerian Agama Tahun 2017', 'Kepala biro Perencanaan, Kementerian Agama', 3, '-', 1, '2017-12-14 02:59:12'),
(24, 148, '2017-12-11', '12.00 WIB- Selesai (didahului makan siang)', 'Gd. Saleh Afif, Ruang Djunaedi Hadisumarto 5 (d/h. SG-5).Kantor Bappenas Jl. Taman surapati No. 2, Menteng, Jakarta Pusat', 'Rapat Pendahuluan Pelaksanaan Konsultasi Publik (FKP) 2017 untuk penyusunan rancangan awal RKP 2019,', 'Staf Ahli Menteri PPN Bidang Hubungan Kelembagaan,', 3, 'Agenda Membahas :\r\n1. Pembahasan lsu-isu Strategis Pembangunan tahun 2019.\r\n2. Mekanisme Pelaksanaan FKP 2017\r\n3. Partisipasi publik dalam pelaksanaan FKP 2017', 1, '2017-12-14 02:59:06'),
(25, 149, '2017-12-12', '09.00 Wib s/d Selesai', 'Hotel Grand Mercure Kemayoran JL H Benyamin Sueb Kav 86, Jakarta Pusat, DKI Jakarta 10610', 'Undangan FGD terkait Finalisasi Framework\r\nProyek KPBU-AP', 'Dir.Pengelolaan Risikp Keuangan Negara, Kemenkeu', 3, 'Dalam rangka implementasi skema KPBU-Availability Payment (AP) menjadi alternatif\r\npembiayaan pembangunan infrastruktur untuk menjaga kesehatan APBN', 1, '2017-12-14 02:57:16'),
(26, 150, '2017-12-13', '9.30- 12.00 WIB', 'Ruang Rapat PKAPBN Gedung RM. Notohamiprojo Lantai 6 Jl. Dr. Wahidin No.1, Jakarta Pusat', 'Rapat Koordinasi Penyusunan Kerangka Ekonomi Makro dan Pokok-Pokok Kebijakan Fiskal tahun 2019 dengan Tema Strategi Pembiayaan Utang', 'BADAN KEBIJAKAN FISKAL PUSAT KEBIJAKAN ANGGARAN PENDAPATAN DAN BELANJA NEGARA', 3, '-', 1, '2017-12-14 02:58:24'),
(27, 151, '2017-12-12', '09.30 - 12.00 WIB', 'Ruang Rapat PKAPBN Gedung RM. Notohamiprojo lantai 6 JL Dr. Wahidin No.1, Jakarta Pusat', 'Rapat Koordinasi Penyusunan Ker~ngka Ekonomi Makro dan Pokok-Pokok Kebijakan Fiskal tahun 2019 dengan tema Creative Financing dan lnvestasi', 'BADAN KEBIJAKAN FISKAL PUSATKEBIJAKAN ANGGARAN PENDAPATAN DAN BELANJA NEGARA', 3, '-', 1, '2017-12-14 02:57:26'),
(28, 152, '2017-12-12', '15.00  selesai', 'Ruang Rapat Direktur Pendanaan Luar Negeri Multilaterat Gedung Baru Lantai 6, Bappenas Jl. Taman Suropati no 2, Jakarta Pusat', 'Pembahasan Penyusunan Rolling Plan Kegiatan yang akan Dibiayai oleh AIIB', 'Direktur Pendanaan Luar Negeri Multilateral', 3, '-', 1, '2017-12-14 02:57:35'),
(29, 154, '2017-12-11', '09.00-10.00 WIB', 'Ruang Rapat Direktorat Alokasi Pendanaan Pembangunan', 'Diskusi Persiapan FGD Finalisasi Framework KPBU-AP', 'Direktur Alokasi Pendanaan Pembangunan', 3, '-', 1, '2017-12-14 02:58:48'),
(30, 158, '2017-12-12', '08.00- 12.30 WIB', 'Ruang Rapat Djunaedi Hadisumarto Gedung Saleh Afiff, Kementerian PPN/Bappenas JL Taman Suropati No.2, Menteng. Jakarta Pusat', 'Public Lecture \"Growth Diagnostics- A New Approach to National Development Strategies\'·', 'Direktur Perencanaan Makro dan Analisis Statistik', 3, '-', 1, '2017-12-14 02:57:48'),
(32, 159, '2017-12-13', '15.30 • selesai', 'Ruang RapatPusat Kebijakan APBN Gedung RM. Nctohamiprojo Lantai 6 JL Dr. Wahidin No.1, Jakarta Pusat', 'Pembahasan Rencana Dukungan PforR Benk Dunia untuk Percepatan Penanganan Stunting', 'BADAN KEBIJAKAN FISKAL PUSAT KEBIJAKAN ANGGARAN PENDAPATAN DAN BELANJA NEGARA', 3, '-', 1, '2017-12-14 02:59:35'),
(33, 163, '2017-12-14', '08.30 - Selesai WITA', 'Grand Jatra Hotel Balikpapan  jl.jend. Sudirman No. 47, Balikpapan', 'Dalam rangka pelaksanaan Program Kerja Sama Pertumbuhan Ekonomi Hijau (Green Growth Program) antara Kementerian PPN/Bappenas dengan Global Green Growth Institute (GGGl),', 'Direktur Sumber Daya Energi, Mineral dan Pertambangan', 3, '-', 11, '2017-12-18 01:32:28'),
(34, 161, '2017-12-14', '08.00- 17.30 WIB', 'Hotel Borobudur, Hotel Borobudur, Jl. Lapangan Banteng Selatan No.1, Jakarta Pusat', 'Asia Pacific Leaders Forum (APLF) on Open Government', 'Direktur Aparatur Negara', 3, 'registrasi dimulai pada pukul 07.00 WI B', 11, '2017-12-18 01:32:42'),
(38, 170, '2017-12-22', '13.00 WIB s/d selesai', 'Ruang Rapat Dit. PPLP, Gedung Cipta Karya Lt. 7 Jl. Pattimura No. 20, Kebayoran Baru, Jakarta Selatan', 'Wrap Up Meeting Kunjungan Tim Supervision Mission Islamic Development Bank (IDB) Kegiatan Sanitasi Berbasis Masyarakat (SANIMAS)', 'DIREKTORAT PENGEMBANGAN PENYEHATAN LINGKUNGAN PERMUKIMAN, KEMENTERIAN PEKERJAAN UMUM DAN PERUMAHAN RAKYAT', 3, '-', 1, '2017-12-27 03:40:45'),
(40, 171, '2017-12-18', '13.00 WIB s/d selesai', 'Ruang Rapat Dit. PPLP, Gedung Cipta Karya Lt. 7 Jl. Pattimura No. 20, Kebayoran Baru, JakartaSelatan', 'Kick Off iYJeeting Kunjungan Tim Supervision Mission Islamic Development Bank (IDB) Kegiatan Sanitasi Berbasis Masyarakat (SANIMAS)', 'DIREKTORAT PENGEMBANGAN PENYEHATAN LINGKUNGAN PERMUKIMAN, KEMENTERIAN PEKERJAAN UMUM DAN PERUMAHAN RAKYAT', 3, '-', 11, '2017-12-13 02:57:40'),
(42, 173, '2017-12-14', '08.30- 12.00 WIB', 'Ruang Rapat Downing 3, Hotel Ashley,', 'Workshop Tinjauan dan Analisis Pendanaan Prioritas', 'Dir Alokasi Pendanaan Pembangunan', 3, 'Hasil dari tinjauan dan analisa tersebut nantinya akan menjadi salah satu masukan dalam penyusunan RKP 2019.', 11, '2017-12-18 01:32:55'),
(43, 182, '2017-12-14', '09.00 s.d. Selesai', 'Ruang Rapat Oria 2 Hotel Oria', 'Pembahasan Laporan Kegiatan Direktorat Perencanaan dan Pengembangan Pendanaan Pembangunan', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', 3, 'Agenda Terlampir', 11, '2017-12-18 01:33:07'),
(44, 184, '2017-12-17', '08.00 WIB s/d Selesai', 'Hotel Royal Ambarukmo, Yogyakarta- DIY Jalan laksda Adisucipto no. 81, Sleman DIY', 'Teechnical Commite (TC) dan Sterring  Committe (SC)', 'Sekretaris Kementerian PPN/Sestama Bappenas', 3, 'Acara Dilaksanakan dari tanggal 17-19 Desember 2017', 11, '2017-12-18 01:34:15'),
(45, 186, '2017-12-22', 'Pukul 09.00 Selesai', 'Ruang Rapat DH 1-5 Gedung Saleh Afif', 'Presentasi QSQL (Quick Share for Quick Learn) hasil pelatihan training untuk peningkatan kualitas Perecanaan Pembangunan di Kementerian PPN/Bappenas', 'Kepala Biro Sumber Daya Manusia', 3, 'Waktu Rapat berubah menjadi jam 13.30 s/d Selesai', 1, '2017-12-27 03:40:59'),
(47, 186, '2017-12-22', 'Pukul 09.00 Selesai', 'Ruang Rapat DH 1-5 Gedung Saleh Afif', 'presentasi QSQL (Quick Share for Quick Learn) hasil pelatihan training untuk peningkatan kualitas Perecanaan Pembangunan di Kementerian PPN/Bappenas', 'Kepala Biro Sumber Daya Manusia', 3, '-', 1, '2017-12-27 03:41:10'),
(49, 226, '2017-12-27', '09.30 s/d Selesai', 'Ruang Rapat Ruang Rapat DH 1-5 Gedung Widjojo Nitisastro', 'Presentasi QSQL (Quick Share for Quick Learn) hasil studi gelar dan non gelar pegawai di Kementerian PPN/Bappenas', 'Kepala Biro Sumber Daya Manusia', 3, '-', 11, '2017-12-28 02:11:58'),
(50, 230, '2017-12-21', '12.00 WIB s.d selesai', 'Ruang Rapat Djunaedi Hadisumarto 1-2, Gedung Saleh Afiff', 'Rapat Pimpinan Kementerian PPN/Bappenas', 'Sekretaris Kementerian PPN/Sekretaris Utama Bappenas', 3, 'didahului santap siang dengan agenda\r\n1. Arahan Menteri\r\n2. Persiapan penyusunan RKP 2019\r\n3. Laporan Deputi/Sahli terkait kegiatan 2017 dan Rencana Kegiatan Tahun 2018\r\n4. Laporan Big Data', 1, '2017-12-27 03:40:33'),
(51, 231, '2017-12-22', '08.00 WIB s/d Selesai', 'Gedung Dhanapala Kementerian Keuangan', 'Forum Kebijakan Tingkat Pimpinan Unit Eselon I K/L\r\nterkait Pembiayaan Proyek lnfrastruktur Melalui SBSN', 'DIREKTORAT JENDERAL PENGELOLAAN PEMBIAYAAN DAN RISIKO DIREKTORAT PEMBIAYAAN SYARIAH', 3, '-', 1, '2017-12-27 03:41:24'),
(52, 234, '2017-12-27', '10.00 s/d 12.00', 'Ruang Direktur Perencanaan dan Pengembangan Pembangunan', 'Pembahasan Pengembangan Sistem lnformasi Direktorat Renbang PP', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', 3, '-', NULL, '2017-12-27 08:33:17'),
(53, 244, '2018-01-04', '09.00 WIB s.d. selesai', 'Ruang Rapat Djunaedi Hadisumarto 1-5, Kementerian PPN/Bappenas Jl. Taman Suropati No. 2 Menteng, Jakarta Pusat', 'pertemuan Konsultasi Publik Rancangan Peraturan Menteri PPN/Kepala Bappenas tentang Tata Cara Penyusunan Rencana Kerja Pemerintah', 'Sekretaris Kementerian PPN/Sestama Bappenas', 2, '-', 11, '2017-12-22 08:28:35'),
(54, 269, '2017-12-28', '09.00-14.00 WIB', 'Ruang Rapat Utama 2 - Kementrian PPN/Bappenas', 'Koordinasi penyusunan Naskah Akademik Talenta Indonesia', 'Dir. Aparatur Negara', 2, '-', 11, '2017-12-27 09:48:26'),
(55, 244, '2018-01-04', '09.00 Wib s/d Selesai', 'Ruang Rapat Djunaedi Hadisumarto 1-5, Kementerian PPN/Bappenas', 'pertemuan Konsultasi Publik Rancangan Peraturan Menteri PPN/Kepala Bappenas tentang Tata Cara Penyusunan Rencana Kerja Pemerintah', 'Sekretaris Kementerian PPN/Sestama Bappenas', 2, '-', 11, '2018-01-02 04:00:04'),
(56, 281, '2018-01-05', '14.00- selesai', 'Ruang Rapat Turbin Gedung Kementerian Perindustrian Lt. 11 Jl. Jenderal Gatot Subroto Kav. 52-53', 'Rapat pembahasan tidak lanjut Nota Kesepahaman tentang Studi Bersama dan Sosialisasi Penggunaan Mobillistrik antara Mitsubishi Motors Corporation dan Kementerian Perindustrian serta pelaksanaan importasi hibah 10 (sepuluh) unit kendaraan dan 4 (empat) unit charging station', 'Direktorat Jenderal Industri Logam, Mesin, alat Transfortasi dan Elektronika, Kementerian Perindustrian', 2, '-', 11, '2018-01-04 02:21:08'),
(57, 282, '2018-01-15', 'Pukul 13.00- 15.00', 'Gedung Pusdiklatwas BPKP Jalan Beringin II Pandan Sari, Ciawi, Bogor', 'Diklat Audit Pinjaman dan Hibah Luar Negeri (PHLN) tahun 2018', 'DIREKTORAT PENGAWASAN PINJAMAN DAN BANTUAN LUAR NEGERI, BPKP', 2, 'Rapat dilaksanakan dua kali 15 Januari 2018 dan 22 Januari 2018', 11, '2018-01-04 02:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `irena_agenda_user`
--

CREATE TABLE `irena_agenda_user` (
  `id` int(11) NOT NULL,
  `id_agenda` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_agenda_user`
--

INSERT INTO `irena_agenda_user` (`id`, `id_agenda`, `id_user`) VALUES
(1, 1, 3),
(2, 1, 15),
(3, 2, 22),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 2, 5),
(8, 2, 6),
(9, 2, 7),
(10, 2, 8),
(11, 2, 9),
(12, 2, 1),
(13, 2, 11),
(14, 2, 12),
(15, 2, 10),
(16, 2, 13),
(17, 2, 14),
(18, 2, 15),
(19, 2, 16),
(20, 2, 17),
(21, 2, 18),
(22, 2, 19),
(23, 2, 20),
(24, 3, 22),
(25, 3, 5),
(26, 5, 4),
(27, 5, 1),
(28, 6, 10),
(29, 6, 11),
(30, 7, 22),
(31, 7, 2),
(32, 7, 3),
(33, 7, 4),
(34, 7, 5),
(35, 7, 6),
(36, 7, 7),
(37, 7, 8),
(38, 7, 9),
(39, 7, 10),
(40, 7, 1),
(41, 7, 11),
(42, 7, 12),
(43, 7, 13),
(44, 7, 14),
(45, 7, 15),
(46, 7, 16),
(47, 7, 17),
(48, 7, 18),
(49, 7, 19),
(50, 7, 20),
(51, 9, 3),
(54, 11, 3),
(55, 11, 6),
(56, 11, 17),
(57, 15, 2),
(58, 15, 15),
(59, 17, 22),
(60, 20, 22),
(61, 20, 4),
(62, 20, 5),
(63, 20, 6),
(64, 20, 7),
(65, 20, 2),
(66, 20, 3),
(67, 18, 5),
(68, 22, 3),
(69, 22, 15),
(70, 21, 22),
(71, 21, 2),
(72, 21, 3),
(73, 21, 4),
(74, 21, 5),
(75, 21, 6),
(76, 21, 7),
(77, 29, 22),
(78, 29, 3),
(79, 29, 7),
(82, 43, 2),
(83, 43, 3),
(84, 43, 4),
(85, 43, 5),
(86, 43, 6),
(87, 43, 7),
(88, 43, 8),
(89, 43, 9),
(90, 43, 10),
(91, 43, 1),
(92, 43, 11),
(93, 43, 12),
(94, 43, 13),
(95, 43, 14),
(96, 43, 15),
(97, 43, 16),
(98, 43, 17),
(99, 43, 18),
(100, 43, 19),
(101, 43, 20),
(102, 52, 22),
(103, 52, 2),
(104, 52, 3),
(105, 52, 4),
(106, 52, 5),
(107, 52, 6),
(108, 52, 7),
(109, 52, 8),
(110, 52, 9),
(111, 52, 10),
(112, 52, 1),
(113, 52, 11),
(114, 52, 12),
(115, 52, 13),
(116, 52, 14),
(117, 52, 15),
(118, 52, 16),
(119, 52, 17),
(120, 52, 18),
(121, 52, 19),
(122, 52, 20);

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip`
--

CREATE TABLE `irena_arsip` (
  `id` int(11) NOT NULL,
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
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip`
--

INSERT INTO `irena_arsip` (`id`, `id_jenis`, `id_status`, `id_tingkat`, `no`, `perihal`, `dari`, `tgl`, `ringkasan`, `keywords`, `berkas`, `tgl_terima`, `selesai_cat`, `selesai_by`, `selesai_date`, `update_by`, `update_date`) VALUES
(62, 1, 2, 3, 'S-85/MK.8/2017', 'Permohonan Bahan Penyusunan Prospectus Dalam Rangka Penerbitan Surat Utang Negara Valuta Asing untuk Pembiayaan Defisit APBN Tahun 2018', 'Menteri Keuangan', '2017-08-22', '-', '-', NULL, '2017-08-29', 'Sesuai dengan arahan Ibu Direktur.', 1, '2017-11-06 00:00:00', 1, '2017-11-06 18:42:41'),
(76, 1, 1, 3, 'B-0407/PTRI-NEWYORK/171026', 'Laporan Pertemuan G20 Development Working Group (DWG) Workshop on Sustainable Development and Inclusive Globalisation Meeting di New York, Amerika Serikat, 16-17 Oktober 2017', 'KUAI PTRI New York', '2017-10-10', 'G20 DWG Workshop merupakan kegiatan untuk mendiskusikan berbagai masukan dan rekomendasi dari dari apa yang telah dicapai pada Presidensi Jerman 2017 terkait isu Pembangunan untuk mendukung pencapaian agenda 2030, serta harapan dan tindak lanjut pembahasan di tingkat DWG pada Presidensi Argentina 2018.\r\nArgentina saat ini belum memfinalisasi prioritasnya, namun secara umum akan membahas isu kesehatan, pendidikan, anti korupsi, pertanian, energi, perubahan iklim,ketenagakerjaan, digitalisasi, perdagangan, investasi, dan infrastruktur', 'Laporan Pertemuan G20 Development Working Group (DWG) Workshop on Sustainable Development and Inclusive Globalisation Meeting di New York, Amerika Serikat, 16-17 Oktober 2017', '2017-10-10-8-0407_PTRI-NEWYORK_171026_Laporan_Pertemuan_G20_(DWG)_Workshop_on_Sustainable_Development_and_Inclusive_Globalisation_Meeting_di_New_York,Amerika_Serikat,_16-17_Oktober_2017.pdf', '2017-10-31', NULL, NULL, NULL, 11, '2017-11-07 11:03:55'),
(77, 1, 1, 3, '270/D.8.ND/11/2017', 'Penyampaian Usulan Kajian Strategis dan Policy Paper Lingkup Kedeputian Bidang Pendanaan Pembangunan Tahun 2018', 'Deputi Bidang Pendanaan', '2017-11-02', 'Penyampaian Usulan KaJian Strategis dan Policy Paper Lingkup Kedeputian Bidang Pendanaan Pembangunan Tahun 2018', 'Penyampaian Usulan KaJian Strategis dan Policy Paper Lingkup Kedeputian Bidang Pendanaan Pembangunan Tahun 2018', '2017-11-02-270_D.8.ND_11_2017_Penyampaian_Usulan_Kajian_Strategis_dan_Policy_Paper_Lingkup_Kedeputian_Bidang_Pendanaan_Pembangunan_Tahun_20181.pdf', '2017-11-02', NULL, NULL, NULL, 11, '2017-11-07 11:04:41'),
(78, 1, 2, 3, 'UND-456/AG .4/20 17', 'Undangan Rapat Realokasi Pembangunan Gedung KUA dari Kabupaten Belu NTT ke Kota Bitung Sulawesi Utara', 'Kementerian Keuangan', '2017-11-01', 'Undangan Rapat Realokasi Pembangunan Gedung KUA dari Kabupaten Belu NTT ke Kota Bitung Sulawesi Utara\r\nHari, tanggal        : Rabu, 1 November 2017\r\nJam                        : 14.00 WIB s.d. selesai\r\nTempat                 : Ruang Rapat DJA, Gedung Sutikno Slamet Jl. Wahidin Raya No.1, Jakarta Pusat, 10710', 'Undangan Rapat Realokasi Pembangunan Gedung KUA dari Kabupaten Belu NTT ke Kota Bitung Sulawesi Utara', '2017-11-01-UND-456_AG.4_2017_Undangan_Rapat_Realokasi_Pembangunan_Gedung_KUA_dari_Kabupaten_Belu_NTT_ke_Kota_Bitung_Sulawesi_Utara.pdf', '2017-11-01', NULL, NULL, NULL, 11, '2017-12-22 02:10:18'),
(79, 1, 2, 3, 'UND-96/D.I.M.EKON/ 10/2017', 'FGD Alternatif Pembiayaan Infrastruktur an tara lain melalui Credit Enhancement, Obligasi Daerah, dan Green Infrastructure Financing', 'Kemenko Perekonomian', '2017-10-24', 'FGD Alternatif Pembiayaan Infrastruktur an tara lain melalui Credit Enhancement, Obligasi Daerah, dan Green Infrastructure Financing\r\nHari/Tanggal   : Kamis, 2 November 2017\r\nWaktu          : 09.00 WIB- selcsai\r\nTempat         : Ruang Sera.yu Lt3 - Gedung Ali Wardhana Jl. Lapangan Banteng Timur No.2-4. Jakarta Pusat.\r\nPimpinan Rapat : Deputi Koordinasi Bidang Ekonomi Makro dan Keuangan\r\nAgenda         : 1. AltematifPembiayaan Infrastruktur antar lain melalui credit enhancement. Obligasi Daerah, dan green infrastruclure financing\r\n                 2. Sharing knowledged tentang municipal financing di IndiaPermohonan Sebagai Narasumber Dalam rangka mendapalkan masukan bagi penyempurnaan proses perencanaan dan penetapan pinjaman luar negeri yang diteruskan sebagai hibah kepada Pemda,', 'FGD Alternatif Pembiayaan Infrastruktur an tara lain melalui Credit Enhancement, Obligasi Daerah, dan Green Infrastructure Financing', '2017-10-24-UND-96_D.I.M.EKON_10_2017_FGD_Alternatif_Pembiayaan_Infrastruktur_an_tara_lain_melalui_Credit_Enhancement,_Obligasi_Daerah,_dan_Green_Infrastructure_Financing.pdf', '2017-11-07', 'hadir', 3, '2017-11-16 00:00:00', 11, '2017-11-07 12:38:35'),
(80, 1, 1, 2, 'S-792/PR/2017', 'Perjanjian Realisasi Pinjaman Dalam Negeri (PDN) Tahun Anggaran 2016 antara Pemerintah Indonesia dan PT. Bank Negara Indonesia (Persero), Tbk. - untuk kegiatan pada Kementerian Pertahanan yaitu Pengadaan Platform KCR; Pengadaan Pesud MPA (Full Mission); d', 'DITJEN PENGELOLMN PEMBIAYAAN DAN RISIKO', '2017-10-26', 'Perjanjian Realisasi Pinjaman Dalam Negeri (PDN) Tahun Anggaran 2016 antara Pemerintah Indonesia dan PT. Bank Negara Indonesia (Persero), Tbk. - untuk kegiatan pada Kementerian Pertahanan yaitu Pengadaan Platform KCR; Pengadaan Pesud MPA (Full Mission); dan Pengadaan Full Combat Mission untuk Heli AKS.', 'Perjanjian Realisasi Pinjaman Dalam Negeri (PDN) Tahun Anggaran 2016 antara Pemerintah Indonesia dan PT. Bank Negara Indonesia (Persero), Tbk', '2017-10-26-S-792_PR_2017_Perjanjian_(PDN)_TA_2016_antara_RI_dan_PT._BNI_(Persero),_Tbk.-_kegiatan_Kementerian_Pertahanan_yaitu_Pengadaan_Platform_KCR__Pesud_MPA_Full_Combat_Mission_untuk_Heli_AK.pdf', '2017-10-26', NULL, NULL, NULL, 11, '2017-11-07 12:49:16'),
(81, 1, 1, 3, '272/D.B.ND/11/2017 dan 350/D.3.ND/11/2017', 'Laporan Pelaksanaan Pertemuan the 6t11 Session of the Assembly and 10th Session ofthe Council ofGGGI di Addis Ababa, Ethiopia', 'D 8 DAN DEPUTI BIDANG KEMARITIMAN DAN SDA', '2017-11-07', 'Laporan Pelaksanaan Pertemuan the 6t11 Session of the Assembly and 10th Session of the Council of GGGI di Addis Ababa, Ethiopia', 'Laporan Pelaksanaan Pertemuan the 6t11 Session of the Assembly and 10th Session of the Council of GGGI di Addis Ababa, Ethiopia', '2017-11-07-272_D.8.ND_11_2017_350_D.3.ND_11_2017_Laporan_Pelaksanaan_Pertemuan_the_6t11_Session_of_the_Assembly_and_10th_Session_ofthe_Council_ofGGGI_di_Addis_Ababa,_Ethiopia.pdf', '2017-11-07', NULL, NULL, NULL, 11, '2017-11-07 13:00:04'),
(82, 1, 2, 3, '302/I.02.ND/11/2017', 'Rapat Koordinasi dan Konfirmasi terkait Kebijakan Pengadaan Alutsista dengan Pembiayaan Pinjaman Luar Negeri dengan BPK', 'IBKK', '2017-11-01', 'Rapat Koordinasi dan Konfirmasi terkait Kebijakan Pengadaan\r\nAlutsista dengan Pembiayaan Pinjaman Luar Negeri dengan BPK\r\nHari/Tanggal : Senin, 6 November 2017\r\nWaktu             : 16.00 WIB selesai\r\nTempat           : Ruang lnspektur Bidang Kinerja Kelembagaan, Gedung Baru Lantai 5, Kementerian PPN/Bappenas.', 'Rapat Koordinasi dan Konfirmasi terkait Kebijakan Pengadaan Alutsista dengan Pembiayaan Pinjaman Luar Negeri dengan BPK', '2017-11-01-302_I.02.ND_11_2017_Rapat_Koordinasi_dan_Konfirmasi_terkait_Kebijakan_Pengadaan_Alutsista_dengan_Pembiayaan_Pinjaman_Luar_Negeri_dengan_BPK.pdf', '2017-11-01', 'sudah hadir dalam pertemuan . Materi paparan dan dokumentasi yang diminta disiapkan oleh Dit. hankam. Koordinasi dengan BPK melalui IBKK.', 3, '2017-12-04 00:00:00', 11, '2017-11-07 13:03:31'),
(83, 1, 1, 3, '473/Dt.8.4.ND/11/2017', 'Usulan Kegiatan Arise Plus Indonesia', 'Direktur Pendanaan Luar Negeri Multilateral', '2017-11-03', 'Usulan Kegiatan Arise Plus Indonesia bersama ini kami sampaikan beberapa hal sebagai berikut:\r\n1. Kegiatan tersebut akan dibiayai dengan hibah dari Uni Eropa sebesar EUR 10.000.000 dengan durasi selama 5 tahun (2018-2022).\r\n2. Deputi Bidang Ekonomi, Bappenas akan bertindak sebagai executing agency serta Kementerian Perdagangan dan Kementerian Hukum dan HAM sebagai implementing agency.\r\n3. Deputi Bidang Ekonomi Bappenas telah menyampaikan kelengkapan persyaratan usulan yang terdiri dari Daftar Isian Pengusulan Kegiatan (DIPK) dan Dokumen Usulan\r\nKegiatan (DUK) kepada Sekretaris Kementerian PPN/Sekretaris Utama Bappenas melalui Memorandum nomor 403/D.l.M/10/2017 (terlampir)', 'Arise Plus Indonesia', '2017-11-03-473_Dt.8.4.ND_11_2017_Usulan_Kegiatan_Arise_Plus_Indonesia.pdf', '2017-11-03', NULL, NULL, NULL, 11, '2017-11-07 13:14:05'),
(84, 1, 2, 3, '2085/B.02.ND/11/2017', 'Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama (Es. II. b) di Lingkungan Sekretariat Jenderal KPU', 'Plt. Karo SDM', '2017-11-01', 'Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama (Es. II. b) di Lingkungan Sekretariat Jenderal KPU', 'Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama (Es. II. b) di Lingkungan Sekretariat Jenderal KPU', '2017-11-01-2085_B.02.ND_11_2017_Seleksi_Terbuka_Jabatan_Pimpinan_Tinggi_Pratama_(Es._II._b)_di_Lingkungan_Sekretariat_Jenderal_KPU.pdf', '2017-11-01', 'belum berminat', 3, '2017-12-04 00:00:00', 11, '2017-11-07 13:40:10'),
(85, 1, 2, 3, '2086/B.02.ND/ 11/2017', 'Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama (JPT Pratama) di Lingkungan Badan Ekonomi Kreatif (BEKRAF)', 'Plh. Karo SDM', '2017-11-01', 'Seleksi Terbuka Jabatan Pimpinan Tinggi Pratama (JPT Pratama) di Lingkungan Badan Ekonomi Kreatif (BEKRAF)', 'Badan Ekonomi Kreatif (BEKRAF)', '2017-11-01-2086_B.02.ND_11_2017_Seleksi_Terbuka_Jabatan_Pimpinan_Tinggi_Pratama_(JPT_Pratama)_di_Lingkungan_Badan_Ekonomi_Kreatif_(BEKRAF).pdf', '2017-11-01', 'belum berminat', 3, '2017-12-04 00:00:00', 11, '2017-11-07 14:12:49'),
(86, 1, 1, 3, '4731/A.A1/PR/2017', 'Usulan Kegiatan Pinjaman Luar Negeri Kementerian Ristek Dikti', 'Kementerian Ristek Dikti', '2017-10-31', 'Usulan Kegiatan Pinjaman Luar Negeri Kementerian Ristek Dikti\r\n1 Hilirisasi Riset dan Inovasi dalarn Kerangka Teaching Industry : Upaya Strategis menuju Perguruan Tinggi Berkelas Dunia di Institut Teknologi Sepuluh Nopember\r\n2 Pengernbangan Rumah Sakit Universitas Brawijaya\r\n3 Peningkatan Mutu Pendidikan Kedokteran melalui Pembangunan Rumah Sakit PTN dan Research Center Universitas Lampung', 'Usulan Kegiatan Pinjaman Luar Negeri Kementerian Ristek Dikti', '2017-10-31-4731_A.A1_PR_2017_Usulan_Kegiatan_Pinjaman_Luar_Negeri_Kementerian_Ristekdikti.pdf', '2017-11-01', NULL, NULL, NULL, 11, '2017-11-07 14:27:14'),
(87, 1, 2, 3, 'B/1233-03/05/18/Srenaau', 'Daftar Isian Pengusulan Kegiatan Pengadaan Alutsista UO TNI AU Program PDN Tahun 2015-2019', 'Mabes Angkatan Udara', '2017-11-13', 'Daftar Isian Pengusulan Kegiatan Pengadaan Alutsista UO TNI AU Program PDN Tahun 2015-2019', 'Daftar Isian Pengusulan Kegiatan Pengadaan Alutsista UO TNI AU Program PDN Tahun 2015-2019', '2017-11-13-B_1233-03_05_18_Srenaau_Daftar_isian_pengusulan_kegiatan_pengadaan_alutsista_UO_TNI_AU_program_PDN_tahun_2015-2019.pdf', '2017-11-01', '1. Deputi Pendanaan sebagai tembusan, surat disampaikan tanpa lampiran;\r\n2. Berkas lampiran disampaikan kepada Panglima TNI sehingga belum di Bappenas', 4, '2018-01-03 00:00:00', 11, '2017-11-07 14:31:03'),
(88, 2, 2, 3, '241/Dt.8.l.ND/11/2017', 'Laporan Pelaksanaan Pertemuan the 6th Session of the Assembly and 1 Qth Session of the Council ofGGGI di Addis Ababa, Ethiopia', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-11-02', 'Laporan Pelaksanaan Pertemuan the 6th Session of the Assembly and 1 Qth Session of the Council of GGGI di Addis Ababa, Ethiopia', 'GGGI, Adis Ababa', '2017-11-02-241_Dt.8.1.ND_11_2017_Laporan_Pelaksanaan_Pertemuan_the_6th_Session_of_the_Assembly_and_1_Qth_Session_of_the_Council_ofGGGI_di_Addis_Ababa,_Ethiopia.pdf', '2017-11-02', NULL, NULL, NULL, 11, '2017-11-07 15:17:16'),
(89, 2, 2, 3, '240/Dt.8.1.ND/10/2017', 'Pelaksanaan Evaluasi Perencanaan Kegiatan PDN dalam rangka tugas Diklatpim Tingkat III di LAN atas nama Mukhtiali', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-10-27', 'Pelaksanaan Evaluasi Perencanaan Kegiatan PDN dalam rangka tugas Diklatpim Tingkat III di LAN atas nama Mukhtiali', 'Diklatpim Tingkat III di LAN', '2017-10-27-240_Dt.8.1.ND_11_2017_Pelaksanaan_Evaluasi_Perencanaan_Kegiatan_PDN_dalam_rangka_tugas_Diklatpim_Tingkat_III_di_LAN_atas_nama_Mukhtiali.pdf', '2017-11-07', NULL, NULL, NULL, 11, '2017-11-07 15:20:13'),
(90, 2, 2, 3, '242/Dt.8.l.ND/11/2017', 'Daftar Pertanyaan dalam Seleksi Wawancana CPNS Kementerian PPN/Bappenas', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-11-03', 'Daftar Pertanyaan dalam Seleksi Wawancana CPNS Kementerian PPN/Bappenas dalam rangka menjaring aspirasi terhadap kebutuhan kompetensi teknis/bidang minimal yang harus dimiliki oleh kandidat CPNS di unit kerja kami', 'Daftar Pertanyaan dalam Seleksi Wawancana CPNS', '2017-11-03-242_Dt.8.1.ND_11_2017_Daftar_Pertanyaan_dalam_Seleksi_Wawancana_CPNS_Kementerian_PPN_Bappenas.pdf', '2017-11-03', NULL, NULL, NULL, 11, '2017-11-07 15:22:19'),
(91, 2, 2, 3, '243/Dt.8.l.ND/11/2017', 'Tanggapan Terkait Agricultural Value Chain Development Project (Loans) and Inclusive and Climate Resilient Coffee Value Chain (TA)', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-11-06', 'Tanggapan Terkait Agricultural Value Chain Development Project (Loans) and Inclusive and Climate Resilient Coffee Value Chain (TA)', 'Agricultural Value Chain Development Project (Loans) and Inclusive and Climate Resilient Coffee Value Chain (TA),', '2017-11-06-243_Dt.8.1.ND_11_2017_Tanggapan_Terkait_Agricultural_Value_Chain_Development_Project_(Loans)_and_Inclusive_and_Climate_Resilient_Coffee_Value_Chain_(TA).pdf', '2017-11-07', NULL, NULL, NULL, 11, '2017-11-07 15:24:56'),
(92, 2, 2, 3, '244/Dt.8.1.ND/10/2017', 'Tanggapan Surat dari Pit. Direktur Pinjaman dan Hibah Kementerian Keuangan perihal Pengusulan Hibah ADB TA 9391-INO: Knowledge and Support TA for Leveraging Information and Communication Technology for Irrigated Agricultural Information Project-Requested ', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-11-06', 'Tanggapan Surat dari Pit. Direktur Pinjaman dan Hibah Kementerian Keuangan perihal Pengusulan Hibah ADB TA 9391-INO: Knowledge and Support TA for Leveraging Information and Communication Technology for Irrigated Agricultural Information Project-Requested for No.Objection', 'Knowledge and Support TA for Leveraging Information and Communication Technology for Irrigated Agricultural Information Project-Requested for No.Objection', '2017-11-06-244_Dt.8.1.ND_11_2017_Tanggapan_Surat_dari_Pit._Direktur_Pinjaman_dan_Hibah_Kementerian_Keuangan_perihal_Pengusulan_Hibah_ADB_TA_9391-INO.pdf', '2017-11-06', NULL, NULL, NULL, 11, '2017-11-07 15:49:20'),
(93, 2, 2, 3, '245/Dt.8.1.ND/10/2017', 'Konfirmasi atas Progres Rancangan Peraturan Menteri PPN/Kepala Bappenas Tahun 2017', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-11-06', 'Konfirmasi atas Progres Rancangan Peraturan Menteri PPN/Kepala Bappenas Tahun 2017', 'Rancangan Peraturan Menteri PPN/Kepala Bappenas Tahun 2017', '2017-11-06-245_Dt.8.1.ND_11_2017_Konfirmasi_atas_Progres_Rancangan_Peraturan_Menteri_PPN_Kepala_Bappenas_Tahun_2017.pdf', '2017-11-07', NULL, NULL, NULL, 11, '2017-11-07 15:50:43'),
(94, 1, 1, 3, 'B-6808/A2.1/11/2017', 'Permohonan Narasumber', 'BADAN PENGUSAHAAN KAWASAN PERDAGANGAN BEBAS DAN PELABUHAN BEBAS BATAM', '2017-11-06', 'Permohonan Narasumber sosialisasi terkait pendanaan Kerjasama Pemerintah dan Swasta (KPS), skema Pembiayaan lnvestasi Non-Anggaran Pemerintah (PINA) dan pendanaan yang bersumber dari Surat Berharga Syariah Negara (SBSN) serta penjaminannya.', 'Permohonan Narasumber BADAN PENGUSAHAAN KAWASAN PERDAGANGAN BEBAS DAN PELABUHAN BEBAS BATAM', '2017-11-06-B-6808_A2.1_11_2017_Permohonan_Narasumber_(Sosialisasi_Program_Pendanaan_Partnership_BP_Batam).pdf', '2017-11-08', NULL, NULL, NULL, 11, '2017-11-09 09:32:04'),
(95, 1, 1, 3, '9984/Dt.8.3/11/2017', 'Undangan pertemuan untuk membahas proyek Geothermal Seulawah Agam yang dibiayai dari hibah Pemerintah Jerman', 'Bilateral', '2017-11-07', 'Undangan pertemuan untuk membahas proyek Geothermal Seulawah Agam yang dibiayai dari hibah Pemerintah Jerman\r\nHari/ tanggal Kamis, : 16 November 2017\r\nWaktu                          : 13.30 s.d selesai\r\nTempat                       : Ruang Rapat Serba Guna 1-2, Lantai 1, Gedung Bappenas Jalan Taman Suropati No.2, Jakarta', 'Geothermal Seulawah Agam', '2017-11-07-9984_Dt.8.3_11_2017_Undangan_(Membahas_Proyek_Geothermal_Seulawah_Agam_yang_dibiayai_dari_Hibah_Pemerintah_Jerman).pdf', '2017-11-08', NULL, NULL, NULL, 11, '2017-11-09 09:43:08'),
(96, 1, 1, 3, '9980/Dt.8.3/11/2017', 'Undangan Membahas Usulan Proyek ITTS III', 'Dir. Bilateral', '2017-11-09', 'Undangan Membahas Usulan Proyek ITTS III', 'ITTS III', '2017-11-09-9980_Dt.8.3_11_2017_Undangan_Membahas_Usulan_Proyek_ITTS_III.pdf', '2017-11-08', NULL, NULL, NULL, 11, '2017-11-09 09:45:25'),
(97, 1, 1, 3, '2115/8.02.ND/11/2017', 'Kelengkapan Dokumen Peserta Peiatihan SPIRIT untuk Proses Pencairan Anggaran', 'SDM', '2017-11-08', 'Kelengkapan Dokumen Peserta Peiatihan SPIRIT untuk Proses\r\nPencairan Anggaran', 'SPIRIT', '2017-11-08-2115_8.02.ND_11_2017_Kelengkapan_Dokumen_Peserta_Peiatihan_SPIRIT_untuk_Proses_Pencairan_Anggaran.pdf', '2017-11-08', NULL, NULL, NULL, 11, '2017-11-09 09:49:37'),
(98, 1, 1, 3, '1824/Ses.M/11/2017', 'Undangan Peresmian Penamaan Gedung dan Ruang Rapat di Lingkungan Kementerian PPN/Bappenas', 'Plh.Sekretaris Kementerian PPN/Sestama Bappenas', '2017-11-06', 'Undangan Peresmian Penamaan Gedung dan Ruang Rapat di Lingkungan Kementerian PPN/Bappenas\r\nJumat, 10 November 2017 09.00 WIB- Selesai Ruang SG 1 - 5, Kementerian PPN/Bappenas', 'Undangan Peresmian Penamaan Gedung dan Ruang Rapat di\r\nLingkungan Kementerian PPN/Bappenas', '2017-11-06-1824_Ses.M_11_2017_Undangan_Peresmian_Penamaan_Gedung_dan_Ruang_Rapat_di_Lingkungan_Kementerian_PPN_Bappenas.pdf', '2017-11-08', NULL, NULL, NULL, 11, '2017-11-09 09:52:05'),
(99, 1, 1, 3, '307/Dt.4.2.ND/11/2017', 'Permohonan Konfirmasi !sian Matriks RAN SDGs Tujuan 8', 'Direktur Tenaga Kerja dan Perluasan Kesempatan Kerja', '2017-11-08', 'Permohonan Konfirmasi isian Matriks RAN SDGs Tujuan 8\r\nsampaikan bahwa kami telah melakukan perbaikan isian matriks berdasarkan masukan yang telah kami terima dari beberapa direktorat terkait dan kementerianjlembaga mitra.', 'RAN SDGs Tujuan 8', '2017-11-08-307_Dt.4.2.ND_11_2017_Permohonan_Konfirmasi_!sian_Matriks_RAN_SDGs_Tujuan_8.pdf', '2017-11-08', NULL, NULL, NULL, 11, '2017-11-09 09:55:18'),
(100, 1, 2, 3, 'KU 03.01-Db/852', 'Realoksai kegiatan/proyek SBSN project based sukuk T A 2017 di Direktorat Jenderal Bina Marga', 'KEMENTRIAN PU DAN PR', '2017-11-17', 'Realokasi Kegiatan/Proyek Surat Berharga Syariah Negara Project Based Sukuk (SBSN-PBS) TA.2017 di Direktorat Jenderal Bina Marga', '(SBSN-PBS) TA.2017 di Direktorat Jenderal Bina Marga', '2017-11-17-KU_03.01-Db_852_Realoksai_kegiatan_proyek_SBSN_project_based_sukuk_T_A_2017_di_Direktorat_Jenderal_Bina_Marga.pdf', '2017-10-17', 'tess', 11, '2017-12-05 00:00:00', 1, '2017-11-16 11:30:30'),
(101, 1, 2, 3, 'UM.0206-Bp/1258', 'Permohonan Bantuan Nara Sumber untuk Acara Konsolidasi Pelaksanaan Anggaran 2017 dan Persiapan Anggaran 2018 serta Paket-Paket Multi Years Contract yang Dibiayai Melalui SBSN di Lingkungan Ditjen Bina Marga', 'Kementerian PUPR', '2017-11-09', 'Permohonan Bantuan Nara Sumber untuk Acara Konsolidasi Pelaksanaan Anggaran 2017 dan Persiapan Anggaran 2018 serta Paket-Paket Multi Years Contract yang Dibiayai Melalui SBSN di Lingkungan Ditjen Bina Marga', 'Nara Sumber untuk Acara Konsolidasi Pelaksanaan Anggaran 2017 dan Persiapan Anggaran 2018', '2017-11-09-UM.0206-Bp_1258_Permohonan_Bantuan_Nara_Surnber_Acara_Konsolidasi_PA_2017_dan_PA_2018_serta_Paket-2_Multi_Years_Contract_yang_Dibiayai_Melalui_SBSN_di_Lingkungan_Ditjen_Bina_Marga.pdf', '2017-11-13', NULL, NULL, NULL, 11, '2017-12-22 02:11:22'),
(102, 1, 2, 3, '1391/BSN/A0-b1/05/2017', 'Penyampaian Usulan Proyek BSN yang akan dibiayai melalui penerbitan SBSN TA. 2018', 'Kepala BSN', '2017-05-17', '-', '-', '2017-05-17-1391.pdf', '2017-05-22', 'Usulan ini sudah masuk dalam DPP SBSN 2018', 18, '2017-12-04 00:00:00', 1, '2017-11-15 17:47:31'),
(103, 1, 2, 3, '0202/M.PPN/05/2016', 'Usulan Hibah Australia Infrasructure Program 2017-2027', 'Sesmen PPN/Sestama Bappenas', '2016-05-31', '-', '-', '2016-05-31-0202_M.PPN_05_2016-Usulan_Hibah_Australia_Infrastructure_Program_2017-2027_DIPK_DUK.pdf', '2016-05-31', 'Sesuai arahan Direktur-Telah tercantum dalam SK DRKH 2017 pada tanggal 2 Oktober 2017', 12, '2017-12-04 00:00:00', 17, '2017-11-16 11:02:13'),
(104, 1, 2, 3, '9980/Dt.8.3/11/2017', 'Pembahasan Proyek ITTS III (15 November 2017)', 'Dit. PLN Bilateral', '2017-11-07', 'Pembahasan mengenai tindak lanjut pinjaman ITTS III karena Presiden Jokowi telah bertemu Presiden Perancis dan Perdana Menteri Jepang, adapun tersedia banyak lender yang berminat yaitu Spanyol, perancis, us exim, JICA', 'Rencana tindak lanjut ITTS III', '2017-11-07-9980_Dt.8.3_11_2017_Pembahasan_Proyek_ITTS_III_(15_November_2017).pdf', '2017-11-14', 'rapat ,,', 6, '2017-12-04 00:00:00', 17, '2017-11-16 10:38:54'),
(105, 1, 2, 3, '25/Dt.8.5.ND/06/2016', 'Penyampaian Hasil Penilaian Kelayakan Teknis Usulan Hibah Australia Infrastructure Program', 'Direktur Sistem dan Prosedur Pendanaan Pembangunan', '2016-06-30', '-', '-', '2016-06-30-25_Dt.8.5.ND_06_2016_Penyampaian_Hasil_penilaian_kelayakan_teknis_usulan_hibah_australia_infrastructure_program.pdf', '2016-06-30', NULL, NULL, NULL, 12, '2017-11-16 11:03:55'),
(106, 1, 2, 3, 'Und-2017/PR/2017', 'Undangan Rapat', 'Dirjen PPR, Kemkeu', '2017-11-20', '-', '-', '2017-11-20-Surat.pdf', '2017-11-30', 'Tidak hadir', 1, '2017-11-30 00:00:00', 1, '2017-11-30 14:50:14'),
(107, 1, 1, 3, '10955/D.7.5/11/2017', 'Undangan Rapat Dalam rangka melakukan penilaian kesiapan pe!aksanaan atas rencana kegiatan Pinjaman Dalam Negeri (PDN) Tahun 2018', 'Dir. Hankam', '2017-11-27', 'Undangan Rapat Dalam rangka melakukan penilaian kesiapan pe!aksanaan atas rencana kegiatan Pinjaman Dalam Negeri (PDN) Tahun 2018 sebagaimana yang diamanatkan dalam Permen PPN Nomor 1 Tahun 2009 serta menindaklanjut Kick-Off Meeting pada tanggal 22 November 2017', 'Undangan Rapat Dalam rangka melakukan penilaian kesiapan pe!aksanaan atas rencana kegiatan Pinjaman Dalam Negeri (PDN) Tahun 2018', '2017-11-27-Dalam_rangka_melakukan_penilaian_kesiapan_pe!aksanaan_atas_rencana_kegiatan.pdf', '2017-11-28', NULL, NULL, NULL, 11, '2017-12-04 10:54:41'),
(108, 1, 1, 3, '517/D.8.4.ND/II/2017', 'Permohonan Informasi Kegiatan untuk dapat Diusulkan Melalui Pinjaman Asian Infrastructure Investment Bank (AIIB)', 'Direktur Pendanaan Luar Negeri Multilateral', '2017-11-30', 'Permohonan Informasi Kegiatan untuk dapat Diusulkan Melalui Pinjaman Asian Infrastructure Investment Bank (AIIB)\r\nProyek yang Diajukan ke AIIB\" (surat terlampir) terkait dengan usulan kegiatan sebagai berikut:\r\n1. National Road Improvement in North and East Kalimantan (Kementerian Pekerjaan Umum dan Perumahan Rakyat), dan\r\n2. Trans Sulawesi Development Plan Phase I (Kementerian Perhubungan)', 'Asian Infrastructure Investment Bank (AIIB)', '2017-11-30-517_D.8.4.ND_11_2017_Permohonan_Informasi_Kegiatan_untuk_dapat_Diusulkan_Melalui_Pinjaman_Asian_Infrastructure_Investment_Bank_(AIIB).pdf', '2017-12-04', NULL, NULL, NULL, 11, '2017-12-04 13:23:49'),
(109, 1, 2, 3, 'UND-236/PR7/2017', 'Undangan Penyusunan Penetapan Sumber Pembiayaan untuk Kementerian Pertahanan Tahun 2017', 'Dir Strategi dan Fortofolio Pembiayaan, Kementerian Keuangan', '2017-11-30', 'Undangan Penyusunan Penetapan Sumber Pembiayaan untuk Kementerian Pertahanan Tahun 2017\r\nHari/tanggal	: Kamis/7 Desember 2017\r\nWaktu 		: 14.00 Wl8- selesai\r\nTempat		: R. R. Portofolio,Gd. Frans Seda Lt. 8, DJPPR\r\nAgenda		: Jalan Dr. Wahidin Raya No. 1 Jakarta Pusat Pembahasan Penyusunan Penetapan Sumber Pembiayaan untuk Kementerian Pertahanan Tahun 2017.', 'penyusunan Penetapan Sumber Pembiayaan (PSP),', '2017-11-30-UND-236_PR7_2017_Undangan_Penyusunan_Penetapan_Sumber_Pembiayaan_untuk_Kementerian_Pertahanan_Tahun_2017.pdf', '2017-12-04', 'sudah dihadiri dan terdapat catatn hasil rapat (copy catatan ada di Yustin)', 5, '2018-01-03 00:00:00', 11, '2017-12-04 13:12:52'),
(110, 2, 2, 3, '235/Dt.8.1.ND/10/2017', 'Permohonan Tanggapan atas Penyusunan Permen PPN/Kepala Bappenas tentang Perencanaan dan Pemantauan Proyek yang Dibiayai melalui Surat Berharga Syariah Negara (SBSN)', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-10-13', 'Permohonan Tanggapan atas Penyusunan Permen PPN/Kepala Bappenas tentang Perencanaan dan Pemantauan Proyek yang Dibiayai melalui Surat Berharga Syariah Negara (SBSN)', 'Permintaan masukan dan tanggapan Sektor terkait undangan  terhadap penyusunan Permen PPN/Kepala Bappenas tentang Perencanaan dan Pemantauan Proyek yang Dibiayai melalui SBSN', '2017-10-13-235_Dt.8.1.ND_10_2017_Permohonan_tanggapan_alas_penyusunan_permen_PPN_Kepala_Bappenas_tentang_perencanaan_dan_pemantauan_Proyek_yg_dibiayai_SBSN.pdf', '2017-10-13', NULL, NULL, NULL, 11, '2017-12-04 13:21:40'),
(111, 1, 1, 3, '050/1434/437.71/2017', 'Permohonan Menjadi Nara Sumber', 'KEPALA BADAN PERENCANAAN, PEMBANGUNAN, PENELITIAN DAN PENGEMBANGAN DAERAH KABUPATEN GRESIK', '2017-11-21', 'Permohonan Menjadi Nara Sumber (Pemahaman Konsep dan Peran KBL/CSR yang Tepat antara Perusahaan bersama Pemerintah dalam Kolaborasi yang terbuka', 'Permohonan Menjadi Nara Sumber (Pemahaman Konsep dan Peran KBL/CSR yang Tepat antara Perusahaan bersama Pemerintah dalam Kolaborasi yang terbuka', '2017-11-21-050_1434_437.71_2017_Permohonan_Menjadi_Nara_Sumber_(Pemahaman_Konsep_dan_Peran_KBL_CSR_yang_Tepat_antara_Perusahaan_bersama_Pemerintah_dalam_Kolaborasi_yang_Terbuka.pdf', '2017-11-24', NULL, NULL, NULL, 11, '2017-12-04 13:34:33'),
(112, 2, 1, 3, '11126/Dt.8.1/11/2017', 'Pembahasan Rancangan Peraturan Menteri PPN/Kepala Bappenas tentang Perencanaan Proyek melalui Penerbitan Surat Berharga Syariah Negara - Project Based Sukuk (SBSN-PBS)', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-11-29', 'Pembahasan Rancangan Peraturan Menteri PPN/Kepala Bappenas tentang Perencanaan Proyek melalui Penerbitan Surat Berharga Syariah Negara - Project Based Sukuk (SBSN-PBS)\r\nHari/tanggal	: Rabu, 6 Desember 2017\r\nWaktu		: 09.00 s.d. Selesai .\r\nTempat		: Hotel Double Tree, Jl. Pegangsaan Timur No. 17 Cikini-Menteng Jakarta Pusat\r\nAgenda 		: Mendapatkan masukan hal penting dalam pelaksanaan proyek SBSN yang sedang berjalan, serta perbaikan proses perencanaan yang akan datang.\r\n..', 'Pembahasan Rancangan Peraturan Menteri PPN/Kepala Bappenas tentang Perencanaan Proyek melalui Penerbitan Surat Berharga Syariah Negara - Project Based Sukuk (SBSN-PBS)', '2017-11-29-11126_Dt.8.1_11_2017_Pembahasan_Rancangan_penyusunan_Permen_PPN_Kepala_Bappenas_tentang_Perencanaan_Melalui_Penerbitan_SBSN-PBS.pdf', '2017-11-29', NULL, NULL, NULL, 11, '2017-12-04 13:59:33'),
(113, 1, 2, 3, '11271/Dt.8.5/12/2017', 'Penyusunan awal rencana Kerja Kementerian Lembaga ( Renja ,K/L) Tahun 2019', 'Dir Sisdur', '2017-12-04', 'Data Awal Penyusunan awal rencana Kerja Kementerian Lembaga ( Renja ,K/L) Tahun 2019 Mengacu pada  rencana Kerja Kementerian Lembaga ( Renja ,K/L) Tahun 2018 yang tertuang dalam aplikasi KRISHNA\r\nDiselesaikan Selambat Lambatnya tanggal 17 Desember 2017', 'Penyusunan awal rencana Kerja Kementerian Lembaga ( Renja ,K/L) Tahun 2019', '2017-12-04-11271_Dt.8.5_12_2017_Penyusunan_Awal_Rencana_Kerja_Kementerian_Lembaga_(Renja_K_L)_Tahun_2019.pdf', '2017-12-04', 'Dit. Renbang PP tidak memiliki mitra kerja K/L', 3, '2018-01-03 00:00:00', 11, '2017-12-04 14:43:49'),
(114, 1, 2, 3, '11290/Dt.2.4/ 12/2017', 'Undangan Pembahasan Perpanjangan Loan Small Scale Water Treatment Plant for Emergency Relief', 'Direktur Perkotaan, Perumahan dan Permukiman', '2017-12-04', 'Undangan Pembahasan Perpanjangan Loan Small Scale Water Treatment Plant for Emergency Relief\r\nHari/Tanggal	: Kamis, 7 Desember 2017\r\nWaktu		: 13.00-15.30\r\nTempat 		: Ruang Rapat SS-1&2,Gedung TS-2A, Bappenas Jalan Taman Suropati No. 2, Menteng, Jakarta Pusat', 'Undangan Pembahasan Perpanjangan Loan Small Scale Water Treatment Plant for Emergency Relief', '2017-12-04-11290_Dt.2.4_12_2017_Undangan_Pembahasan_Perpanjangan_Loan_Small_Scale_Water_Treatment_Plantfor_Emergency_Relief.pdf', '2017-12-04', 'Rapat telah di hadiri', 6, '2018-01-02 00:00:00', 11, '2017-12-05 01:46:44'),
(115, 1, 1, 3, 'PUBLIC LECTURE', 'PUBLIC LECTURE on \"GROWTH DIAGNOSTICS-A NEW APPROACH TO NATIONAL DEVELOPMENT STRATEGIES\"', 'Minister of National Development Planning/Head of BAPPENAS', '2017-12-05', 'PUBLIC LECTURE on \"GROWTH DIAGNOSTICS-A NEW APPROACH TO NATIONAL DEVELOPMENT STRATEGIES\"\r\nby\r\nProf. Ricardo Hausmann\r\non\r\n• Tuesday, 12 December 2017\r\nat\r\nDjunaedi Hadisumarto Room, Saleh Afiff Building\r\nMinistry of National Development Planning/BAPPENAS\r\nJl. Taman Suropati No. 2, Menteng, Jakarta Pusat', 'PUBLIC LECTURE on \"GROWTH DIAGNOSTICS-A NEW APPROACH TO NATIONAL DEVELOPMENT STRATEGIES\"', '2017-12-05-PUBLIC_LECTURE_on_GROWTH_DIAGNOSTICS-A_NEW_APPROACH_TO_NATIONAL_DEVELOPMENT_STRATEGIES.pdf', '2017-12-05', NULL, NULL, NULL, 11, '2017-12-05 04:50:54'),
(116, 1, 2, 3, '939/B.04.ND/11/2017', 'Permohonan Koreksi TOR dan RAB Kegiatan Unit Kerja Tahun 2018', 'Kepala Biro Renortala', '2017-11-30', 'Permohonan mengoreksi kembali TOR/RAB Kegiatan Unit Kerja Tahun 2018\r\n1. Rekap Anggaran UKE 1111 sampai dengan level Sub Komponen Tahun 2018 berdasarkan RKA-KL Tahun 2018 yang telah ditelaah DJA pada awal November 2017.\r\n2. TOR dan RAB Kegiatan UKE I/II Tahun 2018 dalam bentuk file.', 'Permohonan Koreksi TOR dan RAB Kegiatan Unit Kerja Tahun 2018', '2017-11-30-939_8.04.ND_11_2017_Permohonan_Koreksi_TOR_dan_RAB_Kegiatan_Unit_Kerja_Tahun_2018.pdf', '2017-12-05', 'TOR telah disampaikan kepada Biro Ortala', 4, '2018-01-03 00:00:00', 11, '2017-12-05 06:41:42'),
(117, 1, 1, 3, '299 & 300/GGGI/II/17', 'Invitation Dinner Meeting', 'GGGI', '2017-11-30', 'Invitation Dinner Meeting\r\nVenue     :  Plataran Menteng Restaurant, Jl. H.O.S. Cokroaminoto No. 42, Menteng, Jakarta 10350\r\nDate        : Tuesday, 5 December 2017\r\nTime       : 18:30 end', 'Invitation Dinner Meeting', '2017-11-30-299_dan_300_GGGI_11_17_Invitation_Dinner_Meeting.pdf', '2017-12-04', NULL, NULL, NULL, 11, '2017-12-05 07:00:59'),
(118, 1, 2, 3, '11226/D.II/11/2017', 'Undangan Project Implementation Unit ( PIU) Meeting National Urban Development Program (NUDP)', 'Deputi Bidang Pengembangan Regional', '2017-11-30', 'Undangan Project Implementation Unit ( PIU) Meeting National Urban Development Program (NUDP)\r\nHari, Tanggal 	: Rabu, 6 Desember 2017\r\nWaktu		: 14.00- Selesai\r\nTempat		: Hotel AONE. Jl. KH. Wahid Hasyim No.SO, RT.15/RW.3, Kb.Sirih, Menteng, Kota Jakarta Pusat, Oaerah Khusus lbukota Jakarta 10340', 'Undangan Project Implementation Unit ( PIU) Meeting National Urban Development Program (NUDP)', '2017-11-30-11226_D.11_11_2017_Undangan_Project_Implementation_Unit_(_PIU).pdf', '2017-12-05', 'Dihadiri Faisal', 3, '2018-01-03 00:00:00', 11, '2017-12-05 07:09:24'),
(119, 1, 2, 3, '11339/Dt.8.3/12/2017', 'Notulen Rapat Terminasi Hibah Jerman Proyek Seulawah Agam', 'Dir.Pendanaan Luar Negeri Bilateral', '2017-12-05', '1. Apabila Pemprov Aceh tidak akan melanjutkan pembiayaan proyek dengan memanfaatkan dana hibah KfW, sesuai dengan Peraturan Pemerintah No.11, diperlukan surat dari Gubernur Aceh kepada Menteri Keuangan dan Menteri PPN/Kepala Bappenas mengenai keputusan tersebut beserta pertimbangannya.\r\n2. Surat tersebut perlu segera disampaikan sebelum berakhirnya masa berlaku hibah yakni tanggal 31 Desember 2017.', 'Notulen Rapat Terminasi Hibah Jerman Proyek Seulawah Agam', '2017-12-05-11339_Dt.8.3_12_2017_Notulen_Rapat_Terminasi_Hibah_Jerman_Proyek_Seulawah_Agam.pdf', '2017-12-05', 'Notulensi diarsipkan di difile dalam database PHLN oleh Ula', 3, '2017-12-11 00:00:00', 11, '2017-12-05 07:21:12'),
(120, 1, 2, 3, '288/D.8.ND/11/2017', 'Penyusunan Daftar Prioritas Proyek (DPP} SBSN Tahun Anggaran 2018', 'Deputi Bidang Pendanaan Pembangunan', '2017-11-23', '-', 'Penyusunan Daftar Prioritas Proyek (DPP} SBSN Tahun Anggaran 2018', '2017-11-23-288_D.8.ND_11_2017_Penyusunan_Daftar_Prioritas_Proyek_(DPP_SBSN_Tahun_Anggaran_2018.pdf', '2017-11-27', 'Tugas sudah disampaikan kepada Sahna dan Derry. Pembuatan Ordner sedang dalam proses.', 5, '2018-01-03 00:00:00', 11, '2017-12-05 10:18:40'),
(121, 1, 2, 3, '426/Dt.5.3.ND/11/2017', 'Tanggapan Usulan Hibah ADB Technical Assistance to Indonesia on Preparing the Advanced Knowledge and Skills for Sustainable Growth Project (TA 9406- INO)', 'Direktur Pendidikan Tinggi, Iptek dan Kebudayaan', '2017-11-29', '-', 'Tanggapan Usulan Hibah ADB Technical Assistance to Indonesia on Preparing the Advanced Knowledge and Skills for Sustainable Growth Project (TA 9406-INO)', '2017-11-29-426_Dt.5.3.ND_11_2017_Tanggapan_Usulan_Hibah_ADB_Technical_Assistance_to_Indonesia_on_Preparing_the_Advanced_Knowledge_and_Skills_for_Sustainable_Growth_Project_(TA_9406-INO).pdf', '2017-11-29', 'Dimasukaan dalam list kegiatan DRKH 2018', 12, '2017-12-07 00:00:00', 11, '2017-12-05 10:25:36'),
(122, 1, 1, 3, '508/Dt.8.4.ND/11/2017', 'Permintaan Tanggapan Usulan Hibah ADB Technical Assistance to Indonesia on Preparing the Advanced Knowledge and Skills for Sustainable Growth Project (TA 9406-INO)', 'Direktur Pendanaan Luar Negeri Multilateral', '2017-11-27', '-', 'Permintaan Tanggapan Usulan Hibah ADB Technical Assistance to Indonesia on Preparing the Advanced Knowledge and Skills for Sustainable Growth Project (TA 9406-INO)', '2017-11-27-508_Dt.8.4.ND_11_2017_Permintaan_Tanggapan_Usulan_Hibah_ADB_Technical_Assistance_to_Indonesia_on_Preparing_the_Advanced_Knowledge_and_Skills_for_Sustainable_Growth_Project_(TA_9406-INO).pdf', '2017-11-27', NULL, NULL, NULL, 11, '2017-12-05 10:59:49'),
(123, 1, 2, 3, '507/Dt.8.4.ND/11/2017', 'Permintaan Tanggapan Atas Usulan Hibah ADB Technical Assistance to Indonesia on Sea/ling Up Energy Efficiency (TA 9370-INO)', 'Direktur Pendanaan Luar Negeri Multilateral', '2017-11-27', '-', 'Technical Assistance to Indonesia on Sea/ling Up Energy Efficiency', '2017-11-27-507_Dt.8.4.ND_11_2017_Permintaan_Tanggapan_Atas_Usulan_Hibah_ADB_Technical_Assistance_to_Indonesia_on_Scalling_Up_Energy_Efficiency_(TA_9370-INO).pdf', '2017-11-27', NULL, NULL, NULL, 11, '2017-12-05 11:09:13'),
(124, 1, 2, 3, 'B-00282/HAMBURG/ 171114', 'Laporan Pertemuan Kelima Task Force on the Digital Economy di Hamburg,Bilateral Meeting dengan Ekosistem Digital Startup di Stutgart, Jerman dan Amsterdam, Belanda, 23-27 Oktober 2017.', 'Konsulat Jenderal RI Hamburg', '2017-11-14', '-', 'Laporan Pertemuan Kelima Task Force on the Digital Economy di Hamburg,Bilateral Meeting dengan Ekosistem Digital Startup di Stutgart, Jerman dan Amsterdam, Belanda, 23-27 Oktober 2017.', '2017-11-14-B-00282_HAMBURG_171114_Laporan_Pertemuan_Kelima_Task_Force_on_the_Digital_Economy_di_Hamburg,Bilateral_Meeting_dengan_Ekosistem_Digital_Startup_di_Stutgart,_Jerman_dan_Amsterdam,_Belanda,_23-27_Oktober_2017..pdf', '2017-12-05', 'Laporan ini direkapitulasi sebagai bahan masukan untuk DWG oleh Pristi', 3, '2017-12-11 00:00:00', 11, '2017-12-05 11:33:42'),
(125, 1, 2, 3, '001/TA.8858/ 17', 'Extension of TA 8858-INO: Strengthening Knowledge Sharing in Indonesia', 'ADB', '2017-12-29', '-Siapkan Pertemuan dengan ADB\r\n-Siapkan Draft jawaban bahwa  GGI ada prosedur ada readines dan workplane', 'Strengthening Knowledge Sharing in Indonesia', '2017-12-29-001_TA.8858_17_Extension_ofTA_8858-INO_Strengthening_Knowledge_Sharing_in_Indonesia.pdf', '2017-12-04', 'Sudah dibahas dalam pertemuan dengan ADB (pak Gil, bu Emma, dan pak Nico).\r\nDraft jawaban surat sudah disampaikan ke bu Teni', 3, '2018-01-03 00:00:00', 11, '2017-12-05 11:42:07'),
(127, 1, 2, 3, '1947/SES.ND/11/2017', 'Penunjukan Tim Penanggung ,Jawab Penyusunan Laporan Kinerja dan Penyeraban Draft Laporan Kinerja TA 2017, LKJ', 'Sesrnen PPN I Sestama Bappenas', '2017-11-27', 'Penunjukan Tim Penanggung ,Jawab Penyusunan Laporan Kinerja dan Penyeraban Draft Laporan Kinerja TA 2017, LKJ', 'Penunjukan Tim Penanggung ,Jawab Penyusunan Laporan Kinerja (Lkj) dan Penyeraban Draft Laporan Kinerja TA 2017, LKj', '2017-11-27-1947_SES.ND_11_2017_Penunjukan_Tim_Penanggung_,Jawab_Penyusunan_Laporan_Kinerja_dan_Penyeraban_Draft_Laporan_Kinerja_TA_20171.pdf', '2017-12-05', NULL, NULL, NULL, 11, '2017-12-14 10:47:56'),
(128, 1, 2, 3, '1902/SES.ND/11/2017', 'Pengusulan Hibah TA 9391-INO: Knowledge and Support TA for Leveraging Information and Communication for Irrigated Agricultural Information Project dalam DRKH Tahun 2017', 'Sesmen PPN/Sestama Bappenas', '2017-11-16', '-', 'Pengusulan Hibah TA 9391-INO: Knowledge and Support TA for Leveraging Information and Communication for Irrigated Agricultural Information Project dalam DRKH Tahun 2017', '2017-11-16-1902_SES.ND_11_2017_Pengusulan_Hibah_TA_9391-INO_Knowledge_and_Support_TA_for_Leveraging_Information_and_Communication_for_Irrigated_Agricultural_Information_Project_dlm_DRKH_2017.pdf', '2017-12-05', NULL, NULL, NULL, 11, '2017-12-05 12:39:23'),
(129, 1, 1, 3, '10884/D.4/ 11/2017', 'Undangan Workshop Menuju Sistem Bantuan Sosial di Indonesia yang Komprehensip, Terintegrasi dan Efektif', 'Deputi Kependudukan dan Ketenagakerjaan', '2017-11-24', 'Undangan Workshop Menuju Sistem Bantuan Sosial di Indonesia yang Komprehensip, Terintegrasi dan Efektif', 'Undangan Workshop Menuju Sistem Bantuan Sosial di Indonesia yang Komprehensip, Terintegrasi dan Efektif', '2017-11-24-10884_D.4_11_2017_Undangan_Workshop_Menuju_Sistem_Bantuan_Sosial_di_Indonesia_yang_Komprehensip,_Terintegrasi_dan_Efektif.pdf', '2017-11-30', NULL, NULL, NULL, 11, '2017-12-05 12:44:04'),
(130, 1, 2, 3, '11404/D.7.5/12/2017', 'Penundaan Rapat ( Rapat Koordinasi Pinjaman Dalam Negeri (PDN) Tahun 2017', 'Direktur Pertahanan dan Keamanan', '2017-12-06', 'Penundaan Rapat ( Rapat Koordinasi Pinjaman Dalam Negeri (PDN) Tahun 2017 pada tanggal 11 Desember 2017 diundur menjadi:\r\nHari/ tanggal:Rabu, 13 Desember 2017\r\nWaktu            : 10.00 WIB s.d. selesai\r\nTempat          :Ruang Rapat Direktorat Hankam, Bappenas JL Taman Suropati No.2, Menteng, Jakarta Pusat', 'Rapat Koordinasi Pinjaman Dalam Negeri (PDN) Tahun 2017', '2017-12-06-11404_D.7.5_12_2017_Penundaan_Rapat_(_Rapat_Koordinasi_Pinjaman_Dalam_Negeri_(PDN)_Tahun_2018.pdf', '2017-12-06', 'Sdh diselenggarakan pada tanggal 2 Januari 2018, Evaluasi dan penilaian kegiatan Kemhan sudah dilakukan, dan Dithankam akan melakukan rapat koordinasi dengan Polri pada hari Kamis tanggal 4 Januari 2018', 4, '2018-01-03 00:00:00', 11, '2017-12-07 02:06:04'),
(131, 1, 2, 3, '11425/Dt.3.5/12/2017', 'Undangan Narasumber', 'Direktur Lingkungan Hidup', '2017-12-06', 'Undangan Narasumber Dalam rangka pelaksanaan studi analisa potensi Green Sukuk dalam mobilisasi pendanaan untuk perubahan iklim yang akan dilaksanakan pada:\r\nHaritTanggal  : Jumat, 8 Desember 2017\r\nWaktu              : 13.30 - selesai\r\nTempat           :  Hotel Herminttage, Menteng, Jakarta', 'Presentasi Potensi, Peluang dan Tantangan Pendanaan melalui Green SUKUK, Presentasi studi analisa potensi Green Sukuk dalam mobilisasi pendanaan tmtuk perubahan iklim', '2017-12-06-11425_DL3.5_12_2017_Undangan_Narasumber.pdf', '2017-12-06', 'Bahan sudah disampaikan dan Ibu Direktur sudah menghadiri undangan tersebut.', 5, '2018-01-03 00:00:00', 11, '2017-12-07 02:34:39'),
(132, 1, 2, 3, '11426/Dt.3.5/12/2017', 'Rapat Diskusi Potensi Green Sukuk', 'Direktur Lingkungan Hidup', '2017-12-06', '-', 'Rapat Diskusi Potensi Green Sukuk', '2017-12-06-11426_Dt.3.5_12_2017_Rafat_Diskusi_Potensi_Green_Sukuk.pdf', '2017-12-06', 'sudah dihadiri Ibu Direktur', 5, '2018-01-03 00:00:00', 11, '2017-12-07 03:15:45'),
(133, 1, 2, 3, '1994/SES.ND/12/2017', 'Usulan Kegiatan Kajian Pemanfaatan Big Data', 'Sesmen PPN/Sestama Bappenas', '2017-12-05', 'Usulan Kegiatan Kajian Pemanfaatan Big Data', 'Usulan Kegiatan Kajian Pemanfaatan Big Data', '2017-12-05-1994_SES.ND_12_2017_Usulan_kegiatan_kajian_pemanfaatan_Big_Data.pdf', '2017-12-07', 'Telah dibuatkan konsep kajian yang menggunakan Big Data.', 6, '2018-01-02 00:00:00', 11, '2017-12-07 03:39:11'),
(134, 1, 2, 3, '184/Dt.6.1.M/12/2017', 'Tanggapan atas Penyusunan Permen PPN/Ka BAPPENAS tentang Perencanaan dan Pemantauan Proyek yang Dibiayai me!alui Surat Berharga Syariah Negara (SBSN)', 'Direktur Pengairan dan !rigasi', '2017-12-05', 'Tanggapan atas Penyusunan Permen PPN/Ka BAPPENAS tentang Perencanaan dan Pemantauan Proyek yang Dibiayai me!alui Surat Berharga Syariah Negara (SBSN)', 'Tanggapan atas Penyusunan Permen PPN/Ka BAPPENAS tentang Perencanaan dan Pemantauan Proyek yang Dibiayai me!alui Surat Berharga Syariah Negara (SBSN)', '2017-12-05-184_Dt.6.1.M_12_2017_Tanggapan_atas_Penyusunan_Permen_PPN_Ka_Bappenas_Tentang_Perencanaan_dan_Pemantauan_Proyek_yang_Dibiayai_melalui_SBSN.pdf', '2017-12-07', 'Direkap dalam tabel masukan hasil rapat dan masukan tertulis.', 5, '2018-01-03 00:00:00', 11, '2017-12-07 03:45:21'),
(135, 1, 2, 3, '186/Dt.6.1/12/2017', 'Perubahan Paket Pekerjaan yang dibiayai SBSN TA 2018', 'Direktur Pengairan dan lrigasi', '2017-12-05', 'disampaikan bahwa alokasi pendanaan yang bersumber dari SBSN untuk Direktorat Jenderal Sumber Daya Air Kementerian Pekerjaan Umum dan Perumahan Rakyat (PUPR) adalah sebesar Rp. 5.280.000.000.000,- . Adapun alokasi kegiatan DPP SBSN TA. 2018 tersebut adalah sebagai berikut :\r\n1 Pengembangan dan Rehabilitasi Jaringan lrigasi Permukaan,Rawa dan Tambak 463.585.000\r\n2 Pengendalian Banjir, Lahar, Pengelolaan Drainase Utama Perkotaan, dan Pengamanan Pantai 2.430.236.000\r\n3 Pengelolaan Bendungan, Danau, dan Bangunan Penampung Air Lainnya 389.819.000\r\n4 Penyediaan dan Pengelolaan Air Tanah dan Air Baku 1.996.360.000', 'Perubahan Paket Pekerjaan yang dibiayai SBSN T A 2018 untuk Direktorat Jenderal Sumber Daya Air Kementerian Pekerjaan Umum dan Perumahan Rakyat (PUPR)', '2017-12-05-186_Dt.6.1.M_12_2017_Perubahan_Paket_Pekerjaan_yang_dibiayai_SBSN_TA.2018.pdf', '2017-12-07', 'dikoordinasikan dengan Dit. Pengairan dan irigasi dan sudah ditindaklanjuti dit. pengairan dan irigasi, krn bersifat teknis.', 5, '2018-01-03 00:00:00', 11, '2017-12-07 03:52:09'),
(136, 1, 2, 3, '297/D.8.ND/12/2017', 'Undangan rapat Koordinasi Kedeputian Bidang Pendanaan Pembangunan', '297/D.8.ND/12/2017', '2017-12-07', 'Undangan rapat Koordinasi Kedeputian Bidang Pendanaan Pembangunan\r\nHari/ Tanggal 	: Rabu, 13 Desember 2017\r\nWaktu   	: 08.00 WIB s/d Selesai\r\nTempat  	: Hotel Sari Pan Pasific,Jl. M.H. Thamrin No.6,Menteng, Jakarta Pusat, 10340\r\nAgenda		: 1. Pembahasan Kajian Strategis Kedeputian 2017\r\n		  2. Evaluasi Kegiatan 2017\r\n   		  3. Rencana Kegiatan 2018', 'Undangan rapat Koordinasi Kedeputian Bidang Pendanaan Pembangunan', '2017-12-07-297_D.8.ND_12_2017_Undangan_rapat_Koordinasi_Kedeputian_Bidang_Pendanaan_Pembangunan.pdf', '2017-12-07', 'sudah dihadiri. perlu perbaikan bahan paparan Deputi untuk Raker tanggal 21 Des', 3, '2017-12-13 00:00:00', 11, '2017-12-07 03:56:52'),
(137, 1, 2, 3, '381/I.01.ND/12/2017', 'Persiapan Penyusunan Laporan Keuangan TA 2017 dan Pemeriksaan BPK', 'Inspektur Bidang Administrasi Umum', '2017-12-04', 'Persiapan Penyusunan Laporan Keuangan TA 2017 dan Pemeriksaan BPK bersama ini kami mengundang Saudara untuk hadir terkait hal tersebut di atas pada:\r\nHari tanggal	: Jumat/8 Desember 2017\r\nWaktu		: 09.00 WIB s.d. selesai\r\nTempat		: Ruang Rapat SS-4 Gedung TS-2A Lantai 2\r\nAgenda		: 1. Koordinasi internal dalam rangka persiapan penyusunan Laporan Keuangan TA 2017\r\n		  2. Paparan Penyusunan Laporan Keuangan terkait Hibah Luar Negeri oleh Biro Umum \r\n		  3. Paparan Pengelolaan Hibah Luar Negeri oleh Biro Renortala', 'Persiapan Penyusunan Laporan Keuangan TA 2017 dan Pemeriksaan BPK', '2017-12-04-381_I.01.ND_12_2017_Persiapan_Penyusunan_Laporan_Keuangan_TA_2017_dan_Pemeriksaan_BPK.pdf', '2017-12-06', 'sudah dihadiri.\r\nPersiapan laporan BAST sebelum 2 Januari', 3, '2017-12-11 00:00:00', 11, '2017-12-07 04:15:55'),
(138, 1, 1, 3, '295/D.8.ND/12/2017', 'Permintaan lndikasi Proyek yang akan Dibiayai melalui SBSN TA. 2019', 'Deputi Bidang Pendanaan Pembangunan', '2017-12-06', 'Permintaan lndikasi Proyek yang akan Dibiayai melalui SBSN TA. 2019', 'Permintaan lndikasi Proyek yang akan Dibiayai melalui SBSN TA. 2019', '2017-12-06-295_D.8.ND_12_2017_Permintaan_lndikasi_Proyek_yang_akan_Dibiayai_melalui_SBSN_TA._2019.pdf', '2017-12-07', NULL, NULL, NULL, 11, '2017-12-07 04:27:50'),
(139, 1, 2, 3, '85/P.02-PERPUS.ND/ 11/2017', 'Permintaan Bahan Terbitan', 'Kepala Bidang Perpustakaan dan Kearsipan', '2017-11-27', 'Permintaan Bahan Terbitan\r\n1. Dokumen Blue book dari 2010 s/d sekarang 2 Ekslempar', 'Permintaan Bahan Terbitan', '2017-11-27-85_P.02-PERPUS.ND_11_2017_Permintaan_Bahan_Terbitan.pdf', '2017-11-27', 'sudah disampaikan bukunya', 3, '2017-12-11 00:00:00', 11, '2017-12-07 04:33:03'),
(140, 1, 2, 3, 'KPPIP', 'Focus Group Discussion Skema Kerjasama Pengelolaan Aset Terbatas (KePAT)', 'KPPIP', '2017-12-07', 'Focus Group Discussion Skema Kerjasama Pengelolaan Aset Terbatas (KePAT)', 'Focus Group Discussion Skema Kerjasama Pengelolaan Aset Terbatas (KePAT)', '2017-12-07-KPPIP_Focus_Group_Discussion_Skema_Kerjasama_Pengelolaan_Aset_Terbatas_(KePAT).pdf', '2017-12-06', NULL, NULL, NULL, 11, '2017-12-07 04:39:19'),
(142, 1, 2, 3, 'R-00175.Brasilia/171122', 'Konferensi lnternasional South-South and Triangular Cooperation (SSTC), Brasilia, Brazil, 20-21 November 2017', 'KBRI BRASILIA-DF', '2017-11-22', 'Konferensi lnternasional South-South and Triangular Cooperation (SSTC), Brasilia, Brazil, 20-21 November 2017', 'Konferensi lnternasional South-South and Triangular Cooperation (SSTC), Brasilia, Brazil, 20-21 November 2017', '2017-11-22-R-00175_BRASILIA_171122_Konferensi_Internasional_South-South_and_Triangular_Cooperation_(SSTC),Brasilia,_Brazil,_20-21_November_2017.pdf', '2017-12-07', NULL, NULL, NULL, 11, '2017-12-07 04:47:44'),
(143, 1, 2, 3, '188/D.9/ND/12/2017', 'Penyampaian Laporan Pemantauan Rencana Pembangunan Per Kementerian/Lembaga Triwulan III Tahun Anggaran 2017', 'Deputi Pemantauan, Evaluasi dan Pengendalian Pembangunan', '2017-12-05', 'Daftar Kementerian/Lembaga Yang Sudah Menyampaikan Laporan Pemantauan Rencana Pembangunan Triwulan III Tahun Anggaran 2017 Per 5 Desember 2017', 'Penyampaian Laporan Pemantauan Rencana Pembangunan Per Kementerian/Lembaga Triwulan III Tahun Anggaran 2017', '2017-12-05-188_D.9_ND_12_2017_Penyampaian_Laporan_Pemantauan_Rencana_Pembangunan_Per_Kementerian_Lembaga_Triwulan_III_Tahun_Anggaran_2017.pdf', '2017-12-07', 'untuk diketahui saja', 3, '2017-12-13 00:00:00', 11, '2017-12-07 07:40:03'),
(144, 1, 2, 3, 'B-24073/SJ/8.1.1/HM.00/12/2017', 'Permohonan Narasumber Acara Koordinasi Pengelolaan Proyek Pinjaman dan Hibah Luar Negeri (PHLN) dan Surat Berharga Syariah Negara (SBSN) Kementerian Agama Tahun 2017', 'Kepala biro Perencanaan, Kementerian Agama', '2017-12-07', 'Permohonan Narasumber Acara Koordinasi Pengelolaan Proyek Pinjaman dan Hibah Luar Negeri (PHLN) dan Surat Berharga Syariah Negara (SBSN) Kementerian Agama Tahun 2017yang akan dilaksanakan pada:\r\nHari, Tanggal  	:Senin, 11 Desember 2017\r\nWaktu 		:Pukul 10.00 s.d. 15.00 WIB\r\nMateri		:Kebijakan Pendanaan Proyek yang dibiayai Surat Berharga Syariah Negara (SBSN)\r\nTempat		:Hotel Spark Life, Jl. Mangga Besar No.42, RT.2/RW.2, Taman Sari, Tamansari,Kota Jakarta Barat', 'Permohonan Narasumber Acara Koordinasi Pengelolaan Proyek Pinjaman dan Hibah Luar Negeri (PHLN) dan Surat Berharga Syariah Negara (SBSN) Kementerian Agama Tahun 2017', '2017-12-07-B-24073_SJ_8.1.1_HM.00_12_2017_Permohonan_Narasumber_Acara_Koordinasi_Pengelolaan_Proyek_Pinjaman_dan_Hibah_Luar_Negeri_(PHLN)_dan_Surat_Berharga_Syariah_Negara_(SBSN)_Kementerian_Agama_Tahun_2017.pdf', '2017-12-07', 'Ibu Direktur berhalangan hadir krn ada penugasan dari Deputi Pendanaan (koordinasi kajian). Kehadiran diwakili oleh Kasubdit Strategi Pendanaan dan sudah dihadiri acara tersebut.', 5, '2018-01-03 00:00:00', 11, '2017-12-07 08:03:05'),
(145, 1, 1, 3, 'B-24077/SJ/8.1.1/HM.00/12/2017', 'Permohonan Moderator Untuk Koordinasi Pengelolaan Proyek Pinjaman dan Hibah Luar Negeri (PHLN) dan Surat Berharga Syariah Negara (SBSN) Kementerian Agama Tahun 2017', 'Kepala biro Perencanaan, Kementerian Agama', '2017-12-07', 'Permohonan Moderator Untuk Koordinasi Pengelolaan Proyek Pinjaman dan Hibah Luar Negeri (PHLN) dan Surat Berharga Syariah Negara (SBSN) Kementerian Agama Tahun 2017yang akan dilaksanakan pada:\r\nHari, Tanggal  	:Senin, 11 Desember 2017\r\nWaktu 		:Pukul 10.00 s.d. 15.00 WIB\r\nMateri		:Kebijakan Pendanaan Proyek yang dibiayai Surat Berharga Syariah Negara (SBSN)\r\nTempat		:Hotel Spark Life, Jl. Mangga Besar No.42, RT.2/RW.2, Taman Sari, Tamansari,Kota Jakarta Baratyang akan dilaksanakan pada:\r\nHari, Tanggal  	:Senin, 11 Desember 2017\r\nWaktu 		:Pukul 10.00 s.d. 15.00 WIB\r\nMateri		:Kebijakan Pendanaan Proyek yang dibiayai Surat Berharga Syariah Negara (SBSN)\r\nTempat		:Hotel Spark Life, Jl. Mangga Besar No.42, RT.2/RW.2, Taman Sari, Tamansari,Kota Jakarta Barat', 'Permohonan Moderator Untuk Koordinasi Pengelolaan Proyek Pinjaman dan Hibah Luar Negeri (PHLN) dan Surat Berharga Syariah Negara (SBSN) Kementerian Agama Tahun 2017', '2017-12-07-B-24077_SJ_8.1.1_HM.00_12_2017_Permohonan_Moderator_Acara_Koordinasi_Pengelolaan_Proyek_Pinjaman_dan_Hibah_Luar_Negeri_(PHLN)_dan_Surat_Berharga_Syariah_Negara_(SBSN)_Kementerian_Agama_Tahun_2017.pdf', '2017-12-07', NULL, NULL, NULL, 11, '2017-12-07 08:05:15');
INSERT INTO `irena_arsip` (`id`, `id_jenis`, `id_status`, `id_tingkat`, `no`, `perihal`, `dari`, `tgl`, `ringkasan`, `keywords`, `berkas`, `tgl_terima`, `selesai_cat`, `selesai_by`, `selesai_date`, `update_by`, `update_date`) VALUES
(146, 1, 1, 3, '234/06.07.01.ND/12/2017', 'Pertanggungjawaban Perjalanan Dinas Nominatif', 'PPK Program PPN VII', '2017-12-07', 'Catatan PPK Program PPN VII Perjalanan Dinas Nominatif masing-masing direktorat di Kedeputian Pendanaan Pembangunan TA 2017', 'Pertanggungjawaban Perjalanan Dinas Nominatif', '2017-12-07-234_06.07.01.ND_12_2017_Pertanggungjawaban_Perjalanan_Dinas_Nominatif.pdf', '2017-12-07', NULL, NULL, NULL, 11, '2017-12-07 09:56:54'),
(147, 1, 2, 3, 'Und-207/PR/2017', 'Undangan Rapat {Pemaparan Hasil Penyusunan Value For Money (VfM) Pilot Proyek Skema KPBU-AP}', 'Kementerian Keuangan', '2017-11-20', 'Undangan Rapat {Pemaparan Hasil Penyusunan Value For Money (VfM) Pilot Proyek Skema KPBU-AP}\r\n\r\nHari/Tanggal	: Selasa, 21 November 2017\r\nWaktu		: Pukul 09.00 WIB\r\nTempat		: Ruang Rapat Dirjen PPR Gedung Frans Seda lantai 2, Jl. Dr. Wahidin No. 1 Jakpus\r\nAgenda		: Pemaparan Hasil Penyusunan Value For Money (VfM} Pilot Project Skema KPBU-AP\r\nPimpinan Rapat  : Direktur Jenderal Pengelclaan Pembiayaan dan Risiko', 'Pemaparan Hasil Penyusunan Value For Money (VfM) Pilot Proyek Skema KPBU-Availability Payment (AP)', '2017-11-20-Und-207_PR_2017_Undangan_Rapat_Pemaparan_Hasil_Penyusunan_Value_For_Money_(VfM)_Pilot_Proyek_Skema_KPBU-AP.pdf', '2017-11-21', NULL, NULL, NULL, 11, '2017-12-08 01:52:44'),
(148, 1, 2, 3, '11515/SA.04/12/2017', 'Rapat Pendahuluan Pelaksanaan Forum Konsultasi Publik (FKP) 2017 untuk penyusunan rancangan awal RKP 2019', 'Staf Ahli Menteri PPN Bidang Hubungan Kelembagaan', '2017-12-07', 'Rapat Pendahuluan Pelaksanaan Forum Konsultasi Publik (FKP) 2017 untuk penyusunan rancangan awal RKP 2019yang akan dilaksanakan pada:\r\n\r\nHari/tanggal	: Senin, 11 Desember 2017\r\nPukul		: 12.00 WIB- Selesai (didahului makan siang)\r\nTempat		: Gd. Saleh Afif, Ruang Djunaedi Hadisumarto 5 (d/h. SG-5).Kantor Bappenas Jl. Taman surapati No. 2, Menteng, Jakarta Pusat\r\nAgenda		: 1. Pembahasan lsu-isu Strategis Pembangunan tahun 2019.\r\n		  2. Mekanisme Pelaksanaan FKP 2017\r\n		  3. Partisipasi publik dalam pelaksanaan FKP 2017', 'Rapat Pendahuluan Pelaksanaan Forum Konsultasi Publik (FKP) 2017 untuk penyusunan rancangan awal RKP 2019', '2017-12-07-11515_SA.04_12_2017_Rapat_Pendahuluan_Pelaksanaan_Forum_Konsultasi_Publik_(FKP)_2017.pdf', '2017-12-08', 'Dihadiri oleh mas Bebi', 3, '2017-12-13 00:00:00', 11, '2017-12-08 02:32:01'),
(149, 1, 2, 3, 'Und-278 /PR.5/2017', 'Undangan FGD terkait Finalisasi Framework Proyek KPBU-Availability Payment AP', 'Direktur Pengelolaan resiko Keuangan Negara. Kemenkeu', '2017-12-07', 'Undangan FGD terkait Finalisasi Framework  Proyek KPBU-AP akan diselenggarakan pada:\r\nHari/Tanggal : Selasa, 12 Desember 2017\r\nWaktu             : 09.00 WlB s.d. selesai\r\nTempat          : Hotel Grand Mercure Kemayoran JL H Benyamin Sueb Kav 86, Jakarta Pusat, DKI Jakarta 10610\r\nAgenda           : Finalisasi Kriteria & Mekanisme (Framework) Proyek KPBU-AP', 'FGD, Finalisasi Framework Proyek KPBU-Availability Payment AP', '2017-12-07-Und-278_PR.5_2017_Undangan_FGD_terkait_Finalisasi_Framework_Proyek_KPBU-AP.pdf', '2017-12-08', 'Sudah dihadiri bersama Ibu direktur.\r\nAkan dibahas bersama kembali pada Januari 2018', 3, '2017-12-13 00:00:00', 11, '2017-12-08 02:44:45'),
(150, 1, 2, 3, 'UND-390/KF.3/201 7', 'Undangan sebagai peserta aktif pada Rapat Koordinasi', 'BADAN KEBIJAKAN FISKAL PUSAT KEBIJAKAN ANGGARAN PENDAPATAN DAN BELANJA NEGARA', '2017-11-28', 'Undangan Mbagai peserta aktif pada Rapat Koordinasi yang akan diLaksanakan pada:\r\nhari/Tanggal 	: Rabu, 13 Desember 2017\r\npukul 		: 9.30- 12.00 Wl8\r\ntempm 		: Ruang Rapat PKAPBN Gedung RM. Notohamiprojo Lantai 6 Jl. Dr. Wahidin No.1, Jakarta Pusat\r\ntema 		: Strategi Pembiayaan Utang', 'Undangan sebagai peserta aktif pada Rapat Koordinasi, Strategi Pembiayaan Utang, Penyusunan Kerangka Ekonomi Makro dan Pokok-Pokok kebijakan Fiskal tahun 2019', '2017-11-28-UND-390_KF.3_2017_Undangan_sebagai_peserta_aktif_pad_a_Rapat_Koordinasi.pdf', '2017-12-08', 'tidak hadir, ada penugasan lain', 3, '2017-12-13 00:00:00', 11, '2017-12-08 07:59:12'),
(151, 1, 2, 3, 'UND-389/KF.3/2017', 'Undangan sebagai peserta aktif pad a Rapat Koordinasi', 'BADAN KEBIJAKAN FISKAL PUSATKEBIJAKAN ANGGARAN PENDAPATAN DAN BELANJA NEGARA', '2017-11-28', 'Undangan sebagai peserta aktif pada Rapat Koordinasi yang akan diLaksanakan pada:\r\nhari/Tanggal 	: Selasa, 12 Desember 2017\r\npukul 		: 9.30- 12.00 Wl8\r\ntempat 		: Ruang Rapat PKAPBN Gedung RM. Notohamiprojo Lantai 6 Jl. Dr. Wahidin No.1, Jakarta Pusat\r\ntema 		: Creative Financing dan lnvestasi', 'Creative Financing dan lnvestasi, Undangan sebagai peserta aktif pada Rapat Koordinasi', '2017-11-28-UND-389_KF.3_2017_Undangan_sebagai_peserta_aktif_pad_a_Rapat_Koordinasi.pdf', '2017-12-08', 'tidak ada yang bisa hadir', 3, '2017-12-19 00:00:00', 11, '2017-12-08 08:06:56'),
(152, 1, 2, 3, '11488/D.t.8.4/11/2017', 'Pembahasan Penyusunan Rolling Plan Kegiatan yang akan Dibiayai oleh AIIB', 'Dit.Pendanaan Luar Negeri Multilateral', '2017-12-07', 'Pembahasan Penyusunan Rolling Plan Kegiatan yang akan Dibiayai oleh AIIB bersama ini kami mengundang Saudara untuk menghadiri\r\npertemuan yang akan diselenggarakan pada:\r\nHari, Tanggal 	: Selasa, 12 Desember 2017\r\nWaktu 		: 15.00 selesai\r\nTempat 		: Ruang Rapat Direktur Pendanaan Luar Negeri Multilaterat Gedung Baru Lantai 6, Bappenas Jl. Taman Suropati no 2, Jakarta Pusat', 'Pembahasan Penyusunan Rolling Plan Kegiatan yang akan Dibiayai oleh AIIB', '2017-12-07-11488_D.t.8.4_11_2017_Pembahasan_Penyusunan_Rolling_Plan_Kegiatan_yang_akan_Dibiayai_oleh_AIIB.pdf', '2017-12-08', 'Sudah dihadiri bersama Faisal.\r\nFollow up berupa penyampaian data kegiatan pada Blue Book yang dapat ditawarkan kepada AIIB sesuai bidang fokus kerjasamanya', 3, '2017-12-13 00:00:00', 11, '2017-12-08 08:19:11'),
(153, 1, 1, 3, 'HL.02.02 cp_258', 'Kesiapan Pelaksanaan Kegiatan National Urban Water Supply Project (NUWSP)', 'Dir.Keterpaduan Infrastruktur Pemukiman, Kementerian PUPERA', '2017-12-06', 'Untuk kesiapan pelaksanaan kegiatan NUWSP mohon fasilitasi dalam rangka penerbitan Daftar Kegiatan untuk National Urban Water Supply Project (NUWSP) untuk dapat segera dilakukan proses Negosiasi dan diharapkan loan effectiveness NUWSP dapat diperoleh paling lambar pada Bulan Maret 2018.', 'National Urban Water Supply Project (NUWSP)', '2017-12-06-S-HL0202-Cp285_Kesiapan_Pelaksanaan_Kegiatan_NUWSP.PDF', '2017-12-08', NULL, NULL, NULL, 11, '2017-12-08 10:20:25'),
(154, 1, 2, 3, '204/Dt.8.2.ND/12/2017', 'Diskusi Persiapan FGD Finalisasi Framework KPBU-AP', 'Direktur Alokasi Pendanaan Pembangunan', '2017-12-08', 'Diskusi Persiapan FGD Finalisasi Framework KPBU-AP\r\nHarijTanggal\r\nWaktu\r\n: Senin, 11 Desember 2017\r\n:09.00-10.00 WIB\r\nTern pat : Ruang Rapat Direktorat Alokasi Pendanaan Pembangunan\r\nAgenda : Konsolidasi Peranan Bappenas dalam Proses KPBU-AP Tahun 2019', 'Diskusi Persiapan FGD Finalisasi Framework KPBU-AP', '2017-12-08-204_Dt.8.2.ND_12_2017_Diskusi_Persiapan_FGD_Finalisasi_Framework_KPBU-AP.pdf', '2017-12-08', 'Sudah dilaksanakan. Hadir dengan Ibu Direktur', 3, '2017-12-11 00:00:00', 11, '2017-12-08 10:03:04'),
(155, 1, 1, 3, '295/D.8.ND/12/2017', 'Permintaan indikasi Proyek yang akan dibiayai SBSN TA.2019', 'Deputi Bidang Pendanaan Pembangunan', '2017-12-06', 'dimohon kepada Sdr. Deputi Bidang Pembangunan Manusia, Masyarakat, dan Kebudayaan, Sdr. Deputi Bidang Saran a dan Prasarana, Sdr. Deputi Bidan\'g Kemaritiman dan Sumber Daya Alam, Sdr. Deputi Bidang Ekonomi untuk dapat menyampaikan indikasi proyek yang akan dibiayai melalui penerbitan SBSN TA. 2019  Mengingat proses penyusunan BMP-SBSN TA. 2019 akan segera dilaksanakan dalam waktu dekat, dimohon indikasi proyek SBSN TA. 2019 tersebut dapat kami terima pada tanggal 27 Desember 2017', 'Permintaan lndikasi Proyek yang akan Dibiayai melalui SBSN TA. 2019', '2017-12-06-295_D.8.ND_12_2017_Permintaan_indikasi_proyek_yang_akan_dibiayai_melalui_SBSN_T_A_2019.pdf', '2017-12-11', 'Masih dalam proses. Menunggu Pak Deputi selesai cuti.', 5, '2018-01-03 00:00:00', 11, '2017-12-11 08:07:12'),
(156, 1, 2, 3, 'UND-260/PR2/2017', 'Undangan Rapat Persiapan Trilateral Meeting dalam rangka Penyusunan Proyeksi Penarikan Pinjaman dan Hibah tahun 2019 dan prakiraan maju tahun 2020-2023', 'DIREKTORAT JENDERAL PENGELOLAAN PEMBIAYAAN DAN R!SIKO DIREKTORAT PINJAMAN DAN HIBAH', '2017-12-06', 'Undangan Rapat Persiapan Trilateral Meeting dalam rangka Penyusunan Proyeksi Penarikan Pinjaman dan Hibah tahun 2019 dan prakiraan maju tahun 2020-2023\r\nHari/Tanggal    : Selasa, 19 Desember 2017\r\nJam                    : 09.00 WIB s.d Selesai\r\nTempat             : RR. Bhinneka 2, Gedung Frans Seda Lantai 1\r\nJln. Dr. Wahidin Raya No.1 Jakarta Pusat', 'Undangan Rapat Persiapan Trilateral Meeting dalam rangka Penyusunan Proyeksi Penarikan Pinjaman dan Hibah tahun 2019 dan prakiraan maju tahun 2020-2023', '2017-12-06-UND-260_PR.2_2017_Undangan_Rapat_(Persiapan_Trilateral_Meeting_dalam_rangka_Penyusunan_Proyeksi_Penarikan_Pinjaman_dan_Hi_bah_tahun_20_19_dan_Prakiraan_maju.pdf', '2017-12-11', 'Tidak bisa hadir. Ada penugasan ke Bandung', 3, '2018-01-03 00:00:00', 11, '2017-12-11 08:47:38'),
(157, 2, 2, 3, '252/Dt.8.1.ND/12/2017', 'Permohonan lzin Penyelenggaraan Rapat di luar Kantor', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-12-05', 'Permohonan lzin Penyelenggaraan Rapat di luar Kantor', 'Permohonan lzin Penyelenggaraan Rapat di luar Kantor', '2017-12-05-252_Dt.8.1.ND_12_2017_Permohonan_izin_penyelenggaraan_rapat_di_Luar_Kantor.pdf', '2017-12-11', NULL, NULL, NULL, 11, '2017-12-11 08:52:10'),
(158, 1, 2, 3, '360/Dt.1.1.ND/12/2017', 'Undangan Public Lecture \"Growth Diagostics- A New Approach to National Development Strategies\"', 'Dir. Perencanaan Makro dan Analisis Statistik', '2017-12-11', 'Undangan Public Lecture \"Growth Diagostics- A New Approach to National Development Strategies\"\r\nHari/Tanggal : Selasa, 12 Desember 2017\r\nWaktu             : 08.00- 12.30 WIB\r\nTempat           : Ruang Rapat Djunaedi Hadisumarto Gedung Saleh Afiff,Kementerian PPN/Bappenas JL Taman Suropati No.2, Menteng. Jakarta Pusat', 'Undangan Public Lecture \"Growth Diagostics- A New Approach to National Development Strategies\"', '2017-12-11-360_Dt.1.1.ND_12_2017_Undangan_Public_Lecture_Growth_Diagostics-_A_New_Approach_to_National_Development_Strategies.pdf', '2017-12-11', 'Tidak bisa hadir.\r\nmendampingi Ibu direktur rapat KPBU AP', 3, '2017-12-13 00:00:00', 11, '2017-12-11 09:04:03'),
(159, 1, 2, 3, 'UND-427/KF.3/2017', 'Pembahasan Rencana Dukungan PforR Bank Dunia untuk Percepatan Penanganan Stunting', 'BADAN KEBIJAKAN FISKAL PUSAT KEBIJAKAN ANGGARAN PENOAPATAN DAN BELANJA NEGARA', '2017-12-08', 'Pembahasan Rencana Dukungan PforR Bank Dunia untuk Percepatan Penanganan Stunting', 'Pembahasan Rencana Dukungan PforR Bank Dunia untuk Percepatan Penanganan Stunting', '2017-12-08-UND-427_Kf.3_2017_Undangan_Rapat_Koordinasi_Pembahasan_Rencana_Dukungan_PforR_Benk_Dunia_untuk_Percepatan_Penanganan_Stunting.pdf', '2017-12-11', 'Ada penugasan ke Balikpapan.\r\nDihadiri oleh mas Bebi dan Faisal', 3, '2017-12-13 00:00:00', 11, '2017-12-11 09:16:13'),
(160, 1, 2, 3, '289/D.4.ND/12/2017', 'Tindak Lanjut Rapim Eselon I Persiapan Penyusunan RKP 2019', 'Deputi Bidang Kependudukan dan Ketenagakerjaan', '2017-12-06', 'Tindak Lanjut Rapim Eselon I Persiapan Penyusunan RKP 2019', 'Tindak Lanjut Rapim Eselon I Persiapan Penyusunan RKP 2019', '2017-12-06-289_D.4.ND_12_2017_Tindaklanjut_Rapim_Eselon_I_Persiapan_Penyusunan_RKP_2019.pdf', '2017-12-11', 'Telah dilaksanakan Rapim untuk membahas RKP 2019.', 6, '2018-01-02 00:00:00', 11, '2017-12-11 09:24:26'),
(161, 1, 1, 3, '382/Dt.7.2/12/2017', 'Undangan untuk Menghadiri Asia Pacific Leaders Forum (APLF) on Open Government, 14 Desember 2017', 'Direktur Aparatur Negara', '2017-12-11', 'Undangan untuk Menghadiri Pembahasan Asia Pacific Leaders Forum (APLF) on Open Government, 14 Desember 2017\r\nHari/tanggal : Kamis, 14 Desember 2017\r\nPukul             : 08.00- 17.30 (registrasi dimulai pada pukul 07.00 WIB)\r\nTempat          : Hotel Borobudur, Hotel Borobudur, Jl. Lapangan Banteng Selatan No.1, Jakarta Pusat', 'Asia Pacific Leaders Forum (APLF) on Open Government', '2017-12-11-382_Dt.7.2_12_2017_Undangan_untuk_Menghadiri_Asia_Pacific_Leaders_Forum_(APLF)_on_Open_Government,_14_Desember_2017.pdf', '2017-12-11', NULL, NULL, NULL, 11, '2017-12-12 02:44:34'),
(162, 1, 1, 3, '382/Dt.7.2/12/2017', 'Undangan untuk Menghadiri Asia Pacific Leaders Forum (APLF) on Open Government, 14 Desember 2017', 'Direktur Aparatur Negara', '2017-12-11', 'Undangan untuk Menghadiri Pembahasan Asia Pacific Leaders Forum (APLF) on Open Government, 14 Desember 2017\r\nHari/tanggal : Kamis, 14 Desember 2017\r\nPukul             : 08.00- 17.30 (registrasi dimulai pada pukul 07.00 WIB)\r\nTempat          : Hotel Borobudur, Hotel Borobudur, Jl. Lapangan Banteng Selatan No.1, Jakarta Pusat', 'Asia Pacific Leaders Forum (APLF) on Open Government', '2017-12-11-382_Dt.7.2_12_2017_Undangan_untuk_Menghadiri_Asia_Pacific_Leaders_Forum_(APLF)_on_Open_Government,_14_Desember_20171.pdf', '2017-12-11', NULL, NULL, NULL, 11, '2017-12-12 02:44:37'),
(163, 1, 2, 3, '11568/Dt.3.4/12/2017', 'Rapat Monitoring dan Evaluasi Green Growth Program di Kalteng dan Kaltim', 'Direktur Sumber Daya Energi, Mineral dan Pertambangan', '2017-12-11', 'Rapat Monitoring dan Evaluasi Green Growth Program di Kalteng dan Kaltim yang akan diselenggarakan pada:\r\nHari              : Kamis, 14 Desember 2017\r\nPukul           : 08.30 - Selesai WIT A\r\nTempat       ; Grand,Jatra Hotel Balikpapan jl.jetnd Sudirman No. 47, Balikpapan', 'Rapat Monitoring dan Evaluasi Green Growth Program di Kalteng dan Kaltim', '2017-12-11-11568_Dt.3.4_12_2017_Rapat_Monitoring_dan_Evaluasi_Green_Growth_Program_di_Kalteng_dan_Kaltim.pdf', '2017-12-12', 'sudah dihadiri', 3, '2017-12-19 00:00:00', 11, '2017-12-12 02:50:09'),
(164, 1, 1, 3, 'S-861/PR/2017', 'Perjanjian Realisasi Pinjaman Dalam Negeri (PDN) Tahun Anggaran 2017 antara Pemerintah Indonesia dan PT. Mandiri (Persero), Tbk. - untuk kegiatan pada Kepolisian Negara Republik Indonesia', 'DITJEN PENGELOLAAN PEMBIAYAAN DAN RISIKO', '2017-11-20', 'Perjanjian Realisasi Pinjaman Dalam Negeri (PDN) Tahun\r\nAnggaran 2017 antara Pemerintah Indonesia dan PT. Mandiri\r\n(Persero), Tbk. - untuk kegiatan pada Kepolisian Negara Republik Indonesia', 'Perjanjian Realisasi Pinjaman Dalam Negeri (PDN) Tahun\r\nAnggaran 2017 antara Pemerintah Indonesia dan PT. Mandiri\r\n(Persero), Tbk. - untuk kegiatan pada Kepolisian Negara Republik Indonesia', '2017-11-20-S-861_PR_2017_Perjanjian_Realisasi_Pinjaman_Dalam_Negeri_(PDN)_Tahun_Anggaran_2017_antara_Pemerintah_Indonesia_dan_PT._Mandiri_(Persero),_Tbk._-_untuk_kegiatan_pada_Kepolisian_RI.pdf', '2017-12-11', NULL, NULL, NULL, 11, '2017-12-12 03:02:19'),
(165, 1, 2, 3, 'S-878/PR/2017', 'Perjanjian Realisasi Pinjaman Dalam Negeri (PDN) Tahun Anggaran 2017 antara Pemerintah Indonesia dan PT. Mandiri (Persero), Tbk. - untuk kegiatan pada Kepolisian Negara Republik Indonesia', 'DIT JEN PENGELOLAAN PEMBIAY AAN DAN RISIKO', '2017-11-21', 'Perjanjian Realisasi Pinjaman Dalam Negeri (PDN) Tahun Anggaran 2017 antara Pemerintah Indonesia dan PT. Mandiri (Persero), Tbk. - untuk kegiatan pada Kepolisian Negara Republik Indonesia', 'Perjanjian Realisasi Pinjaman Dalam Negeri (PDN) Tahun Anggaran 2017 antara Pemerintah Indonesia dan PT. Mandiri (Persero), Tbk. - untuk kegiatan pada Kepolisian Negara Republik Indonesia', '2017-11-21-S-878_PR_2017_Perjanjian_Realisasi_Pinjaman_Dalam_Negeri_(PDN)_Tahun_Anggaran_2017_antara_Pemerintah_Indonesia_dan_PT._Mandiri_(Persero),_Tbk._-_untuk_kegiatan_pada_Kepolisian_RI.pdf', '2017-12-11', NULL, NULL, NULL, 11, '2017-12-12 03:04:15'),
(166, 1, 1, 3, '244/SA.04.M/12/2017', 'Sosialisasi Permen RKP', 'Staf Ahli Menteri Bidang Hubungan Kelembagaan', '2017-12-12', 'Sosialisasi Permen RKP\r\nHari        : Selasa/19 Desember 2017\r\nWaktu    : 14.00 selesai WIB\r\nTempat  : R. Rapat Benny S. Muljana, lt. 2,5 Bappenas Jl. Taman Suropati No.2', 'Sosialisasi Permen RKP', '2017-12-12-244_SA.04.M_12_2017_Sosialisasi_Permen_RKP.pdf', '2017-12-12', NULL, NULL, NULL, NULL, '2017-12-12 12:15:00'),
(167, 1, 1, 3, '244/SA.04.M/12/2017', 'Sosialisasi Permen RKP', 'Staf Ahli Menteri Bidang Hubungan Kelembagaan', '2017-12-12', 'Sosialisasi Permen RKP', 'Sosialisasi Permen RKP', '2017-12-12-244_SA.04.M_12_2017_Sosialisasi_Permen_RKP1.pdf', '2017-12-12', NULL, NULL, NULL, 11, '2017-12-12 12:18:12'),
(168, 1, 1, 3, 'UPE(S)880/100/9 VoL 45(39)', 'Planning Community of Practice (PCoP) Workshop, 3rd - 4th October 2017, Kuala Lumpur, Malaysia', 'KETUA PENGARAH DIRECTOR GENERAL UNIT PERANCANG EKONOMI ECONOMIC PLANNING UNIT Jabatan Perdana Menteri Prime Minister\'s Department', '2017-12-08', 'Atas nama Pemerintah Malaysia, saya ingin mengungkapkan yang terbaik apresiasi atas kehadiran baik Anda di lokakarya Planning Community of Practice (PCoP) yang diselenggarakan dari tanggal 3 sampai 4 Oktober 2017 di Kuala Lumpur, Malaysia', 'lokakarya Planning Community of Practice (PCoP)', '2017-12-08-Planning_Community_of_Practice_(PCoP)_Workshop,_3rd_-_4th_October_2017,Kuala_Lumpur,_Malaysia.pdf', '2017-12-12', NULL, NULL, NULL, 11, '2017-12-13 02:31:46'),
(169, 1, 1, 2, '11723/Dt.8.4/12/2017', 'Undangan Lokakarya Finalisasi Pedoman Kriteria Kesiapan Kegiatan', 'Dit.Pendanaan Luar Negeri Multilateral', '2017-12-12', 'Undangan Lokakarya Finalisasi Pedoman Kriteria Kesiapan Kegiatan :\r\nHari       : Senin-Selasa, 18-19 Oesember 2017\r\nWaktu   : Senin, 14:00 17 00\r\n                 Selasa, 08:30- Selesai\r\nTempat : Hotel Sensa, JL Cihampelas No.160, Cipaganti, Coblong\r\nKota Bandung, Jawa Barat 40131', 'Lokakarya Finalisasi Pedoman Kriteria Kesiapan Kegiatan', '2017-12-12-1723_Dt_8.4_12_2017_Undangan_lokakarya_Finalisasi_Pedoman_Kriteria_Kesiapan_Kegiatan.pdf', '2017-12-13', NULL, NULL, NULL, 11, '2017-12-13 02:38:14'),
(170, 1, 1, 3, 'UM 0206 - CL/1560', 'Undangan Wrap Up Meeting Kunjungan Tim Supervision Mission Islamic Development Bank (IDB) Kegiatan Sanitasi Berbasis Masyarakat (SANIMAS) Loan No.IND-167 (IST)', 'DIREKTORAT PENGEMBANGAN PENYEHATAN LINGKUNGAN PERMUKIMAN, KEMENTERIAN PEKERJAAN UMUM DAN PERUMAHAN RAKYAT', '2017-12-07', 'Undangan Wrap Up Meeting Kunjungan Tim Supervision Mission Islamic Development Bank (IDB) Kegiatan Sanitasi Berbasis Masyarakat (SANIMAS) Loan No.IND-167 (IST)', 'Mission Islamic Development Bank (IDB), Kegiatan Sanitasi Berbasis Masyarakat (SANIMAS), Loan No.IND-167 (IST)', '2017-12-07-UM_0206-CL_1560_Undangan_Wrap_Up_Meeting_Kunjungan_Tim_Supervision_Mission_Islamic_Development_Bank_(IDB)_Kegiatan_Sanitasi_Berbasis_Masyarakat_(SANIMAS)_Loan_No.IND-167_(IST).pdf', '2017-12-13', NULL, NULL, NULL, 11, '2017-12-13 02:44:38'),
(171, 1, 1, 3, 'UM 0206 - CL/1561', 'Undangnn Kick Off iYJeeting Kunjungan Tim Supervision Mission Islamic Development Bank (IDB) Kegiatan Sanitasi Berbasis Masyarakat (SANIMAS) Loan No.IND-167 (IST)', 'DIREKTORAT PENGEMBANGAN PENYEHATAN LINGKUNGAN PERMUKIMAN, KEMENTERIAN PEKERJAAN UMUM DAN PERUMAHAN RAKYAT', '2017-12-07', 'Undangnn Kick Off Meeting Kunjungan Tim Supervision Mission Islamic Development Bank (IDB) Kegiatan Sanitasi Berbasis Masyarakat (SANIMAS) Loan No.IND-167 (IST)\r\nHari/Tanggal	: Senin, 18 Desember 2017 (jadwal terlampir)\r\nWaktu 		: Pukul 13.00 WIB s/d selesai\r\nTempat 		: Ruang Rapat Dit. PPLP, Gedung Cipta Karya Lt. 7 Agenda 1. Pembahasan Rencana Kunjungan Tim Supervision Mission IDB\r\nPembahasan	: Jadwal Kunjungan Tim Supervision Mission IDB ke Lokasi Sasaran', 'Kick Off Meeting Kunjungan Tim Supervision Mission Islamic Development Bank (IDB) Kegiatan Sanitasi Berbasis Masyarakat (SANIMAS) Loan No.IND-167 (IST)', '2017-12-07-UM.0206-CL_1561_Undangnn_Kick_Off_Meeting_Kunjungan_Tim_Supervision_Mission_Islamic_Development_Bank_(IDB)_Kegiatan_Sanitasi_Berbasis_Masyarakat_(SANIMAS)_Loan_No.IND-167_(IST).pdf', '2017-12-12', NULL, NULL, NULL, 11, '2017-12-13 02:54:21'),
(172, 1, 1, 3, '11716/Dt.7.5/12/2017', 'Undangan Rapat Menindaklanjuti Surat Seskab terkait dengan pemberian izin pembangunan gedung RS Kepresidenan Gatot Soebroto', 'Dir Pertahanan dan Keamanan', '2017-12-12', 'Undangan Rapat Menindaklanjuti Surat Seskab terkait dengan pemberian izin pembangunan gedung RS Kepresidenan Gatot Soebroto', 'Pemberian izin pembangunan gedung RS Kepresidenan Gatot Soebroto', '2017-12-12-11716_Dt.7.5_12_2017_Undangan_Rapat_Menindaklanjuti_Surat_Seskab_terkait_dengan_pemberian_izin_pembangunan_gedung_RS_Kepresidenan_Gatot_Soebroto.pdf', '2017-12-13', NULL, NULL, NULL, 11, '2017-12-13 05:56:38'),
(173, 1, 1, 3, '11738/Dt.8.2/12/2017', 'Workshop Tinjauan dan Analisis Pendanaan Prioritas', 'Dir Alokasi Pendanaan Pembangunan', '2017-12-12', 'Workshop Tinjauan dan Analisis Pendanaan Prioritas\r\nHari/tanggal : Kamis, 14 Desember 2017\r\nWaktu 	     : 08.30- 12.00 WIB\r\nTempat       : Ruang Rapat Downing 3, Hotel Ashley,', 'Workshop Tinjauan dan Analisis Pendanaan Prioritas', '2017-12-12-11738_Dt.8.2_12_2017_Workshop_Tinjauan_dan_Analisis_Pendanaan_Prioritas.pdf', '2017-12-12', NULL, NULL, NULL, 11, '2017-12-13 06:02:25'),
(174, 2, 1, 2, '11606/Dt.8.1/12/2017', 'Undangan Sebagai Narasumber dalam Pertemuan Penyusunan Rancangan Peraturan Menteri PPN/Bappenas yang Dibiayai melalui Penerbitan Surat Berharga Syariah Negara (SBSN)/Project Based Sukuk', 'Dir Pendanaan dan Pengembangan Pembangunan', '2017-12-11', 'Undangan Sebagai Narasumber dalam Pertemuan Penyusunan Rancangan Peraturan Menteri PPN/Bappenas yang Dibiayai melalui Penerbitan Surat Berharga Syariah Negara (SBSN)/Project Based Sukuk\r\nHari/T anggal : Jumat, 15 Desember 2017\r\nWaktu	      : 09:00 s.d. selesai\r\nTempat        : Ruang Makara 1 Hotel Double Tree Jl Pegangsaan Timur No. 17 Cikini-Menteng Jakarta Pusat', 'Undangan Sebagai Narasumber dalam Pertemuan Penyusunan Rancangan Peraturan Menteri PPN/Bappenas yang Dibiayai melalui Penerbitan Surat Berharga Syariah Negara (SBSN)/Project Based Sukuk', '2017-12-11-11606_Dt.8.1_12_2017_Undangan_Sebagai_Narasumber_Kepada_Direktur_Sarana_dan_Prasarana,_Ditjen_Sumber_Daya_lptek_dan_Dikti_Kementerian_Riset,_Teknologi_dan_Pendidikan_Tinggi.pdf', '2017-12-13', NULL, NULL, NULL, 11, '2017-12-13 06:09:47'),
(177, 2, 1, 3, '11607/Dt.8.1/12/2017', 'Undangan Sebagai Narasumber dalam Pertemuan Penyusunan Rancangan Peraturan Menteri PPN/Bappenas yang Dibiayai melalui Penerbitan Surat Berharga Syariah Negara (SBSN)/Project Based Sukuk', 'Dir Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-12-11', 'Undangan Sebagai Narasumber dalam Pertemuan Penyusunan Rancangan Peraturan Menteri PPN/Bappenas yang Dibiayai melalui Penerbitan Surat Berharga Syariah\r\nNegara (SBSN)/Project Based Sukuk\r\nHari/T anggal : Jumat, 15 Desember 2017\r\nWaktu	      : 09:00 s.d. selesai\r\nTempat        : Ruang Makara 1 Hotel Double Tree Jl Pegangsaan Timur No. 17 Cikini-Menteng Jakarta Pusat', 'Undangan Sebagai Narasumber dalam Pertemuan Penyusunan Rancangan Peraturan Menteri PPN/Bappenas yang Dibiayai melalui Penerbitan Surat Berharga Syariah\r\nNegara (SBSN)/Project Based Sukuk', '2017-12-11-11607_Dt.8.1_12_2017_Undangan_Sebagai_Narasumber_Kepala_Biro_Perencanaan,_Keuangan_dan_Tata_Usaha,_Sekretariat_Utama_Badan_Standarisasi_Nasional_(BSN)1.pdf', '2017-12-13', NULL, NULL, NULL, 11, '2017-12-13 06:14:03'),
(178, 2, 1, 2, '11608/Dt.8.1/12/2017', 'Undangan Sebagai Narasumber dalam Pertemuan Penyusunan Rancangan Peraturan Menteri PPN/Bappenas yang Dibiayai melalui Penerbitan Surat Berharga Syariah Negara (SBSN)/Project Based Sukuk', 'Dir Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-12-11', 'Undangan Sebagai Narasumber dalam Pertemuan Penyusunan Rancangan Peraturan Menteri PPN/Bappenas yang Dibiayai melalui Penerbitan Surat Berharga Syariah Negara (SBSN)/Project Based Sukuk\r\nHari/T anggal : Jumat, 15 Desember 2017\r\nWaktu	      : 09:00 s.d. selesai\r\nTempat        : Ruang Makara 1 Hotel Double Tree Jl Pegangsaan Timur No. 17 Cikini-Menteng Jakarta Pusat', 'Undangan Sebagai Narasumber dalam Pertemuan Penyusunan Rancangan Peraturan Menteri PPN/Bappenas yang Dibiayai melalui Penerbitan Surat Berharga Syariah Negara (SBSN)/Project Based Sukuk', '2017-12-11-11608_Dt.8.1_12_2017_Undangan_Sebagai_Narasumber_Kepada_Sekretaris_Ditjen_Konservasi_Sumber_Daya_Alam_dan_Ekosistem_Kementerian_Lingkungan_Hidup_dan_Kehutanan.pdf', '2017-12-13', NULL, NULL, NULL, 11, '2017-12-13 06:15:56'),
(179, 2, 1, 2, '11609/Dt.8.1/12/2017', 'Undangan Sebagai Narasumber dalam Pertemuan Penyusunan Rancangan Peraturan Menteri PPN/Bappenas yang Dibiayai melalui Penerbitan Surat Berharga Syariah Negara (SBSN)/Project Based Sukuk', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-12-11', 'Undangan Sebagai Narasumber dalam Pertemuan\r\nPenyusunan Rancangan Peraturan Menteri PPN/Bappenas\r\nyang Dibiayai melalui Penerbitan Surat Berharga Syariah\r\nNegara (SBSN)/Project Based Sukuk', 'Undangan Sebagai Narasumber dalam Pertemuan\r\nPenyusunan Rancangan Peraturan Menteri PPN/Bappenas\r\nyang Dibiayai melalui Penerbitan Surat Berharga Syariah\r\nNegara (SBSN)/Project Based Sukuk', '2017-12-11-11609_Dt.8.1_12_2017_Undangan_Sebagai_Narasumber_Kepada_Kepala_Biro_Perencanaan_dan_Keuangan_Lembaga_llmu_Pengetahuan_Indonesia_(LIPI).pdf', '2017-12-13', NULL, NULL, NULL, 11, '2017-12-13 06:17:27'),
(181, 2, 1, 2, '11610/Dt.8.1/12/2017', 'Pembahasan Rancangan Peraturan Menteri PPN/ Kepala Bappenas tentang Perencanaan Proyek melalui Penerbitan Surat Berharga Syariah Negara - Project Based Sukuk (SBSN-PBS)', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-12-11', 'Pembahasan Rancangan Peraturan Menteri PPN/\r\nKepala Bappenas tentang Perencanaan Proyek\r\nmelalui Penerbitan Surat Berharga Syariah Negara -\r\nProject Based Sukuk (SBSN-PBS)\r\nHari/T anggal : Jumat, 15 Desember 2017\r\nWaktu	      : 09:00 s.d. selesai\r\nTempat        : Ruang Makara 1 Hotel Double Tree Jl Pegangsaan Timur No. 17 Cikini-Menteng Jakarta Pusat', 'Pembahasan Rancangan Peraturan Menteri PPN/\r\nKepala Bappenas tentang Perencanaan Proyek\r\nmelalui Penerbitan Surat Berharga Syariah Negara -\r\nProject Based Sukuk (SBSN-PBS)', '2017-12-11-11610_Dt.8.1_12_2017_Pembahasan_Rancangan_Peraturan_Menteri_PPN_Kepala_Bappenas_tentang_Perencanaan_Proyek_melalui_Penerbitan_Surat_Berharga_Syariah_Negara-Project_Based_Sukuk_(SBSN-PBS)1.pdf', '2017-12-13', NULL, NULL, NULL, 11, '2017-12-13 06:21:32'),
(182, 2, 1, 3, '11794/Dt.8.1/12/2017', 'Pembahasan Laporan Kegiatan Direktorat Perencanaan dan Pengembangan Pendanaan Pembangunan', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-12-13', 'Pembahasan Laporan Kegiatan Direktorat Perencanaan dan Pengembangan Pendanaan Pembangunan\r\nHari/tanggal: Kamis, 14 Desember 2017\r\nWaktu       : 09.00 s.d. Selesai\r\nTempat      : Ruang Rapat Oria 2 Hotel Oria Jl. K.H. Wahid Hasyim No. 85 Jakarta Pusat\r\nAgenda      : (terlampir)', 'Pembahasan Laporan Kegiatan Direktorat Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-12-13-11794_Dt.8.1_12_2017_Pembahasan_Laporan_Kegiatan_Direktorat_Perencanaan_dan_Pengembangan_Pendanaan_Pembangunan.pdf', '2017-12-13', NULL, NULL, NULL, 11, '2017-12-13 08:48:07'),
(183, 1, 2, 3, '2052/.Ses.ND/12/2017', 'Formulir isian Human Capital Development Plan (HCDP)', 'Sekretaris Kementerian PPN/Sestama Bappenas', '2017-12-13', 'ampiran daftar unit kerja yang telah menyampaikan formulir isian HCDP yang telah dilengkapi', 'HCDF', '2017-12-13-2052_Ses.ND_12_2017_Formulir_Isian_Human_Capital_Development_Plan_(HCDP).pdf', '2017-12-14', 'sudah dikirim ke Biro SDM', 5, '2018-01-03 00:00:00', 11, '2017-12-14 07:47:24'),
(184, 1, 1, 3, '11720/SES/12/2017', 'Revisi Undangan Rapat TC dan SC', 'Sekretaris Kementerian PPN/Sestama Bappenas', '2017-12-12', 'Revisi Undangan Rapat TC dan SC', 'Revisi Undangan Rapat TC dan SC', '2017-12-12-11720_SES_12_2017_Revisi_Undangan_Rapat_TC_dan_SC.pdf', '2017-12-14', NULL, NULL, NULL, 11, '2017-12-14 08:12:30'),
(185, 1, 1, 3, '2383/B.02.ND/12/2017', 'Pengawasan Netralitas Pegawai ASN pada Pelaksanaan Pilkada Serentak Tahun 2017', 'Kepala Biro SDM', '2017-12-13', 'Pengawasan Netralitas Pegawai ASN pada Pelaksanaan Pilkada Serentak Tahun 2017', 'Pengawasan Netralitas Pegawai ASN pada Pelaksanaan Pilkada Serentak Tahun 2017', '2017-12-13-2383_B.02.ND_12_2017_Pengawasan_Netralitas_Pegawai_ASN_pada_Pelaksanaan_Pilkada_Serentak_Tahun_2017.pdf', '2017-12-14', NULL, NULL, NULL, 11, '2017-12-14 08:34:10'),
(186, 1, 1, 3, '2382/B.02.ND/12/20 17', 'QSQL dalam Rangka Peningkatan Kualitas Perencanaan Pembangunan', 'Kcpala Biro SDM', '2017-12-13', 'pertemuan presentasi QSQL (Quick Share for Quick Learn) hasil pelatihan training untuk peningkatan kualitas Perecanaan Pembangunan di Kementerian PPN/Bappenas\r\nHari/Tanggal : Jumat, 22 Desember 2017\r\nWaklu             : Pukul 09.00 Selesai\r\nTempat          : Ruang Rapat DH 1-5 Gedung Saleh Afif', 'QSQL (Quick Share for Quick Learn)', '2017-12-13-2382_B.02.ND_12_2017_QSQL_dalam_Rangka_Peningkatan_Kualitas_Perencanaan_Pembangunan.pdf', '2017-12-14', NULL, NULL, NULL, 11, '2017-12-14 08:44:52'),
(187, 1, 2, 3, '249/SA.04.M/12/2017', 'Penyampaian Notulensi Rapat Pendahuluan Pelaksanaan Forum Konsultasi Publik 2017', 'Staf Ahli Menteri Bidang Hubungan Kelembagaan', '2017-12-14', 'Notulensi Rapat Pendahuluan Pelaksanaan Forum Konsultasi Publik 2017', 'Notulensi Rapat Pendahuluan Pelaksanaan Forum Konsultasi Publik 2017', '2017-12-14-249_SA.04.M_12_2017_Penyampaian_Notulensi_rapat_Pendahuluan_Pelaksanaan_Forum_Konsultasi_Publik_2017.pdf', '2017-12-16', 'sudah dibaca', 4, '2018-01-03 00:00:00', 11, '2017-12-18 01:38:11'),
(189, 2, 2, 3, '256/Dt.8.1.ND/12/2017', 'Penyampaian Konsep Laporan Kinerja (LKj) Direktorat Renbang PP', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-12-15', 'Penyampaian Konsep Laporan Kinerja (LKj) Direktorat Renbang PP', 'Penyampaian Konsep Laporan Kinerja (LKj) Direktorat Renbang PP', '2017-12-15-Laporan_Kinerja_Dit.Renbang_2017.pdf', '2017-12-15', NULL, NULL, NULL, 11, '2017-12-18 02:53:28'),
(201, 1, 1, 3, '04276/DM/12/17/61/09', 'Undangan Rapat Tingkat Eselon I Pembahasan Rancangan Peraturan Presiden Tentang Pengelolaan Pemberian Bantuan lnternasional, 19 Desember 2017.', 'DIREKTORAT JENDERAL INFORMASI DAN DIPLOMASI PUBLIK, KEMENTERIAN LUAR NEGERI REPUBLIK lNDONESIA', '2017-12-18', 'Undangan Rapat Tingkat Eselon I Pembahasan Rancangan Peraturan Presiden Tentang Pengelolaan Pemberian Bantuan lnternasional, 19 Desember 2017.\r\n\r\nHari/Tangal	:Selasa, 19 Desember 2017\r\nWaktu		:09.30 s.d. selesai\r\nTempat		:Ruang Rapat Dlljen Multilateral Lt. 8 Gedung Ex BP7 Kementerian Luar Negeri RI Jl. Taman Pejambon No.6, Jakarta Pusat 10110', 'Undangan Rapat Tingkat Eselon I Pembahasan Rancangan Peraturan Presiden Tentang Pengelolaan Pemberian Bantuan lnternasional, 19 Desember 2017.', '2017-12-18-04276_DM_12_17_61_09_Rapat_tk._Eselon_1__Pembahasan_Rancangan_Perpres_ttg_Pengelolaan_Pemberian_Bantuan_Internasional_19.12.17.pdf', '2017-12-18', NULL, NULL, NULL, 11, '2017-12-18 03:13:12'),
(202, 2, 2, 3, '258/Dt.8.1.ND/12/2017', 'Due Diligence Penerbitan SBSN dalam Valuta Asing di Pasar Perdana lnternasional Tahun 2018', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-12-15', 'Due Diligence Penerbitan SBSN dalam Valuta Asing di Pasar Perdana lnternasional Tahun 2018', 'Due Diligence Penerbitan SBSN dalam Valuta Asing di Pasar Perdana lnternasional Tahun 2018', '2017-12-15-258_Dt.8.1.ND_12_2017_due_Diligence_Penerbitan_SBSN_Dalam_Valuta_asing_si_Pasar_Perdana_Internasional.pdf', '2017-12-15', NULL, NULL, NULL, 11, '2017-12-18 03:20:58'),
(206, 1, 2, 3, '2383/B.02.ND/12/2017', 'Pengawasan Netralitas Pegawai ASN pada Pelaksanaan Pilkada Serentak Tahun 2017', 'Kepala Biro SDM', '2017-12-13', 'Pengawasan Netralitas Pegawai ASN pada Pelaksanaan Pilkada Serentak Tahun 2017', 'Pengawasan Netralitas Pegawai ASN pada Pelaksanaan Pilkada Serentak Tahun 2017', '2017-12-13-2383_B.02.ND_12_2017_Pengawasan_Netralitas_Pegawai_ASN_pada_Pelaksanaan_Pilkada_Serentak_Tahun_20171.pdf', '2017-12-14', 'Telah diketahui.', 6, '2018-01-02 00:00:00', 11, '2017-12-20 05:17:45'),
(207, 1, 2, 3, '1919/SES.ND/11/2017', 'Formulir isian Human Capital Development Plan (HCDP)', 'Sesmen PPN', '2017-11-21', 'Formulir isian Human Capital Development Plan (HCDP)', 'Formulir isian Human Capital Development Plan (HCDP)', '2017-11-21-1919_SES.ND_11_2017_Formulir_isian_Human_Capital_Development_Plan_(HCDP).pdf', '2017-11-21', NULL, NULL, NULL, 11, '2017-12-18 03:45:12'),
(208, 1, 2, 3, 'Und- 2.5/D.VII.M.EKON.5/12/2017', 'Undangan Focus Group Discussion', 'Asisten Deputi Bidang Koordinasi Kerjasama Ekonomi Internasional', '2017-11-14', 'Undangan Focus Group Discussion \"Implementa Hasil G20 pada Kerjasama Regional dan Bilateral\"', 'Undangan Focus Group Discussion \"Implementa Hasil G20 pada Kerjasama Regional dan Bilateral\"', '2017-11-14-Und-25_D.VIII.M.EKON.5_12_2017_Undangan_Focus_Group_Discussion__Implementasi_Hasil_G20_pada_Kerjasama_Regional_dan_Bilateral.pdf', '2017-12-18', NULL, NULL, NULL, 11, '2017-12-18 08:18:48'),
(209, 1, 2, 3, '19/ 24 /DOTP-GLP-PDUP/Srt/8', 'Buku Government and Central Bank External Debt', 'DEPARTEMEN OPERASION:f TRESURI DAN PINJAMAN, Bank Indonesia', '2017-12-07', 'Buku Government and Central Bank External Debt', 'Buku Government and Central Bank External Debt', '2017-12-07-No.19_24_DOTP-GLP-PDUP_Srt_8_Buku_Government_and_Central_Bank_External_Debt.pdf', '2017-12-18', NULL, NULL, NULL, 11, '2017-12-18 03:56:20'),
(211, 1, 2, 3, 'UND-8/MK.8/2017', 'Pelaksanaan Due Diligence Dalam Rangka Proses Penerbitan SBSN Dalam Valuta Asing di Pasar Perdana lnternasional tahun 2018', 'Menteri Keuangan', '2017-12-13', 'Pelaksanaan Due Diligence Dalam Rangka Proses Penerbitan SBSN Dalam Valuta Asing di Pasar Perdana lnternasional tahun 2018', 'Pelaksanaan Due Diligence Dalam Rangka Proses Penerbitan SBSN Dalam Valuta Asing di Pasar Perdana lnternasional tahun 2018', '2017-12-13-UND-8_MK.8_2017_Pelaksanaan_Due_Diligence_Dalmn_I~angka_Proses_Penerbitan_SBSN_Dalam_Valuta_Asing_di_Pasar_Perdana_lntcrnasional_tahun_2018.pdf', '2017-12-15', NULL, NULL, NULL, 11, '2017-12-18 04:01:12'),
(212, 1, 2, 3, '388/D.3.ND/12/2017', 'Penyampaian Dokumen Usulan Hibah Global Sustainable Supply Chains for Marine Commodities', 'Deputi Bidang Kemaritiman dan Sumber Daya Alam', '2017-12-12', 'Penyampaian Dokumen Usulan Hibah Global Sustainable Supply Chains for Marine Commodities', 'Global Sustainable Supply Chains for Marine Commodities', '2017-12-12-388_D.3.ND_12_2017_Penyampaian_dokumen_usulah_hibah_global_sustainable_supply_chains_for_marine_commodities.pdf', '2017-12-18', 'Sudah dimasukan ke dalam list DRKH 2018.  DIPK dan SUK nya sudah ada. Namun usulan belum lengkap, karena berubah executing agency-nya. Semula dari KKP menjadi Bappenas.', 6, '2018-01-02 00:00:00', 11, '2017-12-18 06:43:36'),
(214, 1, 2, 3, 'S-371/KF/2017', 'Permintaan sebagai narasumber dalam acara Seminar on OECD report for the G20 \"Investing in Climate, Investing in Growth\"', 'Badan Kebijakan Fiskal , Kemenkeu', '2017-12-06', 'Permintaan sebagai narasumber dalam acara Seminar on OECD report for the G20 \"Investing in Climate, Investing in Growth\"', 'Permintaan sebagai narasumber dalam acara Seminar on OECD report for the G20 \"Investing in Climate, Investing in Growth\"', '2017-12-06-Surat_S-371_KF_2017_Permintaan_sebagai_narasumber_dalam_acara_Seminar_on_OECD_report_for_the_G20__Investing_in_Climate,_Investing_in_Growth1.pdf', '2017-12-15', 'Tidak ada yang hadir', 3, '2018-01-03 00:00:00', 11, '2017-12-19 06:28:18'),
(215, 1, 2, 3, 'B-4568/HK.320/A/ll/2017', 'Penyampaian surat keputusan menteri pertanian nomor: 733/Kpts/OT.OSO/ 10/2017', 'Sekjen Kementerian Pertanian', '2017-12-19', 'Penyampaian surat keputusan menteri pertanian nomor: 733/Kpts/OT.OSO/ 10/2017 Tentang \r\nPemberian Mandat Kepada Sekretaris Jenderal, Inspektur jendral, Direktur Jendral atau Kepala Badan Untuk atas Nama Menteri Pertanian Menandatangani Perjanjian Hibah langsung di Lingkungan Kementerian Pertanian', 'surat keputusan ( SK ) menteri pertanian nomor: 733/Kpts/OT.OSO/ 10/2017', '2017-12-19-Surat_B-4568_HK.320_A_ll_2017_Penyampaian_surat_keputusan_menteri_pertanian_nomor_733_Kpts_OT.O5O_10_2017.pdf', '2017-12-19', 'Masukan sedang diakomodasi. Faizah sedang membuat sistemnya agar dapat mencatat hibah-hibah langsung di sistem Dit. Renbang.', 6, '2018-01-02 00:00:00', 11, '2017-12-19 06:39:20'),
(216, 1, 1, 2, '2064/SES.ND/12/2017', 'Pembatalan Rapat TC-SC', 'Sesmen PPN/Sestama Bappenas', '2017-12-14', 'Pembaiaian Rapat TC-SC Diakrenakan  rendahnya hasil konfirmasi fingkat kehadiran peserta (terutama Pejabat\r\nEselon 1 dan 2) pada undangan rapat tersebut, maka rapat kami bata!kan karena khawatir Udak berja!an efektip', 'Pembatalan Rapat TC-SC', '2017-12-14-Surat_2064_SES.ND_12_2017_Pembatalan_Rapat_TC.SC.pdf', '2017-12-19', NULL, NULL, NULL, 11, '2017-12-19 06:53:34'),
(217, 1, 2, 3, '1591/B.05.ND/12/2017', 'Lelang Kendaraan Dinas Kementeriann PPNjBappenas Melalui E-auction', 'Kepala Biro Umum', '2017-12-19', 'Lelang Kendaraan Dinas Kementeriann PPNjBappenas Melalui E-auction', 'Lelang Kendaraan Dinas Kementeriann PPNjBappenas Melalui E-auction', '2017-12-19-Surat_1591_B.05.ND_12_2017_Lelang_Kendaraan_Dinas_Kementeriann_PPNjBappenas_Melalui_E-auction.pdf', '2017-12-18', 'Telah diketahui.', 6, '2018-01-02 00:00:00', 11, '2017-12-19 06:57:17'),
(218, 1, 1, 2, '960/B.04.ND/12/2017', 'Permintaan Usulan Penarikan Pinjaman dan Hibah beserta Rupiah Murni Pendamping TA 2019 dan Jangka Menengah 2020-2023 serta Rincian Penarikan Bulanan Pinjaman dan Hibah beserta Rupiah Murni Pendamping Tahun 2018', 'Kepala Biro Renortala', '2017-12-14', 'Permintaan Usulan Penarikan Pinjaman dan Hibah beserta Rupiah Murni Pendamping TA 2019 dan Jangka Menengah 2020-2023 serta Rincian Penarikan Bulanan Pinjaman dan Hibah beserta Rupiah Murni Pendamping Tahun 2018', 'Permintaan Usulan Penarikan Pinjaman dan Hibah beserta Rupiah Murni Pendamping TA 2019 dan Jangka Menengah 2020-2023 serta Rincian Penarikan Bulanan Pinjaman dan Hibah beserta Rupiah Murni Pendamping Tahun 2018', '2017-12-14-Surat_960_B.04.ND_12_2017_Permintaan_Usulan_Penarikan_Pinjaman_dan_Hibah_beserta_Rupiah_Murni_Pendamping_TA_2019_dan_Jangka_Menengah_2020-2023_serta_Rincian_penarikan_Blanan_Pinjaman_dan_Hibah_beserta_Rp_Murni_Pendamping.pdf', '2017-12-19', NULL, NULL, NULL, 11, '2017-12-19 07:01:35'),
(219, 1, 1, 3, '467/Dt.7.4.ND/12/2017', 'Penyampaian Hasil Rapat Sosialisasi Cetak Biru ASEAN 2025', 'Direktur Polugri', '2017-12-06', 'Penyampaian Hasil Rapat Sosialisasi Cetak Biru ASEAN 2025', 'Penyampaian Hasil Rapat Sosialisasi Cetak Biru ASEAN 2025', '2017-12-06-Surat_467_Dt.7.4.ND_12_2017_Penyampaian_Hasil_Rapat_Sosialisasi_Cetak_Biru_ASEAN_2025.pdf', '2017-12-08', NULL, NULL, NULL, 11, '2017-12-19 07:06:27'),
(220, 1, 2, 2, '241/IU.ND/12/2017', 'Survei Kepuasan Kegiatan Pengawasan Insfektorat Utama', 'Inspektur Utama', '2017-12-18', 'Survei Kepuasan Kegiatan Pengawasan Insfektorat Utama', 'Survei Kepuasan Kegiatan Pengawasan Insfektorat Utama', '2017-12-18-Surat_241_IU.ND_12_2017_Survei_Kepuasan_Kegiatan_Pengawasan_Inspektorat_Utama.pdf', '2017-12-18', 'Sudah diisi disampaikan ke sekretaris IBKK sesuai dateline', 4, '2018-01-03 00:00:00', 11, '2017-12-19 07:19:11'),
(221, 1, 1, 2, '143/P.02.ND/12/2017', 'Kuesioner Layanan Internet Mobile', 'Kepala Pusat Data dan Informasi', '2017-12-15', 'Kuesioner Layanan Internet Mobile', 'Kuesioner Layanan Internet Mobile', '2017-12-15-Surat_143_P.02.ND_12_2017_Kuesioner_Layanan_Internet_Mobile.pdf', '2017-12-15', NULL, NULL, NULL, 11, '2017-12-19 07:23:42'),
(222, 1, 1, 2, '2397 /B.02.ND/12/2017', 'Penyampaian Buku Kendali Kehadiran', 'Kepala Biro SDM', '2017-12-18', 'Penyampaian Buku Kendali Kehadiran Desember 2017', 'Buku Kendali Kehadiran', '2017-12-18-2397_B.02.ND_12_2017_Penyampaian_Buku_Kendali_Kehadiran.pdf', '2017-12-18', NULL, NULL, NULL, 11, '2017-12-19 07:36:06'),
(223, 1, 2, 3, '-', 'KAK Kegiatan Kajian Analisis Mekanisme Pelaksanaan Anggaran dan Pengadaan Barang_Jasa Kegiatan Pemerintah TA 2018', 'SISDUR', '2017-12-19', 'KAK Kegiatan Kajian Analisis Mekanisme Pelaksanaan Anggaran dan Pengadaan Barang_Jasa Kegiatan Pemerintah TA 2018', 'KAK Kegiatan Kajian Analisis Mekanisme Pelaksanaan Anggaran dan Pengadaan Barang_Jasa Kegiatan Pemerintah TA 2018', '2017-12-19-KAK_Kegiatan_Kajian_Analisis_Mekanisme_Pelaksanaan_Anggaran_dan_Pengadaan_Barang_Jasa_Kegiatan_Pemerintah_TA_2018.pdf', '2017-12-19', NULL, NULL, NULL, 11, '2017-12-19 09:20:35'),
(224, 1, 1, 3, 'Und-220/PR/17', 'Narsum Kebijakan mengenai Perencanaan dan Pendanaan untuk Pembiayaan melalui SBSN', 'DIRJEN. PPR, KEMENKEU', '2017-12-19', 'Narsum Kebijakan mengenai Perencanaan dan Pendanaan untuk Pembiayaan melalui SBSN', 'Narsum Kebijakan mengenai Perencanaan dan Pendanaan untuk Pembiayaan melalui SBSN', '2017-12-19-UND-220_PR_17_Narsum_Kebijakan_mengenai_Perencanaan_dan_Pendanaan_untuk_Pembiayaan_melalui_SBSN.pdf', '2017-12-19', NULL, NULL, NULL, 11, '2017-12-19 09:59:17'),
(225, 1, 2, 3, '2409/B.02.ND/12/2017', 'Penjelasan tentang Cuti Bersama', 'Kepala Biro Sumber Daya Manusia', '2017-12-19', 'Penjelasan tentang Cuti Bersama', 'Penjelasan tentang Cuti Bersama', '2017-12-19-2409_B.02.ND_12_2017_Penjelasan_tentang_Cuti_Bersama.pdf', '2017-12-20', 'Sudah jelas.', 6, '2018-01-02 00:00:00', 11, '2017-12-20 04:17:33'),
(226, 1, 1, 3, '2410/B.02.ND/12/2017', 'Presentasi QSQL (Quick Share for Qucik Learn)', 'Kepala Biro Sumber Daya Manusia', '2017-12-18', 'Dalam rangka presentasi QSQL (Quick Share for Quick Learn) hasil studi gelar dan non gelar pegawai di Kementerian PPN/Bappenas', 'Presentasi QSQL (Quick Share for Qucik Learn)', '2017-12-18-2410_0B.02.ND_12_2017_Presentasi_QSQL_(Quick_Share_for_Qucik_Learn).pdf', '2017-12-20', NULL, NULL, NULL, 11, '2017-12-20 04:27:40'),
(227, 1, 2, 3, '-', 'Request for meeting to discuss the Integrated Sustainable Urban Development in Indonesia (\"Eco-district\") project', 'AFD', '2017-12-19', 'Request for meeting to discuss the Integrated Sustainable Urban Development in Indonesia (\"Eco-district\") project', 'Request for meeting to discuss the Integrated Sustainable Urban Development in Indonesia (\"Eco-district\") project', '2017-12-19-(_AFD_)_Request_for_meeting_to_discuss_the_Integrated_Sustainable_Urban_Development_in_Indonesia_(Eco-district_)_project.pdf', '2017-12-20', 'Penentuan lokasi proyek sebaiknya dilakukan dengan analisis yang komprehensif. Sehingga akan terbangun kota-kota berkelanjutan yang dapat menjadi contoh (pilot project) untuk kota-kota lainnya.', 6, '2018-01-02 00:00:00', 11, '2017-12-20 06:40:06'),
(228, 1, 1, 3, '11724/Dt.3.1/12/2017', 'Penyusunan rancangan RKP 2019', 'DIR. PANGAN DAN PERTANIAN', '2017-12-19', 'Penyusunan rancangan RKP 2019 terkait bahan Rancangan Renja dan indikasi pembiayaan Kementerian Pertanian', 'Penyusunan rancangan RKP 2019', '2017-12-19-11724_Dt.3.1_12_2017_Penyusunan_rancangan_RKP_2019.pdf', '2017-12-20', NULL, NULL, NULL, 11, '2017-12-21 02:00:30'),
(229, 1, 1, 3, '193/D.9.ND/12/2017', 'Permohonan Data Hibah dan Pinjaman Luar Negeri', 'Deputi Bidang Pemantauan, Evaluasi dan Pengendalian Pembangunan', '2017-12-20', 'Menugaskan pada:\r\nNama     : Sdri. Karolina Siahaan\r\nJabatan  : Staf Kedeputian Pemantauan Evaluasi dan Pengendalian Pembangunan\r\n\r\nUntuk\r\nPermohonan Data Hibah dan Pinjaman Luar Negeri terkait Sesuai dengan arahan Menteri, maka Deputi Bidang Pemantauan, Evaluasi dan Pengendalian Pembangunan ditugaskan untuk mengukur kinerja hibah/pinjaman luar negeri. Untuk itu, kiranya kami bisa mendapatkan data daftar nama kegiatan/proyek hibah dan pinjaman luar negeri tersebut', 'Permohonan Data Hibah dan Pinjaman Luar Negeri, Kedeputian Pemantauan Evaluasi dan Pengendalian Pembangunan', '2017-12-20-193_D.9.ND_12_2017_Permohonan_data_hibah_dan_pinjaman_LN.pdf', '2017-12-21', NULL, NULL, NULL, 11, '2017-12-21 02:04:50'),
(230, 1, 1, 3, '2100/Ses.M/12/17', 'Rapim', 'SESMEN.PPN', '2017-12-20', 'Rapim', 'Rapim, Rapat Pimpinan', '2017-12-20-2100_Ses.M_12_17_Rapim.pdf', '2017-12-20', NULL, NULL, NULL, 11, '2017-12-21 02:08:17'),
(231, 1, 1, 3, 'UND-144/PR.4/2017', 'Undangan Forum Kebijakan Tingkat Pimpinan Unit Eselon I K/L terkait Pembiayaan Proyek lnfrastruktur Melalui SBSN', 'DIREKTORAT JENDERAL PENGELOLAAN PEMBIAYAAN DAN RISIKO DIREKTORAT PEMBIAYAAN SYARIAH', '2017-12-18', 'Undangan Forum Kebijakan Tingkat Pimpinan Unit Eselon I K/L terkait Pembiayaan Proyek lnfrastruktur Melalui SBSN\r\nHAri/Tanggal: Jumat,22 Desember 2017\r\nWaktu       : Pukut 08.00 s.d selesai\r\nTempat      : Gedung Dhanapala Kermenterian Keuangan Jalan Dr. Wahidin Raya No.1 Jakarta Pusat', 'Undangan Forum Kebijakan Tingkat Pimpinan Unit Eselon I K/L terkait Pembiayaan Proyek lnfrastruktur Melalui SBSN', '2017-12-18-UND-144_PR.4_2017_-_Bappenas.pdf', '2017-12-21', NULL, NULL, NULL, 11, '2017-12-21 04:37:32'),
(232, 1, 1, 3, '2100/Ses.M/12/17', '*********************lagi tes Sistem', '*********************', '2017-12-21', '*********************', '********************* TES SISTEM', '2017-12-21-2100_Ses.M_12_17_Rapim.pdf', '2017-12-21', NULL, NULL, NULL, 11, '2017-12-21 09:40:41'),
(233, 1, 1, 3, '2100/Ses.M/12/17', 'Rapim', 'SESMEN.PPN', '2017-12-20', 'Rapim', 'Rapim, Rapat Pimpinan', '2017-12-20-2100_Ses.M_12_17_Rapim1.pdf', '2017-12-20', NULL, NULL, NULL, 11, '2017-12-21 09:35:15'),
(234, 2, 2, 3, '007/KOO/Dt.8.1/12/2017', 'Pembahasan Pengembangan Sistem lnformasi Direktorat Renbang PP', 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', '2017-12-21', 'Pembahasan Pengembangan Sistem lnformasi Direktorat Renbang PP', 'Pembahasan Pengembangan Sistem lnformasi Direktorat Renbang PP', '2017-12-21-007_KOO_Dt.8.1_12_2017_Pembahasan_Pengembangan_Sistem_lnformasi_Direktorat_Renbang_PP.pdf', '2017-12-21', NULL, NULL, NULL, NULL, '2017-12-28 07:51:23'),
(235, 1, 2, 3, '440/D.I.ND/11/2017', 'Program KSI dan Profil Lembaga Penelitian Kebijakan Mitra KSI', 'Deputi Bidang Polhukhankam', '2017-11-11', 'Program KSI dan Profil Lembaga Penelitian Kebijakan Mitra KSI terlampir disampaikan ruang lingkup Program KSI dan profil dari lembaga penelitian kebijakan yang menjadi mitra KSI', 'Program KSI dan Profil Lembaga Penelitian Kebijakan Mitra KSI', '2017-11-11-440_D.I.ND_11_2017_Program_KSI_dan_Profil_Lembaga_Penelitian_Kebijakan_Mitra_KSI.pdf', '2017-11-13', NULL, NULL, NULL, NULL, '2017-12-22 07:17:07'),
(236, 1, 2, 3, '282/D.8.ND/11/2017', 'Penyusunan DRPLN-JM/Blue Book Khusus Tahun 2015-2019 Revisi,DRPPLN/Green Book Khusus Tahun 2017 dan Daftar Kegiatan Khusus Tahun 2017 untuk Kemhan/TNI', 'Plh. Deputi Bidang Pendanaan Pembangunan', '2017-12-13', 'Penyusunan DRPLN-JM/Blue Book Khusus Tahun 2015-2019 Revisi,DRPPLN/Green Book Khusus Tahun 2017 dan Daftar Kegiatan Khusus Tahun 2017 untuk Kemhan/TNI', 'Penyusunan DRPLN-JM/Blue Book Khusus Tahun 2015-2019 Revisi,DRPPLN/Green Book Khusus Tahun 2017 dan Daftar Kegiatan Khusus Tahun 2017 untuk Kemhan/TNI', '2017-12-13-282_D.8.ND_11_2017_Penyusunan_DRPLN-JM_Biue_book_khusus_tahun_205-20.19_revisi,_DRPPLN_green_book_khusus_tahun_2017_untuk_Kemenhan_TNI.pdf', '2017-12-22', NULL, NULL, NULL, NULL, '2017-12-22 07:21:55'),
(237, 1, 2, 1, '282/0.8.ND/11/2017', 'Penyusunan DRPLN-JM/Blue Book Khusus Tahun 2015-2019 Revisi,DRPPLN/Green Book Khusus Tahun 2017 dan Daftar Kegiatan Khusus Tahun 2017 untuk Kemhan/TNI', 'Plh. Deputi Bidang Pendanaan Pembangunan', '2017-11-13', 'Penyusunan DRPLN-JM/Blue Book Khusus Tahun 2015-2019 Revisi,DRPPLN/Green Book Khusus Tahun 2017 dan Daftar Kegiatan Khusus Tahun 2017 untuk Kemhan/TNI', 'Penyusunan DRPLN-JM/Blue Book Khusus Tahun 2015-2019 Revisi,DRPPLN/Green Book Khusus Tahun 2017 dan Daftar Kegiatan Khusus Tahun 2017 untuk Kemhan/TNI', '2017-11-13-282_D.8.ND_11_2017_Penyusunan_DRPLN-JM_Biue_book_khusus_tahun_205-20.19_revisi,_DRPPLN_green_book_khusus_tahun_2017_untuk_Kemenhan_TNI.pdf', '2017-11-20', NULL, NULL, NULL, 11, '2017-12-22 07:26:24'),
(238, 1, 2, 3, '211/D.6/11/2017', 'Pengusulan Hibah TA 9391-INO: Knowledge and Support TA for Leveraging Information and Communication for Irrigated Agricultural Information Project dalam DRKH', 'DEPUTI SARANA DAN PRASARANA', '2017-11-10', 'Pengusulan Hibah TA 9391-INO: Knowledge and Support TA for Leveraging Information and Communication for Irrigated Agricultural Information Project dalam DRKH', 'Knowledge and Support TA for Leveraging Information and Communication for Irrigated Agricultural Information', '2017-11-10-211_D.6_11_2017_Pengusulan_hibah_TA_9391-INO_Knowledge_and_support_TA_for_leveraging_information_and_communication_for_Irrigated_Agricultural_Information_Project_dalam_DRKH.pdf', '2017-11-20', NULL, NULL, NULL, 11, '2017-12-22 07:38:19'),
(239, 1, 2, 3, '1960/SES.M/11/2017', 'Ketentuan Tugas Belajar dan ljin Belajar Bagi PNS di Kementerian PPN/Bappenas', 'Sekretaris Kementerian PPN/Sestama Bappenas', '2017-11-28', 'Ketentuan Tugas Belajar dan ljin Belajar Bagi PNS di Kementerian PPN/Bappenas', 'Ketentuan Tugas Belajar dan ljin Belajar Bagi PNS di Kementerian PPN/Bappenas', '2017-11-28-1960_SES.M_11_2017_Ketentuan_Tugas_Belajar_dan_ljin_Belajar_Bagi_PNS_di_Kementerian_PPN_Bappenas..pdf', '2017-11-28', NULL, NULL, NULL, 11, '2017-12-22 07:41:27');
INSERT INTO `irena_arsip` (`id`, `id_jenis`, `id_status`, `id_tingkat`, `no`, `perihal`, `dari`, `tgl`, `ringkasan`, `keywords`, `berkas`, `tgl_terima`, `selesai_cat`, `selesai_by`, `selesai_date`, `update_by`, `update_date`) VALUES
(240, 1, 2, 3, '371/Dt.8.5.ND/11/2017', 'Permohonan Masukan Terhadap Draf Akhir Standard Operating Procedure (SOP) Turunan dari Peraturan Memteri PPN/Kepala Bappenas Nomor 9 Tahun 2017 Tentang Tata/Cara Penyusunan dan Penelaahan Rencana Kerja Kementerian/lembaga', 'SISDUR', '2017-11-23', 'Permohonan Masukan Terhadap Draf Akhir Standard Operating Procedure (SOP) Turunan dari Peraturan Memteri PPN/Kepala Bappenas Nomor 9 Tahun 2017 Tentang Tata/Cara Penyusunan dan Penelaahan Rencana Kerja Kementerian/lembaga', 'Permohonan Masukan Terhadap Draf Akhir Standard Operating Procedure (SOP) Turunan dari Peraturan Memteri PPN/Kepala Bappenas Nomor 9 Tahun 2017 Tentang Tata/Cara Penyusunan dan Penelaahan Rencana Kerja Kementerian/lembaga', '2017-11-23-371_Dt.8.5.ND_11_2017_Permohonan_Masukan_Terhadap_Draf_Akhir_(SOP)_Turunan_dari_Peraturan_Menteri_PPN_Kepala_Bappenas_No_9_Tahun_2017.pdf', '2017-11-23', NULL, NULL, NULL, 11, '2017-12-22 07:46:38'),
(241, 1, 2, 3, '10644/D.5/11 /2017', 'Perubahan alokasi pembangunan gedung balai nikah dan manasik haji melalui pembiayaan SBSN lh 2017', 'DEPUTI BIDANG PEMBANGUNAN MANUSIA, MASYARAKAT DAN KEBUDAYAAN', '2017-11-21', 'Perubahan alokasi pembangunan gedung balai nikah dan manasik haji melalui pembiayaan SBSN lh 2017 KUA Kecamatan Kakuluk Mesak, Kabupaten Belu, Provinsi Nusa Tenggara Timur', 'Perubahan alokasi pembangunan gedung balai nikah dan manasik haji melalui pembiayaan SBSN lh 2017 KUA Kecamatan Kakuluk Mesak, Kabupaten Belu, Provinsi Nusa Tenggara Timur', '2017-11-21-10644_D.S_11_2017_Perubahan_alokasi_pembangunan_gedung_balai_nikah_dan_manasik_haji_melalui_pembiayaan_SBSN_lh_2017.pdf', '2017-11-21', NULL, NULL, NULL, 11, '2017-12-22 07:50:01'),
(242, 1, 2, 3, '10496/Dt.8.3/ 11/2017', 'Notulen Rapat Pembahasan Usulan Proyek Improvement of TV Trasmitting Station Phase III (Digitalization of TVRI)', 'Dir. Bilateral', '2017-12-17', 'Notulen Rapat Pembahasan Usulan Proyek Improvement of TV Trasmitting Station Phase III (Digitalization of TVRI)', 'Improvement of TV Trasmitting Station Phase III (Digitalization of TVRI)', '2017-12-17-10496_Dt.8.3_11_2017_Notulen_Rapat_Pembahasan_Usulan_Proyek_Improvement_of_TV_Transmitting_Station_Phase_III_(Digitalization_of_TVRI).pdf', '2017-12-17', NULL, NULL, NULL, 11, '2017-12-22 07:59:28'),
(243, 1, 2, 2, '367/I.01.ND/11/2017', 'Rapat Koordinasi dan Konfirmasi terkait Proses Perencanaan Hibah Luar Negeri dengan BPK', 'IBAU', '2017-11-23', 'Rapat Koordinasi dan Konfirmasi terkait Proses Perencanaan Hibah Luar Negeri dengan BPK', 'Rapat Koordinasi dan Konfirmasi terkait Proses Perencanaan Hibah Luar Negeri dengan BPK', '2017-11-23-367_I.01.ND_11_2017_Rapat_koordinasi_dan_konfirmasi_terkait_proses_perencanaan_Hibah_Luar_Negeri_dengan_BPK.pdf', '2017-11-23', NULL, NULL, NULL, 11, '2017-12-22 08:02:10'),
(244, 1, 1, 3, '11806/Ses/12/2017', 'Undangan Temu Konsultasi Publik RPermen RKP', 'Sekretaris Kementerian PPN/Sestama Bappenas', '2017-12-20', 'Undangan Temu Konsultasi Publik RPermen RKP', 'Undangan Temu Konsultasi Publik RPermen RKP', '2017-12-20-1806_Ses_12_2017_Undangan_Temu_Konsultasi_Publik_RPermen_RKP.pdf', '2017-12-22', NULL, NULL, NULL, 11, '2017-12-22 08:26:56'),
(245, 1, 1, 3, 'S-983/MK.08/2017', 'Permintaan Usulan Penarikan Pinjaman dan Hibah beserta Rupiah Murni Pendamping TA 2019 dan Jangka Menengah 2020-2023 serta Rincian Penarikan Bulanan Pinjaman dan Hibah beserta Rupiah Murni Pendamping Tahun 2018', 'MENTERI KEUANGAN', '2017-12-08', 'Permintaan Usulan Penarikan Pinjaman dan Hibah beserta Rupiah Murni Pendamping TA 2019 dan Jangka Menengah 2020-2023 serta Rincian Penarikan Bulanan Pinjaman dan Hibah beserta Rupiah Murni Pendamping Tahun 2018', 'Permintaan Usulan Penarikan Pinjaman dan Hibah beserta Rupiah Murni Pendamping TA 2019 dan Jangka Menengah 2020-2023 serta Rincian Penarikan Bulanan Pinjaman dan Hibah beserta Rupiah Murni Pendamping Tahun 2018', '2017-12-08-S-983_MK.OB_2017_Permintaan_Usulan_Penarikan_Pinjaman_dan_Hibah_beserta_Rupiah_Murni_Pendamping_TA_2019_dan_Jangka_Menengah_2020-2023_serta_Rincian_Penarikan_Bulanan_Pinjaman_dan_Hibah_beserta_Rupiah_Murni_Pendamping_Tahun_2018.pdf', '2017-12-22', NULL, NULL, NULL, 11, '2017-12-22 08:40:16'),
(246, 1, 1, 3, '2114/ses.nd/12/2017', 'Penyampaian Usul Kebutuhan PNS Tahun 2018', 'Sekretaris Kementerian PPN/Sestama Bappenas', '2017-12-21', 'Penyampaian Usul Kebutuhan PNS Tahun 2018', 'Penyampaian Usul Kebutuhan PNS Tahun 2018', '2017-12-21-2114_ses.nd_12_2017_penyampaian_usulan_kebutuhan_PNS_TAHUN_2018.pdf', '2017-12-22', NULL, NULL, NULL, 11, '2017-12-22 08:44:12'),
(247, 1, 1, 3, 'S-906/PR/2017', 'Amandemn perjanjian induk pinjaman dalam negeri TA 2015 tahap I antara pemerintah Indonesia dan PT.BNI Persero', 'DITJEN PENGELOLAAN PEMBIAYAAN DAN RISIKO', '2017-12-07', 'Amandemn perjanjian induk pinjaman dalam negeri TA 2015 tahap I antara pemerintah Indonesia dan PT.BNI Persero', 'Amandemn perjanjian induk pinjaman dalam negeri TA 2015 tahap I antara pemerintah Indonesia dan PT.BNI Persero', '2017-12-07-S-906_PR_2017_Amandemen_perjanjian_induk_pinjaman_dalam_negeri_TA_2015_tahap_I_antara_pemerintah_Indonesia_dan_PT.BNI_Persero.pdf', '2017-12-22', NULL, NULL, NULL, 11, '2017-12-22 08:53:53'),
(248, 1, 1, 3, '-', 'Possible IMF diagnostic on public investment management', 'IMP Regional Public Financial Management Advisor for Southeast Asia Fiscal Affairs Department and iMF Technical Assistance Office in Thailand (TAOLAM)', '2017-12-15', 'Possible IMF diagnostic on public investment management', 'Possible IMF diagnostic on public investment management', '2017-12-15-Possible_IMF_diagnostic_on_public_investment_management.pdf', '2017-12-22', NULL, NULL, NULL, 11, '2017-12-22 09:03:47'),
(249, 1, 2, 3, '19424/TI/1 0/2017/49', 'Undangan sebagai Peserta dan Narasumber pada Lokakarya Pembahasan Hasii-Hasil KTT G20 pada Presidensi Jerman, Persiapan lsu-lsu Prioritas Presidensi G20 Argentina dan Perumusan 1st Draft lmplementasi Komitmen Indonesia pada G20 Tahun 2017, Bogor, 23-25 Ok', 'Direktur Pembangunan Ekonomi dan Lingkungan Hidup', '2017-10-16', 'Undangan sebagai Peserta dan Narasumber pada Lokakarya Pembahasan Hasii-Hasil KTT G20 pada Presidensi Jerman, Persiapan lsu-lsu Prioritas Presidensi G20 Argentina dan Perumusan 1st Draft lmplementasi Komitmen Indonesia pada G20 Tahun 2017, Bogor, 23-25 Oktober 2017', 'Undangan sebagai Peserta dan Narasumber pada Lokakarya Pembahasan Hasii-Hasil KTT G20 pada Presidensi Jerman, Persiapan lsu-lsu Prioritas Presidensi G20 Argentina dan Perumusan 1st Draft lmplementasi Komitmen Indonesia pada G20 Tahun 2017, Bogor, 23-25 Oktober 2017', '2017-10-16-19424_TI_10_2017_49_Undangan_sebagai_Peserta_dan_Narasumber_pada_Lokakarya_Pembahasan_Hasii-Hasil_KTT_G20_pada_Presidensi_Jerman,_Persiapan_lsu-lsu_Prioritas_Presidensi_G20_Argentina_dan_Perumusan_1st_Draft_lmplementasi_Komitmen_Ind.pdf', '2017-10-16', NULL, NULL, NULL, 11, '2017-12-22 09:19:00'),
(250, 1, 1, 3, '223/IU.ND/11/2017', 'Penyampaian Laporan Hasil Audit dengan Tujuan Tertentu atas Proses Penyusunan Daftar Rencana Prioritas Pinjaman Luar Negeri (DRPPLN) yang dilakukan Pada Tahun 2017', 'lnspektur Utama', '2017-11-13', 'Penyampaian Laporan Hasil Audit dengan Tujuan Tertentu atas Proses Penyusunan Daftar Rencana Prioritas Pinjaman Luar Negeri (DRPPLN) yang dilakukan Pada Tahun 2017', 'Penyampaian Laporan Hasil Audit dengan Tujuan Tertentu atas Proses Penyusunan Daftar Rencana Prioritas Pinjaman Luar Negeri (DRPPLN) yang dilakukan Pada Tahun 2017', '2017-11-13-223_IU.ND_11_2017_Penyampaian_L.aporan_Hasil_Audit_dengan_Tujuan_Tertentu_atas_Proses_Penyusunan_Daftar_Rencana_Prioritas_Pinjaman_Luar_Negeri_(DRPPLN)_yang_Dilakukan_pada_Tahun_2017.pdf', '2017-11-22', NULL, NULL, NULL, 11, '2017-12-22 09:22:53'),
(251, 1, 2, 3, '10189/Dt.6.2/11/2017', 'Undangan Pembahasan Realokasi Kegiatan/Proyek Surat Berharga Syariah Negara Project Based Sukuk (SBSN-PBS) TA. 2017 di Ditjen Bina Marga, Kementerian Pekerjaan Umum dan Perumahdn Rakyat', 'Dir.Transportasi', '2017-11-10', 'Undangan Pembahasan Realokasi Kegiatan/Proyek Surat Berharga Syariah Negara Project Based Sukuk (SBSN-PBS) TA. 2017 di Ditjen Bina Marga, Kementerian Pekerjaan Umum dan Perumahdn Rakyat', 'Undangan Pembahasan Realokasi Kegiatan/Proyek Surat Berharga Syariah Negara Project Based Sukuk (SBSN-PBS) TA. 2017 di Ditjen Bina Marga, Kementerian Pekerjaan Umum dan Perumahdn Rakyat', '2017-11-10-10189_Dt.6.2_11_2017_Undangan_Pembahasan_Realokasi_Kegiatan_Proyek_(SBSN-PBS)_TA._2017_di_Ditjen_Bina_Marga,_Kementerian_PUPERA.pdf', '2017-12-22', NULL, NULL, NULL, 11, '2017-12-22 09:25:59'),
(252, 1, 2, 3, 'B-9868/Kemensetneg/Set/KTLN/LN.03.00/06/2016', 'Tawaran beasiswa Pemerintah Jepang', 'KEMENTERIAN SEKRETARIAT NEGARA REPUBLIK INDONESIA', '2017-12-22', 'Tawaran beasiswa Pemerintah Jepang', 'Tawaran beasiswa Pemerintah Jepang', '2017-12-22-B-9868_Kemensetneg_Set_KTLN_LN.03.00_06_2016_Tawaran_beasiswa_Pemerintah_Jepang.pdf', '2017-12-22', NULL, NULL, NULL, 11, '2017-12-22 09:28:14'),
(253, 1, 2, 3, '8- 23778/SJ/8.1.1/HM.00/11/2017', 'Permohonan Moderator', 'SEKRETARIAT JENDERAL Kepala Biro Perencanaan', '2017-11-20', 'Permohonan Moderator kegiatan Koordinasi Pelaksanaan Proyek yang dibiayai Surat Berharga Syariah Negara (SBSN) Kementerian Agama', 'Permohonan Moderator kegiatan Koordinasi Pelaksanaan Proyek yang dibiayai Surat Berharga Syariah Negara (SBSN) Kementerian Agama', '2017-11-20-B-23778_SJ_8.1.1_HM.00_11_2017_Permohonan_Moderator_Pemantapan_Proyek_yang_Dibiayai_SBSN_Tahun_2018_dan_Kriteria_Usulan_Proyek_yang_Dibiayai_SBSN_Tahun_2019.pdf', '2017-12-22', NULL, NULL, NULL, 11, '2017-12-22 09:31:32'),
(254, 1, 2, 2, 'KU.101/2/22 PHB 2017', 'Usulan Daftar Rencana Prioritas Pinjaman Luar Negeri (DRPPLN) a tau Green Book 2017', 'Menteri Perhubungan Republik Indonesia', '2017-05-26', 'Usulan Daftar Rencana Prioritas Pinjaman Luar Negeri (DRPPLN) a tau Green Book 2017', 'Usulan Daftar Rencana Prioritas Pinjaman Luar Negeri (DRPPLN) a tau Green Book 2017', '2017-05-26-KU.101_2_22_PHB_2017_Usulan_Daftar_Rencana_Prioritas_Pinjaman_Luar_Negeri_(DRPPLN)_atau_Green_Book_2017_(MRT)_(1).pdf', '2017-12-22', NULL, NULL, NULL, 11, '2017-12-22 09:33:56'),
(255, 1, 2, 3, 'HL.02 02 -CP/258', 'Kesiapan Pelaksanaan Kegiatan National Urban Water Supply Project (NUWSP)', 'Dir.Keterpaduan Infrastruktur Permukiman, Dirjen Cipta Karya', '2017-12-22', 'Kesiapan Pelaksanaan Kegiatan National Urban Water Supply Project (NUWSP)', 'Kesiapan Pelaksanaan Kegiatan National Urban Water Supply Project (NUWSP)', '2017-12-22-S-HL0202-Cp285_Kesiapan_Pelaksanaan_Kegiatan_NUWSP_(1).PDF', '2017-12-22', NULL, NULL, NULL, 11, '2017-12-22 09:36:36'),
(256, 1, 2, 3, 'Und- 411/AG.3/2017', 'Undangan Penelaahan Usul Revisi Anggaran Tahun Anggaran 2017 pada Direktorat Jenderal Sumber Daya Air Kementerian Pekerjaan Umum dan Perumahan Rakyat', 'DIREKTORAT JENDERAL ANGGARAN DIREKTORAT ANGGARAN BIDANG PEREKONOMIAN DAN KEMARITIMAN', '2017-12-05', 'Undangan Penelaahan Usul Revisi Anggaran Tahun Anggaran 2017 pada Direktorat Jenderal Sumber Daya Air Kementerian Pekerjaan Umum dan Perumahan Rakyat', 'Undangan Penelaahan Usul Revisi Anggaran Tahun Anggaran 2017 pada Direktorat Jenderal Sumber Daya Air Kementerian Pekerjaan Umum dan Perumahan Rakyat', '2017-12-05-Und-411_AG.3_2017_Undangan_Penelaahan_Usul_Revisi_Anggaran_Tahun_Anggaran_2017_pada_DirJen_SDA_Kementerian_PUPERA.pdf', '2017-12-05', NULL, NULL, NULL, 11, '2017-12-22 09:38:54'),
(257, 1, 2, 3, '9342/Dt.8.5/l0/2017', 'Rakor Pemantauan dan Evaluasi Kinerja Pelaksanaan Kegiatan yang Dibiayai Pinjaman dan Hi bah Luar Negeri Triwulan III Tahun 2017', 'Direktur Sisdur', '2017-10-23', 'Rakor Pemantauan dan Evaluasi Kinerja Pelaksanaan Kegiatan yang Dibiayai Pinjaman dan Hi bah Luar Negeri Triwulan III Tahun 2017', 'Rakor Pemantauan dan Evaluasi Kinerja Pelaksanaan Kegiatan yang Dibiayai Pinjaman dan Hi bah Luar Negeri Triwulan III Tahun 2017', '2017-10-23-9342_Dt.8.5_10_2017_Rakor_Pemantauan_dan_Evaluasi_Kinerja_Pelaksanaan_Kegiatan_yang_Dibiayai_Pinjaman_dan_Hi_bah_Luar_Negeri_Triwulan_III_Tahun_2017.pdf', '2017-11-01', NULL, NULL, NULL, 11, '2017-12-22 09:43:03'),
(258, 1, 2, 3, '454/Dt.8.4.ND/10/2017', 'Permintaan Tanggapan Atas Surat dari Plt. Dir. Pinjaman dan Hibah Kementerian Keuangan perihal Pengusulan Hibah ADB TA 9391-INO:Knowledge and Support TA for Leveraging Information and Communication Technology for Irrigated Agricultural Information Project', 'Dir. Multilateral', '2017-10-27', 'Permintaan Tanggapan Atas Surat dari Plt. Dir. Pinjaman dan Hibah Kementerian Keuangan perihal Pengusulan Hibah ADB TA 9391-INO:Knowledge and Support TA for Leveraging Information and Communication Technology for Irrigated Agricultural Information Project- Requested for No. Objection', 'Permintaan Tanggapan Atas Surat dari Plt. Dir. Pinjaman dan Hibah Kementerian Keuangan perihal Pengusulan Hibah ADB TA 9391-INO:Knowledge and Support TA for Leveraging Information and Communication Technology for Irrigated Agricultural Information Project- Requested for No. Objection', '2017-10-27-454_Dt.8.4.ND_10_2017_Permintaan_Tanggapan_Atas_Surat_dari_Pit._Direktur_Pinjaman_dan_Hibah_Kementerian_Keuangan_perihal_Pengusulan_Hibah_ADB_TA_9391-INO.pdf', '2017-10-27', NULL, NULL, NULL, 11, '2017-12-22 09:48:49'),
(259, 1, 2, 3, '548/Dt.8.3.ND/10/2017', 'Permohonan Publikasi di UKE II Kedeputian Bidang Pendanaan Pembangunan sebagai Koleksi National Library of Australia (NLA)', 'Direktur Bilateral', '2017-10-31', 'Permohonan Publikasi di UKE II Kedeputian Bidang Pendanaan Pembangunan sebagai Koleksi National Library of Australia (NLA)', 'Permohonan Publikasi di UKE II Kedeputian Bidang Pendanaan Pembangunan sebagai Koleksi National Library of Australia (NLA)', '2017-10-31-548_Dt.8.3.ND_10_2017_Permohonan_Publikasi_di_UKE_II_Kedeputian_Bidang_Pendanaan_Pembangunan_sebagai_Koleksi_National_Library_of_Australia_(NLA).pdf', '2017-12-22', NULL, NULL, NULL, 11, '2017-12-22 09:52:12'),
(260, 1, 2, 3, '464/Dt.8.4.ND/ 10/2017', 'Permohonan Tanggapan Terkait Agricultural Value Chain Development Project (Loan) and Inclusive and Climate Resilient Cofee Value Chain (TA)', 'Direktur Multilateral', '2017-10-31', 'Permohonan Tanggapan Terkait Agricultural Value Chain Development Project (Loan) and Inclusive and Climate Resilient Cofee Value Chain (TA)', 'Permohonan Tanggapan Terkait Agricultural Value Chain Development Project (Loan) and Inclusive and Climate Resilient Cofee Value Chain (TA)', '2017-10-31-464_Dt.8.4.ND_10_2017_Permohonan_Tanggapan_Terkait_Agricultural_Value_Chain_Development_Project_(Loans)_and_Inclusive_and_Climate_Resilient_Cofee_Value_Chain_(TA).pdf', '2017-12-22', NULL, NULL, NULL, 11, '2017-12-22 09:54:11'),
(261, 1, 2, 3, '360/Dt.3.l.ND/ 10/2017', 'Executing Agency untuk Hibah ADB TA 9391-INO: Knowledge and Support TA for Leveraging Information and Communication Technology for Irrigated Agricultural information Project', 'Direktur Pangan dan Pertanian', '2017-10-31', 'Executing Agency untuk Hibah ADB TA 9391-INO: Knowledge and Support TA for Leveraging Information and Communication Technology for Irrigated Agricultural information Project', 'Executing Agency untuk Hibah ADB TA 9391-INO: Knowledge and Support TA for Leveraging Information and Communication Technology for Irrigated Agricultural information Project', '2017-10-31-360_Dt.3.1.ND_10_2017_Executing_Agency_untuk_Hibah___Knowledge_and_Support_TA_for_Leveraging_Information_and_Communication_Technology_for_Irrigated_Agricultural_Information_Project.pdf', '2017-10-31', NULL, NULL, NULL, 11, '2017-12-22 10:40:02'),
(262, 1, 2, 3, '9606/IU/10/2017', 'Penyampaian Surat Tugas Perpanjangan', 'Inspektur Utama', '2017-10-27', 'Penyampaian Surat Tugas Perpanjangan', 'Penyampaian Surat Tugas Perpanjangan', '2017-10-27-9606_IU_10_2017_Penyampaian_Surat_Tugas_Perpanjangan_tentang_Pelaksanaan_Audit_Tujuan_Tertentu_Tata_Kelola_Hibah_MCC.pdf', '2017-11-01', NULL, NULL, NULL, 11, '2017-12-22 10:42:54'),
(263, 1, 2, 3, '2072/B.02.ND/10/2017', 'Seleksi Terbuka Jabatan Pimpinan Tinggi Madya (JPT Madya) di Lingkungan Badan Pengawas Obat dan Makanan', 'Plt. Kepala Biro SDM', '2017-10-31', 'Seleksi Terbuka Jabatan Pimpinan Tinggi Madya (JPT Madya) di Lingkungan Badan Pengawas Obat dan Makanan', 'Seleksi Terbuka Jabatan Pimpinan Tinggi Madya (JPT Madya) di Lingkungan Badan Pengawas Obat dan Makanan', '2017-10-31-2072_B.02.ND_10_2017_Seleksi_Terbuka_Jabatan_Pimpinan_Tinggi_Madya_(JPT_Madya)_di_Lingkungan_Badan_Pengawas_Obat_dan_Makanan.pdf', '2017-12-22', NULL, NULL, NULL, 11, '2017-12-22 10:45:54'),
(264, 1, 2, 3, 'B-1094/SJ /B.l.1/KU.00.2/10/2017', 'Permohonan Pengalihan Anggaran untuk Penyelesaian Tunggakan Proyek SBSN Ditjen PHU Kementerian Agama', 'Kementerian Agama', '2017-10-26', 'Permohonan Pengalihan Anggaran untuk Penyelesaian Tunggakan Proyek SBSN Ditjen PHU Kementerian Agama', 'Permohonan Pengalihan Anggaran untuk Penyelesaian Tunggakan Proyek SBSN Ditjen PHU Kementerian Agama', '2017-10-26-B-1094_SJ_B.1.1_KU.00.2_10_2017_Permohonan_Pengalihan_Anggaran_untuk_Penyelesaian_Tunggakan_Proyek_SBSN_Ditjen_PHU_Kementerian_Agama.pdf', '2017-10-30', NULL, NULL, NULL, 11, '2017-12-22 10:47:44'),
(266, 1, 2, 3, '956/B.04.ND/12/2017', 'Penyusunan Rancangan Awal Rencana Kerja   Kementerian/Lembaga (Renja K/L) Tahun 2019', 'Kepala Biro Rcnortala', '2017-12-14', 'Penyusunan Rancangan Awal Rencana Kerja \r\n Kementerian/Lembaga (Renja K/L) Tahun 2019\r\nMenyampaikan tabel yang sudah diisi kepada kami (renortala@bappenas.go.id) dalam bentuk exce/ms.word dan PDF paling lambat hari Jum\'at, 22 Desember 2017.', 'Penyusunan Rancangan Awal Rencana Kerja \r\n Kementerian/Lembaga (Renja K/L) Tahun 2019', '2017-12-14-956_B.04.ND_12_2017_Penyusunan_Rancangan_Awal_Rencana_Kerja_KementerianjLembaga_(Renja_K_L)_Tahun_2019.pdf', '2017-12-14', 'Sudah disampaikan melalui Nota Dinas Direktur tanggal 29 Desember 2017', 4, '2018-01-03 00:00:00', 11, '2017-12-27 09:35:41'),
(267, 1, 2, 3, 'UND-95/KF/2017', 'Undangan Rapat Koordinasi', 'BADAN KEBIJAKAN FISKAL', '2017-12-22', 'Undangan Rapat Koordinasi Rencana Dukungan Program-for-Result (PfarR) Bank Dunia untuk Percepatan Penanganan Stunting', 'Undangan Rapat Koordinasi Rencana Dukungan Program-for-Result (PfarR) Bank Dunia untuk Percepatan Penanganan Stunting', '2017-12-22-und_rakor_p4r_stunting.pdf', '2017-12-27', NULL, NULL, NULL, 11, '2017-12-28 01:55:48'),
(268, 1, 1, 3, '740/Dt.3.2.ND/12/2017', 'Penyampaian Usulan Proyek Lingkup Kementerian Lingkungan Hidup dan Kehutanan (LHK) yang Dapat Dibiayai melalui SBSN TA 2019', 'Direktur Kehutanan dan Konservasi Sumber Daya Air', '2017-12-27', 'Penyampaian Usulan Proyek Lingkup Kementerian Lingkungan Hidup dan Kehutanan (LHK) yang Dapat Dibiayai melalui SBSN TA 2019', 'Penyampaian Usulan Proyek Lingkup Kementerian Lingkungan Hidup dan Kehutanan (LHK) yang Dapat Dibiayai melalui SBSN TA 2019', '2017-12-27-740_Dt.3.2.ND_12_2017_Penyampaian_Usulan_Proyek_Lingkup_Kementerian_Lingkungan_Hidup_dan_Kehutanan_(LHK)_yang_Dapat_Dibiayai_melalui_SBSN_TA.2019.pdf', '2017-12-27', 'Sedang dalam proses reviu dan koordinasi dengan Dit KKSDA\r\nSebagai bahan pembahsan rapat Eselon I', 5, '2018-01-03 00:00:00', 11, '2017-12-27 09:41:21'),
(269, 1, 2, 3, '12131/Dt. 7.2/12/2017', 'Undangan Rapat (Penyusunan Naskah Akademik Talenta Indonesia )', 'Dir. Aparatur Negara', '2017-12-27', 'Undangan Rapat (Penyusunan Naskah Akademik Talenta Indonesia )', 'Undangan Rapat (Penyusunan Naskah Akademik Talenta Indonesia )', '2017-12-27-12131_Dt.7.2_12_2017_Undangan_Rapat_(Penyusunan_Naskah_Akademik_Talenta_Indonesia_).pdf', '2017-12-27', 'Hadir mendampingi Ibu Direktur.\r\nDrafting White Paper Talenta Indonesia ditargetnya selesai minggu pertama Januari', 3, '2018-01-03 00:00:00', 11, '2017-12-27 09:43:35'),
(270, 1, 1, 3, '556/Dt.3.5.ND/12/2017', 'Masukan lndikasi Proyek yang akan Dibiayai melalui SBSN T A. 2019', 'Direktur Lingkungan Hidup', '2017-12-28', 'Masukan lndikasi Proyek di Kementerian Lingkungan Hidup dan Kehutanan (KLHK) di bawah tugas koordinasi kami yang akan Dibiayai melalui SBSN T A. 2019\r\n1 Badan Litbang dan lnovasi\r\n2 Ditjen Pengendalian Pencemaran dan Kerusakan Lingkungan\r\nUntuk mendetilkan usulan dan melengkapi dengan dokumen yang masih menjadi catatan kami, akan dilakukan pertemuan bilateral dengan KLHK pada awal bulan Januari 2018', 'Masukan lndikasi Proyek di Kementerian Lingkungan Hidup dan Kehutanan (KLHK) di bawah tugas koordinasi kami yang akan Dibiayai melalui SBSN T A. 2019\r\n1 Badan Litbang dan lnovasi\r\n2 Ditjen Pengendalian Pencemaran dan Kerusakan Lingkungan', '2017-12-28-556_Dt.3.5.ND_12_2017_Masukan_lndikasi_Proyek_yang_akan_Dibiayai_melalui_SBSN_T_A._2019.pdf', '2017-12-28', NULL, NULL, NULL, NULL, '2017-12-28 08:56:48'),
(271, 1, 1, 3, 'S-1118/PR.2/2017', 'Penyampaian Hasil Rapat', 'Dirjen Pengelolaan Pembiayaan dan Resiko, Kementerian Keuangan', '2017-12-22', 'Penyampaian Hasil Rapat Trilateral Meeting dalam Rangka Penyusunan Proyeksi Penarikan Pinjaman dan Hibah TA 2019 dan prakiraan Maju 2020-2030', 'Penyampaian Hasil Rapat Trilateral Meeting dalam Rangka Penyusunan Proyeksi Penarikan Pinjaman dan Hibah TA 2019 dan prakiraan Maju 2020-2030', '2017-12-22-S-1118_PR.2_2017_Penyampaian_Hasil_Rapat_Trilateral_Meeting_dalam_Rangka_Penyusunan_Proyeksi_Penarikan_Pinjaman_dan_Hibah_TA_2019_dan_prakiraan_Maju_2020-2030.pdf', '2017-12-28', NULL, NULL, NULL, NULL, '2017-12-28 09:52:57'),
(272, 1, 2, 3, '232/D.S.ND/12/2017', 'Laporan usulan Pinjaman LN lAIN Palu', 'DEPUTI BIDANG PEMBANGUNAN MANUSIA, MASYARAKAT DAN KEBUDAYAAN', '2017-12-13', 'Bahwa IAIN Palu belum dapat diusulkan unluk dimasukkan ke dalam Blue Book 2015-2019 Revisi 2017', 'IAIN Palu', '2017-12-13-232_D.5.ND_12_2017_Laporan_usulan_Pinjaman_LN_lAIN_Palu.pdf', '2018-01-22', 'File di berkas usulan BB 2015-2019', 3, '2018-01-03 00:00:00', 11, '2018-01-02 03:07:34'),
(273, 1, 1, 3, 'R-00143/BUENOS AIRES/ 171222', 'Laporan Pertemuan Sherpa G20 ke-1, Bariloche, Argentina, 14-16 Desember 2017', 'Kedubes Buenos Aires', '2017-12-01', 'Laporan Pertemuan Sherpa G20 ke-1, Bariloche, Argentina, 14-16 Desember 2017', 'Laporan Pertemuan Sherpa G20 ke-1, Bariloche, Argentina, 14-16 Desember 2017', '2017-12-01-R-00143_BUENOS_AIRES_171222_Laporan_Pertemuan_Sherpa_G20_ke-1,_Bariloche,_Argentina,_14-16_Desember_2017.pdf', '2017-12-28', NULL, NULL, NULL, 11, '2018-01-02 03:21:36'),
(274, 1, 1, 3, '556/Dt.3.5.ND/ 12/2017', 'Masukan Indikasi Proyek yang akan Dibiayai melalui SBSN TA. 2019', 'Direktur Lingkungan Hidup, Bappenas', '2017-12-28', 'Masukan lndikasi Proyek yang akan Dibiayai melalui SBSN TA. 2019 di Kementerian Lingkungan Hidup dan Kehutanan\r\n(KLHK)\r\n1 Badan Litbang dan lnovasi Usulan Anggaran Rp. 72.170.347.640  Usulan yang dapat diteruskan Rp. 68.796.665.294\r\n2 Ditjen Pengendalian Pencemaran dan Kerusakan Lingkungan Usulan Anggaran Rp. 92.583.945.899 Usulan yang dapat diteruskan  Rp. 92.583.945.899', 'Masukan Indikasi Proyek yang akan Dibiayai melalui SBSN TA. 2019', '2017-12-28-556_Dt.3.5.ND_12_2017_Masukan_Indikasi_Proyek_yang_akan_Dibiayai_melalui_SBSN_TA._2019.pdf', '2017-12-28', 'Sedang dalam proses reviu dan koordinasi dengan Dit KKSDA\r\nSebagai bahan pembahsan rapat Eselon I', 5, '2018-01-03 00:00:00', 11, '2018-01-02 03:29:39'),
(275, 1, 2, 3, 'S-1118 /PR.2/2017', 'Penyampaian Hasil Rapat', 'DIREKTORAT JENDERAL PENGELOLAAN PEMBIAYAAN DAN RISIKO DIREKTORAT PINJAMAN DAN HIBAH', '2017-12-22', 'Penyampaian Hasil Rapat persiapan Trilateral Meeting dalam rangka Penyusunan Proyeksi Penarikan Pinjaman dan Hibah TA 2019 dan Prakiraan Maju tahun 2020-2023', 'Penyampaian Hasil Rapat persiapan Trilateral Meeting dalam rangka Penyusunan Proyeksi Penarikan Pinjaman dan Hibah TA 2019 dan Prakiraan Maju tahun 2020-2023', '2017-12-22-S-1118_PR.2_2017_Penyampaian_Hasil_Rapat_Trilateral_Meeting_dalam_Rangka_Penyusunan_Proyeksi_Penarikan_Pinjaman_dan_Hibah_TA_2019_dan_prakiraan_Maju_2020-20301.pdf', '2017-12-28', 'File sebagai bahan penyusunan GB 2018', 3, '2018-01-03 00:00:00', 11, '2018-01-02 03:40:06'),
(276, 1, 1, 3, '11806/Ses/12/2017', 'Undangan Temu Konsultasi Publik Rpermen RKP', 'Sesmen PPN I Sestama Bappenas', '2017-12-20', 'Undangan Temu Konsultasi Publik Rpermen RKP', 'Undangan Temu Konsultasi Publik Rpermen RKP', '2017-12-20-11806_Ses_12_2017_Undangan_Temu_Konsultasi_Publik_Rpermen_RKP.pdf', '2017-12-22', NULL, NULL, NULL, 11, '2018-01-02 03:56:08'),
(277, 1, 2, 3, '403/D.3.ND/ 12/2017', 'Penyampaian Draf Rencana Aksi Nasional Tujuan Pembangunan Berkelanjutan (TPB/SDGs)', 'Deputi Bidang Kemaritiman dan SDA', '2017-12-22', 'Penyampaian Draf Rencana Aksi Nasional Tujuan Pembangunan Berkelanjutan (TPB/SDGs)', 'Penyampaian Draf Rencana Aksi Nasional Tujuan Pembangunan Berkelanjutan (TPB/SDGs)', '2017-12-22-403_D.3.ND_12_2017_Penyampaian_Draf_Rencana_Aksi_Nasional_Tujuan_Pembangunan_Berkelanjutan_(TPB_SDGs).pdf', '2018-01-27', 'Kami hanya menerima surtanya saja. Untuk draft RAN SDGs nya belum kami terima.', 6, '2018-01-02 00:00:00', 11, '2018-01-02 04:16:00'),
(280, 1, 1, 3, '008/B.02.ND/01/2018', 'Kontirmasi Pengangkatan Staf kedalam Jabatan Fungsional Pasca Tugas Belajar', 'Kepala Biro Sumber Daya Manusia', '2018-01-02', 'Permintaan konfirmasi Bapak/lbu/Saudara sebagai Atasan staf/pegawai (daftar terlampir) yang telah menyelesaikan tugas belajar untuk persetujuan pengangkatan staf tersebut menjadi Pejabat Fungsional Perencana/Auditor.', 'Konfirmasi Pengangkatan Staf kedalam Jabatan Fungsional Pasca Tugas Belajar', '2018-01-02-008_B.02.ND_01_2018_Kontirmasi_Pengangkatan_Stat_kedalam_Jabatan_Fungsional_Pasca_Tugas_Belajar.pdf', '2018-01-03', NULL, NULL, NULL, 11, '2018-01-04 02:28:28'),
(281, 1, 1, 3, '4/ILMATE.04/01/2017', 'Tindak Lanjut Rencana lmportasi Hibah Mobil Listrik', 'Direktorat Jenderal Industri Logam, Mesin, alat Transfortasi dan Elektronika, Kementerian Perindustrian', '2018-01-03', 'Tindak Lanjut Rencana lmportasi Hibah Mobil Listrik rapat pembahasan Tindak Lanjut Rencana lmportasi Hibah Mobil Listrik dan tidank lanjut Nota Kesepahaman tentang\r\nStudi Bersama dan Sosialisasi Penggunaan Mobillistrik antara Mitsubishi Motors Corporation dan Kementerian Perindustrian serta pelaksanaan importasi hibah 10 (sepuluh) unit kendaraan dan 4 (empat) unit charging station', 'Tindak Lanjut Rencana lmportasi Hibah Mobil Listrik', '2018-01-03-4_ILMATE.04_01_2017_Tindak_Lanjut_Rencana_lmportasi_Hibah_Mobil_Listrik2.pdf', '2018-01-03', NULL, NULL, NULL, 11, '2018-01-04 02:10:23'),
(282, 1, 1, 3, 'S-264/D104/01/2017', 'Permohonan Narasumber/Fasilitator pada Diklat Audit PHLN', 'DIREKTORAT PENGAWASAN PINJAMAN DAN BANTUAN LUAR NEGERI, BPKP', '2017-12-29', 'Permohonan Narasumber/Fasilitator pada Diklat Audit Pinjaman dan Hibah Luar Negeri (PHLN) tahun 2018 yang akan diselenggarakan pada tanggal 15 Januari s.d\r\n19 Januari 2018 dan 22 Januari 2018 s.d 26 Januari 2018', 'Diklat Audit Pinjaman dan Hibah Luar Negeri (PHLN) tahun 2018 yang akan diselenggarakan pada tanggal 15 Januari s.d\r\n19 Januari 2018 dan 22 Januari 2018 s.d 26 Januari 2018', '2017-12-29-S-264_D104_01_2017_Permohonan_Narasumber_Fasilitator_pada_Diklat_Audit_PHLN.pdf', '2018-01-03', NULL, NULL, NULL, 11, '2018-01-04 02:24:47'),
(283, 1, 1, 3, '002/IU.ND/01/2018', 'Penyampaian Himbauan Pemenuhan Kehadiran Pegawai', 'lnspektur Utama', '2018-01-03', 'Seluruh Pegawai Bappenas agar mematuhi pemenuhan jam kerja untuk dasar perhitungan kinerja sesuai juklak no 1/JUKLAK/SESMEN/05/2013, kegiatan RDK agar sesuai dengan Permenkeu 49/PMK02/2017', 'Penyampaian Himbauan Pemenuhan Kehadiran Pegawai', '2018-01-03-002_IU.ND_01_2018_Penyampaian_Himbauan_Pemenuhan_Kehadiran_Pegawai.pdf', '2018-01-03', NULL, NULL, NULL, 11, '2018-01-04 03:28:45'),
(284, 1, 1, 3, '015/B.02.ND/01/2018', 'Penawaran Beasiswa Linkadge AAI', 'Kepala Biro Sumber Daya Manusia', '2018-01-03', 'Disampaikan penawaran Program Beasiswa Gelombang II Pusbindiklatren Bappenas Linkadge Australia (Australian Awards in Indonesia) untuk Tahun 2018\r\nlnformasi selengkapnya mengenai persyaratan dan mekanisme pendaftaran, dapat dilihat melalui situs http://www.pusbindiklatren.bappenas.go.id.\r\npaling lambat tanggal10 Januari 2018', 'Program Beasiswa Gelombang II Pusbindiklatren Bappenas Linkadge Australia (Australian Awards in Indonesia)', '2018-01-03-015_B.02.ND_01_2018_Penawaran_Beasiswa_Linkadge_AAI_(Australian_Awards_in_Indonesia).pdf', '2018-01-04', NULL, NULL, NULL, 11, '2018-01-04 03:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_bluebook`
--

CREATE TABLE `irena_arsip_bluebook` (
  `id` int(11) NOT NULL,
  `id_bluebook` int(11) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `nama` int(11) NOT NULL,
  `berkas` int(11) NOT NULL,
  `tgl_tambah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_disposisi`
--

CREATE TABLE `irena_arsip_disposisi` (
  `id` int(11) NOT NULL,
  `id_jenis` int(11) DEFAULT NULL,
  `id_arsip` int(11) DEFAULT NULL,
  `nomor` varchar(255) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `catatan` text,
  `berkas` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_disposisi`
--

INSERT INTO `irena_arsip_disposisi` (`id`, `id_jenis`, `id_arsip`, `nomor`, `tgl`, `catatan`, `berkas`, `update_by`, `update_date`) VALUES
(16, 1, 0, 'adsad', '2017-11-06', 'sadasda', '2017-11-06-Jwb5.pdf', 1, '2017-11-06 12:14:26'),
(19, 1, 75, 'adas', '2017-11-06', 'dadsa', '2017-11-06-Jwb8.pdf', 1, '2017-11-06 12:20:21'),
(21, 1, 62, 'adas', '2017-11-06', 'adadas', '2017-11-06-Jwb10.pdf', 1, '2017-11-06 12:21:47'),
(26, 4, 62, 'sadas', '2017-11-06', 'asdasda', '2017-11-06-Jwb15.pdf', 1, '2017-11-06 19:03:49'),
(28, 4, 75, 'adsadsadsa', '2017-11-06', 'sdasdasdas', '2017-11-06-Jwb17.pdf', 1, '2017-11-06 23:54:16'),
(29, 4, 76, '1472/Dt.8.1/10/2017', '2017-10-31', '-', '2017-10-31-Disposisi_8-0407_PTRI-NEWYORK_171026_Laporan_Pertemuan_G20_(DWG)_Workshop_on_Sustainable_Development_and_Inclusive_Globalisation_Meeting_di_New_York,Amerika_Serikat,_16-17_Oktober_2017.pdf', 11, '2017-11-07 10:58:20'),
(30, 4, 77, '1493/Dt.8.1/11/2017', '2017-11-02', 'Ica Koordinasi ok kita siapkan Policy paper Renbang - Siapkam Time Table Pelaksanaan - Rekrut yang akan mengerjakan ke APBN tidak cukup dicari sumber pendanaanya ( tanya ADB)', '2017-11-02-Disposisi_270_D.8.ND_11_2017_Penyampaian_Usulan_Kajian_Strategis_dan_Policy_Paper_Lingkup_Kedeputian_Bidang_Pendanaan_Pembangunan_Tahun_2018.pdf', 11, '2017-11-07 11:07:18'),
(31, 4, 78, '1484/Dt.8.1/11/2017', '2017-11-01', 'Tidak Bisa Hadir', '2017-11-01-UND-456_AG.4_2017_Undangan_Rapat_Realokasi_Pembangunan_Gedung_KUA_dari_Kabupaten_Belu_NTT_ke_Kota_Bitung_Sulawesi_Utara.pdf', 11, '2017-11-07 12:33:41'),
(32, 4, 79, '1483/Dt.8.1/11/2017', '2017-11-01', '- Tolong Minta ADB supaya bisa dishare bahan bahanya bisa jadi masukan dalam kajian strategis -Telat disposisi', '2017-11-01-UND-96_D.I.M.EKON_10_2017_FGD_Alternatif_Pembiayaan_Infrastruktur_an_tara_lain_melalui_Credit_Enhancement,_Obligasi_Daerah,_dan_Green_Infrastructure_Financing.pdf', 11, '2017-11-07 12:40:41'),
(33, 4, 82, '1492/Dt.8.1/11/2017', '2017-11-01', 'Ali Koordinasi bahan2 yang diperlukan ketemu pa iwan siang sore ini', '2017-11-01-Disposisi_302_I.02.ND_11_2017_Rapat_Koordinasi_dan_Konfirmasi_terkait_Kebijakan_Pengadaan_Alutsista_dengan_Pembiayaan_Pinjaman_Luar_Negeri_dengan_BPK.pdf', 11, '2017-11-07 13:07:37'),
(35, 4, 84, '1486/Dt.8.1/11/2017', '2017-11-01', 'Kalau ada yang minat ?', '2017-11-01-2085_B.02.ND_11_2017_Seleksi_Terbuka_Jabatan_Pimpinan_Tinggi_Pratama_(Es._II._b)_di_Lingkungan_Sekretariat_Jenderal_KPU.pdf', 11, '2017-11-07 13:41:38'),
(36, 4, 85, '1485/Dt.8.1/ 11/2017', '2017-11-01', 'Kalau berminat Silahkan', '2017-11-01-2086_B.02.ND_11_2017_Seleksi_Terbuka_Jabatan_Pimpinan_Tinggi_Pratama_(JPT_Pratama)_di_Lingkungan_Badan_Ekonomi_Kreatif_(BEKRAF).pdf', 11, '2017-11-07 14:13:44'),
(37, 4, 87, '1480/Dt.8.1/11/2017', '2017-11-01', 'Mana Dokumen Pendukungnya', '2017-11-01-Disposisi_B_1233-03_05_18_Srenaau_Daftar_isian_pengusulan_kegiatan_pengadaan_alutsista_UO_TNI_AU_program_PDN_tahun_2015-2019.pdf', 11, '2017-11-07 14:32:06'),
(38, 4, 99, '1513/Dt.8.1/11/2017', '2017-11-08', '-', '2017-11-08-307.pdf', 11, '2017-11-13 10:07:40'),
(39, 4, 83, '1500/Dt.8.1/11/2017', '2017-11-03', '-', '2017-11-03-473.pdf', 11, '2017-11-13 10:10:25'),
(40, 4, 100, '1497 /Dt.8.1/11/2017', '2017-11-03', '-', '2017-11-03-852.pdf', 11, '2017-11-13 10:15:27'),
(41, 4, 102, '0744/Dt.8.1/5/2017', '2017-05-22', '-', '2017-05-22-0744_Dt.8.1_5_2017.pdf', 1, '2017-11-15 17:50:28'),
(42, 4, 103, '-', '2017-11-16', '-', '2017-11-16-0202_M.PPN_05_2016-Usulan_Hibah_Australia_Infrastructure_Program_2017-2027_DIPK_DUK.pdf', 12, '2017-11-16 10:37:29'),
(43, 4, 104, '-', '2017-11-16', 'hadiri /wakili', '2017-11-16-9980_Dt.8.3_11_2017_Pembahasan_Proyek_ITTS_III_(15_November_2017).pdf', 17, '2017-11-16 10:40:14'),
(44, 4, 106, '1546/Dt.8.1/11/2017', '2017-11-21', '- saya tidak bisa hadi.\r\n- selesai', '2017-11-21-Lembar_Edaran.pdf', 1, '2017-11-30 14:50:42'),
(45, 4, 107, '1587 /Dt.8.1/ 11/2017', '2018-01-04', 'Undangan Rapat Dalam rangka melakukan penilaian kesiapan pe!aksanaan atas rencana kegiatan Pinjaman Dalam Negeri (PDN) Tahun 2018', '2018-01-04-Dalam_rangka_melakukan_penilaian_kesiapan_pe!aksanaan_atas_rencana_kegiatan.pdf', 11, '2017-12-04 10:55:51'),
(46, 4, 113, '-', '2017-12-04', '-', '2017-12-04-4-no-image-users.png', 1, '2017-12-04 17:27:44'),
(47, 4, 114, '1600/Dt.8.1/ 12/2017', '2017-12-04', '-', '2017-12-04-Disposisi_11290_Dt.2.4_12_2017_Undangan_Pembahasan_Perpanjangan_Loan_Small_Scale_Water_Treatment_Plantfor_Emergency_Relief.pdf', 11, '2017-12-05 01:51:39'),
(48, 4, 117, '299 & 300/GGGI/ II/17', '2017-12-04', 'Cek pa rizal Primana bisa ikut apa tidak dan saya hadir, kalau bu ica bisa ikut', '2017-12-04-299_dan_300_GGGI_11_17_Invitation_Dinner_Meeting.pdf', 11, '2017-12-05 07:03:16'),
(49, 4, 119, '11339/Dt.8.3/12/2017', '2017-12-05', '-', '2017-12-05-Dispo_11339_Dt.8.3_12_2017.pdf', 11, '2017-12-05 10:00:46'),
(50, 4, 116, '939/B.04.ND/II/2017', '2017-12-05', '-Pa Ali Koordinasi Kegiatan Untuk 2018\r\n-Periksa Ulang TOR dan Angka lalu fokus kajian sejalan dengan \r\n background study RPJMN\r\n-Bu tati tolong Koordinasikan selama pa ali diklat', '2017-12-05-Dispo_939_B.04.ND_ll_2017.pdf', 11, '2017-12-05 10:04:39'),
(51, 4, 109, 'UND-236/PR7 /2017', '2017-12-04', 'Yustina Hadir Pelajari dahulu bahan bahan yang ada briefing dulu dengan saya dan pa sugeng', '2017-12-04-Dispo_UND-236_PR.7_2017.pdf', 11, '2017-12-05 10:07:00'),
(52, 4, 118, '11226/D.II/11/2017', '2017-12-05', '-', '2017-12-05-Dispo_11226_D.II_11_2017.pdf', 11, '2017-12-05 10:12:40'),
(53, 4, 121, '426/Dt.5.3.ND/ 11/2017', '2017-11-29', 'Proses DRKH', '2017-11-29-Dispo_426_Dt.5.3.ND_11_2017.pdf', 11, '2017-12-05 10:26:26'),
(54, 4, 108, '517/D.8.4.ND/ll/2017', '2017-12-04', '-', '2017-12-04-Dispo_517_D.8.4.ND_ll_2017.pdf', 11, '2017-12-05 10:29:47'),
(55, 4, 120, '1579 /Dt.8.1/ll/20 17', '2017-11-27', 'Buatkan saya satu otner khusus SBSN setiap tahunya (Proses Indikasi sampai dengan DPP )', '2017-11-27-Dispo_288_D.8.ND_ll_2017.pdf', 11, '2017-12-05 10:56:45'),
(56, 4, 122, '508/Dt.8.4.ND/11/2017', '2017-11-27', '-', '2017-11-27-Dispo_508_Dt.8.4.ND_11_2017.pdf', 11, '2017-12-05 11:01:29'),
(58, 4, 123, '1585/Dt.8.1/ 11/2017', '2017-11-27', 'TA agrement Sudah ditandatangani', '2017-11-27-Dispo_507_Dt.8.4.ND_11_2017.pdf', 11, '2017-12-05 11:19:19'),
(59, 4, 124, '1581/Dt.8.1/ 11/2017', '2017-11-27', 'Tugaskan Pristi sesuai dispo sebelumnya', '2017-11-27-Dispo_B-00282_HAMBURG_171114.pdf', 11, '2017-12-05 11:34:46'),
(60, 4, 125, '1601/Dt.8.1/ 12/2017', '2017-12-04', '- Siapkan Pertemuan dengan ADB \r\n- Siapkan draft jawaban bahwa GGI ada Prosedur ada readines dan ada Workplane', '2017-12-04-Dispo_001_TA.8858_17_Extension_ofTA_8858-INO_Strengthening_Knowledge_Sharing_in_Indonesia.pdf', 11, '2017-12-05 11:44:04'),
(61, 4, 126, '1588/Dt.8.1/1112017', '2017-11-27', '- Cek siapa yang koordinir untuk pendanaan \r\n1.Penanggung Jawab\r\n2.Penulisan UKE 2 orang\r\n- Siapkan saya LKj 2017s/d Nov untuk renbang \r\n- Penanggungjawab LKJ UKE II Dit.Renbang = Ali', '2017-11-27-Dispo_1947_SES.ND_11_2017.pdf', 11, '2017-12-05 12:21:27'),
(62, 4, 128, '1580/Dt.8.11/11/2017', '2017-11-27', 'Proses DRKH', '2017-11-27-Dispo_1902_SES.ND_11_2017.pdf', 11, '2017-12-05 12:40:17'),
(63, 4, 129, '1594 /Dt.8.1/ 11/2017', '2017-11-30', 'Tolong Buatkan saya catatan Rapatnya\r\nPristi sesuaikan materi dengan tema G20 DWG terutama pada bagian keuangan inklusif', '2017-11-30-dispo_10884_D.4_11_2017_Undangan_Workshop_Menuju_Sistem_Bantuan_Sosial_di_Indonesia_yang_Komprehensip,_Terintegrasi_dan_Efektif.pdf', 11, '2017-12-05 12:45:45'),
(64, 4, 130, '1609/Dt.8.1/12/20 17', '2017-12-06', 'Siapkan Bahan Kita ada  Raker Pendanaan Rabu Klo Masih Bisa Diundurkan Sesuai Waktunya', '2017-12-06-Disposisi_11404_D.7.5_12_2017_Penundaan_Rapat_(_Rapat_Koordinasi_Pinjaman_Dalam_Negeri_(PDN)_Tahun_2018.pdf', 11, '2017-12-07 02:09:08'),
(65, 4, 131, '11425/Dt 3.5/12/2017', '2017-12-06', 'Agendakan\r\nBahan Disiapkan', '2017-12-06-1Dispo_1425_DL3.5_12_2017_Undangan_Narasumber.pdf', 11, '2017-12-07 02:36:01'),
(66, 4, 132, '1611/Dt.8.1/ 12/2017', '2017-12-06', 'Siapkan Bahan', '2017-12-06-Dispo_11426_Dt.3.5_12_2017_Rafat_Diskusi_Potensi_Green_Sukuk.pdf', 11, '2017-12-07 03:16:45'),
(67, 4, 137, '1608/Dt.8.1/12/2017', '2017-12-06', 'Icha Ajak Pa Cucu dan Pristi', '2017-12-06-Dispo_381_I.01.ND_12_2017_Persiapan_Penyusunan_Laporan_Keuangan_TA_2017_dan_Pemeriksaan_BPK.pdf', 11, '2017-12-07 04:17:20'),
(68, 4, 139, '1584/Dt.8.1/ 11/2017', '2017-11-27', 'Masih ada stock', '2017-11-27-Dispo_Focus_Group_Discussion_Skema_Kerjasama_Pengelolaan_Aset_Terbatas_(KePAT)_(KPPIP).pdf', 11, '2017-12-07 04:34:08'),
(69, 4, 140, '1593 1Dt.8. 1 I 1112017', '2017-11-30', '- Slah satu instrumen Pembiayaan Pembangunan\r\n- Summary highlith yg penting masukan dalam daf kajian', '2017-11-30-Dispo_Focus_Group_Discussion_Skema_Kerjasama_Pengelolaan_Aset_Terbatas_(KePAT)_(KPPIP).pdf', 11, '2017-12-07 04:41:42'),
(71, 4, 142, '1591/Dt.8.l/ll/2017', '2017-11-30', 'Tugaskan Pristi buatkan catatan hal pentingnya untuk masukan DWG', '2017-11-30-Dispo_R-00175_BRASILIA_171122.pdf', 11, '2017-12-07 04:49:02'),
(72, 4, 144, '1617/Dt.8.1/12/2017', '2017-12-07', '- Cek Waktunya apa Masih bisa Memungkinkan\r\n- Sugeng Moderator\r\n- Agendakan SPT Saya', '2017-12-07-Disposisi_B-24073_SJ_8.1.1_HM.00_12_2017_Permohonan_Narasumber_Acara_Koordinasi_Pengelolaan_Proyek_Pinjaman_dan_Hibah_Luar_Negeri_(PHLN)_dan_Surat_Berharga_Syariah_Negara_(SBSN)_Kementerian_Agama_Tahun_2017.pdf', 11, '2017-12-07 08:33:02'),
(73, 4, 143, '1615/Dt.8.l/12/2017', '2017-12-07', 'Tidak ada Mitra', '2017-12-07-188_D.9_ND_12_2017_Penyampaian_Laporan_Pemantauan_Rencana_Pembangunan_Per_Kementerian_Lembaga_Triwulan_III_Tahun_Anggaran_2017.pdf', 11, '2017-12-07 08:41:23'),
(74, 4, 135, '1614/Dt.8.1/ 12/2017', '2017-12-07', '- Lihat Seberapa detail perubahan bisa dilakukan setelah DPP\r\n- Cek Ulang Prosedur Perubahan', '2017-12-07-Dispo_186_Dt.6.1.M_12_2017_Perubahan_Paket_Pekerjaan_yang_dibiayai_SBSN_TA.2018.pdf', 11, '2017-12-07 08:45:33'),
(75, 4, 134, '1613/Dt.8.1/12/2017', '2017-12-07', 'Rekap masukan yang masuk dan segera di update dalam draft permen', '2017-12-07-Dispo_184_Dt.6.1.M_12_2017_Tanggapan_atas_Penyusunan_Permen_PPN_Ka_Bappenas_Tentang_Perencanaan_dan_Pemantauan_Proyek_yang_Dibiayai_melalui_SBSN.pdf', 11, '2017-12-07 08:49:24'),
(76, 4, 136, '1616/Dt.8.1/ 12/2017', '2017-12-07', 'Hadiri siapkan Bahan', '2017-12-07-297_D.8.ND_12_2017_Undangan_rapat_Koordinasi_Kedeputian_Bidang_Pendanaan_Pembangunan.pdf', 11, '2017-12-07 08:51:28'),
(77, 4, 133, '1612/Dt.S.l/ 12/2017', '2017-12-07', '- Siapkan cek topik /jadwal masing2 dit di D8\r\n- Cek ke Sesmen Pusdatin informasi yang diperlukan sedalam apa', '2017-12-07-Dispo_1994_SES.ND_12_2017_Usulan_kegiatan_kajian_pemanfaatan_Big_Data.pdf', 11, '2017-12-07 08:56:19'),
(78, 4, 149, '1620/Dt.8.1/12/2017', '2017-12-08', 'Saya Hadir Tolong diupdate bahan bahanya', '2017-12-08-Dispo_Und-278_PR.5_2017_Undangan_FGD_terkait_Finalisasi_Framework_Proyek_KPBU-AP.pdf', 11, '2017-12-08 02:46:46'),
(79, 4, 148, '1621/Dt.8.1/12/2017', '2017-12-08', '- Sya Hadir Tolong dibantu bahan bahanya \r\n- Bu tati Koordinasi', '2017-12-08-Dispo_11515_SA.04_12_2017_Rapat_Pendahuluan_Pelaksanaan_Forum_Konsultasi_Publik_(FKP)_2017.pdf', 11, '2017-12-08 02:53:35'),
(80, 4, 154, '1622/Dt.8.1/ 12/2017', '2017-12-08', 'Hadir Sama saya Agendakan', '2017-12-08-Dispo_204_Dt.8.2.ND_12_2017_Diskusi_Persiapan_FGD_Finalisasi_Framework_KPBU-AP.pdf', 11, '2017-12-08 10:05:29'),
(81, 4, 150, '1624/Dt.8.1/12/2017', '2017-12-08', 'Kita Raker D 8 , Kl bisa kirim staf', '2017-12-08-UND-390_KF.3_2017_Undangan_sebagai_peserta_aktif_pad_a_Rapat_Koordinasi.pdf', 11, '2017-12-08 10:11:42'),
(82, 4, 151, '1623/Dt.8.1/12/2017', '2017-12-08', '-', '2017-12-08-Dispo_UND-389_KF.3_2017_Undangan_sebagai_peserta_aktif_pad_a_Rapat_Koordinasi.pdf', 11, '2017-12-08 10:13:44'),
(83, 4, 152, '1625/Dt.8.1/12/2017', '2017-12-08', 'Hadir dengan saya agendakan', '2017-12-08-Dispo_11488_D.t.8.4_11_2017_Pembahasan_Penyusunan_Rolling_Plan_Kegiatan_yang_akan_Dibiayai_oleh_AIIB.pdf', 11, '2017-12-08 10:15:37'),
(84, 4, 153, '1626/Dt.8.1/12/2017', '2017-12-08', 'Cek ulang detail kesiapan untuk menjawab beberapa hal diskusi sebelumnya', '2017-12-08-Dispo_S-HL0202-Cp285_Kesiapan_Pelaksanaan_Kegiatan_NUWSP.pdf', 11, '2017-12-08 10:21:52'),
(85, 4, 155, '1632/Dt.8.1/12/2017', '2017-12-11', 'Sugeng\r\n-Siapkan Rapat Eselon 1 sebelum pa deputi  cuti\r\n-bahan paparan siapkan bersama tim dodi dan sarah dengan mengacu pada time line perencanaan dan pengembangan untuk 2019', '2017-12-11-Dispo_295_D.8.ND_12_2017_Permintaan_indikasi_proyek_yang_akan_dibiayai_melalui_SBSN_T_A_2019.pdf', 11, '2017-12-11 08:37:46'),
(86, 4, 156, '1630/Dt.8.1/12/2017', '2017-12-11', 'Agendakan saya hadir', '2017-12-11-Dispo_UND-260_PR.2_2017_Undangan_Rapat_(Persiapan_Trilateral_Meeting_dalam_rangka_Penyusunan_Proyeksi_Penarikan_Pinjaman_dan_Hi_bah_tahun_20_19_dan_Prakiraan_maju.pdf', 11, '2017-12-11 08:49:39'),
(87, 4, 158, '360/Dt.1.1.ND/12/2017', '2017-12-11', '- saya rapat KPBU -AP dg kemenkeu (+Icha)\r\n- Yang bisa hadir tolong saya direkamkan', '2017-12-11-Dispo_360_Dt.1.1.ND_12_2017_Undangan_Public_Lecture_Growth_Diagostics-_A_New_Approach_to_National_Development_Strategies.pdf', 11, '2017-12-11 09:05:49'),
(88, 4, 159, '1636/Dt.8.1/12/2017', '2017-12-11', '-', '2017-12-11-Dispo_UND-427_Kf.3_2017_Undangan_Rapat_Koordinasi_Pembahasan_Rencana_Dukungan_PforR_Benk_Dunia_untuk_Percepatan_Penanganan_Stunting.pdf', 11, '2017-12-11 09:16:56'),
(89, 4, 160, '1633/Dt.8.1/12/2017', '2017-12-11', 'Urgent Dibaca\r\nArahkan Proses Perencanaan seuai Timeline\r\nCopu u/ Semua staf PNS \r\n1 copuy untuk saya', '2017-12-11-Dispo_289_D.4.ND_12_2017_Tindaklanjut_Rapim_Eselon_I_Persiapan_Penyusunan_RKP_2019.pdf', 11, '2017-12-12 02:40:15'),
(90, 4, 163, '1637/Dt.8.1/12/2017', '2017-12-11', '-', '2017-12-11-Dispo_11568_Dt.3.4_12_2017_Rapat_Monitoring_dan_Evaluasi_Green_Growth_Program_di_Kalteng_dan_Kaltim.pdf', 11, '2017-12-12 02:51:27'),
(91, 4, 165, '1635/Dt.8.1/12/2017', '2017-11-24', '- Masukan Informasi dalam Database Kita\r\n- Lengkapi data tacking Proses PDN', '2017-11-24-Dispo_S-878_PR_2017_Perjanjian_Realisasi_Pinjaman_Dalam_Negeri_(PDN)_Tahun_Anggaran_2017_antara_Pemerintah_Indonesia_dan_PT._Mandiri_(Persero),_Tbk._-_untuk_kegiatan_pada_Kepolisian_RI.pdf', 11, '2017-12-12 03:10:30'),
(92, 4, 164, '1634/Dt.8.l/12/2017', '2017-12-11', '- Masukan Informasinya Dalam Database Kita \r\n- Lengkapi data dalam proses Tracking PDN', '2017-12-11-Dispo_S-861_PR_2017_Perjanjian_Realisasi_Pinjaman_Dalam_Negeri_(PDN)_Tahun_Anggaran_2017_antara_Pemerintah_Indonesia_dan_PT._Mandiri_(Persero),_Tbk._-_untuk_kegiatan_pada_Kepolisian_RI.pdf', 11, '2017-12-12 03:13:01'),
(93, 4, 208, '1662/Dt.8.1/12/2017', '2017-12-15', 'Wakili', '2017-12-15-Disposisi_Und-25_D.VIII.M.EKON.5_12_2017_Undangan_Focus_Group_Discussion__Implementasi_Hasil_G20_pada_Kerjasama_Regional_dan_Bilateral.pdf', 11, '2017-12-18 03:50:45'),
(94, 4, 214, '1658/Dt.8.1/12/2017', '2017-12-19', 'Saya tidak bisa mungkin lebih pas untuk pak Medril Dit.CH', '2017-12-19-S-371_KF_2017_Permintaan_sebagai_narasumber_dalam_acara_Seminar_on_OECD_report_for_the_G20__Investing_in_Climate,_Investing_in_Growth.pdf', 11, '2017-12-19 06:30:09'),
(95, 4, 215, '1666/Dt.8.1/12/20 17', '2017-12-19', 'Masukan Slot Hibah Langsung dalam data Base renbang  untuk melihat berapa banyak hibah langsung yang bisa dimonitor Bappenas', '2017-12-19-B-4568_HK.320_A_ll_2017_Penyampaian_surat_keputusan_menteri_pertanian_nomor_733_Kpts_OT.O5O_10_2017.pdf', 11, '2017-12-19 06:41:24'),
(96, 4, 217, '1665/Dt.8.1/ 12/2017', '2017-12-19', 'Untuk Diketahui', '2017-12-19-1591_B.05.ND_12_2017_Lelang_Kendaraan_Dinas_Kementeriann_PPNjBappenas_Melalui_E-auction.pdf', 11, '2017-12-19 06:58:21'),
(97, 4, 218, '16561Dt.8.11 1212017', '2017-12-19', 'Pak Cucu tolong dibantu siapkan rencana penyerapan 2018 beserta Dokumen Pendukungnya', '2017-12-19-960_B.04.ND_12_2017_Permintaan_Usulan_Penarikan_Pinjaman_dan_Hibah_beserta_Rupiah_Murni_Pendamping_TA_2019_dan_Jangka_Menengah_2020-2023_serta_Rincian_penarikan_Blanan_Pinjaman_dan_Hibah_beserta_Rp_Murni_Pendamping.pdf', 11, '2017-12-19 07:03:27'),
(98, 4, 219, '1628/Dt.8.1/ 12/2017', '2017-12-17', 'Copy kan 1 X  saja dan File', '2017-12-17-467_Dt.7.4.ND_12_2017_Penyampaian_Hasil_Rapat_Sosialisasi_Cetak_Biru_ASEAN_2025.pdf', 11, '2017-12-19 07:08:31'),
(99, 4, 220, '1670/Dt.8.1/12/20 17', '2017-12-19', 'Tolong Dilengkapi sebelum tanggal 22 Desember', '2017-12-19-Dispo_241_IU.ND_12_2017_Survei_Kepuasan_Kegiatan_Pengawasan_Inspektorat_Utama.pdf', 11, '2017-12-19 07:20:22'),
(100, 4, 221, '1661/Dt.8.1/12/2017', '2017-12-19', 'Untuk diselesaikan', '2017-12-19-Dispo_143_P.02.ND_12_2017_Kuesioner_Layanan_Internet_Mobile.pdf', 11, '2017-12-19 07:28:10'),
(101, 4, 186, '1651/Dt.8.1/12/2017', '2017-12-19', 'Jadwalkan Klo tidak ada rapat lain', '2017-12-19-Dispo_2382_B.02.ND_12_2017_QSQL_dalam_Rangka_Peningkatan_Kualitas_Perencanaan_Pembangunan.pdf', 11, '2017-12-19 07:31:03'),
(102, 4, 212, '1667 /Dt.B.I/12/2017', '2017-12-19', 'Usulan DRKH', '2017-12-19-Dispo_388_D3.ND_12_2017_Penyampaian_Dokumen_Usulan_Hibah_Global_Sustainable_Supply_Chains_for_Marine_Commodities.pdf', 11, '2017-12-19 07:32:06'),
(103, 4, 222, '1668/Dt.8.1/12/2017', '2017-12-19', '-', '2017-12-19-2397_B.02.ND_12_2017_Penyampaian_Buku_Kendali_Kehadiran.pdf', 11, '2017-12-19 07:37:08'),
(104, 4, 209, '1663/Dt.8.1/12/2017', '2017-12-19', 'u/ Staf', '2017-12-19-19_24_DOTP-GLP-PDUP_Srt_B_Buku_Government_and_Central_Bank_External_Debt_(Edisi_September_20_17).pdf', 11, '2017-12-19 07:39:07'),
(105, 4, 206, '2383/B.02/12/2017', '2017-12-19', '-', '2017-12-19-Dispo_2383_B.02.ND_12_2017_Pengawasan_Netralitas_Pegawai_ASN_pada_Pelaksanaan_Pilkada_Serentak_Tahun_2017.pdf', 11, '2017-12-20 02:12:39'),
(106, 4, 266, '1655/Dt.8.1/ 12/2017', '2017-12-27', 'Untuk Diselesaikan\r\n- Segera Sesuaikan \r\n- Bahas Dengan saya Sebelum akhir tahun', '2017-12-27-Disposisi_956_B.04.ND_12_2017_Penyusunan_Rancangan_Awal_Rencana_Kerja_KementerianjLembaga_(Renja_K_L)_Tahun_2019.pdf', 11, '2017-12-27 09:33:32'),
(107, 4, 269, '1688/Dt.8.1/12/2017', '2017-12-27', 'Hadiri/Wakili\r\nHadir dengan Saya', '2017-12-27-Dispo_12131_Dt.7.2_12_2017_Undangan_Rapat_(Penyusunan_Naskah_Akademik_Talenta_Indonesia_).pdf', 11, '2017-12-27 09:45:37'),
(108, 4, 229, '1677/Dt.8.1/12/20 17', '2017-12-29', '-', '2017-12-29-Dispo_193_D.9.ND_12_2017_Permohonan_data_hibah_dan_pinjaman_LN.pdf', 11, '2018-01-02 03:02:29'),
(109, 4, 272, '1633/Dt.8.1/12/2018', '2017-12-29', 'Untuk Dipergunakan', '2017-12-29-Dispo_232_D.5.ND_12_2017_Laporan_usulan_Pinjaman_LN_lAIN_Palu.pdf', 11, '2018-01-02 03:08:53'),
(110, 4, 246, '1681/Dt.8.1/12/2017', '2017-12-29', 'Untuk Diselesaikan\r\nKebutuhan Formasi SDM Perlu dibahas Sesuai Kebutuhan Saat ini', '2017-12-29-Dospo_2114_ses.nd_12_2017_penyampaian_usulan_kebutuhan_PNS_TAHUN_2018.pdf', 11, '2018-01-02 03:11:28'),
(111, 4, 228, '1676/Dt.8.1/12/20 17', '2017-12-28', 'Untuk Diketahui', '2017-12-28-Dispo_11724_Dt.3.1_12_2017_Penyusunan_rancangan_RKP_2019.pdf', 11, '2018-01-02 03:14:13'),
(112, 4, 183, '1653/Dt.8.1/12/2017', '2017-12-22', 'Segera\r\nSugeng Koordinasi\r\n-Diskusi Dengan saya lampirkan yang sudah disiapkan/Dikirim sebelum ke SDM', '2017-12-22-Dispo_2052_Ses.ND_12_2017_Formulir_Isian_Human_Capital_Development_Plan_(HCDP).pdf', 11, '2018-01-02 03:18:51'),
(114, 4, 273, '1611/Dt.8.1/ 12/2019', '2017-12-28', 'Siapkan\r\n-Hal Hal Penting untuk persiapan DWG Meeting\r\n-Siapkan Tempelate untuk paparan saya untuk DWG lihat PPT sebelumnya', '2017-12-28-Dispo_R-00143_BUENOS_AIRES_171222_Laporan_Pertemuan_Sherpa_G20_ke-1,_Bariloche,_Argentina,_14-16_Desember_2017.pdf', 11, '2018-01-02 03:23:44'),
(115, 4, 274, '1692/Dt.8.1/12/2017', '2017-12-29', 'Sugeng Tolong Segera\r\n- Segera Siapkan Rapat Eselon 1 Untuk Usulan SBSN\r\n-Usulan Dit.LH telar Scatter dan belum \r\n- Diskusikan apakah bisa disipakan lebih terintegrasi dan targeted agar lebih mudah pelaksanaan dan monevnya ( Sulit Monev Bulanan)\r\nSBSN harus mahal Proyeknya harus lebih baik dan punya nilai jual ke investasi yg lebih tinggi ( Punya tema untuk targetnya)', '2017-12-29-Dispo_556_Dt.3.5.ND_12_2017_Masukan_Indikasi_Proyek_yang_akan_Dibiayai_melalui_SBSN_TA._2019.pdf', 11, '2018-01-02 03:35:59'),
(116, 4, 275, '1693/Dt.8.1/12/2017', '2017-12-29', '-Perhatikan Time Line trilateral sesuaikan dengan pemrosesan sumber pendanaan masing masing (LN dan DN)\r\n- Segera susun rencana kerja untuk persiapan proyek proyeknya supaya tidak terhambat\r\n- Kedepan pendanaan D.IV perlu lebih cepat proses Persiapanya', '2017-12-29-Dispo_S-1118_PR.2_2017_Penyampaian_Hasil_Rapat_Trilateral_Meeting_dalam_Rangka_Penyusunan_Proyeksi_Penarikan_Pinjaman_dan_Hibah_TA_2019_dan_prakiraan_Maju_2020-2030.pdf', 11, '2018-01-02 03:47:01'),
(117, 4, 268, '1689/Dt.8.1/12/2017', '2017-12-28', 'Sugeng Tolong Segera\r\n-Konsolidasi usulan ini lebih scatered , lokasi tersebut tida Fokus\r\n- Tentukan tema target mau kemana\r\n- SBSN Mahal, Proyek harus Fokus terseterd \r\n- Inegrated supaya satu tujuan harus ada \r\n- Koordinasi dengan Dit.Lingkungan Hidup Juga', '2017-12-28-Dispo_740_Dt.3.2.ND_12_2017_Penyampaian_Usulan_Proyek_Lingkup_Kementerian_Lingkungan_Hidup_dan_Kehutanan_(LHK)_yang_Dapat_Dibiayai_melalui_SBSN_TA.2019.pdf', 11, '2018-01-02 03:53:38'),
(118, 4, 276, '1686/Dt.8.1/12/2017', '2017-12-29', 'Agendakan Saya\r\nSubdit kalo tidak ada jadwal lain bisa ikut', '2017-12-29-Dispo_11806_Ses_12_2017_Undangan_Temu_Konsultasi_Publik_Rpermen_RKP.pdf', 11, '2018-01-02 03:57:29'),
(119, 4, 247, '1684/Dt.8.1/12/2017', '2017-12-29', 'Up Date Database', '2017-12-29-Dispo_S-906_PR_2017_Amandemen_perjanjian_induk_pinjaman_dalam_negeri_TA_2015_tahap_I_antara_pemerintah_Indonesia_dan_PT.BNI_Persero.pdf', 11, '2018-01-02 04:02:31'),
(120, 4, 187, '1654/Dt.8.1/12/2017', '2018-01-28', 'Untuk Diketahui', '2018-01-28-Dispo_249_SA.04.M_12_2017_Penyampaian_Notulensi_rapat_Pendahuluan_Pelaksanaan_Forum_Konsultasi_Publik_2017.pdf', 11, '2018-01-02 04:04:04'),
(121, 4, 227, '1674/Dt.8.1/12/20 17', '2017-12-28', '- Cek sampai dimana kedalaman konsepnya\r\n- saya tidak akan hosted meeting kalau mereka mau diskusi tentang GB & readines bales dateng aja setelah kita tu persis proyek substansi sampai Mana', '2017-12-28-Dispo_AFD_Request_for_meeting_to_discuss_the_Integrated_Sustainable_Urban_Development_in_Indonesia_(Eco-district)AFD_Request_for_meeting_to_discuss_the_Integrated_Sustainable_Urban_Development_in_Indonesia_(Eco-district).pdf', 11, '2018-01-02 04:08:24'),
(122, 4, 168, '1696/Dt.8.1/12/2017', '2017-12-28', '- Tolong siapkan surat balasan ke econ Planning cc. Pak deputi Usulkan nama saya dan pak erwin\r\n- Kosul dengan saya\r\nSaya sudah minta usulan dan Ana yang selesaikan tapi SP sekarang lum ada', '2017-12-28-Dispo_UPE(S)880_100_9_Vol.45(39)_Planning_Community_of_Practice_(PCoP)_Workshop,_3rd_-_4th_October_2017,Kuala_Lumpur,_Malaysia.pdf', 11, '2018-01-02 04:12:46'),
(123, 4, 277, '1687/Dt.8.1/12/2017', '2017-12-28', 'Untuk dipergunakan', '2017-12-28-Dispo_403_D.3.ND_12_2017_Penyampaian_Draf_Rencana_Aksi_Nasional_Tujuan_Pembangunan_Berkelanjutan_(TPB_SDGs).pdf', 11, '2018-01-02 04:17:51'),
(124, 4, 225, '1672/Dt.8.1/12/20 17', '2017-12-28', 'Untuk dipergunakan', '2017-12-28-Dispo_2409_B.02.ND_12_2017_Penjelasan_tentang_Cuti_Bersama.pdf', 11, '2018-01-02 04:21:23'),
(125, 4, 283, '0004/Dt.8.1/1/2018', '2018-01-03', 'Untuk dipergunakan semua PNS dan PTT di Direktorat Renbang', '2018-01-03-Dispo_002_IU.ND_01_2018_Penyampaian_Himbauan_Pemenuhan_Kehadiran_Pegawai-2.pdf', 11, '2018-01-04 03:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_disposisi_aksi`
--

CREATE TABLE `irena_arsip_disposisi_aksi` (
  `id` int(11) NOT NULL,
  `id_jenis` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_disposisi_aksi`
--

INSERT INTO `irena_arsip_disposisi_aksi` (`id`, `id_jenis`, `nama`, `order`) VALUES
(1, 4, 'Untuk Diselesaikan', 0),
(2, 4, 'Untuk Dikoreksi', 1),
(3, 4, 'Teliti/Pendapat dan Laporkan', 2),
(4, 4, 'Siapkan Jawaban', 3),
(5, 4, 'Dibahas Bersama', 4),
(6, 4, 'Untuk Diketahui', 5),
(7, 4, 'Untuk Dipergunakan', 6),
(8, 4, 'Salin dan Kembalikan', 7),
(9, 4, 'Hadiri/Wakili', 8),
(10, 4, 'Untuk di File', 9);

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_disposisi_internal`
--

CREATE TABLE `irena_arsip_disposisi_internal` (
  `id` int(11) NOT NULL,
  `id_disposisi` int(11) DEFAULT NULL,
  `id_disposisi_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_disposisi_internal`
--

INSERT INTO `irena_arsip_disposisi_internal` (`id`, `id_disposisi`, `id_disposisi_user`) VALUES
(15, 24, 1),
(16, 24, 2),
(18, 22, 1),
(19, 27, 1),
(20, 28, 1),
(25, 31, 5),
(26, 32, 3),
(27, 33, 2),
(28, 33, 3),
(29, 33, 4),
(30, 33, 5),
(31, 33, 7),
(32, 35, 2),
(33, 35, 3),
(34, 35, 4),
(35, 36, 2),
(36, 36, 3),
(37, 36, 4),
(38, 37, 4),
(39, 37, 7),
(40, 41, 5),
(41, 41, 13),
(42, 41, 18),
(43, 42, 12),
(44, 42, 3),
(45, 43, 3),
(46, 42, 19),
(51, 40, 11),
(52, 44, 3),
(53, 44, 5),
(55, 43, 6),
(56, 45, 7),
(58, 47, 3),
(59, 47, 17),
(60, 47, 6),
(61, 48, 8),
(62, 49, 3),
(63, 50, 2),
(64, 50, 4),
(65, 50, 9),
(66, 51, 7),
(67, 51, 5),
(69, 46, 3),
(70, 46, 4),
(71, 46, 5),
(72, 52, 3),
(73, 53, 3),
(74, 53, 12),
(75, 54, 3),
(76, 55, 5),
(77, 56, 3),
(78, 58, 3),
(79, 58, 12),
(80, 59, 3),
(81, 59, 15),
(82, 60, 3),
(83, 61, 2),
(84, 61, 4),
(85, 62, 3),
(86, 62, 12),
(87, 64, 4),
(88, 64, 7),
(89, 65, 5),
(90, 65, 8),
(91, 66, 5),
(92, 67, 3),
(93, 67, 15),
(94, 68, 3),
(95, 69, 3),
(96, 69, 6),
(97, 69, 17),
(98, 71, 3),
(99, 71, 15),
(100, 72, 5),
(101, 73, 3),
(102, 73, 5),
(103, 74, 5),
(104, 75, 5),
(106, 76, 2),
(107, 76, 3),
(108, 76, 4),
(109, 76, 5),
(110, 76, 6),
(111, 76, 7),
(112, 77, 6),
(113, 78, 3),
(114, 78, 7),
(115, 79, 2),
(116, 79, 3),
(117, 79, 4),
(118, 80, 3),
(119, 80, 7),
(120, 81, 3),
(121, 82, 3),
(122, 82, 6),
(123, 83, 3),
(124, 84, 3),
(125, 85, 5),
(126, 86, 3),
(127, 87, 2),
(128, 87, 3),
(129, 87, 4),
(130, 87, 5),
(131, 87, 6),
(132, 87, 7),
(133, 88, 3),
(134, 89, 2),
(135, 89, 3),
(136, 89, 4),
(137, 89, 5),
(138, 89, 6),
(139, 89, 7),
(140, 90, 3),
(141, 91, 4),
(142, 93, 15),
(143, 93, 14),
(144, 94, 3),
(145, 94, 4),
(146, 94, 5),
(147, 95, 3),
(148, 95, 6),
(149, 95, 7),
(150, 95, 1),
(151, 96, 2),
(152, 96, 3),
(153, 96, 4),
(154, 96, 5),
(155, 96, 6),
(156, 96, 7),
(157, 96, 8),
(158, 96, 9),
(160, 97, 3),
(161, 97, 12),
(162, 97, 15),
(163, 98, 3),
(164, 98, 14),
(165, 98, 15),
(166, 99, 2),
(167, 99, 4),
(168, 100, 2),
(169, 102, 3),
(170, 102, 6),
(171, 102, 7),
(172, 102, 12),
(173, 103, 2),
(174, 103, 8),
(175, 104, 2),
(176, 104, 3),
(177, 104, 4),
(178, 104, 5),
(179, 105, 2),
(180, 105, 3),
(181, 105, 4),
(182, 105, 5),
(183, 105, 6),
(184, 105, 7),
(185, 105, 8),
(186, 105, 9),
(187, 106, 2),
(188, 106, 3),
(189, 106, 4),
(190, 106, 5),
(199, 107, 3),
(200, 108, 3),
(201, 108, 12),
(202, 109, 3),
(203, 109, 5),
(204, 110, 2),
(205, 110, 4),
(206, 111, 3),
(207, 111, 4),
(208, 112, 3),
(209, 112, 5),
(210, 114, 3),
(211, 114, 7),
(212, 114, 15),
(213, 115, 2),
(214, 115, 5),
(215, 115, 17),
(216, 115, 18),
(217, 116, 2),
(218, 116, 3),
(219, 116, 4),
(220, 116, 5),
(221, 117, 2),
(222, 117, 5),
(223, 117, 17),
(224, 117, 18),
(225, 118, 2),
(226, 118, 3),
(227, 118, 4),
(228, 118, 5),
(229, 119, 4),
(230, 119, 7),
(231, 120, 2),
(232, 120, 3),
(233, 120, 4),
(234, 120, 5),
(235, 121, 3),
(236, 121, 6),
(237, 121, 17),
(238, 122, 3),
(239, 122, 7),
(240, 123, 2),
(241, 123, 3),
(242, 123, 6),
(243, 123, 7),
(244, 124, 2),
(245, 124, 3),
(246, 124, 4),
(247, 124, 5),
(248, 124, 6),
(249, 124, 7),
(250, 124, 8),
(251, 124, 9);

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_disposisi_internal_aksi`
--

CREATE TABLE `irena_arsip_disposisi_internal_aksi` (
  `id` int(11) NOT NULL,
  `id_disposisi` int(11) DEFAULT NULL,
  `id_disposisi_aksi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_disposisi_internal_aksi`
--

INSERT INTO `irena_arsip_disposisi_internal_aksi` (`id`, `id_disposisi`, `id_disposisi_aksi`) VALUES
(17, 24, 2),
(21, 24, 4),
(22, 27, 4),
(23, 28, 1),
(24, 28, 2),
(25, 28, 3),
(26, 28, 5),
(27, 28, 4),
(28, 26, 1),
(29, 26, 2),
(30, 26, 3),
(31, 26, 4),
(32, 31, 6),
(33, 32, 7),
(34, 33, 1),
(35, 35, 7),
(36, 36, 7),
(37, 37, 7),
(38, 43, 9),
(39, 42, 4),
(40, 47, 9),
(41, 49, 7),
(42, 46, 7),
(43, 52, 9),
(44, 53, 1),
(45, 54, 7),
(46, 55, 10),
(47, 56, 6),
(48, 59, 1),
(49, 60, 1),
(50, 62, 1),
(51, 64, 1),
(52, 66, 1),
(53, 67, 9),
(54, 72, 1),
(55, 73, 7),
(56, 74, 1),
(57, 75, 1),
(58, 77, 1),
(59, 78, 1),
(60, 79, 1),
(61, 80, 9),
(62, 81, 9),
(63, 82, 9),
(64, 83, 9),
(65, 85, 1),
(66, 88, 9),
(67, 90, 9),
(68, 91, 7),
(69, 93, 9),
(70, 96, 6),
(71, 99, 1),
(72, 100, 1),
(73, 103, 1),
(74, 104, 7),
(75, 105, 6),
(76, 106, 1),
(77, 107, 9),
(78, 108, 1),
(79, 109, 7),
(80, 116, 1),
(81, 118, 9),
(82, 120, 6),
(83, 121, 1),
(84, 122, 1),
(85, 123, 7);

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_disposisi_jenis`
--

CREATE TABLE `irena_arsip_disposisi_jenis` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `eksternal` int(11) DEFAULT NULL,
  `internal` int(11) DEFAULT NULL,
  `order` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_disposisi_jenis`
--

INSERT INTO `irena_arsip_disposisi_jenis` (`id`, `nama`, `eksternal`, `internal`, `order`) VALUES
(1, 'Menteri PPN/Kepala Bappenas', 1, 0, b'1'),
(2, 'SesMen. PPN/Sestama Bappenas', 2, 0, b'1'),
(3, 'Deputi Bidang Pendanaan Pembangunan', 3, 0, b'1'),
(4, 'Direktur Perencanaan dan Pengembangan Pendanaan Pembangunan', 0, 1, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_disposisi_user`
--

CREATE TABLE `irena_arsip_disposisi_user` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_disposisi_user`
--

INSERT INTO `irena_arsip_disposisi_user` (`id`, `id_user`, `nama`, `jabatan`, `order`) VALUES
(1, 2, 'Tati Lies Aryati', '1', 2),
(2, 3, 'Riza Hamzah', '1', 3),
(3, 4, 'Mukhtiali', '1', 4),
(4, 5, 'Sugeng Wahyu Hendarto', '1', 5),
(5, 6, 'Beby Hanzian', '1', 6),
(6, 7, 'Yustina Wijayanti', '1', 7),
(7, 8, 'Tien Iswartini', '1', 8),
(8, 9, 'Dadan Kusdarsana', '1', 9),
(9, 10, 'Ino Sutrisno', '1', 10),
(10, 1, 'Firman Perangin-angin', '0', 11),
(11, 11, 'Adi Nurhadi', '0', 12),
(12, 12, 'Eftin Ula Kurnia', '0', 13),
(13, 13, 'Sahna Putri Aselira', '0', 14),
(14, 14, 'Bonataon M. T. V. Simandjorang', '0', 15),
(15, 15, 'Pristi N. K. Panggabean', '0', 16),
(16, 16, 'Kristianto Wibowo', '0', 17),
(17, 17, 'Muhammad Faisal Siddiq', '0', 18),
(18, 18, 'Derry Afriandri', '0', 19),
(19, 19, 'Reezali Raharjaya', '0', 20),
(20, 20, 'Faizah Aulia Rahmah', '0', 21),
(21, 22, 'Teni Widuriyanti', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_dk`
--

CREATE TABLE `irena_arsip_dk` (
  `id` int(11) NOT NULL,
  `id_dk` varchar(5) NOT NULL,
  `id_jenis` varchar(5) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `berkas` text NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_tambah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_dokumen`
--

CREATE TABLE `irena_arsip_dokumen` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_dokumen`
--

INSERT INTO `irena_arsip_dokumen` (`id`, `nama`) VALUES
(1, 'DIPK'),
(2, 'DUK');

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_file`
--

CREATE TABLE `irena_arsip_file` (
  `id` int(11) NOT NULL,
  `id_surat` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `id_user` int(11) DEFAULT NULL,
  `judul` varchar(250) NOT NULL,
  `id_usulan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_file`
--

INSERT INTO `irena_arsip_file` (`id`, `id_surat`, `nama`, `timestamp`, `id_user`, `judul`, `id_usulan`) VALUES
(1, 1, 'surat usulan proyek B', '2017-12-03 16:43:40', NULL, '', 1),
(2, NULL, 'Surat Masuk Proyek A', '2017-12-03 16:43:44', NULL, '', 2),
(3, NULL, 'DIPK Proyek A', '2017-12-03 16:43:49', NULL, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_greenbook`
--

CREATE TABLE `irena_arsip_greenbook` (
  `id` int(11) NOT NULL,
  `id_greenbook` varchar(5) NOT NULL,
  `id_jenis` varchar(5) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `berkas` text NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_tambah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_jenis`
--

CREATE TABLE `irena_arsip_jenis` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_jenis`
--

INSERT INTO `irena_arsip_jenis` (`id`, `nama`, `icon`) VALUES
(1, 'masuk', 'fa fa-play text-info fa-rotate-90'),
(2, 'keluar', 'fa fa-play text-warning fa-rotate-270');

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_la`
--

CREATE TABLE `irena_arsip_la` (
  `id` int(11) NOT NULL,
  `id_la` varchar(5) NOT NULL,
  `id_jenis` varchar(5) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `berkas` text NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_tambah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_lampiran`
--

CREATE TABLE `irena_arsip_lampiran` (
  `id` int(11) NOT NULL,
  `id_arsip` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` text,
  `berkas` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_lampiran`
--

INSERT INTO `irena_arsip_lampiran` (`id`, `id_arsip`, `nama`, `keterangan`, `berkas`, `update_by`, `update_date`) VALUES
(20, 34, 'fff', 'fff', 'oke', 1, '2017-10-04 03:16:18'),
(23, 34, 'dd', 'dd', 'oke', 1, '2017-10-04 03:20:15'),
(24, NULL, NULL, NULL, 'oke', NULL, '2017-10-04 03:20:35'),
(25, 34, 'uu', 'uu', 'oke', 1, '2017-10-04 03:22:18'),
(26, 34, 'rr', 'rr', '10.1.1.499.684810.pdf', 1, '2017-10-04 03:23:25'),
(27, 34, 'aa', 'aa', '10.1.1.499.684811.pdf', 1, '2017-10-04 03:34:08'),
(28, 34, 'ss', 'ss', 'oke', 1, '2017-10-04 03:35:13'),
(30, 34, 'dd', 'dd', '10.1.1.499.684812.pdf', 1, '2017-10-04 03:36:23'),
(31, 61, 'das', 'sadas', NULL, 1, '2017-10-17 03:58:05'),
(32, 61, 'das', 'sadas', NULL, 1, '2017-10-17 03:58:05'),
(39, 55, 'ini tes aja', '-', NULL, 1, '2017-10-18 07:45:25'),
(40, 56, 'aa', 'bkkk', NULL, 1, '2017-10-18 08:03:16'),
(41, 56, 'bb', 'bb', NULL, 1, '2017-10-18 22:24:40'),
(42, 0, 'sadas', 'asdsa', 'Jwb.pdf', 1, '2017-11-06 17:19:34'),
(43, 0, 'dasdas', 'dasdada', 'Jwb1.pdf', 1, '2017-11-06 17:23:54'),
(44, 62, 'adas', 'adas', 'Jwb2.pdf', 1, '2017-11-06 17:24:38'),
(48, 62, 'tes', 'ini adalah bentuk keterangan sehingga bentuk ini dapat berjalan dengan baik adalah begitu sehingga oke', '62-Jwb4.pdf', 1, '2017-11-07 02:49:46'),
(49, 99, 'Matrik 1 Angka Target', 'Matrik 1 Angka Target', '99-Matriks_1_Angka_Target.xlsx', 11, '2017-11-09 03:27:40'),
(50, 99, 'Mattrik 2 Identifikasi Program Kegiatan', 'Mattrik 2 Identifikasi Program Kegiatan', '99-Matriks_2_Identifikasi_Program-Kegiatan.xlsx', 11, '2017-11-09 03:28:55'),
(51, 116, 'Surat Dari Dir.Renbang PP No 137/Dt.8.1.ND/07 /2017', 'Penyampaian TOR dan RAB Kegiatan Tahun 2018 UKE II Ditrenbang Pendanaan Pembangunan', '116-Dir._Renbang_137_-_Penyampaian_TOR_dan_RAB_Kegiatan_Tahun_2018_UKE_II.pdf', 11, '2017-12-04 23:44:34'),
(52, 116, 'RAB. Ditrenbang PP', '-', '116-RAB_Dit_Renbang_PP_2018_(Usulan_Awal)_rev._3.xlsx', 11, '2017-12-04 23:45:34'),
(53, 186, 'Surat Revisi Undangan', 'Perubahan Waktu Rapat', '186-2395_B.02.ND_12_2017_Revisi_Rapat_QSQL_dalam_Rangka_Peningkatan_Kualitas_Perencanaan_Pembangunan.pdf', 11, '2017-12-18 01:53:43');

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_pln`
--

CREATE TABLE `irena_arsip_pln` (
  `id` int(11) NOT NULL,
  `id_usulan_proyek` varchar(10) NOT NULL,
  `id_greenbook_proyek` varchar(10) NOT NULL,
  `id_bluebook_proyek` varchar(10) NOT NULL,
  `id_dk_proyek` varchar(10) NOT NULL,
  `id_la_proyek` int(10) NOT NULL,
  `id_arsip_status` varchar(10) NOT NULL,
  `id_arsip_file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_pln`
--

INSERT INTO `irena_arsip_pln` (`id`, `id_usulan_proyek`, `id_greenbook_proyek`, `id_bluebook_proyek`, `id_dk_proyek`, `id_la_proyek`, `id_arsip_status`, `id_arsip_file`) VALUES
(1, '', '', '', '', 0, '', 'tes arsip');

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_status`
--

CREATE TABLE `irena_arsip_status` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_status`
--

INSERT INTO `irena_arsip_status` (`id`, `nama`, `class`) VALUES
(1, 'Belum Selesai', 'label label-primary'),
(2, 'Selesai', 'label label-danger');

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_tingkat`
--

CREATE TABLE `irena_arsip_tingkat` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_tingkat`
--

INSERT INTO `irena_arsip_tingkat` (`id`, `nama`) VALUES
(1, 'Rahasia'),
(2, 'Segera'),
(3, 'Biasa');

-- --------------------------------------------------------

--
-- Table structure for table `irena_arsip_usulan`
--

CREATE TABLE `irena_arsip_usulan` (
  `id` int(11) NOT NULL,
  `id_usulan` varchar(5) NOT NULL,
  `id_jenis` varchar(5) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `berkas` text NOT NULL,
  `keterangan` text NOT NULL,
  `tgl_tambah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_arsip_usulan`
--

INSERT INTO `irena_arsip_usulan` (`id`, `id_usulan`, `id_jenis`, `nama`, `berkas`, `keterangan`, `tgl_tambah`) VALUES
(1, '1', '', 'permen', '1-3-permen-kp-2017-ttg-otk-lpmukp2.pdf', '', '2017-12-11'),
(2, '1', '', 'abc', '1-benih-ikan-mas-strain-majalaya2.pdf', '', '2017-12-12'),
(3, '1', '', '', '1-116-388-1-PB1.pdf', '', '2017-12-12'),
(4, '1', '', '', '1-116-388-1-PB2.pdf', '', '2017-12-12'),
(5, '1', '', '', '1-818-1499-1-PB.pdf', '', '2017-12-12'),
(6, '1', '', '', '1-818-1499-1-PB1.pdf', '', '2017-12-12'),
(7, '', '', '', '3-116-388-1-PB.pdf', '', '2017-12-12'),
(8, '', '', '', '3-116-388-1-PB1.pdf', '', '2017-12-12'),
(9, '2', '', '', '2-3-permen-kp-2017-ttg-otk-lpmukp.pdf', '', '2017-12-12'),
(10, '2', '', '', '2-3-permen-kp-2017-ttg-otk-lpmukp1.pdf', '', '2017-12-12'),
(11, '3', '', '', '3-818-1499-1-PB.pdf', '', '2017-12-12'),
(12, '3', '', '', '3-818-1499-1-PB1.pdf', '', '2017-12-12'),
(13, '3', '', '', '3-Agoda_Confirmed_Booking_at_The_Bunk_by_Olive.pdf', '', '2017-12-12'),
(14, '2', '', '', '2-20170919_085237-1.pdf', '', '2017-12-12'),
(15, '1', '', '', '1-Image_(6).pdf', '', '2017-12-12'),
(16, '1', '', '', '1-Image_(6)1.pdf', '', '2017-12-12'),
(17, '10', '', 'surat keterangan', '10-KuisionerB.pdf', '', '2017-12-18');

-- --------------------------------------------------------

--
-- Table structure for table `irena_bb_layak`
--

CREATE TABLE `irena_bb_layak` (
  `id` int(11) NOT NULL,
  `id_proyek_bb` varchar(5) NOT NULL,
  `is_layak` int(11) NOT NULL DEFAULT '0',
  `update_by` varchar(5) NOT NULL,
  `update_at` datetime NOT NULL,
  `is_GB` int(11) NOT NULL DEFAULT '0',
  `is_gb_update_by` varchar(10) NOT NULL,
  `is_gb_update_at` date NOT NULL,
  `is_kasubdit_layak` int(11) NOT NULL,
  `kasubdit_layak_by` int(11) NOT NULL,
  `kasubdit_layak_at` datetime NOT NULL,
  `layak_catatan_kasubdit` text NOT NULL,
  `is_gb_kasubdit` int(11) NOT NULL,
  `kasubdit_gb_by` int(11) NOT NULL,
  `kasubdit_gb_at` datetime NOT NULL,
  `gb_catatan_catatan` text NOT NULL,
  `layak_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_bb_layak`
--

INSERT INTO `irena_bb_layak` (`id`, `id_proyek_bb`, `is_layak`, `update_by`, `update_at`, `is_GB`, `is_gb_update_by`, `is_gb_update_at`, `is_kasubdit_layak`, `kasubdit_layak_by`, `kasubdit_layak_at`, `layak_catatan_kasubdit`, `is_gb_kasubdit`, `kasubdit_gb_by`, `kasubdit_gb_at`, `gb_catatan_catatan`, `layak_keterangan`) VALUES
(1, '170', 2, '20', '0000-00-00 00:00:00', 2, '20', '2017-12-13', 2, 5, '0000-00-00 00:00:00', '', 2, 4, '0000-00-00 00:00:00', '', ''),
(2, '171', 1, '', '2017-12-12 07:47:32', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(3, '172', 1, '', '2017-12-12 07:59:11', 1, '', '2017-12-13', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(4, '173', 1, '', '2017-12-12 08:07:22', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(5, '177', 1, '', '2017-12-13 08:26:05', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(6, '178', 1, '', '2017-12-13 08:40:26', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(7, '179', 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(8, '180', 1, '', '2017-12-13 08:57:34', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(9, '181', 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(10, '182', 1, '', '2017-12-13 08:56:36', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(11, '183', 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(12, '184', 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(13, '185', 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(14, '186', 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(15, '187', 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(17, '190', 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(18, '191', 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(19, '192', 2, '', '2017-12-13 13:12:54', 2, '', '2017-12-13', 2, 0, '0000-00-00 00:00:00', '', 2, 0, '0000-00-00 00:00:00', '', ''),
(22, '195', 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(23, '196', 1, '', '2017-12-20 08:04:52', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(27, '201', 1, '', '2017-12-18 10:29:14', 0, '', '2017-12-18', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(28, '193', 2, '', '2017-12-21 12:49:22', 0, '', '2017-12-21', 2, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(29, '194', 2, '20', '2018-01-10 04:33:28', 0, '20', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 4, '0000-00-00 00:00:00', '', 'menurut saya'),
(30, '196', 1, '', '2017-12-20 08:04:52', 0, '', '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `irena_bluebook_kode`
--

CREATE TABLE `irena_bluebook_kode` (
  `id` int(11) NOT NULL,
  `id_bluebook` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `singkatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_bluebook_kode`
--

INSERT INTO `irena_bluebook_kode` (`id`, `id_bluebook`, `nama`, `singkatan`) VALUES
(1, 'BB17', 'Bluebook Revisi 2017', 'BBR 2017'),
(2, 'BB15', 'Rencana Pinjaman 2015', 'Bluebook 20015');

-- --------------------------------------------------------

--
-- Table structure for table `irena_bluebook_lokasi`
--

CREATE TABLE `irena_bluebook_lokasi` (
  `id` int(11) NOT NULL,
  `id_bb_proyek` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `id_kabkota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_bluebook_proyek`
--

CREATE TABLE `irena_bluebook_proyek` (
  `id` int(11) NOT NULL,
  `id_usulan_proyek` int(11) NOT NULL,
  `id_bluebook` varchar(10) DEFAULT NULL,
  `id_usulan` int(11) NOT NULL,
  `id_program` varchar(11) DEFAULT NULL,
  `id_instansi` varchar(5) NOT NULL,
  `id_eselon_1` varchar(11) DEFAULT NULL,
  `id_instansi_pelaksana` varchar(11) NOT NULL,
  `tahun_usulan` int(11) NOT NULL,
  `judul_proyek_eng` varchar(300) DEFAULT NULL,
  `judul_proyek_id` varchar(300) DEFAULT NULL,
  `ruang_lingkup_eng` varchar(100) DEFAULT '-',
  `ruang_lingkup_id` varchar(100) DEFAULT '-',
  `durasi` int(11) NOT NULL,
  `proyeksi_tahun_pertama_penarikan` int(11) NOT NULL,
  `id_status_lembaga` varchar(5) NOT NULL,
  `id_status_lender` varchar(5) NOT NULL,
  `output` varchar(100) DEFAULT NULL,
  `outcome` varchar(100) DEFAULT NULL,
  `nilai_pinjaman` int(11) NOT NULL,
  `nilai_hibah` int(11) NOT NULL,
  `dana_pendamping` int(11) NOT NULL,
  `id_lender` varchar(5) NOT NULL,
  `Files` int(11) NOT NULL,
  `id_sektor` int(11) NOT NULL,
  `infra` int(11) NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_bluebook_proyek`
--

INSERT INTO `irena_bluebook_proyek` (`id`, `id_usulan_proyek`, `id_bluebook`, `id_usulan`, `id_program`, `id_instansi`, `id_eselon_1`, `id_instansi_pelaksana`, `tahun_usulan`, `judul_proyek_eng`, `judul_proyek_id`, `ruang_lingkup_eng`, `ruang_lingkup_id`, `durasi`, `proyeksi_tahun_pertama_penarikan`, `id_status_lembaga`, `id_status_lender`, `output`, `outcome`, `nilai_pinjaman`, `nilai_hibah`, `dana_pendamping`, `id_lender`, `Files`, `id_sektor`, `infra`, `id_status`) VALUES
(170, 0, '2', 2, '1', '87', '931', '79', 0, 'lorem ipsuuum', 'lorem ipsum', '', 'lorem ipsum', 12, 0, '', '', 'lorem ipsum', 'lorem ipsum', 250, 123, 155, '1', 0, 2, 2, 1),
(192, 0, '1', 8, '6 ', '87 ', NULL, '87 ', 0, 'a', 'a', '-', '-', 0, 0, '', '', NULL, NULL, 200, 0, 0, '', 0, 1, 1, 3),
(193, 10, '2', 10, '18 ', '57', '', '71 ', 0, 'art', 'art', '-', '-', 0, 0, '', '', 'abc', 'abc', 124, 122, 0, '', 0, 0, 2, 2),
(194, 11, '2', 11, '19 ', '87 ', '', '81 ', 0, 'tre', 'tre', '-', '-', 0, 2015, '', '', 'rrr', 'aaa', 111, 111, 0, '', 0, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `irena_ci_sessions`
--

CREATE TABLE `irena_ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(150) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `irena_ci_sessions`
--

INSERT INTO `irena_ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('ad5a3d0e4a77af1a077f942583e07ed7', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 1514963085, ''),
('71fa8ab0f54c185199cd865970e7ab9f', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1514961082, ''),
('105dd7bee5f34c0571baa55887101e54', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 1514887381, ''),
('2e5d4ca6e4c944dd02daffce334c4ef7', '::1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:43.0) Gecko/20100101 Firefox/43.0', 1514951605, ''),
('f7458e719e918afe7835d1f438edc29a', '::1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 1514961075, '');

-- --------------------------------------------------------

--
-- Table structure for table `irena_daftarkegiatan_proyek`
--

CREATE TABLE `irena_daftarkegiatan_proyek` (
  `id` int(11) NOT NULL,
  `id_usulan` varchar(5) NOT NULL,
  `id_gb_proyek` int(11) NOT NULL,
  `id_greenbook` varchar(11) NOT NULL,
  `id_bluebook` varchar(11) NOT NULL,
  `id_instansi` varchar(11) NOT NULL,
  `id_program` varchar(10) NOT NULL,
  `id_lender` varchar(5) NOT NULL,
  `id_eselon_1` varchar(5) NOT NULL,
  `instansi_pelaksana` text NOT NULL,
  `judul_proyek_id` varchar(500) NOT NULL,
  `judul_proyek_eng` varchar(500) NOT NULL,
  `ruang_lingkup_id` text NOT NULL,
  `ruang_lingkup_eng` text NOT NULL,
  `durasi` int(11) NOT NULL,
  `id_status_lembaga` varchar(5) NOT NULL,
  `id_status_lender` varchar(5) NOT NULL,
  `proyeksi_tahun_pertama_penarikan` int(11) NOT NULL,
  `output` text NOT NULL,
  `outcome` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `nilai_pinjaman` int(11) NOT NULL,
  `nilai_hibah` int(11) NOT NULL,
  `tahun_usulan` varchar(5) NOT NULL,
  `dana_usulan` int(11) NOT NULL,
  `tgl_DK` date NOT NULL,
  `dana_pendamping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_daftarkegiatan_proyek`
--

INSERT INTO `irena_daftarkegiatan_proyek` (`id`, `id_usulan`, `id_gb_proyek`, `id_greenbook`, `id_bluebook`, `id_instansi`, `id_program`, `id_lender`, `id_eselon_1`, `instansi_pelaksana`, `judul_proyek_id`, `judul_proyek_eng`, `ruang_lingkup_id`, `ruang_lingkup_eng`, `durasi`, `id_status_lembaga`, `id_status_lender`, `proyeksi_tahun_pertama_penarikan`, `output`, `outcome`, `lokasi`, `nilai_pinjaman`, `nilai_hibah`, `tahun_usulan`, `dana_usulan`, `tgl_DK`, `dana_pendamping`) VALUES
(3, '2', 0, '', '', '79', '1', '', '931', '79', 'lorem ipsum', '', '', '', 0, '', '', 0, 'lorem ipsum', 'lorem ipsum', '', 143, 123, '', 0, '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `irena_dk_layak`
--

CREATE TABLE `irena_dk_layak` (
  `id` int(11) NOT NULL,
  `id_proyek_dk` varchar(5) NOT NULL,
  `is_layak` int(11) NOT NULL DEFAULT '0',
  `is_kasubdit_layak` int(11) NOT NULL,
  `update_by` varchar(5) NOT NULL,
  `update_at` datetime NOT NULL,
  `is_la` int(11) NOT NULL DEFAULT '0',
  `is_la_update_by` varchar(5) NOT NULL,
  `is_la_update_at` date NOT NULL,
  `kasubdit_layak_by` int(11) NOT NULL,
  `kasubdit_layak_at` datetime NOT NULL,
  `layak_catatan_kasubdit` text NOT NULL,
  `is_la_kasubdit` int(11) NOT NULL,
  `kasubdit_la_by` int(11) NOT NULL,
  `kasubdit_la_at` datetime NOT NULL,
  `la_catatan_kasubdit` text NOT NULL,
  `catatan_staff_layak` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_dk_layak`
--

INSERT INTO `irena_dk_layak` (`id`, `id_proyek_dk`, `is_layak`, `is_kasubdit_layak`, `update_by`, `update_at`, `is_la`, `is_la_update_by`, `is_la_update_at`, `kasubdit_layak_by`, `kasubdit_layak_at`, `layak_catatan_kasubdit`, `is_la_kasubdit`, `kasubdit_la_by`, `kasubdit_la_at`, `la_catatan_kasubdit`, `catatan_staff_layak`) VALUES
(1, '1', 1, 0, '', '2017-12-12 08:23:47', 0, '', '2017-12-19', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(2, '2', 0, 0, '', '2017-12-15 05:16:37', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(3, '3', 2, 0, '', '2017-12-15 05:19:42', 2, '', '2017-12-18', 2, '0000-00-00 00:00:00', '', 2, 0, '0000-00-00 00:00:00', '', ''),
(5, '5', 0, 0, '', '2017-12-18 06:36:43', 0, '', '2017-12-18', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(7, '7', 1, 0, '', '2017-12-18 06:33:26', 0, '', '2017-12-18', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(10, '10', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(11, '11', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(12, '12', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(13, '13', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(14, '14', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(15, '15', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(16, '16', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(17, '17', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(18, '18', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(19, '9', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(20, '22', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(21, '23', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(22, '24', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(23, '25', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(24, '26', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(25, '27', 1, 0, '', '2017-12-18 10:30:08', 0, '', '2017-12-18', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(26, '6', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', ''),
(28, '5', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `irena_eselon_1`
--

CREATE TABLE `irena_eselon_1` (
  `id` int(11) NOT NULL,
  `id_instansi` int(5) NOT NULL,
  `id_eselon_1` varchar(5) NOT NULL,
  `nama_eselon_1` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_eselon_1`
--

INSERT INTO `irena_eselon_1` (`id`, `id_instansi`, `id_eselon_1`, `nama_eselon_1`) VALUES
(832, 1, '01', 'Sekretariat Jenderal'),
(833, 1, '02', 'Majelis'),
(834, 2, '01', 'Sekretariat Jenderal'),
(835, 2, '02', 'Dewan'),
(836, 4, '01', 'Badan Pemeriksa Keuangan'),
(837, 4, '02', 'BPK Pusat'),
(838, 5, '01', 'Badan Urusan Administrasi'),
(839, 5, '02', 'Kepaniteraan'),
(840, 5, '03', 'Ditjen Badan Peradilan Umum'),
(841, 5, '04', 'Ditjen Badan Peradilan Agama'),
(842, 5, '05', 'Ditjen Badan Peradilan Militer dan Peradilan Tata Usaha Negara (TUN)'),
(843, 5, '06', 'Badan Penelitian dan Pengembangan Pendidikan dan Pelatihan Hukum dan Peradilan'),
(844, 5, '07', 'Badan Pengawasan Mahkamah Agung'),
(845, 6, '01', 'Kejaksaan Republik Indonesia'),
(846, 7, '01', 'Sekretariat Negara'),
(847, 7, '03', 'Sekretariat Presiden'),
(848, 7, '04', 'Sekretariat Wakil Presiden'),
(849, 7, '05', 'Sekretariat Militer Presiden'),
(850, 7, '06', 'Pasukan Pengamanan Presiden'),
(851, 7, '07', 'Dewan Pertimbangan Presiden'),
(852, 7, '08', 'Unit Kerja Presiden Bidang Pengawasan dan Pengendalian Pembangunan (UKP4)'),
(853, 7, '09', 'Lembaga Perlindungan Saksi dan Korban (LPSK)'),
(854, 7, '10', 'Kantor Staf Presiden'),
(855, 10, '01', 'Sekretariat Jenderal'),
(856, 10, '02', 'Inspektorat Jenderal'),
(857, 10, '03', 'Ditjen Politik Dan Pemerintahan Umum'),
(858, 10, '04', 'Ditjen Bina Administrasi Kewilayahan'),
(859, 10, '05', 'Ditjen Bina Pemerintahan Desa'),
(860, 10, '06', 'Ditjen Bina Pembangunan Daerah'),
(861, 10, '07', 'Ditjen Otonomi Daerah'),
(862, 10, '08', 'Ditjen Kependudukan dan Pencatatan Sipil'),
(863, 10, '09', 'Ditjen Bina Keuangan Daerah'),
(864, 10, '11', 'Badan Penelitian dan Pengembangan'),
(865, 10, '12', 'Badan Pengembangan Sumber Daya Manusia'),
(866, 11, '01', 'Sekretariat Jenderal'),
(867, 11, '02', 'Ditjen Asia Pasifik dan Afrika'),
(868, 11, '03', 'Ditjen Amerika dan Eropa'),
(869, 11, '04', 'Ditjen Kerja Sama Asean'),
(870, 11, '05', 'Ditjen Kerjasama Multilateral'),
(871, 11, '06', 'Ditjen Informasi dan Diplomasi Publik'),
(872, 11, '07', 'Ditjen Hukum dan Perjanjian Internasional'),
(873, 11, '08', 'Ditjen Protokol dan Konsuler'),
(874, 11, '09', 'Inspektorat Jenderal'),
(875, 11, '11', 'Badan Pengkajian dan Pengembangan Kebijakan'),
(876, 12, '01', 'Kementerian Pertahanan'),
(877, 12, '21', 'Markas Besar TNI'),
(878, 12, '22', 'Markas Besar TNI AD'),
(879, 12, '23', 'Markas Besar TNI AL'),
(880, 12, '24', 'Markas Besar TNI AU'),
(881, 13, '01', 'Sekretariat Jenderal'),
(882, 13, '02', 'Inspektorat Jenderal'),
(883, 13, '03', 'Ditjen Administrasi Hukum Umum'),
(884, 13, '05', 'Ditjen Pemasyarakatan'),
(885, 13, '06', 'Ditjen Imigrasi'),
(886, 13, '07', 'Ditjen Kekayaan Intelektual'),
(887, 13, '08', 'Ditjen Peraturan Perundang-Undangan'),
(888, 13, '09', 'Ditjen Hak Asasi Manusia'),
(889, 13, '10', 'Badan Pembinaan Hukum Nasional'),
(890, 13, '11', 'Badan Penelitian dan Pengembangan Hukum dan Hak Asasi Manusia'),
(891, 13, '12', 'Badan Pengembangan Sumber Daya Manusia Hukum dan Hak Asasi Manusia'),
(892, 15, '01', 'Sekretariat Jenderal'),
(893, 15, '02', 'Inspektorat Jenderal'),
(894, 15, '03', 'Ditjen Anggaran'),
(895, 15, '04', 'Ditjen Pajak'),
(896, 15, '05', 'Ditjen Bea dan Cukai'),
(897, 15, '06', 'Ditjen Perimbangan Keuangan'),
(898, 15, '07', 'Ditjen Pengelolaan Pembiayaan dan Risiko'),
(899, 15, '08', 'Ditjen Perbendaharaan'),
(900, 15, '09', 'Ditjen Kekayaan Negara'),
(901, 15, '11', 'Badan Pendidikan dan Pelatihan Keuangan'),
(902, 15, '12', 'Badan Kebijakan Fiskal'),
(903, 18, '01', 'Sekretariat Jenderal'),
(904, 18, '02', 'Inspektorat Jenderal'),
(905, 18, '03', 'Ditjen Tanaman Pangan'),
(906, 18, '04', 'Ditjen Hortikultura'),
(907, 18, '05', 'Ditjen Perkebunan'),
(908, 18, '06', 'Ditjen Peternakan dan Kesehatan Hewan'),
(909, 18, '08', 'Ditjen Prasarana dan Sarana Pertanian'),
(910, 18, '09', 'Badan Penelitian dan Pengembangan Pertanian'),
(911, 18, '10', 'Badan Penyuluhan dan Pengembangan Sumber Daya Manusia Pertanian'),
(912, 18, '11', 'Badan Ketahanan Pangan'),
(913, 18, '12', 'Badan Karantina Pertanian'),
(914, 19, '01', 'Sekretariat Jenderal'),
(915, 19, '02', 'Ditjen Industri Agro'),
(916, 19, '03', 'Ditjen Industri Kimia Tekstil dan Aneka'),
(917, 19, '04', 'Ditjen Industri Logam, Mesin, Alat Transportasi, dan Elektronika'),
(918, 19, '05', 'Ditjen Industri Kecil dan Menengah'),
(919, 19, '06', 'Inspektorat Jenderal'),
(920, 19, '07', 'Badan Penelitian dan Pengembangan Industri'),
(921, 19, '08', 'Ditjen Pengembangan Perwilayahan Industri'),
(922, 19, '09', 'Ditjen Ketahanan dan Pengembangan Akses Industri Internasional'),
(923, 20, '01', 'Sekretariat Jenderal'),
(924, 20, '02', 'Inspektorat Jenderal'),
(925, 20, '04', 'Ditjen Minyak dan Gas Bumi'),
(926, 20, '05', 'Ditjen Ketenagalistrikan'),
(927, 20, '06', 'Ditjen Mineral dan Batubara'),
(928, 20, '07', 'Dewan Energi Nasional'),
(929, 20, '11', 'Badan Penelitian dan Pengembangan Energi dan Sumber Daya Mineral'),
(930, 20, '12', 'Badan Pengembangan Sumber Daya Manusia ESDM'),
(931, 20, '13', 'Badan Geologi'),
(932, 20, '14', 'BPH Migas'),
(933, 20, '15', 'Ditjen Energi Baru Terbarukan dan Konservasi Energi'),
(934, 22, '01', 'Sekretariat Jenderal'),
(935, 22, '02', 'Inspektorat Jenderal'),
(936, 22, '03', 'Ditjen Perhubungan Darat'),
(937, 22, '04', 'Ditjen Perhubungan Laut'),
(938, 22, '05', 'Ditjen Perhubungan Udara'),
(939, 22, '08', 'Ditjen Perkeretaapian'),
(940, 22, '11', 'Badan Penelitian dan Pengembangan Perhubungan'),
(941, 22, '12', 'Badan Pengembangan Sumber Daya Manusia Perhubungan'),
(942, 22, '13', 'Badan Pengelola Transportasi Jabodetabek'),
(943, 23, '01', 'Sekretariat Jenderal'),
(944, 23, '02', 'Inspektorat Jenderal'),
(945, 23, '03', 'Ditjen Pendidikan Dasar dan Menengah'),
(946, 23, '05', 'Ditjen Pendidikan Anak Usia Dini dan Pendidikan Masyarakat'),
(947, 23, '11', 'Badan Penelitian dan Pengembangan'),
(948, 23, '13', 'Badan Pengembangan dan Pembinaan Bahasa'),
(949, 23, '15', 'Ditjen Kebudayaan'),
(950, 23, '16', 'Ditjen Guru dan Tenaga Kependidikan'),
(951, 24, '01', 'Sekretariat Jenderal'),
(952, 24, '02', 'Inspektorat Jenderal'),
(953, 24, '03', 'Ditjen Kesehatan Masyarakat'),
(954, 24, '04', 'Ditjen Pelayanan Kesehatan'),
(955, 24, '05', 'Ditjen Pencegahan dan Pengendaliaan Penyakit'),
(956, 24, '07', 'Ditjen Kefarmasian dan Alat Kesehatan'),
(957, 24, '11', 'Badan Penelitian dan Pengembangan Kesehatan'),
(958, 24, '12', 'Badan Pengembangan dan Pemberdayaan SDM Kesehatan'),
(959, 25, '01', 'Sekretariat Jenderal'),
(960, 25, '02', 'Inspektorat Jenderal'),
(961, 25, '03', 'Ditjen Bimbingan Masyarakat Islam'),
(962, 25, '04', 'Ditjen Pendidikan Islam'),
(963, 25, '05', 'Ditjen Bimbingan Masyarakat Kristen'),
(964, 25, '06', 'Ditjen Bimbingan Masyarakat Katolik'),
(965, 25, '07', 'Ditjen Bimbingan Masyarakat Hindu'),
(966, 25, '08', 'Ditjen Bimbingan Masyarakat Buddha'),
(967, 25, '09', 'Ditjen Penyelenggaraan Haji dan Umrah'),
(968, 25, '11', 'Badan Penelitian Pengembangan dan Pendidikan Pelatihan'),
(969, 25, '12', 'Badan Penyelenggara Jaminan Produk Halal'),
(970, 26, '01', 'Sekretariat Jenderal'),
(971, 26, '02', 'Inspektorat Jenderal'),
(972, 26, '04', 'Ditjen Pembinaan Penempatan Tenaga Kerja dan Perluasan Kesempatan Kerja'),
(973, 26, '05', 'Ditjen Pembinaan Hubungan Industrial dan Jaminan Sosial Tenaga Kerja'),
(974, 26, '08', 'Ditjen Pembinaan Pengawasan Ketenagakerjaan dan Keselamatan dan Kesehatan Kerja'),
(975, 26, '11', 'Badan Perencanaan dan Pengembangan Ketenagakerjaan'),
(976, 26, '13', 'Ditjen Pembinaan Pelatihan dan Produktivitas'),
(977, 27, '01', 'Sekretariat Jenderal'),
(978, 27, '02', 'Inspektorat Jenderal'),
(979, 27, '03', 'Ditjen Pemberdayaan Sosial'),
(980, 27, '04', 'Ditjen Rehabilitasi Sosial'),
(981, 27, '05', 'Ditjen Perlindungan dan Jaminan Sosial'),
(982, 27, '06', 'Ditjen Penanganan Fakir Miskin'),
(983, 27, '11', 'Badan Pendidikan, Penelitian dan Penyuluhan Sosial'),
(984, 29, '01', 'Sekretariat Jenderal'),
(985, 29, '02', 'Inspektorat Jenderal'),
(986, 29, '03', 'Ditjen Pengelolaan Hutan Produksi Lestari'),
(987, 29, '04', 'Ditjen Pengendalian DAS dan Hutan Lindung'),
(988, 29, '05', 'Ditjen Konservasi Sumber Daya Alam dan Ekosistem'),
(989, 29, '06', 'Ditjen Planologi Kehutanan dan Tata Lingkungan'),
(990, 29, '07', 'Badan Penelitian, Pengembangan dan Inovasi'),
(991, 29, '08', 'Badan Penyuluhan dan Pengembangan Sumber Daya Manusia'),
(992, 29, '09', 'Ditjen Perhutanan Sosial dan Kemitraan Lingkungan'),
(993, 29, '10', 'Ditjen Penegakan Hukum Lingkungan Hidup dan Kehutanan'),
(994, 29, '11', 'Ditjen Pengendalian Perubahan Iklim'),
(995, 29, '12', 'Ditjen Pengelolaan Sampah, Limbah dan Bahan Bahaya Beracun'),
(996, 29, '13', 'Ditjen Pengendalian Pencemaran dan Kerusakan Lingkungan'),
(997, 32, '01', 'Sekretariat Jenderal'),
(998, 32, '02', 'Inspektorat Jenderal'),
(999, 32, '03', 'Ditjen Perikanan Tangkap'),
(1000, 32, '04', 'Ditjen Perikanan Budidaya'),
(1001, 32, '05', 'Ditjen Pengawasan Sumber Daya Kelautan dan Perikanan'),
(1002, 32, '06', 'Ditjen Penguatan Daya Saing Produk Kelautan dan Perikanan'),
(1003, 32, '07', 'Ditjen Pengelolaan Ruang Laut'),
(1004, 32, '11', 'Badan Penelitian dan Pengembangan Kelautan dan Perikanan'),
(1005, 32, '12', 'Badan Riset dan Sumber Daya Manusia Kelautan dan Perikanan'),
(1006, 32, '13', 'Badan Karantina Ikan, Pengendalian Mutu dan Keamanan Hasil Perikanan\"'),
(1007, 33, '01', 'Sekretariat Jenderal'),
(1008, 33, '02', 'Inspektorat Jenderal'),
(1009, 33, '04', 'Ditjen Bina Marga'),
(1010, 33, '05', 'Ditjen Cipta Karya'),
(1011, 33, '06', 'Ditjen Sumber Daya Air'),
(1012, 33, '07', 'Ditjen Penyediaan Perumahan'),
(1013, 33, '08', 'Ditjen Pembiayaan Perumahan'),
(1014, 33, '11', 'Badan Penelitian dan Pengembangan'),
(1015, 33, '13', 'Ditjen Bina Konstruksi'),
(1016, 33, '14', 'Badan Pengembangan Infrastruktur Wilayah'),
(1017, 33, '15', 'Badan Pengembangan Sumber Daya Manusia'),
(1018, 34, '01', 'Kementerian Koordinator Bidang Politik, Hukum dan Keamanan'),
(1019, 35, '01', 'Kementerian Koordinator Bidang Perekonomian'),
(1020, 36, '01', 'Kementerian Koordinator Bidang Pembangunan Manusia dan Kebudayaan'),
(1021, 40, '01', 'Kementerian Pariwisata'),
(1022, 41, '01', 'Kementerian Badan Usaha Milik Negara'),
(1023, 42, '01', 'Sekretariat Jenderal'),
(1024, 42, '02', 'Inspektorat Jenderal'),
(1025, 42, '03', 'Ditjen. Kelembagaan Ilmu Pengetahuan, Teknologi, dan Pendidikan Tinggi'),
(1026, 42, '04', 'Ditjen. Pembelajaran dan Kemahasiswaan'),
(1027, 42, '05', 'Ditjen. Sumber Daya Ilmu Pengetahuan, Teknologi, dan Pendidikan Tinggi'),
(1028, 42, '06', 'Ditjen. Penguatan Riset dan Pengembangan'),
(1029, 42, '07', 'Ditjen. Penguatan Inovasi'),
(1030, 44, '01', 'Kementerian Koperasi dan Usaha Kecil dan Menengah'),
(1031, 47, '01', 'Kementerian Pemberdayaan Perempuan dan Perlindungan Anak'),
(1032, 48, '01', 'Kementerian Pendayagunaan Aparatur Negara dan Reformasi Birokrasi'),
(1033, 50, '01', 'Badan Intelijen Negara'),
(1034, 51, '01', 'Badan Siber dan Sandi Negara'),
(1035, 52, '01', 'Setjen Dewan Ketahanan Nasional'),
(1036, 54, '01', 'Badan Pusat Statistik'),
(1037, 55, '', 'Deputi Bidang Ekonomi'),
(1038, 55, '', 'Deputi Bidang Kemaritiman dan Sumber Daya Alam'),
(1039, 55, '', 'Deputi Bidang Kependudukan dan Ketenagakerjaan'),
(1040, 55, '', 'Deputi Bidang Pemantauan, Evaluasi, dan Pengendalian Pembangunan'),
(1041, 55, '', 'Deputi Bidang Pembangunan Manusia, Masyarakat, dan Kebudayaan'),
(1042, 55, '', 'Deputi Bidang Pendanaan Pembangunan'),
(1043, 55, '', 'Deputi Bidang Pengembangan Regional'),
(1044, 55, '', 'Deputi Bidang Politik, Hukum, Pertahanan dan Keamanan'),
(1045, 55, '', 'Deputi Bidang Sarana dan Prasarana'),
(1046, 55, '01', 'Kementerian Perencanaan Pembangunan Nasional'),
(1047, 56, '01', 'Sekretariat Jenderal'),
(1048, 56, '02', 'Inspektorat Jenderal'),
(1049, 56, '03', 'Direktorat Jenderal Tata Ruang'),
(1050, 56, '04', 'Direktorat Jenderal Infrastruktur Keagrariaan'),
(1051, 56, '05', 'Direktorat Jenderal Hubungan Hukum Keagrariaan'),
(1052, 56, '06', 'Direktorat Jenderal Penataan Agraria'),
(1053, 56, '07', 'Direktorat Jenderal Pengadaan Tanah'),
(1054, 56, '08', 'Direktorat Jenderal Pengendalian Pemanfaatan Ruang dan Penguasaan Tanah'),
(1055, 56, '09', 'Direktorat Jenderal Penanganan Masalah Agraria,Pemanfaatan Ruang dan Tanah'),
(1056, 57, '01', 'Perpustakaan Nasional'),
(1057, 59, '01', 'Sekretariat Jenderal'),
(1058, 59, '02', 'Inspektorat Jenderal'),
(1059, 59, '03', 'Ditjen Sumber Daya dan Perangkat Pos dan Informatika'),
(1060, 59, '04', 'Ditjen Aplikasi Informatika'),
(1061, 59, '05', 'Ditjen Penyelenggaraan Pos dan Informatika'),
(1062, 59, '06', 'Badan Penelitian dan Pengembangan Sumber Daya Manusia'),
(1063, 59, '07', 'Ditjen Informasi dan Komunikasi Publik'),
(1064, 60, '01', 'Kepolisian Negara Republik Indonesia'),
(1065, 63, '01', 'Badan Pengawas Obat dan Makanan'),
(1066, 64, '01', 'Lembaga Ketahanan Nasional RI'),
(1067, 65, '01', 'Badan Koordinasi Penanaman Modal'),
(1068, 66, '01', 'Badan Narkotika Nasional'),
(1069, 67, '02', 'Inspektorat Jenderal'),
(1070, 67, '03', 'Direktorat Jenderal Pembangunan dan Pemberdayaan Masyarakat Desa'),
(1071, 67, '04', 'Direktorat Jenderal Pembangunan Kawasan Perdesaan'),
(1072, 67, '05', 'Direktorat Jenderal Pengembangan Daerah Tertentu'),
(1073, 67, '06', 'Direktorat Jenderal Pembangunan Daerah Tertinggal'),
(1074, 67, '07', 'Direktorat Jenderal Penyiapan Kawasan dan Pembangunan Permukiman Transmigrasi'),
(1075, 67, '08', 'Direktorat Jenderal Pengembangan Kawasan Transmigrasi'),
(1076, 67, '09', 'Badan Penelitian dan Pengembangan, Pendidikan dan Pelatihan, dan Informasi'),
(1077, 67, '10', 'Sekretariat Jenderal'),
(1078, 68, '01', 'Badan Kependudukan dan Keluarga Berencana Nasional'),
(1079, 74, '01', 'Komnas HAM'),
(1080, 75, '01', 'Badan Meteorologi, Klimatologi dan Geofisika'),
(1081, 76, '01', 'Komisi Pemilihan Umum'),
(1082, 77, '01', 'Mahkamah Konstitusi Ri'),
(1083, 78, '01', 'Pusat Pelaporan dan Analisis Transaksi Keuangan'),
(1084, 79, '01', 'Lembaga Ilmu Pengetahuan Indonesia'),
(1085, 80, '01', 'Badan Tenaga Nuklir Nasional'),
(1086, 81, '01', 'Badan Pengkajian dan Penerapan Teknologi'),
(1087, 82, '01', 'LAPAN'),
(1088, 83, '01', 'Badan Informasi Geospasial'),
(1089, 84, '01', 'Badan Standarisasi Nasional'),
(1090, 85, '01', 'Badan Pengawas Tenaga Nuklir'),
(1091, 86, '01', 'Lembaga Administrasi Negara'),
(1092, 87, '01', 'Arsip Nasional'),
(1093, 88, '01', 'Badan Kepegawaian Negara'),
(1094, 89, '01', 'Badan Pengawasan Keuangan dan Pembangunan'),
(1095, 90, '01', 'Sekretariat Jenderal'),
(1096, 90, '02', 'Direktorat Jenderal Perdagangan Dalam Negeri'),
(1097, 90, '03', 'Direktorat Jenderal Perdagangan Luar Negeri'),
(1098, 90, '04', 'Direktorat Jenderal Perundingan Perdagangan Internasional'),
(1099, 90, '05', 'Inspektorat Jenderal'),
(1100, 90, '06', 'Direktorat Jenderal Pengembangan Ekspor Nasional'),
(1101, 90, '07', 'Badan Pengawas Perdagangan Berjangka Komoditi'),
(1102, 90, '08', 'Badan Pengkajian dan Pengembangan Perdagangan'),
(1103, 90, '09', 'Direktorat Jenderal Perlindungan Konsumen dan Tertib Niaga'),
(1104, 92, '01', 'Kementerian Pemuda dan Olah Raga'),
(1105, 93, '01', 'Komisi Pemberantasan Korupsi'),
(1106, 95, '01', 'Sekretariat Jenderal DPD RI'),
(1107, 95, '02', 'Dewan Perwakilan Daerah'),
(1108, 100, '01', 'Komisi Yudisial RI'),
(1109, 103, '01', 'Badan Nasional Penanggulangan Bencana'),
(1110, 104, '01', 'Sekretariat Utama BNP2TKI'),
(1111, 105, '01', 'Badan Penanggulangan Lumpur Sidoarjo (BPLS)'),
(1112, 106, '01', 'Lembaga Kebijakan Pengadaan Barang/Jasa Pemerintah'),
(1113, 107, '01', 'Badan SAR Nasional'),
(1114, 108, '01', 'Komisi Pengawas Persaingan Usaha'),
(1115, 109, '01', 'Badan Pengembangan Wilayah Suramadu (BPWS)'),
(1116, 110, '01', 'Ombudsman Republik Indonesia'),
(1117, 111, '01', 'Badan Nasional Pengelola Perbatasan'),
(1118, 112, '01', 'Badan Pengusahaan Kawasan Perdagangan Bebas Dan Pelabuhan Bebas Batam (BPKPB Batam)'),
(1119, 113, '01', 'Badan Nasional Penanggulangan Terorisme'),
(1120, 114, '01', 'Sekretariat Kabinet'),
(1121, 115, '01', 'Sekretariat Jenderal Badan Pengawas Pemilihan Umum'),
(1122, 116, '01', 'Lembaga Penyiaran Publik Radio Republik Indonesia'),
(1123, 117, '01', 'Lembaga Penyiaran Publik Televisi Republik Indonesia'),
(1124, 118, '01', 'Badan Pengusahaan Kawasan Perdagangan Bebas Dan Pelabuhan Bebas Sabang (BPKPB Sabang)'),
(1125, 119, '01', 'Badan Keamanan Laut'),
(1126, 120, '01', 'Kementerian Koordinator Bidang Kemaritiman'),
(1127, 121, '01', 'Badan Ekonomi Kreatif');

-- --------------------------------------------------------

--
-- Table structure for table `irena_gb_layak`
--

CREATE TABLE `irena_gb_layak` (
  `id` int(11) NOT NULL,
  `id_proyek_gb` varchar(5) NOT NULL,
  `is_layak` int(11) NOT NULL DEFAULT '0',
  `update_by` varchar(5) NOT NULL,
  `update_at` datetime NOT NULL,
  `is_dk` int(11) NOT NULL DEFAULT '0',
  `is_dk_update_by` int(11) NOT NULL,
  `is_dk_update_at` date NOT NULL,
  `is_kasubdit_layak` int(11) NOT NULL,
  `kasubdit_layak_by` int(11) NOT NULL,
  `kasubdit_layak_at` datetime NOT NULL,
  `layak_catatan_kasubdit` text NOT NULL,
  `is_dk_kasubdit` int(11) NOT NULL,
  `kasubdit_dk_by` int(11) NOT NULL,
  `kasubdit_dk_at` datetime NOT NULL,
  `dk_catatan_kasubdit` text NOT NULL,
  `catatan_staff_layak` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_gb_layak`
--

INSERT INTO `irena_gb_layak` (`id`, `id_proyek_gb`, `is_layak`, `update_by`, `update_at`, `is_dk`, `is_dk_update_by`, `is_dk_update_at`, `is_kasubdit_layak`, `kasubdit_layak_by`, `kasubdit_layak_at`, `layak_catatan_kasubdit`, `is_dk_kasubdit`, `kasubdit_dk_by`, `kasubdit_dk_at`, `dk_catatan_kasubdit`, `catatan_staff_layak`) VALUES
(1, '10', 2, '', '2017-12-12 08:16:00', 2, 0, '2017-12-14', 2, 0, '0000-00-00 00:00:00', '', 2, 0, '0000-00-00 00:00:00', '', '0'),
(2, '11', 2, '', '2017-12-12 08:38:11', 2, 0, '2017-12-15', 2, 0, '0000-00-00 00:00:00', '', 2, 0, '0000-00-00 00:00:00', '', '0'),
(3, '12', 1, '', '2017-12-12 08:40:57', 1, 0, '2017-12-14', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(4, '13', 1, '', '2017-12-14 04:44:41', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(5, '14', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(6, '15', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(7, '16', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(8, '18', 1, '', '2017-12-14 05:29:44', 0, 0, '2017-12-18', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(11, '20', 1, '18', '2017-12-18 06:39:30', 0, 0, '2017-12-19', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(13, '22', 1, '', '2017-12-18 09:05:28', 0, 0, '2017-12-18', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(14, '23', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(15, '24', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(16, '25', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(17, '26', 1, '', '2017-12-18 10:29:48', 0, 0, '2017-12-18', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0'),
(18, '21', 2, '', '0000-00-00 00:00:00', 0, 0, '2017-12-21', 2, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `irena_greenbook_kode`
--

CREATE TABLE `irena_greenbook_kode` (
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_greenbook_kode`
--

INSERT INTO `irena_greenbook_kode` (`id`, `nama`) VALUES
(1, 'Greenbook 2015'),
(2, 'Greenbook 2016'),
(3, 'Greenbook 2017');

-- --------------------------------------------------------

--
-- Table structure for table `irena_greenbook_lokasi`
--

CREATE TABLE `irena_greenbook_lokasi` (
  `id` int(11) NOT NULL,
  `id_gb_proyek` varchar(5) NOT NULL,
  `id_lokasi_provinsi` int(11) NOT NULL,
  `id_lokasi_kabkota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_greenbook_proyek`
--

CREATE TABLE `irena_greenbook_proyek` (
  `id` int(11) NOT NULL,
  `id_usulan` varchar(10) NOT NULL,
  `id_bb_proyek` int(11) NOT NULL,
  `id_greenbook` varchar(11) NOT NULL,
  `id_bluebook` varchar(11) NOT NULL,
  `id_instansi` varchar(11) NOT NULL,
  `id_program` varchar(10) NOT NULL,
  `id_lender` varchar(5) NOT NULL,
  `id_eselon_1` varchar(5) NOT NULL,
  `instansi_pelaksana` text NOT NULL,
  `judul_proyek_id` varchar(500) NOT NULL,
  `judul_proyek_eng` varchar(500) NOT NULL,
  `ruang_lingkup_id` text NOT NULL,
  `ruang_lingkup_eng` text NOT NULL,
  `id_status_lembaga` varchar(5) NOT NULL,
  `id_status_lender` varchar(5) NOT NULL,
  `durasi` int(11) NOT NULL,
  `proyeksi_tahun_pertama_penarikan` int(11) NOT NULL,
  `output` text NOT NULL,
  `outcome` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `nilai_pinjaman` int(11) NOT NULL,
  `nilai_hibah` int(11) NOT NULL,
  `dana_usulan` int(11) NOT NULL,
  `dana_pendamping` int(11) NOT NULL,
  `tahun_usulan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_greenbook_proyek`
--

INSERT INTO `irena_greenbook_proyek` (`id`, `id_usulan`, `id_bb_proyek`, `id_greenbook`, `id_bluebook`, `id_instansi`, `id_program`, `id_lender`, `id_eselon_1`, `instansi_pelaksana`, `judul_proyek_id`, `judul_proyek_eng`, `ruang_lingkup_id`, `ruang_lingkup_eng`, `id_status_lembaga`, `id_status_lender`, `durasi`, `proyeksi_tahun_pertama_penarikan`, `output`, `outcome`, `lokasi`, `nilai_pinjaman`, `nilai_hibah`, `dana_usulan`, `dana_pendamping`, `tahun_usulan`) VALUES
(10, '2', 0, '', '', '57', '2', '1', '931', '79', 'lorem ipsum', '', 'lorem ipsum', '', '', '', 12, 0, 'lorem ipsum', 'lorem ipsum', '', 0, 123, 143, 155, '0'),
(11, '1', 0, '2', '', '87', '1', '', '1092', '85', 'hehe', 'hehe', 'haha', 'haha', '', '', 13, 2018, 'wqwq', 'asdf', '', 213, 123, 0, 0, '2017'),
(20, '8', 0, '', '', '87 ', '6 ', '', '', '87 ', 'a', 'a', '', '', '', '', 0, 0, '', '', '', 0, 0, 0, 0, ''),
(21, '10', 193, '1', '', '77', '18 ', '2', '', '64 ', 'art', 'art', '', '', '', '', 0, 0, 'abc', 'abc', '', 124, 122, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `irena_hibah_donor`
--

CREATE TABLE `irena_hibah_donor` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `tampilkan` int(1) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_hibah_donor`
--

INSERT INTO `irena_hibah_donor` (`id`, `nama`, `keterangan`, `tampilkan`, `update_by`, `update_date`) VALUES
(1, 'Belum Ada Donor', NULL, 0, 1, '2017-11-27 16:30:53'),
(3, 'Australia', NULL, 1, 1, '2017-11-27 16:30:53'),
(4, 'European Union', NULL, 1, 1, '2017-11-27 16:30:53'),
(5, 'ADB', NULL, 1, 1, '2017-11-27 16:30:53'),
(6, 'JICA', NULL, 1, 1, '2017-11-27 16:30:53'),
(7, 'UNDP-GEF', NULL, 1, 1, '2017-11-27 16:30:53'),
(8, 'Bank Dunia', NULL, 1, 1, '2017-11-27 16:30:53'),
(9, 'Trust Fund', NULL, 1, 1, '2017-11-27 16:30:53'),
(10, 'GEF through UNDP', NULL, 1, 1, '2017-11-27 16:30:53'),
(11, 'KfW', NULL, 1, 1, '2017-11-27 16:30:53');

-- --------------------------------------------------------

--
-- Table structure for table `irena_hibah_jenis`
--

CREATE TABLE `irena_hibah_jenis` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `aktif` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_hibah_jenis`
--

INSERT INTO `irena_hibah_jenis` (`id`, `nama`, `keterangan`, `aktif`, `update_by`, `update_date`) VALUES
(1, '2013', NULL, 1, 1, '2017-11-27 17:02:11'),
(2, '2014', NULL, 1, 1, '2017-11-27 17:02:11'),
(3, '2015', NULL, 1, 1, '2017-11-27 17:02:11'),
(4, '2016', NULL, 1, 1, '2017-11-27 17:02:11'),
(5, '2017', NULL, 1, 1, '2017-11-27 17:02:11'),
(6, '2018', NULL, 1, 1, '2017-11-27 17:02:11'),
(7, '2019', NULL, 0, 1, '2017-11-27 17:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `irena_hibah_log`
--

CREATE TABLE `irena_hibah_log` (
  `id` int(11) NOT NULL,
  `id_proyek` int(11) DEFAULT NULL,
  `id_log_kategori` int(11) DEFAULT NULL,
  `id_arsip` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_hibah_log`
--

INSERT INTO `irena_hibah_log` (`id`, `id_proyek`, `id_log_kategori`, `id_arsip`, `nama`, `deskripsi`, `update_by`, `update_date`) VALUES
(5, 28, 2, 76, 'penilaian', 'okelahmantap', 1, '2017-11-14 14:48:07'),
(6, 30, 2, 62, 'adasad', 'asdas', 1, '2017-11-15 14:25:21'),
(8, 31, 2, 105, 'Form Penilaian Kelayakan Teknis dari Dit. Sektor', '-', 12, '2017-11-16 11:05:13'),
(9, 31, 1, 103, 'Surat Usulan', '-', 1, '2017-11-16 15:56:45'),
(10, 31, 1, 103, 'Surat Menteri PPN No. ....', 'Surat ditujukan kepada Sesmen PPN', 1, '2017-12-04 15:48:44'),
(11, 32, 2, 76, 'aaaaa', 'bbb', 20, '2018-01-10 10:41:08'),
(12, 0, 1, 62, 'a', 'a', 20, '2018-01-10 21:37:57'),
(13, 0, 1, 76, 'aaaaa', 'bbb', 20, '2018-01-11 10:58:09'),
(14, 0, 1, 77, 'abc', 'hahaha', 20, '2018-01-12 07:14:19'),
(15, 0, 1, 86, 'd', 'ab', 20, '2018-01-12 07:15:38'),
(16, 0, 1, 62, 'aaaaa', 'ab', 20, '2018-01-12 13:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `irena_hibah_log_kategori`
--

CREATE TABLE `irena_hibah_log_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `order` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_hibah_log_kategori`
--

INSERT INTO `irena_hibah_log_kategori` (`id`, `nama`, `order`) VALUES
(1, 'Pengajuan Usulan', 1),
(2, 'Penilaian Teknis', 2),
(3, 'DRKH', 3),
(4, 'Penilaian Bluebook', NULL),
(5, 'Penilaian Greenbook', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `irena_hibah_proyek`
--

CREATE TABLE `irena_hibah_proyek` (
  `id` int(11) NOT NULL,
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
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_hibah_proyek`
--

INSERT INTO `irena_hibah_proyek` (`id`, `id_instansi_eselon_satu`, `id_donor`, `id_jenis`, `judul_en`, `judul_id`, `durasi`, `id_mata_uang`, `nilai_hibah`, `nilai_dp`, `ringkasan`, `nilai_admin`, `nilai_admin_ket`, `nilai_admin_id`, `nilai_admin_date`, `nilai_layak`, `nilai_layak_ket`, `nilai_layak_id`, `nilai_layak_date`, `masuk_drkh`, `masuk_drkh_ket`, `masuk_drkh_id`, `masuk_drkh_date`, `update_by`, `update_date`) VALUES
(31, 9, 3, 4, 'New Australian Infrastructure Program 2017-2027', 'New Australian Infrastructure Program 2017-2027', 60, 1, 106980000, 1, '-', '1', '-', 1, '2017-11-16 15:53:48', '1', 'tapi bukan DPP', 1, '2017-11-16 15:59:31', '1', '-', 1, '2017-11-16 15:59:37', 1, '2017-11-16 11:44:21'),
(32, 10, 6, 4, 'Development of Integrated Fishing Port and Market in 6 Outer Islands Programme', 'Pengembangan Pelabuhan Perikanan Terpadu dan Pasar di 6 Program Luar Pulau', 24, 1, 69835054, 0, '-', '1', '-', 3, '2017-11-30 15:02:38', '1', 'Dalam proses penilaian sektor. dan sudah ada nota dinas permintaan penilaian dari Deputi Pendanaan.', 1, '2017-12-04 15:32:21', '1', '-', 1, '2017-12-04 15:41:07', 1, '2017-11-28 11:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `irena_hibah_proyek_disb`
--

CREATE TABLE `irena_hibah_proyek_disb` (
  `id` int(11) NOT NULL,
  `id_proyek_drkh` int(11) DEFAULT NULL,
  `tahun_ke` varchar(255) DEFAULT NULL,
  `niai` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_hibah_proyek_dok`
--

CREATE TABLE `irena_hibah_proyek_dok` (
  `id` int(11) NOT NULL,
  `id_proyek` int(11) DEFAULT NULL,
  `kat` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `berkas` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_hibah_proyek_dok`
--

INSERT INTO `irena_hibah_proyek_dok` (`id`, `id_proyek`, `kat`, `nama`, `ket`, `berkas`, `update_by`, `update_date`) VALUES
(1, 30, 'sadas', 'asdasda', 'dasdasdas', '30-Jwb.pdf', 1, '2017-11-15 14:26:24'),
(2, 32, 'av', 'a', 'a', '32-3-permen-kp-2017-ttg-otk-lpmukp.pdf', 20, '2018-01-16 07:19:42');

-- --------------------------------------------------------

--
-- Table structure for table `irena_hibah_proyek_drkh`
--

CREATE TABLE `irena_hibah_proyek_drkh` (
  `id` int(11) NOT NULL,
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
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_hibah_proyek_drkh`
--

INSERT INTO `irena_hibah_proyek_drkh` (`id`, `id_proyek`, `id_jenis`, `id_donor`, `id_prioritas`, `judul_en`, `judul_id`, `durasi`, `id_mata_uang`, `nilai_hibah`, `nilai_dp`, `latar_belakang_en`, `latar_belakang_id`, `ruang_lingkup_en`, `ruang_lingkup_id`, `output_en`, `output_id`, `outcome_en`, `outcome_id`, `update_by`, `update_date`) VALUES
(33, 31, 4, 3, NULL, 'New Australian Infrastructure Program 2017-2027', 'New Australian Infrastructure Program 2017-2027', 60, 1, 106980000, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-11-16 15:59:37'),
(34, 32, 4, 6, NULL, 'Development of Integrated Fishing Port and Market in 6 Outer Islands Programme', 'Pengembangan Pelabuhan Perikanan Terpadu dan Pasar di 6 Program Luar Pulau', 24, 1, 69835054, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2017-12-04 15:41:07');

-- --------------------------------------------------------

--
-- Table structure for table `irena_hibah_proyek_drkh_pc`
--

CREATE TABLE `irena_hibah_proyek_drkh_pc` (
  `id` int(11) NOT NULL,
  `id_proyek_drkh` int(11) DEFAULT NULL,
  `instansi_pelaksana` varchar(255) DEFAULT NULL,
  `nilai_hibah` double DEFAULT NULL,
  `nilai_dp` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_infra`
--

CREATE TABLE `irena_infra` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_infra`
--

INSERT INTO `irena_infra` (`id`, `nama`) VALUES
(1, 'INFRASTRUKTUR'),
(2, 'NON INFRASTRUKTUR');

-- --------------------------------------------------------

--
-- Table structure for table `irena_instansi`
--

CREATE TABLE `irena_instansi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `aktif` int(1) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_instansi`
--

INSERT INTO `irena_instansi` (`id`, `nama`, `singkatan`, `gambar`, `aktif`, `update_by`, `update_date`) VALUES
(1, 'Kementerian Perhubungan', 'KEMHUB', 'merah.png', 1, 1, '2017-11-27 13:03:58'),
(2, 'Kementerian Agama', 'KEMENAG', 'hijau.png', 1, 1, '2017-11-27 13:03:58'),
(3, 'Kementerian Pekerjaan Umum dan Perumahan Rakyat', 'PUPR', 'kuning.png', 1, 1, '2017-11-27 13:03:58'),
(4, 'Badan Standarisasi Nasional', 'BSN', NULL, 1, 1, '2017-11-27 13:03:58'),
(5, 'Kementerian Riset Teknologi Dan Pendidikan Tinggi', 'RISTEKDIKTI', NULL, 1, 1, '2017-11-27 13:03:58'),
(6, 'Kementerian PPN/Bappenas', 'BAPPENAS', NULL, 1, 1, '2017-11-27 13:03:58'),
(7, 'Kementerian Kelautan dan Perikanan', 'KKP', NULL, 1, 1, '2017-11-27 13:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `irena_instansi_2`
--

CREATE TABLE `irena_instansi_2` (
  `id` int(11) NOT NULL,
  `id_lembaga` int(5) NOT NULL,
  `nama_instansi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_instansi_2`
--

INSERT INTO `irena_instansi_2` (`id`, `id_lembaga`, `nama_instansi`) VALUES
(1, 1, 'MAJELIS PERMUSYAWARATAN RAKYAT (MPR)'),
(2, 2, 'DEWAN PERWAKILAN RAKYAT'),
(3, 4, 'BADAN PEMERIKSA KEUANGAN'),
(4, 5, 'MAHKAMAH AGUNG'),
(5, 6, 'KEJAKSAAN REPUBLIK INDONESIA'),
(6, 7, 'SEKRETARIAT NEGARA'),
(7, 10, 'KEMENTERIAN DALAM NEGERI'),
(8, 11, 'KEMENTERIAN LUAR NEGERI'),
(9, 12, 'KEMENTERIAN PERTAHANAN'),
(10, 13, 'KEMENTERIAN HUKUM DAN HAK ASASI MANUSIA RI'),
(11, 15, 'KEMENTERIAN KEUANGAN'),
(12, 18, 'KEMENTERIAN PERTANIAN'),
(13, 19, 'KEMENTERIAN PERINDUSTRIAN'),
(14, 20, 'KEMENTERIAN ENERGI DAN SUMBER DAYA MINERAL'),
(15, 22, 'KEMENTERIAN PERHUBUNGAN'),
(16, 23, 'KEMENTERIAN PENDIDIKAN DAN KEBUDAYAAN'),
(17, 24, 'KEMENTERIAN KESEHATAN'),
(18, 25, 'KEMENTERIAN AGAMA'),
(19, 26, 'KEMENTERIAN KETENAGAKERJAAN'),
(20, 27, 'KEMENTERIAN SOSIAL'),
(21, 29, 'KEMENTERIAN LINGKUNGAN HIDUP DAN KEHUTANAN'),
(22, 32, 'KEMENTERIAN KELAUTAN DAN PERIKANAN'),
(23, 33, 'KEMENTERIAN PEKERJAAN UMUM DAN PERUMAHAN RAKYAT'),
(24, 34, 'KEMENTERIAN KOORDINATOR BIDANG POLITIK\',\'HUKUM DAN KEAMANAN'),
(25, 35, 'KEMENTERIAN KOORDINATOR BIDANG PEREKONOMIAN'),
(26, 36, 'KEMENTERIAN KOORDINATOR BIDANG PEMBANGUNAN MANUSIA DAN KEBUDAYAAN'),
(27, 40, 'KEMENTERIAN PARIWISATA'),
(28, 41, 'KEMENTERIAN BADAN USAHA MILIK NEGARA'),
(29, 42, 'KEMENTERIAN RISET, TEKNOLOGI DAN PENDIDIKAN TINGGI'),
(30, 44, 'KEMENTERIAN KOPERASI DAN USAHA KECIL DAN MENENGAH'),
(31, 47, 'KEMENTERIAN PEMBERDAYAAN PEREMPUAN DAN PERLINDUNGAN ANAK'),
(32, 48, 'KEMENTERIAN PENDAYAGUNAAN APARATUR NEGARA DAN REFORMASI BIROKRASI'),
(33, 50, 'BADAN INTELIJEN NEGARA'),
(34, 51, 'BADAN SIBER DAN SANDI NEGARA'),
(35, 52, 'DEWAN KETAHANAN NASIONAL'),
(36, 54, 'BADAN PUSAT STATISTIK'),
(37, 55, 'BADAN PERENCANAAN PEMBANGUNAN NASIONAL / BAPPENAS'),
(38, 56, 'KEMENTERIAN AGRARIA DAN TATA RUANG/BPN'),
(39, 57, 'PERPUSTAKAAN NASIONAL REPUBLIK INDONESIA'),
(40, 59, 'KEMENTERIAN KOMUNIKASI DAN INFORMATIKA'),
(41, 60, 'KEPOLISIAN NEGARA REPUBLIK INDONESIA'),
(42, 63, 'BADAN PENGAWAS OBAT DAN MAKANAN'),
(43, 64, 'LEMBAGA KETAHANAN NASIONAL'),
(44, 65, 'BADAN KOORDINASI PENANAMAN MODAL'),
(45, 66, 'BADAN NARKOTIKA NASIONAL (BNN)'),
(46, 67, 'KEMENTERIAN DESA\',\'PEMBANGUNAN DAERAH TERTINGGAL DAN TRANSMIGRASI'),
(47, 68, 'BADAN KEPENDUDUKAN DAN KELUARGA BERENCANA NASIONAL (BKKBN)'),
(48, 74, 'KOMISI NASIONAL HAK ASASI MANUSIA'),
(49, 75, 'BADAN METEOROLOGI, KLIMATOLOGI DAN GEOFISIKA'),
(50, 76, 'KOMISI PEMILIHAN UMUM'),
(51, 77, 'MAHKAMAH KONSTITUSI RI'),
(52, 78, 'PUSAT PELAPORAN DAN ANALISIS TRANSAKSI KEUANGAN (PPATK)'),
(53, 79, 'LEMBAGA ILMU PENGETAHUAN INDONESIA (LIPI)'),
(54, 80, 'BADAN TENAGA NUKLIR NASIONAL (BATAN)'),
(55, 81, 'BADAN PENGKAJIAN DAN PENERAPAN TEKNOLOGI (BPPT)'),
(56, 82, 'LEMBAGA PENERBANGAN DAN ANTARIKSA NASIONAL (LAPAN)'),
(57, 83, 'BADAN INFORMASI GEOSPASIAL (BIG)'),
(58, 84, 'BADAN STANDARISASI NASIONAL (BSN)'),
(59, 85, 'BADAN PENGAWAS TENAGA NUKLIR (BAPETEN)'),
(60, 86, 'LEMBAGA ADMINISTRASI NEGARA'),
(61, 87, 'ARSIP NASIONAL REPUBLIK INDONESIA'),
(62, 88, 'BADAN KEPEGAWAIAN NEGARA'),
(63, 89, 'BADAN PENGAWASAN KEUANGAN DAN PEMBANGUNAN (BPKP)'),
(64, 90, 'KEMENTERIAN PERDAGANGAN'),
(65, 92, 'KEMENTERIAN PEMUDA DAN OLAHRAGA'),
(66, 93, 'KOMISI PEMBERANTASAN KORUPSI (KPK)'),
(67, 95, 'DEWAN PERWAKILAN DAERAH (DPD)'),
(68, 100, 'KOMISI YUDISIAL REPUBLIK INDONESIA'),
(69, 103, 'BADAN NASIONAL PENANGGULANGAN BENCANA (BNPB)'),
(70, 104, 'BADAN NASIONAL PENEMPATAN DAN PERLINDUNGAN TENAGA KERJA INDONESIA (BNP2TKI)'),
(71, 105, 'BADAN PENANGGULANGAN LUMPUR SIDOARJO (BPLS)'),
(72, 106, 'LEMBAGA KEBIJAKAN PENGADAAN BARANG/JASA PEMERINTAH (LKPP)'),
(73, 107, 'BADAN SAR NASIONAL'),
(74, 108, 'KOMISI PENGAWAS PERSAINGAN USAHA (KPPU)'),
(75, 109, 'BADAN PENGEMBANGAN WILAYAH SURAMADU (BPWS)'),
(76, 110, 'OMBUDSMAN REPUBLIK INDONESIA'),
(77, 111, 'BADAN NASIONAL PENGELOLA PERBATASAN (BNPP)'),
(78, 112, 'BADAN PENGUSAHAAN KAWASAN PERDAGANGAN BEBAS DAN PELABUHAN BEBAS BATAM (BPKPB BATAM)'),
(79, 113, 'BADAN NASIONAL PENANGGULANGAN TERORISME (BNPT)'),
(80, 114, 'SEKRETARIAT KABINET'),
(81, 115, 'BADAN PENGAWAS PEMILIHAN UMUM'),
(82, 116, 'LEMBAGA PENYIARAN PUBLIK RADIO REPUBLIK INDONESIA'),
(83, 117, 'TELEVISI REPUBLIK INDONESIA'),
(84, 118, 'BADAN PENGUSAHAAN KAWASAN PERDAGANGAN BEBAS DAN PELABUHAN BEBAS SABANG (BPKPB SABANG)'),
(85, 119, 'BADAN KEAMANAN LAUT'),
(86, 120, 'KEMENTERIAN KOORDINATOR BIDANG KEMARITIMAN'),
(87, 121, 'BADAN EKONOMI KREATIF'),
(88, 0, 'abc'),
(89, 0, 'smi');

-- --------------------------------------------------------

--
-- Table structure for table `irena_instansi_campur`
--

CREATE TABLE `irena_instansi_campur` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_instansi_campur`
--

INSERT INTO `irena_instansi_campur` (`id`, `nama`) VALUES
(1, '0'),
(2, '0'),
(3, 'abc'),
(4, 'abc'),
(5, 'abbb'),
(6, 'abc'),
(7, 'smi');

-- --------------------------------------------------------

--
-- Table structure for table `irena_instansi_eselon_satu`
--

CREATE TABLE `irena_instansi_eselon_satu` (
  `id` int(11) NOT NULL,
  `id_instansi` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `ket` text,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_instansi_eselon_satu`
--

INSERT INTO `irena_instansi_eselon_satu` (`id`, `id_instansi`, `nama`, `ket`, `update_by`, `update_date`) VALUES
(1, 1, 'Ditjen. Perkeretaapian', NULL, 1, '2017-11-27 15:12:32'),
(2, 2, 'Ditjen. Pendidikan Islam', NULL, 1, '2017-11-27 15:12:32'),
(3, 2, 'Ditjen. Bimas Islam', NULL, 1, '2017-11-27 15:12:32'),
(4, 2, 'Ditjen. Penyelenggaraan Haji dan Umrah', NULL, 1, '2017-11-27 15:12:32'),
(5, 3, 'Ditjen. Bina Marga', NULL, 1, '2017-11-27 15:12:32'),
(6, 3, 'Ditjen. Sumber Daya Air', NULL, 1, '2017-11-27 15:12:32'),
(7, 5, 'Ditjen. Sumber Daya IPTEK DIKTI', NULL, 1, '2017-11-27 15:12:32'),
(8, 4, 'Sekretariat Utama BSN', NULL, 1, '2017-11-27 15:12:32'),
(9, 6, 'Sesmen/Sestama Bappenas', NULL, 1, '2017-11-27 15:12:32'),
(10, 7, 'Sekjen. Kementerian Kelautan dan Perikanan', NULL, 1, '2017-11-27 15:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `irena_instansi_satker`
--

CREATE TABLE `irena_instansi_satker` (
  `id` int(11) NOT NULL,
  `id_instansi` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_instansi_satker`
--

INSERT INTO `irena_instansi_satker` (`id`, `id_instansi`, `nama`, `keterangan`) VALUES
(1, 1, 'Balai Teknik Perkeretaapian Wilayah Jakarta dan Banten', NULL),
(2, 1, 'Balai Teknik Perkeretaapian Wilayah Sumatera Bagian Selatan', NULL),
(3, 1, 'Balai Teknik Perkeretaapian Wilayah Sumatera Bagian Utara', NULL),
(4, 1, 'Balai Teknik Perkeretaapian Wilayah Jawa Bagian Tengah', NULL),
(5, 1, 'Balai Teknik Perkeretaapian Wilayah Jawa Bagian Timur', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `irena_kabkota`
--

CREATE TABLE `irena_kabkota` (
  `id` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_kabkota`
--

INSERT INTO `irena_kabkota` (`id`, `id_provinsi`, `nama`, `latitude`, `longitude`) VALUES
(1, 1, 'Kota Banda Aceh', '5.546182', '95.319054'),
(3, 25, 'Kota Pekanbaru', '0.5070677', '101.4477793'),
(4, 17, 'Kabupaten Natuna', '3.940909', '108.3872724'),
(5, 7, 'Kota Jambi', '-1.6101229', '103.6131203'),
(6, 8, 'Kota Cikarang', '-6.2621933', '107.5416395'),
(7, 14, 'Kota Balikpapan', '-1.2379274', '116.8528526'),
(8, 14, 'Kota Samarinda', '-0.4993933', '117.1529458'),
(9, 6, 'Kota Jakarta', '-6.2087634', '106.845599'),
(10, 20, 'Kota Tidore Kepulauan', '0.5060207', '127.681228'),
(11, 32, 'Kota Medan', '3.6004249', '98.6820636'),
(12, 8, 'Kota Cirebon', '-6.7320229', '108.5523164'),
(13, 9, 'Kabupaten Cilacap', '-7.6178096', '108.902683'),
(14, 29, 'Kota Manado', '1.4748305', '124.8420794'),
(15, 28, 'Kabupaten Parigi Moutong', '-0.716097', '120.089897'),
(16, 7, 'Kabupaten Batanghari', '-1.7083922', '103.0817903'),
(17, 5, 'Kabupaten Gorontalo Utara', '0.9252647', '122.4920088'),
(18, 12, 'Kota Banjarbaru', '-3.4572422', '114.8103181'),
(19, 21, 'Kota Sumbawa Besar', '-8.504043', '117.428497'),
(20, 30, 'Kota Padang', '-0.853278', '100.3947116'),
(21, 10, 'Kabupaten Kediri', '-7.8480156', '112.0178286'),
(22, 23, 'Kabupaten Sarmi', '-2.4678144', '139.2030851'),
(23, 23, 'Kota Jayapura', '-2.5916025', '140.6689995'),
(24, 23, 'Kabupaten Jayawijaya', '-4.0004481', '138.7995122'),
(25, 10, 'Kabupaten Lumajang', '-7.43600705', '113.80050659'),
(27, 10, 'Kabupaten Bojonegoro', '-7.1524786', '111.8869293'),
(28, 10, 'Kabupaten Mojokerto', '-7.4704747', '112.4401329'),
(29, 10, 'Kabupaten Sumenep', '-6.9253999', '113.9060624'),
(30, 10, 'Kabupaten Sampang', '-7.1697095', '113.2513554'),
(31, 10, 'Kabupaten Blitar', '-8.1308657', '112.2200091'),
(32, 10, 'Kabupaten Bondowoso', '-7.9673906', '113.9060624'),
(33, 10, 'Kota Malang', '-7.9666204', '112.6326321'),
(34, 10, 'Kabupaten Situbondo', '-7.7050532', '113.9952789'),
(35, 10, 'Kabupaten Gresik', '-7.1652437', '112.6519882'),
(36, 10, 'Kabupaten Nganjuk', '-7.6043721', '111.8993478'),
(37, 10, 'Kabupaten Banyu Wangi', '-8.2190944', '114.3691416'),
(38, 10, 'Kabupaten Jember', '-8.1733118', '113.7009312'),
(39, 10, 'Kabupaten Malang', '-8.242209', '112.7152125'),
(40, 18, 'Kabupaten Lampung Tengah', '-4.8008086', '105.3131185'),
(41, 18, 'Kabupaten Lampung Timur', '-5.1134995', '105.6881788'),
(42, 33, 'Kabupaten Kulon Progo', '-7.8266798', '110.1640846'),
(43, 33, 'Kabupaten Bantul', '-7.9190169', '110.3785438'),
(44, 33, 'Kabupaten Gunung Kidul', '-8.0305091', '110.6168921'),
(45, 33, 'Kota Yogyakarta', '-7.7955798', '110.3694896'),
(46, 33, 'Kabupaten Sleman', '-7.716165', '110.335403'),
(48, 28, 'Kabupaten Morowali', '-2.6987231', '121.9017954'),
(49, 28, 'Kota Palu', '-0.9002915', '119.8779987'),
(50, 28, 'Kabupaten Tojo Una-Una', '-1.098757', '121.5370003'),
(51, 28, 'Kabupaten Donggala', '-0.4233155', '119.8352303'),
(52, 28, 'Kabupaten Banggai Kepulauan', '-1.3075939', '123.0338767'),
(53, 28, 'Kabupaten Poso', '-1.6468883', '120.4357631'),
(55, 28, 'Kabupaten Sigi', '-1.3859904', '119.8815203'),
(57, 14, 'Kabupaten Kutai Timur', '0.9433774', '116.9852422'),
(58, 9, 'Kabupaten Banjarnegara', '-7.3794368', '109.6163185'),
(59, 9, 'Kabupaten Blora', '-7.012244', '111.3798928'),
(60, 9, 'Kabupaten Pemalang', '-6.9201316', '109.370576'),
(61, 9, 'Kabupaten Batang', '-7.0392183', '109.9020509'),
(62, 9, 'Kabupaten Boyolali', '-7.4317773', '110.6883536'),
(64, 9, 'Kabupaten Purbalingga', '-7.3058578', '109.4259114'),
(65, 9, 'Kabupaten Kebumen', '-7.6680559', '109.6524575'),
(66, 9, 'Kabupaten Klaten', '-7.657893', '110.6645683'),
(67, 9, 'Kabupaten Pati', '-6.7449635', '111.0460407'),
(68, 9, 'Kabupaten Pekalongan', '-7.0517128', '109.6163185'),
(69, 9, 'Kabupaten Sragen', '-7.43027', '111.0091855'),
(70, 9, 'Kabupaten Sukoharjo', '-7.6483506', '110.8552919'),
(71, 9, 'Kabupaten Wonogiri', '-7.8846484', '111.0460407'),
(72, 9, 'Kabupaten Wonosobo', '-7.3632094', '109.9001796'),
(73, 9, 'Kabupaten Brebes', '-6.9591793', '108.902683'),
(74, 9, 'Kabupaten Tegal', '-6.8588473', '109.1047663'),
(75, 9, 'Kabupaten Kendal', '-7.0265442', '110.1879106'),
(76, 9, 'Kabupaten Karang Anyar', '-7.6070727', '110.9866942'),
(77, 9, 'Kabupaten Purwerejo', '-7.7403739', '110.0330554'),
(78, 26, 'Kabupaten Majene', '-3.0297251', '118.9062794'),
(79, 26, 'Kabupaten Polewali Mandar', '-3.3419323', '119.1390642'),
(80, 26, 'Kabupaten Mamasa', '-2.9118209', '119.3250347'),
(81, 26, 'Kabupaten Mamuju', '-2.4920057', '119.3250347'),
(82, 27, 'Kabupaten Bone', '-4.7443383', '120.0665236'),
(83, 27, 'Kabupaten Sinjai', '-5.2171961', '120.112735'),
(84, 27, 'Kabupaten Jeneponto', '-5.554579', '119.6730939'),
(85, 27, 'Kabupaten Bulukumba', '-5.4329368', '120.2051096'),
(86, 27, 'Kabupaten Enrekang', '-3.4590744', '119.8815203'),
(87, 27, 'Kabupaten Luwu Utara', '-2.2690446', '119.9740534'),
(88, 27, 'Kota Makassar', '-5.1476651', '119.4327314'),
(89, 27, 'Kabupaten Pangkajene Kepulauan', '-4.805035', '119.5571677'),
(90, 27, 'Kabupaten Pangkep', '-4.805035', '119.5571677'),
(91, 27, 'Kabupaten Takalar', '-5.4162493', '119.4875668'),
(92, 27, 'Kabupaten Tana Toraja', '-3.0753003', '119.742604'),
(93, 27, 'Kabupaten Bantaeng', '-5.5169316', '120.0202964'),
(94, 27, 'Kabupaten Sidenreng Rappang', '-3.7738981', '120.0202964'),
(95, 27, 'Kabupaten Soppeng', '-4.3518541', '119.9277947'),
(96, 27, 'Kabupaten Selayar', '-6.2869786', '120.5048792'),
(97, 27, 'Kabupaten Wajo', '-4.022229', '120.0665236'),
(98, 27, 'Kabupaten Barru', '-4.436417', '119.6499162'),
(99, 21, 'Kabupaten Lombok Timur', '-8.5134471', '116.5609857'),
(101, 21, 'Kabupaten Bima', '-8.4353962', '118.626479'),
(102, 21, 'Kota Mataram', '-8.5769951', '116.1004894'),
(103, 21, 'Kabupaten Lombok Barat', '-8.6464599', '116.1123078'),
(104, 21, 'Kabupaten Dompu', '-8.5363958', '118.3461948'),
(105, 2, 'Kota Denpasar', '-8.6704582', '115.2126293'),
(106, 25, 'Kabupaten Indragiri Hili', '-0.1456733', '102.989615'),
(107, 31, 'Kabupaten Muara Enim', '-3.7114163', '104.0072348'),
(108, 4, 'Kabupaten Kepahiang', '-3.6130091', '102.6675575'),
(109, 11, 'Kabupaten Sanggau', '0.1400117', '110.5215459'),
(110, 11, 'Kabupaten Kapuas Hulu', '0.8336697', '113.0011989'),
(111, 1, 'Kabupaten Aceh Tengah', '4.4482641', '96.8350999'),
(112, 13, 'Kabupaten Kapuas', '-1.8116445', '114.3341432'),
(113, 13, 'Kabupaten Kotawaringin Timur', '-2.1225475', '112.8105512'),
(114, 13, 'Kota Palangkaraya', '-2.2161048', '113.913977'),
(115, 13, 'Kabupaten Barito Selatan', '-1.875943', '114.8092691'),
(116, 13, 'Kabupaten Barito Timur', '-2.0123999', '115.188916'),
(117, 13, 'Kabupaten Seruyan', '-3.0123467', '112.4291464'),
(118, 13, 'Kabupaten Katingan', '-0.9758379', '112.8105512'),
(119, 13, 'Kabupaten Gunung MAS', '-1.2522464', '113.5728501'),
(120, 34, 'Kota Kendari', '-3.9984597', '122.5129742'),
(121, 34, 'Kabupaten Buton', '-5.3096355', '122.9888319'),
(122, 34, 'Kabupaten Konawe Selatan', '-4.2027915', '122.4467238'),
(123, 34, 'Kabupaten Konawe', '-3.9380432', '122.0837445'),
(125, 34, 'Kabupaten Muna', '-4.901629', '122.6277455'),
(126, 24, 'Kabupaten Sorong', '-1.1223204', '131.4883373'),
(127, 24, 'Kabupaten Kaimana', '-3.288406', '133.9436788'),
(128, 24, 'Kabupaten Fakfak', '-3.097706', '133.0194897'),
(129, 24, 'Kota Sorong', '-0.8819986', '131.2954834'),
(131, 28, 'Kabupaten Banggai', '-0.956178', '122.6277455'),
(132, 32, 'Kota Padang Sidempuan', '1.3721801', '99.2730146'),
(133, 27, 'Kabupaten Palopo', '-3.0108458', '120.2022239'),
(134, 9, 'Kota Salatiga', '-7.3305234', '110.5084366'),
(135, 10, 'Kabupaten Tulungagung', '-8.0843211', '111.9045541'),
(136, 30, 'Kota Bukit Tinggi', '-0.3039178', '100.383479'),
(137, 1, 'Kabupaten Langsa', '4.4757799', '97.9641022'),
(140, 4, 'Kota Bengkulu', '-3.7928451', '102.2607641'),
(141, 8, 'Kota Bandung', '-6.9174639', '107.6191228'),
(142, 27, 'Kota Banjarmasin', '-3.3096594', '114.5920653'),
(143, 12, 'Kota Banjar Masin', '-3.3186067', '114.5943784'),
(144, 13, 'Kabupaten Tanah Bumbu', '-3.4615926', '116.0000104'),
(145, 12, 'Kabupaten Tanah Bambu', '-3.4615926', '116.0000104'),
(146, 5, 'Kota Gorontalo', '0.5435442', '123.0567693'),
(147, 19, 'Kabupaten Maluku Tenggara', '-5.4737337', '133.0531122'),
(148, 19, 'Kabupaten Maluku Tenggara Barat', '-7.5322642', '131.3611121'),
(149, 19, 'Kabupaten Maluku Barat Daya', '-7.7851588', '126.3498097'),
(150, 20, 'Kabupaten Kepulauan Sula', '-1.8321222', '125.958777'),
(151, 21, 'Kabupaten Sumbawa', '-8.6529334', '117.3616476'),
(152, 19, 'Kabupaten Maluku Tengah', '-2.936697', '129.403398'),
(153, 20, 'Kabupaten Halmahera Tengah', '0.4419543', '128.3587174'),
(154, 21, 'Kota Bima', '-8.4642661', '118.7449028'),
(155, 24, 'kabupaten Tambrauw', '-0.781856', '132.3938375'),
(156, 5, 'Kabupaten Gorontalo', '0.5692733', '122.8084496'),
(157, 23, 'Kabupaten Boven DigoeL', '-5.7400018', '140.3481835'),
(158, 32, 'Kabupaten Deli Serdang', '3.4201802', '98.704075'),
(159, 25, 'Kabupaten Indragiri Hulu', '-0.7361181', '102.2547919'),
(160, 38, 'Kabupaten Bangka Barat', '-1.8405046', '105.5005483'),
(161, 18, 'Lampung Utara', '-4.8133905', '104.7520939'),
(162, 14, 'Kabupaten Paser', '-1.7175266', '115.9467997'),
(163, 28, 'Kabupaten Morowali Utara', '-1.6311761', '121.3541631'),
(164, 34, 'Kota Bau Bau', '-5.4700112', '122.5976841'),
(165, 20, 'Kabupaten Halmahera Utara', '1.5074308', '127.8936663'),
(166, 9, 'Kota Solo/Surakarta', '-7.5754887', '110.8243272'),
(167, 9, 'Kabupaten Nganjuk', '-7.6272276', '111.1314358'),
(168, 23, 'Kabupaten Puncak Jaya', '-3.4467891', '137.8427298'),
(169, 3, 'Kota Serang', '-6.1103661', '106.1639749'),
(170, 18, 'Kota Bandar Lampung', '-5.3971396', '105.2667887'),
(171, 10, 'Kota Surabaya', '-7.2574719', '112.7520883'),
(172, 17, 'Kota Batam', '1.0458378', '103.98402'),
(173, 31, 'Kota Palembang', '-2.9760735', '104.7754307'),
(174, 7, 'Kabupaten Sarolangun', '-2.3230422', '102.7135121'),
(175, 7, 'Kabupaten Tebo', '-1.2592999', '102.3463875'),
(176, 22, 'Kota Kupang', '-10.1771997', '123.6070329'),
(177, 1, 'Kota Beureunuen', '5.2796524', '95.9742801'),
(178, 1, 'Kabupaten Aceh Timur', '4.5224111', '97.6114217'),
(179, 32, 'Kabupaten Mandailing Natal', '0.7432372', '99.3673084'),
(180, 21, 'Kabupaten Lombok Tengah', '-8.694623', '116.2777073'),
(181, 24, 'Kabupaten Sorong Selatan', '-1.7657744', '132.1572702'),
(182, 8, 'Kota Bekasi', '-6.2382699', '106.9755726'),
(183, 31, 'Kota Baturaja', '-4.1240198', '104.1679963'),
(184, 31, 'Kota Martapura', '-4.3139423', '104.360461'),
(185, 10, 'Kabupaten Jombang', '-7.5740867', '112.28609'),
(186, 10, 'Kota Madiun', '-7.6310587', '111.5300159'),
(187, 9, 'Kota Semarang', '-7.0051453', '110.4381254'),
(188, 9, 'Kabupaten Kudus', '-6.7726186', '110.8791343'),
(189, 9, 'Kabupaten Renbang', '-6.8082115', '111.4275888'),
(190, 9, 'Kabupaten Jepara', '111.4275888', '110.6786933'),
(191, 9, 'Kabupaten Grobogan', '-7.1541672', '110.9506636'),
(192, 18, 'Kabupaten Pasawaran', '-5.493245', '105.0791228'),
(193, 18, 'Kabupaten Lampung Selatan', '-5.5622614', '105.5474373'),
(194, 18, 'Kabupaten Pring Sewu', '-5.3558465', '104.9767999'),
(195, 18, 'Kabupaten Tulang Bawang', '-4.3303072', '104.6296338'),
(196, 18, 'Kabupaten Way Kanan', '-4.4963689', '104.5655273'),
(197, 18, 'Kabupaten Tulang Bawang Barat', '-4.3303072', '104.6296338'),
(198, 22, 'Kabupaten Alor', '-8.2928427', '124.5528387'),
(199, 22, 'Kabupaten Kupang', '-9.9906166', '123.8857747'),
(200, 22, 'Kabupaten Manggarai', '-8.6796987', '120.3896651'),
(201, 22, 'Kabupaten Ende', '-8.6762912', '121.7195459'),
(202, 22, 'Kabupaten Sika', '-8.6766175', '122.1291843'),
(203, 22, 'Kabupaten Timor Tengah Utara', '-9.4522647', '124.597132'),
(204, 22, 'Kabupaten Flores Timur', '-8.3130942', '122.9663018'),
(205, 22, 'Kabupaten Sumba Timur', '-9.9802103', '120.3435506'),
(206, 22, 'Kabupaten Sumba Barat Daya', '-9.539139', '119.1390642'),
(207, 7, 'Kabupaten Tanjab', '-1.105846', '103.0817903');

-- --------------------------------------------------------

--
-- Table structure for table `irena_kategori_lender`
--

CREATE TABLE `irena_kategori_lender` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_kategori_lender`
--

INSERT INTO `irena_kategori_lender` (`id`, `nama`) VALUES
(1, 'Bilateral');

-- --------------------------------------------------------

--
-- Table structure for table `irena_kategori_program`
--

CREATE TABLE `irena_kategori_program` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_kategori_program`
--

INSERT INTO `irena_kategori_program` (`id`, `nama`) VALUES
(1, 'INFRASTRUKTUR'),
(2, 'NON INFRASTRUKTUR');

-- --------------------------------------------------------

--
-- Table structure for table `irena_la_proyek`
--

CREATE TABLE `irena_la_proyek` (
  `id` int(11) NOT NULL,
  `id_usulan` varchar(5) NOT NULL,
  `id_greenbook` varchar(11) NOT NULL,
  `id_bluebook` varchar(11) NOT NULL,
  `id_instansi` varchar(11) NOT NULL,
  `id_program` varchar(10) NOT NULL,
  `id_lender` varchar(5) NOT NULL,
  `id_eselon_1` varchar(5) NOT NULL,
  `id_instansi_pelaksana` varchar(5) NOT NULL,
  `judul_proyek_id` varchar(500) NOT NULL,
  `judul_proyek_eng` varchar(500) NOT NULL,
  `ruang_lingkup_id` text NOT NULL,
  `ruang_lingkup_eng` text NOT NULL,
  `durasi` int(11) NOT NULL,
  `id_status_lembaga` varchar(5) NOT NULL,
  `id_status_lender` varchar(5) NOT NULL,
  `proyeksi_tahun_pertama_penarikan` int(11) NOT NULL,
  `output` text NOT NULL,
  `outcome` text NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `nilai_pinjaman` int(11) NOT NULL,
  `nilai_hibah` int(11) NOT NULL,
  `dana_usulan` int(11) NOT NULL,
  `tgl_DK` date NOT NULL,
  `tgl_LA` date NOT NULL,
  `dana_pendamping` int(11) NOT NULL,
  `id_dk_proyek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_lender`
--

CREATE TABLE `irena_lender` (
  `id` int(11) NOT NULL,
  `id_kategori_lender` int(11) NOT NULL,
  `lender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_lender`
--

INSERT INTO `irena_lender` (`id`, `id_kategori_lender`, `lender`) VALUES
(1, 1, 'JICA'),
(2, 1, 'China');

-- --------------------------------------------------------

--
-- Table structure for table `irena_mata_uang`
--

CREATE TABLE `irena_mata_uang` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `singkatan` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_mata_uang`
--

INSERT INTO `irena_mata_uang` (`id`, `nama`, `singkatan`, `keterangan`, `update_by`, `update_date`) VALUES
(1, 'US Dollar', 'USD', 'Dollar Amerika', 1, '2017-11-14 11:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `irena_pendanaan`
--

CREATE TABLE `irena_pendanaan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_pendanaan`
--

INSERT INTO `irena_pendanaan` (`id`, `nama`) VALUES
(1, 'Pinjaman luar Negeri'),
(2, 'Hibah'),
(3, 'SBSN');

-- --------------------------------------------------------

--
-- Table structure for table `irena_prioritas`
--

CREATE TABLE `irena_prioritas` (
  `id` int(11) NOT NULL,
  `periode` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `ket` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_prioritas`
--

INSERT INTO `irena_prioritas` (`id`, `periode`, `nama`, `ket`) VALUES
(1, '2015-2019', 'Pendidikan', NULL),
(2, '2015-2019', 'Kesehatan', NULL),
(3, '2015-2019', 'Perumahan', NULL),
(4, '2015-2019', 'Mental/Karakter', NULL),
(5, '2015-2019', 'Kedaulatan Pangan', NULL),
(6, '2015-2019', 'Kedaulatan Energi & Ketenagalistrikan', NULL),
(7, '2015-2019', 'Kemaritiman dan Kelautan', NULL),
(8, '2015-2019', 'Pariwisata dan Industri', NULL),
(9, '2015-2019', 'Antarkelompok Pendapatan', NULL),
(10, '2015-2019', 'Antarwilayah: (1) Desa, (2) Pinggiran,(3) Luar Jawa, (4) Kawasan Timur', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `irena_program`
--

CREATE TABLE `irena_program` (
  `id` int(11) NOT NULL,
  `id_kategori` varchar(5) NOT NULL,
  `nama` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_program_pln`
--

CREATE TABLE `irena_program_pln` (
  `id` int(11) NOT NULL,
  `id_bluebook` int(11) NOT NULL,
  `id_kategori` varchar(2) NOT NULL,
  `id_sektor` varchar(2) NOT NULL,
  `nama_program` varchar(250) NOT NULL,
  `judul_eng` varchar(500) NOT NULL,
  `latar_belakang_id` text NOT NULL,
  `latar_belakang_eng` text NOT NULL,
  `ruang_lingkup_id` text NOT NULL,
  `ruang_lingkup_eng` text NOT NULL,
  `outcome` text NOT NULL,
  `total_pinjaman` int(11) NOT NULL,
  `total_hibah` int(11) NOT NULL,
  `total_dp` int(11) NOT NULL,
  `total_dana` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_program_pln`
--

INSERT INTO `irena_program_pln` (`id`, `id_bluebook`, `id_kategori`, `id_sektor`, `nama_program`, `judul_eng`, `latar_belakang_id`, `latar_belakang_eng`, `ruang_lingkup_id`, `ruang_lingkup_eng`, `outcome`, `total_pinjaman`, `total_hibah`, `total_dp`, `total_dana`) VALUES
(1, 1, '1', '2', 'Program Pengembangan Perkeretaapian', 'Pembangunan Rel Kereta Api', 'Memperluas jalur kereta api', 'Memperluas jalur kereta api', 'Kota Bandung', 'Kota Bandung', 'Rel Kereta Api sepanjang 50KM', 200000, 100, 50, 0),
(2, 0, '1', '5', 'Program Pembangunan Infrastruktur Ketenagalistrikan', '', '', '', '', '', '', 0, 0, 0, 0),
(3, 0, '1', '1', 'Program Pembangunan Sistem Pengelolaan Air Limbah ', '', '', '', '', '', '', 0, 0, 0, 0),
(4, 0, '1', '1', 'Program Penanganan Kumuh', '', '', '', '', '', '', 0, 0, 0, 0),
(5, 0, '1', '3', 'Program Pengembangan dan Pengelolaan Irigasi', '', '', '', '', '', '', 0, 0, 0, 0),
(6, 0, '1', '3', 'Program Pembangunan Waduk ', '', '', '', '', '', '', 0, 0, 0, 0),
(7, 0, '1', '6', 'Program Pengembangan Transportasi Laut ', '', '', '', '', '', '', 0, 0, 0, 0),
(8, 0, '1', '4', 'Program Pembangunan / Peningkatan Jalan\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(9, 0, '1', '4', 'Program Pembangunan / Peningkatan Jembatan \r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(10, 0, '1', '4', 'Program Pembangunan Jalan Tol \r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(11, 0, '1', '3', 'Program Mitigasi Terhadap Daya Rusak Air\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(12, 0, '1', '1', 'Program Pembangunan Air Minum\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(13, 0, '1', '10', 'Program Penyediaaan Perumahan Bagi MBR\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(14, 0, '1', '3', 'Program Penyediaan Air Baku \r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(15, 0, '1', '14', 'Program Pembiayaan Pembangunan Infrastruktur\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(16, 0, '1', '14', 'Program Pengembangan Infrastruktur TIK dan Penyiaran\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(17, 0, '1', '11', 'Program Pengelolaan Infrastruktur Sumber Daya Air \r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(18, 0, '1', '12', 'Program Infrastruktur untuk Pengembangan Pariwisata\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(19, 0, '1', '1', 'Program Pembangunan Sistem Pengelolaan Persampahan \r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(20, 0, '1', '4', 'Program Pengembangan dan Peningkatan Jalan Subnasional\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(21, 0, '1', '1', 'Program Pembangunan Kota Berkelanjutan\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(22, 0, '2', '7', 'Program Pelayanan Kesehatan Rujukan\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(23, 0, '2', '8', 'Program Penyediaan dan Pengembangan Prasarana dan Sarana Pertanian\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(24, 0, '2', '9', 'Program Peningkatan Akses, Kualitas, Relevansi, dan Daya Saing Pendidikan Tinggi Islam\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(25, 0, '2', '9', 'Program Peningkatan Akses, Kualitas, Relevansi, dan Daya Saing Pendidikan Tinggi ', '', '', '', '', '', '', 0, 0, 0, 0),
(26, 0, '2', '14', 'Program Pengembangan Sumber Daya Aparatur  dalam Rangka Reformasi Birokrasi\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(27, 0, '2', '13', 'Program Pembangunan Rumah Sakit Militer\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(28, 0, '2', '7', 'Program Pengembangan Sumber Daya Manusia Kesehatan\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(29, 0, '2', '14', 'Program Implementasi Informasi Geospasial dan Infrastruktur Keagrariaan\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(30, 0, '2', '14', 'Program Pengembangan dan Pembinaan Meteorologi, Klimatologi, dan Geofisika\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(31, 0, '2', '7', 'Program Pelayanan Kesehatan Dasar\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(32, 0, '2', '14', 'Program Pembangunan Science Park dan Technopark\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(33, 0, '2', '14', 'Program Pengembangan Penelitian Kelautan\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(34, 0, '2', '14', 'Program Peningkatan Fasilitas Perikanan\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(35, 0, '2', '7', 'Program Pengendalian Penyakit, Penyehatan Lingkungan, dan Penguatan Litbang Kesehatan\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(36, 0, '2', '8', 'Program Peningkatan Penyuluhan, Pendidikan, dan Pelatihan Pertanian\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(37, 0, '2', '14', 'Program Peningkatan Daya Saing Tenaga Kerja\r\n', '', '', '', '', '', '', 0, 0, 0, 0),
(38, 0, '2', '14', 'Program Penguatan Sektor Keuangan \r\n', '', '', '', '', '', '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `irena_provinsi`
--

CREATE TABLE `irena_provinsi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_provinsi`
--

INSERT INTO `irena_provinsi` (`id`, `nama`, `latitude`, `longitude`) VALUES
(1, 'Aceh', '4.695135', '96.749399'),
(2, 'Bali', '-8.409518', '115.188916'),
(3, 'Banten', '-6.405817', '106.064018'),
(4, 'Bengkulu', '-3.792067', '102.261996'),
(5, 'Gorontalo', '0.699937', '122.446724'),
(6, 'DKI Jakarta', '-6.174465', '106.822745'),
(7, 'Jambi', '-1.485183', '102.438058'),
(8, 'Jawa Barat', '-7.090911', '107.668887'),
(9, 'Jawa Tengah', '-7.150975', '110.140259'),
(10, 'Jawa Timur', '-7.536064', '112.238402'),
(11, 'Kalimantan Barat', '-0.278781', '111.475285'),
(12, 'Kalimantan Selatan', '-3.092642', '115.283758'),
(13, 'Kalimantan Tengah', '-1.681488', '113.382355'),
(14, 'Kalimantan Timur', '1.640630', '116.419389'),
(15, 'Kalimantan Utara', '4.258979', '117.883179'),
(16, 'Kepulauan Bangka Belitung', '-2.741051', '106.440587'),
(17, 'Kepulauan Riau', '0.917921', '104.446464'),
(18, 'Lampung', '-4.558585', '105.406808'),
(19, 'Maluku', '-3.238462', '130.145273'),
(20, 'Maluku Utara', '1.57100', '127.80877'),
(21, 'Nusa Tenggara Barat', '-8.652933', '117.361648'),
(22, 'Nusa Tenggara Timur', '-8.657382', '121.079370'),
(23, 'Papua', '-4.269928', '138.080353'),
(24, 'Papua Barat', '-1.336115', '133.174716'),
(25, 'Riau', '0.293347', '101.706829'),
(26, 'Sulawesi Barat', '-2.844137', '119.232078'),
(27, 'Sulawesi Selatan', '-3.668799', '119.974053'),
(28, 'Sulawesi Tengah', '-1.430025', '121.445618'),
(29, 'Sulawesi Utara', '0.624693', '123.975002'),
(30, 'Sumatera Barat', '-0.739940', '100.800005'),
(31, 'Sumatera Selatan', '-3.319437', '103.914399'),
(32, 'Sumatera Utara', '2.010856', '98.978489'),
(33, 'DI Yogyakarta', '-7.797591', '110.370714'),
(34, 'Sulawesi Tenggara', '-4.144910', '122.174605'),
(38, 'Bangka Belitung', '-2.74105', '106.44059');

-- --------------------------------------------------------

--
-- Table structure for table `irena_provinsi_kabkota`
--

CREATE TABLE `irena_provinsi_kabkota` (
  `id` int(11) NOT NULL,
  `id_provinsi` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_provinsi_kabkota`
--

INSERT INTO `irena_provinsi_kabkota` (`id`, `id_provinsi`, `nama`, `latitude`, `longitude`) VALUES
(1, 1, 'Kota Banda Aceh', '5.546182', '95.319054'),
(3, 25, 'Kota Pekanbaru', '0.5070677', '101.4477793'),
(4, 17, 'Kabupaten Natuna', '3.940909', '108.3872724'),
(5, 7, 'Kota Jambi', '-1.6101229', '103.6131203'),
(6, 8, 'Kota Cikarang', '-6.2621933', '107.5416395'),
(7, 14, 'Kota Balikpapan', '-1.2379274', '116.8528526'),
(8, 14, 'Kota Samarinda', '-0.4993933', '117.1529458'),
(9, 6, 'Kota Jakarta', '-6.2087634', '106.845599'),
(10, 20, 'Kota Tidore Kepulauan', '0.5060207', '127.681228'),
(11, 32, 'Kota Medan', '3.6004249', '98.6820636'),
(12, 8, 'Kota Cirebon', '-6.7320229', '108.5523164'),
(13, 9, 'Kabupaten Cilacap', '-7.6178096', '108.902683'),
(14, 29, 'Kota Manado', '1.4748305', '124.8420794'),
(15, 28, 'Kabupaten Parigi Moutong', '-0.716097', '120.089897'),
(16, 7, 'Kabupaten Batanghari', '-1.7083922', '103.0817903'),
(17, 5, 'Kabupaten Gorontalo Utara', '0.9252647', '122.4920088'),
(18, 12, 'Kota Banjarbaru', '-3.4572422', '114.8103181'),
(19, 21, 'Kota Sumbawa Besar', '-8.504043', '117.428497'),
(20, 30, 'Kota Padang', '-0.853278', '100.3947116'),
(21, 10, 'Kabupaten Kediri', '-7.8480156', '112.0178286'),
(22, 23, 'Kabupaten Sarmi', '-2.4678144', '139.2030851'),
(23, 23, 'Kota Jayapura', '-2.5916025', '140.6689995'),
(24, 23, 'Kabupaten Jayawijaya', '-4.0004481', '138.7995122'),
(25, 10, 'Kabupaten Lumajang', '-7.43600705', '113.80050659'),
(27, 10, 'Kabupaten Bojonegoro', '-7.1524786', '111.8869293'),
(28, 10, 'Kabupaten Mojokerto', '-7.4704747', '112.4401329'),
(29, 10, 'Kabupaten Sumenep', '-6.9253999', '113.9060624'),
(30, 10, 'Kabupaten Sampang', '-7.1697095', '113.2513554'),
(31, 10, 'Kabupaten Blitar', '-8.1308657', '112.2200091'),
(32, 10, 'Kabupaten Bondowoso', '-7.9673906', '113.9060624'),
(33, 10, 'Kota Malang', '-7.9666204', '112.6326321'),
(34, 10, 'Kabupaten Situbondo', '-7.7050532', '113.9952789'),
(35, 10, 'Kabupaten Gresik', '-7.1652437', '112.6519882'),
(36, 10, 'Kabupaten Nganjuk', '-7.6043721', '111.8993478'),
(37, 10, 'Kabupaten Banyu Wangi', '-8.2190944', '114.3691416'),
(38, 10, 'Kabupaten Jember', '-8.1733118', '113.7009312'),
(39, 10, 'Kabupaten Malang', '-8.242209', '112.7152125'),
(40, 18, 'Kabupaten Lampung Tengah', '-4.8008086', '105.3131185'),
(41, 18, 'Kabupaten Lampung Timur', '-5.1134995', '105.6881788'),
(42, 33, 'Kabupaten Kulon Progo', '-7.8266798', '110.1640846'),
(43, 33, 'Kabupaten Bantul', '-7.9190169', '110.3785438'),
(44, 33, 'Kabupaten Gunung Kidul', '-8.0305091', '110.6168921'),
(45, 33, 'Kota Yogyakarta', '-7.7955798', '110.3694896'),
(46, 33, 'Kabupaten Sleman', '-7.716165', '110.335403'),
(48, 28, 'Kabupaten Morowali', '-2.6987231', '121.9017954'),
(49, 28, 'Kota Palu', '-0.9002915', '119.8779987'),
(50, 28, 'Kabupaten Tojo Una-Una', '-1.098757', '121.5370003'),
(51, 28, 'Kabupaten Donggala', '-0.4233155', '119.8352303'),
(52, 28, 'Kabupaten Banggai Kepulauan', '-1.3075939', '123.0338767'),
(53, 28, 'Kabupaten Poso', '-1.6468883', '120.4357631'),
(55, 28, 'Kabupaten Sigi', '-1.3859904', '119.8815203'),
(57, 14, 'Kabupaten Kutai Timur', '0.9433774', '116.9852422'),
(58, 9, 'Kabupaten Banjarnegara', '-7.3794368', '109.6163185'),
(59, 9, 'Kabupaten Blora', '-7.012244', '111.3798928'),
(61, 9, 'Kabupaten Batang', '-7.0392183', '109.9020509'),
(62, 9, 'Kabupaten Boyolali', '-7.4317773', '110.6883536'),
(64, 9, 'Kabupaten Purbalingga', '-7.3058578', '109.4259114'),
(65, 9, 'Kabupaten Kebumen', '-7.6680559', '109.6524575'),
(66, 9, 'Kabupaten Klaten', '-7.657893', '110.6645683'),
(67, 9, 'Kabupaten Pati', '-6.7449635', '111.0460407'),
(68, 9, 'Kabupaten Pekalongan', '-7.0517128', '109.6163185'),
(69, 9, 'Kabupaten Sragen', '-7.43027', '111.0091855'),
(70, 9, 'Kabupaten Sukoharjo', '-7.6483506', '110.8552919'),
(71, 9, 'Kabupaten Wonogiri', '-7.8846484', '111.0460407'),
(72, 9, 'Kabupaten Wonosobo', '-7.3632094', '109.9001796'),
(73, 9, 'Kabupaten Brebes', '-6.9591793', '108.902683'),
(74, 9, 'Kabupaten Tegal', '-6.8588473', '109.1047663'),
(75, 9, 'Kabupaten Kendal', '-7.0265442', '110.1879106'),
(76, 9, 'Kabupaten Karang Anyar', '-7.6070727', '110.9866942'),
(77, 9, 'Kabupaten Purwerejo', '-7.7403739', '110.0330554'),
(78, 26, 'Kabupaten Majene', '-3.0297251', '118.9062794'),
(79, 26, 'Kabupaten Polewali Mandar', '-3.3419323', '119.1390642'),
(80, 26, 'Kabupaten Mamasa', '-2.9118209', '119.3250347'),
(81, 26, 'Kabupaten Mamuju Utara', '-1.526454', '119.510771'),
(82, 27, 'Kabupaten Bone', '-4.7443383', '120.0665236'),
(83, 27, 'Kabupaten Sinjai', '-5.2171961', '120.112735'),
(84, 27, 'Kabupaten Jeneponto', '-5.554579', '119.6730939'),
(85, 27, 'Kabupaten Bulukumba', '-5.4329368', '120.2051096'),
(86, 27, 'Kabupaten Enrekang', '-3.4590744', '119.8815203'),
(87, 27, 'Kabupaten Luwu Utara', '-2.2690446', '119.9740534'),
(88, 27, 'Kota Makassar', '-5.1476651', '119.4327314'),
(89, 27, 'Kabupaten Pangkajene Kepulauan', '-4.805035', '119.5571677'),
(90, 27, 'Kabupaten Pangkep', '-4.805035', '119.5571677'),
(91, 27, 'Kabupaten Takalar', '-5.4162493', '119.4875668'),
(92, 27, 'Kabupaten Tana Toraja', '-3.0753003', '119.742604'),
(93, 27, 'Kabupaten Bantaeng', '-5.5169316', '120.0202964'),
(94, 27, 'Kabupaten Sidenreng Rappang', '-3.7738981', '120.0202964'),
(95, 27, 'Kabupaten Soppeng', '-4.3518541', '119.9277947'),
(96, 27, 'Kabupaten Selayar', '-6.2869786', '120.5048792'),
(97, 27, 'Kabupaten Wajo', '-4.022229', '120.0665236'),
(98, 27, 'Kabupaten Barru', '-4.436417', '119.6499162'),
(99, 21, 'Kabupaten Lombok Timur', '-8.5134471', '116.5609857'),
(101, 21, 'Kabupaten Bima', '-8.4353962', '118.626479'),
(102, 21, 'Kota Mataram', '-8.5769951', '116.1004894'),
(103, 21, 'Kabupaten Lombok Barat', '-8.6464599', '116.1123078'),
(104, 21, 'Kabupaten Dompu', '-8.5363958', '118.3461948'),
(105, 2, 'Kota Denpasar', '-8.6704582', '115.2126293'),
(106, 25, 'Kabupaten Indragiri Hili', '-0.1456733', '102.989615'),
(107, 31, 'Kabupaten Muara Enim', '-3.7114163', '104.0072348'),
(108, 4, 'Kabupaten Kepahiang', '-3.6130091', '102.6675575'),
(109, 11, 'Kabupaten Sanggau', '0.1400117', '110.5215459'),
(110, 11, 'Kabupaten Kapuas Hulu', '0.8336697', '113.0011989'),
(111, 1, 'Kabupaten Aceh Tengah', '4.4482641', '96.8350999'),
(112, 13, 'Kabupaten Kapuas', '-1.8116445', '114.3341432'),
(113, 13, 'Kabupaten Kotawaringin Timur', '-2.1225475', '112.8105512'),
(114, 13, 'Kota Palangkaraya', '-2.2161048', '113.913977'),
(115, 13, 'Kabupaten Barito Selatan', '-1.875943', '114.8092691'),
(116, 13, 'Kabupaten Barito Timur', '-2.0123999', '115.188916'),
(117, 13, 'Kabupaten Seruyan', '-3.0123467', '112.4291464'),
(118, 13, 'Kabupaten Katingan', '-0.9758379', '112.8105512'),
(119, 13, 'Kabupaten Gunung MAS', '-1.2522464', '113.5728501'),
(120, 34, 'Kota Kendari', '-3.9984597', '122.5129742'),
(121, 34, 'Kabupaten Buton', '-5.3096355', '122.9888319'),
(122, 34, 'Kabupaten Konawe Selatan', '-4.2027915', '122.4467238'),
(123, 34, 'Kabupaten Konawe', '-3.9380432', '122.0837445'),
(125, 34, 'Kabupaten Muna', '-4.901629', '122.6277455'),
(126, 24, 'Kabupaten Sorong', '-1.1223204', '131.4883373'),
(127, 24, 'Kabupaten Kaimana', '-3.288406', '133.9436788'),
(128, 24, 'Kabupaten Fakfak', '-3.097706', '133.0194897'),
(129, 24, 'Kota Sorong', '-0.8819986', '131.2954834'),
(131, 28, 'Kabupaten Banggai', '-0.956178', '122.6277455'),
(132, 32, 'Kota Padang Sidempuan', '1.3721801', '99.2730146'),
(133, 27, 'Kabupaten Palopo', '-3.0108458', '120.2022239'),
(134, 9, 'Kota Salatiga', '-7.3305234', '110.5084366'),
(135, 10, 'Kabupaten Tulungagung', '-8.0843211', '111.9045541'),
(136, 30, 'Kota Bukit Tinggi', '-0.3039178', '100.383479'),
(137, 1, 'Kabupaten Langsa', '4.4757799', '97.9641022'),
(140, 4, 'Kota Bengkulu', '-3.7928451', '102.2607641'),
(141, 8, 'Kota Bandung', '-6.9174639', '107.6191228'),
(142, 27, 'Kota Banjarmasin', '-3.3096594', '114.5920653'),
(143, 12, 'Kota Banjarmasin', '-3.3186067', '114.5943784'),
(144, 13, 'Kabupaten Tanah Bumbu', '-3.4615926', '116.0000104'),
(145, 12, 'Kabupaten Tanah Bambu', '-3.4615926', '116.0000104'),
(146, 5, 'Kota Gorontalo', '0.5435442', '123.0567693'),
(147, 19, 'Kabupaten Maluku Tenggara', '-5.4737337', '133.0531122'),
(148, 19, 'Kabupaten Maluku Tenggara Barat', '-7.5322642', '131.3611121'),
(149, 19, 'Kabupaten Maluku Barat Daya', '-7.7851588', '126.3498097'),
(150, 20, 'Kabupaten Kepulauan Sula', '-1.8321222', '125.958777'),
(151, 21, 'Kabupaten Sumbawa', '-8.6529334', '117.3616476'),
(152, 19, 'Kabupaten Maluku Tengah', '-2.936697', '129.403398'),
(153, 20, 'Kabupaten Halmahera Tengah', '0.4419543', '128.3587174'),
(154, 21, 'Kota Bima', '-8.4642661', '118.7449028'),
(155, 24, 'kabupaten Tambrauw', '-0.781856', '132.3938375'),
(156, 5, 'Kabupaten Gorontalo', '0.5692733', '122.8084496'),
(157, 23, 'Kabupaten Boven DigoeL', '-5.7400018', '140.3481835'),
(159, 25, 'Kabupaten Indragiri Hulu', '-0.7361181', '102.2547919'),
(160, 38, 'Kabupaten Bangka Barat', '-1.8405046', '105.5005483'),
(161, 18, 'Kabupaten Lampung Utara', '-4.8133905', '104.7520939'),
(162, 14, 'Kabupaten Paser', '-1.7175266', '115.9467997'),
(163, 28, 'Kabupaten Morowali Utara', '-1.6311761', '121.3541631'),
(164, 34, 'Kota Bau Bau', '-5.4700112', '122.5976841'),
(165, 20, 'Kabupaten Halmahera Utara', '1.5074308', '127.8936663'),
(166, 9, 'Kota Solo/Surakarta', '-7.5754887', '110.8243272'),
(167, 9, 'Kabupaten Nganjuk', '-7.6272276', '111.1314358'),
(168, 23, 'Kabupaten Puncak Jaya', '-3.4467891', '137.8427298'),
(169, 3, 'Kota Serang', '-6.1103661', '106.1639749'),
(170, 18, 'Kota Bandar Lampung', '-5.3971396', '105.2667887'),
(171, 10, 'Kota Surabaya', '-7.2574719', '112.7520883'),
(172, 17, 'Kota Batam', '1.0458378', '103.98402'),
(173, 31, 'Kota Palembang', '-2.9760735', '104.7754307'),
(174, 7, 'Kabupaten Sarolangun', '-2.3230422', '102.7135121'),
(175, 7, 'Kabupaten Tebo', '-1.2592999', '102.3463875'),
(176, 22, 'Kota Kupang', '-10.1771997', '123.6070329'),
(177, 1, 'Kota Beureunuen', '5.2796524', '95.9742801'),
(178, 1, 'Kabupaten Aceh Timur', '4.5224111', '97.6114217'),
(179, 32, 'Kabupaten Mandailing Natal', '0.7432372', '99.3673084'),
(180, 21, 'Kabupaten Lombok Tengah', '-8.694623', '116.2777073'),
(181, 24, 'Kabupaten Sorong Selatan', '-1.7657744', '132.1572702'),
(182, 8, 'Kota Bekasi', '-6.2382699', '106.9755726'),
(183, 31, 'Kota Baturaja', '-4.1240198', '104.1679963'),
(184, 31, 'Kota Martapura', '-4.3139423', '104.360461'),
(185, 10, 'Kabupaten Jombang', '-7.5740867', '112.28609'),
(186, 10, 'Kota Madiun', '-7.6310587', '111.5300159'),
(187, 9, 'Kota Semarang', '-7.0051453', '110.4381254'),
(188, 9, 'Kabupaten Kudus', '-6.7726186', '110.8791343'),
(189, 9, 'Kabupaten Rembang', '-6.8082115', '111.4275888'),
(190, 9, 'Kabupaten Jepara', '111.4275888', '110.6786933'),
(191, 9, 'Kabupaten Grobogan', '-7.1541672', '110.9506636'),
(192, 18, 'Kabupaten Pasawaran', '-5.493245', '105.0791228'),
(193, 18, 'Kabupaten Lampung Selatan', '-5.5622614', '105.5474373'),
(194, 18, 'Kabupaten Pring Sewu', '-5.3558465', '104.9767999'),
(196, 18, 'Kabupaten Way Kanan', '-4.4963689', '104.5655273'),
(197, 18, 'Kabupaten Tulang Bawang Barat', '-4.3303072', '104.6296338'),
(198, 22, 'Kabupaten Alor', '-8.2928427', '124.5528387'),
(199, 22, 'Kabupaten Kupang', '-9.9906166', '123.8857747'),
(200, 22, 'Kabupaten Manggarai', '-8.6796987', '120.3896651'),
(201, 22, 'Kabupaten Ende', '-8.6762912', '121.7195459'),
(202, 22, 'Kabupaten Sika', '-8.6766175', '122.1291843'),
(203, 22, 'Kabupaten Timor Tengah Utara', '-9.4522647', '124.597132'),
(204, 22, 'Kabupaten Flores Timur', '-8.3130942', '122.9663018'),
(205, 22, 'Kabupaten Sumba Timur', '-9.9802103', '120.3435506'),
(206, 22, 'Kabupaten Sumba Barat Daya', '-9.539139', '119.1390642'),
(207, 7, 'Kabupaten Tanjab', '-1.105846', '103.0817903'),
(208, 1, 'Kabupaten Aceh Besar', '5.452917', '95.477781'),
(209, 1, 'Kabupaten Pidie', '5.384776', '95.960237'),
(210, 32, 'Kabupaten Langkat', '3.849371', '98.443331'),
(212, 32, 'Kabupaten Batu Bara', '3.174098', '99.500614'),
(213, 23, 'Kabupaten Asmat', '-5.05740', '138.398819'),
(214, 23, 'Kabupaten Yahukimo', '-4.49397', '139.52800'),
(215, 32, 'Kabupaten Labuhan Batu', '2.343986', '100.170326'),
(216, 32, 'Kabupaten Labuan Batu Selatan', '1.879935', '100.170326'),
(217, 32, 'Kabupaten Deli Serdang', '3.420180', '98.704075'),
(218, 7, 'Kabupaten Tanjung Jabung Barat', '-1.105846', '103.081790'),
(219, 7, 'Kabupaten Tanjung Jabung Timur', '-1.102437', '103.821626'),
(220, 7, 'Kabupaten Muaro Jambi', '-1.552136', '103.821626'),
(221, 23, 'Kabupaten Yalimo', '-3.78528', '139.44660'),
(222, 25, 'kabupaten Siak', '0.811881', '101.797961'),
(223, 25, 'kabupaten Bengkalis', '1.413919', '101.615777'),
(224, 25, 'Kabupaten Rokan Hilir', '1.646398', '100.800005'),
(225, 24, 'Kabupaten Teluk Bintuni', '-1.90568', '133.32947'),
(226, 24, 'Kabupaten Manokwari', '-0.99896', '133.01949'),
(227, 24, 'Kabupaten Kepulauan Yapen', '-1.74694', '136.17090'),
(228, 25, 'Kota Dumai', '1.666635', '101.400186'),
(229, 25, 'Kabupaten Kuantan Singingi', '-0.441160', '101.524805'),
(230, 31, 'Kabupaten Musi Banyuasin', '-2.544203', '103.728917'),
(231, 24, 'Kabupaten Nabire', '-3.50955', '135.75210'),
(232, 31, 'Kabupaten Ogan Komering Ilir', '-3.455974', '105.219481'),
(233, 18, 'Kabupaten Tulang Bawang', '-4.317658', '105.500548'),
(234, 18, 'Kabupaten Lampung Tenggara', '-5.113499', '105.688179'),
(235, 1, 'Kabupaten Aceh Jaya', '4.787368', '95.645795'),
(236, 23, 'Kabupaten Mamberamo Raya', '-2.53313', '137.76376'),
(237, 32, 'Kabupaten Tapanuli Selatan', '1.577493', '99.278558'),
(238, 30, 'Kabupaten Solok', '-0.964384', '100.890310'),
(239, 25, 'Kabupaten Kampar', '0.146671', '101.161736'),
(240, 20, 'Kabupaten Pulau Morotai', '2.36567', '128.40084'),
(241, 20, 'Kabupaten Halmahera Selatan', '-1.51090', '127.72377'),
(242, 32, 'Kabupaten Samosir', '2.627443', '98.792184'),
(243, 9, 'Kabupaten Semarang', '-7.176479', '110.473876'),
(244, 9, 'Kabupaten Magelang', '-7.430524', '110.283222'),
(245, 9, 'Kabupaten Temanggung', '-7.274872', '110.089189'),
(246, 7, 'Kabupaten Merangin', '-2.175279', '101.980461'),
(247, 21, 'Kabupaten Lombok Utara', '-8.373908', '116.277707'),
(248, 10, 'Kabupaten Pasuruan', '-7.785996', '112.858217'),
(249, 10, 'Kabupaten Lamongan', '-7.126926', '112.333777'),
(250, 14, 'Kabupaten Paser', '-1.717527', '115.946800'),
(251, 14, 'Kabupaten Penajam Paser Utara', '-1.187564', '116.560986'),
(252, 14, 'Kabupaten Berau', '2.045088', '117.361648'),
(253, 14, 'Kabupaten Kutai Barat', '-0.405180', '115.852176'),
(254, 15, 'Kabupaten Bulungan', '2.904248', '116.985242'),
(255, 11, 'Kabupaten Bengkayang', '1.069110', '109.663931'),
(256, 11, 'Kabupaten Sanggau', '0.140012', '110.521546'),
(257, 15, 'Kabupaten Malinau', '3.073093', '116.041389'),
(258, 11, 'Kabupaten Sambas', '1.362519', '109.283153'),
(259, 5, 'Kabupaten Boalemo', '0.701342', '122.265389'),
(260, 34, 'Kabupaten Kolaka Utara', '-3.134723', '121.171039'),
(261, 27, 'Kabupaten Pinrang', '-3.648349', '119.557168'),
(262, 11, 'Kabupaten Mamuju Utara', '-1.526454', '119.510771'),
(263, 8, 'Kabupaten Indramayu', '-6.337310', '108.325833'),
(264, 10, 'Kabupaten Tuban', '-6.984746', '111.952249'),
(265, 10, 'Kabupaten Sidoarjo', '-7.472613', '112.667540'),
(266, 10, 'Kota Probolinggo', '-7.776423', '113.203713'),
(267, 10, 'Kabupaten Pacitan', '-8.126331', '111.141423'),
(268, 10, 'Kota Mojokerto', '-7.470475', '112.440133'),
(269, 9, 'Kabupaten Banyumas', '-7.483213', '109.140438'),
(270, 8, 'Kabupaten Sumedang', '-6.832858', '107.953184'),
(271, 2, 'Kabupaten Badung', '-8.581930', '115.177059'),
(272, 12, 'Kabupaten Banjar', '-3.320023', '114.999146'),
(273, 23, 'Kabupaten Pegunungan Bintang', '-4.558987', '140.513559'),
(274, 23, 'Kabupaten Keerom', '-3.344954', '140.762449'),
(275, 24, 'Kabupaten manokwari', '-0.998958', '133.019490'),
(276, 24, 'Kabupaten Teluk Wondama', '-2.855170', '134.323656'),
(277, 1, 'KAbupaten Aceh Utara', '4.978633', '97.222142'),
(278, 30, 'Kabupaten Dharmasraya', '-1.130580', '101.684059'),
(279, 23, 'Kabupaten Tolikara', '-3.481132', '138.478726'),
(280, 8, 'Kabupaten Ciamis', '-7.332077', '108.349254'),
(281, 8, 'Kabupaten Bogor', '-6.551776', '106.629130'),
(282, 8, 'Kota Bogor', '-6.597147', '106.806039'),
(283, 27, 'Kabupaten Kepulauan Selayar', '-6.286979', '120.504879'),
(284, 3, 'Kabupaten Lebak', '-6.564396', '106.252214'),
(285, 14, 'Kabupaten Bulungan', '2.904248', '116.985242'),
(286, 23, 'Kabupaten Merauke', '-8.486219', '140.554972'),
(287, 2, 'Kabupaten Klungkung', '-8.727807', '115.544423'),
(288, 29, 'Kabupaten Minahasa Utara', '1.532797', '124.994751'),
(289, 22, 'Kabupaten Sumba Tengah', '-9.487923', '119.696268'),
(291, 27, 'Kabupaten Luwu Timur', '-2.582552', '121.171039'),
(292, 31, 'Kabupaten Ogan Komering Ulu Timur', '-3.856793', '104.752094'),
(293, 21, 'Kabupaten Sumbawa Barat', '-8.929291', '116.891034'),
(294, 17, 'Kota Tanjungpinang', '0.918550', '104.466507'),
(295, 9, 'Kabupaten Bojonegoro', '-7.317463', '111.761466'),
(296, 19, 'Kabupaten Buru Selatan', '-3.727397', '126.695722'),
(297, 1, 'Kabupaten Aceh Barat', '4.454274', '96.152699'),
(298, 1, 'Kabupaten Aceh Singkil', '2.358946', '97.872160'),
(299, 30, 'Kabupaten Agam', '-0.220939', '100.170326'),
(300, 23, 'Kabupaten Nduga', '-4.406950', '138.239353'),
(301, 29, 'Kabupaten Bolaang Mongondow Utara', '0.907036', '123.265731'),
(302, 22, 'Kabupaten Belu', '-9.153898', '124.906551'),
(303, 38, 'Kabupaten Bangka Tengah', '-2.400782', '106.205148'),
(304, 22, 'Kabupaten Malaka', '-9.530859', '124.906551'),
(305, 28, 'Kabupaten Buol', '0.969545', '121.354163'),
(306, 3, 'Kabupaten Pandeglang', '-6.748271', '105.688179'),
(307, 5, 'Kabupaten Bone Bolango', '0.565789', '123.348615'),
(308, 20, 'Kota Ternate', '0.771031', '127.369518'),
(309, 27, 'Kabupaten Gowa', '-5.203994', '119.457607'),
(310, 15, 'Kota Tarakan', '3.327360', '117.578505'),
(311, 30, 'Kota Tanah Datar', '0.521698', '101.444562'),
(312, 12, 'Kabupaten Barito Kuala', '-3.071474', '114.666794'),
(313, 31, 'Kabupaten Rejang Lebong', '-3.454815', '102.667557'),
(314, 2, 'Kabupaten Jembrana', '-8.323344', '114.666794'),
(315, 17, 'Kabupaten Bintan', '1.061917', '104.518921'),
(316, 8, 'Kabupaten Bandung', '-7.134070', '107.621532'),
(317, 8, 'Kabupaten Purwakarta', '-6.564924', '107.432196'),
(318, 27, 'Kabupaten Musi Banyuasin', '-2.544203', '103.728917'),
(319, 14, 'Kabupaten Mahakam Ulu', '0.961668', '114.714292'),
(320, 15, 'Kabupaten Nunukan', '4.080965', '116.608165'),
(321, 27, 'Kabupaten Maros', '-5.054914', '119.696268'),
(322, 19, 'Kota Ambon', '-3.655393', '128.190772'),
(323, 24, 'Kabupaten Manokwari Selatan', '-0.913511', '134.000867'),
(324, 24, 'Kabupaten Maybrat', '-1.297098', '132.315099'),
(325, 23, 'Kabupaten Nabire', '-3.509546', '135.752098'),
(326, 6, 'Jakarta Timur', '-6.225014', '106.900447'),
(327, 38, 'Kota Pangkal Pinang', '-2.131627', '106.116930'),
(328, 4, 'Kabupaten Bengkulu Tengah', '-3.696232', '102.392214'),
(329, 5, 'Kabupaten Pohuwato', '0.705528', '121.719546'),
(330, 8, 'Kabupaten Kuningan Jawa Barat', '-7.013805', '108.570064'),
(331, 8, 'Kabupaten Cianjur', '-7.357977', '107.195720'),
(332, 8, 'Kabupaten Garut', '-6.305891', '106.378758'),
(333, 8, 'Kabupaten Subang', '-6.348762', '107.763621'),
(334, 8, 'Kota Sukabumi', '-6.927736', '106.929958'),
(335, 8, 'Kota Tasikmalaya', '-7.350581', '108.217163'),
(336, 9, 'Kabupaten Pemalang', '-7.059942', '109.425911'),
(337, 10, 'Kabupaten Bangkalan', '-7.038375', '112.913669'),
(338, 10, 'Kabupaten Pamekasan', '-7.105086', '113.525232');

-- --------------------------------------------------------

--
-- Table structure for table `irena_sbsn_dpp`
--

CREATE TABLE `irena_sbsn_dpp` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `aktif` int(1) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_sbsn_dpp`
--

INSERT INTO `irena_sbsn_dpp` (`id`, `nama`, `keterangan`, `aktif`, `update_by`, `update_date`) VALUES
(1, '2013', NULL, 1, 1, '2017-11-27 17:15:24'),
(2, '2014', NULL, 1, 1, '2017-11-27 17:15:24'),
(3, '2015', NULL, 1, 1, '2017-11-27 17:15:24'),
(4, '2016', NULL, 1, 1, '2017-11-27 17:15:24'),
(5, '2017', NULL, 1, 1, '2017-11-27 17:15:24'),
(6, '2018', NULL, 1, 1, '2017-11-27 17:15:24'),
(7, '2019', NULL, 0, 1, '2017-11-27 17:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `irena_sbsn_kategori_proyek`
--

CREATE TABLE `irena_sbsn_kategori_proyek` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `aktif` int(1) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_sbsn_kategori_proyek`
--

INSERT INTO `irena_sbsn_kategori_proyek` (`id`, `nama`, `keterangan`, `aktif`, `update_by`, `update_date`) VALUES
(1, 'Pembangunan Revitalisasi dan Pengembangan Asrama Haji', NULL, 1, 1, '2017-11-27 17:38:08'),
(2, 'Pembangunan Gedung Balia Nikah dan Manasik Haji', NULL, 1, 1, '2017-11-27 17:38:08'),
(3, 'Peningkatan Akses dan Mutu Pendidikan Madrasah', NULL, 1, 1, '2017-11-27 17:38:08'),
(4, 'Peningkatan Mutu Sarana dan Prasarana Perguruan Tinggi Keagamaan Islam', NULL, 1, 1, '2017-11-27 17:38:08'),
(5, 'Pemeliharaan Jalan dan Jembatan', NULL, 1, 1, '2017-11-27 17:38:08'),
(6, 'Pembangunan Jalan dan Jembatan', NULL, 1, 1, '2017-11-27 17:38:08'),
(7, 'Pengembangan dan Rehabilitasi Jaringan Irigasi Permukaan, Rawa, dan Tambah', NULL, 1, 1, '2017-11-27 17:38:08'),
(8, 'Pengendalian Banjir, Lahar, Pengelolaan Drainase Utama Perkotaan, dan Pengamanan Pantai', NULL, 1, 1, '2017-11-27 17:38:08'),
(9, 'Pengelolaan Bendungan, Danau, dan Bangunan Penampung Air Lainnya', NULL, 1, 1, '2017-11-27 17:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `irena_sbsn_on_going`
--

CREATE TABLE `irena_sbsn_on_going` (
  `id` int(11) NOT NULL,
  `id_dpp` int(11) DEFAULT NULL,
  `id_eselon_satu` int(11) DEFAULT NULL,
  `nilai_pagu` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_sbsn_proyek`
--

CREATE TABLE `irena_sbsn_proyek` (
  `id` int(11) NOT NULL,
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
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_sbsn_proyek`
--

INSERT INTO `irena_sbsn_proyek` (`id`, `id_instansi_eselon_satu`, `id_dpp`, `id_kategori_proyek`, `judul`, `nilai`, `output`, `latar_belakang`, `tujuan`, `ruang_lingkup`, `nilai_admin`, `nilai_admin_ket`, `nilai_admin_id`, `nilai_admin_date`, `nilai_layak`, `nilai_layak_ket`, `nilai_layak_id`, `nilai_layak_date`, `masuk_dpp`, `masuk_dpp_ket`, `masuk_dpp_id`, `masuk_dpp_date`, `single_multi`, `update_by`, `update_date`) VALUES
(28, 8, 6, 4, 'Pengembangan Laboratorium Standar Nasional Satuan Ukuran (SNSU)', 50000000000, '-', '-', '-', '-', '1', '-', 19, '2017-11-16 10:57:24', '0', '-', 1, '2017-11-15 17:48:27', '0', '-', 1, '2017-11-15 17:48:27', '0', 1, '2017-11-15 17:48:27');

-- --------------------------------------------------------

--
-- Table structure for table `irena_sbsn_proyek_dok`
--

CREATE TABLE `irena_sbsn_proyek_dok` (
  `id` int(11) NOT NULL,
  `id_proyek` int(11) DEFAULT NULL,
  `id_proyek_dok_kategori` int(11) DEFAULT NULL,
  `id_arsip` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_sbsn_proyek_dok`
--

INSERT INTO `irena_sbsn_proyek_dok` (`id`, `id_proyek`, `id_proyek_dok_kategori`, `id_arsip`, `nama`, `deskripsi`, `update_by`, `update_date`) VALUES
(1, 27, 1, 76, '-', '-', 1, '2017-11-13 10:32:00'),
(2, 27, 2, 62, 'Nota DInas Deputi SDM', '-', 1, '2017-11-13 10:36:38'),
(3, 24, 1, 76, 'Surat Sesmen Agama kepada Deputi Pendanaan', '-', 1, '2017-11-13 11:00:28'),
(4, 28, 1, 102, 'Surat Kepala BSN', '-', 1, '2017-11-15 17:49:03'),
(5, 28, 1, 102, 'Surat Usulan', 'Usulan Baru 2018', 1, '2017-11-16 16:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `irena_sbsn_proyek_dok_kategori`
--

CREATE TABLE `irena_sbsn_proyek_dok_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `order` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_sbsn_proyek_dok_kategori`
--

INSERT INTO `irena_sbsn_proyek_dok_kategori` (`id`, `nama`, `order`) VALUES
(1, 'Pengajuan Usulan', 1),
(2, 'Penilaian Teknis', 2),
(3, 'DPP', 3);

-- --------------------------------------------------------

--
-- Table structure for table `irena_sbsn_proyek_dpp`
--

CREATE TABLE `irena_sbsn_proyek_dpp` (
  `id` int(11) NOT NULL,
  `id_proyek` int(11) DEFAULT NULL,
  `id_dpp` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_sbsn_proyek_log`
--

CREATE TABLE `irena_sbsn_proyek_log` (
  `id` int(11) NOT NULL,
  `id_proyek` int(11) DEFAULT NULL,
  `id_arsip` int(11) DEFAULT NULL,
  `kegiatan` varchar(255) DEFAULT NULL,
  `ket` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_sbsn_proyek_syarat`
--

CREATE TABLE `irena_sbsn_proyek_syarat` (
  `id` int(11) NOT NULL,
  `id_proyek` int(11) DEFAULT NULL,
  `kat` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `berkas` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_sbsn_proyek_syarat`
--

INSERT INTO `irena_sbsn_proyek_syarat` (`id`, `id_proyek`, `kat`, `nama`, `ket`, `berkas`, `update_by`, `update_date`) VALUES
(1, 27, 'DIPK', 'DIPK Proye', '-', '27-Jwb.pdf', 1, '2017-11-14 14:56:56'),
(2, 24, 'asdsa', 'asdasasda', 'asdasda', '24-Jwb1.pdf', 1, '2017-11-14 19:08:48'),
(3, 28, 'av', 'abc', 'abc', '28-Agoda_Confirmed_Booking_at_The_Bunk_by_Olive.pdf', 20, '2018-01-16 04:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `irena_sbsn_realisasi`
--

CREATE TABLE `irena_sbsn_realisasi` (
  `id` int(11) NOT NULL,
  `id_dpp` int(11) DEFAULT NULL,
  `id_satker` int(11) DEFAULT NULL,
  `nilai` double DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_sbsn_realisasi`
--

INSERT INTO `irena_sbsn_realisasi` (`id`, `id_dpp`, `id_satker`, `nilai`, `update_by`, `update_date`) VALUES
(1, 4, 1, 1750000000000, 1, '2017-11-15 19:51:29'),
(2, 4, 2, 523140000000, 1, '2017-11-15 19:35:03'),
(4, 3, 3, 1000000000, 1, '2017-11-16 16:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `irena_sbsn_realisasi_penyerapan`
--

CREATE TABLE `irena_sbsn_realisasi_penyerapan` (
  `id` int(11) NOT NULL,
  `id_realisasi` int(11) DEFAULT NULL,
  `triwulan` int(11) DEFAULT NULL,
  `penyerapan` double DEFAULT NULL,
  `progres_fisik` double DEFAULT NULL,
  `permasalahan` text,
  `tindak_lanjut` text,
  `pihak_terlibat` text,
  `catatan` text,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_sbsn_realisasi_penyerapan`
--

INSERT INTO `irena_sbsn_realisasi_penyerapan` (`id`, `id_realisasi`, `triwulan`, `penyerapan`, `progres_fisik`, `permasalahan`, `tindak_lanjut`, `pihak_terlibat`, `catatan`, `update_by`, `update_date`) VALUES
(2, 1, 2, 1000000000, 10, 'tak ada masaah', '-', '-', '-', 1, '2017-11-15 20:56:29'),
(7, 1, 1, 0, 0, '-', '-', '-', '-', 1, '2017-11-16 09:05:17'),
(8, 4, 1, 0, 0, '-', '-', '-', '-', 1, '2017-11-16 16:01:55'),
(9, 4, 2, 5000000, 30, '-', '-', '-', '-', 1, '2017-11-16 16:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `irena_sbsn_satker`
--

CREATE TABLE `irena_sbsn_satker` (
  `id` int(11) NOT NULL,
  `id_instansi` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_sbsn_satker`
--

INSERT INTO `irena_sbsn_satker` (`id`, `id_instansi`, `nama`, `keterangan`) VALUES
(1, 1, 'Balai Teknik Perkeretaapian Wilayah Jakarta dan Banten', NULL),
(2, 1, 'Balai Teknik Perkeretaapian Wilayah Sumatera Bagian Selatan', NULL),
(3, 1, 'Balai Teknik Perkeretaapian Wilayah Sumatera Bagian Utara', NULL),
(4, 1, 'Balai Teknik Perkeretaapian Wilayah Jawa Bagian Tengah', NULL),
(5, 1, 'Balai Teknik Perkeretaapian Wilayah Jawa Bagian Timur', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `irena_sektor`
--

CREATE TABLE `irena_sektor` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_sektor`
--

INSERT INTO `irena_sektor` (`id`, `nama`) VALUES
(1, 'Air Minum Sanitasi Penanganan Kumuh'),
(2, 'Kereta Api'),
(3, 'Irigasi Waduk Air Baku'),
(4, 'Jalan'),
(5, 'Energi'),
(6, 'Transportasi Laut'),
(7, 'Kesehatan'),
(8, 'Pertanian'),
(9, 'Pendidikan'),
(10, 'Penyediaan Perumahan'),
(11, 'Komunikasi Dan Informatika'),
(12, 'Pariwisata'),
(13, 'Pertahanan Keamanan'),
(14, 'Lain-Lain');

-- --------------------------------------------------------

--
-- Table structure for table `irena_status_lembaga`
--

CREATE TABLE `irena_status_lembaga` (
  `id` int(11) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_status_lembaga`
--

INSERT INTO `irena_status_lembaga` (`id`, `status`) VALUES
(16, 'Penjajakan dari Negara/Lembaga Donor'),
(17, 'Pipeline/ rolling plan'),
(18, 'Identifikasi dalam pra pertemuan bilateral/multilateral'),
(19, 'Surat Penawaran/ Pernyataan Minat'),
(20, 'Pre-request dari Bappenas ke Negara Donor'),
(21, 'Permohonan Alokasi KE (Kredit Ekspor)'),
(22, 'MOD (Minutes Of Discussion) persiapan'),
(23, 'Pra FS (Penyusunan FS)'),
(24, 'Kontrak sebagai Dasar LA'),
(25, 'Persetujuan Alokasi KE (Kredit Ekspor)'),
(26, 'Terbit Daftar Kegiatan'),
(27, 'Penandatanganan LA'),
(28, 'Disepakati dalam Bilateral Tahunan'),
(29, 'MOD (Minutes Of Discussion) kelanjutan project'),
(30, 'Formal Request ke Negara/Lembaga Donor'),
(31, 'Belum Proses');

-- --------------------------------------------------------

--
-- Table structure for table `irena_status_lender_pln`
--

CREATE TABLE `irena_status_lender_pln` (
  `id` int(11) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_status_lender_pln`
--

INSERT INTO `irena_status_lender_pln` (`id`, `status`) VALUES
(1, 'Fact Finding'),
(2, 'Need Survey'),
(3, 'Review Project Proposal'),
(5, 'Project Preparation'),
(6, 'MOD (Minutes Of Discussion) persiapan'),
(7, 'Pre Appraisal'),
(8, 'Preliminary Assesment (Penyusunan RC)'),
(9, 'Agency Contract for Consulting'),
(10, 'Disepakati dalam Bilateral Tahunan'),
(11, 'MOD (Minutes Of Discussion) kelanjutan project'),
(12, 'Appraisal'),
(13, 'FS oleh Donor'),
(14, 'Belum Proses');

-- --------------------------------------------------------

--
-- Table structure for table `irena_status_umum`
--

CREATE TABLE `irena_status_umum` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_status_umum`
--

INSERT INTO `irena_status_umum` (`id`, `nama`) VALUES
(1, 'Belum Proses'),
(2, 'Dalam Proses (Sudah ada RC)'),
(3, 'Dalam Proses (Penyusunan RC/FS)'),
(4, 'Sudah Masuk Green Book');

-- --------------------------------------------------------

--
-- Table structure for table `irena_user`
--

CREATE TABLE `irena_user` (
  `id` int(11) NOT NULL,
  `id_user_level` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gelar_depan` varchar(255) DEFAULT NULL,
  `nama_depan` varchar(255) DEFAULT NULL,
  `nama_belakang` varchar(255) DEFAULT NULL,
  `nama_panggilan` varchar(255) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `no_hp` varchar(255) DEFAULT NULL,
  `aktif` int(1) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_user`
--

INSERT INTO `irena_user` (`id`, `id_user_level`, `email`, `password`, `gelar_depan`, `nama_depan`, `nama_belakang`, `nama_panggilan`, `tgl_lahir`, `foto`, `no_hp`, `aktif`, `update_by`, `update_date`) VALUES
(1, 1, 'f.manangin@gmail.com', '23d460b577e311805671e0d71c5b6fa0', 'Bapak', 'Firman', 'Perangin-angin', 'Firman', '1985-04-23', '1-firman.jpg', '081383339841', 1, 1, '2017-12-04 18:19:04'),
(2, 2, 'aryati@bappenas.go.id', '21232f297a57a5a743894a0e4a801fc3', 'Ibu', 'Tati', 'Lies Aryati', 'Tati', '1961-04-04', '2-no-image-users1.png', NULL, 1, 1, '2017-11-28 12:48:57'),
(3, 3, 'riza.hamzah@bappenas.go.id', '4f033a0a2bf2fe0b68800a3079545cd1', 'Ibu', 'Riza', 'Hamzah', 'Icha', '1971-05-21', 'no-image-user.png', '0818799375', 1, 3, '2017-12-04 11:41:15'),
(4, 2, 'm_ali@bappenas.go.id', '21232f297a57a5a743894a0e4a801fc3', 'Bapak', 'Mukhtiali', '.', 'Ali', '1972-05-01', 'no-image-user.png', '4', 1, 1, '2017-11-30 11:11:04'),
(5, 4, 'sugeng.hendarto@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Bapak', 'Sugeng', 'Wahyu Hendarto', 'Sugeng', '1975-03-01', 'no-image-user.png', NULL, 1, 1, '2017-11-28 12:48:57'),
(6, 3, 'beby.hanzian@bappenas.go.id', '21232f297a57a5a743894a0e4a801fc3', 'Bapak', 'Beby', 'Hanzian', 'Beby', '1987-06-11', '6-AAA-min-min-min.JPG', '085647811130', 1, 1, '2017-12-12 08:23:17'),
(7, 3, 'wijayantiyustina@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Ibu', 'Yustina', 'Wijayanti', 'Yustina', '2017-12-04', 'no-image-user.png', '0', 1, 1, '2017-12-04 14:05:41'),
(8, 2, 'tien.iswartini@bappenas.go.id', '4d45deb54e67a87e3680f491afe587a9', 'Ibu', 'Tien', 'Iswartini', 'Tien', '1965-02-18', 'no-image-user.png', NULL, 1, 8, '2017-12-19 04:06:21'),
(9, 2, 'dadan.kusdarsana@bappenas.go.id', '21232f297a57a5a743894a0e4a801fc3', 'Bapak', 'Dadan', 'Kusdarsana', 'Dadan', '1964-01-06', 'no-image-user.png', NULL, 1, 1, '2017-11-28 12:48:57'),
(10, 2, 'sutrisnodiano82@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Bapak', 'Ino', 'Sutrisno', 'Ino', '1982-09-15', 'no-image-user.png', '087889272115', 1, 11, '2017-12-05 06:22:17'),
(11, 1, 'nurhadi0303@gmail.com', 'bb45a4c63866066b8548ee9811361cbf', 'Bapak', 'Adi', 'Nurhadi', 'Adi', '2012-02-29', '11-adi.jpg', '081283034783', 1, 11, '2017-12-04 11:11:23'),
(12, 3, 'eftinulakurnia@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Ibu', 'Eftin', 'Ula Kurnia', 'Ula', '1995-11-18', 'ula.jpg', NULL, 1, 1, '2017-11-28 12:48:57'),
(13, 4, 'sahnaselira@gmail.com', '4828566b629aacd3d327841a9472cfd5', 'Ibu', 'Sahna', 'Putri Aselira', 'Sahna', '1995-11-17', 'sahna.jpg', NULL, 1, 13, '2017-12-04 13:26:33'),
(14, 2, 'vincent.simandjorang@gmail.com', '6d2e1c6dd505a108cc7e19a46aa30a8a', 'Bapak', 'Bonataon', 'M. T. V. Simandjorang', 'Vincent', '2018-01-03', 'no-image-user.png', '0', 0, 20, '2018-01-03 05:05:15'),
(15, 2, 'pristipanggabean@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Ibu', 'Pristi', 'N. K. Panggabean', 'Pristi', NULL, 'no-image-user.png', NULL, 1, 1, '2017-11-28 12:48:57'),
(16, 2, 'kristianto79@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Bapak', 'Kristianto', 'Wibowo', 'Kris', NULL, 'no-image-user.png', NULL, 1, 1, '2017-11-28 12:48:57'),
(17, 3, 'muhamadfaisal02@gmail.com', '22642275bc6da4629a23b70ce58452bd', 'Bapak', 'Muhamad', 'Faisal Siddiq', 'Faisal', NULL, 'faisal.jpg', NULL, 1, 17, '2017-12-04 10:04:55'),
(18, 4, 'derryafiandri.da@gmail.com', 'dfff84fecadede78f49993f63299ca31', 'Bapak', 'Derry', 'Afriandri', 'Derry', NULL, '18-1x1.png', NULL, 1, 18, '2017-12-04 10:18:22'),
(19, 4, 'raharjayareezali@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Bapak', 'Reezali', 'Raharjaya', 'Zali', '1995-11-16', 'zali.jpg', NULL, 1, 1, '2017-11-28 12:48:57'),
(20, 1, 'zahaulia@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Ibu', 'Faizah ', 'Aulia Rahmah', 'Fai', NULL, 'no-image-user.png', NULL, 1, 1, '2017-11-28 12:48:57'),
(22, 1, 'teniaimee2014@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Ibu', 'Teni', 'Widuriyanti', 'Teni', '2017-08-18', '22-firman.jpg', '08128603944', 1, 1, '2017-11-29 12:48:49'),
(23, 5, 'jajanscoop@gmail.com', 'admin', 'Mbak', 'Aulia', 'Faizah', 'aulia', NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `irena_user_level`
--

CREATE TABLE `irena_user_level` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_user_level`
--

INSERT INTO `irena_user_level` (`id`, `nama`, `ket`) VALUES
(1, 'Tim Administrator', 'Level paling atas mampu '),
(2, 'Tim Sekretariat', 'input data'),
(3, 'Tim PHLN', NULL),
(4, 'Tim SBSN', NULL),
(5, 'kasbudit', 'tim kasubdit\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `irena_user_log`
--

CREATE TABLE `irena_user_log` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `on_off` bit(1) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_user_log`
--

INSERT INTO `irena_user_log` (`id`, `id_user`, `on_off`, `update_date`) VALUES
(1, 1, b'1', '2017-09-19 10:19:27'),
(2, 1, b'1', '2017-09-19 10:21:27'),
(3, 1, b'1', '2017-09-19 10:23:01'),
(5, 1, b'1', '2017-09-19 10:23:43'),
(7, 1, b'1', '2017-09-19 10:25:15'),
(8, 1, b'0', '2017-09-19 10:25:40'),
(9, 1, b'1', '2017-09-19 10:26:41'),
(10, 1, b'1', '2017-09-19 13:07:42'),
(11, 1, b'1', '2017-09-25 12:39:06'),
(12, 1, b'1', '2017-09-26 09:34:06'),
(13, 1, b'1', '2017-09-26 11:52:25'),
(14, 1, b'1', '2017-09-26 11:53:53'),
(15, 1, b'1', '2017-09-26 11:58:49'),
(16, 1, b'1', '2017-09-26 12:25:46'),
(17, 1, b'1', '2017-09-27 04:30:10'),
(18, 1, b'1', '2017-09-27 04:46:21'),
(19, 1, b'1', '2017-09-27 04:47:12'),
(20, 1, b'1', '2017-09-27 04:48:15'),
(21, 1, b'1', '2017-09-27 04:48:34'),
(22, 1, b'1', '2017-09-27 04:48:50'),
(23, 1, b'1', '2017-09-27 04:51:18'),
(24, 1, b'1', '2017-09-27 04:53:55'),
(25, 1, b'1', '2017-09-27 04:54:06'),
(26, 1, b'1', '2017-09-27 04:56:22'),
(27, 1, b'1', '2017-09-27 05:02:16'),
(28, 1, b'1', '2017-09-27 05:02:23'),
(29, 1, b'1', '2017-09-27 05:06:32'),
(30, 1, b'1', '2017-09-27 05:06:36'),
(31, 1, b'1', '2017-09-27 05:07:50'),
(32, 1, b'1', '2017-09-27 05:58:54'),
(33, 1, b'0', '2017-09-27 06:12:02'),
(34, 1, b'1', '2017-09-27 06:12:20'),
(35, 1, b'1', '2017-09-27 06:12:53'),
(36, 1, b'1', '2017-09-27 06:19:13'),
(37, NULL, b'0', '2017-09-28 06:44:29'),
(38, 1, b'1', '2017-09-28 06:44:39'),
(39, 1, b'1', '2017-09-28 07:00:18'),
(40, 1, b'1', '2017-09-28 08:25:12'),
(41, 1, b'1', '2017-09-29 08:52:48'),
(42, 1, b'1', '2017-09-29 13:35:04'),
(43, 1, b'1', '2017-10-02 05:16:09'),
(44, 1, b'1', '2017-10-02 13:10:01'),
(45, 1, b'1', '2017-10-03 09:29:59'),
(46, 1, b'1', '2017-10-04 04:24:35'),
(47, 1, b'1', '2017-10-04 04:29:56'),
(48, 1, b'1', '2017-10-04 04:45:04'),
(49, 1, b'1', '2017-10-04 06:07:29'),
(50, 1, b'1', '2017-10-10 06:23:40'),
(51, 1, b'1', '2017-10-12 04:48:31'),
(52, 1, b'0', '2017-10-12 08:31:17'),
(53, NULL, b'0', '2017-10-12 08:31:23'),
(54, 1, b'1', '2017-10-12 08:31:33'),
(55, 1, b'1', '2017-10-12 08:45:37'),
(56, 1, b'1', '2017-10-12 10:47:22'),
(57, 1, b'1', '2017-10-12 11:18:47'),
(58, NULL, b'0', '2017-10-12 12:15:45'),
(59, 1, b'1', '2017-10-12 12:17:17'),
(60, 1, b'1', '2017-10-13 04:20:31'),
(61, 1, b'1', '2017-10-13 06:40:47'),
(62, 1, b'1', '2017-10-13 11:58:01'),
(63, 1, b'1', '2017-10-13 16:00:40'),
(64, 1, b'1', '2017-10-13 19:26:24'),
(65, 1, b'1', '2017-10-13 19:54:55'),
(66, 1, b'1', '2017-10-14 02:36:28'),
(67, 1, b'1', '2017-10-17 04:07:41'),
(68, 1, b'1', '2017-10-17 05:45:59'),
(69, 1, b'1', '2017-10-17 10:30:07'),
(70, 1, b'1', '2017-10-18 07:27:16'),
(71, 1, b'1', '2017-10-18 10:51:47'),
(72, 1, b'1', '2017-10-18 14:44:59'),
(73, 1, b'1', '2017-10-19 05:21:04'),
(74, 1, b'1', '2017-10-19 05:27:31'),
(75, 1, b'1', '2017-10-19 13:26:35'),
(76, 1, b'1', '2017-10-19 14:24:39'),
(77, 1, b'1', '2017-10-20 04:11:41'),
(78, 1, b'1', '2017-10-20 05:12:10'),
(79, 1, b'1', '2017-10-20 11:52:39'),
(80, 2, b'1', '2017-10-20 14:44:47'),
(81, 1, b'1', '2017-10-21 06:02:13'),
(82, 1, b'1', '2017-10-21 11:13:13'),
(83, 1, b'1', '2017-10-26 14:00:01'),
(84, 1, b'1', '2017-10-27 14:31:25'),
(85, 1, b'1', '2017-10-28 14:30:16'),
(86, 1, b'1', '2017-10-29 10:22:31'),
(87, 1, b'1', '2017-10-30 00:45:55'),
(88, 1, b'1', '2017-10-30 09:08:17'),
(89, 1, b'0', '2017-10-30 14:12:21'),
(90, 1, b'1', '2017-10-30 14:44:51'),
(91, 1, b'1', '2017-10-30 18:25:51'),
(92, 1, b'1', '2017-10-31 12:32:01'),
(93, 1, b'1', '2017-11-01 15:52:02'),
(94, 1, b'0', '2017-11-01 15:52:11'),
(95, NULL, b'0', '2017-11-01 15:53:13'),
(96, 1, b'1', '2017-11-01 15:53:56'),
(97, 1, b'1', '2017-11-02 09:04:59'),
(98, 1, b'1', '2017-11-03 09:05:02'),
(99, 1, b'1', '2017-11-03 18:18:27'),
(100, 1, b'1', '2017-11-05 18:39:54'),
(101, 1, b'1', '2017-11-06 09:19:55'),
(102, 1, b'1', '2017-11-06 23:13:27'),
(103, 1, b'1', '2017-11-07 09:06:20'),
(104, 1, b'0', '2017-11-07 10:07:28'),
(105, 11, b'1', '2017-11-07 10:09:07'),
(106, 1, b'1', '2017-11-07 10:18:18'),
(107, 11, b'0', '2017-11-07 16:18:52'),
(108, 1, b'1', '2017-11-07 16:19:00'),
(109, 1, b'1', '2017-11-08 14:57:48'),
(110, 1, b'1', '2017-11-08 17:45:36'),
(111, 1, b'1', '2017-11-10 09:45:03'),
(112, 1, b'1', '2017-11-10 13:01:49'),
(113, 1, b'1', '2017-11-10 13:26:32'),
(114, 1, b'1', '2017-11-10 14:30:18'),
(115, 1, b'1', '2017-11-11 17:20:18'),
(116, 1, b'1', '2017-11-12 10:08:06'),
(117, 1, b'1', '2017-11-12 14:02:03'),
(118, 1, b'1', '2017-11-12 21:32:53'),
(119, 1, b'1', '2017-11-12 22:02:44'),
(120, 1, b'1', '2017-11-13 09:21:23'),
(121, 1, b'0', '2017-11-13 13:50:59'),
(122, 1, b'1', '2017-11-13 13:51:09'),
(123, 1, b'0', '2017-11-13 13:53:02'),
(124, 13, b'1', '2017-11-13 13:53:09'),
(125, 13, b'0', '2017-11-13 13:53:39'),
(126, 1, b'1', '2017-11-13 13:53:45'),
(127, 1, b'0', '2017-11-13 14:22:04'),
(128, 1, b'1', '2017-11-13 14:22:11'),
(129, 1, b'0', '2017-11-13 14:24:58'),
(130, 1, b'1', '2017-11-13 14:25:18'),
(131, 1, b'0', '2017-11-13 14:38:45'),
(132, 1, b'1', '2017-11-13 14:38:57'),
(133, NULL, b'0', '2017-11-14 10:04:34'),
(134, 1, b'1', '2017-11-14 10:04:41'),
(135, 1, b'1', '2017-11-14 18:59:35'),
(136, 1, b'1', '2017-11-14 22:22:15'),
(137, 1, b'1', '2017-11-15 09:14:34'),
(138, 1, b'0', '2017-11-15 14:22:50'),
(139, 1, b'1', '2017-11-15 14:22:56'),
(140, 1, b'0', '2017-11-15 14:28:19'),
(141, 1, b'1', '2017-11-15 14:28:26'),
(142, 1, b'0', '2017-11-15 14:52:07'),
(143, 1, b'1', '2017-11-15 14:52:16'),
(144, 1, b'0', '2017-11-15 17:13:53'),
(145, 1, b'1', '2017-11-15 17:14:00'),
(146, 1, b'1', '2017-11-15 17:20:22'),
(147, 1, b'0', '2017-11-15 17:40:11'),
(148, 1, b'1', '2017-11-15 17:40:18'),
(149, 1, b'0', '2017-11-15 17:41:45'),
(150, 1, b'1', '2017-11-15 17:41:50'),
(151, 1, b'0', '2017-11-15 17:42:11'),
(152, 1, b'1', '2017-11-15 17:42:15'),
(153, 1, b'1', '2017-11-15 17:54:58'),
(154, 20, b'1', '2017-11-15 17:55:51'),
(155, 1, b'1', '2017-11-15 18:57:56'),
(156, 1, b'1', '2017-11-16 09:04:08'),
(157, 1, b'1', '2017-11-16 09:04:39'),
(158, 11, b'1', '2017-11-16 09:26:39'),
(159, 17, b'1', '2017-11-16 10:25:48'),
(160, 12, b'1', '2017-11-16 10:26:55'),
(161, 1, b'1', '2017-11-16 10:27:18'),
(162, 19, b'1', '2017-11-16 10:51:06'),
(163, 20, b'1', '2017-11-16 11:14:47'),
(164, 1, b'1', '2017-11-16 13:22:17'),
(165, 1, b'1', '2017-11-16 14:36:56'),
(166, 1, b'0', '2017-11-16 14:45:58'),
(167, 1, b'1', '2017-11-16 14:46:05'),
(168, 1, b'0', '2017-11-16 14:46:10'),
(169, 20, b'1', '2017-11-16 15:01:21'),
(170, 1, b'1', '2017-11-16 15:27:28'),
(171, 4, b'1', '2017-11-16 15:27:49'),
(172, 12, b'1', '2017-11-16 15:28:39'),
(173, 1, b'0', '2017-11-16 15:29:54'),
(174, 3, b'1', '2017-11-16 15:30:08'),
(175, 3, b'0', '2017-11-16 15:50:53'),
(176, 1, b'1', '2017-11-16 15:51:07'),
(177, 1, b'0', '2017-11-16 16:27:03'),
(178, 1, b'0', '2017-11-16 16:35:36'),
(179, 1, b'1', '2017-11-26 11:21:05'),
(180, 1, b'0', '2017-11-26 17:35:48'),
(181, NULL, b'0', '2017-11-26 17:35:57'),
(182, 2, b'1', '2017-11-26 17:36:06'),
(183, 2, b'0', '2017-11-26 21:49:57'),
(184, 1, b'1', '2017-11-26 21:50:04'),
(185, 1, b'0', '2017-11-26 22:22:33'),
(186, NULL, b'0', '2017-11-26 22:22:40'),
(187, NULL, b'0', '2017-11-26 22:22:50'),
(188, 1, b'1', '2017-11-26 22:23:29'),
(189, 1, b'0', '2017-11-26 22:23:46'),
(190, 1, b'1', '2017-11-26 22:23:53'),
(191, 1, b'1', '2017-11-27 09:08:24'),
(192, 1, b'1', '2017-11-27 11:55:09'),
(193, 1, b'0', '2017-11-27 12:01:16'),
(194, 1, b'1', '2017-11-27 12:01:22'),
(195, 1, b'1', '2017-11-28 11:30:19'),
(196, 1, b'1', '2017-11-29 05:31:20'),
(197, 1, b'0', '2017-11-29 07:57:31'),
(198, NULL, b'0', '2017-11-29 07:57:40'),
(199, 22, b'1', '2017-11-29 07:57:50'),
(200, 22, b'0', '2017-11-29 07:58:13'),
(201, 1, b'1', '2017-11-29 07:58:20'),
(202, 1, b'1', '2017-11-29 08:15:54'),
(203, 1, b'0', '2017-11-29 08:16:49'),
(204, 22, b'1', '2017-11-29 08:16:59'),
(205, 1, b'0', '2017-11-29 08:48:26'),
(206, 3, b'1', '2017-11-29 08:48:36'),
(207, 1, b'1', '2017-11-29 09:46:25'),
(208, 1, b'0', '2017-11-29 09:49:05'),
(209, 3, b'1', '2017-11-29 09:49:19'),
(210, 3, b'0', '2017-11-29 09:52:02'),
(211, 1, b'1', '2017-11-29 09:52:11'),
(212, 1, b'0', '2017-11-29 14:23:51'),
(213, 3, b'1', '2017-11-29 14:24:00'),
(214, 1, b'1', '2017-11-29 14:49:44'),
(215, 1, b'1', '2017-11-29 15:51:52'),
(216, 1, b'1', '2017-11-29 15:58:48'),
(217, 1, b'0', '2017-11-29 19:32:35'),
(218, 1, b'1', '2017-11-29 19:34:31'),
(219, 1, b'0', '2017-11-29 19:45:34'),
(220, 1, b'1', '2017-11-29 19:45:40'),
(221, 1, b'1', '2017-11-29 20:23:10'),
(222, 1, b'0', '2017-11-29 20:30:30'),
(223, 1, b'1', '2017-11-29 20:32:03'),
(224, 1, b'1', '2017-11-29 23:21:06'),
(225, 1, b'0', '2017-11-29 23:27:10'),
(226, 1, b'1', '2017-11-29 23:28:58'),
(227, 1, b'1', '2017-11-29 23:34:51'),
(228, 1, b'0', '2017-11-29 23:44:40'),
(229, 1, b'1', '2017-11-30 09:17:57'),
(230, 11, b'1', '2017-11-30 11:55:32'),
(231, 10, b'1', '2017-11-30 12:04:51'),
(232, 1, b'0', '2017-11-30 12:48:29'),
(233, 1, b'1', '2017-11-30 13:03:20'),
(234, 1, b'0', '2017-11-30 13:15:09'),
(235, 1, b'1', '2017-11-30 13:59:51'),
(236, 1, b'0', '2017-11-30 14:56:53'),
(237, 3, b'1', '2017-11-30 14:57:04'),
(238, 3, b'0', '2017-11-30 15:40:37'),
(239, 1, b'1', '2017-11-30 18:06:52'),
(240, 1, b'1', '2017-12-01 09:50:24'),
(241, 1, b'1', '2017-12-01 10:42:06'),
(242, 1, b'1', '2017-12-01 18:01:03'),
(243, 1, b'0', '2017-12-01 18:03:36'),
(244, 1, b'1', '2017-12-04 09:38:34'),
(245, 17, b'1', '2017-12-04 10:03:51'),
(246, 12, b'1', '2017-12-04 10:03:59'),
(247, 19, b'1', '2017-12-04 10:05:04'),
(248, 18, b'1', '2017-12-04 10:12:23'),
(249, 6, b'1', '2017-12-04 10:26:50'),
(250, 5, b'1', '2017-12-04 10:28:38'),
(251, 6, b'0', '2017-12-04 10:41:45'),
(252, 6, b'1', '2017-12-04 10:41:48'),
(253, 1, b'1', '2017-12-04 10:46:04'),
(254, NULL, b'0', '2017-12-04 10:49:23'),
(255, 11, b'1', '2017-12-04 10:49:30'),
(256, 18, b'0', '2017-12-04 11:03:04'),
(257, 18, b'1', '2017-12-04 11:03:12'),
(258, NULL, b'0', '2017-12-04 11:40:09'),
(259, 3, b'1', '2017-12-04 11:40:30'),
(260, 1, b'1', '2017-12-04 12:35:55'),
(261, 11, b'1', '2017-12-04 12:54:15'),
(262, 13, b'1', '2017-12-04 13:19:14'),
(263, 19, b'1', '2017-12-04 13:38:43'),
(264, 16, b'1', '2017-12-04 14:46:54'),
(265, 18, b'1', '2017-12-04 14:54:15'),
(266, 6, b'1', '2017-12-04 15:02:48'),
(267, 1, b'1', '2017-12-04 15:30:39'),
(268, 11, b'1', '2017-12-04 16:16:47'),
(269, 1, b'1', '2017-12-04 18:18:37'),
(270, 1, b'0', '2017-12-04 19:45:02'),
(271, 1, b'1', '2017-12-04 17:13:15'),
(272, 1, b'0', '2017-12-04 17:39:44'),
(273, NULL, b'0', '2017-12-05 01:28:37'),
(274, 17, b'1', '2017-12-05 01:30:23'),
(275, 11, b'1', '2017-12-05 01:36:53'),
(276, 1, b'1', '2017-12-05 01:45:15'),
(277, 4, b'1', '2017-12-05 01:48:17'),
(278, 11, b'1', '2017-12-05 02:12:01'),
(279, NULL, b'0', '2017-12-05 04:59:49'),
(280, NULL, b'0', '2017-12-05 05:00:00'),
(281, NULL, b'0', '2017-12-05 05:00:32'),
(282, NULL, b'0', '2017-12-05 05:00:42'),
(283, NULL, b'0', '2017-12-05 05:00:54'),
(284, NULL, b'0', '2017-12-05 05:02:49'),
(285, NULL, b'0', '2017-12-05 05:06:43'),
(286, 1, b'1', '2017-12-05 05:06:54'),
(287, NULL, b'0', '2017-12-05 05:08:35'),
(288, NULL, b'0', '2017-12-05 05:09:01'),
(289, 11, b'1', '2017-12-05 05:09:47'),
(290, 11, b'0', '2017-12-05 05:09:53'),
(291, NULL, b'0', '2017-12-05 05:10:03'),
(292, NULL, b'0', '2017-12-05 05:13:01'),
(293, 11, b'1', '2017-12-05 05:34:00'),
(294, 11, b'1', '2017-12-05 06:21:41'),
(295, 11, b'1', '2017-12-05 06:21:41'),
(296, 11, b'1', '2017-12-05 06:21:41'),
(297, 11, b'0', '2017-12-05 06:22:23'),
(298, 10, b'1', '2017-12-05 06:22:31'),
(299, 10, b'0', '2017-12-05 06:22:42'),
(300, 11, b'1', '2017-12-05 06:22:53'),
(301, 18, b'1', '2017-12-05 07:25:17'),
(302, 1, b'1', '2017-12-05 09:42:54'),
(303, 11, b'1', '2017-12-05 09:53:47'),
(304, NULL, b'0', '2017-12-05 09:57:18'),
(305, 11, b'1', '2017-12-05 09:58:22'),
(306, 11, b'1', '2017-12-05 12:34:41'),
(307, 1, b'0', '2017-12-05 13:13:05'),
(308, 1, b'1', '2017-12-06 01:25:52'),
(309, 1, b'1', '2017-12-06 03:26:31'),
(310, 11, b'1', '2017-12-06 07:35:04'),
(311, 11, b'1', '2017-12-07 01:53:40'),
(312, NULL, b'0', '2017-12-07 02:48:30'),
(313, 12, b'1', '2017-12-07 02:49:16'),
(314, 13, b'1', '2017-12-07 03:42:12'),
(315, 11, b'1', '2017-12-07 07:28:03'),
(316, 11, b'1', '2017-12-08 01:36:49'),
(317, NULL, b'0', '2017-12-08 02:41:08'),
(318, NULL, b'0', '2017-12-08 04:04:39'),
(319, NULL, b'0', '2017-12-08 04:05:27'),
(320, NULL, b'0', '2017-12-08 04:05:31'),
(321, NULL, b'0', '2017-12-08 04:06:03'),
(322, NULL, b'0', '2017-12-08 04:08:24'),
(323, NULL, b'0', '2017-12-08 04:08:27'),
(324, NULL, b'0', '2017-12-08 04:08:53'),
(325, 11, b'1', '2017-12-08 07:05:47'),
(326, 1, b'1', '2017-12-08 09:52:10'),
(327, NULL, b'0', '2017-12-11 01:54:26'),
(328, NULL, b'0', '2017-12-11 01:54:34'),
(329, NULL, b'0', '2017-12-11 01:54:50'),
(330, NULL, b'0', '2017-12-11 01:55:01'),
(331, 3, b'1', '2017-12-11 01:55:08'),
(332, NULL, b'0', '2017-12-11 01:55:17'),
(333, NULL, b'0', '2017-12-11 01:55:28'),
(334, 1, b'1', '2017-12-11 01:59:54'),
(335, 11, b'1', '2017-12-11 02:19:42'),
(336, 1, b'1', '2017-12-11 06:52:53'),
(337, 4, b'1', '2017-12-11 08:10:27'),
(338, 11, b'1', '2017-12-11 10:40:26'),
(339, 1, b'1', '2017-12-12 03:30:20'),
(340, 1, b'1', '2017-12-12 08:18:49'),
(341, NULL, b'0', '2017-12-12 11:06:14'),
(342, 1, b'1', '2017-12-12 11:06:21'),
(343, 11, b'1', '2017-12-12 12:15:28'),
(344, 1, b'0', '2017-12-12 12:54:17'),
(345, 1, b'1', '2017-12-13 01:50:11'),
(346, 11, b'1', '2017-12-13 01:54:55'),
(347, 11, b'1', '2017-12-13 01:55:35'),
(348, 11, b'1', '2017-12-13 05:50:14'),
(349, 3, b'1', '2017-12-13 06:44:25'),
(350, 1, b'1', '2017-12-14 02:54:03'),
(351, 1, b'1', '2017-12-14 05:03:06'),
(352, 1, b'1', '2017-12-14 07:03:17'),
(353, 11, b'1', '2017-12-14 07:20:08'),
(354, 1, b'1', '2017-12-14 11:16:34'),
(355, 1, b'1', '2017-12-15 03:50:29'),
(356, 11, b'1', '2017-12-15 09:13:25'),
(357, 1, b'1', '2017-12-16 05:53:53'),
(358, 11, b'1', '2017-12-18 01:30:44'),
(359, 11, b'1', '2017-12-18 01:40:40'),
(360, 1, b'1', '2017-12-18 02:08:29'),
(361, 18, b'1', '2017-12-18 03:01:20'),
(362, 11, b'1', '2017-12-18 06:19:05'),
(363, 1, b'1', '2017-12-18 06:46:38'),
(364, 1, b'1', '2017-12-18 07:42:10'),
(365, 11, b'1', '2017-12-19 01:51:50'),
(366, 1, b'1', '2017-12-19 02:00:01'),
(367, 1, b'1', '2017-12-19 02:48:44'),
(368, 3, b'1', '2017-12-19 03:01:44'),
(369, NULL, b'0', '2017-12-19 03:57:53'),
(370, 8, b'1', '2017-12-19 03:58:12'),
(371, 8, b'0', '2017-12-19 04:06:34'),
(372, 11, b'1', '2017-12-19 06:21:59'),
(373, 1, b'1', '2017-12-19 06:47:30'),
(374, 1, b'1', '2017-12-19 10:25:05'),
(375, 11, b'1', '2017-12-20 02:11:15'),
(376, 1, b'1', '2017-12-20 02:31:16'),
(377, 1, b'1', '2017-12-20 07:42:21'),
(378, 1, b'1', '2017-12-20 11:06:06'),
(379, 1, b'0', '2017-12-20 11:34:17'),
(380, 11, b'1', '2017-12-21 01:51:28'),
(381, 1, b'1', '2017-12-21 02:29:41'),
(382, 18, b'1', '2017-12-21 02:50:33'),
(383, 11, b'1', '2017-12-21 04:31:45'),
(384, 11, b'1', '2017-12-21 07:13:07'),
(385, 11, b'1', '2017-12-21 09:32:37'),
(386, 11, b'1', '2017-12-22 01:37:16'),
(387, 18, b'1', '2017-12-22 03:30:41'),
(388, 1, b'1', '2017-12-22 03:40:00'),
(389, 11, b'1', '2017-12-22 07:24:00'),
(390, 1, b'1', '2017-12-22 07:38:48'),
(391, 1, b'1', '2017-12-22 09:42:02'),
(392, 1, b'0', '2017-12-22 11:24:21'),
(393, 1, b'1', '2017-12-26 16:05:12'),
(394, 11, b'1', '2017-12-27 02:03:19'),
(395, 1, b'1', '2017-12-27 02:45:44'),
(396, 20, b'1', '2017-12-27 02:46:52'),
(397, NULL, b'0', '2017-12-27 03:20:49'),
(398, 1, b'0', '2017-12-27 03:23:04'),
(399, 3, b'1', '2017-12-27 03:23:26'),
(400, 1, b'1', '2017-12-27 03:40:17'),
(401, 1, b'0', '2017-12-27 03:53:18'),
(402, 11, b'1', '2017-12-27 05:30:56'),
(403, 11, b'1', '2017-12-27 08:34:34'),
(404, 1, b'1', '2017-12-27 10:30:54'),
(405, 1, b'0', '2017-12-27 10:39:21'),
(406, 11, b'1', '2017-12-28 01:50:27'),
(407, 11, b'1', '2017-12-28 04:24:44'),
(408, 11, b'1', '2017-12-29 01:47:21'),
(409, 11, b'1', '2017-12-29 06:31:10'),
(410, 11, b'1', '2017-12-29 08:59:46'),
(411, 11, b'1', '2018-01-02 01:53:41'),
(412, 6, b'1', '2018-01-02 04:13:21'),
(413, 12, b'1', '2018-01-02 06:18:25'),
(414, 20, b'1', '2018-01-02 06:57:17'),
(415, 3, b'1', '2018-01-02 07:45:02'),
(416, 17, b'1', '2018-01-02 07:45:41'),
(417, 3, b'0', '2018-01-02 08:05:28'),
(418, 3, b'1', '2018-01-02 09:09:31'),
(419, NULL, b'0', '2018-01-02 10:11:45'),
(420, NULL, b'0', '2018-01-02 10:12:01'),
(421, NULL, b'0', '2018-01-02 10:12:34'),
(422, NULL, b'0', '2018-01-03 01:41:05'),
(423, NULL, b'0', '2018-01-03 01:41:26'),
(424, NULL, b'0', '2018-01-03 01:41:37'),
(425, NULL, b'0', '2018-01-03 01:41:50'),
(426, NULL, b'0', '2018-01-03 01:41:59'),
(427, NULL, b'0', '2018-01-03 01:42:13'),
(428, 8, b'1', '2018-01-03 01:42:44'),
(429, 11, b'1', '2018-01-03 01:46:43'),
(430, 3, b'1', '2018-01-03 02:10:44'),
(431, 20, b'1', '2018-01-03 02:13:10'),
(432, 17, b'1', '2018-01-03 03:18:58'),
(433, 4, b'1', '2018-01-03 04:17:56'),
(434, 3, b'1', '2018-01-03 04:28:11'),
(435, NULL, b'0', '2018-01-03 04:28:47'),
(436, 5, b'1', '2018-01-03 04:29:16'),
(437, 4, b'0', '2018-01-03 04:32:01'),
(438, 18, b'1', '2018-01-03 04:54:03'),
(439, NULL, b'0', '2018-01-03 05:01:31'),
(440, 11, b'1', '2018-01-03 05:52:36'),
(441, NULL, b'0', '2018-01-03 07:32:47'),
(442, NULL, b'0', '2018-01-03 07:33:21'),
(443, 11, b'1', '2018-01-03 07:33:36'),
(444, 3, b'1', '2018-01-03 09:07:09'),
(445, 12, b'1', '2018-01-03 09:13:21'),
(446, 11, b'1', '2018-01-03 09:18:42'),
(447, 18, b'1', '2018-01-03 10:12:15'),
(448, 11, b'1', '2018-01-04 01:51:09'),
(449, 17, b'1', '2018-01-04 02:05:47'),
(450, 11, b'1', '2018-01-04 02:37:23'),
(451, 20, b'1', '2018-01-04 03:09:18'),
(452, NULL, b'0', '2018-01-04 04:05:04'),
(453, NULL, b'0', '2018-01-04 04:05:26'),
(454, NULL, b'0', '2018-01-04 04:28:59'),
(455, 4, b'1', '2018-01-04 04:29:03'),
(456, NULL, b'0', '2018-01-04 04:30:13'),
(457, NULL, b'0', '2018-01-04 04:30:47'),
(458, 15, b'1', '2018-01-04 04:31:02'),
(459, 20, b'1', '2018-01-04 07:36:19'),
(460, 20, b'1', '2018-01-04 09:24:51'),
(461, 20, b'1', '2018-01-04 09:32:06'),
(462, 20, b'1', '2018-01-04 11:26:28'),
(463, 20, b'1', '2018-01-05 03:43:05'),
(464, 20, b'1', '2018-01-05 03:45:23'),
(465, 20, b'1', '2018-01-05 05:36:57'),
(466, 20, b'1', '2018-01-05 07:22:54'),
(467, 20, b'1', '2018-01-05 07:44:33'),
(468, 20, b'1', '2018-01-05 12:45:22'),
(469, 20, b'1', '2018-01-05 12:53:45'),
(470, 20, b'1', '2018-01-05 12:55:50'),
(471, 20, b'1', '2018-01-09 06:39:00'),
(472, 20, b'1', '2018-01-09 09:03:02'),
(473, 20, b'1', '2018-01-09 09:06:28'),
(474, 20, b'1', '2018-01-09 11:18:05'),
(475, 20, b'1', '2018-01-09 11:21:16'),
(476, 20, b'1', '2018-01-09 11:25:03'),
(477, 20, b'1', '2018-01-09 11:25:45'),
(478, 20, b'1', '2018-01-09 11:26:25'),
(479, 20, b'1', '2018-01-09 12:02:57'),
(480, 20, b'1', '2018-01-09 12:09:51'),
(481, 20, b'1', '2018-01-09 13:22:53'),
(482, 20, b'1', '2018-01-09 13:55:19'),
(483, 20, b'1', '2018-01-09 14:14:33'),
(484, 20, b'1', '2018-01-09 15:45:16'),
(485, 20, b'1', '2018-01-10 03:42:14'),
(486, 20, b'1', '2018-01-10 04:38:33'),
(487, NULL, b'0', '2018-01-10 09:18:51'),
(488, NULL, b'0', '2018-01-10 09:19:08'),
(489, NULL, b'0', '2018-01-10 09:19:18'),
(490, NULL, b'0', '2018-01-10 09:20:12'),
(491, 20, b'1', '2018-01-10 09:22:56'),
(492, 20, b'0', '2018-01-10 09:23:18'),
(493, NULL, b'0', '2018-01-10 09:23:23'),
(494, 20, b'1', '2018-01-10 09:23:38'),
(495, 20, b'0', '2018-01-10 09:24:17'),
(496, 20, b'1', '2018-01-10 09:24:21'),
(497, 20, b'1', '2018-01-10 13:11:06'),
(498, 20, b'1', '2018-01-10 15:40:20'),
(499, 20, b'1', '2018-01-10 16:46:37'),
(500, 20, b'1', '2018-01-10 19:33:09'),
(501, 20, b'1', '2018-01-10 21:08:34'),
(502, 20, b'1', '2018-01-11 07:02:43'),
(503, 20, b'1', '2018-01-11 07:51:00'),
(504, 20, b'1', '2018-01-12 03:43:08'),
(505, 20, b'1', '2018-01-12 07:18:15'),
(506, 20, b'1', '2018-01-12 12:11:07'),
(507, 20, b'1', '2018-01-15 03:28:53'),
(508, 20, b'1', '2018-01-15 03:59:52'),
(509, 20, b'1', '2018-01-15 07:51:37'),
(510, 20, b'1', '2018-01-16 04:01:35'),
(511, 20, b'1', '2018-01-16 04:26:26'),
(512, 20, b'1', '2018-01-16 07:19:22'),
(513, 20, b'1', '2018-01-16 08:10:33'),
(514, NULL, b'0', '2018-01-18 03:37:36'),
(515, 20, b'1', '2018-01-18 03:37:49'),
(516, 20, b'1', '2018-01-18 03:40:06'),
(517, 20, b'1', '2018-01-23 04:49:26'),
(518, 20, b'1', '2018-01-23 08:31:01'),
(519, 20, b'1', '2018-02-01 05:15:20'),
(520, 20, b'1', '2018-02-06 14:23:13');

-- --------------------------------------------------------

--
-- Table structure for table `irena_usulan_adm`
--

CREATE TABLE `irena_usulan_adm` (
  `id` int(11) NOT NULL,
  `id_usulan` int(11) NOT NULL,
  `is_lengkap` int(11) NOT NULL DEFAULT '0',
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_by` varchar(200) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `is_kasubdit` int(11) NOT NULL,
  `by_kasubdit` int(11) NOT NULL,
  `at_kasubdit` date NOT NULL,
  `catatan` text NOT NULL,
  `is_BB` int(11) NOT NULL,
  `is_BB_by` int(11) NOT NULL,
  `is_BB_at` datetime NOT NULL,
  `is_BB_catatan` text NOT NULL,
  `is_bb_kasubdit` int(11) NOT NULL,
  `kasubdit_bb_by` int(11) NOT NULL,
  `kasubdit_bb_at` datetime NOT NULL,
  `catatan_kasubdit` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_usulan_adm`
--

INSERT INTO `irena_usulan_adm` (`id`, `id_usulan`, `is_lengkap`, `update_at`, `update_by`, `keterangan`, `is_kasubdit`, `by_kasubdit`, `at_kasubdit`, `catatan`, `is_BB`, `is_BB_by`, `is_BB_at`, `is_BB_catatan`, `is_bb_kasubdit`, `kasubdit_bb_by`, `kasubdit_bb_at`, `catatan_kasubdit`) VALUES
(1, 1, 1, '2017-12-08 06:49:26', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(2, 2, 1, '2017-12-11 10:18:03', '', 'b', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(3, 3, 1, '2017-12-10 21:04:44', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(4, 4, 1, '2017-12-12 22:23:41', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(5, 5, 1, '2017-12-12 22:25:35', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(6, 6, 0, '2017-12-03 09:20:41', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(7, 7, 1, '2017-12-12 22:37:40', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(8, 8, 1, '2017-12-13 01:42:53', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(9, 4, 1, '2017-12-12 22:23:41', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(10, 5, 1, '2018-01-10 04:41:29', '20', '', 0, 5, '0000-00-00', '', 2, 0, '0000-00-00 00:00:00', '', 2, 0, '0000-00-00 00:00:00', ''),
(11, 6, 0, '2017-12-05 09:03:24', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(12, 7, 1, '2017-12-12 22:37:40', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(13, 8, 1, '2017-12-13 01:42:53', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(14, 9, 1, '2017-12-17 22:04:16', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(17, 4, 1, '2017-12-12 22:23:41', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(18, 5, 1, '2017-12-12 22:25:35', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(19, 6, 0, '2017-12-13 04:33:34', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(20, 7, 1, '2017-12-12 22:37:40', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(21, 8, 1, '2017-12-13 01:42:53', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(22, 9, 1, '2017-12-17 22:04:16', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(23, 10, 2, '2018-01-10 04:44:21', '20', '', 2, 5, '0000-00-00', '', 2, 0, '0000-00-00 00:00:00', '', 2, 0, '0000-00-00 00:00:00', ''),
(24, 11, 2, '2018-01-10 06:50:31', '19', 'a', 2, 5, '0000-00-00', '', 2, 19, '0000-00-00 00:00:00', '', 2, 4, '0000-00-00 00:00:00', ''),
(25, 12, 0, '2017-12-27 01:38:55', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(26, 13, 0, '2017-12-27 01:41:22', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(27, 14, 1, '2018-01-10 04:52:52', '19', 'tidak lengkap', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(28, 15, 0, '2017-12-28 10:08:53', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(29, 16, 0, '2017-12-28 10:16:28', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(30, 17, 0, '2017-12-28 10:16:30', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(31, 18, 0, '2017-12-28 10:16:31', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(32, 19, 0, '2017-12-28 10:16:35', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(34, 21, 0, '2017-12-28 10:17:47', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(35, 22, 0, '2017-12-28 10:18:16', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(36, 23, 0, '2017-12-28 10:21:11', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(37, 24, 0, '2017-12-28 10:21:16', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(38, 25, 0, '2017-12-28 10:22:17', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(39, 26, 0, '2017-12-28 10:23:03', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(40, 27, 0, '2017-12-28 10:23:04', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(41, 28, 0, '2017-12-28 10:23:04', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(42, 29, 0, '2017-12-28 10:23:13', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(43, 30, 0, '2017-12-28 10:23:13', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(44, 31, 0, '2017-12-28 10:23:14', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(45, 32, 0, '2017-12-28 10:24:28', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(46, 33, 0, '2017-12-28 10:25:40', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(47, 34, 0, '2017-12-28 10:25:49', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(48, 35, 0, '2017-12-28 10:32:21', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(49, 36, 0, '2017-12-28 10:37:26', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(50, 37, 0, '2017-12-28 10:38:35', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(51, 38, 0, '2017-12-28 10:39:06', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(52, 39, 0, '2017-12-28 10:56:34', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(53, 40, 0, '2017-12-28 10:56:57', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(54, 41, 0, '2017-12-28 10:59:01', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(55, 42, 0, '2017-12-28 10:59:19', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(56, 43, 0, '2017-12-28 10:59:29', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(57, 44, 0, '2017-12-28 10:59:47', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(58, 45, 0, '2017-12-28 11:00:23', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(59, 46, 0, '2017-12-28 11:26:26', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(60, 47, 0, '2017-12-29 02:47:18', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(61, 48, 0, '2017-12-29 02:47:51', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(62, 49, 0, '2017-12-29 02:53:06', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(63, 50, 0, '2017-12-29 02:57:43', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(64, 51, 0, '2017-12-29 03:04:42', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(65, 52, 0, '2017-12-29 03:06:24', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(66, 53, 0, '2017-12-29 03:08:32', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(67, 54, 0, '2017-12-29 03:16:20', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(68, 55, 0, '2017-12-29 03:16:48', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(69, 56, 0, '2017-12-29 03:19:29', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(70, 56, 0, '2018-01-02 03:22:13', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(71, 57, 1, '2018-01-09 22:28:39', '20', 'hohoho', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(72, 15, 0, '2018-01-10 15:55:58', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(73, 16, 0, '2018-01-10 16:07:18', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(74, 17, 0, '2018-01-10 17:24:58', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(75, 18, 0, '2018-01-10 17:30:03', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(76, 19, 0, '2018-01-10 19:25:05', '', '', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', ''),
(77, 20, 1, '2018-01-12 03:56:50', '20', 'aaa', 0, 0, '0000-00-00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `irena_usulan_layak`
--

CREATE TABLE `irena_usulan_layak` (
  `id` int(11) NOT NULL,
  `id_usulan` int(11) NOT NULL,
  `is_layak` int(11) NOT NULL DEFAULT '0',
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_by` varchar(200) NOT NULL,
  `ket` varchar(500) NOT NULL,
  `is_kasubdit` int(11) NOT NULL,
  `by_kasubdit` int(11) NOT NULL,
  `at_kasubdit` datetime NOT NULL,
  `catatan` text NOT NULL,
  `catatan_staff` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_usulan_layak`
--

INSERT INTO `irena_usulan_layak` (`id`, `id_usulan`, `is_layak`, `update_at`, `update_by`, `ket`, `is_kasubdit`, `by_kasubdit`, `at_kasubdit`, `catatan`, `catatan_staff`) VALUES
(1, 1, 1, '2017-12-11 23:43:50', '', 'tes', 0, 0, '0000-00-00 00:00:00', '', 0),
(2, 2, 1, '2017-12-11 16:38:34', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(3, 3, 1, '2017-12-11 10:45:03', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(4, 4, 1, '2017-12-12 22:27:41', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(5, 5, 1, '2017-12-12 22:47:29', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(6, 6, 0, '2017-12-03 09:20:41', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(7, 7, 1, '2017-12-12 23:45:51', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(8, 8, 1, '2017-12-13 01:43:32', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(9, 4, 1, '2017-12-12 22:27:41', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(10, 5, 1, '2017-12-12 22:47:29', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(11, 6, 0, '2018-01-10 06:26:48', '19', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(12, 7, 1, '2017-12-12 23:45:51', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(13, 8, 1, '2017-12-13 01:43:32', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(14, 9, 1, '2018-01-10 06:21:32', '19', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(15, 10, 2, '2018-01-10 06:38:35', '20', '', 2, 5, '0000-00-00 00:00:00', '', 0),
(16, 11, 2, '2018-01-10 06:45:36', '19', '', 2, 4, '0000-00-00 00:00:00', '', 0),
(17, 3, 1, '2017-12-11 10:45:03', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(18, 0, 1, '2017-12-11 10:42:13', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(19, 0, 1, '2017-12-11 10:42:42', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(20, 4, 1, '2017-12-12 22:27:41', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(21, 5, 1, '2017-12-12 22:47:29', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(22, 6, 0, '2017-12-13 04:33:34', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(23, 7, 1, '2017-12-12 23:45:51', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(24, 8, 1, '2017-12-13 01:43:32', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(25, 9, 1, '2017-12-17 22:04:24', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(26, 10, 1, '2017-12-18 02:54:01', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(27, 11, 2, '2017-12-21 02:27:41', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(28, 12, 0, '2017-12-27 01:38:55', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(29, 13, 0, '2017-12-27 01:41:22', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(30, 14, 0, '2017-12-27 02:11:27', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(31, 15, 0, '2017-12-28 10:08:53', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(32, 16, 0, '2017-12-28 10:16:28', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(33, 17, 0, '2017-12-28 10:16:30', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(34, 18, 0, '2017-12-28 10:16:31', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(35, 19, 0, '2017-12-28 10:16:35', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(36, 20, 0, '2017-12-28 10:17:47', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(37, 21, 0, '2017-12-28 10:17:47', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(38, 22, 0, '2017-12-28 10:18:16', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(39, 23, 0, '2017-12-28 10:21:11', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(40, 24, 0, '2017-12-28 10:21:16', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(41, 25, 0, '2017-12-28 10:22:16', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(42, 26, 0, '2017-12-28 10:23:03', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(43, 27, 0, '2017-12-28 10:23:04', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(44, 28, 0, '2017-12-28 10:23:04', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(45, 29, 0, '2017-12-28 10:23:13', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(46, 30, 0, '2017-12-28 10:23:13', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(47, 31, 0, '2017-12-28 10:23:14', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(48, 32, 0, '2017-12-28 10:24:28', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(49, 33, 0, '2017-12-28 10:25:40', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(50, 34, 0, '2017-12-28 10:25:49', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(51, 35, 0, '2017-12-28 10:32:21', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(52, 36, 0, '2017-12-28 10:37:25', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(53, 37, 0, '2017-12-28 10:38:35', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(54, 38, 0, '2017-12-28 10:39:05', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(55, 39, 0, '2017-12-28 10:56:34', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(56, 40, 0, '2017-12-28 10:56:57', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(57, 41, 0, '2017-12-28 10:59:01', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(58, 42, 0, '2017-12-28 10:59:19', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(59, 43, 0, '2017-12-28 10:59:29', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(60, 44, 0, '2017-12-28 10:59:47', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(61, 45, 0, '2017-12-28 11:00:23', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(62, 46, 0, '2017-12-28 11:26:26', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(63, 47, 0, '2017-12-29 02:47:17', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(64, 48, 0, '2017-12-29 02:47:51', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(65, 49, 0, '2017-12-29 02:53:06', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(66, 50, 0, '2017-12-29 02:57:43', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(67, 51, 0, '2017-12-29 03:04:42', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(68, 52, 0, '2017-12-29 03:06:24', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(69, 53, 0, '2017-12-29 03:08:32', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(70, 54, 0, '2017-12-29 03:16:20', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(71, 55, 0, '2017-12-29 03:16:48', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(72, 56, 0, '2017-12-29 03:19:29', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(73, 56, 0, '2018-01-02 03:22:13', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(74, 57, 0, '2018-01-02 03:32:53', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(75, 15, 0, '2018-01-10 15:55:57', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(76, 16, 0, '2018-01-10 16:07:18', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(77, 17, 0, '2018-01-10 17:24:58', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(78, 18, 0, '2018-01-10 17:30:03', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(79, 19, 0, '2018-01-10 19:25:05', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(80, 20, 0, '2018-01-11 07:41:49', '', '', 0, 0, '0000-00-00 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `irena_usulan_log_kategori`
--

CREATE TABLE `irena_usulan_log_kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_usulan_pln`
--

CREATE TABLE `irena_usulan_pln` (
  `id` int(11) NOT NULL,
  `id_instansi` varchar(11) NOT NULL,
  `id_eselon_1` varchar(11) NOT NULL,
  `instansi_pelaksana` text NOT NULL,
  `id_program` varchar(11) NOT NULL,
  `proyeksi_tahun_pertama_penarikan` int(11) NOT NULL,
  `judul_proyek_id` varchar(300) NOT NULL,
  `judul_proyek_eng` varchar(300) NOT NULL,
  `ruang_lingkup_id` text NOT NULL,
  `ruang_lingkup_eng` text NOT NULL,
  `dana_usulan` int(11) NOT NULL,
  `dana_hibah` int(11) NOT NULL,
  `tahun_usulan` int(11) NOT NULL,
  `durasi` int(11) NOT NULL,
  `output` text NOT NULL,
  `outcome` text NOT NULL,
  `dana_pendamping` int(11) NOT NULL,
  `is_BB` int(11) NOT NULL DEFAULT '0',
  `is_GB` int(11) NOT NULL DEFAULT '0',
  `is_DK` int(11) NOT NULL DEFAULT '0',
  `is_LA` int(11) NOT NULL DEFAULT '0',
  `Files` varchar(500) NOT NULL,
  `lokasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_usulan_pln`
--

INSERT INTO `irena_usulan_pln` (`id`, `id_instansi`, `id_eselon_1`, `instansi_pelaksana`, `id_program`, `proyeksi_tahun_pertama_penarikan`, `judul_proyek_id`, `judul_proyek_eng`, `ruang_lingkup_id`, `ruang_lingkup_eng`, `dana_usulan`, `dana_hibah`, `tahun_usulan`, `durasi`, `output`, `outcome`, `dana_pendamping`, `is_BB`, `is_GB`, `is_DK`, `is_LA`, `Files`, `lokasi`) VALUES
(10, '33', '1009', '71 ', '18 ', 2019, 'art', 'art', 'atr', 'atr', 124, 122, 0, 20, 'abc', 'abc', 123, 1, 1, 0, 0, '', ''),
(11, '87 ', '', '81 ', '19 ', 2015, 'tre', 'tre', 'tre', 'tre', 111, 111, 0, 15, 'rrr', 'aaa', 12, 1, 0, 0, 0, '', ''),
(20, '88', 'ab', 'ab', '1', 1212, 'd', 'a', 'ab', 'ab', 123, 123, 2018, 21, 'ab', 'ab', 123, 0, 0, 0, 0, '', 'acd');

-- --------------------------------------------------------

--
-- Table structure for table `irena_usulan_pln_dok`
--

CREATE TABLE `irena_usulan_pln_dok` (
  `id` int(11) NOT NULL,
  `id_proyek` int(11) DEFAULT NULL,
  `kat` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `berkas` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_usulan_pln_dok`
--

INSERT INTO `irena_usulan_pln_dok` (`id`, `id_proyek`, `kat`, `nama`, `ket`, `berkas`, `update_by`, `update_date`) VALUES
(1, 0, NULL, NULL, NULL, 'a-1980-4379-1-SM.pdf', NULL, NULL),
(2, NULL, NULL, 'aaaaa', NULL, '10-3-permen-kp-2017-ttg-otk-lpmukp.pdf', 20, '2018-01-16 13:52:25'),
(4, 10, 'av', 'aaaaa', 'a', '10-1980-4379-1-SM.pdf', 20, '2018-01-16 14:01:52'),
(5, 10, 'a', 'aaaa', 'adad', '10-1505617328108(1).pdf', 20, '2018-01-16 14:05:32'),
(6, 10, 'v', 'd', 'z', '10-818-1499-1-PB(1).pdf', 20, '2018-01-16 14:11:17'),
(7, 10, 'a', 'aaaa', 'asas', '10-3460-6765-1-SM1.pdf', 20, '2018-01-16 14:14:32'),
(8, 10, 'a', 'aaaaa', 'ads', '10-3460-6765-1-SM2.pdf', 20, '2018-01-18 09:39:11'),
(9, 20, 'dg', 'ag', 'ad', '20-1300-2756-1-SM.pdf', 20, '2018-01-18 09:43:48');

-- --------------------------------------------------------

--
-- Table structure for table `irena_usulan_pln_log`
--

CREATE TABLE `irena_usulan_pln_log` (
  `id` int(11) NOT NULL,
  `id_proyek` int(11) DEFAULT NULL,
  `id_log_kategori` int(11) DEFAULT NULL,
  `id_arsip` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `deskripsi` text,
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_usulan_pln_log`
--

INSERT INTO `irena_usulan_pln_log` (`id`, `id_proyek`, `id_log_kategori`, `id_arsip`, `nama`, `deskripsi`, `update_by`, `update_date`) VALUES
(1, 10, 1, 77, '123aa', 'a', 20, '2018-01-12 13:26:12'),
(2, 10, 1, 77, 'abc', 'efgh', 20, '2018-01-12 14:37:36'),
(3, 20, 1, 77, 'test', 'tes', NULL, '2018-01-12 18:10:29'),
(4, 11, 1, 86, 'tes', 'tes', 20, '2018-01-12 18:11:37');

-- --------------------------------------------------------

--
-- Table structure for table `irena_usulkan_bb`
--

CREATE TABLE `irena_usulkan_bb` (
  `id` int(11) NOT NULL,
  `id_usulan` int(11) NOT NULL,
  `is_usulkan` int(11) NOT NULL DEFAULT '0',
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_by` varchar(200) NOT NULL,
  `ket` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_usulkan_bb`
--

INSERT INTO `irena_usulkan_bb` (`id`, `id_usulan`, `is_usulkan`, `update_at`, `update_by`, `ket`) VALUES
(1, 1, 0, '2017-11-15 10:52:04', '', ''),
(2, 2, 0, '2017-11-15 10:52:04', '', ''),
(3, 3, 0, '2017-11-15 10:52:04', '', ''),
(4, 4, 0, '2017-11-30 12:00:13', '', ''),
(5, 5, 0, '2017-12-03 09:20:41', '', ''),
(6, 6, 0, '2017-12-03 09:20:42', '', ''),
(7, 7, 0, '2017-12-03 09:20:43', '', ''),
(8, 8, 0, '2017-12-03 09:27:35', '', ''),
(9, 4, 0, '2017-12-05 09:03:23', '', ''),
(10, 5, 0, '2017-12-05 09:03:24', '', ''),
(11, 6, 0, '2017-12-05 09:03:25', '', ''),
(12, 7, 0, '2017-12-05 09:03:25', '', ''),
(13, 8, 0, '2017-12-05 09:03:25', '', ''),
(14, 9, 0, '2017-12-05 09:03:27', '', ''),
(15, 10, 0, '2017-12-05 09:03:27', '', ''),
(16, 11, 0, '2017-12-05 09:03:27', '', ''),
(17, 4, 0, '2017-12-13 04:23:23', '', ''),
(18, 5, 0, '2017-12-13 04:23:30', '', ''),
(19, 6, 0, '2017-12-13 04:33:34', '', ''),
(20, 7, 0, '2017-12-13 04:36:10', '', ''),
(21, 8, 0, '2017-12-13 07:42:42', '', ''),
(22, 9, 0, '2017-12-18 03:18:45', '', ''),
(23, 10, 0, '2017-12-18 03:44:32', '', ''),
(24, 11, 0, '2017-12-18 03:47:04', '', ''),
(25, 12, 0, '2017-12-27 01:38:55', '', ''),
(26, 13, 0, '2017-12-27 01:41:22', '', ''),
(27, 14, 0, '2017-12-27 02:11:27', '', ''),
(28, 15, 0, '2017-12-28 10:08:53', '', ''),
(29, 16, 0, '2017-12-28 10:16:28', '', ''),
(30, 17, 0, '2017-12-28 10:16:30', '', ''),
(31, 18, 0, '2017-12-28 10:16:31', '', ''),
(32, 19, 0, '2017-12-28 10:16:35', '', ''),
(33, 20, 0, '2017-12-28 10:17:47', '', ''),
(34, 21, 0, '2017-12-28 10:17:48', '', ''),
(35, 22, 0, '2017-12-28 10:18:16', '', ''),
(36, 23, 0, '2017-12-28 10:21:11', '', ''),
(37, 24, 0, '2017-12-28 10:21:16', '', ''),
(38, 25, 0, '2017-12-28 10:22:17', '', ''),
(39, 26, 0, '2017-12-28 10:23:03', '', ''),
(40, 27, 0, '2017-12-28 10:23:04', '', ''),
(41, 28, 0, '2017-12-28 10:23:04', '', ''),
(42, 29, 0, '2017-12-28 10:23:13', '', ''),
(43, 30, 0, '2017-12-28 10:23:13', '', ''),
(44, 31, 0, '2017-12-28 10:23:14', '', ''),
(45, 32, 0, '2017-12-28 10:24:29', '', ''),
(46, 33, 0, '2017-12-28 10:25:40', '', ''),
(47, 34, 0, '2017-12-28 10:25:49', '', ''),
(48, 35, 0, '2017-12-28 10:32:21', '', ''),
(49, 36, 0, '2017-12-28 10:37:26', '', ''),
(50, 37, 0, '2017-12-28 10:38:35', '', ''),
(51, 38, 0, '2017-12-28 10:39:06', '', ''),
(52, 39, 0, '2017-12-28 10:56:34', '', ''),
(53, 40, 0, '2017-12-28 10:56:57', '', ''),
(54, 41, 0, '2017-12-28 10:59:01', '', ''),
(55, 42, 0, '2017-12-28 10:59:19', '', ''),
(56, 43, 0, '2017-12-28 10:59:29', '', ''),
(57, 44, 0, '2017-12-28 10:59:47', '', ''),
(58, 45, 0, '2017-12-28 11:00:23', '', ''),
(59, 46, 0, '2017-12-28 11:26:26', '', ''),
(60, 47, 0, '2017-12-29 02:47:18', '', ''),
(61, 48, 0, '2017-12-29 02:47:51', '', ''),
(62, 49, 0, '2017-12-29 02:53:07', '', ''),
(63, 50, 0, '2017-12-29 02:57:43', '', ''),
(64, 51, 0, '2017-12-29 03:04:42', '', ''),
(65, 52, 0, '2017-12-29 03:06:24', '', ''),
(66, 53, 0, '2017-12-29 03:08:32', '', ''),
(67, 54, 0, '2017-12-29 03:16:20', '', ''),
(68, 55, 0, '2017-12-29 03:16:48', '', ''),
(69, 56, 0, '2017-12-29 03:19:29', '', ''),
(70, 56, 0, '2018-01-02 03:22:14', '', ''),
(71, 57, 0, '2018-01-02 03:32:53', '', ''),
(72, 16, 0, '2018-01-10 16:07:18', '', ''),
(73, 17, 0, '2018-01-10 17:24:58', '', ''),
(74, 18, 0, '2018-01-10 17:30:04', '', ''),
(75, 19, 0, '2018-01-10 19:25:05', '', ''),
(76, 20, 0, '2018-01-11 07:41:49', '', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_arsip`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_arsip` (
`id_arsip` int(11)
,`no` varchar(255)
,`perihal` varchar(255)
,`dari` varchar(255)
,`tgl` date
,`tahun_surat` int(4)
,`status` varchar(255)
,`jenis` varchar(255)
,`tingkat` varchar(255)
,`update_by` varchar(255)
,`update_date` datetime
,`class` varchar(255)
,`icon` varchar(255)
,`ringkasan` text
,`keyword` text
,`berkas` varchar(255)
,`tgl_terima` date
,`foto` varchar(255)
,`selesai_cat` text
,`selesai_by` int(11)
,`selesai_date` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_disposisi_internal`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_disposisi_internal` (
`no_arsip` varchar(255)
,`tgl_arsip` date
,`status` varchar(255)
,`dari` varchar(255)
,`id_user` int(11)
,`catatan` text
,`id_status` int(11)
,`class` varchar(255)
,`berkas_arsip` varchar(255)
,`jenis_arsip` int(11)
,`id_arsip` int(11)
,`nama_panggilan` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_hibah_dok`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_hibah_dok` (
`id` int(11)
,`id_proyek` int(11)
,`kat` varchar(255)
,`nama` varchar(255)
,`ket` varchar(255)
,`berkas` varchar(255)
,`nama_panggilan` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_hibah_drkh`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_hibah_drkh` (
`id` int(11)
,`id_proyek` int(11)
,`donor` varchar(255)
,`mata_uang_singkatan` varchar(255)
,`nilai_hibah` double
,`nilai_dp` double
,`update_date` datetime
,`nama_panggilan` varchar(255)
,`instansi_eselon_satu` varchar(255)
,`instansi` varchar(255)
,`instansi_singkatan` varchar(255)
,`jenis` varchar(255)
,`judul_en` varchar(255)
,`judul_id` varchar(255)
,`latar_belakang_en` text
,`latar_belakang_id` text
,`ruang_lingkup_en` text
,`ruang_lingkup_id` text
,`durasi` int(11)
,`output_en` text
,`output_id` text
,`outcome_en` text
,`outcome_id` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_hibah_log`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_hibah_log` (
`id` int(11)
,`kategori` varchar(255)
,`nama` varchar(255)
,`deskripsi` text
,`nama_panggilan` varchar(255)
,`id_proyek` int(11)
,`folder` varchar(255)
,`berkas` varchar(255)
,`id_log_kategori` int(11)
,`id_arsip` int(11)
,`no_arsip` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_hibah_usulan_awal`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_hibah_usulan_awal` (
`id` int(11)
,`instansi_eselon_satu` varchar(255)
,`instansi` varchar(255)
,`instansi_singkatan` varchar(255)
,`judul_id` varchar(255)
,`judul_en` varchar(255)
,`nilai_hibah` double
,`nilai_admin` text
,`nilai_admin_ket` varchar(255)
,`nilai_admin_id` int(11)
,`nilai_admin_date` datetime
,`nilai_layak` text
,`nilai_layak_ket` varchar(255)
,`nilai_layak_id` int(11)
,`nilai_layak_date` datetime
,`masuk_drkh` text
,`masuk_drkh_ket` varchar(255)
,`masuk_drkh_id` int(11)
,`masuk_drkh_date` datetime
,`user_nama_panggilan` varchar(255)
,`update_date` datetime
,`donor` varchar(255)
,`mata_uang` varchar(255)
,`mata_uang_singkatan` varchar(255)
,`durasi` int(11)
,`nilai_dp` double
,`ringkasan` text
,`jenis` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_sbsn_log_proyek`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_sbsn_log_proyek` (
`id` int(11)
,`nama` varchar(255)
,`deskripsi` text
,`nama_proyek_dok_kategori` varchar(255)
,`order_proyek_dok_kategori` int(255)
,`nama_panggilan` varchar(255)
,`berkas` varchar(255)
,`id_proyek` int(11)
,`id_arsip` int(11)
,`folder` varchar(255)
,`no_arsip` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_sbsn_on_going`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_sbsn_on_going` (
`id` int(11)
,`dpp` varchar(255)
,`nilai` double
,`update_date` datetime
,`nama_panggilan` varchar(255)
,`satker` varchar(255)
,`instansi` varchar(255)
,`instansi_singkatan` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_sbsn_proyek_dpp`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_sbsn_proyek_dpp` (
`id` int(11)
,`judul` varchar(255)
,`nilai` double
,`nama_panggilan` varchar(255)
,`update_date` datetime
,`id_proyek` int(11)
,`instansi_eselon_satu` varchar(255)
,`instansi` varchar(255)
,`instansi_singkatan` varchar(255)
,`kategori_proyek` varchar(255)
,`dpp` varchar(255)
,`user_level` int(11)
,`output` text
,`latar_belakang` text
,`tujuan` text
,`ruang_lingkup` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_sbsn_realiasi_penyerapan_list`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_sbsn_realiasi_penyerapan_list` (
`id` int(11)
,`id_realisasi` int(11)
,`triwulan` int(11)
,`penyerapan` double
,`progres_fisik` double
,`permasalahan` text
,`tindak_lanjut` text
,`pihak_terlibat` text
,`catatan` text
,`nama_panggilan` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_sbsn_usulan_awal`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_sbsn_usulan_awal` (
`id_proyek` int(11)
,`instansi` varchar(255)
,`instansi_singkatan` varchar(255)
,`instansi_eselon_satu` varchar(255)
,`dpp` varchar(255)
,`kategori_proyek` varchar(255)
,`judul` varchar(255)
,`nilai` double
,`output` text
,`latar_belakang` text
,`tujuan` text
,`ruang_lingkup` text
,`update_date` datetime
,`user_nama_panggilan` varchar(255)
,`nilai_admin` text
,`nilai_admin_id` int(11)
,`nilai_admin_ket` varchar(255)
,`nilai_admin_date` datetime
,`nilai_layak` text
,`nilai_layak_id` int(11)
,`nilai_layak_ket` varchar(255)
,`nilai_layak_date` datetime
,`masuk_dpp` text
,`masuk_dpp_id` int(11)
,`masuk_dpp_ket` varchar(255)
,`masuk_dpp_date` datetime
,`single_multi` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_sbsn_usulan_syarat`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_sbsn_usulan_syarat` (
`id` int(11)
,`kat` varchar(255)
,`nama` varchar(255)
,`ket` varchar(255)
,`berkas` varchar(255)
,`nama_panggilan` varchar(255)
,`id_proyek` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_usulan_pln_dok`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_usulan_pln_dok` (
`id` int(11)
,`id_proyek` int(11)
,`kat` varchar(255)
,`nama` varchar(255)
,`ket` varchar(255)
,`berkas` varchar(255)
,`nama_panggilan` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_usulan_pln_log`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_usulan_pln_log` (
`id` int(11)
,`kategori` varchar(255)
,`nama` varchar(255)
,`deskripsi` text
,`nama_panggilan` varchar(255)
,`id_proyek` int(11)
,`folder` varchar(255)
,`berkas` varchar(255)
,`id_log_kategori` int(11)
,`id_arsip` int(11)
,`no_arsip` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `irena_view_arsip`
--
DROP TABLE IF EXISTS `irena_view_arsip`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_arsip`  AS  select `irena_arsip`.`id` AS `id_arsip`,`irena_arsip`.`no` AS `no`,`irena_arsip`.`perihal` AS `perihal`,`irena_arsip`.`dari` AS `dari`,`irena_arsip`.`tgl` AS `tgl`,year(`irena_arsip`.`tgl`) AS `tahun_surat`,`irena_arsip_status`.`nama` AS `status`,`irena_arsip_jenis`.`nama` AS `jenis`,`irena_arsip_tingkat`.`nama` AS `tingkat`,`irena_user`.`nama_panggilan` AS `update_by`,`irena_arsip`.`update_date` AS `update_date`,`irena_arsip_status`.`class` AS `class`,`irena_arsip_jenis`.`icon` AS `icon`,`irena_arsip`.`ringkasan` AS `ringkasan`,`irena_arsip`.`keywords` AS `keyword`,`irena_arsip`.`berkas` AS `berkas`,`irena_arsip`.`tgl_terima` AS `tgl_terima`,`irena_user`.`foto` AS `foto`,`irena_arsip`.`selesai_cat` AS `selesai_cat`,`irena_arsip`.`selesai_by` AS `selesai_by`,`irena_arsip`.`selesai_date` AS `selesai_date` from ((((`irena_arsip` join `irena_arsip_jenis` on((`irena_arsip_jenis`.`id` = `irena_arsip`.`id_jenis`))) join `irena_arsip_status` on((`irena_arsip_status`.`id` = `irena_arsip`.`id_status`))) join `irena_arsip_tingkat` on((`irena_arsip_tingkat`.`id` = `irena_arsip`.`id_tingkat`))) join `irena_user` on((`irena_user`.`id` = `irena_arsip`.`update_by`))) order by `irena_arsip`.`update_by` desc ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_disposisi_internal`
--
DROP TABLE IF EXISTS `irena_view_disposisi_internal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_disposisi_internal`  AS  select `irena_arsip`.`no` AS `no_arsip`,`irena_arsip`.`tgl` AS `tgl_arsip`,`irena_arsip_status`.`nama` AS `status`,`irena_arsip`.`dari` AS `dari`,`irena_user`.`id` AS `id_user`,`irena_arsip_disposisi`.`catatan` AS `catatan`,`irena_arsip`.`id_status` AS `id_status`,`irena_arsip_status`.`class` AS `class`,`irena_arsip`.`berkas` AS `berkas_arsip`,`irena_arsip`.`id_jenis` AS `jenis_arsip`,`irena_arsip`.`id` AS `id_arsip`,`irena_user`.`nama_panggilan` AS `nama_panggilan` from ((((`irena_arsip_disposisi_internal` join `irena_arsip_disposisi` on((`irena_arsip_disposisi`.`id` = `irena_arsip_disposisi_internal`.`id_disposisi`))) join `irena_arsip` on((`irena_arsip`.`id` = `irena_arsip_disposisi`.`id_arsip`))) join `irena_arsip_status` on((`irena_arsip_status`.`id` = `irena_arsip`.`id_status`))) join `irena_user` on((`irena_user`.`id` = `irena_arsip_disposisi_internal`.`id_disposisi_user`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_hibah_dok`
--
DROP TABLE IF EXISTS `irena_view_hibah_dok`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_hibah_dok`  AS  select `irena_hibah_proyek_dok`.`id` AS `id`,`irena_hibah_proyek_dok`.`id_proyek` AS `id_proyek`,`irena_hibah_proyek_dok`.`kat` AS `kat`,`irena_hibah_proyek_dok`.`nama` AS `nama`,`irena_hibah_proyek_dok`.`ket` AS `ket`,`irena_hibah_proyek_dok`.`berkas` AS `berkas`,`irena_user`.`nama_panggilan` AS `nama_panggilan` from (`irena_hibah_proyek_dok` join `irena_user` on((`irena_user`.`id` = `irena_hibah_proyek_dok`.`update_by`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_hibah_drkh`
--
DROP TABLE IF EXISTS `irena_view_hibah_drkh`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_hibah_drkh`  AS  select `irena_hibah_proyek_drkh`.`id` AS `id`,`irena_hibah_proyek_drkh`.`id_proyek` AS `id_proyek`,`irena_hibah_donor`.`nama` AS `donor`,`irena_mata_uang`.`singkatan` AS `mata_uang_singkatan`,`irena_hibah_proyek_drkh`.`nilai_hibah` AS `nilai_hibah`,`irena_hibah_proyek_drkh`.`nilai_dp` AS `nilai_dp`,`irena_hibah_proyek_drkh`.`update_date` AS `update_date`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_instansi_eselon_satu`.`nama` AS `instansi_eselon_satu`,`irena_instansi`.`nama` AS `instansi`,`irena_instansi`.`singkatan` AS `instansi_singkatan`,`irena_hibah_jenis`.`nama` AS `jenis`,`irena_hibah_proyek_drkh`.`judul_en` AS `judul_en`,`irena_hibah_proyek_drkh`.`judul_id` AS `judul_id`,`irena_hibah_proyek_drkh`.`latar_belakang_en` AS `latar_belakang_en`,`irena_hibah_proyek_drkh`.`latar_belakang_id` AS `latar_belakang_id`,`irena_hibah_proyek_drkh`.`ruang_lingkup_en` AS `ruang_lingkup_en`,`irena_hibah_proyek_drkh`.`ruang_lingkup_id` AS `ruang_lingkup_id`,`irena_hibah_proyek_drkh`.`durasi` AS `durasi`,`irena_hibah_proyek_drkh`.`output_en` AS `output_en`,`irena_hibah_proyek_drkh`.`output_id` AS `output_id`,`irena_hibah_proyek_drkh`.`outcome_en` AS `outcome_en`,`irena_hibah_proyek_drkh`.`outcome_id` AS `outcome_id` from (((((((`irena_hibah_proyek_drkh` join `irena_hibah_proyek` on((`irena_hibah_proyek`.`id` = `irena_hibah_proyek_drkh`.`id_proyek`))) join `irena_instansi_eselon_satu` on((`irena_instansi_eselon_satu`.`id` = `irena_hibah_proyek`.`id_instansi_eselon_satu`))) join `irena_instansi` on((`irena_instansi`.`id` = `irena_instansi_eselon_satu`.`id_instansi`))) join `irena_hibah_donor` on((`irena_hibah_donor`.`id` = `irena_hibah_proyek_drkh`.`id_donor`))) join `irena_mata_uang` on((`irena_mata_uang`.`id` = `irena_hibah_proyek_drkh`.`id_mata_uang`))) join `irena_user` on((`irena_user`.`id` = `irena_hibah_proyek_drkh`.`update_by`))) join `irena_hibah_jenis` on((`irena_hibah_jenis`.`id` = `irena_hibah_proyek_drkh`.`id_jenis`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_hibah_log`
--
DROP TABLE IF EXISTS `irena_view_hibah_log`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_hibah_log`  AS  select `irena_hibah_log`.`id` AS `id`,`irena_hibah_log_kategori`.`nama` AS `kategori`,`irena_hibah_log`.`nama` AS `nama`,`irena_hibah_log`.`deskripsi` AS `deskripsi`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_hibah_log`.`id_proyek` AS `id_proyek`,`irena_arsip_jenis`.`nama` AS `folder`,`irena_arsip`.`berkas` AS `berkas`,`irena_hibah_log`.`id_log_kategori` AS `id_log_kategori`,`irena_hibah_log`.`id_arsip` AS `id_arsip`,`irena_arsip`.`no` AS `no_arsip` from (((((`irena_hibah_log` join `irena_hibah_proyek` on((`irena_hibah_proyek`.`id` = `irena_hibah_log`.`id_proyek`))) join `irena_hibah_log_kategori` on((`irena_hibah_log_kategori`.`id` = `irena_hibah_log`.`id_log_kategori`))) join `irena_arsip` on((`irena_arsip`.`id` = `irena_hibah_log`.`id_arsip`))) join `irena_user` on((`irena_user`.`id` = `irena_hibah_log`.`update_by`))) join `irena_arsip_jenis` on((`irena_arsip_jenis`.`id` = `irena_arsip`.`id_jenis`))) ;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_hibah_log`  AS  select `irena_hibah_log`.`id` AS `id`,`irena_hibah_log_kategori`.`nama` AS `kategori`,`irena_hibah_log`.`nama` AS `nama`,`irena_hibah_log`.`deskripsi` AS `deskripsi`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_hibah_log`.`id_proyek` AS `id_proyek`,`irena_arsip_jenis`.`nama` AS `folder`,`irena_arsip`.`berkas` AS `berkas`,`irena_hibah_log`.`id_log_kategori` AS `id_log_kategori`,`irena_hibah_log`.`id_arsip` AS `id_arsip`,`irena_arsip`.`no` AS `no_arsip` from (((((`irena_hibah_log` join `irena_hibah_proyek` on((`irena_hibah_proyek`.`id` = `irena_hibah_log`.`id_proyek`))) join `irena_hibah_log_kategori` on((`irena_hibah_log_kategori`.`id` = `irena_hibah_log`.`id_log_kategori`))) join `irena_arsip` on((`irena_arsip`.`id` = `irena_hibah_log`.`id_arsip`))) join `irena_user` on((`irena_user`.`id` = `irena_hibah_log`.`update_by`))) join `irena_arsip_jenis` on((`irena_arsip_jenis`.`id` = `irena_arsip`.`id_jenis`))) ;


-- --------------------------------------------------------

--
-- Structure for view `irena_view_hibah_usulan_awal`
--
DROP TABLE IF EXISTS `irena_view_hibah_usulan_awal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_hibah_usulan_awal`  AS  select `irena_hibah_proyek`.`id` AS `id`,`irena_instansi_eselon_satu`.`nama` AS `instansi_eselon_satu`,`irena_instansi`.`nama` AS `instansi`,`irena_instansi`.`singkatan` AS `instansi_singkatan`,`irena_hibah_proyek`.`judul_id` AS `judul_id`,`irena_hibah_proyek`.`judul_en` AS `judul_en`,`irena_hibah_proyek`.`nilai_hibah` AS `nilai_hibah`,`irena_hibah_proyek`.`nilai_admin` AS `nilai_admin`,`irena_hibah_proyek`.`nilai_admin_ket` AS `nilai_admin_ket`,`irena_hibah_proyek`.`nilai_admin_id` AS `nilai_admin_id`,`irena_hibah_proyek`.`nilai_admin_date` AS `nilai_admin_date`,`irena_hibah_proyek`.`nilai_layak` AS `nilai_layak`,`irena_hibah_proyek`.`nilai_layak_ket` AS `nilai_layak_ket`,`irena_hibah_proyek`.`nilai_layak_id` AS `nilai_layak_id`,`irena_hibah_proyek`.`nilai_layak_date` AS `nilai_layak_date`,`irena_hibah_proyek`.`masuk_drkh` AS `masuk_drkh`,`irena_hibah_proyek`.`masuk_drkh_ket` AS `masuk_drkh_ket`,`irena_hibah_proyek`.`masuk_drkh_id` AS `masuk_drkh_id`,`irena_hibah_proyek`.`masuk_drkh_date` AS `masuk_drkh_date`,`irena_user`.`nama_panggilan` AS `user_nama_panggilan`,`irena_hibah_proyek`.`update_date` AS `update_date`,`irena_hibah_donor`.`nama` AS `donor`,`irena_mata_uang`.`nama` AS `mata_uang`,`irena_mata_uang`.`singkatan` AS `mata_uang_singkatan`,`irena_hibah_proyek`.`durasi` AS `durasi`,`irena_hibah_proyek`.`nilai_dp` AS `nilai_dp`,`irena_hibah_proyek`.`ringkasan` AS `ringkasan`,`irena_hibah_jenis`.`nama` AS `jenis` from ((((((`irena_hibah_proyek` join `irena_instansi_eselon_satu` on((`irena_instansi_eselon_satu`.`id` = `irena_hibah_proyek`.`id_instansi_eselon_satu`))) join `irena_instansi` on((`irena_instansi`.`id` = `irena_instansi_eselon_satu`.`id_instansi`))) join `irena_user` on((`irena_user`.`id` = `irena_hibah_proyek`.`update_by`))) join `irena_hibah_donor` on((`irena_hibah_donor`.`id` = `irena_hibah_proyek`.`id_donor`))) join `irena_mata_uang` on((`irena_mata_uang`.`id` = `irena_hibah_proyek`.`id_mata_uang`))) join `irena_hibah_jenis` on((`irena_hibah_jenis`.`id` = `irena_hibah_proyek`.`id_jenis`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_sbsn_log_proyek`
--
DROP TABLE IF EXISTS `irena_view_sbsn_log_proyek`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_log_proyek`  AS  select `irena_sbsn_proyek_dok`.`id` AS `id`,`irena_sbsn_proyek_dok`.`nama` AS `nama`,`irena_sbsn_proyek_dok`.`deskripsi` AS `deskripsi`,`irena_sbsn_proyek_dok_kategori`.`nama` AS `nama_proyek_dok_kategori`,`irena_sbsn_proyek_dok_kategori`.`order` AS `order_proyek_dok_kategori`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_arsip`.`berkas` AS `berkas`,`irena_sbsn_proyek_dok`.`id_proyek` AS `id_proyek`,`irena_sbsn_proyek_dok`.`id_arsip` AS `id_arsip`,`irena_arsip_jenis`.`nama` AS `folder`,`irena_arsip`.`no` AS `no_arsip` from (((((`irena_sbsn_proyek_dok` join `irena_sbsn_proyek_dok_kategori` on((`irena_sbsn_proyek_dok_kategori`.`id` = `irena_sbsn_proyek_dok`.`id_proyek_dok_kategori`))) join `irena_sbsn_proyek` on((`irena_sbsn_proyek`.`id` = `irena_sbsn_proyek_dok`.`id_proyek`))) join `irena_arsip` on((`irena_arsip`.`id` = `irena_sbsn_proyek_dok`.`id_arsip`))) join `irena_user` on((`irena_user`.`id` = `irena_sbsn_proyek_dok`.`update_by`))) join `irena_arsip_jenis` on((`irena_arsip_jenis`.`id` = `irena_arsip`.`id_jenis`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_sbsn_on_going`
--
DROP TABLE IF EXISTS `irena_view_sbsn_on_going`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_on_going`  AS  select `irena_sbsn_realisasi`.`id` AS `id`,`irena_sbsn_dpp`.`nama` AS `dpp`,`irena_sbsn_realisasi`.`nilai` AS `nilai`,`irena_sbsn_realisasi`.`update_date` AS `update_date`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_instansi_satker`.`nama` AS `satker`,`irena_instansi`.`nama` AS `instansi`,`irena_instansi`.`singkatan` AS `instansi_singkatan` from ((((`irena_sbsn_realisasi` join `irena_sbsn_dpp` on((`irena_sbsn_dpp`.`id` = `irena_sbsn_realisasi`.`id_dpp`))) join `irena_user` on((`irena_user`.`id` = `irena_sbsn_realisasi`.`update_by`))) join `irena_instansi_satker` on((`irena_instansi_satker`.`id` = `irena_sbsn_realisasi`.`id_satker`))) join `irena_instansi` on((`irena_instansi`.`id` = `irena_instansi_satker`.`id_instansi`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_sbsn_proyek_dpp`
--
DROP TABLE IF EXISTS `irena_view_sbsn_proyek_dpp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_proyek_dpp`  AS  select `irena_sbsn_proyek_dpp`.`id` AS `id`,`irena_sbsn_proyek_dpp`.`judul` AS `judul`,`irena_sbsn_proyek_dpp`.`nilai` AS `nilai`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_sbsn_proyek_dpp`.`update_date` AS `update_date`,`irena_sbsn_proyek`.`id` AS `id_proyek`,`irena_instansi_eselon_satu`.`nama` AS `instansi_eselon_satu`,`irena_instansi`.`nama` AS `instansi`,`irena_instansi`.`singkatan` AS `instansi_singkatan`,`irena_sbsn_kategori_proyek`.`nama` AS `kategori_proyek`,`irena_sbsn_dpp`.`nama` AS `dpp`,`irena_user`.`id_user_level` AS `user_level`,`irena_sbsn_proyek`.`output` AS `output`,`irena_sbsn_proyek`.`latar_belakang` AS `latar_belakang`,`irena_sbsn_proyek`.`tujuan` AS `tujuan`,`irena_sbsn_proyek`.`ruang_lingkup` AS `ruang_lingkup` from ((((((`irena_sbsn_proyek_dpp` join `irena_sbsn_dpp` on((`irena_sbsn_dpp`.`id` = `irena_sbsn_proyek_dpp`.`id_dpp`))) join `irena_user` on((`irena_user`.`id` = `irena_sbsn_proyek_dpp`.`update_by`))) join `irena_sbsn_proyek` on((`irena_sbsn_proyek`.`id` = `irena_sbsn_proyek_dpp`.`id_proyek`))) join `irena_instansi_eselon_satu` on((`irena_instansi_eselon_satu`.`id` = `irena_sbsn_proyek`.`id_instansi_eselon_satu`))) join `irena_instansi` on((`irena_instansi`.`id` = `irena_instansi_eselon_satu`.`id_instansi`))) join `irena_sbsn_kategori_proyek` on((`irena_sbsn_kategori_proyek`.`id` = `irena_sbsn_proyek`.`id_kategori_proyek`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_sbsn_realiasi_penyerapan_list`
--
DROP TABLE IF EXISTS `irena_view_sbsn_realiasi_penyerapan_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_realiasi_penyerapan_list`  AS  select `irena_sbsn_realisasi_penyerapan`.`id` AS `id`,`irena_sbsn_realisasi_penyerapan`.`id_realisasi` AS `id_realisasi`,`irena_sbsn_realisasi_penyerapan`.`triwulan` AS `triwulan`,`irena_sbsn_realisasi_penyerapan`.`penyerapan` AS `penyerapan`,`irena_sbsn_realisasi_penyerapan`.`progres_fisik` AS `progres_fisik`,`irena_sbsn_realisasi_penyerapan`.`permasalahan` AS `permasalahan`,`irena_sbsn_realisasi_penyerapan`.`tindak_lanjut` AS `tindak_lanjut`,`irena_sbsn_realisasi_penyerapan`.`pihak_terlibat` AS `pihak_terlibat`,`irena_sbsn_realisasi_penyerapan`.`catatan` AS `catatan`,`irena_user`.`nama_panggilan` AS `nama_panggilan` from ((`irena_sbsn_realisasi_penyerapan` join `irena_sbsn_realisasi` on((`irena_sbsn_realisasi`.`id` = `irena_sbsn_realisasi_penyerapan`.`id_realisasi`))) join `irena_user` on((`irena_user`.`id` = `irena_sbsn_realisasi_penyerapan`.`update_by`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_sbsn_usulan_awal`
--
DROP TABLE IF EXISTS `irena_view_sbsn_usulan_awal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_usulan_awal`  AS  select `irena_sbsn_proyek`.`id` AS `id_proyek`,`irena_instansi`.`nama` AS `instansi`,`irena_instansi`.`singkatan` AS `instansi_singkatan`,`irena_instansi_eselon_satu`.`nama` AS `instansi_eselon_satu`,`irena_sbsn_dpp`.`nama` AS `dpp`,`irena_sbsn_kategori_proyek`.`nama` AS `kategori_proyek`,`irena_sbsn_proyek`.`judul` AS `judul`,`irena_sbsn_proyek`.`nilai` AS `nilai`,`irena_sbsn_proyek`.`output` AS `output`,`irena_sbsn_proyek`.`latar_belakang` AS `latar_belakang`,`irena_sbsn_proyek`.`tujuan` AS `tujuan`,`irena_sbsn_proyek`.`ruang_lingkup` AS `ruang_lingkup`,`irena_sbsn_proyek`.`update_date` AS `update_date`,`irena_user`.`nama_panggilan` AS `user_nama_panggilan`,`irena_sbsn_proyek`.`nilai_admin` AS `nilai_admin`,`irena_sbsn_proyek`.`nilai_admin_id` AS `nilai_admin_id`,`irena_sbsn_proyek`.`nilai_admin_ket` AS `nilai_admin_ket`,`irena_sbsn_proyek`.`nilai_admin_date` AS `nilai_admin_date`,`irena_sbsn_proyek`.`nilai_layak` AS `nilai_layak`,`irena_sbsn_proyek`.`nilai_layak_id` AS `nilai_layak_id`,`irena_sbsn_proyek`.`nilai_layak_ket` AS `nilai_layak_ket`,`irena_sbsn_proyek`.`nilai_layak_date` AS `nilai_layak_date`,`irena_sbsn_proyek`.`masuk_dpp` AS `masuk_dpp`,`irena_sbsn_proyek`.`masuk_dpp_id` AS `masuk_dpp_id`,`irena_sbsn_proyek`.`masuk_dpp_ket` AS `masuk_dpp_ket`,`irena_sbsn_proyek`.`masuk_dpp_date` AS `masuk_dpp_date`,`irena_sbsn_proyek`.`single_multi` AS `single_multi` from (((((`irena_sbsn_proyek` join `irena_instansi_eselon_satu` on((`irena_instansi_eselon_satu`.`id` = `irena_sbsn_proyek`.`id_instansi_eselon_satu`))) join `irena_instansi` on((`irena_instansi`.`id` = `irena_instansi_eselon_satu`.`id_instansi`))) join `irena_sbsn_dpp` on((`irena_sbsn_dpp`.`id` = `irena_sbsn_proyek`.`id_dpp`))) join `irena_sbsn_kategori_proyek` on((`irena_sbsn_kategori_proyek`.`id` = `irena_sbsn_proyek`.`id_kategori_proyek`))) join `irena_user` on((`irena_user`.`id` = `irena_sbsn_proyek`.`update_by`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_sbsn_usulan_syarat`
--
DROP TABLE IF EXISTS `irena_view_sbsn_usulan_syarat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_usulan_syarat`  AS  select `irena_sbsn_proyek_syarat`.`id` AS `id`,`irena_sbsn_proyek_syarat`.`kat` AS `kat`,`irena_sbsn_proyek_syarat`.`nama` AS `nama`,`irena_sbsn_proyek_syarat`.`ket` AS `ket`,`irena_sbsn_proyek_syarat`.`berkas` AS `berkas`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_sbsn_proyek_syarat`.`id_proyek` AS `id_proyek` from (`irena_sbsn_proyek_syarat` join `irena_user` on((`irena_user`.`id` = `irena_sbsn_proyek_syarat`.`update_by`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_usulan_pln_dok`
--
DROP TABLE IF EXISTS `irena_view_usulan_pln_dok`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_usulan_pln_dok`  AS  select `irena_usulan_pln_dok`.`id` AS `id`,`irena_usulan_pln_dok`.`id_proyek` AS `id_proyek`,`irena_usulan_pln_dok`.`kat` AS `kat`,`irena_usulan_pln_dok`.`nama` AS `nama`,`irena_usulan_pln_dok`.`ket` AS `ket`,`irena_usulan_pln_dok`.`berkas` AS `berkas`,`irena_user`.`nama_panggilan` AS `nama_panggilan` from (`irena_usulan_pln_dok` join `irena_user` on((`irena_user`.`id` = `irena_usulan_pln_dok`.`update_by`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_usulan_pln_log`
--
DROP TABLE IF EXISTS `irena_view_usulan_pln_log`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_usulan_pln_log`  AS  select `irena_usulan_pln_log`.`id` AS `id`,`irena_hibah_log_kategori`.`nama` AS `kategori`,`irena_usulan_pln_log`.`nama` AS `nama`,`irena_usulan_pln_log`.`deskripsi` AS `deskripsi`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_usulan_pln_log`.`id_proyek` AS `id_proyek`,`irena_arsip_jenis`.`nama` AS `folder`,`irena_arsip`.`berkas` AS `berkas`,`irena_usulan_pln_log`.`id_log_kategori` AS `id_log_kategori`,`irena_usulan_pln_log`.`id_arsip` AS `id_arsip`,`irena_arsip`.`no` AS `no_arsip` from (((((`irena_usulan_pln_log` join `irena_usulan_pln` on((`irena_usulan_pln`.`id` = `irena_usulan_pln_log`.`id_proyek`))) join `irena_hibah_log_kategori` on((`irena_hibah_log_kategori`.`id` = `irena_usulan_pln_log`.`id_log_kategori`))) join `irena_arsip` on((`irena_arsip`.`id` = `irena_usulan_pln_log`.`id_arsip`))) join `irena_user` on((`irena_user`.`id` = `irena_usulan_pln_log`.`update_by`))) join `irena_arsip_jenis` on((`irena_arsip_jenis`.`id` = `irena_arsip`.`id_jenis`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catatan_usulan`
--
ALTER TABLE `catatan_usulan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_agenda`
--
ALTER TABLE `irena_agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_agenda_user`
--
ALTER TABLE `irena_agenda_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip`
--
ALTER TABLE `irena_arsip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_bluebook`
--
ALTER TABLE `irena_arsip_bluebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_disposisi`
--
ALTER TABLE `irena_arsip_disposisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_disposisi_aksi`
--
ALTER TABLE `irena_arsip_disposisi_aksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_disposisi_internal`
--
ALTER TABLE `irena_arsip_disposisi_internal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_disposisi_internal_aksi`
--
ALTER TABLE `irena_arsip_disposisi_internal_aksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_disposisi_jenis`
--
ALTER TABLE `irena_arsip_disposisi_jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_disposisi_user`
--
ALTER TABLE `irena_arsip_disposisi_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_dk`
--
ALTER TABLE `irena_arsip_dk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_dokumen`
--
ALTER TABLE `irena_arsip_dokumen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_file`
--
ALTER TABLE `irena_arsip_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_greenbook`
--
ALTER TABLE `irena_arsip_greenbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_jenis`
--
ALTER TABLE `irena_arsip_jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_la`
--
ALTER TABLE `irena_arsip_la`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_lampiran`
--
ALTER TABLE `irena_arsip_lampiran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_pln`
--
ALTER TABLE `irena_arsip_pln`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_status`
--
ALTER TABLE `irena_arsip_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_tingkat`
--
ALTER TABLE `irena_arsip_tingkat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_arsip_usulan`
--
ALTER TABLE `irena_arsip_usulan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_bb_layak`
--
ALTER TABLE `irena_bb_layak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_bluebook_kode`
--
ALTER TABLE `irena_bluebook_kode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_bluebook_lokasi`
--
ALTER TABLE `irena_bluebook_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_bluebook_proyek`
--
ALTER TABLE `irena_bluebook_proyek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_ci_sessions`
--
ALTER TABLE `irena_ci_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `irena_daftarkegiatan_proyek`
--
ALTER TABLE `irena_daftarkegiatan_proyek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_dk_layak`
--
ALTER TABLE `irena_dk_layak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_eselon_1`
--
ALTER TABLE `irena_eselon_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_gb_layak`
--
ALTER TABLE `irena_gb_layak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_greenbook_kode`
--
ALTER TABLE `irena_greenbook_kode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_greenbook_lokasi`
--
ALTER TABLE `irena_greenbook_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_greenbook_proyek`
--
ALTER TABLE `irena_greenbook_proyek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_hibah_donor`
--
ALTER TABLE `irena_hibah_donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_hibah_jenis`
--
ALTER TABLE `irena_hibah_jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_hibah_log`
--
ALTER TABLE `irena_hibah_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_hibah_log_kategori`
--
ALTER TABLE `irena_hibah_log_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_hibah_proyek`
--
ALTER TABLE `irena_hibah_proyek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_hibah_proyek_disb`
--
ALTER TABLE `irena_hibah_proyek_disb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_hibah_proyek_dok`
--
ALTER TABLE `irena_hibah_proyek_dok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_hibah_proyek_drkh`
--
ALTER TABLE `irena_hibah_proyek_drkh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_hibah_proyek_drkh_pc`
--
ALTER TABLE `irena_hibah_proyek_drkh_pc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_infra`
--
ALTER TABLE `irena_infra`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_instansi`
--
ALTER TABLE `irena_instansi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_instansi_2`
--
ALTER TABLE `irena_instansi_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_instansi_campur`
--
ALTER TABLE `irena_instansi_campur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_instansi_eselon_satu`
--
ALTER TABLE `irena_instansi_eselon_satu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_instansi_satker`
--
ALTER TABLE `irena_instansi_satker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_kategori_lender`
--
ALTER TABLE `irena_kategori_lender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_kategori_program`
--
ALTER TABLE `irena_kategori_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_la_proyek`
--
ALTER TABLE `irena_la_proyek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_lender`
--
ALTER TABLE `irena_lender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_mata_uang`
--
ALTER TABLE `irena_mata_uang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_pendanaan`
--
ALTER TABLE `irena_pendanaan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_prioritas`
--
ALTER TABLE `irena_prioritas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_program`
--
ALTER TABLE `irena_program`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_program_pln`
--
ALTER TABLE `irena_program_pln`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_provinsi`
--
ALTER TABLE `irena_provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_provinsi_kabkota`
--
ALTER TABLE `irena_provinsi_kabkota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_sbsn_dpp`
--
ALTER TABLE `irena_sbsn_dpp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_sbsn_kategori_proyek`
--
ALTER TABLE `irena_sbsn_kategori_proyek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_sbsn_on_going`
--
ALTER TABLE `irena_sbsn_on_going`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_sbsn_proyek`
--
ALTER TABLE `irena_sbsn_proyek`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_sbsn_proyek_dok`
--
ALTER TABLE `irena_sbsn_proyek_dok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_sbsn_proyek_dok_kategori`
--
ALTER TABLE `irena_sbsn_proyek_dok_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_sbsn_proyek_dpp`
--
ALTER TABLE `irena_sbsn_proyek_dpp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_sbsn_proyek_log`
--
ALTER TABLE `irena_sbsn_proyek_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_sbsn_proyek_syarat`
--
ALTER TABLE `irena_sbsn_proyek_syarat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_sbsn_realisasi`
--
ALTER TABLE `irena_sbsn_realisasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_sbsn_realisasi_penyerapan`
--
ALTER TABLE `irena_sbsn_realisasi_penyerapan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_sbsn_satker`
--
ALTER TABLE `irena_sbsn_satker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_sektor`
--
ALTER TABLE `irena_sektor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_status_lembaga`
--
ALTER TABLE `irena_status_lembaga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_status_lender_pln`
--
ALTER TABLE `irena_status_lender_pln`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_status_umum`
--
ALTER TABLE `irena_status_umum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_user`
--
ALTER TABLE `irena_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_user_level`
--
ALTER TABLE `irena_user_level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_user_log`
--
ALTER TABLE `irena_user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_usulan_adm`
--
ALTER TABLE `irena_usulan_adm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_usulan_layak`
--
ALTER TABLE `irena_usulan_layak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_usulan_log_kategori`
--
ALTER TABLE `irena_usulan_log_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_usulan_pln`
--
ALTER TABLE `irena_usulan_pln`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_usulan_pln_dok`
--
ALTER TABLE `irena_usulan_pln_dok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_usulan_pln_log`
--
ALTER TABLE `irena_usulan_pln_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_usulkan_bb`
--
ALTER TABLE `irena_usulkan_bb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catatan_usulan`
--
ALTER TABLE `catatan_usulan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `irena_agenda`
--
ALTER TABLE `irena_agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `irena_agenda_user`
--
ALTER TABLE `irena_agenda_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `irena_arsip`
--
ALTER TABLE `irena_arsip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;
--
-- AUTO_INCREMENT for table `irena_arsip_bluebook`
--
ALTER TABLE `irena_arsip_bluebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_arsip_disposisi`
--
ALTER TABLE `irena_arsip_disposisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `irena_arsip_disposisi_aksi`
--
ALTER TABLE `irena_arsip_disposisi_aksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `irena_arsip_disposisi_internal`
--
ALTER TABLE `irena_arsip_disposisi_internal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `irena_arsip_disposisi_internal_aksi`
--
ALTER TABLE `irena_arsip_disposisi_internal_aksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `irena_arsip_disposisi_jenis`
--
ALTER TABLE `irena_arsip_disposisi_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `irena_arsip_disposisi_user`
--
ALTER TABLE `irena_arsip_disposisi_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `irena_arsip_dk`
--
ALTER TABLE `irena_arsip_dk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_arsip_dokumen`
--
ALTER TABLE `irena_arsip_dokumen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `irena_arsip_file`
--
ALTER TABLE `irena_arsip_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `irena_arsip_greenbook`
--
ALTER TABLE `irena_arsip_greenbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_arsip_jenis`
--
ALTER TABLE `irena_arsip_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `irena_arsip_la`
--
ALTER TABLE `irena_arsip_la`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_arsip_lampiran`
--
ALTER TABLE `irena_arsip_lampiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `irena_arsip_pln`
--
ALTER TABLE `irena_arsip_pln`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `irena_arsip_status`
--
ALTER TABLE `irena_arsip_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `irena_arsip_tingkat`
--
ALTER TABLE `irena_arsip_tingkat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `irena_arsip_usulan`
--
ALTER TABLE `irena_arsip_usulan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `irena_bb_layak`
--
ALTER TABLE `irena_bb_layak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `irena_bluebook_kode`
--
ALTER TABLE `irena_bluebook_kode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `irena_bluebook_lokasi`
--
ALTER TABLE `irena_bluebook_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_bluebook_proyek`
--
ALTER TABLE `irena_bluebook_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT for table `irena_daftarkegiatan_proyek`
--
ALTER TABLE `irena_daftarkegiatan_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `irena_dk_layak`
--
ALTER TABLE `irena_dk_layak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `irena_eselon_1`
--
ALTER TABLE `irena_eselon_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1128;
--
-- AUTO_INCREMENT for table `irena_gb_layak`
--
ALTER TABLE `irena_gb_layak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `irena_greenbook_kode`
--
ALTER TABLE `irena_greenbook_kode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `irena_greenbook_lokasi`
--
ALTER TABLE `irena_greenbook_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_greenbook_proyek`
--
ALTER TABLE `irena_greenbook_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `irena_hibah_donor`
--
ALTER TABLE `irena_hibah_donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `irena_hibah_jenis`
--
ALTER TABLE `irena_hibah_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `irena_hibah_log`
--
ALTER TABLE `irena_hibah_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `irena_hibah_log_kategori`
--
ALTER TABLE `irena_hibah_log_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `irena_hibah_proyek`
--
ALTER TABLE `irena_hibah_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `irena_hibah_proyek_disb`
--
ALTER TABLE `irena_hibah_proyek_disb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_hibah_proyek_dok`
--
ALTER TABLE `irena_hibah_proyek_dok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `irena_hibah_proyek_drkh`
--
ALTER TABLE `irena_hibah_proyek_drkh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `irena_hibah_proyek_drkh_pc`
--
ALTER TABLE `irena_hibah_proyek_drkh_pc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_infra`
--
ALTER TABLE `irena_infra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `irena_instansi`
--
ALTER TABLE `irena_instansi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `irena_instansi_2`
--
ALTER TABLE `irena_instansi_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `irena_instansi_campur`
--
ALTER TABLE `irena_instansi_campur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `irena_instansi_eselon_satu`
--
ALTER TABLE `irena_instansi_eselon_satu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `irena_instansi_satker`
--
ALTER TABLE `irena_instansi_satker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `irena_kategori_lender`
--
ALTER TABLE `irena_kategori_lender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `irena_kategori_program`
--
ALTER TABLE `irena_kategori_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `irena_la_proyek`
--
ALTER TABLE `irena_la_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_lender`
--
ALTER TABLE `irena_lender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `irena_mata_uang`
--
ALTER TABLE `irena_mata_uang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `irena_pendanaan`
--
ALTER TABLE `irena_pendanaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `irena_prioritas`
--
ALTER TABLE `irena_prioritas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `irena_program`
--
ALTER TABLE `irena_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_program_pln`
--
ALTER TABLE `irena_program_pln`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `irena_provinsi`
--
ALTER TABLE `irena_provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `irena_provinsi_kabkota`
--
ALTER TABLE `irena_provinsi_kabkota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;
--
-- AUTO_INCREMENT for table `irena_sbsn_dpp`
--
ALTER TABLE `irena_sbsn_dpp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `irena_sbsn_kategori_proyek`
--
ALTER TABLE `irena_sbsn_kategori_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `irena_sbsn_proyek`
--
ALTER TABLE `irena_sbsn_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `irena_sbsn_proyek_dok`
--
ALTER TABLE `irena_sbsn_proyek_dok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `irena_sbsn_proyek_dok_kategori`
--
ALTER TABLE `irena_sbsn_proyek_dok_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `irena_sbsn_proyek_dpp`
--
ALTER TABLE `irena_sbsn_proyek_dpp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_sbsn_proyek_log`
--
ALTER TABLE `irena_sbsn_proyek_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_sbsn_proyek_syarat`
--
ALTER TABLE `irena_sbsn_proyek_syarat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `irena_sbsn_realisasi`
--
ALTER TABLE `irena_sbsn_realisasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `irena_sbsn_realisasi_penyerapan`
--
ALTER TABLE `irena_sbsn_realisasi_penyerapan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `irena_sbsn_satker`
--
ALTER TABLE `irena_sbsn_satker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `irena_sektor`
--
ALTER TABLE `irena_sektor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `irena_status_lembaga`
--
ALTER TABLE `irena_status_lembaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `irena_status_lender_pln`
--
ALTER TABLE `irena_status_lender_pln`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `irena_status_umum`
--
ALTER TABLE `irena_status_umum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `irena_user`
--
ALTER TABLE `irena_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `irena_user_level`
--
ALTER TABLE `irena_user_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `irena_user_log`
--
ALTER TABLE `irena_user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=521;
--
-- AUTO_INCREMENT for table `irena_usulan_adm`
--
ALTER TABLE `irena_usulan_adm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `irena_usulan_layak`
--
ALTER TABLE `irena_usulan_layak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `irena_usulan_log_kategori`
--
ALTER TABLE `irena_usulan_log_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_usulan_pln`
--
ALTER TABLE `irena_usulan_pln`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `irena_usulan_pln_dok`
--
ALTER TABLE `irena_usulan_pln_dok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `irena_usulan_pln_log`
--
ALTER TABLE `irena_usulan_pln_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `irena_usulkan_bb`
--
ALTER TABLE `irena_usulkan_bb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
