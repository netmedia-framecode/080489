-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 11 Jun 2024 pada 17.13
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
(7, 'IWAN SALU', 'IWAN@GMAIL.COM', '087567456654', 'COBA AJA', '2024-06-08 00:13:13', '2024-06-08 00:13:13'),
(8, 'NEANG', 'GANTENG@GMAIL.COM', '724293580201', 'JOY BAKERY KUENYA ENAK', '2024-06-08 00:15:16', '2024-06-08 00:15:16'),
(10, 'elma biu', 'elmacantik@gmail.com', '098765435543', 'tokko roti borneo rotinya enak tapi pelayanannya kurang bagus.', '2024-06-10 12:21:01', '2024-06-10 12:21:01');

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
(19, 1, '123.594196', '-10.176115', '2024-05-24 06:41:15', '2024-05-24 06:41:15'),
(20, 22, '123.58010', '-10.15839', '2024-06-07 19:30:17', '2024-06-07 19:30:17'),
(21, 21, '123.64249', '-10.15627', '2024-06-07 19:34:40', '2024-06-07 19:34:40'),
(22, 20, '123.64274', '-10.15676', '2024-06-07 19:36:16', '2024-06-07 19:36:16'),
(23, 19, '123.61053', '-10.15659', '2024-06-07 19:37:19', '2024-06-07 19:37:19'),
(24, 18, '123.62656', '-10.19791', '2024-06-07 19:38:29', '2024-06-07 19:38:29'),
(25, 17, '123.59168', '-10.15474', '2024-06-07 19:39:48', '2024-06-07 19:39:48'),
(26, 16, '123.60302', '-10.15124', '2024-06-07 19:41:06', '2024-06-07 19:41:06');

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
(6, 15, 'roti mikx mantega', '7000', '2024-06-07 08:00:21', '2024-06-07 08:00:21'),
(9, 14, 'Yummy roll cake,foret noire', '1000', '2024-06-07 10:59:53', '2024-06-07 10:59:53'),
(10, 14, 'roti balok', '6000', '2024-06-07 10:59:53', '2024-06-07 10:59:53'),
(11, 14, 'cup cake red', '1000', '2024-06-07 10:59:53', '2024-06-07 10:59:53'),
(12, 14, 'blue velvet with', '1000', '2024-06-07 10:59:53', '2024-06-07 10:59:53'),
(13, 14, 'macaroon rasa buah naga', '25000', '2024-06-07 10:59:53', '2024-06-07 10:59:53'),
(14, 13, 'Roti bakar keju', '1000', '2024-06-07 11:07:39', '2024-06-07 11:07:39'),
(15, 13, 'air mineral dan roti kering', '15000', '2024-06-07 11:07:39', '2024-06-07 11:07:39'),
(16, 13, 'donutsbrown sugar.', '25000', '2024-06-07 11:07:39', '2024-06-07 11:07:39'),
(17, 13, 'red valvet', '1000', '2024-06-07 11:07:39', '2024-06-07 11:07:39'),
(18, 13, 'ice vanilla chocolate', '5000', '2024-06-07 11:07:39', '2024-06-07 11:07:39'),
(19, 12, 'Roti babi manis', '10000', '2024-06-07 11:14:01', '2024-06-07 11:14:01'),
(20, 12, 'roti babi pedas', '10000', '2024-06-07 11:14:01', '2024-06-07 11:14:01'),
(21, 11, 'Kue ulang tahun', '50000', '2024-06-07 11:25:16', '2024-06-07 11:25:16'),
(22, 11, 'donat', '1000', '2024-06-07 11:25:16', '2024-06-07 11:25:16'),
(23, 11, 'Japanese ramen ice cream', '10000', '2024-06-07 11:25:16', '2024-06-07 11:25:16'),
(24, 11, 'aneka donat,', '1000', '2024-06-07 11:25:16', '2024-06-07 11:25:16'),
(25, 11, 'roti tawar', '2000', '2024-06-07 11:25:16', '2024-06-07 11:25:16'),
(26, 11, ',new roti coklat cis', '5000', '2024-06-07 11:25:16', '2024-06-07 11:25:16'),
(27, 11, 'abon roti', '1000', '2024-06-07 11:25:16', '2024-06-07 11:25:16'),
(28, 10, ',donat avocado', '9000', '2024-06-07 11:32:25', '2024-06-07 11:32:25'),
(29, 10, 'donat black jack donat blue', '9000', '2024-06-07 11:32:25', '2024-06-07 11:32:25'),
(30, 10, 'coco loco', '1000', '2024-06-07 11:32:25', '2024-06-07 11:32:25'),
(31, 10, ' heaven bery', '5000', '2024-06-07 11:32:25', '2024-06-07 11:32:25'),
(32, 10, 'green tea', '1500', '2024-06-07 11:32:25', '2024-06-07 11:32:25'),
(33, 10, 'snow white,', '15000', '2024-06-07 11:32:25', '2024-06-07 11:32:25'),
(34, 10, 'kue ulang tahun', '25000', '2024-06-07 11:32:25', '2024-06-07 11:32:25'),
(35, 10, 'donat mr mokacha', '1000', '2024-06-07 11:32:25', '2024-06-07 11:32:25'),
(36, 9, 'kue ulang tahun dengan berbagai jenis', '50000', '2024-06-07 11:35:31', '2024-06-07 11:35:31'),
(37, 9, 'kue pernikahan dengan berbagai jenis', '100000', '2024-06-07 11:35:31', '2024-06-07 11:35:31'),
(38, 8, 'Roti bulu', '1000', '2024-06-07 11:44:15', '2024-06-07 11:44:15'),
(39, 8, 'pizza,roti boi', '25000', '2024-06-07 11:44:15', '2024-06-07 11:44:15'),
(40, 8, 'roti manis', '1000', '2024-06-07 11:44:15', '2024-06-07 11:44:15'),
(41, 8, ',donat', '1000', '2024-06-07 11:44:15', '2024-06-07 11:44:15'),
(42, 8, 'kue kering', '1000', '2024-06-07 11:44:15', '2024-06-07 11:44:15'),
(43, 8, 'kue tart seperti black forest dan pudding', '15000', '2024-06-07 11:44:15', '2024-06-07 11:44:15'),
(44, 8, 'kue ulang tahun', '25000', '2024-06-07 11:44:15', '2024-06-07 11:44:15'),
(45, 7, 'Sosis picha', '17000', '2024-06-07 11:50:27', '2024-06-07 11:50:27'),
(46, 7, 'roti pisang coklat, pisang keju,& pisang coklat keju', '16000', '2024-06-07 11:50:27', '2024-06-07 11:50:27'),
(47, 7, 'coklay mesis', '8000', '2024-06-07 11:50:27', '2024-06-07 11:50:27'),
(48, 7, 'roti picah pisang', '9500', '2024-06-07 11:50:27', '2024-06-07 11:50:27'),
(49, 7, 'roti abon', '17000', '2024-06-07 11:50:27', '2024-06-07 11:50:27'),
(50, 6, 'Roti manis', '3000', '2024-06-07 11:58:13', '2024-06-07 11:58:13'),
(51, 6, 'roti balok', '3000', '2024-06-07 11:58:13', '2024-06-07 11:58:13'),
(52, 6, 'roti tawar', '5000', '2024-06-07 11:58:13', '2024-06-07 11:58:13'),
(53, 6, 'glato cup small dengan berbagai rasa', '25000', '2024-06-07 11:58:13', '2024-06-07 11:58:13'),
(54, 6, 'cone glato', '10000', '2024-06-07 11:58:13', '2024-06-07 11:58:13'),
(55, 6, 'cone 2 rasa dan cone 3 rasa', '25000', '2024-06-07 11:58:13', '2024-06-07 11:58:13'),
(56, 5, 'Aneka donat', '1000', '2024-06-07 12:04:18', '2024-06-07 12:04:18'),
(57, 5, 'roti babi manis', '15000', '2024-06-07 12:04:18', '2024-06-07 12:04:18'),
(58, 5, 'roti balok', '5000', '2024-06-07 12:04:18', '2024-06-07 12:04:18'),
(59, 5, 'roti pizza', '10000', '2024-06-07 12:04:18', '2024-06-07 12:04:18'),
(60, 5, 'roti babi pedis', '25000', '2024-06-07 12:04:18', '2024-06-07 12:04:18'),
(61, 5, 'bakpau babi', '25000', '2024-06-07 12:04:18', '2024-06-07 12:04:18'),
(62, 5, 'roti keju', '17000', '2024-06-07 12:04:18', '2024-06-07 12:04:18'),
(63, 4, 'kue kering', '25000', '2024-06-07 12:09:57', '2024-06-07 12:09:57'),
(64, 4, 'kue donat', '1000', '2024-06-07 12:09:57', '2024-06-07 12:09:57'),
(65, 4, 'pai manis', '5000', '2024-06-07 12:09:57', '2024-06-07 12:09:57'),
(66, 4, 'kue lapis', '7000', '2024-06-07 12:09:57', '2024-06-07 12:09:57'),
(67, 4, 'pudding dan kue sus terenak', '18000', '2024-06-07 12:09:57', '2024-06-07 12:09:57'),
(68, 4, 'kue ulang tahun', '25000', '2024-06-07 12:09:57', '2024-06-07 12:09:57'),
(69, 3, 'roti tawar balok', '12500', '2024-06-07 12:15:20', '2024-06-07 12:15:20'),
(70, 3, 'roti manis', '12500', '2024-06-07 12:15:20', '2024-06-07 12:15:20'),
(71, 3, 'roti kasur', '15000', '2024-06-07 12:15:20', '2024-06-07 12:15:20'),
(72, 3, 'roti hokaido', '11000', '2024-06-07 12:15:20', '2024-06-07 12:15:20'),
(73, 3, 'roti kepang', '7000', '2024-06-07 12:15:20', '2024-06-07 12:15:20'),
(74, 3, 'roti koko', '6500', '2024-06-07 12:15:20', '2024-06-07 12:15:20'),
(75, 3, 'roti stic', '10000', '2024-06-07 12:15:20', '2024-06-07 12:15:20'),
(76, 3, 'roti manis isi', '12500', '2024-06-07 12:15:20', '2024-06-07 12:15:20'),
(77, 3, 'roti matahari', '9000', '2024-06-07 12:15:20', '2024-06-07 12:15:20'),
(78, 2, 'Roti abon', '13000', '2024-06-07 12:21:18', '2024-06-07 12:21:18'),
(79, 2, 'roti kelapa', '25000', '2024-06-07 12:21:24', '2024-06-07 12:21:24'),
(80, 2, 'aneka donat', '15000', '2024-06-07 12:21:24', '2024-06-07 12:21:24'),
(81, 2, 'roti tawar', '17000', '2024-06-07 12:21:24', '2024-06-07 12:21:24'),
(82, 2, 'roti new coklat cis roti picah', '20000', '2024-06-07 12:21:24', '2024-06-07 12:21:24'),
(83, 2, 'roti abon', '5000', '2024-06-07 12:21:24', '2024-06-07 12:21:24'),
(84, 2, 'roti bulu', '3000', '2024-06-07 12:21:24', '2024-06-07 12:21:24'),
(85, 2, 'roti sisir', '5000', '2024-06-07 12:21:24', '2024-06-07 12:21:24'),
(86, 1, 'roti kelapa', '23000', '2024-06-07 12:27:08', '2024-06-07 12:27:08'),
(87, 1, 'donat', '11000', '2024-06-07 12:27:08', '2024-06-07 12:27:08'),
(88, 1, 'kue ulang tahun', '25000', '2024-06-07 12:27:08', '2024-06-07 12:27:08'),
(89, 1, 'roti coklat', '11000', '2024-06-07 12:27:08', '2024-06-07 12:27:08'),
(90, 1, 'roti sus', '17000', '2024-06-07 12:27:08', '2024-06-07 12:27:08'),
(91, 1, 'risoles ayam jagung', '21000', '2024-06-07 12:27:08', '2024-06-07 12:27:08'),
(92, 1, 'lopis kukus borneo', '18000', '2024-06-07 12:27:08', '2024-06-07 12:27:08'),
(93, 1, 'kroket ayam,kroket kacang', '23000', '2024-06-07 12:27:08', '2024-06-07 12:27:08'),
(94, 1, 'cheesecake', '19000', '2024-06-07 12:27:08', '2024-06-07 12:27:08'),
(95, 15, 'roti kasur', '14000', '2024-06-07 12:32:44', '2024-06-07 12:32:44'),
(96, 15, 'roti coklat pisang', '6000', '2024-06-07 12:32:44', '2024-06-07 12:32:44'),
(97, 15, 'roti matahaari', '20000', '2024-06-07 12:32:44', '2024-06-07 12:32:44'),
(98, 15, 'sosis picah', '19000', '2024-06-07 12:32:44', '2024-06-07 12:32:44'),
(99, 15, 'roti new coklat', '12000', '2024-06-07 12:32:44', '2024-06-07 12:32:44'),
(100, 22, 'roti tawar ubi unggu', '25000', '2024-06-07 18:52:39', '2024-06-07 18:52:39'),
(101, 22, 'roti tawar kukus', '15000', '2024-06-07 18:52:39', '2024-06-07 18:52:39'),
(102, 22, 'roti tawar selimut coklat', '5000', '2024-06-07 18:52:39', '2024-06-07 18:52:39'),
(103, 22, 'roti gulung isi sosis', '25000', '2024-06-07 18:52:39', '2024-06-07 18:52:39'),
(104, 22, 'roti gandum madu', '15000', '2024-06-07 18:52:39', '2024-06-07 18:52:39'),
(105, 22, 'puding roti tawar', '25000', '2024-06-07 18:52:39', '2024-06-07 18:52:39'),
(106, 22, 'cromboloni roti tawar', '17000', '2024-06-07 18:52:39', '2024-06-07 18:52:39'),
(107, 21, 'roti kelapa', '15000', '2024-06-07 18:56:47', '2024-06-07 18:56:47'),
(108, 21, 'donat', '1000', '2024-06-07 18:56:47', '2024-06-07 18:56:47'),
(109, 21, 'kue ulang tahun', '50000', '2024-06-07 18:56:47', '2024-06-07 18:56:47'),
(110, 21, 'roti coklat', '25000', '2024-06-07 18:56:47', '2024-06-07 18:56:47'),
(111, 21, 'roti sus', '25000', '2024-06-07 18:56:47', '2024-06-07 18:56:47'),
(112, 21, 'risolis ayam jagung', '11000', '2024-06-07 18:56:47', '2024-06-07 18:56:47'),
(113, 21, 'lopis kukus borneo', '17000', '2024-06-07 18:56:47', '2024-06-07 18:56:47'),
(114, 21, 'kroket ayam,kroket kacang', '20000', '2024-06-07 18:56:47', '2024-06-07 18:56:47'),
(115, 21, 'cheesecake', '5000', '2024-06-07 18:56:47', '2024-06-07 18:56:47'),
(116, 20, 'roti abon', '5000', '2024-06-07 19:00:28', '2024-06-07 19:00:28'),
(117, 20, 'burger original', '25000', '2024-06-07 19:00:28', '2024-06-07 19:00:28'),
(118, 20, 'roti kelapa', '15000', '2024-06-07 19:00:28', '2024-06-07 19:00:28'),
(119, 20, 'aneka donat', '5000', '2024-06-07 19:00:28', '2024-06-07 19:00:28'),
(120, 20, 'roti tawar', '15000', '2024-06-07 19:00:28', '2024-06-07 19:00:28'),
(121, 20, 'roti new coklat cis,roti picah', '25000', '2024-06-07 19:00:28', '2024-06-07 19:00:28'),
(122, 20, 'kue ulang tahun', '50000', '2024-06-07 19:00:28', '2024-06-07 19:00:28'),
(123, 19, 'roti pisang coklat', '5000', '2024-06-07 19:02:37', '2024-06-07 19:02:37'),
(124, 19, 'roti manis', '11000', '2024-06-07 19:02:37', '2024-06-07 19:02:37'),
(125, 19, 'roti tawar', '11000', '2024-06-07 19:02:37', '2024-06-07 19:02:37'),
(126, 19, 'donat', '5000', '2024-06-07 19:02:37', '2024-06-07 19:02:37'),
(127, 19, 'kue ulang tahun', '50000', '2024-06-07 19:02:37', '2024-06-07 19:02:37'),
(128, 18, 'kue ulang tahun,dengan berbagai krakter dan ukuran aneka kue', '100000', '2024-06-07 19:06:49', '2024-06-07 19:06:49'),
(129, 18, 'roti manis', '15000', '2024-06-07 19:06:49', '2024-06-07 19:06:49'),
(130, 18, 'roti mimi', '1000', '2024-06-07 19:06:49', '2024-06-07 19:06:49'),
(131, 18, 'roti bantal pizza mexciko coklat keju', '15000', '2024-06-07 19:06:49', '2024-06-07 19:06:49'),
(132, 18, 'cake mini', '1000', '2024-06-07 19:06:49', '2024-06-07 19:06:49'),
(133, 17, 'roti manis', '5000', '2024-06-07 19:11:07', '2024-06-07 19:11:07'),
(134, 17, 'roti tawar', '5000', '2024-06-07 19:11:07', '2024-06-07 19:11:07'),
(135, 17, 'roti balok', '5000', '2024-06-07 19:11:07', '2024-06-07 19:11:07'),
(136, 17, 'glato cup small dengan berbagai rasa', '40000', '2024-06-07 19:11:07', '2024-06-07 19:11:07'),
(137, 17, 'cone glato', '5000', '2024-06-07 19:11:07', '2024-06-07 19:11:07'),
(138, 17, 'cone 2 rasa & 3 rasa', '5000', '2024-06-07 19:11:07', '2024-06-07 19:11:07'),
(139, 16, 'brown bread(roti gandum)', '5000', '2024-06-07 19:15:49', '2024-06-07 19:15:49'),
(140, 16, 'white bread(roti puti biasa)', '5000', '2024-06-07 19:15:49', '2024-06-07 19:15:49'),
(141, 16, 'sada bread', '25000', '2024-06-07 19:15:49', '2024-06-07 19:15:49'),
(142, 16, 'rye bread', '25000', '2024-06-07 19:15:49', '2024-06-07 19:15:49'),
(143, 16, 'donat', '5000', '2024-06-07 19:15:49', '2024-06-07 19:15:49'),
(144, 16, 'roti kepang', '7000', '2024-06-07 19:15:49', '2024-06-07 19:15:49'),
(145, 16, 'roti kasur', '17000', '2024-06-07 19:15:49', '2024-06-07 19:15:49'),
(146, 16, 'roti manis', '8000', '2024-06-07 19:15:49', '2024-06-07 19:15:49'),
(147, 16, 'roti tawar', '9000', '2024-06-07 19:15:49', '2024-06-07 19:15:49'),
(148, 16, 'roti gandum isi keju', '25000', '2024-06-07 19:15:49', '2024-06-07 19:15:49');

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
(1, 'TOKO ROTI BORNEO', '772533361.jpg', 'JL.JENDRAL SUDIRMAN NO.129, KUANINO, KEC.KOTA RAJA, KOTA KUPANG, NUSA TENGGARA TIMUR', 'Salah satu cabang bakery kebanggan orang kupang.pilihan roti juga lengkap,bahkan kue-kue tradisional juga banyak pilihan.', '09:00:00', '21:00:00', '2024-05-11 14:07:25', '2024-06-07 13:36:50'),
(2, 'SUKA ROTI', '3602220060.jpg', 'JL.PERINTIS KEMERDEKAAN 1 NO.1 KAYU PUTI, KEC.OEBOBO KOTA KUPANG, NUSA TENGGARA TIMUR', 'Tidak kalah dengan roti lain.rotinya fresh dan empuk,cocok untuk ngemil.tempatnya luas,bias nongkrong bareng teman atau sekedar ngopi buat nemanin kerjaan.', '07:30:00', '22:00:00', '2024-05-11 14:10:35', '2024-06-07 14:21:36'),
(3, 'ANGELLO BAKERY', '4223311878.jpg', 'JL.JENDRAL SUDIRMAN NO.117A, KUANINO, KEC KOTA RAJA, KOTA KUPANG, NUSA TENGGARA TIMUR', 'Angello bakery menawarkan roti-roti dengan harga terjangkau dan rasa khas serta berkualitas.', '07:30:00', '20:30:00', '2024-05-11 14:54:09', '2024-06-07 12:11:29'),
(4, 'ROYAL BAKERY', '276103660.jpg', 'JL.BUND.PU KELURAHAN NO.10,TUAK DAUN MERAH,KEC.OEBOBO,KOTA KUPANG,NUSATENGGARA TIM.', 'Royal bakery adalah salah satu took roti faforit kupang yang menawarkan beberapa kue atau roti.', '07:00:00', '22:00:00', '2024-05-11 14:54:09', '2024-06-07 12:05:47'),
(5, 'QUEEN ROTI LILIBA', '482227265.jpg', 'JL.PIET A.TALLO, LILIBA, KEC.OEBOBO, KOTA KUPANG, NUSA TENGGARA TIMUR', 'Quen roti liliba took roti yang berada dililiba yang sudah banyak dikenal oleh masyarakat kota kupang,NTT.', '00:00:00', '12:00:00', '2024-05-11 14:54:09', '2024-06-07 14:21:11'),
(6, 'SUKA ROTI BAKERY', '2231924521.jpg', 'JL.TIMOR RAYA NO.KM.10 N0.44, LASIANA, KEC.KLP.LIMA KOTA KUPANG, NUSA TENGGARA TIMUR.', 'suka roti bakery merupakan salah satu took roti/bakery dikota kupang.toko ini menjual berbbagi jenis roti.', '08:00:00', '20:00:00', '2024-05-11 14:54:09', '2024-06-07 11:52:05'),
(7, 'JOY BAKERY', '2289166706.jpg', 'RJ73+XPX, NAIKOLAN, KEC.MAULAFA, KOTA KUPANG, NUSA TENGGARA TIMUR', 'Joy bakery merupakan salah satu took roti/bakery dikota kupang.toko ini menjual berbagai jenis roti.\\\\r\\\\nJoy bakery menawarkan roti-roti dengan harga terjangkau dan rasa khas serta berkualitas.', '08:00:00', '21:00:00', '2024-05-11 14:54:09', '2024-06-07 18:40:08'),
(8, 'ANGELYN BAKERY', '3375888800.jpg', 'JL.TOMPELLO NO.23 B, OETETE, KEC.OEBOBO, KOTA KUPANG, NUSA TENGGARA TIMUR', 'Penjualan eceran ditoko yang tidak khusus dengan makanan,minuman atau dominan tembakau,took roti.', '07:00:00', '21:00:00', '2024-05-11 14:54:09', '2024-06-07 11:40:10'),
(9, 'ALETHA BAKERY', '611354224.jpg', 'JL.THOM TOUSELAK, OEBUFU, KEC.OEBOBO, KOTA KUPANG, NUSA TENGGARA TIMUR', 'Aletha bakery menawarkan kue ulang tahun dan kue pernikahan dengan berbagai jenis.', '09:00:00', '12:00:00', '2024-05-11 14:54:09', '2024-06-07 11:33:51'),
(10, 'J.CO DONUTS DAN BERTALK KUPANG', '885557812.jpg', 'JL.W.J.LALAMENTIK, OEBUFU, OEBOBO, KUPANG CITY, EAST NUSA TENGGARA TIMUR', 'J.CO DONUTS &amp; BERADTALK KUPANG adalah salah satu toko roti yang memiliki citra rasa dan tekstur yang tak ditemukan pada merek donat lainnya.dan harganya terjangkau.', '10:00:00', '22:00:00', '2024-05-11 14:54:09', '2024-06-07 11:26:50'),
(11, 'SUKA ROTI-ANEKA ROTI SEHAT', '2866511154.jpg', 'JL.MOCH HATTA, OETETE, KEC.OEBOBO, KOTA KUPANG, NUSA TENGGARA TIMUR', 'Suka roti kuanino menawarkan roti2 dengan  harga terjangkau dan rasa khas serta berkualitas dan memiliki cita rasa tersendiri.', '08:00:00', '21:00:00', '2024-05-11 14:54:09', '2024-06-07 11:20:26'),
(12, 'ROTI KAHANG JAYA', '1104221670.jpg', 'JL.PIET A.TALLO, LILIBA, KEC.OEBOBO, KOTA KUPANG, NUSA TENGGARA TIMUR', 'Roti kahang jaya merupakan salah satu toko roti/bakery dikota kupang.toko ini menjual berbagai jenis roti.roti kahang jaya juga menawarkan roti-roti dengan harga yang terjangkau dan rasa khas serta berkualitas.', '08:00:00', '21:00:00', '2024-05-11 14:54:09', '2024-06-07 14:20:14'),
(13, 'SUKA ROTI BAKERY OESAPA', '912053900.jpg', 'VM22+8J5, OESAPA, KEC KLP.LIMA, KOTA KUPANG, NUSA TENGGARA TIMUR.', 'Suka roti oesapa bakery oesapa menawarkan roti-roti dengan harga terjangkau dan rasa khas serta berkualitas.', '08:30:00', '21:00:00', '2024-05-11 14:54:09', '2024-06-07 11:08:50'),
(14, 'PARIS BAKERY', '286369527.jpg', 'JL.TIMUR RAYA NO.KM.9, OESAPA, KEC.KLP.LIMA, KOTA KUPANG, NUSA TENGGARA TIMUR', 'Paris bakery merupakan salah satu toko roti/bakery dikota kupang.toko ini menjual berbagai jenis roti.roti paris bakery juga menawarkan roti-roti dengan harga yang terjangkau dan rasa khas serta berkualitas.', '07:00:00', '21:00:00', '2024-05-11 14:54:10', '2024-06-07 14:19:57'),
(15, 'ROTI AWET MUDA', '2801990627.jpg', 'JL.HEREWILA NO.3, NAIKOTEN II, KEC.KOTA RAJA, KOTA KUPANG, NUSA TENGGARA TIMUR', 'Roti awet muda merupakan salah satu toko roti/bakery dikota kupang.toko ini menjual berbagai jenis roti serta memiliki harga yang terjangkau.', '07:00:00', '21:00:00', '2024-05-11 14:54:10', '2024-06-07 18:39:48'),
(16, 'suka roti pasir panjang', '1360303508.jpg', 'RJX3+F68, Pasir Panjang, Kec. Kota Lama, Kota Kupang, Nusa Tenggara Tim.', 'Suka roti pasir panjang menjual berbagai aneka roti,cake dan minuman harganya juga sangat terjangkau.tempatnya cocok untuk ngumpul sama teman.ngerjaiin tugas atau pekerjaan.staff rumah.view pantai.toiletnya beris.', '08:00:00', '21:00:00', '2024-06-07 18:36:50', '2024-06-07 18:39:34'),
(17, 'Suka roti Oeba', '1855520684.jpg', 'Jl.A.Yani oeba,kec.kota lama,kota,NTT', 'Took suka roti menawarkan roti sehat kepada para pembeli maksudnya semua roti yang kami jual tidak menggunakan bahan pengawet.rotinya hanya bias bertahan dua hari.setelah lewat dari dua hari pasti jamuran.', '07:30:00', '22:00:00', '2024-06-07 18:37:46', '2024-06-07 18:39:11'),
(18, 'ROTI SULUNG BTN', '2422894242.jpg', 'RJ2G+PJR, Jl. Fetor Funay, Kolhua, Kec. Maulafa, Kota Kupang, Nusa Tenggara Tim.', 'Roti sulung BTN merupakan salah satu toko roti/bakery dikota kupang.toko ini menjual berbagai roti.roti sulung btn menawarkan roti-roti dengn harga terjangkau dan rasa khas serta berkualitas.', '07:00:00', '20:30:00', '2024-06-07 18:38:54', '2024-06-07 18:38:54'),
(19, 'Suka roti fatululli', '3042042880.jpg', 'RJV6+76J, Fatululi, Kec. Oebobo, Kota Kupang, Nusa Tenggara Tim.', 'Toko roti berkonsep co working space yang menyediakan roti dan kue dengan rasa nikmat,dan harganya juga sangat terjangkau.Tempatnya nyaman dan oke.', '07:30:00', '22:00:00', '2024-06-07 18:40:47', '2024-06-07 18:40:47'),
(20, 'SUKA ROTI LILIBA', '2510743940.jpg', 'RJVV+53Q, Oesapa Sel., Kec. Klp. Lima, Kota Kupang, Nusa Tenggara Tim.', 'Suka roti liliba menawarkan roti2 dengan  harga terjangkau dan rasa khas serta berkualitas dan memiliki cita rasa tersendiri.', '07:30:00', '22:00:00', '2024-06-07 18:41:23', '2024-06-07 18:41:23'),
(21, 'Borneo Bakery Liliba Branch', '2696112538.jpg', 'Jl. Piet A. Tallo No.22, Oesapa Sel., Kec. Klp. Lima, Kota Kupang, Nusa Tenggara Tim. 85228', 'Salah satu cabang bakery kebanggan orang kupang.pilihan roti juga lengkap,bahkan kue-kue tradisional juga banyak pilihan.', '08:00:00', '22:00:00', '2024-06-07 18:41:51', '2024-06-07 18:41:51'),
(22, 'suka roti kam. solor', '4043855773.jpeg', 'RHRJ+C2M, Solor, Kec. Kota Lama, Kota Kupang, Nusa Tenggara Timr', 'Salah satu cabang suka roti yang menjual berbagai jenis roti dengan harga yang terjangkau.tempatnya nyaman buat nongkrong makan roti dan minum kopi sambal menikmati suasana pantai apalagi pas sunset mantap banget.', '09:30:00', '23:00:00', '2024-06-07 18:42:24', '2024-06-07 18:42:24');

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
(15, 2, 9),
(16, 2, 10),
(17, 2, 11),
(18, 2, 12),
(19, 1, 13),
(20, 2, 13);

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
(12, 7, 1, 'Kontak', 'kontak', 'fas fa-address-book'),
(13, 5, 1, 'Roti', 'roti', 'fas fa-cookie');

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
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `kontak`
--
ALTER TABLE `kontak`
  MODIFY `id_kontak` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `maps`
--
ALTER TABLE `maps`
  MODIFY `id_map` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `roti`
--
ALTER TABLE `roti`
  MODIFY `id_roti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT untuk tabel `tentang`
--
ALTER TABLE `tentang`
  MODIFY `id_tentang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id_access_sub_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id_sub_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
