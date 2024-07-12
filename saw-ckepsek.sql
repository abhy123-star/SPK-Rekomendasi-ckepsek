-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2024 at 04:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `saw-ckepsek`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lastlogin` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nip`, `password`, `lastlogin`) VALUES
(2, '12345', 'admin', '2024-07-10 12:34:06'),
(3, '131313', 'kabid', '2024-07-11 06:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `bobot`
--

CREATE TABLE `bobot` (
  `id` int(10) NOT NULL,
  `value` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bobot`
--

INSERT INTO `bobot` (`id`, `value`) VALUES
(1, '0'),
(2, '0.33'),
(3, '0.66'),
(4, '1');

-- --------------------------------------------------------

--
-- Table structure for table `data_ckepsek`
--

CREATE TABLE `data_ckepsek` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_hp` int(12) NOT NULL,
  `alamat` text NOT NULL,
  `sudah_dinilai` int(2) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_ckepsek`
--

INSERT INTO `data_ckepsek` (`nip`, `nama`, `no_hp`, `alamat`, `sudah_dinilai`, `status`) VALUES
('07765757657', 'Dita Melani Suhita Timumu', 2147483647, 'yututjjhjhj', 1, ''),
('086767676', 'Abdul Fikra Latodjo', 2147483647, 'zzzzzz', 1, ''),
('6756778768', 'Ayu Astuti Bugis', 876878768, 'yuyuyuyuyu', 1, ''),
('6776767', 'Abdul Rafik Bangko', 88676767, 'ttttttttt', 1, ''),
('678768674545', 'Andreas Datuela', 2147483647, 'zfdfdfdf', 1, ''),
('78678677', 'Andarian Baba', 777767, 'ererererer', 1, ''),
('7876867867', 'Abi Kuswandi Gam', 998780989, 'erererer', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `data_pegawai`
--

CREATE TABLE `data_pegawai` (
  `nip` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pegawai`
--

INSERT INTO `data_pegawai` (`nip`, `nama`, `jabatan`) VALUES
('12345', 'admin', 'ADMIN'),
('131313', 'KABID', 'KABID');

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `sifat` enum('benefit','cost') NOT NULL,
  `bobot` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama`, `keterangan`, `sifat`, `bobot`) VALUES
(1, 'Kualitas Akademik', 'Kualitas Akademik Calon Kepsek', 'benefit', 0.15),
(2, 'Pangkat', 'Pangkat Calon Kepsek', 'benefit', 0.25),
(3, 'Penilaian Kinerja', 'Penilaian Kinerja Calon Kepsek', 'benefit', 0.25),
(4, 'Pengalaman Manajerial', 'Pengalaman Manajerial Calon Kepsek', 'benefit', 0.25),
(5, 'Usia', 'Usia Calon Kepsek', 'benefit', 0.1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `nipCkepsek` varchar(20) NOT NULL,
  `idKriteria` int(11) NOT NULL,
  `id_subKriteria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `nipCkepsek`, `idKriteria`, `id_subKriteria`) VALUES
(131, '086767676', 1, 1),
(132, '086767676', 2, 5),
(133, '086767676', 3, 11),
(134, '086767676', 4, 14),
(135, '086767676', 5, 17),
(136, '6776767', 1, 2),
(137, '6776767', 2, 6),
(138, '6776767', 3, 12),
(139, '6776767', 4, 15),
(140, '6776767', 5, 18),
(141, '7876867867', 1, 3),
(142, '7876867867', 2, 7),
(143, '7876867867', 3, 13),
(144, '7876867867', 4, 16),
(145, '7876867867', 5, 19),
(146, '78678677', 1, 1),
(147, '78678677', 2, 6),
(148, '78678677', 3, 13),
(149, '78678677', 4, 14),
(150, '78678677', 5, 18),
(151, '678768674545', 1, 1),
(152, '678768674545', 2, 8),
(153, '678768674545', 3, 13),
(154, '678768674545', 4, 14),
(155, '678768674545', 5, 18),
(156, '6756778768', 1, 3),
(157, '6756778768', 2, 9),
(158, '6756778768', 3, 12),
(159, '6756778768', 4, 14),
(160, '6756778768', 5, 17),
(161, '07765757657', 1, 2),
(162, '07765757657', 2, 10),
(163, '07765757657', 3, 13),
(164, '07765757657', 4, 16),
(165, '07765757657', 5, 19);

-- --------------------------------------------------------

--
-- Table structure for table `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id` int(11) NOT NULL,
  `idKriteria` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subkriteria`
--

INSERT INTO `subkriteria` (`id`, `idKriteria`, `nama`, `value`) VALUES
(1, 1, 'S1/D-IV', 1),
(2, 1, 'S2', 2),
(3, 1, 'S3', 3),
(5, 2, 'Golongan III.b', 1),
(6, 2, 'Golongan III.d', 2),
(7, 2, 'Golongan IV.a', 3),
(8, 2, 'Golongan IV.c', 4),
(9, 2, 'Golongan IV.d', 5),
(10, 2, 'Golongan IV.e', 6),
(11, 3, 'Baik, Baik', 1),
(12, 3, 'Baik, Sangat Baik', 2),
(13, 3, 'Sangat Baik, Sangat Baik', 3),
(14, 4, '> = 2 - 6 Tahun', 1),
(15, 4, '> 6 - 10 Tahun', 2),
(16, 4, '> 10 Tahun', 3),
(17, 5, '< = 36 Tahun', 1),
(18, 5, '> 36 - 46 Tahun', 2),
(19, 5, '> 46 - 56 Tahun', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `lastlogin` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nip`, `password`, `lastlogin`) VALUES
(18, '086767676', 'user', '2024-07-11 14:04:08'),
(19, '6776767', 'user', '2024-07-11 14:04:52'),
(20, '7876867867', 'user', '2024-07-11 14:05:40'),
(21, '78678677', 'user', '2024-07-11 14:06:25'),
(22, '678768674545', 'user', '2024-07-11 14:07:08'),
(23, '6756778768', 'user', '2024-07-11 14:07:48'),
(24, '07765757657', 'user', '2024-07-11 14:08:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_adminPegawai` (`nip`);

--
-- Indexes for table `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_ckepsek`
--
ALTER TABLE `data_ckepsek`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `data_pegawai`
--
ALTER TABLE `data_pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_KriteriaNilai` (`idKriteria`),
  ADD KEY `fk_nilaiPenduduk` (`nipCkepsek`),
  ADD KEY `fk_nilaiSubkriteria` (`id_subKriteria`);

--
-- Indexes for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_subKriteria` (`idKriteria`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userNik` (`nip`),
  ADD KEY `nip` (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bobot`
--
ALTER TABLE `bobot`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `fk_adminPegawai` FOREIGN KEY (`nip`) REFERENCES `data_pegawai` (`nip`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `fk_KriteriaNilai` FOREIGN KEY (`idKriteria`) REFERENCES `kriteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nilaiPenduduk` FOREIGN KEY (`nipCkepsek`) REFERENCES `data_ckepsek` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nilaiSubkriteria` FOREIGN KEY (`id_subKriteria`) REFERENCES `subkriteria` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD CONSTRAINT `fk_subKriteria` FOREIGN KEY (`idKriteria`) REFERENCES `kriteria` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_userNik` FOREIGN KEY (`nip`) REFERENCES `data_ckepsek` (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
