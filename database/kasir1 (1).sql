-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Feb 2024 pada 03.39
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
-- Database: `kasir1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`DetailID`, `PenjualanID`, `ProdukID`, `JumlahProduk`, `Subtotal`) VALUES
(0, 1, 56778, 3, '5000.00'),
(4, 2, 56778, 2, '5000.00'),
(6, 4, 635263, 5, '3000.00'),
(6, 5, 62576, 5, '10000.00'),
(7, 6, 62576, 5, '10000.00'),
(8, 7, 45738, 5, '5000.00'),
(12, 12, 56778, 9, '5000.00'),
(12, 13, 62576, 1, '10000.00'),
(14, 15, 76879, 1, '15000.00'),
(15, 17, 56778, 1, '5000.00'),
(16, 18, 56778, 1, '5000.00'),
(17, 19, 56778, 2, '5000.00'),
(18, 20, 62576, 9, '10000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL,
  `NamaPelanggan` varchar(255) NOT NULL,
  `NoMeja` int(11) NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganID`, `NamaPelanggan`, `NoMeja`, `NomorTelepon`) VALUES
(0, 'erazpoii', 12, ''),
(2, 'aku', 4, ''),
(3, 'aku', 4, ''),
(4, 'yaw', 5, ''),
(5, 'yaw', 5, ''),
(6, 'yam', 6, ''),
(7, 'ayam', 77, ''),
(8, 'maul', 2, ''),
(9, 'maul', 4, ''),
(10, 'mam', 12, ''),
(11, 'qwr', 4, ''),
(12, 'saya', 123, ''),
(13, 'al', 7, ''),
(14, 'k', 1, ''),
(15, 'nabil', 1, ''),
(16, 'yaw', 2, ''),
(17, 'yaw', 2, ''),
(18, 'ayam', 4, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`PenjualanID`, `TanggalPenjualan`, `TotalHarga`, `PelangganID`) VALUES
(1, '2024-02-05', '0.00', 0),
(2, '2024-02-05', '0.00', 0),
(3, '2024-02-05', '0.00', 0),
(4, '2024-02-05', '0.00', 0),
(5, '2024-02-05', '0.00', 0),
(6, '2024-02-05', '0.00', 0),
(7, '2024-02-06', '0.00', 0),
(8, '2024-02-12', '0.00', 0),
(9, '2024-02-12', '0.00', 0),
(10, '2024-02-12', '0.00', 0),
(11, '2024-02-12', '0.00', 0),
(12, '2024-02-12', '0.00', 0),
(13, '2024-02-12', '0.00', 0),
(14, '2024-02-12', '0.00', 0),
(15, '2024-02-13', '0.00', 0),
(16, '2024-02-13', '0.00', 0),
(17, '2024-02-13', '0.00', 0),
(18, '2024-02-15', '0.00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL,
  `NamaProduk` varchar(255) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  `Terjual` int(11) NOT NULL,
  `Foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`ProdukID`, `NamaProduk`, `Harga`, `Stok`, `Terjual`, `Foto`) VALUES
(45738, 'Bubur Kacang Hijau', '5000.00', 500, 29, '01022024080833.jpeg'),
(56778, 'Kopi Hitam', '5000.00', 466, 34, '01022024081543.jpeg'),
(62576, 'Mie Ayam Bawang Special', '10000.00', 450, 48, '01022024080425.jpeg'),
(76879, 'Roti Bakar ', '15000.00', 35, 19, '01022024081656.jpeg'),
(635263, 'Es Teh Manis', '3000.00', 490, 5, '01022024080656.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Level` enum('Admin','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Password`, `Level`) VALUES
(13659, 'alam', '202cb962ac59075b964b07152d234b70', 'Admin'),
(24341, 'alex', '202cb962ac59075b964b07152d234b70', 'Petugas'),
(24343, 'iyan', '202cb962ac59075b964b07152d234b70', 'Admin'),
(24344, 'dinda', '202cb962ac59075b964b07152d234b70', 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PenjualanID` (`PenjualanID`,`ProdukID`),
  ADD KEY `ProdukID` (`ProdukID`),
  ADD KEY `DetailID` (`DetailID`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganID`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`PenjualanID`),
  ADD KEY `PelangganID` (`PelangganID`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ProdukID`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `PenjualanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24345;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
