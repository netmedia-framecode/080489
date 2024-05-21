-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 21 Bulan Mei 2024 pada 03.34
-- Versi server: 8.3.0
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pemetaan_toko_roti`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id` int NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bg` varchar(35) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  `id_galeri` int NOT NULL,
  `id_toko` int DEFAULT NULL,
  `image_galeri` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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
  `id_kontak` int NOT NULL,
  `username` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` char(12) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pesan` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `maps`
--

CREATE TABLE `maps` (
  `id_map` int NOT NULL,
  `id_toko` int DEFAULT NULL,
  `longitude` varchar(35) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `latitude` varchar(35) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `maps`
--

INSERT INTO `maps` (`id_map`, `id_toko`, `longitude`, `latitude`, `created_at`, `updated_at`) VALUES
(2, 2, '123.623614', '-10.163721', '2024-05-12 14:41:55', '2024-05-12 14:41:55'),
(3, 1, '123.594596', '-10.176558', '2024-05-12 15:18:12', '2024-05-12 15:18:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tentang`
--

CREATE TABLE `tentang` (
  `id_tentang` int NOT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tentang`
--

INSERT INTO `tentang` (`id_tentang`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, '<p><strong>Lorem ipsum</strong> dolor sit amet consectetur adipisicing elit. Quidem fugit quibusdam ipsum recusandae a eveniet quas optio non, earum modi rerum excepturi sequi alias voluptatem facilis voluptates commodi repudiandae debitis eius expedita assumenda cum amet mollitia laborum. Sint natus consectetur veniam labore doloribus cupiditate ea exercitationem. Laboriosam tenetur exercitationem cum ducimus quae nobis inventore, non amet, unde ea maxime tempore officiis alias debitis nesciunt impedit accusamus consectetur! Quis assumenda sit, rem dolorum nihil autem dignissimos quasi quaerat aliquid nam repellendus recusandae eius aspernatur, pariatur corrupti adipisci iure. Inventore atque in culpa beatae. Placeat dicta iure ab provident, <strong>enim eos cupiditate.</strong></p>\r\n', '2024-05-12 15:55:15', '2024-05-12 16:00:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `toko`
--

CREATE TABLE `toko` (
  `id_toko` int NOT NULL,
  `nama_toko` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_toko` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_general_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `image_toko`, `alamat`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'TOKO ROTI BORNEO', '772533361.jpg', 'JL.JENDRAL SUDIRMAN NO.129,KUANINO,KEC.KOTA RAJA,KOTA KUPANG,NUSA TENGGARA TIMUR.', '-', '2024-05-11 14:07:25', '2024-05-11 14:07:25'),
(2, 'SUKA ROTI', '3602220060.jpg', 'JL.PERINTIS KEMERDEKAAN 1 NO.1 KAYU PUTI,KEC.OEBOBO KOTA KUPANG,NUSA TENGGARA TIMUR.', 'tes', '2024-05-11 14:10:35', '2024-05-11 14:35:40'),
(3, 'ANGELLO BAKERY', NULL, 'JL.JENDRAL SUDIRMAN NO.117A,KUANINO,KEC KOTA RAJA,KOTA\nKUPANG,NUSA TENGGARA TIMUR', NULL, '2024-05-11 14:54:09', '2024-05-11 14:54:09'),
(4, 'ROYAL BAKERY', NULL, 'JL.BUND.PU KELURAHAN NO.10,TUAK DAUN MERAH,KEC.OEBOBO,KOTA KUPANG,NUSA\nTENGGARA TIM.', NULL, '2024-05-11 14:54:09', '2024-05-11 14:54:09'),
(5, 'QUEEN ROTI\nLILIBA', NULL, 'JL.PIET A.TALLO,LILIBA,KEC.OEBOBO,KOTA\nKUPANG,NUSA TENGGARA TIMUR.', NULL, '2024-05-11 14:54:09', '2024-05-11 14:54:09'),
(6, 'SUKA ROTI BAKERY', NULL, 'JL.TIMOR RAYA NO.KM.10 N0.44,LASIANA,KEC.KLP.LIMA KOTA\nKUPANG,NUSA TENGGARA TIMUR.', NULL, '2024-05-11 14:54:09', '2024-05-11 14:54:09'),
(7, 'JOY BAKERY', NULL, 'RJ73+XPX,NAIKOLAN,KEC.MAULAFA,KOTA\nKUPANG,NUSA TENGGARA TIMUR.', NULL, '2024-05-11 14:54:09', '2024-05-11 14:54:09'),
(8, 'ANGELYN BAKERY', NULL, 'JL.TOMPELLO NO.23 B,OETETE,KEC.OEBOBO,KOTA KUPANG,NUSA\nTENGGARA TIMUR.', NULL, '2024-05-11 14:54:09', '2024-05-11 14:54:09'),
(9, 'ALETHA BAKERY', NULL, 'JL.THOM TOUSELAK,OEBUFU,KEC.OEBOBO,KOTA\nKUPANG,NUSA TENGGARA TIMUR.', NULL, '2024-05-11 14:54:09', '2024-05-11 14:54:09'),
(10, 'J.CO DONUTS & BERADTALK\nKUPANG', NULL, 'JL.W.J.LALAMENTIK,OEBUFU,OEBOBO,KUPANG CITY,EAST NUSA TENGGARA TIMUR', NULL, '2024-05-11 14:54:09', '2024-05-11 14:54:09'),
(11, 'SUKA ROTI-ANEKA\nROTI SEHAT', NULL, 'JL.MOCH HATTA,OETETE,KEC.OEBOBO,KOTA\nKUPANG,NUSA TENGGARA TIMUR.', NULL, '2024-05-11 14:54:09', '2024-05-11 14:54:09'),
(12, 'ROTI KAHANG\nJAYA', NULL, 'JL.PIET A.TALLO,LILIBA,KEC.OEBOBO,KOTA\nKUPANG NUSA TENGGARA TIMUR.', NULL, '2024-05-11 14:54:09', '2024-05-11 14:54:09'),
(13, 'SUKA ROTI\nBAKERY OESAPA', NULL, 'VM22+8J5,OESAPA,KEC KLP.LIMA,KOTA\nKUPANG,NUSA TENGGARA TIMUR.', NULL, '2024-05-11 14:54:09', '2024-05-11 14:54:09'),
(14, 'PARIS BAKERY', NULL, 'JL.TIMUR RAYA NO.KM.9,OESAPA,KEC.KLP.LIMA,KOTA\nKUPANG,NUSA TENGGARA TIMUR.', NULL, '2024-05-11 14:54:10', '2024-05-11 14:54:10'),
(15, 'ROTI AWET MUDA', NULL, 'JL.HEREWILA NO.3,NAIKOTEN II,KEC.KOTA\nRAJA,KOTA KUPANG NUSA TENGGARA TIMUR', NULL, '2024-05-11 14:54:10', '2024-05-11 14:54:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int NOT NULL,
  `id_role` int DEFAULT NULL,
  `id_active` int DEFAULT '2',
  `en_user` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` char(6) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci DEFAULT 'default.svg',
  `email` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(75) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP
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
  `id_access_menu` int NOT NULL,
  `id_role` int DEFAULT NULL,
  `id_menu` int DEFAULT NULL
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
  `id_access_sub_menu` int NOT NULL,
  `id_role` int DEFAULT NULL,
  `id_sub_menu` int DEFAULT NULL
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
  `id_menu` int NOT NULL,
  `menu` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  `id_role` int NOT NULL,
  `role` varchar(35) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  `id_status` int NOT NULL,
  `status` varchar(35) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  `id_sub_menu` int NOT NULL,
  `id_menu` int DEFAULT NULL,
  `id_active` int DEFAULT '2',
  `title` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `url` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL
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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `maps`
--
ALTER TABLE `maps`
  MODIFY `id_map` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id_tentang` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id_access_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `user_access_sub_menu`
--
ALTER TABLE `user_access_sub_menu`
  MODIFY `id_access_sub_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id_role` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_status`
--
ALTER TABLE `user_status`
  MODIFY `id_status` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id_sub_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
