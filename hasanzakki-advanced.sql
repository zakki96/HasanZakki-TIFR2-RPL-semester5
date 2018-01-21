-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2018 at 10:29 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hasanzakki-advanced`
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
(4, 'hasan zakki', 'selasa otw bandung');

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
(6, 1514, 'hasan zakki', 'pecangaan', 'Jepara', '1998-01-01', 'hasan', 2018, '2018-01-21 09:35:57', '2018-01-21 09:36:35', 3, 3);

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
(12, 'x-1', '2018-01-21 08:51:42', '2018-01-21 08:51:42', 3, 3);

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
(10, 7, 12, '2018-01-21 09:06:44', '2018-01-21 09:06:44', 3, 3),
(11, 7, 12, '2018-01-21 09:47:15', '2018-01-21 09:47:15', 3, 3);

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
(7, 'hasanzakki', '2018-01-21 09:01:11', '2018-01-21 09:01:11', 3, 3);

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
(3, 'hasanzakki', '6MQ2qFY1KiAGfroO4KiR5GHOnUQ4hYhf', '$2y$13$MRof3pA2i6oSUMcqG8xiV.zlNCDB8t.RJEo/za0Ukaiu1bVcHMna6', NULL, 'zaki@gmail.com', 10, 1516499063, 1516499063);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_data_induk_siswa`
--
ALTER TABLE `tbl_data_induk_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_kelas_tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_siswa_kelas_tahun_ajaran`
--
ALTER TABLE `tbl_siswa_kelas_tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_tahun_ajaran`
--
ALTER TABLE `tbl_tahun_ajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
