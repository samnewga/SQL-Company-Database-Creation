-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2018 at 07:45 PM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `samnewga_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Employee`
--

CREATE TABLE `Employee` (
  `employeeID` int(11) NOT NULL,
  `Fname` varchar(50) NOT NULL DEFAULT '0',
  `Lname` varchar(50) NOT NULL DEFAULT '0',
  `typeID` int(11) NOT NULL,
  `payID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Employee`
--

INSERT INTO `Employee` (`employeeID`, `Fname`, `Lname`, `typeID`, `payID`) VALUES
(1, 'Cam', 'Grete', 1, 1),
(2, 'Awstin', 'Johanna', 2, 2),
(3, 'Imam', 'Jepson', 3, 3),
(4, 'Wilma', 'Aruna', 4, 1),
(5, 'Demetra', 'Valerian', 1, 2),
(6, 'Felice', 'Fred', 2, 3),
(7, 'Pola', 'Euripides', 3, 1),
(8, 'Selene', 'Mubin', 4, 2),
(9, 'Pavel', 'Volodymyr', 1, 3),
(10, 'Roopertti', 'Arienne', 2, 1),
(11, 'Trista', 'Ramachandra', 3, 2),
(12, 'Hachiro', 'Upasana', 4, 3),
(13, 'Caecilia', 'Jorrit', 1, 1),
(14, 'Conleth', 'Isaija', 2, 2),
(15, 'Adrien', 'Okropir', 3, 3),
(16, 'Ramiro', 'Alemayehu', 4, 1),
(17, 'Stefans', 'Nona', 1, 2),
(18, 'Jason', 'Nasimiyu', 2, 3),
(19, 'Seneca', 'Pregrine', 3, 1),
(20, 'Konul', 'Calanthia', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `EmployeeType`
--

CREATE TABLE `EmployeeType` (
  `typeID` int(11) NOT NULL,
  `employeeType` varchar(50) NOT NULL DEFAULT '0',
  `description` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `EmployeeType`
--

INSERT INTO `EmployeeType` (`typeID`, `employeeType`, `description`) VALUES
(1, 'Game Programmer', 'Responsibilities'),
(2, 'Game Artist', 'Responsibilities'),
(3, 'Producer', 'Responsibilities'),
(4, 'Tester', 'Responsibilities');

-- --------------------------------------------------------

--
-- Table structure for table `GameCompany`
--

CREATE TABLE `GameCompany` (
  `projectID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `GameCompany`
--

INSERT INTO `GameCompany` (`projectID`) VALUES
(1),
(2),
(3),
(4),
(5);

-- --------------------------------------------------------

--
-- Table structure for table `PayType`
--

CREATE TABLE `PayType` (
  `payID` int(11) NOT NULL,
  `description` varchar(50) NOT NULL DEFAULT '0',
  `amount` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `PayType`
--

INSERT INTO `PayType` (`payID`, `description`, `amount`) VALUES
(1, 'Salary', '100,000'),
(2, 'Hourly', '80,000'),
(3, 'Contract', '130,000');

-- --------------------------------------------------------

--
-- Table structure for table `Project`
--

CREATE TABLE `Project` (
  `projectID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `releaseDate` date NOT NULL,
  `stateID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Project`
--

INSERT INTO `Project` (`projectID`, `name`, `releaseDate`, `stateID`) VALUES
(1, 'Lost Ark', '2019-01-01', 3),
(2, 'Wolcen', '2019-02-02', 1),
(3, 'Torchlight Frontiers', '2019-03-03', 1),
(4, 'Ashes of Creation', '2019-04-04', 2),
(5, 'Crowfall', '2019-05-04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `State`
--

CREATE TABLE `State` (
  `stateID` int(11) NOT NULL,
  `description` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `State`
--

INSERT INTO `State` (`stateID`, `description`) VALUES
(1, 'Alpha'),
(2, 'Beta'),
(3, 'Release');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Employee`
--
ALTER TABLE `Employee`
  ADD PRIMARY KEY (`employeeID`),
  ADD KEY `typeID` (`typeID`),
  ADD KEY `payID` (`payID`);

--
-- Indexes for table `EmployeeType`
--
ALTER TABLE `EmployeeType`
  ADD PRIMARY KEY (`typeID`);

--
-- Indexes for table `GameCompany`
--
ALTER TABLE `GameCompany`
  ADD KEY `projectID` (`projectID`);

--
-- Indexes for table `PayType`
--
ALTER TABLE `PayType`
  ADD PRIMARY KEY (`payID`);

--
-- Indexes for table `Project`
--
ALTER TABLE `Project`
  ADD PRIMARY KEY (`projectID`),
  ADD KEY `stateID` (`stateID`);

--
-- Indexes for table `State`
--
ALTER TABLE `State`
  ADD PRIMARY KEY (`stateID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Employee`
--
ALTER TABLE `Employee`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `EmployeeType`
--
ALTER TABLE `EmployeeType`
  MODIFY `typeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `PayType`
--
ALTER TABLE `PayType`
  MODIFY `payID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Project`
--
ALTER TABLE `Project`
  MODIFY `projectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `State`
--
ALTER TABLE `State`
  MODIFY `stateID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Employee`
--
ALTER TABLE `Employee`
  ADD CONSTRAINT `payID` FOREIGN KEY (`payID`) REFERENCES `PayType` (`payID`),
  ADD CONSTRAINT `typeID` FOREIGN KEY (`typeID`) REFERENCES `EmployeeType` (`typeID`);

--
-- Constraints for table `GameCompany`
--
ALTER TABLE `GameCompany`
  ADD CONSTRAINT `projectID` FOREIGN KEY (`projectID`) REFERENCES `Project` (`projectID`);

--
-- Constraints for table `Project`
--
ALTER TABLE `Project`
  ADD CONSTRAINT `stateID` FOREIGN KEY (`stateID`) REFERENCES `State` (`stateID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
