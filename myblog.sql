-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2018 at 03:41 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brw_files`
--

CREATE TABLE `brw_files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `model` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category_code` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brw_images`
--

CREATE TABLE `brw_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `record_id` int(10) UNSIGNED NOT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brw_images`
--

INSERT INTO `brw_images` (`id`, `name`, `record_id`, `model`, `description`, `category_code`, `created`, `modified`) VALUES
(1, 'warehouse.png', 1, 'Website', '', 'main', '2018-01-12 05:20:37', '2018-01-12 05:20:37'),
(2, 'vue.png', 2, 'Website', '', 'main', '2018-01-12 05:22:09', '2018-01-12 05:22:09'),
(3, 'course.png', 3, 'Website', '', 'main', '2018-01-12 05:22:56', '2018-01-12 05:22:56'),
(4, 'taxi.png', 4, 'Website', '', 'main', '2018-01-12 05:23:46', '2018-01-12 05:23:46'),
(5, 'canadaso.png', 5, 'Website', '', 'main', '2018-01-12 05:26:09', '2018-01-12 05:26:09'),
(6, 'warehouse.png', 7, 'Website', '', 'main', '2018-01-12 05:30:35', '2018-01-12 05:30:35'),
(7, 'vue.png', 8, 'Website', '', 'main', '2018-01-12 05:30:44', '2018-01-12 05:30:44');

-- --------------------------------------------------------

--
-- Table structure for table `brw_users`
--

CREATE TABLE `brw_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brw_users`
--

INSERT INTO `brw_users` (`id`, `email`, `password`, `last_login`, `created`, `modified`) VALUES
(2, 'test@gmail.com', 'cb9dd60a394cddb9abf1a0dc0d973ca7cd015edf', '2018-01-12 05:30:22', '2017-12-19 22:41:55', '2017-12-19 22:41:55');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `body` text,
  `price` int(11) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `city` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `websites`
--

CREATE TABLE `websites` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `websites`
--

INSERT INTO `websites` (`id`, `title`, `content`, `link`, `views`, `created`, `modified`) VALUES
(3, 'Online Medical Course', 'Cakephp, Php, Jquery, JS', 'http://learnintegrative.com/', 0, '2018-01-12 05:22:56', '2018-01-12 05:22:56'),
(4, 'Taxi Application', 'Cakephp, Jquery', 'https://jike.ca', 0, '2018-01-12 05:23:46', '2018-01-12 05:23:46'),
(5, 'Canada So', 'Cakephp, Jquery', 'http://canadaso.ca/', 1, '2018-01-12 05:26:09', '2018-01-12 05:26:09'),
(7, 'WareHouse System', 'Angular4, Nodejs, MongoDB, Socket.io', 'http://storage.beimei.fun', 2, '2018-01-12 05:20:37', '2018-01-12 05:26:21'),
(8, 'NA Infomation Platform', 'Vue2, Nodejs, Mongodb', 'http://na.beimei.fun', 2, '2018-01-12 05:22:09', '2018-01-12 05:22:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brw_files`
--
ALTER TABLE `brw_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_code` (`category_code`);

--
-- Indexes for table `brw_images`
--
ALTER TABLE `brw_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_code` (`category_code`(191));

--
-- Indexes for table `brw_users`
--
ALTER TABLE `brw_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`email`);

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `websites`
--
ALTER TABLE `websites`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brw_files`
--
ALTER TABLE `brw_files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brw_images`
--
ALTER TABLE `brw_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `brw_users`
--
ALTER TABLE `brw_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `websites`
--
ALTER TABLE `websites`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
