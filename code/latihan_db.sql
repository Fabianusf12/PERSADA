-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Okt 2023 pada 08.16
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latihan_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `sdmaju`
--

CREATE TABLE `sdmaju` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `jurusan` text NOT NULL,
  `nik` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `sdmaju`
--

INSERT INTO `sdmaju` (`id`, `nama`, `jurusan`, `nik`) VALUES
(1, 'jono', 'ipa', 231232136),
(2, 'gama', 'ips', 323212323);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `birth_place` date NOT NULL,
  `termination` varchar(25) NOT NULL,
  `status` text NOT NULL,
  `sallary` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `first_name`, `last_name`, `birth_place`, `termination`, `status`, `sallary`) VALUES
(1, 'jhon', 'smith', '1970-06-12', '', 'PERMANENT', 8000000),
(2, 'oliver', 'reight', '1973-04-14', '', 'PERMANENT', 7600000),
(3, 'andrea', 'wilson', '1976-01-31', '', 'PERMANENT', 14000000),
(4, 'ermile', 'johson', '1967-03-12', '', 'PERMANENT', 11000000),
(5, 'william', 'baker', '1967-03-12', '', 'PERMANENT', 97000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `sdmaju`
--
ALTER TABLE `sdmaju`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`,`first_name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sdmaju`
--
ALTER TABLE `sdmaju`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
