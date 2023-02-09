-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2022 at 04:10 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newiitresourcemanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `accepteditemrequest`
--

CREATE TABLE `accepteditemrequest` (
  `id` int(10) UNSIGNED NOT NULL,
  `TeacherName` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `acceptingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `acceptedrequisition`
--

CREATE TABLE `acceptedrequisition` (
  `id` int(10) UNSIGNED NOT NULL,
  `TeacherName` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `acceptingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ItemName` varchar(255) DEFAULT NULL,
  `feedback` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acceptedrequisition`
--

INSERT INTO `acceptedrequisition` (`id`, `TeacherName`, `description`, `amount`, `acceptingDate`, `ItemName`, `feedback`) VALUES
(1, 'Nazmun Nahar', 'hbjhbjhb', NULL, '2022-09-22 00:18:14', 'Pc', 'this was good'),
(3, 'Nazmun Nahar', 'hvjgv', NULL, '2022-09-22 02:04:21', 'pc', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(10) UNSIGNED NOT NULL,
  `FileName` varchar(255) DEFAULT NULL,
  `FileLocation` varchar(255) DEFAULT NULL,
  `FileCategory` varchar(255) DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `FileName`, `FileLocation`, `FileCategory`, `Date`) VALUES
(1, 'notice', 'administration', 'administration', '2022-09-21 23:18:14');

-- --------------------------------------------------------

--
-- Table structure for table `itemrequest`
--

CREATE TABLE `itemrequest` (
  `id` int(10) UNSIGNED NOT NULL,
  `teacherName` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `itemRequeststatus` varchar(10) DEFAULT 'pending',
  `dateColumn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `itemrequest`
--

INSERT INTO `itemrequest` (`id`, `teacherName`, `description`, `amount`, `itemRequeststatus`, `dateColumn`) VALUES
(1, 'Nazmun Nahar', 'tissue box', '2', 'Accepted', '2022-09-22 00:04:38'),
(2, 'Nazmun Nahar', 'tissue box', '2', 'Stock out', '2022-09-22 00:04:41'),
(3, 'Nazmun Nahar', 'tissue box', '2', 'Accepted', '2022-09-22 00:04:35'),
(4, 'Nazmun Nahar', 'marker', '2', 'Accepted', '2022-09-22 01:06:44'),
(5, '', 'marker', '2', 'Accepted', '2022-09-22 02:04:10'),
(6, 'Nazmun Nahar', 'marker', '2', 'pending', '2022-09-22 01:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `pc`
--

CREATE TABLE `pc` (
  `id` int(10) UNSIGNED NOT NULL,
  `PC_Id` char(255) NOT NULL,
  `PC_status` varchar(20) DEFAULT NULL,
  `NoOfComplaints` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pc`
--

INSERT INTO `pc` (`id`, `PC_Id`, `PC_status`, `NoOfComplaints`) VALUES
(8, '25001', 'Active', 0),
(10, '25002', 'Active', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pcassignedlist`
--

CREATE TABLE `pcassignedlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `PC_Id` char(255) DEFAULT NULL,
  `Assigned_roll` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pcassignedlist`
--

INSERT INTO `pcassignedlist` (`id`, `PC_Id`, `Assigned_roll`) VALUES
(1, '25001', 'ash1825011m, ash1925012m'),
(2, '25002', 'ash1825012m, ash1925011m');

-- --------------------------------------------------------

--
-- Table structure for table `placecomplaint`
--

CREATE TABLE `placecomplaint` (
  `Complaint_No` int(10) UNSIGNED NOT NULL,
  `Academic_Roll` varchar(255) DEFAULT NULL,
  `PC_Id` char(255) NOT NULL,
  `Description` varchar(300) DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `complaintStatus` varchar(255) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `placecomplaint`
--

INSERT INTO `placecomplaint` (`Complaint_No`, `Academic_Roll`, `PC_Id`, `Description`, `Date`, `complaintStatus`) VALUES
(2, 'ash1925012m', '25001', 'mouse', '2022-09-21 23:40:52', 'rejected'),
(3, 'ash1925012m', '25001', 'mouse', '2022-09-21 23:40:52', 'rejected'),
(10, 'ash1925012m', '25001', 'k;khkhhj', '2022-09-21 23:52:48', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `requisition`
--

CREATE TABLE `requisition` (
  `id` int(10) UNSIGNED NOT NULL,
  `TeacherName` varchar(255) DEFAULT NULL,
  `ItemName` varchar(255) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `RequisitionStatus` varchar(1000) DEFAULT NULL,
  `date_of_commencement` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requisition`
--

INSERT INTO `requisition` (`id`, `TeacherName`, `ItemName`, `description`, `RequisitionStatus`, `date_of_commencement`) VALUES
(2, 'Nazmun Nahar', 'pc', 'ggvhgvh', 'Rejected', '2022-09-22 00:10:48'),
(4, 'Nazmun Nahar', 'Pc', 'dwedqwed', 'Rejected', '2022-09-22 02:04:25'),
(5, 'Nazmun Nahar', 'pc', 'i need', 'waiting for approval of The Director', '2022-09-22 01:52:20');

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `id` int(10) UNSIGNED NOT NULL,
  `ItemCategory` varchar(255) DEFAULT NULL,
  `ItemName` varchar(255) DEFAULT NULL,
  `amount` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`id`, `ItemCategory`, `ItemName`, `amount`) VALUES
(1, 'stationary', 'pen', 0),
(2, 'stationary', 'a4 paper', 0),
(3, 'personal', 'tissue box', 6),
(7, 'ElectricOrElectronic', 'bulb', 10),
(8, 'furniture', 'chair', 0),
(9, 'stationary', 'marker', 6),
(10, 'lab', 'Pc', 10),
(12, 'personal', 'air freshner', 0);

-- --------------------------------------------------------

--
-- Table structure for table `solvedcomplaints`
--

CREATE TABLE `solvedcomplaints` (
  `id` int(10) UNSIGNED NOT NULL,
  `Complaint_no` int(10) UNSIGNED NOT NULL,
  `Academic_Roll` varchar(255) DEFAULT NULL,
  `PC_Id` varchar(255) DEFAULT NULL,
  `Description` varchar(300) DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `solvedcomplaints`
--

INSERT INTO `solvedcomplaints` (`id`, `Complaint_no`, `Academic_Roll`, `PC_Id`, `Description`, `Date`) VALUES
(1, 7, 'ash1925012m', '25001', 'newone', '2022-09-21 23:47:15'),
(2, 8, 'ash1925012m', '25001', 'new', '2022-09-21 23:51:06'),
(3, 6, 'ash1925012m', '25001', 'newone', '2022-09-21 23:51:38'),
(4, 9, 'ash1925012m', '25001', 'nwe', '2022-09-21 23:52:18'),
(5, 11, 'ash1925012m', '25001', 'newtest', '2022-09-22 00:26:43'),
(6, 12, 'ash1925011m', '25002', 'qsdqdwqd', '2022-09-22 02:07:48');

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Designation` varchar(255) DEFAULT NULL,
  `Academic_Roll` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `userPassword` varchar(255) DEFAULT NULL,
  `userStatus` varchar(255) DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`id`, `Name`, `Designation`, `Academic_Roll`, `Email`, `userPassword`, `userStatus`) VALUES
(6, NULL, 'Director', NULL, 'joybhowmik173@gmail.com', '123456', 'approved'),
(8, NULL, 'Office Assistant', NULL, 'joybhowmik6@gmail.com', '123456', 'approved'),
(10, 'joy bhowmik', NULL, 'ash1925012m', 'joybhowmik67@gmail.com', '123456', 'approved'),
(14, 'Nazmun Nahar', 'Lecturer', NULL, 'Nazmun@gmail.com', '123456', 'approved'),
(17, 'Nazmun Nahar', 'Lecturer', NULL, 'Nazmun2@gmail.com', '123456', 'approved'),
(18, NULL, 'Lab Assistant', NULL, 'joybhowmik7@gmail.com', '123456', 'approved'),
(19, 'joy bhowmik', NULL, 'ash1925011m', 'joybhowmik@gmail.com', '123456', 'approved'),
(20, 'joy bhowmik', NULL, 'ash1825012m', 'joybhowmik18@gmail.com', '123456', 'approved'),
(21, 'joy bhowmik', NULL, 'ash1825011m', 'joybhowmik11@gmail.com', '123456', 'approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accepteditemrequest`
--
ALTER TABLE `accepteditemrequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acceptedrequisition`
--
ALTER TABLE `acceptedrequisition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `itemrequest`
--
ALTER TABLE `itemrequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc`
--
ALTER TABLE `pc`
  ADD PRIMARY KEY (`id`,`PC_Id`),
  ADD UNIQUE KEY `PC_Id` (`PC_Id`),
  ADD UNIQUE KEY `PC_Id_2` (`PC_Id`);

--
-- Indexes for table `pcassignedlist`
--
ALTER TABLE `pcassignedlist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `PC_Id` (`PC_Id`);

--
-- Indexes for table `placecomplaint`
--
ALTER TABLE `placecomplaint`
  ADD PRIMARY KEY (`Complaint_No`),
  ADD KEY `Academic_Roll` (`Academic_Roll`);

--
-- Indexes for table `requisition`
--
ALTER TABLE `requisition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ItemName` (`ItemName`);

--
-- Indexes for table `solvedcomplaints`
--
ALTER TABLE `solvedcomplaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Academic_Roll` (`Academic_Roll`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Academic_Roll` (`Academic_Roll`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accepteditemrequest`
--
ALTER TABLE `accepteditemrequest`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `acceptedrequisition`
--
ALTER TABLE `acceptedrequisition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `itemrequest`
--
ALTER TABLE `itemrequest`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pc`
--
ALTER TABLE `pc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pcassignedlist`
--
ALTER TABLE `pcassignedlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `placecomplaint`
--
ALTER TABLE `placecomplaint`
  MODIFY `Complaint_No` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `requisition`
--
ALTER TABLE `requisition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `solvedcomplaints`
--
ALTER TABLE `solvedcomplaints`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `usertable`
--
ALTER TABLE `usertable`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `solvedcomplaints`
--
ALTER TABLE `solvedcomplaints`
  ADD CONSTRAINT `solvedcomplaints_ibfk_1` FOREIGN KEY (`Academic_Roll`) REFERENCES `usertable` (`Academic_Roll`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
