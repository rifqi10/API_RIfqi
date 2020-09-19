-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 22, 2020 at 01:10 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rentalsepeda`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbsepeda`
--

CREATE TABLE `tbsepeda` (
  `id` int(20) NOT NULL,
  `kode` varchar(100) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `jenis` varchar(100) NOT NULL,
  `warna` varchar(100) NOT NULL,
  `hargasewa` int(20) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbtransaksi`
--

CREATE TABLE `tbtransaksi` (
  `id` int(20) NOT NULL,
  `kodenota` varchar(100) NOT NULL,
  `noktp` varchar(100) NOT NULL,
  `kodesepeda` varchar(100) NOT NULL,
  `tanggaltransaksi` varchar(100) NOT NULL,
  `jumlahhari` int(20) NOT NULL,
  `totalbayar` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `id` int(20) NOT NULL,
  `noktp` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nohp` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `roleuser` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`id`, `noktp`, `email`, `password`, `nama`, `nohp`, `alamat`, `roleuser`) VALUES
(1, '37468732648723684', 'baka@gamail.com', '123456790', 'baka', '132418364871364871356', 'kudus', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbsepeda`
--
ALTER TABLE `tbsepeda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbtransaksi`
--
ALTER TABLE `tbtransaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbsepeda`
--
ALTER TABLE `tbsepeda`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbtransaksi`
--
ALTER TABLE `tbtransaksi`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
