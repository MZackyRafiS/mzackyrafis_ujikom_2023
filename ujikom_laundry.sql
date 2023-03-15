-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Mar 2023 pada 03.12
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujikom_laundry`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `transaksi_id` int(11) DEFAULT NULL,
  `paket_id` int(11) DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `total_harga` double DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `transaksi_id`, `paket_id`, `qty`, `total_harga`, `keterangan`, `total_bayar`) VALUES
(9, 33, 4, 10, 150000, NULL, 200000),
(10, 34, 5, 100, 1500000, NULL, 1500000),
(11, 35, 4, 1, 15000, NULL, 15000),
(12, 36, 4, 1, 15000, NULL, 20000),
(13, 37, 4, 10, 150000, NULL, 200000),
(14, 38, 4, 100, 1500000, NULL, 2147483647),
(15, 39, 6, 20, 200000, NULL, 200000),
(16, 40, 7, 10, 100000, NULL, 2000000),
(17, 41, 4, 10, 150000, NULL, NULL),
(18, 42, 4, 100, 1500000, NULL, 2000000),
(19, 43, 4, 100, 1500000, NULL, NULL),
(20, 44, 4, 2, 33000, NULL, 40000),
(21, 45, 4, 2, 27000, NULL, 50000),
(22, 46, 4, 2, 27000, NULL, 50000),
(23, 47, 4, 2, 30000, NULL, NULL),
(24, 48, 4, 2, 30000, NULL, 50000),
(25, 49, 4, 2, 33000, NULL, 50000),
(26, 50, 4, 2, 29700, NULL, 30000),
(27, 51, 4, 2, 33000, NULL, 50000),
(28, 52, 4, 2, 0, NULL, NULL),
(29, 53, 4, 2, 29700, NULL, 30000),
(30, 54, 4, 2, 29700, NULL, NULL),
(31, 55, 4, 2, 33000, NULL, 50000),
(32, 56, 4, 2, 33000, NULL, NULL),
(33, 57, 4, 2, 29700, NULL, 30000),
(34, 58, 4, 2, 33000, NULL, 50000),
(35, 59, 4, 2, 33000, NULL, 50000),
(36, 60, 4, 15000, 242550000, NULL, NULL),
(37, 61, 4, 2, 30800, NULL, 50000),
(38, 62, 4, 2, 30800, NULL, NULL),
(39, 63, 9, 2, 72600, NULL, NULL),
(40, 64, 9, 2, 40700, NULL, 50000),
(41, 65, 9, 2, 44000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama_member` varchar(100) DEFAULT NULL,
  `alamat_member` text DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `telp_member` varchar(15) DEFAULT NULL,
  `no_ktp` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`id_member`, `nama_member`, `alamat_member`, `jenis_kelamin`, `telp_member`, `no_ktp`) VALUES
(5, 'Abang Fikri', 'Ciamis', 'L', '0821340411', '123456789'),
(6, 'adi', 'bandung', 'L', '324144441', '423424'),
(7, 'yudi', 'kiaracondong', 'L', '0837236772', '3213771720'),
(8, 'yuni', 'cimindi', 'P', '0887325381', '3233263826'),
(9, 'hari', 'batujajar', 'L', '0858616332', '3217727392');

-- --------------------------------------------------------

--
-- Struktur dari tabel `outlet`
--

CREATE TABLE `outlet` (
  `id_outlet` int(11) NOT NULL,
  `nama_outlet` varchar(100) DEFAULT NULL,
  `alamat_outlet` text DEFAULT NULL,
  `telp_outlet` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `outlet`
--

INSERT INTO `outlet` (`id_outlet`, `nama_outlet`, `alamat_outlet`, `telp_outlet`) VALUES
(26, 'barokah', 'cicalenka', '081243555656'),
(28, 'euynesia', 'cimahi', '2354353'),
(33, 'rancalaundry', 'rancaekek', '088434343002'),
(34, 'kahuripan', 'bandung', '081321237442');

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `jenis_paket` enum('kiloan','selimut','bedcover','kaos','lain') DEFAULT NULL,
  `nama_paket` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`id_paket`, `jenis_paket`, `nama_paket`, `harga`, `outlet_id`) VALUES
(4, 'kiloan', 'Paket Kering Wangi', 15000, 26),
(5, 'kiloan', 'express', 15000, 26),
(6, 'kiloan', 'bersih harum', 10000, 33),
(7, 'kiloan', 'cuci kilat', 30000, 34),
(9, 'kiloan', 'cuci bersih', 20000, 28);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `kode_invoice` varchar(100) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `tgl` datetime DEFAULT NULL,
  `batas_waktu` datetime DEFAULT NULL,
  `tgl_pembayaran` datetime DEFAULT NULL,
  `biaya_tambahan` int(11) DEFAULT NULL,
  `diskon` double DEFAULT NULL,
  `pajak` int(11) DEFAULT NULL,
  `status` enum('baru','proses','selesai','diambil') DEFAULT NULL,
  `status_bayar` enum('dibayar','belum') DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `outlet_id`, `kode_invoice`, `member_id`, `tgl`, `batas_waktu`, `tgl_pembayaran`, `biaya_tambahan`, `diskon`, `pajak`, `status`, `status_bayar`, `user_id`) VALUES
(33, 26, 'DRY202003213927', 5, '2020-03-21 02:27:48', '2020-03-28 12:00:00', '2020-03-21 02:28:03', 0, 0, 0, 'diambil', 'dibayar', 11),
(34, 26, 'DRY202302024309', 5, '2023-02-02 08:10:06', '2023-02-09 12:00:00', '2023-02-02 08:11:01', 15000, 0, 0, 'baru', 'dibayar', 13),
(35, 26, 'DRY202302020517', 5, '2023-02-02 09:17:14', '2023-02-09 12:00:00', '2023-02-02 09:17:35', 20000, 0, 0, 'baru', 'dibayar', 13),
(36, 26, 'DRY202302093330', 6, '2023-02-09 01:31:02', '2023-02-16 12:00:00', '2023-03-02 03:35:47', 0, 0, 0, 'baru', 'dibayar', 13),
(37, 26, 'DRY202302092631', 6, '2023-02-09 01:31:43', '2023-02-16 12:00:00', '2023-03-02 01:41:05', 0, 0, 0, 'baru', 'dibayar', 13),
(38, 26, 'DRY202302093132', 6, '2023-02-09 01:32:59', '2023-02-16 12:00:00', '2023-03-02 03:19:07', 0, 0, 0, 'baru', 'dibayar', 13),
(39, 26, 'DRY202302090835', 6, '2023-02-09 01:35:24', '2023-02-16 12:00:00', '2023-02-09 01:35:57', 0, 0, 0, 'baru', 'dibayar', 13),
(40, 26, 'DRY202302090101', 6, '2023-02-09 02:01:29', '2023-02-16 12:00:00', '2023-02-16 02:14:45', 0, 0, 0, 'baru', 'dibayar', 13),
(41, 26, 'DRY202302095011', 5, '2023-02-09 02:15:39', '2023-02-16 12:00:00', NULL, 0, 0, 2, 'baru', 'belum', 13),
(42, 26, 'DRY202302090816', 5, '2023-02-09 02:17:31', '2023-02-16 12:00:00', '2023-03-01 02:30:46', 0, 0, 10, 'baru', 'dibayar', 13),
(43, 26, 'DRY202302094718', 6, '2023-02-09 02:19:00', '2023-02-16 12:00:00', NULL, 0, 20, 0, 'baru', 'belum', 13),
(44, 26, 'DRY202302093239', 6, '2023-02-09 02:39:51', '2023-02-16 12:00:00', '2023-03-02 03:23:55', 0, 0, 10, 'baru', 'dibayar', 13),
(45, 26, 'DRY202302091247', 6, '2023-02-09 02:47:27', '2023-02-16 12:00:00', '2023-03-01 02:45:20', 0, 10, 10, 'baru', 'dibayar', 13),
(46, 26, 'DRY202302095150', 6, '2023-02-09 02:50:59', '2023-02-16 12:00:00', '2023-03-02 03:08:46', 0, 10, 10, 'baru', 'dibayar', 13),
(47, 26, 'DRY202302095812', 5, '2023-02-09 03:18:08', '2023-02-16 12:00:00', NULL, 10, 0, 10, 'baru', 'belum', 13),
(48, 26, 'DRY202302095922', 6, '2023-02-09 03:23:09', '2023-02-16 12:00:00', '2023-03-10 01:40:16', 0, 0, 10, 'baru', 'dibayar', 13),
(49, 26, 'DRY202302095923', 6, '2023-02-09 03:24:07', '2023-02-16 12:00:00', '2023-03-07 05:52:32', 0, 0, 10, 'baru', 'dibayar', 13),
(50, 26, 'DRY202302141110', 6, '2023-02-14 07:10:18', '2023-02-21 12:00:00', '2023-03-07 06:31:05', 0, 10, 10, 'baru', 'dibayar', 15),
(51, 26, 'DRY202302142410', 5, '2023-02-14 07:10:28', '2023-02-21 12:00:00', '2023-03-06 04:11:16', 0, 0, 10, 'baru', 'dibayar', 15),
(52, 26, 'DRY202302163516', 5, '2023-02-16 03:16:52', '2023-02-23 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 16),
(53, 26, 'DRY202302162217', 5, '2023-02-16 03:17:33', '2023-02-23 12:00:00', '2023-03-07 05:39:39', 0, 10, 10, 'baru', 'dibayar', 16),
(54, 26, 'DRY202302163425', 5, '2023-02-16 03:27:03', '2023-02-23 12:00:00', NULL, 0, 10, 10, 'baru', 'belum', 15),
(55, 26, 'DRY202302200921', 6, '2023-02-20 09:21:18', '2023-02-27 12:00:00', '2023-03-07 06:40:59', 1000, 0, 10, 'baru', 'dibayar', 15),
(56, 26, 'DRY202302204821', 6, '2023-02-20 09:21:57', '2023-02-27 12:00:00', NULL, 1000, 0, 10, 'baru', 'belum', 15),
(57, 26, 'DRY202302200322', 5, '2023-02-20 09:22:13', '2023-02-27 12:00:00', '2023-03-07 04:13:07', 1000, 10, 10, 'baru', 'dibayar', 15),
(58, 26, 'DRY202302203723', 5, '2023-02-20 09:23:45', '2023-02-27 12:00:00', '2023-03-07 05:56:42', 1000, 0, 10, 'baru', 'dibayar', 15),
(59, 26, 'DRY202302202524', 6, '2023-02-20 09:24:32', '2023-02-27 12:00:00', '2023-03-11 01:59:12', 1000, 0, 10, 'baru', 'dibayar', 15),
(60, 26, 'DRY202302204828', 5, '2023-02-20 09:29:12', '2023-02-27 12:00:00', NULL, 0, 2, 10, 'baru', 'belum', 15),
(61, 26, 'DRY202302231702', 5, '2023-02-23 03:02:32', '2023-03-02 12:00:00', '2023-03-13 04:48:26', 1000, 10, 10, 'baru', 'dibayar', 15),
(62, 26, 'DRY202302235613', 5, '2023-02-23 03:14:24', '2023-03-02 12:00:00', NULL, 1000, 10, 10, 'baru', 'belum', 18),
(63, 28, 'DRY202303010016', 5, '2023-03-01 02:16:17', '2023-03-08 12:00:00', NULL, 30000, 10, 10, 'baru', 'belum', 15),
(64, 28, 'DRY202303073854', 6, '2023-03-07 05:54:48', '2023-03-14 12:00:00', '2023-03-13 05:03:34', 1000, 10, 10, 'baru', 'dibayar', 21),
(65, 28, 'DRY202303075323', 5, '2023-03-07 09:23:58', '2023-03-14 12:00:00', NULL, 0, 0, 10, 'baru', 'belum', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `outlet_id` int(11) DEFAULT NULL,
  `role` enum('admin','kasir','owner') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `password`, `outlet_id`, `role`) VALUES
(10, 'owner sayaa', 'mawar', 'bd117502364227fd8c09098d31e11313', NULL, 'owner'),
(15, 'saya', 'sayaa', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'admin'),
(16, 'asep', 'kasir', 'dc855efb0dc7476760afaa1b281665f1', 26, 'kasir'),
(17, 'ujang', 'owner', '202cb962ac59075b964b07152d234b70', 26, 'owner'),
(18, 'sayaa', 'kasir', '827ccb0eea8a706c4c34a16891f84e7b', 26, 'kasir'),
(21, 'kasir', 'kasir', 'c7911af3adbd12a035b289556d96470a', NULL, 'kasir'),
(22, 'owner', 'owner', '72122ce96bfec66e2396d2e25225d70a', 26, 'owner'),
(23, 'zacky', 'admin', '202cb962ac59075b964b07152d234b70', NULL, 'admin');

--
-- Trigger `user`
--
DELIMITER $$
CREATE TRIGGER `DELETE` BEFORE DELETE ON `user` FOR EACH ROW INSERT INTO user_log (id_user, perubahan, nama_user, role) VALUES (OLD.id_user,"DELETE", OLD.nama_user, OLD.role)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `INSERT` AFTER INSERT ON `user` FOR EACH ROW INSERT INTO user_log (id_user, perubahan, nama_user, role) VALUES (NEW.id_user,"INSERT", NEW.nama_user, NEW.role)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `UPDATE` AFTER UPDATE ON `user` FOR EACH ROW INSERT INTO user_log (id_user, perubahan, nama_user, role) VALUES (NEW.id_user,"UPDATE", NEW.nama_user, NEW.role)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_log`
--

CREATE TABLE `user_log` (
  `id_log` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `perubahan` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nama_user` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_log`
--

INSERT INTO `user_log` (`id_log`, `id_user`, `perubahan`, `waktu`, `nama_user`, `role`) VALUES
(1, 20, 'INSERT', '2023-03-01 00:35:50', '0', ''),
(2, 20, 'DELETE', '2023-03-01 00:37:10', '0', ''),
(3, 19, 'UPDATE', '2023-03-01 00:38:30', '0', ''),
(4, 17, 'UPDATE', '2023-03-01 02:20:59', '0', ''),
(5, 21, 'INSERT', '2023-03-07 04:54:06', '0', ''),
(6, 22, 'INSERT', '2023-03-07 04:57:30', '0', ''),
(7, 19, 'UPDATE', '2023-03-10 01:36:00', '0', ''),
(8, 17, 'UPDATE', '2023-03-10 01:36:00', '0', ''),
(9, 17, 'UPDATE', '2023-03-10 01:44:33', '0', ''),
(10, 21, 'UPDATE', '2023-03-10 01:44:42', '0', ''),
(11, 17, 'UPDATE', '2023-03-10 01:44:42', '0', ''),
(12, 17, 'UPDATE', '2023-03-10 01:44:55', '0', ''),
(13, 22, 'UPDATE', '2023-03-10 01:45:20', '0', ''),
(14, 17, 'UPDATE', '2023-03-10 01:49:04', '0', ''),
(15, 17, 'UPDATE', '2023-03-10 01:49:14', '0', ''),
(16, 17, 'UPDATE', '2023-03-10 01:49:14', '0', ''),
(17, 16, 'UPDATE', '2023-03-10 02:07:05', '0', ''),
(18, 19, 'DELETE', '2023-03-13 02:49:39', 'tyurur', 'admin'),
(19, 23, 'INSERT', '2023-03-13 02:51:56', 'zacky', 'admin'),
(20, 10, 'UPDATE', '2023-03-13 02:54:08', 'owner sayaa', 'owner'),
(21, 10, 'UPDATE', '2023-03-13 02:56:05', 'owner sayaa', 'owner'),
(22, 11, 'UPDATE', '2023-03-13 02:56:24', 'kasirmawar', 'kasir'),
(23, 22, 'UPDATE', '2023-03-13 02:56:24', 'owner', 'owner'),
(24, 15, 'UPDATE', '2023-03-13 02:57:11', 'saya', 'admin'),
(25, 17, 'UPDATE', '2023-03-13 02:57:11', 'ujang', 'owner'),
(26, 11, 'DELETE', '2023-03-13 03:13:02', 'kasirmawar', 'kasir'),
(27, 24, 'INSERT', '2023-03-13 03:13:31', 'test', 'admin'),
(28, 24, 'DELETE', '2023-03-13 03:14:59', 'test', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `transaksi_id` (`transaksi_id`),
  ADD KEY `paket_id` (`paket_id`);

--
-- Indeks untuk tabel `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indeks untuk tabel `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`id_outlet`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`),
  ADD KEY `outlet_id` (`outlet_id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `outlet_id` (`outlet_id`),
  ADD KEY `member_id` (`member_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `outlet_id` (`outlet_id`);

--
-- Indeks untuk tabel `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id_log`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `outlet`
--
ALTER TABLE `outlet`
  MODIFY `id_outlet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id_transaksi`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`paket_id`) REFERENCES `paket` (`id_paket`);

--
-- Ketidakleluasaan untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD CONSTRAINT `paket_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`id_outlet`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`id_outlet`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`member_id`) REFERENCES `member` (`id_member`);

--
-- Ketidakleluasaan untuk tabel `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`outlet_id`) REFERENCES `outlet` (`id_outlet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
