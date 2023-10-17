-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2023 at 05:12 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `remsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `ID` int(10) NOT NULL,
  `CountryID` int(5) DEFAULT NULL,
  `StateID` int(5) NOT NULL,
  `CityName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`ID`, `CountryID`, `StateID`, `CityName`, `EnterDate`) VALUES
(1, 1, 1, 'Kolkata', '2023-10-16 09:37:04'),
(4, 1, 2, 'Mumbai', '2023-10-16 10:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `tblcountry`
--

CREATE TABLE `tblcountry` (
  `ID` int(10) NOT NULL,
  `CountryName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcountry`
--

INSERT INTO `tblcountry` (`ID`, `CountryName`, `EnterDate`) VALUES
(1, 'India', '2023-10-16 09:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `ID` int(11) NOT NULL,
  `PropertyID` int(10) NOT NULL,
  `FullName` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `MobileNumber` bigint(10) NOT NULL,
  `Message` mediumtext NOT NULL,
  `EnquiryNumber` varchar(200) NOT NULL,
  `EnquiryDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(10) DEFAULT NULL,
  `Remark` varchar(200) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `PropertyID`, `FullName`, `Email`, `MobileNumber`, `Message`, `EnquiryNumber`, `EnquiryDate`, `Status`, `Remark`, `RemarkDate`) VALUES
(6, 12, 'user1', 'user1@gmail.com', 1234, 'interested', '728705012', '2023-10-17 15:10:21', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `PropertyId` int(11) NOT NULL,
  `UserRemark` mediumtext NOT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Is_Publish` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfeedback`
--

INSERT INTO `tblfeedback` (`id`, `UserId`, `PropertyId`, `UserRemark`, `PostingDate`, `Is_Publish`) VALUES
(1, 3, 1, 'This review is for testing.', '2019-09-20 19:15:03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', 'DBMS Project', 'dummy@gmail.com', 111, '2023-10-16 08:02:21'),
(2, 'contactus', 'Contact Us', 'dummy address,<div>dummy pincode</div>', 'dummy@gmail.com', 111, '2023-10-16 07:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `tblproperty`
--

CREATE TABLE `tblproperty` (
  `ID` int(10) NOT NULL,
  `UserID` char(20) DEFAULT NULL,
  `PropertyTitle` mediumtext DEFAULT NULL,
  `PropertDescription` mediumtext DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `Location` varchar(200) DEFAULT NULL,
  `Bedrooms` varchar(200) DEFAULT NULL,
  `Bathrooms` varchar(200) DEFAULT NULL,
  `Floors` varchar(200) DEFAULT NULL,
  `Garages` varchar(200) DEFAULT NULL,
  `Area` varchar(50) DEFAULT NULL,
  `Size` varchar(50) DEFAULT NULL,
  `RentorsalePrice` varchar(120) DEFAULT NULL,
  `BeforePricelabel` varchar(120) DEFAULT NULL,
  `AfterPricelabel` varchar(120) DEFAULT NULL,
  `PropertyID` varchar(120) DEFAULT NULL,
  `CenterCooling` int(4) DEFAULT NULL,
  `Balcony` int(4) DEFAULT NULL,
  `PetFriendly` int(4) DEFAULT NULL,
  `Barbeque` int(4) DEFAULT NULL,
  `FireAlarm` int(4) DEFAULT NULL,
  `ModernKitchen` int(4) DEFAULT NULL,
  `Storage` int(4) DEFAULT NULL,
  `Dryer` int(4) DEFAULT NULL,
  `Heating` int(4) DEFAULT NULL,
  `Pool` int(4) DEFAULT NULL,
  `Laundry` int(4) DEFAULT NULL,
  `Sauna` int(4) DEFAULT NULL,
  `Gym` int(4) DEFAULT NULL,
  `Elevator` int(4) DEFAULT NULL,
  `DishWasher` int(4) DEFAULT NULL,
  `EmergencyExit` int(4) DEFAULT NULL,
  `FeaturedImage` varchar(200) DEFAULT NULL,
  `GalleryImage1` varchar(200) DEFAULT NULL,
  `GalleryImage2` varchar(200) DEFAULT NULL,
  `GalleryImage3` varchar(200) DEFAULT NULL,
  `GalleryImage4` varchar(200) DEFAULT NULL,
  `GalleryImage5` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Country` varchar(200) DEFAULT NULL,
  `City` varchar(220) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `ZipCode` varchar(200) DEFAULT NULL,
  `Neighborhood` varchar(200) DEFAULT NULL,
  `ListingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblproperty`
--

INSERT INTO `tblproperty` (`ID`, `UserID`, `PropertyTitle`, `PropertDescription`, `Type`, `Status`, `Location`, `Bedrooms`, `Bathrooms`, `Floors`, `Garages`, `Area`, `Size`, `RentorsalePrice`, `BeforePricelabel`, `AfterPricelabel`, `PropertyID`, `CenterCooling`, `Balcony`, `PetFriendly`, `Barbeque`, `FireAlarm`, `ModernKitchen`, `Storage`, `Dryer`, `Heating`, `Pool`, `Laundry`, `Sauna`, `Gym`, `Elevator`, `DishWasher`, `EmergencyExit`, `FeaturedImage`, `GalleryImage1`, `GalleryImage2`, `GalleryImage3`, `GalleryImage4`, `GalleryImage5`, `Address`, `Country`, `City`, `State`, `ZipCode`, `Neighborhood`, `ListingDate`) VALUES
(6, '7', 'House', '3bhk;2 storey', 'Houses', 'Sale', 'kolkata', '3', '2', '2', '1', '1000', '1000', '450000', '', '', '370506127', 1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'f3ccdd27d2000e3f9255a7e3e2c488001697451767.jpg', '156005c5baf40ff51a327f1c34f2975b1697451767.jpg', '799bad5a3b514f096e69bbc4a7896cd91697451767.jpg', 'd0096ec6c83575373e3a21d129ff8fef1697451767.jpg', '032b2cc936860b03048302d991c3498f1697451767.jpg', '18e2999891374a475d0687ca9f989d831697451767.jpg', '111/11 Kolkata', '1', 'Kolkata', '1', '700011', 'abc', '2023-10-16 10:22:47'),
(7, '7', '4 bhk Flat', 'Good condition', 'Apartments', 'Rent', 'mumbai', '4', '2', '4', '1', '1000', '', '10000000', '', '', '510438873', 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, '182845aceb39c9e413e28fd549058cf81697525218jpeg', 'c60b09dbe217df981541e4009f54382b1697525218jpeg', 'e771bd36ad49b4be2f95d4941f59c4e41697525218jpeg', '831bc384fd96f499007ceb2911a2474e1697525218jpeg', '831bc384fd96f499007ceb2911a2474e1697525218jpeg', 'aabb5414616e8a2e5eff571548319bfe1697525218jpeg', '4, Raghuraj Bhavan, Gakhale Rd, Dadar(w)', '1', 'Mumbai', '2', '400028', '', '2023-10-17 06:46:58'),
(8, '7', 'House', 'Newly Built', 'Houses', 'Sale', 'mumbai', '5', '3', '3', '4', '12000', '', '700000', '', '', '916817330', 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 0, 1, 1, 1, 'c57de7ffb63a04971dc3a933cf2f080d1697525393jpeg', 'c60b09dbe217df981541e4009f54382b1697525393jpeg', '084a147511f7bd3c7c5aaba6167e87071697525393jpeg', 'a17279cd3603134ed3323ff514a0ffdb1697525393jpeg', '846092571f97f7c0e96098e1fee1f8211697525393jpeg', '71e869d6765c48a84b8738ed82331e891697525393jpeg', '605, H Patel Nagar, M G X Road-2, Kandivli(w)', '1', 'Mumbai', '2', '400067', '', '2023-10-17 06:49:53'),
(9, '7', '3 bhk Flat', '', 'Apartments', 'Rent', 'kolkata', '3', '2', '4', '1', '900', '', '800000', '', '', '341761632', 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, '83b5009e040969ee7b60362ad74265731697525765jpeg', '4783f59189098e23136435b6cae66b071697525765jpeg', '846092571f97f7c0e96098e1fee1f8211697525765jpeg', '853117339a184d64d6c7468ab910dca51697525765jpeg', 'aabb5414616e8a2e5eff571548319bfe1697525765jpeg', '71e869d6765c48a84b8738ed82331e891697525765jpeg', '17, Park St, Taltala', '1', 'Kolkata', '1', '700016', '', '2023-10-17 06:56:05'),
(10, '7', 'House', 'Repairs needed', 'Houses', 'Sale', 'mumbai', '3', '3', '5', '5', '20000', '', '50000000', '', '', '125389207', 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'f272d46e2f41086b312722f1d557a1901697526019jpeg', '4783f59189098e23136435b6cae66b071697526019jpeg', '2454e6bbbf75457df315893476d5cb411697526019jpeg', '084a147511f7bd3c7c5aaba6167e87071697526019jpeg', '54fad5dbc96eb76c5d2c83012bd661911697526019jpeg', '71e869d6765c48a84b8738ed82331e891697526019jpeg', '16/17 Indraprasth, Opp Vasai Janta Bank St Depot Rd, Sopara', '1', 'Mumbai', '2', '401203', '', '2023-10-17 07:00:19'),
(11, '7', '2 storey house', 'Good condition', 'Houses', 'Rent', 'kolkata', '3', '2', '2', '1', '900', '', '30000', '', '', '158005464', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'f3ccdd27d2000e3f9255a7e3e2c488001697526754.jpg', '156005c5baf40ff51a327f1c34f2975b1697526754.jpg', '799bad5a3b514f096e69bbc4a7896cd91697526754.jpg', 'd0096ec6c83575373e3a21d129ff8fef1697526754.jpg', '032b2cc936860b03048302d991c3498f1697526754.jpg', '18e2999891374a475d0687ca9f989d831697526754.jpg', '5/2/L, Panditiya Rd, Dover Terrace, Ballygunge', '1', 'Kolkata', '1', ' 700029', '', '2023-10-17 07:12:34'),
(12, '7', 'House ', 'demo', 'Houses', 'Rent', 'kolkata', '6', '3', '2', '2', '1200', '', '5000000', '', '', '724694870', 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 'f3ccdd27d2000e3f9255a7e3e2c488001697555370.jpg', '156005c5baf40ff51a327f1c34f2975b1697555370.jpg', '799bad5a3b514f096e69bbc4a7896cd91697555370.jpg', 'd0096ec6c83575373e3a21d129ff8fef1697555370.jpg', '032b2cc936860b03048302d991c3498f1697555370.jpg', '18e2999891374a475d0687ca9f989d831697555370.jpg', 'demo address', '1', 'Kolkata', '1', '700001', '', '2023-10-17 15:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblpropertytype`
--

CREATE TABLE `tblpropertytype` (
  `ID` int(10) NOT NULL,
  `PropertType` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpropertytype`
--

INSERT INTO `tblpropertytype` (`ID`, `PropertType`, `EnterDate`) VALUES
(1, 'Apartments', '2019-08-06 06:31:56'),
(2, 'Houses', '2019-08-06 06:32:20'),
(3, 'Offices', '2019-08-06 06:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

CREATE TABLE `tblstate` (
  `ID` int(10) NOT NULL,
  `CountryID` int(5) DEFAULT NULL,
  `StateName` varchar(120) DEFAULT NULL,
  `EnterDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`ID`, `CountryID`, `StateName`, `EnterDate`) VALUES
(1, 1, 'West Bengal', '2023-10-16 09:36:46'),
(2, 1, 'Maharashtra', '2023-10-16 10:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `UserType` int(5) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Aboutme` mediumtext NOT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `UserType`, `PostingDate`, `Aboutme`, `UpdationDate`) VALUES
(6, 'user1', 'user1@gmail.com', 1234, '24c9e15e52afc47c225b757e7bee1f9d', 3, '2023-10-16 07:03:13', '', '0000-00-00 00:00:00'),
(7, 'broker1', 'broker1@gmail.com', 123, 'ecb8d44f1bb507250d73a0f8a84cadcf', 1, '2023-10-16 07:20:38', '', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcountry`
--
ALTER TABLE `tblcountry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblproperty`
--
ALTER TABLE `tblproperty`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpropertytype`
--
ALTER TABLE `tblpropertytype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstate`
--
ALTER TABLE `tblstate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcity`
--
ALTER TABLE `tblcity`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcountry`
--
ALTER TABLE `tblcountry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblproperty`
--
ALTER TABLE `tblproperty`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpropertytype`
--
ALTER TABLE `tblpropertytype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstate`
--
ALTER TABLE `tblstate`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
