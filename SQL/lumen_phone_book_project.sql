-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2021 at 05:07 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lumen_phone_book_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `phone_book_details`
--

CREATE TABLE `phone_book_details` (
  `id` int(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `phone_number_one` varchar(100) NOT NULL,
  `phone_number_two` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `phone_book_details`
--

INSERT INTO `phone_book_details` (`id`, `username`, `phone_number_one`, `phone_number_two`, `name`, `email`, `city`) VALUES
(2, 'AnupamTalukdar', '01914681177', '01632968851', 'Anupam Talukdar', 'anupam.talukdar@gmail.com', 'Sylhet'),
(3, 'DhimanBaidya', '01914681167', '01632968811', 'Dhiman Baidya Clinton', 'dhiman.baidya.clinton@gmail.com', 'Chanurughat'),
(4, 'TusarBanik', '01914681167', '01632968811', 'Tusar Banik', 'tusar.banik@gmail.com', 'Sylhet'),
(5, 'ShawonDas', '01914681167', '01632968811', 'Shawon Das', 'shawon.das@gmail.com', 'Sylhet'),
(6, 'SudipPaul', '01914681167', '01632968811', 'Sudip Paul', 'sudip.paul@gmail.com', 'Sylhet'),
(7, 'DhirajBaidya', '01914681167', '01632968811', 'Dhiraj Baidya Kintu', 'dhiraj.baidya.kintu@gmail.com', 'Sylhet');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(255) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `firstname`, `lastname`, `city`, `username`, `password`, `gender`) VALUES
(2, 'Anupam', 'Talukder', 'Sylhet', 'AnupamTalukdar', '123', 'male'),
(3, 'Dhiraj', 'Baidya', 'Sylhet', 'DhirajBaidya', '123', 'mail'),
(4, 'Tusar', 'Banik', 'Sylhet', 'TusarBanik', '123', 'mail'),
(5, 'Dhirman', 'Baidya', 'Chunarughat', 'DhimanBaidya', '123', 'mail'),
(6, 'Shawon', 'Das', 'Sylhet', 'ShawonDas', '123', 'mail'),
(7, 'Sudip', 'Paul', 'Sylhet', 'SudipPaul', '123', 'mail'),
(8, 'Pappu', 'Baidya', 'Sylhet', 'PappuBaidya', '123', 'mail');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phone_book_details`
--
ALTER TABLE `phone_book_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phone_book_details`
--
ALTER TABLE `phone_book_details`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
