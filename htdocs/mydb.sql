-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2024 at 08:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `arubaito_table`
--

CREATE TABLE `arubaito_table` (
  `バイトID` int(11) NOT NULL,
  `名前` varchar(30) DEFAULT NULL,
  `電話番号` varchar(30) DEFAULT NULL,
  `時給` decimal(8,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arubaito_table`
--

INSERT INTO `arubaito_table` (`バイトID`, `名前`, `電話番号`, `時給`) VALUES
(2, '田中太郎', '09022222222', 1200),
(3, '佐藤二朗', '09033333333', 1300),
(16, '太郎', '09044444444', 1200);

-- --------------------------------------------------------

--
-- Table structure for table `part_time_employee_table`
--

CREATE TABLE `part_time_employee_table` (
  `EmployeeID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `HourlyRate` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `part_time_employee_table`
--

INSERT INTO `part_time_employee_table` (`EmployeeID`, `Name`, `Phone`, `HourlyRate`) VALUES
(1, 'ABC', '234', 5.00),
(2, 'Trial 2', '4649874', 79.00);

-- --------------------------------------------------------

--
-- Table structure for table `revised_sihuto_table`
--

CREATE TABLE `revised_sihuto_table` (
  `ID` int(11) NOT NULL,
  `バイトID` int(11) NOT NULL,
  `日付` date NOT NULL,
  `開始` time NOT NULL,
  `終了` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `revised_sihuto_table`
--

INSERT INTO `revised_sihuto_table` (`ID`, `バイトID`, `日付`, `開始`, `終了`) VALUES
(1, 1, '2023-06-16', '10:00:00', '19:00:00'),
(2, 2, '2023-06-17', '12:00:00', '19:00:00'),
(3, 1, '2024-10-06', '09:00:00', '10:00:00'),
(4, 1, '2024-10-07', '09:00:00', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sihuto_table`
--

CREATE TABLE `sihuto_table` (
  `ID` int(11) NOT NULL,
  `バイトID` int(11) NOT NULL,
  `日付` date NOT NULL,
  `開始` time NOT NULL,
  `終了` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sihuto_table`
--

INSERT INTO `sihuto_table` (`ID`, `バイトID`, `日付`, `開始`, `終了`) VALUES
(1, 1, '2023-06-16', '08:00:00', '14:00:00'),
(2, 2, '2023-06-17', '09:00:00', '19:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arubaito_table`
--
ALTER TABLE `arubaito_table`
  ADD PRIMARY KEY (`バイトID`);

--
-- Indexes for table `part_time_employee_table`
--
ALTER TABLE `part_time_employee_table`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `revised_sihuto_table`
--
ALTER TABLE `revised_sihuto_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sihuto_table`
--
ALTER TABLE `sihuto_table`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arubaito_table`
--
ALTER TABLE `arubaito_table`
  MODIFY `バイトID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `part_time_employee_table`
--
ALTER TABLE `part_time_employee_table`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `revised_sihuto_table`
--
ALTER TABLE `revised_sihuto_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sihuto_table`
--
ALTER TABLE `sihuto_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
