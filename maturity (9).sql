-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2018 at 04:14 PM
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
(1, 18, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 18, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 18, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '209.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 18, 3, 2, 3, 4, 1, 4, 3, 0, 0, 5, 3, 1, 5, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 22, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(6, 23, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', 'logo.jpg', '2017-11-16_21_44_57-Document2_-_Word.png', '2017-11-16_21_44_57-Document2_-_Word.png', '2017-11-16_21_44_57-Document2_-_Word.png'),
(7, 24, 5, 3, 4, 3, 2, 5, 2, 5, 2, 5, 5, 4, 5, 5, '', '', '', '', '', '', '', '', '', '', '', '', '', 'ttd.jpg');

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
(1, 18, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', ''),
(2, 18, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 18, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '209.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 18, 2, 2, 2, 3, 2, 4, 5, 4, 0, 0, '', '', '', '', '', '', '', '', '', ''),
(5, 22, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, '', '', '', '', '', '', '', '', '', ''),
(6, 23, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 'domainesia_egovmaturity.png', 'domainesia_egovmaturity.png', 'domainesia_egovmaturity.png', 'domainesia_egovmaturity.png', 'domainesia_egovmaturity.png', 'domainesia_egovmaturity.png', 'PhoXo1.jpg', 'PhoXo1.jpg', 'PhoXo1.jpg', 'PhoXo1.jpg'),
(7, 24, 5, 2, 3, 0, 0, 5, 4, 2, 3, 5, 'ttd.jpg', 'ttd.jpg', 'ttd.jpg', 'ttd.jpg', 'ttd.jpg', 'ttd.jpg', 'ttd.jpg', 'ttd.jpg', 'Achmad Fauzi Azmi.jpeg', 'Achmad Fauzi Azmi.jpeg');

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
(1, 18, 5, 0, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL),
(2, 18, 0, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL),
(3, 18, 1, NULL, NULL, NULL, NULL, NULL, 'S__16719878.jpg', NULL, NULL, NULL, NULL, NULL),
(4, 18, 3, 4, 3, 5, 5, 3, '', '', '', '', '', ''),
(5, 22, 5, 5, 5, 5, 5, 5, '', '', '', '', '', ''),
(6, 23, 5, 5, 5, 5, 5, 5, 'log_out.jpg', 'log_out.jpg', 'log_out.jpg', 'log_out.jpg', 'profile.jpg', 'profile.jpg'),
(7, 24, 3, 4, 2, 5, 1, 5, 'Achmad Fauzi Azmi.jpeg', 'Achmad Fauzi Azmi.jpeg', 'Achmad Fauzi Azmi.jpeg', 'Achmad_Fauzi_Azmi.pdf', 'Achmad_Fauzi_Azmi.pdf', 'Achmad_Fauzi_Azmi.pdf');

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
(1, 18, 0, 0, 0, 0, 0, '', NULL, NULL, NULL, NULL),
(2, 18, 3, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL),
(3, 18, 3, NULL, NULL, NULL, NULL, 'vlcsnap-9634-11-26-03h02m11s479.png', NULL, NULL, NULL, NULL),
(4, 18, 2, 4, 3, 2, 4, '', '', '', '', ''),
(5, 22, 5, 5, 5, 5, 5, '2091.jpg', '2091.jpg', '2091.jpg', '2091.jpg', '2091.jpg'),
(6, 23, 5, 5, 5, 5, 5, '2017-11-13_11_57_42-klikBCA_Individual.png', '2017-11-13_11_57_42-klikBCA_Individual.png', '2017-11-13_11_57_42-klikBCA_Individual.png', 'BUKTI_PEMBAYARAN_SIERRAINTIPERSADA.png', 'BUKTI_PEMBAYARAN_SIERRAINTIPERSADA.png'),
(7, 24, 5, 4, 3, 2, 1, 'Achmad_Fauzi_Azmi.pdf', 'Achmad_Fauzi_Azmi.jpg', 'Achmad_Fauzi_Azmi.jpg', 'Achmad_Fauzi_Azmi.jpg', 'Achmad_Fauzi_Azmi.jpg');

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
(2, 15, 'reerf123', 'tes', '', '', '', 'reerg', 'ge', 'gdd', '', '', '', '', '', '');

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
(2, 15, '', 'h', '', 'g', '', 'f', '', 'f', '', '');

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
(2, 15, '', 'thhhhh', 'hhhhhhhhhhhh', 'hh', 'th', '');

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
(2, 15, 'eg', '', 'dgd', '', 'bg');

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
  `Nilai` int(4) DEFAULT NULL,
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
(1, 'CCCCCCCC', '1', 'FFFF', 'AAAA', '', 1, '06 April 2018', 'Employement_Application_Form_2018.pdf', '', '', '', 0),
(4, 'Aceh', 'yes', 'yes', 'yes', 'yes', 4, '2018-08-22', '', '', '', '', 1),
(5, 'Gorontalo', 'yes', 'no', 'yes', 'yes', 3, '2018-09-02', '', '', '', '', 1),
(10, 'Jawa Timur', 'yes', 'yes', 'yes', 'yes', 4, '2018-09-05', '209.jpg', 'EGDI1.png', 'S__16719877.jpg', 'S__16719878.jpg', 0),
(11, 'Banten', 'yes', 'yes', 'no', 'no', 2, '2018-09-07', '', '', '', '', 0),
(12, 'Banten', 'yes', 'no', 'no', 'no', 1, '2018-09-08', '', '', '', '', 1),
(13, 'Jawa Timur', 'yes', 'no', 'no', 'yes', 2, '2018-09-08', '', '', '', '', 0),
(14, 'Jawa Timur', 'yes', 'no', 'yes', 'no', 2, '2018-09-08', '', '', '', '', 0),
(15, 'Bali', 'yes', 'yes', 'no', 'no', 2, '2018-09-13', '4000021287-Upgrade_PLN_support_LTE_–_SULAMPAPUA.PDF', 'A_Study_of_Extreme_Programming_in_a_Large_Company.pdf', 'A_Study_of_Extreme_Programming_in_a_Large_Company.pdf', 'A_Study_of_Extreme_Programming_in_a_Large_Company.pdf', 0),
(16, 'Bali', 'yes', 'yes', 'yes', 'no', 3, '2018-09-13', '', '', '', '', 0),
(17, 'Bali', 'yes', 'yes', 'yes', 'yes', 4, '2018-09-13', 'Langkah_(1).png', 'Class_Diagram.jpg', 'Operasional_Haji_(1).jpg', 'theoritical_framework.png', 1),
(18, 'Kepulauan Riau', NULL, NULL, NULL, NULL, NULL, '2018-09-24', NULL, NULL, NULL, NULL, 0),
(19, 'Kepulauan Riau', NULL, NULL, NULL, NULL, NULL, '2018-09-25', NULL, NULL, NULL, NULL, 0),
(20, 'Kepulauan Riau', NULL, NULL, NULL, NULL, NULL, '2018-09-25', NULL, NULL, NULL, NULL, 0),
(21, 'Kepulauan Riau', '2.5', '2.4', '3.83', '3', NULL, '2018-09-25', NULL, NULL, NULL, NULL, 0),
(22, 'Kepulauan Riau', '5', '5', '5', '5', NULL, '2018-09-25', NULL, NULL, NULL, NULL, 0),
(23, 'Kepulauan Riau', '5', '5', '5', '5', NULL, '2018-09-25', NULL, NULL, NULL, NULL, 0),
(24, 'Kepulauan Riau', '3.92', '2.9', '3.33', '3', NULL, '2018-09-27', NULL, NULL, NULL, NULL, 0);

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
(4, 'Jawa Timur', 0),
(5, 'Kepulauan Riau', 0),
(6, 'Banten', 1);

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
(15, 'assessor1', 'Kepulauan Riau', NULL, NULL, NULL, NULL, '', '2018-09-27');

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
(1, 'sumber daya', 'Supportive ICT Infrastructure/Service\r\nAvailability', 'Apakah infrastruktur dan layanan pendukung, tersedia bagi instansi anda ?', NULL, '', '', '', '', '', ''),
(2, 'sumber daya', 'strong leadership', 'Apakah hasil rapat pada instansi anda dapat dijalankan dengan baik?', NULL, '', '', '', '', '', ''),
(3, 'sumber daya', 'Good Team Skills & Expertise', 'Apakah ada pengukuran kompetensi terhadap kemampuan internal instansi anda ?', NULL, '', '', '', '', '', ''),
(4, 'sumber daya', 'good planning', 'Apakah terdapat perancanaan yang baik terkait e-government pada instansi anda ?', NULL, '', '', '', '', '', ''),
(5, 'sumber daya', 'enough funding', 'Bagaimana pendanaan untuk e-government di instansi anda ?', NULL, '', '', '', '', '', ''),
(6, 'sumber daya', 'support interopability', 'Apakah aplikasi berbeda yang ada di instansi anda dapat saling terintegrasi satu sama lain ?', NULL, '', '', '', '', '', ''),
(7, 'sumber daya', 'training', 'Apakah terdapat pelatihan yang diberikan instansi anda ?', NULL, '', '', '', '', '', ''),
(8, 'sumber daya', 'good & clear organizational structure', 'Apakah terdapat pemerintahan yang baik dan transparan pada instansi anda', NULL, '', '', '', '', '', ''),
(9, 'sumber daya', 'legal framework', 'apakah ada kerangka hukum terkait e-government pada instansi anda ?', NULL, '', '', '', '', '', ''),
(10, 'sumber daya', 'awareness', 'bagaimana kesadaran penggunaan e-government di instansi anda ?', NULL, '', '', '', '', '', ''),
(11, 'sumber daya', 'system security', 'Apakah terdapat sistem keanaman yang baik pada website instansi anda ?', NULL, '', '', '', '', '', ''),
(12, 'sumber daya', 'creativity & innovation', 'Apakah terdapat kreativitas dan inovasi yang terjadi di instansi anda ?', NULL, '', '', '', '', '', ''),
(13, 'sumber daya', 'user & stakeholder involvement', 'Apakah ada keterlibatan user dan stakeholder dalam pembangunan e-gov?', NULL, '', '', '', '', '', ''),
(14, 'sumber daya', 'citizen computer literacy', 'Apakah terdapat pengukuran literasi komputer masyarakat di instansi anda ?', NULL, '', '', '', '', '', ''),
(15, 'pengungkit', 'supportive government policy', '', NULL, '', '', '', '', '', ''),
(16, 'pengungkit', 'good partnership with other institution', '', NULL, '', '', '', '', '', ''),
(17, 'pengungkit', 'political support & stability', '', NULL, '', '', '', '', '', ''),
(18, 'pengungkit', 'good project management', '', NULL, '', '', '', '', '', ''),
(19, 'nilai', 'better business process', 'Apakah terdapat proses bisnis/ alur kerja yang berlaku di lingkungan instansi anda?', 'Dibuktikan dengan gambaran bisnis proses\r\n', '', '', '', '', '', ''),
(20, 'nilai', 'supportive cultural environment', 'Apakah instansi anda memiliki budaya kerja yang baik?', 'Dibuktikan dengan riwayat kepegawaian dan tingkat kinerja', '', '', '', '', '', ''),
(21, 'nilai', 'electronic transaction', 'Apakah di instansi anda menggunakan transaksi elektronik? semisal m-banking, e-banking, paypal dsb ', 'Dibuktikan dengan dokumentasi transaksi', '', '', '', '', '', ''),
(22, 'nilai', 'trust', 'Apakah terjadi partisipasi publik pada sistem informasi di instansi anda?', 'Dibuktikan dengan tingkat akses ke website instansi', '', '', '', '', '', ''),
(23, 'nilai', 'e-particiption', 'Apakah terjadi partisipasi publik pada sistem informasi di instansi anda?', 'Dibuktikan dengan tingkat akses ke website instansi', '', '', '', '', '', ''),
(24, 'nilai', 'using portal/application', 'Apakah aplikasi atau website apa saja yang di gunakan dan dikembangkan instasi anda?', 'Dibuktikan dengan list dan link terhadap aplikasi berupa, web, aplikasi hp, dsb', '', '', '', '', '', ''),
(25, 'dampak', 'User Satisfaction', 'Apakah Layanan/Sistem e-Government pada Instansi Pusat/Pemerintah Daerah Saudara telah mencerminkan pengalaman positif masyarakat?', NULL, 'Tidak terdapat pengukuran kepuasan masyarakat terhadap layanan sistem aplikasi e-Government.', 'Terdapat pengukuran kepuasan masyarakat terhadap layanan sistem aplikasi e-Government.', 'Pengukuran kepuasan masyarakat terhadap layanan sistem aplikasi e-Government sudah ada, dijalankan tapi belum diawasi.', 'Pengukuran kepuasan masyarakat terhadap layanan sistem aplikasi e-Government sudah ada, dijalankan dan diawasi namun belum dievaluasi di Instansi Pusat/Pemerintah Daerah Saudara.', 'Pengukuran kepuasan masyarakat terhadap layanan sistem aplikasi sudah ada, dijalankan, diawasi dan dievaluasi, namun belum dikendalikan di Instansi Pusat/Pemerintah Daerah Saudara.', 'Pengukuran kepuasan masyarakat terhadap layanan sistem aplikasi sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan di Instansi Pusat/Pemerintah Daerah Saudara.'),
(26, 'dampak', 'Self-Sustanaible Revenue', 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki pendapatan pemerintah daerah berkelanjutan dari penggunaan layanan e-Government?', NULL, 'Tidak terdapat pendapatan berkelanjutan Instansi Pusat/Pemerintah Daerah Saudara dari penggunaan layanan e-Government ', 'Terdapat pendapatan berkelanjutan Instansi Pusat/Pemerintah Daerah Saudara dari penggunaan layanan e-Government.', 'Pendapatan berkelanjutan Instansi Pusat/Pemerintah Daerah Saudara dari penggunaan layanan e-Government sudah ada, dijalankan tapi belum diawasi.', 'Pendapatan berkelanjutan Instansi Pusat/Pemerintah Daerah Saudara dari penggunaan layanan e-Government sudah ada, dijalankan dan diawasi namun belum dievaluasi.', 'Pendapatan berkelanjutan Instansi Pusat/Pemerintah Daerah Saudara dari penggunaan layanan e-Government sudah ada, dijalankan, diawasi dan dievaluasi, namun belum dikendalikan.', 'Pendapatan berkelanjutan Instansi Pusat/Pemerintah Daerah Saudara dari penggunaan layanan e-Government sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan.'),
(27, 'dampak', 'Open Government', 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki tata kelola pemerintahan ?', NULL, 'Tidak terdapat kebijakan terkait hak warganegara untuk mengakses dokumen dan proses pemerintah dengan Layanan e-Government di Instansi Pusat/Pemerintah Daerah Saudara.', 'Terdapat konsep kebijakan terkait hak warganegara untuk mengakses dokumen dan proses pemerintah dengan Layanan e-Government di Instansi Pusat/Pemerintah Daerah Saudara.', 'Kebijakan terkait hak warganegara untuk mengakses dokumen dan proses pemerintah dengan Layanan e-Government di Instansi Pusat/Pemerintah Daerah Saudara sudah ada dan dijalankan namun belum diawasi.', 'Kebijakan terkait hak warganegara untuk mengakses dokumen dan proses pemerintah dengan Layanan e-Government di Instansi Pusat/Pemerintah Daerah Saudara sudah ada, dijalankan dan diawasi namun belum dievaluasi.', 'Kebijakan terkait hak warganegara untuk mengakses dokumen dan proses pemerintah dengan Layanan e-Government di Instansi Pusat/Pemerintah Daerah Saudara sudah ada, dijalankan, diawasi dan dievaluasi, namun belum dikendalikan.', 'Kebijakan terkait hak warganegara untuk mengakses dokumen dan proses pemerintah dengan Layanan e-Government di Instansi Pusat/Pemerintah Daerah Saudara sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan.'),
(28, 'dampak', 'Good Governance', 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan terkait hak warganegara untuk mengakses dokumen dan proses pemerintah dengan Layanan e-Government?', NULL, 'Instansi Pusat/Pemerintah Daerah belum memiliki kebijakan internal terkait Rencana Induk SPBE.', 'Instansi Pusat/Pemerintah Daerah sudah memiliki konsep kebijakan internal terkait Rencana Induk SPBE dimaksud atau masih dalam proses pengesahan.', 'Instansi Pusat/Pemerintah Daerah sudah memiliki kebijakan internal yang ditetapkan dan pengaturan Rencana Induk SPBE mencakup sebagian muatan dari visi dan misi SPBE, arsitektur SPBE, atau peta jalan SPBE, berlaku pula pada Pengaturan Arsitektur SPBE yang hanya memuat sebagian dari arsitektur bisnis, arsitektur data, arsitektur aplikasi, arsitektur teknologi, atau arsitektur keamanan.', 'Kebijakan internal mendukung pengaturan Rencana Induk SPBE yang mencakup keseluruhan muatan visi dan misi SPBE, arsitektur SPBE, dan peta jalan SPBE.', 'Instansi Pusat/Pemerintah Daerah sudah memiliki arah kebijakan internal untuk melakukan integrasi SPBE antar Instansi Pusat, antar Pemerintah Daerah, dan/atau antar Instansi Pusat dan Pemerintah Daerah. Arsitektur SPBE harus dapat menggambarkan integrasi SPBE dan direncanakan dalam peta jalan SPBE.', 'Kebijakan internal terkait rencana induk SPBE dievaluasi secara berkala. Hasil-hasil evaluasi diterapkan untuk memperbaiki kebijakan agar sesuai dengan kebutuhan Instansi Pusat/Pemerintah Daerah ataupun perubahan lingkungan dan teknologi.'),
(29, 'dampak', 'Prototype', 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki prototipe sistem e-Government?', NULL, 'Tidak terdapat prototipe sistem e-Government di Instansi Pusat/Pemerintah Daerah Saudara.', 'Terdapat prototipe sistem e-Government di Instansi Pusat/Pemerintah Daerah Saudara.', 'Prototipe sistem e-Government di Instansi Pusat/Pemerintah Daerah Saudara sudah ada dan dijalankan namun belum diawasi.', 'Prototipe sistem e-Government di Instansi Pusat/Pemerintah Daerah Saudara sudah ada, dijalankan dan diawasi namun belum dievaluasi.', 'Prototipe sistem e-Government di Instansi Pusat/Pemerintah Daerah Saudara sudah ada, dijalankan, diawasi dan dievaluasi, namun belum dikendalikan.', 'Prototipe sistem e-Government di Instansi Pusat/Pemerintah Daerah Saudara sudah ada, dijalankan, diawasi, dievaluasi, dikendalikan namun belum ditingkatkan.'),
(30, 'pengungkit', 'Good Change Management', '', NULL, '', '', '', '', '', ''),
(31, 'pengungkit', 'Monitoring & Evaluation', '', NULL, '', '', '', '', '', ''),
(32, 'pengungkit', 'Top Management Support', '', NULL, '', '', '', '', '', ''),
(33, 'pengungkit', 'Good Outsourcing Strategy', '', NULL, '', '', '', '', '', ''),
(34, 'pengungkit', 'Good Coordination', '', NULL, '', '', '', '', '', ''),
(35, 'pengungkit', 'Reward & Recognition', '', NULL, '', '', '', '', '', '');

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
(21, 'Jawa Timur', 'Pemda', 'afauziazmi@gmail.com', 'achmad.fauzi71', '79107d8deccb7713e0d8c30caa73d939', '', 'September 28, 2018 - 07:35'),
(23, 'Aceh', 'Pemda', 'fauzaze@gmail.com', 'fauziazmi', '5ff61413d66bf3ce4e9290df59edb47a', '', ''),
(24, 'Gorontalo', 'Pemda', 'bank@bank.go.id', 'bank', 'bd5af1f610a12434c9128e4a399cef8a', '', 'September 02, 2018 - 13:24'),
(25, 'Kepulauan Riau', 'Pemda', 'kepri@gov.id', 'kepri', '5b9012154f108bb6422b245df40c9116', '', 'September 29, 2018 - 13:28'),
(26, 'Aceh', 'Assesor', 'assesor@gov.id', 'assesor', 'b760a39e2e750f91b8cbb2f36ea29f7e', '', ''),
(27, 'assesor1', 'Assesor', 'assesor1@id.com', 'assesor1', '502d48d2b11c60c2d45f6ca5a184847e', '', 'September 08, 2018 - 16:54'),
(28, 'Bali', 'Pemda', 'bali@id.com', 'bali', '24d545382bf132265c7bcb71acddbae0', '', 'September 13, 2018 - 13:03'),
(30, 'Banten', 'Pemda', 'banten@gov.id', 'banten', 'da40eeb76f7c83f9db1839c908aafdb2', '', 'September 13, 2018 - 12:11'),
(31, 'assessor1', 'Assessor', 'assessor1@gov.id', 'assessor1', '9d3e0bb3bdc1e4de3a35a1374e88aa4d', '', 'September 27, 2018 - 21:01');

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dimensi_2`
--
ALTER TABLE `dimensi_2`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dimensi_3`
--
ALTER TABLE `dimensi_3`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `dimensi_4`
--
ALTER TABLE `dimensi_4`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `feedback_1`
--
ALTER TABLE `feedback_1`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback_2`
--
ALTER TABLE `feedback_2`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback_3`
--
ALTER TABLE `feedback_3`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback_4`
--
ALTER TABLE `feedback_4`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pendanaan`
--
ALTER TABLE `pendanaan`
  MODIFY `code_pendanaan` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
