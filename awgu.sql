-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2022 at 04:01 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `awgu`
--

-- --------------------------------------------------------

--
-- Table structure for table `reflections`
--

CREATE TABLE `reflections` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `user` int(11) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `image1` varchar(50) DEFAULT NULL,
  `image2` varchar(50) DEFAULT NULL,
  `created` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reflections`
--

INSERT INTO `reflections` (`id`, `title`, `user`, `body`, `image1`, `image2`, `created`) VALUES
(100, 'Sample Reflection', 1, 'Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body Sample Reflection body ', 'img1.jpg', NULL, '2022-12-01'),
(101, 'Second title', 2, 'Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample Second body sample ', '', 'img2.jpg', '2022-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `role` varchar(200) DEFAULT 'priest',
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `dod` date DEFAULT NULL,
  `parish` varchar(200) DEFAULT NULL,
  `created` timestamp(5) NOT NULL DEFAULT current_timestamp(5)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `password`, `dod`, `parish`, `created`) VALUES
(1, 'Chinwenma', 'bishop', 'ladymediatrix27@gmail.com', 'test', NULL, NULL, '2022-12-01 18:44:29.00000'),
(2, 'Ms ChiChi', 'priest', 'obiefunamarcel@gmail.com', 'test', NULL, NULL, '2022-12-01 18:44:40.00000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reflections`
--
ALTER TABLE `reflections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reflections`
--
ALTER TABLE `reflections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
