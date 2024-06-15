-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2024 at 12:38 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contactus`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `organization` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `organization`, `email`, `contact`, `message`, `time`) VALUES
(12, 'Akash Bhadange', 'VIT', 'akashbhadange987@gmail.com', '8605447725', 'hello', '2024-06-14 18:58:22'),
(20, 'Akash Bhadange', 'VIT', 'akashbhadange987@gmail.com', '8605447725', 'Hi, Akash Bhadange', '2024-06-15 10:05:41'),
(21, 'akash', 'webwide', 'test@gmail.com', '8605447725', 'I am Akash.', '2024-06-15 10:06:18'),
(22, 'Akash Bhadange', 'VIT', 'akashbhadange987@gmail.com', '8605447725', 'Hii, Akash here', '2024-06-15 10:09:15'),
(23, 'Akash Bhadange', 'VIT', 'akashbhadange987@gmail.com', '8605447725', 'asdf', '2024-06-15 10:21:28'),
(24, 'akash', 'VIT', 'akashbhadange987@gmail.com', '8605447725', 'test', '2024-06-15 10:23:46'),
(25, 'Akash Bhadange', 'VIT', 'akashbhadange987@gmail.com', '8605447725', 'Akash', '2024-06-15 10:38:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
