-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2024 at 06:45 AM
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
-- Database: `dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `adminId` int(20) NOT NULL,
  `adminFname` varchar(200) NOT NULL,
  `adminLname` varchar(200) NOT NULL,
  `adminEmail` varchar(200) NOT NULL,
  `adminUname` varchar(200) NOT NULL,
  `adminPwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`adminId`, `adminFname`, `adminLname`, `adminEmail`, `adminUname`, `adminPwd`) VALUES
(1, 'RailYatra', 'Admin', 'admin@gmail.com', 'Manager', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `passenger_details`
--

CREATE TABLE `passenger_details` (
  `passengerId` int(10) NOT NULL,
  `pnrNumber` int(11) NOT NULL,
  `passengerFname` varchar(50) NOT NULL,
  `passengerLname` varchar(50) NOT NULL,
  `passengerAge` int(11) NOT NULL,
  `passengerGender` varchar(10) NOT NULL,
  `passengerAddress` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `userId` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passenger_details`
--

INSERT INTO `passenger_details` (`passengerId`, `pnrNumber`, `passengerFname`, `passengerLname`, `passengerAge`, `passengerGender`, `passengerAddress`, `status`, `userId`) VALUES
(21, 0, 'nilesh', 'shetty', 23, 'male', '', 'Booked', 4);

-- --------------------------------------------------------

--
-- Table structure for table `reservation_details`
--

CREATE TABLE `reservation_details` (
  `pnrNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `trainNumber` int(11) NOT NULL,
  `trainName` varchar(30) NOT NULL,
  `startPoint` varchar(50) NOT NULL,
  `destinationPoint` varchar(50) NOT NULL,
  `arrivalTime` time NOT NULL,
  `bookingDate` date NOT NULL,
  `journeyDate` date NOT NULL,
  `Fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation_details`
--

INSERT INTO `reservation_details` (`pnrNumber`, `userId`, `trainNumber`, `trainName`, `startPoint`, `destinationPoint`, `arrivalTime`, `bookingDate`, `journeyDate`, `Fare`) VALUES
(91, 4, 126, 'Banglore_Green', 'Yeshwantpur', 'majastic', '10:30:00', '2002-12-12', '0000-00-00', 137);

-- --------------------------------------------------------

--
-- Table structure for table `station_details`
--

CREATE TABLE `station_details` (
  `stationId` int(11) NOT NULL,
  `stationName` varchar(50) NOT NULL,
  `adminid` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `station_details`
--

INSERT INTO `station_details` (`stationId`, `stationName`, `adminid`) VALUES
(2, 'Adilabad', 1),
(3, 'Ahmedabad', 1),
(4, 'Agra', 1),
(5, 'Amritsar', 1),
(6, 'Akola', 1),
(7, 'Nagpur', 1),
(8, 'Bhopal', 1),
(9, 'Chandigarh', 1),
(10, 'Delhi', 1),
(11, 'Gurgaon', 1),
(12, 'Jhansi', 1),
(13, 'Nanded', 1),
(14, 'Secunderabad', 1),
(15, 'Mumbai', 1),
(16, 'Nashik', 1),
(17, 'Kanpur', 1),
(18, 'Lucknow', 1),
(19, 'Jaipur', 1),
(20, 'Pune', 1),
(22, 'Chennai', 1),
(23, 'Bangalore', 1),
(24, 'Kolkata', 1),
(25, 'Basar', 1),
(101, 'Nagasandra', 1),
(102, 'Dasaralli', 1),
(103, 'Peenya', 1),
(104, 'Rajajinagar', 1),
(105, 'Yeshwanthpur', 1),
(106, 'Majestic', 1),
(107, 'Chickpete', 1),
(108, 'lailbagh', 1),
(109, 'Jaynagar', 1),
(110, 'SkillInstitute', 1),
(111, 'Kengeri', 1),
(112, 'Rajeshwarinagar', 1),
(113, 'Mysore Road', 1),
(114, 'M G Road', 1),
(115, 'Halsur', 1),
(116, 'K R Puram', 1),
(117, 'Whitefield', 1),
(118, 'Bayappanali', 1);

-- --------------------------------------------------------

--
-- Table structure for table `train_details`
--

CREATE TABLE `train_details` (
  `trainNumber` int(11) NOT NULL,
  `trainName` varchar(50) NOT NULL,
  `stationName` varchar(50) NOT NULL,
  `startPoint` varchar(50) NOT NULL,
  `destinationPoint` varchar(50) NOT NULL,
  `arrivalTime` time NOT NULL,
  `departureTime` time NOT NULL DEFAULT '00:00:00',
  `distance` int(11) NOT NULL,
  `Fare` float NOT NULL,
  `Seats` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `train_details`
--

INSERT INTO `train_details` (`trainNumber`, `trainName`, `stationName`, `startPoint`, `destinationPoint`, `arrivalTime`, `departureTime`, `distance`, `Fare`, `Seats`) VALUES
(101, 'Banglore_Green', 'Nagasandra', 'Nagasandra', 'Dasarahalli', '10:10:00', '10:12:00', 10, 15, 500),
(102, 'Banglore_Green', 'Nagasandra', 'Nagasandra', 'peenya', '10:15:00', '10:17:00', 15, 15, 450),
(103, 'Banglore_Green', 'Nagasandra', 'Nagasandra', 'Yeshwantpur', '10:20:00', '10:22:00', 20, 20, 400),
(104, 'Banglore_Green', 'Nagasandra', 'Nagasandra', 'Rajajinagar', '10:25:00', '10:26:00', 25, 20, 350),
(105, 'Banglore_Green', 'Nagasandra', 'Nagasandra', 'majastic', '10:30:00', '10:31:00', 30, 30, 350),
(106, 'Banglore_Green', 'Nagasandra', 'Nagasandra', 'Chickpete', '10:30:00', '10:31:00', 35, 30, 300),
(107, 'Banglore_Green', 'Nagasandra', 'Nagasandra', 'Lailbagh', '10:40:00', '10:41:00', 45, 40, 300),
(108, 'Banglore_Green', 'Nagasandra', 'Nagasandra', 'Jaynagara', '10:45:00', '10:47:00', 45, 45, 200),
(109, 'Banglore_Green', 'Nagasandra', 'Nagasandra', 'Skill Insritute', '10:50:00', '10:51:00', 50, 50, 200),
(110, 'Banglore_Green', 'Dasarahalli', 'Dasarahalli', 'peenya', '10:10:00', '10:12:00', 5, 15, 400),
(111, 'Banglore_Green', 'Dasarahalli', 'Dasarahalli', 'Yeshwantpur', '10:15:00', '10:16:00', 10, 20, 400),
(112, 'Banglore_Green', 'Dasarahalli', 'Dasarahalli', 'Rajajinagar', '10:25:00', '10:26:00', 26, 20, 4000),
(113, 'Banglore_Green', 'Dasarahalli', 'Dasarahalli', 'majastic', '10:30:00', '10:31:00', 30, 25, 400),
(114, 'Banglore_Green', 'Dasarahalli', 'Dasarahalli', 'Chickpete', '10:40:00', '10:41:00', 45, 30, 300),
(115, 'Banglore_Green', 'Dasarahalli', 'Dasarahalli', 'Lailbagh', '10:50:00', '10:51:00', 56, 35, 300),
(116, 'Banglore_Green', 'Dasarahalli', 'Dasarahalli', 'Jaynagara', '10:55:00', '10:56:00', 62, 50, 300),
(117, 'Banglore_Green', 'Dasarahalli', 'Dasarahalli', 'Skill Insritute', '10:59:00', '11:01:00', 69, 50, 300),
(118, 'Banglore_Green', 'peenya', 'peenya', 'Yeshwantpur', '10:20:00', '10:21:00', 10, 10, 300),
(119, 'Banglore_Green', 'peenya', 'peenya', 'Rajajinagar', '10:25:00', '10:26:00', 15, 10, 300),
(120, 'Banglore_Green', 'peenya', 'peenya', 'majastic', '10:30:00', '10:31:00', 20, 15, 300),
(121, 'Banglore_Green', 'peenya', 'peenya', 'majastic', '10:30:00', '10:31:00', 20, 15, 300),
(122, 'Banglore_Green', 'peenya', 'peenya', 'Lailbagh', '10:40:00', '10:41:00', 30, 20, 300),
(123, 'Banglore_Green', 'peenya', 'peenya', 'Jaynagara', '10:45:00', '10:46:00', 35, 30, 300),
(124, 'Banglore_Green', 'peenya', 'peenya', 'Skill Insritute', '10:50:00', '10:51:00', 40, 30, 300),
(125, 'Banglore_Green', 'Yeshwantpur', 'Yeshwantpur', 'Rajajinagar', '10:25:00', '10:26:00', 5, 10, 350),
(126, 'Banglore_Green', 'Yeshwantpur', 'Yeshwantpur', 'majastic', '10:30:00', '10:31:00', 10, 10, 350),
(127, 'Banglore_Green', 'Yeshwantpur', 'Yeshwantpur', 'Chickpete', '10:30:00', '10:31:00', 15, 10, 300),
(128, 'Banglore_Green', 'Yeshwantpur', 'Yeshwantpur', 'Lailbagh', '10:40:00', '10:41:00', 20, 15, 300),
(129, 'Banglore_Green', 'Yeshwantpur', 'Yeshwantpur', 'Jaynagara', '10:45:00', '10:47:00', 25, 20, 200),
(130, 'Banglore_Green', 'Yeshwantpur', 'Yeshwantpur', 'Skill Insritute', '10:50:00', '10:51:00', 30, 20, 200),
(131, 'Banglore_Green', 'Rajajinagar', 'Rajajinagar', 'majastic', '10:30:00', '10:31:00', 10, 10, 350),
(132, 'Banglore_Green', 'Rajajinagar', 'Rajajinagar', 'Chickpete', '10:30:00', '10:31:00', 20, 10, 300),
(133, 'Banglore_Green', 'Rajajinagar', 'Rajajinagar', 'Lailbagh', '10:40:00', '10:41:00', 25, 15, 300),
(134, 'Banglore_Green', 'Rajajinagar', 'Rajajinagar', 'Jaynagara', '10:45:00', '10:47:00', 35, 15, 200),
(135, 'Banglore_Green', 'Rajajinagar', 'Rajajinagar', 'Skill Insritute', '10:50:00', '10:51:00', 45, 20, 200),
(136, 'Banglore_Green', 'majastic', 'majastic', 'Chickpete', '10:30:00', '10:31:00', 10, 10, 300),
(137, 'Banglore_Green', 'majastic', 'majastic', 'Lailbagh', '10:40:00', '10:41:00', 15, 10, 300),
(138, 'Banglore_Green', 'majastic', 'majastic', 'Jaynagara', '10:45:00', '10:47:00', 22, 15, 200),
(139, 'Banglore_Green', 'majastic', 'majastic', 'Skill Insritute', '10:50:00', '10:51:00', 30, 15, 200),
(140, 'Banglore_Green', 'Chickpete', 'Chickpete', 'Lailbagh', '10:40:00', '10:41:00', 15, 15, 300),
(141, 'Banglore_Green', 'Chickpete', 'Chickpete', 'Jaynagara', '10:45:00', '10:47:00', 20, 15, 200),
(142, 'Banglore_Green', 'Chickpete', 'Chickpete', 'Skill Insritute', '10:50:00', '10:51:00', 35, 20, 200),
(143, 'Banglore_Green', 'Lailbagh', 'Lailbagh', 'Jaynagara', '10:45:00', '10:47:00', 12, 10, 200),
(144, 'Banglore_Green', 'Lailbagh', 'Lailbagh', 'Skill Insritute', '10:50:00', '10:51:00', 20, 10, 200),
(145, 'Banglore_Green', 'Jaynagara', 'Jaynagara', 'Skill Insritute', '10:50:00', '10:51:00', 10, 10, 200),
(201, 'Banglore_Blue', 'Kengeri', 'Kengeri', 'RajarajeshwariNagar', '12:10:00', '12:11:00', 10, 15, 500),
(202, 'Banglore_Blue', 'Kengeri', 'Kengeri', 'MysoreRoad', '10:20:00', '10:21:00', 20, 15, 450),
(203, 'Banglore_Blue', 'Kengeri', 'Kengeri', 'majastic', '12:30:00', '12:32:00', 30, 20, 450),
(204, 'Banglore_Blue', 'Kengeri', 'Kengeri', 'Mahatma Gandhi Road', '12:40:00', '12:41:00', 45, 35, 400),
(205, 'Banglore_Blue', 'Kengeri', 'Kengeri', 'Halsuru', '12:50:00', '12:52:00', 55, 40, 400),
(206, 'Banglore_Blue', 'Kengeri', 'Kengeri', 'K R Puram', '01:00:00', '01:01:00', 60, 50, 300),
(207, 'Banglore_Blue', 'Kengeri', 'Kengeri', 'WhiltField', '01:15:00', '01:17:00', 70, 60, 250),
(208, 'Banglore_Blue', 'Kengeri', 'Kengeri', 'Baiyappanalli', '01:25:00', '01:27:00', 90, 70, 200),
(209, 'Banglore_Blue', 'RajarajeshwariNagar', 'RajarajeshwariNagar', 'MysoreRoad', '12:20:00', '12:21:00', 10, 10, 450),
(210, 'Banglore_Blue', 'RajarajeshwariNagar', 'RajarajeshwariNagar', 'majastic', '12:30:00', '12:32:00', 15, 10, 450),
(211, 'Banglore_Blue', 'RajarajeshwariNagar', 'RajarajeshwariNagar', 'Mahatma Gandhi Road', '12:40:00', '12:41:00', 20, 10, 400),
(212, 'Banglore_Blue', 'RajarajeshwariNagar', 'RajarajeshwariNagar', 'Halsuru', '12:50:00', '12:52:00', 25, 15, 400),
(213, 'Banglore_Blue', 'RajarajeshwariNagar', 'RajarajeshwariNagar', 'K R Puram', '01:00:00', '01:01:00', 32, 20, 300),
(214, 'Banglore_Blue', 'RajarajeshwariNagar', 'RajarajeshwariNagar', 'WhiltField', '01:15:00', '01:17:00', 40, 20, 250),
(215, 'Banglore_Blue', 'RajarajeshwariNagar', 'RajarajeshwariNagar', 'Baiyappanalli', '01:25:00', '01:27:00', 45, 25, 200),
(216, 'Banglore_Blue', 'MysoreRoad', 'MysoreRoad', 'majastic', '12:30:00', '12:32:00', 15, 10, 450),
(217, 'Banglore_Blue', 'MysoreRoad', 'MysoreRoad', 'Mahatma Gandhi Road', '12:40:00', '12:41:00', 20, 10, 400),
(218, 'Banglore_Blue', 'MysoreRoad', 'MysoreRoad', 'Halsuru', '12:50:00', '12:52:00', 25, 15, 400),
(219, 'Banglore_Blue', 'MysoreRoad', 'MysoreRoad', 'K R Puram', '01:00:00', '01:01:00', 32, 20, 300),
(220, 'Banglore_Blue', 'MysoreRoad', 'MysoreRoad', 'WhiltField', '01:15:00', '01:17:00', 40, 20, 250),
(221, 'Banglore_Blue', 'MysoreRoad', 'MysoreRoad', 'Baiyappanalli', '01:25:00', '01:27:00', 45, 25, 200),
(222, 'Banglore_Blue', 'majastic', 'majastic', 'Mahatma Gandhi Road', '12:40:00', '12:41:00', 10, 10, 400),
(223, 'Banglore_Blue', 'majastic', 'majastic', 'Halsuru', '12:50:00', '12:52:00', 15, 15, 400),
(224, 'Banglore_Blue', 'majastic', 'majastic', 'K R Puram', '01:00:00', '01:01:00', 22, 20, 300),
(225, 'Banglore_Blue', 'majastic', 'majastic', 'WhiltField', '01:15:00', '01:17:00', 30, 20, 250),
(226, 'Banglore_Blue', 'majastic', 'majastic', 'Baiyappanalli', '01:25:00', '01:27:00', 35, 25, 200),
(227, 'Banglore_Blue', 'Mahatma Gandhi Road', 'Mahatma Gandhi Road', 'Halsuru', '12:50:00', '12:52:00', 10, 10, 400),
(228, 'Banglore_Blue', ' Mahatma Gandhi Road', 'Mahatma Gandhi Road', 'K R Puram', '01:00:00', '01:01:00', 15, 10, 300),
(229, 'Banglore_Blue', 'Mahatma Gandhi Road', 'Mahatma Gandhi Road', 'WhiltField', '01:15:00', '01:17:00', 20, 10, 250),
(230, 'Banglore_Blue', 'Mahatma Gandhi Road', 'Mahatma Gandhi Road', 'Baiyappanalli', '01:25:00', '01:27:00', 30, 15, 200),
(231, 'Banglore_Blue', ' Halsuru', 'Halsuru', 'K R Puram', '01:00:00', '01:01:00', 10, 10, 300),
(232, 'Banglore_Blue', 'Halsuru', 'Halsuru', 'WhiltField', '01:15:00', '01:17:00', 15, 10, 250),
(234, 'Banglore_Blue', 'Halsuru', 'Halsuru', 'Baiyappanalli', '01:25:00', '01:27:00', 20, 15, 200),
(235, 'Banglore_Blue', 'K R Puram', 'K R Puram', 'WhiltField', '01:15:00', '01:17:00', 5, 10, 250),
(236, 'Banglore_Blue', 'K R Puram', 'K R Puram', 'Baiyappanalli', '01:25:00', '01:27:00', 15, 15, 200),
(237, 'Banglore_Blue', 'WhiltField', 'WhiltField', 'Baiyappanalli', '01:25:00', '01:27:00', 10, 10, 200);

-- --------------------------------------------------------

--
-- Table structure for table `users_details`
--

CREATE TABLE `users_details` (
  `userId` int(11) NOT NULL,
  `userFname` varchar(200) NOT NULL,
  `userLname` varchar(200) NOT NULL,
  `userPhone` varchar(200) NOT NULL,
  `userUname` varchar(200) NOT NULL,
  `userEmail` varchar(200) NOT NULL,
  `userPwd` varchar(200) NOT NULL,
  `userAddr` varchar(200) NOT NULL,
  `userBday` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_details`
--

INSERT INTO `users_details` (`userId`, `userFname`, `userLname`, `userPhone`, `userUname`, `userEmail`, `userPwd`, `userAddr`, `userBday`) VALUES
(3, 'Samapd', 'CG', '32432434', 'name', 'sampad@gmail.com', '1234567', '1234567', ''),
(4, 'Nilesh', 'Shetty', '9110220375', 'nilesh', 'nilesh@gmail.com', 'nilesh', 'Manglore', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`adminId`),
  ADD UNIQUE KEY `unique_admin_adminUname` (`adminUname`);

--
-- Indexes for table `passenger_details`
--
ALTER TABLE `passenger_details`
  ADD PRIMARY KEY (`passengerId`),
  ADD KEY `passenger_details_foreign_key_1` (`pnrNumber`);

--
-- Indexes for table `reservation_details`
--
ALTER TABLE `reservation_details`
  ADD PRIMARY KEY (`pnrNumber`),
  ADD KEY `reservation_details_foreign_key_1` (`trainNumber`),
  ADD KEY `reservation_details_foreign_key_4` (`userId`);

--
-- Indexes for table `train_details`
--
ALTER TABLE `train_details`
  ADD PRIMARY KEY (`trainNumber`);

--
-- Indexes for table `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `passenger_details`
--
ALTER TABLE `passenger_details`
  MODIFY `passengerId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `reservation_details`
--
ALTER TABLE `reservation_details`
  MODIFY `pnrNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `train_details`
--
ALTER TABLE `train_details`
  MODIFY `trainNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21122;

--
-- AUTO_INCREMENT for table `users_details`
--
ALTER TABLE `users_details`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
