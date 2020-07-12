-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2020 at 11:48 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wildfire`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch_codes`
--

CREATE TABLE `dispatch_codes` (
  `id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `display_code` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `priority` int(11) DEFAULT 0,
  `is_important` tinyint(4) DEFAULT 0,
  `recepients` varchar(50) NOT NULL DEFAULT '{}'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `dispatch_codes`
--

INSERT INTO `dispatch_codes` (`id`, `code`, `display_code`, `description`, `priority`, `is_important`, `recepients`) VALUES
(1, '10-10', '10-10', 'Fight in progress', 1, 1, '[{\"name\":\"police\"},{\"name\":\"ems\"}]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch_codes`
--
ALTER TABLE `dispatch_codes`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dispatch_codes`
--
ALTER TABLE `dispatch_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
