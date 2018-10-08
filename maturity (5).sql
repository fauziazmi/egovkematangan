-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2018 at 11:55 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `dimensi_1`
--

CREATE TABLE `dimensi_1` (
  `id` int(20) NOT NULL,
  `id_laporan` int(20) NOT NULL,
  `jawaban_1_1` int(10) NOT NULL,
  `jawaban_1_2` int(10) DEFAULT NULL,
  `jawaban_1_3` int(10) DEFAULT NULL,
  `jawaban_1_4` int(10) DEFAULT NULL,
  `jawaban_1_5` int(10) DEFAULT NULL,
  `jawaban_1_6` int(10) DEFAULT NULL,
  `jawaban_1_7` int(10) DEFAULT NULL,
  `jawaban_1_8` int(10) DEFAULT NULL,
  `jawaban_1_9` int(10) DEFAULT NULL,
  `jawaban_1_10` int(10) DEFAULT NULL,
  `jawaban_1_11` int(10) DEFAULT NULL,
  `jawaban_1_12` int(10) DEFAULT NULL,
  `jawaban_1_13` int(10) DEFAULT NULL,
  `jawaban_1_14` int(10) DEFAULT NULL,
  `pdf_1_1` text,
  `pdf_1_2` text,
  `pdf_1_3` text,
  `pdf_1_4` text,
  `pdf_1_5` text,
  `pdf_1_6` text,
  `pdf_1_7` text,
  `pdf_1_8` text,
  `pdf_1_9` text,
  `pdf_1_10` text,
  `pdf_1_11` text,
  `pdf_1_12` text,
  `pdf_1_13` text,
  `pdf_1_14` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dimensi_1`
--

INSERT INTO `dimensi_1` (`id`, `id_laporan`, `jawaban_1_1`, `jawaban_1_2`, `jawaban_1_3`, `jawaban_1_4`, `jawaban_1_5`, `jawaban_1_6`, `jawaban_1_7`, `jawaban_1_8`, `jawaban_1_9`, `jawaban_1_10`, `jawaban_1_11`, `jawaban_1_12`, `jawaban_1_13`, `jawaban_1_14`, `pdf_1_1`, `pdf_1_2`, `pdf_1_3`, `pdf_1_4`, `pdf_1_5`, `pdf_1_6`, `pdf_1_7`, `pdf_1_8`, `pdf_1_9`, `pdf_1_10`, `pdf_1_11`, `pdf_1_12`, `pdf_1_13`, `pdf_1_14`) VALUES
(4, 18, 3, 2, 3, 4, 1, 4, 3, 0, 0, 5, 3, 1, 5, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 22, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 23, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', '2017-11-16_21_44_57-Document2_-_Word.png', '2017-11-16_21_44_57-Document2_-_Word.png', '2017-11-16_21_44_57-Document2_-_Word.png'),
(7, 24, 5, 3, 4, 3, 2, 5, 2, 5, 2, 5, 5, 4, 5, 5, '', '', '', '', '', '', '', '', '', '', '', '', '', 'ttd.jpg'),
(8, 25, 3, 1, 1, 2, 2, 3, 0, 0, 3, 2, 5, 3, 4, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(9, 26, 3, 4, 2, 4, 4, 5, 5, 5, 3, 0, 0, 4, 3, 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(10, 27, 5, 4, 2, 4, 3, 2, 3, 3, 3, 2, 3, 5, 4, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 28, 5, 4, 3, 4, 4, 3, 2, 0, 0, 5, 4, 3, 4, 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(12, 29, 4, 5, 3, 5, 2, 5, 3, 5, 4, 4, 2, 5, 3, 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(13, 30, 4, 3, 2, 3, 5, 2, 3, 2, 3, 4, 5, 0, 0, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(14, 31, 4, 4, 3, 4, 1, 0, 0, 3, 2, 2, 3, 2, 4, 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(15, 32, 5, 4, 5, 3, 2, 5, 3, 5, 5, 2, 5, 4, 5, 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(16, 33, 2, 0, 2, 3, 4, 3, 5, 3, 5, 2, 5, 3, 4, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(17, 34, 5, 4, 3, 3, 4, 3, 4, 3, 3, 4, 5, 4, 5, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(18, 35, 4, 3, 4, 2, 5, 3, 5, 4, 5, 3, 5, 4, 4, 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(19, 36, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, 37, 2, 2, 1, 2, 2, 0, 2, 3, 2, 2, 3, 2, 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, 38, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 5, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, 39, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 2, 3, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 40, 4, 4, 4, 4, 4, 4, 5, 4, 4, 4, 5, 4, 4, 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 41, 3, 3, 3, 3, 3, 3, 3, 4, 4, 2, 2, 2, 2, 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 42, 2, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, 43, 1, 1, 0, 1, 0, 2, 1, 0, 2, 1, 2, 1, 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, 44, 3, 2, 3, 2, 3, 2, 3, 2, 3, 5, 5, 0, 0, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(28, 45, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(29, 46, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 47, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 2, 1, 2, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 48, 2, 3, 2, 1, 2, 2, 1, 2, 3, 2, 2, 1, 2, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 49, 4, 3, 3, 3, 5, 4, 2, 4, 3, 4, 3, 4, 3, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, 50, 2, 3, 2, 1, 2, 3, 4, 5, 4, 3, 2, 1, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 51, 3, 3, 4, 3, 5, 5, 5, 3, 4, 5, 3, 5, 3, 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 52, 4, 3, 4, 3, 2, 2, 2, 1, 3, 0, 0, 0, 3, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(36, 53, 4, 3, 4, 3, 3, 4, 3, 5, 4, 4, 3, 4, 3, 4, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(37, 54, 4, 3, 2, 3, 3, 2, 3, 2, 3, 2, 4, 4, 2, 3, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(38, 55, 4, 3, 3, 2, 3, 3, 4, 4, 4, 3, 2, 4, 5, 4, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(39, 56, 4, 4, 5, 4, 4, 3, 4, 3, 5, 4, 4, 4, 5, 4, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(40, 57, 4, 2, 5, 5, 5, 5, 2, 5, 5, 2, 0, 5, 5, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dimensi_2`
--

CREATE TABLE `dimensi_2` (
  `id` int(20) NOT NULL,
  `id_laporan` int(20) NOT NULL,
  `jawaban_2_1` int(10) NOT NULL,
  `jawaban_2_2` int(10) DEFAULT NULL,
  `jawaban_2_3` int(10) DEFAULT NULL,
  `jawaban_2_4` int(10) DEFAULT NULL,
  `jawaban_2_5` int(10) DEFAULT NULL,
  `jawaban_2_6` int(10) DEFAULT NULL,
  `jawaban_2_7` int(10) DEFAULT NULL,
  `jawaban_2_8` int(10) DEFAULT NULL,
  `jawaban_2_9` int(10) DEFAULT NULL,
  `jawaban_2_10` int(10) DEFAULT NULL,
  `pdf_2_1` text,
  `pdf_2_2` text,
  `pdf_2_3` text,
  `pdf_2_4` text,
  `pdf_2_5` text,
  `pdf_2_6` text,
  `pdf_2_7` text,
  `pdf_2_8` text,
  `pdf_2_9` text,
  `pdf_2_10` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dimensi_2`
--

INSERT INTO `dimensi_2` (`id`, `id_laporan`, `jawaban_2_1`, `jawaban_2_2`, `jawaban_2_3`, `jawaban_2_4`, `jawaban_2_5`, `jawaban_2_6`, `jawaban_2_7`, `jawaban_2_8`, `jawaban_2_9`, `jawaban_2_10`, `pdf_2_1`, `pdf_2_2`, `pdf_2_3`, `pdf_2_4`, `pdf_2_5`, `pdf_2_6`, `pdf_2_7`, `pdf_2_8`, `pdf_2_9`, `pdf_2_10`) VALUES
(4, 18, 2, 2, 2, 3, 2, 4, 5, 4, 0, 0, '', '', '', '', '', '', '', '', '', ''),
(5, 22, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', '', '', '', '', '', '', '', '', ''),
(6, 23, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 'domainesia_egovmaturity.png', 'domainesia_egovmaturity.png', 'domainesia_egovmaturity.png', 'domainesia_egovmaturity.png', 'domainesia_egovmaturity.png', 'domainesia_egovmaturity.png', 'PhoXo1.jpg', 'PhoXo1.jpg', 'PhoXo1.jpg', 'PhoXo1.jpg'),
(7, 24, 5, 2, 3, 0, 0, 5, 4, 2, 3, 5, 'ttd.jpg', 'ttd.jpg', 'ttd.jpg', 'ttd.jpg', 'ttd.jpg', 'ttd.jpg', 'ttd.jpg', 'ttd.jpg', 'Achmad Fauzi Azmi.jpeg', 'Achmad Fauzi Azmi.jpeg'),
(8, 25, 2, 3, 1, 3, 1, 4, 3, 2, 1, 4, '', '', '', '', '', '', '', '', '', ''),
(9, 26, 2, 4, 3, 4, 3, 4, 2, 4, 2, 5, '', '', '', '', '', '', '', '', '', ''),
(10, 27, 3, 2, 3, 4, 2, 2, 4, 5, 5, 5, '', '', '', '', '', '', '', '', '', ''),
(11, 28, 4, 3, 5, 3, 5, 2, 2, 4, 4, 5, '', '', '', '', '', '', '', '', '', ''),
(12, 29, 4, 3, 4, 3, 5, 5, 3, 2, 5, 5, '', '', '', '', '', '', '', '', '', ''),
(13, 30, 3, 2, 3, 4, 3, 2, 4, 1, 4, 2, '', '', '', '', '', '', '', '', '', ''),
(14, 31, 3, 3, 2, 4, 1, 4, 1, 5, 4, 2, '', '', '', '', '', '', '', '', '', ''),
(15, 32, 4, 5, 3, 5, 3, 5, 2, 5, 4, 5, '', '', '', '', '', '', '', '', '', ''),
(16, 33, 5, 4, 3, 4, 3, 4, 3, 4, 3, 5, '', '', '', '', '', '', '', '', '', ''),
(17, 34, 4, 3, 5, 4, 3, 5, 4, 4, 3, 5, '', '', '', '', '', '', '', '', '', ''),
(18, 35, 4, 3, 5, 4, 2, 4, 5, 3, 4, 4, '', '', '', '', '', '', '', '', '', ''),
(19, 36, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', '', '', '', '', '', '', '', '', ''),
(20, 37, 2, 1, 2, 2, 2, 3, 1, 2, 3, 2, '', '', '', '', '', '', '', '', '', ''),
(21, 38, 0, 2, 1, 4, 2, 2, 1, 2, 2, 2, '', '', '', '', '', '', '', '', '', ''),
(22, 39, 3, 3, 3, 3, 3, 3, 2, 3, 2, 3, '', '', '', '', '', '', '', '', '', ''),
(23, 40, 4, 4, 4, 5, 4, 4, 4, 4, 4, 4, '', '', '', '', '', '', '', '', '', ''),
(24, 41, 3, 3, 3, 4, 3, 3, 3, 2, 3, 3, '', '', '', '', '', '', '', '', '', ''),
(25, 42, 1, 2, 1, 1, 0, 1, 1, 1, 0, 1, '', '', '', '', '', '', '', '', '', ''),
(26, 43, 1, 0, 1, 1, 1, 1, 1, 2, 1, 1, '', '', '', '', '', '', '', '', '', ''),
(27, 44, 0, 0, 4, 4, 3, 2, 3, 2, 3, 2, '', '', '', '', '', '', '', '', '', ''),
(28, 45, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, '', '', '', '', '', '', '', '', '', ''),
(29, 46, 0, 1, 1, 1, 0, 1, 1, 0, 0, 1, '', '', '', '', '', '', '', '', '', ''),
(30, 47, 1, 2, 1, 1, 1, 2, 2, 1, 1, 1, '', '', '', '', '', '', '', '', '', ''),
(31, 48, 2, 2, 2, 1, 3, 1, 3, 2, 2, 2, '', '', '', '', '', '', '', '', '', ''),
(32, 49, 4, 3, 2, 3, 2, 3, 4, 3, 3, 4, '', '', '', '', '', '', '', '', '', ''),
(33, 50, 5, 4, 3, 2, 1, 0, 5, 1, 2, 3, '', '', '', '', '', '', '', '', '', ''),
(34, 51, 3, 4, 3, 3, 4, 4, 5, 4, 4, 5, '', '', '', '', '', '', '', '', '', ''),
(35, 52, 1, 2, 1, 2, 5, 2, 3, 2, 3, 2, '', '', '', '', '', '', '', '', '', ''),
(36, 53, 3, 4, 3, 3, 4, 3, 4, 3, 4, 4, '', '', '', '', '', '', '', '', '', ''),
(37, 54, 2, 3, 2, 3, 3, 4, 2, 3, 2, 3, '', '', '', '', '', '', '', '', '', ''),
(38, 55, 4, 3, 3, 3, 2, 3, 4, 3, 4, 3, '', '', '', '', '', '', '', '', '', ''),
(39, 56, 4, 4, 3, 4, 3, 4, 3, 4, 3, 5, '', '', '', '', '', '', '', '', '', ''),
(40, 57, 0, 5, 5, 0, 5, 5, 0, 5, 2, 3, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dimensi_3`
--

CREATE TABLE `dimensi_3` (
  `id` int(20) NOT NULL,
  `id_laporan` int(20) NOT NULL,
  `jawaban_3_1` int(10) NOT NULL,
  `jawaban_3_2` int(10) DEFAULT NULL,
  `jawaban_3_3` int(10) DEFAULT NULL,
  `jawaban_3_4` int(10) DEFAULT NULL,
  `jawaban_3_5` int(10) DEFAULT NULL,
  `jawaban_3_6` int(10) DEFAULT NULL,
  `pdf_3_1` text,
  `pdf_3_2` text,
  `pdf_3_3` text,
  `pdf_3_4` text,
  `pdf_3_5` text,
  `pdf_3_6` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dimensi_3`
--

INSERT INTO `dimensi_3` (`id`, `id_laporan`, `jawaban_3_1`, `jawaban_3_2`, `jawaban_3_3`, `jawaban_3_4`, `jawaban_3_5`, `jawaban_3_6`, `pdf_3_1`, `pdf_3_2`, `pdf_3_3`, `pdf_3_4`, `pdf_3_5`, `pdf_3_6`) VALUES
(4, 18, 3, 4, 3, 5, 5, 3, '', '', '', '', '', ''),
(5, 22, 5, 5, 5, 5, 5, 5, '', '', '', '', '', ''),
(6, 23, 5, 5, 5, 5, 5, 5, 'log_out.jpg', 'log_out.jpg', 'log_out.jpg', 'log_out.jpg', 'profile.jpg', 'profile.jpg'),
(7, 24, 3, 4, 2, 5, 1, 5, 'Achmad Fauzi Azmi.jpeg', 'Achmad Fauzi Azmi.jpeg', 'Achmad Fauzi Azmi.jpeg', 'Achmad_Fauzi_Azmi.pdf', 'Achmad_Fauzi_Azmi.pdf', 'Achmad_Fauzi_Azmi.pdf'),
(8, 25, 2, 4, 3, 4, 2, 2, '', '', '', '', '', ''),
(9, 26, 3, 4, 3, 5, 3, 5, '', '', '', '', '', ''),
(10, 27, 3, 2, 4, 2, 4, 2, '', '', '', '', '', ''),
(11, 28, 4, 2, 4, 3, 5, 3, '', '', '', '', '', ''),
(12, 29, 5, 5, 2, 4, 3, 5, '', '', '', '', '', ''),
(13, 30, 1, 2, 3, 4, 5, 2, '', '', '', '', '', ''),
(14, 31, 4, 1, 5, 2, 3, 2, '', '', '', '', '', ''),
(15, 32, 2, 3, 4, 2, 5, 3, '', '', '', '', '', ''),
(16, 33, 4, 4, 5, 3, 2, 4, '', '', '', '', '', ''),
(17, 34, 5, 4, 3, 5, 4, 4, '', '', '', '', '', ''),
(18, 35, 4, 5, 3, 4, 5, 3, '', '', '', '', '', ''),
(19, 36, 5, 5, 5, 5, 5, 5, '', '', '', '', '', ''),
(20, 37, 2, 2, 1, 3, 2, 2, '', '', '', '', '', ''),
(21, 38, 2, 3, 2, 3, 1, 3, '', '', '', '', '', ''),
(22, 39, 3, 3, 3, 2, 3, 2, '', '', '', '', '', ''),
(23, 40, 4, 4, 4, 4, 4, 5, '', '', '', '', '', ''),
(24, 41, 3, 3, 3, 3, 3, 4, '', '', '', '', '', ''),
(25, 42, 1, 1, 0, 1, 1, 0, '', '', '', '', '', ''),
(26, 43, 1, 1, 1, 1, 0, 1, '', '', '', '', '', ''),
(27, 44, 3, 3, 2, 3, 3, 3, '', '', '', '', '', ''),
(28, 45, 2, 2, 0, 0, 1, 2, '', '', '', '', '', ''),
(29, 46, 1, 1, 1, 1, 1, 1, '', '', '', '', '', ''),
(30, 47, 1, 1, 2, 1, 1, 2, '', '', '', '', '', ''),
(31, 48, 2, 1, 2, 1, 2, 1, '', '', '', '', '', ''),
(32, 49, 2, 3, 4, 2, 3, 4, '', '', '', '', '', ''),
(33, 50, 2, 2, 2, 3, 3, 3, '', '', '', '', '', ''),
(34, 51, 3, 4, 3, 4, 3, 4, '', '', '', '', '', ''),
(35, 52, 1, 2, 3, 2, 3, 1, '', '', '', '', '', ''),
(36, 53, 3, 4, 3, 4, 2, 3, '', '', '', '', '', ''),
(37, 54, 2, 3, 3, 2, 3, 3, '', '', '', '', '', ''),
(38, 55, 3, 4, 3, 4, 3, 4, '', '', '', '', '', ''),
(39, 56, 4, 3, 5, 4, 4, 3, '', '', '', '', '', ''),
(40, 57, 2, 0, 5, 5, 0, 1, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `dimensi_4`
--

CREATE TABLE `dimensi_4` (
  `id` int(20) NOT NULL,
  `id_laporan` int(20) NOT NULL,
  `jawaban_4_1` int(10) NOT NULL,
  `jawaban_4_2` int(10) DEFAULT NULL,
  `jawaban_4_3` int(10) DEFAULT NULL,
  `jawaban_4_4` int(10) DEFAULT NULL,
  `jawaban_4_5` int(10) DEFAULT NULL,
  `pdf_4_1` text,
  `pdf_4_2` text,
  `pdf_4_3` text,
  `pdf_4_4` text,
  `pdf_4_5` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dimensi_4`
--

INSERT INTO `dimensi_4` (`id`, `id_laporan`, `jawaban_4_1`, `jawaban_4_2`, `jawaban_4_3`, `jawaban_4_4`, `jawaban_4_5`, `pdf_4_1`, `pdf_4_2`, `pdf_4_3`, `pdf_4_4`, `pdf_4_5`) VALUES
(4, 18, 2, 4, 3, 2, 4, '', '', '', '', ''),
(5, 22, 5, 5, 5, 5, 5, '2091.jpg', '2091.jpg', '2091.jpg', '2091.jpg', '2091.jpg'),
(6, 23, 5, 5, 5, 5, 5, '2017-11-13_11_57_42-klikBCA_Individual.png', '2017-11-13_11_57_42-klikBCA_Individual.png', '2017-11-13_11_57_42-klikBCA_Individual.png', 'BUKTI_PEMBAYARAN_SIERRAINTIPERSADA.png', 'BUKTI_PEMBAYARAN_SIERRAINTIPERSADA.png'),
(7, 24, 5, 4, 3, 2, 1, 'Achmad_Fauzi_Azmi.pdf', 'Achmad_Fauzi_Azmi.jpg', 'Achmad_Fauzi_Azmi.jpg', 'Achmad_Fauzi_Azmi.jpg', 'Achmad_Fauzi_Azmi.jpg'),
(8, 25, 4, 1, 4, 1, 4, '', '', '', '', ''),
(9, 26, 4, 3, 4, 5, 5, '', '', '', '', ''),
(10, 27, 2, 4, 3, 5, 3, '', '', '', '', ''),
(11, 28, 5, 3, 5, 3, 5, '', '', '', '', ''),
(12, 29, 5, 3, 4, 2, 5, '', '', '', '', ''),
(13, 30, 4, 3, 3, 5, 5, '', '', '', '', ''),
(14, 31, 3, 5, 2, 5, 3, '', '', '', '', ''),
(15, 32, 4, 2, 4, 2, 5, '', '', '', '', ''),
(16, 33, 4, 3, 5, 4, 3, '', '', '', '', ''),
(17, 34, 5, 4, 3, 4, 4, '', '', '', '', ''),
(18, 35, 4, 3, 4, 4, 3, '', '', '', '', ''),
(19, 36, 5, 5, 5, 5, 5, '', '', '', '', ''),
(20, 37, 2, 2, 0, 3, 2, '', '', '', '', ''),
(21, 38, 3, 2, 3, 2, 3, '', '', '', '', ''),
(22, 39, 3, 3, 3, 3, 2, '', '', '', '', ''),
(23, 40, 4, 4, 4, 4, 5, '', '', '', '', ''),
(24, 41, 3, 3, 3, 3, 3, '', '', '', '', ''),
(25, 42, 1, 0, 1, 1, 2, '', '', '', '', ''),
(26, 43, 1, 1, 1, 0, 1, '', '', '', '', ''),
(27, 44, 3, 3, 2, 3, 2, '', '', '', '', ''),
(28, 45, 2, 1, 2, 1, 2, '', '', '', '', ''),
(29, 46, 1, 1, 1, 0, 1, '', '', '', '', ''),
(30, 47, 1, 2, 1, 2, 1, '', '', '', '', ''),
(31, 48, 2, 2, 1, 2, 1, '', '', '', '', ''),
(32, 49, 3, 2, 3, 2, 3, '', '', '', '', ''),
(33, 50, 2, 3, 2, 2, 2, '', '', '', '', ''),
(34, 51, 3, 4, 3, 4, 5, '', '', '', '', ''),
(35, 52, 2, 1, 3, 2, 1, '', '', '', '', ''),
(36, 53, 3, 4, 3, 3, 3, '', '', '', '', ''),
(37, 54, 3, 2, 1, 2, 3, '', '', '', '', ''),
(38, 55, 3, 4, 3, 4, 3, '', '', '', '', ''),
(39, 56, 4, 4, 4, 3, 4, '', '', '', '', ''),
(40, 57, 1, 0, 1, 0, 5, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_1`
--

CREATE TABLE `feedback_1` (
  `id` int(4) NOT NULL,
  `id_penilaian` int(4) NOT NULL,
  `feedback_1_1` varchar(200) DEFAULT NULL,
  `feedback_1_2` varchar(200) DEFAULT NULL,
  `feedback_1_3` varchar(200) DEFAULT NULL,
  `feedback_1_4` varchar(200) DEFAULT NULL,
  `feedback_1_5` varchar(200) DEFAULT NULL,
  `feedback_1_6` varchar(200) DEFAULT NULL,
  `feedback_1_7` varchar(200) DEFAULT NULL,
  `feedback_1_8` varchar(200) DEFAULT NULL,
  `feedback_1_9` varchar(200) DEFAULT NULL,
  `feedback_1_10` varchar(200) DEFAULT NULL,
  `feedback_1_11` varchar(200) DEFAULT NULL,
  `feedback_1_12` varchar(200) DEFAULT NULL,
  `feedback_1_13` varchar(200) DEFAULT NULL,
  `feedback_1_14` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_1`
--

INSERT INTO `feedback_1` (`id`, `id_penilaian`, `feedback_1_1`, `feedback_1_2`, `feedback_1_3`, `feedback_1_4`, `feedback_1_5`, `feedback_1_6`, `feedback_1_7`, `feedback_1_8`, `feedback_1_9`, `feedback_1_10`, `feedback_1_11`, `feedback_1_12`, `feedback_1_13`, `feedback_1_14`) VALUES
(1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 15, 'reerf123', 'tes', '', '', '', 'reerg', 'ge', 'gdd', '', '', '', '', '', ''),
(3, 16, 'df', '', '', 'f', '', 'er', '', '', 'rg', '', 'gg', '', '', 'gg'),
(4, 17, 'egr', '', '', '', '', '', '', '', '', '', '', '', 'bgbg', ''),
(5, 18, 'fgfbg', '', '', 'bgfb', '', '', '', '', '', '', 'bgf', '', '', ''),
(6, 19, 're', '', '', 'nh', '', '', 'nhrt', '', '', '', '', '', 'tr', ''),
(7, 20, 'hj', '', 'ju', '', '', '', '', '', '', '', '', '', '', 'juyj');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_2`
--

CREATE TABLE `feedback_2` (
  `id` int(4) NOT NULL,
  `id_penilaian` int(4) NOT NULL,
  `feedback_2_1` varchar(200) DEFAULT NULL,
  `feedback_2_2` varchar(200) DEFAULT NULL,
  `feedback_2_3` varchar(200) DEFAULT NULL,
  `feedback_2_4` varchar(200) DEFAULT NULL,
  `feedback_2_5` varchar(200) DEFAULT NULL,
  `feedback_2_6` varchar(200) DEFAULT NULL,
  `feedback_2_7` varchar(200) DEFAULT NULL,
  `feedback_2_8` varchar(200) DEFAULT NULL,
  `feedback_2_9` varchar(200) DEFAULT NULL,
  `feedback_2_10` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_2`
--

INSERT INTO `feedback_2` (`id`, `id_penilaian`, `feedback_2_1`, `feedback_2_2`, `feedback_2_3`, `feedback_2_4`, `feedback_2_5`, `feedback_2_6`, `feedback_2_7`, `feedback_2_8`, `feedback_2_9`, `feedback_2_10`) VALUES
(1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 15, '', 'h', '', 'g', '', 'f', '', 'f', '', ''),
(3, 16, '', 'rrgr', '', 'rr', '', '', 'ggbg', '', 'gg', ''),
(4, 17, 'fgbfg', '', '', 'fb', '', '', '', '', 'gbgf', ''),
(5, 18, '', '', 'bgfg', '', '', '', '', 'bgfg', '', ''),
(6, 19, 'hy', '', '', 'bvb', '', '', '', 'fghn', '', 'hnf'),
(7, 20, '', '', '', '', '', '', 'juju', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_3`
--

CREATE TABLE `feedback_3` (
  `id` int(4) NOT NULL,
  `id_penilaian` int(4) NOT NULL,
  `feedback_3_1` varchar(200) DEFAULT NULL,
  `feedback_3_2` varchar(200) DEFAULT NULL,
  `feedback_3_3` varchar(200) DEFAULT NULL,
  `feedback_3_4` varchar(200) DEFAULT NULL,
  `feedback_3_5` varchar(200) DEFAULT NULL,
  `feedback_3_6` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_3`
--

INSERT INTO `feedback_3` (`id`, `id_penilaian`, `feedback_3_1`, `feedback_3_2`, `feedback_3_3`, `feedback_3_4`, `feedback_3_5`, `feedback_3_6`) VALUES
(1, 14, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 15, '', 'thhhhh', 'hhhhhhhhhhhh', 'hh', 'th', ''),
(3, 16, 'gbgb', '', 'bg', '', 'bgb', ''),
(4, 17, '', '', 'sbg', '', 'gffgb', ''),
(5, 18, 'bgbgw', '', 'w', '', '', ''),
(6, 19, '', '', 'rtgh', '', '', ''),
(7, 20, '', '', '', '', 'jy', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_4`
--

CREATE TABLE `feedback_4` (
  `id` int(4) NOT NULL,
  `id_penilaian` int(4) NOT NULL,
  `feedback_4_1` varchar(200) DEFAULT NULL,
  `feedback_4_2` varchar(200) DEFAULT NULL,
  `feedback_4_3` varchar(200) DEFAULT NULL,
  `feedback_4_4` varchar(200) DEFAULT NULL,
  `feedback_4_5` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_4`
--

INSERT INTO `feedback_4` (`id`, `id_penilaian`, `feedback_4_1`, `feedback_4_2`, `feedback_4_3`, `feedback_4_4`, `feedback_4_5`) VALUES
(1, 14, NULL, NULL, NULL, NULL, NULL),
(2, 15, 'eg', '', 'dgd', '', 'bg'),
(3, 16, '', '', 'vfvf', 'bgb', ''),
(4, 17, 'ggfd', '', 'bg', '', ''),
(5, 18, '', '', '', '', 'we'),
(6, 19, '', 'fdhg', '', '', 'fgh'),
(7, 20, '', '', '', '', 'ju');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id` int(20) NOT NULL,
  `wilayah` varchar(50) NOT NULL,
  `jawaban_1` varchar(4) DEFAULT NULL,
  `jawaban_2` varchar(4) DEFAULT NULL,
  `jawaban_3` varchar(4) DEFAULT NULL,
  `jawaban_4` varchar(4) DEFAULT NULL,
  `Nilai` varchar(4) DEFAULT NULL,
  `tgl_terima` varchar(100) NOT NULL,
  `pdf_1` text,
  `pdf_2` text,
  `pdf_3` text,
  `pdf_4` text,
  `aktif` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id`, `wilayah`, `jawaban_1`, `jawaban_2`, `jawaban_3`, `jawaban_4`, `Nilai`, `tgl_terima`, `pdf_1`, `pdf_2`, `pdf_3`, `pdf_4`, `aktif`) VALUES
(1, 'CCCCCCCC', '1', 'FFFF', 'AAAA', '', '1', '06 April 2018', 'Employement_Application_Form_2018.pdf', '', '', '', 0),
(4, 'Aceh', 'yes', 'yes', 'yes', 'yes', '4', '2018-08-22', '', '', '', '', 0),
(5, 'Gorontalo', 'yes', 'no', 'yes', 'yes', '3', '2018-09-02', '', '', '', '', 0),
(10, 'Jawa Timur', 'yes', 'yes', 'yes', 'yes', '4', '2018-09-05', '209.jpg', 'EGDI1.png', 'S__16719877.jpg', 'S__16719878.jpg', 0),
(11, 'Banten', 'yes', 'yes', 'no', 'no', '2', '2018-09-07', '', '', '', '', 0),
(12, 'Banten', 'yes', 'no', 'no', 'no', '1', '2018-09-08', '', '', '', '', 0),
(13, 'Jawa Timur', 'yes', 'no', 'no', 'yes', '2', '2018-09-08', '', '', '', '', 0),
(14, 'Jawa Timur', 'yes', 'no', 'yes', 'no', '2', '2018-09-08', '', '', '', '', 0),
(15, 'Bali', 'yes', 'yes', 'no', 'no', '2', '2018-09-13', '4000021287-Upgrade_PLN_support_LTE_–_SULAMPAPUA.PDF', 'A_Study_of_Extreme_Programming_in_a_Large_Company.pdf', 'A_Study_of_Extreme_Programming_in_a_Large_Company.pdf', 'A_Study_of_Extreme_Programming_in_a_Large_Company.pdf', 0),
(16, 'Bali', 'yes', 'yes', 'yes', 'no', '3', '2018-09-13', '', '', '', '', 0),
(17, 'Bali', 'yes', 'yes', 'yes', 'yes', '4', '2018-09-13', 'Langkah_(1).png', 'Class_Diagram.jpg', 'Operasional_Haji_(1).jpg', 'theoritical_framework.png', 0),
(18, 'Kepulauan Riau', NULL, NULL, NULL, NULL, NULL, '2018-09-24', NULL, NULL, NULL, NULL, 0),
(19, 'Kepulauan Riau', NULL, NULL, NULL, NULL, NULL, '2018-09-25', NULL, NULL, NULL, NULL, 0),
(20, 'Kepulauan Riau', NULL, NULL, NULL, NULL, NULL, '2018-09-25', NULL, NULL, NULL, NULL, 0),
(21, 'Kepulauan Riau', '2.5', '2.4', '3.83', '3', NULL, '2018-09-25', NULL, NULL, NULL, NULL, 0),
(22, 'Kepulauan Riau', '5', '5', '5', '5', NULL, '2018-09-25', NULL, NULL, NULL, NULL, 0),
(23, 'Kepulauan Riau', '5', '5', '5', '5', NULL, '2018-09-25', NULL, NULL, NULL, NULL, 0),
(24, 'Kepulauan Riau', '3.92', '2.9', '3.33', '3', NULL, '2018-09-27', NULL, NULL, NULL, NULL, 0),
(25, 'Bali', '2.21', '2.4', '2.83', '2.8', '2.56', '2018-10-02', NULL, NULL, NULL, NULL, 0),
(26, 'Aceh', '3.21', '3.3', '3.83', '4.2', '3.63', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(27, 'Kepulauan Riau', '3.21', '3.5', '2.83', '3.4', '3.23', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(28, 'Banten', '3.28', '3.7', '3.5', '4.2', '3.67', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(29, 'Gorontalo', '3.92', '3.9', '4', '3.8', '3.90', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(30, 'Bangka Belitung', '2.64', '2.8', '2.83', '4', '3.06', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(31, 'Bengkulu', '2.5', '2.9', '2.83', '3.6', '2.95', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(32, 'Jakarta', '4', '4.1', '3.16', '3.4', '3.66', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(33, 'Jambi', '3.07', '3.8', '3.66', '3.8', '3.58', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(34, 'Jawa Barat', '3.71', '4', '4.16', '4', '3.97', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(35, 'Jawa Tengah', '3.85', '3.8', '4', '3.6', '3.81', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(36, 'Jawa Timur', '5', '5', '5', '5', '5', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(37, 'Kalimantan Barat', '1.78', '2', '2', '1.8', '1.89', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(38, 'Kalimantan Selatan', '2.28', '1.8', '2.33', '2.6', '2.25', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(39, 'Kalimantan Tengah', '2.85', '2.8', '2.66', '2.8', '2.78', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(40, 'Kalimantan Timur', '4.21', '4.1', '4.16', '4.2', '4.17', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(41, 'Lampung', '2.85', '3', '3.16', '3', '3.00', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(42, 'Maluku', '0.5', '0.9', '0.66', '1', '0.76', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(43, 'Maluku Utara', '1', '1', '0.83', '0.8', '0.90', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(44, 'Sulawesi Tenggara', '2.5', '2.3', '2.83', '2.6', '2.55', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(45, 'Nusa Tenggara Barat', '1.42', '1.1', '1.16', '1.6', '1.32', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(46, 'Nusa Tenggara Timur', '0.78', '0.6', '1', '0.8', '0.79', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(47, 'Papua', '1.42', '1.3', '1.33', '1.4', '1.36', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(48, 'Papua Barat', '1.85', '2', '1.5', '1.6', '1.73', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(49, 'Riau', '3.28', '3.1', '3', '2.6', '2.99', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(50, 'Sulawesi Barat', '2.28', '2.6', '2.5', '2.2', '2.39', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(51, 'Sulawesi Selatan', '4', '3.9', '3.5', '3.8', '3.8', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(52, 'Sulawesi Tengah', '2.07', '2.3', '2', '1.8', '2.04', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(53, 'Sulawesi Utara', '3.64', '3.5', '3.16', '3.2', '3.37', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(54, 'Sumatera Barat', '2.85', '2.7', '2.66', '2.2', '2.60', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(55, 'Sumatera Selatan', '3.42', '3.2', '3.5', '3.4', '3.38', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(56, 'Sumatera Utara', '4.07', '3.7', '3.83', '3.8', '3.85', '2018-10-02', NULL, NULL, NULL, NULL, 1),
(57, 'Bali', '3.57', '3', '2.16', '1.4', '2.53', '2018-10-05', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(20) NOT NULL,
  `wilayah` varchar(50) NOT NULL,
  `state` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `wilayah`, `state`) VALUES
(1, 'Aceh', 1),
(2, 'Bali', 1),
(3, 'Gorontalo', 1),
(4, 'Jawa Timur', 1),
(5, 'Kepulauan Riau', 1),
(6, 'Banten', 1),
(7, 'Bengkulu', 1),
(8, 'Jakarta', 1),
(9, 'Jambi', 1),
(10, 'Jawa Barat', 1),
(11, 'Jawa Tengah', 1),
(12, 'Kalimantan Barat', 1),
(13, 'Kalimantan Selatan', 1),
(14, 'Kalimantan Tengah', 1),
(15, 'Kalimantan Timur', 1),
(16, 'Kalimantan Utara', 0),
(17, 'Bangka Belitung', 1),
(18, 'Lampung', 1),
(19, 'Maluku', 1),
(20, 'Maluku Utara', 1),
(21, 'Nusa Tenggara Barat', 1),
(22, 'Nusa Tenggara Timur', 1),
(23, 'Papua', 1),
(24, 'Papua Barat', 1),
(25, 'Riau', 1),
(26, 'Sulawesi Barat', 1),
(27, 'Sulawesi Selatan', 1),
(28, 'Sulawesi Tengah', 1),
(29, 'Sulawesi Utara', 1),
(30, 'Sulawesi Tenggara', 1),
(31, 'Sumatera Barat', 1),
(32, 'Sumatera Selatan', 1),
(33, 'Sumatera Utara', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pendanaan`
--

CREATE TABLE `pendanaan` (
  `code_pendanaan` int(4) NOT NULL,
  `pendanaan_name` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(4) NOT NULL,
  `username_assessor` varchar(50) NOT NULL,
  `wilayah` text NOT NULL,
  `komentar_1` varchar(100) DEFAULT NULL,
  `komentar_2` varchar(100) DEFAULT NULL,
  `komentar_3` varchar(100) DEFAULT NULL,
  `komentar_4` varchar(100) DEFAULT NULL,
  `komentar_overall` varchar(200) DEFAULT NULL,
  `tgl_terima` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `username_assessor`, `wilayah`, `komentar_1`, `komentar_2`, `komentar_3`, `komentar_4`, `komentar_overall`, `tgl_terima`) VALUES
(1, 'AAAA', 'BBBB', NULL, NULL, NULL, NULL, NULL, ''),
(2, 'assessor1', 'Jawa Timur', 'sss', 'sss', 'ssfsd', 'sfggfdgdf', '<p>gaeferterfgrfgfd</p>\r\n', '2018-09-08'),
(3, 'assessor1', 'Banten', 'mohon sampling diperbanyak', 'tidak ada bukti foto lapangan', 'mohon ditampilkan seluruh datanya', 'mohon data dirapihkan kembali', '<p>cukup bagus, mohon bukti lebih dilengkapi dan data diperdetail kembali terima kasih</p>\n', '2018-09-08'),
(4, 'assessor1', 'Jawa Timur', 'erfefr', '', 're', '', '<p>grreer</p>\r\n', '2018-09-08'),
(5, 'assessor1', 'Jawa Timur', 'erfre', '', '', 'fre', '<p>rferf</p>\r\n', '2018-09-08'),
(6, 'assessor1', 'Jawa Timur', 'f', 'f', 'f', 'f', '', '2018-09-08'),
(7, 'assessor1', 'Bali', 'data pdf tidak terbaca', 'Mohon diberikan bukti yang lebih detail', '', '', '', '2018-09-13'),
(8, 'assessor1', 'Bali', 'bagus', 'mohon raw data juga ditampilkan, tidak hanya hasil pengolahan data', '', '', '', '2018-09-13'),
(9, 'assessor1', 'Kepulauan Riau', 'eee', '', '', 'ee', '<p>ee</p>\r\n', '2018-09-25'),
(10, 'assessor1', 'Kepulauan Riau', '', 'dddd', '', '', '', '2018-09-25'),
(11, 'assessor1', 'Kepulauan Riau', '', 'etretr', '', 'etrree', '', '2018-09-25'),
(12, 'assessor1', 'Kepulauan Riau', 'erfer', 'fer', '', '', '', '2018-09-25'),
(13, 'assessor1', 'Kepulauan Riau', '', '', 'bv b v bnv', '', '', '2018-09-25'),
(14, 'assessor1', 'Kepulauan Riau', NULL, NULL, NULL, NULL, '', '2018-09-27'),
(15, 'assessor1', 'Kepulauan Riau', NULL, NULL, NULL, NULL, '', '2018-09-27'),
(16, 'assessor1', 'Aceh', NULL, NULL, NULL, NULL, '', '2018-10-02'),
(17, 'assessor1', 'Bali', NULL, NULL, NULL, NULL, '', '2018-10-02'),
(18, 'assessor1', 'Banten', NULL, NULL, NULL, NULL, '', '2018-10-02'),
(19, 'assessor1', 'Gorontalo', NULL, NULL, NULL, NULL, '', '2018-10-02'),
(20, 'assessor1', 'Bali', NULL, NULL, NULL, NULL, '', '2018-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` int(11) NOT NULL,
  `dimensi` varchar(20) NOT NULL,
  `variabel` varchar(100) NOT NULL,
  `pertanyaan` varchar(500) NOT NULL,
  `bukti` varchar(200) DEFAULT NULL,
  `level_0` varchar(500) NOT NULL,
  `level_1` varchar(500) NOT NULL,
  `level_2` varchar(500) NOT NULL,
  `level_3` varchar(500) NOT NULL,
  `level_4` varchar(500) NOT NULL,
  `level_5` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `dimensi`, `variabel`, `pertanyaan`, `bukti`, `level_0`, `level_1`, `level_2`, `level_3`, `level_4`, `level_5`) VALUES
(1, 'sumber daya', 'Supportive ICT Infrastructure/Service\r\nAvailability', 'Tersedia layanan TIK di instansi anda yang mendukung kegiatan anda.', 'Terdapat infrastruktur yang mendukung kegiatan TIK(semisal jaringan internet, WIFI, Komputer dsb)', 'Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal untuk adanya mendukung infrastruktur IT.', 'Terdapat layanan TIK namun belum digunakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait layanan TIK.', 'Layanan TIK sudah ada, dan digunakan namun penggunaanya belum diawasi. Adapun data pendukungnya adalah Dokumentasi terkait layanan TIK.', 'Layanan TIK sudah ada, digunakan dan diawasi namun belum di evaluasi penggunaannya. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait layanan TIK.', 'Layanan TIK sudah dilaksanakan, diawasi, dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait layanan TIK.', 'Kebijakan internal terkait integrasi sistem aplikasi dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki kebijakan internal agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi'),
(2, 'sumber daya', 'strong leadership', 'Terdapat dukungan dari pemimpin dalam penggunaan TIK.', 'Upload data berupa kebijakan dan anggaran', 'Tidak terdapat dukungan dari pimpinan', 'Ada peran pemimpin tetapi belum didukung produk hukum dan hanya memiliki kewenangan di bidang TIK. Adapun data pendukungnya adalah Kebijakan atau aturan terkait layanan TIK.', 'kebijakan dari pimpinan sudah ada, dan di terapkan namun penerapannya belum diawasi. Adapun data pendukungnya adalah Dokumentasi terkait visi misi TIK.', 'Kebijakan pimpinan sudah ada, digunakan dan diawasi namun belum di evaluasi penggunaannya. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait visi misi TIK.', 'Kebijakan pemimpin sudah dilaksanakan secara menyeluruh, sudah diawasi, dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait visi misi TIK.', 'Kebijakan pemimpin sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(3, 'sumber daya', 'Good Team Skills & Expertise', 'Team TIK terdiri dari orang yang berkompeten dan ahli di bidangnya', 'Data yng diberikan berupa data anggota team IT, sertifikat yang dimiliki dan evaluasi kinerja team IT', 'Tidak terdapat tim TIK.', 'Terdapat team IT namun belum memiliki program kerja. Adapun data pendukungnya adalah Kebijakan atau aturan terkait tim TIK.', 'Team It sudah ada, memiliki program kerja namun belum diketahui kompetensinya. Adapun data pendukungnya adalah Dokumentasi terkait tim TIK.', 'Team IT sudah ada, berjalan dan diawasi kompetensinya namun belum dievaluasi kompetensi dan keahliannya.Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait tim TIK.', 'Memiliki SDM TI yang kompeten  dan SOP pengelolaan TIK disempurnakan berdasarkan hasil evaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait tim TIK.', 'Team IT sudah ada, berjalan, diawasi dan dievaluasi, telah dikendalikan di Instansi Pusat/Pemerintah Daerah Saudara dan sudah di tingkatkan kemampuannya.'),
(4, 'sumber daya', 'good planning', 'Terdapat Blueprint atau Visi dan Arah kebijakan terkait pembangunan IT', 'dokumen terkait blueprint, laporan pengerjaan dan laporan pelaksanaan kebijakan yang telah dilaksanakan.', 'Tidak terdapat visi dan arah kebijakan', 'Visi dan arah kebijakan sedang di susun dan belum disahkan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait perancanaan layanan TIK.', 'Visi dan arah kebijakan sudah ada, dijalankan tapi belum diawasi. Adapun data pendukungnya adalah Dokumentasi terkait visi misi TIK.', 'Visi dan arah kebijakan sudah ada, dijalankan dan diawasi namun belum dievaluasi di Instansi Pusat/Pemerintah Daerah Saudara. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait visi misi TIK.', 'Visi dan arah kebijakan sudah ada, dijalankan, diawasi dan dievaluasi, namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait visi misi TIK.', 'Pengukuran kepuasan masyarakat terhadap layanan sistem aplikasi sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan dan sudah ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(5, 'sumber daya', 'enough funding', 'Pendanaan untuk pembangunan infrastuktur TIK', 'Anggaran instansi', 'Tidak terdapat pendanaan', 'Terdapat kebijakan terkait pendanaan namun belum direalisasikan. Adapun data pendukungnya adalah Anggaran instansi anda.', 'Pendanaan sudah ada, tapi tidak sesuai rencana pembangunan jangka menengah nasional. Adapun data pendukungnya adalah Anggaran instansi anda.', 'Pendanaan sudah ada, dijalankan tapi belum terserap seluruhnya. Adapun data pendukungnya adalah Anggaran instansi anda.', 'Pendanaan sudah ada, dijalankan, dan dievaluasi serta mampu mendapat sumber pembiayaan lain untuk pembangunan layanan TIK. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait anggaran TIK.', 'Pendanaan sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan dan sudah ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(6, 'sumber daya', 'support interopability', 'Sistem dalam e-government dalam saling mendukung', NULL, 'Tidak terdapat dukungan terhadap interopabilitas', 'Sudah ada rencana terhadap interopabilitas lembaga namun belum dijalankan. Adapun data pendukungnya adalah Bukti sistem dalam e-government dapat saling berinteraksi langsung.', 'Interopabilitas lembaga sudah ada, dijalankan namun masih terbatas pada beberapa unit kerja. Adapun data pendukungnya adalah Bukti sistem dalam e-government dapat saling berinteraksi langsung.', 'Interopabilitas lembaga sudah ada, dijalankan pada seluruh unit kerja dalam instansi namun belum dievaluasi. Adapun data pendukungnya adalah Bukti sistem dalam e-government dapat saling berinteraksi langsung.', 'Interopabilitas lembaga sudah ada, dijalankan pada seluruh unit kerja dalam instansi dan sudah dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait anggaran TIK.', ''),
(7, 'sumber daya', 'training', 'Terdapat pelatihan terkait pemanfaatan e-government', 'daftar pelatihan yang diberikan kepada instansi terkait penggunaan e-government', 'Tidak terdapat pelatihan terkait e-Government.', 'Terdapat rencana pelatihan terkait e-Government namun belum dilaksanakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait pelatihan di bidang TIK.', 'Pelatihan terkait e-Government sudah ada, dijalankan tapi belum diawasi. Adapun data pendukungnya adalah Kebijakan atau aturan terkait pelatihan di bidang TIK.', 'Pelatihan terkait e-Government sudah ada, dijalankan dan diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Kebijakan atau aturan terkait pelatihan di bidang TIK.', 'Pelatihan terkait e-Government sudah ada sudah ada, dijalankan, sesuai dengan rencana strategis dan sudah di evaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait visi misi TIK.', 'Pelatihan terkait e-Government sudah ada sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan dan sudah ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(8, 'sumber daya', 'good & clear organizational structure', 'Terdapat struktur organisasi dalam pengembangan TIK di instansi anda', 'Struktur organisasi dalam pembangunan e-government di daerah anda, bagaimana pelaksaanaan tugas, dan evaluasi serta peningkatan yang dilakukan', 'Tidak terdapat organisasi yang mengelola TIK.', 'Terdapat perencanaan namun belum dijalankan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait perancanaan pengorganisasian tim TIK.', 'Struktur organisasi sudah ada, dijalankan tapi belum diawasi. Adapun data pendukungnya adalah Dokumentasi terkait organisasi TIK.', 'Struktur organisasi sudah ada, dijalankan dan diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait organisasi TIK.', 'Struktur organisasi sudah ada, dijalankan, diawasi dan sudah dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait organisasi TIK.', 'Struktur organisasi sudah ada, dijalankan, diawasi, dievaluasi, dan sudah ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(9, 'sumber daya', 'legal framework', 'Terdapat kerangka hukum terkait e-government di daerah anda', 'peraturan/kebijakan yang dikeluarkan instansi terkait e-government', 'Tidak terdapat peraturan terkait penggunaan e-Government.', 'Terdapat peraturan terkait penggunaan e-Government namun belum dijalankan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait perancanaan kerangka hukum layanan e-Government.', 'Peraturan terkait penggunaan e-Government sudah ada, dijalankan tapi belum diawasi. Adapun data pendukungnya adalah Dokumentasi terkait kerangka hukum layanan e-Government.', 'Peraturan terkait penggunaan e-Government sudah ada, dijalankan dan diawasi namun belum dievaluasi di Instansi Pusat/Pemerintah Daerah Saudara. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait kerangka hukum layanan e-Government.', 'Peraturan terkait penggunaan e-Government sudah ada, dijalankan, diawasi dan dievaluasi, namun belum tingkatkan di Instansi Pusat/Pemerintah Daerah Saudara. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait kerangka hukum layanan e-Government.', 'Peraturan terkait penggunaan e-Government sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan dan sudah ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(10, 'sumber daya', 'awareness', 'Terdapat kesadaran akan pentingnya penggunaan e-government', NULL, 'Tidak terdapat kesadaran akan pentingnya penggunaan e-Government.', 'Terdapat rencana kebijakan terkait  penggunaan e-Government. Adapun data pendukungnya adalah Kebijakan atau aturan terkait penggunaan e-Government', 'Kebijakan penggunaan e-government sudah ada, dijalankan tapi layanan dapat berjalan tanpa e-Government. Adapun data pendukungnya adalah Dokumentasi terkait layanan e-Government.', 'Kebijakan penggunaan e-government sudah ada sudah ada, dijalankan dan diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait layanan e-Government.', 'Kebijakan penggunaan e-government sudah ada sudah ada, dijalankan, diawasi dan dievaluasi, layanan tidak dapat berjalan tanpa e-government. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait layanan e-Government.', 'Kebijakan penggunaan e-government sudah ada, dijalankan, diawasi, dievaluasi, dan sudah ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(11, 'sumber daya', 'system security', 'Terdapat sistem keamanan yang baik dalam pengaplikasian e-government', 'laporan mengenai sistem keamanan yang digunakan', 'Tidak ada sistem keamanan dalam pengaplikasian e-Government.', 'Terdapat sistem keamanan dalam pengaplikasian e-Government namun belum diterapkan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait penggunaan layanan keamanan di e-Government.', 'Sistem keamanan dalam pengaplikasian e-Government sudah ada, dijalankan tapi belum diawasi. Adapun data pendukungnya adalah Dokumentasi terkait layanan keamanan di e-Government', 'Pengukuran kepuasan masyarakat terhadap layanan sistem aplikasi e-Government sudah ada, dijalankan dan diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait layanan keamanan di e-Government.', 'Sistem keamanan dalam pengaplikasian e-Government sudah ada, dijalankan, diawasi dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait layanan keamanan di e-Government', 'Sistem keamanan dalam pengaplikasian e-Government sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan dan sudah ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(12, 'sumber daya', 'creativity & innovation', 'Terdapat inovasi atau pengembangan dari institusi anda dalam penggunaan e-government.', 'laporan terkait inovasi dan pengembangan yang dilakukan.', 'Tidak terdapat inovasi dan pengembangan yang dilakukan dalam pengaplikasian e-Government.', 'Terdapat inovasi dan pengembangan yang dilakukan dalam pengaplikasian e-Government namun belum di lakukan.', 'Terdapat inovasi dan pengembangan yang dilakukan dalam pengaplikasian e-Government namun belum di lakukan. Adapun data pendukungnya adalah Dokumentasi terkait layanan keamanan di e-Government.', 'Inovasi dan pengembangan yang dilakukan dalam pengaplikasian e-Government sudah ada, dijalankan dan diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait pengembangan e-Government.', 'Inovasi dan pengembangan yang dilakukan dalam pengaplikasian e-Government sudah ada, dijalankan, diawasi dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait pengembangan e-Government', 'Inovasi dan pengembangan yang dilakukan dalam pengaplikasian e-Government sudah ada, dijalankan, diawasi, dievaluasi, dan sudah ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(13, 'sumber daya', 'user & stakeholder involvement', 'Keterlibatan pengguna dan pemangku kepentingan dalam pengembangan e-government', 'informasi yang berisi proses pengembangan e-government di instansi dan peran stakeholder yang terkait dalam pengembangannya.', 'Tidak ada keterlibatan apapun baik dari pengguna dan pemangku kepentingan dalam pengembangan e-Government.', 'Terdapat rencana memperlibatkan pengguna dan pemangku kepentingan dalam pengembangan e-Government namun belum dilaksanakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait pengguna e-Government.', 'Keterlibatan baik dari pengguna dan pemangku kepentingan dalam pengembangan e-Government sudah ada, dijalankan tapi belum diawasi. Adapun data pendukungnya adalah Dokumentasi terkait pengguna e-Government.', 'Keterlibatan baik dari pengguna dan pemangku kepentingan dalam pengembangan e-Government sudah ada, dijalankan dan diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait pengguna e-Government.', 'Keterlibatan baik dari pengguna dan pemangku kepentingan dalam pengembangan e-Government sudah ada, dijalankan, diawasi dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait pengguna e-Government.', 'Keterlibatan baik dari pengguna dan pemangku kepentingan dalam pengembangan e-Government sudah ada, dijalankan, diawasi, dievaluasi, dan sudah ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(14, 'sumber daya', 'citizen computer literacy', 'Terdapat pelayanan e-government yang digunakan oleh masyarakat sekitar', 'data penggunaan aplikasi e-government di instansi anda oleh penduduk daerah, jika data belum ada tunjukan screenshoot aplikasinya.', 'Tidak terdapat layanan sistem aplikasi e-Government.', 'Terdapat perencanaan layanan sistem aplikasi e-Government namun belum dijalankan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait penggunaan e-Government.', 'Layanan sistem aplikasi e-Government sudah ada, dijalankan tapi belum diawasi. Adapun data pendukungnya adalah Dokumentasi terkait layanan e-Government terhadap masyarakat.', 'Layanan sistem aplikasi e-Government sudah ada, dijalankan dan diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait penggunaan e-Government.', 'Layanan sistem aplikasi e-Government sudah ada, dijalankan, diawasi dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait penggunaan e-Government di masyarakat.', 'Layanan sistem aplikasi e-Government sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan dan sudah ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(15, 'pengungkit', 'supportive government policy', 'Kebijakan pemerintahan yang mendukung e-govenment', '', 'Tidak terdapat kebijakan internal terkait dukungan kebijakan pemerintah', 'Terdapat kebijakan pendukung penerapan TIK namun belum dijalankan. Adapun data pendukungnya adalah Kebijakan atau aturan yang mendukung e-government ', 'Terdapat kebijakan pendukung penerapan TIK yang dijalankan namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi kebijakan terkait.', 'Terdapat kebijakan pendukung penerapan TIK, dijalankan dan diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait kegiatan TIK.', 'Terdapat kebijakan pendukung penerapan TIK yang sudah dijalankan diawasi dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait kebijakan pendukung e-government.', 'Kebijakan internal terkait dukungan kebijakan pemerintah sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(16, 'pengungkit', 'good partnership with other institution', 'Kebijakan mengenai kerjasama dengan instansi lain ', NULL, 'Tidak ada kebijakan pendukung', 'Terdapat kebijakan kerjasama  namun belum dilaksanakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait perencanaan kerjasama instansi.', 'Kebijakan kerjasama sudah dilaksanakan namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi kebijakan terkait.', 'Kebijakan kerjasama sudah dilaksanakan, diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait kerjasama instansi.', 'Kebijakan kerjasama sudah dilaksanakan, diawasi, dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait kerjasama instansi.', 'Kebijakan eksternal terkait kemitraan yang baik dengan Institusi lain sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(17, 'pengungkit', 'political support & stability', 'Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan eksternal terkait dukungan politik dan stabilitas', NULL, 'Tidak ada kebijakan pendukung', 'Terdapat kebijakan ekternal terkait dukungan politik dan stabilitas. Adapun data pendukungnya adalah Kebijakan atau aturan terkait dukungan dan stabilitas politik.', 'Kebijakan eksternal terkait dukungan politik dan stabilitas sudah ada, dijalankan tapi belum diawasi. Adapun data pendukungnya adalah Dokumentasi kebijakan terkait.', 'Kebijakan eksternal terkait dukungan politik dan stabilitas yang baik sudah ada, dijalankan dan diawasi namun belum dievaluasi di Instansi Pusat/Pemerintah Daerah Saudara. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait partai politik.', 'Kebijakan eksternal terkait dukungan politik dan stabilitas sudah ada, dijalankan, diawasi dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait kebijakan untuk partai politik.', 'Kebijakan eksternal terkait dukungan politik dan stabilitas sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(18, 'pengungkit', 'good project management', 'Instansi Pusat/Pemerintah Daerah Saudara memiliki Tata Kelola proyek IT pada instansi', NULL, 'Tidak terdapat kebijakan internal terkait pengelolaan proyek TIK.', 'Terdapat kebijakan manajemen proyek namun belum dilaksanakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait perencanaan proyek  (Business Process Reengineering).', 'Kebijakan manajemen proyek sudah dilaksanakan namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi Business Case Document (BCD) atau Business Requirement Document (BRD).', 'Kebijakan manajemen proyek sudah dilaksanakan, diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait proyek IT.', 'Kebijakan manajemen proyek sudah dilaksanakan, diawasi, dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporanproject charter)  terkait proyek IT.', 'Kebijakan internal terkait pengelolaan proyek TIK sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(19, 'nilai', 'better business process', 'Kondisi proses bisnis di instansi saudara.', 'Dibuktikan dengan gambaran bisnis proses\r\n', 'Tidak ada perencanaan terkait BPR (Business Process Reengineering).', 'BPR (Business Process Reengineering) sudah direncanakan tetapi belum dilaksanakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait perencanaan BPR (Business Process Reengineering).', 'BPR (Business Process Reengineering) sudah direncanakan, dilaksanakan namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi BPR.', 'BPR (Business Process Reengineering)  sudah direncanakan, dilaksanakan, diawasi tetapi belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait bisnis proses.', 'BPR (Business Process Reengineering)  sudah direncanakan, dilaksanakan, diawasi dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait business process reengineering.', 'Alur kerja terkait e-Government sudah ada, dijalankan, diawasi, dievaluasi, dan sudah ditingkatkan oleh Instansi Pusat/Pemerintah Daerah Saudara.'),
(20, 'nilai', 'supportive cultural environment', 'Kondisi budaya organisasi di instansi saudara.', 'kebiasaan dalam kelompok IT ataupun pengguna serta pegawai di instansi anda yang menggerakkan adanya penggunaan e-government.', 'Belum ada aturan dalam mendorong budaya organisasi yang suportif.', 'Aturan dalam mendorong budaya organisasi yang suportif sudah ada, namun belum dilaksanakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait budaya organisasi yang suportif.', 'Aturan dalam mendorong budaya organisasi yang suportif sudah ada, dilaksanakan namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi (foto atau laporan) terkait kegiatan yang mencerminkan budaya organisasi.', 'Aturan dalam mendorong budaya organisasi yang suportif sudah ada, dilaksanakan, diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait budaya kerja di organisasi.', 'Aturan dalam mendorong budaya organisasi yang suportif sudah ada, dilaksanakan, diawasi dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait budaya kerja di organisasi.\n', 'Budaya kerja yang mendukung penerapan e-government sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan dan sudah ditingkatkan oleh Instansi Pusat/Pemerintah Daerah Saudara.'),
(21, 'nilai', 'electronic transaction', 'Mekanisme transaksi elektronik di instansi anda.', 'data terkait e-procurement, e-banking, dsb', 'Belum ada mekanisme transaksi elektronik.', 'Sudah ada mekanisme transaksi elektronik namun belum dilaksanakan secara menyeluruh. Adapun data pendukungnya adalah Kebijakan atau aturan terkait mekanisme transaksi elektronik.', 'Sudah ada mekanisme transaksi elektronik, sudah dilaksanakan secara menyeluruh namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi terkait transaksi elektronik.', 'Sudah ada mekanisme transaksi elektronik, sudah dilaksanakan secara menyeluruh, sudah diawasi, namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait transaksi elektronik.', 'Sudah ada mekanisme transaksi elektronik, sudah dilaksanakan secara menyeluruh, sudah diawasi, dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait mekanisme transaksi elektronik.', 'Penggunaan transaksi elektronik sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan dan sudah ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(22, 'nilai', 'trust', 'Kepercayaan masyarakat dalam menggunakan layanan e-government di instansi anda.', 'pengujian data atau informasi terhadap aplikasi di instansi anda.', 'Masyarakat masih menggunakan jalur tradisional (offline)', 'Masyarakat sudah mengakses sistem  e-Government  tetapi sebatas layanan informasional saja. Adapun data pendukungnya adalah Kebijakan atau aturan terkait sosialisasi penggunaan layanan di instansi anda.', 'Masyarakat menggunakan layanan transaksional  e-Government yang telah disediakan namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi terkait penggunaan layanan oleh masyarakat (jumlah pengguna, atau akun yang terdaftar).', 'Masyarakat menggunakan layanan transaksional  e-Government yang telah disediakan, diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait penggunaan layanan oleh masyarakat.', 'Masyarakat menggunakan layanan transaksional  e-Government yang telah disediakan, diawasi dan sudah dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait penggunaan layanan oleh masyarakat.', 'Pengukuran kepuasan masyarakat terhadap layanan sistem aplikasi sudah ada, dijalankan, diawasi, dievaluasi, dan sudah  ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(23, 'nilai', 'e-participation', 'Partisipasi publik melalui TIK di instansi anda.', 'Dibuktikan dengan penetrasi kunjungan aplikasi e-government anda', 'Belum ada partisipasi publik melalui TIK', 'Pemerintah sudah membangun sistem untuk memfasilitasi publik berpartisipasi melalui TIK, namun belum mendapat respon dari publik. Adapun data pendukungnya adalah Kebijakan atau aturan terkait partisipasi publik pada layanan di instansi anda.', 'Pemerintah sudah membangun sistem untuk memfasilitasi publik berpartisipasi melalui TIK, sudah mendapat respon yang baik, namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi (screenshot) terkait sistem partisipasi masyarakat seperti lapor.go.id (layanan aspirasi dan pengaduan online rakyat) pada instansi anda.', 'Pemerintah sudah membangun sistem untuk memfasilitasi publik berpartisipasi melalui TIK, sudah mendapat respon yang baik, diawasi, namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait penggunaan layanan e-participation  oleh masyarakat.', 'Pemerintah sudah membangun sistem untuk memfasilitasi publik berpartisipasi melalui TIK, sudah mendapat respon yang baik, diawasi, dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait penggunaan layanan e-participation.', 'Pengukuran penggunaan oleh masyarakat terhadap layanan sistem aplikasi sudah ada, dijalankan, diawasi, dievaluasi, dan sudah ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(24, 'nilai', 'using portal/application', 'Penggunaan portal/ aplikasi di intansi anda.', 'Dibuktikan dengan list dan link terhadap aplikasi berupa, web, aplikasi hp, dsb', 'Portal web digunakan sebatas untuk diseminasi informasi yang bersifat statis.', 'Portal web digunakan untuk diseminasi informasi dan pemasukan data yang bersifat interaktif, namun belum digunakan untuk layanan terpadu dan terintegrasi. Adapun data pendukungnya adalah Kebijakan atau aturan terkait penggunaan web portal/aplikasi.', 'Portal web digunakan untuk diseminasi informasi, layanan terpadu dan terintegrasi, namun belum diawasi oleh pihak terkait. Adapun data pendukungnya adalah Dokumentasi (screenshot) terkait penggunaan web portal/aplikasi.', 'Portal web digunakan untuk diseminasi informasi, layanan terpadu dan terintegrasi, diawasi, namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan (contoh dari divisi TI) terkait penggunaan web portal.', 'Portal web digunakan untuk diseminasi informasi, layanan terpadu dan terintegrasi, diawasi, dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan) terkait penggunaan web portal atau aplikasi.', 'Pengukuran kepuasan masyarakat terhadap layanan sistem aplikasi sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(25, 'dampak', 'User Satisfaction', 'Standar pelayanan publik di instansi saudara.', NULL, 'Tidak terdapat standar pelayanan publik.', 'Terdapat standar pelayanan publik namun belum dilaksanakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait standar pelayanan publik.\n', 'Terdapat standar pelayanan publik, sudah dilaksanakan, namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi terkait standar pelayanan publik.', 'Terdapat standar pelayanan publik, sudah dilaksanakan, diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait standar pelayanan.', 'Terdapat standar pelayanan publik, sudah dilaksanakan, diawasi dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait standar pelayanan publik.', 'Pengukuran kepuasan masyarakat terhadap layanan sistem aplikasi sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(26, 'dampak', 'Self-Sustanaible Revenue', 'Kontribusi pendapatan secara berkelanjutan dari penggunaan layanan e-government di instansi saudara.', NULL, 'Tidak ada pendapatan berkelanjutan dari penggunaan layanan e-government.', 'Terdapat pendapatan berkelanjutan dari penggunaan layanan e-government. Adapun data pendukungnya adalah Kebijakan atau aturan terkait pendapatan berkelanjutan dari layanan e-government.', 'Pendapatan yang berkelanjutan dari penggunaan layanan e-government sudah ada, dijalankan tapi belum diawasi. Adapun data pendukungnya adalah Dokumentasi terkait pendapatan berkelanjutan dari layanan e-government.', 'Pendapatan yang berkelanjutan dari penggunaan layanan e-government sudah ada, dijalankan, diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait pendapatan berkelanjutan dari layanan e-government.', 'Pendapatan yang berkelanjutan dari penggunaan layanan e-government sudah ada, dijalankan, diawasi, dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait pendapatan berkelanjutan dari layanan e-government.', 'Pendapatan berkelanjutan Instansi Pusat/Pemerintah Daerah Saudara dari penggunaan layanan e-Government sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan.'),
(27, 'dampak', 'Open Government', 'Kondisi keterbukaan data dalam instansi saudara.', NULL, 'Tidak terdapat kebijakan open government.', 'Terdapat konsep Kebijakan terkait hak warganegara \n untuk mengakses dokumen dan proses pemerintah dengan Layanan e-Government namun belum dijalankan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait open government.', 'Terdapat konsep Kebijakan terkait hak warganegara untuk mengakses dokumen dan proses pemerintah dengan Layanan e-Government. Adapun data pendukungnya adalah sudah ada, dilaksanakan tetapi belum diawasi.', 'Kebijakan terkait hak warganegara untuk mengakses dokumen dan proses pemerintah dengan Layanan e-Government  sudah ada, dilaksanakan dan diawasi namun belum dievaluasi. adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait open government.', 'Kebijakan terkait hak warganegara untuk mengakses dokumen dan proses pemerintah dengan Layanan e-Government sudah ada, dijalankan, diawasi dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait open government', 'Kebijakan terkait hak warganegara untuk mengakses dokumen dan proses pemerintah dengan Layanan e-Government di Instansi Pusat/Pemerintah Daerah Saudara sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan.'),
(28, 'dampak', 'Good Governance', 'Kondisi tata kelola TIK di instansi saudara.', NULL, 'Tidak terdapat tata kelola TIK.', 'Terdapat kebijakan atau aturan terkait tata kelola TIK tetapi belum dilaksanakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait tata kelola TIK.', 'Tata kelola TIK sudah ada, dijalankan namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi terkait penerapan tata kelola TIK.', 'Tata kelola TIK sudah ada, dijalankan, diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait tata kelola TIK.', 'Tata kelola TIK sudah ada, dijalankan, diawasi, dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait tata kelola TIK.', 'Kebijakan internal terkait rencana induk SPBE dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki kebijakan agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.'),
(29, 'dampak', 'Prototype', 'Kondisi prototipe sistem e-government di instansi saudara.', NULL, 'Tidak terdapat prototipe sistem e-Government di Instansi Pusat/Pemerintah Daerah Saudara.', 'Terdapat prototipe sistem e-Government di Instansi Pusat/Pemerintah Daerah Saudara namun belum dijalankan. adapun data pendukungnya adalah Kebijakan atau aturan terkait prototipe sistem e-government.', 'Prototipe sistem e-Government di Instansi Pusat/Pemerintah Daerah Saudara sudah ada dan dijalankan namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi prototipe sistem e-government.', 'Prototipe sistem e-government sudah ada, dijalankan dan diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait prototipe sistem.', 'Prototipe sistem e-government sudah ada, dijalankan, diawasi dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait prototipe sistem e-government.', 'Prototipe sistem e-Government di Instansi Pusat/Pemerintah Daerah Saudara sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan.'),
(30, 'pengungkit', 'Good Change Management', 'Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait manajemen perubahan', NULL, 'Tidak terdapat kebijakan internal terkait manajemen perubahan di Instansi Pusat/Pemerintah Daerah Saudara.', 'Terdapat kebijakan manajemen proyek namun belum dilaksanakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait perencanaan BPR (Business Process Reengineering).', 'Kebijakan manajemen proyek sudah dilaksanakan namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi perubahan seperti request of change (RFC)', 'Kebijakan manajemen proyek sudah dilaksanakan, diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait bisnis proses.', 'Kebijakan manajemen proyek sudah dilaksanakan, diawasi, dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait business change management.', 'Kebijakan internal terkait manajemen perubahan sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(31, 'pengungkit', 'Monitoring & Evaluation', 'Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait pemnatauan dan evaluasi program TIK', NULL, 'Tidak terdapat kebijakan internal terkait pemantauan dan evaluasi program TIK.', 'Terdapat konsep kebijakan internal terkait pemantauan dan evaluasi program TIK. Adapun data pendukungnya adalah Kebijakan atau aturan pengawasan dan evaluasi.', 'Kebijakan internal terkait dukungan kebijakan pemerintah sudah ada, dijalankan dan diawasi namun belum dievaluasi di Instansi Pusat/Pemerintah Daerah Saudara. Adapun data pendukungnya adalah Dokumentasi BPR.', 'Kebijakan internal terkait pemantauan dan evaluasi program TIK.sudah ada, dijalankan, diawasi dan dievaluasi, namun belum dikendalikan di Instansi Pusat/Pemerintah Daerah Saudara. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) atau SOP pada bagian pengawasan dan evaluasi IT.', 'Kebijakan internal terkait pemantauan dan evaluasi program TIK sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait pengawasan dan evaluasi IT.', 'Kebijakan internal terkait pemantauan dan evaluasi program TIK.sudah ada, dijalankan dan diawasi namun belum dievaluasi di Instansi Pusat/Pemerintah Daerah Saudara.'),
(32, 'pengungkit', 'Top Management Support', 'Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait dukungan manajemen puncak', NULL, 'Tidak terdapat kebijakan internal terkait dukungan manajemen puncak.', 'Terdapat dukungan pimpinan namun belum dilaksanakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait perencanaan BPR (Business Process Reengineering).', 'Kebijakan dukungan pimpinan sudah dilaksanakan namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi kebijakan terkait. seperti surat keputusan.', 'Kebijakan dukungan pimpinan sudah dilaksanakan, diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait kebijakan pimpinan.', 'Kebijakan dukungan pimpinan sudah dilaksanakan, diawasi, dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan).', 'Kebijakan internal terkait dukungan manajemen puncak sudah ada, dijalankan dan diawasi namun belum dievaluasi di Instansi Pusat/Pemerintah Daerah Saudara.'),
(33, 'pengungkit', 'Good Outsourcing Strategy', 'Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan eksternal terkait strategi outsourcing yang baik', NULL, 'Tidak terdapat kebijakan eksternal terkait strategi outsourcing yang baik.', 'Terdapat kebijakan outsourcing IT namun belum dilaksanakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait outsourcing IT.', 'Kebijakan outsourcing IT sudah dilaksanakan namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi kebijakan terkait outsourcing IT.', 'Kebijakan outsourcing IT sudah dilaksanakan, diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait outsourcing IT.', 'Kebijakan outsourcing IT sudah dilaksanakan, diawasi, dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait outsourcing IT.', 'Kebijakan eksternal terkait strategi outsourcing yang baik dengan Institusi lain sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(34, 'pengungkit', 'Good Coordination', 'Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait koordinasi tim TIK', NULL, 'Tidak terdapat kebijakan internal terkait koordinasi tim TIK di Instansi Pusat/Pemerintah Daerah Saudara.', 'Terdapat kebijakan koordinasi namun belum dilaksanakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait koordinasi antara unit kerja.', 'Kebijakan koordinasi dilaksanakan namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi kebijakan terkait.', 'Kebijakan koordinasi dilaksanakan, diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait koordinasi unit kerja.', 'Kebijakan koordinasi sudah dilaksanakan, diawasi, dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait koordinasi unit kerja.', 'Kebijakan internal koordinasi tim TIK sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(35, 'pengungkit', 'Reward & Recognition', 'Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan internal terkait penghargaan dan pengakuan kompetensi TIK', NULL, 'Tidak terdapat kebijakan internal terkait penghargaan dan pengakuan kompetensi TIK', 'Terdapat pemberian pengakuan dan penghargaan namun belum dilaksanakan. Adapun data pendukungnya adalah Kebijakan atau aturan terkait pemberian penghargaan.', 'Kebijakan pemberian pengakuan dan penghargaan sudah dilaksanakan namun belum diawasi. Adapun data pendukungnya adalah Dokumentasi kebijakan terkait.', 'Kebijakan pemberian pengakuan dan penghargaan sudah dilaksanakan, diawasi namun belum dievaluasi. Adapun data pendukungnya adalah Tupoksi (tugas pokok dan fungsi) bagian pengawasan terkait pemberian pengakuan dan penghargaan.', 'Kebijakan pemberian pengakuan dan penghargaan sudah dilaksanakan, diawasi, dan dievaluasi. Adapun data pendukungnya adalah Hasil evaluasi (notulensi rapat/laporan)  terkait terkait pemberian pengakuan dan penghargaan.', 'Kebijakan internal penghargaan dan pengakuan kompetensi TIK sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.');

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
(11, 'Admin', 'Admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'iconpetugas.png', 'September 13, 2018 - 13:05'),
(13, 'Pimpinan', 'Pimpinan', 'pimpinan@gmail.com', 'pimpinan', '90973652b88fe07d05a4304f0a945de8', '1479878787802.png', 'April 09, 2018 - 19:55'),
(16, 'Pengunjung', 'Pengunjung', 'Pengunjung@gmail.com', 'pengunjung', '3fbe7200a4b9a894e16c9d998314dc80', 'anggota.png', 'April 09, 2018 - 19:54'),
(18, 'Nyoman', 'Manager', 'nyoman@gmail.com', 'manager', '1d0258c2440a8d19e716292b231e3190', '47692.jpg', 'August 21, 2018 - 16:10'),
(19, 'berangkat', 'Pengunjung', 'berangkat@gmail.com', 'berangkat', 'ad70a434c93fd7917e452960322aef12', '1479878828327.png', ''),
(20, 'amel', 'Pengunjung', 'ameliayahya.ay@gmail.com', 'amel', 'da0e22de18e3fbe1e96bdc882b912ea4', 'IMG-20180126-WA0004.jpg', 'April 09, 2018 - 20:06'),
(21, 'Jawa Timur', 'Pemda', 'afauziazmi@gmail.com', 'jatim', 'd78b699e67e15691bf70e57edc78360e', '', 'October 02, 2018 - 19:50'),
(23, 'Aceh', 'Pemda', 'fauzaze@gmail.com', 'aceh', '941bc4f218f8d0fa6291c59a1171de80', '', 'October 02, 2018 - 14:52'),
(24, 'Gorontalo', 'Pemda', 'bank@bank.go.id', 'gorontalo', 'd624a9c1990cdca6c8dec9655ef08d4c', '', 'October 02, 2018 - 17:52'),
(25, 'Kepulauan Riau', 'Pemda', 'kepri@gov.id', 'kepri', '5b9012154f108bb6422b245df40c9116', '', 'October 02, 2018 - 14:55'),
(26, 'Aceh', 'Assesor', 'assesor@gov.id', 'assesor', 'b760a39e2e750f91b8cbb2f36ea29f7e', '', ''),
(27, 'assesor1', 'Assesor', 'assesor1@id.com', 'assesor1', '502d48d2b11c60c2d45f6ca5a184847e', '', 'September 08, 2018 - 16:54'),
(28, 'Bali', 'Pemda', 'bali@id.com', 'bali', '24d545382bf132265c7bcb71acddbae0', '', 'October 05, 2018 - 16:11'),
(30, 'Banten', 'Pemda', 'banten@gov.id', 'banten', 'da40eeb76f7c83f9db1839c908aafdb2', '', 'October 05, 2018 - 15:56'),
(31, 'assessor1', 'Assessor', 'assessor1@gov.id', 'assessor1', '9d3e0bb3bdc1e4de3a35a1374e88aa4d', '', 'October 05, 2018 - 16:32'),
(32, 'Bengkulu', 'Pemda', 'bengkulu@bengkulu.gov.id', 'bengkulu', '5cbbf65923f824b65961c8436d24b96d', '', 'October 02, 2018 - 19:18'),
(33, 'Jakarta', 'Pemda', 'jakarta@gov.id', 'jakarta', '629ab14fab772d78a58eea752bdfc0dc', '', 'October 02, 2018 - 19:19'),
(34, 'Jambi', 'Pemda', 'jambi@gov.id', 'jambi', 'f42e1bd023fe5afe5b53b7876d9d7378', '', 'October 02, 2018 - 19:20'),
(35, 'Jawa Barat', 'Pemda', 'jawabarat@gov.id', 'jabar', '2d2648b0c8d7ae1671366c8f40e3e907', '', 'October 02, 2018 - 19:48'),
(36, 'Jawa Tengah', 'Pemda', 'jawatengah@gov.id', 'jateng', '33cd8d7da546e23a50cf329beb7afba2', '', 'October 02, 2018 - 19:49'),
(37, 'Kalimantan Barat', 'Pemda', 'kalimantanbarat@gov.id', 'kalbar', '35aec2176052e3d2b40dc1a0fa47a206', '', 'October 02, 2018 - 19:51'),
(38, 'Kalimantan Selatan', 'Pemda', 'kalimantanselatan@gov.id', 'kalsel', 'fb1dce9f1c90d356dc0e90500869c917', '', 'October 02, 2018 - 19:53'),
(39, 'Kalimantan Tengah', 'Pemda', 'kalimantantengah@gov.id', 'kalteng', '3c6a53bc19a3efba8d909db272536c65', '', 'October 02, 2018 - 19:55'),
(40, 'Kalimantan Timur', 'Pemda', 'kalimantantimur@gov.id', 'kaltim', '51589f05bd327dcacf7bf68391c1a555', '', 'October 02, 2018 - 19:56'),
(41, 'Kalimantan Utara', 'Pemda', 'kalimantanutara@gov.id', 'kalut', 'a930cb1ed6031a7f5f29d4d7c9722912', '', ''),
(42, 'Bangka Belitung', 'Pemda', 'bangkabelitung@gov.id', 'babel', 'a4f8b514434154c1af25777bccd0efa0', '', 'October 02, 2018 - 19:07'),
(43, 'Lampung', 'Pemda', 'lampung@gov.id', 'lampung', '52b29e1aa20c034dcec6015865e269df', '', 'October 02, 2018 - 19:58'),
(44, 'Maluku', 'Pemda', 'maluku@gov.id', 'maluku', '7e70bcc7a030d89c3453eda042fc1472', '', 'October 02, 2018 - 19:59'),
(45, 'Maluku Utara', 'Pemda', 'malukuutara@gov.id', 'malut', 'bbe9104d7c528396e2d7b70c0b8122fe', '', 'October 02, 2018 - 20:00'),
(46, 'Nusa Tenggara Barat', 'Pemda', 'ntb@gov.id', 'ntb', 'fb8a98a6067e7de93a17c7c2e9e3b5aa', '', 'October 02, 2018 - 20:32'),
(47, 'Nusa Tenggara Timur', 'Pemda', 'ntt@gov.id', 'ntt', 'ccb3669c87b2d028539237c4554e3c0f', '', 'October 02, 2018 - 20:33'),
(48, 'Papua', 'Pemda', 'papua@gov.id', 'papua', 'ba4c9ae9da588a4a8b8fc52fbd361495', '', 'October 02, 2018 - 20:34'),
(49, 'Papua Barat', 'Pemda', 'papuabarat@gov.id', 'papuabarat', 'cbf5249413b52fa5f5ba618373b530ce', '', 'October 02, 2018 - 20:36'),
(50, 'Riau', 'Pemda', 'riau@gov.id', 'riau', 'e8207f5d544d9e1c059237364de16873', '', 'October 02, 2018 - 20:37'),
(51, 'Sulawesi Barat', 'Pemda', 'sulawesibarat@gov.id', 'sulbar', '649737d0406152a309314d95d5db76a9', '', 'October 02, 2018 - 21:46'),
(52, 'Sulawesi Selatan', 'Pemda', 'sulawesiselatan@gov.id', 'sulsel', 'c5e1d8c1d8a9472e43733532c910f045', '', 'October 02, 2018 - 21:47'),
(53, 'Sulawesi Tengah', 'Pemda', 'sulawesitengah@gov.id', 'sulteng', '80ba1543413075f310c9938e8f6f3da6', '', 'October 02, 2018 - 21:49'),
(54, 'Sulawesi Utara', 'Pemda', 'sulawesiutara@gov.id', 'sulut', 'f8aa5e424bf3e7c8e3e400c906b10465', '', 'October 02, 2018 - 21:51'),
(55, 'Sulawesi Tenggara', 'Pemda', 'sulawesitenggara@gov.id', 'sunggara', 'e9aee5ae6d53c359ba0aa055bf35c443', '', 'October 02, 2018 - 20:29'),
(56, 'Sumatera Barat', 'Pemda', 'sumaterabarat@gov.id', 'sumbar', 'cde1f67e90d3498e775aacde9a517456', '', 'October 02, 2018 - 21:55'),
(57, 'Sumatera Selatan', 'Pemda', 'sumateraselatan@gov.id', 'sumsel', 'f8d691b0af499f85983579c158cd5573', '', 'October 02, 2018 - 21:56'),
(58, 'Sumatera Utara', 'Pemda', 'sumaterautara@gov.id', 'sumut', '6f5f5e65f6f815070cea49441ca15c9c', '', 'October 05, 2018 - 14:01');

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
-- Indexes for table `dimensi_1`
--
ALTER TABLE `dimensi_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_laporan` (`id_laporan`);

--
-- Indexes for table `dimensi_2`
--
ALTER TABLE `dimensi_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_laporan_dim2` (`id_laporan`);

--
-- Indexes for table `dimensi_3`
--
ALTER TABLE `dimensi_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_laporan_dim3` (`id_laporan`);

--
-- Indexes for table `dimensi_4`
--
ALTER TABLE `dimensi_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_laporan_dim4` (`id_laporan`);

--
-- Indexes for table `feedback_1`
--
ALTER TABLE `feedback_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_feedback_1` (`id_penilaian`);

--
-- Indexes for table `feedback_2`
--
ALTER TABLE `feedback_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_feedback_2` (`id_penilaian`);

--
-- Indexes for table `feedback_3`
--
ALTER TABLE `feedback_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_feedback_3` (`id_penilaian`);

--
-- Indexes for table `feedback_4`
--
ALTER TABLE `feedback_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_feedback_4` (`id_penilaian`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendanaan`
--
ALTER TABLE `pendanaan`
  ADD PRIMARY KEY (`code_pendanaan`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `dimensi_1`
--
ALTER TABLE `dimensi_1`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `dimensi_2`
--
ALTER TABLE `dimensi_2`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `dimensi_3`
--
ALTER TABLE `dimensi_3`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `dimensi_4`
--
ALTER TABLE `dimensi_4`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `feedback_1`
--
ALTER TABLE `feedback_1`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `feedback_2`
--
ALTER TABLE `feedback_2`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `feedback_3`
--
ALTER TABLE `feedback_3`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `feedback_4`
--
ALTER TABLE `feedback_4`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `pendanaan`
--
ALTER TABLE `pendanaan`
  MODIFY `code_pendanaan` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `years`
--
ALTER TABLE `years`
  MODIFY `code_years` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dimensi_1`
--
ALTER TABLE `dimensi_1`
  ADD CONSTRAINT `fk_laporan` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id`);

--
-- Constraints for table `dimensi_2`
--
ALTER TABLE `dimensi_2`
  ADD CONSTRAINT `fk_laporan_dim2` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id`);

--
-- Constraints for table `dimensi_3`
--
ALTER TABLE `dimensi_3`
  ADD CONSTRAINT `fk_laporan_dim3` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id`);

--
-- Constraints for table `dimensi_4`
--
ALTER TABLE `dimensi_4`
  ADD CONSTRAINT `fk_laporan_dim4` FOREIGN KEY (`id_laporan`) REFERENCES `laporan` (`id`);

--
-- Constraints for table `feedback_1`
--
ALTER TABLE `feedback_1`
  ADD CONSTRAINT `fk_feedback_1` FOREIGN KEY (`id_penilaian`) REFERENCES `penilaian` (`id_penilaian`);

--
-- Constraints for table `feedback_2`
--
ALTER TABLE `feedback_2`
  ADD CONSTRAINT `fk_feedback_2` FOREIGN KEY (`id_penilaian`) REFERENCES `penilaian` (`id_penilaian`);

--
-- Constraints for table `feedback_3`
--
ALTER TABLE `feedback_3`
  ADD CONSTRAINT `fk_feedback_3` FOREIGN KEY (`id_penilaian`) REFERENCES `penilaian` (`id_penilaian`);

--
-- Constraints for table `feedback_4`
--
ALTER TABLE `feedback_4`
  ADD CONSTRAINT `fk_feedback_4` FOREIGN KEY (`id_penilaian`) REFERENCES `penilaian` (`id_penilaian`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
