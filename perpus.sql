-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 07:15 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` varchar(12) NOT NULL,
  `tgl_booking` date NOT NULL,
  `batas_ambil` date NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `booking_detail`
--

CREATE TABLE `booking_detail` (
  `id` int(11) NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(128) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `tahun_terbit` year(4) NOT NULL,
  `isbn` varchar(64) NOT NULL,
  `stok` int(11) NOT NULL,
  `dipinjam` int(11) NOT NULL,
  `dibooking` int(11) NOT NULL,
  `image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `id_kategori`, `pengarang`, `penerbit`, `tahun_terbit`, `isbn`, `stok`, `dipinjam`, `dibooking`, `image`) VALUES
(1, 'Statistika dengan Program Komputer', 1, 'Ahmad Kholiqul Amin', 'Deep Publish', 2011, '9786022809432', 6, 1, 1, 'img1557402455.jpg'),
(2, 'Mudah Belajar Komputer untuk anak', 1, 'Bambang Agus Setiawan', 'Huta Media', 2014, '9786025118500', 11, 7, -8, 'img1557402397.jpg'),
(5, 'PHP Komplet', 1, 'Jubilee', 'Elex Media Komputindo', 2017, '8346753547', 3, 5, -1, 'img1555522493.jpg'),
(10, 'Detektif Conan Ep 200', 9, 'Okigawa', 'Cultura', 2016, '874387583987', 6, 4, -5, 'img1557401465.jpg'),
(14, 'Bahasa Indonesia', 2, 'Umri Nur\'aini dan Indriyani', 'Pusat Perbukuan', 2015, '757254724884', 7, 1, -5, 'img1557402703.jpg'),
(15, 'Komunikasi Lintas Budaya', 5, 'Dr. Dedy Kurnia', 'Published', 2015, '878674646488', 6, 1, -2, 'img1557403156.jpg'),
(16, 'Kolaborasi Codeighniter dan Ajax dalam Perancangan', 1, 'Anton Subagja', 'Elex Media Komputindo', 2017, '43345356577', 8, 4, -7, 'img1557403502.jpg'),
(17, 'From Hobby to Money', 4, 'Deasylawati', 'Elex Media Komputindo', 2015, '87968686787879', 5, 0, 0, 'img1557403658.jpg'),
(18, 'Buku Saku Pramuka', 8, 'Rudi Himawan', 'Pusat Perbukuan', 2016, '97868687978796', 6, 0, 0, 'img1557404613.jpg'),
(19, 'Rahasia Keajaiban Bumi', 3, 'Nurul Ihsan', 'Luxima', 2014, '565756565768868', 5, 0, 0, 'img1557404689.jpg'),
(20, 'Mental Health', 11, 'Dr.  Syamsu Yusuf', 'Biden', 2017, '9786022809469', 10, 4, -7, 'img1642497842.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pinjam`
--

CREATE TABLE `detail_pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detail_pinjam`
--

INSERT INTO `detail_pinjam` (`no_pinjam`, `id_buku`, `denda`) VALUES
('18012022001', 5, 5000),
('18012022002', 5, 5000),
('18012022002', 16, 5000),
('18012022002', 2, 5000),
('18012022003', 5, 5000),
('18012022003', 10, 5000),
('18012022003', 20, 5000),
('18012022004', 5, 5000),
('18012022004', 16, 5000),
('18012022004', 20, 5000),
('22012022005', 5, 5000),
('22012022005', 10, 5000),
('22012022006', 16, 5000),
('25012022007', 5, 5000),
('25012022007', 14, 5000),
('25012022008', 5, 5000),
('25012022008', 10, 5000),
('25012022009', 5, 5000),
('25012022009', 20, 5000),
('26012022010', 5, 5000),
('26012022010', 15, 5000),
('26012022011', 10, 5000),
('26012022012', 16, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(5) NOT NULL,
  `kategori` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `kategori`) VALUES
(1, 'komputer'),
(2, 'bahasa'),
(3, 'sains'),
(4, 'hobby'),
(5, 'komunikasi'),
(6, 'hukum'),
(7, 'agama'),
(8, 'populer'),
(9, 'komik'),
(11, 'mental health');

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `no_pinjam` varchar(12) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_booking` varchar(12) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('Pinjam','Kembali') NOT NULL,
  `total_denda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`no_pinjam`, `tgl_pinjam`, `id_booking`, `id_user`, `tgl_kembali`, `tgl_pengembalian`, `status`, `total_denda`) VALUES
('18012022001', '2022-01-18', '18012022001', 4, '2022-01-21', '2022-01-18', 'Kembali', 0),
('18012022002', '2022-01-18', '18012022001', 5, '2022-01-21', '2022-01-18', 'Kembali', 0),
('18012022003', '2022-01-18', '18012022001', 5, '2022-01-21', '0000-00-00', 'Pinjam', 0),
('18012022004', '2022-01-18', '18012022001', 5, '2022-01-21', '0000-00-00', 'Pinjam', 0),
('22012022005', '2022-01-22', '22012022002', 4, '2022-01-25', '2022-01-22', 'Kembali', 0),
('22012022006', '2022-01-22', '20012022001', 9, '2022-01-24', '0000-00-00', 'Pinjam', 0),
('25012022007', '2022-01-25', '25012022001', 10, '2022-01-27', '2022-01-25', 'Kembali', 0),
('25012022008', '2022-01-25', '25012022001', 10, '2022-01-28', '2022-01-25', 'Kembali', 0),
('25012022009', '2022-01-25', '25012022001', 4, '2022-01-28', '2022-01-25', 'Kembali', 0),
('26012022010', '2022-01-26', '26012022001', 11, '2022-01-27', '2022-01-26', 'Kembali', 0),
('26012022011', '2022-01-26', '26012022001', 11, '2022-01-28', '0000-00-00', 'Pinjam', 0),
('26012022012', '2022-01-26', '26012022001', 4, '2022-01-29', '2022-01-26', 'Kembali', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'administrator'),
(2, 'member');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `tgl_booking` datetime DEFAULT NULL,
  `id_user` varchar(12) NOT NULL,
  `email_user` varchar(128) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `judul_buku` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `penulis` varchar(128) NOT NULL,
  `penerbit` varchar(128) NOT NULL,
  `tahun_terbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `tanggal_input` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `email`, `image`, `password`, `role_id`, `is_active`, `tanggal_input`) VALUES
(4, 'Ramadhan Herdianto', 'Resinda Blok 24KB', 'rama@gmail.com', 'default.jpg', '$2y$10$I9FqCUCEnbF0JOGFhL.jY.yHAGSNm0zKvfw78Z0yZa1uW/P8Hc.0O', 2, 1, 1642438334),
(5, 'admin', 'admin', 'admin@gmail.com', 'default.jpg', '$2y$10$5IrkrFHlJFjFGU2slyqZBOslQHE4PqjwkwWviZznHFC7l6uDZCiR.', 1, 1, 1642438467),
(6, 'Abibah Alviansyah', '', 'abibah@gmail.com', 'default.jpg', '$2y$10$8sAcWen01gWYykX0xkK2KOlnpimuE5hOhYSZSugQ66x4WsIwlQlhG', 2, 1, 1642492402),
(7, 'John Kennedy', '', 'john@gmail.com', 'default.jpg', '$2y$10$tAndLYwgFZo22A5/bY0U/.zUijlOE32FQ5H65AA3TtvYcWtC4vVpe', 2, 1, 1642492460),
(8, 'Gina Tri Septiyani', 'Rengasdengklok', 'ginatri@gmail.com', 'default.jpg', '$2y$10$Oqd0.1iW9xJTEUgtPsbq0uxLouqRGpeQV9sfD81yOoPUIvGX6B1N.', 2, 1, 1642649440),
(9, 'Stephen Strange', 'kamar taj', 'strange@gmail.com', 'default.jpg', '$2y$10$Ldlnmn.B.mxaOuDZ6PirOuHSvj84Vfx3z/oNu6g1Qh.lReki74nBm', 2, 1, 1642649869),
(10, 'Nanda Prastawa', 'bekasi timur', 'nanpras@gmail.com', 'default.jpg', '$2y$10$/g4qMHqyBueBdBMJORdrheTX7CbaLbIs5YT19o5yl6Dsn59ra1DSa', 2, 1, 1643094905),
(11, 'Faris Tanjung', 'Perumnas Karawang', 'faristanjung@gmail.com', 'default.jpg', '$2y$10$QMssLSbot7LW5Mbh2NxvK.NqAxEkHkwhk7fVp3wdpi6qG1WoXKZjO', 2, 1, 1643175883);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `booking_detail`
--
ALTER TABLE `booking_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`no_pinjam`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking_detail`
--
ALTER TABLE `booking_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
