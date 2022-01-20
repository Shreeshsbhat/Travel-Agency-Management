-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 05:35 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelagency`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `username` varchar(12) DEFAULT NULL,
  `passwd` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`username`, `passwd`) VALUES
('8277062542', 'ae720d49c33e178f052a5a305f1f011f'),
('8088169500', '1954c1a2abcff5763782de33d279ef1c'),
('6366076467', '830801256d750e37e1774dcc9ae5cef4'),
('9685741230', '872eddca098d94f365643abdf00d9898'),
('7760739274', '67beb370b1d1a2bead9e63d9b8ded992'),
('8762677928', '82c210c30fb2d4c8d73923ab5b1a7bf8'),
('9689910636', 'cc4c6b9755fe6c8d9a411958621b2327');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `Answer_Date` date NOT NULL,
  `Emp_ID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`Answer_Date`, `Emp_ID`) VALUES
('2021-06-23', 1000003),
('2021-03-11', 1000003),
('2021-06-22', 1000003),
('2021-06-24', 1000003),
('2021-06-25', 1000003);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `C_ID` int(7) NOT NULL,
  `B_ID` int(7) NOT NULL,
  `Pack_ID` int(7) NOT NULL,
  `cost` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`C_ID`, `B_ID`, `Pack_ID`, `cost`) VALUES
(1100059, 1, 3, 25000),
(1100060, 2, 2, 15000),
(1100059, 4, 2, 15000),
(1100061, 6, 3, 25000),
(1100062, 7, 4, 18000),
(1100059, 9, 3, 25000);

-- --------------------------------------------------------

--
-- Stand-in structure for view `bookings`
-- (See below for the actual view)
--
CREATE TABLE `bookings` (
`FNAME` varchar(20)
,`LNAME` varchar(20)
,`Mobile` varchar(12)
,`B_ID` int(7)
,`Package_Name` varchar(50)
,`Destination` varchar(20)
,`cost` int(6)
);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `C_ID` int(7) NOT NULL,
  `FNAME` varchar(20) NOT NULL,
  `LNAME` varchar(20) NOT NULL,
  `Mobile` varchar(12) DEFAULT NULL,
  `E_mail` varchar(32) DEFAULT NULL,
  `People` int(2) NOT NULL DEFAULT 1,
  `Vaccination` tinyint(1) NOT NULL,
  `Vac_Certificate` varchar(20) NOT NULL,
  `COVID_19_Report` varchar(20) NOT NULL,
  `Budget` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`C_ID`, `FNAME`, `LNAME`, `Mobile`, `E_mail`, `People`, `Vaccination`, `Vac_Certificate`, `COVID_19_Report`, `Budget`) VALUES
(1100058, 'SHREESH', 'BHAT', '8277062542', 'shreeshbhat@gmail.com', 1, 1, 'Yes', '0', 10000),
(1100059, 'SIRI', 'REVANT', '8088169500', 'sirirevant9@gmail.com', 1, 0, 'No', 'Negative', 15000),
(1100060, 'DHANANJAY', 'KALBURGI', '6366076467', 'dhananjayk@gmail.com', 1, 1, 'Yes', '0', 30000),
(1100061, 'SNEHIL', 'SINGH', '9685741230', 'snehilsingh@gmail.com', 1, 1, 'Yes', '0', 25000),
(1100062, 'JOEL', 'DANDIN', '7760739274', 'joeldandin@gmail.com', 1, 1, 'Yes', '0', 23000),
(1100063, 'SWARNA', 'GANGOTRI', '8762677928', 'gangotriswarna0903@gmaill.com', 1, 1, 'Yes', '0', 20000),
(1100064, 'Mihir', 'Patil', '9689910636', 'mihirmp@gmail.com', 1, 1, 'Yes', '0', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp_ID` int(7) NOT NULL,
  `FNAMAE` varchar(20) NOT NULL,
  `LNAME` varchar(20) NOT NULL,
  `Salary` int(6) NOT NULL,
  `Mobile` varchar(12) DEFAULT NULL,
  `E_Mail` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_ID`, `FNAMAE`, `LNAME`, `Salary`, `Mobile`, `E_Mail`) VALUES
(1000003, 'Shreesh', 'Bhat', 90000, '8277062542', 'shreesh.sbk@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `Emp_ID` int(7) DEFAULT NULL,
  `C_ID` int(7) DEFAULT NULL,
  `Subject` varchar(30) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT 'NO ANSWER YET'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`Emp_ID`, `C_ID`, `Subject`, `Description`, `Remark`) VALUES
(1000003, 1100059, 'Reg. Food', 'Is the food included in the package?', 'Yes, The food is included in the package'),
(1000003, 1100060, 'Reg. Hotel pool', 'Whether we would be allowed to access the pool?', 'Yes, you will be able to access the hotel pool.'),
(1000003, 1100061, 'Reg. Transport', 'Will we be picked up from our location?', 'No, You will have to come to the registration office.');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `Package_Name` varchar(50) DEFAULT NULL,
  `Package_Type` varchar(15) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `Price` int(6) NOT NULL,
  `P_ID` int(7) NOT NULL,
  `Transport_Mode` varchar(15) NOT NULL,
  `Seats` int(3) NOT NULL,
  `Vehicle_Type` varchar(20) NOT NULL,
  `Positivity_Rate` int(2) NOT NULL,
  `Reservation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`Package_Name`, `Package_Type`, `Description`, `Destination`, `Price`, `P_ID`, `Transport_Mode`, `Seats`, `Vehicle_Type`, `Positivity_Rate`, `Reservation_date`) VALUES
('Mesmerizing Murudeshwar', 'BeachPack', '5 days, 4 nights in the beautiful beach house villa, all charges included.', 'Murudeshwara', 20000, 1, 'Car', 5, 'SUV', 5, '2021-06-22'),
('Go Gokarna', 'BeachPack', '3 days, 2 nights in midst of the city of Gokarna, all charges included', 'Gokarna', 15000, 2, 'Car', 7, 'MUV', 10, '2021-09-20'),
('Gorgeous Goa', 'Beach Pack', '4 days, 3 nights at the beautiful beach, all charges included', 'Goa', 25000, 3, 'Jeep', 10, 'SUV', 8, '2021-05-01'),
('Heavenly Hampi', 'Historic', '5 days, 4 nights in the beautiful historic hampi, all charges included.', 'Hampi', 18000, 4, 'Jeep', 5, 'SUV', 5, '2021-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Reg_date` date NOT NULL,
  `C_ID` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`Reg_date`, `C_ID`) VALUES
('2021-06-22', 1100059),
('2021-03-09', 1100060),
('2021-06-23', 1100059),
('2021-06-24', 1100061);

-- --------------------------------------------------------

--
-- Table structure for table `ses`
--

CREATE TABLE `ses` (
  `s` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ses`
--

INSERT INTO `ses` (`s`) VALUES
('9689910636');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `C_ID` int(7) NOT NULL,
  `B_ID` int(7) NOT NULL,
  `TMode` varchar(15) NOT NULL DEFAULT 'Card'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`C_ID`, `B_ID`, `TMode`) VALUES
(1100059, 1, 'net'),
(1100060, 2, 'net'),
(1100059, 1, 'net'),
(1100061, 6, 'net'),
(1100062, 7, 'net'),
(1100059, 1, 'net');

-- --------------------------------------------------------

--
-- Structure for view `bookings`
--
DROP TABLE IF EXISTS `bookings`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bookings`  AS SELECT `c`.`FNAME` AS `FNAME`, `c`.`LNAME` AS `LNAME`, `c`.`Mobile` AS `Mobile`, `b`.`B_ID` AS `B_ID`, `p`.`Package_Name` AS `Package_Name`, `p`.`Destination` AS `Destination`, `b`.`cost` AS `cost` FROM ((`client` `c` join `booking` `b`) join `package` `p`) WHERE `c`.`C_ID` = `b`.`C_ID` AND `b`.`Pack_ID` = `p`.`P_ID` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD KEY `Emp_ID` (`Emp_ID`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`B_ID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`C_ID`),
  ADD UNIQUE KEY `Mobile` (`Mobile`),
  ADD UNIQUE KEY `E_mail` (`E_mail`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_ID`),
  ADD UNIQUE KEY `Mobile` (`Mobile`),
  ADD UNIQUE KEY `E_Mail` (`E_Mail`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD KEY `C_ID` (`C_ID`),
  ADD KEY `Emp_ID` (`Emp_ID`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`P_ID`),
  ADD UNIQUE KEY `Package_Name` (`Package_Name`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD KEY `C_ID` (`C_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `B_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `C_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1100065;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `Emp_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000006;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `P_ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`Emp_ID`);

--
-- Constraints for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD CONSTRAINT `enquiry_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `client` (`C_ID`),
  ADD CONSTRAINT `enquiry_ibfk_2` FOREIGN KEY (`Emp_ID`) REFERENCES `employee` (`Emp_ID`);

--
-- Constraints for table `register`
--
ALTER TABLE `register`
  ADD CONSTRAINT `register_ibfk_1` FOREIGN KEY (`C_ID`) REFERENCES `client` (`C_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
