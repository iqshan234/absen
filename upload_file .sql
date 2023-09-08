-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Sep 2023 pada 05.57
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upload_file`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ashar`
--

CREATE TABLE `ashar` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `time_scan` varchar(255) NOT NULL,
  `TIMEOUT` varchar(255) NOT NULL,
  `LOGDATE` varchar(255) NOT NULL,
  `shalat` varchar(255) NOT NULL,
  `STATUS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dzuhur`
--

CREATE TABLE `dzuhur` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `time_scan` varchar(255) NOT NULL,
  `TIMEOUT` varchar(255) NOT NULL,
  `LOGDATE` varchar(255) NOT NULL,
  `shalat` varchar(255) NOT NULL,
  `STATUS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `fail`
--

CREATE TABLE `fail` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `approve` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `image_createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `gambar`, `image_createtime`) VALUES
(87, 'cak1.jpg', '2023-06-27 06:57:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar1`
--

CREATE TABLE `gambar1` (
  `id_gambar` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `image_createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar2`
--

CREATE TABLE `gambar2` (
  `id_gambar` int(11) NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `image_createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `gambar2`
--

INSERT INTO `gambar2` (`id_gambar`, `gambar`, `image_createtime`) VALUES
(244, 'gambar22-1688522972.jpg', '2023-07-05 04:09:32');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar3`
--

CREATE TABLE `gambar3` (
  `id_gambar` int(11) NOT NULL,
  `gambar` varchar(1000) NOT NULL,
  `image_createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar4`
--

CREATE TABLE `gambar4` (
  `id_gambar` int(11) NOT NULL,
  `gambar` varchar(1000) NOT NULL,
  `image_createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ijin`
--

CREATE TABLE `ijin` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `dzuhur` varchar(11) NOT NULL,
  `ashar` varchar(11) NOT NULL,
  `checkbox1` varchar(11) NOT NULL,
  `checkbox2` varchar(11) NOT NULL,
  `checkbox3` varchar(11) NOT NULL,
  `checkbox4` varchar(11) NOT NULL,
  `checkbox5` varchar(11) NOT NULL,
  `checkbox6` varchar(11) NOT NULL,
  `time_scan` varchar(255) NOT NULL,
  `LOGDATE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ijin`
--

INSERT INTO `ijin` (`id`, `nama`, `dzuhur`, `ashar`, `checkbox1`, `checkbox2`, `checkbox3`, `checkbox4`, `checkbox5`, `checkbox6`, `time_scan`, `LOGDATE`) VALUES
(8, 'Anang Kurniawan', '√', 'X', 'X', 'X', 'X', '√', 'X', '√', '10:52:53', '2023-09-08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `multiple-images`
--

CREATE TABLE `multiple-images` (
  `image_id` int(11) NOT NULL,
  `image_name` varchar(100) NOT NULL,
  `image_status` varchar(20) NOT NULL DEFAULT 'Enable',
  `image_createtime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `multiple-images`
--

INSERT INTO `multiple-images` (`image_id`, `image_name`, `image_status`, `image_createtime`) VALUES
(13, 'desain1-1684130016.png', 'Enable', '2023-05-15 07:53:36'),
(14, 'desain.png', 'Enable', '2023-05-15 07:53:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `qr_codes`
--

CREATE TABLE `qr_codes` (
  `id` int(11) NOT NULL,
  `uuid` varchar(1000) NOT NULL,
  `produk` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `scan`
--

CREATE TABLE `scan` (
  `id` int(11) NOT NULL,
  `uuid` varchar(100) NOT NULL,
  `time_scan` varchar(100) NOT NULL,
  `TIMEOUT` varchar(255) NOT NULL,
  `LOGDATE` varchar(255) NOT NULL,
  `STATUS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `scan`
--

INSERT INTO `scan` (`id`, `uuid`, `time_scan`, `TIMEOUT`, `LOGDATE`, `STATUS`) VALUES
(20, 'Mochammad Iqshan Augustino', '10:12:40', '', '2023-09-06', 'Invalid');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_attendance`
--

CREATE TABLE `table_attendance` (
  `id` int(11) NOT NULL,
  `uuid` varchar(100) NOT NULL,
  `time_scan` varchar(255) NOT NULL,
  `TIMEOUT` varchar(255) NOT NULL,
  `LOGDATE` varchar(250) NOT NULL,
  `STATUS` varchar(250) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `unique` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `table_attendance`
--

INSERT INTO `table_attendance` (`id`, `uuid`, `time_scan`, `TIMEOUT`, `LOGDATE`, `STATUS`, `product_id`, `unique`) VALUES
(64, '{\"uuid\":\"4c2ad73b-0eb9-4b96-a6ca-4b3ec4192dd4\", \"produk\":\"Black Series 0.25 gr\"}', '10:31:03', '10:31:32', '2023-08-07', 'Valid', '', ''),
(65, '{\"uuid\":\"061a5ac1-6d39-4ddd-9f97-0a32a68c4eb0\", \"produk\":\"Black Series 0.25 gr\"}', '10:32:23', '10:32:29', '2023-08-07', 'Valid', '', ''),
(66, '{\"uuid\":\"01874981-bd66-48c0-91d9-3cf778ab50af\", \"produk\":\"Black Series 0.25 gr\"}', '10:32:50', '10:32:58', '2023-08-07', 'Valid', '', ''),
(67, '{\"uuid\":\"2c414293-6282-4407-a7cb-cf32121c9a82\", \"produk\":\"Black Series 0.25 gr\"}', '10:33:05', '10:33:10', '2023-08-07', 'Valid', '', ''),
(68, '{\"uuid\":\"b2841d80-e13d-4214-affc-2f711dd9b525\", \"produk\":\"Black Series 0.25 gr\"}', '10:33:15', '10:33:18', '2023-08-07', 'Valid', '', ''),
(69, '{\"uuid\":\"382c3016-10db-4852-a4b4-ce6958ebc0bf\", \"produk\":\"Black Series 0.25 gr\"}', '10:33:23', '10:33:26', '2023-08-07', 'Valid', '', ''),
(70, '{\"uuid\":\"651cab79-d52a-4a05-a737-5741ebc3c909\", \"produk\":\"Black Series 0.25 gr\"}', '10:33:32', '10:33:35', '2023-08-07', 'Valid', '', ''),
(71, '{\"uuid\":\"118666cf-49f3-4f87-af43-78fedd398760\", \"produk\":\"Black Series 0.25 gr\"}', '10:33:42', '10:33:47', '2023-08-07', 'Valid', '', ''),
(103, 'iqshan', '09:17:16', '', '2023-09-06', 'Invalid', '', ''),
(104, '23456789', '09:17:20', '', '2023-09-06', 'Invalid', '', ''),
(105, 'Mochammad Iqshan Augustino', '09:17:29', '', '2023-09-06', 'Invalid', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ashar`
--
ALTER TABLE `ashar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dzuhur`
--
ALTER TABLE `dzuhur`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `fail`
--
ALTER TABLE `fail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indeks untuk tabel `gambar1`
--
ALTER TABLE `gambar1`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indeks untuk tabel `gambar2`
--
ALTER TABLE `gambar2`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indeks untuk tabel `gambar3`
--
ALTER TABLE `gambar3`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indeks untuk tabel `gambar4`
--
ALTER TABLE `gambar4`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indeks untuk tabel `ijin`
--
ALTER TABLE `ijin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `multiple-images`
--
ALTER TABLE `multiple-images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indeks untuk tabel `qr_codes`
--
ALTER TABLE `qr_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `scan`
--
ALTER TABLE `scan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table_attendance`
--
ALTER TABLE `table_attendance`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ashar`
--
ALTER TABLE `ashar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `dzuhur`
--
ALTER TABLE `dzuhur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `fail`
--
ALTER TABLE `fail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `gambar1`
--
ALTER TABLE `gambar1`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `gambar2`
--
ALTER TABLE `gambar2`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT untuk tabel `gambar3`
--
ALTER TABLE `gambar3`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT untuk tabel `gambar4`
--
ALTER TABLE `gambar4`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ijin`
--
ALTER TABLE `ijin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `multiple-images`
--
ALTER TABLE `multiple-images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `qr_codes`
--
ALTER TABLE `qr_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10343;

--
-- AUTO_INCREMENT untuk tabel `scan`
--
ALTER TABLE `scan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `table_attendance`
--
ALTER TABLE `table_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
