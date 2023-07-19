-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2023 at 05:39 AM
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
-- Database: `ielts`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `CLIENT_ID` int(11) NOT NULL,
  `CLIENT_NAME` varchar(40) NOT NULL,
  `ADDRESS` varchar(60) NOT NULL,
  `ENROLLMENT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`CLIENT_ID`, `CLIENT_NAME`, `ADDRESS`, `ENROLLMENT`) VALUES
(101, 'Big Business Federation', '123 Falschungstraße, 10999 Berlin', 'NGO'),
(102, 'eCommerce GmbH', '27 Ersatz Allee, 10317 Berlin', 'Retail'),
(103, 'AutoMaker AG', '20 Künstlichstraße, 10023 Berlin', 'Auto'),
(104, 'Banko Bank', '12 Betrugstraße, 12345 Berlin', 'Banking'),
(105, 'WeMoveIt GmbH', '138 Arglistweg, 10065 Berlin', 'Logistics');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL,
  `COURSE_NAME` varchar(40) NOT NULL,
  `LANGUAGE` varchar(10) NOT NULL,
  `LEVEL` varchar(10) DEFAULT NULL,
  `COURSE_LENGTH_WEEKS` int(11) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `ENROLLMENT_TYPE` tinyint(1) DEFAULT NULL,
  `INSTRUCTOR_ID` int(11) DEFAULT NULL,
  `CLIENT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`, `LANGUAGE`, `LEVEL`, `COURSE_LENGTH_WEEKS`, `START_DATE`, `ENROLLMENT_TYPE`, `INSTRUCTOR_ID`, `CLIENT_ID`) VALUES
(12, 'English for Logistics', 'ENG', 'A1', 10, '2020-02-01', 1, 1, 105),
(13, 'Beginner English', 'ENG', 'A2', 40, '2019-11-12', 0, 6, 101),
(14, 'Intermediate English', 'ENG', 'B2', 40, '2019-11-12', 0, 6, 101),
(15, 'Advanced English', 'ENG', 'C1', 40, '2019-11-12', 0, 6, 101),
(16, 'Mandarin für Autoindustrie', 'MAN', 'B1', 15, '2020-01-15', 1, 3, 103),
(17, 'Français intermédiaire', 'FRA', 'B1', 18, '2020-04-03', 0, 2, 101),
(18, 'Deutsch für Anfänger', 'DEU', 'A2', 8, '2020-02-14', 1, 4, 102),
(19, 'Intermediate English', 'ENG', 'B2', 10, '2020-03-29', 0, 1, 104),
(20, 'Fortgeschrittenes Russisch', 'RUS', 'C1', 4, '2020-04-08', 0, 5, 103);

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `INSTRUCTOR_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(40) NOT NULL,
  `LAST_NAME` varchar(40) NOT NULL,
  `LANGUAGE_1` varchar(10) NOT NULL,
  `LANGUAGE_2` varchar(10) NOT NULL,
  `DOB` date DEFAULT NULL,
  `TAX_ID` int(11) DEFAULT NULL,
  `PHONE_NO` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`INSTRUCTOR_ID`, `FIRST_NAME`, `LAST_NAME`, `LANGUAGE_1`, `LANGUAGE_2`, `DOB`, `TAX_ID`, `PHONE_NO`) VALUES
(1, 'James', 'Smith', 'ENG', 'FRA', '1985-04-20', 12345, '+491774553676'),
(2, 'James', 'Smith', 'ENG', 'FRA', '1985-04-20', 12545, '+491774553676'),
(3, 'Stefanie', 'Martin', 'FRA', 'ENG', '1970-02-17', 23456, '+491234567890'),
(4, 'Steve', 'Wang', 'MAN', 'ENG', '1990-11-12', 34567, '+447840921333'),
(5, 'Friederike', 'Müller-Rossi', 'DEU', 'ITA', '1987-07-07', 45678, '+492345678901'),
(6, 'Isobel', 'Ivanova', 'RUS', 'ENG', '1963-05-30', 56789, '+491772635467'),
(7, 'Niamh', 'Murphy', 'ENG', 'IRI', '1995-09-08', 67890, '+491231231232');

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `PARTICIPANT_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(40) NOT NULL,
  `LAST_NAME` varchar(40) NOT NULL,
  `PHONE_NO` varchar(20) DEFAULT NULL,
  `CLIENT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`PARTICIPANT_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NO`, `CLIENT_ID`) VALUES
(101, 'Marina', 'Berg', '491635558182', 101),
(102, 'Andrea', 'Duerr', '49159555740', 101),
(103, 'Philipp', 'Probst', '49155555692', 102),
(104, 'René', 'Brandt', '4916355546', 102),
(105, 'Susanne', 'Shuster', '49155555779', 102),
(106, 'Christian', 'Schreiner', '49162555375', 101),
(107, 'Harry', 'Kim', '49177555633', 101),
(108, 'Jan', 'Nowak', '49151555824', 101),
(109, 'Pablo', 'Garcia', '49162555176', 101),
(110, 'Melanie', 'Dreschler', '49151555527', 103),
(111, 'Dieter', 'Durr', '49178555311', 103),
(112, 'Max', 'Mustermann', '49152555195', 104),
(113, 'Maxine', 'Mustermann', '49177555355', 104),
(114, 'Heiko', 'Fleischer', '49155555581', 105);

-- --------------------------------------------------------

--
-- Table structure for table `takes_course`
--

CREATE TABLE `takes_course` (
  `PARTICIPANT_ID` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `takes_course`
--

INSERT INTO `takes_course` (`PARTICIPANT_ID`, `COURSE_ID`) VALUES
(101, 15),
(101, 17),
(102, 17),
(103, 18),
(104, 18),
(105, 18),
(106, 13),
(107, 13),
(108, 13),
(109, 14),
(109, 15),
(110, 16),
(110, 20),
(111, 16),
(112, 19),
(113, 19),
(114, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`CLIENT_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_ID`),
  ADD KEY `CLIENT_ID` (`CLIENT_ID`),
  ADD KEY `INSTRUCTOR_ID` (`INSTRUCTOR_ID`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`INSTRUCTOR_ID`),
  ADD UNIQUE KEY `TAX_ID` (`TAX_ID`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`PARTICIPANT_ID`),
  ADD KEY `CLIENT_ID` (`CLIENT_ID`);

--
-- Indexes for table `takes_course`
--
ALTER TABLE `takes_course`
  ADD PRIMARY KEY (`PARTICIPANT_ID`,`COURSE_ID`),
  ADD KEY `COURSE_ID` (`COURSE_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`INSTRUCTOR_ID`) REFERENCES `instructor` (`INSTRUCTOR_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`CLIENT_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `course_ibfk_3` FOREIGN KEY (`INSTRUCTOR_ID`) REFERENCES `instructor` (`INSTRUCTOR_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `course_ibfk_4` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`CLIENT_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `course_ibfk_5` FOREIGN KEY (`INSTRUCTOR_ID`) REFERENCES `instructor` (`INSTRUCTOR_ID`) ON DELETE SET NULL;

--
-- Constraints for table `participant`
--
ALTER TABLE `participant`
  ADD CONSTRAINT `participant_ibfk_1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`CLIENT_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `participant_ibfk_2` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`CLIENT_ID`) ON DELETE SET NULL,
  ADD CONSTRAINT `participant_ibfk_3` FOREIGN KEY (`CLIENT_ID`) REFERENCES `client` (`CLIENT_ID`) ON DELETE SET NULL;

--
-- Constraints for table `takes_course`
--
ALTER TABLE `takes_course`
  ADD CONSTRAINT `takes_course_ibfk_1` FOREIGN KEY (`PARTICIPANT_ID`) REFERENCES `participant` (`PARTICIPANT_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `takes_course_ibfk_2` FOREIGN KEY (`COURSE_ID`) REFERENCES `course` (`COURSE_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
