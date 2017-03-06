-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2017 at 02:37 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fees`
--

-- --------------------------------------------------------

--
-- Table structure for table `structure`
--

CREATE TABLE `structure` (
  `SN` int(11) NOT NULL,
  `Month` varchar(15) NOT NULL,
  `Remark` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `structure`
--

INSERT INTO `structure` (`SN`, `Month`, `Remark`) VALUES
(1, 'Baisakh', 'Paid'),
(2, 'Jestha', 'Paid'),
(3, 'Ashad', 'Paid'),
(4, 'Shrawan', 'Not Paid'),
(5, 'Bhadra', 'Not Paid'),
(6, 'Ashoj', 'Not Paid'),
(7, 'Kartik', 'Not Paid'),
(8, 'Mangsir', 'Not Paid'),
(9, 'Poush', 'Not Paid'),
(10, 'Magh', 'Not Paid'),
(11, 'Falgun', 'Not Paid'),
(12, 'Chaitra', 'Not Paid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `structure`
--
ALTER TABLE `structure`
  ADD PRIMARY KEY (`SN`),
  ADD KEY `Remark` (`Remark`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `structure`
--
ALTER TABLE `structure`
  MODIFY `SN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
