-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 22 Jun 2024 pada 12.45
-- Versi server: 8.3.0
-- Versi PHP: 7.4.30

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
  `id_roti` int NOT NULL,
  `id_toko` int DEFAULT NULL,
  `jenis_roti` text COLLATE utf8mb4_general_ci,
  `harga` char(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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
  `jam_kerja_buka` time NOT NULL,
  `jam_kerja_tutup` time NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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
(15, 'ROTI AWET MUDA', '2801990627.jpg', 'JL.HEREWILA NO.3, NAIKOTEN II, KEC.KOTA RAJA, KOTA KUPANG, NUSA TENGGARA TIMUR', '&lt;p&gt;Lorem ipsum dolor, sit amet consectetur adipisicing elit. Cum, ea quis aperiam laboriosam, placeat ut nostrum maiores eaque laudantium obcaecati doloremque error sint iure rerum dolorem, repudiandae nam? Blanditiis nemo sint id fuga eum eaque eveniet, quibusdam maiores neque tenetur aliquam impedit veniam cumque quam, veritatis accusantium quas. Tempora facere tenetur delectus maiores eos numquam ducimus sunt neque nihil fugiat quibusdam vitae cupiditate, a dolorum tempore repudiandae quia! Repellendus, eum fugiat. Architecto error esse ipsa deserunt dolorem quis nobis iure fuga at doloremque, quaerat soluta sequi ipsum. Cupiditate vel ducimus inventore est, quibusdam natus, voluptates laborum optio sapiente nihil deserunt consequuntur illum? Non expedita totam dicta nulla hic, asperiores error quibusdam ipsum voluptate omnis quos ipsam ut praesentium et vitae laborum numquam. Autem tempore doloribus atque quasi mollitia ducimus quam corporis placeat itaque quos, eos ad sunt error, asperiores vero dolor eligendi nam laboriosam eveniet excepturi illum repellat? Hic magni quam ut repellat optio dolore possimus nesciunt officia. Eaque debitis a vitae explicabo distinctio porro velit veritatis blanditiis facilis accusantium vero quas voluptatum temporibus earum, sunt quis assumenda laborum ex unde totam. Modi, quasi vitae. Iste suscipit sequi iure vel nobis, laborum a maiores quidem doloribus officiis molestiae sed facere. Debitis at explicabo commodi, minima id esse quos quasi iste asperiores modi amet et a aperiam maxime rerum, obcaecati eum repudiandae libero eaque sunt sed cupiditate. Laudantium consequuntur ipsa exercitationem voluptas, fugiat nam, dolorem eum molestiae optio illo repellendus odio temporibus, mollitia ab deserunt! Nemo ipsam numquam obcaecati minima repellendus culpa totam deleniti dolorum porro commodi veritatis esse ullam iusto enim quos nisi aspernatur est, necessitatibus ducimus quas sit, omnis repudiandae corrupti hic. Incidunt ratione consequuntur at assumenda a perferendis iusto quis repellat aliquam error, sint iste iure fuga enim! Quibusdam minima quam voluptate explicabo. Sit commodi omnis eligendi pariatur placeat fugiat nihil veritatis quasi itaque quidem quisquam nesciunt repellat quo odit mollitia aspernatur, dolores illo magni dicta suscipit doloremque fuga ad. Suscipit ipsa impedit ipsum ipsam, cum quibusdam, accusamus iste rerum modi architecto possimus et harum? Reiciendis incidunt asperiores neque aliquam nostrum quam maxime laboriosam, rerum hic voluptatum unde id commodi magnam quod, in quo, est rem. Saepe aperiam voluptate asperiores, omnis vitae labore suscipit et quod est assumenda corrupti quas, enim eum, mollitia vero nobis? Ullam obcaecati nostrum odio, harum quaerat adipisci hic culpa facilis eius est rem porro voluptas animi voluptates distinctio architecto molestiae beatae perspiciatis! Voluptatibus harum praesentium dolore aspernatur id, beatae accusamus, fugit consequatur odio, temporibus non tempore. Nostrum asperiores voluptate tempore, vero molestiae ut illo cupiditate nisi dolore voluptatem obcaecati cumque, eos ea officia repellat architecto, laborum doloribus ipsam perspiciatis a? Atque fugiat facere nemo debitis eum asperiores quae, neque dicta numquam sequi deserunt mollitia iste amet nisi iure natus magni repudiandae alias aspernatur est harum modi cum? Minus praesentium ad eius recusandae dicta qui deserunt ex incidunt corporis repudiandae soluta facere itaque voluptatibus sint nisi sed amet iure animi excepturi tempore commodi velit, cum quod eum. Quibusdam consequatur tenetur enim soluta laboriosam earum dolorem quam rem consequuntur, quod quasi reprehenderit corporis fugiat saepe optio, dolorum facere quisquam eaque! Aliquam laboriosam, aut ad perspiciatis repudiandae tempore assumenda quia qui consequatur error ullam cum at omnis quam soluta minus nulla accusamus esse magnam cumque quo optio quas dolor! Earum accusamus fugit animi cumque accusantium ipsum dolore illo vel, explicabo eos unde ea reiciendis repellendus voluptates. Nobis hic eveniet soluta nulla autem quidem reiciendis cum quam sed possimus expedita facilis, nemo, quisquam asperiores, atque rerum veniam. Temporibus earum, quasi ex omnis, eum dolores voluptatibus ab vel in rem officia harum voluptates! Iusto accusantium, minima, exercitationem soluta aliquid rem fugit fuga dolore eius, non sapiente maiores esse. Quam eum quis facere doloremque atque inventore nesciunt consequuntur totam voluptas praesentium. Exercitationem quaerat iure sint tempore quidem dolorem tenetur ipsa ut accusantium nisi, maxime magni, id voluptatem iste neque sapiente? Minima id iure fugit! Laudantium quis vero sunt veritatis eius. Corporis sit cumque iste, quia incidunt, pariatur sint recusandae, blanditiis ratione ullam temporibus esse voluptate accusamus perspiciatis! Blanditiis quisquam sapiente laudantium, officia quam, nihil ad sint, minus excepturi aliquam earum atque necessitatibus corrupti tempora tenetur! Fugit velit fuga animi maiores sit dicta deserunt debitis, suscipit eveniet, blanditiis est. Nam voluptatibus omnis, eveniet cum tempora corporis minima quasi quae deserunt necessitatibus laborum doloremque molestias atque minus sit earum ex eos dolores. Maxime ratione reiciendis facere quae tempora fugiat optio tempore sequi odit unde velit inventore aspernatur ipsam minima deleniti tenetur, dignissimos quidem harum magni voluptatum rerum iure earum? Suscipit fuga voluptates culpa aperiam repudiandae corrupti! Ut nostrum explicabo distinctio assumenda praesentium ipsam quae, eum laudantium maxime neque odit aperiam dolorum omnis rerum minus quisquam obcaecati? Harum alias deserunt reiciendis excepturi libero delectus voluptas eveniet dolorem rerum accusamus ducimus nihil nemo ea eaque distinctio commodi sequi, expedita cupiditate, ab amet modi vel facilis aut. Aliquid alias quo enim laboriosam cumque repudiandae est inventore nemo corporis nesciunt officia, vitae suscipit repellendus laborum mollitia distinctio nisi reprehenderit corrupti consectetur unde praesentium? Assumenda esse illum et, voluptatem sit ea, iste delectus harum tempora voluptatibus dolorum nisi doloremque fuga vel ullam unde, molestias quaerat temporibus odit ab quos. Dolores doloribus, quibusdam incidunt iure neque deleniti sunt architecto quisquam accusantium necessitatibus dolore repudiandae in sequi perspiciatis asperiores similique cumque porro illum, nulla expedita atque. Accusantium cupiditate distinctio consequuntur reprehenderit nemo totam aperiam, quia dolorum, adipisci vitae et, quibusdam provident cumque praesentium dicta libero recusandae repudiandae vero rem? Inventore hic dolor alias sapiente laudantium cum facere quo delectus consectetur repellat ipsa voluptatem, modi earum qui autem maiores. Omnis nemo praesentium, ipsam fuga nihil quas hic nesciunt quo officia inventore molestiae doloremque distinctio vero facere illum, cum harum tempora. Repellat consectetur excepturi aperiam magni corrupti, culpa iusto eius quisquam omnis aut quam earum temporibus nulla. Ducimus amet nobis a error enim voluptatem minima possimus laborum saepe sit iure quo iusto omnis ullam deserunt ipsa quasi voluptas commodi dicta, quas eaque repellat tenetur expedita. Modi, sint exercitationem nesciunt eligendi consequatur, labore cumque possimus vero delectus id blanditiis a illum.&lt;/p&gt;\\r\\n', '08:00:00', '17:00:00', '2024-05-11 14:54:10', '2024-06-05 19:53:25');

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
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(13, 2, 7),
(15, 2, 9),
(16, 2, 10),
(17, 2, 11),
(19, 1, 13);

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
(9, 6, 1, 'Pemetaan Toko', 'pemetaan-toko', 'fas fa-map-marker-alt'),
(10, 6, 1, 'Maps', 'maps', 'fas fa-map-marked-alt'),
(11, 7, 1, 'Tentang', 'tentang', 'fas fa-list'),
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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `maps`
--
ALTER TABLE `maps`
  MODIFY `id_map` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `roti`
--
ALTER TABLE `roti`
  MODIFY `id_roti` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id_access_sub_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id_sub_menu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

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
