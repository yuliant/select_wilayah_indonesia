-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 01 Okt 2021 pada 15.24
-- Versi server: 8.0.26-0ubuntu0.20.04.2
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_3s`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id` int NOT NULL,
  `nama_provinsi` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data untuk tabel `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id`, `nama_provinsi`, `created_at`) VALUES
(11, 'Aceh', '2020-07-15 08:26:53'),
(12, 'Sumatera Utara', '2020-07-15 08:26:53'),
(13, 'Sumatera Barat', '2020-07-15 08:26:53'),
(14, 'Riau', '2020-07-15 08:26:53'),
(15, 'Jambi', '2020-07-15 08:26:53'),
(16, 'Sumatera Selatan', '2020-07-15 08:26:53'),
(17, 'Bengkulu', '2020-07-15 08:26:53'),
(18, 'Lampung', '2020-07-15 08:26:53'),
(19, 'Kepulauan Bangka Belitung', '2020-07-15 08:26:53'),
(21, 'Kepulauan Riau', '2020-07-15 08:26:53'),
(31, 'DKI Jakarta', '2020-07-15 08:26:53'),
(32, 'Jawa Barat', '2020-07-15 08:26:53'),
(33, 'Jawa Tengah', '2020-07-15 08:26:53'),
(34, 'DI Yogyakarta', '2020-07-15 08:26:53'),
(35, 'Jawa Timur', '2020-07-15 08:26:53'),
(36, 'Banten', '2020-07-15 08:26:53'),
(51, 'Bali', '2020-07-15 08:26:53'),
(52, 'Nusa Tenggara Barat', '2020-07-15 08:26:53'),
(53, 'Nusa Tenggara Timur', '2020-07-15 08:26:53'),
(61, 'Kalimantan Barat', '2020-07-15 08:26:53'),
(62, 'Kalimantan Tengah', '2020-07-15 08:26:53'),
(63, 'Kalimantan Selatan', '2020-07-15 08:26:53'),
(64, 'Kalimantan Timur', '2020-07-15 08:26:53'),
(65, 'Kalimantan Utara', '2020-07-15 08:26:53'),
(71, 'Sulawesi Utara', '2020-07-15 08:26:53'),
(72, 'Sulawesi Tengah', '2020-07-15 08:26:53'),
(73, 'Sulawesi Selatan', '2020-07-15 08:26:53'),
(74, 'Sulawesi Tenggara', '2020-07-15 08:26:53'),
(75, 'Gorontalo', '2020-07-15 08:26:53'),
(76, 'Sulawesi Barat', '2020-07-15 08:26:53'),
(81, 'Maluku', '2020-07-15 08:26:53'),
(82, 'Maluku Utara', '2020-07-15 08:26:53'),
(91, 'Papua Barat', '2020-07-15 08:26:53'),
(92, 'Papua', '2020-07-15 08:26:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
