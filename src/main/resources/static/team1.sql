-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 04, 2017 at 11:48 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `team1`
--

-- --------------------------------------------------------

--
-- Table structure for table `Application`
--

CREATE TABLE `Application` (
  `Status` varchar(10) NOT NULL,
  `Nominator_id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `reviewer_id` int(11) DEFAULT NULL,
  `personal_statement_id` int(11) DEFAULT NULL,
  `recommendation_letter_id` int(11) DEFAULT NULL,
  `resume_id` int(11) DEFAULT NULL,
  `transcript_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `application_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Document`
--

CREATE TABLE `Document` (
  `Doc_id` int(11) NOT NULL,
  `Doc_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Person`
--

CREATE TABLE `Person` (
  `Person_ID` int(11) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `F_Name` varchar(20) DEFAULT NULL,
  `L_Name` varchar(30) DEFAULT NULL,
  `Email` varchar(10) NOT NULL,
  `Type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Application`
--
ALTER TABLE `Application`
  ADD PRIMARY KEY (`application_id`),
  ADD KEY `Nominator_id` (`Nominator_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `reviewer_id` (`reviewer_id`),
  ADD KEY `personal_statement_id` (`personal_statement_id`),
  ADD KEY `recommendation_letter_id` (`recommendation_letter_id`),
  ADD KEY `transcript_id` (`transcript_id`),
  ADD KEY `resume_id` (`resume_id`);

--
-- Indexes for table `Document`
--
ALTER TABLE `Document`
  ADD PRIMARY KEY (`Doc_id`);

--
-- Indexes for table `Person`
--
ALTER TABLE `Person`
  ADD PRIMARY KEY (`Person_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Application`
--
ALTER TABLE `Application`
  ADD CONSTRAINT `Application_ibfk_1` FOREIGN KEY (`Nominator_id`) REFERENCES `Person` (`Person_ID`),
  ADD CONSTRAINT `Application_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `Person` (`Person_ID`),
  ADD CONSTRAINT `Application_ibfk_3` FOREIGN KEY (`reviewer_id`) REFERENCES `Person` (`Person_ID`),
  ADD CONSTRAINT `Application_ibfk_4` FOREIGN KEY (`personal_statement_id`) REFERENCES `Document` (`Doc_id`),
  ADD CONSTRAINT `Application_ibfk_5` FOREIGN KEY (`recommendation_letter_id`) REFERENCES `Document` (`Doc_id`),
  ADD CONSTRAINT `Application_ibfk_6` FOREIGN KEY (`transcript_id`) REFERENCES `Document` (`Doc_id`),
  ADD CONSTRAINT `Application_ibfk_7` FOREIGN KEY (`resume_id`) REFERENCES `Document` (`Doc_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
