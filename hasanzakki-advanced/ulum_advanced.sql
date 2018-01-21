-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2018 at 11:36 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ulum_advanced`
--

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1516204284),
('m130524_201442_init', 1516204288),
('m180117_183559_create_tbl_comment_table', 1516214176),
('m180119_092121_create_tbl_tahun_ajaran_table', 1516353705),
('m180119_092325_create_tbl_kelas_table', 1516353818),
('m180119_092720_create_tbl_data_induk_siswa_table', 1516354064),
('m180119_092918_create_tbl_kelas_tahun_ajaran_table', 1516354173),
('m180119_093150_create_tbl_siswa_kelas_tahun_ajaran_table', 1516354377),
('m180119_161551_create_tbl_kelas_tahun_ajaran_table', 1516378566);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `name`, `message`) VALUES
(1, 'Muhammad Bahrul Ulum', 'Test Comment manual PHP My Admin'),
(3, 'Muhammad Bahrul Ulum', 'Test Comment/Create - Edit(Update)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_induk_siswa`
--

CREATE TABLE `tbl_data_induk_siswa` (
  `id` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_ortu` varchar(255) NOT NULL,
  `tahun_masuk` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_data_induk_siswa`
--

INSERT INTO `tbl_data_induk_siswa` (`id`, `nis`, `nama`, `alamat`, `tempat_lahir`, `tanggal_lahir`, `nama_ortu`, `tahun_masuk`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 2147483647, 'Muhammad Bahrul Ulum', 'Ngabul 01/06 Tahunan Jepara', 'Jepara', '1996-08-02', 'Abdur Rochman', 2013, '2018-01-19 22:36:21', '2018-01-19 22:36:21', 2, 2),
(2, 1001, 'Agus', 'Jepara', 'Jepara', '1998-07-10', 'Bambang', 2014, '2018-01-20 04:25:30', '2018-01-20 04:25:30', 2, 2),
(3, 1002, 'Budi', 'Krapyak', 'Jepara', '1998-08-04', 'Toni', 2014, '2018-01-20 04:27:50', '2018-01-20 04:27:50', 2, 2),
(4, 1003, 'Cahyo', 'Ngabul', 'Kudus', '1997-12-02', 'Sudibyo', 2014, '2018-01-20 04:28:50', '2018-01-20 04:28:50', 2, 2),
(5, 1004, 'Deni', 'Mayong', 'Jepara', '1998-01-14', 'Sulistyo', 2014, '2018-01-20 04:29:52', '2018-01-20 04:29:52', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id`, `nama`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(2, 'X-1', '2018-01-19 21:18:31', '2018-01-19 21:19:16', 2, 2),
(3, 'X-2', '2018-01-19 21:19:30', '2018-01-19 21:19:30', 2, 2),
(7, 'XI-A1', '2018-01-20 04:20:04', '2018-01-20 04:20:04', 2, 2),
(8, 'XI-A2', '2018-01-20 04:20:19', '2018-01-20 04:20:19', 2, 2),
(9, 'XI-B1', '2018-01-20 04:20:38', '2018-01-20 04:20:38', 2, 2),
(10, 'XII-A1', '2018-01-20 04:20:53', '2018-01-20 04:20:53', 2, 2),
(11, 'XII-B1', '2018-01-20 04:21:11', '2018-01-20 04:21:11', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas_tahun_ajaran`
--

CREATE TABLE `tbl_kelas_tahun_ajaran` (
  `id` int(11) NOT NULL,
  `id_tahun_ajaran` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kelas_tahun_ajaran`
--

INSERT INTO `tbl_kelas_tahun_ajaran` (`id`, `id_tahun_ajaran`, `id_kelas`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 2, '2018-01-19 23:38:48', '2018-01-20 04:30:53', 2, 2),
(3, 2, 2, '2018-01-20 04:31:09', '2018-01-20 04:31:09', 2, 2),
(4, 2, 3, '2018-01-20 04:32:04', '2018-01-20 04:32:04', 2, 2),
(5, 3, 7, '2018-01-20 04:32:25', '2018-01-20 04:33:01', 2, 2),
(6, 3, 8, '2018-01-20 04:32:41', '2018-01-20 04:32:41', 2, 2),
(7, 3, 9, '2018-01-20 04:33:28', '2018-01-20 04:33:28', 2, 2),
(8, 4, 10, '2018-01-20 04:34:12', '2018-01-20 04:34:12', 2, 2),
(9, 4, 11, '2018-01-20 04:34:28', '2018-01-20 04:34:28', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa_kelas_tahun_ajaran`
--

CREATE TABLE `tbl_siswa_kelas_tahun_ajaran` (
  `id` int(11) NOT NULL,
  `id_data_induk_siswa` int(11) NOT NULL,
  `id_kelas_tahun_ajaran` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_siswa_kelas_tahun_ajaran`
--

INSERT INTO `tbl_siswa_kelas_tahun_ajaran` (`id`, `id_data_induk_siswa`, `id_kelas_tahun_ajaran`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 1, 1, '2018-01-20 01:55:07', '2018-01-20 01:55:07', 2, 2),
(2, 2, 3, '2018-01-20 04:37:58', '2018-01-20 04:37:58', 2, 2),
(4, 3, 3, '2018-01-20 04:43:28', '2018-01-20 04:43:28', 2, 2),
(5, 4, 3, '2018-01-20 04:45:40', '2018-01-20 04:45:40', 2, 2),
(6, 5, 4, '2018-01-20 04:46:50', '2018-01-20 04:46:50', 2, 2),
(7, 2, 6, '2018-01-20 04:48:15', '2018-01-20 04:48:15', 2, 2),
(8, 3, 5, '2018-01-20 04:49:31', '2018-01-20 04:49:31', 2, 2),
(9, 4, 7, '2018-01-20 04:50:10', '2018-01-20 04:50:10', 2, 2),
(10, 2, 8, '2018-01-20 04:52:48', '2018-01-20 04:52:48', 2, 2),
(11, 3, 8, '2018-01-20 04:53:05', '2018-01-20 04:53:05', 2, 2),
(12, 4, 9, '2018-01-20 04:53:48', '2018-01-20 04:53:48', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tahun_ajaran`
--

CREATE TABLE `tbl_tahun_ajaran` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tahun_ajaran`
--

INSERT INTO `tbl_tahun_ajaran` (`id`, `nama`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, '2013-2014', '2018-01-19 21:54:42', '2018-01-19 21:54:42', 2, 2),
(2, '2014-2015', '2018-01-20 04:17:48', '2018-01-20 04:17:48', 2, 2),
(3, '2015-2016', '2018-01-20 04:18:03', '2018-01-20 04:18:03', 2, 2),
(4, '2016-2017', '2018-01-20 04:18:17', '2018-01-20 04:18:17', 2, 2),
(5, '2017-2018', '2018-01-20 04:18:30', '2018-01-20 04:18:30', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(2, 'ulum', 'mHNcfeJbYvKqzmg3R0x5LzhKddrh0LWt', '$2y$13$5UTeU3h1ixJb86mCzFszU.Z22xtbWRd1N.KFDnw2zFI7q02ZLiIO6', NULL, 'kelindkink@gmail.com', 10, 1516296530, 1516296530);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_data_induk_siswa`
--
ALTER TABLE `tbl_data_induk_siswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-tbl_data_induk_siswa-created_by` (`created_by`),
  ADD KEY `idx-tbl_data_induk_siswa-updated_by` (`updated_by`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-tbl_kelas-created_by` (`created_by`),
  ADD KEY `idx-tbl_kelas-updated_by` (`updated_by`);

--
-- Indexes for table `tbl_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_kelas_tahun_ajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-tbl_kelas_tahun_ajaran-id_tahun_ajaran` (`id_tahun_ajaran`),
  ADD KEY `idx-tbl_kelas_tahun_ajaran-id_kelas` (`id_kelas`),
  ADD KEY `idx-tbl_kelas_tahun_ajaran-created_by` (`created_by`),
  ADD KEY `idx-tbl_kelas_tahun_ajaran-updated_by` (`updated_by`);

--
-- Indexes for table `tbl_siswa_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_siswa_kelas_tahun_ajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-tbl_siswa_kelas_tahun_ajaran-id_data_induk_siswa` (`id_data_induk_siswa`),
  ADD KEY `idx-tbl_siswa_kelas_tahun_ajaran-id_kelas_tahun_ajaran` (`id_kelas_tahun_ajaran`),
  ADD KEY `idx-tbl_siswa_kelas_tahun_ajaran-created_by` (`created_by`),
  ADD KEY `idx-tbl_siswa_kelas_tahun_ajaran-updated_by` (`updated_by`);

--
-- Indexes for table `tbl_tahun_ajaran`
--
ALTER TABLE `tbl_tahun_ajaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-tbl_tahun_ajaran-created_by` (`created_by`),
  ADD KEY `idx-tbl_tahun_ajaran-updated_by` (`updated_by`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_data_induk_siswa`
--
ALTER TABLE `tbl_data_induk_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_kelas_tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_siswa_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_siswa_kelas_tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_tahun_ajaran`
--
ALTER TABLE `tbl_tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_data_induk_siswa`
--
ALTER TABLE `tbl_data_induk_siswa`
  ADD CONSTRAINT `fk-tbl_data_induk_siswa-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_data_induk_siswa-updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD CONSTRAINT `fk-tbl_kelas-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_kelas-updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_kelas_tahun_ajaran`
  ADD CONSTRAINT `fk-tbl_kelas_tahun_ajaran-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_kelas_tahun_ajaran-id_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `tbl_kelas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_kelas_tahun_ajaran-id_tahun_ajaran` FOREIGN KEY (`id_tahun_ajaran`) REFERENCES `tbl_tahun_ajaran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_kelas_tahun_ajaran-updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_siswa_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_siswa_kelas_tahun_ajaran`
  ADD CONSTRAINT `fk-tbl_siswa_kelas_tahun_ajaran-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_siswa_kelas_tahun_ajaran-id_data_induk_siswa` FOREIGN KEY (`id_data_induk_siswa`) REFERENCES `tbl_data_induk_siswa` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_siswa_kelas_tahun_ajaran-id_kelas_tahun_ajaran` FOREIGN KEY (`id_kelas_tahun_ajaran`) REFERENCES `tbl_kelas_tahun_ajaran` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_siswa_kelas_tahun_ajaran-updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_tahun_ajaran`
--
ALTER TABLE `tbl_tahun_ajaran`
  ADD CONSTRAINT `fk-tbl_tahun_ajaran-created_by` FOREIGN KEY (`created_by`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-tbl_tahun_ajaran-updated_by` FOREIGN KEY (`updated_by`) REFERENCES `user` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
