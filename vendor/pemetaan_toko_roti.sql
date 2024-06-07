-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Jun 2024 pada 07.05
-- Versi server: 10.3.39-MariaDB-cll-lve
-- Versi PHP: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zjxtorpv_080489`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `image` varchar(50) DEFAULT NULL,
  `bg` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id`, `image`, `bg`) VALUES
(1, 'auth.jpg', '#4e73de');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_toko` int(11) DEFAULT NULL,
  `image_galeri` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_toko`, `image_galeri`, `created_at`, `updated_at`) VALUES
(8, 15, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/2801990627.jpg', '2024-05-21 07:57:18', '2024-05-21 07:57:18'),
(9, 12, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/1104221670.jpg', '2024-05-21 07:57:29', '2024-05-21 07:57:29'),
(10, 14, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/286369527.jpg', '2024-05-21 07:57:39', '2024-05-21 07:57:39'),
(11, 13, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/912053900.jpg', '2024-05-21 07:57:49', '2024-05-21 07:57:49'),
(12, 12, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/1104221670.jpg', '2024-05-21 07:58:08', '2024-05-21 07:58:08'),
(13, 11, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/2866511154.jpg', '2024-05-21 07:58:22', '2024-05-21 07:58:22'),
(14, 10, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/885557812.jpg', '2024-05-21 07:58:34', '2024-05-21 07:58:34'),
(15, 9, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/611354224.jpg', '2024-05-21 07:58:43', '2024-05-21 07:58:43'),
(16, 8, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/3375888800.jpg', '2024-05-21 07:58:52', '2024-05-21 07:58:52'),
(17, 7, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/2289166706.jpg', '2024-05-21 07:59:01', '2024-05-21 07:59:01'),
(18, 6, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/2231924521.jpg', '2024-05-21 07:59:24', '2024-05-21 07:59:24'),
(19, 5, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/482227265.jpg', '2024-05-21 07:59:34', '2024-05-21 07:59:34'),
(20, 4, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/276103660.jpg', '2024-05-21 07:59:41', '2024-05-21 07:59:41'),
(21, 3, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/4223311878.jpg', '2024-05-21 07:59:50', '2024-05-21 07:59:50'),
(22, 2, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/1991982564.jpg', '2024-05-21 08:00:04', '2024-05-21 08:00:04'),
(23, 1, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/1594028409.jpg', '2024-05-21 08:00:21', '2024-05-21 08:00:21'),
(24, 13, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/3874009243.jpg', '2024-05-21 08:04:10', '2024-05-21 08:04:10'),
(25, 13, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/397210404.jpg', '2024-05-21 08:04:10', '2024-05-21 08:04:10'),
(26, 13, 'http://127.0.0.1:1010/apps/tugas/pemetaan_toko_roti//assets/img/galeri/4043521002.jpg', '2024-05-21 08:04:10', '2024-05-21 08:04:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kontak`
--

CREATE TABLE `kontak` (
  `id_kontak` int(11) NOT NULL,
  `username` varchar(75) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` char(12) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kontak`
--

INSERT INTO `kontak` (`id_kontak`, `username`, `email`, `phone`, `pesan`, `created_at`, `updated_at`) VALUES
(4, 'Isna kolo', 'isnakolo@gmail.com', '+62 877-7734', '', '2024-05-28 04:42:30', '2024-05-28 04:42:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `maps`
--

CREATE TABLE `maps` (
  `id_map` int(11) NOT NULL,
  `id_toko` int(11) DEFAULT NULL,
  `longitude` varchar(35) DEFAULT NULL,
  `latitude` varchar(35) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `maps`
--

INSERT INTO `maps` (`id_map`, `id_toko`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(5, 15, '123.595710', '-10.176386', '2024-05-24 06:17:08', '2024-05-24 06:17:08'),
(6, 13, '123.651614', '-10.149194', '2024-05-24 06:18:58', '2024-05-24 06:18:58'),
(7, 10, '123.613104', '-10.173776', '2024-05-24 06:19:30', '2024-05-24 06:19:30'),
(8, 14, '123.650542', '-10.147931', '2024-05-24 06:21:22', '2024-05-24 06:21:22'),
(9, 12, '123.638930', '-10.157351', '2024-05-24 06:22:16', '2024-05-24 06:22:16'),
(10, 11, '123.584664', '-10.168358', '2024-05-24 06:28:30', '2024-05-24 06:28:30'),
(11, 9, '123.621220', '-10.173366', '2024-05-24 06:31:14', '2024-05-24 06:31:14'),
(12, 8, '123.585309', '-10.163875', '2024-05-24 06:32:33', '2024-05-24 06:32:33'),
(13, 7, '123.604262', '-10.185016', '2024-05-24 06:33:49', '2024-05-24 06:33:49'),
(14, 6, '123.665937', '-10.138033', '2024-05-24 06:35:13', '2024-05-24 06:35:13'),
(15, 5, '123.639250', '-10.157348', '2024-05-24 06:35:53', '2024-05-24 06:35:53'),
(16, 4, '123.629026', '-10.166888', '2024-05-24 06:38:25', '2024-05-24 06:38:25'),
(17, 3, '123.593240', '-10.174875', '2024-05-24 06:39:54', '2024-05-24 06:39:54'),
(18, 2, '123.623707', '-10.163571', '2024-05-24 06:40:41', '2024-05-24 06:40:41'),
(19, 1, '123.594196', '-10.176115', '2024-05-24 06:41:15', '2024-05-24 06:41:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roti`
--

CREATE TABLE `roti` (
  `id_roti` int(11) NOT NULL,
  `id_toko` int(11) DEFAULT NULL,
  `jenis_roti` text DEFAULT NULL,
  `harga` char(20) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `roti`
--

INSERT INTO `roti` (`id_roti`, `id_toko`, `jenis_roti`, `harga`, `created_at`, `updated_at`) VALUES
(3, 15, 'Roti sisir keju', '5000', '2024-06-07 08:00:21', '2024-06-07 08:00:21'),
(4, 15, 'roti coklat kacang', '6000', '2024-06-07 08:00:21', '2024-06-07 08:00:21'),
(5, 15, 'roti burder', '11000', '2024-06-07 08:00:21', '2024-06-07 08:00:21'),
(6, 15, 'roti mikx mantega', '7000', '2024-06-07 08:00:21', '2024-06-07 08:00:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang`
--

CREATE TABLE `tentang` (
  `id_tentang` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tentang`
--

INSERT INTO `tentang` (`id_tentang`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '<p>Umkm seringkali memiliki tantangan dalam memperluas jangkauan pasar.calon pembeli ataupun pelanggan mengalami kesulitan dalam mencari informasi tentang Umkm,terutama Umkm Toko Roti yang belum melakukan pemetaan secara sistem informasi geografis.Hal ini menghambat potensi pertumbuhan dan keberlanjutan Umkm Toko Roti di Kota Kupang,serta mempersulit interaksi antara Umkm Toko Roti dengan pelanggan.Dalam beberapa kasus,pemetaan Umkm Toko Roti masi dilakukan secara menual atau menggunakan metode yang tidak efesien.Misalnya,Dinas Koperasi masi menggunakan sistem yang menual sehinggah seringkali tidak dapat memberikan informasi yang akurat dan terkini tentang lokasi,dan detail informasi tentang Umkm Toko Roti.</p>\r\n\r\n<p>Dalam era digital ini,pemetaan Umkm disuatu wilayah dapat dilakukan secara <em>online </em>atau melalui sistem informasi geografis.Pemetaan Umkm Toko Roti ini memungkinkan pengguna untuk mengakses informasi dan lokasi Umkm Toko Roti dimana saja dan kapan saja. Selain itu, pemetaan Umkm Toko Roti juga memudahkan perancangan dan pengambilan keputusan untuk memungkinkan akses yang lebih muda dan luas, terdapat data dan pemetaan Umkm Toko Roti.</p>\r\n', '2024-05-12 15:55:15', '2024-05-29 13:41:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(50) DEFAULT NULL,
  `image_toko` varchar(75) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `jam_kerja_buka` time NOT NULL,
  `jam_kerja_tutup` time NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `image_toko`, `alamat`, `deskripsi`, `jam_kerja_buka`, `jam_kerja_tutup`, `created_at`, `updated_at`) VALUES
(1, 'TOKO ROTI BORNEO', '772533361.jpg', 'JL.JENDRAL SUDIRMAN NO.129, KUANINO, KEC.KOTA RAJA, KOTA KUPANG, NUSA TENGGARA TIMUR', '-', '00:00:00', '00:00:00', '2024-05-11 14:07:25', '2024-05-24 06:59:37'),
(2, 'SUKA ROTI', '3602220060.jpg', 'JL.PERINTIS KEMERDEKAAN 1 NO.1 KAYU PUTI, KEC.OEBOBO KOTA KUPANG, NUSA TENGGARA TIMUR', 'tes', '00:00:00', '00:00:00', '2024-05-11 14:10:35', '2024-05-24 06:59:23'),
(3, 'ANGELLO BAKERY', '4223311878.jpg', 'JL.JENDRAL SUDIRMAN NO.117A, KUANINO, KEC KOTA RAJA, KOTA KUPANG, NUSA TENGGARA TIMUR', '', '00:00:00', '00:00:00', '2024-05-11 14:54:09', '2024-05-24 06:58:57'),
(4, 'ROYAL BAKERY', '276103660.jpg', 'JL.BUND.PU KELURAHAN NO.10,TUAK DAUN MERAH,KEC.OEBOBO,KOTA KUPANG,NUSATENGGARA TIM.', '', '00:00:00', '00:00:00', '2024-05-11 14:54:09', '2024-05-24 06:14:05'),
(5, 'QUEEN ROTI LILIBA', '482227265.jpg', 'JL.PIET A.TALLO, LILIBA, KEC.OEBOBO, KOTA KUPANG, NUSA TENGGARA TIMUR', '', '00:00:00', '00:00:00', '2024-05-11 14:54:09', '2024-05-24 06:58:43'),
(6, 'SUKA ROTI BAKERY', '2231924521.jpg', 'JL.TIMOR RAYA NO.KM.10 N0.44, LASIANA, KEC.KLP.LIMA KOTA KUPANG, NUSA TENGGARA TIMUR.', '', '00:00:00', '00:00:00', '2024-05-11 14:54:09', '2024-05-24 06:58:22'),
(7, 'JOY BAKERY', '2289166706.jpg', 'RJ73+XPX, NAIKOLAN, KEC.MAULAFA, KOTA KUPANG, NUSA TENGGARA TIMUR', '', '00:00:00', '00:00:00', '2024-05-11 14:54:09', '2024-05-24 06:57:59'),
(8, 'ANGELYN BAKERY', '3375888800.jpg', 'JL.TOMPELLO NO.23 B, OETETE, KEC.OEBOBO, KOTA KUPANG, NUSA TENGGARA TIMUR', '', '00:00:00', '00:00:00', '2024-05-11 14:54:09', '2024-05-24 06:57:29'),
(9, 'ALETHA BAKERY', '611354224.jpg', 'JL.THOM TOUSELAK, OEBUFU, KEC.OEBOBO, KOTA KUPANG, NUSA TENGGARA TIMUR', '', '00:00:00', '00:00:00', '2024-05-11 14:54:09', '2024-05-24 06:57:11'),
(10, 'J.CO DONUTS DAN BERTALK KUPANG', '885557812.jpg', 'JL.W.J.LALAMENTIK, OEBUFU, OEBOBO, KUPANG CITY, EAST NUSA TENGGARA TIMUR', '', '00:00:00', '00:00:00', '2024-05-11 14:54:09', '2024-05-24 06:56:56'),
(11, 'SUKA ROTI-ANEKA ROTI SEHAT', '2866511154.jpg', 'JL.MOCH HATTA, OETETE, KEC.OEBOBO, KOTA KUPANG, NUSA TENGGARA TIMUR', '', '00:00:00', '00:00:00', '2024-05-11 14:54:09', '2024-05-24 06:56:39'),
(12, 'ROTI KAHANG JAYA', '1104221670.jpg', 'JL.PIET A.TALLO, LILIBA, KEC.OEBOBO, KOTA KUPANG, NUSA TENGGARA TIMUR', '', '00:00:00', '00:00:00', '2024-05-11 14:54:09', '2024-05-24 06:56:25'),
(13, 'SUKA ROTI BAKERY OESAPA', '912053900.jpg', 'VM22+8J5, OESAPA, KEC KLP.LIMA, KOTA KUPANG, NUSA TENGGARA TIMUR.', '', '00:00:00', '00:00:00', '2024-05-11 14:54:09', '2024-05-24 06:55:59'),
(14, 'PARIS BAKERY', '286369527.jpg', 'JL.TIMUR RAYA NO.KM.9, OESAPA, KEC.KLP.LIMA, KOTA KUPANG, NUSA TENGGARA TIMUR', '', '00:00:00', '00:00:00', '2024-05-11 14:54:10', '2024-05-24 06:55:35'),
(15, 'ROTI AWET MUDA', '2801990627.jpg', 'JL.HEREWILA NO.3, NAIKOTEN II, KEC.KOTA RAJA, KOTA KUPANG, NUSA TENGGARA TIMUR', '', '00:00:00', '00:00:00', '2024-05-11 14:54:10', '2024-05-24 06:55:20');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_active` int(11) DEFAULT 2,
  `en_user` varchar(75) DEFAULT NULL,
  `token` char(6) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT 'default.svg',
  `email` varchar(75) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `id_role`, `id_active`, `en_user`, `token`, `name`, `image`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL, 'admin', 'default.svg', 'admin@gmail.com', '$2y$10$//KMATh3ibPoI3nHFp7x/u7vnAbo2WyUgmI4x0CVVrH8ajFhMvbjG', '2024-04-18 00:47:07', '2024-04-18 00:47:07'),
(2, 1, 1, NULL, NULL, 'developer', 'default.svg', 'developer@gmail.com', '$2y$10$//KMATh3ibPoI3nHFp7x/u7vnAbo2WyUgmI4x0CVVrH8ajFhMvbjG', '2024-05-10 19:55:20', '2024-05-10 19:55:20');

--
-- Trigger `users`
--
DELIMITER $$
CREATE TRIGGER `insert_users` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
    SET NEW.id_role = (
        SELECT id_role
        FROM `user_role`
        ORDER BY id_role DESC
        LIMIT 1
    );
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id_access_menu` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id_access_menu`, `id_role`, `id_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 5),
(4, 1, 6),
(5, 1, 7),
(6, 2, 5),
(7, 2, 6),
(8, 2, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_sub_menu`
--

CREATE TABLE `user_access_sub_menu` (
  `id_access_sub_menu` int(11) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  `id_sub_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_access_sub_menu`
--

INSERT INTO `user_access_sub_menu` (`id_access_sub_menu`, `id_role`, `id_sub_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 2, 7),
(14, 2, 8),
(15, 2, 9),
(16, 2, 10),
(17, 2, 11),
(18, 2, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id_menu` int(11) NOT NULL,
  `menu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id_menu`, `menu`) VALUES
(1, 'User Management'),
(2, 'Menu Management'),
(5, 'Data Toko'),
(6, 'Data GIS'),
(7, 'Lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id_role`, `role`) VALUES
(1, 'Developer'),
(2, 'Administrator'),
(3, 'Member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_status`
--

CREATE TABLE `user_status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_status`
--

INSERT INTO `user_status` (`id_status`, `status`) VALUES
(1, 'Active'),
(2, 'No Active');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id_sub_menu` int(11) NOT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `id_active` int(11) DEFAULT 2,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id_sub_menu`, `id_menu`, `id_active`, `title`, `url`, `icon`) VALUES
(1, 1, 1, 'Users', 'users', 'fas fa-users'),
(2, 1, 1, 'Role', 'role', 'fas fa-user-cog'),
(3, 2, 1, 'Menu', 'menu', 'fas fa-fw fa-folder'),
(4, 2, 1, 'Sub Menu', 'sub-menu', 'fas fa-fw fa-folder-open'),
(5, 2, 1, 'Menu Access', 'menu-access', 'fas fa-user-lock'),
(6, 2, 1, 'Sub Menu Access', 'sub-menu-access', 'fas fa-user-lock'),
(7, 5, 1, 'Toko', 'toko', 'fas fa-store'),
(8, 5, 1, 'Galeri', 'galeri', 'fas fa-image'),
(9, 6, 1, 'Pemetaan Toko', 'pemetaan-toko', 'fas fa-map-marker-alt'),
(10, 6, 1, 'Maps', 'maps', 'fas fa-map-marked-alt'),
(11, 7, 1, 'Tentang', 'tentang', 'fas fa-list'),
(12, 7, 1, 'Kontak', 'kontak', 'fas fa-address-book');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `id_toko` (`id_toko`);

--
-- Indeks untuk tabel `kontak`
--
ALTER TABLE `kontak`
  ADD PRIMARY KEY (`id_kontak`);

--
-- Indeks untuk tabel `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id_map`),
  ADD KEY `id_toko` (`id_toko`);

--
-- Indeks untuk tabel `roti`
--
ALTER TABLE `roti`
  ADD PRIMARY KEY (`id_roti`),
  ADD KEY `id_toko` (`id_toko`);

--
-- Indeks untuk tabel `tentang`
--
ALTER TABLE `tentang`
  ADD PRIMARY KEY (`id_tentang`);

--
-- Indeks untuk tabel `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_active` (`id_active`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id_access_menu`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_menu` (`id_menu`);

--
-- Indeks untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  ADD PRIMARY KEY (`id_access_sub_menu`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_sub_menu` (`id_sub_menu`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indeks untuk tabel `user_status`
--
ALTER TABLE `user_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id_sub_menu`),
  ADD KEY `id_menu` (`id_menu`),
  ADD KEY `id_active` (`id_active`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `maps`
--
ALTER TABLE `maps`
  MODIFY `id_map` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `roti`
--
ALTER TABLE `roti`
  MODIFY `id_roti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id_tentang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id_access_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  MODIFY `id_access_sub_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id_sub_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`id_toko`) REFERENCES `toko` (`id_toko`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `maps`
--
ALTER TABLE `maps`
  ADD CONSTRAINT `maps_ibfk_1` FOREIGN KEY (`id_toko`) REFERENCES `toko` (`id_toko`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `roti`
--
ALTER TABLE `roti`
  ADD CONSTRAINT `roti_ibfk_1` FOREIGN KEY (`id_toko`) REFERENCES `toko` (`id_toko`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_active`) REFERENCES `user_status` (`id_status`);

--
-- Ketidakleluasaan untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD CONSTRAINT `user_access_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `user_access_menu_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `user_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  ADD CONSTRAINT `user_access_sub_menu_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `user_role` (`id_role`),
  ADD CONSTRAINT `user_access_sub_menu_ibfk_2` FOREIGN KEY (`id_sub_menu`) REFERENCES `user_sub_menu` (`id_sub_menu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD CONSTRAINT `user_sub_menu_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `user_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_sub_menu_ibfk_2` FOREIGN KEY (`id_active`) REFERENCES `user_status` (`id_status`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
