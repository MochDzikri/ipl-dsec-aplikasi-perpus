-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2023 pada 01.41
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `ID_Anggota` varchar(3) NOT NULL,
  `Nama_Anggota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `ID_Buku` varchar(3) NOT NULL,
  `Nama_Buku` varchar(50) NOT NULL,
  `Pengarang` varchar(20) NOT NULL,
  `Penerbit` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`ID_Buku`, `Nama_Buku`, `Pengarang`, `Penerbit`) VALUES
('H01', 'Penelitian Kualitatif', 'Burhan Bungin', 'PRENADA MEDIA GRUP'),
('H02', 'Pengantar Teknologi ', 'Tata Sutabri', 'Andi Offsett');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID_Peminjaman` varchar(3) NOT NULL,
  `ID_Anggota` varchar(3) NOT NULL,
  `Nama_Peminjam` varchar(20) NOT NULL,
  `Nama_Buku` varchar(50) NOT NULL,
  `Tgl_Peminjaman` date NOT NULL,
  `Tgl_Pengembalian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`ID_Peminjaman`, `ID_Anggota`, `Nama_Peminjam`, `Nama_Buku`, `Tgl_Peminjaman`, `Tgl_Pengembalian`) VALUES
('P01', 'A01', 'Dzikri', 'Pengantar Teknologi ', '2023-01-03', '2023-01-07'),
('P02', 'A02', 'Azhari', 'Penelitian Kualitatif', '2023-01-04', '2023-01-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengembalian`
--

CREATE TABLE `pengembalian` (
  `ID_Pengembalian` varchar(3) NOT NULL,
  `ID_Peminjaman` varchar(3) NOT NULL,
  `Nama_Peminjam` varchar(20) NOT NULL,
  `Nama_Buku` varchar(50) NOT NULL,
  `Tgl_Pengembalian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengembalian`
--

INSERT INTO `pengembalian` (`ID_Pengembalian`, `ID_Peminjaman`, `Nama_Peminjam`, `Nama_Buku`, `Tgl_Pengembalian`) VALUES
('B01', 'P01', 'Dzikri', 'Pengantar Teknologi', '2023-01-07'),
('B02', 'P02', 'Azhari', 'Penelitian Kualitatif', '2023-01-09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perpanjangan`
--

CREATE TABLE `perpanjangan` (
  `ID_Perpanjangan` varchar(3) NOT NULL,
  `ID_Peminjaman` varchar(3) NOT NULL,
  `Nama_Peminjam` varchar(30) NOT NULL,
  `Nama_Buku` varchar(50) NOT NULL,
  `Tgl_PengembalianBr` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perpanjangan`
--

INSERT INTO `perpanjangan` (`ID_Perpanjangan`, `ID_Peminjaman`, `Nama_Peminjam`, `Nama_Buku`, `Tgl_PengembalianBr`) VALUES
('D01', 'P01', 'Dzikri', 'Pengantar Teknologi', '2023-01-14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pustakawan`
--

CREATE TABLE `pustakawan` (
  `ID_Pustakawan` varchar(3) NOT NULL,
  `Nama_Pustakawan` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_Anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`ID_Buku`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`ID_Peminjaman`);

--
-- Indeks untuk tabel `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`ID_Pengembalian`);

--
-- Indeks untuk tabel `pustakawan`
--
ALTER TABLE `pustakawan`
  ADD PRIMARY KEY (`ID_Pustakawan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
