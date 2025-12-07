-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2025 at 04:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prasis`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_tbl`
--

CREATE TABLE `diagnosis_tbl` (
  `Diagnosis_ID` int(11) NOT NULL,
  `diagnosis` mediumtext NOT NULL,
  `date` date NOT NULL,
  `weight` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `temperature` varchar(100) NOT NULL,
  `bp` varchar(100) NOT NULL,
  `hr` varchar(100) NOT NULL,
  `rr` varchar(100) NOT NULL,
  `chief_complaint` varchar(100) NOT NULL,
  `physician` varchar(100) NOT NULL,
  `vital_sign` varchar(100) NOT NULL,
  `subjective` varchar(100) NOT NULL,
  `objective` varchar(100) NOT NULL,
  `prescription` varchar(100) NOT NULL,
  `plan` varchar(1000) NOT NULL,
  `specialization` varchar(100) NOT NULL,
  `bloodtype` varchar(100) NOT NULL,
  `allergies` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnosis_tbl`
--

INSERT INTO `diagnosis_tbl` (`Diagnosis_ID`, `diagnosis`, `date`, `weight`, `height`, `temperature`, `bp`, `hr`, `rr`, `chief_complaint`, `physician`, `vital_sign`, `subjective`, `objective`, `prescription`, `plan`, `specialization`, `bloodtype`, `allergies`) VALUES
(19, '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(20, '', '2022-07-12', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(21, '', '2022-07-08', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(22, 'efsf', '2022-07-08', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(23, 'efsf', '2022-07-08', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(24, 'fdwdwdw', '2022-07-07', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(25, 'fdwdwdw', '2022-07-07', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(26, '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(27, '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(30, 'hi', '2022-07-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(31, 'dsds', '2022-07-28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(32, 'cjdjckdcd', '2022-07-20', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(33, '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(34, 'sshhhh', '2022-07-29', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(35, 'fsds', '2022-07-27', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `patient_tbl`
--

CREATE TABLE `patient_tbl` (
  `Patient_ID` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `middle_name` varchar(100) NOT NULL,
  `occupation` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(100) NOT NULL,
  `bday` date NOT NULL,
  `age` int(100) NOT NULL,
  `gender` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_tbl`
--

INSERT INTO `patient_tbl` (`Patient_ID`, `fname`, `lname`, `middle_name`, `occupation`, `address`, `email`, `phone`, `bday`, `age`, `gender`) VALUES
(10, 'Judy', 'ber', 'kl', 'kk', 'lkl', 'judyannberallo@gmail.com', 899, '1992-08-09', 23, 'Female'),
(11, 'glen', 'Made', 'Bandal', 'engineer', 'Lupa', 'jkk@gmail.com', 343, '2022-07-24', 14, 'Female'),
(12, 'given', 'test', 'middle', '', 'Address', 'j@email.com', 92222, '2222-02-03', 23, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_patient_diagnosis`
--

CREATE TABLE `tbl_patient_diagnosis` (
  `ID` int(11) NOT NULL,
  `Patient_ID` int(11) NOT NULL,
  `Diagnosis_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_patient_diagnosis`
--

INSERT INTO `tbl_patient_diagnosis` (`ID`, `Patient_ID`, `Diagnosis_ID`) VALUES
(2, 11, 19),
(4, 11, 19),
(5, 11, 20),
(10, 10, 30),
(11, 10, 31),
(12, 10, 32),
(13, 10, 33),
(14, 10, 34),
(15, 10, 35);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `ID` int(100) NOT NULL,
  `usersUid` varchar(100) NOT NULL,
  `usersLName` varchar(1000) NOT NULL,
  `usersFName` varchar(1000) NOT NULL,
  `usersMName` varchar(1000) NOT NULL,
  `usersEmail` varchar(1000) NOT NULL,
  `usersType` varchar(1000) NOT NULL,
  `usersPwd` varchar(1000) NOT NULL,
  `usersGender` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`ID`, `usersUid`, `usersLName`, `usersFName`, `usersMName`, `usersEmail`, `usersType`, `usersPwd`, `usersGender`) VALUES
(1, 'judyB', 'Berz', 'Judy', 'Contado', 'judy@email.com', 'Physician', 'judyB!', 'Female'),
(2, 'judyB1', 'Be', 'Judy', 'C', 'judy@email.com', 'Office Staff', 'judyB1!', 'Female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnosis_tbl`
--
ALTER TABLE `diagnosis_tbl`
  ADD PRIMARY KEY (`Diagnosis_ID`),
  ADD KEY `Diagnosis_ID` (`Diagnosis_ID`);

--
-- Indexes for table `patient_tbl`
--
ALTER TABLE `patient_tbl`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `tbl_patient_diagnosis`
--
ALTER TABLE `tbl_patient_diagnosis`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Diagnosis_ID` (`Diagnosis_ID`),
  ADD KEY `Patient_ID` (`Patient_ID`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnosis_tbl`
--
ALTER TABLE `diagnosis_tbl`
  MODIFY `Diagnosis_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `patient_tbl`
--
ALTER TABLE `patient_tbl`
  MODIFY `Patient_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_patient_diagnosis`
--
ALTER TABLE `tbl_patient_diagnosis`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_patient_diagnosis`
--
ALTER TABLE `tbl_patient_diagnosis`
  ADD CONSTRAINT `tbl_patient_diagnosis_ibfk_1` FOREIGN KEY (`Diagnosis_ID`) REFERENCES `diagnosis_tbl` (`Diagnosis_ID`),
  ADD CONSTRAINT `tbl_patient_diagnosis_ibfk_2` FOREIGN KEY (`Patient_ID`) REFERENCES `patient_tbl` (`Patient_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
