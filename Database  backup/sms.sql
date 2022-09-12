-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2022 at 02:39 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `addteacher`
--

CREATE TABLE `addteacher` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `spedalization` varchar(255) NOT NULL,
  `subject_assigned` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addteacher`
--

INSERT INTO `addteacher` (`id`, `name`, `spedalization`, `subject_assigned`) VALUES
(1005, 'Karim', 'BSC', 'Math'),
(1205, 'Helel', 'BSC', 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `roll` varchar(10) DEFAULT NULL,
  `day` varchar(255) NOT NULL,
  `attendancet` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `name`, `class`, `roll`, `day`, `attendancet`) VALUES
('1006', 'Sadik', '10', '99', 'Sunday', 'Absent'),
('1005', 'Rana', '10', '25', 'Saturday', 'Present'),
('1005', 'Rana', '10', '25', 'Sunday', 'Absent'),
('1006', 'Sadik', '10', '99', 'Saturday', 'Present'),
('1006', 'Sadik', '10', '99', 'Monday', 'Absent'),
('1006', 'Sadik', '10', '99', 'Saturday', 'Present'),
('1005', 'Rana', '10', '25', 'Monday', 'Present'),
('1008', 'Rahim', '10', '11', 'Monday', 'Absent'),
('1008', 'Rahim', '10', '11', 'Saturday', 'Present'),
('1008', 'Rahim', '10', '11', 'Sunday', 'Present'),
('1001', 'Nasim', '10', '1', 'Saturday', 'Present'),
('1001', 'Nasim', '10', '1', 'Sunday', 'Present'),
('1001', 'Nasim', '10', '1', 'Monday', 'Absent'),
('1001', 'Nasim', '10', '1', 'Tuesday', 'Present'),
('1001', 'Nasim', '10', '1', 'Wednesday', 'Present'),
('1003', 'Raju', '10', '5', 'Sunday', 'Absent'),
('1002', 'Anika', '10', '5', 'Saturday', 'Present'),
('1002', 'Anika', '10', '5', 'Sunday', 'Present'),
('1004', 'Rakib', '10', '23', 'Thursday', 'Present'),
('1004', 'Rakib', '10', '23', 'Saturday', 'Present'),
('1004', 'Rakib', '10', '23', 'Sunday', 'Absent'),
('1010', 'Remon', '10', '23', 'Saturday', 'Present'),
('1010', 'Remon', '10', '23', 'Sunday', 'Present'),
('1010', 'Remon', '10', '23', 'Monday', 'Absent');

-- --------------------------------------------------------

--
-- Table structure for table `feesubmit`
--

CREATE TABLE `feesubmit` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `monthname` varchar(255) NOT NULL,
  `annuall` int(255) NOT NULL,
  `monthly` int(255) NOT NULL,
  `sport` int(255) NOT NULL,
  `libary` int(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feesubmit`
--

INSERT INTO `feesubmit` (`id`, `name`, `monthname`, `annuall`, `monthly`, `sport`, `libary`, `status`) VALUES
(60, 'Raju', 'jan', 7000, 10000, 5000, 300, 'unpaid'),
(88, 'Rahim', 'Jun', 1600, 7000, 5000, 2000, 'unpaid'),
(90, 'Raju', 'Jan', 10000, 5000, 1000, 2000, 'paid'),
(1001, 'Shmim', 'jan', 10000, 5000, 2000, 1000, 'paid'),
(1002, 'Raju', 'Feb', 10000, 5000, 2000, 1000, 'paid'),
(1002, 'Raju', 'jan', 10000, 5000, 2000, 1000, 'paid'),
(1006, 'Sadik', 'jan', 10000, 2000, 5000, 3000, 'unpaid'),
(1006, 'Sadik', 'jun', 10000, 2000, 3000, 1000, 'unpaid'),
(1005, 'Rana', 'jun', 10000, 5000, 2000, 1000, 'paid'),
(1005, 'Rana', 'dd', 221, 22, 11, 22, 'unpaid'),
(1005, 'Rana', 'gh', 4545, 44, 14, 44, 'unpaid'),
(1005, 'Rana', '10000', 5000, 1000, 3000, 2000, 'unpaid'),
(1007, 'Rahim', 'jun', 10000, 5000, 1000, 3000, 'unpaid'),
(1005, 'Rana', '10000', 5000, 1000, 3000, 2000, 'unpaid'),
(1008, 'Rahim', 'jun', 10000, 5000, 3000, 100, 'unpaid'),
(1001, 'Nasim', 'June', 10000, 5000, 2000, 1000, 'paid'),
(1003, 'Raju', 'jun', 10000, 5000, 2000, 1000, 'paid'),
(1004, 'Rakib', 'jun', 10000, 5000, 3000, 2000, 'unpaid'),
(1010, 'Remon', 'jun', 10000, 5000, 1000, 3000, 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'rana', 'rana');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `pid` int(10) NOT NULL,
  `pname` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`pid`, `pname`) VALUES
(1, 'abc'),
(1234, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `reportcard`
--

CREATE TABLE `reportcard` (
  `id` int(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `phy` int(255) NOT NULL,
  `che` int(255) NOT NULL,
  `math` int(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `rollnumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reportcard`
--

INSERT INTO `reportcard` (`id`, `name`, `class`, `phy`, `che`, `math`, `grade`, `rollnumber`) VALUES
(45, '343f3', '3', 432, 432, 23, 'A+', '343'),
(12, 'Rana', '9', 80, 90, 70, 'A+', '10'),
(13, 'Rahim', '7', 90, 50, 60, 'B', '5'),
(24, 'runa', '8', 90, 60, 55, 'B', '8'),
(12, 'rakib', '9', 70, 80, 90, 'A+', '4'),
(38, 'Rana', '10', 70, 90, 40, 'B', '10'),
(22, 'Karim', '12', 90, 60, 50, 'B', '10'),
(12, 'Rahim', '10', 90, 60, 50, 'B', '30'),
(1001, 'Shemim', 'ten', 70, 90, 50, 'A', '22'),
(1002, 'Rahim', '10', 90, 80, 70, 'A+', '22'),
(1006, 'Sadike', '10', 90, 80, 70, 'A+', '99'),
(1006, 'Sadik', '10', 90, 50, 80, 'A', '99'),
(1007, 'Rahim', '10', 90, 80, 70, 'A+', '20'),
(1007, 'Rahim', '10', 90, 70, 80, 'A+', '20'),
(1005, 'Rana', '10', 60, 70, 90, 'A', '25'),
(1005, 'Rana', '10', 60, 70, 90, 'A', '25'),
(1006, 'Sadik', '10', 90, 80, 90, 'A+', '99'),
(1008, 'Salam', '10', 20, 45, 65, 'D', '11'),
(1008, 'Salam', '10', 60, 70, 55, 'B', '11'),
(1008, 'Salam', '10', 85, 88, 75, 'A+', '11'),
(1008, 'Salam', '10', 80, 85, 65, 'A', '11'),
(1008, 'Salam', '10', 65, 95, 85, 'A+', '11'),
(1001, 'Nasim', '10', 90, 70, 90, 'A+', '01'),
(1003, 'Raju', '10', 90, 70, 50, 'A', '5'),
(1004, 'Rakib', '10', 90, 70, 60, 'A', '23'),
(1010, 'Remon', '10', 70, 90, 80, 'A+', '23'),
(1005, 'Rana', '10', 50, 80, 90, 'A', '25');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Id` int(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stureg`
--

CREATE TABLE `stureg` (
  `sid` int(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `father_phone` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `roll` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `date` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stureg`
--

INSERT INTO `stureg` (`sid`, `sname`, `father_name`, `phone`, `father_phone`, `class`, `roll`, `address`, `date`) VALUES
(1005, 'Rana', 'Delwar', 18546582, '01975555474', '10', '25', 'Zhigatola', '02-05-2002'),
(1006, 'Sadik', 'Rahim', 1776756544, '01776756548', '10', '99', 'Bogura', '23-05-2005'),
(1008, 'Salam', 'Rahim', 1764749257, '0173806400', '10', '11', 'Bogura', '03-05-2009'),
(1001, 'Nasim', 'AB Motlabe', 1764749257, '0173060040', '10', '01', 'Bouran', '05-05-2005'),
(1002, 'Anika', 'Abdul', 1614749257, '01773004000', '10', '05', 'Dhaka', '05-05-2005'),
(1003, 'Raju', 'Babu', 1738060040, '01738060041', '10', '5', 'Bogura', '05-05-2005'),
(1004, 'Rakib', 'Karim', 173200400, '0173457905', '10', '23', 'BSou', '02-02-2002'),
(1010, 'Remon', 'Rahim', 1738060040, '01738060041', '10', '23', 'Dhaka', '02-05-2002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
