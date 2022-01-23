-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2022 at 07:28 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `almardiy_kolektibilitas`
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
('276mbgq9g41in5lbf6554kv708bcdt7r', '::1', 1642959104, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935393130343b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('3ffp2obljlgobttis5oq5hg45ekbpvts', '::1', 1642955232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935353233323b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('40qvmeli5fcc2nsahjva9ga75j7658ot', '::1', 1642955770, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935353737303b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('9413i72ksujhhpig6rdi9e8timepilhe', '::1', 1642957839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935373833393b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('bq9qfc0qtr1ji1hhcfg39qf69bvefb88', '::1', 1642956404, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935363430343b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('gmtkhlcng5jhqtv5cf6aj3v0sh5obr9t', '::1', 1642956093, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935363039333b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('iirr4d2j8s9g85v90jnu737km08ks2r2', '::1', 1642959440, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935393434303b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('kflrp0ulh85s6e2iivgpr0r6ctkav5fc', '::1', 1642958467, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935383436373b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('koo1dc2n2868sp9l15pfbrbe5jgbfn9j', '::1', 1642958798, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935383739383b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('mk261nrmm9vddearajkr7g2q7l4p6bs4', '::1', 1642958141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935383134313b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('nbll4jgu472ierrdmv4pssaaju2ioo3r', '::1', 1642954027, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323935343032373b),
('nf4ga631gnrda3685ijgatptse2ambdq', '::1', 1642961044, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323936313034343b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('ogtfm4l1mfq7vlvlsg06ljb8utes89r9', '::1', 1642961523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323936313532333b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d),
('tg2v5cb53tp0ujkv9od72o5r36jd33mu', '::1', 1642961710, 0x5f5f63695f6c6173745f726567656e65726174657c693a313634323936313532333b7374617475737c623a313b646174617c613a353a7b733a323a226964223b733a313a2231223b733a343a226e616d61223b733a31333a2241646d696e6973747261746f72223b733a353a22656d61696c223b733a32333a2261646d696e6973747261746f7240676d61696c2e636f6d223b733a353a226c6576656c223b733a31313a2253757065722041646d696e223b733a383a226c6576656c5f6964223b733a313a2231223b7d);

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
(1, 'Kredit Lancar (Pass) ', 1, 1, 30, '-', 1, NULL, NULL, '2022-01-24 00:10:58', '2022-01-24 01:04:48'),
(3, 'Dalam Perhatian Khusus (Special Mention)', 2, 31, 60, '', 1, NULL, NULL, '2022-01-24 01:05:00', '2022-01-24 01:14:05'),
(4, 'Kurang Lancar (Substandard)', 3, 61, 90, '', 0, NULL, NULL, '2022-01-24 01:05:53', '2022-01-24 01:14:50'),
(5, 'Diragukan (Doubtful)', 4, 91, 120, '', 0, NULL, NULL, '2022-01-24 01:06:22', '2022-01-24 01:14:53'),
(6, 'Macet (Loss)', 4, 121, 2147483647, '', 0, NULL, NULL, '2022-01-24 01:07:08', '2022-01-24 01:14:56');

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
(138, 0, 'Nasabah', '-', 3, 'fas fa-users', 'Nasabah', 'Aktif', '2022-01-23 17:14:51'),
(139, 0, 'Analisis Data', '-', 4, 'fas fa-chart-bar', 'Analisis', 'Aktif', '2022-01-23 18:11:34');

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

--
-- Dumping data for table `nasabah`
--

INSERT INTO `nasabah` (`id`, `no_rek`, `nama`, `jenis_asuransi_id`, `tenggat`, `keterangan`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, '773202007251000', 'Kiona Shaw', 5, 27, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(3, '773202007251002', 'Chase Buckner', 6, 78, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(4, '773202007251004', 'Valentine Alexander', 5, 74, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(5, '773202007251006', 'Burke Ochoa', 2, 50, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(6, '773202007251008', 'Wynter Maldonado', 6, 43, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(7, '773202007251010', 'Jaden Frost', 4, 37, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(8, '773202007251012', 'Lev Potts', 3, 51, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(9, '773202007251014', 'Thaddeus Grimes', 5, 72, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(10, '773202007251016', 'Peter Mcpherson', 5, 87, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(11, '773202007251018', 'Sasha Reed', 2, 85, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(12, '773202007251020', 'Adrienne Mccormick', 3, 4, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(13, '773202007251022', 'Basil Oneal', 3, 83, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(14, '773202007251024', 'Cassady Stuart', 2, 18, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(15, '773202007251026', 'Yardley Kerr', 5, 62, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(16, '773202007251028', 'Gage Yates', 5, 104, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(17, '773202007251030', 'Serina Petty', 6, 9, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(18, '773202007251032', 'Dara Hensley', 5, 11, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(19, '773202007251034', 'Price Solomon', 4, 77, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(20, '773202007251036', 'Price Sutton', 5, 67, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(21, '773202007251038', 'Colleen Kline', 5, 55, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(22, '773202007251040', 'Rooney Hodge', 5, 11, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(23, '773202007251042', 'India Orr', 3, 93, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(24, '773202007251044', 'Roth Rosales', 6, 62, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(25, '773202007251046', 'Raphael Tyler', 6, 106, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(26, '773202007251048', 'Lyle Ball', 4, 65, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(27, '773202007251050', 'Gisela Walsh', 4, 93, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(28, '773202007251052', 'Quail Black', 2, 44, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(29, '773202007251054', 'Bell Bryant', 3, 106, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(30, '773202007251056', 'Lee Lindsey', 6, 40, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(31, '773202007251058', 'Cameran Dillon', 3, 50, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(32, '773202007251060', 'Jonah Murphy', 2, 54, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(33, '773202007251062', 'Anika Bullock', 5, 33, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(34, '773202007251064', 'Geoffrey Sexton', 2, 75, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(35, '773202007251066', 'Hiroko Joseph', 6, 97, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(36, '773202007251068', 'Dorian Rivers', 5, 13, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(37, '773202007251070', 'Noble Morin', 6, 81, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(38, '773202007251072', 'Jenna Valentine', 6, 22, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(39, '773202007251074', 'Kato Mcguire', 4, 11, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(40, '773202007251076', 'Ronan Jones', 5, 31, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(41, '773202007251078', 'Ferris Francis', 2, 45, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(42, '773202007251080', 'Aladdin Dean', 2, 60, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(43, '773202007251082', 'Magee Mccoy', 5, 96, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(44, '773202007251084', 'Walter Clay', 3, 64, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(45, '773202007251086', 'Shaeleigh Craft', 4, 67, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(46, '773202007251088', 'Jakeem Nieves', 6, 2, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(47, '773202007251090', 'Mary Guthrie', 5, 60, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(48, '773202007251092', 'Charissa Simmons', 4, 47, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(49, '773202007251094', 'Amos Kirby', 5, 98, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(50, '773202007251096', 'Beau Dunlap', 6, 70, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(51, '773202007251098', 'Regan Albert', 6, 53, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(52, '773202007251100', 'Steel Hunt', 5, 71, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(53, '773202007251102', 'Beatrice Walsh', 4, 75, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(54, '773202007251104', 'Ira Pope', 3, 32, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(55, '773202007251106', 'Lucian Hodges', 5, 40, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(56, '773202007251108', 'Ian Jefferson', 3, 80, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(57, '773202007251110', 'Carla Collier', 5, 90, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(58, '773202007251112', 'Phyllis Phelps', 2, 61, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(59, '773202007251114', 'Mariam Mcguire', 4, 68, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(60, '773202007251116', 'Davis Buck', 3, 60, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(61, '773202007251118', 'Carla Holcomb', 5, 48, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(62, '773202007251120', 'Whoopi Mccall', 3, 41, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(63, '773202007251122', 'Winter Webster', 6, 8, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(64, '773202007251124', 'Noelle Hernandez', 6, 68, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(65, '773202007251126', 'Alec Stanton', 6, 22, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(66, '773202007251128', 'Blaze Reid', 5, 8, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(67, '773202007251130', 'Cadman Cabrera', 3, 27, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(68, '773202007251132', 'Amir Stein', 5, 103, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(69, '773202007251134', 'Drew Osborn', 4, 38, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(70, '773202007251136', 'Elvis Townsend', 2, 39, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(71, '773202007251138', 'Brady Valenzuela', 5, 95, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(72, '773202007251140', 'Hamilton Bradford', 5, 62, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(73, '773202007251142', 'Althea Park', 4, 64, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(74, '773202007251144', 'Lionel Mcfarland', 4, 56, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(75, '773202007251146', 'Lacey Vargas', 6, 41, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(76, '773202007251148', 'Walter Carroll', 3, 34, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(77, '773202007251150', 'Jin Santiago', 2, 93, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(78, '773202007251152', 'Hilel Reed', 2, 9, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(79, '773202007251154', 'Cheryl Vargas', 6, 31, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(80, '773202007251156', 'Rigel Langley', 6, 76, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(81, '773202007251158', 'Calista Raymond', 6, 4, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(82, '773202007251160', 'Ingrid Blevins', 5, 13, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(83, '773202007251162', 'Ulysses Knapp', 5, 86, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(84, '773202007251164', 'Kerry Cole', 3, 48, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(85, '773202007251166', 'Avram Watkins', 3, 39, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(86, '773202007251168', 'Mason Tucker', 6, 21, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(87, '773202007251170', 'Steven Tran', 5, 13, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(88, '773202007251172', 'Patrick Bruce', 4, 93, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(89, '773202007251174', 'Quentin Stephens', 5, 53, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(90, '773202007251176', 'Colton Hebert', 5, 52, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(91, '773202007251178', 'Stuart Clements', 5, 67, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(92, '773202007251180', 'Knox Campos', 6, 79, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(93, '773202007251182', 'Hope Larson', 6, 38, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(94, '773202007251184', 'Wang Fernandez', 4, 81, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(95, '773202007251186', 'Amos Mcpherson', 4, 62, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(96, '773202007251188', 'Mary Roy', 4, 8, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(97, '773202007251190', 'McKenzie Bryant', 4, 69, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(98, '773202007251192', 'Renee Sanders', 5, 14, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(99, '773202007251194', 'Ignatius Roberson', 4, 39, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(100, '773202007251196', 'Griffith Bean', 2, 109, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(101, '773202007251198', 'Candice Galloway', 6, 2, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(102, '773202007251200', 'Eric Richmond', 5, 35, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(103, '773202007251202', 'Myles Branch', 2, 64, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(104, '773202007251204', 'Dylan Mays', 2, 86, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(105, '773202007251206', 'Calvin Flynn', 3, 79, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(106, '773202007251208', 'Virginia Webster', 4, 64, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(107, '773202007251210', 'Rigel Norris', 6, 28, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(108, '773202007251212', 'Lacey Harper', 2, 57, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(109, '773202007251214', 'Adele Blanchard', 6, 68, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(110, '773202007251216', 'Dacey Patton', 5, 16, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(111, '773202007251218', 'Giselle Sharp', 2, 64, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(112, '773202007251220', 'Todd Lindsay', 3, 22, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(113, '773202007251222', 'Cheryl Atkins', 4, 67, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(114, '773202007251224', 'Shelley Rich', 3, 99, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(115, '773202007251226', 'Craig David', 5, 79, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(116, '773202007251228', 'Gemma Stokes', 3, 104, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(117, '773202007251230', 'Hu Sawyer', 2, 78, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(118, '773202007251232', 'Felicia Ortega', 2, 101, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(119, '773202007251234', 'Mason Potts', 3, 60, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(120, '773202007251236', 'Lenore Jones', 4, 67, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(121, '773202007251238', 'Madaline Sawyer', 2, 46, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(122, '773202007251240', 'Samson Price', 5, 61, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(123, '773202007251242', 'Gloria Stuart', 3, 55, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(124, '773202007251244', 'Olympia Mcdowell', 5, 99, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(125, '773202007251246', 'Oliver Castro', 4, 77, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(126, '773202007251248', 'Joshua Fuller', 2, 62, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(127, '773202007251250', 'Aileen Shannon', 6, 69, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(128, '773202007251252', 'Angelica Mack', 3, 22, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(129, '773202007251254', 'Arsenio Bowman', 6, 4, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(130, '773202007251256', 'Walter Travis', 5, 6, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(131, '773202007251258', 'Abigail Chapman', 3, 103, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(132, '773202007251260', 'Theodore Guthrie', 2, 47, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(133, '773202007251262', 'Britanni Knowles', 6, 70, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(134, '773202007251264', 'Leandra Goodwin', 6, 97, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(135, '773202007251266', 'Bruce Buckley', 4, 34, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(136, '773202007251268', 'Quinn Oliver', 3, 17, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(137, '773202007251270', 'Marsden Schroeder', 6, 80, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(138, '773202007251272', 'Aquila Wells', 2, 86, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(139, '773202007251274', 'Ruby Hardy', 6, 89, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(140, '773202007251276', 'Quon Dixon', 2, 49, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(141, '773202007251278', 'Bianca Boyer', 5, 32, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(142, '773202007251280', 'Owen Atkinson', 3, 55, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(143, '773202007251282', 'Joel Wynn', 5, 12, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(144, '773202007251284', 'Rajah Head', 4, 66, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(145, '773202007251286', 'Jeanette Rush', 4, 24, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(146, '773202007251288', 'Mira Gibbs', 5, 60, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(147, '773202007251290', 'Kerry Kelly', 6, 67, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(148, '773202007251292', 'Reese Moss', 3, 29, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(149, '773202007251294', 'Cyrus Hahn', 5, 26, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(150, '773202007251296', 'Graham Mercado', 3, 46, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(151, '773202007251298', 'Hadley Hale', 2, 103, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(152, '773202007251300', 'Hannah Duffy', 3, 82, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(153, '773202007251302', 'Ferris Bonner', 6, 50, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(154, '773202007251304', 'Damian Hansen', 4, 85, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(155, '773202007251306', 'Keelie Henson', 4, 43, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(156, '773202007251308', 'Jin Mann', 3, 21, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(157, '773202007251310', 'Aspen Kirkland', 5, 5, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(158, '773202007251312', 'Orla Spence', 6, 69, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(159, '773202007251314', 'Yolanda Daugherty', 3, 62, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(160, '773202007251316', 'Kane Savage', 4, 67, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(161, '773202007251318', 'Odessa Medina', 5, 98, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(162, '773202007251320', 'Alma Bryan', 2, 109, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(163, '773202007251322', 'Branden Battle', 3, 44, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(164, '773202007251324', 'Nevada Oliver', 3, 42, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(165, '773202007251326', 'Stuart Ochoa', 3, 98, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(166, '773202007251328', 'Lael Mullen', 3, 100, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(167, '773202007251330', 'Karyn Mcdonald', 4, 49, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(168, '773202007251332', 'Calista Chen', 5, 33, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(169, '773202007251334', 'Herman Carrillo', 4, 21, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(170, '773202007251336', 'Keegan Sandoval', 3, 105, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(171, '773202007251338', 'Linda Wade', 5, 99, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(172, '773202007251340', 'Clio Rocha', 5, 4, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(173, '773202007251342', 'Pamela Herman', 6, 83, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(174, '773202007251344', 'Alvin Compton', 3, 56, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(175, '773202007251346', 'Jane Gomez', 6, 33, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(176, '773202007251348', 'Dustin Small', 2, 5, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(177, '773202007251350', 'Phyllis James', 3, 2, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(178, '773202007251352', 'Cameron Huff', 5, 80, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(179, '773202007251354', 'Lucas Olson', 4, 5, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(180, '773202007251356', 'Kessie Watts', 4, 56, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(181, '773202007251358', 'Bell Abbott', 3, 96, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(182, '773202007251360', 'Stuart Vance', 6, 39, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(183, '773202007251362', 'Magee Walker', 3, 42, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(184, '773202007251364', 'Galvin Farmer', 5, 55, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(185, '773202007251366', 'Keane Pollard', 6, 64, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(186, '773202007251368', 'Stephen Donaldson', 3, 48, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(187, '773202007251370', 'Jael Dyer', 2, 80, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(188, '773202007251372', 'Ila Snider', 5, 108, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(189, '773202007251374', 'Kay Hernandez', 6, 42, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(190, '773202007251376', 'Chantale Rodgers', 3, 74, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(191, '773202007251378', 'Emerson Weiss', 4, 77, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(192, '773202007251380', 'Whilemina Hoffman', 2, 70, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(193, '773202007251382', 'Callum Short', 4, 69, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(194, '773202007251384', 'Wang Gill', 3, 65, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(195, '773202007251386', 'Kennan Spencer', 3, 67, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(196, '773202007251388', 'Zena Hardin', 3, 102, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(197, '773202007251390', 'Keiko Goodwin', 6, 22, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(198, '773202007251392', 'Jared Howell', 3, 90, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(199, '773202007251394', 'Nathan Pena', 4, 85, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(200, '773202007251396', 'Breanna Carroll', 5, 110, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40'),
(201, '773202007251398', 'Aquila Daugherty', 5, 75, NULL, 1, NULL, NULL, '2022-01-24 01:03:40', '2022-01-24 01:03:40');

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
(268, 138, 1, '2022-01-23 17:15:12'),
(269, 139, 1, '2022-01-23 18:12:11');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `lev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `nasabah`
--
ALTER TABLE `nasabah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `role_aplikasi`
--
ALTER TABLE `role_aplikasi`
  MODIFY `rola_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;

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
