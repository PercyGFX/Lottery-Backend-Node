-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 07:50 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lottery`
--

-- --------------------------------------------------------

--
-- Table structure for table `lotterytypes`
--

CREATE TABLE `lotterytypes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `costpernumber` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uuid` varchar(100) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `userbalance` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uuid`, `phonenumber`, `userbalance`) VALUES
('ade3f6ca-d2d1-402e-a686-8a95155ac53e', '+94775001170', 200);

-- --------------------------------------------------------

--
-- Table structure for table `usertickets`
--

CREATE TABLE `usertickets` (
  `id` int(11) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `purchasedNo` int(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lotteryTypeId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertickets`
--

INSERT INTO `usertickets` (`id`, `uid`, `purchasedNo`, `date`, `timestamp`, `lotteryTypeId`) VALUES
(31, 'ade3f6ca-d2d1-402e-a686-8a95155ac53e', 71, '6/2/2023', '2023-06-01 20:07:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `winninglotteries`
--

CREATE TABLE `winninglotteries` (
  `id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `TypeId` int(10) NOT NULL,
  `winningNumber` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lotterytypes`
--
ALTER TABLE `lotterytypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `usertickets`
--
ALTER TABLE `usertickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winninglotteries`
--
ALTER TABLE `winninglotteries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lotterytypes`
--
ALTER TABLE `lotterytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertickets`
--
ALTER TABLE `usertickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `winninglotteries`
--
ALTER TABLE `winninglotteries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
