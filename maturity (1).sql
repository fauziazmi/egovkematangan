-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2018 at 03:44 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maturity`
--

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` int(20) NOT NULL,
  `wilayah` varchar(50) NOT NULL,
  `jawaban_1` varchar(4) NOT NULL,
  `jawaban_2` varchar(4) NOT NULL,
  `jawaban_3` varchar(4) NOT NULL,
  `Nilai` int(4) NOT NULL,
  `tgl_terima` varchar(100) NOT NULL,
  `pdf` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `wilayah`, `jawaban_1`, `jawaban_2`, `jawaban_3`, `Nilai`, `tgl_terima`, `pdf`) VALUES
(1, 'CCCCCCCC', '1', 'FFFF', 'AAAA', 1, '06 April 2018', 'Employement_Application_Form_2018.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `pendanaan`
--

CREATE TABLE `pendanaan` (
  `code_pendanaan` int(4) NOT NULL,
  `pendanaan_name` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendanaan`
--

INSERT INTO `pendanaan` (`code_pendanaan`, `pendanaan_name`, `deskripsi`) VALUES
(1, 'AAAA', 'BBBB');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(4) NOT NULL,
  `wilayah` varchar(50) NOT NULL,
  `pekerjaan` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `foto` varchar(250) NOT NULL,
  `last_login` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `wilayah`, `pekerjaan`, `email`, `username`, `password`, `foto`, `last_login`) VALUES
(9, 'Super Administrator', 'Super Admin', 'superadmin@gmail.com', 'super', '1b3231655cebb7a1f783eddf27d254ca', '1479878875351.png', 'April 09, 2018 - 19:45'),
(11, 'Admin', 'Admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'iconpetugas.png', 'April 09, 2018 - 19:47'),
(13, 'Pimpinan', 'Pimpinan', 'pimpinan@gmail.com', 'pimpinan', '90973652b88fe07d05a4304f0a945de8', '1479878787802.png', 'April 09, 2018 - 19:55'),
(16, 'Pengunjung', 'Pengunjung', 'Pengunjung@gmail.com', 'pengunjung', '3fbe7200a4b9a894e16c9d998314dc80', 'anggota.png', 'April 09, 2018 - 19:54'),
(18, 'Nyoman', 'Manager', 'nyoman@gmail.com', 'manager', '1d0258c2440a8d19e716292b231e3190', '47692.jpg', 'April 09, 2018 - 19:51'),
(19, 'berangkat', 'Pengunjung', 'berangkat@gmail.com', 'berangkat', 'ad70a434c93fd7917e452960322aef12', '1479878828327.png', ''),
(20, 'amel', 'Pengunjung', 'ameliayahya.ay@gmail.com', 'amel', 'da0e22de18e3fbe1e96bdc882b912ea4', 'IMG-20180126-WA0004.jpg', 'April 09, 2018 - 20:06'),
(21, 'Jawa Timur', 'Pemda', 'afauziazmi@gmail.com', 'achmad.fauzi71', '79107d8deccb7713e0d8c30caa73d939', '', 'August 14, 2018 - 23:08');

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `code_years` int(4) NOT NULL,
  `years_name` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`code_years`, `years_name`) VALUES
(3, '2016'),
(2, '2017'),
(1, '2018');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendanaan`
--
ALTER TABLE `pendanaan`
  ADD PRIMARY KEY (`code_pendanaan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`code_years`),
  ADD UNIQUE KEY `years_name` (`years_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pendanaan`
--
ALTER TABLE `pendanaan`
  MODIFY `code_pendanaan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `code_years` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
