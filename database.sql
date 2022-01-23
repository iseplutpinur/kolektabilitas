-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2022 at 06:21 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `elektabilitas`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0b9ldds5hfqj669pa7i70eutdfv7udbl', '::1', 1642957043, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935373034333b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('3ffp2obljlgobttis5oq5hg45ekbpvts', '::1', 1642955232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935353233323b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('40qvmeli5fcc2nsahjva9ga75j7658ot', '::1', 1642955770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935353737303b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('9413i72ksujhhpig6rdi9e8timepilhe', '::1', 1642957839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935373833393b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('bq9qfc0qtr1ji1hhcfg39qf69bvefb88', '::1', 1642956404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935363430343b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('gmtkhlcng5jhqtv5cf6aj3v0sh5obr9t', '::1', 1642956093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935363039333b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('kflrp0ulh85s6e2iivgpr0r6ctkav5fc', '::1', 1642958467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935383436373b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('koo1dc2n2868sp9l15pfbrbe5jgbfn9j', '::1', 1642958479, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935383436373b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('mk261nrmm9vddearajkr7g2q7l4p6bs4', '::1', 1642958141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935383134313b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('nbll4jgu472ierrdmv4pssaaju2ioo3r', '::1', 1642954027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935343032373b);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_asuransi`
--

CREATE TABLE `jenis_asuransi` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenis_asuransi`
--

INSERT INTO `jenis_asuransi` (`id`, `nama`, `keterangan`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Proteksi dan investasi', '', NULL, NULL, '2022-01-23 23:48:09', NULL),
(3, 'Perlindungan penyakit kritis', '', NULL, NULL, '2022-01-23 23:48:17', NULL),
(4, 'Perlindungan jiwa dan kesehatan', '', NULL, NULL, '2022-01-23 23:48:30', NULL),
(5, 'Perlindungan hari tua', '', NULL, NULL, '2022-01-23 23:48:38', NULL),
(6, 'Asuransi pendidikan', '', NULL, NULL, '2022-01-23 23:48:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `key_value`
--

CREATE TABLE `key_value` (
  `key` varchar(255) NOT NULL,
  `value1` text DEFAULT NULL,
  `value2` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `key_value`
--

INSERT INTO `key_value` (`key`, `value1`, `value2`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
('footer_contact', 'Info Kontak', '                <address>123, ABC, Road ##, Main City, Your address goes here.<br>Phone: 01234 567\r\n                  890<br>Email: https://example.com</address>', NULL, NULL, NULL, '2021-11-19 17:52:48', '2021-11-19 18:47:06', NULL),
('footer_copyright', 'Copyright © ${(new Date().getFullYear())} Toko Bunga Ucapan Bandung', NULL, NULL, NULL, NULL, '2021-11-19 17:52:48', '2021-11-19 18:46:33', NULL),
('footer_descritpion', 'Kami menyediakan berbagai macam rangkaian bunga dengan design yang modern yang tentunya bisa anda lakukan costum baik ukuran atau jenis bunga', NULL, NULL, NULL, NULL, '2021-11-19 15:22:55', '2021-11-19 18:17:33', NULL),
('footer_list_head', 'Menyediakan', NULL, NULL, NULL, NULL, '2021-11-19 17:52:48', '2021-11-19 18:52:33', NULL),
('logo', '6fbe94da589c94255915300bf665782c.png', '4707ee8ba9fff6de51d74efbe5a35ee7.png', NULL, NULL, NULL, '2021-11-19 15:15:03', '2021-11-19 15:41:06', NULL),
('offer', 'Terlengkap Dan Terjangkau', 'Toko Bunga Ucapan Bandung', NULL, NULL, NULL, '2021-11-17 21:17:10', '2021-11-17 21:55:55', NULL),
('offer2', 'Terbaik Dan Terpercaya', 'TUNGGU APA LAGI', NULL, NULL, NULL, '2021-11-17 22:03:28', '2021-11-17 22:06:50', NULL),
('offer_decritpion', '<p><span class=\"fw-bold\">Toko Bunga Ucapan Bandung</span> merupakan salah satu toko bunga\r\n              terbaik di <span class=\"fw-bold\">Kota Bandung</span> dengan produk kami berbagai macam\r\n              karangan bunga dan rangkaian bunga seperti :\r\n            </p>\r\n            <br>\r\n            <div class=\"container\">\r\n              <ul style=\"list-style-type: disc;\">\r\n                <li>PAPAN BUNGA Single 2in1 Steroform</li>\r\n                <li>HANDBUQUET</li>\r\n                <li>BUQUET ( Meja, Standing, box )</li>\r\n                <li>SALIB, KRANS DUKA</li>\r\n                <li>Bunga Semat / kantong</li>\r\n                <li>Dekorasi Bahagia, Duka</li>\r\n                <li>Parcel Buah, Cookies</li>\r\n                <li>dll.</li>\r\n              </ul>\r\n            </div>\r\n\r\n            <br>\r\n            <p>Produk yang kami sediakan menggunakan bunga yang fresh dan bermacam warna yang bisa\r\n              disesuaikan untuk moment Anda. Selain itu kami juga menggunakan bunga buatan untuk pengganti\r\n              bunga asli agar karangan bunga Anda tidak cepat layu.</p>', NULL, NULL, NULL, NULL, '2021-11-17 21:17:10', '2021-11-17 21:56:15', NULL),
('offer_decritpion2', '            <p>Toko Bunga Papan Ucapan Bandung menawarka proses pemesanan yang sangat mudah, tinggal\r\n              cari\r\n              produk yang Anda inginkan, atau rekomendasi produk sesuai dengan moment yang Anda\r\n              butuhkan\r\n              melalui katalog produk di website ini, maupun langsung hubungi team CS kami yang siap\r\n              membantu anda 24 jam untuk membantu pemesanan bunga secara online dan offline.\r\n            </p>', NULL, NULL, NULL, NULL, '2021-11-17 22:03:28', '2021-11-17 22:07:17', NULL),
('product', 'Bunga Terbaik Dari Kami', 'BUNGA APA YANG ANDA CARI HARI INI ?', NULL, NULL, NULL, '2021-11-18 09:59:33', '2021-11-18 09:59:52', NULL),
('product2', 'Kamu Mungkin Juga Suka', 'PRODUK LAIN KAMI', NULL, NULL, NULL, '2021-11-19 07:14:04', '2021-11-19 07:16:22', NULL),
('testimoni', 'Kepuasan Pelanggan adalah yang utama', 'TESTIMONI', NULL, NULL, NULL, '2021-11-17 22:23:33', '2021-11-17 22:29:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kolektibilitas`
--

CREATE TABLE `kolektibilitas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `no_urut` int(11) NOT NULL DEFAULT 0,
  `dari` int(11) DEFAULT NULL,
  `sampai` int(11) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 Tidak Aktif | Aktif',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kolektibilitas`
--

INSERT INTO `kolektibilitas` (`id`, `nama`, `no_urut`, `dari`, `sampai`, `keterangan`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Kredit Lancar (Pass) ', 1, 0, 30, '-', 1, NULL, NULL, '2022-01-24 00:10:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `lev_id` int(11) NOT NULL,
  `lev_nama` varchar(50) NOT NULL,
  `lev_keterangan` text NOT NULL,
  `lev_status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`lev_id`, `lev_nama`, `lev_keterangan`, `lev_status`, `created_at`) VALUES
(1, 'Super Admin', 'Super Admin', 'Aktif', '2020-06-18 09:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_menu_id` int(11) NOT NULL,
  `menu_nama` varchar(50) NOT NULL,
  `menu_keterangan` text NOT NULL,
  `menu_index` int(11) NOT NULL,
  `menu_icon` varchar(50) NOT NULL,
  `menu_url` varchar(100) NOT NULL,
  `menu_status` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_menu_id`, `menu_nama`, `menu_keterangan`, `menu_index`, `menu_icon`, `menu_url`, `menu_status`, `created_at`) VALUES
(1, 0, 'Dashboard', '-', 1, 'fa fa-suitcase', 'admin/dashboard', 'Aktif', '2020-06-18 02:40:07'),
(2, 0, 'Pengaturan', '-', 6, 'fa fa-cogs', '#', 'Aktif', '2020-06-18 02:40:07'),
(4, 2, 'Menu', '-', 6, 'far fa-circle', 'pengaturan/menu', 'Aktif', '2020-06-18 02:40:07'),
(5, 2, 'Level', '-', 4, 'far fa-circle', 'pengaturan/level', 'Aktif', '2020-06-18 02:40:07'),
(6, 2, 'Pengguna', '-', 2, 'far fa-circle', 'pengaturan/pengguna', 'Aktif', '2020-06-18 02:40:07'),
(115, 118, 'Warna', 'Warna Produk', 3, 'far fa-circle', 'admin/product/color', 'Aktif', '2021-11-14 14:39:54'),
(116, 118, 'Kategori', 'Kategori Produk', 2, 'far fa-circle', 'admin/product/category', 'Aktif', '2021-11-14 14:39:14'),
(117, 118, 'Master', 'List daftar Produk', 1, 'far fa-circle', 'admin/product/item', 'Aktif', '2021-11-14 14:38:38'),
(118, 0, 'Produk', '-', 1, 'fas fa-fan', '#', 'Aktif', '2021-11-14 14:36:41'),
(119, 0, 'Home', 'Halaman Home', 2, 'fas fa-home', '#', 'Aktif', '2021-11-15 14:50:51'),
(120, 119, 'Slider', '-', 3, 'far fa-circle', 'admin/home/slider', 'Aktif', '2021-11-15 14:51:28'),
(121, 119, 'Kelebihan', '-', 4, 'far fa-circle', 'admin/home/excess', 'Aktif', '2021-11-15 14:52:32'),
(122, 119, 'Penawaran', 'Penawaran', 5, 'far fa-circle', 'admin/home/offer', 'Aktif', '2021-11-15 14:53:56'),
(123, 119, 'Testimoni', '-', 6, 'far fa-circle', 'admin/home/testimoni', 'Aktif', '2021-11-15 14:54:34'),
(124, 0, 'WhatsApp', 'No whatsapp untuk produk', 3, 'fab fa-whatsapp', 'admin/whatsapp', 'Aktif', '2021-11-17 15:39:07'),
(126, 0, 'Navigasi', '-', 4, 'fas fa-location-arrow', 'admin/menu', 'Aktif', '2021-11-17 19:09:01'),
(127, 119, 'Logo', '-', 1, 'far fa-circle', 'admin/home/logo', 'Aktif', '2021-11-19 08:05:37'),
(128, 119, 'Footer', '-', 2, 'far fa-circle', 'admin/home/footer', 'Aktif', '2021-11-19 08:08:39'),
(129, 0, 'Kepengurusan', '-', 1, 'fas fa-sitemap', 'admin/kepengurusan', 'Aktif', '2021-12-02 08:02:13'),
(130, 0, 'Pengurus', '-', 2, 'fas fa-users', 'admin/pengurus', 'Aktif', '2021-12-16 08:03:43'),
(131, 2, 'Media Sosial', '-', 1, 'far fa-circle', 'admin/pengaturan/mediaSosial', 'Aktif', '2022-01-02 15:04:29'),
(132, 0, 'Artikel', '-', 3, 'fas fa-newspaper', '#', 'Aktif', '2022-01-07 17:33:52'),
(133, 132, 'Daftar Artikel', '#', 1, 'far fa-circle', 'admin/artikel/daftarArtikel', 'Aktif', '2022-01-07 17:35:48'),
(134, 132, 'Kategori', '-', 2, 'far fa-circle', 'admin/artikel/kategori', 'Aktif', '2022-01-07 22:43:52'),
(135, 132, 'Tag', '-', 3, 'far fa-circle', 'admin/artikel/tag', 'Aktif', '2022-01-07 22:44:35'),
(136, 0, 'Jenis Asuransi', '-', 1, ' fas fa-list', 'JenisAsuransi', 'Aktif', '2022-01-23 16:30:38'),
(137, 0, 'Kolektibilitas', '-', 2, 'fas fa-sitemap', 'Kolektibilitas', 'Aktif', '2022-01-23 16:58:41'),
(138, 0, 'Nasabah', '-', 3, 'fas fa-users', 'Nasabah', 'Aktif', '2022-01-23 17:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

CREATE TABLE `nasabah` (
  `id` int(11) NOT NULL,
  `no_rek` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `jenis_asuransi_id` int(11) DEFAULT NULL,
  `tenggat` int(11) NOT NULL DEFAULT 0,
  `keterangan` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 Tidak Aktif | Aktif',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `role_aplikasi`
--

CREATE TABLE `role_aplikasi` (
  `rola_id` int(11) NOT NULL,
  `rola_menu_id` int(11) NOT NULL,
  `rola_lev_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role_aplikasi`
--

INSERT INTO `role_aplikasi` (`rola_id`, `rola_menu_id`, `rola_lev_id`, `created_at`) VALUES
(229, 1, 1, '2021-10-28 22:24:48'),
(234, 6, 1, '2021-10-28 22:24:57'),
(235, 7, 1, '2021-10-28 22:25:00'),
(236, 5, 1, '2021-10-28 22:25:01'),
(238, 4, 1, '2021-10-28 22:25:03'),
(239, 2, 1, '2021-10-28 22:25:10'),
(242, 1, 127, '2021-10-28 23:56:31'),
(244, 117, 1, '2021-11-14 15:59:39'),
(245, 116, 1, '2021-11-14 15:59:40'),
(246, 115, 1, '2021-11-14 15:59:40'),
(248, 120, 1, '2021-11-15 14:55:54'),
(249, 121, 1, '2021-11-15 14:55:55'),
(250, 122, 1, '2021-11-15 14:55:56'),
(251, 123, 1, '2021-11-15 14:55:56'),
(255, 128, 1, '2021-11-19 08:08:51'),
(260, 127, 1, '2021-12-31 16:46:28'),
(263, 133, 1, '2022-01-07 17:36:13'),
(264, 134, 1, '2022-01-07 22:43:57'),
(265, 135, 1, '2022-01-07 22:44:41'),
(266, 136, 1, '2022-01-23 16:30:58'),
(267, 137, 1, '2022-01-23 16:58:55'),
(268, 138, 1, '2022-01-23 17:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(50) NOT NULL,
  `nama_belakang` varchar(255) DEFAULT NULL,
  `nama_depan` varchar(255) DEFAULT NULL,
  `alamat_kabupaten` int(11) DEFAULT NULL,
  `alamat_kecamatan` int(11) DEFAULT NULL,
  `alamat_desa` int(11) DEFAULT NULL,
  `npp` varchar(50) DEFAULT NULL,
  `user_nik` varchar(30) DEFAULT NULL,
  `user_tgl_lahir` date DEFAULT NULL,
  `thn_angkatan` year(4) DEFAULT NULL,
  `user_jenis_kelamin` enum('Laki-Laki','Perempuan') DEFAULT NULL COMMENT 'Jenis Kelamin',
  `user_password` varchar(100) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_email_status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Belum Diverifikasi | 1 Sudah Diverifikasi',
  `user_phone` varchar(15) DEFAULT NULL,
  `user_foto` varchar(255) DEFAULT NULL,
  `user_status` int(1) NOT NULL DEFAULT 0 COMMENT '0 Tidak Aktif | 1 Aktif',
  `level_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_nama`, `nama_belakang`, `nama_depan`, `alamat_kabupaten`, `alamat_kecamatan`, `alamat_desa`, `npp`, `user_nik`, `user_tgl_lahir`, `thn_angkatan`, `user_jenis_kelamin`, `user_password`, `user_email`, `user_email_status`, `user_phone`, `user_foto`, `user_status`, `level_id`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, '$2y$10$aR1AymxdRq3IFte0VuB3..MCqfnf0gnc8S7KHPNoveg3Lb5ICPn5.', 'administrator@gmail.com', '1', '08123123', NULL, 1, 1, '2020-06-18 02:39:08', '2020-06-18 02:39:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `jenis_asuransi`
--
ALTER TABLE `jenis_asuransi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `key_value`
--
ALTER TABLE `key_value`
  ADD PRIMARY KEY (`key`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`),
  ADD KEY `deleted_by` (`deleted_by`);

--
-- Indexes for table `kolektibilitas`
--
ALTER TABLE `kolektibilitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`lev_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jenis_asuransi_id` (`jenis_asuransi_id`);

--
-- Indexes for table `role_aplikasi`
--
ALTER TABLE `role_aplikasi`
  ADD PRIMARY KEY (`rola_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD KEY `level_id` (`level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_asuransi`
--
ALTER TABLE `jenis_asuransi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kolektibilitas`
--
ALTER TABLE `kolektibilitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `lev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `nasabah`
--
ALTER TABLE `nasabah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_aplikasi`
--
ALTER TABLE `role_aplikasi`
  MODIFY `rola_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `key_value`
--
ALTER TABLE `key_value`
  ADD CONSTRAINT `key_value_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `key_value_ibfk_3` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `key_value_ibfk_4` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `nasabah`
--
ALTER TABLE `nasabah`
  ADD CONSTRAINT `nasabah_ibfk_1` FOREIGN KEY (`jenis_asuransi_id`) REFERENCES `jenis_asuransi` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `level` (`lev_id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;
