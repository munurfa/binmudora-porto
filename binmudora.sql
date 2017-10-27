-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 16, 2016 at 01:01 PM
-- Server version: 10.1.12-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `binmudora`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikels`
--

CREATE TABLE `artikels` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `isi` text COLLATE utf8_unicode_ci NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
  `kategori` enum('Berita','Berita Utama','Halaman') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `artikels`
--

INSERT INTO `artikels` (`id`, `judul`, `isi`, `image`, `kategori`, `created_at`, `updated_at`) VALUES
(2, 'Koordinasi dan sinkronisasi Asrama Atlet ke Pemerintah Provisi Kalimantan Timur', '04/04, Pelaksanaan Koordinasi dan Sinkronisasi Asrama Atlet ke Pemerintah Provisi Kalimantan Timur telah dilaksanakan tanggal 29 s/d 31 Maret 2016. Kegiatan ini bertujuan untuk Koordinasi dan sinkronisasi dalam penyususnan DED Asrama Atlet di kawasan Jatidiri. Sebanyak 11 orang ikut dalam kegiatan ini yaitu Kepala DINPORA Prov. Jateng, Sekertasis DINPORA Prov. Jateng, kabid Sarpras dan Kemitraan DINPORA Prov. Jateng, kasi Pembinaan dan Pengembanan Sarpras, Kasi Kemitraan dan Informasi, Staf bidang Sarpras dan Kemitraan, serta 3 orang dari PT Pola Dwipa selaku perencana asrama atlet Jatidiri.\r\n\r\nDalam kunjungannya rombongan DINPORA Prov. Jateng meninjau beberapa lokasi, yaitu Asrama Atlet di Sempaja dan Asrama Atlet SKOI (Sekolah Khusus Olahraga Internasional). Untuk asrama atlet di Sempaja mempunyai luas tanah ± 60 Ha dengan bangunan asrama atlet 2 lantai dan total kamar 96 ruang untuk setiap kamar dapat di isi 2 orang dengan fasilitas almari, meja, AC, dan tempat tidur. Asrama Sempaja ini digunakan untuk atlet berpresatsi dan non pelajar. Sedangkan asrama atlet SKOI merupakan asrama bagi pelajar SD,SMP,SMA dengan luas lahan seluas 10 Ha dan 144 kamar setiap kamar diisi oleh 4 orang. Sejak tahun 2013 SKOI sudah mendapatkan akreditasi A sehingga memiliki kewenangan tersendiri terhadap sistem pendidikannya. Terdapat ± 400 atlet terdiri dari 40 siswa PPLP/PPLM dan sisanya dihuni oleh siswa SKOI dari 34 cabang olahraga.', '2.png', 'Berita', '2016-04-09 19:16:32', '2016-04-09 19:47:42'),
(3, 'coba gambar', '<p><img src="/source/login-title.png?1460358519744" alt="login-title" /><strong>kdajlskdjalskdjlas</strong></p>\r\n<h1 style="text-align: center;"><strong>asldaslkda;ls</strong></h1>', NULL, 'Berita', '2016-04-09 22:39:21', '2016-04-11 14:08:52'),
(4, 'Coba Hari ini', '<p><img src="/source/c1oba.png?1460361320246" alt="" width="144" height="100" /></p>\r\n<p>saat dicoba hasilnya.......</p>', NULL, 'Halaman', '2016-04-11 14:55:49', '2016-04-11 14:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `atlits`
--

CREATE TABLE `atlits` (
  `id` int(10) UNSIGNED NOT NULL,
  `cabang` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `jenis` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kel` enum('Laki-Laki','Perempuan') COLLATE utf8_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tinggi_badan` int(11) DEFAULT NULL,
  `berat_badan` int(11) DEFAULT NULL,
  `spesialis` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `potensial` enum('Ya','Tidak') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Aktif','Non-Aktif') COLLATE utf8_unicode_ci NOT NULL,
  `tanggal_status` date DEFAULT NULL,
  `foto` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `atlits`
--

INSERT INTO `atlits` (`id`, `cabang`, `jenis`, `kota_kab`, `nama`, `tmp_lahir`, `tgl_lahir`, `alamat`, `jenis_kel`, `no_telp`, `tinggi_badan`, `berat_badan`, `spesialis`, `potensial`, `status`, `tanggal_status`, `foto`, `created_at`, `updated_at`) VALUES
(6, '052', '04', 'Kabupaten Pemalang', 'khoirun nisa insani', 'Pemalang', '0000-00-00', '', 'Perempuan', '', 0, 0, 'shansao', 'Tidak', 'Aktif', '2015-11-12', '6.png', '2015-11-12 04:14:42', '2016-04-09 19:45:23'),
(7, '052', '04', 'Kabupaten Pemalang', 'Ida Rahmat Hidayat', 'PEMALANG', '1998-03-12', '', 'Laki-Laki', '', 0, 0, 'Shansao', 'Ya', 'Aktif', '2012-11-11', NULL, '2015-11-12 04:20:40', '2015-11-12 06:00:36'),
(8, '040', '04', 'Kabupaten Pemalang', 'Ahmad Nur Hasanudin', 'Pemalang', '1995-01-15', 'Desa Mojo , RT 18 RW 1 Kec. Ulujami', 'Laki-Laki', '', 170, 60, 'Smasher', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 04:27:07', '2015-11-12 04:27:07'),
(9, '025', '04', 'Kabupaten Pemalang', 'SOVA AZMI SAPUTRA', 'Semarang', '1994-04-19', 'Bojongbata Pemalang', 'Laki-Laki', '', 0, 0, 'Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 04:33:50', '2015-11-12 06:59:22'),
(10, '011', '04', 'Kabupaten Pemalang', 'VINA SONDANG MALAU', 'PEMALANG', '1998-04-10', 'SMA N 2 PEMALANG jl.Jendral Sudirman No.14 Pemalang. ', 'Perempuan', '', 165, 55, 'QUIQKER', 'Ya', 'Aktif', '2014-10-14', NULL, '2015-11-12 04:34:21', '2015-11-12 04:34:21'),
(11, '006', '02', 'Kabupaten Pemalang', 'satya rian bagaskara', 'pemalang', '1996-04-19', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 04:36:53', '2015-11-12 04:36:53'),
(12, '011', '04', 'Kabupaten Pemalang', 'DEWI RESTU', 'PEMALANG', '1997-11-12', 'SMA N 1 PEMALANG Jl. Jenderal Gatot Subroto, Pemalang, Jawa Tengah', 'Perempuan', '', 166, 55, 'SERVIS', 'Ya', 'Aktif', '2013-10-10', NULL, '2015-11-12 04:37:15', '2015-11-12 04:37:15'),
(13, '025', '04', 'Kabupaten Pemalang', 'MOH. DEDE IRAWAN', 'Pemalang', '1993-11-08', 'Kalibaros Taman Pemalang', 'Laki-Laki', '', 0, 0, 'Kumite ', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 04:37:21', '2015-11-12 07:00:26'),
(14, '048', '08', 'Kabupaten Pemalang', 'Kiswantoro', 'Pemalang', '0000-00-00', 'Beji', 'Laki-Laki', '', 160, 59, 'T8', 'Ya', 'Aktif', '2013-12-28', NULL, '2015-11-12 04:39:08', '2015-11-12 04:39:08'),
(15, '006', '02', 'Kabupaten Pemalang', 'Hendra Rian', 'pemalang', '1994-04-22', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 04:39:47', '2015-11-12 04:39:47'),
(16, '006', '02', 'Kabupaten Pemalang', 'Andre Rian', 'pemalang', '1991-11-08', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 04:39:58', '2015-11-12 04:39:58'),
(17, '034', '02', 'Kabupaten Pemalang', 'Raiyan Achmad Pamungkas', 'Pemalang', '1999-01-03', 'Randudongkal', 'Laki-Laki', '', 175, 60, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 04:39:58', '2015-11-12 06:54:35'),
(18, '005', '08', 'Kabupaten Pemalang', 'Nurefendi', 'Pemalang', '0000-00-00', 'Pemalang', 'Laki-Laki', '', 167, 50, 'Lari 100 m, 200 m dan 400 m / T11', 'Ya', 'Aktif', '2013-12-28', NULL, '2015-11-12 04:42:29', '2015-11-12 04:42:29'),
(19, '032', '04', 'Kabupaten Pemalang', 'al insan mutakin', 'pemalang', '1992-04-25', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 04:43:02', '2015-11-12 07:09:44'),
(20, '013', '04', 'Kabupaten Pemalang', 'Eka Ayu Dessetiani', 'Pemalang', '1992-12-24', 'Jl. Wahid Hasyim No.19 Rt.002 Rw.004 Dusun Tembara Desa Kaligelang Kec. Taman Kab. Pemalang', 'Perempuan', '089678158980', 149, 49, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 04:44:00', '2015-11-12 04:44:00'),
(21, '034', '04', 'Kabupaten Pemalang', 'Agung Sektiyono', 'Pemalang', '1998-08-20', 'Randudongkal', 'Laki-Laki', '', 169, 54, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 04:44:08', '2015-11-12 06:55:54'),
(22, '006', '02', '', 'Muhamad Lucky', 'pemalang', '1992-11-12', '', 'Laki-Laki', '', 0, 0, 'Balap Motor', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 04:44:48', '2015-11-12 04:44:48'),
(23, '006', '02', 'Kabupaten Pemalang', 'Yudha Dwi Mahendra', 'pemalang', '1994-11-15', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 04:44:54', '2015-11-12 04:44:54'),
(24, '032', '04', 'Kabupaten Pemalang', 'tasripin', 'pemalang', '1992-04-09', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 04:46:56', '2015-11-12 04:46:56'),
(25, '013', '04', 'Kabupaten Pemalang', 'Adhiyat Dwi Saputra', 'Pemalang', '1990-08-23', 'Desa Cibelok Kec. Taman Kab. Pemalang', 'Laki-Laki', '', 0, 0, 'Ganda Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 04:51:14', '2015-11-12 04:51:14'),
(26, '037', '04', 'Kabupaten Pemalang', 'Idah tresnowati', 'pemalang', '1988-05-04', 'Pamutih,Ulujami', 'Perempuan', '087710290114', 152, 62, 'balok keseimbangan', 'Ya', 'Non-Aktif', '2010-11-16', '26.jpg', '2015-11-12 04:51:31', '2015-11-12 06:27:32'),
(27, '037', '04', 'Kabupaten Pemalang', 'Ana kustianingrum', 'Pemalang', '1989-08-08', 'Padek, Ulujami', 'Perempuan', '', 0, 52, '', 'Ya', 'Non-Aktif', '2006-11-01', NULL, '2015-11-12 04:55:36', '2015-11-12 04:55:36'),
(28, '037', '04', 'Kabupaten Pemalang', 'Riski diah ayu permata', 'Pemalang', '1990-03-12', 'Pamutih, Ulujami', 'Perempuan', '', 155, 55, 'Ritmik', 'Tidak', 'Non-Aktif', '2005-03-01', NULL, '2015-11-12 05:00:06', '2015-11-12 05:00:06'),
(30, '037', '04', 'Kabupaten Pemalang', 'Dwi purnomo', 'Pemalang', '1992-10-10', 'Pamutih, Ulujami', 'Laki-Laki', '', 165, 60, 'Gelang Gelang', 'Ya', 'Aktif', '0000-00-00', '30.jpg', '2015-11-12 05:03:56', '2015-11-12 05:03:56'),
(31, '040', '04', 'Kabupaten Pemalang', 'M. Romdhon Baharudin', 'PEMALANG', '1999-01-01', 'Ds. Kauman RT 1 RW 1, Kec. Comal', 'Laki-Laki', '', 0, 0, 'Smasher', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:06:22', '2015-11-12 05:06:22'),
(32, '011', '04', 'Kabupaten Pemalang', 'DWI FANI NAURA ', 'PEMALANG', '1998-04-01', 'SMAN 1 PEMALANG Jl. Jenderal Gatot Subroto, Pemalang, Jawa Tengah', 'Perempuan', '', 167, 55, 'LIBERO', 'Ya', 'Aktif', '2014-09-09', NULL, '2015-11-12 05:07:56', '2015-11-12 05:07:56'),
(33, '037', '04', 'Kabupaten Pemalang', 'Ari oktaviana nidiastuti', 'Pemalang', '1992-10-07', 'Padek, Ulujami', 'Perempuan', '', 152, 50, 'Lantai', 'Tidak', 'Non-Aktif', '0000-00-00', NULL, '2015-11-12 05:09:28', '2015-11-12 05:09:28'),
(34, '011', '04', 'Kabupaten Pemalang', 'INDAH ARYANI', 'PEMALANG', '1998-03-20', 'SMAN 1 PEMALANG Jl. Jenderal Gatot Subroto, Pemalang, Jawa Tengah', 'Perempuan', '', 165, 53, 'LIBERO', 'Ya', 'Aktif', '2013-02-20', NULL, '2015-11-12 05:10:17', '2015-11-12 05:10:17'),
(35, '037', '04', 'Kabupaten Pemalang', 'Sri Linda sari', 'Pemalang', '1995-06-08', 'Padek, Ulujami', 'Perempuan', '', 152, 49, 'Lantai', 'Tidak', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:11:11', '2015-11-12 05:11:11'),
(36, '011', '04', 'Kabupaten Pemalang', 'ARISTA SALINDRI', 'PEMALANG', '1999-01-02', 'SMAN 2 PEMALANG jl.Jendral Sudirman No.14 Pemalang.', 'Perempuan', '', 166, 54, 'LIBERO', 'Ya', 'Aktif', '2013-07-23', NULL, '2015-11-12 05:12:33', '2015-11-12 05:12:33'),
(37, '037', '04', 'Kabupaten Pemalang', 'Eni rohmana', 'Pemalang', '1995-03-11', 'Padek,Ulujami', 'Perempuan', '', 155, 49, 'Lantai', 'Ya', 'Non-Aktif', '0000-00-00', NULL, '2015-11-12 05:13:54', '2015-11-12 05:13:54'),
(38, '011', '04', '', 'TEGUH KHARISMA PUTRA', 'PEMALANG', '1997-10-12', 'SMK 1 AMPELGADING 	Jl. Raya Ujunggede (Pantura), Ampelgading', 'Laki-Laki', '', 170, 57, 'QUIQKER', 'Ya', 'Aktif', '2014-02-20', NULL, '2015-11-12 05:16:10', '2015-11-12 05:16:10'),
(39, '037', '05', 'Kabupaten Pemalang', 'Fathuroji', 'Pemalang', '1996-08-17', 'Padek, Ulujami', 'Laki-Laki', '', 158, 56, 'Palang Sejajar', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:16:10', '2015-11-12 05:16:10'),
(40, '037', '04', 'Kabupaten Pemalang', 'Mujiyono', 'Pemalang', '1996-05-17', 'Padek, Ulujami', 'Laki-Laki', '', 159, 51, 'Lantai', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:18:05', '2015-11-12 05:18:05'),
(41, '011', '04', 'Kabupaten Pemalang', 'M. ALFI SHIHAB', 'PEMALANG', '1998-05-10', 'SMK 1 AMPELGADING 	Jl. Raya Ujunggede (Pantura), Ampelgading', 'Laki-Laki', '', 170, 60, 'LIBERO', 'Ya', 'Aktif', '2013-01-09', NULL, '2015-11-12 05:18:35', '2015-11-12 05:18:35'),
(42, '011', '04', '', 'DWI AGUNG PERMANA', 'PEMALANG', '1998-07-07', 'SMK 1 AMPELGADING 	Jl. Raya Ujunggede (Pantura), Ampelgading', 'Laki-Laki', '', 171, 61, 'SERVIS', 'Ya', 'Aktif', '2014-09-23', NULL, '2015-11-12 05:20:01', '2015-11-12 05:20:01'),
(43, '037', '04', 'Kabupaten Pemalang', 'Suwito', 'Pemalang', '1998-04-10', 'Padek,Ulujami', 'Laki-Laki', '', 160, 57, 'Lantai', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:20:03', '2015-11-12 05:20:03'),
(44, '037', '04', 'Kabupaten Pemalang', 'Efa nofianti', 'Pemalang', '1998-06-01', 'Padek, Ulujami', 'Perempuan', '', 157, 57, 'Lantai', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:21:35', '2015-11-12 05:21:35'),
(45, '011', '04', 'Kabupaten Pemalang', 'M. ROJIM ', 'PEMALANG', '1998-08-20', 'SMK 1 AMPELGADING 	Jl. Raya Ujunggede (Pantura), Ampelgading', 'Laki-Laki', '', 168, 54, 'SERVIS', 'Ya', 'Aktif', '2014-07-09', NULL, '2015-11-12 05:21:47', '2015-11-12 05:21:47'),
(46, '013', '04', 'Kabupaten Pemalang', 'Han Juang Rastra Kusuma', 'Pemalang', '1990-01-01', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Ganda Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:22:20', '2015-11-12 05:22:20'),
(47, '037', '04', 'Kabupaten Pemalang', 'Yuni kartika', 'Pemalang', '1999-06-20', 'Padek, Ulujami', 'Perempuan', '', 150, 48, 'balok keseimbangan', 'Ya', 'Non-Aktif', '0000-00-00', NULL, '2015-11-12 05:23:53', '2015-11-12 05:23:53'),
(48, '013', '04', 'Kabupaten Pemalang', 'Meylinda Ariskiana', 'Pemalang', '0000-00-00', 'Dusun Kaligawe Desa Kaligelang Kec. Taman Kab. Pemalang', 'Perempuan', '', 0, 0, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:24:25', '2015-11-12 05:24:25'),
(49, '037', '06', 'Kabupaten Pemalang', 'Khomsatun khasanah', 'Pemalang', '1998-08-04', 'Padek, Ulujami', 'Perempuan', '', 153, 56, 'balok keseimbangan', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:25:30', '2015-11-12 05:25:30'),
(50, '013', '04', 'Kabupaten Pemalang', 'Muhamad Saiful Amin', 'Pemalang', '1992-10-10', 'Pekunden, Pemalang', 'Laki-Laki', '085201080363', 0, 0, 'Ganda Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:26:34', '2015-11-12 05:26:34'),
(51, '005', '08', 'Kabupaten Pemalang', 'Jallaludin', 'Pemalang', '0000-00-00', 'SLB Kab. Pemalang', 'Laki-Laki', '', 160, 50, 'Lari 100 m, 200 m dan 400 m / T11', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:27:05', '2015-11-12 05:27:05'),
(52, '037', '04', 'Kabupaten Pemalang', 'Mila ayu amalia', 'Pemalang', '1998-04-15', 'Padek, Ulujami', 'Perempuan', '', 155, 50, 'Palang Bertingkat', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:27:24', '2015-11-12 05:27:24'),
(54, '013', '04', 'Kabupaten Pemalang', 'Muhamad Sarifudin', 'Pemalang', '1996-01-12', 'Bojongbata, Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:28:34', '2015-11-12 05:28:34'),
(55, '037', '04', 'Kabupaten Pemalang', 'Fira islamiati', 'Pemalang', '1998-01-14', 'Kertosari, Ulujami', 'Perempuan', '', 157, 53, 'Lantai', 'Ya', 'Non-Aktif', '0000-00-00', NULL, '2015-11-12 05:28:52', '2015-11-12 05:28:52'),
(56, '011', '04', 'Kabupaten Pemalang', 'RIYO PAMBUDI', 'PEMALANG', '1998-10-13', 'SMAN 1 PEMALANG Jl. Jenderal Gatot Subroto, Pemalang, Jawa Tengah', 'Laki-Laki', '', 170, 61, 'SERVIS', 'Ya', 'Aktif', '2013-11-11', NULL, '2015-11-12 05:30:24', '2015-11-12 05:30:24'),
(57, '004', '08', 'Kabupaten Pemalang', 'Nurjanah', 'Pemalang', '0000-00-00', 'Comal', 'Perempuan', '', 150, 50, 'Kelas 50 Kg', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:30:38', '2015-11-12 05:30:38'),
(58, '037', '04', 'Kabupaten Pemalang', 'Dandi siska setiawan', 'Pemalang', '1998-03-10', 'Bumirejo, Pemalang', 'Laki-Laki', '', 160, 57, 'Palang Tunggal', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:31:15', '2015-11-12 05:31:15'),
(59, '013', '03', 'Kabupaten Pemalang', 'Audina Sitiyas Yanuariska', 'Pemalang', '1998-05-22', 'Ulujami, Pemalang', 'Perempuan', '087764471511', 0, 0, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:32:39', '2015-11-12 05:32:39'),
(60, '005', '08', 'Kabupaten Pemalang', 'Ari Wibowo', 'Pemalang', '0000-00-00', 'Kebondalem', 'Laki-Laki', '', 150, 50, '', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:33:45', '2015-11-12 05:33:45'),
(61, '037', '04', 'Kabupaten Pemalang', 'Saefudin', 'Pemalang', '1992-10-05', 'Taman, Pemalang', 'Laki-Laki', '', 164, 57, 'Lantai', 'Tidak', 'Non-Aktif', '0000-00-00', NULL, '2015-11-12 05:34:44', '2015-11-12 05:34:44'),
(62, '040', '04', 'Kabupaten Pemalang', 'ACHMAD BUDIYANTO', 'PEMALANG', '1993-09-25', 'Desa Purwosari RT 2 RW 2 ,Kec. Comal', 'Laki-Laki', '', 0, 0, 'Tosser', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:34:52', '2015-11-12 05:34:52'),
(63, '005', '08', 'Kabupaten Pemalang', 'Tofik', 'Pemalang', '0000-00-00', 'Jebed', 'Laki-Laki', '', 167, 50, '', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:35:06', '2015-11-12 05:35:06'),
(64, '011', '04', 'Kabupaten Pemalang', 'ENRICO GYMNASIAR', 'PEMALANG', '1998-11-10', 'SMAN 1 PEMALANG Jl. Jenderal Gatot Subroto, Pemalang, Jawa Tengah', 'Laki-Laki', '', 171, 62, 'LIBERO', 'Ya', 'Aktif', '2014-07-12', NULL, '2015-11-12 05:35:57', '2015-11-12 05:35:57'),
(65, '037', '04', 'Kabupaten Pemalang', 'Bektiva Yuni Ansi', 'Pemalang', '1994-01-12', 'Widuri, Pemalang', 'Perempuan', '', 157, 49, 'Lantai', 'Tidak', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:36:28', '2015-11-12 05:36:28'),
(66, '048', '08', 'Kabupaten Pemalang', 'Adhitya Nugraha', 'Pemalang', '1986-11-17', 'Samosir Timur IV/237 Rt.03/14 Kel. Bojongbata Kec. Pemalang Kab. Pemalang', 'Laki-Laki', '082323492365', 166, 75, 'T8', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:37:38', '2015-11-12 05:37:38'),
(67, '037', '04', 'Kabupaten Pemalang', 'Agus pambudi', 'Pemalang', '1998-11-15', 'Sidorejo, Comal', 'Laki-Laki', '', 164, 57, 'Lantai', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:38:01', '2015-11-12 05:38:01'),
(68, '048', '08', '', 'Darsono', 'Pemalang', '0000-00-00', 'Kec. Bodeh', 'Laki-Laki', '', 160, 50, 'T8', 'Tidak', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:38:57', '2015-11-12 05:38:57'),
(69, '011', '04', 'Kabupaten Pemalang', 'ARIF FAMBUDI', 'PEMALANG', '1997-12-12', 'SMAN 2 PEMALANG jl.Jendral Sudirman No.14 Pemalang.', 'Laki-Laki', '', 169, 54, 'LIBERO', 'Ya', 'Aktif', '2014-12-01', NULL, '2015-11-12 05:39:23', '2015-11-12 05:39:23'),
(70, '032', '04', '', 'nasirin', 'pemalang', '2015-07-03', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:39:26', '2015-11-12 05:39:26'),
(71, '037', '04', 'Kabupaten Pemalang', 'Fadli Sanil Azizi', 'Pemalang', '1999-09-07', 'Blendung ,Ulujami', 'Laki-Laki', '', 164, 56, 'Lantai', 'Tidak', 'Non-Aktif', '0000-00-00', NULL, '2015-11-12 05:40:04', '2015-11-12 05:40:04'),
(72, '005', '08', 'Kabupaten Pemalang', 'Kuswono', 'Pemalang', '0000-00-00', 'Comal', 'Laki-Laki', '', 160, 50, 'Lari 100 m, 200 m dan 400 m / T11', 'Tidak', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:40:14', '2015-11-12 05:40:14'),
(73, '025', '04', 'Kabupaten Pemalang', 'ENDAH LOVIA PUTRI SASIWI', 'KULON PROGO', '1993-07-02', '', 'Perempuan', '', 0, 0, 'Kata dan Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:40:15', '2015-11-12 07:01:50'),
(74, '014', '08', 'Kabupaten Pemalang', 'Wardais', 'Pemalang', '0000-00-00', 'Desa Saradan', 'Laki-Laki', '', 160, 50, 'Catur', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:41:42', '2015-11-12 05:41:42'),
(75, '025', '04', 'Kabupaten Pemalang', 'NUR FADILLAH', 'PEMALANG', '1995-12-11', 'Petarukan Pemalang', 'Perempuan', '', 0, 0, 'Kata', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:41:46', '2015-11-12 07:03:03'),
(76, '014', '08', 'Kabupaten Pemalang', 'Ainul', 'Pemalang', '0000-00-00', 'SLB Kab. Pemalang', 'Laki-Laki', '', 160, 50, 'Catur Tunanetra', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:42:58', '2015-11-12 05:42:58'),
(77, '032', '04', '', 'casidin', 'pemalang', '1996-01-31', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:43:00', '2015-11-12 05:43:00'),
(78, '011', '04', 'Kabupaten Pemalang', 'MOCH. IKSAN ', 'PEMALANG', '1998-10-23', 'SMAN 2 PEMALANG jl.Jendral Sudirman No.14 Pemalang.', 'Laki-Laki', '', 169, 54, 'SERVIS', 'Ya', 'Aktif', '2013-10-11', NULL, '2015-11-12 05:43:15', '2015-11-12 05:43:15'),
(79, '005', '08', 'Kabupaten Pemalang', 'Yovan', 'Pemalang', '0000-00-00', '', 'Laki-Laki', '', 160, 50, '', 'Tidak', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:43:53', '2015-11-12 05:43:53'),
(80, '025', '05', 'Kabupaten Pemalang', 'DESSY ARIASANTI', 'PEMALANG', '1991-01-11', 'Pedurungan Pemalang', 'Perempuan', '', 0, 0, 'Kata', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:44:19', '2015-11-12 07:03:59'),
(81, '035', '08', 'Kabupaten Pemalang', 'Eko', 'Pemalang', '0000-00-00', '', 'Laki-Laki', '', 160, 50, 'Renang Polio', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:45:05', '2015-11-12 05:45:05'),
(82, '032', '04', '', 'winaryo', 'pemalang', '1998-04-04', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:45:42', '2015-11-12 05:45:42'),
(83, '040', '04', 'Kabupaten Pemalang', 'Lukman Harun Al Roshid', 'PEMALANG', '2002-05-21', 'Desa Mojo RT 5 RW 2', 'Laki-Laki', '', 0, 0, 'Tekong', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:45:56', '2015-11-12 05:45:56'),
(84, '025', '04', 'Kabupaten Pemalang', 'TITIN INDAH LESTARI', 'PEMALANG', '1996-02-28', 'Mulyoharjo Pemalang', 'Perempuan', '', 0, 0, 'Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:47:08', '2015-11-12 07:05:44'),
(85, '031', '08', 'Kabupaten Pemalang', 'laein', 'Pemalang', '0000-00-00', 'Desa Jebed', 'Perempuan', '', 150, 45, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:47:30', '2015-11-12 05:47:30'),
(86, '040', '04', 'Kabupaten Pemalang', 'Ferawati', 'Pekalongan', '1998-10-04', 'Comal', 'Perempuan', '', 0, 0, 'Tekong', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:48:19', '2015-11-12 05:48:19'),
(87, '025', '04', 'Kabupaten Pemalang', 'KAROMAH DESTRI DF', 'PEMALANG', '1996-12-15', 'Mulyoharjo Pemalang', 'Perempuan', '', 0, 0, 'Kata', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:48:55', '2015-11-12 07:06:33'),
(88, '011', '04', 'Kabupaten Pemalang', 'NANDA PUTRA S', 'PEMALANG', '1998-08-10', 'SMAN 2 PEMALANG jl.Jendral Sudirman No.14 Pemalang.', 'Laki-Laki', '', 170, 55, 'LIBERO', 'Ya', 'Aktif', '2014-02-02', NULL, '2015-11-12 05:49:25', '2015-11-12 05:49:25'),
(89, '032', '04', 'Kabupaten Pemalang', 'yoyo prasojo', 'pemalang', '2000-02-16', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:52:59', '2015-11-12 05:52:59'),
(90, '032', '04', 'Kabupaten Pemalang', 'koko saputra', 'pemalang', '2015-04-04', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:54:31', '2015-11-12 05:54:31'),
(91, '037', '04', 'Kabupaten Pemalang', 'Eli Fatihati', 'tegal', '1990-02-26', 'pamutih ulujami', 'Perempuan', '', 0, 170, 'sport aerobik  couple', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 05:55:03', '2015-11-12 05:55:03'),
(92, '040', '04', 'Kabupaten Pemalang', 'Hidayatul Maghfiroh', 'PEMALANG', '1999-11-02', 'Desa Gedeg, RT 2 RW 1, Kec. Ulujami', 'Perempuan', '', 0, 0, 'Tosser', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:55:14', '2015-11-12 06:03:56'),
(93, '011', '04', 'Kabupaten Pemalang', 'M. NABIL ', 'PEMALANG', '1998-01-01', 'SMAN 2 PEMALANG jl.Jendral Sudirman No.14 Pemalang.', 'Laki-Laki', '', 168, 54, 'QUIQKER', 'Ya', 'Aktif', '2013-12-12', NULL, '2015-11-12 05:55:18', '2015-11-12 05:55:18'),
(94, '011', '04', 'Kabupaten Pemalang', 'KHARISMA KARANDANA', 'PEMALANG', '1998-03-01', 'SMAN 2 PEMALANG jl.Jendral Sudirman No.14 Pemalang.', 'Laki-Laki', '', 170, 55, 'QUIQKER', 'Ya', 'Aktif', '2014-02-20', NULL, '2015-11-12 05:56:51', '2015-11-12 05:56:51'),
(95, '040', '04', 'Kabupaten Pemalang', 'Uliya Nugraheni', 'PEMALANG', '1999-07-25', 'Desa Banglarangan RT 5 RW 2, Kec. Ampelgading', 'Perempuan', '', 0, 0, 'Smasher', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 05:57:14', '2015-11-12 05:57:14'),
(96, '037', '04', 'Kabupaten Pemalang', 'Mohamad Arip Ali', 'tegal ', '1988-12-31', 'pamutih ulujami', 'Laki-Laki', '', 175, 70, 'sport aerobik singgle men', 'Ya', 'Non-Aktif', '0000-00-00', NULL, '2015-11-12 05:58:07', '2015-11-12 05:58:07'),
(97, '011', '04', 'Kabupaten Pemalang', 'M. HAFIZ NUGROHO', 'PEMALANG', '1998-09-09', 'SMAN 1 PEMALANG Jl. Jenderal Gatot Subroto, Pemalang, Jawa Tengah', 'Laki-Laki', '', 172, 55, 'QUIQKER', 'Ya', 'Aktif', '2014-03-20', NULL, '2015-11-12 05:58:49', '2015-11-12 05:58:49'),
(98, '032', '04', '', 'tika widiyanti', 'pemalang', '1996-09-10', '', 'Perempuan', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 06:00:06', '2015-11-12 06:00:06'),
(99, '037', '04', 'Kabupaten Pemalang', 'Bagus Riyadi', 'banyumas', '1988-05-15', 'pamutih ulujami', 'Laki-Laki', '', 160, 64, 'sport aerobik trio men', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 06:00:29', '2015-11-12 06:00:29'),
(100, '040', '04', 'Kabupaten Pemalang', 'Yanuar Reza Wicaksono', 'PEMALANG', '1990-01-07', 'Desa Loning RT 18 RW 2, Kec. Petarukan', 'Laki-Laki', '087830752355', 167, 55, 'Tekong', 'Ya', 'Aktif', '2015-11-12', '100.jpg', '2015-11-12 06:00:41', '2015-11-12 08:31:48'),
(101, '032', '01', 'Kabupaten Pemalang', 'yulita sari', 'pemalang', '1997-08-21', '', 'Perempuan', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 06:01:11', '2015-11-12 06:01:11'),
(102, '032', '01', 'Kabupaten Pemalang', 'melisa rosita', 'pemalang', '1998-05-05', '', 'Perempuan', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 06:02:52', '2015-11-12 06:02:52'),
(103, '037', '04', 'Kabupaten Pemalang', 'Hendra Dwi.W', 'kudus', '2015-06-27', 'pamutih ulujami', 'Laki-Laki', '', 170, 64, 'sport aerobik single mens', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 06:03:06', '2015-11-12 06:03:06'),
(104, '032', '01', '', 'vina eviana', 'pemalang', '1998-01-22', '', 'Perempuan', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 06:04:46', '2015-11-12 06:04:46'),
(105, '040', '04', 'Kabupaten Pemalang', 'Indah Puji Lestari', 'PEMALANG', '1998-12-21', 'Desa Ujunggede RT 6 RW 6, Kec. Ampelgading', 'Perempuan', '', 0, 0, 'Tekong', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:05:13', '2015-11-12 06:05:13'),
(106, '032', '04', '', 'mia septiani', 'pemalang', '2000-12-11', '', 'Perempuan', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 06:07:11', '2015-11-12 06:07:11'),
(107, '032', '04', '', 'puji riasih', 'pemalang', '2000-03-16', '', 'Perempuan', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 06:08:17', '2015-11-12 06:08:17'),
(109, '032', '04', 'Kabupaten Pemalang', 'zahra kartika', 'pemalang', '2012-12-22', '', 'Perempuan', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 06:09:28', '2015-11-12 06:09:28'),
(110, '025', '04', 'Kabupaten Pemalang', 'FARAH NURUL HASNA', 'Bandung', '1999-06-07', 'Loning Petarukan Pemalang', 'Perempuan', '', 0, 0, 'Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:26:30', '2015-11-12 07:11:50'),
(112, '025', '04', 'Kabupaten Pemalang', 'ULFA LIANI', 'Pemalang', '1999-02-10', 'Tanjungsari Pemalang', 'Perempuan', '', 0, 0, 'Kata dan Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:29:06', '2015-11-12 07:09:54'),
(113, '025', '04', 'Kabupaten Pemalang', 'KHAERUL FIKER ', 'JAKARTA', '1987-06-20', 'Randudongkal Pemalang', 'Laki-Laki', '', 0, 0, 'Kata dan Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:31:31', '2015-11-12 07:13:03'),
(114, '034', '04', 'Kabupaten Pemalang', 'bunga sania putri', 'pemalang', '1998-07-20', 'randu dongkal pemalang', 'Perempuan', '', 169, 55, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:34:49', '2015-11-12 06:34:49'),
(115, '034', '04', '', 'sherly rena henika', 'pemalang', '1998-07-17', 'randudongkal pemalang', 'Perempuan', '', 42, 42, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:37:07', '2015-11-12 06:37:07'),
(116, '006', '04', 'Kabupaten Pemalang', 'WISNU ARIF ARISANDI', 'PEMALANG', '1994-06-12', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 06:38:43', '2015-11-12 06:38:43'),
(117, '034', '04', '', 'ita siti aqhso', 'pemalang', '1997-02-05', 'randudongkal', 'Perempuan', '', 162, 43, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:38:54', '2015-11-12 06:38:54'),
(118, '034', '04', 'Kabupaten Pemalang', 'elsa chalsaqia a.n', 'pemalang', '1998-10-19', 'randudongkal', 'Perempuan', '', 167, 0, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:40:55', '2015-11-12 06:40:55'),
(119, '034', '04', 'Kabupaten Pemalang', 'solehudin', 'pemalang', '1998-03-03', 'randudonkal', 'Laki-Laki', '', 170, 65, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:42:59', '2015-11-12 06:42:59'),
(120, '034', '04', 'Kabupaten Pemalang', 'm.elang R.C', 'pemalang', '2002-07-13', 'randudongkal', 'Laki-Laki', '', 154, 41, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:45:00', '2015-11-12 06:45:00'),
(121, '025', '02', 'Kabupaten Pemalang', 'RETSA GIEN ABI YUNUS', 'PEMALANG ', '1998-03-18', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 06:45:11', '2015-11-12 06:45:11'),
(122, '013', '04', 'Kabupaten Pemalang', 'Abdillah Azzam', 'Pemalang', '1999-06-14', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:45:44', '2015-11-12 06:45:44'),
(123, '013', '04', 'Kabupaten Pemalang', 'Adelia Veronica Putri', 'Pekalongan', '1999-07-20', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:46:59', '2015-11-12 06:50:00'),
(124, '034', '04', 'Kabupaten Pemalang', 'dinda febri', 'pemalang', '2003-02-01', 'randudongkal', 'Perempuan', '', 150, 38, 'seni tunggal', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:47:19', '2015-11-12 06:47:19'),
(125, '025', '04', 'Kabupaten Pemalang', 'Endah Lovia Putri Sasiwi', 'Kulon Progo', '1993-07-02', 'Bantarbolang', 'Perempuan', '', 0, 0, 'Kata dan Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:47:24', '2015-11-12 06:47:24'),
(126, '013', '04', 'Kabupaten Pemalang', 'Adi Surya Utama', 'Pemalang', '1997-10-19', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:48:10', '2015-11-12 06:48:10'),
(127, '034', '04', 'Kabupaten Pemalang', 'm.elfan R.C', 'pemalang', '2004-12-03', 'randudongkal', 'Perempuan', '', 132, 32, 'seni tunggal', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:50:00', '2015-11-12 06:50:00'),
(129, '013', '04', 'Kabupaten Pemalang', 'Aditya Bagus Prasetiyo', 'Pemalang', '1993-01-27', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:52:10', '2015-11-12 06:52:10'),
(130, '025', '04', 'Kabupaten Pemalang', 'Romadon Napitupulu', 'Pemalang', '1990-04-10', 'Pedurungan Barat', 'Laki-Laki', '', 0, 0, 'Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:52:32', '2015-11-12 06:52:32'),
(131, '034', '04', 'Kabupaten Pemalang', 'm.endru R.c', 'pemalang', '2006-07-05', 'randudongkal', 'Perempuan', '', 134, 30, 'seni tunggal', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:52:45', '2015-11-12 06:52:45'),
(132, '013', '04', 'Kabupaten Pemalang', 'Ahmad Yazid', 'Pemalang', '1996-09-11', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:53:22', '2015-11-12 06:53:22'),
(133, '010', '04', 'Kabupaten Pemalang', 'Hilda Amalia', 'Pemalang', '1999-11-01', 'SMAN 1 COMAL', 'Laki-Laki', '', 160, 40, 'Point Guard', 'Ya', 'Aktif', '2014-11-03', NULL, '2015-11-12 06:53:28', '2015-11-12 06:53:28'),
(134, '013', '04', 'Kabupaten Pemalang', 'Aldy Maulutfi Azis', 'Pemalang', '1998-03-21', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:54:35', '2015-11-12 06:54:35'),
(135, '025', '04', 'Kabupaten Pemalang', 'RIZKI AULIA RACHADI', 'Pemalang', '2000-02-10', 'Shapire Residence Beji Pemalang', 'Perempuan', '', 0, 0, 'Kata dan Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:54:41', '2015-11-12 07:16:58'),
(136, '013', '04', 'Kabupaten Pemalang', 'Andre Widiyanto', 'Pemalang', '1996-08-26', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:55:49', '2015-11-12 06:55:49'),
(137, '010', '04', 'Kabupaten Pemalang', 'Kartika Sari', 'Pemalang', '1999-10-31', 'SMAN 1 COMAL', 'Perempuan', '', 165, 50, 'Guard', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 06:56:13', '2015-11-12 06:56:13'),
(138, '025', '04', 'Kabupaten Pemalang', 'Defi Agustiyani', 'Pemalng', '1998-05-01', 'Tanjungsari Pemalang', 'Perempuan', '', 0, 0, 'Kata', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:56:36', '2015-11-12 06:56:36'),
(139, '013', '04', 'Kabupaten Pemalang', 'Angga Wijaksono', 'Pemalang', '1995-11-25', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:56:52', '2015-11-12 06:56:52'),
(140, '013', '04', 'Kabupaten Pemalang', 'Arief Nurdiansyah', 'Pekalongan', '1993-04-28', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:57:56', '2015-11-12 07:47:08'),
(141, '034', '04', 'Kabupaten Pemalang', 'm.endru R.c', 'pemalang', '2006-07-05', 'randudongkal', 'Laki-Laki', '', 134, 33, 'seni tunggal', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:58:58', '2015-11-12 06:58:58'),
(142, '013', '04', 'Kabupaten Pemalang', 'Arriza Imanul Yakin', 'Pemalang', '1998-12-03', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 06:59:18', '2015-11-12 06:59:18'),
(143, '035', '04', 'Kabupaten Pemalang', 'Deni Setiawan	', 'Pemalang', '0000-00-00', 'Pemalang\r\n', 'Laki-Laki', '', 158, 55, 'Gaya dada', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:00:02', '2015-11-12 07:00:02'),
(144, '034', '04', 'Kabupaten Pemalang', 'm.aji sofyan', 'pemalang', '1999-04-15', 'randudongkal', 'Laki-Laki', '', 154, 45, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:00:52', '2015-11-12 07:00:52'),
(145, '010', '04', 'Kabupaten Pemalang', 'Diana Nufiya', 'Pemalang', '2000-01-01', 'SMAN 1 COMAL', 'Laki-Laki', '', 155, 45, 'Guard', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 07:01:50', '2015-11-12 07:01:50'),
(146, '035', '04', 'Kabupaten Pemalang', 'Alfian Fahmi	', 'Pemalang', '0000-00-00', 'Pemalang', 'Laki-Laki', '', 165, 56, 'Gaya Dada', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:03:50', '2015-11-12 07:03:50'),
(147, '040', '04', 'Kabupaten Pemalang', 'Khoirul Mubarok', 'PEMALANG', '1999-05-31', 'Desa Blendung, Kec. Ulujami', 'Laki-Laki', '', 0, 0, 'Tosser', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:03:56', '2015-11-12 07:03:56'),
(148, '010', '04', 'Kabupaten Pemalang', 'Velia Juan Kartika', 'Pemalang', '2000-05-14', 'SMP 2 TAMAN', 'Perempuan', '', 170, 56, 'Center', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 07:04:05', '2015-11-12 07:04:05'),
(149, '034', '04', '', 'titis sadewi', 'pemalang', '2000-01-22', 'randudongkl', 'Perempuan', '', 160, 55, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:04:48', '2015-11-12 07:04:48'),
(150, '037', '04', 'Kabupaten Pemalang', 'Esti bekti warapsari', 'Pemalang', '2015-11-12', 'Pamutih, Ulujami', 'Perempuan', '', 117, 25, 'balok keseimbangan', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:06:13', '2015-11-12 07:06:13'),
(151, '034', '04', '', 'm.fahri khusaeni', 'pemalang', '1998-05-14', 'randudongkal', 'Laki-Laki', '', 168, 57, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:06:35', '2015-11-12 07:06:35'),
(152, '035', '04', 'Kabupaten Pemalang', 'M.Fikri Arrahman	', 'Pemalang', '0000-00-00', 'Pemalang', 'Laki-Laki', '', 152, 52, 'Gaya Bebas', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:06:57', '2015-11-12 07:06:57'),
(153, '037', '04', 'Kabupaten Pemalang', 'Fathkiyah', 'Pemalang', '2015-11-12', 'Pamutih, Ulujami', 'Perempuan', '', 117, 24, 'Lantai', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:07:48', '2015-11-12 07:07:48'),
(154, '034', '04', 'Kabupaten Pemalang', 'putri bunga r', 'pemalang', '1999-03-15', 'randudongkal', 'Laki-Laki', '', 169, 54, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:08:33', '2015-11-12 07:08:33'),
(155, '037', '04', 'Kabupaten Pemalang', 'Rena refiana', 'Pemalang', '2015-11-12', 'Pamutih, Ulujami', 'Perempuan', '', 117, 25, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:09:15', '2015-11-12 07:09:15'),
(156, '014', '01', '', 'ADIB WIBOWO', 'PEMALANG', '2015-11-12', 'PEMALANG', 'Laki-Laki', '', 165, 65, 'CATUR CEPAT', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:09:39', '2015-11-12 07:09:39'),
(157, '035', '04', 'Kabupaten Pemalang', 'Afifah Camelia	', 'Kendal', '0000-00-00', 'Pemalang', 'Perempuan', '', 155, 48, 'Gaya Dada', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:09:53', '2015-11-12 07:09:53'),
(158, '034', '04', 'Kabupaten Pemalang', 'norma ayu n', 'pemalang', '1999-05-14', 'randudongkal', 'Perempuan', '', 163, 51, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:10:24', '2015-11-12 07:10:24'),
(159, '037', '04', 'Kabupaten Pemalang', 'Ahimsah Baehaki', 'Pemalang', '2015-11-12', 'Pamutih, Ulujami', 'Laki-Laki', '', 124, 30, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:10:27', '2015-11-12 07:10:27'),
(160, '037', '04', 'Kabupaten Pemalang', 'Ahimsah Baehaki', 'Pemalang', '2015-11-12', 'Pamutih, Ulujami', 'Laki-Laki', '', 124, 30, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:10:29', '2015-11-12 07:10:29'),
(161, '014', '01', '', 'MUDAKIR', 'PEMALANG', '2015-11-12', 'PEMALANG', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:11:13', '2015-11-12 07:11:13'),
(162, '037', '04', 'Kabupaten Pemalang', 'Ririn damardjati', 'Pemalang', '2015-11-12', 'Pamutih, Ulujami', 'Perempuan', '', 132, 25, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:12:02', '2015-11-12 07:12:02'),
(163, '035', '04', 'Kabupaten Pemalang', 'Olsza Dhea Laurani	', 'Pemalang', '0000-00-00', 'Pemalang', 'Perempuan', '', 155, 42, 'Gaya kupu-kupu', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:12:47', '2015-11-12 07:12:47'),
(164, '037', '04', 'Kabupaten Pemalang', 'Liyana zahira', 'Pemalang', '2013-12-28', 'Pamutih, Ulujami', 'Perempuan', '', 112, 10, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:13:59', '2015-11-12 07:13:59'),
(165, '040', '04', 'Kabupaten Pemalang', 'Riffal Ardan Zulfansyah', 'PEMALANG', '2000-09-18', 'Desa Blendung, Kec. Ulujami', 'Laki-Laki', '', 0, 0, 'Smasher', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:14:53', '2015-11-12 07:14:53'),
(166, '025', '04', 'Kabupaten Pemalang', 'RISTA NURINDA', 'Pemalang', '2002-01-19', 'Taman Asri Pemalang', 'Perempuan', '', 0, 0, 'Kata', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:15:48', '2015-11-12 07:15:48'),
(167, '040', '04', 'Kabupaten Pemalang', 'Bagus Afifi', 'Pemalang', '1999-03-17', 'Desa Sidokare, Kec. Ampelading', 'Laki-Laki', '', 0, 0, 'Tosser', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:16:16', '2015-11-12 07:16:16'),
(168, '035', '04', 'Kabupaten Pemalang', 'Dinda Yuniarti	', 'Pemalang', '0000-00-00', 'Pemalang', 'Perempuan', '', 151, 43, 'Gaya Bebas', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:16:31', '2015-11-12 07:16:31'),
(169, '014', '01', '', 'MUGIYONO', 'PEMALANG', '2015-11-12', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:16:40', '2015-11-12 07:16:40'),
(170, '035', '04', 'Kabupaten Pemalang', 'Dinda Yuniarti	', 'Pemalang', '0000-00-00', 'Pemalang', 'Perempuan', '', 151, 43, 'Gaya Bebas', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:16:43', '2015-11-12 07:16:43'),
(171, '040', '04', 'Kabupaten Pemalang', 'Sodik Hidayat', 'PEMALANG', '1999-07-07', 'Desa Blendung, Kec. Ulujami', 'Laki-Laki', '', 0, 0, 'Tekong', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:17:23', '2015-11-12 07:17:23'),
(172, '025', '04', 'Kabupaten Pemalang', 'ARYA ZIDAN FARIZKA', 'Pemalang', '2001-05-24', 'Tanjungsari Pemalang', 'Laki-Laki', '', 0, 0, 'Kata dan Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:19:44', '2015-11-12 07:19:44'),
(173, '035', '04', 'Kabupaten Pemalang', 'Moh.Afif Bayhaqi', 'Pemalang', '0000-00-00', 'Pemalang', 'Laki-Laki', '', 148, 35, 'Gaya Bebas', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:19:52', '2015-11-12 07:19:52'),
(174, '040', '04', 'Kabupaten Pemalang', 'Moh. Dimas Putra Pratama', 'Pekalongan', '2002-09-06', 'Desa Rowosari, Kec. Ulujami', 'Laki-Laki', '', 0, 0, 'Smasher', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:20:08', '2015-11-12 07:20:08'),
(175, '014', '01', '', 'RUSTOYO', 'PEMALANG', '2015-11-12', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:20:13', '2015-11-12 07:20:13'),
(176, '025', '04', 'Kabupaten Pemalang', 'DWI KARLINA RAHMAYANI', 'Pemalang', '1999-06-27', 'Perumnas Bojongbata Pemalang', 'Perempuan', '', 0, 0, 'Kata', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:21:40', '2015-11-12 07:21:40'),
(177, '035', '04', '', 'Asril Anas', 'Pemalang', '0000-00-00', 'Pemalang', 'Laki-Laki', '', 145, 42, 'Gaya Bebas', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:22:44', '2015-11-12 07:22:44'),
(178, '025', '04', 'Kabupaten Pemalang', 'SITI NINAH', 'Pemalang', '1998-12-31', 'Taman Asri Pemalang', 'Perempuan', '', 0, 0, 'Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:22:55', '2015-11-12 07:22:55'),
(179, '014', '01', '', 'SUMANTO', 'PEMALANG', '2015-11-12', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:23:58', '2015-11-12 07:23:58'),
(180, '025', '04', 'Kabupaten Pemalang', 'SUBHAN FIRMANSYAH', 'Pemalang', '1998-01-05', 'Pelutan Pemalang', 'Laki-Laki', '', 0, 0, 'Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:24:31', '2015-11-12 07:24:31'),
(181, '035', '04', 'Kabupaten Pemalang', 'Fitrioo Arya Riski', 'Jakarta', '0000-00-00', 'Pemalang', 'Laki-Laki', '', 152, 45, 'Gaya kupu-kupu', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:25:05', '2015-11-12 07:25:05'),
(182, '040', '04', 'Kabupaten Pemalang', 'Muh. Dimas Putra Pratama', 'Pekalongan', '2002-09-06', 'Desa Rowosari, Kec. Ulujami', 'Laki-Laki', '', 0, 0, 'Tekong', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:25:49', '2015-11-12 07:25:49'),
(183, '025', '05', 'Kabupaten Pemalang', 'ALFIN SETYA FIRMANSYAH', 'Pemalang', '1992-07-06', 'Penggarit Pemalang', 'Laki-Laki', '', 0, 0, 'Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:26:12', '2015-11-12 07:26:12'),
(184, '014', '01', '', 'KURNADI', 'PEMALANG', '2015-11-12', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:26:37', '2015-11-12 07:26:37'),
(185, '040', '04', 'Kabupaten Pemalang', 'Fiki Amri', 'PEMALANG', '1999-02-20', 'Desa Kendaldoyong, Kec. Petarukan', 'Laki-Laki', '', 0, 0, 'Tekong', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:27:27', '2015-11-12 07:27:27'),
(186, '010', '04', 'Kabupaten Pemalang', 'Niken Larasati Oktaviani', 'Pemalang', '1998-10-14', 'SMAN 1 PEMALANG', 'Perempuan', '', 156, 50, 'Point Guard', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 07:27:35', '2015-11-12 07:27:35'),
(187, '034', '04', 'Kabupaten Pemalang', 'norma ayu n', 'pemalang', '1999-05-14', 'randudongkal', 'Perempuan', '', 163, 51, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:28:05', '2015-11-12 07:28:05'),
(188, '035', '04', 'Kabupaten Pemalang', 'Ratna Dewi Ningtyas', 'Pemalang', '0000-00-00', 'Pemalang', 'Perempuan', '', 148, 48, 'Gaya kupu-kupu', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:28:11', '2015-11-12 07:28:11'),
(189, '040', '04', 'Kabupaten Pemalang', 'M. Riziq Shihab', 'PEMALANG', '1998-07-06', 'Desa Kendalrejo, Kec. Petarukan', 'Laki-Laki', '', 0, 0, 'Smasher', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:28:35', '2015-11-12 07:28:35'),
(190, '025', '04', 'Kabupaten Pemalang', 'SANGGURO HANDA MARUDIN', 'Pemalang', '1999-09-18', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:29:13', '2015-11-12 07:29:13'),
(191, '034', '04', 'Kabupaten Pemalang', 'suhendi sanjaya', 'pemalang', '1998-02-02', 'pemalang', 'Laki-Laki', '', 160, 47, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:29:40', '2015-11-12 07:29:40'),
(192, '035', '04', 'Kabupaten Pemalang', 'Angge Ayu Shafira', 'Pemalang', '0000-00-00', 'pemalang', 'Perempuan', '', 150, 48, 'Gaya Dada', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:29:48', '2015-11-12 07:29:48'),
(193, '014', '01', '', 'AGUS SOBARI', 'PEMALANG', '2015-11-12', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:29:56', '2015-11-12 07:29:56'),
(194, '040', '04', 'Kabupaten Pemalang', 'M. Ibnu Aqil', 'PEMALANG', '1998-05-10', 'Desa Watukumpul, Kec. Watukumpul', 'Laki-Laki', '', 0, 0, 'Tosser', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:30:07', '2015-11-12 07:30:07'),
(195, '025', '04', 'Kabupaten Pemalang', 'AWALUDIN RIZKI PAMBUDI', 'Pemalang', '1999-07-20', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:30:40', '2015-11-12 07:30:40'),
(196, '010', '04', 'Kabupaten Pemalang', 'Rd Sabrina Dhea DW', 'Pemalang', '1999-08-02', 'SMAN 1 PEMALANG', 'Perempuan', '', 180, 65, 'Center', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 07:30:50', '2015-11-12 07:30:50'),
(197, '034', '04', 'Kabupaten Pemalang', 'lili mardiyah', 'pemalang', '1997-04-08', 'pemalang', 'Perempuan', '', 169, 61, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:31:11', '2015-11-12 07:31:11'),
(198, '035', '04', 'Kabupaten Pemalang', 'Nur Aeni Ambarwati', 'Pemalang', '0000-00-00', 'Pemalang', 'Perempuan', '', 149, 41, 'Gaya Bebas', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:31:48', '2015-11-12 07:31:48'),
(199, '025', '04', 'Kabupaten Pemalang', 'ADE RIZKI WIDIANTORO', 'Pemalang', '1997-12-27', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Kata dan Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:32:11', '2015-11-12 07:32:11'),
(200, '025', '04', 'Kabupaten Pemalang', 'FATHUR ARFIANTO', 'Pemalang', '1997-07-18', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Kata dan Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:33:40', '2015-11-12 07:33:40'),
(201, '034', '04', 'Kabupaten Pemalang', 'qoidah suci m', 'pemalang', '2001-11-13', 'randudongkal', 'Laki-Laki', '', 165, 45, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:34:11', '2015-11-12 07:34:11'),
(202, '014', '01', '', 'AZIS', 'PEMALANG', '2015-11-12', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:34:12', '2015-11-12 07:34:12'),
(203, '014', '01', '', 'AJI ALI ZAYIN', 'PEMALANG', '2015-11-12', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:34:57', '2015-11-12 07:34:57'),
(204, '025', '04', 'Kabupaten Pemalang', 'NUR IMAM ABDILLAH', 'Pemalang', '1996-05-02', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Kata dan Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:34:59', '2015-11-12 07:34:59'),
(205, '014', '01', '', 'ZAENAL', 'PEMALANG', '2015-11-05', '', 'Laki-Laki', '', 0, 0, '', 'Ya', 'Aktif', '0000-00-00', NULL, '2015-11-12 07:36:03', '2015-11-12 07:36:03'),
(206, '025', '04', 'Kabupaten Pemalang', 'CAHYA PUTRA GUMILANG', 'Pemalang', '2003-02-22', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Kata dan Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:36:03', '2015-11-12 07:36:03'),
(207, '040', '04', 'Kabupaten Pemalang', 'Panggih Fadlil Adim', 'PEMALANG', '2003-10-17', 'Desa Jatiroyong, Kec. Bodeh', 'Laki-Laki', '', 0, 0, 'Tekong', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:36:19', '2015-11-12 07:36:19'),
(208, '025', '04', 'Kabupaten Pemalang', 'ALRIZA MARCOSYAHIN', 'Pemalang', '2003-04-30', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Kata dan Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:37:04', '2015-11-12 07:37:04'),
(209, '034', '04', 'Kabupaten Pemalang', 'isrotun', 'pemalang', '1999-03-09', 'randudongkal', 'Perempuan', '', 162, 57, '', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:37:57', '2015-11-12 07:37:57'),
(210, '040', '04', 'Kabupaten Pemalang', 'Manarul', 'PEMALANG', '2003-03-30', 'Desa Jatiroyong, Kec. Bodeh', 'Laki-Laki', '', 0, 0, 'Tosser', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:37:58', '2015-11-12 07:37:58'),
(211, '034', '04', 'Kabupaten Pemalang', 'devinta', 'pemalang', '1997-03-04', 'pemalang', 'Perempuan', '', 165, 60, 'tanding', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:39:42', '2015-11-12 07:39:42'),
(212, '040', '04', 'Kabupaten Pemalang', 'M. Caspriyanto ', 'PEMALANG', '2004-01-09', 'Desa Jatiroyong, Kec. Bodeh', 'Laki-Laki', '', 0, 0, 'Smasher', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:39:54', '2015-11-12 07:39:54'),
(213, '025', '04', 'Kabupaten Pemalang', 'SALMA PAMELA NUR', 'Pemalang', '2002-05-01', 'Petarukan Pemalang', 'Perempuan', '', 0, 0, 'Kata dan Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:40:05', '2015-11-12 07:40:05'),
(214, '040', '04', 'Kabupaten Pemalang', 'Dimas Setiawan', 'PEMALANG', '2003-01-09', 'Desa Jatiroyong, Kec. Bodeh', 'Laki-Laki', '', 0, 0, 'Tekong', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:40:54', '2015-11-12 07:40:54'),
(215, '025', '03', 'Kabupaten Pemalang', 'NABILA TIARANI ARIFITRIYAN', 'Pemalang', '2002-11-01', 'Comal Pemalang', 'Perempuan', '', 0, 0, 'Kata dan Kumite', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:41:37', '2015-11-12 07:41:37'),
(218, '040', '04', 'Kabupaten Pemalang', 'Gunevi', 'PEMALANG', '2003-08-07', 'Desa Jatiroyong, Kec. Bodeh', 'Laki-Laki', '', 0, 0, 'Tosser', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:41:46', '2015-11-12 07:41:46'),
(219, '040', '04', 'Kabupaten Pemalang', 'Agus Saputra Aditya', 'PEMALANG', '1989-08-14', 'Desa Mojo, Kec. Ulujami', 'Laki-Laki', '087830712011', 0, 0, 'Smasher', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:52:10', '2015-11-12 07:52:10'),
(220, '040', '04', 'Kabupaten Pemalang', 'Slamet Wayudin', 'PEMALANG', '1989-05-06', 'Desa Sukorejo, Kec. Ulujami', 'Laki-Laki', '', 0, 0, 'Smasher', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:54:17', '2015-11-12 07:55:30'),
(221, '013', '04', 'Kabupaten Pemalang', 'Aji Saputro', 'Pemalang', '2001-11-01', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:56:44', '2015-11-12 07:56:44'),
(222, '013', '04', 'Kabupaten Pemalang', 'Amalia', 'Pemalang', '2001-11-01', 'Pemalang', 'Perempuan', '', 0, 0, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:57:34', '2015-11-12 07:59:48'),
(223, '013', '04', 'Kabupaten Pemalang', 'Aminah', 'Pemalang', '2001-11-01', 'Pemalang', 'Perempuan', '', 0, 0, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:58:18', '2015-11-12 08:00:13'),
(224, '040', '04', 'Kabupaten Pemalang', 'Muh. Hadi Purwanto', 'PEMALANG', '1988-02-08', 'Ds Ujunggede, Kec. Ampelgading', 'Laki-Laki', '', 0, 0, 'Smasher', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:58:41', '2015-11-12 07:58:41'),
(225, '013', '04', 'Kabupaten Pemalang', 'Andra Mahesa', 'Pemalang', '1998-11-01', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 07:59:21', '2015-11-12 07:59:21'),
(226, '013', '04', 'Kabupaten Pemalang', 'Anjam Piani', 'Pemalang', '1995-11-01', 'Pemalang', 'Perempuan', '', 0, 0, '', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:01:15', '2015-11-12 08:01:15'),
(227, '013', '04', 'Kabupaten Pemalang', 'Arif Ardi S', 'Pemalang', '1994-11-01', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:02:09', '2015-11-12 08:02:09'),
(228, '010', '04', 'Kabupaten Pemalang', 'Alifia Ramadhanti', 'Pemalang', '1999-12-04', 'SMPN 2 TAMAN', 'Perempuan', '', 166, 54, 'Guard', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 08:02:17', '2015-11-12 08:02:17'),
(229, '010', '04', 'Kabupaten Pemalang', 'Miladdina', 'Pemalang', '1999-06-07', 'SMAN 1 PEMALANG', 'Perempuan', '', 170, 56, 'Center', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 08:03:46', '2015-11-12 08:03:46'),
(230, '013', '04', 'Kabupaten Pemalang', 'Arif Nurdiansyah', 'Pemalang', '1993-11-01', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:06:26', '2015-11-12 08:06:26'),
(231, '010', '04', 'Kabupaten Pemalang', 'Davit Riyadi', 'Pemalang', '1998-10-19', 'SMKN 1 AMPELGADING', 'Laki-Laki', '', 177, 78, 'Center', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 08:07:08', '2015-11-12 08:07:08'),
(232, '013', '04', 'Kabupaten Pemalang', 'Ariza', 'Pemalang', '1997-11-01', 'Pemalang', 'Perempuan', '', 0, 0, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:07:27', '2015-11-12 08:07:27'),
(233, '040', '04', 'Kabupaten Pemalang', 'WAWAN SETIAWAN', 'PEMALANG', '1982-10-04', 'Desa Purwoharjo, Kec. Comal', 'Laki-Laki', '', 0, 0, 'Tekong', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:08:06', '2015-11-12 08:08:06'),
(234, '013', '04', 'Kabupaten Pemalang', 'Ayu', 'Pemalang', '1998-11-01', 'Pemalang', 'Perempuan', '', 0, 0, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:08:24', '2015-11-12 08:08:24'),
(235, '013', '04', 'Kabupaten Pemalang', 'Ciswanto', 'Pekalongan', '1996-09-10', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:09:50', '2015-11-12 08:09:50'),
(236, '010', '04', 'Kabupaten Pemalang', 'Agil Waliono', 'Pemalang', '1998-08-31', 'SMKN 1 AMPELGADING', 'Laki-Laki', '', 167, 80, 'Point Guard', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 08:10:00', '2015-11-12 08:10:00'),
(237, '013', '04', 'Kabupaten Pemalang', 'Daffa', 'Pemalang', '1998-11-01', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:11:07', '2015-11-12 08:11:07');
INSERT INTO `atlits` (`id`, `cabang`, `jenis`, `kota_kab`, `nama`, `tmp_lahir`, `tgl_lahir`, `alamat`, `jenis_kel`, `no_telp`, `tinggi_badan`, `berat_badan`, `spesialis`, `potensial`, `status`, `tanggal_status`, `foto`, `created_at`, `updated_at`) VALUES
(238, '010', '04', 'Kabupaten Pemalang', 'Gunawan Aji Saputra', 'Pemalang', '2000-02-07', 'SMPN 2 TAMAN', 'Laki-Laki', '', 169, 56, 'Point Guard', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 08:12:21', '2015-11-12 08:12:21'),
(239, '013', '04', 'Kabupaten Pemalang', 'Dimas Maulana Iksan', 'Pemalang', '1998-03-12', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:12:25', '2015-11-12 08:12:25'),
(240, '013', '04', 'Kabupaten Pemalang', 'Dina', 'Pemalang', '1995-11-01', 'Pemalang', 'Perempuan', '', 0, 0, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:13:52', '2015-11-12 08:13:52'),
(241, '010', '04', 'Kabupaten Pemalang', 'Dimas Tri Saputra', 'Pemalang', '1999-03-13', 'SMKN 1 AMPELGADING', 'Laki-Laki', '', 165, 50, 'Point Guard', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 08:14:01', '2015-11-12 08:14:01'),
(242, '013', '04', 'Kabupaten Pemalang', 'Dwi Yulian', 'Pemalang', '1997-11-01', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:15:02', '2015-11-12 08:15:02'),
(243, '010', '04', 'Kabupaten Pemalang', 'Widi Rizky Refriawan', 'Pemalang', '1998-06-13', 'SMKN 1 AMPELGADING', 'Laki-Laki', '', 170, 56, 'Point Guard', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 08:15:55', '2015-11-12 08:15:55'),
(244, '013', '04', 'Kabupaten Pemalang', 'Eko Setio Nugroho', 'Pekalongan', '1998-01-21', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:16:19', '2015-11-12 08:21:04'),
(245, '013', '04', 'Kabupaten Pemalang', 'Fadilah', 'Pemalang', '1997-11-01', 'Pemalang', 'Perempuan', '', 0, 0, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:17:17', '2015-11-12 08:17:17'),
(246, '010', '04', 'Kabupaten Pemalang', 'Yusuf Novrianto', 'Pemalang', '1998-05-04', 'SMAN 1 PEMALANG', 'Laki-Laki', '', 180, 56, 'Point Guard', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 08:17:58', '2015-11-12 08:17:58'),
(247, '013', '04', 'Kabupaten Pemalang', 'Fauzan Al Rosyid', 'Pemalang', '1996-08-02', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:18:25', '2015-11-12 08:18:25'),
(248, '010', '04', 'Kabupaten Pemalang', 'Wemma Fernanza A', 'Pemalang', '1998-05-06', 'SMAN 1 PEMALANG', 'Laki-Laki', '', 170, 65, 'Center', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 08:19:28', '2015-11-12 08:19:28'),
(249, '013', '04', 'Kabupaten Pemalang', 'Hanif Daffa Ammar', 'Pekalongan', '2000-12-20', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:20:02', '2015-11-12 08:20:02'),
(250, '010', '04', 'Kabupaten Pemalang', 'Tri Yoga Kusuma', 'Pemalang', '1998-02-02', 'SMK SATYA PRAJA', 'Laki-Laki', '', 170, 44, 'Point Guard', 'Ya', 'Aktif', '2014-11-04', NULL, '2015-11-12 08:21:37', '2015-11-12 08:21:37'),
(251, '013', '04', 'Kabupaten Pemalang', 'Hery Alma', 'Pemalang', '2000-11-01', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:21:54', '2015-11-12 08:21:54'),
(252, '013', '04', 'Kabupaten Pemalang', 'Indra Dwi Harianto', 'Pekalongan', '1997-04-16', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:23:00', '2015-11-12 08:23:00'),
(253, '010', '04', 'Kabupaten Pemalang', 'Carllos Hadiprodjo', 'Pemalang', '1998-11-04', 'SMA PIUS PEMALANG', 'Laki-Laki', '', 170, 56, 'Point Guard', 'Ya', 'Aktif', '2013-11-04', NULL, '2015-11-12 08:23:08', '2015-11-12 08:23:08'),
(254, '013', '04', 'Kabupaten Pemalang', 'Intan MS', 'Pemalang', '1999-11-01', 'Pemalang', 'Perempuan', '', 0, 0, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:24:23', '2015-11-12 08:24:23'),
(255, '013', '04', 'Kabupaten Pemalang', 'Khoirul Basyar', 'Pemalang', '1996-07-05', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:25:30', '2015-11-12 08:25:30'),
(256, '013', '04', 'Kabupaten Pemalang', 'Kusbianto', 'Pekalongan', '1996-10-10', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:26:33', '2015-11-12 08:26:33'),
(257, '013', '04', 'Kabupaten Pemalang', 'M. Fadly', 'Pemalang', '1995-11-01', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:27:44', '2015-11-12 08:27:44'),
(258, '013', '04', 'Kabupaten Pemalang', 'Orbit Megandaru', 'Pekalongan', '1996-10-05', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:28:50', '2015-11-12 08:28:50'),
(259, '013', '04', 'Kabupaten Pemalang', 'Renaldo Sukma Wijaya', 'Pemalang', '1997-07-20', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:30:06', '2015-11-12 08:30:06'),
(260, '013', '04', 'Kabupaten Pemalang', 'Rendy Setiawan', 'Jakarta', '1996-05-14', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:31:24', '2015-11-12 08:31:24'),
(261, '013', '04', 'Kabupaten Pemalang', 'Reni Arista Dewi', 'Pemalang', '1996-05-30', 'Comal Pemalang', 'Perempuan', '', 0, 0, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:33:01', '2015-11-12 08:33:01'),
(262, '013', '04', 'Kabupaten Pemalang', 'Suhendra Wisono', 'Pemalang', '1996-05-06', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:34:10', '2015-11-12 08:34:10'),
(263, '013', '04', 'Kabupaten Pemalang', 'Sufyan Syamaidzar Rosyid', 'Pekalongan', '1997-10-23', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:35:29', '2015-11-12 08:35:29'),
(264, '013', '04', 'Kabupaten Pemalang', 'Stefanus Galih Dwi Wicaksono', 'Pemalang', '1994-01-10', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:36:51', '2015-11-12 08:36:51'),
(265, '013', '04', 'Kabupaten Pemalang', 'Shedy Utomo', 'Pekalongan', '1999-01-28', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:37:50', '2015-11-12 08:37:50'),
(266, '013', '04', 'Kabupaten Pemalang', 'Rico', 'Pemalang', '1999-11-01', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:38:56', '2015-11-12 08:38:56'),
(267, '013', '04', 'Kabupaten Pemalang', 'Rozid', 'Pemalang', '1995-11-01', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:40:10', '2015-11-12 08:40:10'),
(268, '013', '04', 'Kabupaten Pemalang', 'Safira', 'Pemalang', '1998-11-01', 'Pemalang', 'Perempuan', '', 0, 0, 'Tunggal Putri', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:42:31', '2015-11-12 08:42:31'),
(269, '013', '04', 'Kabupaten Pemalang', 'Siswanto', 'Pemalang', '1995-11-01', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:44:14', '2015-11-12 08:44:14'),
(270, '013', '04', 'Kabupaten Pemalang', 'Suwandaru Prasetio', 'Pemalang', '2001-11-01', 'Pemalang', 'Laki-Laki', '', 0, 0, 'Tunggal Putra', 'Ya', 'Aktif', '2015-11-12', NULL, '2015-11-12 08:45:36', '2015-11-12 08:45:36');

-- --------------------------------------------------------

--
-- Table structure for table `bpap`
--

CREATE TABLE `bpap` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tinggi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `berat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kel` enum('Laki-Laki','Perempuan') COLLATE utf8_unicode_ci NOT NULL,
  `foto` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cabangs`
--

CREATE TABLE `cabangs` (
  `id_cabang` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `nama_cab` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cabangs`
--

INSERT INTO `cabangs` (`id_cabang`, `nama_cab`) VALUES
('001', 'Aeromodelling'),
('002', 'Anggar'),
('003', 'Anggar (IKASI)'),
('004', 'Angkat Besi, Angkat Berat, dan Bina Raga'),
('005', 'Atletik (PASI)'),
('006', 'Balap Motor (IMI)'),
('007', 'Balap Sepeda (ISSI)'),
('008', 'Berkuda (PORDASI)'),
('009', 'Billiard (POBSI)'),
('010', 'Bola Basket (PERBASI)'),
('011', 'Bola Voli (PBVSI)'),
('012', 'Bowling (PBI)'),
('013', 'Bulu Tangkis (PBSI)'),
('014', 'Catur (PERCASI)'),
('015', 'CRICKET'),
('016', 'Dansa'),
('017', 'Dayung (PODSI)'),
('018', 'Drum Band'),
('019', 'Fasi Aerosport'),
('020', 'Gantole'),
('021', 'Golf (PGI)'),
('022', 'Gulat (PGSI)'),
('023', 'Hockey (PHSI)'),
('024', 'Judo (PJSI)'),
('025', 'Karate (FORKI)'),
('026', 'Kempo (PERKEMI)'),
('027', 'Layar (FORLASI)'),
('028', 'Menembak (PERBAKIN)'),
('029', 'Muai Thay'),
('030', 'NPC'),
('031', 'Panahan (PERPANI)'),
('032', 'Panjat Tebing (FPTI)'),
('033', 'Paralayang'),
('034', 'Pencak Silat (IPSI)'),
('035', 'Renang (PRSI)'),
('036', 'Selam'),
('037', 'Senam (PERSANI)'),
('038', 'Sepak Bola (PSSI) Prov. Jateng'),
('039', 'Sepak Bola FUTSAL (PSSI) Prov. Jateng'),
('040', 'Sepak Takraw (PSTI)'),
('041', 'Sepak Roda'),
('042', 'Sky Air (PSASI)'),
('043', 'Softball/baseball'),
('044', 'Squash'),
('045', 'Taekwondo'),
('046', 'Tarung Drajat'),
('047', 'Tenis Lapangan (PELTI)'),
('048', 'Tenis Meja (PTMSI)'),
('049', 'Terjun Payung (PTPI)'),
('050', 'Tinju (PERTINA)'),
('051', 'Wood Ball'),
('052', 'Wushu (PBWI)');

-- --------------------------------------------------------

--
-- Table structure for table `event_atlit`
--

CREATE TABLE `event_atlit` (
  `id_event_atlit` int(10) UNSIGNED NOT NULL,
  `id_atlit` int(11) NOT NULL,
  `tingkat` enum('Daerah / Kab Kota','Provinsi','Nasional','Internasional') COLLATE utf8_unicode_ci NOT NULL,
  `nama_event_atlit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kelas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `medali` enum('Emas','Perak','Perunggu') COLLATE utf8_unicode_ci NOT NULL,
  `peringkat` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_atlit`
--

INSERT INTO `event_atlit` (`id_event_atlit`, `id_atlit`, `tingkat`, `nama_event_atlit`, `tahun`, `kelas`, `medali`, `peringkat`) VALUES
(9, 5, 'Daerah / Kab Kota', 'POR DULONGMAS', '2013', '', 'Perunggu', '3'),
(10, 18, 'Provinsi', 'Peparprov', '2013', '', 'Emas', '-'),
(11, 14, 'Provinsi', 'Peparprov', '2003', '', 'Emas', '1'),
(12, 14, 'Internasional', 'Asean Gemes', '2003', '', 'Emas', '1'),
(13, 14, 'Nasional', 'Porcanas', '2007', '', 'Perak', '1'),
(14, 14, 'Nasional', 'Porcanas', '2010', '', 'Emas', '1'),
(15, 51, 'Provinsi', 'Peparprov', '2013', '', 'Perunggu', '3'),
(16, 6, 'Daerah / Kab Kota', 'POR DULONGMAS', '2011', '', 'Perunggu', '3'),
(17, 57, 'Provinsi', 'Peparprov', '2013', '', 'Perunggu', '3'),
(18, 66, 'Provinsi', 'Peparprov', '2003', '', 'Perunggu', '3'),
(19, 133, 'Daerah / Kab Kota', 'Kejurda KU-18 Jawa Tengah', '2015', '', 'Perak', '2'),
(20, 137, 'Provinsi', 'Kejurda KU-18 Jawa Tengah', '2015', '', 'Perak', '2'),
(21, 145, 'Daerah / Kab Kota', 'Kejurda KU-18 Jawa Tengah', '2015', '', 'Perak', '2'),
(22, 148, 'Daerah / Kab Kota', 'POPDA KABUPATEN ', '2014', '', 'Emas', '1'),
(23, 196, 'Daerah / Kab Kota', 'POPDA KABUPATEN ', '2015', '', 'Emas', '1'),
(24, 100, 'Daerah / Kab Kota', 'POR DULONGMAS', '2011', '', 'Perunggu', '3'),
(25, 8, 'Daerah / Kab Kota', 'POR DULONGMAS', '2011', '', 'Perunggu', '3'),
(26, 224, 'Provinsi', 'POPDA JATENG SMA', '2003', '', 'Emas', '1'),
(27, 219, 'Daerah / Kab Kota', 'POR DULONGMAS', '2011', '', 'Perunggu', '3'),
(28, 62, 'Daerah / Kab Kota', 'POR DULONGMAS', '2011', '', 'Perunggu', '3'),
(29, 233, 'Daerah / Kab Kota', 'PORKAB', '2003', '', 'Emas', '1');

-- --------------------------------------------------------

--
-- Table structure for table `event_pelatih`
--

CREATE TABLE `event_pelatih` (
  `id_event_pelatih` int(10) UNSIGNED NOT NULL,
  `id_pelatih` int(11) NOT NULL,
  `tingkat` enum('Daerah / Kab Kota','Provinsi','Nasional','Internasional') COLLATE utf8_unicode_ci NOT NULL,
  `nama_event_pelatih` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `emas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `perak` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `perunggu` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_pelatih`
--

INSERT INTO `event_pelatih` (`id_event_pelatih`, `id_pelatih`, `tingkat`, `nama_event_pelatih`, `tahun`, `emas`, `perak`, `perunggu`) VALUES
(4, 11, 'Daerah / Kab Kota', 'KEJURDA KU-18 JATENG', '2014', '', '', '3'),
(5, 49, 'Daerah / Kab Kota', 'DULONGMAS', '2011', '', '1', ''),
(6, 44, 'Provinsi', 'TEGAL OPEN', '2015', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `event_pemuda`
--

CREATE TABLE `event_pemuda` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_wasit`
--

CREATE TABLE `event_wasit` (
  `id_event_wasit` int(10) UNSIGNED NOT NULL,
  `id_wasit` int(11) NOT NULL,
  `tingkat` enum('Daerah / Kab Kota','Provinsi','Nasional','Internasional') COLLATE utf8_unicode_ci NOT NULL,
  `nama_event_wasit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_wasit`
--

INSERT INTO `event_wasit` (`id_event_wasit`, `id_wasit`, `tingkat`, `nama_event_wasit`, `tahun`) VALUES
(4, 40, 'Daerah / Kab Kota', 'POPDA KARESIDENAN PEKALONGAN', '2014'),
(5, 44, 'Daerah / Kab Kota', 'POPDA KARESIDENAN PEKALONGAN', '2014');

-- --------------------------------------------------------

--
-- Table structure for table `jeniss`
--

CREATE TABLE `jeniss` (
  `id_jenis` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `nama_jenis` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jeniss`
--

INSERT INTO `jeniss` (`id_jenis`, `nama_jenis`) VALUES
('01', 'PPLPD'),
('02', 'PPLPN'),
('03', 'PPLM'),
('04', 'KAB / KOTA'),
('05', 'PELATDA'),
('06', 'PELATNAS'),
('07', 'PROFESIONAL'),
('08', 'NPC');

-- --------------------------------------------------------

--
-- Table structure for table `jpi`
--

CREATE TABLE `jpi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tinggi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `berat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kel` enum('Laki-Laki','Perempuan') COLLATE utf8_unicode_ci NOT NULL,
  `foto` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `knpi`
--

CREATE TABLE `knpi` (
  `id_knpi` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `tingkat` enum('Daerah / Kab Kota','Provinsi') COLLATE utf8_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `knpi`
--

INSERT INTO `knpi` (`id_knpi`, `nama`, `alamat`, `tingkat`, `no_telp`, `kota_kab`) VALUES
(4, 'PK KNPI KECAMATAN BODEH', 'JL. RAYA BODEH NO. 22', 'Daerah / Kab Kota', '085385350885', 'Kabupaten Pemalang'),
(5, 'PK KNPI KECAMATAN PEMALANG', 'JALAN D.I. PANJAITAN', 'Daerah / Kab Kota', '08179595400', 'Kabupaten Pemalang'),
(6, 'PK KNPI KECAMATAN TAMAN', 'JL. PIERRE TENDEAN NO:2 TAMAN PEMALANG', 'Daerah / Kab Kota', '081931805250', 'Kabupaten Pemalang'),
(7, 'PK KNPI KECAMATAN COMAL', '', 'Daerah / Kab Kota', '', 'Kabupaten Pemalang'),
(8, 'PK KNPI KECAMATAN PETARUKAN', '', 'Daerah / Kab Kota', '', 'Kabupaten Pemalang'),
(9, 'PK KNPI KECAMATAN ULUJAMI', '', 'Daerah / Kab Kota', '', 'Kabupaten Pemalang'),
(10, 'PK KNPI KECAMATAN AMPELGADING', '', 'Daerah / Kab Kota', '', 'Kabupaten Pemalang'),
(11, 'PK KNPI KECAMATAN BANTARBOLANG', 'JALAN RAYA BANTARBOLANG', 'Daerah / Kab Kota', '081381850417', 'Kabupaten Pemalang'),
(12, 'PK KNPI KECAMATAN MOGA', '', 'Daerah / Kab Kota', '', 'Kabupaten Pemalang'),
(13, 'DPD KNPI KAB PEMALANG', 'Jl. PEMUDA NO: 93 PEMALANG', 'Daerah / Kab Kota', '(0284) 323628', 'Kabupaten Pemalang'),
(14, 'PK KNPI KECAMATAN RANDUDONGKAL', 'JL. RAYA RANDUDONGKAL PEMALANG', 'Daerah / Kab Kota', '', ''),
(16, 'PK KNPI KECAMATAN WARUNGPRING', '', 'Daerah / Kab Kota', '', 'Kabupaten Pemalang'),
(18, 'PK KNPI KECAMATAN PULOSARI', '', 'Daerah / Kab Kota', '', 'Kabupaten Pemalang'),
(19, 'PK KNPI KECAMATAN WATUKUMPUL', 'Jl. Raya  Watu kumpul  Desa Watukumpul', 'Daerah / Kab Kota', '', 'Kabupaten Pemalang'),
(20, 'PK KNPI KECAMATAN BELIK', 'Jl.Serka Marinir (Anm) Tulus Ujianto No.23, Belik 52356 Pemalang', 'Daerah / Kab Kota', '081903697492', 'Kabupaten Pemalang');

-- --------------------------------------------------------

--
-- Table structure for table `knpi_struktur`
--

CREATE TABLE `knpi_struktur` (
  `id_anggota` int(10) UNSIGNED NOT NULL,
  `id_knpi` int(11) NOT NULL,
  `nama_anggota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jabatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `knpi_struktur`
--

INSERT INTO `knpi_struktur` (`id_anggota`, `id_knpi`, `nama_anggota`, `tmp_lahir`, `tgl_lahir`, `jabatan`) VALUES
(2, 2, 'MUALIP , S.Pd', 'PEMALANG', '1972-08-08', 'KETUA'),
(3, 2, 'GANDUNG GUNTORO', 'YOGYAKARTA', '1965-09-23', 'WAKIL KETUA'),
(6, 4, 'MOHAMAD MASRURI, S. Pd. I', 'PEMALANG', '1984-06-21', 'KETUA'),
(7, 4, 'SAVEUDIN', 'PEMALANG', '1977-07-01', 'WAKIL KETUA'),
(8, 4, 'MURWANTO', 'PEMALANG', '1970-07-01', 'WAKIL KETUA'),
(9, 4, 'KHALIMI', 'PEMALANG', '1976-07-01', 'WAKIL KETUA'),
(10, 4, 'DARMANSAH BANI SODIKIN', 'PEMALANG', '1985-08-01', 'SEKRETARIS'),
(11, 4, 'AGUS ROUF', 'PEMALANG', '1981-07-01', 'WAKIL SEKRETARIS'),
(12, 4, 'SITI NUR HIDAYATI', 'PEMALANG', '1960-07-01', 'BENDAHARA'),
(13, 12, 'Dedi Bahtiar Nuruduin', 'Pemalang', '2015-11-30', 'Ketua'),
(14, 4, 'BUDI MERGININGSIH', 'PEMALANG', '1972-07-01', 'WAKIL BENDAHARA'),
(15, 12, 'Himam , S.Ag', 'Pemalang', '2015-11-30', 'Wakil Ketua'),
(16, 4, 'MUAFAH', 'PEMALANG', '1966-07-01', 'KOMISI ORGANISAS, PENDIDIKAN DAN KADERISASI'),
(17, 12, 'Aenurofik', 'Pemalang', '1977-03-15', 'Wakil Ketua II'),
(18, 4, 'RIYATNO', 'PEMALANG', '1991-07-01', 'KOMISI ORGANISAS, PENDIDIKAN DAN KADERISASI'),
(19, 4, 'AGUS KURDI', 'PEMALANG', '1977-07-01', 'KOMISI EKONOMI, WIRASWASTA DAN KOPERASI'),
(20, 4, 'WANISAH', 'PEMALANG', '1990-07-01', 'KOMISI EKONOMI, WIRASWASTA DAN KOPERASI'),
(21, 13, 'MUALIP , S.Pd', 'PEMALANG', '1972-08-02', 'KETUA'),
(22, 10, 'Muslih.S.Pd.I', 'pemalang', '1975-09-08', 'Ketua'),
(23, 4, 'KUSPENDI', 'PEMALANG', '1991-05-12', 'KOMISI SOSIAL, BUDAYA DAN PARIWISATA'),
(24, 13, 'GANDUNG GUNTORO', 'PEMALANG', '1965-09-23', 'WAKIL KETUA'),
(25, 13, 'Drs. WILUJENG RIBUDIYANTO', 'PEMALANG', '1965-09-17', 'WAKIL KETUA'),
(26, 4, 'M. MAS\'UD DIMYATI', 'PEMALANG', '1988-07-01', 'KOMISI SOSIAL, BUDAYA DAN PARIWISATA'),
(27, 10, 'samin mahmud', 'pemalang', '1976-06-09', 'Wakil ketua'),
(28, 13, 'SLAMET RIYANTO, S.H', 'PEMALANG', '1865-11-10', 'WAKIL KETUA'),
(29, 4, 'ANDI PRANOTO', 'PEMALANG', '1987-01-01', 'KOMISI IDIOLOGI, HUKUM DAN HAM'),
(30, 13, 'MAHFUDIN, S.Ag', 'PEMALANG', '1965-09-23', 'WAKIL KETUA'),
(31, 10, 'Mualimah', 'Pemalang', '1975-06-24', 'Wakil Ketua'),
(32, 13, 'JUBAEDI', 'PEMALANG', '1977-11-21', 'WAKIL KETUA'),
(33, 4, 'WASFIYAH', 'PEMALANG', '1989-01-12', 'KOMISI EKONOMI, WIRASWASTA DAN KOPERASI'),
(34, 13, 'SIKMA REJIK MARTINO, S.Pd', 'PEMALANG', '1978-08-24', 'WAKIL KETUA'),
(35, 13, 'AHMAD HIBATULLAH, A.Md', 'PEMALANG', '1979-11-21', 'WAKIL KETUA'),
(36, 10, 'Slamet Santoso', 'Pemalang', '1977-02-16', 'Wakil Ketua'),
(37, 13, 'Dra. ISROTIN', 'PEMALANG', '1865-11-10', 'WAKIL KETUA'),
(38, 13, 'BAGONG YOYOK', 'PEMALANG', '1969-11-10', 'WAKIL KETUA'),
(39, 4, 'ANI EFA. A', 'PEMALANG', '1978-01-12', 'KOMISI POLITIK DAN HANKAM'),
(40, 10, 'Umi Khaolah', 'Pemalang', '1974-08-14', 'Sekretaris'),
(41, 4, 'NANI ANDRIYANI', 'PEMALANG', '1986-05-09', 'KOMISI POLITIK DAN HANKAM'),
(42, 10, 'Johan Efendi', 'Pemalang', '1973-01-28', 'Wakil Sekretaris'),
(43, 10, 'Siti Mubarokah', 'Pemalang', '1977-05-01', 'Bendahara'),
(44, 12, 'Atia Triana Zuhriana', 'Pemalang', '1973-11-07', 'Wakil Ketua III'),
(45, 10, 'Dini Safira Nur', 'Pemalang', '1975-03-19', 'Wakil Bendahara'),
(46, 13, 'M. AKHWAN', 'PEMALANG', '1974-12-05', 'SEKRETARIS UMUM'),
(47, 12, 'Umi Salamah', 'pemalang', '1974-03-07', 'Wakil Ketua IV'),
(48, 13, 'HERY SETYAWAN, S.H', 'PEMALANG', '1967-04-09', 'WAKIL SEKRETARIS'),
(49, 10, 'Fuad Zaenudin', 'Pemalang', '1974-11-22', 'Komisi Organisasi, Pendidikan dan Kaderisasi'),
(50, 13, 'ZAINAL MUTTAQIN, S.H', 'PEMALANG', '1970-08-02', 'WAKIL KETUA'),
(51, 12, 'Irwan Yusuf Budianto, SE', 'pemalang', '1973-03-02', 'Sekretaris'),
(52, 13, 'IKA PURWANTI, S.Pd.I', 'PEMALANG', '1979-12-25', 'WAKIL SEKRETARIS'),
(53, 13, 'ZAENURI KAMAL, S.IP', 'PEMALANG', '1970-11-17', 'WAKIL SEKRETARIS'),
(54, 10, 'Rusmiyati', 'Pemalang', '1977-06-24', 'Komisi Organisasi, Pendidikan, dan Kaderisasi'),
(55, 12, 'Agus Sopan', 'pemalang', '1980-09-05', 'Wakil sekretaris'),
(56, 13, 'ARIF SENOAJI, S.STP', 'PEMALANG', '1986-11-26', 'WAKIL SEKRETARIS'),
(57, 10, 'Nurhidayati', 'Pemalang', '1975-12-25', 'Komisi Ekonomi, Wiraswasta dan Koperasi'),
(58, 12, 'Istana Khoero', 'pemalang', '0000-00-00', 'Bendahara'),
(59, 13, 'NUR AKHMAD SIDIK', 'PEMALANG', '1984-11-14', 'WAKIL SEKRETARIS'),
(60, 13, 'M. ROLAND WIBOWO, S.E', 'PEMALANG', '1975-11-17', 'WAKIL SEKRETARIS'),
(61, 10, 'A. Thohir', 'Pemalang', '1974-04-07', 'Komisi Ekonomi, Wiraswasta, dan Koperasi'),
(62, 13, 'UNTUNG RAHARJO, SS', 'PEMALANG', '1972-11-10', 'WAKIL SEKRETARIS'),
(63, 12, 'Asmiatul Ghasanah', 'Pemalang', '1975-05-03', 'Wakil Bendahara'),
(64, 13, 'AMELIA WIDYASTUTI', 'PEMALANG', '1982-11-14', 'BENDAHARA'),
(65, 13, 'ISKANDAR ALI SYAHBANA', 'PEMALANG', '1972-08-08', 'BENDAHARA'),
(66, 10, 'Mega Kurniawan', 'Pemalang', '1972-12-12', 'Komisi Sosial, Budaya, dan Pariwisata'),
(67, 13, 'ANDRE ANSORI LEONANDRA', 'PEMALANG', '1981-11-08', 'BENDAHARA'),
(68, 12, 'Abdul Munir, S .Pd. i', 'Pemalang', '1977-02-02', 'Komisi Organisasi, Pendidikan dan Kaderisasi'),
(69, 13, 'AYU MARLINA, S.Ag', 'PEMALANG', '1983-11-23', 'BENDAHARA'),
(70, 12, 'Arif Warjito', 'Pemalang', '1971-09-09', 'Komisi Organisasi, Pendidikan dan Kaderisasi'),
(71, 13, 'BEKTI IRAWAN, S.E', 'PEMALANG', '1870-10-10', 'BENDAHARA'),
(72, 13, 'Dra. DYAH ERINA PUJIATI', 'PEMALANG', '1969-01-10', 'BENDAHARA'),
(73, 13, 'UMAYAH, S.Ag', 'PEMALANG', '1982-03-18', 'BENDAHARA'),
(74, 10, 'Sulkhan', 'Pemalang', '1976-09-25', 'Komisi Sosial, Budaya, dan Pariwisata'),
(75, 12, 'Rifqi Arwanto', 'Pemalang', '1980-07-06', 'Komisi Ekonomo, Wirasuwasta dan Koprasi'),
(77, 13, 'SETIA PAMBUDI', 'PEMALANG', '1981-06-08', 'BENDAHARA'),
(78, 13, 'Drs. WINARYOTO', 'PEMALANG', '1865-11-20', 'KOMISI ORGANISASI, KADERISASI, DAN PENDIDIKAN'),
(79, 12, 'Elfi Sukaisih', 'Pemalang', '1981-08-02', 'Komisi Ekonomo, Wirasuwasta dan Koprasi'),
(80, 10, 'Triani Setianingsih', 'Pemalang', '1974-05-14', 'Komisi Ideologi, Hukum, dan HAM'),
(81, 13, 'SUWONO', 'PEMALANG', '1973-07-03', 'KOMISI ORGANISASI, KADERISASI, DAN PENDIDIKAN'),
(82, 12, 'Sigit Indiaro', 'Pemalang', '1983-03-05', 'Komisi Sosial, Budaya dan Pariwisata'),
(83, 13, 'MUNIROH, S.Pd', 'PEMALANG', '1968-01-21', 'KOMISI ORGANISASI, KADERISASI, DAN PENDIDIKAN'),
(84, 10, 'Chofif Dwi P', 'Pemalang', '1978-08-11', 'Komisi Idiologi, Hukum dan HAM'),
(85, 13, 'ABDUL HAKIM, SH.I', 'PEMALANG', '1985-11-26', 'KOMISI POLITIK, HUKUM, DAN HAM'),
(86, 10, 'Indah Lia Kumala', 'Pemalang', '1977-07-07', 'Komisi Politik dan Hankam'),
(87, 13, 'WALOEJO', 'PEMALANG', '1971-06-08', 'KOMISI POLITIK, HUKUM, DAN HAM'),
(88, 10, 'Romailah', 'Pemalang', '1975-05-06', 'Komisi Politik dan Hankam'),
(90, 13, 'AHMAD ANWAR, SH.I', 'PEMALANG', '1981-07-14', 'KOMISI POLITIK, HUKUM, DAN HAM'),
(91, 12, 'Rismanto', 'Pemalang', '1978-09-03', 'Komisi Sosial, Budaya dan Pariwisata'),
(92, 13, 'GREGORIUS ANGGA PRADITA', 'PEMALANG', '1984-02-16', 'KOMISI KESEHATAN DAN LINGKUNGAN HIDUP'),
(93, 12, 'Jatun Ernawa Sp', 'Pemalang', '1976-03-07', ' Komisi Indiologi, Hukum dan Ham'),
(94, 12, 'Jatun Ernawa Sp', 'Pemalang', '1976-03-07', ' Komisi Indiologi, Hukum dan Ham'),
(96, 13, 'SYAFII ROHMATILAH', 'PEMALANG', '1988-11-11', 'KOMISI KESEHATAN DAN LINGKUNGAN HIDUP'),
(97, 12, 'Nurasmi', 'Pemalang', '1982-06-07', 'Komisi Indiologi, Hukum dan Ham'),
(98, 13, 'RUYADI, S.Pd', 'PEMALANG', '1985-04-26', 'KOMISI KESEHATAN DAN LINGKUNGAN HIDUP'),
(99, 12, 'Suswarno', 'Pemalang', '1973-08-03', 'Komisi Politik dan Hankam'),
(100, 13, 'MOHAMAD MASRURI', 'PEMALANG', '1984-06-21', 'KOMISI SOSIAL, BUDAYA, DAN PARIWISATA'),
(101, 20, 'Kiki Dani Firmansyah', 'Pemalang', '1983-01-04', 'Ketua 1'),
(102, 13, 'DIARTI WIJAYANTI', 'PEMALANG', '1985-09-17', 'KOMISI SOSIAL, BUDAYA, DAN PARIWISATA'),
(103, 12, 'Fahrudin MD', 'Pemalang', '1983-04-03', 'Komisi Politik dan Hankam'),
(104, 20, 'Waka Andriyas Fellani', 'Pemalang', '1982-03-10', 'Ketua 2'),
(105, 20, 'Hernowo M. S', 'Purworejo', '1966-03-09', 'Ketua 3'),
(106, 13, 'IMAM KHAZALI,S.Pd', 'PEMALANG', '1879-10-20', 'KOMISI PEMBERDAYAAN EKONOMI DAN KOPERASI'),
(107, 13, 'HINDARTO', 'PEMALANG', '1974-11-28', 'KOMISI PEMBERDAYAAN EKONOMI DAN KOPERASI'),
(108, 13, 'ABDURROUB AL YASIDI', 'PEMALANG', '1975-11-17', 'KOMISI PEMBERDAYAAN EKONOMI DAN KOPERASI'),
(109, 13, 'AGUSTINA DYAH PURWANINGTYAS', 'PEMALANG', '1977-11-21', 'KOMISI SOSIAL, BUDAYA, DAN PARIWISATA'),
(110, 13, 'SRIFARIYATI, S.Ag', 'PEMALANG', '1985-10-20', 'KOMISI PEMBERDAYAAN PEREMPUAN'),
(111, 13, 'TRISYANTI AGUSTININGSIH, A.Md', 'PEMALANG', '1984-02-18', 'KOMISI PEMBERDAYAAN PEREMPUAN'),
(112, 20, 'Sugiono', 'Pemalang', '1982-05-12', 'Sekretaris'),
(113, 13, 'KARDINA IKA RAHAYU, S.Pd', 'PEMALANG', '1985-01-10', 'KOMISI PEMBERDAYAAN PEREMPUAN'),
(114, 13, 'RIYANTO SUBIYANTO', 'PEMALANG', '1976-11-15', 'KOMISI PENGKAJIAN DAN PENGEMBANGAN PEMUDA'),
(115, 13, 'KHASAN MAKHFUD, A.Md.Kom', 'PEMALANG', '1973-11-23', 'KOMISI PENGKAJIAN DAN PENGEMBANGAN PEMUDA'),
(116, 20, 'Chomsin', 'Pemalang', '1981-07-11', 'Sekretaris 2'),
(117, 13, 'UMAR KHUSAERI, S.Pd.I', 'PEMALANG', '1979-03-22', 'KOMISI PENGKAJIAN DAN PENGEMBANGAN PEMUDA'),
(118, 20, 'Nur Azizah', 'Pemalang', '1982-11-16', 'Bendehara'),
(119, 13, 'YULIANTI WAHYU WIDIASTUTI, ST', 'PEMALANG', '1978-08-08', 'KOMISI PENGEMBANGAN POTENSI KELAUTAN, KEHUTANAN, dan SUMBER DAYA ENERGI'),
(120, 13, 'GUNAWAN SUPRIYADI', 'PEMALANG', '1982-12-02', 'KOMISI PENGEMBANGAN POTENSI KELAUTAN, KEHUTANAN, dan SUMBER DAYA ENERGI'),
(121, 13, 'MA\'MUN RIYADH, S.Sos', 'PEMALANG', '1977-04-21', 'KOMISI PENGEMBANGAN POTENSI KELAUTAN, KEHUTANAN, dan SUMBER DAYA ENERGI'),
(122, 13, 'AGUS WIHARNO', 'PEMALANG', '1974-09-24', 'KOMISI KERJASAMA ANTAR LEMBAGA'),
(123, 20, 'Yomi', 'Pemalang', '1985-01-02', 'Bendahara 2'),
(124, 20, 'Arif Saefudin ', 'Pemalang', '1981-09-25', 'Komisi Organisasi, Pendidikan dan Kaderisasi'),
(125, 13, 'WAHYONO', 'PEMALANG', '1967-09-22', 'KOMISI KERJASAMA ANTAR LEMBAGA'),
(126, 13, 'SITI LATIFAH', 'PEMALANG', '1983-08-14', 'KOMISI KERJASAMA ANTAR LEMBAGA'),
(127, 13, 'A. HAMDAN, S.IP', 'PEMALANG', '1974-12-05', 'KOMISI KEROHANIAN'),
(128, 13, 'UMI KHAOLAH, S.Ag', 'PEMALANG', '1865-01-10', 'KOMISI KEROHANIAN'),
(129, 20, 'Syaifi Rohmatilah', 'Pemalang', '1984-08-20', 'Komisi Organisasi, Pendidikan dan Kaderisasi 2'),
(130, 13, 'ABDURRAHMAN, A.Md', 'PEMALANG', '1879-03-22', 'KOMISI KEROHANIAN'),
(131, 20, 'Sri Hartati, S.Pd.SD', 'Purworejo', '1967-08-28', 'Komisi Ekonomi Wiraswasta dan Koprasi '),
(132, 20, 'Untung Supriyanto', 'Pemalang', '1976-05-15', 'Komisi Ekonomi Wiraswasta dan Koprasi  2'),
(133, 20, 'Sukri', 'Pemalang', '1980-03-29', 'Komisi Hukum Idiologi, Hukum dan Ham'),
(134, 20, 'Suemi', 'Pemalang', '1979-10-31', 'Komisi Hukum Idiologi, Hukum dan Ham 2'),
(135, 20, 'Nuraeni', 'Pemalang', '2015-02-21', 'Komisi Politik dan Hankam'),
(136, 20, 'Isa Alman Suseno', 'Pemalang', '1971-11-17', 'Komisi Politik dan Hankam 2'),
(137, 6, 'SUWONO', 'PEMALANG', '1973-07-03', 'KETUA'),
(138, 11, 'UNTUNG RAHARJO', 'PEMALANG', '1974-04-16', 'KETUA'),
(139, 11, 'UMAR KHUSAENI', 'PEMALANG', '1979-03-22', 'WAKIL KETUA'),
(140, 11, 'MUSTAROJIN', 'PEMALANG', '1975-01-01', 'WAKIL KETUA'),
(141, 11, 'KRISTIADI', 'PEMALANG', '1975-01-02', 'WAKIL KETUA'),
(142, 11, 'QOYYUMUDIN', 'PEMALANG', '1975-01-03', 'WAKIL KETUA'),
(143, 11, 'BUDI SUSWIYOTO', 'PEMALANG', '1977-08-13', 'SEKRETARIS'),
(144, 11, 'ELY DAYANTI', 'PEMALANG', '1976-02-08', 'WAKIL SEKRETARIS'),
(145, 19, 'Ma\'mun Riyad', 'pemalang', '1974-12-27', 'Ketua '),
(146, 19, 'Ahmad Kholil, S.Ag', 'Pemalang', '1973-11-16', 'Wakil Ketua'),
(147, 19, 'Cipto Yuwono, S.Pd', 'Pemalang', '1985-11-05', 'Wakil Ketua'),
(148, 19, 'Rokhmat', 'Pemalang', '1988-03-01', 'Wakil Ketua'),
(149, 19, 'Slamet Arif Al Amin ST', 'Pemalang', '1978-04-12', 'Sekretaris'),
(150, 19, 'Ibnu Susanto', 'pemalang', '1979-04-11', 'Wakil Sekretaris'),
(151, 19, 'Ma\'muroh, SP.d', 'Pemalang', '1988-10-08', 'Bendahara'),
(152, 19, 'Maulidah, S,Pdi', 'Pemalang', '1970-01-12', 'Wakil Bendahara'),
(153, 19, 'Jamhari', 'Pemalang', '1985-05-07', 'Komisi organisasi, Pendidikan  dan kaderisasi'),
(154, 19, 'Ansori', 'Pemalang', '1973-07-16', 'Komisi organisasi, Pendidikan  dan kaderisasi'),
(155, 19, 'Wulas Mulyanto, SE', 'Pemalang', '1987-03-03', 'Komisi Ekonomi, Wiraswasta dan Koperasi'),
(156, 19, 'Asih Murdiasih,  SE', 'Pemalang', '1998-09-22', 'Komisi Ekonomi, Wiraswasta dan Koperasi'),
(157, 19, 'Untung Rifai', 'Pemalang', '1976-03-20', 'Komisi Sosial, Budaya dan pariwisata'),
(158, 19, 'Kholid Mawardi', 'Pemalang', '1975-06-18', 'Komisi Sosial, Budaya dan pariwisata'),
(159, 19, 'Awaludin ', 'Pemalang', '1971-09-06', 'Komisi Idiologi, Hukum  dan HAM'),
(160, 19, 'Sukamso ', 'Klaten', '1975-03-23', 'Komisi Idiologi, Hukum  dan HAM'),
(161, 19, 'Abd. fakih ST', 'Pemalang', '1975-04-22', 'Komisi Politik dan Hankam'),
(162, 19, 'Nursamsi', 'Pemalang', '1972-04-19', 'Komisi Politik dan Hankam'),
(163, 6, 'SUHARTO, SH', 'PEMALANG', '1975-03-17', 'WAKIL KETUA'),
(164, 6, 'TUHATIN, S.Ag', 'PEMALANG', '1969-02-10', 'WAKIL KETUA'),
(165, 11, 'MALAHAH', 'PEMALANG', '1975-03-03', 'BENDAHARA'),
(166, 6, 'SODIKIN', 'PEMALANG', '1957-08-10', 'WAKIL KETUA'),
(167, 6, 'SUCIPTO, S.E', 'PEMALANG', '1965-06-10', 'WAKIL KETUA'),
(168, 11, 'ANIKMAH', 'PEMALANG', '1980-05-10', 'WAKIL BENDAHARA'),
(169, 11, 'TARONO', 'PEMALANG', '1970-01-13', 'Komisi Organisasi, Pendidikan dan Kaderisasi'),
(170, 6, 'MUNIROH, S.Pd', 'PEMALANG', '1968-10-12', 'SEKRETARIS'),
(171, 11, 'NOKILAH', 'PEMALANG', '1985-08-06', 'Komisi Organisasi, Pendidikan dan Kaderisasi'),
(172, 6, 'WISA WIROSO', 'PEMALANG', '1978-05-09', 'WAKIL SEKRETARIS'),
(173, 6, 'ESKOWATI, S.Pd', 'PEMALANG', '1972-12-28', 'BENDAHARA'),
(174, 11, 'Sri Puji Sulistiyowati', 'PEMALANG', '1985-03-30', 'Komisi Ekonomi, Wiraswasta dan Koperasi'),
(175, 6, 'SUDIRMAN', 'PEMALANG', '1968-04-16', 'WAKIL BENDAHARA'),
(176, 11, 'TASWO', 'PEMALANG', '1965-12-30', 'Komisi Ekonomi, Wiraswasta dan Koperasi'),
(177, 11, 'LAMSANAH', 'PEMALANG', '1975-04-25', 'Komisi Sosial Budaya dan Pariwisata'),
(178, 11, 'YESSI IRYANTI', 'PEMALANG', '1984-07-17', 'Komisi Ideologi Hukum dan HAM'),
(179, 11, 'ROHYATI', 'PEMALANG', '1972-05-22', 'Komisi Ideologi, Hukum dan HAM'),
(180, 11, 'AHMAD ROJIUN', 'PEMALANG', '1995-04-10', 'Komisi Politik dan HAMKAM'),
(181, 11, 'PAJURI', 'PEMALANG', '1968-10-16', 'Komisi Politik dan HAM'),
(182, 5, 'ZAENUDI, A.Ma', 'PEMALANG', '1973-09-25', 'KETUA'),
(184, 5, 'HERY SETYAWAN, S.H', 'PEMALANG', '1967-04-09', 'WAKIL KETUA'),
(186, 5, 'SOBIRIN, S.Pd', 'PEMALANG', '1974-12-05', 'WAKIL KETUA'),
(187, 5, 'NUR HASYIM UTOMO, S.E', 'PEMALANG', '1970-05-02', 'SEKRETARIS');

-- --------------------------------------------------------

--
-- Table structure for table `kompetisi`
--

CREATE TABLE `kompetisi` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kompetisi`
--

INSERT INTO `kompetisi` (`id`, `nama`, `tgl_mulai`, `tgl_akhir`, `level`, `created_at`, `updated_at`) VALUES
(3, 'Khomsatun khasanah', '2015-10-29', '2015-11-03', 'PRA PON 2015 cabang Senam', '2015-11-12 06:56:33', '2015-11-12 06:56:33');

-- --------------------------------------------------------

--
-- Table structure for table `konis`
--

CREATE TABLE `konis` (
  `id` int(10) UNSIGNED NOT NULL,
  `tingkat` enum('Daerah/Kab.Kota','Provinsi') COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `konis`
--

INSERT INTO `konis` (`id`, `tingkat`, `nama`, `alamat`, `no_telp`, `kota_kab`, `created_at`, `updated_at`) VALUES
(2, 'Daerah/Kab.Kota', 'PERSATUAN SEPAK TAKRAW SELURUH INDONESIA (PSTI)', 'Gg. Ontoseno RT 1 RW 5 Desa Ujunggede, Kec. Ampelgading 52364', '085870185929', 'Kabupaten Pemalang', '2015-11-12 04:45:07', '2015-11-12 05:52:17'),
(3, 'Daerah/Kab.Kota', 'Persatuan Bulutangkis Seluruh Indonesia (PBSI)', 'GOR KRIDANGGO Pemalang (Alun-alun kab. Pemalang)', '081391972792', 'Kabupaten Pemalang', '2015-11-12 05:51:19', '2015-11-12 05:51:19'),
(4, 'Daerah/Kab.Kota', 'PERSATUAN CATUR SELURUH INDONESIA (PERCASI)', 'PEMALANG', '08156659737', 'Kabupaten Pemalang', '2015-11-12 06:37:29', '2015-11-12 06:37:29'),
(5, 'Daerah/Kab.Kota', 'PERSANI (sanggar senam keong mas)', 'Desa Pamutih, RT 01 / RW 08 NO 18 kecamatan Ulujami kabupaten pemalang JATENG 52371', '081326825365', 'Kabupaten Pemalang', '2015-11-12 06:51:30', '2015-11-12 06:52:11');

-- --------------------------------------------------------

--
-- Table structure for table `koni_struktur`
--

CREATE TABLE `koni_struktur` (
  `id_anggota` int(10) UNSIGNED NOT NULL,
  `id_koni` int(11) NOT NULL,
  `nama_anggota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jabatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `koni_struktur`
--

INSERT INTO `koni_struktur` (`id_anggota`, `id_koni`, `nama_anggota`, `tmp_lahir`, `tgl_lahir`, `jabatan`) VALUES
(2, 2, 'KISTANTO, S.Pd', 'PEMALANG', '1964-10-01', 'KETUA & SEKSI BIDANG PERWASITAN'),
(3, 2, 'Drs. EDY RAHARJO', 'PEMALANG', '1960-05-05', 'WAKIL KETUA'),
(4, 2, 'MURJOKO', 'PEMALANG', '1968-07-14', 'SEKRETARIS I'),
(5, 2, 'YANUAR REZA W, S.Pd', 'PEMALANG', '1990-01-07', 'SEKRETARIS II & SEKSI BIDANG KEPELATIHAN'),
(6, 2, 'FATKHUROJI', 'PEMALANG', '1966-08-09', 'BENDAHARA I'),
(7, 2, 'H. MUHAMMAD SIS', 'PEMALANG', '1965-07-14', 'BENDAHARA II'),
(8, 2, 'M. HADI PURWANTO', 'PEMALANG', '1988-02-08', 'SEKSI BIDANG PRESTASI I'),
(9, 2, 'FACHRUDIN', 'PEMALANG', '1985-04-30', 'SEKSI BIDANG PRESTASI II'),
(10, 3, 'Arif Adiyanto, ST', 'Pemalang', '1965-09-20', 'Ketua Umum'),
(11, 2, 'SUTOMO, S.Pd', 'PEMALANG', '1967-02-24', 'Pembantu Umum I'),
(12, 2, 'IMRON', 'PEMALANG', '1968-03-05', 'Pembantu Umum II'),
(13, 4, 'HM. ROIS FAISAL MS, S. PdI. M. Si', 'PEMALANG', '1960-01-12', 'KETUA UMUM'),
(14, 4, 'MUJIYANTO', 'KARANGANYAR', '1966-10-10', 'KETUA HARIAN'),
(15, 4, 'SUCIPTO', 'PEMALANG', '1963-06-04', 'SEKRETARIS'),
(16, 4, 'KURNADI, S. Pd', 'PEMALANG', '1962-04-08', 'BENDAHARA'),
(17, 4, 'SURONTO, S. Pd', 'PEMALANG', '1963-07-08', 'BIDANG ORGANISASI'),
(18, 4, 'PRIYO UTOMO', 'PEMALANG', '1969-04-12', 'BIDANG ORGANISASI'),
(19, 4, 'DARORI ISMANTO, WD', 'PEMALANG', '1952-02-08', 'BIDANG PEMBINAAN PRESTASI'),
(20, 4, 'IMAM S HADI, S. IP', 'PEMALANG', '1954-10-05', 'BIDANG PEMBINAAN PRESTASI'),
(21, 4, 'MUNDHOFIR, S. Pd', 'PEMALANG', '1956-11-10', 'BIDANG PENELITIAN DAN PENGEMBANGAN'),
(22, 4, 'IS SLAMET', 'PEMALANG', '1966-10-27', 'BIDANG PENELITIAN DAN PENGEMBANGAN'),
(23, 4, 'RUSWANDI', 'PEMALANG', '1957-03-18', 'BIDANG PERTANDINGAN DAN PERWASITAN'),
(24, 3, 'Drs. Wahyu Sukarno  Adiprayitno', 'Pemalang', '2015-11-12', 'Ketua 1'),
(25, 4, 'MUHASIM, S. Ag WD', 'PEMALANG', '1958-04-01', 'BIDANG PERTANDINGAN DAN PERWASITAN'),
(26, 3, 'Agus Sutrisno', 'Pemalang', '2015-11-12', 'Ketua 2'),
(27, 3, 'Ir. Andrian F. Sancaka, MSi', 'Pemalang', '2015-11-12', 'Ketua 3'),
(29, 3, 'Drs. H. Iryanto', 'Pemalang', '2015-11-12', 'Sekretaris Umum'),
(30, 3, 'Sarinto, ST., MSi', 'Pemalang', '2015-11-12', 'Sekretaris I'),
(31, 3, 'Ir. Surinto', 'Pemalang', '2015-11-12', 'Sekretaris II'),
(32, 3, 'Ir. H.M. Arifin, MSi', 'Pemalang', '2015-11-12', 'Bendahara I'),
(33, 3, 'Sugiyanto, SH., MSi', 'Pemalang', '2015-11-12', 'Bendahara II'),
(34, 3, 'Igush Donolego', 'Pemalang', '2015-11-12', 'Bidang Pembinaan Prestasi'),
(35, 3, 'Kiky', 'Pemalang', '2015-11-12', 'Bidang Pembinaan Prestasi'),
(36, 4, 'ADIB WIBOWO', 'PEMALANG', '1979-04-17', 'BIDANG HUMAS, MEDIA DAN PROMOSI'),
(37, 3, 'Ruslan', 'Pemalang', '2015-11-12', 'Bidang Pembinaan Prestasi'),
(38, 3, 'Darmawan, S.Pd', 'Pemalang', '2015-11-12', 'Bidang Pembinaan Prestasi'),
(39, 4, 'AGUS SOBARI', 'PEMALANG', '1967-08-22', 'BIDANG HUMAS, MEDIA DAN PROMOSI'),
(40, 3, 'RM. Agus Purnomo, SH', 'Pemalang', '2015-11-12', 'Bidang Humas'),
(41, 3, 'Teguh Pujiono, SE', 'Pemalang', '2015-11-12', 'Bidang Humas'),
(42, 3, 'Slamet', 'Pemalang', '2015-11-12', 'Bidang Humas'),
(43, 4, 'HERI PURNOMO', 'PEMALANG', '2015-11-12', 'BIDANG UMUM DAN PERLENGKAPAN'),
(44, 3, 'Ferry Yugianto', 'Pemalang', '2015-11-12', 'Bidang Usaha/ Dana'),
(45, 3, 'Yuyung (Ono Sport)', 'Pemalang', '2015-11-12', 'Bidang Usaha/ Dana'),
(46, 3, 'Edi (Era Sport)', 'Pemalang', '2015-11-12', 'Bidang Usaha/ Dana'),
(47, 3, 'Herman ', 'Pemalang', '2015-11-12', 'Bidang Usaha/ Dana'),
(48, 3, 'Eddy S. SH', 'Pemalang', '2015-11-12', 'Bidang Organisasi'),
(49, 4, 'MUGIONO', 'PEMALANG', '1972-12-03', 'BIDANG UMUM DAN PERLENGKAPAN'),
(50, 3, 'M. Zaenudin, SIP', 'Pemalang', '2015-11-12', 'Bidang Organisasi'),
(51, 3, 'Suwandi', 'Pemalang', '2015-11-12', 'Bidang Organisasi'),
(52, 3, 'Joko Sumaryono', 'Pemalang', '2015-11-12', 'Bidang Dokumentasi'),
(53, 3, 'Ir. Rahmat', 'Pemalang', '2015-11-12', 'Bidang Dokumentasi'),
(54, 4, 'KUSNAN', 'PEMALANG', '1958-08-12', 'BIDANG UMUM DAN PERLENGKAPAN'),
(55, 3, 'Drs. Hery Ciptadi', 'Pemalang', '2015-11-12', 'Seksi Pertandingan'),
(56, 3, 'Slamet Pratikno', 'Pemalang', '2015-11-12', 'Seksi Pertandingan'),
(57, 3, 'Anto', 'Pemalang', '2015-11-12', 'Seksi Pertandingan'),
(58, 3, 'Ali Jabidi', 'Pemalang', '2015-11-12', 'Seksi Perwasitan'),
(59, 3, 'Supri', 'Pemalang', '2015-11-12', 'Seksi Perwasitan'),
(60, 3, 'Harjito', 'Pemalang', '2015-11-12', 'Seksi Perwasitan'),
(61, 3, 'Giyarto', 'Pemalang', '2015-11-12', 'Seksi Perlengkapan'),
(62, 3, 'Suprayogi', 'Pemalang', '2015-11-12', 'Seksi Perlengkapan'),
(63, 3, 'Rohani', 'Pemalang', '2015-11-12', 'Seksi Perlengkapan'),
(64, 3, 'Bagus Sutopo, SIP., MAp', 'Pemalang', '2015-11-12', 'Seksi Komunikasi'),
(65, 3, 'Suhartono, SIP', 'Pemalang', '2015-11-12', 'Seksi Komunikasi'),
(66, 3, 'Mulyanto', 'Pemalang', '2015-11-12', 'Seksi Komunikasi'),
(67, 3, 'Her Suritno, SH', 'Pemalang', '2015-11-12', 'Koordinator Wilayah Belik'),
(68, 3, 'Tri Hadi S. Nugroho, SPI', 'Pemalang', '2015-11-12', 'Koordinator Wilayah Comal'),
(69, 3, 'Nurofik', 'Pemalang', '2015-11-12', 'Koordinator Wilayah Pemalang'),
(70, 4, 'AZIZ', 'PEMALANG', '2015-11-12', 'KORWIL SELATAN'),
(71, 4, 'SUWARJO', 'PEMALANG', '2015-11-12', 'KORWIL SELATAN'),
(72, 4, 'ALI ZAENI', 'PEMALANG', '2015-11-12', 'KORWIL SELATAN'),
(73, 4, 'SLAMET', 'PEMALANG', '2015-11-12', 'KORWIL TENGAH'),
(74, 4, 'PURWANTO', 'PEMALANG', '2015-11-12', 'KORWIL TENGAH'),
(75, 4, 'MANTO', 'PEMALANG', '2015-11-12', 'KORWIL TENGAH'),
(76, 4, 'M. SLAMET BESAR', 'PEMALANG', '2015-11-12', 'KORWIL TENGAH'),
(77, 4, 'DARUM', 'PEMALANG', '2015-11-12', 'KORWIL TIMUR'),
(78, 4, 'AJI', 'PEMALANG', '2015-11-12', 'KORWIL TIMUR');

-- --------------------------------------------------------

--
-- Table structure for table `kpn`
--

CREATE TABLE `kpn` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tinggi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `berat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kel` enum('Laki-Laki','Perempuan') COLLATE utf8_unicode_ci NOT NULL,
  `foto` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ku`
--

CREATE TABLE `ku` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_11_06_054546_Create_Atlit_Table', 1),
('2015_11_06_054746_Create_Cabang_Table', 1),
('2015_11_06_061343_Create_Jenis_Table', 1),
('2015_11_07_111432_Create_Pelatih_Table', 1),
('2015_11_07_170059_Create_Wasit_Table', 1),
('2015_11_07_173234_Create_Koni_Table', 1),
('2015_11_07_185149_Create_Sarana_OR_Table', 1),
('2015_11_08_015715_Create_Sarpras_Asset_Table', 1),
('2015_11_08_015715_Create_Sarpras_Muda_Table', 1),
('2015_11_08_015715_Create_Sarpras_Public_Table', 1),
('2015_11_08_125909_Create_Kompetisi_Table', 1),
('2015_11_08_183036_Create_Atlit_Event_Table', 2),
('2015_11_09_013105_Create_Pelatih_Event_Table', 3),
('2015_11_09_022230_Create_Pelatih_Serti_Table', 4),
('2015_11_09_024523_Create_Pelatih_Riwayat_Table', 5),
('2015_11_09_060609_Create_Wasit_Event_Table', 6),
('2015_11_09_060632_Create_Wasit_Serti_Table', 6),
('2015_11_09_065127_Create_Koni_Struktur_Table', 7),
('2015_11_09_125059_Create_Kontingen_Table', 8),
('2015_11_09_142638_Create_OKP_Table', 8),
('2015_11_10_015202_Create_Knpi_Table', 9),
('2015_11_10_022410_Create_Sarjana_Table', 10),
('2015_11_10_123539_Create_Pramuka_Table', 11),
('2015_11_11_074232_Create_Okp_Struktur_Table', 12),
('2015_11_11_081041_Create_Knpi_Struktur_Table', 13),
('2015_11_11_081051_Create_Sarjana_Struktur_Table', 13),
('2015_11_11_081113_Create_Pramuka_Struktur_Table', 13),
('2016_04_09_182028_Create_Table_Artikel', 14),
('2016_04_09_183151_Create_Table_Artikel', 15);

-- --------------------------------------------------------

--
-- Table structure for table `okp`
--

CREATE TABLE `okp` (
  `id_okp` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ketua` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kota_kab` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_berdiri` date NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `jenis` enum('Organisasi Masyarakat','Kemasyarakat') COLLATE utf8_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bidang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dasar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `masa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_reg` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `okp`
--

INSERT INTO `okp` (`id_okp`, `nama`, `ketua`, `kota_kab`, `tgl_berdiri`, `alamat`, `jenis`, `no_telp`, `bidang`, `dasar`, `masa`, `no_reg`) VALUES
(3, 'MPC PEMUDA PANCASILA', 'GANDUNG GUNTORO', 'Kabupaten Pemalang', '2015-11-01', 'JL. PEMUDA PEMALANG', 'Organisasi Masyarakat', '085385350885', 'Kepemudaan', 'Melestarikan Negara Kesatuan RI dan mewujudkan masyarakat yang adil, makmur, dan sejahtera', '2015-2019', ''),
(4, 'PC GP ANSOR', 'WAHIDIN SAID', 'Kabupaten Pemalang', '1950-04-24', 'JL. PEMUDA NO: 49 PEMALANG', 'Organisasi Masyarakat', '085385350885', 'Kepemudaan', 'Membentuk dan mengembangkan generasi muda Indonesia sebagai kader bangsa yang tangguh, menegakkan ajaran aswaja dan berperan aktif dalam pembangunan nasional', '2015-2016', ''),
(5, 'PC FATAYAT NU', 'MUTRIYATI, S.Pd', 'Kabupaten Pemalang', '1950-04-24', 'JL. PEMUDA NO:49 PEMALANG', 'Organisasi Masyarakat', '08156927914', 'Kepemudaan', '', '2011-2016', ''),
(6, 'PC IPNU', 'RIFKI ARWANTO', 'Kabupaten Pemalang', '1954-02-24', 'JL. PEMUDA NO: 49 PEMALANG', 'Organisasi Masyarakat', '082314867611', 'KEPEMUDAAN', 'Terbentuknya pelajar putra Indonesia yang bertakwa kepada Allah SWT', '2014-2016', ''),
(7, 'PC IPPNU', 'SITI KHUROTUL AENI', 'Kabupaten Pemalang', '2015-03-02', 'JL. PEMUDA NO. 49 PEMALANG', 'Organisasi Masyarakat', '085201607382', 'KEPEMUDAAN', 'Terbentuknya pelajar putri Indonesia yang bertakwa kepada Allah SWT', '2014-2016', ''),
(8, 'PK PMII PEMALANG', 'SAEFUL KAMALUDIN', 'Kabupaten Pemalang', '1960-04-17', 'JL DI PANJAITAN PEMALANG', 'Organisasi Masyarakat', '082314681101', 'KEPEMUDAAN', '', '2015-2016', ''),
(9, 'PD AISYIYAH', 'Dra. AMIROH, M.Ag', 'Kabupaten Pemalang', '0000-00-00', 'JL. MARKISA NO:01 KEBONDALEM BARAT KEC. KAB. PEMALANG', 'Organisasi Masyarakat', '0284322091', 'KEPEMUDAAN', 'Pendidikan, Dakwah, Social, Kesehatan, Ekonomi dan Hukum', '', ''),
(10, 'PD NASYIATUL AISYIYAH', 'AYU MARLINA, M.PdI', '', '0000-00-00', 'JL. MARKISA NO:01 KEBONDALEM BARAT KEC. KAB. PEMALANG', 'Organisasi Masyarakat', '', 'KEPEMUDAAN', '', '', ''),
(12, 'PEMUDA MUHAMMADIYAH', 'ABDUL AJIS, S.Fil', 'Kabupaten Pemalang', '0000-00-00', 'JL. MARKISA NO:01 KEBONDALEM BARAT KEC. KAB. PEMALANG', 'Organisasi Masyarakat', '', 'KEPEMUDAAN', '', '', ''),
(13, 'PD IPM', 'ISHMAH FADIAH', 'Kabupaten Pemalang', '0000-00-00', 'JL. MARKISA NO:01 KEBONDALEM BARAT KEC. KAB. PEMALANG', 'Organisasi Masyarakat', '', 'KEPEMUDAAN', '', '', ''),
(14, 'NATIONAL PARALYMPIC COMMITTEE ( NPC )', 'Darsono, S.Sos.', 'Kabupaten Pemalang', '2001-04-17', 'Perumnas SIRANDU PERMAI Blok D5 Pemalang', 'Organisasi Masyarakat', '085642990605', 'Keolahragaan Penyandang Cacat', 'Pengembangan dan Peningkatan Olah Raga bagi Penyandang Cacat', '2015 - 2020', '-'),
(15, 'GM FKPPI', 'FEBI DJATMIKO, S.STP, MP.', 'Kabupaten Pemalang', '1980-01-01', 'JALAN KOLONEL SUGIONO', 'Organisasi Masyarakat', '081914179292', 'KEPEMUDAAN', '', '2014-2016', '');

-- --------------------------------------------------------

--
-- Table structure for table `okp_struktur`
--

CREATE TABLE `okp_struktur` (
  `id_anggota` int(10) UNSIGNED NOT NULL,
  `id_okp` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jabatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `okp_struktur`
--

INSERT INTO `okp_struktur` (`id_anggota`, `id_okp`, `nama`, `tmp_lahir`, `tgl_lahir`, `jabatan`) VALUES
(2, 4, 'AHMAD HAMDAN, S.IP', 'PEMALANG', '1977-01-01', 'WAKIL KETUA'),
(3, 4, 'AGUS ZAMRONI', 'PEMALANG', '1975-07-01', 'WAKIL KETUA'),
(4, 4, 'MUAMAR, M. Ag', 'PEMALANG', '1975-07-01', 'WAKIL KETUA'),
(5, 4, 'FUAD ZAENUDIN, S. Pd. I', 'PEMALANG', '1982-12-01', 'WAKIL KETUA'),
(6, 4, 'M. ALI MAKSUM, S.Sos.I', 'PEMALANG', '1984-07-01', 'WAKIL KETUA'),
(7, 4, 'MOHAMAD MASRURI, S.Pd.I', 'PEMALANG', '1984-06-21', 'SEKRETARIS'),
(8, 4, 'DZUL FAHMI MARJOHAN, S.Pd. M.Pd.I', 'PEMALANG', '1980-01-01', 'WAKIL SEKRETARIS'),
(9, 4, 'H. AMIN FIKAR MASRURI, Lc.', 'PEMALANG', '1984-01-01', 'WAKIL SEKRETARIS'),
(10, 4, 'SUHADI, M.Pd.', 'PEMALANG', '1984-12-01', 'WAKIL SEKRETARIS'),
(11, 4, 'TOHIRIN', 'PEMALANG', '1979-01-01', 'WAKIL SEKRETARIS'),
(12, 4, 'NUR ILHAM, SE.', 'PEMALANG', '1977-01-01', 'BENDAHARA'),
(13, 4, 'SYAEFI ROHMATILLAH', 'PEMALANG', '1988-08-25', 'WAKIL BENDAHARA'),
(14, 4, 'TAUHID', 'PEMALANG', '1977-01-01', 'WAKIL BENDAHARA'),
(15, 5, 'MUTRIYATI, S.Pd.', 'PEMALANG', '1975-01-01', 'KETUA UMUM'),
(16, 5, 'AFIYAH, S.Ag', 'PEMALANG', '1976-07-01', 'KETUA 1'),
(17, 5, 'UMI KHAULAH, S.Ag', 'PEMALANG', '1972-01-01', 'KETUA 2'),
(18, 5, 'LUTFIYAH, S, Ag.', 'PEMALANG', '1975-01-01', 'SEKRETARIS 1'),
(19, 5, 'AJIZAH', 'PEMALANG', '1972-01-01', 'SEKRETARIS 2'),
(20, 5, 'UMAYAH, S.Ag', 'PEMALANG', '1973-01-01', 'BENDAHARA 1'),
(21, 5, 'SUSANTI', 'PEMALANG', '1975-01-01', 'BENDAHARA 2'),
(22, 6, 'RIFKI ARWANTO', 'PEMALANG', '1994-02-02', 'KETUA'),
(23, 6, 'SYAEFUL KAMALUDIN', 'PEMALANG', '1993-01-07', 'SEKRETARIS'),
(24, 6, 'KHOIRUL ANAM', 'PEMALANG', '1989-07-01', 'WAKIL KETUA 1'),
(25, 6, 'KHASANNUDIN', 'PEMALANG', '1992-01-01', 'WAKIL KETUA 2'),
(26, 6, 'HERMAN SUSANTO', 'PEMALANG', '1990-07-01', 'WAKIL KETUA 3'),
(27, 14, 'Darsono, S.Sos.', 'Pemalang', '1954-05-03', 'Ketua'),
(28, 6, 'KUSPENDI', 'PEMALANG', '1991-05-12', 'WAKIL SEKRETARIS 1'),
(29, 14, 'Sudiyono, Mps.', 'Pemalang', '2015-11-12', 'Wakil Ketua'),
(30, 6, 'AKHMAD AKHWAN', 'PEMALANG', '1990-02-02', 'WAKIL SEKRETARIS 2'),
(31, 14, 'Kiswantoro, S.Pd.', 'Pemalang', '2015-11-12', 'Sekretaris'),
(32, 6, 'SISWANTORO', 'PEMALANG', '1991-03-01', 'WAKIL SEKRETARIS 3'),
(33, 14, 'Drs. Irfan Rosyadi', 'Pemalang', '2015-11-12', 'Wakil Sekretaris'),
(34, 6, 'JOKO SUSILO', 'PEMALANG', '1992-01-07', 'WAKIL SEKRETARIS 4'),
(35, 14, 'Wagirin', 'Pemalang', '1954-08-08', 'Bendahara'),
(36, 6, 'DEDI SANTOSO', 'PEMALANG', '1990-07-01', 'BENDAHARA'),
(37, 14, 'Cahyo Hartuti', 'Pemalang', '2015-11-12', 'Wakil Bendahara'),
(38, 6, 'M. SUHARSO', 'PEMALANG', '1994-01-01', 'WAKIL BENDAHARA 1'),
(39, 14, 'Ngadino, SH.', 'Pemalang', '2015-11-12', 'Seksi Hukum'),
(40, 6, 'ZAENUN NU\'AM', 'PEMALANG', '1991-02-01', 'WAKIL BENDAHARA 2'),
(41, 14, 'Suwarto, S.Ag.', 'Pemalang', '2015-11-12', 'Seksi Hukum'),
(42, 14, 'Dara Yusdiantini, SST.', 'Majalengka', '1961-11-22', 'Seksi Pemberdayaan Atlit'),
(43, 7, 'SITI KHUROTUL AENI', 'PEMALANG', '1993-01-01', 'KETUA'),
(44, 7, 'BIRUL  WALIDAINI', 'PEMALANG', '1993-01-01', 'SEKRETARIS'),
(45, 7, 'NAELUL IZAH', 'PEMALANG', '1991-07-01', 'WAKIL KETUA 1'),
(46, 7, 'IRTIFAUL JANAH', 'PEMALANG', '1989-12-01', 'WAKIL KETUA 2'),
(47, 7, 'SIHMIYATI', 'PEMALANG', '1993-01-01', 'WAKIL KETUA 3'),
(48, 7, 'MAGHFIROH', 'PEMALANG', '1989-01-07', 'WAKIL KETUA 4'),
(49, 14, 'Listyarni, BSW.', 'Pemalang', '2015-11-12', 'Seksi Pemberdayaan Atlit'),
(50, 7, 'WANISAH', 'PEMALANG', '1991-07-01', 'WAKIL SEKRETARIS 1'),
(51, 14, 'Adhitya Nugraha', 'Pemalang', '1986-11-17', 'Seksi Cabang Olahraga'),
(52, 7, 'SOLIKHAH', 'PEMALANG', '1993-01-01', 'WAKIL SEKRETARIS 2'),
(53, 14, 'Lukman Dwi Anto, S.Pd.', 'Pemalang', '2015-11-12', 'Seksi Cabang Olahraga'),
(54, 7, 'BA\'DIYATUL IZAH', 'PEMALANG', '1993-01-01', 'BENDAHARA'),
(55, 14, 'Wahib Sumartara', 'Pemalang', '2015-11-12', 'Seksi Pelatih dan Wasit'),
(56, 7, 'NUR WIHERSIH', 'PEMALANG', '1991-07-01', 'WAKIL BENDAHARA 1'),
(57, 8, 'SYAEFUL KAMALUDIN', 'PEMALANG', '1993-01-01', 'KETUA'),
(58, 14, 'Darmawan, S.Pd.', 'Pemalang', '2015-11-12', 'Seksi Pelatih dan Wasit'),
(59, 8, 'ANGGUN BESTARI PAMBAYUN', 'PEMALANG', '1994-01-01', 'WAKIL KETUA (INTERNAL)'),
(60, 14, 'Iwan Krisnadi, S.Pd.', 'Pemalang', '2015-11-12', 'Seksi Pertandingan dan Klasifikasi Kecacatan'),
(61, 8, 'USWATUN KHASANAH', 'PEMALANG', '1995-02-01', 'WAKIL KETUA (INTERNAL)'),
(62, 14, 'Peni Widati W, S.Pd.', 'Pemalang', '2015-11-12', 'Seksi Pertandingan dan Klasifikasi Kecacatan'),
(63, 14, 'Sri Hartati, S.Pd.', 'Pemalang', '2015-11-12', 'Seksi Humas'),
(64, 8, 'NURUL AZIZAH', 'PEMALANG', '1995-01-01', 'WAKIL KETUA (KEAGAMAAN)'),
(65, 14, 'Listyarni, BSW.', 'Pemalang', '2015-11-12', 'Seksi Humas'),
(66, 8, 'M. FAUZI', 'PEMALANG', '1995-07-01', 'SEKRETARIS'),
(67, 14, 'Agus Rudiono', 'Pemalang', '2015-11-12', 'Seksi Humas'),
(68, 8, 'SUNDARI YULIANINGSIH', 'PEMALANG', '1995-01-01', 'WAKIL SEKRETARIS'),
(69, 8, 'WINDA APRILIANI', 'PEMALANG', '1995-01-12', 'BENDAHARA'),
(70, 8, 'DIANA FAHRUNNISA', 'PEMALANG', '1995-07-01', 'WAKIL BENDAHARA'),
(71, 15, 'FEBRI DJATMIKO', 'PEMALANG', '1981-02-02', 'KETUA');

-- --------------------------------------------------------

--
-- Table structure for table `paskib`
--

CREATE TABLE `paskib` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kel` enum('Laki-Laki','Perempuan') COLLATE utf8_unicode_ci NOT NULL,
  `foto` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelatihs`
--

CREATE TABLE `pelatihs` (
  `id` int(10) UNSIGNED NOT NULL,
  `cabang` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `jenis` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kel` enum('Laki-Laki','Perempuan') COLLATE utf8_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pelatihs`
--

INSERT INTO `pelatihs` (`id`, `cabang`, `jenis`, `kota_kab`, `nama`, `tmp_lahir`, `tgl_lahir`, `alamat`, `jenis_kel`, `no_telp`, `foto`, `created_at`, `updated_at`) VALUES
(4, '052', '04', 'Kabupaten Pemalang', 'SOBARI AR', 'PEMALANG', '2015-05-08', 'PEMALANG', 'Laki-Laki', '', NULL, '2015-11-12 04:09:48', '2015-11-12 07:00:56'),
(5, '052', '04', 'Kabupaten Pemalang', 'YUDA', '10', '1966-10-10', 'PEMALANG', 'Laki-Laki', '081903659815', NULL, '2015-11-12 04:36:26', '2015-11-12 06:08:25'),
(6, '040', '05', 'Kabupaten Pemalang', 'SUTOMO, S.Pd', 'PEMALANG', '1967-02-24', 'Ds. Pendowo, RT 2 RW 6, Kec. Bodeh', 'Laki-Laki', '081542294252', NULL, '2015-11-12 04:42:12', '2015-11-12 04:42:12'),
(7, '006', '05', 'Kabupaten Pemalang', 'Rini Subekti', 'pemalang', '1971-05-25', '', 'Perempuan', '', NULL, '2015-11-12 04:48:37', '2015-11-12 04:48:37'),
(8, '006', '05', 'Kabupaten Pemalang', 'Budi Haryanto', 'Pemalang', '1959-08-05', '', 'Laki-Laki', '', NULL, '2015-11-12 04:49:33', '2015-11-12 04:49:33'),
(9, '006', '05', 'Kabupaten Pemalang', 'HARRY CRISTIANTO', 'pemalang', '1969-12-26', '', 'Laki-Laki', '', NULL, '2015-11-12 04:50:52', '2015-11-12 04:50:52'),
(10, '038', '01', 'Kabupaten Pemalang', 'SOBIRIN, S.Pd.', 'pemalang', '1980-01-05', '', 'Laki-Laki', '', NULL, '2015-11-12 04:53:32', '2015-11-12 04:53:32'),
(11, '010', '04', 'Kabupaten Pemalang', 'Deni Atik PST', 'Pemalang', '1977-10-27', 'RT. 02/RW. 01 Ds. Banjardawa, Taman Pemalang', 'Laki-Laki', '081914449448', NULL, '2015-11-12 05:06:37', '2015-11-12 05:06:37'),
(12, '040', '05', 'Kabupaten Pemalang', 'YANUAR REZA W, S.Pd', 'PEMALANG', '1990-01-07', 'Ds. Loning RT 18 RW 2,Kec. Petarukan', 'Laki-Laki', '087830752355', NULL, '2015-11-12 05:09:31', '2015-11-12 05:09:31'),
(13, '014', '01', '', 'SUCIPTO S.Pd', 'PEMALANG', '1963-06-04', 'PEMALANG', 'Laki-Laki', '08156659737', NULL, '2015-11-12 05:09:42', '2015-11-12 05:09:42'),
(14, '030', '08', 'Kabupaten Pemalang', 'Wahib Sumartara', 'Yogyakarta', '0000-00-00', 'Kec. Taman Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 05:10:26', '2015-11-12 05:10:26'),
(15, '013', '04', 'Kabupaten Pemalang', 'Arif Adiyanto, ST', 'Pemalang', '1965-09-20', 'Wanarejan Utara, Pemalang', 'Laki-Laki', '081391972792', NULL, '2015-11-12 05:35:22', '2015-11-12 05:35:22'),
(16, '013', '04', 'Kabupaten Pemalang', 'Eka Ayu Dessetiani, S.Pd', 'Pemalang', '1992-12-24', 'Desa Kaligelang, Pemalang', 'Perempuan', '089678158980', NULL, '2015-11-12 05:36:32', '2015-11-12 05:36:32'),
(17, '013', '04', 'Kabupaten Pemalang', 'Gandya Priya Santosa, S.Pd', 'Pemalang', '1988-06-01', 'Desa Kaligelang, Pemalang', 'Laki-Laki', '085641648783', NULL, '2015-11-12 05:39:23', '2015-11-12 05:39:23'),
(18, '013', '04', 'Kabupaten Pemalang', 'Adhiyat Dwi Saputra, S.Pd', 'Pemalang', '1990-08-23', 'Desa Cibelok Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 05:41:14', '2015-11-12 05:41:14'),
(19, '013', '04', 'Kabupaten Pemalang', 'Fery Yugiyanto', 'Pemalang', '1953-05-26', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 05:42:41', '2015-11-12 05:42:41'),
(20, '011', '04', 'Kabupaten Pemalang', 'SOMA SUDHARMONO Spd', 'PEMALANG', '1976-11-10', '', 'Laki-Laki', '', NULL, '2015-11-12 06:01:28', '2015-11-12 06:12:45'),
(21, '011', '04', 'Kabupaten Pemalang', 'SOMA SUDHARMOKO Spd', 'PEMALANG', '1968-10-20', '', 'Laki-Laki', '', NULL, '2015-11-12 06:03:02', '2015-11-12 06:13:31'),
(22, '011', '04', 'Kabupaten Pemalang', 'DARSONO', 'PEMALANG', '1967-09-08', '', 'Laki-Laki', '', NULL, '2015-11-12 06:08:05', '2015-11-12 06:08:05'),
(24, '011', '04', 'Kabupaten Pemalang', 'SUMARHENO Spd', 'PEMALANG', '1964-10-10', '', 'Laki-Laki', '', NULL, '2015-11-12 06:09:38', '2015-11-12 06:09:38'),
(25, '011', '04', 'Kabupaten Pemalang', 'SUDIRMAN', 'PEMALANG', '1978-10-20', '', 'Laki-Laki', '', NULL, '2015-11-12 06:14:33', '2015-11-12 06:14:33'),
(26, '032', '06', 'Kabupaten Pemalang', 'purwandi', 'pemalang', '1970-11-12', '', 'Laki-Laki', '', NULL, '2015-11-12 06:15:02', '2015-11-12 06:15:02'),
(27, '011', '04', 'Kabupaten Pemalang', 'SUKIR, S.pd', 'PEMALANG', '1963-03-07', '', 'Laki-Laki', '', NULL, '2015-11-12 06:15:31', '2015-11-12 06:32:42'),
(28, '011', '04', 'Kabupaten Pemalang', 'TRI WIBOWO, S.Pd', 'PEMALANG', '1976-02-03', '', 'Laki-Laki', '', NULL, '2015-11-12 06:16:32', '2015-11-12 06:16:32'),
(29, '032', '06', 'Kabupaten Pemalang', 'tri sundoro', 'pemalang', '1980-01-23', '', 'Laki-Laki', '', NULL, '2015-11-12 06:17:35', '2015-11-12 06:17:35'),
(30, '011', '04', 'Kabupaten Pemalang', 'ISROMAT', 'PEMALANG', '1977-09-08', '', 'Laki-Laki', '', NULL, '2015-11-12 06:17:47', '2015-11-12 06:17:47'),
(31, '032', '05', 'Kabupaten Pemalang', 'syamsul arifin', 'pemalang', '1983-04-26', '', 'Laki-Laki', '', NULL, '2015-11-12 06:18:50', '2015-11-12 06:18:50'),
(32, '040', '04', 'Kabupaten Pemalang', 'KISTANTO , S.Pd', 'PEMALANG', '1964-10-01', 'Desa Ujunggede RT 1 RW 5, Kec. Ampelgading', 'Laki-Laki', '085870185929', NULL, '2015-11-12 06:22:05', '2015-11-12 06:22:05'),
(33, '037', '04', 'Kabupaten Pemalang', 'Rubiyono S.PdSD', 'Pemalang', '1963-06-04', 'Pamutih, Uujami', 'Laki-Laki', '081326825365', NULL, '2015-11-12 06:31:05', '2015-11-12 06:47:47'),
(34, '040', '04', 'Kabupaten Pemalang', 'CAYOKO', 'PEMALANG', '1966-11-01', 'Desa Cibiyuk, Kec. Ampelgading', 'Laki-Laki', '', NULL, '2015-11-12 06:31:16', '2015-11-12 06:31:16'),
(35, '037', '04', 'Kabupaten Pemalang', 'Idah tresnowati S.Si, M.Pd', 'Pemalang', '1988-05-04', 'Pamutih, Ulujami', 'Perempuan', '087710290114', NULL, '2015-11-12 06:32:38', '2015-11-12 06:46:18'),
(36, '040', '04', 'Kabupaten Pemalang', 'FATKHUROJI', 'PEMALANG', '1966-08-09', 'Desa Kauman, Kec. Comal', 'Laki-Laki', '', NULL, '2015-11-12 06:32:54', '2015-11-12 06:32:54'),
(37, '037', '04', 'Kabupaten Pemalang', 'Dwi purnomo S.Pd', 'Pemalang', '1992-10-10', 'Pamutih, Ulujami', 'Laki-Laki', '087830825243', NULL, '2015-11-12 06:35:11', '2015-11-12 06:46:49'),
(38, '040', '04', 'Kabupaten Pemalang', 'WAWAN SETIAWAN', 'PEMALANG', '1982-10-04', 'Desa Purwoharjo, Kec. Comal', 'Laki-Laki', '', NULL, '2015-11-12 06:35:23', '2015-11-12 06:35:23'),
(39, '040', '04', 'Kabupaten Pemalang', 'Muh. Hadi Purwanto', 'PEMALANG', '1988-02-08', 'Desa Ujunggede, Kec. Ampelgading', 'Laki-Laki', '', NULL, '2015-11-12 06:37:57', '2015-11-12 06:37:57'),
(40, '010', '04', 'Kabupaten Pemalang', 'Franky S.E.', 'Singkawang', '1982-12-03', 'Mulyoharjo', 'Laki-Laki', '087783150777', NULL, '2015-11-12 06:38:38', '2015-11-12 06:38:38'),
(41, '013', '04', 'Kabupaten Pemalang', 'Agus Sutrisno', 'Pemalang', '1963-08-18', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:38:46', '2015-11-12 06:38:46'),
(42, '040', '04', 'Kabupaten Pemalang', 'Drs. Edy Raharjo', 'PEMALANG', '1960-05-05', 'Desa Lowa, Kec. Comal', 'Laki-Laki', '', NULL, '2015-11-12 06:39:04', '2015-11-12 06:39:04'),
(43, '013', '04', 'Kabupaten Pemalang', 'Sunarto Nugroho', 'Pemalang', '1958-06-30', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:39:58', '2015-11-12 06:39:58'),
(44, '010', '04', '', 'Rimbun Maruli Tua Sidauruk', 'Pemalang', '1990-11-28', 'Widuri', 'Laki-Laki', '085642792023', NULL, '2015-11-12 06:40:58', '2015-11-12 06:40:58'),
(45, '013', '04', 'Kabupaten Pemalang', 'Iguh Donolego', 'Pemalang', '1970-09-05', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:41:29', '2015-11-12 06:41:29'),
(46, '010', '04', '', 'Wahyu Dwi Hapsoro', 'Pemalang', '1986-02-15', 'Mulyoharjo', 'Laki-Laki', '', NULL, '2015-11-12 06:42:18', '2015-11-12 06:42:18'),
(47, '013', '04', 'Kabupaten Pemalang', 'Fakhmi Wardiyatno', 'Pemalang', '1992-03-22', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:42:23', '2015-11-12 06:42:23'),
(48, '013', '04', 'Kabupaten Pemalang', 'Setya Dwiantoro', 'pe', '1981-02-28', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:43:37', '2015-11-12 06:43:37'),
(49, '010', '04', 'Kabupaten Pemalang', 'Koko Kusyanto', 'Pemalang', '1981-04-23', 'SMAN 1 Pemalang', 'Laki-Laki', '085659191123', NULL, '2015-11-12 06:43:46', '2015-11-12 06:43:46'),
(50, '014', '01', '', 'MUJIYANTO', 'KARANGANYAR', '1966-10-10', 'PEMALANG', 'Laki-Laki', '081903659815', NULL, '2015-11-12 06:45:30', '2015-11-12 06:48:32'),
(51, '013', '04', 'Kabupaten Pemalang', 'Nasihin, S.Pd', 'Pemalang', '2015-11-12', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 07:37:01', '2015-11-12 07:37:01'),
(52, '013', '04', 'Kabupaten Pemalang', 'Ruslan', 'Pemalang', '2015-11-12', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 07:38:10', '2015-11-12 07:38:10'),
(53, '013', '04', 'Kabupaten Pemalang', 'Maryoso', 'Pemalang', '2015-11-12', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 07:39:30', '2015-11-12 07:39:30'),
(54, '013', '04', 'Kabupaten Pemalang', 'Agus Suyanto', 'Pemalang', '2015-11-12', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 07:40:23', '2015-11-12 07:40:23'),
(55, '035', '04', 'Kabupaten Pemalang', 'Mabsus,S.Pd', 'Pemalang', '1963-11-01', 'Widuri-Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 07:40:25', '2015-11-12 07:40:25'),
(56, '034', '04', 'Kabupaten Pemalang', 'dwi rizky hutomo', 'pemalang', '1988-11-28', 'pemalang', 'Laki-Laki', '085325828581', NULL, '2015-11-12 07:40:56', '2015-11-12 07:40:56'),
(57, '034', '04', 'Kabupaten Pemalang', 'muzaki', 'pemalang', '1970-11-08', 'randudongkal', 'Laki-Laki', '', NULL, '2015-11-12 07:42:03', '2015-11-12 07:42:03'),
(58, '035', '04', '', 'Yuli Santoso', 'Sala tiga', '1972-07-25', 'Widuri- Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 07:42:52', '2015-11-12 07:42:52'),
(59, '034', '04', 'Kabupaten Pemalang', 'suhari', 'pemalang', '1967-04-10', 'pemalang', 'Laki-Laki', '', NULL, '2015-11-12 07:43:18', '2015-11-12 07:43:18'),
(60, '034', '04', 'Kabupaten Pemalang', 'wahludi', 'pemalang', '1973-06-12', 'pemalang', 'Laki-Laki', '', NULL, '2015-11-12 07:44:37', '2015-11-12 07:44:37'),
(61, '034', '04', 'Kabupaten Pemalang', 'heru', 'pemalang', '1975-11-11', 'pemalang', 'Laki-Laki', '', NULL, '2015-11-12 07:45:35', '2015-11-12 07:45:35'),
(62, '034', '04', 'Kabupaten Pemalang', 'heru', 'pemalang', '1975-11-11', 'pemalang', 'Laki-Laki', '', NULL, '2015-11-12 07:46:04', '2015-11-12 07:46:04'),
(63, '025', '04', 'Kabupaten Pemalang', 'UNTUNG RACHADI, S.Pd.', 'Pemalang', '1973-06-01', 'Saphire Residence Beji Pemalang', 'Laki-Laki', '081575329060', NULL, '2015-11-12 07:48:30', '2015-11-12 07:48:30'),
(64, '025', '04', 'Kabupaten Pemalang', 'WARMO', 'Pemalang', '1973-12-30', 'Pelutan Pemalang', 'Laki-Laki', '08179589832', '64.jpg', '2015-11-12 07:50:49', '2015-11-12 07:50:49'),
(65, '025', '04', 'Kabupaten Pemalang', 'FATCHURRODJI', 'Pemalang', '1970-12-03', 'Moga Pemalang', 'Laki-Laki', '087830806234', NULL, '2015-11-12 07:52:27', '2015-11-12 07:52:27'),
(66, '025', '04', 'Kabupaten Pemalang', 'BUDI HARSONO', 'Pemalang', '1970-07-17', 'Pelutan Pemalang', 'Laki-Laki', '085290746015', NULL, '2015-11-12 07:53:43', '2015-11-12 07:53:43'),
(67, '013', '04', 'Kabupaten Pemalang', 'Abd. Slamet B', 'Pemalang', '2015-11-12', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 07:54:06', '2015-11-12 07:54:06'),
(68, '013', '04', 'Kabupaten Pemalang', 'Untung WInarto', 'Pemalang', '2015-11-12', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 07:54:42', '2015-11-12 07:54:42'),
(69, '025', '04', 'Kabupaten Pemalang', 'PRIYO UTOMO', 'Pemalang', '1986-04-04', 'Bandelan RT.01/08 Taman Pemalang', 'Laki-Laki', '085741132586', '69.jpg', '2015-11-12 07:56:42', '2015-11-12 07:56:42'),
(70, '025', '04', 'Kabupaten Pemalang', 'ZAENUDIN', 'Pemalang', '1982-07-01', 'Tanjungsari Pemalang', 'Laki-Laki', '087764542061', NULL, '2015-11-12 07:58:30', '2015-11-12 07:58:30'),
(71, '025', '04', 'Kabupaten Pemalang', 'AHMAD SOLEH', 'Pemalang', '1987-03-17', 'Wanarejan Pemalang', 'Laki-Laki', '085640255863', NULL, '2015-11-12 08:00:17', '2015-11-12 08:00:17'),
(72, '025', '04', 'Kabupaten Pemalang', 'NURUL CHASANAH', 'Pemalang', '1989-09-07', 'Kabunan Taman Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 08:02:01', '2015-11-12 08:02:01'),
(73, '025', '04', 'Kabupaten Pemalang', 'ANTHONIUS HERI P', 'Pemalang', '1973-07-27', 'Pelutan Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 08:03:37', '2015-11-12 08:03:37'),
(74, '025', '04', 'Kabupaten Pemalang', 'BUDI ARIANTO', 'Pemalang', '1950-11-29', 'Pelutan Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 08:05:26', '2015-11-12 08:05:26'),
(75, '025', '04', 'Kabupaten Pemalang', 'SURATNO', 'Pemalang', '1965-03-17', 'Beji Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 08:06:37', '2015-11-12 08:06:37'),
(76, '025', '04', 'Kabupaten Pemalang', 'NOOR KHOLIS', 'Pemalang', '1966-06-10', 'Randudongkal Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 08:08:12', '2015-11-12 08:08:12'),
(77, '025', '04', 'Kabupaten Pemalang', 'DWI HARDIANSYAH', 'Pemalang', '1979-08-11', 'Moga Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 08:09:14', '2015-11-12 08:09:14'),
(78, '025', '04', 'Kabupaten Pemalang', 'MAKNUN', 'Pemalang', '1982-10-09', 'Moga Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 08:10:20', '2015-11-12 08:10:20'),
(79, '025', '04', 'Kabupaten Pemalang', 'Drs.YUDIA LAKSONO', 'Pemalang', '1967-11-17', 'Petarukan Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 08:11:36', '2015-11-12 08:11:36'),
(80, '025', '04', 'Kabupaten Pemalang', 'RUSDIMAN ARIF, SH.', 'Pemalang', '1969-09-02', 'Comal Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 08:12:46', '2015-11-12 08:12:46');

-- --------------------------------------------------------

--
-- Table structure for table `pelopor`
--

CREATE TABLE `pelopor` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kel` enum('Laki-Laki','Perempuan') COLLATE utf8_unicode_ci NOT NULL,
  `foto` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peserta_event_pemuda`
--

CREATE TABLE `peserta_event_pemuda` (
  `id_peserta` int(10) UNSIGNED NOT NULL,
  `id_event` int(11) NOT NULL,
  `nama_peserta` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kelompok` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jenis_kel` enum('Laki-Laki','Perempuan') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ppan`
--

CREATE TABLE `ppan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tinggi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `berat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `negara` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kel` enum('Laki-Laki','Perempuan') COLLATE utf8_unicode_ci NOT NULL,
  `foto` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pramuka`
--

CREATE TABLE `pramuka` (
  `id_pramuka` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siaga_l` double NOT NULL,
  `siaga_p` double NOT NULL,
  `penggalang_l` double NOT NULL,
  `penggalang_p` double NOT NULL,
  `penegak_l` double NOT NULL,
  `penegak_p` double NOT NULL,
  `pandega_p` double NOT NULL,
  `pandega_l` double NOT NULL,
  `lb_l` double NOT NULL,
  `lb_p` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pramuka`
--

INSERT INTO `pramuka` (`id_pramuka`, `nama`, `alamat`, `kota_kab`, `siaga_l`, `siaga_p`, `penggalang_l`, `penggalang_p`, `penegak_l`, `penegak_p`, `pandega_p`, `pandega_l`, `lb_l`, `lb_p`) VALUES
(2, 'Kwartir Cabang Pemalang', 'Jalan. Laksda Yos Sudarso no. 16A Pemalang 52311\r\nTelp/fax. (0284) 323307', 'Kabupaten Pemalang', 45.463, 45759, 51571, 51897, 13567, 13827, 342, 293, 56, 45),
(3, 'Kwartir Ranting Ulujami', 'Kantor UPP Kecamatan Ulujami', 'Kabupaten Pemalang', 1769, 1995, 2967, 3181, 212, 307, 0, 0, 0, 0),
(4, 'Kwartir Ranting Comal', 'Jl. Gatot Subroto Gg. Kenanga 13 No. 73\r\nTelp. (0285) 7977228 / 081548136525', 'Kabupaten Pemalang', 3124, 3399, 3492, 3710, 440, 575, 0, 0, 0, 0),
(5, 'Kwartir Ranting Bodeh', 'Kopergu Jl. Pendowo Kecamatan Bodeh\r\nTelp. 085865199642 / 087764656299', 'Kabupaten Pemalang', 1589, 1762, 2203, 2346, 324, 399, 0, 0, 0, 0),
(6, 'Kwartir Ranting Ampelgading', 'Jl. Raya Pemalang-Pekalongan (SMK Negeri 1 Ampelgading)', 'Kabupaten Pemalang', 2005, 2127, 2462, 2564, 778, 882, 0, 0, 0, 0),
(7, 'Kwartir Ranting Petarukan', 'Aula UPPK Jl. Raya Iser Petarukan', 'Kabupaten Pemalang', 3819, 3924, 5044, 5207, 1923, 1994, 0, 0, 0, 0),
(8, 'Kwartir Ranting Taman', 'Jl. Werkudoro no. 5 Wanarejan Selatan', 'Kabupaten Pemalang', 4350, 4479, 5735, 5907, 2010, 2122, 0, 0, 0, 0),
(9, 'Kwartir Ranting Pemalang', 'Jl. Pemuda No. 45B Mulyoharjo Pemalang', 'Kabupaten Pemalang', 4906, 5112, 6489, 6712, 2458, 2606, 225, 155, 56, 45),
(10, 'Kwartir Ranting Bantarbolang', 'Jl. Raya Bantarbolang - Pemalang\r\nTelp. 081575365819', 'Kabupaten Pemalang', 2139, 2244, 4451, 4475, 527, 602, 0, 0, 0, 0),
(11, 'Kwartir Ranting Randudongkal', 'Jl. Teuku Umar No. 1 Randudongkal\r\nTelp. 081542322765', 'Kabupaten Pemalang', 9539, 9711, 5399, 5521, 2393, 2487, 45, 40, 0, 0),
(12, 'Kwartir Ranting Moga', 'Jl. Raya Moga Pulosari Kec. Moga', 'Kabupaten Pemalang', 1275, 1361, 2771, 2879, 817, 894, 0, 0, 0, 0),
(13, 'Kwartir Ranting Pulosari', 'Jl. Raya Pulosari\r\nTelp. 085742039727', 'Kabupaten Pemalang', 1351, 1446, 2208, 2321, 82, 134, 0, 0, 0, 0),
(14, 'Kwartir Ranting Belik', 'Jl. Serka Marinir (Anm) Tulus Ujianto no. 23 Belik\r\nTelp. 085227595544', 'Kabupaten Pemalang', 4188, 4289, 3349, 3473, 342, 404, 72, 98, 0, 0),
(15, 'Kwartir Ranting Watukumpul', 'Kantor KPRI Setia Kawan Jl. Raya Watukumpul', 'Kabupaten Pemalang', 3251, 3352, 2467, 2598, 89, 121, 0, 0, 0, 0),
(16, 'Kwartir Ranting Warungpring', 'Kantor  UPPK Warungpring', 'Kabupaten Pemalang', 1314, 1403, 1683, 1758, 201, 249, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `pramuka_struktur`
--

CREATE TABLE `pramuka_struktur` (
  `id_anggota` int(10) UNSIGNED NOT NULL,
  `id_pramuka` int(11) NOT NULL,
  `nama_anggota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jabatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pramuka_struktur`
--

INSERT INTO `pramuka_struktur` (`id_anggota`, `id_pramuka`, `nama_anggota`, `tmp_lahir`, `tgl_lahir`, `jabatan`) VALUES
(2, 2, 'Suharto, S.IP, M.Si', 'Pemalang', '1962-04-27', 'Ketua'),
(4, 2, 'Drs. H. Soemarno, M.Pd', 'Pacitan', '1956-03-16', 'Waka Bidang Binamuda'),
(5, 2, 'Drs. Zainul Arifin', 'Semarang', '1958-08-20', 'Waka Bidang Binawasa'),
(6, 2, 'Drs. H. Wismo, M.Pd', 'Pemalang', '1961-10-04', 'Waka Bidang Organisasi dan Hukum'),
(7, 2, 'Drs. H. Sobirin, M.Pd', 'Pemalang', '1963-03-07', 'Waka Bidang Keuangan, Usaha dan Sarpras'),
(8, 2, 'S. Darsono, S.Pd', 'Pemalang', '2000-01-01', 'Waka Bidang Pengabdian Masyarakat dan Humas'),
(9, 2, 'H. Kismo, S.Pd, M.Pd', 'Pemalang', '1962-11-02', 'Sekretaris'),
(10, 2, 'Teguh Priyanto', 'Pemalang', '1976-04-12', 'Wakil Sekretaris'),
(11, 2, 'Hargito, SH, MM', 'Pemalang', '1963-03-07', 'Bendahara'),
(12, 2, 'Johan Rusadi, S.Pd', 'Pemalang', '1964-09-18', 'Andalan Bidang Binamuda Urusan Siaga Putra'),
(13, 3, 'Wagiyono, S.Pd', 'Pemalang', '2030-11-01', 'Ketua'),
(14, 3, 'Selamet Setyabudi', 'Pemalang', '2030-11-01', 'Wakil Ketua'),
(15, 2, 'Tri Pudyaningsih, S.Pd', ' 	Pemalang', '1964-06-29', ' 	Andalan Bidang Binamuda Urusan Siaga Putri'),
(16, 3, 'B. Haryanto', 'Pemalang', '2030-11-01', 'Wakil Ketua'),
(17, 2, ' 	Muritno, S.Pd', ' 	Pemalang', '1964-08-01', 'Andalan Bidang Binamuda Urusan Siaga Putra'),
(18, 3, 'H. Nurokhim, S.Pd', 'Pemalang', '2030-11-01', 'Sekretaris'),
(19, 3, 'Sumardi, S.Pd', 'Pemalang', '2030-11-01', 'Wakil Sekretaris'),
(20, 3, 'Rusmiyanti, S.Pd	', 'Pemalang', '2030-11-01', 'Bendahara'),
(21, 3, 'Kurdi, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(22, 3, 'Kurdi, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(23, 3, 'Solekhan, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(24, 2, 'Siti Rokhati, S.Pd', 'Pemalang', '1969-06-02', 'Anggota Bidang Binamuda Urusan Siaga Putri'),
(26, 3, 'Rusyati, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(27, 3, 'Nitiningsih, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(28, 3, 'Iswandono, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(29, 3, 'Suwarno, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(30, 3, 'Mintarsih, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(31, 3, 'Rayuti, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(32, 3, 'Edi Susanto, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(33, 3, 'Hj. Alfiah, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(34, 2, 'Susana Budi Raharjo, S.Pd', 'Pemalang', '1969-11-15', 'Andalan Bidang Binamuda Urusan Penggalang Putra'),
(35, 3, 'Agus Widodo, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binawasa'),
(36, 3, 'Kiswoyo, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binawasa'),
(37, 3, 'Muslicha, S.Pd.SD', 'Pemalang', '2030-11-01', 'Andalan Bidang Binawasa'),
(38, 3, 'Siti Muhayaroh, A.Ma.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binawasa'),
(39, 3, 'Harjo Suwondo, S.Pd.SD', 'Pemalang', '2030-11-01', 'Andalan Bidang Menjemen dan Humas'),
(40, 3, 'Dwi Wanto, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Menjemen dan Humas'),
(41, 2, 'Agus Sulaiman, S.Pd', 'Pemalang', '1967-08-01', 'Andalan Bidang Binamuda Urusan Penggalang Putra'),
(42, 3, 'Ikhwanudin, A.Ma', 'Pemalang', '2030-11-01', 'Andalan Bidang Menjemen dan Humas'),
(43, 3, 'Susilo, S.Pd', 'Pemalang', '2030-11-01', 'Koordinator Gugus Depan'),
(44, 2, 'Hj. Satunik, M.Pd', 'Pemalang', '1967-04-30', 'Andalan Bidang Binamuda Urusan Penggalang Putri'),
(45, 3, 'Muh. Susanto, S.Pd', 'Pemalang', '2030-11-01', 'Koordinator Gugus Depan'),
(46, 3, 'Buyami, S.Pd', 'Pemalang', '2030-11-01', 'Koordinator Gugus Depan'),
(47, 3, 'Sarwono, S.Pd.SD', 'Pemalang', '2030-11-01', 'Koordinator Gugus Depan'),
(48, 3, 'Kashuri, S.Pd.SD', 'Pemalang', '2030-11-01', 'Koordinator Gugus Depan'),
(49, 3, 'Suroto, S.Pd.SD', 'Pemalang', '2030-11-01', 'Koordinator Gugus Depan'),
(50, 3, 'Wasiati, S.Pd', 'Pemalang', '2030-11-01', 'Koordinator Gugus Depan'),
(51, 3, 'Drs. Winaryoto', 'Pemalang', '2030-11-01', 'Koordinator Gugus Depan'),
(52, 4, 'Ahmad Nasichin, S.Pd.I', 'Pemalang', '2030-11-01', 'Ketua'),
(53, 4, 'Bahrun Rosyid, S.Ag, M.A', 'Pemalang', '2030-11-01', 'Waka Bidang Binamuda'),
(54, 2, 'Hj. Tusiyati, M.Pd.I', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda Urusan Penggalang Putri'),
(55, 2, 'H. Khotibul Umam, S.Pd', 'Pemalang', '1985-07-31', 'Andalan Bidang Binamuda Urusan Penegak Putra'),
(56, 2, 'Febri Sebastian, S.Pd', 'Pemalang', '1990-02-03', 'Andalan Bidang Binamuda Urusan Penegak Putra'),
(57, 4, 'Suhanto, S.Pd', 'Pemalang', '2030-11-01', 'Waka Bidang Binawasa'),
(58, 4, 'Agus Wahyudin, S.Pd', 'Pemalang', '2030-11-01', 'Waka Bidang Organisasi dan Hukum'),
(59, 2, 'Riwi Indarti, S.Pd', 'Pemalang', '1959-08-02', 'Andalan Bidang Binamuda Urusan Penegak Putri'),
(60, 2, 'Puspita Sari Wilujeng, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda Urusan Penegak Putri'),
(61, 4, 'Drs. Edi Raharjo', 'Pemalang', '2030-11-01', 'Waka Bidang Pengabdian Masyarakat dan Humas'),
(62, 4, 'Sulasmo, S.Pd', 'Pemalang', '2030-11-01', 'Waka Bidang Keuangan, Usaha dan Sarpras'),
(63, 4, 'Sobirin, M.Pd', 'Pemalang', '2030-11-01', 'Sekretaris'),
(64, 2, 'Drs. Imam Wusono', 'Pemalang', '1963-07-09', 'Andalan Bidang Binamuda Urusan Pramuka Luar Biasa'),
(65, 4, 'Slamet Duhroni, S.Pd, M.Si', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(66, 2, 'Aiptu Japar', 'Pemalang', '1963-06-13', 'Andalan Bidang Binamuda Urusan Satuan Karya'),
(67, 4, 'Nur Anis Zati', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(68, 4, 'Erwin Supriyono, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(69, 2, 'H. Samsuri, S.Pd', 'Pemalang', '1958-05-05', 'Andalan Bidang Binawasa'),
(70, 4, 'Septi Listiyani, S.Pd, M.A', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(71, 4, 'Kudono, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(72, 2, 'Hj. Umi Ulfah, S.Ag', 'Pemalang', '1960-05-14', 'Andalan Bidang Binawasa'),
(73, 4, 'Risqi Windawati, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(74, 2, 'Agus Riyanto', 'Pemalang', '2000-01-01', 'Andalan Bidang Binawasa'),
(75, 4, 'Aiptu Aris Setiyono', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(76, 4, 'Runiti, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binawasa'),
(77, 2, 'Solikhin, S.Pd', 'Tegal', '1963-04-20', 'Andalan Bidang Binawasa'),
(78, 4, 'Triastuti, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binawasa'),
(79, 4, 'Toto Nugroho, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binawasa'),
(80, 2, 'Wiwik Sri Sutaminingsih, S.Pd', 'Probolinggo', '1958-01-21', 'Andalan Bidang Binawasa'),
(81, 2, 'H. Sumargo HS, M.Pd', 'Pemalang', '1958-10-07', 'Andalan Bidang Organisasi dan Hukum'),
(82, 4, 'Teguh Purnomo', 'Pemalang', '2030-11-01', 'Andalan Bidang Binawasa'),
(83, 2, 'Aunur Rofiq, M.Pd', 'Kendal', '1969-05-18', 'Andalan Bidang Organisasi dan Hukum'),
(84, 4, 'Heri Priyo Sutoto, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Organisasi dan Hukum'),
(85, 4, 'Endang Murwati, S.Pd.SD', 'Pemalang', '2030-11-01', 'Andalan Bidang Organisasi dan Hukum'),
(86, 4, 'Bambang Susanto, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(87, 2, 'Drs. Khalimi, M.M.Pd', 'Pemalang', '1961-07-26', 'Andalan Bidang Organisasi dan Hukum'),
(88, 4, 'Kasnawi', 'Pemalang', '2030-11-01', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(89, 2, 'Agus Slamet, S.IP', 'Pemalang', '1961-03-11', 'Andalan Bidang Keuangan, Usaha dan Sarpras'),
(90, 4, 'Daryono, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(91, 2, 'Suharsono, S.Pd', 'Pemalang', '1957-06-26', 'Andalan Bidang Keuangan, Usaha dan Sarpras'),
(92, 4, 'Arif Giar Purnomo', 'Pemalang', '2030-11-01', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(93, 2, 'Drs. Darmono', 'Pemalang', '1959-08-02', 'Andalan Bidang Keuangan, Usaha dan Sarpras'),
(94, 4, 'Khalimah Ekowati, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Keuangan, Usaha Dan Sapras'),
(95, 4, 'M. Imron Rosyidi Afifi, S.Pd.SD', 'Pemalang', '2030-11-01', 'Andalan Bidang Keuangan, Usaha Dan Sapras'),
(96, 4, 'Siti Zulfa, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Keuangan, Usaha Dan Sapras'),
(97, 4, 'Sudiarto, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Keuangan, Usaha Dan Sapras'),
(98, 4, 'Supriyanto', 'Pemalang', '2030-11-01', 'andalan bidang ke'),
(99, 4, 'Supriyanto', 'Pemalang', '2030-11-01', 'Andalan Bidang Keuangan, Usaha Dan Sapras'),
(100, 4, 'Aru Maalana', 'Pemalang', '2030-11-01', 'Ketua DKR'),
(101, 2, 'H. Abdul Muiz, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Keuangan, Usaha dan Sarpras'),
(102, 2, 'Dwito Muhbarok', 'Pemalang', '1968-05-31', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(103, 2, 'Tri Bangun Fajari, M.Pd', 'Pemalang', '1978-04-10', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(104, 5, 'Saefudin, S.Pd', 'Pemalang', '2030-11-01', 'Ketua'),
(105, 2, 'Dra. MDH Apriani', 'Pemalang', '1968-04-24', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(106, 5, 'Slamet Sugiharto, M.H', 'Pemalang', '2030-11-01', 'Waka Bidang Binawasa'),
(107, 2, 'Rina Purwokanti, S.IP', 'Pemalang', '1966-02-01', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(108, 2, 'H.M. Nurhadi, S.Pd, M.Pd', 'Pemalang', '1966-05-20', 'Anggota LPK Kwarcab Pemalang'),
(109, 5, 'Sobirin, S.Pd, M.Pd', 'Pemalang', '2030-11-01', 'Waka Bidang Binamuda'),
(110, 2, 'Aris Sundono, S.Pd', 'Pemalang', '1958-01-05', 'Anggota LPK Kwarcab Pemalang'),
(111, 5, 'Slamet Riyadi, S.Pd', 'Pemalang', '2030-11-01', 'Waka Bidang Manajemen dan Humas'),
(112, 5, 'Biyana, S.Pd', 'Pemalang', '2030-11-01', 'Sekretaris'),
(113, 2, 'Saefudin, S.Pd', 'Pemalang', '1962-09-21', 'Anggota LPK Kwarcab Pemalang'),
(114, 5, 'Titi Rahmawati, S.Pd', 'Pemalang', '2030-11-01', 'Wakil Sekretaris'),
(115, 5, 'Ela Mutiara, S.Pd', 'Pemalang', '2030-11-01', 'Bendahara'),
(116, 2, 'Puspita Sari Wilujeng, S.Pd', 'Pemalang', '2000-01-01', 'Plt. Ketua DKC'),
(117, 5, 'Andreas Suratmo, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binawasa'),
(118, 5, 'Wiwik Hartini, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binawasa'),
(119, 6, 'Suhartoyo, S.Pd', 'Pemalang', '2000-01-01', ' 	Ketua'),
(120, 5, 'Suharno, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(121, 6, ' 	Abu Hanifah, S.Pd', 'Pemalang', '2000-01-01', ' 	Wakil Ketua'),
(122, 5, 'Dirjo, S.Pd.SD', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(123, 6, ' 	Jumali', 'Pemalang', '2000-01-01', ' 	Wakil Ketua'),
(124, 5, 'Heni Purnomowati, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(125, 6, ' 	Titi Suryanti, S.Pd', 'Pemalang', '2000-01-01', ' 	Sekretaris'),
(126, 6, ' 	Sudirman, S.Pd', 'Pemalang', '2000-01-01', ' 	Wakil Sekretaris'),
(127, 5, 'Nuriyah, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(128, 6, 'Endang, S.Pd.SD', 'Pemalang', '2000-01-01', 'Bendahara'),
(129, 5, 'Sasmito, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(130, 6, 'Harjito, S.Pd.SD', 'Pemalang', '2000-01-01', ' 	Andalan Bidang Binamuda'),
(131, 5, 'Cipto Mulyono, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(132, 6, ' 	Danuri', 'Pemalang', '2000-01-01', ' 	Andalan Bidang Binamuda'),
(133, 5, 'Tuti Haryati, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(134, 5, 'Puji Hartati, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(135, 6, ' 	Uripah', 'Pemalang', '2000-01-01', ' 	Andalan Bidang Binamuda'),
(136, 5, 'Ardian Heveantara, S.Sos', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(137, 5, 'Rumaeni, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(138, 6, ' 	Kustanti, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(139, 5, 'Siswaya, SE', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(140, 5, 'Casmito', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(141, 6, ' 	Kasmirin, S.Pd', 'Pemalang', '2000-01-01', ' 	Andalan Bidang Binamuda'),
(142, 5, 'Sudiharto, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(143, 6, ' 	Parikhin, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(144, 6, ' 	Darni, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(145, 5, 'Nuridin, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Menjemen dan Humas'),
(146, 6, 'Heman, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(147, 5, 'Amat Muhajirin, A.Ma', 'Pemalang', '2030-11-01', 'Andalan Bidang Menjemen dan Humas'),
(148, 6, ' 	Akyas Samsuri', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(149, 5, 'Slamet, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Menjemen dan Humas'),
(150, 6, 'Nur Andiyah, S.Pd.SD', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(151, 6, ' 	Mujiati, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(152, 5, 'Dwi adi Setyawan, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Menjemen dan Humas'),
(153, 6, ' 	Danuri, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(154, 6, ' 	Harjito', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(155, 5, 'Kuntoro, S.Pd', 'Pemalang', '2030-11-01', 'Koordinator Gugus Depan'),
(156, 6, ' 	Khamami, S.Pd.SD', 'Pemalang', '2000-01-01', 'Andalan Bidang Binawasa'),
(157, 5, 'Fajri Dyah, S.Pd', 'Pemalang', '2030-11-01', 'ko'),
(158, 5, 'Fajri Dyah, S.Pd', 'Pemalang', '2030-11-01', 'Koordinator Gugus Depan'),
(159, 6, ' 	Kisnoto', 'Pemalang', '2000-01-01', 'Andalan Bidang Binawasa'),
(160, 6, ' 	Nur Khasanah', 'Pemalang', '2000-01-01', 'Andalan Bidang Binawasa'),
(161, 5, 'Sugimin, S.Pd', 'Pemalang', '2030-11-01', 'Koordinator Gugus Depan'),
(162, 5, 'Wagimin, S.Pd', 'Pemalang', '2030-11-01', 'Koordinator Gugus Depan'),
(163, 5, 'M. Syukur', 'Pemalang', '2030-11-01', 'Koordinator Gugus Depan'),
(164, 5, 'Slamet Widodo', 'Pemalang', '2030-11-01', 'Ketua DKR'),
(165, 6, ' 	Prihatin, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binawasa'),
(166, 6, ' 	Siswantoro, S.Pd.SD', 'Pemalang', '2000-01-01', 'Andalan Bidang Keuangan, Usaha dan Sarpras'),
(167, 6, ' 	Kasmuri, S.Pd.SD', 'Pemalang', '2000-01-01', 'Andalan Bidang Keuangan, Usaha dan Sarpras'),
(168, 6, ' 	Kunanto', 'Pemalang', '2000-01-01', 'Andalan Bidang Keuangan, Usaha dan Sarpras'),
(169, 6, ' 	Saeful Anwar', 'Pemalang', '2000-01-01', 'Andalan Bidang Keuangan, Usaha dan Sarpras'),
(170, 6, '28 	Urip S, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Keuangan, Usaha dan Sarpras'),
(171, 6, 'S. Agustina', 'Pemalang', '2000-01-01', 'Andalan Bidang Keuangan, Usaha dan Sarpras'),
(172, 6, ' 	Cayoko', 'Pemalang', '2000-01-01', 'Andalan Bidang Keuangan, Usaha dan Sarpras'),
(173, 6, ' 	Suraja, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(174, 6, 'Kustinah', 'Pemalang', '2000-01-01', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(175, 6, ' 	Farchah', 'Pemalang', '2000-01-01', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(176, 6, ' 	Muharno', 'Pemalang', '2000-01-01', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(177, 6, ' 	Tarmoyo', 'Pemalang', '2000-01-01', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(178, 6, ' 	Ranoto', 'Pemalang', '2000-01-01', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(179, 6, 'Casmo HS, S.Pd.SD', 'Pemalang', '2000-01-01', 'Andalan Bidang Pengabdian Masyarakat dan Humas'),
(180, 6, ' 	Muslimah', 'Pemalang', '2000-01-01', 'Ketua DKR'),
(181, 7, ' 	H.M. Nurhadi, S.Pd, M.Pd', 'Pemalang', '2000-01-01', 'Ketua'),
(182, 7, 'Suworo, S.Pd', 'Pemalang', '2000-01-01', 'Wakil Ketua'),
(183, 7, ' 	Trini Winarti, S.Pd, M.Pd', 'Pemalang', '2000-01-01', 'Wakil Ketua'),
(184, 7, 'Drs. Sigit Joko P, M.Pd', 'Pemalang', '2000-01-01', 'Wakil Ketua'),
(185, 8, 'Kursim, S.Pd', 'Pemalang', '2030-11-01', 'Ketua'),
(186, 7, 'Umroni, SH', 'Pemalang', '2000-01-01', 'Wakil Ketua'),
(187, 7, ' 	Maryoto, S.Pd', 'Pemalang', '2000-01-01', 'Sekretaris'),
(188, 8, 'Ranoto', 'Pemalang', '2030-11-01', 'Waka Bidang Organisasi dan Hukum'),
(189, 7, ' 	Susmanto, S.Pd', 'Pemalang', '2000-01-01', 'Wakil Sekretaris'),
(190, 8, 'I. Khanafi, S.Pd.SD', 'Pemalang', '2030-11-01', 'Waka Bidang Binawasa'),
(191, 7, ' 	H. Mudiono, S.Pd', 'Pemalang', '2000-01-01', 'Bendahara'),
(192, 8, 'Agus Sulaiman, S.Pd', 'Pemalang', '2030-11-01', 'Waka Bidang Binamuda'),
(193, 7, 'Indrisari, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(194, 8, 'Sapto Sumadya, S.Pd', 'Pemalang', '2030-11-01', 'Waka Bidang Keuangan, Usaha dan Sarpras'),
(195, 7, ' 	Sri Atun, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(196, 8, 'Rr. Ida Komaria A.S, S.IP', 'Pemalang', '2030-11-01', 'Waka Bidang Pengabdian Masyarakat dan Humas'),
(197, 7, ' 	Bambang Irianto, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(198, 7, ' 	Wardono, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(199, 8, 'S. Sukirno, S.Pd', 'Pemalang', '2030-11-01', 'Sekretaris'),
(200, 7, ' 	Kusweni, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(201, 7, ' 	Nurjanatun, S.Ag', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(202, 8, 'Dra. Kuswati', 'Pemalang', '2030-11-01', 'Bendahara'),
(203, 7, ' 	Sapto Kuncoro, S. Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(204, 8, 'Suraji, S.Pd.SD', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(205, 7, 'Darsono, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(206, 7, 'Pulpariyah, S.Pd', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(207, 8, 'Suwatno JP, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(208, 8, 'Hj. Sakinah, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(209, 7, 'Siti Ma\'rifah, S.Pd.I', 'Pemalang', '2000-01-01', 'Andalan Bidang Binamuda'),
(210, 8, 'Murinah, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(211, 8, 'Sugimiharjo, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(212, 8, 'Slamet Sapardi, S.Pd.SD', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(213, 8, 'Widiyatmi, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(214, 8, 'Dra. Susherningsih', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(215, 8, 'Slamet Willy, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda'),
(216, 8, 'Aditya Widya Wijaya, S.Pd', 'Pemalang', '2030-11-01', 'Andalan Bidang Binamuda');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pelatih`
--

CREATE TABLE `riwayat_pelatih` (
  `id_riwayat_pelatih` int(10) UNSIGNED NOT NULL,
  `id_pelatih` int(11) NOT NULL,
  `nama_riwayat_pelatih` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarjana`
--

CREATE TABLE `sarjana` (
  `id_sarjana` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kel` enum('Laki-Laki','Perempuan') COLLATE utf8_unicode_ci NOT NULL,
  `lokasi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `angkatan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sumber_dana` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dasar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `masa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foto` text COLLATE utf8_unicode_ci,
  `no_telp` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarjana_event`
--

CREATE TABLE `sarjana_event` (
  `id_event` int(10) UNSIGNED NOT NULL,
  `id_sarjana` int(11) NOT NULL,
  `nama_event_sarjana` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tingkat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarpras_asset`
--

CREATE TABLE `sarpras_asset` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kondisi` enum('Baik','Sedang','Rusak') COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sarpras_muda`
--

CREATE TABLE `sarpras_muda` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kondisi` enum('Baik','Sedang','Rusak') COLLATE utf8_unicode_ci NOT NULL,
  `kategori` enum('Gedung Olahraga','Lapangan Olahraga') COLLATE utf8_unicode_ci NOT NULL,
  `status_pemilik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kapasitas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sarpras_muda`
--

INSERT INTO `sarpras_muda` (`id`, `nama`, `alamat`, `kota_kab`, `kondisi`, `kategori`, `status_pemilik`, `kapasitas`, `created_at`, `updated_at`) VALUES
(2, 'GEDUNG KNPI ', 'JL. PEMUDA NO: 93 PEMALANG', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'PEMDA', '100', '2015-11-12 07:12:32', '2015-11-12 07:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `sarpras_ors`
--

CREATE TABLE `sarpras_ors` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kondisi` enum('Baik','Sedang','Rusak') COLLATE utf8_unicode_ci NOT NULL,
  `kategori` enum('Gedung Olahraga','Lapangan Olahraga') COLLATE utf8_unicode_ci NOT NULL,
  `status_pemilik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kapasitas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sarpras_ors`
--

INSERT INTO `sarpras_ors` (`id`, `nama`, `alamat`, `kota_kab`, `kondisi`, `kategori`, `status_pemilik`, `kapasitas`, `created_at`, `updated_at`) VALUES
(2, 'Lapangan Sepak Bola', 'Desa petanjungan', 'Kabupaten Pemalang', 'Baik', '', 'Milik Desa', '2000', '2015-11-12 04:15:46', '2015-11-12 04:15:46'),
(3, 'Lapangan Sepak Bola', 'Desa Karangasem', 'Kabupaten Pemalang', 'Baik', '', 'Milik Desa', '1000', '2015-11-12 04:17:13', '2015-11-12 04:17:13'),
(4, 'Lapangan Sepak Bola', 'Desa Kendalsari', 'Kabupaten Pemalang', 'Baik', '', 'Milik Desa', '2000', '2015-11-12 04:18:17', '2015-11-12 04:18:17'),
(5, 'Lapangan Sepak Bola', 'Desa Bodeh Kec. Bodeh', 'Kabupaten Pemalang', 'Rusak', '', 'Tanah Desa', '1000 orang', '2015-11-12 04:18:39', '2015-11-12 04:18:39'),
(6, 'sanggar senam keong mas', 'Desa Pamutih Rt 01 Rw 08 NO 18.  Kecamatan Ulujami. Kabupaten Pemalang', 'Kabupaten Pemalang', 'Rusak', 'Gedung Olahraga', 'Pribadi', '20', '2015-11-12 04:19:00', '2015-11-12 07:15:37'),
(7, 'Lapangan Sepak Bola', 'Desa Serang', 'Kabupaten Pemalang', 'Rusak', '', 'Milik Desa', '1000', '2015-11-12 04:19:38', '2015-11-12 04:19:38'),
(8, 'Lapangan Sepak Bola', 'Desa Pendowo Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 orang', '2015-11-12 04:21:48', '2015-11-12 04:21:48'),
(9, 'Lapangan Sepak Bola', 'Desa Sirangkang', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1000', '2015-11-12 04:21:52', '2015-11-12 04:21:52'),
(10, 'Lapangan Sepak Bola', 'Desa Kelangdepok Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '3000 orang', '2015-11-12 04:24:26', '2015-11-12 04:24:26'),
(11, 'Lapangan Sepak Bola', 'Desa Muncang Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 orang', '2015-11-12 04:26:54', '2015-11-12 04:26:54'),
(12, 'Lapangan Sepak Bola', 'Desa  Sokawati Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 orang', '2015-11-12 04:28:18', '2015-11-12 05:37:45'),
(13, 'Lapangan Wana krida', 'Desa Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'Perhutani', '5000 orang', '2015-11-12 04:32:33', '2015-11-12 04:32:33'),
(14, 'Lapangan Sepak Bola', 'Desa Sirangkang', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1000', '2015-11-12 04:35:28', '2015-11-12 04:35:28'),
(15, 'Lapangan Sepak Bola', 'SDN 01 Kuta - Bantarbolang', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Tanah Desa', '1000 orang', '2015-11-12 04:35:29', '2015-11-12 06:15:00'),
(16, 'Lapangan Sepak Bola Warungpring', 'Desa Warungprinng', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Pemerintah Desa', '1000', '2015-11-12 04:35:43', '2015-11-12 04:35:43'),
(17, 'Lapangan Sepak Bola', 'Desa Jraganan Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 orang', '2015-11-12 04:36:13', '2015-11-12 04:36:13'),
(18, 'Lapangan Sepak Bola', 'Desa Iser', 'Kabupaten Pemalang', 'Baik', '', 'Milik Desa', '1000', '2015-11-12 04:37:26', '2015-11-12 04:37:26'),
(19, 'Lapangan Sepak Bola', 'Desa Karangbrai Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 orang', '2015-11-12 04:37:57', '2015-11-12 04:37:57'),
(20, 'GOR Warungpring', 'Desa Warungpring Kecamatan Warungpring', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Pemerintah Desa', '1000', '2015-11-12 04:38:09', '2015-11-12 04:38:09'),
(21, 'Lapangan Sepak Bola', 'SMPN 04 Bantarbolang-Kuta ', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Tanah Desa', '1000 orang', '2015-11-12 04:38:49', '2015-11-12 06:16:57'),
(23, 'Lapangan Sepak Bola', 'Desa Payung Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 orang', '2015-11-12 04:40:26', '2015-11-12 04:40:26'),
(24, 'GOR PUMA ( BADMINTON)', 'Desa Warungpring Kecamatan Warungpring', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Perorangan', '2 lapangan', '2015-11-12 04:40:28', '2015-11-12 04:40:28'),
(26, 'Lapangan Sepak Bola', 'Desa Cangak Kec. bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 orang', '2015-11-12 04:41:35', '2015-11-12 04:41:35'),
(28, 'Lapangan SEGULI', 'Desa Pakembaran Warungpring', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Tanah Desa', '1000', '2015-11-12 04:42:34', '2015-11-12 04:42:34'),
(29, 'Lapangan Sepak Bola', 'Desa Kebandungan Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 orang', '2015-11-12 04:42:47', '2015-11-12 04:42:47'),
(30, 'GOR KRIDANGGO', 'Jl. Jendral Sudirman Barat, sebelah timur Alun - alun kab. Pemalang', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'PEMERINTAH', '1500', '2015-11-12 04:42:53', '2015-11-12 04:42:53'),
(31, 'Lapangan Sepak Bola', 'Desa Kesesirejo Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 orang', '2015-11-12 04:43:55', '2015-11-12 04:43:55'),
(32, 'Lapangan Sepak Bola', 'Desa Widodaren', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1000', '2015-11-12 04:44:21', '2015-11-12 04:44:21'),
(33, 'LAPANGAN LIRINGGALIH', 'Kubang - Mereng - Warungpring', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Tanah Desa', '1000', '2015-11-12 04:44:44', '2015-11-12 04:44:44'),
(34, 'Lapangan Sido Dadi', 'Pegiringan-Bantarbolang', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 orang', '2015-11-12 04:45:13', '2015-11-12 04:45:13'),
(35, 'Lapangan Sepak Bola', 'Desa Jatiroyom Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 orang', '2015-11-12 04:45:46', '2015-11-12 04:45:46'),
(36, 'LAPANGAN MINI DESA DATAR', 'KRAJAN- DATAR- WARUNGPRING', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Tanah Desa', '500', '2015-11-12 04:46:18', '2015-11-12 04:46:18'),
(37, 'Lapangan Polaga Jaya', 'Pedagung-Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'Tanah Desa', '1000 orang', '2015-11-12 04:46:40', '2015-11-12 04:46:40'),
(38, 'LAPANGAN SELECTION NEXT GENERATION', 'PAMULIAN WARUNGPRING', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'T', '1000', '2015-11-12 04:47:49', '2015-11-12 04:47:49'),
(40, 'LAPANGAN DUKUH GOMBONG', 'GOMBONG - WARUNGPRING', '', 'Baik', 'Gedung Olahraga', 'Tanah Desa', '1000', '2015-11-12 04:49:07', '2015-11-12 04:49:07'),
(41, 'LAPANGAN CIBUYUR', 'RANDU - CIBUYUR - WARUNGPRING', '', 'Baik', 'Gedung Olahraga', 'Tanah Desa', '1000', '2015-11-12 04:50:05', '2015-11-12 04:50:05'),
(43, 'Lapangan Bulu Tangkis', 'Desa Kendalsari', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Milik Perseorangan', '50', '2015-11-12 04:52:57', '2015-11-12 04:53:59'),
(44, 'Lapangan Sepak Bola', 'Desa Kebojongan Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1500', '2015-11-12 04:54:56', '2015-11-12 04:54:56'),
(45, 'Lapangan Bulu Tangkis', 'Desa Petanjungan', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Milik Desa', '50', '2015-11-12 04:55:32', '2015-11-12 04:55:32'),
(46, 'Lapangan Bulu Tangkis', 'Desa Kebojongan Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '150', '2015-11-12 04:56:31', '2015-11-12 04:56:31'),
(47, 'Lapangan Bulu Tangkis', 'Desa Karangasem', 'Kabupaten Pemalang', 'Rusak', '', 'Milik Perseorangan', '25', '2015-11-12 04:56:51', '2015-11-12 04:56:51'),
(48, 'Lapangan Bulu Tangkis', 'Desa Serang', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Milik Desa', '25', '2015-11-12 04:58:14', '2015-11-12 04:58:14'),
(49, 'Lapangan Sepak Bola', 'Desa Wonokromo Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1500', '2015-11-12 04:58:42', '2015-11-12 04:58:42'),
(50, 'Lapangan Bulu Tangkis', 'Desa Sirangkang', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Milik Perseorangan', '25', '2015-11-12 04:59:33', '2015-11-12 04:59:33'),
(51, 'Lapangan Bulu Tangkis', 'Desa Wonokromo Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '150', '2015-11-12 05:00:14', '2015-11-12 05:00:14'),
(52, 'Lapangan Bulu Tangkis', 'Desa Iser', 'Kabupaten Pemalang', 'Rusak', '', 'Milik Perseorangan', '25', '2015-11-12 05:00:39', '2015-11-12 05:00:39'),
(53, 'Lapangan Bulu Tangkis', 'Desa Widodaren', 'Kabupaten Pemalang', 'Rusak', '', 'Milik Perseorangan', '25', '2015-11-12 05:03:13', '2015-11-12 05:03:13'),
(54, 'Lapangan Tenis Meja', 'Desa Kebojongan Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Pribadi', '50', '2015-11-12 05:04:58', '2015-11-12 05:04:58'),
(55, 'Lapangan Bola Volly', 'Desa Petanjungan', 'Kabupaten Pemalang', 'Rusak', '', 'Milik Desa', '50', '2015-11-12 05:04:58', '2015-11-12 05:04:58'),
(56, 'Lapangan Sepak Bola', 'Desa Kandang Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1000', '2015-11-12 05:05:57', '2015-11-12 05:05:57'),
(57, 'Lapangan Bola Volly', 'Desa Kendalsari', 'Kabupaten Pemalang', 'Rusak', '', 'Milik Desa', '50', '2015-11-12 05:06:21', '2015-11-12 05:06:21'),
(58, 'Lapangan Bulu Tangkis', 'Desa Kandang Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '150', '2015-11-12 05:07:06', '2015-11-12 05:07:06'),
(59, 'Lapangan Bola Volly', 'Desa Karangasem', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '50', '2015-11-12 05:08:03', '2015-11-12 05:08:03'),
(60, 'Lapangan Bola Voli', 'Desa Klegen Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '200', '2015-11-12 05:08:58', '2015-11-12 05:08:58'),
(61, 'Lapangan Bola Volly', 'Desa Serang', 'Kabupaten Pemalang', 'Rusak', '', 'Milik Desa', '25', '2015-11-12 05:10:45', '2015-11-12 05:10:45'),
(62, 'Lapangan Bola Volly', 'SMP.N.3 Petarukan', 'Kabupaten Pemalang', 'Baik', '', 'Milik Sekolah', '100', '2015-11-12 05:13:49', '2015-11-12 05:13:49'),
(63, 'Lapangan Bumi Waringin', 'Desa Karanganyar - Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'Tanah Desa', '1000 orang', '2015-11-12 05:14:18', '2015-11-12 05:57:21'),
(64, 'Lapangan Bola Volly', 'SMP.N.6 Petarukan', 'Kabupaten Pemalang', 'Baik', '', 'Milik Sekolah', '100', '2015-11-12 05:15:43', '2015-11-12 05:15:43'),
(65, 'Lapangan Petemon', 'Desa Pedagung - Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'Tanah Desa', '1000 orang', '2015-11-12 05:15:47', '2015-11-12 05:57:49'),
(66, 'Lapangan Petemon', 'Desa Pedagung - Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'Tanah Desa', '1000 orang', '2015-11-12 05:16:10', '2015-11-12 05:58:22'),
(67, 'Lapangan Petemon', 'Desa Pedagung - Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'Tanah Desa', '1000 orang', '2015-11-12 05:16:19', '2015-11-12 05:59:25'),
(68, 'Lapangan Bola Volly', 'SMP.N.6 Petarukan', 'Kabupaten Pemalang', 'Baik', '', 'Milik Sekolah', '100', '2015-11-12 05:16:46', '2015-11-12 05:16:46'),
(69, 'Lapangan Sepak Bola', 'Desa Lenggerong - Bantarbolang', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Tanah Desa', '1000 orang', '2015-11-12 05:17:18', '2015-11-12 06:17:45'),
(70, 'Lapangan Bola Volly', 'SMA.N Petarukan', 'Kabupaten Pemalang', 'Baik', '', 'Milik Sekolah', '100', '2015-11-12 05:17:57', '2015-11-12 05:17:57'),
(71, 'Lapangan Sepak Bola', 'Desa Glandang - Bantarbolang', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Tanah Desa', '1000 orang', '2015-11-12 05:18:40', '2015-11-12 06:19:30'),
(72, 'Lapangan Bola basket', 'SMP.N.3 Petarukan', 'Kabupaten Pemalang', 'Baik', '', 'Milik Sekolah', '50', '2015-11-12 05:19:17', '2015-11-12 05:19:17'),
(73, 'GOR Latansa', 'Desa Bantarbolang', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Perorangan', '2 line Bulu Tangkis', '2015-11-12 05:19:56', '2015-11-12 06:13:34'),
(74, 'Lapangan Bola basket', 'SMP.N.6 Petarukan', 'Kabupaten Pemalang', 'Baik', '', 'Milik Sekolah', '50', '2015-11-12 05:20:25', '2015-11-12 05:20:25'),
(75, 'GOR Giri Arta', 'Desa Bantarbolang', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Perorangan', '1 Line Futsal', '2015-11-12 05:20:46', '2015-11-12 06:11:48'),
(76, 'Lapangan Sepak Bola', 'Semiliran-Desa Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'Tanah Desa', '1000 orang', '2015-11-12 05:21:40', '2015-11-12 06:30:23'),
(77, 'Lapangan Bola basket', 'SMA.N Petarukan', 'Kabupaten Pemalang', 'Baik', '', 'Milik Sekolah', '50', '2015-11-12 05:22:20', '2015-11-12 05:22:20'),
(78, 'Lapangan Sepak Bola', 'Dukuh Lumpang Desa Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'Tanah Desa', '1000 orang', '2015-11-12 05:22:21', '2015-11-12 06:23:49'),
(79, 'Lapangan Bola basket', 'SMK Satya Praja Petarukan', 'Kabupaten Pemalang', 'Baik', '', 'Milik Sekolah', '100', '2015-11-12 05:23:42', '2015-11-12 05:23:42'),
(80, 'Lapangan Sepakbola Desa tegalsari timur', 'desa tegalsari timur, Kec. ampelgaing', 'Kabupaten Pemalang', 'Baik', '', 'Pemda', '2000', '2015-11-12 05:23:53', '2015-11-12 05:23:53'),
(81, 'Lapangan Sepak Bola', 'Desa Kebongede - Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'Tanah Desa', '1000 orang', '2015-11-12 05:24:16', '2015-11-12 06:24:46'),
(82, 'Lapangan Bola Volly', 'SMK Satya Praja Petarukan', 'Kabupaten Pemalang', 'Baik', '', 'Milik Sekolah', '50', '2015-11-12 05:24:50', '2015-11-12 05:24:50'),
(83, 'Lapangan Sepak Bola', 'Desa Sarwodadi - Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'Tanah Desa', '1000 orang', '2015-11-12 05:24:51', '2015-11-12 06:25:40'),
(84, 'Lapangan Sepak Bola', 'Desa Sambeng - Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'Tanah Desa', '1000 orang', '2015-11-12 05:26:01', '2015-11-12 06:26:29'),
(85, 'Lapangan sepak bolam Desa Serang', 'desa Serang, Kec. Petarukan kab. Pemalang', 'Kabupaten Pemalang', 'Baik', '', 'Pemda', '2000', '2015-11-12 05:26:17', '2015-11-12 05:26:17'),
(86, 'Lapangan aroma', 'Desa Karangtengah', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:26:27', '2015-11-12 05:26:27'),
(87, 'Lapangan sepak bola desa kecepit', 'desa kecepit, Kec. Randudongkal Kab. pemalang', 'Kabupaten Pemalang', 'Baik', '', 'Pemda', '2000', '2015-11-12 05:27:52', '2015-11-12 05:27:52'),
(88, 'Lapangan Sokawati', 'Drsa Sokawati', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:28:37', '2015-11-12 05:28:37'),
(89, 'Lapangan sepakbola', 'Desa Sokawati', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:31:22', '2015-11-12 05:31:22'),
(90, 'Lapangan Tenis Meja', 'Desa Wonokromo Kec. Comal', 'Kabupaten Pemalang', 'Rusak', '', 'Milik Desa', '50', '2015-11-12 05:31:23', '2015-11-12 05:31:23'),
(91, 'lapangan Bola Basket SMP N 5 Taman', 'Sokawangi', 'Kabupaten Pemalang', 'Baik', '', 'Pemda', '1 Lapangan', '2015-11-12 05:31:57', '2015-11-12 05:31:57'),
(92, 'Lapangan Tenis Meja', 'Desa Klegen Kec. Comal', 'Kabupaten Pemalang', 'Rusak', '', 'm', '50', '2015-11-12 05:32:30', '2015-11-12 05:32:30'),
(93, 'Lapangan Bola Volly', 'Suwuk-Kuta-Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'Perorangan', '100 orang', '2015-11-12 05:32:40', '2015-11-12 05:32:40'),
(94, 'Lapangan Sepak Bola', 'Desa Susukan Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1000', '2015-11-12 05:33:37', '2015-11-12 05:33:37'),
(95, 'Lapangan Bola Volly', 'Kalijero-Kuta-Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'Perhutani', '100 orang', '2015-11-12 05:33:40', '2015-11-12 05:33:40'),
(96, 'Lapangan Sepak Bola', 'Desa Kalirandu', 'Kabupaten Pemalang', 'Baik', '', 'Milik Desa', '500', '2015-11-12 05:33:42', '2015-11-12 05:33:42'),
(97, 'Lapangan Bulu Tangkis', 'Desa Susukan Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Pribadi', '100', '2015-11-12 05:34:49', '2015-11-12 05:34:49'),
(98, 'Lapangan Sokawati', 'Desa sokawati', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:35:02', '2015-11-12 05:35:02'),
(99, 'Lapangan Sokawati', 'Desa sokawati', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:35:14', '2015-11-12 05:35:14'),
(100, 'Lapangan Bulu Tangkis', 'Desa Kalirandu ', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Perseorangan', '50', '2015-11-12 05:36:52', '2015-11-12 05:36:52'),
(101, 'Lapangan Sepak Bola', 'Desa Sarwodadi Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '2000', '2015-11-12 05:36:53', '2015-11-12 05:36:53'),
(102, 'Lapangan Sepak Takraw', 'Desa Kauman, Kec. Comal', 'Kabupaten Pemalang', 'Baik', '', 'Pemerintah Desa Kauman', '', '2015-11-12 05:37:46', '2015-11-12 05:37:46'),
(103, 'Lapangan Bulu Tangkis', 'Desa Sarwodadi Kec. Comal', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Milik Pribadi', '150', '2015-11-12 05:37:54', '2015-11-12 05:37:54'),
(104, 'Lapangan Bola Volly', 'Desa Kalirandu', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Sekolah', '100', '2015-11-12 05:38:42', '2015-11-12 05:38:42'),
(105, 'Lapangan Tenis Meja', 'Desa Sarwodadi Kec. Comal', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Milik Pribadi', '100', '2015-11-12 05:38:56', '2015-11-12 05:38:56'),
(106, 'Lapangan Sepak Takraw', 'Desa Botekan', 'Kabupaten Pemalang', 'Baik', '', 'Masyarakat', '', '2015-11-12 05:39:01', '2015-11-12 05:39:01'),
(107, 'Lapangan Sokawati', 'Desa Sokawati', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:39:30', '2015-11-12 05:39:30'),
(108, 'Lapangan Sepak Takraw', 'Desa Pegundan', 'Kabupaten Pemalang', 'Sedang', '', 'Perorangan', '', '2015-11-12 05:39:56', '2015-11-12 05:39:56'),
(109, 'Lapangan Bulu Tangkis', 'Desa Gintung Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Pribadi', '100', '2015-11-12 05:40:24', '2015-11-12 05:40:24'),
(110, 'Lapangan Sepak Bola', 'Desa Pesucen', 'Kabupaten Pemalang', 'Baik', '', 'Milik Desa', '1000', '2015-11-12 05:40:36', '2015-11-12 05:40:36'),
(111, 'Lapangan Sokawati', 'Desa Sokawati', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:41:32', '2015-11-12 05:41:32'),
(112, 'Lapangan Sepak Bola', 'Desa Gintung Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '', '2015-11-12 05:41:35', '2015-11-12 05:41:35'),
(113, 'Lapangan Sepak Takraw', 'Desa Blendung', 'Kabupaten Pemalang', 'Rusak', 'Gedung Olahraga', 'Pemerintah Desa Blendung', '', '2015-11-12 05:41:41', '2015-11-12 06:25:46'),
(114, 'Lapangan Sepak Bola', 'Desa Gintung Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1500', '2015-11-12 05:42:35', '2015-11-12 05:42:35'),
(115, 'Lapangan Bola Volly', 'Desa Pesucen', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '50', '2015-11-12 05:42:50', '2015-11-12 05:42:50'),
(116, 'SIRKUIT WIDURI PEMALANG', 'PANTAI WIDURI', 'Kabupaten Pemalang', 'Sedang', '', 'DINAS PARIWISATA', '', '2015-11-12 05:43:01', '2015-11-12 05:43:01'),
(118, 'Lapangan Sepak Takraw', 'Desa Arjosari', 'Kabupaten Pemalang', 'Sedang', '', 'Perorangan', '', '2015-11-12 05:43:10', '2015-11-12 05:43:10'),
(119, 'Lapangan Bulu Tangkis', 'Desa Gandu Kec. Comal', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Milik Pribadi', '150', '2015-11-12 05:43:38', '2015-11-12 05:43:38'),
(120, 'Lapangan Bulu Tangkis', 'Desa Pesucen', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '50', '2015-11-12 05:44:18', '2015-11-12 05:44:18'),
(121, 'Lapangan Futsal', 'Desa Gandu Kec. Comal', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Milik Pribadi', '300', '2015-11-12 05:44:37', '2015-11-12 05:44:37'),
(122, 'Lapangan Futsal', 'Desa Gintung Kec. Comal', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Milik Pribadi', '300', '2015-11-12 05:45:32', '2015-11-12 05:45:32'),
(123, 'Lapangan Putsal', 'Desa Pesucen', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Milik Perseorangan', '25', '2015-11-12 05:46:09', '2015-11-12 05:46:09'),
(124, 'Lapangan Sepak Bola', 'Desa Temuireng', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Milik Desa', '2000', '2015-11-12 05:47:18', '2015-11-12 05:47:18'),
(125, 'Lapangan Sokawati', 'Desa Sokawati', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:47:35', '2015-11-12 05:47:35'),
(126, 'Lapangan sepakbola', 'Desa Karangtengah Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:47:36', '2015-11-12 05:56:19'),
(127, 'Lapangan Sokawati', 'Desa Sokawati', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:48:01', '2015-11-12 05:48:01'),
(128, 'Lapangan Bola Volly', 'Desa Temuireng', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '50', '2015-11-12 05:48:39', '2015-11-12 05:48:39'),
(129, 'Lapangan aroma', 'Desa Karangtengah', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:50:11', '2015-11-12 05:50:11'),
(130, 'Lapangan Bulu Tangkis', 'Desa Temuireng', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Perseorangan', '25', '2015-11-12 05:50:16', '2015-11-12 05:50:16'),
(131, 'GOR ASHSHIFFA FUTSAL', 'Desa Pegiringan - Bantarbolang', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Perorangan', '1 Line Futsal', '2015-11-12 05:51:07', '2015-11-12 05:51:07'),
(132, 'Lapangan Putsal', 'Desa Temuireng', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Milik Perseorangan', '50', '2015-11-12 05:51:25', '2015-11-12 05:51:25'),
(133, 'Lapangan aroma', 'Desa Karangtengah Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:52:21', '2015-11-12 05:52:21'),
(134, 'Lapangan Sepak Bola', 'Desa Tegalmlati', 'Kabupaten Pemalang', 'Baik', '', 'Milik Desa', '1000', '2015-11-12 05:52:37', '2015-11-12 05:52:37'),
(135, 'LAPANGAN BOLA VOLI SMA N 1 Bantarbolang', 'SMA N 1 Bantarbolang', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'PEMDA', '2 Lapangan', '2015-11-12 05:53:03', '2015-11-12 05:53:03'),
(136, 'Lapangan sepakbola', 'Fesa Kararangtengah Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:54:03', '2015-11-12 05:54:03'),
(137, 'Lapangan Bola Basket SMPN 1 Bantarbolang', 'Bantarbolang', 'Kabupaten Pemalang', 'Baik', '', 'PEMDA', '1 Lapangan', '2015-11-12 05:54:31', '2015-11-12 05:54:31'),
(138, 'Lapangan Bola Volly', 'Desa Tegalmlati', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa/Milik Sekolah', '50', '2015-11-12 05:55:05', '2015-11-12 05:55:05'),
(139, 'Lapangan sepakbola', 'Desa Tegalsari Timur', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:57:50', '2015-11-12 05:57:50'),
(140, 'Lapangan Bulu Tangkis', 'Desa Tegalmlati', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Perseorangan', '50', '2015-11-12 05:58:12', '2015-11-12 05:58:12'),
(141, 'Lapangan sepakbola', 'Desa Tegalsari Barat Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 05:59:25', '2015-11-12 05:59:25'),
(142, 'Lapangan Sepak Bola', 'Desa Loning', 'Kabupaten Pemalang', 'Baik', '', 'Milik Desa', '1000', '2015-11-12 05:59:25', '2015-11-12 05:59:25'),
(143, 'Lapangan Bulu Tangkis', 'Desa Loning', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Perseorangan', '50', '2015-11-12 06:00:26', '2015-11-12 06:00:26'),
(144, 'Lapangan sepakbola', 'Desa Wonogiri Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:00:56', '2015-11-12 06:00:56'),
(145, 'Lapangan Sepak Bola', 'Desa Nyamplungsari', 'Kabupaten Pemalang', 'Baik', '', 'Milik Desa', '1000', '2015-11-12 06:01:33', '2015-11-12 06:01:33'),
(146, 'Lapangan sepakbola', 'Desa Kemuning Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:01:42', '2015-11-12 06:01:42'),
(147, 'Lapangan sepakbola', 'Desa Kemuning Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:02:34', '2015-11-12 06:02:34'),
(148, 'Lapangan Bulu Tangkis', 'Desa Nyamplungsari', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Perseorangan', '50', '2015-11-12 06:03:01', '2015-11-12 06:03:01'),
(149, 'Lapangan sepakbola', 'Desa Karangtalok Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:03:39', '2015-11-12 06:03:39'),
(150, 'Lapangan Sepak Bola', 'Desa Klareyan', 'Kabupaten Pemalang', 'Baik', '', 'Milik Desa', '1000', '2015-11-12 06:04:21', '2015-11-12 06:04:21'),
(151, 'Lapangan sepakbola', 'Desa Blimbing Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:04:32', '2015-11-12 06:04:32'),
(152, 'Lapangan Bulu Tangkis', 'Desa Klareyan', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Milik Perseorangan', '50', '2015-11-12 06:05:15', '2015-11-12 06:05:15'),
(153, 'Lapangan sepakbola', 'Desa Ampelgading Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:05:24', '2015-11-12 06:05:24'),
(154, 'Lapangan sepakbola', 'Desa Karangtengah Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:06:23', '2015-11-12 06:06:23'),
(155, 'Lapangan sepakbola', 'Desa Cibiyuk Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:07:05', '2015-11-12 06:07:05'),
(156, 'Lapangan Bola Volly', 'Desa Klareyan', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa/Milik Sekolah', '100', '2015-11-12 06:07:15', '2015-11-12 06:07:15'),
(157, 'Lapangan Bola basket', 'Desa Klareyan', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Sekolah', '50', '2015-11-12 06:08:17', '2015-11-12 06:08:17'),
(158, 'Lapanga BSC', 'Desa Banglarangan Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:08:17', '2015-11-12 06:08:17'),
(159, 'Lapangan sepakbola', 'Desa Ujunggede - Losari Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:09:23', '2015-11-12 06:09:23'),
(160, 'Lapangan Sepak Bola', 'Desa Pegundan', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1000', '2015-11-12 06:09:36', '2015-11-12 06:09:36'),
(161, 'Lapangan Bola Basket', 'SMPN 4 Bantarbolang', 'Kabupaten Pemalang', 'Sedang', '', 'PEMDA', '1 Line Basket', '2015-11-12 06:09:49', '2015-11-12 06:09:49'),
(162, 'Lapangan Jati', 'Desa Jatirejo Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:10:16', '2015-11-12 06:10:16'),
(163, 'Lapangan Bulu Tangkis', 'Desa Pegundan', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Milik Perseorangan', '50', '2015-11-12 06:10:35', '2015-11-12 06:10:35'),
(164, 'Lapangan sepakbola', 'Desa Kebagusan Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:10:57', '2015-11-12 06:10:57'),
(165, 'Lapangan sepakbola', 'Desa Kebagusan Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:11:16', '2015-11-12 06:11:16'),
(166, 'Lapangan sepakbola', 'Drsa Sidokare Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:11:57', '2015-11-12 06:11:57'),
(167, 'Lapangan Putsal', 'Desa Pegundan', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Milik Perseorangan', '50', '2015-11-12 06:12:52', '2015-11-12 06:12:52'),
(168, 'Lapangan Sepak Bola', 'Desa Bulu', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1000', '2015-11-12 06:13:41', '2015-11-12 06:13:41'),
(169, 'Lapangan Bulu Tangkis', 'Desa Bulu', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Perseorangan', '25', '2015-11-12 06:14:51', '2015-11-12 06:14:51'),
(170, 'GOR KEDUNG - KENCANA', 'Desa Blimbing Ampelgading', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Perorangan', '2 Lapangan', '2015-11-12 06:15:26', '2015-11-12 06:15:26'),
(171, 'Lapangan Sepak Bola', 'Desa Kendaldoyong', 'Kabupaten Pemalang', 'Baik', '', 'Milik Desa', '2000', '2015-11-12 06:15:52', '2015-11-12 06:15:52'),
(172, 'GOR BHINEKA (BATMINTON)', 'Desa Ujunggede Ampelgading', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Perorangan', '2 Lapangan', '2015-11-12 06:17:13', '2015-11-12 06:17:13'),
(173, 'Lapangan Bulu Tangkis', 'Desa Kendaldoyong', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Milik Perseorangan', '50', '2015-11-12 06:17:39', '2015-11-12 06:17:39'),
(174, 'Lapangan Sepak Bola', 'Desa Kendalrejo', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1000', '2015-11-12 06:19:09', '2015-11-12 06:19:09'),
(175, 'Lapangan Sepak Bola', 'Desa Panjunan', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1000', '2015-11-12 06:20:03', '2015-11-12 06:20:03'),
(176, 'Lapangan Sepak Bola', 'Desa Panjunan', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1000', '2015-11-12 06:20:12', '2015-11-12 06:20:12'),
(177, 'Lapangan Amuba', 'JOJOGAN - KEBAGUSAN AMPELGADING', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '1000 Orang', '2015-11-12 06:20:12', '2015-11-12 06:20:12'),
(178, 'Lapangan Sepak Bola', 'Kelurahan Petarukan', 'Kabupaten Pemalang', 'Baik', '', 'Milik Desa', '2000', '2015-11-12 06:21:07', '2015-11-12 06:21:07'),
(179, 'Lapangan Bulu Tangkis', 'Kelurahan Petarukan', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Milik Perseorangan', '100', '2015-11-12 06:22:12', '2015-11-12 06:22:12'),
(180, 'Lapangan Bola Volly', 'Kelurahan Petarukan', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Perseorangan', '50', '2015-11-12 06:23:11', '2015-11-12 06:23:11'),
(181, 'Lapangan Putsal', 'Kelurahan Petarukan', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Milik Perseorangan', '50', '2015-11-12 06:23:57', '2015-11-12 06:23:57'),
(182, 'Lapangan Bola basket', 'Kelurahan Petarukan', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Sekolah', '50', '2015-11-12 06:24:43', '2015-11-12 06:24:43'),
(183, 'Lapangan Bola Voli SMP N 1 AMPELGADING', 'SMP N 1 AMPELGADING', 'Kabupaten Pemalang', 'Baik', '', 'Pemerintah  Kab. Pemalang', '2 Lapangan', '2015-11-12 06:24:44', '2015-11-12 06:24:44'),
(184, 'NPC', 'Jl. Dr. Cipto Mangunkusumo No. 4 Pemalang', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Milik Dinas Sosial Provinsi Jawa tengah', '50 orang', '2015-11-12 06:25:46', '2015-11-12 06:32:03'),
(186, 'Lapangan Basket SMP N 2 AMPELGADING', 'SMP N 2 AMPELGADIBG', 'Kabupaten Pemalang', 'Baik', '', 'Pemerintah Daerah Kab. Pemalang', '1 Lapangan', '2015-11-12 06:28:47', '2015-11-12 06:28:47'),
(187, 'KUD', 'DESA ISER PETARUKAN', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'DESA', '100', '2015-11-12 06:40:04', '2015-11-12 06:40:04'),
(188, 'HALAMAN SEKOLAH SD NEGERI 06 KEBONDALEM', 'SD NEGERI 06 KEBONDALEM KECAMATAN PEMALANG', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'PEMERINTAH DAERAH', '100', '2015-11-12 06:44:09', '2015-11-12 06:44:09'),
(189, 'Lapangan Sepak Bola', 'Desa Gedeg Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1500', '2015-11-12 06:47:36', '2015-11-12 06:47:36'),
(190, 'Lapangan Bulu Tangkis', 'Desa Ambo Kulon Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Pribadi', '100', '2015-11-12 06:49:12', '2015-11-12 06:49:12'),
(191, 'Lapangan Bulu Tangkis', 'Desa Ambo Kulon Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Pribadi', '100', '2015-11-12 06:49:23', '2015-11-12 06:49:23'),
(192, 'Lapangan Sepak Bola', 'Desa Kauman Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1000', '2015-11-12 06:50:15', '2015-11-12 06:50:15'),
(193, 'Lapangan Bulu Tangkis', 'Desa Kauman Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Pribadi', '100', '2015-11-12 06:51:03', '2015-11-12 06:51:03'),
(194, 'Lapangan Sepak Takraw', 'Desa Kauman Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '100', '2015-11-12 06:51:54', '2015-11-12 06:51:54'),
(195, 'Lapangan Sepak Bola', 'Desa Lowa Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '1000', '2015-11-12 06:52:58', '2015-11-12 06:52:58'),
(196, 'Lapangan Futsal', 'Desa Lowa Kec. Comal', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Milik Pribadi', '300', '2015-11-12 06:53:41', '2015-11-12 06:53:41'),
(197, 'Lapangan Futsal', 'Desa Kauman Kec. Comal', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Milik Pribadi', '300', '2015-11-12 06:55:04', '2015-11-12 06:55:04'),
(198, 'Lapangan Sepak Bola', 'Desa Purwoharjo Kec. Comal', 'Kabupaten Pemalang', 'Sedang', '', 'Milik Desa', '2000', '2015-11-12 06:56:25', '2015-11-12 06:56:25'),
(199, 'Lapangan Bulu Tangkis', 'Desa Purwoharjo Kec. Comal', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Milik Pribadi', '300', '2015-11-12 06:57:36', '2015-11-12 06:57:36'),
(200, 'Lapangan Bulu Tangkis', 'Desa Purwoharjo Kec. Comal', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'Milik Pribadi', '300', '2015-11-12 06:58:44', '2015-11-12 06:58:44'),
(201, 'KUD ', 'Desa Iser Petarukan', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', '', '', '2015-11-12 07:08:00', '2015-11-12 07:08:00'),
(202, 'KUD ', 'Desa Iser Petarukan', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'DESA', '100', '2015-11-12 07:11:14', '2015-11-12 07:11:14'),
(203, 'Lapangan Sepak Bola', 'Desa Pasir Kec. Bodeh', 'Kabupaten Pemalang', 'Rusak', '', 'Tanah Desa', '1000 orang', '2015-11-12 07:14:59', '2015-11-12 07:14:59'),
(204, 'Lapangan Sepak Bola', 'Desa Gunungbatu Kec. Bodeh', 'Kabupaten Pemalang', 'Rusak', '', 'Tanah Desa', '1000 orang', '2015-11-12 07:16:37', '2015-11-12 07:16:37'),
(205, 'Lapangan Sepak Bola', 'Desa Jatingarang Kec. Bodeh', 'Kabupaten Pemalang', 'Rusak', '', 'Tanah Desa', '1000 orang', '2015-11-12 07:17:36', '2015-11-12 07:17:36'),
(206, 'Lapangan Bola Voli', 'Desa Pendowo Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '300 orang', '2015-11-12 07:21:59', '2015-11-12 07:21:59'),
(207, 'Lapangan Bola Voli', 'Desa Karangbrai Kec. Bodeh', 'Kabupaten Pemalang', 'Rusak', '', 'Tanah Desa', '300 orang', '2015-11-12 07:23:27', '2015-11-12 07:23:27'),
(208, 'Lapangan Bola Voli', 'Desa Cangak Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '400 orang', '2015-11-12 07:25:08', '2015-11-12 07:25:08'),
(209, 'Lapangan Bola Voli', 'Desa Babakan Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '400 orang', '2015-11-12 07:26:21', '2015-11-12 07:26:21'),
(210, 'Lapangan Bola Voli', 'Desa Kesesirejo Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '500 orang', '2015-11-12 07:27:29', '2015-11-12 07:27:29'),
(211, 'Lapangan Bola Voli', 'Desa Jatingarang Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '400 orang', '2015-11-12 07:28:53', '2015-11-12 07:28:53'),
(212, 'Lapangan Bola Voli', 'Desa Gunungbatu Kec. Bodeh', 'Kabupaten Pemalang', 'Rusak', '', 'Tanah Desa', '400 orang', '2015-11-12 07:29:54', '2015-11-12 07:29:54'),
(213, 'Lapangan Bulu Tangkis', 'desa Pendowo Kec. Bodeh', 'Kabupaten Pemalang', 'Rusak', '', 'Tanah Desa', '300 orang', '2015-11-12 07:31:58', '2015-11-12 07:31:58'),
(214, 'Lapangan Bulu Tangkis', 'Desa Muncang Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '300 orang', '2015-11-12 07:33:31', '2015-11-12 07:33:31'),
(215, 'Lapangan Bulu Tangkis', 'Desa Bodeh Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '300 orang', '2015-11-12 07:34:57', '2015-11-12 07:34:57'),
(216, 'Kolam Renang Zatobay', 'Taman-Pemalang', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Pribadi', '150', '2015-11-12 07:35:47', '2015-11-12 07:35:47'),
(217, 'Lapangan Bulu Tangkis', 'Desa Karangbrai Kec. Bodeh', 'Kabupaten Pemalang', 'Rusak', '', 'Tanah Desa', '300 orang', '2015-11-12 07:36:11', '2015-11-12 07:36:11'),
(218, 'Kolam Renang Widuri', 'Widuri Pemalang', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'PEMDA', '', '2015-11-12 07:37:21', '2015-11-12 07:37:21'),
(219, 'Lapangan Bulu Tangkis', 'Desa Payung Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '300 orang', '2015-11-12 07:37:31', '2015-11-12 07:37:31'),
(220, 'Lapangan Bulu Tangkis', 'Desa Cangak Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '300 orang', '2015-11-12 07:38:25', '2015-11-12 07:38:25'),
(221, 'Lapangan Bulu Tangkis', 'Desa Kebandungan Kec. bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '300 orang', '2015-11-12 07:39:18', '2015-11-12 07:39:18'),
(222, 'Lapangan Bulu Tangkis', 'Desa Kesesirejo Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '300 orang', '2015-11-12 07:40:09', '2015-11-12 07:40:09'),
(223, 'Lapangan Bulu Tangkis', 'Desa Jatiroyom Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Tanah Desa', '300 orang', '2015-11-12 07:41:26', '2015-11-12 07:41:26'),
(224, 'gor persinas asad', 'jl.kolonel sugiono taman pemalang ', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'perguruan  persinas asad', '500', '2015-11-12 07:48:33', '2015-11-12 07:48:33'),
(225, 'Lapangan Bola Basket', 'Desa Kebandaran Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'SMP N 1 Bodeh', '1 Lapangan', '2015-11-12 07:49:15', '2015-11-12 07:49:15'),
(226, 'Lapangan Bola Basket', 'SMP N 3 Bodeh, Desa Kelangdepok', 'Kabupaten Pemalang', 'Baik', '', 'SMP N 3 Bodeh', '1 Lapangan', '2015-11-12 07:51:35', '2015-11-12 07:51:35'),
(227, 'Lapangan Sepak Takraw', 'Desa Jatiroyong, Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Masyarakat', '', '2015-11-12 08:13:22', '2015-11-12 08:13:22'),
(228, 'Lapangan Sepak Takraw', 'SD 2 Kesesi Rejo, Kec. Bodeh', 'Kabupaten Pemalang', 'Baik', '', 'Pemerintah Kab. Pemalang', '', '2015-11-12 08:14:25', '2015-11-12 08:14:25'),
(229, 'Lapangan Sepak Takraw', 'SD Purwoharjo 1&5, Kec. Comal ', 'Kabupaten Pemalang', 'Baik', '', 'Pemerintah Kab. Pemalang', '', '2015-11-12 08:15:19', '2015-11-12 08:15:19'),
(230, 'Lapangan Sepak Takraw', 'SMA N 1 Comal', 'Kabupaten Pemalang', 'Baik', 'Gedung Olahraga', 'Pemerintah Kab. Pemalang', '', '2015-11-12 08:17:22', '2015-11-12 08:17:22'),
(231, 'Lapangan Sepak Takraw', 'SMP N 2 Comal', 'Kabupaten Pemalang', 'Baik', '', 'Pemerintah Kab. Pemalang', '', '2015-11-12 08:17:50', '2015-11-12 08:17:50'),
(232, 'Lapangan Sepak Takraw', 'SMK N 1 Ampelgading', 'Kabupaten Pemalang', 'Baik', '', 'Pemerintah Kab. Pemalang', '', '2015-11-12 08:18:27', '2015-11-12 08:18:27'),
(233, 'Lapangan Sepak Takraw', 'SMK Al Mu\'awanah Petarukan', 'Kabupaten Pemalang', 'Sedang', '', 'Pemerintah Kab. Pemalang', '', '2015-11-12 08:19:21', '2015-11-12 08:19:21'),
(234, 'Lapangan Sepak Takraw', 'SMP N 2 ULUJAMI', 'Kabupaten Pemalang', 'Sedang', '', 'Pemerintah Kab. Pemalang', '', '2015-11-12 08:20:09', '2015-11-12 08:20:09'),
(235, 'Lapangan Sepak Takraw', 'SMP 3 MOGA', 'Kabupaten Pemalang', 'Sedang', '', 'Pemerintah Kab. Pemalang', '', '2015-11-12 08:20:59', '2015-11-12 08:20:59'),
(236, 'Lapangan Sepak Takraw', 'SMK NUSANTARA 1 COMAL', 'Kabupaten Pemalang', 'Baik', '', 'Pemerintah Kab. Pemalang', '', '2015-11-12 08:21:47', '2015-11-12 08:21:47'),
(237, 'KRIDANGGO', 'PEMALANG', 'Kabupaten Pemalang', 'Sedang', 'Gedung Olahraga', 'PEMERINTAH DAERAH PEMALANG', '1000 ORANG', '2015-11-12 08:39:17', '2015-11-12 08:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `sarpras_public`
--

CREATE TABLE `sarpras_public` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kondisi` enum('Baik','Sedang','Rusak') COLLATE utf8_unicode_ci NOT NULL,
  `kategori` enum('Gedung Olahraga','Lapangan Olahraga') COLLATE utf8_unicode_ci NOT NULL,
  `status_pemilik` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kapasitas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serti_pelatih`
--

CREATE TABLE `serti_pelatih` (
  `id_serti_pelatih` int(10) UNSIGNED NOT NULL,
  `id_pelatih` int(11) NOT NULL,
  `nama_serti_pelatih` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `serti_pelatih`
--

INSERT INTO `serti_pelatih` (`id_serti_pelatih`, `id_pelatih`, `nama_serti_pelatih`, `tahun`) VALUES
(5, 12, 'Training Camp Tingkat Muda Sepak Takraw Tingkat Jawa Tengah', '2015'),
(6, 6, 'Training Camp Tingkat Dasar Sepak Takraw Tingkat Jawa Tengah', '2009');

-- --------------------------------------------------------

--
-- Table structure for table `serti_wasit`
--

CREATE TABLE `serti_wasit` (
  `id_serti_wasit` int(10) UNSIGNED NOT NULL,
  `id_wasit` int(11) NOT NULL,
  `nama_serti_wasit` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `serti_wasit`
--

INSERT INTO `serti_wasit` (`id_serti_wasit`, `id_wasit`, `nama_serti_wasit`, `tahun`) VALUES
(2, 48, 'Pelatihan Wasit Sepak Takraw tingkat S 1', '2014'),
(3, 47, 'Pelatihan Wasit Sepak Takraw tingkat S 1', '2014');

-- --------------------------------------------------------

--
-- Table structure for table `usaha`
--

CREATE TABLE `usaha` (
  `id` int(10) UNSIGNED NOT NULL,
  `ku_id` int(10) NOT NULL,
  `nama_usaha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `ketua` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `npwp` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('Aktif','Non-Aktif') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$10$Yzp9bB.Nc3BBUxU2w79N4Onn01RZJdWoc4hoIOhuUUB/Wkbz2C8Va', 'oBLVzSmcmjppVmsYcGy52CpwRE9OepBlmINVnROIoACSuiKJIpthb0P5kIXC', '0000-00-00 00:00:00', '2016-04-11 14:56:17'),
(2, 'user1', 'user1', '$2y$10$v7qs/IJt0MaoplwaiZhl1eHBSMnmRGzgeeFOXKBi/F3uAjndnY6D.', 'BHlECAKz3e1zhQOQLLB4nAgoGzMuAMrUPUvMIkIJjE4efeR23fumY5kuwXbC', '0000-00-00 00:00:00', '2015-11-20 14:13:58'),
(3, 'user2', 'user2', '$2y$10$F8fBM1yhB1ric7sc6sAabOyt1oOd.WgZUCFSXpn/0ZcClk6gBqA/.', 'JBB0rKZduLkO75DSYHCvXROk3P5hIQAE0hGU9LowllvpNmGrsdppk2rHUUXf', '0000-00-00 00:00:00', '2015-11-12 08:37:56'),
(4, 'user3', 'user3', '$2y$10$s7huSgblIo8e.UDxiYiS4.eUm1moMTMhSkkZnAVZdHVXegmBuD2I2', 'Eb2sPzdfVFcNGAQAaP9hX7k7y9lvfQEg5g8WjPoP48vzcweH3rU8CyvJFs5j', '0000-00-00 00:00:00', '2015-11-12 06:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `wasits`
--

CREATE TABLE `wasits` (
  `id` int(10) UNSIGNED NOT NULL,
  `cabang` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `jenis` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `kota_kab` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tmp_lahir` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text COLLATE utf8_unicode_ci NOT NULL,
  `jenis_kel` enum('Laki-Laki','Perempuan') COLLATE utf8_unicode_ci NOT NULL,
  `no_telp` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wasits`
--

INSERT INTO `wasits` (`id`, `cabang`, `jenis`, `kota_kab`, `nama`, `tmp_lahir`, `tgl_lahir`, `alamat`, `jenis_kel`, `no_telp`, `foto`, `created_at`, `updated_at`) VALUES
(3, '052', '06', 'Kabupaten Pemalang', 'SOBARI AR', 'PEMALANG', '0000-00-00', 'PEMALANG', 'Laki-Laki', '', NULL, '2015-11-12 04:36:56', '2015-11-12 06:47:50'),
(4, '052', '05', 'Kabupaten Pemalang', 'BAMBANG SUPENO', 'PEMALANG', '0000-00-00', 'PEMALANG', 'Laki-Laki', '', NULL, '2015-11-12 04:39:42', '2015-11-12 06:49:37'),
(5, '006', '04', 'Kabupaten Pemalang', 'Rini Subekti', 'Pemalang', '1971-05-25', '', 'Laki-Laki', '', NULL, '2015-11-12 04:56:20', '2015-11-12 04:56:20'),
(6, '040', '04', 'Kabupaten Pemalang', 'WAWAN SETIAWAN', 'PEMALANG', '1982-10-04', 'Desa Purwoharjo RT 3 RW 8, Kec. Comal', 'Laki-Laki', '087711792292', NULL, '2015-11-12 05:26:38', '2015-11-12 05:26:38'),
(7, '014', '01', 'Kabupaten Pemalang', 'DARORI ISMANTO WD', 'PEMALANG', '1952-02-08', 'PEMALANG', 'Laki-Laki', '087710157575', NULL, '2015-11-12 05:38:08', '2015-11-12 05:38:08'),
(8, '014', '01', 'Kabupaten Pemalang', 'RUSWANDI WD', 'PEMALANG', '1957-07-09', 'PEMALANG', 'Laki-Laki', '085951248782', NULL, '2015-11-12 05:39:51', '2015-11-12 05:39:51'),
(9, '014', '01', 'Kabupaten Pemalang', 'MUHASIM, S. Ag WD', 'PEMALANG', '1958-04-01', 'PEMALANG', 'Laki-Laki', '087711568857', NULL, '2015-11-12 05:41:19', '2015-11-12 05:41:19'),
(10, '014', '06', 'Kabupaten Pemalang', 'PRIYO UTOMO', 'PEMALANG', '1969-04-12', 'PEMALANG', 'Laki-Laki', '081911616161', NULL, '2015-11-12 05:42:59', '2015-11-12 05:42:59'),
(11, '013', '04', 'Kabupaten Pemalang', 'Eka Ayu Dessetiani, S.Pd', 'Pemalang', '1992-12-24', 'Desa Kaligelang, Pemalang', 'Perempuan', '089678158980', NULL, '2015-11-12 05:44:56', '2015-11-12 05:44:56'),
(12, '013', '04', 'Kabupaten Pemalang', 'Arif Adiyanto, ST', 'Pemalang', '1965-09-20', 'Wanarejan Utara Pemalang', 'Laki-Laki', '081391972792', NULL, '2015-11-12 05:45:59', '2015-11-12 05:45:59'),
(13, '013', '04', 'Kabupaten Pemalang', 'Gandya Priya Santosa, S.Pd', 'Pemalang', '1988-06-01', 'Desa Kaligelang, Pemalang', 'Laki-Laki', '085641648783', NULL, '2015-11-12 05:47:34', '2015-11-12 05:47:34'),
(14, '011', '04', 'Kabupaten Pemalang', 'SUMARHENO, S.Pd', 'PEMALANG', '1964-10-10', '', 'Laki-Laki', '', NULL, '2015-11-12 06:19:25', '2015-11-12 06:19:25'),
(15, '011', '04', 'Kabupaten Pemalang', 'KARYANI, S.Pd', 'PEMALANG', '1978-04-08', '', 'Laki-Laki', '', NULL, '2015-11-12 06:20:30', '2015-11-12 06:20:30'),
(16, '011', '04', 'Kabupaten Pemalang', 'KASNO SUJARWADI, S.Pd', 'PEMALANG', '1976-09-07', '', 'Laki-Laki', '', NULL, '2015-11-12 06:22:05', '2015-11-12 06:22:05'),
(17, '011', '04', 'Kabupaten Pemalang', 'WIDODO, S.Pd', 'PEMALANG', '1976-09-10', '', 'Laki-Laki', '', NULL, '2015-11-12 06:23:42', '2015-11-12 06:23:42'),
(18, '013', '04', '', 'Budi Mulyanto, S.Pd', 'Pemalang', '1987-09-04', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:23:57', '2015-11-12 06:23:57'),
(19, '011', '04', 'Kabupaten Pemalang', 'KUSRINTO, S.Pd', 'PEMALANG', '1988-07-18', '', 'Laki-Laki', '', NULL, '2015-11-12 06:24:36', '2015-11-12 06:24:36'),
(20, '013', '04', 'Kabupaten Pemalang', 'Drs. Heri Ciptadi', 'Pemalang', '1987-02-23', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:25:03', '2015-11-12 06:25:03'),
(21, '011', '04', 'Kabupaten Pemalang', 'SUPARDI, S.Pd', 'PEMALANG', '1988-09-19', '', 'Laki-Laki', '', NULL, '2015-11-12 06:25:56', '2015-11-12 06:25:56'),
(22, '013', '04', 'Kabupaten Pemalang', 'Galih Wibowo, S.Pd', 'Pemalang', '1988-03-15', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:26:12', '2015-11-12 06:26:12'),
(23, '013', '04', 'Kabupaten Pemalang', 'Galuh Daluaji Riyanto, S.Pd', 'Pemalang', '1986-12-23', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:27:23', '2015-11-12 06:27:23'),
(24, '011', '04', 'Kabupaten Pemalang', 'ABDUL MA\'RUF, S.Pd', 'PEMALANG', '1988-05-20', '', 'Laki-Laki', '', NULL, '2015-11-12 06:28:20', '2015-11-12 06:28:20'),
(25, '013', '04', 'Kabupaten Pemalang', 'Krisna Pradhana Kusuma, S.Pd', 'Pemalang', '1989-11-25', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:28:49', '2015-11-12 06:28:49'),
(26, '011', '04', 'Kabupaten Pemalang', 'YULI SANTOSO', 'PEMALANG', '1980-11-20', '', 'Laki-Laki', '', NULL, '2015-11-12 06:29:40', '2015-11-12 06:29:40'),
(27, '013', '04', 'Kabupaten Pemalang', 'Muhamad Zaenal, S.Pd', 'Pemalang', '1985-03-03', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:30:47', '2015-11-12 06:30:47'),
(28, '011', '04', 'Kabupaten Pemalang', 'SUKIR, S.pd', 'PEMALANG', '1963-03-07', '', 'Laki-Laki', '', NULL, '2015-11-12 06:31:30', '2015-11-12 06:32:33'),
(29, '013', '04', 'Kabupaten Pemalang', 'Nur Ardiyanto, S.Pd', 'Pemalang', '1988-05-30', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:32:34', '2015-11-12 06:32:34'),
(30, '011', '04', 'Kabupaten Pemalang', 'TRI BOWO, S.Pd', 'PEMALANG', '1976-06-20', '', 'Laki-Laki', '', NULL, '2015-11-12 06:33:57', '2015-11-12 06:33:57'),
(31, '013', '04', 'Kabupaten Pemalang', 'Nur Jadi', 'Pemalang', '1970-07-12', 'Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:34:27', '2015-11-12 06:34:27'),
(32, '011', '04', 'Kabupaten Pemalang', 'MUCHTAR ROSIDIN, S.Pd', 'PEMALANG', '1977-10-23', '', 'Laki-Laki', '', NULL, '2015-11-12 06:34:50', '2015-11-12 06:34:50'),
(33, '011', '04', 'Kabupaten Pemalang', 'YOGA YUSUF RIFAI', 'PEMALANG', '1975-10-20', '', 'Laki-Laki', '', NULL, '2015-11-12 06:36:20', '2015-11-12 06:36:20'),
(34, '037', '04', 'Kabupaten Pemalang', 'Idah tresnowati S.Si, M.Pd', 'Pemalang', '1988-05-04', 'Pamutih', 'Perempuan', '087710290114', NULL, '2015-11-12 06:36:28', '2015-11-12 06:43:19'),
(35, '037', '04', 'Kabupaten Pemalang', 'Dwi purnomo S.Pd', 'Pemalang', '1992-10-10', 'Pamutih, Ulujami', 'Laki-Laki', '087830825243', NULL, '2015-11-12 06:37:55', '2015-11-12 06:42:40'),
(36, '011', '04', 'Kabupaten Pemalang', 'DIDIT', 'PEMALANG', '1974-03-10', '', 'Laki-Laki', '', NULL, '2015-11-12 06:38:08', '2015-11-12 06:38:08'),
(37, '037', '04', 'Kabupaten Pemalang', 'Udiana S.Si, S.Pd', 'Pemalang', '1989-10-13', 'Pagergunung, Ulujami', 'Laki-Laki', '082242325980', NULL, '2015-11-12 06:39:10', '2015-11-12 06:44:12'),
(38, '037', '04', 'Kabupaten Pemalang', 'Hemia jaya artanti gunawan S.Pd', 'Purwokerto', '1992-10-13', 'Pamutih, Ulujami', 'Perempuan', '087732141818', NULL, '2015-11-12 06:41:52', '2015-11-12 06:44:57'),
(39, '040', '04', 'Kabupaten Pemalang', 'MURJOKO', 'PEMALANG', '1968-07-14', 'Desa Kauman, Kec. Comal', 'Laki-Laki', '', NULL, '2015-11-12 06:44:18', '2015-11-12 06:44:18'),
(40, '010', '04', '', 'Hidayat Nurseta', 'Pemalang', '1991-11-22', 'Jalan Samosir Raya No.206 Perumnas Bojongbata Pemalang', 'Laki-Laki', '085642844477', NULL, '2015-11-12 06:45:26', '2015-11-12 06:45:26'),
(41, '040', '04', 'Kabupaten Pemalang', 'SUTOMO, S.Pd', 'PEMALANG', '1967-02-24', 'Desa Pendowo , Kec. Bodeh', 'Laki-Laki', '', NULL, '2015-11-12 06:45:41', '2015-11-12 06:45:41'),
(42, '010', '04', 'Kabupaten Pemalang', 'Selamet Riyadi', 'Pemalang', '1990-04-25', 'Jalan Samosir Raya No 206 Perumnas Bojongbata Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 06:46:49', '2015-11-12 06:46:49'),
(43, '040', '04', 'Kabupaten Pemalang', 'SUKIRNO', 'PEMALANG', '1966-11-01', 'Desa Ujunggede Rt 6 RW 6, Kec. Ampelgading', 'Laki-Laki', '', NULL, '2015-11-12 06:47:39', '2015-11-12 06:47:39'),
(44, '010', '04', 'Kabupaten Pemalang', 'Dian Wiraditya', 'Pemalang', '1987-07-24', 'Mulyoharjo', 'Laki-Laki', '', NULL, '2015-11-12 06:48:27', '2015-11-12 06:48:27'),
(45, '040', '04', 'Kabupaten Pemalang', 'FATKHUROJI', 'PEMALANG', '1966-08-09', 'Desa Kauman, Kec. Comal', 'Laki-Laki', '', NULL, '2015-11-12 06:49:25', '2015-11-12 06:49:25'),
(46, '010', '04', 'Kabupaten Pemalang', 'Muhamad Danu Prabowo', 'Pemalang', '1993-11-02', 'Comal', 'Laki-Laki', '', NULL, '2015-11-12 06:49:56', '2015-11-12 06:49:56'),
(47, '040', '04', 'Kabupaten Pemalang', 'KISTANTO , S.Pd', 'PEMALANG', '1964-10-01', 'Desa Ujunggede, Kec. Ampelgading', 'Laki-Laki', '', NULL, '2015-11-12 06:53:19', '2015-11-12 06:53:19'),
(48, '040', '05', 'Kabupaten Pemalang', 'YANUAR REZA W, S.Pd', 'PEMALANG', '1990-01-07', 'Desa Loning, Kec. Petarukan', 'Laki-Laki', '087830752355', NULL, '2015-11-12 06:54:32', '2015-11-12 06:54:32'),
(50, '040', '04', 'Kabupaten Pemalang', 'CAYOKO', 'PEMALANG', '2015-11-12', 'Desa Cibiyuk, Kec. Ampelgading', 'Laki-Laki', '', NULL, '2015-11-12 07:12:22', '2015-11-12 07:12:22'),
(51, '025', '07', 'Kabupaten Pemalang', 'UNTUNG RACHADI, S.Pd.', 'Pemalang', '1973-07-01', 'Saphire Residence Beji Pemalang', 'Laki-Laki', '081575329060', NULL, '2015-11-12 08:25:08', '2015-11-12 08:25:08'),
(52, '025', '07', 'Kabupaten Pemalang', 'BUDI HARSONO', 'Pemalang', '1970-07-12', 'Pelutan Pemalang', 'Laki-Laki', '085290746015', NULL, '2015-11-12 08:26:24', '2015-11-12 08:26:24'),
(53, '025', '07', 'Kabupaten Pemalang', 'WARMO', 'Pemalang', '1973-12-30', 'Pelutan Pemalang', 'Laki-Laki', '08179589832', '53.jpg', '2015-11-12 08:28:27', '2015-11-12 08:28:28'),
(54, '025', '07', 'Kabupaten Pemalang', 'FATCHURRODJI', 'Pemalang', '1970-12-03', 'Moga Pemalang', 'Laki-Laki', '087830806234', NULL, '2015-11-12 08:29:40', '2015-11-12 08:29:40'),
(55, '025', '07', 'Kabupaten Pemalang', 'PRIYO UTOMO', 'Pemalang', '1986-04-04', 'Bandelan RT.01/08 Taman Pemalang', 'Laki-Laki', '085741132586', '55.jpg', '2015-11-12 08:31:07', '2015-11-12 08:31:07'),
(56, '025', '07', 'Kabupaten Pemalang', 'AHMAD SOLEH', 'Pemalang', '1987-03-17', 'Wanarejan Pemalang', 'Laki-Laki', '085640255863', NULL, '2015-11-12 08:32:28', '2015-11-12 08:32:28'),
(57, '025', '07', 'Kabupaten Pemalang', 'RUSDIMAN ARIF, SH.', 'Pemalang', '1969-09-02', 'Comal Pemalang', 'Laki-Laki', '', NULL, '2015-11-12 08:33:25', '2015-11-12 08:33:25'),
(58, '025', '07', 'Kabupaten Pemalang', 'THOMASANUDIN', 'Pemalang', '1991-10-10', 'Petarukan', 'Laki-Laki', '', NULL, '2015-11-12 08:34:21', '2015-11-12 08:34:21');

-- --------------------------------------------------------

--
-- Table structure for table `wilayah_kabupaten`
--

CREATE TABLE `wilayah_kabupaten` (
  `id` varchar(4) NOT NULL,
  `provinsi_id` varchar(2) NOT NULL DEFAULT '',
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wilayah_kabupaten`
--

INSERT INTO `wilayah_kabupaten` (`id`, `provinsi_id`, `nama`) VALUES
('3301', '33', 'Kab. Cilacap'),
('3302', '33', 'Kab. Banyumas'),
('3303', '33', 'Kab. Purbalingga'),
('3304', '33', 'Kab. Banjarnegara'),
('3305', '33', 'Kab. Kebumen'),
('3306', '33', 'Kab. Purworejo'),
('3307', '33', 'Kab. Wonosobo'),
('3308', '33', 'Kab. Magelang'),
('3309', '33', 'Kab. Boyolali'),
('3310', '33', 'Kab. Klaten'),
('3311', '33', 'Kab. Sukoharjo'),
('3312', '33', 'Kab. Wonogiri'),
('3313', '33', 'Kab. Karanganyar'),
('3314', '33', 'Kab. Sragen'),
('3315', '33', 'Kab. Grobogan'),
('3316', '33', 'Kab. Blora'),
('3317', '33', 'Kab. Rembang'),
('3318', '33', 'Kab. Pati'),
('3319', '33', 'Kab. Kudus'),
('3320', '33', 'Kab. Jepara'),
('3321', '33', 'Kab. Demak'),
('3322', '33', 'Kab. Semarang'),
('3323', '33', 'Kab. Temanggung'),
('3324', '33', 'Kab. Kendal'),
('3325', '33', 'Kab. Batang'),
('3326', '33', 'Kab. Pekalongan'),
('3327', '33', 'Kab. Pemalang'),
('3328', '33', 'Kab. Tegal'),
('3329', '33', 'Kab. Brebes'),
('3371', '33', 'Kota Magelang'),
('3372', '33', 'Kota Surakarta'),
('3373', '33', 'Kota Salatiga'),
('3374', '33', 'Kota Semarang'),
('3375', '33', 'Kota Pekalongan'),
('3376', '33', 'Kota Tegal');

-- --------------------------------------------------------

--
-- Table structure for table `wilayah_kecamatan`
--

CREATE TABLE `wilayah_kecamatan` (
  `id` varchar(7) NOT NULL,
  `kabupaten_id` varchar(4) NOT NULL DEFAULT '',
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wilayah_kecamatan`
--

INSERT INTO `wilayah_kecamatan` (`id`, `kabupaten_id`, `nama`) VALUES
('3327010', '3327', ' Moga'),
('3327011', '3327', ' Warungpring'),
('3327020', '3327', ' Pulosari'),
('3327030', '3327', ' Belik'),
('3327040', '3327', ' Watukumpul'),
('3327050', '3327', ' Bodeh'),
('3327060', '3327', ' Bantarbolang'),
('3327070', '3327', ' Randudongkal'),
('3327080', '3327', ' Pemalang'),
('3327090', '3327', ' Taman'),
('3327100', '3327', ' Petarukan'),
('3327110', '3327', ' Ampelgading'),
('3327120', '3327', ' Comal'),
('3327130', '3327', ' Ulujami');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikels`
--
ALTER TABLE `artikels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atlits`
--
ALTER TABLE `atlits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bpap`
--
ALTER TABLE `bpap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cabangs`
--
ALTER TABLE `cabangs`
  ADD PRIMARY KEY (`id_cabang`),
  ADD UNIQUE KEY `cabangs_id_cabang_unique` (`id_cabang`);

--
-- Indexes for table `event_atlit`
--
ALTER TABLE `event_atlit`
  ADD PRIMARY KEY (`id_event_atlit`);

--
-- Indexes for table `event_pelatih`
--
ALTER TABLE `event_pelatih`
  ADD PRIMARY KEY (`id_event_pelatih`);

--
-- Indexes for table `event_pemuda`
--
ALTER TABLE `event_pemuda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_wasit`
--
ALTER TABLE `event_wasit`
  ADD PRIMARY KEY (`id_event_wasit`);

--
-- Indexes for table `jeniss`
--
ALTER TABLE `jeniss`
  ADD PRIMARY KEY (`id_jenis`),
  ADD UNIQUE KEY `jeniss_id_jenis_unique` (`id_jenis`);

--
-- Indexes for table `jpi`
--
ALTER TABLE `jpi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knpi`
--
ALTER TABLE `knpi`
  ADD PRIMARY KEY (`id_knpi`);

--
-- Indexes for table `knpi_struktur`
--
ALTER TABLE `knpi_struktur`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `kompetisi`
--
ALTER TABLE `kompetisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `konis`
--
ALTER TABLE `konis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `koni_struktur`
--
ALTER TABLE `koni_struktur`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `kpn`
--
ALTER TABLE `kpn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ku`
--
ALTER TABLE `ku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `okp`
--
ALTER TABLE `okp`
  ADD PRIMARY KEY (`id_okp`);

--
-- Indexes for table `okp_struktur`
--
ALTER TABLE `okp_struktur`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `paskib`
--
ALTER TABLE `paskib`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pelatihs`
--
ALTER TABLE `pelatihs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelopor`
--
ALTER TABLE `pelopor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta_event_pemuda`
--
ALTER TABLE `peserta_event_pemuda`
  ADD PRIMARY KEY (`id_peserta`);

--
-- Indexes for table `ppan`
--
ALTER TABLE `ppan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pramuka`
--
ALTER TABLE `pramuka`
  ADD PRIMARY KEY (`id_pramuka`);

--
-- Indexes for table `pramuka_struktur`
--
ALTER TABLE `pramuka_struktur`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `riwayat_pelatih`
--
ALTER TABLE `riwayat_pelatih`
  ADD PRIMARY KEY (`id_riwayat_pelatih`);

--
-- Indexes for table `sarjana`
--
ALTER TABLE `sarjana`
  ADD PRIMARY KEY (`id_sarjana`);

--
-- Indexes for table `sarjana_event`
--
ALTER TABLE `sarjana_event`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `sarpras_asset`
--
ALTER TABLE `sarpras_asset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sarpras_muda`
--
ALTER TABLE `sarpras_muda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sarpras_ors`
--
ALTER TABLE `sarpras_ors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sarpras_public`
--
ALTER TABLE `sarpras_public`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serti_pelatih`
--
ALTER TABLE `serti_pelatih`
  ADD PRIMARY KEY (`id_serti_pelatih`);

--
-- Indexes for table `serti_wasit`
--
ALTER TABLE `serti_wasit`
  ADD PRIMARY KEY (`id_serti_wasit`);

--
-- Indexes for table `usaha`
--
ALTER TABLE `usaha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `wasits`
--
ALTER TABLE `wasits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wilayah_kabupaten`
--
ALTER TABLE `wilayah_kabupaten`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wilayah_kecamatan`
--
ALTER TABLE `wilayah_kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikels`
--
ALTER TABLE `artikels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `atlits`
--
ALTER TABLE `atlits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=271;
--
-- AUTO_INCREMENT for table `bpap`
--
ALTER TABLE `bpap`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_atlit`
--
ALTER TABLE `event_atlit`
  MODIFY `id_event_atlit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `event_pelatih`
--
ALTER TABLE `event_pelatih`
  MODIFY `id_event_pelatih` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `event_pemuda`
--
ALTER TABLE `event_pemuda`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_wasit`
--
ALTER TABLE `event_wasit`
  MODIFY `id_event_wasit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `jpi`
--
ALTER TABLE `jpi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `knpi`
--
ALTER TABLE `knpi`
  MODIFY `id_knpi` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `knpi_struktur`
--
ALTER TABLE `knpi_struktur`
  MODIFY `id_anggota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;
--
-- AUTO_INCREMENT for table `kompetisi`
--
ALTER TABLE `kompetisi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `konis`
--
ALTER TABLE `konis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `koni_struktur`
--
ALTER TABLE `koni_struktur`
  MODIFY `id_anggota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `kpn`
--
ALTER TABLE `kpn`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ku`
--
ALTER TABLE `ku`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `okp`
--
ALTER TABLE `okp`
  MODIFY `id_okp` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `okp_struktur`
--
ALTER TABLE `okp_struktur`
  MODIFY `id_anggota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `paskib`
--
ALTER TABLE `paskib`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pelatihs`
--
ALTER TABLE `pelatihs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `pelopor`
--
ALTER TABLE `pelopor`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `peserta_event_pemuda`
--
ALTER TABLE `peserta_event_pemuda`
  MODIFY `id_peserta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ppan`
--
ALTER TABLE `ppan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pramuka`
--
ALTER TABLE `pramuka`
  MODIFY `id_pramuka` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `pramuka_struktur`
--
ALTER TABLE `pramuka_struktur`
  MODIFY `id_anggota` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;
--
-- AUTO_INCREMENT for table `riwayat_pelatih`
--
ALTER TABLE `riwayat_pelatih`
  MODIFY `id_riwayat_pelatih` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sarjana`
--
ALTER TABLE `sarjana`
  MODIFY `id_sarjana` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sarjana_event`
--
ALTER TABLE `sarjana_event`
  MODIFY `id_event` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sarpras_asset`
--
ALTER TABLE `sarpras_asset`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sarpras_muda`
--
ALTER TABLE `sarpras_muda`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sarpras_ors`
--
ALTER TABLE `sarpras_ors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;
--
-- AUTO_INCREMENT for table `sarpras_public`
--
ALTER TABLE `sarpras_public`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `serti_pelatih`
--
ALTER TABLE `serti_pelatih`
  MODIFY `id_serti_pelatih` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `serti_wasit`
--
ALTER TABLE `serti_wasit`
  MODIFY `id_serti_wasit` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usaha`
--
ALTER TABLE `usaha`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wasits`
--
ALTER TABLE `wasits`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
