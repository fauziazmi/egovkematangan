-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2018 at 01:39 PM
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
  `pdf_1_1` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dimensi_1`
--

INSERT INTO `dimensi_1` (`id`, `id_laporan`, `jawaban_1_1`, `pdf_1_1`) VALUES
(1, 18, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `dimensi_2`
--

CREATE TABLE `dimensi_2` (
  `id` int(20) NOT NULL,
  `id_laporan` int(20) NOT NULL,
  `jawaban_2_1` int(10) NOT NULL,
  `pdf_2_1` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dimensi_2`
--

INSERT INTO `dimensi_2` (`id`, `id_laporan`, `jawaban_2_1`, `pdf_2_1`) VALUES
(1, 18, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `dimensi_3`
--

CREATE TABLE `dimensi_3` (
  `id` int(20) NOT NULL,
  `id_laporan` int(20) NOT NULL,
  `jawaban_3_1` int(10) NOT NULL,
  `pdf_3_1` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dimensi_3`
--

INSERT INTO `dimensi_3` (`id`, `id_laporan`, `jawaban_3_1`, `pdf_3_1`) VALUES
(1, 18, 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `dimensi_4`
--

CREATE TABLE `dimensi_4` (
  `id` int(20) NOT NULL,
  `id_laporan` int(20) NOT NULL,
  `jawaban_4_1` int(10) NOT NULL,
  `pdf_4_1` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dimensi_4`
--

INSERT INTO `dimensi_4` (`id`, `id_laporan`, `jawaban_4_1`, `pdf_4_1`) VALUES
(1, 18, 0, '');

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
(18, 'Kepulauan Riau', NULL, NULL, NULL, NULL, NULL, '2018-09-24', NULL, NULL, NULL, NULL, 1);

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
(5, 'Kepulauan Riau', 1),
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
(8, 'assessor1', 'Bali', 'bagus', 'mohon raw data juga ditampilkan, tidak hanya hasil pengolahan data', '', '', '', '2018-09-13');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `id` int(11) NOT NULL,
  `dimensi` varchar(20) NOT NULL,
  `variabel` varchar(100) NOT NULL,
  `pertanyaan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`id`, `dimensi`, `variabel`, `pertanyaan`) VALUES
(1, 'sumber daya', 'Supportive ICT Infrastructure/Service\r\nAvailability', ''),
(2, 'sumber daya', 'strong leadership', ''),
(3, 'sumber daya', 'Good Team Skills & Expertise', ''),
(4, 'sumber daya', 'good planning', ''),
(5, 'sumber daya', 'enough funding', ''),
(6, 'sumber daya', 'support interopability', ''),
(7, 'sumber daya', 'training', ''),
(8, 'sumber daya', 'good & clear organizational structure', ''),
(9, 'sumber daya', 'legal framework', ''),
(10, 'sumber daya', 'awareness', ''),
(11, 'sumber daya', 'system security', ''),
(12, 'sumber daya', 'creativity & innovation', ''),
(13, 'sumber daya', 'user & stakeholder involvement', ''),
(14, 'sumber daya', 'citizen computer literacy', ''),
(15, 'pengungkit', 'supportive government policy', ''),
(16, 'pengungkit', 'good partnership with other institution', ''),
(17, 'pengungkit', 'political support & stability', ''),
(18, 'pengungkit', 'good project management', ''),
(19, 'nilai', 'better business process', ''),
(20, 'nilai', 'supportive cultural environment', ''),
(21, 'nilai', 'electronic transaction', ''),
(22, 'nilai', 'trust', ''),
(23, 'nilai', 'e-particiption', ''),
(24, 'nilai', 'using portal/application', ''),
(25, 'dampak', 'User Satisfaction', 'Apakah Layanan/Sistem e-Government pada Instansi Pusat/Pemerintah Daerah Saudara telah mencerminkan pengalaman positif masyarakat?'),
(26, 'dampak', 'Self-Sustanaible Revenue', 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki pendapatan pemerintah daerah berkelanjutan dari penggunaan layanan e-Government?'),
(27, 'dampak', 'Open Government', 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki tata kelola pemerintahan ?'),
(28, 'dampak', 'Good Governance', 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki kebijakan terkait hak warganegara untuk mengakses dokumen dan proses pemerintah dengan Layanan e-Government?'),
(29, 'dampak', 'Prototype', 'Apakah Instansi Pusat/Pemerintah Daerah Saudara memiliki prototipe sistem e-Government?');

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
(21, 'Jawa Timur', 'Pemda', 'afauziazmi@gmail.com', 'achmad.fauzi71', '79107d8deccb7713e0d8c30caa73d939', '', 'September 13, 2018 - 12:00'),
(23, 'Aceh', 'Pemda', 'fauzaze@gmail.com', 'fauziazmi', '5ff61413d66bf3ce4e9290df59edb47a', '', ''),
(24, 'Gorontalo', 'Pemda', 'bank@bank.go.id', 'bank', 'bd5af1f610a12434c9128e4a399cef8a', '', 'September 02, 2018 - 13:24'),
(25, 'Kepulauan Riau', 'Pemda', 'kepri@gov.id', 'kepri', '5b9012154f108bb6422b245df40c9116', '', 'September 02, 2018 - 13:46'),
(26, 'Aceh', 'Assesor', 'assesor@gov.id', 'assesor', 'b760a39e2e750f91b8cbb2f36ea29f7e', '', ''),
(27, 'assesor1', 'Assesor', 'assesor1@id.com', 'assesor1', '502d48d2b11c60c2d45f6ca5a184847e', '', 'September 08, 2018 - 16:54'),
(28, 'Bali', 'Pemda', 'bali@id.com', 'bali', '24d545382bf132265c7bcb71acddbae0', '', 'September 13, 2018 - 13:03'),
(30, 'Banten', 'Pemda', 'banten@gov.id', 'banten', 'da40eeb76f7c83f9db1839c908aafdb2', '', 'September 13, 2018 - 12:11'),
(31, 'assessor1', 'Assessor', 'assessor1@gov.id', 'assessor1', '9d3e0bb3bdc1e4de3a35a1374e88aa4d', '', 'September 13, 2018 - 12:20');

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dimensi_2`
--
ALTER TABLE `dimensi_2`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dimensi_3`
--
ALTER TABLE `dimensi_3`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dimensi_4`
--
ALTER TABLE `dimensi_4`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
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
  MODIFY `id_penilaian` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
