-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 07:00 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `estate_management_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `building_id` int(11) NOT NULL,
  `building_name` text NOT NULL,
  `building_address` text NOT NULL,
  `building_type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`building_id`, `building_name`, `building_address`, `building_type`) VALUES
(1, 'kk towers', '2828  gatundu road juja', 'mansion'),
(2, 'katrina house', '74663 juja avenue', 'apartment'),
(3, 'dam view apartments', '4573243  juja', 'mansion');

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `House_Id` int(11) NOT NULL,
  `HouseNo` text,
  `Number_of_rooms` text,
  `house_rent` double NOT NULL,
  `land_lord_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`House_Id`, `HouseNo`, `Number_of_rooms`, `house_rent`, `land_lord_id`) VALUES
(2, '2345', '4', 6000, 6),
(3, '6', '2', 4000, 8),
(4, '56', '800', 8900, 13);

-- --------------------------------------------------------

--
-- Table structure for table `land_lord`
--

CREATE TABLE `land_lord` (
  `land_lord_id` int(11) NOT NULL,
  `id_no` int(11) NOT NULL,
  `Name` text,
  `Contact` text,
  `building_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `land_lord`
--

INSERT INTO `land_lord` (`land_lord_id`, `id_no`, `Name`, `Contact`, `building_id`) VALUES
(1, 27809543, 'yom', '0717769329', NULL),
(2, 423423432, 'mary', '34543543', NULL),
(5, 123459, 'kim', '012234567', NULL),
(6, 27809543, 'yom majok', '0717769329', NULL),
(7, 27809543, 'kim powers', '0717769329', NULL),
(8, 98756, 'jonathan', '0118665890', NULL),
(9, 90876543, 'good', '0798876543', NULL),
(10, 75355, 'you', '0987765432', NULL),
(12, 27809543, 'kevin mutugi kithinji', '0717769329', NULL),
(13, 98755, 'Rim pal', '079876532', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `tenant_id` int(11) NOT NULL,
  `deposit` double NOT NULL,
  `amount_paid` double NOT NULL,
  `balance` double NOT NULL,
  `date_of_payment` date NOT NULL,
  `mode_of_payment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `receipt_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `receipts_year` int(11) NOT NULL,
  `receipts_month` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `Tenant_Id` int(11) NOT NULL,
  `Id_Number` int(11) NOT NULL,
  `Name` text,
  `Contact` text,
  `TimeOfEntry` text,
  `house_id` int(11) NOT NULL,
  `building_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`Tenant_Id`, `Id_Number`, `Name`, `Contact`, `TimeOfEntry`, `house_id`, `building_id`) VALUES
(2, 987654321, 'test testa', '0987654321', '08-09-2022', 2, 1),
(3, 2147483647, 'yule hawa', '674634533', '14-12-2022', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`building_id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`House_Id`),
  ADD UNIQUE KEY `land_lord_id` (`land_lord_id`);

--
-- Indexes for table `land_lord`
--
ALTER TABLE `land_lord`
  ADD PRIMARY KEY (`land_lord_id`),
  ADD UNIQUE KEY `building_id` (`building_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `tenant_id` (`tenant_id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`receipt_id`),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `house_id` (`house_id`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`Tenant_Id`),
  ADD KEY `house_id` (`house_id`),
  ADD KEY `house_id_2` (`house_id`),
  ADD KEY `house_id_3` (`house_id`),
  ADD KEY `building_id` (`building_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `building_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `House_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `land_lord`
--
ALTER TABLE `land_lord`
  MODIFY `land_lord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `receipt_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `Tenant_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `houses`
--
ALTER TABLE `houses`
  ADD CONSTRAINT `houses_ibfk_1` FOREIGN KEY (`land_lord_id`) REFERENCES `land_lord` (`land_lord_id`);

--
-- Constraints for table `land_lord`
--
ALTER TABLE `land_lord`
  ADD CONSTRAINT `land_lord_ibfk_1` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`tenant_id`) REFERENCES `tenant` (`Tenant_Id`);

--
-- Constraints for table `receipts`
--
ALTER TABLE `receipts`
  ADD CONSTRAINT `receipts_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment_id`),
  ADD CONSTRAINT `receipts_ibfk_2` FOREIGN KEY (`house_id`) REFERENCES `houses` (`House_Id`);

--
-- Constraints for table `tenant`
--
ALTER TABLE `tenant`
  ADD CONSTRAINT `tenant_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `houses` (`House_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tenant_ibfk_2` FOREIGN KEY (`building_id`) REFERENCES `building` (`building_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
