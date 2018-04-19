-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2018 at 06:23 AM
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
-- Table structure for table `catatan_bb`
--

CREATE TABLE `catatan_bb` (
  `id` int(11) NOT NULL,
  `id_bb_proyek` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catatan_bb`
--

INSERT INTO `catatan_bb` (`id`, `id_bb_proyek`, `id_user`, `waktu`, `catatan`) VALUES
(1, 193, 20, '2018-02-07 03:40:22', 'tes'),
(2, 193, 20, '2018-02-07 03:40:22', 'tes');

-- --------------------------------------------------------

--
-- Table structure for table `catatan_dk`
--

CREATE TABLE `catatan_dk` (
  `id` int(11) NOT NULL,
  `id_dk_proyek` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catatan_gb`
--

CREATE TABLE `catatan_gb` (
  `id` int(11) NOT NULL,
  `id_gb_proyek` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `catatan_la`
--

CREATE TABLE `catatan_la` (
  `id` int(11) NOT NULL,
  `id_la_proyek` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `is_gb_update_at` datetime NOT NULL,
  `is_kasubdit_layak` int(11) NOT NULL,
  `kasubdit_layak_by` int(11) NOT NULL,
  `kasubdit_layak_at` datetime NOT NULL,
  `layak_catatan_kasubdit` text NOT NULL,
  `is_gb_kasubdit` int(11) NOT NULL,
  `kasubdit_gb_by` int(11) NOT NULL,
  `kasubdit_gb_at` datetime NOT NULL,
  `gb_catatan_catatan` text NOT NULL,
  `layak_keterangan` text NOT NULL,
  `gb_catatan_kasubdit` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_bb_layak`
--

INSERT INTO `irena_bb_layak` (`id`, `id_proyek_bb`, `is_layak`, `update_by`, `update_at`, `is_GB`, `is_gb_update_by`, `is_gb_update_at`, `is_kasubdit_layak`, `kasubdit_layak_by`, `kasubdit_layak_at`, `layak_catatan_kasubdit`, `is_gb_kasubdit`, `kasubdit_gb_by`, `kasubdit_gb_at`, `gb_catatan_catatan`, `layak_keterangan`, `gb_catatan_kasubdit`) VALUES
(70, '194', 2, '20', '2018-02-12 18:06:31', 0, '20', '2018-02-28 15:46:34', 2, 1, '2018-02-12 18:06:52', '-', 0, 0, '0000-00-00 00:00:00', '', '-', ''),
(71, '206', 2, '20', '2018-02-23 17:29:55', 0, '20', '2018-03-15 14:44:05', 2, 1, '2018-02-23 17:30:59', '-', 2, 1, '2018-02-26 14:28:24', '-', '-', '-'),
(72, '207', 2, '20', '2018-03-15 14:50:48', 2, '20', '2018-04-04 13:01:39', 2, 2, '2018-03-15 14:51:40', 'layak masuk greenbook', 2, 1, '2018-04-02 17:09:43', '-', 'Sudah layak masuk GreenBook', '-'),
(73, '208', 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(74, '209', 2, '20', '2018-03-20 21:43:23', 2, '20', '2018-03-20 21:44:59', 2, 1, '2018-03-20 21:44:01', '- sudah lengkap', 2, 1, '2018-03-21 12:00:05', 'dapat rekomendasi masuk Greenbook', '- layak', '- direkomendasikan masuk Greenbook 2017'),
(75, '210', 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(76, '211', 2, '20', '2018-03-20 21:41:07', 2, '20', '2018-03-20 21:45:08', 2, 1, '2018-03-20 21:43:39', '- sudah lengkap dan layak', 2, 1, '2018-04-03 15:44:26', '-dapat rekomendasi masuk Greenbook', 'Sudah layak masuk BB', '-'),
(77, '212', 2, '20', '2018-04-03 14:56:51', 0, '', '0000-00-00 00:00:00', 2, 1, '2018-04-03 14:58:42', '-', 0, 0, '0000-00-00 00:00:00', '', '-', ''),
(78, '213', 2, '20', '2018-04-03 16:30:50', 2, '20', '2018-04-04 10:21:40', 2, 1, '2018-04-03 16:31:13', '-', 2, 1, '2018-04-04 10:22:20', '-', '-', '-'),
(79, '214', 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(80, '215', 2, '20', '2018-04-19 10:59:36', 2, '20', '2018-04-19 11:00:48', 2, 1, '2018-04-19 11:00:08', '-', 2, 1, '2018-04-19 11:02:32', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `irena_bb_lokasi`
--

CREATE TABLE `irena_bb_lokasi` (
  `id` int(11) NOT NULL,
  `id_bb_proyek` int(11) NOT NULL,
  `id_bb` int(11) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `id_instansi` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `id_lender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_bb_lokasi`
--

INSERT INTO `irena_bb_lokasi` (`id`, `id_bb_proyek`, `id_bb`, `id_lokasi`, `id_instansi`, `id_status`, `id_lender`) VALUES
(15, 206, 1, 339, 61, 3, 0),
(16, 206, 1, 371, 61, 3, 0),
(17, 206, 1, 208, 61, 3, 0),
(66, 210, 2, 347, 23, 1, 0),
(67, 210, 2, 359, 23, 1, 0),
(68, 210, 2, 370, 23, 1, 0),
(69, 208, 2, 349, 57, 3, 0),
(70, 208, 2, 350, 57, 3, 0),
(71, 208, 2, 351, 57, 3, 0),
(72, 208, 2, 352, 57, 3, 0),
(73, 208, 2, 355, 57, 3, 0),
(74, 208, 2, 5, 57, 3, 0),
(75, 208, 2, 361, 57, 3, 0),
(76, 208, 2, 362, 57, 3, 0),
(77, 208, 2, 369, 57, 3, 0),
(82, 209, 2, 344, 23, 3, 3),
(84, 211, 2, 369, 23, 1, 1),
(87, 207, 2, 333, 15, 6, 1),
(88, 212, 2, 341, 23, 3, 0),
(89, 212, 2, 356, 23, 3, 0),
(91, 213, 2, 344, 23, 3, 0),
(95, 214, 2, 344, 23, 1, 0);

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
(1, 'BB17', 'Bluebook 2015-2019 Revisi Tahun 2017', 'BBR 2017'),
(2, 'BB15', 'Bluebook 2015 -2019', 'BB 2015-2019'),
(3, 'BB16', 'Bluebook 2015-2019 Revisi Tahun 2016', 'BBR 2016');

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
  `instansi_pelaksana` text NOT NULL,
  `tahun_usulan` int(11) NOT NULL,
  `judul_proyek_eng` varchar(300) DEFAULT NULL,
  `judul_proyek_id` varchar(300) DEFAULT NULL,
  `ruang_lingkup_eng` text,
  `ruang_lingkup_id` text,
  `durasi` int(11) NOT NULL,
  `proyeksi_tahun_pertama_penarikan` int(11) NOT NULL,
  `id_status_lembaga` varchar(5) NOT NULL,
  `id_status_lender` varchar(5) NOT NULL,
  `output` text,
  `outcome` text,
  `nilai_pinjaman` bigint(20) NOT NULL,
  `nilai_hibah` bigint(20) NOT NULL,
  `dana_pendamping` bigint(20) NOT NULL,
  `id_lender` varchar(5) NOT NULL,
  `Files` int(11) NOT NULL,
  `id_sektor` int(11) NOT NULL,
  `infra` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `lokasi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_bluebook_proyek`
--

INSERT INTO `irena_bluebook_proyek` (`id`, `id_usulan_proyek`, `id_bluebook`, `id_usulan`, `id_program`, `id_instansi`, `id_eselon_1`, `instansi_pelaksana`, `tahun_usulan`, `judul_proyek_eng`, `judul_proyek_id`, `ruang_lingkup_eng`, `ruang_lingkup_id`, `durasi`, `proyeksi_tahun_pertama_penarikan`, `id_status_lembaga`, `id_status_lender`, `output`, `outcome`, `nilai_pinjaman`, `nilai_hibah`, `dana_pendamping`, `id_lender`, `Files`, `id_sektor`, `infra`, `id_status`, `lokasi`) VALUES
(207, 0, '2', 26, '7', '15', NULL, 'Kementerian Perhubungan', 2016, 'The Development of Patimban Port-Stage 1', 'Pembangunan Pelabuhan Patimban Subang Jawa Barat', '1. Preparation of detailed design and technical specifications;\r\n2. Preparation and implementation of procurement for port construction and opeartion;\r\n3. Construction of terminal and other facilities.', 'a. Penyusunan desain serta spesifikasi teknis;\r\nb. Pelaksanaan pelelangan;\r\nc. Pelaksanaan kegiatan konstruksi;\r\nd. Pelaksanaan serah terima hasil pekerjaan;\r\ne. Konsesi dan kerjasama pengoperasian pelabuhan.', 60, 2018, '16', '1', 'Providing port facilities, consisting of :\r\n1. Containers terminals with a total length of 4.320 m along the buildup terminal facilites covering an area of 301 hectares;\r\n2. Car Terminal with length of wharves 690m;\r\n3. Ro-ro Terminal with length of wharves 200m;\r\n4. State Ships Terminal with length of wharves 300m;\r\n5. The dredging of access channel and port basin up to - 17m LWS;\r\n6. Pipe protection;\r\n7. Breakwater and seawall;\r\n8. Navigational Aid;\r\n9. Port Backup Area;\r\n10. Access Road.', '1. Menekan biaya logistik dengan mendekatkan pusat produksi (industri manufaktur)\r\ndengan outlet pelabuhan;\r\n2. Memperkuat ketahanan perekonomian dengan menyediakan backup outlet pelabuhan\r\nyang melayani wilayah industri yang menghasilkan ±70% kargo dalam negeri;\r\n3. Menurunkan tingkat kemacetan dan mengurangi kerugian akibat kemacetan di Ibukota\r\nNegara dengan memindahkan sebagian trafik angkutan berat ke luar wilayah Ibukota;\r\n4. Menekan penggunaan BBM (bersubsidi) dan meningkatkan utilisasi truk kontainer\r\ndengan memperpendek jarak tempuh dari industri manufaktur ke pelabuhan;\r\n5. Menjamin keselamatan pelayaran dan area eksplorasi migas di kawasan lepas pantai\r\nUtara Jawa Barat;\r\n6. Membantu pertumbuhan dan perkembangan wilayah Kabupaten Subang dan Provinsi\r\nJawa Barat secara umum.', 1700000000, 0, 595000000, '1', 0, 1, 0, 6, '333'),
(211, 0, '2', 38, '5', '23', NULL, 'a. Direktorat Jenderal Sumber Daya Air\r\nb. BBWS Sumatera VIII', 2015, 'Komering Irrigation Project Stage III', 'Pekerjaan Irigasi Komering Tahap III', 'The proposed project includes :\r\n i) review of design of main and tertian; irrigation system in Lempuing\r\nscheme for 8,500 ha, \r\nii) civil works for main and tertiary irrigation system in Lempuing scheme for 8,500\r\nha, \r\niii) civil works for improvement of existing irrigation facilities, \r\niv) soft component for strengthening of irrigation water management in Lempuing scheme, \r\nv) review of overall development plan of Komering Irrigation Project', 'Proyek yang diusulkan meliputi :\r\ni) review desain jaringan irigasi utama dan tersier Lempuing\r\nseluas 8.500 ha,\r\n ii) pekerjaan sipil untuk jaringan irigasi utama dan tersier Lempuing seluas 8.500\r\nha,\r\niii) pekerjaan sipil untuk perbaikan fasilitas irigasi yang sudah ada, \r\niv) soft komponen untuk memperkuat pengelolaan air irigasi di Lempuing,\r\n v) review rencana pembangunan secara keseluruhan Proyek Irigasi Komering', 96, 2015, '16', '1', '1. Pembangunan saluran sekunder dan saluran sub-sekunder Lempuing: 85 km\r\n2. Peningkatan Jaringan Tersier: 8.500 ha\r\n3. Peningkatan fasilitas irigasi yang sudah ada di Bendung Perjaya, saluran utama, dan saluran\r\nsekunder Belitang.\r\n4. Soft Component: penguatan pengelolaan air irigasi\r\n5. Review Rencana Pembangunan Keseluruhan Proyek Irigasi', '1. Peningkatan daerah irigasi 8.500 ha\r\n2. Meningkatkan itensitas penanaman padi dari yang saat ini 100% menjadi 250%\r\n3. Meningkatkan produksi padi dari yang saat ini 3,0 ton/ha menjadi 5,0 ton/ha', 120000000, 0, 12000000, '1', 0, 3, 0, 1, '369'),
(212, 103, '2', 103, '5', '23', NULL, 'a. Direktorat Jenderal Sumber Daya Air', 2015, 'The Urgent Rehabilitation of Strategic Irrigation for Western Region of Indonesia', 'Rehabilitasi Mendesak untuk Irigasi yang Strategis di Indonesia Bagian Barat', 'a. Rehabilitation and modernization of irrigation facilities\r\nb. Improvement of irrgation and drainage systems (new)\r\nc. O&M capacity building', 'a. Rehabilitasi dan modernisasi fasilitas irigasi\r\nb. Meningkatkan sistem irigasi dan drainase (baru)\r\nc. Peningkatan kapasitas O&P', 48, 2015, '16', '1', 'a. Untuk menjamin semua kegiatan pertanian dengan merehabilitasi dan memodernisasi sistem irigasi dan drainase yang rusak dan memburuk;\r\nb. Untuk meningkatkan produksi pertanian dan berkontribusi terhadap swasembada pangan;\r\nc. Untuk meningkatkan pendapatan petani dengan penggunaan lahan instensif di daerah subur, dan mengembangkan praktek-praktek budidaya baru;\r\nd. Untuk meningkatkan kesempatan kerja, khususnya bagi penduduk pedesaan;\r\ne. Untuk meningkatkan kondisi kehidupan penduduk di wilayah Proyek dan menyediakan pasokan air desa yang tepat;\r\nf. Untuk meningkatkan penerapan O&P dan\r\ng. Untuk memperkuat WUA dan FWUA (Federasi APA) untuk mengadopsi PIM (Pengelolaan Irigasi Partisipatif)', 'a. Rehabilitasi Mendesak untuk Irigasi yang Strategis di Indonesia Bagian Barat seluas 38,523 Ha (Teluk Lada 19,618 ha, Rawa Sragi 1 dan Rawa Pisang 19,118 ha)', 195778000, 0, 27149500, '0', 0, 1, 0, 3, '341,356'),
(213, 0, '2', 65, '6', '23', NULL, 'a. Direktorat Jenderal Sumber Daya Air', 2015, 'Engineering Service for Dam Multipurpose Development Project', 'Penyiapan teknis untuk pembangunan waduk serbaguna', 'a. Conducting analysis for dam construction and its facilities, operation and maintenance, as well as procurement mechanism;\r\nb. Conducting analysis in term of detailed design, land acquistion, resstlement plan and environmental impact assessment\r\nc. Implementing the program planning, project funding analysis and tender document preparation', 'a. Analisis rencana teknis pembangunan bendungan beserta fasilitasnya, operasi,\r\npemeliharaan dan mekanisme pengadaan barang dan jasa\r\nb. Analisis penyiapan detail desain, pengadaan lahan dan rencana pemukiman kembali\r\nserta AMDAL\r\nc. Melaksanakan perencanaan program, analisis pembiayaan proyek dan persiapan\r\ndokumen lelang', 60, 2015, '16', '1', 'a. Detail desain pembangunan bendungan dan kelengkapan dokumen AMDAL,LARAP\r\nb. Mekanisme pengadaaan, rencana pelaksanaan dan standar dokumen pengadaan\r\nc. Manajemen pengelolaan proyek dan analisis pembiayaannya', 'a. Meningkatkan perencanaan untuk persiapan pembangunan bendungan beserta fasilitas\r\npendukungnya dan mekanisme pengadaan barang!jasanya\r\nb. Analisa biaya dan manfaat (B/C ratio) dari sebelum dan sesudah ada proyek', 100000000, 0, 0, '0', 0, 1, 0, 3, '344'),
(214, 0, '2', 104, '13', '23', NULL, 'a. Direktorat Jenderal Pembiayaan Perumahan;\r\nb. Kementerian Keuangan;\r\nc. Otoritas Jasa Keuangan (OJK);', 2016, 'Financial Support for Low Income Households', 'Program Dukungan Pembiayaan Perumahan Bagi Rumah Tangga Berpenghasilan Rendah', 'a. Capacity Building of Financial Institutions\r\nb. Housing Micro Finance System', 'a. Capacity Building of Financial Institutions\r\nb. Housing Micro Finance System', 48, 2017, '16', '1', 'a. Capacity Building Report on Financing Institutions in selected cities;\r\nb. Operational standards implementation in Mortgage Financing Institutions (mortgage center);\r\nc. Documentation of Good Practices on Housing Micro Finance Initiatives;\r\nd. Market profile for Housing Finance in selected cities;\r\ne. Training Implementation Report for Financial Institutions and MFIs in selected cities;\r\nf. A Concept Note of Housing Micro Finance Product;\r\ng. Report study of the housing market in Indonesia.', 'a. Capacity Financial Institutions Assesment\r\nb. Market Demand Assesment\r\nc. Market Study Housing in Indonesia\r\nd. Pilotting', 300000000, 7000000, 15000000, '0', 0, 1, 0, 1, '344'),
(215, 0, '3', 105, '13', '23', NULL, 'a. Direktorat Jenderal Pembiayaan Perumahan;\r\nb. Direktorat Jenderal Penyediaan Perumahan.', 2016, 'National Affordable Housing Program', 'National Affordable Housing Program', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', 36, 2017, '16', '1', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', 450000000, 0, 0, '0', 0, 10, 1, 1, '344');

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
  `ruang_lingkup_id` longtext NOT NULL,
  `ruang_lingkup_eng` longtext NOT NULL,
  `durasi` int(11) NOT NULL,
  `id_status_lembaga` varchar(5) NOT NULL,
  `id_status_lender` varchar(5) NOT NULL,
  `proyeksi_tahun_pertama_penarikan` int(11) NOT NULL,
  `output` longtext NOT NULL,
  `outcome` longtext NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `nilai_pinjaman` bigint(20) NOT NULL,
  `nilai_hibah` bigint(20) NOT NULL,
  `tahun_usulan` varchar(5) NOT NULL,
  `dana_usulan` bigint(20) NOT NULL,
  `tgl_DK` date NOT NULL,
  `dana_pendamping` bigint(20) NOT NULL,
  `id_sektor` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `infra` int(11) NOT NULL,
  `id_bb_proyek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_daftarkegiatan_proyek`
--

INSERT INTO `irena_daftarkegiatan_proyek` (`id`, `id_usulan`, `id_gb_proyek`, `id_greenbook`, `id_bluebook`, `id_instansi`, `id_program`, `id_lender`, `id_eselon_1`, `instansi_pelaksana`, `judul_proyek_id`, `judul_proyek_eng`, `ruang_lingkup_id`, `ruang_lingkup_eng`, `durasi`, `id_status_lembaga`, `id_status_lender`, `proyeksi_tahun_pertama_penarikan`, `output`, `outcome`, `lokasi`, `nilai_pinjaman`, `nilai_hibah`, `tahun_usulan`, `dana_usulan`, `tgl_DK`, `dana_pendamping`, `id_sektor`, `id_status`, `infra`, `id_bb_proyek`) VALUES
(5, '26', 32, '3', '2', '15', '7', '1', '', 'Kementerian Perhubungan', 'Pembangunan Pelabuhan Patimban Subang Jawa Barat', 'The Development of Patimban Port-Stage 1', 'a. Penyusunan desain serta spesifikasi teknis;\r\nb. Pelaksanaan pelelangan;\r\nc. Pelaksanaan kegiatan konstruksi;\r\nd. Pelaksanaan serah terima hasil pekerjaan;\r\ne. Konsesi dan kerjasama pengoperasian pelabuhan.', 'A. Consulting Services :\r\n1. Port Related Facilities Development\r\n2. Access Road Development\r\n3. Port Operator Selection\r\n\r\nB. Civil Works :\r\n1. Terminal for Phase 1-1 (Land Reclamation. Soil Improvement, Quay Wall, Yard Pavement, building and utilities witihin port facilities, port inner road at sea side. Dredging for Basin (Depth - 10m), and other related construction works.\r\n2. Dredging for Access Channel (-10 m), Seawall and Revetment, Breakwater, Navigation aids, and other related construction works.\r\n3. Connecting Bridge and utilities within Connecting Bridge facilities\r\n4. Access Road at land side, utility within access road facilities\r\n5. Parts of Terminals for Phase 1-2 (Land Reclamation, Soil Improvement, Quay Wall, pavement, Permanent building), Extension of Existing Jetty, and other related construction works.\r\n6. Dredging', 60, '16', '1', 2018, '1. Ketersediaan fasilitas terminal kontainer untuk mendukung pertumbuhan dan kegiatan\r\nkawasan industri khususnya di wilayah Jawa Barat bagian Tengah dan Utara;\r\n2. Ketersediaan fasilitas terminal kendaraan bermotor dalam rangka menunjang\r\npertumbuhan industri otomotif nasional;\r\n3. Ketersediaan fasilitas kapal Roro untuk penyeberangan antar pulau.', '1. Menekan biaya logistik dengan mendekatkan pusat produksi (industri manufaktur)\r\ndengan outlet pelabuhan;\r\n2. Memperkuat ketahanan perekonomian dengan menyediakan backup outlet pelabuhan\r\nyang melayani wilayah industri yang menghasilkan ±70% kargo dalam negeri;\r\n3. Menurunkan tingkat kemacetan dan mengurangi kerugian akibat kemacetan di Ibukota\r\nNegara dengan memindahkan sebagian trafik angkutan berat ke luar wilayah Ibukota;\r\n4. Menekan penggunaan BBM (bersubsidi) dan meningkatkan utilisasi truk kontainer\r\ndengan memperpendek jarak tempuh dari industri manufaktur ke pelabuhan;\r\n5. Menjamin keselamatan pelayaran dan area eksplorasi migas di kawasan lepas pantai\r\nUtara Jawa Barat;\r\n6. Membantu pertumbuhan dan perkembangan wilayah Kabupaten Subang dan Provinsi\r\nJawa Barat secara umum.', '333', 1025051724, 0, '2016', 0, '2017-07-31', 37540100, 1, 3, 1, 207),
(6, '105', 40, '3', '3', '23', '13', '5', '', 'a. Direktorat Jenderal Pembiayaan Perumahan;\r\nb. Direktorat Jenderal Penyediaan Perumahan.', 'National Affordable Housing Program', 'National Affordable Housing Program', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', 36, '16', '1', 2017, '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '344', 450000000, 0, '2016', 0, '2017-10-07', 0, 1, 1, 1, 215);

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
  `catatan_staff_layak` text NOT NULL,
  `la_cat_staff` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_dk_layak`
--

INSERT INTO `irena_dk_layak` (`id`, `id_proyek_dk`, `is_layak`, `is_kasubdit_layak`, `update_by`, `update_at`, `is_la`, `is_la_update_by`, `is_la_update_at`, `kasubdit_layak_by`, `kasubdit_layak_at`, `layak_catatan_kasubdit`, `is_la_kasubdit`, `kasubdit_la_by`, `kasubdit_la_at`, `la_catatan_kasubdit`, `catatan_staff_layak`, `la_cat_staff`) VALUES
(1, '1', 1, 0, '', '2017-12-12 08:23:47', 0, '', '2017-12-19', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(2, '2', 0, 0, '', '2017-12-15 05:16:37', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(3, '3', 2, 0, '', '2017-12-15 05:19:42', 2, '', '2017-12-18', 2, '0000-00-00 00:00:00', '', 2, 0, '0000-00-00 00:00:00', '', '', ''),
(7, '7', 1, 0, '', '2017-12-18 06:33:26', 0, '', '2017-12-18', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(10, '10', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(11, '11', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(12, '12', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(13, '13', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(14, '14', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(15, '15', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(16, '16', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(17, '17', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(18, '18', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(19, '9', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(20, '22', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(21, '23', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(22, '24', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(23, '25', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(24, '26', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(25, '27', 1, 0, '', '2017-12-18 10:30:08', 0, '', '2017-12-18', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(26, '6', 2, 2, '1', '2018-04-19 11:07:02', 2, '20', '2018-04-19', 1, '2018-04-19 11:10:23', '-', 2, 1, '2018-04-19 11:11:15', '-', '-', '-'),
(28, '5', 2, 2, '1', '2018-03-15 18:08:36', 2, '20', '2018-03-19', 1, '2018-03-15 18:12:48', '- dilanjutkan ke LA', 2, 1, '2018-03-19 18:41:31', '- sudah LA', '- lanjut', '- sudah LA'),
(29, '4', 0, 0, '', '0000-00-00 00:00:00', 0, '', '0000-00-00', 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(30, '6', 2, 2, '1', '2018-04-19 11:07:02', 2, '20', '2018-04-19', 1, '2018-04-19 11:10:23', '-', 2, 1, '2018-04-19 11:11:15', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `irena_dk_lokasi`
--

CREATE TABLE `irena_dk_lokasi` (
  `id` int(11) NOT NULL,
  `id_dk_proyek` int(11) NOT NULL,
  `id_instansi` int(11) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `id_gb` int(11) NOT NULL,
  `id_bb` int(11) NOT NULL,
  `id_lender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_dk_lokasi`
--

INSERT INTO `irena_dk_lokasi` (`id`, `id_dk_proyek`, `id_instansi`, `id_lokasi`, `id_gb`, `id_bb`, `id_lender`) VALUES
(1, 4, 61, 339, 1, 1, 1),
(2, 4, 61, 373, 1, 1, 1),
(3, 4, 61, 346, 1, 1, 1),
(9, 5, 15, 333, 3, 2, 1),
(10, 6, 23, 344, 3, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `irena_dpp_lokasi`
--

CREATE TABLE `irena_dpp_lokasi` (
  `id` int(11) NOT NULL,
  `id_usulan` int(11) DEFAULT NULL,
  `id_dpp` int(11) DEFAULT NULL,
  `id_lokasi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='untuk lokasi dpp';

--
-- Dumping data for table `irena_dpp_lokasi`
--

INSERT INTO `irena_dpp_lokasi` (`id`, `id_usulan`, `id_dpp`, `id_lokasi`) VALUES
(14, 28, 6, 167),
(15, 28, 6, 338),
(16, 28, 6, 245);

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
  `catatan_staff_layak` text NOT NULL,
  `dk_cat_staff` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_gb_layak`
--

INSERT INTO `irena_gb_layak` (`id`, `id_proyek_gb`, `is_layak`, `update_by`, `update_at`, `is_dk`, `is_dk_update_by`, `is_dk_update_at`, `is_kasubdit_layak`, `kasubdit_layak_by`, `kasubdit_layak_at`, `layak_catatan_kasubdit`, `is_dk_kasubdit`, `kasubdit_dk_by`, `kasubdit_dk_at`, `dk_catatan_kasubdit`, `catatan_staff_layak`, `dk_cat_staff`) VALUES
(1, '10', 2, '', '2017-12-12 08:16:00', 2, 0, '2017-12-14', 2, 0, '0000-00-00 00:00:00', '', 2, 0, '0000-00-00 00:00:00', '', '0', ''),
(2, '11', 2, '', '2017-12-12 08:38:11', 2, 0, '2017-12-15', 2, 0, '0000-00-00 00:00:00', '', 2, 0, '0000-00-00 00:00:00', '', '0', ''),
(3, '12', 1, '', '2017-12-12 08:40:57', 1, 0, '2017-12-14', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0', ''),
(4, '13', 1, '', '2017-12-14 04:44:41', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0', ''),
(5, '14', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0', ''),
(6, '15', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0', ''),
(7, '16', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0', ''),
(8, '18', 1, '', '2017-12-14 05:29:44', 0, 0, '2017-12-18', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0', ''),
(11, '20', 1, '18', '2017-12-18 06:39:30', 0, 0, '2017-12-19', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0', ''),
(13, '22', 1, '', '2017-12-18 09:05:28', 0, 0, '2017-12-18', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0', ''),
(14, '23', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0', ''),
(15, '24', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0', ''),
(16, '25', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0', ''),
(17, '26', 1, '', '2017-12-18 10:29:48', 0, 0, '2017-12-18', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0', ''),
(18, '21', 2, '', '0000-00-00 00:00:00', 0, 0, '2017-12-21', 2, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '0', ''),
(19, '22', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(20, '23', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(21, '24', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(22, '25', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(23, '26', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(24, '27', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(25, '28', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(26, '29', 2, '20', '2018-02-13 10:14:16', 0, 0, '0000-00-00', 2, 1, '2018-02-13 10:45:02', '- oke', 0, 0, '0000-00-00 00:00:00', '', '-', ''),
(27, '30', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(28, '31', 2, '20', '2018-02-27 14:23:27', 2, 20, '2018-02-27', 2, 1, '2018-02-27 14:24:37', '-', 2, 1, '2018-02-27 17:52:30', '-', '-', 'boleh dilanjutkan'),
(29, '32', 2, '20', '2018-03-15 14:58:38', 2, 20, '2018-03-15', 2, 1, '2018-03-15 14:58:51', '-', 2, 1, '2018-03-15 15:01:38', '-', '-', '-'),
(30, '33', 2, '20', '2018-04-03 23:37:01', 0, 0, '0000-00-00', 2, 1, '2018-04-03 23:38:27', '-', 0, 0, '0000-00-00 00:00:00', '', '-', ''),
(31, '34', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(32, '35', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(33, '36', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(34, '37', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(35, '38', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(36, '39', 0, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', '', ''),
(37, '40', 2, '20', '2018-04-19 11:05:10', 2, 20, '2018-04-19', 2, 1, '2018-04-19 11:05:35', '-', 2, 1, '2018-04-19 11:06:34', '-', '-', '-');

-- --------------------------------------------------------

--
-- Table structure for table `irena_gb_lokasi`
--

CREATE TABLE `irena_gb_lokasi` (
  `id` int(11) NOT NULL,
  `id_gb_proyek` int(11) NOT NULL,
  `id_gb` int(11) NOT NULL,
  `id_bb` int(11) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `id_instansi` int(11) NOT NULL,
  `id_lender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_gb_lokasi`
--

INSERT INTO `irena_gb_lokasi` (`id`, `id_gb_proyek`, `id_gb`, `id_bb`, `id_lokasi`, `id_instansi`, `id_lender`) VALUES
(21, 31, 1, 1, 339, 61, 1),
(22, 31, 1, 1, 373, 61, 1),
(23, 31, 1, 1, 341, 61, 1),
(24, 31, 1, 1, 308, 61, 1),
(25, 10, 1, 1, 342, 57, 1),
(26, 10, 1, 1, 62, 57, 1),
(27, 10, 1, 1, 73, 57, 1),
(31, 33, 3, 2, 344, 23, 3),
(33, 32, 3, 2, 333, 15, 1),
(35, 35, 2, 2, 369, 23, 1),
(41, 34, 4, 2, 333, 15, 1),
(42, 38, 3, 2, 344, 23, 6),
(43, 36, 1, 2, 344, 23, 4),
(44, 37, 2, 2, 344, 23, 6),
(45, 39, 2, 2, 344, 23, 4),
(47, 40, 3, 3, 344, 23, 5);

-- --------------------------------------------------------

--
-- Table structure for table `irena_gb_pba`
--

CREATE TABLE `irena_gb_pba` (
  `id` int(11) NOT NULL,
  `id_usulan` int(11) DEFAULT NULL,
  `id_usulan_terkait` int(11) DEFAULT NULL,
  `nilai_ambil` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(3, 'Greenbook 2017'),
(4, 'Greenbook 2018');

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
  `ruang_lingkup_id` longtext NOT NULL,
  `ruang_lingkup_eng` longtext NOT NULL,
  `id_status_lembaga` varchar(5) NOT NULL,
  `id_status_lender` varchar(5) NOT NULL,
  `durasi` int(11) NOT NULL,
  `proyeksi_tahun_pertama_penarikan` int(11) NOT NULL,
  `output` longtext NOT NULL,
  `outcome` longtext NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `nilai_pinjaman` bigint(20) NOT NULL,
  `nilai_hibah` bigint(20) NOT NULL,
  `dana_usulan` bigint(20) NOT NULL,
  `dana_pendamping` bigint(20) NOT NULL,
  `tahun_usulan` varchar(10) NOT NULL,
  `id_sektor` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `infra` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_greenbook_proyek`
--

INSERT INTO `irena_greenbook_proyek` (`id`, `id_usulan`, `id_bb_proyek`, `id_greenbook`, `id_bluebook`, `id_instansi`, `id_program`, `id_lender`, `id_eselon_1`, `instansi_pelaksana`, `judul_proyek_id`, `judul_proyek_eng`, `ruang_lingkup_id`, `ruang_lingkup_eng`, `id_status_lembaga`, `id_status_lender`, `durasi`, `proyeksi_tahun_pertama_penarikan`, `output`, `outcome`, `lokasi`, `nilai_pinjaman`, `nilai_hibah`, `dana_usulan`, `dana_pendamping`, `tahun_usulan`, `id_sektor`, `id_status`, `infra`) VALUES
(32, '26', 207, '3', '2', '15', '7', '1', '', 'Kementerian Perhubungan', 'Pembangunan Pelabuhan Patimban Subang Jawa Barat', 'The Development of Patimban Port-Stage 1', 'a. Penyusunan desain serta spesifikasi teknis;\r\nb. Pelaksanaan pelelangan;\r\nc. Pelaksanaan kegiatan konstruksi;\r\nd. Pelaksanaan serah terima hasil pekerjaan;\r\ne. Konsesi dan kerjasama pengoperasian pelabuhan.', 'a. Penyusunan desain serta spesifikasi teknis;\r\nb. Pelaksanaan pelelangan;\r\nc. Pelaksanaan kegiatan konstruksi;\r\nd. Pelaksanaan serah terima hasil pekerjaan;\r\ne. Konsesi dan kerjasama pengoperasian pelabuhan.', '16', '1', 60, 2018, '1. Ketersediaan fasilitas terminal kontainer untuk mendukung pertumbuhan dan kegiatan\r\nkawasan industri khususnya di wilayah Jawa Barat bagian Tengah dan Utara;\r\n2. Ketersediaan fasilitas terminal kendaraan bermotor dalam rangka menunjang\r\npertumbuhan industri otomotif nasional;\r\n3. Ketersediaan fasilitas kapal Roro untuk penyeberangan antar pulau.', '1. Menekan biaya logistik dengan mendekatkan pusat produksi (industri manufaktur)\r\ndengan outlet pelabuhan;\r\n2. Memperkuat ketahanan perekonomian dengan menyediakan backup outlet pelabuhan\r\nyang melayani wilayah industri yang menghasilkan ±70% kargo dalam negeri;\r\n3. Menurunkan tingkat kemacetan dan mengurangi kerugian akibat kemacetan di Ibukota\r\nNegara dengan memindahkan sebagian trafik angkutan berat ke luar wilayah Ibukota;\r\n4. Menekan penggunaan BBM (bersubsidi) dan meningkatkan utilisasi truk kontainer\r\ndengan memperpendek jarak tempuh dari industri manufaktur ke pelabuhan;\r\n5. Menjamin keselamatan pelayaran dan area eksplorasi migas di kawasan lepas pantai\r\nUtara Jawa Barat;\r\n6. Membantu pertumbuhan dan perkembangan wilayah Kabupaten Subang dan Provinsi\r\nJawa Barat secara umum.', '333', 1025052000, 0, 0, 90672000, '2016', 1, 3, 1),
(33, '30', 209, '3', '2', '23', '4', '3', '', 'undefined', 'Peningkatan Kualitas Permukiman Kumuh', 'National Slum Upgrading', '1. Terwujudnya perubahan sikap Masyarakat\r\n2. Meningatnya partisipasi masyarakat', '1. The changing of public behaviour\r\n2. improvement community participation', '16', '1', 60, 2017, 'implementasi 21 provinsi', 'tercapainya masyarakat yang mandiri lingkungan', '344', 722880, 0, 0, 0, '2015', 1, 3, 0),
(35, '38', 211, '2', '2', '23', '5', '1', '', 'a. Direktorat Jenderal Sumber Daya Air', 'Pekerjaan Irigasi Komering Tahap III', 'Komering Irrigation Project Stage III', 'Proyek yang diusulkan meliputi :\r\ni) review desain jaringan irigasi utama dan tersier Lempuing\r\nseluas 8.500 ha,\r\n ii) pekerjaan sipil untuk jaringan irigasi utama dan tersier Lempuing seluas 8.500\r\nha,\r\niii) pekerjaan sipil untuk perbaikan fasilitas irigasi yang sudah ada, \r\niv) soft komponen untuk memperkuat pengelolaan air irigasi di Lempuing,\r\n v) review rencana pembangunan secara keseluruhan Proyek Irigasi Komering', 'The proposed project includes :\r\n i) review of design of main and tertian; irrigation system in Lempuing\r\nscheme for 8,500 ha, \r\nii) civil works for main and tertiary irrigation system in Lempuing scheme for 8,500\r\nha, \r\niii) civil works for improvement of existing irrigation facilities, \r\niv) soft component for strengthening of irrigation water management in Lempuing scheme, \r\nv) review of overall development plan of Komering Irrigation Project', '16', '1', 96, 2015, '1. Pembangunan saluran sekunder dan saluran sub-sekunder Lempuing: 85 km\r\n2. Peningkatan Jaringan Tersier: 8.500 ha\r\n3. Peningkatan fasilitas irigasi yang sudah ada di Bendung Perjaya, saluran utama, dan saluran\r\nsekunder Belitang.\r\n4. Soft Component: penguatan pengelolaan air irigasi\r\n5. Review Rencana Pembangunan Keseluruhan Proyek Irigasi', '1. Peningkatan daerah irigasi 8.500 ha\r\n2. Meningkatkan itensitas penanaman padi dari yang saat ini 100% menjadi 250%\r\n3. Meningkatkan produksi padi dari yang saat ini 3,0 ton/ha menjadi 5,0 ton/ha', '369', 120000000, 0, 0, 12000000, '2015', 1, 1, 1),
(36, '65', 213, '1', '2', '23', '6', '4', '', 'a. Direktorat Jenderal Sumber Daya Air', 'Penyiapan teknis untuk pembangunan waduk serbaguna', 'Engineering Service for Dam Multipurpose Development Project', 'a. Analisis rencana teknis pembangunan bendungan beserta fasilitasnya, operasi,\r\npemeliharaan dan mekanisme pengadaan barang dan jasa\r\nb. Analisis penyiapan detail desain, pengadaan lahan dan rencana pemukiman kembali\r\nserta AMDAL\r\nc. Melaksanakan perencanaan program, analisis pembiayaan proyek dan persiapan\r\ndokumen lelang', 'a. Conducting analysis for dam construction and its facilities, operation and maintenance, as well as procurement mechanism;\r\nb. Conducting analysis in term of detailed design, land acquistion, resstlement plan and environmental impact assessment\r\nc. Implementing the program planning, project funding analysis and tender document preparation', '16', '1', 36, 2015, 'a. Detail desain pembangunan bendungan dan kelengkapan dokumen AMDAL,LARAP\r\nb. Mekanisme pengadaaan, rencana pelaksanaan dan standar dokumen pengadaan\r\nc. Manajemen pengelolaan proyek dan analisis pembiayaannya', 'a. Meningkatkan perencanaan untuk persiapan pembangunan bendungan beserta fasilitas\r\npendukungnya dan mekanisme pengadaan barang!jasanya\r\nb. Analisa biaya dan manfaat (B/C ratio) dari sebelum dan sesudah ada proyek', '344', 1930000, 0, 0, 0, '2015', 1, 3, 1),
(37, '65', 213, '2', '2', '23', '6', '6', '', 'a. Direktorat Jenderal Sumber Daya Air', 'Penyiapan teknis untuk pembangunan waduk serbaguna', 'Engineering Service for Dam Multipurpose Development Project', 'a. Analisis rencana teknis pembangunan bendungan beserta fasilitasnya, operasi,\r\npemeliharaan dan mekanisme pengadaan barang dan jasa\r\nb. Analisis penyiapan detail desain, pengadaan lahan dan rencana pemukiman kembali\r\nserta AMDAL\r\nc. Melaksanakan perencanaan program, analisis pembiayaan proyek dan persiapan\r\ndokumen lelang', 'a. Conducting analysis for dam construction and its facilities, operation and maintenance, as well as procurement mechanism;\r\nb. Conducting analysis in term of detailed design, land acquistion, resstlement plan and environmental impact assessment\r\nc. Review of dam design;\r\nd. Certification of design;\r\ne. Procurement document preparation', '16', '1', 18, 2015, 'a. Detail desain pembangunan bendungan dan kelengkapan dokumen AMDAL,LARAP\r\nb. Mekanisme pengadaaan, rencana pelaksanaan dan standar dokumen pengadaan\r\nc. Manajemen pengelolaan proyek dan analisis pembiayaannya', 'a. Meningkatkan perencanaan untuk persiapan pembangunan bendungan beserta fasilitas\r\npendukungnya dan mekanisme pengadaan barang!jasanya\r\nb. Analisa biaya dan manfaat (B/C ratio) dari sebelum dan sesudah ada proyek', '344', 21679000, 0, 0, 0, '2015', 1, 3, 1),
(38, '65', 213, '3', '2', '23', '6', '6', '', 'a. Direktorat Jenderal Sumber Daya Air', 'Penyiapan teknis untuk pembangunan waduk serbaguna', 'Engineering Service for Dam Multipurpose Development Project', 'a. Analisis rencana teknis pembangunan bendungan beserta fasilitasnya, operasi,\r\npemeliharaan dan mekanisme pengadaan barang dan jasa\r\nb. Analisis penyiapan detail desain, pengadaan lahan dan rencana pemukiman kembali\r\nserta AMDAL\r\nc. Melaksanakan perencanaan program, analisis pembiayaan proyek dan persiapan\r\ndokumen lelang', 'a. Conducting analysis for dam construction and its facilities, operation and maintenance, as well as procurement mechanism;\r\nb. Conducting analysis in term of detailed design, land acquistion, resstlement plan and environmental impact assessment\r\nc. Implementing the program planning, project funding analysis and tender document preparation', '16', '1', 60, 2015, 'a. Detail desain pembangunan bendungan dan kelengkapan dokumen AMDAL,LARAP\r\nb. Mekanisme pengadaaan, rencana pelaksanaan dan standar dokumen pengadaan\r\nc. Manajemen pengelolaan proyek dan analisis pembiayaannya', 'a. Meningkatkan perencanaan untuk persiapan pembangunan bendungan beserta fasilitas\r\npendukungnya dan mekanisme pengadaan barang!jasanya\r\nb. Analisa biaya dan manfaat (B/C ratio) dari sebelum dan sesudah ada proyek', '344', 21611000, 0, 0, 0, '2015', 1, 3, 1),
(39, '65', 213, '2', '2', '23', '6', '4', '', 'a. Direktorat Jenderal Sumber Daya Air', 'Penyiapan teknis untuk pembangunan waduk serbaguna', 'Engineering Service for Dam Multipurpose Development Project', 'a. Analisis rencana teknis pembangunan bendungan beserta fasilitasnya, operasi,\r\npemeliharaan dan mekanisme pengadaan barang dan jasa\r\nb. Analisis penyiapan detail desain, pengadaan lahan dan rencana pemukiman kembali\r\nserta AMDAL\r\nc. Melaksanakan perencanaan program, analisis pembiayaan proyek dan persiapan\r\ndokumen lelang', 'a. Conducting analysis for dam construction and its facilities, operation and maintenance, as well as procurement mechanism;\r\nb. Conducting analysis in term of detailed design, land acquistion, resstlement plan and environmental impact assessment\r\nc. Implementing the program planning, project funding analysis and tender document preparation', '16', '1', 60, 2015, 'a. Detail desain pembangunan bendungan dan kelengkapan dokumen AMDAL,LARAP\r\nb. Mekanisme pengadaaan, rencana pelaksanaan dan standar dokumen pengadaan\r\nc. Manajemen pengelolaan proyek dan analisis pembiayaannya', 'a. Meningkatkan perencanaan untuk persiapan pembangunan bendungan beserta fasilitas\r\npendukungnya dan mekanisme pengadaan barang!jasanya\r\nb. Analisa biaya dan manfaat (B/C ratio) dari sebelum dan sesudah ada proyek', '344', 9620000, 0, 0, 0, '2015', 1, 3, 1),
(40, '105', 215, '3', '3', '23', '13', '5', '', 'a. Direktorat Jenderal Pembiayaan Perumahan;\r\nb. Direktorat Jenderal Penyediaan Perumahan.', 'National Affordable Housing Program', 'National Affordable Housing Program', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '16', '1', 36, 2017, '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '344', 450000000, 0, 0, 0, '2016', 1, 1, 1);

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
(90, 0, 'PT. PLN (Persero)'),
(91, 0, 'PT. SMI'),
(92, 0, 'Badan Litbang Kesehatan');

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
-- Table structure for table `irena_la_lokasi`
--

CREATE TABLE `irena_la_lokasi` (
  `id` int(11) NOT NULL,
  `id_la_proyek` int(11) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `id_bb` int(11) NOT NULL,
  `id_gb` int(11) NOT NULL,
  `id_instansi` int(11) NOT NULL,
  `id_lender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_la_lokasi`
--

INSERT INTO `irena_la_lokasi` (`id`, `id_la_proyek`, `id_lokasi`, `id_bb`, `id_gb`, `id_instansi`, `id_lender`) VALUES
(7, 3, 333, 2, 3, 0, 0),
(9, 4, 344, 3, 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `irena_la_proyek`
--

CREATE TABLE `irena_la_proyek` (
  `id` int(11) NOT NULL,
  `id_usulan` varchar(5) NOT NULL,
  `tahun_usulan` varchar(5) NOT NULL,
  `id_bb_proyek` int(11) NOT NULL,
  `id_gb_proyek` int(11) NOT NULL,
  `id_dk_proyek` int(11) NOT NULL,
  `id_greenbook` varchar(11) NOT NULL,
  `id_bluebook` varchar(11) NOT NULL,
  `id_instansi` varchar(11) NOT NULL,
  `id_program` varchar(10) NOT NULL,
  `id_lender` varchar(5) NOT NULL,
  `id_eselon_1` varchar(5) NOT NULL,
  `infra` int(11) NOT NULL,
  `instansi_pelaksana` text NOT NULL,
  `id_sektor` int(11) NOT NULL,
  `id_status` int(11) DEFAULT NULL,
  `judul_proyek_id` varchar(500) NOT NULL,
  `judul_proyek_eng` varchar(500) NOT NULL,
  `ruang_lingkup_id` longtext NOT NULL,
  `ruang_lingkup_eng` longtext NOT NULL,
  `durasi` int(11) NOT NULL,
  `id_status_lembaga` varchar(5) NOT NULL,
  `id_status_lender` varchar(5) NOT NULL,
  `proyeksi_tahun_pertama_penarikan` int(11) NOT NULL,
  `output` longtext NOT NULL,
  `outcome` longtext NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `nilai_pinjaman` bigint(20) NOT NULL,
  `nilai_hibah` bigint(20) NOT NULL,
  `dana_usulan` bigint(20) NOT NULL,
  `tgl_DK` date NOT NULL,
  `tgl_LA` date NOT NULL,
  `dana_pendamping` bigint(20) NOT NULL,
  `tgl_efektif_mulai` date NOT NULL,
  `tgl_efektif_akhir` date NOT NULL,
  `penyerapan` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_la_proyek`
--

INSERT INTO `irena_la_proyek` (`id`, `id_usulan`, `tahun_usulan`, `id_bb_proyek`, `id_gb_proyek`, `id_dk_proyek`, `id_greenbook`, `id_bluebook`, `id_instansi`, `id_program`, `id_lender`, `id_eselon_1`, `infra`, `instansi_pelaksana`, `id_sektor`, `id_status`, `judul_proyek_id`, `judul_proyek_eng`, `ruang_lingkup_id`, `ruang_lingkup_eng`, `durasi`, `id_status_lembaga`, `id_status_lender`, `proyeksi_tahun_pertama_penarikan`, `output`, `outcome`, `lokasi`, `nilai_pinjaman`, `nilai_hibah`, `dana_usulan`, `tgl_DK`, `tgl_LA`, `dana_pendamping`, `tgl_efektif_mulai`, `tgl_efektif_akhir`, `penyerapan`) VALUES
(3, '26', 'undef', 207, 32, 5, '3', '2', '15', '7', '1', '', 1, 'Kementerian Perhubungan', 1, NULL, 'Pembangunan Pelabuhan Patimban Subang Jawa Barat', 'The Development of Patimban Port-Stage 1', 'a. Penyusunan desain serta spesifikasi teknis;\r\nb. Pelaksanaan pelelangan;\r\nc. Pelaksanaan kegiatan konstruksi;\r\nd. Pelaksanaan serah terima hasil pekerjaan;\r\ne. Konsesi dan kerjasama pengoperasian pelabuhan.', 'a. Penyusunan desain serta spesifikasi teknis;\r\nb. Pelaksanaan pelelangan;\r\nc. Pelaksanaan kegiatan konstruksi;\r\nd. Pelaksanaan serah terima hasil pekerjaan;\r\ne. Konsesi dan kerjasama pengoperasian pelabuhan.', 60, '16', '1', 2018, '1. Ketersediaan fasilitas terminal kontainer untuk mendukung pertumbuhan dan kegiatan\r\nkawasan industri khususnya di wilayah Jawa Barat bagian Tengah dan Utara;\r\n2. Ketersediaan fasilitas terminal kendaraan bermotor dalam rangka menunjang\r\npertumbuhan industri otomotif nasional;\r\n3. Ketersediaan fasilitas kapal Roro untuk penyeberangan antar pulau.', '1. Menekan biaya logistik dengan mendekatkan pusat produksi (industri manufaktur)\r\ndengan outlet pelabuhan;\r\n2. Memperkuat ketahanan perekonomian dengan menyediakan backup outlet pelabuhan\r\nyang melayani wilayah industri yang menghasilkan ±70% kargo dalam negeri;\r\n3. Menurunkan tingkat kemacetan dan mengurangi kerugian akibat kemacetan di Ibukota\r\nNegara dengan memindahkan sebagian trafik angkutan berat ke luar wilayah Ibukota;\r\n4. Menekan penggunaan BBM (bersubsidi) dan meningkatkan utilisasi truk kontainer\r\ndengan memperpendek jarak tempuh dari industri manufaktur ke pelabuhan;\r\n5. Menjamin keselamatan pelayaran dan area eksplorasi migas di kawasan lepas pantai\r\nUtara Jawa Barat;\r\n6. Membantu pertumbuhan dan perkembangan wilayah Kabupaten Subang dan Provinsi\r\nJawa Barat secara umum.', '333', 1025052000, 0, 0, '2017-08-09', '2017-11-07', 0, '2018-03-14', '2023-03-15', 40),
(4, '105', 'undef', 215, 40, 6, '3', '3', '23', '13', '5', '', 1, 'a. Direktorat Jenderal Pembiayaan Perumahan;\r\nb. Direktorat Jenderal Penyediaan Perumahan.', 1, NULL, 'National Affordable Housing Program', 'National Affordable Housing Program', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', 36, '16', '1', 2017, '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '344', 450000000, 0, 0, '2017-09-10', '2018-02-23', 0, '0000-00-00', '0000-00-00', 0);

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
(0, 0, 'No Lender'),
(1, 1, 'JICA'),
(2, 1, 'China'),
(3, 2, 'IDB'),
(4, 2, 'ADB'),
(5, 2, 'World Bank'),
(6, 1, 'Korea');

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
  `total_dana` int(11) NOT NULL,
  `id_instansi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_program_pln`
--

INSERT INTO `irena_program_pln` (`id`, `id_bluebook`, `id_kategori`, `id_sektor`, `nama_program`, `judul_eng`, `latar_belakang_id`, `latar_belakang_eng`, `ruang_lingkup_id`, `ruang_lingkup_eng`, `outcome`, `total_pinjaman`, `total_hibah`, `total_dp`, `total_dana`, `id_instansi`) VALUES
(1, 2, '1', '2', 'Program Pengembangan Perkeretaapian', 'Railway Development Program', 'Memperluas jalur kereta api', 'Memperluas jalur kereta api', 'Kota Bandung', 'Kota Bandung', 'Rel Kereta Api sepanjang 50KM', 0, 0, 0, 0, 23),
(2, 2, '1', '5', 'Program Pembangunan Infrastruktur Ketenagalistrikan', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(3, 2, '1', '1', 'Program Pembangunan Sistem Pengelolaan Air Limbah ', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(4, 2, '1', '1', 'Program Penanganan Kumuh', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(5, 2, '1', '3', 'Program Pengembangan dan Pengelolaan Irigasi', '', '', '', '', '', '', 0, 0, 0, 0, 23),
(6, 2, '1', '3', 'Program Pembangunan Waduk ', '', '', '', '', '', '', 0, 0, 0, 0, 23),
(7, 2, '1', '6', 'Program Pengembangan Transportasi Laut', 'Sea Transportation Development Program', '', 'The Government of Indonesia', '', 'The Government of Indonesia', 'The Government of Indonesia', 0, 0, 0, 0, 15),
(8, 2, '1', '4', 'Program Pembangunan / Peningkatan Jalan\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(9, 2, '1', '4', 'Program Pembangunan / Peningkatan Jembatan \r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(10, 2, '1', '4', 'Program Pembangunan Jalan Tol \r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(11, 2, '1', '3', 'Program Mitigasi Terhadap Daya Rusak Air\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(12, 2, '1', '1', 'Program Pembangunan Air Minum\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(13, 2, '1', '10', 'Program Penyediaaan Perumahan Bagi MBR\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(14, 2, '1', '3', 'Program Penyediaan Air Baku \r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(15, 2, '1', '14', 'Program Pembiayaan Pembangunan Infrastruktur\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(16, 2, '1', '14', 'Program Pengembangan Infrastruktur TIK dan Penyiaran\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(17, 2, '1', '11', 'Program Pengelolaan Infrastruktur Sumber Daya Air \r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(18, 2, '1', '12', 'Program Infrastruktur untuk Pengembangan Pariwisata\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(19, 2, '1', '1', 'Program Pembangunan Sistem Pengelolaan Persampahan \r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(20, 2, '1', '4', 'Program Pengembangan dan Peningkatan Jalan Subnasional\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(21, 2, '1', '1', 'Program Pembangunan Kota Berkelanjutan\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(22, 2, '2', '7', 'Program Pelayanan Kesehatan Rujukan\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(23, 2, '2', '8', 'Program Penyediaan dan Pengembangan Prasarana dan Sarana Pertanian\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(24, 2, '2', '9', 'Program Peningkatan Akses, Kualitas, Relevansi, dan Daya Saing Pendidikan Tinggi Islam\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(25, 2, '2', '9', 'Program Peningkatan Akses, Kualitas, Relevansi, dan Daya Saing Pendidikan Tinggi ', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(26, 2, '2', '14', 'Program Pengembangan Sumber Daya Aparatur  dalam Rangka Reformasi Birokrasi\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(27, 2, '2', '13', 'Program Pembangunan Rumah Sakit Militer\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(28, 2, '2', '7', 'Program Pengembangan Sumber Daya Manusia Kesehatan\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(29, 2, '2', '14', 'Program Implementasi Informasi Geospasial dan Infrastruktur Keagrariaan\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(30, 2, '2', '14', 'Program Pengembangan dan Pembinaan Meteorologi, Klimatologi, dan Geofisika\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(31, 2, '2', '7', 'Program Pelayanan Kesehatan Dasar\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(32, 2, '2', '14', 'Program Pembangunan Science Park dan Technopark\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(33, 2, '2', '14', 'Program Pengembangan Penelitian Kelautan\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(34, 2, '2', '14', 'Program Peningkatan Fasilitas Perikanan\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(35, 2, '2', '7', 'Program Pengendalian Penyakit, Penyehatan Lingkungan, dan Penguatan Litbang Kesehatan\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(36, 2, '2', '8', 'Program Peningkatan Penyuluhan, Pendidikan, dan Pelatihan Pertanian\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(37, 2, '2', '14', 'Program Peningkatan Daya Saing Tenaga Kerja\r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(38, 2, '2', '14', 'Program Penguatan Sektor Keuangan \r\n', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(39, 2, '', '', 'Program Penelitian, Pengembangan dan Penerapan Energi Nuklir, Isotop dan Radiasi', '', '', '', '', '', '', 0, 0, 0, 0, 0),
(40, 1, '', '', 'a', 'a', '', '$id			= $this->input->post(\'id\');', '', '$id			= $this->input->post(\'id\');', '$id			= $this->input->post(\'id\');', 0, 0, 0, 0, 0);

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
(338, 10, 'Kabupaten Pamekasan', '-7.105086', '113.525232'),
(339, NULL, 'Aceh', '4.695135', '96.749399'),
(340, NULL, 'Bali', '-8.409518', '115.188916'),
(341, NULL, 'Banten', '-6.405817', '106.064018'),
(342, NULL, 'Bengkulu', '-3.792067', '102.261996'),
(343, NULL, 'Gorontalo', '0.699937', '122.446724'),
(344, NULL, 'DKI Jakarta', '-6.174465', '106.822745'),
(345, NULL, 'Jambi', '-1.485183', '102.438058'),
(346, NULL, 'Jawa Barat', '-7.090911', '107.668887'),
(347, NULL, 'Jawa Tengah', '-7.150975', '110.140259'),
(348, NULL, 'Jawa Timur', '-7.536064', '112.238402'),
(349, NULL, 'Kalimantan Barat', '-0.278781', '111.475285'),
(350, NULL, 'Kalimantan Selatan', '-3.092642', '115.283758'),
(351, NULL, 'Kalimantan Tengah', '-1.681488', '113.382355'),
(352, NULL, 'Kalimantan Timur', '1.640630', '116.419389'),
(353, NULL, 'Kalimantan Utara', '4.258979', '117.883179'),
(354, NULL, 'Kepulauan Bangka Belitung', '-2.741051', '106.440587'),
(355, NULL, 'Kepulauan Riau', '0.917921', '104.446464'),
(356, NULL, 'Lampung', '-4.558585', '105.406808'),
(357, NULL, 'Maluku', '-3.238462', '130.145273'),
(358, NULL, 'Maluku Utara', '1.57100', '127.80877'),
(359, NULL, 'Nusa Tenggara Barat', '-8.652933', '117.361648'),
(360, NULL, 'Nusa Tenggara Timur', '-8.657382', '121.079370'),
(361, NULL, 'Papua', '-4.269928', '138.080353'),
(362, NULL, 'Papua Barat', '-1.336115', '133.174716'),
(363, NULL, 'Riau', '0.293347', '101.706829'),
(364, NULL, 'Sulawesi Barat', '-2.844137', '119.232078'),
(365, NULL, 'Sulawesi Selatan', '-3.668799', '119.974053'),
(366, NULL, 'Sulawesi Tengah', '-1.430025', '121.445618'),
(367, NULL, 'Sulawesi Utara', '0.624693', '123.975002'),
(368, NULL, 'Sumatera Barat', '-0.739940', '100.800005'),
(369, NULL, 'Sumatera Selatan', '-3.319437', '103.914399'),
(370, NULL, 'Sumatera Utara', '2.010856', '98.978489'),
(371, NULL, 'DI Yogyakarta', '-7.797591', '110.370714'),
(372, NULL, 'Sulawesi Tenggara', '-4.144910', '122.174605'),
(373, NULL, 'Bangka Belitung', '-2.74105', '106.44059'),
(374, NULL, 'Tangerang', ' -6.178306', '106.631889	D'),
(375, NULL, 'Kota Pekalongan ', '-6.888701', '109.668289');

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
(7, '2019', NULL, 1, 1, '2017-11-27 17:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `irena_sbsn_kategori`
--

CREATE TABLE `irena_sbsn_kategori` (
  `id` int(11) NOT NULL,
  `nama` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_sbsn_kategori`
--

INSERT INTO `irena_sbsn_kategori` (`id`, `nama`) VALUES
(1, 'KA Perkotaaan  Jabodetabek dan Akses Bandara'),
(2, 'Jalur Baru Kereta Api Trans Sulawesi'),
(3, 'Jalur Ganda dan Jalur Baru Kereta Api Trans Sumatera'),
(4, 'Jalur Ganda Lintas Selatan Jawa'),
(6, 'Pelebaran Jalan Nasional'),
(7, 'Pembangunan Fly Over/Underpass/Terowongan '),
(8, 'Pembangunan Gedung Balai Nikah dan Manasik Haji Kantor Urusan Agama (KUA)'),
(9, 'Pembangunan Jalan   '),
(10, 'Pembangunan Jalan Bebas Hambatan'),
(11, 'Pembangunan Jalan dan Jembatan'),
(12, 'Pembangunan Jembatan'),
(13, 'Pembangunan Laboratorium '),
(14, 'Pembangunan Sarana dan Prasarana Kompleks Taman Nasional'),
(15, 'Pembangunan Sarana dan Prasarana Perguruan Tinggi Negeri'),
(16, 'Pemiliharaan Jalan dan Jembatan'),
(17, 'Pengelolaan Bendungan, Danau, dan Bangunan Penampung Air Lainnya'),
(18, 'Pengelolaan Bendungan, Embung, dan Bangunan Penampung Air Lainnya'),
(19, 'Pengembangan dan Rehabilitasi Irigasi Permukaan, Rawa Tambak'),
(20, 'Pengembangan Standardisasi Nasional'),
(21, 'Pengendalian Banjir, Lahar, Pengelolaan Drainase Utama Perkotaan, dan Pengamanan Pantai'),
(22, 'Peningkatan Akses dan Mutu Pendidikan Madrasah'),
(23, 'Peningkatan Mutu Sarana dan Prasarana Perguruan Tinggi Keagamaan Islam (PTKIN)'),
(24, 'Peningkatan/Penggantian/Duplikasi Jembatan'),
(25, 'Penyediaan dan Pengelolaan Air Baku'),
(26, 'Penyediaan dan Pengelolaan Air Tanah dan Air Baku'),
(27, 'Rekonstruksi/Peningkatan Struktur Jalan '),
(28, 'Revitalisasi dan Pengembangan Asrama Haji');

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
(9, 'Pengelolaan Bendungan, Danau, dan Bangunan Penampung Air Lainnya', NULL, 1, 1, '2017-11-27 17:38:08'),
(10, 'KA Perkotaaan  Jabodetabek dan Akses Bandara', NULL, NULL, NULL, NULL),
(11, 'Jalur Baru Kereta Api Trans Sulawesi', NULL, NULL, NULL, NULL),
(12, 'Jalur Ganda dan Jalur Baru Kereta Api Trans Sumatera', NULL, NULL, NULL, NULL),
(13, 'Jalur Ganda Lintas Selatan Jawa', NULL, NULL, NULL, NULL),
(14, 'Pelebaran Jalan Nasional', NULL, NULL, NULL, NULL),
(15, 'Pembangunan Fly Over/Underpass/Terowongan ', NULL, NULL, NULL, NULL),
(16, 'Pembangunan Jalan   ', NULL, NULL, NULL, NULL),
(17, 'Pembangunan Jalan Bebas Hambatan', NULL, NULL, NULL, NULL),
(18, 'Pembangunan Jembatan', NULL, NULL, NULL, NULL),
(19, 'Pembangunan Laboratorium ', NULL, NULL, NULL, NULL),
(20, 'Pembangunan Sarana dan Prasarana Kompleks Taman Nasional', NULL, NULL, NULL, NULL),
(21, 'Pembangunan Sarana dan Prasarana Perguruan Tinggi Negeri', NULL, NULL, NULL, NULL),
(22, 'Pengelolaan Bendungan, Embung, dan Bangunan Penampung Air Lainnya', NULL, NULL, NULL, NULL),
(23, 'Pengembangan Standardisasi Nasional', NULL, NULL, NULL, NULL),
(24, 'Peningkatan/Penggantian/Duplikasi Jembatan', NULL, NULL, NULL, NULL),
(25, 'Penyediaan dan Pengelolaan Air Baku', NULL, NULL, NULL, NULL),
(26, 'Penyediaan dan Pengelolaan Air Tanah dan Air Baku', NULL, NULL, NULL, NULL),
(27, 'Rekonstruksi/Peningkatan Struktur Jalan ', NULL, NULL, NULL, NULL),
(28, 'Revitalisasi dan Pengembangan Asrama Haji', NULL, NULL, NULL, NULL);

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
  `nilai_admin` int(11) DEFAULT '0',
  `nilai_admin_ket` varchar(255) DEFAULT NULL,
  `nilai_admin_id` int(11) DEFAULT NULL,
  `nilai_admin_date` datetime DEFAULT NULL,
  `nilai_layak` int(11) DEFAULT '0',
  `nilai_layak_ket` varchar(255) DEFAULT NULL,
  `nilai_layak_id` int(11) DEFAULT NULL,
  `nilai_layak_date` datetime DEFAULT NULL,
  `masuk_dpp` int(11) DEFAULT '0',
  `masuk_dpp_ket` varchar(255) DEFAULT NULL,
  `masuk_dpp_id` int(11) DEFAULT NULL,
  `masuk_dpp_date` datetime DEFAULT NULL,
  `single_multi` varchar(255) DEFAULT NULL COMMENT '0 : SYC dan 1 : MYC',
  `update_by` int(11) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `lokasi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_sbsn_proyek`
--

INSERT INTO `irena_sbsn_proyek` (`id`, `id_instansi_eselon_satu`, `id_dpp`, `id_kategori_proyek`, `judul`, `nilai`, `output`, `latar_belakang`, `tujuan`, `ruang_lingkup`, `nilai_admin`, `nilai_admin_ket`, `nilai_admin_id`, `nilai_admin_date`, `nilai_layak`, `nilai_layak_ket`, `nilai_layak_id`, `nilai_layak_date`, `masuk_dpp`, `masuk_dpp_ket`, `masuk_dpp_id`, `masuk_dpp_date`, `single_multi`, `update_by`, `update_date`, `lokasi`) VALUES
(28, 8, 6, 4, 'Pengembangan Laboratorium Standar Nasional Satuan Ukuran (SNSU)', 50000000000, '-', '-', '-', '-', 1, '-', 19, '2017-11-16 10:57:24', 1, '-', 20, '2018-03-14 05:35:44', 1, '-', 20, '2018-03-14 05:35:51', '0', 20, '2018-03-14 10:54:32', '27,35'),
(38, 2, 6, 23, 'IAIN Langsa', 41.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(39, 3, 6, 8, 'KUA Kuta Alam', 0.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(40, 3, 6, 8, 'KUA Susoh', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(41, 3, 6, 8, 'KUA Kuala Bate', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(42, 3, 6, 8, 'KUA Sukajaya', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(43, 3, 6, 8, 'KUA Sultan Daulat', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(44, 3, 6, 8, 'KUA Penanggalan', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(45, 3, 6, 8, 'KUA Bintang', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(46, 2, 6, 22, 'MAN IC Aceh Timur, Aceh', 11.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(47, 2, 6, 23, 'UIN Ar-Raniry Aceh ', 44.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(48, 2, 6, 23, 'IAIN Malikussaleh Lhokseumawe', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(49, 2, 6, 23, 'STAIN Gajah Putih Takengon', 37.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(50, 2, 6, 23, 'STAIN Teungku Direundeng Meulaboh', 26, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(51, 5, 6, 16, 'Rekonstruksi Lambaro - Batas Pidie', 60, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(52, 5, 6, 16, 'Rekonstruksi Batas Kota Banda Aceh - Batas Aceh Jaya', 50.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(53, 5, 6, 16, 'Preservasi Rekonstruksi Jalan Bts Kota Banda Aceh - Calang', 57.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(54, 5, 6, 16, 'Rekonstruksi Idi Rayeuk - Peurlak, Cs', 60, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(55, 6, 6, 21, 'Pembangunan Prasarana Pengaman Pantai Pelangi Kawasan Pendopo Bupati Sigli Di Kabupaten Pidie', 83, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(56, 6, 6, 21, 'Pembangunan Prasarana Pengendalian Banjir Sungai Krueng Singkil di Kabupaten Aceh Singkil', 51.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(57, 6, 6, 21, 'Pembangunan Prasarana Pengaman Pantai Kota Meulaboh di Kabupaten Aceh Barat', 59, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(58, 6, 6, 21, 'Pembangunan Pengendalian Kerusakan (Longsoran) Tebing Sungai Lawe Alas di Kabupaten Aceh Tenggara', 41.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339'),
(59, 1, 6, 3, 'Pembangunan KA Trans Sumatera Besitang - Langsa', 353, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '339;370'),
(60, 3, 6, 8, 'KUA Denpasar Utara', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '340'),
(61, 3, 6, 8, 'KUA Pekutatan', 1.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '340'),
(62, 3, 6, 8, 'KUA Negara', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '340'),
(63, 2, 6, 22, 'MAN Mendoyo, Jembrana, Bali', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '340'),
(64, 5, 6, 16, 'Pelebaran Jalan Denpasar - Tuban (Tukad Teba)', 124.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '340'),
(65, 6, 6, 21, 'Pembangunan Prasarana Pengendali Banjir Tukad Mati', 106.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '340'),
(66, 6, 6, 17, 'Embung Sekartaji di Kab. Klungkung', 5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '340'),
(67, 6, 6, 26, 'Pembangunan Sistem Penyediaan Air Baku Waduk Benel di Kab. Jembrana', 18.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '340'),
(68, 6, 6, 26, 'Penyediaan Sarana Air Baku Waduk Titab', 43.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '340'),
(69, 3, 6, 8, 'KUA Saketi', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(70, 3, 6, 8, 'KUA Rangkasbitung', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(71, 3, 6, 8, 'KUA Cipocok Jaya', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(72, 3, 6, 8, 'KUA Sukamulya', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(73, 3, 6, 8, 'KUA Gunung Kaler', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(74, 3, 6, 8, 'KUA Sepatan Timur', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(75, 3, 6, 8, 'KUA Kelapa Dua', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(76, 3, 6, 8, 'KUA Muncang', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(77, 3, 6, 8, 'KUA Grogol', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(78, 3, 6, 8, 'KUA Sindang Resmi', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(79, 3, 6, 8, 'KUA Mekarjaya', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(80, 3, 6, 8, 'KUA Tunjung Teja', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(81, 2, 6, 22, 'MAN 2 Pandeglang, Banten', 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(82, 1, 6, 1, 'Pembangunan Jalur Ganda KA antara Maja-Rangkasbitung', 225.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(83, 5, 6, 16, 'Preservasi Jalan Ruas Pasuruan - Sp Labuhan - Cibaliung dan Citeureup-Tanjung Lesung', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(84, 5, 6, 16, 'Preservasi Rehabilitasi Ruas Sumur - Cibaliung - Cikeusik - Ma.Binangeun ', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(85, 6, 6, 19, 'Rehabilitasi Jaringan Irigasi DI. Pamarayan Utara', 47.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(86, 6, 6, 21, 'Pengamanan Pantai Jongor, Caringin, dan Kemuning Kab. Pandeglang', 36.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(87, 12, 6, 20, 'Pengembangan Laboratorium Standar Nasional Satuan Ukuran (SNSU)', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(88, 14, 6, 13, 'Pembangunan Laboratorium Metrologi Fisik dan Kimia untuk Pengujian Mutu Produk', 65, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '341'),
(89, 3, 6, 8, 'KUA Pagar Jati', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '342'),
(90, 2, 6, 22, 'MAN IC Bengkulu Tengah, Bengkulu', 8.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '342'),
(91, 2, 6, 23, 'STAIN Curup', 34, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '342'),
(92, 6, 6, 21, 'Pembangunan Bangunan Pengaman Pantai Desa Pasar Ipuh Kabupaten Mukomuko', 82.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '342'),
(93, 6, 6, 26, 'Pembangunan Sarana Penyediaan Air Baku Musi Kejalo Kab. Rejang Lebong ', 26.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '342'),
(94, 2, 6, 23, 'UIN Yogyakarta', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '371'),
(95, 3, 6, 8, 'KUA Nglipar', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '371'),
(96, 3, 6, 8, 'KUA Gedangsari', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '371'),
(97, 3, 6, 8, 'KUA Pleret', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '371'),
(98, 3, 6, 8, 'KUA Panjatan', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '371'),
(99, 3, 6, 8, 'KUA Kotagede', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '371'),
(100, 6, 6, 21, 'Pembangunan Prasarana Pengendali Banjir Sungai Progo dan anak-anak sungainya', 53, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '371'),
(101, 6, 6, 21, 'Pembangunan Prasarana Pengendali Banjir Sungai Serang dan anak-anak sungainya', 57.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '371'),
(102, 6, 6, 26, 'Pembangunan Penyediaan Air Baku Kebon Agung (SPAB Kartamantul)', 38.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '371'),
(103, 1, 6, 1, 'Paket A (Pembangunan Fasilitas Perkeretaapian Untuk Manggarai s/d Jatinegara)/ Railway Electrification and Double-Double Tracking of Java Main Line Project', 392.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '344'),
(104, 4, 6, 28, 'Asrama Haji Jakarta (Pondok Gede)', 30.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '344'),
(105, 2, 6, 22, 'MAN 4 Pondok Pinang, DKI', 23.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '344'),
(106, 2, 6, 23, 'IAIN Sultan Amal Gorontalo', 29, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(107, 3, 6, 8, 'KUA Anggrek', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(108, 3, 6, 8, 'KUA Atinggola', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(109, 3, 6, 8, 'KUA Mananggu', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(110, 3, 6, 8, 'KUA Dulupi', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(111, 3, 6, 8, 'KUA Bongomeme', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(112, 3, 6, 8, 'KUA Boliyohuto', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(113, 3, 6, 8, 'KUA Randangan', 1.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(114, 3, 6, 8, 'KUA Paguat', 1.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(115, 3, 6, 8, 'KUA Botupingge', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(116, 3, 6, 8, 'KUA Kabila Bone', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(117, 3, 6, 8, 'KUA Kota Barat', 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(118, 3, 6, 8, 'KUA Dungingi', 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(119, 3, 6, 8, 'KUA Kwandang', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(120, 3, 6, 8, 'KUA Botumoito', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(121, 3, 6, 8, 'KUA Tibawa', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(122, 5, 6, 16, 'Pelebaran Menuju Standar Isimu - Paguyaman - Tabulo', 45, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(123, 5, 6, 16, 'Pelebaran Menuju Standar Paguyaman - Tabulo - Marisa - Lemito', 74, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(124, 5, 6, 16, 'Pelebaran Menuju Standar Jalan Paguyaman - Tabulo ', 70, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(125, 5, 6, 16, 'Pelebaran Menuju Standar Jalan Bulontio - Tolinggula (Bts. Prov. Sulteng)', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(126, 6, 6, 21, 'Pengendalian Banjir Sungai Bolango', 42.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(127, 6, 6, 21, 'Pengendalian Banjir Sungai Tilamuta', 75.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '343'),
(128, 3, 6, 8, 'KUA Pelepat', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '345'),
(129, 3, 6, 8, 'KUA Pelepat Ilir', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '345'),
(130, 3, 6, 8, 'KUA Rantau Pandan', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '345'),
(131, 3, 6, 8, 'KUA Jujuhan', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '345'),
(132, 3, 6, 8, 'KUA Tabir Barat', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '345'),
(133, 2, 6, 23, 'IAIN Sultan Thaha Saifuddin Jambi', 40, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '345'),
(134, 5, 6, 16, 'Rekonstruksi Jalan Bts Riau - Merlung I', 65, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '345'),
(135, 5, 6, 16, 'Rekonstruksi Jalan Bts Riau - Merlung II', 65, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '345'),
(136, 5, 6, 16, 'Rehabilitasi Mayor Jalan Meriung - Bts Kab Tanjab - Sp Tuan', 65, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '345'),
(137, 5, 6, 16, 'Rehabilitasi Mayor Jalan Sp Tuan - Mendalo Darat (Sp. Tiga)-Bts,Kota Jambi/Sp.Rimbo-Tempino-Bts Prov Sumsel', 80, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '345'),
(138, 6, 6, 19, 'Peningkatan Jaringan Rawa DR. Parit Pudin Kab. Tanjung Jabung Barat', 31, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '345'),
(139, 6, 6, 19, 'Peningkatan Jaringan Rawa DR. Pematang Lumut Kab. Tanjung Jabung Barat', 21, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '345'),
(140, 3, 6, 8, 'KUA Cibalong', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(141, 3, 6, 8, 'KUA Cilodong', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(142, 3, 6, 8, 'KUA Lemah Abang', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(143, 3, 6, 8, 'KUA Tirtamulya', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(144, 3, 6, 8, 'KUA Cipeundeuy', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(145, 3, 6, 8, 'KUA Sukaraja', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(146, 3, 6, 8, 'KUA Haur Wangi', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(147, 3, 6, 8, 'KUA Sindang Barang', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(148, 3, 6, 8, 'KUA Gabus Wetan', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(149, 3, 6, 8, 'KUA Panjalu', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(150, 3, 6, 8, 'KUA Ciasem', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(151, 3, 6, 8, 'KUA Sagala Herang', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(152, 3, 6, 8, 'KUA Purwadadi', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(153, 3, 6, 8, 'KUA Cilamaya Wetan', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(154, 3, 6, 8, 'KUA Cangkuang', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(155, 3, 6, 8, 'KUA Singajaya', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(156, 2, 6, 22, 'MAN 1 Pacet, Cianjur, Jabar', 2.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(157, 5, 6, 16, 'Rekonstruksi Jalan Sewo - Lohbener', 80, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(158, 5, 6, 16, 'Rehabilitasi Mayor Bts. Kab. Subang/Karawang - Bts. Kota Pamanukan', 54, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(159, 5, 6, 11, 'Pembangunan Fly Over Pasir Gombong', 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(160, 5, 6, 11, 'Pembangunan Jalan Lingkar Timur Waduk Jati Gede', 295, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(161, 5, 6, 11, 'Pembangunan Jalan Akses Bandara Kertajati', 60, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(162, 6, 6, 19, 'Rehabilitasi DI. Cihaur', 30.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(163, 6, 6, 19, 'Rehabilitasi DI. Cikunten II', 39.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(164, 6, 6, 19, 'Rehabilitasi Jaringan Irigasi DI. Manganti', 40.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(165, 6, 6, 17, 'Pembangunan Embung Gede Bage Kab. Bandung', 89.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(166, 6, 6, 17, 'Pembangunan Embung Kahroroy Tahap II', 8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(167, 6, 6, 26, 'Pembangunan Penyediaan Air Baku Gambung', 175.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(168, 6, 6, 26, 'Pembangunan Penyediaan Air Baku Purwakarta', 140.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(169, 11, 6, 14, 'Pembangunan Kompleks Wisata Mandalawangi di Taman Nasional Gunung Gede Pangrango', 4.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(170, 11, 6, 14, 'Pembangunan Kompleks Wisata Situgunung di Taman Nasional Gunung Gede Pangrango', 10.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(171, 11, 6, 14, 'Pembangunan Kompleks Wisata Salabintana di Taman Nasional Gunung Gede Pangrango', 9.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(172, 7, 6, 15, 'Pengembangan Sarana dan Prasarana Kampus IPB Dramaga Tahap 3, dan IPB Science Techno Park', 185, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(173, 13, 6, 13, 'Pembangunan Laboratorium Bio Safety Level 3 untuk Penelitian Pangan dan Obat', 55, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '346'),
(174, 1, 6, 4, 'Pembangunan Jalur Ganda KA antara Purwokerto - Kroya Lintas Cirebon - Kroya Segmen III', 205.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(175, 1, 6, 4, 'Pembangunan Jalur Ganda Kroya - Kutoarjo', 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(176, 1, 6, 4, 'Pembangunan Jalur Ganda KA Solo - Kedungbanteng', 671.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(177, 3, 6, 8, 'KUA Wedarijaksa', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(178, 3, 6, 8, 'KUA Margadana', 0.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(179, 3, 6, 8, 'KUA Banjarmangu', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(180, 3, 6, 8, 'KUA Kemalang', 1.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(181, 3, 6, 8, 'KUA Sulang', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(182, 3, 6, 8, 'KUA Salem', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(183, 3, 6, 8, 'KUA Sokaraja', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(184, 3, 6, 8, 'KUA Dayeuhluhur', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(185, 3, 6, 8, 'KUA Pasar Kliwon', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(186, 3, 6, 8, 'KUA Karangkobar', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(187, 3, 6, 8, 'KUA Lasem', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(188, 3, 6, 8, 'KUA Kedawung', 1.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(189, 3, 6, 8, 'KUA Ulujami', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(190, 3, 6, 8, 'KUA Kesesi', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(191, 3, 6, 8, 'KUA Mrebet', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(192, 3, 6, 8, 'KUA Pagerbarang', 1.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(193, 3, 6, 8, 'KUA Kersana', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(194, 3, 6, 8, 'KUA Sedan', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(195, 3, 6, 8, 'KUA Ngrampal', 1.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(196, 3, 6, 8, 'KUA Ampelgading', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(197, 3, 6, 8, 'KUA Warungpring', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(198, 3, 6, 8, 'KUA Jatiyoso', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(199, 3, 6, 8, 'KUA Talun', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(200, 3, 6, 8, 'KUA Rembang', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(201, 3, 6, 8, 'KUA Balapulang', 1.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(202, 2, 6, 22, 'MAN Nglawu Sukoharjo, Jateng', 2.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(203, 2, 6, 22, 'MIN Purwokerto, Jateng', 2.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(204, 2, 6, 22, 'MAN Bawu Jepara, Jateng', 3.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(205, 2, 6, 22, 'MTsN Surakarta 1, Jawa Tengah', 3.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(206, 2, 6, 23, 'IAIN Surakarta', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(207, 2, 6, 23, 'IAIN Pekalongan', 42.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(208, 1, 6, 4, 'Pembangunan Prasarana Pendukung Jalur Ganda KA antara Purwokerto-Kroya Lintas Cirebon-Kroya Segmen III', 185, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(209, 5, 6, 16, 'Preservasi Rekonstruksi Jalan Losari (Batas Jabar)-Tegal-Pemalang', 91.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(210, 5, 6, 16, 'Preservasi Rekonstruksi Jalan Pemalang-Pekalongan-Batang-Plelen', 97.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(211, 5, 6, 16, 'Preservasi Rehabilitasi Jalan Trengguli-Kudus-Pati-Rembang-Bulu', 65.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(212, 5, 6, 16, 'Preservasi Pelebaran Jalan Rembang-Blora', 87.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(213, 5, 6, 16, 'Preservasi Pelebaran Jalan Blora-Cepu', 59.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(214, 5, 6, 16, 'Preservasi Rekonstruksi Jalan Wangon-Buntu-Bts Banyumas/Kebumen', 53.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(215, 5, 6, 16, 'Preservasi Rekonstruksi Jalan Bts.Kebumen-Purworejo-Karangnongko (Bts.DIY)', 89.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(216, 5, 6, 16, 'Preservasi Pelebaran Jalan Temanggung-Bawen-Salatiga-Sruwen', 41.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(217, 5, 6, 16, 'Preservasi Rehabilitasi Jalan Sruwen-Kartasura-Klaten-Prambanan (Bts.DIY)', 56.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(218, 5, 6, 16, 'Preservasi Pelebaran jalan Pejagan-Prupuk-Tegal-Bts.Banyumas/Brebes', 95.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(219, 5, 6, 16, 'Preservasi Pelebaran Jalan Bts.Banyumas/Brebes-Ajibarang-Wangon', 66.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(220, 5, 6, 16, 'Preservasi Pelebaran Jalan Bts.Jabar-Sidareja-Sp.3 Jeruklegi-Wangon', 46.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(221, 5, 6, 11, 'Pembangunan Fly Over Manahan', 24.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(222, 6, 6, 21, 'Pengendalian Banjir Kanal Banjir Timur Kota Semarang', 73.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(223, 6, 6, 17, 'Pembangunan Embung Karang Talun, Kab. Blora', 8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(224, 6, 6, 17, 'Pembangunan Embung Konservasi Kebun Raya Ogan Ilir Tahap II', 8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(225, 6, 6, 26, 'Pembangunan Intake dan Jaringan Air Baku Gandrungmangu', 83.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(226, 6, 6, 26, 'Pembangunan Penyediaan Air Baku Semarang Barat', 80, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(227, 6, 6, 26, 'Rehabilitasi Jaringan Air Baku Klambu Kudu ', 223.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(228, 6, 6, 26, 'Pembangunan Penyediaan Air Baku Sistem Kesugihan Kab. Cilacap', 7.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(229, 6, 6, 26, 'Pembangunan Bendung Karet Kali Blorong Kabupaten Kendal', 20, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(230, 6, 6, 26, 'Pembangunan Jaringan Air Baku Kabupaten Brebes ', 10, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(231, 6, 6, 26, 'Pembangunan Penyediaan Air Baku Jatisari', 13.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '347'),
(232, 1, 6, 4, 'Pembangunan Jalur Ganda Lintas Solo - Surabaya antara Madiun - Jombang (84 Km?sp)', 666.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(233, 1, 6, 4, 'Pembangunan Jalur Ganda Kedungbanteng - Madiun', 780.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(234, 2, 6, 23, 'UIN Malang', 30.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(235, 2, 6, 23, 'UIN Surabaya', 10.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(236, 4, 6, 28, 'Asrama Haji Surabaya', 54.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(237, 3, 6, 8, 'KUA Rogojampi', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(238, 3, 6, 8, 'KUA Songgon', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(239, 3, 6, 8, 'KUA Kalipuro', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(240, 3, 6, 8, 'KUA Kasiman', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(241, 3, 6, 8, 'KUA Maesan', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(242, 3, 6, 8, 'KUA Cerme', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(243, 3, 6, 8, 'KUA Kencong', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(244, 3, 6, 8, 'KUA Silo', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(245, 3, 6, 8, 'KUA Tempeh', 1.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(246, 3, 6, 8, 'KUA Kunir', 1.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(247, 3, 6, 8, 'KUA Mejayan', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(248, 3, 6, 8, 'KUA Jiwan', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(249, 3, 6, 8, 'KUA Sidorejo', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(250, 3, 6, 8, 'KUA Sumberasih', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(251, 3, 6, 8, 'KUA Tongas', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(252, 3, 6, 8, 'KUA Wonomerto', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(253, 3, 6, 8, 'KUA Tambelangan', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(254, 3, 6, 8, 'KUA Pangarengan', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(255, 3, 6, 8, 'KUA Balongbendo', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(256, 3, 6, 8, 'KUA Asembagus', 1.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(257, 3, 6, 8, 'KUA Suboh', 1.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(258, 2, 6, 22, 'MAN 3 Malang, Jatim', 9.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(259, 2, 6, 22, 'MAN 3 Kediri, Jatim', 4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(260, 2, 6, 22, 'MAN Batu, Jatim', 3.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(261, 2, 6, 22, 'MAN 1 Malang, Jatim', 2.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(262, 2, 6, 23, 'STAIN Kudus', 42.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(263, 2, 6, 23, 'STAIN Kediri', 29.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(264, 5, 6, 16, 'Rehabilitasi Jalan Bts. Kota Probolinggo - Paiton - Buduan - Situbondo - Bajulmati - Banyuwangi', 112.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(265, 5, 6, 16, 'Rekonstruksi Jalan Jln. Gresik (Surabaya); Sadang(Bts. Kab Lamongan) - Bts. Kota Gresik', 98.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(266, 5, 6, 16, 'Rehabilitasi Jalan Lohgung (Km. 93.175) - Sadang (Bts. Kab. Lamongan)', 49.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(267, 5, 6, 16, 'Rehabilitasi Jalan Bts. Kota Tuban - Pakah - Temangkar; Widang/ Bedahan - Bts. Kota Lamongan - Bts. Kab Gresik', 109, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(268, 5, 6, 16, 'Rekonstruksi Jalan Krian - Taman (By pass Krian - Taman) - Waru', 63, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(269, 5, 6, 16, 'Rehabilitasi Jalan Gempol - Pandaan - Purwosari; Malang - Kepanjen', 110.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(270, 5, 6, 11, 'Pembangunan Jembatan Grindulu', 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(271, 5, 6, 11, 'Pembangunan Jembatan Sembayat', 37.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(272, 6, 6, 21, 'Pembangunan Groundsill di Kabupaten Bojonegoro ', 103.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(273, 6, 6, 17, 'Pembangunan Spillway Bendungan Tugu', 12.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(274, 6, 6, 17, 'Pembangunan Embung Kemiri Gede Kabupaten Blitar', 10.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(275, 6, 6, 26, 'Pembangunan Longstorage Kalimati untuk Air Baku Kab. Sidoarjo', 199.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(276, 6, 6, 26, 'Pembangunan Lumbung Air Baku Sukodono di Kab. Gresik', 56, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(277, 11, 6, 14, 'Pembangunan Jalan Wisata Batangan-Bama di Taman Nasional Baluran', 20.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '348'),
(278, 2, 6, 23, 'IAIN Pontianak', 40.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(279, 3, 6, 8, 'KUA Teluk Keramat', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(280, 3, 6, 8, 'KUA Sungai Raya', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(281, 3, 6, 8, 'KUA Tanah Pinoh', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(282, 3, 6, 8, 'KUA Manis Mata', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(283, 3, 6, 8, 'KUA Sintang', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(284, 3, 6, 8, 'KUA Pontianak Utara', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(285, 3, 6, 8, 'KUA Selimbau', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(286, 3, 6, 8, 'KUA Sukadana', 1.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(287, 3, 6, 8, 'KUA Beduai', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(288, 3, 6, 8, 'KUA Simpang Hilir', 1.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(289, 2, 6, 22, 'MAN IC Sambas, Kalbar', 8.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(290, 2, 6, 22, 'MAN 2 Pontianak (filial), Kalbar', 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(291, 5, 6, 11, 'Pembangunan Jalan Bts. Kec. Siding/Seluas ? Bts. Kec. Sekayam/Entikong', 72.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(292, 5, 6, 11, 'Pembangunan Jalan Bts. Kec. Sekayan/Entikong - Rasau 2', 107, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(293, 5, 6, 11, 'Pembangunan Jembatan Ruas Temajuk - Badau Cs', 114.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(294, 6, 6, 17, 'Pembangunan Embung Entawa Kab. Sintang, Prov. Kalbar', 10, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(295, 6, 6, 17, 'Pembangunan Embung Konservasi ITERA Tahap III', 6.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(296, 6, 6, 26, 'Pembangunan Sarana dan Prasarana Air Baku Kota Sambas', 165.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '349'),
(297, 4, 6, 28, 'Embarkarsi Banjarmasin', 43.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(298, 3, 6, 8, 'KUA Kelumpang Hulu', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(299, 3, 6, 8, 'KUA Tapin Tengah', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(300, 3, 6, 8, 'KUA Muara Uya', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(301, 3, 6, 8, 'KUA Pelaihari', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(302, 3, 6, 8, 'KUA Sungai Pandan', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(303, 3, 6, 8, 'KUA Satui', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(304, 3, 6, 8, 'KUA Labuan Amas Utara', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(305, 2, 6, 22, 'MAN IC Tanah Laut, Kalsel', 8.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(306, 2, 6, 23, 'IAIN Antasari Banjarmasin', 40, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(307, 5, 6, 16, 'Rekonstruksi Jalan Manggalau - Kerang ', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(308, 5, 6, 16, 'Rekonstruksi  Jalan Sei Kupang - Manggalau', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(309, 5, 6, 11, 'Pembangunan Jalan Akses Pelabuhan Trisakti (Pel.Trisakti - Liang Anggang)', 57.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(310, 6, 6, 26, 'Pembangunan Jaringan Pipa Transmisi Air Baku SPAM Regional BANJARBAKULA dari IPA II Pinus (Banjar) ke IPA Pramuka (Banjarmasin)', 79.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(311, 6, 6, 26, 'Pembangunan Penyediaan Sarana Air Baku Barito Kuala (Jaringan Pipa Transmisi) di Kab. Barito Kuala', 48.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(312, 6, 6, 26, 'Pembangunan Penyediaan Sarana Air Baku Amandit Kab. Hulu Sungai Selatan', 31, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '350'),
(313, 3, 6, 8, 'KUA Arut Selatan', 1.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '351'),
(314, 3, 6, 8, 'KUA Katingan Tengah', 1.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '351'),
(315, 3, 6, 8, 'KUA Timpah', 1.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '351'),
(316, 3, 6, 8, 'KUA Karau Kuala', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '351'),
(317, 3, 6, 8, 'KUA Teluk Sampit', 1.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '351'),
(318, 3, 6, 8, 'KUA Hanau', 1.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '351'),
(319, 3, 6, 8, 'KUA Teweh Timur', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '351'),
(320, 5, 6, 16, 'Preservasi Rekonstruksi Jalan Bereng Bengkel-Pilang-Pulau Pisau', 53.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '351'),
(321, 5, 6, 16, 'Peningkatan Struktur Jalan Lingkar Utara Kota Sampit', 87.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '351'),
(322, 6, 6, 17, 'Pembangunan Embung Danau Gatel Kecamatan Kotawaringin Lama di Kab. Kotawaringin Barat Tahap II', 26.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '351'),
(323, 6, 6, 26, 'Pembangunan Penyediaan Air Baku Kota Sampit Kab. Kotawaringin Timur', 10, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '351'),
(324, 2, 6, 23, 'IAIN Samarinda', 38, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '352'),
(325, 3, 6, 8, 'KUA Sangkulirang', 2.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '352'),
(326, 2, 6, 22, 'MAN IC Paser, Kaltim', 9.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '352'),
(327, 5, 6, 16, 'Pelebaran Jalan Batu Aji - Kuaro', 20, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '352'),
(328, 5, 6, 16, 'Preservasi Rekonstruksi Sp.3 Lempake-Sp.3 Sambera-Santan-Bontang-Dlm Kota Bontang-Sangata', 81.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '352'),
(329, 5, 6, 16, 'Preservasi Rehabilitasi Sp.3 Ma Wahau-Kelay-Labanan', 63.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '352');
INSERT INTO `irena_sbsn_proyek` (`id`, `id_instansi_eselon_satu`, `id_dpp`, `id_kategori_proyek`, `judul`, `nilai`, `output`, `latar_belakang`, `tujuan`, `ruang_lingkup`, `nilai_admin`, `nilai_admin_ket`, `nilai_admin_id`, `nilai_admin_date`, `nilai_layak`, `nilai_layak_ket`, `nilai_layak_id`, `nilai_layak_date`, `masuk_dpp`, `masuk_dpp_ket`, `masuk_dpp_id`, `masuk_dpp_date`, `single_multi`, `update_by`, `update_date`, `lokasi`) VALUES
(330, 5, 6, 16, 'Preservasi Rehabilitasi Labanan-Tj.Redeb-Dlm Kota Tj.Redeb-Bts. Bulungan', 54.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '352'),
(331, 5, 6, 11, 'Pembangunan Jembatan Pulau Balang II', 243.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '352'),
(332, 5, 6, 11, 'Pembangunan Jembatan Paralel Perbatasan', 57.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '352'),
(333, 5, 6, 16, 'Rekonstruksi Jalan Bts Bulungan - Tj Selor', 70, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '353'),
(334, 5, 6, 16, 'Rekonstruksi Sekatak Buji - Malinau', 60, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '353'),
(335, 5, 6, 11, 'Pembangunan Jalan Long Boh - Metulang - Long Nawang', 105, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '353'),
(336, 5, 6, 11, 'Pembangunan Jembatan Semi Permanen Ruas Perbatasan', 98, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '353'),
(337, 6, 6, 17, 'Pembangunan Embung Serbaguna Bajak di Kabupaten Lombok Tengah', 7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '353'),
(338, 6, 6, 26, 'Lanjutan Pembangunan Intake dan Jaringan Transmisi Indulung ', 56.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '353'),
(339, 2, 6, 22, 'MAN IC Bangka Tengah', 12.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '354'),
(340, 2, 6, 23, 'STAIN SAS Bangka Belitung', 35, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '354'),
(341, 6, 6, 21, 'Pembangunan Pengendali Banjir Sistem Kali Sadar Kabupaten dan Kota Mojokerto', 76.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '354'),
(342, 3, 6, 8, 'KUA Tebing', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '355'),
(343, 3, 6, 8, 'KUA Siantan', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '355'),
(344, 3, 6, 8, 'KUA Lingga', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '355'),
(345, 3, 6, 8, 'KUA Moro', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '355'),
(346, 3, 6, 8, 'KUA Belakang Padang', 2.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '355'),
(347, 3, 6, 8, 'KUA Bintan Utara', 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '355'),
(348, 3, 6, 8, 'KUA Tanjungpinang Timur', 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '355'),
(349, 2, 6, 22, 'MAN IC Kota Batam, Kepri', 9.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '355'),
(350, 6, 6, 21, 'Pembangunan Pengaman Pantai Penyak - Terentang, Kab. Bangka Tengah', 69.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '355'),
(351, 6, 6, 17, 'Pembangunan Embung Sungai Pulau Kecamatan Pangkalan Banteng dl Kab. Kotawaringin Barat Tahap II', 5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '355'),
(352, 6, 6, 17, 'Pembangunan EmbungTamao Kab. Mamuju', 9.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '355'),
(353, 6, 6, 26, 'Pembangunan Embung Air Baku DAS Kawal di Kab. Bintan', 69.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '355'),
(354, 4, 6, 28, 'Embarkarsi Antara Lampung', 52.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(355, 3, 6, 8, 'KUA Telukbetung Timur', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(356, 3, 6, 8, 'KUA Air Naningan', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(357, 3, 6, 8, 'KUA Adiluwih', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(358, 3, 6, 8, 'KUA Kotabumi Selatan', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(359, 3, 6, 8, 'KUA Simpang Pematang', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(360, 3, 6, 8, 'KUA Punduh Pidada', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(361, 3, 6, 8, 'KUA Kemiling', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(362, 3, 6, 8, 'KUA Candi Puro', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(363, 3, 6, 8, 'KUA Labuhan Meringgai', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(364, 3, 6, 8, 'KUA Bumi Ratu Nuban', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(365, 2, 6, 22, 'MAN 1 Bandar Lampung, Lampung', 4.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(366, 2, 6, 23, 'IAIN Jurai Siwo Metro', 40, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(367, 5, 6, 16, 'Preservasi Rehabilitasi Mayor Ruas Pematang Panggang - Sp. Bujung Tenuk', 107, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(368, 5, 6, 16, 'Preservasi Rehabilitasi Mayor Ruas  Sp. Bujung Tenuk - Bts Kab. Lamteng/Kab Lamtim', 35, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(369, 5, 6, 16, 'Preservasi Rehabilitasi Mayor Ruas Bts Kab Lamteng/Kab. Lamtim-Way Jepara-Sp.Sribawono-Sp.Bakauheni', 38, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(370, 5, 6, 16, 'Preservasi Rehabilitasi Mayor Ruas Jl. Sutami-Sribawono-Sp.Sribawono', 60, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(371, 6, 6, 21, 'Pembangunan Pengaman Pantai Pulau Nongsa, Pantai Tepi Laut Tanjung Pinang, dan Pantai Pulau Karimun', 77.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(372, 6, 6, 21, 'Pengendalian Banjir Way Ketibung Way Sulan', 77.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(373, 6, 6, 17, 'Pembangunan Embung Koto Padang 2 Kec. Koto Baru', 5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(374, 7, 6, 15, 'Percepatan Pembangunan ITERA', 129.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '356'),
(375, 4, 6, 28, 'Asrama Haji Maluku', 61.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '357'),
(376, 3, 6, 8, 'KUA Kairatu Barat', 1.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '357'),
(377, 3, 6, 8, 'KUA Kei Kecil Timur', 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '357'),
(378, 3, 6, 8, 'KUA Bula', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '357'),
(379, 3, 6, 8, 'KUA Leihitu Barat', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '357'),
(380, 3, 6, 8, 'KUA Besar Selatan Barat', 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '357'),
(381, 3, 6, 8, 'KUA Dula Utara', 2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '357'),
(382, 3, 6, 8, 'KUA Waiapo', 1.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '357'),
(383, 2, 6, 23, 'IAIN Ambon', 32.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '357'),
(384, 5, 6, 11, 'Pembangunan Jembatan Wear Arafura', 38, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '357'),
(385, 6, 6, 21, 'Pembangunan Pengaman Pantai Karya Tani (lanjutan)', 40, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '357'),
(386, 6, 6, 21, 'Pembangunan Pengaman Pantai Kec. Namrole', 30.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '357'),
(387, 6, 6, 21, 'Pembangunan Bangunan Pengendali Sedimen Sungai Matakabo', 73, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '357'),
(388, 3, 6, 8, 'KUA Jailolo', 1.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(389, 3, 6, 8, 'KUA Sanana', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(390, 3, 6, 8, 'KUA Oba Tengah', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(391, 3, 6, 8, 'KUA Kao', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(392, 3, 6, 8, 'KUA Bacan', 1.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(393, 3, 6, 8, 'KUA Weda Selatan', 1.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(394, 3, 6, 8, 'KUA Morotai Utara', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(395, 3, 6, 8, 'KUA Loloda Utara', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(396, 3, 6, 8, 'KUA Galela Selatan', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(397, 3, 6, 8, 'KUA Mangoli Utara', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(398, 3, 6, 8, 'KUA Taliabu Utara', 1.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(399, 5, 6, 11, 'Pembangunan Jalan Sofi - Wayabula', 100, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(400, 6, 6, 21, 'Pengendalian Lahar Gunung Gamalama', 50.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(401, 6, 6, 17, 'Pembangunan Embung Serbaguna Kab. Kep. Selayar', 12.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(402, 11, 6, 14, 'Pembangunan Suaka Paruh Bengkok di Taman Nasional Aketajawe Lolobata', 5.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '358'),
(403, 3, 6, 8, 'KUA Sumbawa', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(404, 3, 6, 8, 'KUA Unter Iwes', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(405, 3, 6, 8, 'KUA Moyo Utara', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(406, 3, 6, 8, 'KUA Labangka', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(407, 3, 6, 8, 'KUA Kopang', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(408, 3, 6, 8, 'KUA Seteluk', 1.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(409, 3, 6, 8, 'KUA Labuapi', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(410, 3, 6, 8, 'KUA Huu', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(411, 3, 6, 8, 'KUA Aikmel', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(412, 3, 6, 8, 'KUA Narmada', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(413, 3, 6, 8, 'KUA Selaparang', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(414, 5, 6, 16, 'Rekonstruksi Pamenang - Bayan - Sembalun I', 75, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(415, 6, 6, 17, 'Pembangunan Embung Serbaguna Pulau Laut di Kab. Natuna Tahap II', 9.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(416, 6, 6, 26, 'Pembangunan Sarana Penyediaan Air Baku Waduk Bintang Bano di Kabupaten Sumbawa Barat', 17.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '359'),
(417, 3, 6, 8, 'KUA Kota Waingapu', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '360'),
(418, 3, 6, 8, 'KUA Katikutana', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '360'),
(419, 3, 6, 8, 'KUA Alor Barat Laut', 0.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '360'),
(420, 3, 6, 8, 'KUA Talibura', 0.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '360'),
(421, 3, 6, 8, 'KUA Alok', 0.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '360'),
(422, 3, 6, 8, 'KUA Pantar Barat', 0.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '360'),
(423, 2, 6, 22, 'MAN Ende, NTT', 2.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '360'),
(424, 6, 6, 21, 'Pembangunan Sarana/Prasarana Pengendalian Banjir Sungai Motamasin di Kab. Malaka ', 68.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '360'),
(425, 6, 6, 21, 'Pembangunan Sarana/Prasarana Pengendalian Banjir Sungai Malibaka', 82.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '360'),
(426, 6, 6, 17, 'Pembangunan Bendungan Manikin Prov. NTT', 35, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '360'),
(427, 6, 6, 26, 'Pembangunan/ Peningkatan Jaringan Air Baku Bendung Raknamo Untuk Air Minum di Kabupaten Kupang', 18.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '360'),
(428, 3, 6, 8, 'KUA Distrik Biak Kota', 3.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '361'),
(429, 3, 6, 8, 'KUA Distrik Nabire', 3.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '361'),
(430, 2, 6, 22, 'MTs Filial Merasugun Asso Walesi Jayawijaya, Papua', 3.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '361'),
(431, 5, 6, 11, 'Pembangunan Jembatan Holtekamp', 89.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '361'),
(432, 6, 6, 19, 'Pembangunan DIR Bade I', 23.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '361'),
(433, 6, 6, 19, 'Pembangunan DIR Bade II', 22.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '361'),
(434, 6, 6, 19, 'Pembangunan DIR Kepi Kuti', 12.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '361'),
(435, 6, 6, 19, 'Pembangunan DIR Mur Lingia', 13.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '361'),
(436, 6, 6, 21, 'Pengendalian Banjir Kota Merauke Kabupaten Merauke', 77.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '361'),
(437, 6, 6, 17, 'Pembangunan Embung di Distrik Karubaga Kab. Tolikara Tahap II', 22.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '361'),
(438, 6, 6, 26, 'Pembangunan Intake dan Jaringan Pipa Transmisi Air Baku SA Sungai Maro Kota Merauke; Kabupaten Merauke ', 65.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '361'),
(439, 6, 6, 26, 'Pembangunan Penyediaan Air Baku Kota Jayapura SA. Danau Sentani Kota Jayapura', 20, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '361'),
(440, 6, 6, 26, 'Pembangunan Penyediaan Jaringan Air Baku SA.Sungai Wasi Wamena ', 15, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '361'),
(441, 3, 6, 8, 'KUA Distrik Ransiki', 4.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '362'),
(442, 2, 6, 22, 'MAN IC Sorong, Papua Barat', 9.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '362'),
(443, 2, 6, 23, 'STAIN Sorong', 43.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '362'),
(444, 6, 6, 21, 'Pembangunan Pengendali Banjir Sungai Warmare  Kabupaten Manokwari', 62, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '362'),
(445, 6, 6, 17, 'Pembangunan Embung Serba Guna Pulau Bunyu Bulungan Tahap II', 24.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '362'),
(446, 6, 6, 17, 'Pembangunan EmbungTanggaromi Di Kabupaten Kaimana Provinsi Papua Barat Tahap II', 14.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '362'),
(447, 1, 6, 3, 'Pembangunan Jalur KA Trans Sumatera antara Kota Rantau Prapat - Kota Pinang', 400, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(448, 3, 6, 8, 'KUA Batang Gangsal', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(449, 3, 6, 8, 'KUA Pasir Penyu', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(450, 3, 6, 8, 'KUA Pelalawan', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(451, 3, 6, 8, 'KUA Keritang', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(452, 3, 6, 8, 'KUA Kuala Indragiri', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(453, 3, 6, 8, 'KUA Kateman', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(454, 3, 6, 8, 'KUA Reteh', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(455, 3, 6, 8, 'KUA Dumai Kota', 2.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(456, 2, 6, 22, 'MAN IC Siak, Riau', 7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(457, 2, 6, 22, 'MAN 1 Pekanbaru, Riau', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(458, 2, 6, 23, 'UIN Sultan Syarif Kasim Riau', 44.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(459, 2, 6, 23, 'STAIN Bengkalis', 22, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(460, 5, 6, 16, 'Preservasi Rehabilitasi Jalan Bts. Prov. Sumut - Bagan Baru - Simpang Balam - Simpang Batang', 69, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(461, 5, 6, 16, 'Preservasi dan Pelebaran Jalan Simpang Batang - Bts. Kota Dumai - Sp. Terminal dan bts kota dumai - Duri', 77.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(462, 5, 6, 16, 'Preservasi Rekonstruksi Duri - Kandis - Sp Palas -Siak II (Pekanbaru)', 62.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(463, 5, 6, 16, 'Preservasi Rehabilitasi Jalan Sp Gemar Menabung - Sp Air Hitam - Sp Panam - Sp Kubang - Sp KH Nasution - Sp Kayu Ara', 73.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(464, 5, 6, 16, 'Pelebaran Jalan Menambah Lajur Ruas Subrantas - Batas Kampar - Batas Bangkinang', 130, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(465, 5, 6, 16, 'Preservasi dan Pelebaran Jalan Simpang Lago - Sorek I', 45.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(466, 5, 6, 16, 'Preservasi Pelebaran Jalan Sorek I - Bts Kab Inhu - Simpang Japura - Pematang Reba', 75.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(467, 5, 6, 16, 'Preservasi Rehabilitasi Pematang Reba - Siberida - Bts. Prov Jambi', 47.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(468, 5, 6, 11, 'Pembangunan Jembatan Duri - Jalan Siak II', 20, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(469, 6, 6, 19, 'Rehabilitasi Bendung Simandolak I,II', 39.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(470, 6, 6, 26, 'Pembangunan Penyediaan Air Baku Durolis (Dumai, Rokan Hilir, Bengkalis)', 35, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '363'),
(471, 3, 6, 8, 'KUA Sumarorong', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '364'),
(472, 3, 6, 8, 'KUA Binuang', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '364'),
(473, 3, 6, 8, 'KUA Pamboang', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '364'),
(474, 3, 6, 8, 'KUA Papalang', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '364'),
(475, 3, 6, 8, 'KUA Tommo', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '364'),
(476, 2, 6, 23, 'STAIN Majene', 45.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '364'),
(477, 6, 6, 21, 'Pengendalian Banjir Sungai Mamasa Kabupaten Mamasa Provinsi Sulawesi Barat', 123, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '364'),
(478, 6, 6, 17, 'Pembangunan Embung Gurabunga Kota Tidore Kepulauan Tahap II', 17.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '364'),
(479, 1, 6, 2, 'Pembangunan Jalur KA Trans Sulawesi antara Makassar - Pare-Pare Segmen 2 (Barru-Parepare)', 681.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(480, 4, 6, 28, 'Asrama Haji Makassar', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(481, 2, 6, 23, 'IAIN Palopo', 30, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(482, 3, 6, 8, 'KUA Barru', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(483, 3, 6, 8, 'KUA Bontotiro', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(484, 3, 6, 8, 'KUA Herlang', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(485, 3, 6, 8, 'KUA Gantarang', 1.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(486, 3, 6, 8, 'KUA Maiwa', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(487, 3, 6, 8, 'KUA Alla', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(488, 3, 6, 8, 'KUA Bontomarannu', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(489, 3, 6, 8, 'KUA Mandai', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(490, 3, 6, 8, 'KUA Libureng', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(491, 3, 6, 8, 'KUA Mangkutana', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(492, 3, 6, 8, 'KUA Bajo', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(493, 3, 6, 8, 'KUA Ulaweng', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(494, 2, 6, 23, 'STAIN Watampone', 40, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(495, 2, 6, 23, 'STAIN Parepare', 40, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(496, 1, 6, 2, 'Pembangunan Jalur KA Trans Sulawesi Makassar-Parepare Segmen 3 (Makassar-Barru)', 538.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(497, 5, 6, 16, 'Pelebaran Jalan Menuju Standard Bts. Sulbar - Bts. Kota Pinrang I', 82, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(498, 5, 6, 16, 'Pelebaran Jalan Menuju Standard Bts. Sulbar - Bts. Kota Pinrang II', 38, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(499, 6, 6, 19, 'Rehabilitasi Jaringan Irigasi DI. Kalaena I Kab. Luwu Timur', 40.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(500, 6, 6, 19, 'Rehabilitasi Saluran Sekunder DI. Pamukkulu Kab. Takalar', 30.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(501, 6, 6, 19, 'Rehabilitasi Jaringan Irigasi DI. Pattiro Kab. Bone', 28.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(502, 6, 6, 21, 'Pengendalian Sedimen Bawakaraeng Sungai Jeneberang', 52.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(503, 6, 6, 17, 'Pembangunan Embung Serbaguna Pulau Tiga di Kab. Natuna', 4.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(504, 6, 6, 26, 'Pembangunan Jaringan Air Baku Kab. Sinjai', 52.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(505, 6, 6, 26, 'Pembangunan Jaringan Air Baku Baraka Kab. Enrekang Tahap II', 7.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '365'),
(506, 3, 6, 8, 'KUA Banawa Selatan', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(507, 3, 6, 8, 'KUA Dampelas', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(508, 3, 6, 8, 'KUA Parigi Utara', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(509, 3, 6, 8, 'KUA Lampasio', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(510, 3, 6, 8, 'KUA Galang', 1.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(511, 3, 6, 8, 'KUA Una-Una', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(512, 3, 6, 8, 'KUA Toili', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(513, 3, 6, 8, 'KUA Mori Atas', 1.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(514, 5, 6, 16, 'Pelebaran Jalan Menuju Standard Tomata - Beteleme', 86.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(515, 5, 6, 16, 'Rekonstruksi dan Penanganan Lereng Tawaeli - Nupabomba - Kebun Kopi - Toboli II', 68, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(516, 5, 6, 16, 'Rekonstruksi dan Penanganan Lereng Tawaeli - Nupabomba - Kebun Kopi - Toboli III', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(517, 5, 6, 16, 'Rekonstruksi Jalan Tomata - Beteleme', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(518, 6, 6, 21, 'Pembangunan Tanggul Pengaman Pantai Buol', 82.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(519, 6, 6, 21, 'Pengendalian Banjir Sungai Palu Kota Palu ', 83.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '366'),
(520, 3, 6, 8, 'KUA Kadatua', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(521, 3, 6, 8, 'KUA Lasalimu', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(522, 3, 6, 8, 'KUA Lohea', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(523, 3, 6, 8, 'KUA Pasarwajo', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(524, 3, 6, 8, 'KUA Lalembuu', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(525, 3, 6, 8, 'KUA Mawasangka', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(526, 3, 6, 8, 'KUA Puwatu', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(527, 3, 6, 8, 'KUA Wangi-Wangi', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(528, 2, 6, 22, 'MAN IC Kota Palu, Sulteng', 8.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(529, 2, 6, 22, 'MAN Tojo Uno, Sulteng', 1.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(530, 2, 6, 23, 'IAIN Kendari', 38.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(531, 5, 6, 16, 'Rekonstruksi Jalan Batas Sulsel - Tolala - Lelewawo', 80, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(532, 6, 6, 21, 'Perkuatan Tebing Sungai Konaweha Kab. Konawe Provinsi Sulawesi Tenggara', 62.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(533, 6, 6, 26, 'Pembangunan Intake dan Jaringan Transmisi Air Baku Kab. Kolaka', 66.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '372'),
(534, 3, 6, 8, 'KUA Kotabunan', 1.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '367'),
(535, 2, 6, 22, 'MAN IC Kendari, Sultra', 6.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '367'),
(536, 2, 6, 23, 'IAIN Manado', 40, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '367'),
(537, 5, 6, 16, 'Pelebaran Jalan Manado Bypass (Winangun-Maumbi)', 1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '367'),
(538, 6, 6, 21, 'Pembangunan Bangunan Pengaman Pantai Miangas', 51.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '367'),
(539, 6, 6, 21, 'Pembangunan Bangunan Pengaman Pantai Marore', 51, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '367'),
(540, 6, 6, 17, 'Pembangunan Embung Wanua Ure Kab. Minahasa Utara', 8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '367'),
(541, 4, 6, 28, 'Asrama Haji Padang (Pariaman)', 48.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(542, 2, 6, 23, 'IAIN Bukittinggi', 28.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(543, 3, 6, 8, 'KUA Mandiangin Koto Selayan', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(544, 3, 6, 8, 'KUA Padang Utara', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(545, 3, 6, 8, 'KUA Sungai Tarab', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(546, 3, 6, 8, 'KUA Mungka', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(547, 3, 6, 8, 'KUA IV Nagari', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(548, 3, 6, 8, 'KUA Sungai Rumbai', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(549, 3, 6, 8, 'KUA Lubuk Sikarah', 1.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(550, 3, 6, 8, 'KUA Kapur IX', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(551, 3, 6, 8, 'KUA Pangkalan', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(552, 3, 6, 8, 'KUA Padang Laweh', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(553, 2, 6, 22, 'MAN IC Padang Pariaman, Sumbar', 5.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(554, 2, 6, 23, 'IAIN Batusangkar', 35.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(555, 5, 6, 16, 'Rekonstruksi Jalan Lubuk Selasih - Surian - Bts. Jambi', 80, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(556, 5, 6, 16, 'Rekonstruksi Jalan Tapan - Bts. Bengkulu', 80, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(557, 6, 6, 21, 'Pembangunan Sarana/Prasarana Pengendalian Banjir dan Sedimen Batang Bangko Kabupaten Solok Selatan', 104.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(558, 6, 6, 21, 'Pembanguanan Sarana/Prasarana Pengaman Pantai Pantai Tiku Kabupaten Agam', 30.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(559, 6, 6, 21, 'Pembangunan Bangunan Prasarana Pengendali Sedimen Batang Air Dingin Kota Padang', 31.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(560, 6, 6, 21, 'Pembangunan Bangunan Pengendali 5edimen Batang Kuranji dan Anak Sungainya (Segmen Hulu)', 51.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(561, 6, 6, 21, 'Pembangunan Sarana/Prasarana Pengendalian Banjir Batang Agam', 53, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(562, 6, 6, 17, 'Pembangunan Embung Batang Singan Kabupaten Lima Puluh Kota', 12, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(563, 6, 6, 17, 'Pembangunan Embung Seppong Sendana kab. Majene Tahap II', 5.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(564, 6, 6, 26, 'Pembangunan Intake dan Jaringan Pipa Transmisi Air Baku Batang Tambuo Tabek Gadang Kota Bukittinggi', 19.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(565, 6, 6, 26, 'Pembangunan Intake dan Jaringan Air Baku Rambatan Kab.Tanah Datar', 5.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '368'),
(566, 3, 6, 8, 'KUA Prabumulih Selatan', 1.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(567, 3, 6, 8, 'KUA Merapi Selatan', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(568, 3, 6, 8, 'KUA Muara Payang', 1.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(569, 2, 6, 22, 'MAN IC OKI, Sumsel', 8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(570, 2, 6, 23, 'UIN Raden Fatah Palembang', 61.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(571, 5, 6, 16, 'Preservasi Rekonstruksi Jalan Bts. Prov. Jambi - Peninggalan        ', 110, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(572, 5, 6, 16, 'Preservasi Rekonstruksi Jalan Peninggalan - Sei Lilin - Betung', 110, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(573, 5, 6, 16, 'Preservasi Rehabilitasi Mayor Jalan Betung - Bts. Kota Palembang          ', 55, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(574, 5, 6, 16, 'Preservasi Rekonstruksi Jalan Bts. Kota Palembang - Sp. Inderalaya - Meranjat - Bts. Kota Kayu Agung', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(575, 5, 6, 16, 'Preservasi Rekonstruksi Jalan Celikah - Kayu Agung - Bts. Kota Kayu Agung - Sp. Penyandingan - Bts. Lampung', 95, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(576, 5, 6, 11, 'Pembangunan Jembatan Musi IV', 175.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(577, 5, 6, 11, 'Pembangunan Fo. Keramasan', 54.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(578, 5, 6, 11, 'Pembangunan FO Sp. Bandara - TAA (Palembang)', 23.5, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(579, 6, 6, 17, 'Pembangunan Embung Marsi Sisir Di Kabupaten Kaimana Provinsi Papua Barat Tahap II', 12.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(580, 6, 6, 26, 'Pembangunan Intake dan Jaringan Pipa Transmisi Air Baku Sistem Gandus Kota Palembang', 41, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '369'),
(581, 1, 6, 1, 'Pembangunan Jalan KA Layang di Perkotaan Medan (Tahap 1 antara Medan - Bandar Khalifah Baru lintas Medan - Araskabu - Kualanamu) ', 44.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(582, 4, 6, 28, 'Asrama Haji Medan', 9.4, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(583, 2, 6, 22, 'MAN IC Sipirok, Sumut', 8.7, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(584, 2, 6, 23, 'UIN Sumatera Utara', 50, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(585, 1, 6, 3, 'Pembangunan Jalan KA antara Binjai-Besitang', 313.3, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(586, 1, 6, 3, 'Pembangunan Jalan KA lintas Bandar Tinggi-Kuala Tanjung', 346.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(587, 5, 6, 16, 'Rekonstruksi/ Peningkatan Struktur Jalan Batu Mundom - Tabuyung - Natal ', 98.9, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(588, 5, 6, 16, 'Rekonstruksi/Peningkatan Struktur Jalan Rianite - Batu Mundom', 97.2, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(589, 5, 6, 16, 'Preservasi Dan Pelebaran Jalan Pangururan - Ambarita - Tomok- Onan Runggu                 ', 138.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(590, 5, 6, 16, 'Preservasi Dan Pelebaran Jalan Tele - Pangururan - Nainggolan - Onan Runggu                   ', 84.6, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(591, 5, 6, 16, 'Preservasi Jalan Bts. Kota Medan - Bts. Kota Lubuk Pakam - Tugu Kota Lubuk Pakam - Bts. Kab. Serdang Bedagai - Jalan Pertahanan/ Cemara - Krakatau Ujung (Medan) - Letda Sujono (Medan) - Tembung - Lubuk Pakam - Sp. Kayu Besar - Kualanamu', 92, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(592, 5, 6, 16, 'Preservasi Jalan Tanjung Kasau - Indrapura - Lima Puluh - Sei Bejangkar - Bts. Kota Kisaran dan Lima Puluh - Sei Mangke - Sp. Kuala Tanjung - Kuala Tanjung', 98, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(593, 5, 6, 16, 'Preservasi, Rehabilitasi & Rekonstruksi Jalan Bts Kota Kisaran - Sp Kawat - Bts Kota Rantau Prapat - JL. WR. Supratman - JL. Lingkar Rantau Prapat', 98, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(594, 6, 6, 19, 'Rehabilitasi Jaringan Irigasi DI. Sei Ular 18.500 Ha Kab. Deli Serdang dan Serdang Bedagai', 43.1, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370'),
(595, 6, 6, 26, 'Pembangunan Intake dan Jaringan Air Baku MEBIDANG', 35.8, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '370');

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

--
-- Dumping data for table `irena_sbsn_proyek_dpp`
--

INSERT INTO `irena_sbsn_proyek_dpp` (`id`, `id_proyek`, `id_dpp`, `judul`, `nilai`, `update_by`, `update_date`) VALUES
(1, 28, 6, 'Pengembangan Laboratorium Standar Nasional Satuan Ukuran (SNSU)', 50000000000, 20, '2018-03-14 05:35:51');

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
(9, 4, 2, 5000000, 30, '- tes', '- tes lagi', '- tes lagi', '- tes lagi', 20, '2018-03-23 05:12:24');

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
-- Table structure for table `irena_sbsn_usulan_lokasi`
--

CREATE TABLE `irena_sbsn_usulan_lokasi` (
  `id` int(11) NOT NULL,
  `id_usulan` int(11) DEFAULT '0',
  `id_lokasi` int(11) DEFAULT '0',
  `id_instansi` int(11) DEFAULT '0',
  `dpp` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='ambil lokasi';

--
-- Dumping data for table `irena_sbsn_usulan_lokasi`
--

INSERT INTO `irena_sbsn_usulan_lokasi` (`id`, `id_usulan`, `id_lokasi`, `id_instansi`, `dpp`) VALUES
(25, 28, 103, 4, 0),
(26, 28, 318, 4, 0),
(30, 0, 316, 2, 0),
(31, 0, 1, 2, 0),
(32, 0, 363, 2, 0),
(33, 30, 371, 2, 0),
(36, 34, 373, NULL, 0);

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
(13, 'FS oleh Donor');

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
(4, 'Sudah Masuk Green Book'),
(5, 'Sudah Daftar Kegiatan'),
(6, 'Sudah Loan Agreement');

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
(1, 5, 'f.manangin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Bapak', 'Firman', 'Perangin-angin', 'Firman', '1985-04-23', '1-firman.jpg', '081383339841', 1, 20, '2018-02-08 08:22:55'),
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
(17, 3, 'muhamadfaisal02@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Bapak', 'Muhamad', 'Faisal Siddiq', 'Faisal', '2018-03-23', 'faisal.jpg', '123', 0, 20, '2018-03-23 04:24:24'),
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
(5, 'Kasubdit', 'tim kasubdit\r\n');

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
(1, 20, b'1', '2018-03-14 03:38:05'),
(2, 20, b'1', '2018-03-14 03:39:07'),
(3, 20, b'1', '2018-03-14 09:21:11'),
(4, 20, b'1', '2018-03-15 03:17:15'),
(5, 20, b'1', '2018-03-15 08:14:54'),
(6, 20, b'0', '2018-03-15 08:18:51'),
(7, 1, b'1', '2018-03-15 08:18:58'),
(8, 1, b'0', '2018-03-15 08:49:26'),
(9, 20, b'1', '2018-03-15 08:49:30'),
(10, 20, b'0', '2018-03-15 08:51:01'),
(11, 1, b'1', '2018-03-15 08:51:06'),
(12, NULL, b'0', '2018-03-15 15:22:29'),
(13, 20, b'1', '2018-03-15 15:22:55'),
(14, 1, b'1', '2018-03-15 16:21:52'),
(15, 1, b'0', '2018-03-15 16:29:24'),
(16, 20, b'1', '2018-03-15 16:29:30'),
(17, 20, b'0', '2018-03-15 16:33:46'),
(18, 1, b'1', '2018-03-15 16:34:05'),
(19, 20, b'1', '2018-03-16 03:52:38'),
(20, 20, b'1', '2018-03-16 07:37:49'),
(21, 20, b'1', '2018-03-18 11:01:39'),
(22, 20, b'1', '2018-03-18 11:22:39'),
(23, 20, b'1', '2018-03-19 07:27:16'),
(24, 20, b'1', '2018-03-19 09:53:24'),
(25, 20, b'0', '2018-03-19 12:02:49'),
(26, 20, b'1', '2018-03-19 12:02:57'),
(27, 20, b'0', '2018-03-19 12:03:31'),
(28, 1, b'1', '2018-03-19 12:04:15'),
(29, 20, b'1', '2018-03-20 02:57:54'),
(30, 20, b'1', '2018-03-20 04:13:31'),
(31, 1, b'1', '2018-03-20 04:39:31'),
(32, 20, b'1', '2018-03-20 13:21:58'),
(33, 20, b'1', '2018-03-20 15:06:02'),
(34, 20, b'1', '2018-03-20 15:34:19'),
(35, 20, b'0', '2018-03-20 15:35:56'),
(36, 1, b'1', '2018-03-20 15:36:31'),
(37, 20, b'1', '2018-03-21 05:26:50'),
(38, 1, b'1', '2018-03-21 05:29:28'),
(39, 20, b'0', '2018-03-21 07:12:39'),
(40, 20, b'1', '2018-03-21 07:12:52'),
(41, 20, b'0', '2018-03-21 10:11:17'),
(42, 20, b'1', '2018-03-21 10:11:23'),
(43, 20, b'0', '2018-03-21 10:12:44'),
(44, 20, b'1', '2018-03-21 10:12:48'),
(45, 20, b'1', '2018-03-21 14:08:05'),
(46, 20, b'1', '2018-03-22 03:50:44'),
(47, 20, b'1', '2018-03-22 07:50:15'),
(48, 20, b'1', '2018-03-23 03:46:44'),
(49, 20, b'1', '2018-03-23 05:19:29'),
(50, 20, b'1', '2018-03-23 10:35:56'),
(51, 20, b'1', '2018-03-26 04:27:33'),
(52, 20, b'1', '2018-03-27 04:34:01'),
(53, NULL, b'0', '2018-03-27 08:24:24'),
(54, NULL, b'0', '2018-03-27 08:24:34'),
(55, 20, b'1', '2018-03-27 08:24:40'),
(56, 20, b'1', '2018-03-27 09:05:16'),
(57, 20, b'1', '2018-03-27 16:39:14'),
(58, 20, b'0', '2018-03-27 16:49:47'),
(59, 20, b'1', '2018-03-27 16:49:52'),
(60, 20, b'1', '2018-03-29 04:42:30'),
(61, 20, b'1', '2018-03-29 05:15:13'),
(62, 20, b'1', '2018-04-02 04:34:12'),
(63, 20, b'1', '2018-04-02 05:04:14'),
(64, 20, b'1', '2018-04-02 10:03:21'),
(65, NULL, b'0', '2018-04-02 12:09:16'),
(66, 1, b'1', '2018-04-02 12:09:22'),
(67, 20, b'1', '2018-04-03 04:29:06'),
(68, 20, b'1', '2018-04-03 06:39:32'),
(69, 20, b'0', '2018-04-03 07:07:17'),
(70, 1, b'1', '2018-04-03 07:07:24'),
(71, 20, b'0', '2018-04-03 11:22:42'),
(72, 1, b'1', '2018-04-03 11:22:47'),
(73, 1, b'0', '2018-04-03 11:23:25'),
(74, 20, b'1', '2018-04-03 11:23:37'),
(75, 20, b'0', '2018-04-03 11:24:15'),
(76, 1, b'1', '2018-04-03 11:24:20'),
(77, 20, b'1', '2018-04-03 11:29:31'),
(78, 1, b'0', '2018-04-03 11:30:32'),
(79, 20, b'1', '2018-04-03 11:30:37'),
(80, 20, b'0', '2018-04-03 11:30:58'),
(81, 1, b'1', '2018-04-03 11:31:03'),
(82, 1, b'0', '2018-04-03 11:31:21'),
(83, 20, b'1', '2018-04-03 11:31:27'),
(84, 20, b'0', '2018-04-03 11:32:13'),
(85, 1, b'1', '2018-04-03 11:32:18'),
(86, 1, b'0', '2018-04-03 11:38:37'),
(87, 20, b'1', '2018-04-03 11:38:44'),
(88, NULL, b'0', '2018-04-03 15:21:04'),
(89, 20, b'1', '2018-04-03 15:21:09'),
(90, 20, b'0', '2018-04-03 15:23:35'),
(91, 1, b'1', '2018-04-03 15:23:40'),
(92, 1, b'0', '2018-04-03 15:58:55'),
(93, 20, b'1', '2018-04-03 15:59:23'),
(94, 20, b'0', '2018-04-03 18:37:07'),
(95, 1, b'1', '2018-04-03 18:37:12'),
(96, 1, b'0', '2018-04-03 18:38:47'),
(97, 20, b'1', '2018-04-03 18:38:52'),
(98, 20, b'1', '2018-04-04 04:30:59'),
(99, 20, b'1', '2018-04-04 04:49:38'),
(100, 20, b'0', '2018-04-04 05:21:45'),
(101, 1, b'1', '2018-04-04 05:21:49'),
(102, 20, b'1', '2018-04-05 04:25:28'),
(103, 20, b'1', '2018-04-05 06:30:50'),
(104, 20, b'1', '2018-04-06 07:29:44'),
(105, 20, b'1', '2018-04-09 12:22:58'),
(106, 20, b'1', '2018-04-10 05:36:30'),
(107, 20, b'1', '2018-04-13 08:35:58'),
(108, 20, b'1', '2018-04-16 04:38:26'),
(109, 1, b'1', '2018-04-16 06:07:22'),
(110, 20, b'1', '2018-04-16 11:19:39'),
(111, 1, b'1', '2018-04-16 11:40:58'),
(112, NULL, b'0', '2018-04-17 06:22:49'),
(113, NULL, b'0', '2018-04-17 06:23:17'),
(114, 20, b'1', '2018-04-17 06:23:26'),
(115, NULL, b'0', '2018-04-17 07:18:33'),
(116, 20, b'1', '2018-04-17 07:18:43'),
(117, 20, b'1', '2018-04-17 10:13:05'),
(118, 20, b'1', '2018-04-18 05:09:45'),
(119, 20, b'1', '2018-04-18 12:32:47'),
(120, 20, b'1', '2018-04-18 19:07:06'),
(121, 20, b'1', '2018-04-19 04:37:41'),
(122, 20, b'0', '2018-04-19 05:16:55'),
(123, 1, b'1', '2018-04-19 05:17:01'),
(124, 1, b'0', '2018-04-19 05:17:20'),
(125, 20, b'1', '2018-04-19 05:17:24'),
(126, 20, b'0', '2018-04-19 05:18:08'),
(127, 1, b'1', '2018-04-19 05:18:13'),
(128, 1, b'0', '2018-04-19 05:21:34'),
(129, 20, b'1', '2018-04-19 05:21:38'),
(130, 20, b'0', '2018-04-19 05:59:44'),
(131, 1, b'1', '2018-04-19 05:59:49'),
(132, 1, b'0', '2018-04-19 06:00:15'),
(133, 20, b'1', '2018-04-19 06:00:19'),
(134, 20, b'0', '2018-04-19 06:00:56'),
(135, 1, b'1', '2018-04-19 06:01:02'),
(136, 1, b'0', '2018-04-19 06:02:39'),
(137, 20, b'1', '2018-04-19 06:02:54'),
(138, 20, b'0', '2018-04-19 06:05:17'),
(139, 1, b'1', '2018-04-19 06:05:22'),
(140, 1, b'0', '2018-04-19 06:05:40'),
(141, 20, b'1', '2018-04-19 06:05:48'),
(142, 20, b'0', '2018-04-19 06:06:15'),
(143, 1, b'1', '2018-04-19 06:06:21'),
(144, 1, b'0', '2018-04-19 06:06:41'),
(145, 20, b'1', '2018-04-19 06:06:46'),
(146, 20, b'0', '2018-04-19 06:10:08'),
(147, 1, b'1', '2018-04-19 06:10:12'),
(148, 1, b'0', '2018-04-19 06:10:28'),
(149, 20, b'1', '2018-04-19 06:10:32'),
(150, 20, b'0', '2018-04-19 06:10:52'),
(151, 1, b'1', '2018-04-19 06:11:03'),
(152, 1, b'0', '2018-04-19 06:11:21'),
(153, 20, b'1', '2018-04-19 06:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `irena_usulan_adm`
--

CREATE TABLE `irena_usulan_adm` (
  `id` int(11) NOT NULL,
  `id_usulan` int(11) NOT NULL,
  `is_lengkap` int(11) NOT NULL DEFAULT '0',
  `update_at` datetime DEFAULT NULL,
  `update_by` varchar(200) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `is_kasubdit` int(11) NOT NULL,
  `by_kasubdit` int(11) NOT NULL,
  `at_kasubdit` timestamp NULL DEFAULT NULL,
  `catatan` text NOT NULL,
  `is_BB` int(11) NOT NULL,
  `is_BB_by` int(11) NOT NULL,
  `is_BB_at` datetime NOT NULL,
  `is_BB_catatan` text NOT NULL,
  `is_bb_kasubdit` int(11) NOT NULL,
  `kasubdit_bb_by` int(11) NOT NULL,
  `kasubdit_bb_at` datetime NOT NULL,
  `catatan_kasubdit` text NOT NULL,
  `is_usulan_menteri` int(11) NOT NULL DEFAULT '0',
  `is_dipk` int(11) NOT NULL DEFAULT '0',
  `id_rek_menteri_dn` int(11) NOT NULL DEFAULT '0',
  `is_rek_menteri_bumn` int(11) NOT NULL DEFAULT '0',
  `is_setuju_ia` int(11) NOT NULL DEFAULT '0',
  `is_duk` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_usulan_adm`
--

INSERT INTO `irena_usulan_adm` (`id`, `id_usulan`, `is_lengkap`, `update_at`, `update_by`, `keterangan`, `is_kasubdit`, `by_kasubdit`, `at_kasubdit`, `catatan`, `is_BB`, `is_BB_by`, `is_BB_at`, `is_BB_catatan`, `is_bb_kasubdit`, `kasubdit_bb_by`, `kasubdit_bb_at`, `catatan_kasubdit`, `is_usulan_menteri`, `is_dipk`, `id_rek_menteri_dn`, `is_rek_menteri_bumn`, `is_setuju_ia`, `is_duk`) VALUES
(84, 26, 2, '2018-03-15 14:19:12', '20', 'sudah lengkap', 2, 1, '2018-03-15 07:19:33', 'sudah lengkap', 2, 20, '2018-03-15 14:21:44', '- layak masuk BB', 2, 1, '2018-03-15 14:22:15', '- layak ditambahkan ke bluebook', 0, 0, 0, 0, 0, 0),
(85, 27, 2, '2018-03-15 15:30:49', '20', 'kelengkapan administrasi sudah lengkap', 2, 1, '2018-03-15 08:31:45', 'kelengkapan administrasi sudah lengkap', 2, 20, '2018-03-15 15:35:14', '- masuk ke bluebook', 2, 1, '2018-03-15 15:36:17', '- diusulkan masuk ke bluebook', 0, 0, 0, 0, 0, 0),
(86, 28, 2, '2018-03-15 22:52:18', '20', 'sudah lengkap', 2, 1, '2018-03-15 15:52:54', 'sudah lengkap', 2, 20, '2018-03-15 22:55:44', '- tambah bluebook', 2, 1, '2018-03-15 22:58:04', '- sudah layak', 0, 0, 0, 0, 0, 0),
(87, 29, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(88, 30, 2, '2018-03-15 22:20:57', '20', 'namun saat di meeting akan penarikan secara staging', 2, 1, '2018-03-15 15:25:25', 'administrasi sudah lengkap', 2, 20, '2018-03-15 22:33:22', '-', 2, 1, '2018-03-15 22:34:17', '-', 0, 0, 0, 0, 0, 0),
(89, 31, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(90, 32, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(91, 33, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(92, 34, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(93, 35, 0, '2018-03-21 13:29:28', '20', 'sudah lengkap dokumennya', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(94, 36, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(95, 37, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(96, 38, 2, '2018-03-20 10:53:46', '20', 'menurut hasil rapat pada .... administrasi sudah lengkap', 2, 1, '2018-03-20 03:55:56', 'menurut hasil rapat pada .... administrasi sudah lengkap', 2, 20, '2018-03-20 10:58:01', '- menurut hasil rapat tanggal x sudah setuju untuk masuk Bluebook', 2, 1, '2018-03-20 10:58:19', '- sudah ada rekomendasi masuk bluebook', 0, 0, 0, 0, 0, 0),
(97, 39, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(98, 40, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(99, 41, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(100, 48, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(101, 49, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(102, 50, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(103, 51, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(104, 52, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(105, 53, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(106, 54, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(107, 55, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(108, 56, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(109, 57, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(110, 58, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(111, 59, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(112, 60, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(113, 61, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(114, 62, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(115, 63, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(116, 64, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(117, 65, 2, '2018-04-03 16:17:36', '20', '-', 2, 1, '2018-04-03 09:18:42', '-', 2, 20, '2018-04-03 16:24:08', '-', 2, 1, '2018-04-03 16:24:36', '-', 0, 0, 0, 0, 0, 0),
(119, 67, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(120, 68, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(121, 69, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(122, 70, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(123, 71, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(124, 72, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(125, 73, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(126, 74, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(127, 75, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(128, 76, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(129, 77, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(130, 78, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(131, 79, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(132, 80, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(133, 81, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(134, 82, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(135, 83, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(136, 84, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(137, 85, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(138, 86, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(140, 88, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(141, 89, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(142, 90, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(143, 91, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(144, 92, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(145, 93, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(147, 95, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(148, 96, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(149, 97, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(150, 98, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(151, 99, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(152, 100, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(153, 101, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(154, 102, 0, NULL, '', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, '0000-00-00 00:00:00', '', 0, 0, 0, 0, 0, 0),
(155, 103, 2, '2018-04-03 12:07:05', '20', 'sudah lengkap', 2, 1, '2018-04-03 05:08:23', 'sudah lengkap', 2, 20, '2018-04-03 14:11:02', '-', 2, 1, '2018-04-03 14:13:06', '-', 0, 0, 0, 0, 0, 0),
(156, 104, 2, '2018-04-16 11:06:18', '20', 'lengkap', 2, 1, '2018-04-16 04:11:12', 'lengkap', 2, 20, '2018-04-16 11:17:00', '-', 2, 1, '2018-04-16 11:17:41', '-', 0, 0, 0, 0, 0, 0),
(157, 105, 2, '2018-04-16 16:20:18', '20', 'lengkap', 2, 1, '2018-04-16 09:41:15', 'lengkap', 2, 20, '2018-04-19 10:18:01', '-', 2, 1, '2018-04-19 10:18:33', '-', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `irena_usulan_historis`
--

CREATE TABLE `irena_usulan_historis` (
  `id` int(11) NOT NULL,
  `id_usulan` int(11) DEFAULT NULL,
  `id_usulan_terkait` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_usulan_historis`
--

INSERT INTO `irena_usulan_historis` (`id`, `id_usulan`, `id_usulan_terkait`) VALUES
(12, 105, 104);

-- --------------------------------------------------------

--
-- Table structure for table `irena_usulan_kronologis`
--

CREATE TABLE `irena_usulan_kronologis` (
  `id` int(11) NOT NULL,
  `id_usulan` int(11) NOT NULL,
  `id_arsip` int(11) NOT NULL DEFAULT '0',
  `keterangan_arsip` mediumtext NOT NULL,
  `catatan_tambahan` longtext NOT NULL,
  `by` int(11) NOT NULL DEFAULT '0',
  `at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `irena_usulan_layak`
--

CREATE TABLE `irena_usulan_layak` (
  `id` int(11) NOT NULL,
  `id_usulan` int(11) NOT NULL,
  `is_layak` int(11) NOT NULL DEFAULT '0',
  `update_at` datetime NOT NULL,
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
(87, 26, 2, '2018-03-15 14:20:58', '20', 'sudah lengkap', 2, 1, '2018-03-15 14:21:15', 'sudah lengkap', 0),
(88, 27, 2, '2018-03-15 15:33:53', '20', 'dokumen kelengkapan sudah lengkap', 2, 1, '2018-03-15 15:34:12', '- sudah lengkap', 0),
(89, 28, 2, '2018-03-15 22:53:58', '20', '- sudah lengkap', 2, 1, '2018-03-15 22:54:58', '- sudah lengkap', 0),
(90, 29, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(91, 30, 0, '2018-03-15 22:26:24', '20', 'sudah layak', 2, 1, '2018-03-15 22:27:12', '- sudah lengkap', 0),
(92, 31, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(93, 32, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(94, 33, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(95, 34, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(96, 35, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(97, 36, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(98, 37, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(99, 38, 2, '2018-03-20 10:57:00', '20', 'sudah mendapat rekomendasi sektor', 2, 1, '2018-03-20 10:57:21', '- sudah ada surat rekomendasi dari sektor', 0),
(100, 39, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(101, 40, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(102, 41, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(103, 48, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(104, 49, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(105, 50, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(106, 51, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(107, 52, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(108, 53, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(109, 54, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(110, 55, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(111, 56, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(112, 57, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(113, 58, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(114, 59, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(115, 60, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(116, 61, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(117, 62, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(118, 63, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(119, 64, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(120, 65, 2, '2018-04-03 16:19:33', '20', '-', 2, 1, '2018-04-03 16:22:57', '-', 0),
(122, 67, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(123, 68, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(124, 69, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(125, 70, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(126, 71, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(127, 72, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(128, 73, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(129, 74, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(130, 75, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(131, 76, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(132, 77, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(133, 78, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(134, 79, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(135, 80, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(136, 81, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(137, 82, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(138, 83, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(139, 84, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(140, 85, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(141, 86, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(143, 88, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(144, 89, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(145, 90, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(146, 91, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(147, 92, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(148, 93, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(150, 95, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(151, 96, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(152, 97, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(153, 98, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(154, 99, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(155, 100, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(156, 101, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(157, 102, 0, '0000-00-00 00:00:00', '', '', 0, 0, '0000-00-00 00:00:00', '', 0),
(158, 103, 2, '2018-04-03 12:12:53', '20', '-', 2, 1, '2018-04-03 12:29:23', '-', 0),
(159, 104, 2, '2018-04-16 11:11:54', '20', '-', 2, 1, '2018-04-16 11:13:35', '-', 0),
(160, 105, 2, '2018-04-16 16:41:36', '20', '-', 2, 1, '2018-04-19 10:17:12', '-', 0);

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
-- Table structure for table `irena_usulan_lokasi`
--

CREATE TABLE `irena_usulan_lokasi` (
  `id` int(11) NOT NULL,
  `id_usulan` int(11) NOT NULL,
  `id_lokasi` int(11) NOT NULL,
  `id_instansi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_usulan_lokasi`
--

INSERT INTO `irena_usulan_lokasi` (`id`, `id_usulan`, `id_lokasi`, `id_instansi`) VALUES
(15, 23, 333, NULL),
(58, 28, 347, 23),
(59, 28, 154, 23),
(60, 28, 359, 23),
(61, 28, 370, 23),
(62, 30, 344, 23),
(76, 27, 349, 57),
(77, 27, 350, 57),
(78, 27, 351, 57),
(79, 27, 352, 57),
(80, 27, 355, 57),
(81, 27, 5, 57),
(82, 27, 361, 57),
(83, 27, 362, 57),
(84, 27, 369, 57),
(102, 40, 340, NULL),
(103, 41, 340, NULL),
(108, 33, 146, 12),
(109, 33, 364, 12),
(110, 33, 365, 12),
(111, 33, 372, 12),
(112, 33, 367, 12),
(113, 36, 344, 15),
(114, 34, 344, 23),
(116, 38, 369, 23),
(117, 39, 340, 23),
(118, 35, 340, 90),
(119, 35, 346, 90),
(120, 29, 33, 18),
(121, 31, 344, 49),
(126, 48, 1, 18),
(128, 49, 344, 91),
(129, 50, 357, 19),
(130, 50, 359, 19),
(131, 50, 365, 19),
(132, 32, 322, 90),
(133, 51, 341, 54),
(134, 52, 13, 90),
(135, 53, 345, 90),
(136, 54, 331, 90),
(137, 55, 344, 37),
(138, 56, 342, 90),
(139, 57, 346, 40),
(140, 57, 352, 40),
(141, 58, 344, 12),
(142, 58, 349, 12),
(143, 58, 350, 12),
(144, 58, 351, 12),
(145, 58, 360, 12),
(146, 58, 369, 12),
(147, 58, 370, 12),
(148, 59, 344, 40),
(149, 60, 339, 23),
(150, 60, 371, 23),
(151, 60, 346, 23),
(152, 60, 347, 23),
(153, 60, 348, 23),
(154, 60, 352, 23),
(155, 60, 356, 23),
(156, 60, 359, 23),
(157, 60, 360, 23),
(158, 60, 365, 23),
(159, 61, 369, 90),
(160, 62, 344, 12),
(161, 63, 365, 23),
(162, 64, 347, 23),
(163, 64, 348, 23),
(164, 65, 344, 23),
(166, 67, 348, 23),
(167, 67, 358, 23),
(168, 67, 367, 23),
(169, 67, 370, 23),
(170, 68, 365, 23),
(171, 69, 372, 23),
(172, 70, 344, 23),
(173, 71, 367, 23),
(174, 72, 346, 23),
(175, 73, 341, 23),
(176, 73, 344, 23),
(177, 74, 344, 23),
(178, 75, 344, 23),
(179, 76, 343, 23),
(180, 77, 344, 23),
(181, 78, 341, 23),
(182, 78, 357, 23),
(183, 79, 76, 23),
(184, 79, 69, 23),
(185, 79, 70, 23),
(186, 79, 71, 23),
(187, 79, 166, 23),
(188, 80, 344, 23),
(189, 81, 344, 23),
(190, 82, 7, 23),
(191, 82, 14, 23),
(192, 83, 344, 23),
(193, 84, 182, 23),
(194, 84, 88, 23),
(195, 84, 11, 23),
(196, 84, 171, 23),
(198, 85, 344, 23),
(199, 86, 344, 23),
(201, 88, 344, 23),
(202, 89, 61, 23),
(203, 89, 68, 23),
(204, 90, 309, 23),
(205, 90, 321, 23),
(206, 90, 91, 23),
(207, 90, 88, 23),
(208, 91, 217, 23),
(209, 91, 11, 23),
(210, 92, 344, 23),
(211, 92, 61, 23),
(212, 92, 374, 23),
(213, 93, 346, 23),
(217, 95, 263, 23),
(218, 95, 270, 23),
(219, 95, 12, 23),
(220, 96, 223, 23),
(221, 96, 224, 23),
(222, 96, 228, 23),
(223, 97, 344, 23),
(224, 98, 271, 23),
(225, 98, 105, 23),
(226, 99, 342, 23),
(227, 100, 347, 23),
(228, 101, 367, 23),
(229, 102, 352, 23),
(230, 37, 344, 23),
(232, 103, 341, 23),
(233, 103, 356, 23),
(234, 26, 333, 15),
(235, 104, 344, 23),
(244, 105, 344, 23);

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
  `dana_usulan` bigint(20) NOT NULL,
  `dana_hibah` bigint(20) NOT NULL,
  `tahun_usulan` bigint(20) NOT NULL,
  `durasi` int(11) NOT NULL,
  `output` text NOT NULL,
  `outcome` text NOT NULL,
  `dana_pendamping` int(11) NOT NULL,
  `is_BB` int(11) NOT NULL DEFAULT '0',
  `is_GB` int(11) NOT NULL DEFAULT '0',
  `is_DK` int(11) NOT NULL DEFAULT '0',
  `is_LA` int(11) NOT NULL DEFAULT '0',
  `Files` varchar(500) NOT NULL,
  `lokasi` varchar(200) NOT NULL,
  `id_sektor` int(11) NOT NULL,
  `infra` int(11) NOT NULL,
  `id_status` int(11) NOT NULL DEFAULT '1',
  `status_usulan` int(11) NOT NULL DEFAULT '0',
  `id_usulan_hub` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_usulan_pln`
--

INSERT INTO `irena_usulan_pln` (`id`, `id_instansi`, `id_eselon_1`, `instansi_pelaksana`, `id_program`, `proyeksi_tahun_pertama_penarikan`, `judul_proyek_id`, `judul_proyek_eng`, `ruang_lingkup_id`, `ruang_lingkup_eng`, `dana_usulan`, `dana_hibah`, `tahun_usulan`, `durasi`, `output`, `outcome`, `dana_pendamping`, `is_BB`, `is_GB`, `is_DK`, `is_LA`, `Files`, `lokasi`, `id_sektor`, `infra`, `id_status`, `status_usulan`, `id_usulan_hub`) VALUES
(26, '15', '', 'Kementerian Perhubungan', '7', 2018, 'Pembangunan Pelabuhan Patimban Subang Jawa Barat', 'The Development of Patimban Port-Stage 1', 'a. Penyusunan desain serta spesifikasi teknis;\r\nb. Pelaksanaan pelelangan;\r\nc. Pelaksanaan kegiatan konstruksi;\r\nd. Pelaksanaan serah terima hasil pekerjaan;\r\ne. Konsesi dan kerjasama pengoperasian pelabuhan.', 'a. Penyusunan desain serta spesifikasi teknis;\r\nb. Pelaksanaan pelelangan;\r\nc. Pelaksanaan kegiatan konstruksi;\r\nd. Pelaksanaan serah terima hasil pekerjaan;\r\ne. Konsesi dan kerjasama pengoperasian pelabuhan.', 2208000000, 0, 2016, 60, '1. Ketersediaan fasilitas terminal kontainer untuk mendukung pertumbuhan dan kegiatan\r\nkawasan industri khususnya di wilayah Jawa Barat bagian Tengah dan Utara;\r\n2. Ketersediaan fasilitas terminal kendaraan bermotor dalam rangka menunjang\r\npertumbuhan industri otomotif nasional;\r\n3. Ketersediaan fasilitas kapal Roro untuk penyeberangan antar pulau.', 'a. Menekan biaya logistik dengan mendekatkan pusat produksi (industri manufaktur) dengan outlet pelabuhan;\r\nb. Memperkuat ketahanan perekonomian dengan menyediakan backup outlet pelabuhan yang melayani wilayah industri yang menghasilkan +- 70% kargo dalam negeri;\r\nc. Menurunkan tingkat kemacetan dan mengurangi kerugian akibat kemacetan di Ibukota Negara dengan memindahkan sebagian trafik angkutan berat ke luar wilayah Ibukota;\r\nd. Menekan penggunaan BBM(bersubsidi) dan meningkatkan utilisasi truk kontainer dengan memperpendek jarak tempuh dari industri manufaktur ke pelabuhan;\r\ne. Menjamin keselamatan pelayaran dan area eksplorasi migas di kawasan lepas pantai Utara Jawa Barat;\r\nf. Membantu pertumbuhan dan perkembangan wilayah Kabupaten Subang dan Provinsi Jawa Barat secara umum.', 595000000, 1, 1, 1, 1, '', '333', 6, 1, 1, 0, '0'),
(38, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. BBWS Sumatera VIII', '5', 2015, 'Pekerjaan Irigasi Komering Tahap III', 'Komering Irrigation Project Stage III', 'Proyek yang diusulkan meliputi :\r\ni) review desain jaringan irigasi utama dan tersier Lempuing\r\nseluas 8.500 ha,\r\n ii) pekerjaan sipil untuk jaringan irigasi utama dan tersier Lempuing seluas 8.500\r\nha,\r\niii) pekerjaan sipil untuk perbaikan fasilitas irigasi yang sudah ada, \r\niv) soft komponen untuk memperkuat pengelolaan air irigasi di Lempuing,\r\n v) review rencana pembangunan secara keseluruhan Proyek Irigasi Komering', 'The proposed project includes :\r\n i) review of design of main and tertian; irrigation system in Lempuing\r\nscheme for 8,500 ha, \r\nii) civil works for main and tertiary irrigation system in Lempuing scheme for 8,500\r\nha, \r\niii) civil works for improvement of existing irrigation facilities, \r\niv) soft component for strengthening of irrigation water management in Lempuing scheme, \r\nv) review of overall development plan of Komering Irrigation Project', 120000000, 0, 2015, 96, '1. Pembangunan saluran sekunder dan saluran sub-sekunder Lempuing: 85 km\r\n2. Peningkatan Jaringan Tersier: 8.500 ha\r\n3. Peningkatan fasilitas irigasi yang sudah ada di Bendung Perjaya, saluran utama, dan saluran\r\nsekunder Belitang.\r\n4. Soft Component: penguatan pengelolaan air irigasi\r\n5. Review Rencana Pembangunan Keseluruhan Proyek Irigasi', '1. Peningkatan daerah irigasi 8.500 ha\r\n2. Meningkatkan itensitas penanaman padi dari yang saat ini 100% menjadi 250%\r\n3. Meningkatkan produksi padi dari yang saat ini 3,0 ton/ha menjadi 5,0 ton/ha', 12000000, 1, 1, 0, 0, '', '369', 3, 1, 1, 0, '0'),
(65, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Besar / Balai WS', '6', 2015, 'Penyiapan teknis untuk pembangunan waduk serbaguna', 'Engineering Service for Dam Multipurpose Development Project', 'a. Analisis rencana teknis pembangunan bendungan beserta fasilitasnya, operasi,\r\npemeliharaan dan mekanisme pengadaan barang dan jasa\r\nb. Analisis penyiapan detail desain, pengadaan lahan dan rencana pemukiman kembali\r\nserta AMDAL\r\nc. Melaksanakan perencanaan program, analisis pembiayaan proyek dan persiapan\r\ndokumen lelang', 'a. Conducting analysis in term of operaion, maintenance, facilty construction and procurement plans\r\nb. Conducting analysis in term of detailed design, land acquistion, resstlement plan and environmental impact assessment\r\nc. Implementing the program planning, project funding analysis and tender document preparation', 100000000, 0, 2015, 60, 'a. Detail desain pembangunan bendungan dan kelengkapan dokumen AMDAL,LARAP\r\nb. Mekanisme pengadaaan, rencana pelaksanaan dan standar dokumen pengadaan\r\nc. Manajemen pengelolaan proyek dan analisis pembiayaannya', 'a. Meningkatkan perencanaan untuk persiapan pembangunan bendungan beserta fasilitas\r\npendukungnya dan mekanisme pengadaan barang!jasanya\r\nb. Analisa biaya dan manfaat (B/C ratio) dari sebelum dan sesudah ada proyek', 0, 1, 1, 0, 0, '', '344', 3, 1, 1, 0, '0'),
(103, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. BBWS Cidanau Ciujung Cidurian\r\nc. BBWS Mesuji Sekampung', '5', 2015, 'Rehabilitasi Mendesak untuk Irigasi yang Strategis di Indonesia Bagian Barat', 'The Urgent Rehabilitation of Strategic Irrigation for Western Region of Indonesia', 'a. Rehabilitasi dan modernisasi fasilitas irigasi\r\nb. Meningkatkan sistem irigasi dan drainase (baru)\r\nc. Peningkatan kapasitas O&P', 'a. Rehabilitation and modernization of irrigation facilities\r\nb. Improvement of irrgation and drainage systems (new)\r\nc. O&M capacity building', 195777777, 0, 2015, 48, 'a. Untuk menjamin semua kegiatan pertanian dengan merehabilitasi dan memodernisasi sistem irigasi dan drainase yang rusak dan memburuk;\r\nb. Untuk meningkatkan produksi pertanian dan berkontribusi terhadap swasembada pangan;\r\nc. Untuk meningkatkan pendapatan petani dengan penggunaan lahan instensif di daerah subur, dan mengembangkan praktek-praktek budidaya baru;\r\nd. Untuk meningkatkan kesempatan kerja, khususnya bagi penduduk pedesaan;\r\ne. Untuk meningkatkan kondisi kehidupan penduduk di wilayah Proyek dan menyediakan pasokan air desa yang tepat;\r\nf. Untuk meningkatkan penerapan O&P dan\r\ng. Untuk memperkuat WUA dan FWUA (Federasi APA) untuk mengadopsi PIM (Pengelolaan Irigasi Partisipatif)', 'a. Rehabilitasi Mendesak untuk Irigasi yang Strategis di Indonesia Bagian Barat seluas 38,523 Ha (Teluk Lada 19,618 ha, Rawa Sragi 1 dan Rawa Pisang 19,118 ha)', 27149523, 1, 0, 0, 0, '', '341,356', 3, 1, 1, 0, '0'),
(104, '23', '', 'a. Direktorat Jenderal Pembiayaan Perumahan;\r\nb. Kementerian Keuangan;\r\nc. Otoritas Jasa Keuangan (OJK);\r\nd. Lembaga Pembiayaan', '13', 2017, 'Program Dukungan Pembiayaan Perumahan Bagi Rumah Tangga Berpenghasilan Rendah', 'Financial Support for Low Income Households', 'a. Capacity Building of Financial Institutions\r\nb. Housing Micro Finance System', 'a. Capacity Building of Financial Institutions\r\nb. Housing Micro Finance System', 300000000, 7000000, 2016, 36, 'a. Capacity Building Report on Financing Institutions in selected cities;\r\nb. Operational standards implementation in Mortgage Financing Institutions (mortgage center);\r\nc. Documentation of Good Practices on Housing Micro Finance Initiatives;\r\nd. Market profile for Housing Finance in selected cities;\r\ne. Training Implementation Report for Financial Institutions and MFIs in selected cities;\r\nf. A Concept Note of Housing Micro Finance Product;\r\ng. Report study of the housing market in Indonesia.', 'a. Capacity Financial Institutions Assesment\r\nb. Market Demand Assesment\r\nc. Market Study Housing in Indonesia\r\nd. Pilotting', 30000000, 1, 0, 0, 0, '', '344', 10, 1, 1, 0, '0'),
(105, '23', '', 'a. Direktorat Jenderal Pembiayaan Perumahan;\r\nb. Direktorat Jenderal Penyediaan Perumahan.', '13', 2017, 'National Affordable Housing Program', 'National Affordable Housing Program', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', 450000000, 0, 2016, 36, '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', '1. Savings-Subsidy Housing Finance\r\n2. Perumahan Swadaya\r\n3. Technical Assistance for Strengthening Housing Sector Management', 0, 1, 1, 1, 1, '', '344', 10, 1, 1, 1, '104');

-- --------------------------------------------------------

--
-- Table structure for table `irena_usulan_pln_1`
--

CREATE TABLE `irena_usulan_pln_1` (
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
  `dana_usulan` bigint(20) NOT NULL,
  `dana_hibah` bigint(20) NOT NULL,
  `tahun_usulan` bigint(20) NOT NULL,
  `durasi` int(11) NOT NULL,
  `output` text NOT NULL,
  `outcome` text NOT NULL,
  `dana_pendamping` int(11) NOT NULL,
  `is_BB` int(11) NOT NULL DEFAULT '0',
  `is_GB` int(11) NOT NULL DEFAULT '0',
  `is_DK` int(11) NOT NULL DEFAULT '0',
  `is_LA` int(11) NOT NULL DEFAULT '0',
  `Files` varchar(500) NOT NULL,
  `lokasi` varchar(200) NOT NULL,
  `id_sektor` int(11) NOT NULL,
  `infra` int(11) NOT NULL,
  `id_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_usulan_pln_1`
--

INSERT INTO `irena_usulan_pln_1` (`id`, `id_instansi`, `id_eselon_1`, `instansi_pelaksana`, `id_program`, `proyeksi_tahun_pertama_penarikan`, `judul_proyek_id`, `judul_proyek_eng`, `ruang_lingkup_id`, `ruang_lingkup_eng`, `dana_usulan`, `dana_hibah`, `tahun_usulan`, `durasi`, `output`, `outcome`, `dana_pendamping`, `is_BB`, `is_GB`, `is_DK`, `is_LA`, `Files`, `lokasi`, `id_sektor`, `infra`, `id_status`) VALUES
(26, '15', '', 'Kementerian Perhubungan', '7', 2018, 'Pembangunan Pelabuhan Patimban Subang Jawa Barat', 'Pembangunan Pelabuhan Patimban Subang Jawa Barat', 'a. Penyusunan desain serta spesifikasi teknis;\r\nb. Pelaksanaan pelelangan;\r\nc. Pelaksanaan kegiatan konstruksi;\r\nd. Pelaksanaan serah terima hasil pekerjaan;\r\ne. Konsesi dan kerjasama pengoperasian pelabuhan.', 'a. Penyusunan desain serta spesifikasi teknis;\r\nb. Pelaksanaan pelelangan;\r\nc. Pelaksanaan kegiatan konstruksi;\r\nd. Pelaksanaan serah terima hasil pekerjaan;\r\ne. Konsesi dan kerjasama pengoperasian pelabuhan.', 2208000000, 0, 2016, 60, '1. Ketersediaan fasilitas terminal kontainer untuk mendukung pertumbuhan dan kegiatan\r\nkawasan industri khususnya di wilayah Jawa Barat bagian Tengah dan Utara;\r\n2. Ketersediaan fasilitas terminal kendaraan bermotor dalam rangka menunjang\r\npertumbuhan industri otomotif nasional;\r\n3. Ketersediaan fasilitas kapal Roro untuk penyeberangan antar pulau.', 'soon', 595000000, 1, 1, 1, 1, '', '333', 6, 1, 1),
(27, '57', '', 'a. Badan Informasi Geospasial (BIG) sebagai Executing Agency;\r\nb. Kementerian Agraria dan Tata Ruang (ATR) / Badan Pertahanan Nasional (BPN) sebagai implementing Agency', '16', 2019, 'Program Percepatan Implementasi Kebijakan Satu Peta (One Map Policy)', 'Program Percepatan Implementasi Kebijakan Satu Peta (One Map Policy)', 'i. Peningkatan kualitas dan perapatan Jaringan Kontrol Geodesi (Vertikal dan Horisontal)', 'undefined', 200000000, 0, 2016, 48, 'i. Perapatan jaringan kontrol vertikal sebanyak 200 titik, dan jaringan kontrol\r\n horizontal sebanyak 150 titik', 'i. Perapatan jaringan kontrol vertikal sebanyak 200 titik, dan jaringan kontrol \r\nhorizontal sebanyak 150 titik', 200000000, 1, 0, 0, 0, '', '349,350,351,352,355,5,361,362,369', 14, 2, 1),
(28, '23', '', 'Kementerian Pekerjaan Umum dan Perumahan Rakyat', '18', 2017, 'Penyusunan Rencana Induk Terpadu Pembangunan Destinasi Pariwisata Prioritas', 'Penyusunan Rencana Induk Terpadu Pembangunan Destinasi Pariwisata Prioritas', 'a. Konsultasi dengan instansi-instansi terkait yang memiliki kewenangan dalam perencanaan pengembangan destinasi dalam aspek penggunaan lahan, transportasi, dan lain-lain.', 'a. Konsultasi dengan instansi-instansi terkait yang memiliki kewenangan dalam perencanaan pengembangan destinasi dalam aspek penggunaan lahan, transportasi, dan lain-lain.', 4000000, 2000000, 2017, 12, 'a. Penyusunan Rencana Induk Terpadu Pembangunan Destinasi Pariwisata Prioritas Danau Toba\r\nb. Penyusunan Rencana Induk Terpadu Pembangunan Destinasi Pariwisata Prioritas Borobudur\r\nc. Penyusunan Rencana Induk Terpadu Pembangunan Destinasi Pariwisata Prioritas Pulau Lombok dan Mandalika', 'a. Tersusunnya rencana pengembangan terpadu untuk 3 (tiga) kawasan strategis pariwisata nasional yang didukung oleh berbagai pemangku kepentingan;\r\nb.\r\nc.', 0, 1, 0, 0, 0, '', '347,154,359,370', 12, 2, 1),
(29, '18', '', 'UIN Maulana Malik Ibrahim Malang', '24', 2017, 'Proyek Pengembangan UIN Maulana Malik Ibrahim Malang Tahap II, Jawa Timur', 'Proyek Pengembangan UIN Maulana Malik Ibrahim Malang Tahap II, Jawa Timur', '1. Pekerjaan Konstruksi dan Infrastruktur\r\n2. Peralatan dan furniture\r\n3. Jasa Konsultan (PSMC, DEDC dan EQC)\r\n4. Training Development\r\n5. Pengembangan Program Kurikulum\r\n6. Unit Manajement Proyek (PMU)\r\n7. Pekerjaan Auditing\r\n8. Start-Up Workshop', '1. Pekerjaan Konstruksi dan Infrastruktur\r\n2. Peralatan dan furniture\r\n3. Jasa Konsultan (PSMC, DEDC dan EQC)\r\n4. Training Development\r\n5. Pengembangan Program Kurikulum\r\n6. Unit Manajement Proyek (PMU)\r\n7. Pekerjaan Auditing\r\n8. Start-Up Workshop', 62675178, 0, 2016, 36, '1. UIN Maulana Malik Ibrahim Malang masuk dalam jajaran world class university;\r\n2. Kurikulum yang diterapkan di UIN Maulana Malik Ibrahim telah mengacu pada standar internasional;\r\n3. Lulusan yang dihasilkan UIN Maulana Malik Ibrahim mampu bersaing di tingkat nasional dan internasional;\r\n4. Pembelajaran yang berbasis pada hasil-hasil riset;\r\n5.\r\n6.\r\n7\r\n8.', '1. Mempersiapkan siswa yang memiliki akademik dan/atau profesional yang dapat menerapkan,, mengembangkan, dan /atau menciptakan ilmu pengetahuan dan teknologi, seni dan budaya yang bernuansa islami dan juga menyebarkannya untuk meningkatkan kehidupan masyarakat dan memperkaya kebudayaan nasional;\r\n2.\r\n3.', 10596961, 0, 0, 0, 0, '', '33', 1, 1, 1),
(30, '23', '', 'Dirjen Cipta Karya Kementerian PUPR', '4', 2017, 'Peningkatan Kualitas Permukiman Kumuh', 'National Slum Upgrading', '1. Terwujudnya perubahan sikap Masyarakat\r\n2. Meningatnya partisipasi masyarakat', '1. The changing of public behaviour\r\n2. improvement community participation', 722880, 0, 2015, 60, 'implementasi 21 provinsi', 'tercapainya masyarakat yang mandiri lingkungan', 0, 1, 1, 0, 0, '', '344', 1, 1, 1),
(31, '49', '', 'Badan Meteorologi, Klimatologi dan Geofisika', '30', 2016, 'Scalling Up Strengthening BMKG Weather and Climate Services Capacity', 'Scalling Up Strengthening BMKG Weather and Climate Services Capacity', 'a. Peningkatan Kapasitas Layanan Cuaca dan Iklim Maritim;\r\nb. Penngkatan Kapasitas Layanan Iklim dan Cuaca Publik;\r\nc. Pengembangan Sistem IT dan Komunikasi;\r\nd. Peningkatan Kapasitas Sumber Daya Manusia.', 'a. Scalling up the capacity of marine weather and marine climate services;\r\nb. Scalling up the capacity of public weather and climates services;\r\nc. Reinforcement Information and Communication Systems;\r\nd. Human Resource Capacity Development.', 150000000, 0, 2015, 48, 'a. Terbangunnya jejaring pengamatan Meteorologi dan Klimatologi (MK) yang semakin rapat, khususnya untuk penguatan pengamatan kemaritiman;\r\nb. Terbangunnya workshop kalibrasi peralatan pengamatan;\r\nc. Terealisasikannya basis infrastruktur pengamatan otomatis;\r\nd. Tersedianya sistem komputasi cuaca/iklim;\r\ne. Terintegrasikannya sistem pengamatan udara atas, penginderaan jauh dan permukaan;\r\nf. Dihasilkannya SDM berlatar belakang pendidikan lanjut dalam bidang MK pada jenjang S2 dan S3.', 'a.	Dihasilkannya data secara otomatis, periodis, tidak tergantung pada manusia dan peralatan yang laik;\r\nb. 	Semakin tingginya tingkat ketelitian/akurasi hasil prediksi cuaca/iklim;\r\nc.	Semakin cepatnya proses produksi prediksi cuaca dan iklim yang menguntungkan dalam \r\n         mendukung\r\n	1. Pembuatan keputusan bagi sektor-sektor pembangunan peka terhadap iklim;\r\n	2. berkurangnya ketidak-pastian masyarakat dalam prediksi cuaca dan iklim dan antisipasi \r\n             bencana hidrometeorologis;\r\n	3. upaya peningkatan kesadaran mitigasi dan adaptasi dalam memahami dampak \r\n            cuaca/iklim ekstrem;\r\n	4. upaya mereduksi resiko bencana hidro-meteorologis pada berbagai sektor pembangunan \r\n            dan keselamatan transportasi laut/maritim dan penerbangan;\r\n	5. 	aktivitas perikanan dan wisata bahari.', 0, 0, 0, 0, 0, '', '344', 14, 1, 1),
(32, '90', '', 'PT. PLN (Persero)', '2', 2018, 'PLTP Tulehu unit 1 dan 2 (2 x 10 MW)', 'Tulehu Geothermal Power Plant Project Unit 1 & 2 (2 x 10 MW)', 'a. Tambahan pengeboran untuk 3 sumur produksi/injeksi;\r\nb. Konstruksi pembangkit', 'a. Additional boring for 3 production / interjection well;\r\nb. Construction of Power Plant', 104000000, 0, 2015, 42, 'Untuk mengantisipasi pertumbuhan beban dan meningkatkan keandalan sistem Ambon, PLN berencana mengembangkan pembangkit listrik tenaga Panas Bumi dengan kapasitas 2 x 10 MW', 'a. Dapat memenuhi kebutuhan tenaga listrik di Ambon;\r\nb. Untuk memanfaatkan sumber energi terbarukan yang tersedia;\r\nc. Untuk meningkatkan kehandalan sistem Ambon', 18000000, 0, 0, 0, 0, '', '322', 5, 1, 1),
(33, '12', '', 'Badan Penyuluhan dan Pengembangan SDMP Pertanian', '36', 2016, 'Perluasan Program READ (Pemberdayaan Perdesaan dan Pembangunan Pertanian) di Sulawesi', 'Perluasan Program READ (Pemberdayaan Perdesaan dan Pembangunan Pertanian) di Sulawesi', 'Komponen A - Pemberdayaan Masyarakat\r\nKomponen B - Peningkatan Mata Pencaharian\r\nKomponen C - Infrastruktur Pertanian\r\nKomponen D - Manajemen Proyek', 'Komponen A - Pemberdayaan Masyarakat\r\nKomponen B - Peningkatan Mata Pencaharian\r\nKomponen C - Infrastruktur Pertanian\r\nKomponen D - Manajemen Proyek', 30000000, 500000, 2014, 60, 'a. Kelembagaan desa dan kegiatan kelompok berfungsi secara efektif,', 'a. Masyarakat pedesaan yang miskin mampu menilai, merencanakan, melaksanakan, dan mengelola prioritas pembangunan mereka sendiri;', 6000000, 0, 0, 0, 0, '', '146,364,365,372,367', 8, 2, 1),
(34, '23', '', 'Direktorat Jenderal Cipta Karya, Kementerian Pekerjaan Umum dan Perumahan Rakyat', '12', 2015, 'Program Pengembangan SPAM Perkotaan Nasional', 'National Urban Water Supply Program', 'a. Kegiatan Fisik :\r\n- Pembangunan SPAM perkotaan terpadu dengan pembangunan infrastruktur kota lainnya\r\n- Perluasan akses pelayanan air minum, misalnya melalui kegiatan seperti peningkatan kapasitas SPAM perkotaan existing dan perluasan jaringan distribusi SR aau yang lebih dikenal dengan Grant for the Development of Water Supply System Phase III\r\n\r\nb. Kegiatan Non Fisik: \r\n- Peningkatan kapasitas pendanaan SPAM melalui FIAMSI,', 'a. Construction activities : \r\n- Construction of integrated urban water supply;\r\n- Expansion of water supply service through increasing the capacity of existing waters upply systems and expansion of distribution, also known as Grant for the Development of Water Supply System Phase III (the Improvement of Water Supply System Project/Water Grant)\r\n\r\nb. Non Infrastructure activities : \r\n- Improvement of water supply financial capacity through FIAMSI', 100000000, 0, 2015, 60, 'Meningkatnya cakupan pelayanan SPAM di perkotaan sebesar 239,808 SR dan kapasitas penyelenggara SPAM perkotaan', 'Meningkatnya keualitas pelayanan air minum di perkotaan oleh penyelenggara SPAM', 0, 0, 0, 0, 0, '', '344', 1, 1, 1),
(35, '90', '', 'PT. PLN (Persero)', '2', 2014, 'PLTU Indramayu (1 x 1000 MW)', 'Indramayu Coal Fired PP Project (1x1000 MW)', 'Pembangunan PLTU Indramayu dengan menggunakan teknologi ultra super critical / super critical memilki ruang lingkup sbb:\r\n• Boiler\r\n• Steam Turbine and Generator\r\n• Coal and Ash Handling Equipment\r\n• Marine Works\r\n• Transmission Line and Substation\r\n• Site Preparation Works\r\n• Site Finishing Works\r\n• Civil Works', 'Construction works for 1,000 MW×1 ultra super critical / super critical coal-fired power plant in Indramayu.\r\n• Boiler\r\n• Steam Turbine and Generator\r\n• Coal and Ash Handling Equipment\r\n• Marine Works\r\n• Transmission Line and Substation\r\n• Site Preparation Works\r\n• Site Finishing Works\r\n• Civil Works', 2010000, 0, 2012, 52, '• Meningkatkan pasokan tenaga listrik di system Jawa-Bali.\r\n• Memperbaiki biaya produksi tenaga listrik.\r\nDalam Bahasa Inggris :\r\n• Increase supply of electricity in Java – Bali system\r\n• Reduced cost of production', 'Dalam Bahasa Indonesia :\r\n• Meningkatkan pasokan listrik di system Jawa-Bali.\r\n• Memperbaiki biaya produksi tenaga listrik.\r\n• Untuk memenuhi pertumbuhan kebutuhan listrik sebesar 7.8% per tahun di system Jawa-Bali.\r\n• Untuk mengurangi pembebanan berlebih di system Jawa-Bali.\r\n• Ikut berpartisipasi dalam pengembangan ekonomi di wilayah sekitar.', 355000, 0, 0, 0, 0, '', '340,346', 5, 1, 1),
(36, '15', '', 'a. Pemprov DKI Jakarta\r\nb. PT MRT Jakarta', '1', 2018, 'Pembangunan Proyek MRT Jakarta Jalur Selatan-Utara  (Koridor Lebak Bulus - Kampung Bandan)', 'Construction of Jakarta MRT North-South Line Project (Lebak Bulus - Kampung Bandan)', 'a. Pembayaran pekerjaan variasi MRT Jakarta Fase 1 (Lebak Bulus - Bundaran HI);\r\nb. Konstruksi Sipil, instalasi sistem Perkeretaapian dan Pengadaan ereta untuk Sistem MRT Jakarta Fase 2 (Bundaran HI-Kampung Bandan);\r\nc. Jasa Konsultan Manajemen Konstruksi untuk Sistem MRT Jakarta Fase 2 (Bundaran HI - Kampung Bandan)', 'a. Payment of Variations Order on Jakarta MRT Phase 1;\r\nb. Construction of Civil Works, Railway Systems Installation and Procurement of Rolling Stock of Jakarta MRT Phase 2 (Bundaran HI - Kampung Bandan);\r\nc. Construction Management Consultancy Services for MRT Jakarta Phase 2 (Bundaran HI - Kampung Bandan).', 953000000, 916000000, 2017, 72, 'a. Tersedianya jalur sistem MRT dari Lebak Bulus - Bundaran HI (+- 15,7 KM), Bundaran HI - Kampung Bandan (+- 8,3 KM) secara berkesinambungan, dengan Depo di Kampung Bandan;\r\nb. Tersedianya kereta untuk sistem MRT.', 'Tersedianya transportasi massal yang memadai pada jalur Utara - Selatan, khususnya Lebak Bulus-Kampung Bandan', 186900000, 0, 0, 0, 0, '', '344', 2, 1, 1),
(37, '23', '', 'Direktorat Jenderal Cipta Karya, Kementerian Pekerjaan Umum dan Perumahan Rakyat', '1', 2016, 'Pembangunan Sistem Penyediaan Air Minum dan Pengolahan Air Minum pada Daerah kekurangan air di Ibu Kota Kecamatan', 'IKK Water SUpply System and Water Treatment Plant in Water Scarcity Area', 'a. Pembangunan intake dan jaringan transmisi air baku I\r\nb. Konstruksi IP A lengkap dengan bangunan pendukung dan aksesoris sesuai dengan I\r\nkapasitas yang dibutuhkan\r\nc. Pembangunan IP A jaringan distribusi utama', 'a. The development of raw water intake and tra7Jsmission network,\r\nb. The development of Water Treatment Plant along with supporting buildings and accessories in\r\naccordance with required capacity,\r\nc. The development of main distribution network of Water Treatment Plant', 100000000, 0, 2015, 60, 'Terbangunnya SPAM di 85 lokasi IKK terpilih yang tersebar di wilayah Jawa, Sumatera, Kalimantan, Sulawesi, Banusra, Papua, Papua Barat, Maluku, dan Maluku Utara.), dan dapat melayani 191.847 SR', 'Tersedianya akses air minum yang aman untuk masyara~at di 85 lokasi terpilih', 0, 0, 0, 0, 0, '', '344', 1, 1, 1),
(38, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. BBWS Sumatera VIII', '5', 2015, 'Pekerjaan Irigasi Komering Tahap III', 'Komering Irrigation Project Stage III', 'Proyek yang diusulkan meliputi :\r\ni) review desain jaringan irigasi utama dan tersier Lempuing\r\nseluas 8.500 ha,\r\n ii) pekerjaan sipil untuk jaringan irigasi utama dan tersier Lempuing seluas 8.500\r\nha,\r\niii) pekerjaan sipil untuk perbaikan fasilitas irigasi yang sudah ada, \r\niv) soft komponen untuk memperkuat pengelolaan air irigasi di Lempuing,\r\n v) review rencana pembangunan secara keseluruhan Proyek Irigasi Komering', 'The proposed project includes :\r\n i) review of design of main and tertian; irrigation system in Lempuing\r\nscheme for 8,500 ha, \r\nii) civil works for main and tertiary irrigation system in Lempuing scheme for 8,500\r\nha, \r\niii) civil works for improvement of existing irrigation facilities, \r\niv) soft component for strengthening of irrigation water management in Lempuing scheme, \r\nv) review of overall development plan of Komering Irrigation Project', 120000000, 0, 2015, 96, '1. Pembangunan saluran sekunder dan saluran sub-sekunder Lempuing: 85 km\r\n2. Peningkatan Jaringan Tersier: 8.500 ha\r\n3. Peningkatan fasilitas irigasi yang sudah ada di Bendung Perjaya, saluran utama, dan saluran\r\nsekunder Belitang.\r\n4. Soft Component: penguatan pengelolaan air irigasi\r\n5. Review Rencana Pembangunan Keseluruhan Proyek Irigasi', '1. Peningkatan daerah irigasi 8.500 ha\r\n2. Meningkatkan itensitas penanaman padi dari yang saat ini 100% menjadi 250%\r\n3. Meningkatkan produksi padi dari yang saat ini 3,0 ton/ha menjadi 5,0 ton/ha', 12000000, 1, 0, 0, 0, '', '369', 3, 1, 1),
(39, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. BWS Bali Penida', '18', 2015, 'Proyek Pengamanan Pantai Bali Tahap - 2', 'Bali Beach Conservation Project Phase - II', '1. Pengamanan dan Konservasi Pantai Timur Bali (Sanur Utara ~ Candadisa)\r\n2. Pengamanan dan Konservasi Pantai Kuta Utara - Legian - Seminyak - dan Canggu', '1. Beach Conservation at East Coast Area\r\n2. Beach Conservation at North Kuta ~ Legian ~ Seminyak ~ Canggu', 150000000, 0, 2015, 65, '1. Melakukan konserbasi area pantai dan perlindungan garis pantai\r\n2. Membangun bangunan pengaman pantai (krib, tanjung buatan, revetment, breakwater)\r\n3. Membangun jalan setapak untuk mempermudah dan menciptakan akses sepanjang pantai \r\n4. Restorasi terumbu karang', '1. Memelihara dan meningkatkan potensi wisata dalam rangka pertumbuhan kontribusi sektor pariwisata\r\n2. Melindungi infrastruktur dan area pemukiman di sisi darat\r\n3. Meningkatkan kondisi lingkungan pantai (keaalamian, leansekap) dan faisilitas publik area tujuan wisata internasional\r\n4. Menciptakan Manajemen Pantai Terintegrasi dengan melibatkan semua pihak', 15000000, 0, 0, 0, 0, '', '340', 12, 1, 1),
(48, '18', '', 'Kementerian Agama', '24', 0, 'The Development of Ar-Raniry State Islamic University (UIN Ar-Raniry) Phase II Project In Aceh', 'The Development of Ar-Raniry State Islamic University (UIN Ar-Raniry) Phase II Project In Aceh', 'The Development of Ar-Raniry State Islamic University (UIN Ar-Raniry) Phase II Project In Aceh', 'The Development of Ar-Raniry State Islamic University (UIN Ar-Raniry) Phase II Project In Aceh', 41328203, 0, 2017, 48, 'The Development of Ar-Raniry State Islamic University (UIN Ar-Raniry) Phase II Project In Aceh', 'The Development of Ar-Raniry State Islamic University (UIN Ar-Raniry) Phase II Project In Aceh', 8636323, 0, 0, 0, 0, '', '1', 9, 1, 1),
(49, '91', '', 'PT. Indonesia Infrasturcture FInance', '38', 2016, 'Peningkatan Kapasitas Pembiayaan PT. Indonesia Infrastructure Finance dalam Rangka Percepatan Pembangunan Infrastruktur di Indonesia', 'Increasing PT. Indonesia Infrastructure Finance Financing Capacity in Accelerating Infrastructure Development in Indonesia', 'menyusul', 'menyusul', 300000000, 0, 2015, 36, 'menyusul', 'menyusul', 0, 0, 0, 0, 0, '', '344', 14, 1, 1),
(50, '19', '', 'Direktorat Jenderal Pembinaan Pelatihan dan Produktivitas', '37', 2016, 'Pengembangan Balai Latihan Kerja Maritim', 'Development of Maritime Vocational Training Centers', 'di telegram', 'di telegram', 92308000, 0, 2015, 60, 'di tele', 'di tele', 2500000, 0, 0, 0, 0, '', '357,359,365', 14, 1, 1),
(51, '54', '', 'BATAN', '39', 0, 'Pembangunan Reaktor Daya Eksperimental', 'Development of Indonesia Experimental Power Reactor', 'soon tele', 'soon tele', 205530000, 0, 2015, 72, 'soon tele', 'soon tele', 93930000, 0, 0, 0, 0, '', '341', 14, 2, 1),
(52, '90', '', 'a. PT. PLN (Persero)', '2', 2017, 'PLTA Pumped Storage Matenggeng', 'PLTA Pumped Storage Matenggeng', 'soon tele', 'soon tele', 500000000, 0, 2015, 60, 'soon tele', 'soon tele', 220000000, 0, 0, 0, 0, '', '13', 5, 1, 1),
(53, '90', '', 'a. PT. PLN (Persero)', '2', 2020, 'PLTP Sungai Penuh 2x55 MW', 'Sungai Penuh Geothermal Power Plant Project', 'soon', 'soon', 205000000, 0, 2015, 42, 'soon', 'soon', 45000000, 0, 0, 0, 0, '', '345', 5, 1, 1),
(54, '90', '', 'a. PT. PLN (Persero)', '2', 2017, 'Tambahan Pinjaman PLTA Pumped Storage Upper Cisokan HEPP Loan No. 8057-ID', 'Additional Cost for Loan Upper Cisokan Pumped Storage HEPP Capacity 4x260 MW, Loan N. 8057-ID', 'soon', 'soon', 200000000, 0, 2015, 60, 'soon', 'soon', 0, 0, 0, 0, 0, '', '331', 5, 1, 1),
(55, '37', '', 'Kementerian PPN/Bappenas (Pusat Pembinaan, Pendidikan dan Pelatihan Perencana)', '26', 2018, 'Human Resources Development for Bureaucratic Reform (HRDBR)', 'Human Resources Development for Bureaucratic Reform (HRDBR)', 'soon tele', 'soon tele', 150000000, 0, 2015, 66, 'soon tele', 'soon tele', 0, 0, 0, 0, 0, '', '344', 9, 2, 1),
(56, '90', '', 'a. PT. PLN (Persero)', '2', 2015, 'PLTP Hululais Unit 1 dan 2 (2x5 MW)', 'Hululais Geothermal Power Plant Project 1&2 (2x55 MW)', 'a. Pembebasan lahan dan jalan', 'a. Acquisition of land and rights of way\r\netc', 204000000, 0, 2015, 62, 'soon', 'soon', 42000000, 0, 0, 0, 0, '', '342', 5, 1, 1),
(57, '40', '', 'a. Kementerian Komunikasi dan Informatika\r\nb. Badan Pengkajian dan Penerapan Teknologi (BPPT)\r\nc. Lembaga Sandi Negara (Lemsaneg)', '16', 2016, 'Penguatan Infrastruktur e-Government', 'Strengthening of e-Government Infrastucture', 'soon tele', 'soon tele', 145000000, 10000000, 2015, 60, 'soon', 'soon', 20000000, 0, 0, 0, 0, '', '346,352', 11, 1, 1),
(58, '12', '', 'a. Pusat Pendidikan, Standarisasi, dan Sertifikasi Profesi Pertanian - BPPSDMP Kementan\r\nb. Pusat Pelatihan Pertanian - BPPSDMP Kementan\r\nc. SMK-PP Sembawa, SMK-PP Banjarbaru, dan SMK-PP Kupang (3 proyek rintisan)', '36', 2017, 'Penumbuhan dan Pengembangan Wirausahawan Muda untuk Pembangunan Pertanian Berkelanjutan', 'Young Entrepreneur Growth and Development for Sustainably Agricultural Development', 'a. Transfer pengetahuan dan pengalaman (pelatihan, lokakarya, magang, pendampingan, pertemuan)\r\nb. Keuangan mikro (pembentukan dan pengoperasian pusat bisnis dan pemelian/pengadaan mesin pertanian, peralatan, pupuk, bahan kimia dan benih, dan lain-lain);\r\nc. Produksi pertanian (tanaman pangan, tanaman holtikultura, peternakan, perkebunan);\r\nd. Pengelolaan dana (kegiatan pelatihan dari petani ke petani, kegiatan sewa menyewa fasilitas/alat mesin pertanian);\r\ne. Pembentukan IT  dan pusat informasi agribisnis di SMK-PP (Pembangunan Pusat dan Peralatan Sistem IT dan Jaringan);\r\nf. Pembentukan P4S (Pembangunan dan Pengadaan Sarana Prasarana);\r\ng. Dukungan manajemen.', 'a. Transfer pengetahuan dan pengalaman (pelatihan, lokakarya, magang, pendampingan, pertemuan)\r\nb. Keuangan mikro (pembentukan dan pengoperasian pusat bisnis dan pemelian/pengadaan mesin pertanian, peralatan, pupuk, bahan kimia dan benih, dan lain-lain);\r\nc. Produksi pertanian (tanaman pangan, tanaman holtikultura, peternakan, perkebunan);\r\nd. Pengelolaan dana (kegiatan pelatihan dari petani ke petani, kegiatan sewa menyewa fasilitas/alat mesin pertanian);\r\ne. Pembentukan IT  dan pusat informasi agribisnis di SMK-PP (Pembangunan Pusat dan Peralatan Sistem IT dan Jaringan);\r\nf. Pembentukan P4S (Pembangunan dan Pengadaan Sarana Prasarana);\r\ng. Dukungan manajemen.', 68900000000, 0, 2015, 60, '1. Peningkatan pengetahuan, keterampilan dan kapasitas alumni SMK-PP/pemuda tani/wirausahawan (pertanian) muda/pengelola P4S;\r\n2. IT di bidang pertanian dan Pusat Informasi;\r\n3. Produksi dan pemasaran melalui pusat agribisnis;\r\n4. Penyewaan dan perbengkelan alat mesin pertanian;\r\n5. Terbentuknya P4S yang berkualitas;\r\n6. Kegiatan pelatihan dari petani ke petani', '1. Adanya kegiatan agribisnis wirausahawan muda;\r\n2. Berkembangnya teknologi agribisnis;\r\n3. Berkembangnya wirausahawan muda;\r\n4. Meningkatnya kualitas P4S;\r\n5. Terbentuknya jaringan dan informasi pertanian;\r\n6. Adanya keuntungan/laba dari kegiatan pusat agribisnis dan persewaan;\r\n7. Adanya cadangan dana untuk investasi kedepan;\r\n8. Persiapan dalam rangka pembentukan korporasi;\r\n9. KEmampuan melaksanakan replikasi ke daerah lain di Indonesia.', 2147483647, 0, 0, 0, 0, '', '344,349,350,351,360,369,370', 8, 2, 1),
(59, '40', '', 'a. Kementerian Komunikasi dan Informatika\r\nb. Televisi Republik Indonesia (TVRI)', '16', 2016, 'Improvement of TV Transmitting Stations (Digitalization of TVRI)', 'Improvement of TV Transmitting Stations (Digitalization of TVRI)', 'a. Pengadaan \r\nb. Instalasi\r\nc. Teseting dan Commisioning\r\nd. Training', 'a. Pengadaan \r\nb. Instalasi\r\nc. Teseting dan Commisioning\r\nd. Training', 411159134, 0, 2015, 36, 'a. Digitalisasi Peralatan Studio di 29 Stasiun Penyiaran Daerah\r\nb. Digitalisasi Peralatan Transmisi di 250 lokasi', 'a. Peningkatan kualitas gambar dengan standar HD dan 4K\r\nb. Peningkatan kualitas gambar dan suara menjadi digital di area layanan \r\nc. Peningkatan kualitas SDM dengan pla pikir dari analog ke digital', 41000000, 0, 0, 0, 0, '', '344', 11, 1, 1),
(60, '23', '', 'a. Kementerian Pekerjaan Umum dan Perumahan Rakyat', '17', 2018, 'Program Peningkatan Ketahanan Air', 'Enhanced Water Security Investment Program (EWSIP)', 'a. Komponen 1 - Peningkatan Kapasitas Tampungan Waduk\r\nb. Komponen 2 - Pemanfaatan Potensi Bendungan untuk Pembangkit Listrik\r\nc. Komponen 3 - Manajemen Proyek', 'a. Component 1 - Reservoir capacity improvement\r\nb. Component 2 - Dam utilization for hydropower generation\r\nc. Component 3 - Project Management', 350000000, 0, 2015, 60, 'a. Meningkatkan kapasitas tampungan waduk yang dimiliki oleh Kementerian PUPR\r\nb. Memanfaatkan potensi bendungan milik Kementerian PUPR untuk pembangkit listrik', 'a. Peningkatan penyediaan air untuk air baku air minum sebagai dukungan ketahanan air\r\nb. Peningkatan penyediaan air untuk irigasi sebagai dukungan ketahanan pangan\r\nc. Peningkatan pasokan energi listrik untuk mendukung ketahanan energi', 70000000, 0, 0, 0, 0, '', '339,371,346,347,348,352,356,359,360,365', 3, 1, 1),
(61, '90', '', 'a. PT. PLN (Persero)', '2', 2016, 'PLTA Bakaru II (2 x 63 MW)', 'PLTA Bakaru II (2 x 63 MW)', 'a. Review desain Rinci, dokumen pengadaan, dan konsultasi supervisi;\r\nb. Pembangunan fisik PLTA Bakaru II dengan kapasitas 126 MW dan Transmission Line terkait', 'a. Review desain Rinci, dokumen pengadaan, dan konsultasi supervisi;\r\nb. Pembangunan fisik PLTA Bakaru II dengan kapasitas 126 MW dan Transmission Line terkait', 280000, 0, 2015, 48, 'Untuk mengantisipasi pertumbuhan beban dan meningkatkan keandalan sistem kelistrikan di Sulbagsel, PLN berencana mengembangkan pembangkit listrik tenaga air PLTA Bakaru II dengan kapasitas 126 MW.', '1. Dapat meningkatkan produksi pembangkit PLTA Bakaru 1 (eksisting) dengan meberikan tambahan daya sebesar 126 MW, sehingga total kapasitas pembangkit PLTA Bakaru dapat menjadi 252 M (Bakaru 1:126 MW dan Bakaru 2:126 MW);\r\n2. Dapat menurunkan biaya produksi pembangkit dengan menggantikan pembangkit - pembangkit mahal yang berbahan bakar minyak pada saat beban puncak;\r\n3. Memprbaiki bauran energi dan menurunkan emisi CO2.', 20000, 0, 0, 0, 0, '', '369', 5, 1, 1),
(62, '12', '', 'a. Direktorat Jenderal Prasarana dan Sarana Pertanian', '23', 2017, 'Perluasan Areal Tanaman Pangan', 'Extensfication of New Paddy Field Area', 'a. Identifikasi calon petani dan calon lokasi (CPCL);\r\nb. Survei / investigasi;\r\nc. Penetapan lokasi;\r\nd. Desain;\r\ne. Konstruksi (pembersihan lahan dan pembuatan bedengan);\r\nf. Bantuan sarana produksi pertanian untuk budidaya padi.', 'a. Identifikasi calon petani dan calon lokasi (CPCL);\r\nb. Survei / investigasi;\r\nc. Penetapan lokasi;\r\nd. Desain;\r\ne. Konstruksi (pembersihan lahan dan pembuatan bedengan);\r\nf. Bantuan sarana produksi pertanian untuk budidaya padi.', 811166549, 0, 2015, 48, 'a. Ketersediaan lahan yang bisa dikembangkan untuk program perluasan areal padi;\r\nb. Membentuk petani padi baru', 'a. Meningkatnya luas areal penanaman;\r\nb. Meningkatnya produksi padi nasional untuk mencapai target swasembada padi nasional', 81116654, 0, 0, 0, 0, '', '344', 8, 1, 1),
(63, '23', '', 'a. Direktorat Jenderal Sumber\r\nb. Balai Besar Wilayah Sungai (BBWS) Pompengan - Jeneberang Daya Air', '6', 2016, 'Pengananan Terpadu untuk Masalah Sedimentasi dan Banjir di Provinsi Sulawesi Selatan', 'Comprehensive Counter measure for Sediment and Flood Problems in South Sulawesi Province', 'a. Rehabilitasi Intake Waduk Bili-Bili dengan implementasi Water Level Selectable intake (intake yang dioperasikan berdasarkan perubahan muka air waduk)\r\nb. Konstruksi bangunan Penangkap Pasirraksa (GiantSand Trap facility) di ujung Waduk Bili-Bili\r\nc. Konstruksi Bangunan Pengendali Sedimen di luar kaldera untuk antisipasi potensi runtuhan lanjutan Bawakaraeng', 'a. Rehabilitasi Intake Waduk Bili-Bili dengan implementasi Water Level Selectable intake (intake yang dioperasikan berdasarkan perubahan muka air waduk)\r\nb. Konstruksi bangunan Penangkap Pasirraksa (GiantSand Trap facility) di ujung Waduk Bili-Bili\r\nc. Konstruksi Bangunan Pengendali Sedimen di luar kaldera untuk antisipasi potensi runtuhan lanjutan Bawakaraeng', 108100000, 3900000, 2015, 60, 'a. Terbangunnya Water Selectable Intake di Waduk Bili-Bili (1 buah)\r\nb. Terbangunnya GIant Sand Trap (1 buah)\r\nc. Terbangunnya bangunan-bangunan pengendali sedimen\r\nd. Terlaksananya F/S, B/D, dan D/D untuk prioritas Proyek Rehabilitasi', 'a. Terjaminnya suplai air baku (PDAM) dengan kualitas baik\r\nb. Ter -reduksi laju sedimentasi (bed load) yang menuju Waduk Bili-Bili\r\nc. Terkendalinya laju sedimentasi daerah tengah maupun hulu S. Jeneberang dan Kaldera G. Bawakaraeng\r\nd. Kesiapan implementasi proyek pengedalian sedimen di wilayah sungai-sungai di Sulawesi Selatan', 112000000, 0, 0, 0, 0, '', '365', 3, 1, 1),
(64, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. BBWS Bengawan Solo', '6', 2016, 'Proyek Peningkatan Hilir Sungai Bengawan Solo (Fase II-2)', 'Lower Solo River Improvement Project Phase II-2', 'a. PekerjaanKonstruksi\r\n- Pelaksanaan tanggul\r\n- Konsh·uksi parapet wall\r\n- Konstruksi pelindung tebing\r\n- Konstruksi sluiceway\r\n- Konsh·uksi jembatan\r\n- Pembuatan alur sudetan\r\n- Bangunan-bangunan sungai lain yang terkait\r\nb. Jasa Konsultansi\r\nc. Supervisi konstruksi', 'a. Construction works\r\n- Leeve embankment\r\n- Parapet wall\r\n- Revetment\r\n- Sluiceway\r\n- Road bridge\r\n- Short-cut channels and\r\n- Other related structures\r\n\r\nb. Engineering Services\r\nc. Construction supervision', 155836000, 0, 2015, 72, 'a. PekerjaanKonstruksi\r\n1. Pelaksanaantanggul\r\n2. Konstruksi parapet wall\r\n3. Konstruksi pelindung tebing\r\n4. Konstruksi sluiceway\r\n5. Konstruksi jembatan\r\n6. Pembuatanalursudetan\r\n7. Bangunan-bangunan sungai lain yang terkait', 'a. Tercapainya rencana induk 2001, sehingga dapat mengendalikan banjir agar dapat mengurangi bahaya yang dapat merusak kehidupan, social dan ekonomi masyarakat di sepanjang aliran bengawan Solo hilir seperti halnya areal rawa Jero yang terletak disepanjang 200 km aliran Solo hilir.\r\nb. Tercapainya pengembangan sumber daya air disepanjang aliran bengawan Solo hilir sesuai dengan rencana Pemerintah untuk pengembangan regional. Penyediaan air bakuuntuk perkotaan, industridan area irigasi dikawasan pantai utara pulau Jawa khususnya penyediaan air untuk kota Gresik dan Surabaya metropolitan, setelah selesai proyek', 22500000, 0, 0, 0, 0, '', '347,348', 3, 1, 1),
(65, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Besar / Balai WS', '6', 2015, 'Penyiapan teknis untuk pembangunan waduk serbaguna', 'Engineering Service for Dam Multipurpose Development Project', 'a. Analisis rencana teknis pembangunan bendungan beserta fasilitasnya, operasi,\r\npemeliharaan dan mekanisme pengadaan barang dan jasa\r\nb. Analisis penyiapan detail desain, pengadaan lahan dan rencana pemukiman kembali\r\nserta AMDAL\r\nc. Melaksanakan perencanaan program, analisis pembiayaan proyek dan persiapan\r\ndokumen lelang', 'a. Conducting analysis in term of operaion, maintenance, facilty construction and procurement plans\r\nb. Conducting analysis in term of detailed design, land acquistion, resstlement plan and environmental impact assessment\r\nc. Implementing the program planning, project funding analysis and tender document preparation', 100000000, 0, 2015, 60, 'a. Detail desain pembangunan bendungan dan kelengkapan dokumen AMDAL,LARAP\r\nb. Mekanisme pengadaaan, rencana pelaksanaan dan standar dokumen pengadaan\r\nc. Manajemen pengelolaan proyek dan analisis pembiayaannya', 'a. Meningkatkan perencanaan untuk persiapan pembangunan bendungan beserta fasilitas\r\npendukungnya dan mekanisme pengadaan barang!jasanya\r\nb. Analisa biaya dan manfaat (B/C ratio) dari sebelum dan sesudah ada proyek', 0, 0, 0, 0, 0, '', '344', 3, 1, 1),
(66, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Wilayah Sungai Sumatera III', '6', 2017, 'Pembangunan Bendungan Lompatan Harimau', 'Lompatan Harimau Dam Construction Project', '1. Membangun bendungan serba guna berikut fasilitas pendukungnya\r\n2. Melakukan konservasi sumber daya air, pelestarian lingkungan, dan pengendalian banjir\r\n3. Membangun fasilitas PLTA pada bendungan untuk memenuhi kebutuhan energi listrik\r\nmasyarakat Kabupaten Rokan pada khususnya', '1. Construct multipurpose dam and appurtenant structures\r\n2. Hydropower plants with an installed capacihJ of74,40 MW ..\r\n3. Development of Tourism', 152100000, 0, 2015, 60, '1. Membangun bendungan serba guna berikut fasilitas pendukungnya\r\n2. Melakukan konservasi sumber daya air, pelestarian lingkungan, dan pengendalian banjir\r\n3. Membangun bendungan serba guna berikut fasilitas pendukungnya\r\n4. Membangun fasilitas PLTA pada bendungan untuk memenuhi kebutuhan energi listrik\r\nmasyarakat Kabupaten Rokan pada khususnya', '1. Terpenuhinya kebutuhan air irigasi seluas 4000 ha\r\n2. Memberikan tambahan pasokan energi listrik kepada masyarakat Kabupaten Rokan ±\r\n74,40MW\r\n3. Meningkatnya pendapatan masyarakat sekitar dengan terciptanya lapangan kerja baru', 26500000, 0, 0, 0, 0, '', '363', 3, 1, 1),
(67, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. BWS Sumaterall\r\nc. BBWS Brantas\r\nd. BWS Sulawesi I\r\ne. BWS Maluku Utara', '6', 2017, 'Proyek Mitigasi Bencana Gunung Sinabung (Sumatera Utara), Gunung Semeru, Gunung Kelud (Jawa Timur), Gunung Lokon (Sulawesi Utara), dan Gunung Gamalama (Maluku Utara)', 'Urgent Disaster Reduction of Mt. Sinabung (North Sumatera), Semeru, Kelud (East Java), Lokon (North Sulawesi) and Gamalama (North Maluku)', '1. Pekerjaan Konstruksi dan pengadaan alat berat\r\n2. Pemberdayaan Badan Layanan Umum (BLU) di Balai Wilayah Sungai di daerah;\r\n3. Jasa Konsultansi untuk supervise pekerjaan konstruksi', '1. Civil works and equipment including: implementation of construction and; procurement of heavy equipment.\r\n2. Empowerment of the institutional strengthening of Public Services Agency!Badan Layanan Umum (BLU).\r\n3. Consulting services', 260000000, 0, 2015, 60, '1. Ketersediaan fasilitas Sabo dan bangunan pengontrol sedimen lainnyadi lereng Gunung\r\nSinabung; Gunung Lokon, Gunung Gamalama, Gunung Kelud dan Gunung Semeru\r\n2. Penguatan kelembagaan Badan Layanan Umum (BLU) di Balai Wilayah Sungai di daerah;', 'Mengurangi kerusakan yang disebabkan oleh bencana letusan Gunung Sinabung; Gunung\r\nLokon, Gunung Gamalama, Gunung Kelud d an Gunung Semeru', 26000000, 0, 0, 0, 0, '', '348,358,367,370', 3, 1, 1),
(68, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Besar Wilayah Sungai (BBWS) Pompengen Jeneberang', '6', 2018, 'Pembangunan Bendungan Jenelata', 'Jenelata Dam Construction Project', '1. Membangun bendungan serba guna berikut fasilitas pendukungnya\r\n2. Melakukan rehabilitasi jalan akses yang sudah dibangun\r\n3. Membangun fasilitas PLTA pada bendungan untuk memenuhi kebutuhan energi listrik\r\nmasyarakat Kab. Gowa pada umumnya\r\n4. Perbaikan dan peningkatan jaringan irigasi\r\n5. Konsultan Supervisi', '1. Construct main dam and appurtenants structures\r\n2. Infrastructure relocationlacces road\r\n3. Construction of hydropower facilities to support electricitlj in Gowa district\r\n4. Rehabilitation and impmvement of irrigation systems\r\n5. Consulting Services', 200000000, 0, 2015, 60, '1. Membangun bendungan serba guna dengan luas total tampungan 223 juta m3 berikut\r\nfasilitas pendukungnya\r\n2. Melakukan rehabilitasi jalan akses yang sudah dibangun\r\n3. Membangun fasilitas PLTA pada bendungan untuk memenuhi kebutuhan energi listrik masyarakat Kab. Gowa pada umumnya\r\n4. Rehabilitasi jaringan irigasi', '1. Terpenuhinya kebutuhan air baku masyarakat di Kabupaten Gowa, Gowa dan Kota\r\nMakassar dengan debit sebesar 3,12 m3/det.\r\n2. Memberikan pasokan energi listrik kepada masyarakat Kab. Gowa dan Kota Makassar ±\r\n10,9MW\r\n3. Mendukung peningkatan produksi pertanian beriirigasi dengan irigasi baru seluas\r\n24.400 ha\r\n4. Berkurangnya intensitas banjir di Kabupaten Gowa dan sekitarnyasebesar 475 m3/det.', 20000000, 0, 0, 0, 0, '', '365', 3, 1, 1),
(69, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. BWS Sulawesi IV', '1', 2018, 'Proyek Pembangunan Bendungan Pelosika', 'Pelosika Multipurpose-Dam Construction Project', '1. Pekerjaan Persiapan\r\n2. Relokasi jalan dan pembuatan jalan masuk\r\n3. Pekerjaan bangunan pengelak\r\n4. Bendungan utama dan pelana\r\n5. Bangunan pelirnpah\r\n6. Bangunan pengambilan\r\n7. Instrument bendungan\r\n8. Hidrornekanikal\r\n9. Jalan layanan\r\n10. Bangunan pelengkap lainnya\r\n11. Pekerjaan listrik\r\n12. Pengadaan alat operasi & perneliharaan', '1. Work Preparation\r\n2. Relocation of roads and road construction entrance\r\n3. The building work dodger\r\n4. The main dam and saddle\r\n5. Construction of spillway\r\n6. Construction of retrieval\r\n7. Instrument dam\r\n8. Hidromekanikal\r\n9. Road services\r\n10. Construction of others supported facilities\r\n11. Electric Works\r\n12. Procurement of operation & maintenance tools', 200000000, 0, 2015, 72, '1. Ketersediaan air baku 0,75 m3 I dt\r\n2. Ketersediaan air irigasi untuk mengairi sawah intensifikasi D.l. Wawotobi 16.358 ha dan Extensifikasi Daerah -daerah irigasi di hilir bendungan pelosika\r\n3. Tersedia untuk pernbangkit listrik tenaga air 21M\r\n4. Pengendalian Banjir DAS Konaweha 10.359 Ha', '1. Pengendalian banjir pada DAS Konaweha\r\n2. Peningkatan produksi padi sawah\r\n3. Ketersediaan energy listrik yang terbarukan\r\n4. Ketersediaan air baku', 170000000, 0, 0, 0, 0, '', '372', 1, 1, 1),
(70, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Besar Wilayah Sungai (BBWS) Pompengen Jeneberang', '6', 2016, 'Penyiapan Teknis Sistem Penyediaan Air Baku', 'Engineering Service for Bulk Water and Water Supply Development Project (Nationwide)', '1. Analisis sistem penyediaan air baku,\r\n2. Pengembangan operasional dan pemeliharaan berikut fasiltasnya\r\n3. Rencana pelaksanakan perencanaan program dan konstruksi\r\n4. Analisis pembiayaan proyek\r\n5. Persiapan dokumen lelang\r\n6. Persiapan detail desain, LARAP dan AMDAL Qika diperlukan)', 'a. Conducting analysis of bulk water supply\r\nb. Conducting analysis of operational and maintenance including the supporting facilities\r\nc. Implementing the program planningand construction schedule\r\nd. Implementing the project funding analysis\r\ne. Implementing the preparation tender document\r\nf. Conducting analysis in term of detailed design, land acquisition, resstlement plan and environmental\r\nimpact assessment\r\ng. Implementing the program planning, project funding analysis and tender dokumen preparation (etc.)', 50000000, 0, 2015, 60, 'a. Survey dan investigasi untuk studi konsep dasar di atas dan untuk desain rinci untuk\r\nkarya prioritas;\r\nb. Kajian konsep teknis dan rencana Sistem Perencanaan Air Baku\r\nc. Detail desain, AMDAL,LARAP\r\nd. Mekanisme pengadaaan, rencana pelaksanaan dan standar dokumen pengadaan\r\ne. Manajemen pengelolaan proyek dan analysis pembiayaannya', 'a. Meningkatkan perencanaan untuk persiapan pembangunan system jaringan air baku\r\nbeserta fasilitas pendukungnya dan mekanisme pengadaan barang/jasanya\r\nb. Analisa biaya dan manfaat (B/C ratio) dari sebelum dan sesudah ada proyek', 0, 0, 0, 0, 0, '', '344', 3, 1, 1),
(71, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Besar Wilayah Sungai  Sulawesi I', '6', 2016, 'Pembangunan Waduk Kuwil Kawangkoan', 'Kuwil Kawangkoan Dam Construction Project', 'a. Penyediaan air baku untuk penduduk Kabupaten Minahasa Utara dan kebutuhan air\r\nbaku untuk kawasan Ekonomi Khusus Kota Bitung total debit sebesar 4,32 m3/detik,\r\nserta Daerah lndustri Bitung.\r\nb. PLTM dengan kapasitas terpasang sebesar 1,3 MW.\r\nc. Pengurangan ancaman banjir pada kota Manado dan sekitarnya untuk debit banjir\r\nperiode ulang Q25th dengan reduksi banjir sebesar 275 m3/detik.\r\nd. Pengembangan Pariwisata', '1. Provision of raw water for the residents of North Minahasa Regency and raw water requirement for the 1\r\nSpecial Economic region Bitung total discharge of 4.32 m3 I sec, and Bitung Industrial Region.\r\n2. Micro power plants with an installed capacity of 1.3 MW.\r\n3. Reducing the threat of flooding in the city of Manado and the surrounding areas to discharge flood\r\nreturn period flood Q25th with reduction of275 m3 I sec.\r\n4. Development of Tourism', 110000000, 0, 2015, 72, '1. Melakukan konservasi sumber daya air, pelestarian lingkungan, dan pengendalian banjir\r\n2. Membangun bendungan serba guna berikut fasilitas pendukungnya\r\n3. Melakukan rehabilitasi dan pengaspalan terhadap jalan akses yang sudah dibangun\r\n4. Membangun fasilitas PLTA pada bendungan untuk memenuhi kebutuhan energi listrik\r\nmasyarakat Provinsi Sulawesi Utara pada umumnya', '1. Terpenuhinya kebutuhan air baku masyarakat dan industri di Kabupaten Minahasa\r\nUtara dan Kawasan Ekonomi Khusus Kota Bitung\r\n2. Memberikan pasokan energi listrik kepada masyarakat Provinsi Sulawesi Utara ± 1.3 MW\r\n3. Meningkatnya pendapatan masyarakat sekitar dengan terciptanya lapangan kerja baru\r\n4. Berkurangnya intensitas banjir di Kabupaten Minahasa Utara dan sekitarnya', 11000000, 0, 0, 0, 0, '', '367', 3, 1, 1),
(72, '23', '', 'a. Ditjen Sumber Daya Air, cq. Balai Besar Wilayah Sungai Citarum\r\nb. Ditjen Pembangunan Daerah, Kementerian Dalam Negeri\r\nc. Ditjen Pasarana dan Sarana Pertanian, Kementerian Pertanian', '1', 2017, 'Program Pengelolaan Sumber Daya Air Terpadu di Wilayah Sungai Citarum II', 'Integrated Citarum Water Resources Management Investment Program II (PFR-2)', 'a) Pengembangan air baku permukaan untuk Kota Bandung dan sekitarnya dan\r\npengurangan ketergantungan pada air tanah;\r\nb) Konstruksi alternative air baku di daerah catchment hulu sekeliling Bandung untuk\r\nmemenuhi kebutuhan air baku di masa depan Kota Bandung dan sekitarnya;\r\nc) Konservasi tanah di daerah watershed hulu, dengan target daerah catchment penting yang\r\nakan menyediakan air baku;\r\nd) Mengenalkan kegiatan perhutanan dan holtikultur yang sesuai di lahan kritis dan rawan\r\nerosi sekeliling Bandung dengan tujuan untuk mengurangi erosi tanah, mengkonservasi\r\nsumber daya air\r\ne) Penyusunan rencana investasi PFR untuk fase selanjutnya', 'a) Develop bulk survace water sources for greater Bandung mtd reduce dependency on groundwater; ,\r\nb) Implement bulik water supply options in the upper catchments around Bandung to fulfil future bulk \'\r\nwater demands of greater Bandung;\r\nc) Soil conservation in upper watershed areas, targeting crucial catchments that will provile bulk water;\r\nd) Introduce suitable holticulture and forestry sctivities in critical, erosion prone lands around Bandung\r\nin order to reduce soil erosion, conserve water resources and improve bulk water supply; and\r\ne) Prepare following periodic financing reques', 200000000, 0, 2015, 60, 'a) Terbangunnya jaringan penyediaan air baku baru, menyediakan lebih kurang 1,5 m3/det tambahan air baku;\r\nb) Terlindunginya tanah dari erosi dan membaiknya pengelolaan watershed hulu di subcatchments Cikapundung dan Cisangkuy; dan\r\nc) Design PFRs untuk fase selanjutnya', '1. Meningkatnya pasokan air baku untuk Kota Bandung dan sekitarnya;\r\n2. Berkurangnya tekanan pada air tanah;\r\n3. Berkurangnya erosi tanah di watershed hulu;\r\n4. Berkurangnya laju sedimentasi di Sungai Citarum; dan\r\n5. Membaiknya imbuhan akuifer air tanah', 20000000, 0, 0, 0, 0, '', '346', 1, 1, 1),
(73, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Besar Wilayah Sungai (BBWS) Ciujung-Cidanau-Cidurian', '6', 2019, 'Pembangunan Sistem Saluran Air Baku dari Bendungan Karian-Serpong', 'Karian Dam-Serpong Water Conveyance and Supply System Project', '1. Membangun saluran air baku 1 sepanjang 20,6 km dan 15,4 km (diameter 2000 em- 2\r\njalur)\r\n2. Membangun saluran air baku 2 sepanjang 11,9 km ( diameter 2000 em - 2 jalurO\r\n3. Konsultan supervisi\r\n4. Pelaksanaan operasi dan pemeliharaan', 'i) Construct of KSCS , pipe line with length 20,6 km and 15,4 km (D2000-2lanes)\r\nii) Construct of KSCS 2, pipe line with length 11,9 km (D1650-2lanes)\r\niii) Consultant Supervision\r\niv) Conducting operation and maintenance', 373861700, 0, 2015, 60, 'Pengembangan saluran air baku dan sistem distribusi air di wilayah proyek akan\r\nmemberikan kontribusi untuk memasok 14,6 m3 Is ke daerah-daerah layanan, yaitu 10,6 m3 I\r\ns akan dialokasikan untuk DMI (Domestik, Kota dan lndustri) dan 4,0 m3 I s untuk keperluan\r\nirigasi. lni akan memasok sekitar 33% dari kebutuhan air di daerah layanan.', '1. Meningkatnya pasokan air baku di Banten dan Jakarta\r\n2. Berkurangnya tekanan pada air tanah;', 181074000, 0, 0, 0, 0, '', '341,344', 3, 1, 1),
(74, '23', '', 'a. Direktorat Jenderal Sumber Daya Air', '6', 2016, 'Proyek Modernisasi Irigasi Strategis Indonesia', 'Modernization Strategic Irrigation Project of Indonesia (MSIP)', 'Proyek yang diusulkan meliputi i) Ulasan sistem perencanaan untuk masing-masing skema, ii)\r\nDetail desain atau ulasan desain untuk sistem irigasi/ saluran drainase utama & sekunder, iii) SID\r\nsistem tersier, iv) Pekerjaan Modernisasi/ Peningkatan/ Rehabilitasi bangunan barrage yang ada,\r\nsistem irigasi utama & sekunder, sistem drainase, dll, dan v) Komponen Lunak.', 'The proposed project includes i) Review of system planning of each scheme, ii) Detailed design or review design of the main & secondary irrigation/ drainage systems, iii) SID of tertian; systems, iv)\r\nModernization/ Upgrdingl Rehabilitation works of the existing barrage, main & secondary irrigation\r\nsystems, drainage systems, etc., and v) Soft Component.', 278355000, 0, 2015, 72, 'a. Modernisasi/ Peningkatan/ Rehabilitasi Skema Irigasi yang ada\r\nb. Perbaikan Sistem Irigasi: 198.459 ha termasuk beberapa daerah perluasannya seluas 32.586 ha\r\nc. Modernisasi/ Peningkatan/ Rehabilitasi Headworks yang ada\r\nd. Perbaikan Sistem Drainase\r\ne. Pembangunan Tersier\r\nf. Komponen Lunak: i) Penguatan Kelembagaan Organisasi Operasi & Pemeliharaan (O&P)\r\nPemerintah, ii) Aktivasi Perkumpulan Petani Pengguna Air (P3A), iii) Peningkatan\r\nDistribusi/ Pengelolaan Air, dan iv) Manajemen Aset', 'a. Pendistribusian air yang cukup untuk ke 198.459 ha bahkan pada musim kemarau termasuk\r\ndaerah perluasannya seluas 32.586 ha.\r\nb. Penurunan tingkat kehilangan air yang tinggi pada saat ini dengan cara meningkatkan\r\nefisiensi irigasi sekitar 45% menjadi lebih dari 65% sesuai dengan desain aslinya.\r\nc. Peningkatan intensitas hasil produksi padi\r\nd. Peningkatan produksi beras\r\ne. Peningkatan Sistem Operasi d an Pemeliharaan oleh Komponen Lunak.', 28000000, 0, 0, 0, 0, '', '344', 3, 1, 1),
(75, '23', '', 'a. Direktorat Jenderal Sumber Daya Air', '6', 2016, 'Penyiapan Teknis Untuk Proyek Pembangunan Jaringan Irigasi dan Rawa', 'Engineering Service for Irrigation and Lowland Development Project', 'a. Analisis rencana teknis pembangunan dan rehabilitasi jaringan irigasi dan rawa\r\n(masterplan dan kelayakan DI) dan mekanisme pengadaan barang dan jasa yang akan\r\ndilakukan\r\nb. Analisis penyiapan detail desain, pengadaan lahan dan rencana pemukiman kembali\r\nserta AMDAL\r\nc. Melaksanakan perencanaan program, analisis pembiayaan proyek dan persiapan\r\ndokumen lelang', 'a. Conducting analysis in term of irrigation and lowland (masterplan and feasibilihj for each irrigation\r\nscheme) and procurement plans\r\nb. Conducting analysis in term of detailed design, land acquisition, resstlement plan and environmental\r\nimpact assessment\r\nc. Implementing the program planning, project funding analysis and tender dokumen preparation (etc.)', 100000000, 0, 2015, 60, 'a. Detail design pembangunan dan rehabilitasi jaringan irigasi dan rawa dan kelengkapan\r\ndokumen AMDAL,LARAP\r\nb. Mekanisme pengadaaan, rencana pelaksanaan dan standar dokumen pengadaan\r\nc. Manajemen pengelolaan proyek dan analisis pembiayaannya', 'a. Meningkatkan perencanaan untuk persiapan pembangunan dan rehabilitasi jaringan\r\nirigasi dan rawa beserta fasilitas pendukungnya dan mekanisme pengadaan\r\nbarang/jasanya\r\nb. Analisa biaya dan manfaat (B/C ratio) dari sebelum dan sesudah ada proyek', 0, 0, 0, 0, 0, '', '344', 3, 1, 1),
(76, '23', '', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Wilayah Sungai Sulawesi II', '6', 2019, 'Pembangunan Bendungan Bonehulu', 'Bonehulu Dam Construction Project', '1. Pembangunan Pembangkit Listrik Tenaga Air (PLTA) sebesar 9,99 MW.\r\n2. Pembangunan sistem air irigasi untuk mengairi dareah irigasi seluas 6.800 Ha.\r\n3. Menyediaakan air untuk konservasi guna mengendalikan intrusi air laut dan navigasi\r\npada musim kemarau.\r\n4. Pengembangan Daerah Tujuan Wisata.', '1. Construction of Hydroelectric Power Plant of 9,99 MW\r\n2. Development of irrigation water system to irrigate dareah irrigation of 6,800 ha.\r\n3. Provide water for conservation in order to control and navigate the sea water intrusion in the dry\r\nseason.\r\n4. Development of Tourism Area', 128250000, 0, 2015, 60, '1. Membangun bendungan serba guna berikut fasilitas pendukungnya\r\n2. Melakukan konservasi sumber daya air dan pelestarian lingkungan\r\n3. Terbangunnya Pembangkit Listrik Tenaga Air (PLTA) sebesar 9,99 MW.\r\n4. Tersedianya air untuk irigasi dan konservasi pada musim kemarau.', '1. Menyediakan air irigasi untuk mengairi dareah irigasi seluas 6.800 Ha.\r\n2. Meningkatnya pendapatan masyarakat sekitar dengan terciptanya lapangan kerja baru', 21000000, 0, 0, 0, 0, '', '343', 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `irena_usulan_pln_2`
--

CREATE TABLE `irena_usulan_pln_2` (
  `id_instansi` varchar(11) NOT NULL,
  `instansi_pelaksana` text NOT NULL,
  `id_program` varchar(11) NOT NULL,
  `proyeksi_tahun_pertama_penarikan` int(11) NOT NULL,
  `judul_proyek_id` varchar(300) NOT NULL,
  `judul_proyek_eng` varchar(300) NOT NULL,
  `ruang_lingkup_id` text NOT NULL,
  `ruang_lingkup_eng` text NOT NULL,
  `nilai_pinjaman` bigint(20) NOT NULL,
  `dana_hibah` bigint(20) NOT NULL,
  `tahun_usulan` bigint(20) NOT NULL,
  `durasi` int(11) NOT NULL,
  `output` text NOT NULL,
  `outcome` text NOT NULL,
  `dana_pendamping` int(11) NOT NULL,
  `lokasi` varchar(200) NOT NULL,
  `id_sektor` int(11) NOT NULL,
  `infra` int(11) NOT NULL,
  `id_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `irena_usulan_pln_2`
--

INSERT INTO `irena_usulan_pln_2` (`id_instansi`, `instansi_pelaksana`, `id_program`, `proyeksi_tahun_pertama_penarikan`, `judul_proyek_id`, `judul_proyek_eng`, `ruang_lingkup_id`, `ruang_lingkup_eng`, `nilai_pinjaman`, `dana_hibah`, `tahun_usulan`, `durasi`, `output`, `outcome`, `dana_pendamping`, `lokasi`, `id_sektor`, `infra`, `id_status`) VALUES
('15', 'Kementerian Perhubungan', '7', 2018, 'Pembangunan Pelabuhan Patimban Subang Jawa Barat', 'Pembangunan Pelabuhan Patimban Subang Jawa Barat', 'a. Penyusunan desain serta spesifikasi teknis;\r\nb. Pelaksanaan pelelangan;\r\nc. Pelaksanaan kegiatan konstruksi;\r\nd. Pelaksanaan serah terima hasil pekerjaan;\r\ne. Konsesi dan kerjasama pengoperasian pelabuhan.', 'a. Penyusunan desain serta spesifikasi teknis;\r\nb. Pelaksanaan pelelangan;\r\nc. Pelaksanaan kegiatan konstruksi;\r\nd. Pelaksanaan serah terima hasil pekerjaan;\r\ne. Konsesi dan kerjasama pengoperasian pelabuhan.', 2208000000, 0, 2016, 60, '1. Ketersediaan fasilitas terminal kontainer untuk mendukung pertumbuhan dan kegiatan\r\nkawasan industri khususnya di wilayah Jawa Barat bagian Tengah dan Utara;\r\n2. Ketersediaan fasilitas terminal kendaraan bermotor dalam rangka menunjang\r\npertumbuhan industri otomotif nasional;\r\n3. Ketersediaan fasilitas kapal Roro untuk penyeberangan antar pulau.', 'soon', 595000000, '333', 6, 1, 1),
('57', 'a. Badan Informasi Geospasial (BIG) sebagai Executing Agency;\r\nb. Kementerian Agraria dan Tata Ruang (ATR) / Badan Pertahanan Nasional (BPN) sebagai implementing Agency', '16', 2019, 'Program Percepatan Implementasi Kebijakan Satu Peta (One Map Policy)', 'Program Percepatan Implementasi Kebijakan Satu Peta (One Map Policy)', 'i. Peningkatan kualitas dan perapatan Jaringan Kontrol Geodesi (Vertikal dan Horisontal)', 'undefined', 200000000, 0, 2016, 48, 'i. Perapatan jaringan kontrol vertikal sebanyak 200 titik, dan jaringan kontrol\r\n horizontal sebanyak 150 titik', 'i. Perapatan jaringan kontrol vertikal sebanyak 200 titik, dan jaringan kontrol \r\nhorizontal sebanyak 150 titik', 200000000, '349,350,351,352,355,5,361,362,369', 14, 2, 1),
('23', 'Kementerian Pekerjaan Umum dan Perumahan Rakyat', '18', 2017, 'Penyusunan Rencana Induk Terpadu Pembangunan Destinasi Pariwisata Prioritas', 'Penyusunan Rencana Induk Terpadu Pembangunan Destinasi Pariwisata Prioritas', 'a. Konsultasi dengan instansi-instansi terkait yang memiliki kewenangan dalam perencanaan pengembangan destinasi dalam aspek penggunaan lahan, transportasi, dan lain-lain.', 'a. Konsultasi dengan instansi-instansi terkait yang memiliki kewenangan dalam perencanaan pengembangan destinasi dalam aspek penggunaan lahan, transportasi, dan lain-lain.', 4000000, 2000000, 2017, 12, 'a. Penyusunan Rencana Induk Terpadu Pembangunan Destinasi Pariwisata Prioritas Danau Toba\r\nb. Penyusunan Rencana Induk Terpadu Pembangunan Destinasi Pariwisata Prioritas Borobudur\r\nc. Penyusunan Rencana Induk Terpadu Pembangunan Destinasi Pariwisata Prioritas Pulau Lombok dan Mandalika', 'a. Tersusunnya rencana pengembangan terpadu untuk 3 (tiga) kawasan strategis pariwisata nasional yang didukung oleh berbagai pemangku kepentingan;\r\nb.\r\nc.', 0, '347,154,359,370', 12, 2, 1),
('18', 'UIN Maulana Malik Ibrahim Malang', '24', 2017, 'Proyek Pengembangan UIN Maulana Malik Ibrahim Malang Tahap II, Jawa Timur', 'Proyek Pengembangan UIN Maulana Malik Ibrahim Malang Tahap II, Jawa Timur', '1. Pekerjaan Konstruksi dan Infrastruktur\r\n2. Peralatan dan furniture\r\n3. Jasa Konsultan (PSMC, DEDC dan EQC)\r\n4. Training Development\r\n5. Pengembangan Program Kurikulum\r\n6. Unit Manajement Proyek (PMU)\r\n7. Pekerjaan Auditing\r\n8. Start-Up Workshop', '1. Pekerjaan Konstruksi dan Infrastruktur\r\n2. Peralatan dan furniture\r\n3. Jasa Konsultan (PSMC, DEDC dan EQC)\r\n4. Training Development\r\n5. Pengembangan Program Kurikulum\r\n6. Unit Manajement Proyek (PMU)\r\n7. Pekerjaan Auditing\r\n8. Start-Up Workshop', 62675178, 0, 2016, 36, '1. UIN Maulana Malik Ibrahim Malang masuk dalam jajaran world class university;\r\n2. Kurikulum yang diterapkan di UIN Maulana Malik Ibrahim telah mengacu pada standar internasional;\r\n3. Lulusan yang dihasilkan UIN Maulana Malik Ibrahim mampu bersaing di tingkat nasional dan internasional;\r\n4. Pembelajaran yang berbasis pada hasil-hasil riset;\r\n5.\r\n6.\r\n7\r\n8.', '1. Mempersiapkan siswa yang memiliki akademik dan/atau profesional yang dapat menerapkan,, mengembangkan, dan /atau menciptakan ilmu pengetahuan dan teknologi, seni dan budaya yang bernuansa islami dan juga menyebarkannya untuk meningkatkan kehidupan masyarakat dan memperkaya kebudayaan nasional;\r\n2.\r\n3.', 10596961, '33', 1, 1, 1),
('23', 'Dirjen Cipta Karya Kementerian PUPR', '4', 2017, 'Peningkatan Kualitas Permukiman Kumuh', 'National Slum Upgrading', '1. Terwujudnya perubahan sikap Masyarakat\r\n2. Meningatnya partisipasi masyarakat', '1. The changing of public behaviour\r\n2. improvement community participation', 722880, 0, 2015, 60, 'implementasi 21 provinsi', 'tercapainya masyarakat yang mandiri lingkungan', 0, '344', 1, 1, 1),
('49', 'Badan Meteorologi, Klimatologi dan Geofisika', '30', 2016, 'Scalling Up Strengthening BMKG Weather and Climate Services Capacity', 'Scalling Up Strengthening BMKG Weather and Climate Services Capacity', 'a. Peningkatan Kapasitas Layanan Cuaca dan Iklim Maritim;\r\nb. Penngkatan Kapasitas Layanan Iklim dan Cuaca Publik;\r\nc. Pengembangan Sistem IT dan Komunikasi;\r\nd. Peningkatan Kapasitas Sumber Daya Manusia.', 'a. Scalling up the capacity of marine weather and marine climate services;\r\nb. Scalling up the capacity of public weather and climates services;\r\nc. Reinforcement Information and Communication Systems;\r\nd. Human Resource Capacity Development.', 150000000, 0, 2015, 48, 'a. Terbangunnya jejaring pengamatan Meteorologi dan Klimatologi (MK) yang semakin rapat, khususnya untuk penguatan pengamatan kemaritiman;\r\nb. Terbangunnya workshop kalibrasi peralatan pengamatan;\r\nc. Terealisasikannya basis infrastruktur pengamatan otomatis;\r\nd. Tersedianya sistem komputasi cuaca/iklim;\r\ne. Terintegrasikannya sistem pengamatan udara atas, penginderaan jauh dan permukaan;\r\nf. Dihasilkannya SDM berlatar belakang pendidikan lanjut dalam bidang MK pada jenjang S2 dan S3.', 'a.	Dihasilkannya data secara otomatis, periodis, tidak tergantung pada manusia dan peralatan yang laik;\r\nb. 	Semakin tingginya tingkat ketelitian/akurasi hasil prediksi cuaca/iklim;\r\nc.	Semakin cepatnya proses produksi prediksi cuaca dan iklim yang menguntungkan dalam \r\n         mendukung\r\n	1. Pembuatan keputusan bagi sektor-sektor pembangunan peka terhadap iklim;\r\n	2. berkurangnya ketidak-pastian masyarakat dalam prediksi cuaca dan iklim dan antisipasi \r\n             bencana hidrometeorologis;\r\n	3. upaya peningkatan kesadaran mitigasi dan adaptasi dalam memahami dampak \r\n            cuaca/iklim ekstrem;\r\n	4. upaya mereduksi resiko bencana hidro-meteorologis pada berbagai sektor pembangunan \r\n            dan keselamatan transportasi laut/maritim dan penerbangan;\r\n	5. 	aktivitas perikanan dan wisata bahari.', 0, '344', 14, 1, 1),
('90', 'PT. PLN (Persero)', '2', 2018, 'PLTP Tulehu unit 1 dan 2 (2 x 10 MW)', 'Tulehu Geothermal Power Plant Project Unit 1 & 2 (2 x 10 MW)', 'a. Tambahan pengeboran untuk 3 sumur produksi/injeksi;\r\nb. Konstruksi pembangkit', 'a. Additional boring for 3 production / interjection well;\r\nb. Construction of Power Plant', 104000000, 0, 2015, 42, 'Untuk mengantisipasi pertumbuhan beban dan meningkatkan keandalan sistem Ambon, PLN berencana mengembangkan pembangkit listrik tenaga Panas Bumi dengan kapasitas 2 x 10 MW', 'a. Dapat memenuhi kebutuhan tenaga listrik di Ambon;\r\nb. Untuk memanfaatkan sumber energi terbarukan yang tersedia;\r\nc. Untuk meningkatkan kehandalan sistem Ambon', 18000000, '322', 5, 1, 1),
('12', 'Badan Penyuluhan dan Pengembangan SDMP Pertanian', '36', 2016, 'Perluasan Program READ (Pemberdayaan Perdesaan dan Pembangunan Pertanian) di Sulawesi', 'Perluasan Program READ (Pemberdayaan Perdesaan dan Pembangunan Pertanian) di Sulawesi', 'Komponen A - Pemberdayaan Masyarakat\r\nKomponen B - Peningkatan Mata Pencaharian\r\nKomponen C - Infrastruktur Pertanian\r\nKomponen D - Manajemen Proyek', 'Komponen A - Pemberdayaan Masyarakat\r\nKomponen B - Peningkatan Mata Pencaharian\r\nKomponen C - Infrastruktur Pertanian\r\nKomponen D - Manajemen Proyek', 30000000, 500000, 2014, 60, 'a. Kelembagaan desa dan kegiatan kelompok berfungsi secara efektif,', 'a. Masyarakat pedesaan yang miskin mampu menilai, merencanakan, melaksanakan, dan mengelola prioritas pembangunan mereka sendiri;', 6000000, '146,364,365,372,367', 8, 2, 1),
('23', 'Direktorat Jenderal Cipta Karya, Kementerian Pekerjaan Umum dan Perumahan Rakyat', '12', 2015, 'Program Pengembangan SPAM Perkotaan Nasional', 'National Urban Water Supply Program', 'a. Kegiatan Fisik :\r\n- Pembangunan SPAM perkotaan terpadu dengan pembangunan infrastruktur kota lainnya\r\n- Perluasan akses pelayanan air minum, misalnya melalui kegiatan seperti peningkatan kapasitas SPAM perkotaan existing dan perluasan jaringan distribusi SR aau yang lebih dikenal dengan Grant for the Development of Water Supply System Phase III\r\n\r\nb. Kegiatan Non Fisik: \r\n- Peningkatan kapasitas pendanaan SPAM melalui FIAMSI,', 'a. Construction activities : \r\n- Construction of integrated urban water supply;\r\n- Expansion of water supply service through increasing the capacity of existing waters upply systems and expansion of distribution, also known as Grant for the Development of Water Supply System Phase III (the Improvement of Water Supply System Project/Water Grant)\r\n\r\nb. Non Infrastructure activities : \r\n- Improvement of water supply financial capacity through FIAMSI', 100000000, 0, 2015, 60, 'Meningkatnya cakupan pelayanan SPAM di perkotaan sebesar 239,808 SR dan kapasitas penyelenggara SPAM perkotaan', 'Meningkatnya keualitas pelayanan air minum di perkotaan oleh penyelenggara SPAM', 0, '344', 1, 1, 1),
('90', 'PT. PLN (Persero)', '2', 2014, 'PLTU Indramayu (1 x 1000 MW)', 'Indramayu Coal Fired PP Project (1x1000 MW)', 'Pembangunan PLTU Indramayu dengan menggunakan teknologi ultra super critical / super critical memilki ruang lingkup sbb:\r\n• Boiler\r\n• Steam Turbine and Generator\r\n• Coal and Ash Handling Equipment\r\n• Marine Works\r\n• Transmission Line and Substation\r\n• Site Preparation Works\r\n• Site Finishing Works\r\n• Civil Works', 'Construction works for 1,000 MW×1 ultra super critical / super critical coal-fired power plant in Indramayu.\r\n• Boiler\r\n• Steam Turbine and Generator\r\n• Coal and Ash Handling Equipment\r\n• Marine Works\r\n• Transmission Line and Substation\r\n• Site Preparation Works\r\n• Site Finishing Works\r\n• Civil Works', 2010000, 0, 2012, 52, '• Meningkatkan pasokan tenaga listrik di system Jawa-Bali.\r\n• Memperbaiki biaya produksi tenaga listrik.\r\nDalam Bahasa Inggris :\r\n• Increase supply of electricity in Java – Bali system\r\n• Reduced cost of production', 'Dalam Bahasa Indonesia :\r\n• Meningkatkan pasokan listrik di system Jawa-Bali.\r\n• Memperbaiki biaya produksi tenaga listrik.\r\n• Untuk memenuhi pertumbuhan kebutuhan listrik sebesar 7.8% per tahun di system Jawa-Bali.\r\n• Untuk mengurangi pembebanan berlebih di system Jawa-Bali.\r\n• Ikut berpartisipasi dalam pengembangan ekonomi di wilayah sekitar.', 355000, '340,346', 5, 1, 1),
('15', 'a. Pemprov DKI Jakarta\r\nb. PT MRT Jakarta', '1', 2018, 'Pembangunan Proyek MRT Jakarta Jalur Selatan-Utara  (Koridor Lebak Bulus - Kampung Bandan)', 'Construction of Jakarta MRT North-South Line Project (Lebak Bulus - Kampung Bandan)', 'a. Pembayaran pekerjaan variasi MRT Jakarta Fase 1 (Lebak Bulus - Bundaran HI);\r\nb. Konstruksi Sipil, instalasi sistem Perkeretaapian dan Pengadaan ereta untuk Sistem MRT Jakarta Fase 2 (Bundaran HI-Kampung Bandan);\r\nc. Jasa Konsultan Manajemen Konstruksi untuk Sistem MRT Jakarta Fase 2 (Bundaran HI - Kampung Bandan)', 'a. Payment of Variations Order on Jakarta MRT Phase 1;\r\nb. Construction of Civil Works, Railway Systems Installation and Procurement of Rolling Stock of Jakarta MRT Phase 2 (Bundaran HI - Kampung Bandan);\r\nc. Construction Management Consultancy Services for MRT Jakarta Phase 2 (Bundaran HI - Kampung Bandan).', 953000000, 916000000, 2017, 72, 'a. Tersedianya jalur sistem MRT dari Lebak Bulus - Bundaran HI (+- 15,7 KM), Bundaran HI - Kampung Bandan (+- 8,3 KM) secara berkesinambungan, dengan Depo di Kampung Bandan;\r\nb. Tersedianya kereta untuk sistem MRT.', 'Tersedianya transportasi massal yang memadai pada jalur Utara - Selatan, khususnya Lebak Bulus-Kampung Bandan', 186900000, '344', 2, 1, 1),
('23', 'Direktorat Jenderal Cipta Karya, Kementerian Pekerjaan Umum dan Perumahan Rakyat', '1', 2016, 'Pembangunan Sistem Penyediaan Air Minum dan Pengolahan Air Minum pada Daerah kekurangan air di Ibu Kota Kecamatan', 'IKK Water SUpply System and Water Treatment Plant in Water Scarcity Area', 'a. Pembangunan intake dan jaringan transmisi air baku I\r\nb. Konstruksi IP A lengkap dengan bangunan pendukung dan aksesoris sesuai dengan I\r\nkapasitas yang dibutuhkan\r\nc. Pembangunan IP A jaringan distribusi utama', 'a. The development of raw water intake and tra7Jsmission network,\r\nb. The development of Water Treatment Plant along with supporting buildings and accessories in\r\naccordance with required capacity,\r\nc. The development of main distribution network of Water Treatment Plant', 100000000, 0, 2015, 60, 'Terbangunnya SPAM di 85 lokasi IKK terpilih yang tersebar di wilayah Jawa, Sumatera, Kalimantan, Sulawesi, Banusra, Papua, Papua Barat, Maluku, dan Maluku Utara.), dan dapat melayani 191.847 SR', 'Tersedianya akses air minum yang aman untuk masyara~at di 85 lokasi terpilih', 0, '344', 1, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. BBWS Sumatera VIII', '5', 2015, 'Pekerjaan Irigasi Komering Tahap III', 'Komering Irrigation Project Stage III', 'Proyek yang diusulkan meliputi :\r\ni) review desain jaringan irigasi utama dan tersier Lempuing\r\nseluas 8.500 ha,\r\n ii) pekerjaan sipil untuk jaringan irigasi utama dan tersier Lempuing seluas 8.500\r\nha,\r\niii) pekerjaan sipil untuk perbaikan fasilitas irigasi yang sudah ada, \r\niv) soft komponen untuk memperkuat pengelolaan air irigasi di Lempuing,\r\n v) review rencana pembangunan secara keseluruhan Proyek Irigasi Komering', 'The proposed project includes :\r\n i) review of design of main and tertian; irrigation system in Lempuing\r\nscheme for 8,500 ha, \r\nii) civil works for main and tertiary irrigation system in Lempuing scheme for 8,500\r\nha, \r\niii) civil works for improvement of existing irrigation facilities, \r\niv) soft component for strengthening of irrigation water management in Lempuing scheme, \r\nv) review of overall development plan of Komering Irrigation Project', 120000000, 0, 2015, 96, '1. Pembangunan saluran sekunder dan saluran sub-sekunder Lempuing: 85 km\r\n2. Peningkatan Jaringan Tersier: 8.500 ha\r\n3. Peningkatan fasilitas irigasi yang sudah ada di Bendung Perjaya, saluran utama, dan saluran\r\nsekunder Belitang.\r\n4. Soft Component: penguatan pengelolaan air irigasi\r\n5. Review Rencana Pembangunan Keseluruhan Proyek Irigasi', '1. Peningkatan daerah irigasi 8.500 ha\r\n2. Meningkatkan itensitas penanaman padi dari yang saat ini 100% menjadi 250%\r\n3. Meningkatkan produksi padi dari yang saat ini 3,0 ton/ha menjadi 5,0 ton/ha', 12000000, '369', 3, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. BWS Bali Penida', '18', 2015, 'Proyek Pengamanan Pantai Bali Tahap - 2', 'Bali Beach Conservation Project Phase - II', '1. Pengamanan dan Konservasi Pantai Timur Bali (Sanur Utara ~ Candadisa)\r\n2. Pengamanan dan Konservasi Pantai Kuta Utara - Legian - Seminyak - dan Canggu', '1. Beach Conservation at East Coast Area\r\n2. Beach Conservation at North Kuta ~ Legian ~ Seminyak ~ Canggu', 150000000, 0, 2015, 65, '1. Melakukan konserbasi area pantai dan perlindungan garis pantai\r\n2. Membangun bangunan pengaman pantai (krib, tanjung buatan, revetment, breakwater)\r\n3. Membangun jalan setapak untuk mempermudah dan menciptakan akses sepanjang pantai \r\n4. Restorasi terumbu karang', '1. Memelihara dan meningkatkan potensi wisata dalam rangka pertumbuhan kontribusi sektor pariwisata\r\n2. Melindungi infrastruktur dan area pemukiman di sisi darat\r\n3. Meningkatkan kondisi lingkungan pantai (keaalamian, leansekap) dan faisilitas publik area tujuan wisata internasional\r\n4. Menciptakan Manajemen Pantai Terintegrasi dengan melibatkan semua pihak', 15000000, '340', 12, 1, 1),
('18', 'Kementerian Agama', '24', 0, 'The Development of Ar-Raniry State Islamic University (UIN Ar-Raniry) Phase II Project In Aceh', 'The Development of Ar-Raniry State Islamic University (UIN Ar-Raniry) Phase II Project In Aceh', 'The Development of Ar-Raniry State Islamic University (UIN Ar-Raniry) Phase II Project In Aceh', 'The Development of Ar-Raniry State Islamic University (UIN Ar-Raniry) Phase II Project In Aceh', 41328203, 0, 2017, 48, 'The Development of Ar-Raniry State Islamic University (UIN Ar-Raniry) Phase II Project In Aceh', 'The Development of Ar-Raniry State Islamic University (UIN Ar-Raniry) Phase II Project In Aceh', 8636323, '1', 9, 1, 1),
('91', 'PT. Indonesia Infrasturcture FInance', '38', 2016, 'Peningkatan Kapasitas Pembiayaan PT. Indonesia Infrastructure Finance dalam Rangka Percepatan Pembangunan Infrastruktur di Indonesia', 'Increasing PT. Indonesia Infrastructure Finance Financing Capacity in Accelerating Infrastructure Development in Indonesia', 'menyusul', 'menyusul', 300000000, 0, 2015, 36, 'menyusul', 'menyusul', 0, '344', 14, 1, 1),
('19', 'Direktorat Jenderal Pembinaan Pelatihan dan Produktivitas', '37', 2016, 'Pengembangan Balai Latihan Kerja Maritim', 'Development of Maritime Vocational Training Centers', 'di telegram', 'di telegram', 92308000, 0, 2015, 60, 'di tele', 'di tele', 2500000, '357,359,365', 14, 1, 1),
('54', 'BATAN', '39', 0, 'Pembangunan Reaktor Daya Eksperimental', 'Development of Indonesia Experimental Power Reactor', 'soon tele', 'soon tele', 205530000, 0, 2015, 72, 'soon tele', 'soon tele', 93930000, '341', 14, 2, 1),
('90', 'a. PT. PLN (Persero)', '2', 2017, 'PLTA Pumped Storage Matenggeng', 'PLTA Pumped Storage Matenggeng', 'soon tele', 'soon tele', 500000000, 0, 2015, 60, 'soon tele', 'soon tele', 220000000, '13', 5, 1, 1),
('90', 'a. PT. PLN (Persero)', '2', 2020, 'PLTP Sungai Penuh 2x55 MW', 'Sungai Penuh Geothermal Power Plant Project', 'soon', 'soon', 205000000, 0, 2015, 42, 'soon', 'soon', 45000000, '345', 5, 1, 1),
('90', 'a. PT. PLN (Persero)', '2', 2017, 'Tambahan Pinjaman PLTA Pumped Storage Upper Cisokan HEPP Loan No. 8057-ID', 'Additional Cost for Loan Upper Cisokan Pumped Storage HEPP Capacity 4x260 MW, Loan N. 8057-ID', 'soon', 'soon', 200000000, 0, 2015, 60, 'soon', 'soon', 0, '331', 5, 1, 1),
('37', 'Kementerian PPN/Bappenas (Pusat Pembinaan, Pendidikan dan Pelatihan Perencana)', '26', 2018, 'Human Resources Development for Bureaucratic Reform (HRDBR)', 'Human Resources Development for Bureaucratic Reform (HRDBR)', 'soon tele', 'soon tele', 150000000, 0, 2015, 66, 'soon tele', 'soon tele', 0, '344', 9, 2, 1),
('90', 'a. PT. PLN (Persero)', '2', 2015, 'PLTP Hululais Unit 1 dan 2 (2x5 MW)', 'Hululais Geothermal Power Plant Project 1&2 (2x55 MW)', 'a. Pembebasan lahan dan jalan', 'a. Acquisition of land and rights of way\r\netc', 204000000, 0, 2015, 62, 'soon', 'soon', 42000000, '342', 5, 1, 1),
('40', 'a. Kementerian Komunikasi dan Informatika\r\nb. Badan Pengkajian dan Penerapan Teknologi (BPPT)\r\nc. Lembaga Sandi Negara (Lemsaneg)', '16', 2016, 'Penguatan Infrastruktur e-Government', 'Strengthening of e-Government Infrastucture', 'soon tele', 'soon tele', 145000000, 10000000, 2015, 60, 'soon', 'soon', 20000000, '346,352', 11, 1, 1),
('12', 'a. Pusat Pendidikan, Standarisasi, dan Sertifikasi Profesi Pertanian - BPPSDMP Kementan\r\nb. Pusat Pelatihan Pertanian - BPPSDMP Kementan\r\nc. SMK-PP Sembawa, SMK-PP Banjarbaru, dan SMK-PP Kupang (3 proyek rintisan)', '36', 2017, 'Penumbuhan dan Pengembangan Wirausahawan Muda untuk Pembangunan Pertanian Berkelanjutan', 'Young Entrepreneur Growth and Development for Sustainably Agricultural Development', 'a. Transfer pengetahuan dan pengalaman (pelatihan, lokakarya, magang, pendampingan, pertemuan)\r\nb. Keuangan mikro (pembentukan dan pengoperasian pusat bisnis dan pemelian/pengadaan mesin pertanian, peralatan, pupuk, bahan kimia dan benih, dan lain-lain);\r\nc. Produksi pertanian (tanaman pangan, tanaman holtikultura, peternakan, perkebunan);\r\nd. Pengelolaan dana (kegiatan pelatihan dari petani ke petani, kegiatan sewa menyewa fasilitas/alat mesin pertanian);\r\ne. Pembentukan IT  dan pusat informasi agribisnis di SMK-PP (Pembangunan Pusat dan Peralatan Sistem IT dan Jaringan);\r\nf. Pembentukan P4S (Pembangunan dan Pengadaan Sarana Prasarana);\r\ng. Dukungan manajemen.', 'a. Transfer pengetahuan dan pengalaman (pelatihan, lokakarya, magang, pendampingan, pertemuan)\r\nb. Keuangan mikro (pembentukan dan pengoperasian pusat bisnis dan pemelian/pengadaan mesin pertanian, peralatan, pupuk, bahan kimia dan benih, dan lain-lain);\r\nc. Produksi pertanian (tanaman pangan, tanaman holtikultura, peternakan, perkebunan);\r\nd. Pengelolaan dana (kegiatan pelatihan dari petani ke petani, kegiatan sewa menyewa fasilitas/alat mesin pertanian);\r\ne. Pembentukan IT  dan pusat informasi agribisnis di SMK-PP (Pembangunan Pusat dan Peralatan Sistem IT dan Jaringan);\r\nf. Pembentukan P4S (Pembangunan dan Pengadaan Sarana Prasarana);\r\ng. Dukungan manajemen.', 68900000000, 0, 2015, 60, '1. Peningkatan pengetahuan, keterampilan dan kapasitas alumni SMK-PP/pemuda tani/wirausahawan (pertanian) muda/pengelola P4S;\r\n2. IT di bidang pertanian dan Pusat Informasi;\r\n3. Produksi dan pemasaran melalui pusat agribisnis;\r\n4. Penyewaan dan perbengkelan alat mesin pertanian;\r\n5. Terbentuknya P4S yang berkualitas;\r\n6. Kegiatan pelatihan dari petani ke petani', '1. Adanya kegiatan agribisnis wirausahawan muda;\r\n2. Berkembangnya teknologi agribisnis;\r\n3. Berkembangnya wirausahawan muda;\r\n4. Meningkatnya kualitas P4S;\r\n5. Terbentuknya jaringan dan informasi pertanian;\r\n6. Adanya keuntungan/laba dari kegiatan pusat agribisnis dan persewaan;\r\n7. Adanya cadangan dana untuk investasi kedepan;\r\n8. Persiapan dalam rangka pembentukan korporasi;\r\n9. KEmampuan melaksanakan replikasi ke daerah lain di Indonesia.', 2147483647, '344,349,350,351,360,369,370', 8, 2, 1),
('40', 'a. Kementerian Komunikasi dan Informatika\r\nb. Televisi Republik Indonesia (TVRI)', '16', 2016, 'Improvement of TV Transmitting Stations (Digitalization of TVRI)', 'Improvement of TV Transmitting Stations (Digitalization of TVRI)', 'a. Pengadaan \r\nb. Instalasi\r\nc. Teseting dan Commisioning\r\nd. Training', 'a. Pengadaan \r\nb. Instalasi\r\nc. Teseting dan Commisioning\r\nd. Training', 411159134, 0, 2015, 36, 'a. Digitalisasi Peralatan Studio di 29 Stasiun Penyiaran Daerah\r\nb. Digitalisasi Peralatan Transmisi di 250 lokasi', 'a. Peningkatan kualitas gambar dengan standar HD dan 4K\r\nb. Peningkatan kualitas gambar dan suara menjadi digital di area layanan \r\nc. Peningkatan kualitas SDM dengan pla pikir dari analog ke digital', 41000000, '344', 11, 1, 1),
('23', 'a. Kementerian Pekerjaan Umum dan Perumahan Rakyat', '17', 2018, 'Program Peningkatan Ketahanan Air', 'Enhanced Water Security Investment Program (EWSIP)', 'a. Komponen 1 - Peningkatan Kapasitas Tampungan Waduk\r\nb. Komponen 2 - Pemanfaatan Potensi Bendungan untuk Pembangkit Listrik\r\nc. Komponen 3 - Manajemen Proyek', 'a. Component 1 - Reservoir capacity improvement\r\nb. Component 2 - Dam utilization for hydropower generation\r\nc. Component 3 - Project Management', 350000000, 0, 2015, 60, 'a. Meningkatkan kapasitas tampungan waduk yang dimiliki oleh Kementerian PUPR\r\nb. Memanfaatkan potensi bendungan milik Kementerian PUPR untuk pembangkit listrik', 'a. Peningkatan penyediaan air untuk air baku air minum sebagai dukungan ketahanan air\r\nb. Peningkatan penyediaan air untuk irigasi sebagai dukungan ketahanan pangan\r\nc. Peningkatan pasokan energi listrik untuk mendukung ketahanan energi', 70000000, '339,371,346,347,348,352,356,359,360,365', 3, 1, 1),
('90', 'a. PT. PLN (Persero)', '2', 2016, 'PLTA Bakaru II (2 x 63 MW)', 'PLTA Bakaru II (2 x 63 MW)', 'a. Review desain Rinci, dokumen pengadaan, dan konsultasi supervisi;\r\nb. Pembangunan fisik PLTA Bakaru II dengan kapasitas 126 MW dan Transmission Line terkait', 'a. Review desain Rinci, dokumen pengadaan, dan konsultasi supervisi;\r\nb. Pembangunan fisik PLTA Bakaru II dengan kapasitas 126 MW dan Transmission Line terkait', 280000, 0, 2015, 48, 'Untuk mengantisipasi pertumbuhan beban dan meningkatkan keandalan sistem kelistrikan di Sulbagsel, PLN berencana mengembangkan pembangkit listrik tenaga air PLTA Bakaru II dengan kapasitas 126 MW.', '1. Dapat meningkatkan produksi pembangkit PLTA Bakaru 1 (eksisting) dengan meberikan tambahan daya sebesar 126 MW, sehingga total kapasitas pembangkit PLTA Bakaru dapat menjadi 252 M (Bakaru 1:126 MW dan Bakaru 2:126 MW);\r\n2. Dapat menurunkan biaya produksi pembangkit dengan menggantikan pembangkit - pembangkit mahal yang berbahan bakar minyak pada saat beban puncak;\r\n3. Memprbaiki bauran energi dan menurunkan emisi CO2.', 20000, '369', 5, 1, 1),
('12', 'a. Direktorat Jenderal Prasarana dan Sarana Pertanian', '23', 2017, 'Perluasan Areal Tanaman Pangan', 'Extensfication of New Paddy Field Area', 'a. Identifikasi calon petani dan calon lokasi (CPCL);\r\nb. Survei / investigasi;\r\nc. Penetapan lokasi;\r\nd. Desain;\r\ne. Konstruksi (pembersihan lahan dan pembuatan bedengan);\r\nf. Bantuan sarana produksi pertanian untuk budidaya padi.', 'a. Identifikasi calon petani dan calon lokasi (CPCL);\r\nb. Survei / investigasi;\r\nc. Penetapan lokasi;\r\nd. Desain;\r\ne. Konstruksi (pembersihan lahan dan pembuatan bedengan);\r\nf. Bantuan sarana produksi pertanian untuk budidaya padi.', 811166549, 0, 2015, 48, 'a. Ketersediaan lahan yang bisa dikembangkan untuk program perluasan areal padi;\r\nb. Membentuk petani padi baru', 'a. Meningkatnya luas areal penanaman;\r\nb. Meningkatnya produksi padi nasional untuk mencapai target swasembada padi nasional', 81116654, '344', 8, 1, 1),
('23', 'a. Direktorat Jenderal Sumber\r\nb. Balai Besar Wilayah Sungai (BBWS) Pompengan - Jeneberang Daya Air', '6', 2016, 'Pengananan Terpadu untuk Masalah Sedimentasi dan Banjir di Provinsi Sulawesi Selatan', 'Comprehensive Counter measure for Sediment and Flood Problems in South Sulawesi Province', 'a. Rehabilitasi Intake Waduk Bili-Bili dengan implementasi Water Level Selectable intake (intake yang dioperasikan berdasarkan perubahan muka air waduk)\r\nb. Konstruksi bangunan Penangkap Pasirraksa (GiantSand Trap facility) di ujung Waduk Bili-Bili\r\nc. Konstruksi Bangunan Pengendali Sedimen di luar kaldera untuk antisipasi potensi runtuhan lanjutan Bawakaraeng', 'a. Rehabilitasi Intake Waduk Bili-Bili dengan implementasi Water Level Selectable intake (intake yang dioperasikan berdasarkan perubahan muka air waduk)\r\nb. Konstruksi bangunan Penangkap Pasirraksa (GiantSand Trap facility) di ujung Waduk Bili-Bili\r\nc. Konstruksi Bangunan Pengendali Sedimen di luar kaldera untuk antisipasi potensi runtuhan lanjutan Bawakaraeng', 108100000, 3900000, 2015, 60, 'a. Terbangunnya Water Selectable Intake di Waduk Bili-Bili (1 buah)\r\nb. Terbangunnya GIant Sand Trap (1 buah)\r\nc. Terbangunnya bangunan-bangunan pengendali sedimen\r\nd. Terlaksananya F/S, B/D, dan D/D untuk prioritas Proyek Rehabilitasi', 'a. Terjaminnya suplai air baku (PDAM) dengan kualitas baik\r\nb. Ter -reduksi laju sedimentasi (bed load) yang menuju Waduk Bili-Bili\r\nc. Terkendalinya laju sedimentasi daerah tengah maupun hulu S. Jeneberang dan Kaldera G. Bawakaraeng\r\nd. Kesiapan implementasi proyek pengedalian sedimen di wilayah sungai-sungai di Sulawesi Selatan', 112000000, '365', 3, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. BBWS Bengawan Solo', '6', 2016, 'Proyek Peningkatan Hilir Sungai Bengawan Solo (Fase II-2)', 'Lower Solo River Improvement Project Phase II-2', 'a. PekerjaanKonstruksi\r\n- Pelaksanaan tanggul\r\n- Konsh·uksi parapet wall\r\n- Konstruksi pelindung tebing\r\n- Konstruksi sluiceway\r\n- Konsh·uksi jembatan\r\n- Pembuatan alur sudetan\r\n- Bangunan-bangunan sungai lain yang terkait\r\nb. Jasa Konsultansi\r\nc. Supervisi konstruksi', 'a. Construction works\r\n- Leeve embankment\r\n- Parapet wall\r\n- Revetment\r\n- Sluiceway\r\n- Road bridge\r\n- Short-cut channels and\r\n- Other related structures\r\n\r\nb. Engineering Services\r\nc. Construction supervision', 155836000, 0, 2015, 72, 'a. PekerjaanKonstruksi\r\n1. Pelaksanaantanggul\r\n2. Konstruksi parapet wall\r\n3. Konstruksi pelindung tebing\r\n4. Konstruksi sluiceway\r\n5. Konstruksi jembatan\r\n6. Pembuatanalursudetan\r\n7. Bangunan-bangunan sungai lain yang terkait', 'a. Tercapainya rencana induk 2001, sehingga dapat mengendalikan banjir agar dapat mengurangi bahaya yang dapat merusak kehidupan, social dan ekonomi masyarakat di sepanjang aliran bengawan Solo hilir seperti halnya areal rawa Jero yang terletak disepanjang 200 km aliran Solo hilir.\r\nb. Tercapainya pengembangan sumber daya air disepanjang aliran bengawan Solo hilir sesuai dengan rencana Pemerintah untuk pengembangan regional. Penyediaan air bakuuntuk perkotaan, industridan area irigasi dikawasan pantai utara pulau Jawa khususnya penyediaan air untuk kota Gresik dan Surabaya metropolitan, setelah selesai proyek', 22500000, '347,348', 3, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Besar / Balai WS', '6', 2015, 'Penyiapan teknis untuk pembangunan waduk serbaguna', 'Engineering Service for Dam Multipurpose Development Project', 'a. Analisis rencana teknis pembangunan bendungan beserta fasilitasnya, operasi,\r\npemeliharaan dan mekanisme pengadaan barang dan jasa\r\nb. Analisis penyiapan detail desain, pengadaan lahan dan rencana pemukiman kembali\r\nserta AMDAL\r\nc. Melaksanakan perencanaan program, analisis pembiayaan proyek dan persiapan\r\ndokumen lelang', 'a. Conducting analysis in term of operaion, maintenance, facilty construction and procurement plans\r\nb. Conducting analysis in term of detailed design, land acquistion, resstlement plan and environmental impact assessment\r\nc. Implementing the program planning, project funding analysis and tender document preparation', 100000000, 0, 2015, 60, 'a. Detail desain pembangunan bendungan dan kelengkapan dokumen AMDAL,LARAP\r\nb. Mekanisme pengadaaan, rencana pelaksanaan dan standar dokumen pengadaan\r\nc. Manajemen pengelolaan proyek dan analisis pembiayaannya', 'a. Meningkatkan perencanaan untuk persiapan pembangunan bendungan beserta fasilitas\r\npendukungnya dan mekanisme pengadaan barang!jasanya\r\nb. Analisa biaya dan manfaat (B/C ratio) dari sebelum dan sesudah ada proyek', 0, '344', 3, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Wilayah Sungai Sumatera III', '6', 2017, 'Pembangunan Bendungan Lompatan Harimau', 'Lompatan Harimau Dam Construction Project', '1. Membangun bendungan serba guna berikut fasilitas pendukungnya\r\n2. Melakukan konservasi sumber daya air, pelestarian lingkungan, dan pengendalian banjir\r\n3. Membangun fasilitas PLTA pada bendungan untuk memenuhi kebutuhan energi listrik\r\nmasyarakat Kabupaten Rokan pada khususnya', '1. Construct multipurpose dam and appurtenant structures\r\n2. Hydropower plants with an installed capacihJ of74,40 MW ..\r\n3. Development of Tourism', 152100000, 0, 2015, 60, '1. Membangun bendungan serba guna berikut fasilitas pendukungnya\r\n2. Melakukan konservasi sumber daya air, pelestarian lingkungan, dan pengendalian banjir\r\n3. Membangun bendungan serba guna berikut fasilitas pendukungnya\r\n4. Membangun fasilitas PLTA pada bendungan untuk memenuhi kebutuhan energi listrik\r\nmasyarakat Kabupaten Rokan pada khususnya', '1. Terpenuhinya kebutuhan air irigasi seluas 4000 ha\r\n2. Memberikan tambahan pasokan energi listrik kepada masyarakat Kabupaten Rokan ±\r\n74,40MW\r\n3. Meningkatnya pendapatan masyarakat sekitar dengan terciptanya lapangan kerja baru', 26500000, '363', 3, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. BWS Sumaterall\r\nc. BBWS Brantas\r\nd. BWS Sulawesi I\r\ne. BWS Maluku Utara', '6', 2017, 'Proyek Mitigasi Bencana Gunung Sinabung (Sumatera Utara), Gunung Semeru, Gunung Kelud (Jawa Timur), Gunung Lokon (Sulawesi Utara), dan Gunung Gamalama (Maluku Utara)', 'Urgent Disaster Reduction of Mt. Sinabung (North Sumatera), Semeru, Kelud (East Java), Lokon (North Sulawesi) and Gamalama (North Maluku)', '1. Pekerjaan Konstruksi dan pengadaan alat berat\r\n2. Pemberdayaan Badan Layanan Umum (BLU) di Balai Wilayah Sungai di daerah;\r\n3. Jasa Konsultansi untuk supervise pekerjaan konstruksi', '1. Civil works and equipment including: implementation of construction and; procurement of heavy equipment.\r\n2. Empowerment of the institutional strengthening of Public Services Agency!Badan Layanan Umum (BLU).\r\n3. Consulting services', 260000000, 0, 2015, 60, '1. Ketersediaan fasilitas Sabo dan bangunan pengontrol sedimen lainnyadi lereng Gunung\r\nSinabung; Gunung Lokon, Gunung Gamalama, Gunung Kelud dan Gunung Semeru\r\n2. Penguatan kelembagaan Badan Layanan Umum (BLU) di Balai Wilayah Sungai di daerah;', 'Mengurangi kerusakan yang disebabkan oleh bencana letusan Gunung Sinabung; Gunung\r\nLokon, Gunung Gamalama, Gunung Kelud d an Gunung Semeru', 26000000, '348,358,367,370', 3, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Besar Wilayah Sungai (BBWS) Pompengen Jeneberang', '6', 2018, 'Pembangunan Bendungan Jenelata', 'Jenelata Dam Construction Project', '1. Membangun bendungan serba guna berikut fasilitas pendukungnya\r\n2. Melakukan rehabilitasi jalan akses yang sudah dibangun\r\n3. Membangun fasilitas PLTA pada bendungan untuk memenuhi kebutuhan energi listrik\r\nmasyarakat Kab. Gowa pada umumnya\r\n4. Perbaikan dan peningkatan jaringan irigasi\r\n5. Konsultan Supervisi', '1. Construct main dam and appurtenants structures\r\n2. Infrastructure relocationlacces road\r\n3. Construction of hydropower facilities to support electricitlj in Gowa district\r\n4. Rehabilitation and impmvement of irrigation systems\r\n5. Consulting Services', 200000000, 0, 2015, 60, '1. Membangun bendungan serba guna dengan luas total tampungan 223 juta m3 berikut\r\nfasilitas pendukungnya\r\n2. Melakukan rehabilitasi jalan akses yang sudah dibangun\r\n3. Membangun fasilitas PLTA pada bendungan untuk memenuhi kebutuhan energi listrik masyarakat Kab. Gowa pada umumnya\r\n4. Rehabilitasi jaringan irigasi', '1. Terpenuhinya kebutuhan air baku masyarakat di Kabupaten Gowa, Gowa dan Kota\r\nMakassar dengan debit sebesar 3,12 m3/det.\r\n2. Memberikan pasokan energi listrik kepada masyarakat Kab. Gowa dan Kota Makassar ±\r\n10,9MW\r\n3. Mendukung peningkatan produksi pertanian beriirigasi dengan irigasi baru seluas\r\n24.400 ha\r\n4. Berkurangnya intensitas banjir di Kabupaten Gowa dan sekitarnyasebesar 475 m3/det.', 20000000, '365', 3, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. BWS Sulawesi IV', '1', 2018, 'Proyek Pembangunan Bendungan Pelosika', 'Pelosika Multipurpose-Dam Construction Project', '1. Pekerjaan Persiapan\r\n2. Relokasi jalan dan pembuatan jalan masuk\r\n3. Pekerjaan bangunan pengelak\r\n4. Bendungan utama dan pelana\r\n5. Bangunan pelirnpah\r\n6. Bangunan pengambilan\r\n7. Instrument bendungan\r\n8. Hidrornekanikal\r\n9. Jalan layanan\r\n10. Bangunan pelengkap lainnya\r\n11. Pekerjaan listrik\r\n12. Pengadaan alat operasi & perneliharaan', '1. Work Preparation\r\n2. Relocation of roads and road construction entrance\r\n3. The building work dodger\r\n4. The main dam and saddle\r\n5. Construction of spillway\r\n6. Construction of retrieval\r\n7. Instrument dam\r\n8. Hidromekanikal\r\n9. Road services\r\n10. Construction of others supported facilities\r\n11. Electric Works\r\n12. Procurement of operation & maintenance tools', 200000000, 0, 2015, 72, '1. Ketersediaan air baku 0,75 m3 I dt\r\n2. Ketersediaan air irigasi untuk mengairi sawah intensifikasi D.l. Wawotobi 16.358 ha dan Extensifikasi Daerah -daerah irigasi di hilir bendungan pelosika\r\n3. Tersedia untuk pernbangkit listrik tenaga air 21M\r\n4. Pengendalian Banjir DAS Konaweha 10.359 Ha', '1. Pengendalian banjir pada DAS Konaweha\r\n2. Peningkatan produksi padi sawah\r\n3. Ketersediaan energy listrik yang terbarukan\r\n4. Ketersediaan air baku', 170000000, '372', 1, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Besar Wilayah Sungai (BBWS) Pompengen Jeneberang', '6', 2016, 'Penyiapan Teknis Sistem Penyediaan Air Baku', 'Engineering Service for Bulk Water and Water Supply Development Project (Nationwide)', '1. Analisis sistem penyediaan air baku,\r\n2. Pengembangan operasional dan pemeliharaan berikut fasiltasnya\r\n3. Rencana pelaksanakan perencanaan program dan konstruksi\r\n4. Analisis pembiayaan proyek\r\n5. Persiapan dokumen lelang\r\n6. Persiapan detail desain, LARAP dan AMDAL Qika diperlukan)', 'a. Conducting analysis of bulk water supply\r\nb. Conducting analysis of operational and maintenance including the supporting facilities\r\nc. Implementing the program planningand construction schedule\r\nd. Implementing the project funding analysis\r\ne. Implementing the preparation tender document\r\nf. Conducting analysis in term of detailed design, land acquisition, resstlement plan and environmental\r\nimpact assessment\r\ng. Implementing the program planning, project funding analysis and tender dokumen preparation (etc.)', 50000000, 0, 2015, 60, 'a. Survey dan investigasi untuk studi konsep dasar di atas dan untuk desain rinci untuk\r\nkarya prioritas;\r\nb. Kajian konsep teknis dan rencana Sistem Perencanaan Air Baku\r\nc. Detail desain, AMDAL,LARAP\r\nd. Mekanisme pengadaaan, rencana pelaksanaan dan standar dokumen pengadaan\r\ne. Manajemen pengelolaan proyek dan analysis pembiayaannya', 'a. Meningkatkan perencanaan untuk persiapan pembangunan system jaringan air baku\r\nbeserta fasilitas pendukungnya dan mekanisme pengadaan barang/jasanya\r\nb. Analisa biaya dan manfaat (B/C ratio) dari sebelum dan sesudah ada proyek', 0, '344', 3, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Besar Wilayah Sungai  Sulawesi I', '6', 2016, 'Pembangunan Waduk Kuwil Kawangkoan', 'Kuwil Kawangkoan Dam Construction Project', 'a. Penyediaan air baku untuk penduduk Kabupaten Minahasa Utara dan kebutuhan air\r\nbaku untuk kawasan Ekonomi Khusus Kota Bitung total debit sebesar 4,32 m3/detik,\r\nserta Daerah lndustri Bitung.\r\nb. PLTM dengan kapasitas terpasang sebesar 1,3 MW.\r\nc. Pengurangan ancaman banjir pada kota Manado dan sekitarnya untuk debit banjir\r\nperiode ulang Q25th dengan reduksi banjir sebesar 275 m3/detik.\r\nd. Pengembangan Pariwisata', '1. Provision of raw water for the residents of North Minahasa Regency and raw water requirement for the 1\r\nSpecial Economic region Bitung total discharge of 4.32 m3 I sec, and Bitung Industrial Region.\r\n2. Micro power plants with an installed capacity of 1.3 MW.\r\n3. Reducing the threat of flooding in the city of Manado and the surrounding areas to discharge flood\r\nreturn period flood Q25th with reduction of275 m3 I sec.\r\n4. Development of Tourism', 110000000, 0, 2015, 72, '1. Melakukan konservasi sumber daya air, pelestarian lingkungan, dan pengendalian banjir\r\n2. Membangun bendungan serba guna berikut fasilitas pendukungnya\r\n3. Melakukan rehabilitasi dan pengaspalan terhadap jalan akses yang sudah dibangun\r\n4. Membangun fasilitas PLTA pada bendungan untuk memenuhi kebutuhan energi listrik\r\nmasyarakat Provinsi Sulawesi Utara pada umumnya', '1. Terpenuhinya kebutuhan air baku masyarakat dan industri di Kabupaten Minahasa\r\nUtara dan Kawasan Ekonomi Khusus Kota Bitung\r\n2. Memberikan pasokan energi listrik kepada masyarakat Provinsi Sulawesi Utara ± 1.3 MW\r\n3. Meningkatnya pendapatan masyarakat sekitar dengan terciptanya lapangan kerja baru\r\n4. Berkurangnya intensitas banjir di Kabupaten Minahasa Utara dan sekitarnya', 11000000, '367', 3, 1, 1),
('23', 'a. Ditjen Sumber Daya Air, cq. Balai Besar Wilayah Sungai Citarum\r\nb. Ditjen Pembangunan Daerah, Kementerian Dalam Negeri\r\nc. Ditjen Pasarana dan Sarana Pertanian, Kementerian Pertanian', '1', 2017, 'Program Pengelolaan Sumber Daya Air Terpadu di Wilayah Sungai Citarum II', 'Integrated Citarum Water Resources Management Investment Program II (PFR-2)', 'a) Pengembangan air baku permukaan untuk Kota Bandung dan sekitarnya dan\r\npengurangan ketergantungan pada air tanah;\r\nb) Konstruksi alternative air baku di daerah catchment hulu sekeliling Bandung untuk\r\nmemenuhi kebutuhan air baku di masa depan Kota Bandung dan sekitarnya;\r\nc) Konservasi tanah di daerah watershed hulu, dengan target daerah catchment penting yang\r\nakan menyediakan air baku;\r\nd) Mengenalkan kegiatan perhutanan dan holtikultur yang sesuai di lahan kritis dan rawan\r\nerosi sekeliling Bandung dengan tujuan untuk mengurangi erosi tanah, mengkonservasi\r\nsumber daya air\r\ne) Penyusunan rencana investasi PFR untuk fase selanjutnya', 'a) Develop bulk survace water sources for greater Bandung mtd reduce dependency on groundwater; ,\r\nb) Implement bulik water supply options in the upper catchments around Bandung to fulfil future bulk \'\r\nwater demands of greater Bandung;\r\nc) Soil conservation in upper watershed areas, targeting crucial catchments that will provile bulk water;\r\nd) Introduce suitable holticulture and forestry sctivities in critical, erosion prone lands around Bandung\r\nin order to reduce soil erosion, conserve water resources and improve bulk water supply; and\r\ne) Prepare following periodic financing reques', 200000000, 0, 2015, 60, 'a) Terbangunnya jaringan penyediaan air baku baru, menyediakan lebih kurang 1,5 m3/det tambahan air baku;\r\nb) Terlindunginya tanah dari erosi dan membaiknya pengelolaan watershed hulu di subcatchments Cikapundung dan Cisangkuy; dan\r\nc) Design PFRs untuk fase selanjutnya', '1. Meningkatnya pasokan air baku untuk Kota Bandung dan sekitarnya;\r\n2. Berkurangnya tekanan pada air tanah;\r\n3. Berkurangnya erosi tanah di watershed hulu;\r\n4. Berkurangnya laju sedimentasi di Sungai Citarum; dan\r\n5. Membaiknya imbuhan akuifer air tanah', 20000000, '346', 1, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Besar Wilayah Sungai (BBWS) Ciujung-Cidanau-Cidurian', '6', 2019, 'Pembangunan Sistem Saluran Air Baku dari Bendungan Karian-Serpong', 'Karian Dam-Serpong Water Conveyance and Supply System Project', '1. Membangun saluran air baku 1 sepanjang 20,6 km dan 15,4 km (diameter 2000 em- 2\r\njalur)\r\n2. Membangun saluran air baku 2 sepanjang 11,9 km ( diameter 2000 em - 2 jalurO\r\n3. Konsultan supervisi\r\n4. Pelaksanaan operasi dan pemeliharaan', 'i) Construct of KSCS , pipe line with length 20,6 km and 15,4 km (D2000-2lanes)\r\nii) Construct of KSCS 2, pipe line with length 11,9 km (D1650-2lanes)\r\niii) Consultant Supervision\r\niv) Conducting operation and maintenance', 373861700, 0, 2015, 60, 'Pengembangan saluran air baku dan sistem distribusi air di wilayah proyek akan\r\nmemberikan kontribusi untuk memasok 14,6 m3 Is ke daerah-daerah layanan, yaitu 10,6 m3 I\r\ns akan dialokasikan untuk DMI (Domestik, Kota dan lndustri) dan 4,0 m3 I s untuk keperluan\r\nirigasi. lni akan memasok sekitar 33% dari kebutuhan air di daerah layanan.', '1. Meningkatnya pasokan air baku di Banten dan Jakarta\r\n2. Berkurangnya tekanan pada air tanah;', 181074000, '341,344', 3, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air', '6', 2016, 'Proyek Modernisasi Irigasi Strategis Indonesia', 'Modernization Strategic Irrigation Project of Indonesia (MSIP)', 'Proyek yang diusulkan meliputi i) Ulasan sistem perencanaan untuk masing-masing skema, ii)\r\nDetail desain atau ulasan desain untuk sistem irigasi/ saluran drainase utama & sekunder, iii) SID\r\nsistem tersier, iv) Pekerjaan Modernisasi/ Peningkatan/ Rehabilitasi bangunan barrage yang ada,\r\nsistem irigasi utama & sekunder, sistem drainase, dll, dan v) Komponen Lunak.', 'The proposed project includes i) Review of system planning of each scheme, ii) Detailed design or review design of the main & secondary irrigation/ drainage systems, iii) SID of tertian; systems, iv)\r\nModernization/ Upgrdingl Rehabilitation works of the existing barrage, main & secondary irrigation\r\nsystems, drainage systems, etc., and v) Soft Component.', 278355000, 0, 2015, 72, 'a. Modernisasi/ Peningkatan/ Rehabilitasi Skema Irigasi yang ada\r\nb. Perbaikan Sistem Irigasi: 198.459 ha termasuk beberapa daerah perluasannya seluas 32.586 ha\r\nc. Modernisasi/ Peningkatan/ Rehabilitasi Headworks yang ada\r\nd. Perbaikan Sistem Drainase\r\ne. Pembangunan Tersier\r\nf. Komponen Lunak: i) Penguatan Kelembagaan Organisasi Operasi & Pemeliharaan (O&P)\r\nPemerintah, ii) Aktivasi Perkumpulan Petani Pengguna Air (P3A), iii) Peningkatan\r\nDistribusi/ Pengelolaan Air, dan iv) Manajemen Aset', 'a. Pendistribusian air yang cukup untuk ke 198.459 ha bahkan pada musim kemarau termasuk\r\ndaerah perluasannya seluas 32.586 ha.\r\nb. Penurunan tingkat kehilangan air yang tinggi pada saat ini dengan cara meningkatkan\r\nefisiensi irigasi sekitar 45% menjadi lebih dari 65% sesuai dengan desain aslinya.\r\nc. Peningkatan intensitas hasil produksi padi\r\nd. Peningkatan produksi beras\r\ne. Peningkatan Sistem Operasi d an Pemeliharaan oleh Komponen Lunak.', 28000000, '344', 3, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air', '6', 2016, 'Penyiapan Teknis Untuk Proyek Pembangunan Jaringan Irigasi dan Rawa', 'Engineering Service for Irrigation and Lowland Development Project', 'a. Analisis rencana teknis pembangunan dan rehabilitasi jaringan irigasi dan rawa\r\n(masterplan dan kelayakan DI) dan mekanisme pengadaan barang dan jasa yang akan\r\ndilakukan\r\nb. Analisis penyiapan detail desain, pengadaan lahan dan rencana pemukiman kembali\r\nserta AMDAL\r\nc. Melaksanakan perencanaan program, analisis pembiayaan proyek dan persiapan\r\ndokumen lelang', 'a. Conducting analysis in term of irrigation and lowland (masterplan and feasibilihj for each irrigation\r\nscheme) and procurement plans\r\nb. Conducting analysis in term of detailed design, land acquisition, resstlement plan and environmental\r\nimpact assessment\r\nc. Implementing the program planning, project funding analysis and tender dokumen preparation (etc.)', 100000000, 0, 2015, 60, 'a. Detail design pembangunan dan rehabilitasi jaringan irigasi dan rawa dan kelengkapan\r\ndokumen AMDAL,LARAP\r\nb. Mekanisme pengadaaan, rencana pelaksanaan dan standar dokumen pengadaan\r\nc. Manajemen pengelolaan proyek dan analisis pembiayaannya', 'a. Meningkatkan perencanaan untuk persiapan pembangunan dan rehabilitasi jaringan\r\nirigasi dan rawa beserta fasilitas pendukungnya dan mekanisme pengadaan\r\nbarang/jasanya\r\nb. Analisa biaya dan manfaat (B/C ratio) dari sebelum dan sesudah ada proyek', 0, '344', 3, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air\r\nb. Balai Wilayah Sungai Sulawesi II', '6', 2019, 'Pembangunan Bendungan Bonehulu', 'Bonehulu Dam Construction Project', '1. Pembangunan Pembangkit Listrik Tenaga Air (PLTA) sebesar 9,99 MW.\r\n2. Pembangunan sistem air irigasi untuk mengairi dareah irigasi seluas 6.800 Ha.\r\n3. Menyediaakan air untuk konservasi guna mengendalikan intrusi air laut dan navigasi\r\npada musim kemarau.\r\n4. Pengembangan Daerah Tujuan Wisata.', '1. Construction of Hydroelectric Power Plant of 9,99 MW\r\n2. Development of irrigation water system to irrigate dareah irrigation of 6,800 ha.\r\n3. Provide water for conservation in order to control and navigate the sea water intrusion in the dry\r\nseason.\r\n4. Development of Tourism Area', 128250000, 0, 2015, 60, '1. Membangun bendungan serba guna berikut fasilitas pendukungnya\r\n2. Melakukan konservasi sumber daya air dan pelestarian lingkungan\r\n3. Terbangunnya Pembangkit Listrik Tenaga Air (PLTA) sebesar 9,99 MW.\r\n4. Tersedianya air untuk irigasi dan konservasi pada musim kemarau.', '1. Menyediakan air irigasi untuk mengairi dareah irigasi seluas 6.800 Ha.\r\n2. Meningkatnya pendapatan masyarakat sekitar dengan terciptanya lapangan kerja baru', 21000000, '343', 3, 1, 1);
INSERT INTO `irena_usulan_pln_2` (`id_instansi`, `instansi_pelaksana`, `id_program`, `proyeksi_tahun_pertama_penarikan`, `judul_proyek_id`, `judul_proyek_eng`, `ruang_lingkup_id`, `ruang_lingkup_eng`, `nilai_pinjaman`, `dana_hibah`, `tahun_usulan`, `durasi`, `output`, `outcome`, `dana_pendamping`, `lokasi`, `id_sektor`, `infra`, `id_status`) VALUES
('23', 'a. Direktorat Jenderal Sumber Daya Air', '5', 2015, 'Proyek Terpadu Pengembangan dan Pengelolaan Irigasi Partisipatif  Tahap - I', 'Integrated Participatory Development And Management of Irrigation Project - Phase I', 'a. Mendukung pengembangan terpadu fasilitas irigasi dengan konstruksi, dan Pengembangan\r\nprasarana irigasi dengan pendekatan partisipatif mulai SID, konstruksi dan operasi\r\npemeliharaan\r\nb. Perencanaan dan pelaksanaan rehabilitasi sistem irigasi secara partisipatif\r\nc. Pembentukan dan pemberdayaan P3A\r\nd. Perkuatan staff O&P\r\ne. Implementasi pengelolaan aset irigasi\r\nf. Peningkatan irigasi d i level petak tersier\r\ng. Peningkatan daerah tangkapan air untuk konservasi melalui konsultasi publik, sosialisasi \'\r\ndan diseminasi', 'a. Supporting the integrated development of irrigation facilities through participatory SID, construction\r\nphase, and O&M activities;\r\nb. Participatory rehabilitation of rehabilitation system;\r\nc. Forming and empowerment ofWUAs;\r\nd. Empowerment of O&M officers;\r\ne. Implementation of irrigation\'s asset management;\r\nf Improvement of tertiary and on-farm level;\r\ng. Improvement of conservatory catchment area through public consultation and dissemination.', 700000000, 0, 2015, 60, 'Meningkatkan produksi padi, untuk mempercepat pengentasan kemiskinan di sektor pertanian\r\ndi wilayah barat dan timur Indonesia melalui pembentukan pembangunan pertanian irigasi\r\nberkelanjutan dengan cara partisipatif menekankan pemberdayaan petani pemanfaat dan\r\norganisasi pengguna air', 'a. Peningkatan produktivitas padi beberapa daerah irigasi di Sumatera, Kalimantan dan\r\nSulawesi dengan luas lebih dari 3.000 ha per DI-nya\r\nb. Peningkatan, pembangunan lanjutan dan rehabilitasi mendesak proyek irigasi strategis untuk\r\nwilayah barat dan timur Indonesia dengan luas lebih dari 20.978 ha.', 70000000, '344', 3, 1, 1),
('23', 'a. Direktorat Jenderal Sumber Daya Air,\r\nb. Ditjen Bangda, Kemendagri\r\nc. Ditjen Prasarana dan Sarana Pertanian, Kem Pertanian', '5', 2015, 'Kegiatan Sektor Pengelolaan Banjir di Wilayah Sungai Terpilih', 'Flood Management in Selected River Basins Sector Project', '1. Perkuatan kegiatan konservasi watershed\r\n2. Penyediaan informasi publik atas resiko banjir untuk pengelolaan bantaran banjir\r\n3. Perbaikan kapasitas alir sungai untuk mengurangi puncak banjir\r\n4. Peningkatan kesiapan masyarakat untuk penglolaan darurat banjir dan\r\n5. Perbaikan kapasitas pemerintah dalam subsector pengendalian daya rusak air', 'The project will address the following concerns :\r\n(i) Strengthening of watershed conservation activities;\r\n(ii) Providing public information on flood risks for flood plain management;\r\n(iii) Improving conveyance of the river for reduction of flood peak;\r\n(iv) Strengthening community\'s preparedness for emergency flood management; and\r\n(v) Improving capacity of the government in the flood subsector __', 108700000, 0, 2015, 72, '1. Meningkatnya Basis Pengetahuan Pengelolaan Banjir. Kegiatan ini akan mendukung (a)\r\nPeningkatan pengelolaan data hidro-meteorologi1 (b) Penyusunan rencana pengelolaan\r\nresiko banjir1 (c) Praperkiraan banjir dan peringatan dini termasuk pembentukan sistem\r\nkomunikasi1 (d) Pemetaan bahayal kerentaanl resiko dan tanggap darurat1 (e)\r\nPembentukan prosedur komunikasi banjir1 dan (f) Penguatan kelembagaan dan\r\npeningkatan kapasitas teknis.\r\n2. Teradaptasinya Pengelolaan DAS1 Meningkatnya Kapasitas Debit dan menurunnya\r\ndebit puncak. Melalui kegiatan ini masyarakat di daerah hulu sungai akan memperbaiki\r\ndaerah tanah terdegradasi yang terpilih dengan melaksanakan agroforestri serta upaya\r\nkonservasi lahan dan air lainnya. Kegiatan akan memberdayakan kelompok tani di WS\r\nCidanau Ciujung Cidurian untuk mengadopsi praktek pertanian berkelanjutan termasuk\r\nterasering dan pembuatan kolam retensi untuk mengurangi erosi. Kegiatan juga akan\r\nmendukung Balai Besar/Balai Wilayah Sungai untuk seleksil menilai kelayakan1 \'\r\nmenyiapkan desain rinci1 pengamanan social dan lingkungan1 pelelangan 1 perencanaan\r\nO&P serta pelaksanaan Konstruksi subproyek.\r\n3. Meningkatnya Kapasitas Manajemen Resiko Banjir Berbasis Masyarakat (CBFRM)4.\r\nKegiatan CBFRM akan dilaksanakan untuk memastikan bahwa masyarakat dapat\r\nmemperoleh manfaat penuh dari meningkatnya infrastruktur pengendalian banjir dan\r\nmeningkatnya peringatan banjir. Kegiatan ini akan mendukung (a) penyusunan rencana\r\nkontingensi (perencanaan tanggap darurat1 prosedur operasi standar1 ketentuan 1\r\nevakuasi); (b) pembentukan CBFRM dan pengembangan kapasitas masyarakat terpapar •\r\n1\r\n.\r\nresiko banjir dan pengelolaan resiko banjir1 dan (c) partisipasi masyarakat dalam\r\nperencanaan1 desain1 dan implementasi kegiatan untuk rehabilitasi watershed hulu.\r\n4. Pelaksanaan Proyek yang efektif. Kegiatan ini akan mendukung Direktorat Jendral\r\nSumber Daya Air (Executing Agency) untuk melakukan pengawan kegiatan secara\r\nkesaeluruhan dan memperkuat kapasitan perencanaan 1 pelaksanaan dan pengelolaan\r\nunit pelaksana (Implementing Agency).', 'Meningkatnya kesiapan untuk mengelola dan memitigasi banjir melaui pendekatan penglolaan\r\nbanjir terpadu di DAS Ciujungl DAS Batu Merah, dan DAS Way Ruhu', 50440000, '341,357', 1, 1, 1),
('23', 'a. Direktorat Jenderal Cipta Karya, Kementerian PUPR', '12', 2016, 'Pembangunan Sistem Penyediaan Air Minum Regional Wosusokas (Wonogiri - Sukoharjo - Surakarta (Solo) - Karanganyar - Sragen)', 'The Development of Regional Water Supply System in Wosusokas (Wonogiri - Sukoharjo - Surakarta (Solo) - Karanganyar - Sragen)', '1. Pembangunan unit air baku, unit produksi dan distribusi utama, unit pelayanan dan unit pengelolaan\r\n2. Perijinan, penyediaan lahan, kompensasi pengambilan dan pemanfaatan air permukaan', '1. The development of raw water unit, production and main distribution unit, service unit and management unit\r\n2. Licensing, provision of land, compensation of exploration and the utilization of surface water.', 106200000, 0, 2015, 60, 'Untuk menyediakan SPAM yang melayani 159,220 SR di wilayah Wonogiri - Sukoharjo - Surakarta (Solo) - Karanganyar - Sragen.', 'a. Tersedianya sistem pengelolaan air minum yang berkapasitas 2100 liter/detik\r\nb. Tersedianya sistem penyediaan air minum yang dapat melayani masyarakat dengan air yang memenuhi persyaratan', 0, '76,69,70,71,166', 1, 1, 1),
('23', 'a. Direktorat Jenderal Cipta Karya', '1', 2016, 'Pengembangan Sistem Pengolahan Air Limbah Terpusat di DKI Jakarta - Zona 1 dan Zona 6)', 'Jakarta Sewerage Development Project - Zone 1 and Zone 6', 'a. Penyusunan Detail Engineering Design untuk IPAL  Terpusat Zona 6\r\nb. Pembangunan jaringan paerpipaan Zona 1 dan Zona 6\r\nc. Pembangunan IPAL Terpusat Zona 1 dan Zona 6\r\nd. Pembangunan Unit Stasiun Pompa', 'a. The preparation of Detailed Engineering Desing For Zone 6\r\nb. The development of pipeline network for Zone 1 and Zone 6\r\nc. The development of Centralized Wastewater Treatment Plant (WWTP)\r\nd. The development Pump Station', 1950000000, 0, 2015, 80, 'Tersedianya jaringan air limbah perpipaan di Zona 1 dan Zona 6 yang dapat melayani 2 juta jiwa', 'Tersedianya layanan air limbah perpipaan di Jakarta (zona 1 dan zona 6) yang memadai', 0, '344', 1, 1, 1),
('23', 'Direktorat Jenderal Cipta Karya, Kementerian Pekerjaan Umum dan Perumahan Rakyat', '19', 2016, 'Pengelolaan Sampah untuk Pengembangan Kota yang Berkelanjutan', 'Advanced Solid Waste Management for Sustainable Urband Development / Advanced SWM-SUD', 'a. Membangun TPA yang baru dengan konsep Sanitary Landrill;\r\nb. Membangun Unit Sistem Teknologi Pengolahan Sampah untuk mereduksi sampah dengan pemilihan teknologi sesuai kondisi masing-masing daerah layanan yang ramah lingkungan;\r\nc. Membangun Intermediate Treatment Facility / ITF (fasilitas pemilahan, pengolahan, dan pemrosesan akhir sampah);\r\nd. Membangun infrastruktur penunjang;\r\ne. Membangun Buffer Zone;\r\nf. Supervisi kegiatan konstruksi', 'a. Develop a new landfill with Sanitary Landfill concept,\r\nb. Develop Green Solid Waste Treatment Technology Unit to reduce waste by the selection of technology suitable to the conditions of respective service area;\r\nc. Develop Intermediate Treatment Facility / ITF (sorting, processing, and final waste preocessing facilities);\r\nd. Develop suppporting infrastructure;\r\ne. Develop Buffer Zone;\r\nf. Supervision of Construction Activities.', 150000000, 0, 2015, 36, 'a. Peningkatan TPA eksisting dan tersedianya TPA baru dengan unit sistem teknologi pengolahan sampah yang disesuaikan dengan kondisi masing-masing daerah layanan yang ramah lingkungan\r\nb. Meningkatkan kinerja pengelolaan persampahan yang dapat melayani 13 juta jiwa', 'Mengoptimalkan kinerja TPA untuk pencapaian pengelolaan pembangunan yang bersih', 0, '344', 1, 1, 1),
('23', 'a. Direktorat Jenderal Cipta Karya, Kementerian PUPR', '19', 2016, 'Peningkatan Pengelolaan Persampahan untuk Kawasan Regional dan Kota-Kota Metropolitan', 'The Improvement of Solid Waste Management to Support Regional Area and Metropolitan Cities', 'a. Rehabilitasi, Re-Engineering atau pembangunan TPA Sanitary Landfill yang baru (dilengkapi dengan instalasi pengolahan air lindi, alat berat seperti buldoser dan compactor, fasilitas untuk staf/operator),\r\nb. Pembanunan Intermediet Treatment Facility (ITF)\r\nc. Pengembangan konsep Reuse, Reduce, Recycle (3R)\r\nd. Capacity building untuk pengelolaan sampah', 'a. Rehabilitation and reengineering of existing landfills, the development of new Sanitary Landfill which is completed with leachate treatment installation, heavy equipment such as bulldozers and compactor, and facilitiesfor staff/operator\r\nb. The development of the Intermediate Treatment Facility (ITF)\r\nc. The development of Reuse, Reduce, and Recycle (3R)\r\nd. Capacity building for waste treatment.', 100000000, 0, 2015, 24, 'a. Penyelesaian pembangunan teknis TPA sanitary lanfill dan infrastruktur pendukung yang dapat melayani 4 juta jiwa\r\nb. Kontrak operasi dan pemeliharaan (O&M)\r\nc. Adopsi dan pelaksanaan istem dan pedoman (O&M)\r\nd. Peningkatan pengumpulan sampah dan tingkat pembuangan\r\ne. Adopsi dan pelaksanaan penetapan harga dan strategi pengumpulan', 'a. Terbentuknya sistem penelolaan sampah yang berkelanjutan\r\nb. Pengurangan direct landfilling\r\nc. Umur layan TPA yang lebih panjang\r\nd. Emisis gas rumah kaca yang lebih kecil', 0, '7,14', 1, 1, 1),
('23', 'a. Direktorat Jenderal Cipta Karya, Kementerian PUPR', '4', 2016, 'Penanganan Permukiman Kumuh di Kawasan Strategis', 'Slum Improvement in Strategic Human Settlements Area (SISHA)', 'a. Meningkatnya perencanaan dan pengelolaan pemukiman kumuh di perkotaan melalui penyususnan strategi pembangunan skala kawasan;\r\nb. Peningkatan dan pengembangan kota skala sarana permukiman kawasan kumuh;\r\nc. Pembangunan pemukiman bru di kota-kota untuk Masyarakat Berpenghasilan Rendah (MBR)\r\nd. Penguatan kapasitas kelembagaan pemerintah daerah dan masyarakat', 'a. Improve the palnning and management of urban slums through the peraparation of regional -scale development strategy.\r\nb. Imrpove and develop urban settlements facilities in slum area\r\nc. New settlements developent in cities for Low-Income Community or MBR\r\nd. Institutional Capacity building for local governments and community', 2100000000, 0, 2015, 60, 'Penanganan kawasan kumuh sebesar 4.400 ha', 'a. Tersusunnya perencanaan dan pengelolaan pemukiman kumuh di perkotaan melalui penyusunan strategi pembangunan skala kawasan;\r\nb. Mengingat dan berkembangnya sarana permukiman kota dalam rangka kawasan bebas kumuh;\r\nc. Terbanunnya kawasan permukiman baru di kota-kota untuk Masyarakat Berpenghasilan Rendah (MBR);\r\nd. Terbentuknya penguatan kapasitas kelembagaan pemerintah daerah dan masyarakat', 0, '344', 1, 1, 1),
('23', 'Direktorat Jenderal Cipta Karya, Kementerian PUPR', '12', 2016, 'Penyediaan IPA skala kecil (IPA mobile) untuk penanganan darurat', 'Small Scale Water Treatment Plant for Emergency Relief', 'a. Infrasturktur, termasuk penyiapan lahan dan pembangunan gudang, jalan akses ke lokasi gudang / LOS (Location Open Storage) penyediaan air minum, sambungan listrik, komunikasi dan pemagaran gudang.\r\nb. Pengadaan dan pemasangan peralatan pengolahan air mobile (Mobile Water Treatment Plant) untuk penganganan bencana)\r\nc. Program Pelatihan Emergency Module Units (EMUs) terdiri dari : \r\n1. EMUs Management and Training melalui program peningkatan pengetahuan dan kapasitas dalam manajemen , perencanaan, dan koordinasi untuk memberikan pelatihan kepada staf baru\r\n2. EMUS Operation and Manintenance for Technicians melalui program peningkatan kemampuan bagi staf di bidang teknis melalui pelatihan secara teoritis dan praktek untuk mengoperasikan, memelihara, dan keberlangsungan Emergency Module Units (modul tanggap darurat)', 'a. Infrastructure, including land acquitition and storage construction, access road to small scale water treatment plant storage location / LOS (Location Open Storage), electricity, communication, and fencing storage\r\nb. Procurement and installment of mobile water treatment plant for emergency relief;\r\nc. Emergency Module Units (EMUs) training program, consists of :\r\n1. EMUs Management and Training through knowledge and capacity building programs in management, planning, and coordination to provide training for new staff;\r\n2. EMUs Operation and Maintenance for Technicians through capacity building for technical staff (theoritical and practical training) to Emergency Module Units operational, maintenance and sustainability.', 25000000, 0, 2015, 24, 'Tersedianya IPA mobile yang dapat berfungsi secara efektif pada keadaan darurat', 'Mengatasi kesulitan mendapatkan air minum yang dialami oleh para korban bencana alam', 800000, '182,88,11,171', 1, 1, 1),
('23', 'Direktorat Jenderal Cipta Karya, Kementerian PUPR', '4', 2016, 'Pengembangan Infrastruktur Permukiman di Kawasan Perdesaan', 'Rural Settlement Infrastructure Development (RSID)', 'a. Meningkatkan kemampuan sumber daya dan pendapatan masyarakat lokal\r\nb. Pembentukan dan pemantapan kelembagaan masyarakat lokal dalam pengelolaan pengembagnan potensi lokal dan pemeliharaan infrastruktur\r\nc. Pembangunan infrastruktur pedesaan dan ruang publik\r\nd. Pelatihan kemampuan monitoring dan evaluasi secara swadaya', 'a. Improve the resources capacity and local commuinity\'s income;\r\nb. The establisment and improvement of local community\'s institution in managing local potential develeopment and infrastructure maintenance;\r\nc. The development of rural infrastructure and public space,\r\nd. Training on Self-Reliance Monitoring and Evaluation', 101100000, 0, 2015, 60, 'Pembangunan Infrastruktur Perdesaan yang membantu pengembangan potensi lokal sebesar 18.589 ha', 'a. Peningkatan Fungsi kawasan perdesaan\r\nb. Dorongan ekonomi perdesaan terhadap pertumbuhan ekonomi kawasan\r\nc. Peningkatan indeks pembangunan manusia di perdesaan', 0, '344', 1, 1, 1),
('23', 'a. Direktorat Jenderal Cipta Karya, Kementerian PUPR (Nation wide)', '3', 2017, 'Program Peningkatan Pengelolaan Air Limbah di Kota-Kota Metropolitan Tahap 2', 'Sewerage System Development Program in Indonesia', 'a. Pembangunan fisik sarana dan prasarana sanitasi serta IPAL\r\nb. Penguatan kapasitas lembaga pengelola', 'a. Construction of sanitation infrastructure and WWTP,\r\nb. Institutional Capacity building for WWTP organization', 975000000, 0, 2015, 24, 'a. Peningkatan kesadaran masyarakat terhadap pelayanan sanitasi;\r\nb. Pembangunan dan operasional pengumpulan, pengolahan dan fasilitas pembuangan untuk air limbah\r\nc. Operasional strategi sanitasi\r\nd. Peningkatan akses pelayanan sanitasi yang dapat melayani 4,6 juta jiwa', 'Peningkatan terhadap akses pelayanan sanitasi, peningkatan kesehatan lingkungan dan penurunan polusi.', 0, '344', 1, 1, 1),
('23', 'Direktorat Jenderal Cipta Karya, Kementerian PUPR', '4', 2016, 'Pengembangan Administrasi Bangunan Gedung dan Peningkatan Kapasitas untuk Ketahanan terhadap Gempa', 'Building Administration and Capacity Enforcement Development for Seismic Resilience', 'a. Pengembangan panduan / guidelines untuk 455 kota/kabupaten (status per Desember 2014, 246 dari total 511 kabupaten /kota telah mengeluarkan Peraturan Daerah Bangunan Gedung)\r\nb. Peningkatan kesadaran masyarakat mengenai bangunan tahan gempa\r\nc. Sosialisasi metode perkuatan/retrofitting untuk bangunan tahan gempa', 'a. Developing guidelines for 455 cities/regencies (Per December 2014, 246 building regulations at city level have been enacted out of 511 cities/regencies in Indonesia)\r\nb. Public awareness of earthquake resilient building\r\nc. Socialization on methods of retrofitting for earthquake resilient building', 261100000, 0, 2015, 60, 'a. Sejumlah 455 kota/kabupaten target di Indonesia dapat menerapkan pedoman bangunan tahan gempa pada 2019. Penyusunan pedoman dan penguatan kapasitas pemerintah daerah dapat dimulai pada tahun 2015.\r\nb. Peningkatan kapasitas sumber daya manusia di bidang Administrasi Bangunan melalui kegiatan-kegiatan sebagai berikut : \r\n     1. Pedoman pelaksanaan perkuatan bangunan/retrofitting;\r\n     2. Lokakarya/seminar;\r\n     3. Sosialisasi dan pembangunan kapasitas;\r\n     4. Pendidikan masyarakat;\r\n     5. Kampanye publik;\r\n     6. Bantuan proyek mengenai perkuatan bangunan/retrofitting;\r\n     7. Sosialisasi sistem informasi bangunan gedung;\r\n     8. Pelatihan mengenai sistem informasi bangunan gedung.', 'a. Meningkatnya jumlah kabupaten/kota yang telah menyusun rancangan Perda Bangunan Gedung sesuai dengan pedoman percepatan legalisasi peraturan daerah mengenai bangunan gedung,\r\nb. Meningkatnya jumlah kabupaten/kota yang menerapkan sistem informasi bangunan gedung,\r\nc. Meningkatnya tingkat pemahaman masyarakat dan pihak pemangku kepentingan lainnya mengenai administrasi bangunan di kabupaten/kota prioritas,\r\nd. Meningkatnya jumlah rumah sderhana baru yang tahan gempa di kota/kabupaten prioritas\r\ne. Meningkatnya jumlah rumah sederhana yang diperkuat di kota/kabupaten prioritas', 0, '344', 1, 1, 1),
('23', 'a. Direktorat Jenderal Cipta Karya, Kementerian PUPR', '12', 2016, 'Pembangunan Sistem Penyediaan Air Minum Regional Petanglong (Pekalongan City-Batang Regency-Pekalongan Regency)', 'The Development of Regional Water Supply System in Petanglong (Pekalongan City-Batang Regency-Pekalongan Regency)', 'a. Pembangunan intake dan transmisi air baku\r\nb. Pembangunan IPA KAap. 1.100 l/dt', 'a. The development of raw water intake and transmission;\r\nb. The development of Water Treatment Plant with the capacity of 1.100 l/s', 95380000, 0, 2015, 60, 'a. Tersedianya sistem pengelolaan air minum yang berkapasitas 1100 liter/detik\r\nb. Untuk menyediakan SPAM yang melayani 142.999 SR di wilayah kebutuhan Kab. Batang, Kota Pekalongan, Kab. Pekalongan', 'Untuk menyediakan SPAM yang melayani kebutuhan Kab. Batang, Kota Pekalongan, Kab. Pekalongan', 0, '61,68', 1, 1, 1),
('23', 'Direktorat Jenderal Cipta Karya, Kementerian PUPR', '12', 2016, 'Pembangunan Sistem Penyediaan Air Minum Regional Maminasata (Makassar - Maros - Gowa - Takalar)', 'Mamminasata Water Supply Development Project (Makassar - Maros - Gowa - Takalar)', 'a. Pembangunan IPA Somba Opu Thap II, kap 1.000 l/s\r\nb. Pembangunan jaringan pipa transmisi\r\nc. Pengadaan jasa konsultan', 'a. The development of Water Treatment Plant of Somba Opu Phase II, with the capacity 1.000 l/s\r\nb. The development of transmission pipelines,\r\nc. The procurement of Consultant Services', 100000000, 0, 2015, 60, 'Untuk menyediakan SPAM yang melayani 149,925 SR di wilayah Maminasata (Makassar - Maros - Gowa - Takalar)', 'a. Tersedianya instalasi pengelolaan air minsum Somba Opu Tahap II yang berkapasitas 1000 liter/detik di wilayah Maminasata  (Makassar - Maros - Gowa - Takalar)\r\nb. Tersedianya jaringan pipa transmini\r\nc. Tersedianya jasa konsultasi\r\nd. Tersedianya sistem penyediaan air minum yang dapat melayani masyarakat dengan air yang memenuhi persyaratan.', 0, '309,321,91,88', 1, 1, 1),
('23', 'Direktorat Jenderal Cipta Karya, Kementerian PUPR', '12', 2016, 'Pembangunan Sistem Penyediaan Air Minum Regional Mebidang (Medan-Binjai-Deli Serdang)', 'The Development of Regional Water Supply System in Mebidang (Medan-Binjai-Deli Serdang)', 'a. Pembangunan IPA Kap. 1.250 liter/dt\r\nb. Pembangunan jaringan pipa transmisi', 'a. The development of Water Treatment Plant with the capacity of 1.250 l/s\r\nb. The development of transmission pipelines.', 56400000, 0, 2015, 60, 'Untuk menyediakan SPAM yang melayani 84.558 SR di wilayah Medan, Binjai, Deli Serdang.', '1. Tersedianya sistem jaringan pengelolaan air minum yang berkapasitas IPA I 1.250 liter/detik di wilayah Medan, Binjai, Deli Serdang.\r\n2. Tersedianya sistem penyediaan air minum yang dapat melayani masyarakat dengan air yang memenuhi persyaratan', 0, '217,11', 1, 1, 1),
('23', 'a. Direktorat Jenderal Cipta Karya, Kementerian PUPR', '12', 2016, 'Pembangunan Sistem Penyediaan Jaringan Air Minum Regional Banten - Jakarta dari DAM Karian', 'The Development of Regional Water Supply System of Banten - Jakarta from Karian Dam', 'a. Pembangunan IPA tahap I, kap. 518.000 m3/hari (6.000 liter/detik)\r\nb. Pembangunan IPA tahap I, kap. 348.000 m3/hari (4.000 liter/detik)\r\nc. Pembangunan pipa transmisi', 'a. The Development of Water Treatment Plant Phase I, with the capacity of 518.000 m3/day (6.000 l/s)\r\nb. a. The Development of Water Treatment Plant Phase I, with the capacity of 518.000 m3/day (6.000 l/s)', 4000000, 0, 2015, 60, 'Untuk  menyediakan SPAM yang melayani 59.970 SR', 'a. Tersedianya sistem jaringan pengelolaan air minum yang berkapasitas IPA I 6000 liter/detik dan IPA II 4000 liter/detik untuk wilayah DKI Jakarta, Tangerang, Bekasi, Serang, sebagian Bogor dan kawasan Cilegon.\r\nb. Tersedianya sitem penyediaan air minum yang dapat melayani masyarakat dengan air yang memenuhi persyaratan', 0, '344,61,374', 1, 1, 1),
('23', 'Direktorat Jenderal Cipta Karya, Kementerian PUPR', '3', 2016, 'Pengembangan dan Optimalisasi Pengolahan Air Limbah di Greater Bandung', 'The Development and Optimization of Wastewater Treatment in Greater Bandung', 'a. Review masterplan air limbah;\r\nb. Peningkatan cakupan layanan air limbah dengan prioritas mengoptimalkan IPAL Bojongsoang.', 'a. Review the Wastewater Master Plan,\r\nb. The improvement of wastewater service coverage with the priority of optimizing the WWTP Bojongsoang', 100000000, 0, 2015, 60, 'Peningkatan cakupan layanan air limbah yang dapat melayani 480 ribu jiwa di Area Greater Bandung.', 'Meningkatkan kualitas kehidupan penduduk dengan pembangunan dan peningkatan layanan air limbah.', 0, '346', 1, 1, 1),
('23', 'Direktorat Jenderal Cipta Karya, Kementerian PUPR', '12', 2016, 'Pembangunan Sistem Penyediaan Air Minum Regional Jatigede', 'The Development of Regional Water Supply System of Jatigede', 'a. Pembangunan intake dan transmisi air baku \r\nb. Pembangunan IPA Kap. 3.500 l/dt', 'a. The development of raw water intake and transmission,\r\nb. The development of Water Treatment Plant with the capacity of 3.500 l/s', 167000000, 0, 2015, 36, '1. Tersedianya sistem pengelolaan air minum yang berkapasitas 3.500 l/dt\r\n2. Tersedianya sistem penyediaan air minum yang dapat melayani masyarakat sebesar 250,375 SR', 'Untuk menyediakan SPAM yang melayani kebutuhan Kab. Sumedang, Kab. Majalengka, Kab. Indramayu, Kab. Cirebon, Kota Cirebon', 0, '263,270,12', 1, 1, 1),
('23', 'a. Direktorat Jenderal Cipta Karya, Kementerian PUPR', '12', 2016, 'Pembangunan Sistem Penyediaan Air Minum Regional Durolis', 'The Development of Regional Water Supply System of Durolis (Dumai - Rokan Hilir - Bengkalis)', 'a. Pembangunan unit air baku, unit produksi dan distribusi utama, unit pelayanan dan unit pengelolaan;\r\nb. Perijinan, penyediaan lahan, kompensasi pengambilan dan pemanfaatan air permukaan.', 'a. The development of raw water unit, production and main distribution unit, service unit and management unit,\r\nb. Licensing, provision of land, compensation of exploration and the utilization of surface water.', 33400000, 0, 2015, 36, 'a. Tersedianya sistem pengelolaan air minum yang berkapasitas 500 liter/detik;\r\nb. Teredianya sistem penyediaan air minum yang dapat melayani masyarakat sebesar 24.000 SR', 'Meningkatkan kesejahteraan masyarakat.', 0, '223,224,228', 1, 1, 1),
('23', 'Direktorat Jenderal Cipta Karya, Kementerian Pekerjaan Umum dan Perumahan Rakyat', '4', 2016, 'Pembangunan Fasilitas Pengolahan Lumpur Tinja / IPLT di Area Prioritas', 'The Development of Sewage Treatment Plant Facility in Priority Area', 'a. Penyediaan sarana prasarana IPLT: mobil tinja, pompa penyedot dan unit IPLT.\r\nb. Optimalisasi IPLT', 'a. The provision of sewage treatment plant facilities and infrastructures in the form of sewage trucks, sucking pumps and Sewage Treatment Plant Unit,\r\nb. The optimaztion of Sewage Treatment of IPLT.', 75000000, 0, 2015, 36, 'Tersedianya fasilitas sarana dan prasarana pengolahan lumpur tinja ang dapat melayani 7,2 juta jiwa', 'Penyediaan sarana dan prasaran dan unit IPLT sesuai dengan kapasitas lumpur yang dihasilkan dari septik tank', 0, '344', 1, 1, 1),
('23', 'Direktorat Jenderal Cipta Karya, Kementerian Pekerjaan Umum dan Perumahan Rakyat', '3', 2016, 'Pengembangan Sistem Pengolahan Air Limbah Terpusat di Denpasar Tahap 3', 'Denpasar Sewerage Development Project Phase 3', 'a. Jaringan Perpipaan dengan area pelayanan 2.200 Ha\r\nb. Stasiun Pompa (Transfer Pump stations as on Master Plan proposed tw (2) pump stations in Denpasar)\r\nc. Instalasi Pengolahan Air Limbah (Wastewater Treatment Plant = WWTP) - sebagai ekspansi dari IPAL yang sudah ada.', 'a. Pipeline networks with service area covers 2.200 Ha\r\nb. Two transfer pump stations in Denpasar as proposed in the Master Plan\r\nc. Wastewater Treatment Plant - as an expansion of the existing WWTP', 233000000, 0, 2015, 96, 'Untuk memperluas rasio cakupan sistem pembuangan air limbah dan membangun sistem operasi dan pemeliharaan yang dipimpin oleh pemerintah daerah dengan memperluas fasilitas pengolahan air limbah yang melayani 119 ribu jiwa di wilayah Denpasar dan Badung.', 'Proyek ini akan mendukung pengembanganlayanan air limbah menargetkan Kabupaten yang tidak tercakup oleh tersebut di atas Tahap 1 dan 2 Proyek, termasuk daerah yang mengandung berbagai fasilitas komersial seperti hotel dimana urgensi yang tinggi dan daerah dimana warga sangat menuntut layanan tersebut. Dengan meningkatkan lingkungan hidup dan alam diharapkan bahwa proyek ini akan memberikan kontribusi untuk mempromosikan pertumbuhan yang berkelanjutan.', 0, '271,105', 1, 1, 1),
('23', 'Direktorat Jenderal Cipta Karya, Kementerian Pekerjaan Umum dan Perumahan Rakyat', '12', 2016, 'Pembangunan Sistem Penyediaan Air Minum Regional Bengkulu Tengah, Kota Bengkulu, dan Kab. Seluma (BENTENG KOBEMA)', 'The Development of Regional Water Supply System in BENTENG KOBEMA ( Bengkulu Tengah, Kota Bengkulu, dan Kab. Seluma)', '1. IPA Pagar Jati 2x500 l/det\r\n2. Reservoir 18.000 m3\r\n3. Pipa transmisi air baku d. 500 mm, 12 km\r\n4. Pipa transmisi air bersih d.500 mm, 12.3 km\r\n5. Pipa distribusi d.500-1000, 41.15 km', '1. Pagar Jati Water Treatment Pmant 2 x 500 l/s\r\n2. Reservoir of 18.000 m3\r\n3. Raw water transmission pipelines with the diameter of 500 mm and the length of 12km\r\n4. Clean water transmission pipelines with the diameter of 500mm and the length of 12,3 km\r\n4. Distribution pipelines with the diameter of 500-1000 mm and the length of 41.15 km', 74300000, 0, 2015, 60, 'Untuk menyediakan SPAM yang melayani kebutuhan Kota Bengkulu, Kab. Bengkulu Tengah dan Kab. Seluma', '1. Tersedianya sistem pengelolaan air minum yang berkapasitas 900 liter/deti\r\n2. Tersedianya sistem penyediaan air minum yang dapat melayani masyarakat dengan air yang memenuhi persyaratan.', 0, '342', 1, 1, 1),
('23', 'Direktorat Jendera Bina Marga, Kementerian Pekerjaan Umum dan Perumahan Rakyat', '10', 2016, 'Pembangunan Jalan Tol Solo-Kertosono', 'Toll Road Development of Solo-Kertosono', 'Konstruksi jalan tol Solo - Kertosono sepanjang  ± 26.45KM', 'a. Construction of  ± 26.45 km toll road', 200000000, 0, 2015, 36, 'Tersedianya jalan tol Solo-Kertosono sepanjang ± 26.45KM', 'a. Perbaikan akses dan peningkatan kapasitas jaringan jalan serta distribusi barang dalam ruas Jogja-Surabayadan kota disekitarnya yang sejalan dengan pertumbuhan perekonomian dan wilayah.\r\nb. Meningkatnya pengembangan kota dan daerah sektiarnya guna peningkatan perekonomian serta mengurangi tingkat kemiskinan pada koridor ruas jalan tol tersebut.\r\nc. Meningkatnya efisiensi produksi dengan pengurangan biaya distribusi serta memberikan akses terhadap wilayah pasar regional dan internasional', 0, '347', 4, 1, 1),
('23', 'Direktorat Jendera Bina Marga, Kementerian Pekerjaan Umum dan Perumahan Rakyat', '10', 2016, 'Pembangunan Jalan Tol Manado - Bitung', 'Toll Road Development of Manado - Bitung', 'Konstruksi jalan tol sepanjang 7,3 km', 'Civil works for 7,3 km toll road', 80000000, 0, 2015, 60, 'a. Tersedianya jalan tol Manado - Bitung sepanjang 7,3 KM', 'a. Mendukung pembangunan Sulawesi Utara pada umumnya dan KAPET Manado - Bitung pada khususnya', 0, '367', 4, 1, 1),
('23', 'Direktorat Jendera Bina Marga, Kementerian Pekerjaan Umum dan Perumahan Rakyat', '10', 2016, 'Pembangunan Jalan Tol Balikpapan - Samarinda', 'Toll Road Development of Balikpapan - Samarinda', 'Konstruksi jalan tol sepanjang 11.09 km', 'Civil works for 11.09 km toll road', 65000000, 0, 2015, 36, 'a. Tersedianya jalan tol Balikpapan - Samarinda sepanjang 11.09 km', 'a. Meningkatnya aksesibilitas dan kapasitas jaringan jalan bagi pergerakan orang dan barang menuju dan dari Samarinda dan Balikpapan serta kota-kota lainnya.\r\nb. Meningkatnya pembangunan nasional dan wilayah pada koridor yang terkena dampak dan kota-kota di sepanjang jalan\r\nc. Meningkatnya produktivitas dari wilayah yang bersangkutan melalui pengurangan biaya distribusi dan meningkatnya akses menuju pasar wilayah dan internasional', 0, '352', 4, 1, 1);

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
(1, 32, 'surat', 'surat usulan', 'surat usulan', '32-20170919_085308-1.pdf', 20, '2018-03-20 19:42:24'),
(2, NULL, NULL, 'aaaaa', NULL, '10-3-permen-kp-2017-ttg-otk-lpmukp.pdf', 20, '2018-01-16 13:52:25'),
(4, 10, 'av', 'aaaaa', 'a', '10-1980-4379-1-SM.pdf', 20, '2018-01-16 14:01:52'),
(5, 10, 'a', 'aaaa', 'adad', '10-1505617328108(1).pdf', 20, '2018-01-16 14:05:32'),
(6, 10, 'v', 'd', 'z', '10-818-1499-1-PB(1).pdf', 20, '2018-01-16 14:11:17'),
(7, 10, 'a', 'aaaa', 'asas', '10-3460-6765-1-SM1.pdf', 20, '2018-01-16 14:14:32'),
(8, 10, 'a', 'aaaaa', 'ads', '10-3460-6765-1-SM2.pdf', 20, '2018-01-18 09:39:11'),
(10, 21, 'a', 'aa', 'aa', '21-Rapat_P4R_Stunting_Es_1_short.pdf', 20, '2018-02-07 10:21:36'),
(11, 193, 'a', 'aa', 'a', '193-Rapat_P4R_Stunting_Es_1_short.pdf', 20, '2018-02-07 10:28:36');

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

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_usulan_terkait`
-- (See below for the actual view)
--
CREATE TABLE `irena_usulan_terkait` (
`id` int(11)
,`instansi_pengusul` varchar(100)
,`instansi_pelaksana` text
,`judul` varchar(300)
,`ruang_lingkup_eng` text
,`pinjaman` bigint(20)
,`durasi` int(11)
,`output` text
);

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
(83, 26, 0, '2018-03-15 07:18:19', '', ''),
(84, 27, 0, '2018-03-15 08:25:44', '', ''),
(85, 28, 0, '2018-03-15 10:01:52', '', ''),
(86, 29, 0, '2018-03-15 10:09:47', '', ''),
(87, 30, 0, '2018-03-15 15:14:46', '', ''),
(88, 31, 0, '2018-03-16 03:45:24', '', ''),
(89, 32, 0, '2018-03-16 07:42:08', '', ''),
(90, 33, 0, '2018-03-19 14:24:20', '', ''),
(91, 34, 0, '2018-03-20 02:05:58', '', ''),
(92, 35, 0, '2018-03-20 02:17:41', '', ''),
(93, 36, 0, '2018-03-20 02:30:21', '', ''),
(94, 37, 0, '2018-03-20 02:46:16', '', ''),
(95, 38, 0, '2018-03-20 03:01:00', '', ''),
(96, 39, 0, '2018-03-20 03:11:32', '', ''),
(97, 40, 0, '2018-03-20 03:11:37', '', ''),
(98, 41, 0, '2018-03-20 03:11:49', '', ''),
(99, 48, 0, '2018-03-21 04:34:10', '', ''),
(100, 49, 0, '2018-03-22 03:35:34', '', ''),
(101, 50, 0, '2018-03-22 03:50:04', '', ''),
(102, 51, 0, '2018-03-22 04:26:17', '', ''),
(103, 52, 0, '2018-03-22 06:26:00', '', ''),
(104, 53, 0, '2018-03-22 06:36:24', '', ''),
(105, 54, 0, '2018-03-22 07:28:40', '', ''),
(106, 55, 0, '2018-03-22 07:40:44', '', ''),
(107, 56, 0, '2018-03-22 10:41:59', '', ''),
(108, 57, 0, '2018-03-22 11:52:32', '', ''),
(109, 58, 0, '2018-03-22 12:10:03', '', ''),
(110, 59, 0, '2018-03-23 04:31:41', '', ''),
(111, 60, 0, '2018-03-23 04:45:37', '', ''),
(112, 61, 0, '2018-03-23 07:00:46', '', ''),
(113, 62, 0, '2018-03-23 07:08:45', '', ''),
(114, 63, 0, '2018-03-23 07:24:12', '', ''),
(115, 64, 0, '2018-03-23 07:31:21', '', ''),
(116, 65, 0, '2018-03-23 07:50:01', '', ''),
(118, 67, 0, '2018-03-23 08:00:24', '', ''),
(119, 68, 0, '2018-03-23 08:22:23', '', ''),
(120, 69, 0, '2018-03-23 08:30:09', '', ''),
(121, 70, 0, '2018-03-23 08:57:09', '', ''),
(122, 71, 0, '2018-03-23 09:01:07', '', ''),
(123, 72, 0, '2018-03-23 09:06:08', '', ''),
(124, 73, 0, '2018-03-23 09:09:54', '', ''),
(125, 74, 0, '2018-03-23 09:15:34', '', ''),
(126, 75, 0, '2018-03-23 09:40:14', '', ''),
(127, 76, 0, '2018-03-23 09:44:03', '', ''),
(128, 77, 0, '2018-03-26 03:20:16', '', ''),
(129, 78, 0, '2018-03-26 03:50:04', '', ''),
(130, 79, 0, '2018-03-26 03:58:48', '', ''),
(131, 80, 0, '2018-03-26 04:19:40', '', ''),
(132, 81, 0, '2018-03-26 04:27:43', '', ''),
(133, 82, 0, '2018-03-26 04:36:48', '', ''),
(134, 83, 0, '2018-03-26 04:43:04', '', ''),
(135, 84, 0, '2018-03-26 04:55:32', '', ''),
(136, 85, 0, '2018-03-26 05:18:37', '', ''),
(137, 86, 0, '2018-03-26 06:09:56', '', ''),
(139, 88, 0, '2018-03-26 06:21:10', '', ''),
(140, 89, 0, '2018-03-26 06:45:05', '', ''),
(141, 90, 0, '2018-03-26 07:05:46', '', ''),
(142, 91, 0, '2018-03-26 07:14:41', '', ''),
(143, 92, 0, '2018-03-26 09:08:30', '', ''),
(144, 93, 0, '2018-03-26 09:18:16', '', ''),
(146, 95, 0, '2018-03-26 09:24:01', '', ''),
(147, 96, 0, '2018-03-26 09:32:51', '', ''),
(148, 97, 0, '2018-03-26 09:45:50', '', ''),
(149, 98, 0, '2018-03-26 09:53:33', '', ''),
(150, 99, 0, '2018-03-26 10:05:04', '', ''),
(151, 100, 0, '2018-03-26 10:33:18', '', ''),
(152, 101, 0, '2018-03-26 10:47:31', '', ''),
(153, 102, 0, '2018-03-26 10:53:13', '', ''),
(154, 103, 0, '2018-04-03 03:56:29', '', ''),
(155, 104, 0, '2018-04-16 04:05:42', '', ''),
(156, 105, 0, '2018-04-16 04:48:27', '', '');

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
-- Stand-in structure for view `irena_view_bb_lokasi`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_bb_lokasi` (
`id` int(11)
,`id_proyek` int(11)
,`instansi` varchar(100)
,`judul_proyek` varchar(300)
,`id_lokasi` int(11)
,`lokasi` varchar(255)
,`latitude` varchar(255)
,`longitude` varchar(255)
,`status_umum` varchar(40)
,`lender` varchar(100)
,`bb` varchar(100)
,`nilai_pinjaman` bigint(20)
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
-- Stand-in structure for view `irena_view_dk_lokasi`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_dk_lokasi` (
`id_proyek` int(11)
,`id_bb` int(11)
,`id_lokasi` int(11)
,`instansi` varchar(100)
,`judul_proyek` varchar(500)
,`nilai_pinjaman` bigint(20)
,`tgl_DK` date
,`lokasi` varchar(255)
,`gb` varchar(60)
,`bb` varchar(100)
,`lender` varchar(100)
,`latitude` varchar(255)
,`longitude` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_gb_lokasi`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_gb_lokasi` (
`id_proyek` int(11)
,`judul_proyek` varchar(500)
,`bb` varchar(100)
,`id_bb` int(11)
,`id_lokasi` int(11)
,`instansi` varchar(100)
,`id_gb` int(11)
,`gb` varchar(60)
,`lokasi` varchar(255)
,`latitude` varchar(255)
,`longitude` varchar(255)
,`nilai_pinjaman` bigint(20)
,`lender` varchar(100)
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
-- Stand-in structure for view `irena_view_instansi_bb`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_instansi_bb` (
`id_instansi` varchar(5)
,`id_bluebook` varchar(10)
,`SUM(nilai_pinjaman)` decimal(41,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_la_lokasi`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_la_lokasi` (
`id_proyek` int(11)
,`id_bb` int(11)
,`id_gb` int(11)
,`id_lokasi` int(11)
,`lokasi` varchar(255)
,`latitude` varchar(255)
,`longitude` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_lokasi_gabung_semua`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_lokasi_gabung_semua` (
`id_lokasi` int(11)
,`latitude` varchar(255)
,`longitude` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_pln_gabung_lokasi`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_pln_gabung_lokasi` (
`id_lokasi` int(11)
,`latitude` varchar(255)
,`longitude` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_sbsn_dpp_lokasi`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_sbsn_dpp_lokasi` (
`id_usulan` int(11)
,`id_lokasi` int(11)
,`judul` varchar(255)
,`nama_instansi` varchar(255)
,`nilai` double
,`DPP` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_sbsn_gabung_lokasi`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_sbsn_gabung_lokasi` (
`id_lokasi` int(11)
,`latitude` varchar(255)
,`longitude` varchar(255)
,`judul` varchar(255)
,`instansi` varchar(255)
,`dpp` varchar(255)
,`nilai` double
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
,`id_proyek_sbsn` int(11)
,`smc` varchar(255)
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
,`nilai_admin` int(11)
,`nilai_admin_id` int(11)
,`nilai_admin_ket` varchar(255)
,`nilai_admin_date` datetime
,`nilai_layak` int(11)
,`nilai_layak_id` int(11)
,`nilai_layak_ket` varchar(255)
,`nilai_layak_date` datetime
,`masuk_dpp` int(11)
,`masuk_dpp_id` int(11)
,`masuk_dpp_ket` varchar(255)
,`masuk_dpp_date` datetime
,`single_multi` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_sbsn_usulan_lokasi`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_sbsn_usulan_lokasi` (
`id_usulan` int(11)
,`id_lokasi` int(11)
,`judul_proyek` varchar(255)
,`nilai` double
,`masuk_dpp` int(11)
,`instansi` varchar(255)
,`lokasi` varchar(255)
,`latitude` varchar(255)
,`longitude` varchar(255)
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
-- Stand-in structure for view `irena_view_total_program`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_total_program` (
`id` int(11)
,`program` varchar(250)
,`instansi` varchar(100)
,`bb` varchar(100)
,`id_bb` int(11)
,`total_pinjaman` decimal(41,0)
,`dana_pendamping` decimal(41,0)
,`total_hibah` decimal(41,0)
,`total_kegiatan` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `irena_view_untuk_detail_modal`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_untuk_detail_modal` (
`id` int(11)
,`judul_usulan` varchar(300)
,`usulan_instansi` text
,`usulan_ruang_lingkup` text
,`usulan_pinjaman` bigint(20)
,`durasi_usulan` int(11)
,`usulan_lokasi` varchar(200)
,`id_proyek_bb` int(11)
,`bb_lokasi` varchar(200)
,`bb_judul` varchar(300)
,`nama_bb` varchar(100)
,`bb_pelaksana` text
,`bb_ruang_lingkup` text
,`bb_pinjaman` bigint(20)
,`bb_durasi` int(11)
,`id_proyek_gb` int(11)
,`gb_judul` varchar(500)
,`gb_ruang_lingkup` longtext
,`gb_lokasi` varchar(100)
,`gb_pelaksana` text
,`gb_pinjaman` bigint(20)
,`gb_durasi` int(11)
,`id_greenbook` varchar(11)
,`nama_gb` varchar(60)
,`id_proyek_dk` int(11)
,`dk_judul` varchar(500)
,`tgl_DK` date
,`dk_lokasi` varchar(100)
,`dk_pelaksana` text
,`dk_ruang_lingkup` longtext
,`dk_pinjaman` bigint(20)
,`dk_durasi` int(11)
,`id_proyek_la` int(11)
,`la_judul` varchar(500)
,`tgl_LA` date
,`la_pelaksana` text
,`la_ruang_lingkup` longtext
,`la_pinjaman` bigint(20)
,`la_lokasi` varchar(100)
,`la_durasi` int(11)
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
-- Stand-in structure for view `irena_view_usulan_terkait`
-- (See below for the actual view)
--
CREATE TABLE `irena_view_usulan_terkait` (
`id_bb_proyek` int(11)
,`id_usulan_baru` int(11)
,`id_usulan_terkait` int(11)
,`instansi_pengusul` varchar(100)
,`bb` varchar(100)
,`instansi_pelaksana` text
,`judul` varchar(300)
,`ruang_lingkup_eng` text
,`pinjaman` bigint(20)
,`durasi` int(11)
,`output` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `usulan_lokasi`
-- (See below for the actual view)
--
CREATE TABLE `usulan_lokasi` (
`id` int(11)
,`id_lokasi` int(11)
,`instansi` varchar(100)
,`judul` varchar(300)
,`nama` varchar(255)
,`latitude` varchar(255)
,`longitude` varchar(255)
,`nilai` bigint(20)
,`bb` int(11)
,`gb` int(11)
,`dk` int(11)
,`la` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `irena_usulan_terkait`
--
DROP TABLE IF EXISTS `irena_usulan_terkait`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_usulan_terkait`  AS  select `irena_usulan_pln`.`id` AS `id`,`irena_instansi_2`.`nama_instansi` AS `instansi_pengusul`,`irena_usulan_pln`.`instansi_pelaksana` AS `instansi_pelaksana`,`irena_usulan_pln`.`judul_proyek_eng` AS `judul`,`irena_usulan_pln`.`ruang_lingkup_eng` AS `ruang_lingkup_eng`,`irena_usulan_pln`.`dana_usulan` AS `pinjaman`,`irena_usulan_pln`.`durasi` AS `durasi`,`irena_usulan_pln`.`output` AS `output` from ((`irena_usulan_pln` left join `irena_instansi_2` on((`irena_instansi_2`.`id` = `irena_usulan_pln`.`id_instansi`))) left join `irena_usulan_historis` on((`irena_usulan_historis`.`id_usulan_terkait` = `irena_usulan_pln`.`id`))) where (`irena_usulan_historis`.`id_usulan_terkait` = 104) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_arsip`
--
DROP TABLE IF EXISTS `irena_view_arsip`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_arsip`  AS  select `irena_arsip`.`id` AS `id_arsip`,`irena_arsip`.`no` AS `no`,`irena_arsip`.`perihal` AS `perihal`,`irena_arsip`.`dari` AS `dari`,`irena_arsip`.`tgl` AS `tgl`,year(`irena_arsip`.`tgl`) AS `tahun_surat`,`irena_arsip_status`.`nama` AS `status`,`irena_arsip_jenis`.`nama` AS `jenis`,`irena_arsip_tingkat`.`nama` AS `tingkat`,`irena_user`.`nama_panggilan` AS `update_by`,`irena_arsip`.`update_date` AS `update_date`,`irena_arsip_status`.`class` AS `class`,`irena_arsip_jenis`.`icon` AS `icon`,`irena_arsip`.`ringkasan` AS `ringkasan`,`irena_arsip`.`keywords` AS `keyword`,`irena_arsip`.`berkas` AS `berkas`,`irena_arsip`.`tgl_terima` AS `tgl_terima`,`irena_user`.`foto` AS `foto`,`irena_arsip`.`selesai_cat` AS `selesai_cat`,`irena_arsip`.`selesai_by` AS `selesai_by`,`irena_arsip`.`selesai_date` AS `selesai_date` from ((((`irena_arsip` join `irena_arsip_jenis` on((`irena_arsip_jenis`.`id` = `irena_arsip`.`id_jenis`))) join `irena_arsip_status` on((`irena_arsip_status`.`id` = `irena_arsip`.`id_status`))) join `irena_arsip_tingkat` on((`irena_arsip_tingkat`.`id` = `irena_arsip`.`id_tingkat`))) join `irena_user` on((`irena_user`.`id` = `irena_arsip`.`update_by`))) order by `irena_arsip`.`update_by` desc ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_bb_lokasi`
--
DROP TABLE IF EXISTS `irena_view_bb_lokasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_bb_lokasi`  AS  select `irena_bb_lokasi`.`id` AS `id`,`irena_bb_lokasi`.`id_bb_proyek` AS `id_proyek`,`irena_instansi_2`.`nama_instansi` AS `instansi`,`irena_bluebook_proyek`.`judul_proyek_eng` AS `judul_proyek`,`irena_bb_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`nama` AS `lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude`,`irena_status_umum`.`nama` AS `status_umum`,`irena_lender`.`lender` AS `lender`,`irena_bluebook_kode`.`nama` AS `bb`,`irena_bluebook_proyek`.`nilai_pinjaman` AS `nilai_pinjaman` from ((((((`irena_bb_lokasi` join `irena_bluebook_proyek` on((`irena_bb_lokasi`.`id_bb_proyek` = `irena_bluebook_proyek`.`id`))) join `irena_instansi_2` on((`irena_bb_lokasi`.`id_instansi` = `irena_instansi_2`.`id`))) join `irena_bluebook_kode` on((`irena_bb_lokasi`.`id_bb` = `irena_bluebook_kode`.`id`))) join `irena_lender` on((`irena_bb_lokasi`.`id_lender` = `irena_lender`.`id`))) join `irena_status_umum` on((`irena_bb_lokasi`.`id_status` = `irena_status_umum`.`id`))) join `irena_provinsi_kabkota` on((`irena_bb_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_disposisi_internal`
--
DROP TABLE IF EXISTS `irena_view_disposisi_internal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_disposisi_internal`  AS  select `irena_arsip`.`no` AS `no_arsip`,`irena_arsip`.`tgl` AS `tgl_arsip`,`irena_arsip_status`.`nama` AS `status`,`irena_arsip`.`dari` AS `dari`,`irena_user`.`id` AS `id_user`,`irena_arsip_disposisi`.`catatan` AS `catatan`,`irena_arsip`.`id_status` AS `id_status`,`irena_arsip_status`.`class` AS `class`,`irena_arsip`.`berkas` AS `berkas_arsip`,`irena_arsip`.`id_jenis` AS `jenis_arsip`,`irena_arsip`.`id` AS `id_arsip`,`irena_user`.`nama_panggilan` AS `nama_panggilan` from ((((`irena_arsip_disposisi_internal` join `irena_arsip_disposisi` on((`irena_arsip_disposisi`.`id` = `irena_arsip_disposisi_internal`.`id_disposisi`))) join `irena_arsip` on((`irena_arsip`.`id` = `irena_arsip_disposisi`.`id_arsip`))) join `irena_arsip_status` on((`irena_arsip_status`.`id` = `irena_arsip`.`id_status`))) join `irena_user` on((`irena_user`.`id` = `irena_arsip_disposisi_internal`.`id_disposisi_user`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_dk_lokasi`
--
DROP TABLE IF EXISTS `irena_view_dk_lokasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_dk_lokasi`  AS  select `irena_dk_lokasi`.`id_dk_proyek` AS `id_proyek`,`irena_dk_lokasi`.`id_bb` AS `id_bb`,`irena_dk_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_instansi_2`.`nama_instansi` AS `instansi`,`irena_daftarkegiatan_proyek`.`judul_proyek_eng` AS `judul_proyek`,`irena_daftarkegiatan_proyek`.`nilai_pinjaman` AS `nilai_pinjaman`,`irena_daftarkegiatan_proyek`.`tgl_DK` AS `tgl_DK`,`irena_provinsi_kabkota`.`nama` AS `lokasi`,`irena_greenbook_kode`.`nama` AS `gb`,`irena_bluebook_kode`.`nama` AS `bb`,`irena_lender`.`lender` AS `lender`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude` from ((((((`irena_dk_lokasi` join `irena_provinsi_kabkota` on((`irena_dk_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) join `irena_lender` on((`irena_dk_lokasi`.`id_lender` = `irena_lender`.`id`))) join `irena_instansi_2` on((`irena_dk_lokasi`.`id_instansi` = `irena_instansi_2`.`id`))) join `irena_bluebook_kode` on((`irena_dk_lokasi`.`id_bb` = `irena_bluebook_kode`.`id`))) join `irena_greenbook_kode` on((`irena_dk_lokasi`.`id_gb` = `irena_greenbook_kode`.`id`))) join `irena_daftarkegiatan_proyek` on((`irena_dk_lokasi`.`id_dk_proyek` = `irena_daftarkegiatan_proyek`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_gb_lokasi`
--
DROP TABLE IF EXISTS `irena_view_gb_lokasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_gb_lokasi`  AS  select `irena_gb_lokasi`.`id_gb_proyek` AS `id_proyek`,`irena_greenbook_proyek`.`judul_proyek_eng` AS `judul_proyek`,`irena_bluebook_kode`.`nama` AS `bb`,`irena_gb_lokasi`.`id_bb` AS `id_bb`,`irena_gb_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_instansi_2`.`nama_instansi` AS `instansi`,`irena_gb_lokasi`.`id_gb` AS `id_gb`,`irena_greenbook_kode`.`nama` AS `gb`,`irena_provinsi_kabkota`.`nama` AS `lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude`,`irena_greenbook_proyek`.`nilai_pinjaman` AS `nilai_pinjaman`,`irena_lender`.`lender` AS `lender` from ((((((`irena_gb_lokasi` join `irena_provinsi_kabkota` on((`irena_gb_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) join `irena_greenbook_proyek` on((`irena_greenbook_proyek`.`id` = `irena_gb_lokasi`.`id_gb_proyek`))) join `irena_instansi_2` on((`irena_gb_lokasi`.`id_instansi` = `irena_instansi_2`.`id`))) join `irena_greenbook_kode` on((`irena_gb_lokasi`.`id_gb` = `irena_greenbook_kode`.`id`))) join `irena_bluebook_kode` on((`irena_gb_lokasi`.`id_bb` = `irena_bluebook_kode`.`id`))) join `irena_lender` on((`irena_gb_lokasi`.`id_lender` = `irena_lender`.`id`))) ;

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

-- --------------------------------------------------------

--
-- Structure for view `irena_view_hibah_usulan_awal`
--
DROP TABLE IF EXISTS `irena_view_hibah_usulan_awal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_hibah_usulan_awal`  AS  select `irena_hibah_proyek`.`id` AS `id`,`irena_instansi_eselon_satu`.`nama` AS `instansi_eselon_satu`,`irena_instansi`.`nama` AS `instansi`,`irena_instansi`.`singkatan` AS `instansi_singkatan`,`irena_hibah_proyek`.`judul_id` AS `judul_id`,`irena_hibah_proyek`.`judul_en` AS `judul_en`,`irena_hibah_proyek`.`nilai_hibah` AS `nilai_hibah`,`irena_hibah_proyek`.`nilai_admin` AS `nilai_admin`,`irena_hibah_proyek`.`nilai_admin_ket` AS `nilai_admin_ket`,`irena_hibah_proyek`.`nilai_admin_id` AS `nilai_admin_id`,`irena_hibah_proyek`.`nilai_admin_date` AS `nilai_admin_date`,`irena_hibah_proyek`.`nilai_layak` AS `nilai_layak`,`irena_hibah_proyek`.`nilai_layak_ket` AS `nilai_layak_ket`,`irena_hibah_proyek`.`nilai_layak_id` AS `nilai_layak_id`,`irena_hibah_proyek`.`nilai_layak_date` AS `nilai_layak_date`,`irena_hibah_proyek`.`masuk_drkh` AS `masuk_drkh`,`irena_hibah_proyek`.`masuk_drkh_ket` AS `masuk_drkh_ket`,`irena_hibah_proyek`.`masuk_drkh_id` AS `masuk_drkh_id`,`irena_hibah_proyek`.`masuk_drkh_date` AS `masuk_drkh_date`,`irena_user`.`nama_panggilan` AS `user_nama_panggilan`,`irena_hibah_proyek`.`update_date` AS `update_date`,`irena_hibah_donor`.`nama` AS `donor`,`irena_mata_uang`.`nama` AS `mata_uang`,`irena_mata_uang`.`singkatan` AS `mata_uang_singkatan`,`irena_hibah_proyek`.`durasi` AS `durasi`,`irena_hibah_proyek`.`nilai_dp` AS `nilai_dp`,`irena_hibah_proyek`.`ringkasan` AS `ringkasan`,`irena_hibah_jenis`.`nama` AS `jenis` from ((((((`irena_hibah_proyek` join `irena_instansi_eselon_satu` on((`irena_instansi_eselon_satu`.`id` = `irena_hibah_proyek`.`id_instansi_eselon_satu`))) join `irena_instansi` on((`irena_instansi`.`id` = `irena_instansi_eselon_satu`.`id_instansi`))) join `irena_user` on((`irena_user`.`id` = `irena_hibah_proyek`.`update_by`))) join `irena_hibah_donor` on((`irena_hibah_donor`.`id` = `irena_hibah_proyek`.`id_donor`))) join `irena_mata_uang` on((`irena_mata_uang`.`id` = `irena_hibah_proyek`.`id_mata_uang`))) join `irena_hibah_jenis` on((`irena_hibah_jenis`.`id` = `irena_hibah_proyek`.`id_jenis`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_instansi_bb`
--
DROP TABLE IF EXISTS `irena_view_instansi_bb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_instansi_bb`  AS  select `irena_bluebook_proyek`.`id_instansi` AS `id_instansi`,`irena_bluebook_proyek`.`id_bluebook` AS `id_bluebook`,sum(`irena_bluebook_proyek`.`nilai_pinjaman`) AS `SUM(nilai_pinjaman)` from `irena_bluebook_proyek` group by `irena_bluebook_proyek`.`id_instansi` ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_la_lokasi`
--
DROP TABLE IF EXISTS `irena_view_la_lokasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_la_lokasi`  AS  select `irena_la_lokasi`.`id` AS `id_proyek`,`irena_la_lokasi`.`id_bb` AS `id_bb`,`irena_la_lokasi`.`id_gb` AS `id_gb`,`irena_la_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`nama` AS `lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude` from (`irena_la_lokasi` join `irena_provinsi_kabkota` on((`irena_la_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_lokasi_gabung_semua`
--
DROP TABLE IF EXISTS `irena_view_lokasi_gabung_semua`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_lokasi_gabung_semua`  AS  select `irena_view_sbsn_gabung_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_view_sbsn_gabung_lokasi`.`latitude` AS `latitude`,`irena_view_sbsn_gabung_lokasi`.`longitude` AS `longitude` from (`irena_view_sbsn_gabung_lokasi` left join `irena_view_pln_gabung_lokasi` on((`irena_view_sbsn_gabung_lokasi`.`id_lokasi` = `irena_view_pln_gabung_lokasi`.`id_lokasi`))) union select `irena_view_pln_gabung_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_view_pln_gabung_lokasi`.`latitude` AS `latitude`,`irena_view_pln_gabung_lokasi`.`longitude` AS `longitude` from (`irena_view_pln_gabung_lokasi` left join `irena_view_sbsn_gabung_lokasi` on((`irena_view_sbsn_gabung_lokasi`.`id_lokasi` = `irena_view_pln_gabung_lokasi`.`id_lokasi`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_pln_gabung_lokasi`
--
DROP TABLE IF EXISTS `irena_view_pln_gabung_lokasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_pln_gabung_lokasi`  AS  select `irena_view_bb_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude` from ((`irena_view_bb_lokasi` left join `irena_view_gb_lokasi` on((`irena_view_bb_lokasi`.`id_lokasi` = `irena_view_gb_lokasi`.`id_lokasi`))) left join `irena_provinsi_kabkota` on((`irena_view_bb_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) union select `irena_view_dk_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude` from ((`irena_view_dk_lokasi` left join `irena_view_bb_lokasi` on((`irena_view_bb_lokasi`.`id_lokasi` = `irena_view_dk_lokasi`.`id_lokasi`))) left join `irena_provinsi_kabkota` on((`irena_view_dk_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) union select `irena_view_gb_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude` from ((`irena_view_gb_lokasi` left join `irena_view_dk_lokasi` on((`irena_view_gb_lokasi`.`id_lokasi` = `irena_view_dk_lokasi`.`id_lokasi`))) left join `irena_provinsi_kabkota` on((`irena_view_gb_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) union select `irena_view_la_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude` from ((`irena_view_la_lokasi` left join `irena_view_bb_lokasi` on((`irena_view_la_lokasi`.`id_lokasi` = `irena_view_bb_lokasi`.`id_lokasi`))) left join `irena_provinsi_kabkota` on((`irena_view_la_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) union select `irena_view_la_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude` from ((`irena_view_la_lokasi` left join `irena_view_gb_lokasi` on((`irena_view_la_lokasi`.`id_lokasi` = `irena_view_gb_lokasi`.`id_lokasi`))) left join `irena_provinsi_kabkota` on((`irena_view_la_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) union select `irena_view_la_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude` from ((`irena_view_la_lokasi` left join `irena_view_dk_lokasi` on((`irena_view_la_lokasi`.`id_lokasi` = `irena_view_dk_lokasi`.`id_lokasi`))) left join `irena_provinsi_kabkota` on((`irena_view_la_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) union select `usulan_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude` from ((`usulan_lokasi` left join `irena_view_dk_lokasi` on((`usulan_lokasi`.`id_lokasi` = `irena_view_dk_lokasi`.`id_lokasi`))) left join `irena_provinsi_kabkota` on((`usulan_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) union select `usulan_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude` from ((`usulan_lokasi` left join `irena_view_la_lokasi` on((`usulan_lokasi`.`id_lokasi` = `irena_view_la_lokasi`.`id_lokasi`))) left join `irena_provinsi_kabkota` on((`usulan_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) union select `usulan_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude` from ((`usulan_lokasi` left join `irena_view_gb_lokasi` on((`usulan_lokasi`.`id_lokasi` = `irena_view_gb_lokasi`.`id_lokasi`))) left join `irena_provinsi_kabkota` on((`usulan_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) union select `usulan_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude` from ((`usulan_lokasi` left join `irena_view_bb_lokasi` on((`usulan_lokasi`.`id_lokasi` = `irena_view_bb_lokasi`.`id_lokasi`))) left join `irena_provinsi_kabkota` on((`usulan_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_sbsn_dpp_lokasi`
--
DROP TABLE IF EXISTS `irena_view_sbsn_dpp_lokasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_dpp_lokasi`  AS  select `irena_dpp_lokasi`.`id_usulan` AS `id_usulan`,`irena_dpp_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_view_sbsn_proyek_dpp`.`judul` AS `judul`,`irena_view_sbsn_proyek_dpp`.`instansi` AS `nama_instansi`,`irena_view_sbsn_proyek_dpp`.`nilai` AS `nilai`,`irena_view_sbsn_proyek_dpp`.`dpp` AS `DPP` from (`irena_dpp_lokasi` join `irena_view_sbsn_proyek_dpp` on((`irena_view_sbsn_proyek_dpp`.`id_proyek` = `irena_dpp_lokasi`.`id_usulan`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_sbsn_gabung_lokasi`
--
DROP TABLE IF EXISTS `irena_view_sbsn_gabung_lokasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_gabung_lokasi`  AS  select `irena_view_sbsn_usulan_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude`,`irena_view_sbsn_usulan_lokasi`.`judul_proyek` AS `judul`,`irena_view_sbsn_usulan_lokasi`.`instansi` AS `instansi`,`irena_view_sbsn_usulan_lokasi`.`masuk_dpp` AS `dpp`,`irena_view_sbsn_usulan_lokasi`.`nilai` AS `nilai` from ((`irena_view_sbsn_usulan_lokasi` left join `irena_view_sbsn_dpp_lokasi` on((`irena_view_sbsn_dpp_lokasi`.`id_lokasi` = `irena_view_sbsn_usulan_lokasi`.`id_lokasi`))) left join `irena_provinsi_kabkota` on((`irena_provinsi_kabkota`.`id` = `irena_view_sbsn_usulan_lokasi`.`id_lokasi`))) union select `irena_view_sbsn_dpp_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude`,`irena_view_sbsn_dpp_lokasi`.`judul` AS `judul`,`irena_view_sbsn_dpp_lokasi`.`nama_instansi` AS `instansi`,`irena_view_sbsn_dpp_lokasi`.`DPP` AS `dpp`,`irena_view_sbsn_dpp_lokasi`.`nilai` AS `nilai` from ((`irena_view_sbsn_dpp_lokasi` left join `irena_view_sbsn_usulan_lokasi` on((`irena_view_sbsn_dpp_lokasi`.`id_lokasi` = `irena_view_sbsn_usulan_lokasi`.`id_lokasi`))) left join `irena_provinsi_kabkota` on((`irena_provinsi_kabkota`.`id` = `irena_view_sbsn_dpp_lokasi`.`id_lokasi`))) ;

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_proyek_dpp`  AS  select `irena_sbsn_proyek_dpp`.`id` AS `id`,`irena_sbsn_proyek_dpp`.`id_proyek` AS `id_proyek_sbsn`,`irena_sbsn_proyek`.`single_multi` AS `smc`,`irena_sbsn_proyek_dpp`.`judul` AS `judul`,`irena_sbsn_proyek_dpp`.`nilai` AS `nilai`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_sbsn_proyek_dpp`.`update_date` AS `update_date`,`irena_sbsn_proyek`.`id` AS `id_proyek`,`irena_instansi_eselon_satu`.`nama` AS `instansi_eselon_satu`,`irena_instansi`.`nama` AS `instansi`,`irena_instansi`.`singkatan` AS `instansi_singkatan`,`irena_sbsn_kategori_proyek`.`nama` AS `kategori_proyek`,`irena_sbsn_dpp`.`nama` AS `dpp`,`irena_user`.`id_user_level` AS `user_level`,`irena_sbsn_proyek`.`output` AS `output`,`irena_sbsn_proyek`.`latar_belakang` AS `latar_belakang`,`irena_sbsn_proyek`.`tujuan` AS `tujuan`,`irena_sbsn_proyek`.`ruang_lingkup` AS `ruang_lingkup` from ((((((`irena_sbsn_proyek_dpp` join `irena_sbsn_dpp` on((`irena_sbsn_dpp`.`id` = `irena_sbsn_proyek_dpp`.`id_dpp`))) join `irena_user` on((`irena_user`.`id` = `irena_sbsn_proyek_dpp`.`update_by`))) join `irena_sbsn_proyek` on((`irena_sbsn_proyek`.`id` = `irena_sbsn_proyek_dpp`.`id_proyek`))) join `irena_instansi_eselon_satu` on((`irena_instansi_eselon_satu`.`id` = `irena_sbsn_proyek`.`id_instansi_eselon_satu`))) join `irena_instansi` on((`irena_instansi`.`id` = `irena_instansi_eselon_satu`.`id_instansi`))) join `irena_sbsn_kategori_proyek` on((`irena_sbsn_kategori_proyek`.`id` = `irena_sbsn_proyek`.`id_kategori_proyek`))) ;

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
-- Structure for view `irena_view_sbsn_usulan_lokasi`
--
DROP TABLE IF EXISTS `irena_view_sbsn_usulan_lokasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_usulan_lokasi`  AS  select `irena_sbsn_usulan_lokasi`.`id_usulan` AS `id_usulan`,`irena_sbsn_usulan_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_sbsn_proyek`.`judul` AS `judul_proyek`,`irena_sbsn_proyek`.`nilai` AS `nilai`,`irena_sbsn_proyek`.`masuk_dpp` AS `masuk_dpp`,`irena_instansi`.`nama` AS `instansi`,`irena_provinsi_kabkota`.`nama` AS `lokasi`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude` from (((`irena_sbsn_usulan_lokasi` join `irena_sbsn_proyek` on((`irena_sbsn_proyek`.`id` = `irena_sbsn_usulan_lokasi`.`id_usulan`))) join `irena_instansi` on((`irena_instansi`.`id` = `irena_sbsn_usulan_lokasi`.`id_instansi`))) join `irena_provinsi_kabkota` on((`irena_provinsi_kabkota`.`id` = `irena_sbsn_usulan_lokasi`.`id_lokasi`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_sbsn_usulan_syarat`
--
DROP TABLE IF EXISTS `irena_view_sbsn_usulan_syarat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_sbsn_usulan_syarat`  AS  select `irena_sbsn_proyek_syarat`.`id` AS `id`,`irena_sbsn_proyek_syarat`.`kat` AS `kat`,`irena_sbsn_proyek_syarat`.`nama` AS `nama`,`irena_sbsn_proyek_syarat`.`ket` AS `ket`,`irena_sbsn_proyek_syarat`.`berkas` AS `berkas`,`irena_user`.`nama_panggilan` AS `nama_panggilan`,`irena_sbsn_proyek_syarat`.`id_proyek` AS `id_proyek` from (`irena_sbsn_proyek_syarat` join `irena_user` on((`irena_user`.`id` = `irena_sbsn_proyek_syarat`.`update_by`))) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_total_program`
--
DROP TABLE IF EXISTS `irena_view_total_program`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_total_program`  AS  select `irena_program_pln`.`id` AS `id`,`irena_program_pln`.`nama_program` AS `program`,`irena_instansi_2`.`nama_instansi` AS `instansi`,`irena_bluebook_kode`.`nama` AS `bb`,`irena_program_pln`.`id_bluebook` AS `id_bb`,sum(if(((`irena_bluebook_proyek`.`id_bluebook` = `irena_program_pln`.`id_bluebook`) and (`irena_bluebook_proyek`.`id_program` = `irena_program_pln`.`id`)),`irena_bluebook_proyek`.`nilai_pinjaman`,0)) AS `total_pinjaman`,sum(if(((`irena_bluebook_proyek`.`id_bluebook` = `irena_program_pln`.`id_bluebook`) and (`irena_bluebook_proyek`.`id_program` = `irena_program_pln`.`id`)),`irena_bluebook_proyek`.`dana_pendamping`,0)) AS `dana_pendamping`,sum(if(((`irena_bluebook_proyek`.`id_bluebook` = `irena_program_pln`.`id_bluebook`) and (`irena_bluebook_proyek`.`id_program` = `irena_program_pln`.`id`)),`irena_bluebook_proyek`.`nilai_hibah`,0)) AS `total_hibah`,count(if(((`irena_bluebook_proyek`.`id_bluebook` = `irena_program_pln`.`id_bluebook`) and (`irena_bluebook_proyek`.`id_program` = `irena_program_pln`.`id`)),`irena_bluebook_proyek`.`id`,NULL)) AS `total_kegiatan` from (((`irena_program_pln` left join `irena_bluebook_kode` on((`irena_bluebook_kode`.`id` = `irena_program_pln`.`id_bluebook`))) left join `irena_bluebook_proyek` on((`irena_bluebook_proyek`.`id_bluebook` = `irena_program_pln`.`id_bluebook`))) left join `irena_instansi_2` on((`irena_instansi_2`.`id` = `irena_program_pln`.`id_instansi`))) group by `irena_program_pln`.`nama_program` having (`total_kegiatan` > 0) ;

-- --------------------------------------------------------

--
-- Structure for view `irena_view_untuk_detail_modal`
--
DROP TABLE IF EXISTS `irena_view_untuk_detail_modal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_untuk_detail_modal`  AS  select `irena_usulan_pln`.`id` AS `id`,`irena_usulan_pln`.`judul_proyek_eng` AS `judul_usulan`,`irena_usulan_pln`.`instansi_pelaksana` AS `usulan_instansi`,`irena_usulan_pln`.`ruang_lingkup_eng` AS `usulan_ruang_lingkup`,`irena_usulan_pln`.`dana_usulan` AS `usulan_pinjaman`,`irena_usulan_pln`.`durasi` AS `durasi_usulan`,`irena_usulan_pln`.`lokasi` AS `usulan_lokasi`,`irena_bluebook_proyek`.`id` AS `id_proyek_bb`,`irena_bluebook_proyek`.`lokasi` AS `bb_lokasi`,`irena_bluebook_proyek`.`judul_proyek_eng` AS `bb_judul`,`irena_bluebook_kode`.`nama` AS `nama_bb`,`irena_bluebook_proyek`.`instansi_pelaksana` AS `bb_pelaksana`,`irena_bluebook_proyek`.`ruang_lingkup_eng` AS `bb_ruang_lingkup`,`irena_bluebook_proyek`.`nilai_pinjaman` AS `bb_pinjaman`,`irena_bluebook_proyek`.`durasi` AS `bb_durasi`,`irena_greenbook_proyek`.`id` AS `id_proyek_gb`,`irena_greenbook_proyek`.`judul_proyek_eng` AS `gb_judul`,`irena_greenbook_proyek`.`ruang_lingkup_eng` AS `gb_ruang_lingkup`,`irena_greenbook_proyek`.`lokasi` AS `gb_lokasi`,`irena_greenbook_proyek`.`instansi_pelaksana` AS `gb_pelaksana`,`irena_greenbook_proyek`.`nilai_pinjaman` AS `gb_pinjaman`,`irena_greenbook_proyek`.`durasi` AS `gb_durasi`,`irena_greenbook_proyek`.`id_greenbook` AS `id_greenbook`,`irena_greenbook_kode`.`nama` AS `nama_gb`,`irena_daftarkegiatan_proyek`.`id` AS `id_proyek_dk`,`irena_daftarkegiatan_proyek`.`judul_proyek_eng` AS `dk_judul`,`irena_daftarkegiatan_proyek`.`tgl_DK` AS `tgl_DK`,`irena_daftarkegiatan_proyek`.`lokasi` AS `dk_lokasi`,`irena_daftarkegiatan_proyek`.`instansi_pelaksana` AS `dk_pelaksana`,`irena_daftarkegiatan_proyek`.`ruang_lingkup_eng` AS `dk_ruang_lingkup`,`irena_daftarkegiatan_proyek`.`nilai_pinjaman` AS `dk_pinjaman`,`irena_daftarkegiatan_proyek`.`durasi` AS `dk_durasi`,`irena_la_proyek`.`id` AS `id_proyek_la`,`irena_la_proyek`.`judul_proyek_eng` AS `la_judul`,`irena_la_proyek`.`tgl_LA` AS `tgl_LA`,`irena_la_proyek`.`instansi_pelaksana` AS `la_pelaksana`,`irena_la_proyek`.`ruang_lingkup_eng` AS `la_ruang_lingkup`,`irena_la_proyek`.`nilai_pinjaman` AS `la_pinjaman`,`irena_la_proyek`.`lokasi` AS `la_lokasi`,`irena_la_proyek`.`durasi` AS `la_durasi` from ((((((`irena_usulan_pln` left join `irena_bluebook_proyek` on((`irena_bluebook_proyek`.`id_usulan` = `irena_usulan_pln`.`id`))) left join `irena_greenbook_proyek` on((`irena_greenbook_proyek`.`id_bb_proyek` = `irena_bluebook_proyek`.`id`))) left join `irena_daftarkegiatan_proyek` on((`irena_daftarkegiatan_proyek`.`id_gb_proyek` = `irena_greenbook_proyek`.`id`))) left join `irena_la_proyek` on((`irena_la_proyek`.`id_dk_proyek` = `irena_daftarkegiatan_proyek`.`id`))) left join `irena_greenbook_kode` on((`irena_greenbook_kode`.`id` = `irena_greenbook_proyek`.`id_greenbook`))) left join `irena_bluebook_kode` on((`irena_bluebook_kode`.`id` = `irena_bluebook_proyek`.`id_bluebook`))) ;

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

-- --------------------------------------------------------

--
-- Structure for view `irena_view_usulan_terkait`
--
DROP TABLE IF EXISTS `irena_view_usulan_terkait`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `irena_view_usulan_terkait`  AS  select `irena_bluebook_proyek`.`id` AS `id_bb_proyek`,`irena_usulan_historis`.`id_usulan` AS `id_usulan_baru`,`irena_usulan_historis`.`id_usulan_terkait` AS `id_usulan_terkait`,`irena_instansi_2`.`nama_instansi` AS `instansi_pengusul`,`irena_bluebook_kode`.`nama` AS `bb`,`irena_bluebook_proyek`.`instansi_pelaksana` AS `instansi_pelaksana`,`irena_bluebook_proyek`.`judul_proyek_eng` AS `judul`,`irena_bluebook_proyek`.`ruang_lingkup_eng` AS `ruang_lingkup_eng`,`irena_bluebook_proyek`.`nilai_pinjaman` AS `pinjaman`,`irena_bluebook_proyek`.`durasi` AS `durasi`,`irena_bluebook_proyek`.`output` AS `output` from (((`irena_bluebook_proyek` join `irena_instansi_2` on((`irena_instansi_2`.`id` = `irena_bluebook_proyek`.`id_instansi`))) join `irena_usulan_historis` on((`irena_usulan_historis`.`id_usulan_terkait` = `irena_bluebook_proyek`.`id_usulan`))) join `irena_bluebook_kode` on((`irena_bluebook_kode`.`id` = `irena_bluebook_proyek`.`id_bluebook`))) ;

-- --------------------------------------------------------

--
-- Structure for view `usulan_lokasi`
--
DROP TABLE IF EXISTS `usulan_lokasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usulan_lokasi`  AS  select `irena_usulan_lokasi`.`id_usulan` AS `id`,`irena_usulan_lokasi`.`id_lokasi` AS `id_lokasi`,`irena_instansi_2`.`nama_instansi` AS `instansi`,`irena_usulan_pln`.`judul_proyek_eng` AS `judul`,`irena_provinsi_kabkota`.`nama` AS `nama`,`irena_provinsi_kabkota`.`latitude` AS `latitude`,`irena_provinsi_kabkota`.`longitude` AS `longitude`,`irena_usulan_pln`.`dana_usulan` AS `nilai`,`irena_usulan_pln`.`is_BB` AS `bb`,`irena_usulan_pln`.`is_GB` AS `gb`,`irena_usulan_pln`.`is_DK` AS `dk`,`irena_usulan_pln`.`is_LA` AS `la` from (((`irena_usulan_lokasi` join `irena_usulan_pln` on((`irena_usulan_lokasi`.`id_usulan` = `irena_usulan_pln`.`id`))) join `irena_instansi_2` on((`irena_usulan_lokasi`.`id_instansi` = `irena_instansi_2`.`id`))) join `irena_provinsi_kabkota` on((`irena_usulan_lokasi`.`id_lokasi` = `irena_provinsi_kabkota`.`id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catatan_bb`
--
ALTER TABLE `catatan_bb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catatan_dk`
--
ALTER TABLE `catatan_dk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catatan_gb`
--
ALTER TABLE `catatan_gb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catatan_la`
--
ALTER TABLE `catatan_la`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `irena_bb_lokasi`
--
ALTER TABLE `irena_bb_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_bluebook_kode`
--
ALTER TABLE `irena_bluebook_kode`
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
-- Indexes for table `irena_dk_lokasi`
--
ALTER TABLE `irena_dk_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_dpp_lokasi`
--
ALTER TABLE `irena_dpp_lokasi`
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
-- Indexes for table `irena_gb_lokasi`
--
ALTER TABLE `irena_gb_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_gb_pba`
--
ALTER TABLE `irena_gb_pba`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_greenbook_kode`
--
ALTER TABLE `irena_greenbook_kode`
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
-- Indexes for table `irena_la_lokasi`
--
ALTER TABLE `irena_la_lokasi`
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
-- Indexes for table `irena_sbsn_kategori`
--
ALTER TABLE `irena_sbsn_kategori`
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
-- Indexes for table `irena_sbsn_usulan_lokasi`
--
ALTER TABLE `irena_sbsn_usulan_lokasi`
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
-- Indexes for table `irena_usulan_historis`
--
ALTER TABLE `irena_usulan_historis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_usulan_kronologis`
--
ALTER TABLE `irena_usulan_kronologis`
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
-- Indexes for table `irena_usulan_lokasi`
--
ALTER TABLE `irena_usulan_lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_usulan_pln`
--
ALTER TABLE `irena_usulan_pln`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `irena_usulan_pln_1`
--
ALTER TABLE `irena_usulan_pln_1`
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
-- AUTO_INCREMENT for table `catatan_bb`
--
ALTER TABLE `catatan_bb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `catatan_dk`
--
ALTER TABLE `catatan_dk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `catatan_gb`
--
ALTER TABLE `catatan_gb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `catatan_la`
--
ALTER TABLE `catatan_la`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `irena_bb_lokasi`
--
ALTER TABLE `irena_bb_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `irena_bluebook_kode`
--
ALTER TABLE `irena_bluebook_kode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `irena_bluebook_proyek`
--
ALTER TABLE `irena_bluebook_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;
--
-- AUTO_INCREMENT for table `irena_daftarkegiatan_proyek`
--
ALTER TABLE `irena_daftarkegiatan_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `irena_dk_layak`
--
ALTER TABLE `irena_dk_layak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `irena_dk_lokasi`
--
ALTER TABLE `irena_dk_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `irena_dpp_lokasi`
--
ALTER TABLE `irena_dpp_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `irena_eselon_1`
--
ALTER TABLE `irena_eselon_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1128;
--
-- AUTO_INCREMENT for table `irena_gb_layak`
--
ALTER TABLE `irena_gb_layak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `irena_gb_lokasi`
--
ALTER TABLE `irena_gb_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `irena_gb_pba`
--
ALTER TABLE `irena_gb_pba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_greenbook_kode`
--
ALTER TABLE `irena_greenbook_kode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `irena_greenbook_proyek`
--
ALTER TABLE `irena_greenbook_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
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
-- AUTO_INCREMENT for table `irena_la_lokasi`
--
ALTER TABLE `irena_la_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `irena_la_proyek`
--
ALTER TABLE `irena_la_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `irena_program_pln`
--
ALTER TABLE `irena_program_pln`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `irena_provinsi_kabkota`
--
ALTER TABLE `irena_provinsi_kabkota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;
--
-- AUTO_INCREMENT for table `irena_sbsn_dpp`
--
ALTER TABLE `irena_sbsn_dpp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `irena_sbsn_kategori`
--
ALTER TABLE `irena_sbsn_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `irena_sbsn_kategori_proyek`
--
ALTER TABLE `irena_sbsn_kategori_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `irena_sbsn_proyek`
--
ALTER TABLE `irena_sbsn_proyek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=596;
--
-- AUTO_INCREMENT for table `irena_sbsn_proyek_dpp`
--
ALTER TABLE `irena_sbsn_proyek_dpp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `irena_sbsn_usulan_lokasi`
--
ALTER TABLE `irena_sbsn_usulan_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `irena_user_log`
--
ALTER TABLE `irena_user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `irena_usulan_adm`
--
ALTER TABLE `irena_usulan_adm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;
--
-- AUTO_INCREMENT for table `irena_usulan_historis`
--
ALTER TABLE `irena_usulan_historis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `irena_usulan_kronologis`
--
ALTER TABLE `irena_usulan_kronologis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `irena_usulan_layak`
--
ALTER TABLE `irena_usulan_layak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
--
-- AUTO_INCREMENT for table `irena_usulan_lokasi`
--
ALTER TABLE `irena_usulan_lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT for table `irena_usulan_pln`
--
ALTER TABLE `irena_usulan_pln`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
--
-- AUTO_INCREMENT for table `irena_usulan_pln_1`
--
ALTER TABLE `irena_usulan_pln_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `irena_usulan_pln_dok`
--
ALTER TABLE `irena_usulan_pln_dok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `irena_usulan_pln_log`
--
ALTER TABLE `irena_usulan_pln_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `irena_usulkan_bb`
--
ALTER TABLE `irena_usulkan_bb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
