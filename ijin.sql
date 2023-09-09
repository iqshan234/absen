-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Sep 2023 pada 04.55
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
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ijin`
--
ALTER TABLE `ijin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ijin`
--
ALTER TABLE `ijin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
