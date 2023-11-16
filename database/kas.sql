-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Nov 2023 pada 03.35
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_keluar`
--

CREATE TABLE `kas_keluar` (
  `id_kk` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kas_keluar`
--

INSERT INTO `kas_keluar` (`id_kk`, `tanggal`, `keterangan`, `total`) VALUES
(2, '2023-09-17', 'jalan-jalan', '1000000'),
(3, '2023-09-23', 'jalan jalan ', '300000'),
(4, '2023-09-20', 'pembangunan jalan', '300000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kas_masuk`
--

CREATE TABLE `kas_masuk` (
  `id_km` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `total` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kas_masuk`
--

INSERT INTO `kas_masuk` (`id_km`, `tanggal`, `keterangan`, `total`) VALUES
(3, '2023-09-01', 'konsumsi', '2000000'),
(4, '2023-09-16', 'jalan jalan ', '300000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(35) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `foto`) VALUES
(1, 'kal', 'ketoprak', '81dc9bdb52d04dc20036dbd8313ed055', '1293068519_Screenshot_2023-09-14-19-03-11-15.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kas_keluar`
--
ALTER TABLE `kas_keluar`
  ADD PRIMARY KEY (`id_kk`);

--
-- Indeks untuk tabel `kas_masuk`
--
ALTER TABLE `kas_masuk`
  ADD PRIMARY KEY (`id_km`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kas_keluar`
--
ALTER TABLE `kas_keluar`
  MODIFY `id_kk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kas_masuk`
--
ALTER TABLE `kas_masuk`
  MODIFY `id_km` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
