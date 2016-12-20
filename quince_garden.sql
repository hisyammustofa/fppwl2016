-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2016 at 04:28 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quince_garden`
--

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `tanggal` date NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`tanggal`, `hits`) VALUES
('2016-12-17', 11);

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL,
  `nama_divisi` varchar(20) NOT NULL,
  `deskripsi_divisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`, `deskripsi_divisi`) VALUES
(1, 'divisi pelayanan', 'divisi pelayanan'),
(2, 'divisi testing', 'divisi testing'),
(3, 'divisi operasional', 'divisi operasional'),
(4, 'divisi pengembanga', 'divisi pengembanga');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `nama_galeri` varchar(30) NOT NULL,
  `gambar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `email` varchar(40) NOT NULL,
  `foto` text,
  `id_divisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama`, `alamat`, `no_telp`, `email`, `foto`, `id_divisi`) VALUES
(1, 'test', 'test', '00000', 'test', NULL, 1),
(2, 'coba', 'coli', '00000', 'coli', NULL, 1),
(3, 'asda', 'dasfdsa', 'afa', 'dfsa', NULL, 1),
(4, 'asfas', 'dfdas', 'fgasf', 'asdasd', NULL, 1),
(5, 'asdas', 'asdfas', 'dasdas', 'asdas', NULL, 1),
(6, 'asdas', 'asdsa', 'sadas', 'sadsa', NULL, 1),
(7, 'sadas', 'asdas', 'asdas', 'asdas', NULL, 1),
(8, 'asdas', 'asfas', 'asfasdas', 'sadas', NULL, 1),
(9, 'asdas', 'asdas', 'wdsad', 'asdsa', NULL, 1),
(10, 'asdas', 'sadas', 'sadas', 'asdsa', NULL, 2),
(11, 'sadas', 'asdas', 'asdas', 'sadas', NULL, 2),
(12, 'asdsa', 'sadas', 'asdas', 'sadas', NULL, 2),
(13, 'asdas', 'asdas', 'asd', 'asdas', NULL, 2),
(14, 'sadas', 'sadsa', 'sadas', 'sadas', NULL, 1),
(15, 'Hisyam', 'Amikom', '085111119876', 'mustofahisyam13@gmail.com', 'Capture1', 2),
(16, 'Anri', 'Test ', '1111', 'mustofahisyam13@gmail.com', 'Capture.PNG', 3),
(17, 'Alan', 'Amikom', '0976542', 'students@amikom.ac.id', 'Capture.PNG', 3);

-- --------------------------------------------------------

--
-- Table structure for table `overview`
--

CREATE TABLE `overview` (
  `id_overview` int(11) NOT NULL,
  `nama_overview` varchar(25) DEFAULT NULL,
  `deskripsi_overview` varchar(90) NOT NULL,
  `gambar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `id_portofolio` int(11) NOT NULL,
  `nama_portofolio` varchar(25) DEFAULT NULL,
  `deskripsi_portofolio` varchar(150) NOT NULL,
  `gambar` text,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE `servis` (
  `id_servis` int(11) NOT NULL,
  `nama_servis` varchar(25) DEFAULT NULL,
  `deskripsi_servis` varchar(150) NOT NULL,
  `gambar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `nama_testimoner` varchar(40) NOT NULL,
  `email_testimoner` varchar(40) NOT NULL,
  `img_testimoner` text NOT NULL,
  `respon_testimoner` text NOT NULL,
  `tanggal` date NOT NULL,
  `polarity` double DEFAULT NULL,
  `divisi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `nama_testimoner`, `email_testimoner`, `img_testimoner`, `respon_testimoner`, `tanggal`, `polarity`, `divisi`) VALUES
(6, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'pelayanannya buruk dan kurang memuaskan', '2016-11-03', -0.12222222222222216, 2),
(7, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'serring terjadi kesalahan dalam pelayannya', '2016-11-13', -0.222211111111, 3),
(8, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'pelayanannya sangat bagus dan memuaskan', '2016-12-20', 0.78, 1),
(9, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'ini bukan opini atau sentimen', '2016-12-08', 0, 2),
(10, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'Terima kasih atas pelayannya selama ini, sangat membantu', '2016-12-20', 0.2, 1),
(11, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'Sangat bagus dan inovatif', '2016-12-20', 0.705, 2),
(12, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'Sangat mengesankan', '2016-10-06', 0.41, 3),
(13, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'Sangat baik dan memuaskan', '2016-10-11', 0.2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `id_jabatan` (`id_divisi`);

--
-- Indexes for table `overview`
--
ALTER TABLE `overview`
  ADD PRIMARY KEY (`id_overview`);

--
-- Indexes for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id_portofolio`),
  ADD KEY `id_member_satu` (`id_member`);

--
-- Indexes for table `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`id_servis`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`),
  ADD KEY `fk_divisi` (`divisi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `overview`
--
ALTER TABLE `overview`
  MODIFY `id_overview` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id_portofolio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `servis`
--
ALTER TABLE `servis`
  MODIFY `id_servis` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`);

--
-- Constraints for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD CONSTRAINT `portofolio_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`);

--
-- Constraints for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD CONSTRAINT `fk_divisi` FOREIGN KEY (`divisi`) REFERENCES `divisi` (`id_divisi`) ON DELETE CASCADE;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `my_event_count` ON SCHEDULE EVERY 1 DAY STARTS '2016-12-18 00:00:01' ON COMPLETION PRESERVE ENABLE DO INSERT INTO counter (tanggal, hits) VALUES(NOW(),0)$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
