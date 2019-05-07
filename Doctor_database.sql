-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2019 at 07:41 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctor`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `dob` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `dob`, `gender`) VALUES
(1, 'Shich', 'sohaib.azhar@outlook.com', '8a832259d9a5eeac016258689445f96b', '25-01-1999', 'Male'),
(2, 'waleed Ahmad', 'awaleed024@gmail.com', '77b96fc4e3dfec8a2df6239973fd503b', '25-01-1999', 'Male'),
(4, 'M ADNAN', 'adnanzafar801@gmail.com', '28d8180470cc09799c122306d9509950', '03-12-1998', 'Male'),
(5, 'Mahad Munir', 'mahadmunir10@gmail.com', '3b2285b348e95774cb556cb36e583106', '24-08-1998', 'Male'),
(6, 'Usman Anwar Khan', 'usmananwarjune@gmail.com', '756a446cd2cf61c98f3a5f698733c7c4', '10/06/1998', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

CREATE TABLE `appoinment` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(30) NOT NULL,
  `app_time` varchar(20) NOT NULL,
  `app_doc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appoinment`
--

INSERT INTO `appoinment` (`id`, `patient_name`, `app_time`, `app_doc`) VALUES
(3, 'Dark', '4:00 pm', 5),
(4, '', 'Pick Time', 5),
(5, 'Waleed Ahmad', '4:00 pm', 7),
(6, 'Dark', 'Pick Time', 8),
(7, 'Dark Octane', '5:00 pm', 5),
(8, 'Dark Octane', '5:30 pm', 5),
(9, 'Dark Octane', '5:30 pm', 5),
(10, 'Dark Octane', '5:00 pm', 5),
(11, 'Dark Octane', '5:00 pm', 5),
(12, 'Dark Octane', '5:00 pm', 5),
(13, 'Dark Octane', '5:00 pm', 5),
(14, 'Dark Octane', '5:30 pm', 5),
(15, 'Dark Octane', '5:00 pm', 5),
(16, 'Dark Octane', '4:30 pm', 5),
(17, 'Dark Octane', '5:00 pm', 5),
(18, 'Dark Octane', '4:30 pm', 5),
(19, 'Dark Octane', '4:00 pm', 11);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_data`
--

CREATE TABLE `doctor_data` (
  `id` int(11) NOT NULL,
  `doc_name` text NOT NULL,
  `doc_email` varchar(50) NOT NULL,
  `doc_type` text NOT NULL,
  `doc_address` varchar(50) NOT NULL,
  `doc_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor_data`
--

INSERT INTO `doctor_data` (`id`, `doc_name`, `doc_email`, `doc_type`, `doc_address`, `doc_phone`) VALUES
(5, 'Dr.Sohaib ', 'sohaib.azhar@outlook.com', 'Child', 'Nishter Hospital', '03017906666'),
(7, 'Dr.Waleed Ahmad', 'awaleed@gmail.com', 'Child', 'Medicare Hospital', '2147483647'),
(8, 'Dr.Shahrukh Lodhi', 'shahrukh1199@gmail.com', 'Dentist', 'Johar Town, Lahore', '2147483647'),
(10, 'Dr.Umber Ikram', 'umberikram@outlook.com', 'Dentist', 'New Muslim Town', ''),
(11, 'Dr.Syed Dawood Shah', 'dawood.shah@gmail.com', 'Cardiologist', 'Model Town, Quetta', '0729045');

-- --------------------------------------------------------

--
-- Table structure for table `user_admin`
--

CREATE TABLE `user_admin` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_admin`
--

INSERT INTO `user_admin` (`id`, `name`, `email`, `password`, `gender`) VALUES
(1, 'Dark Octane', 'ch.sohaibazhar@gmail.com', 'cG9wbw==', 'male'),
(4, 'Waleed Ahmad', 'awaleed024@gmail.com', 'd2FsZWVkcG9wbw==', 'Male'),
(6, 'Mahad Munir', 'mahadmunir10@gmail.com', 'bWFoYWRwb3Bv', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_doc` (`app_doc`);

--
-- Indexes for table `doctor_data`
--
ALTER TABLE `doctor_data`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doc_email` (`doc_email`);

--
-- Indexes for table `user_admin`
--
ALTER TABLE `user_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appoinment`
--
ALTER TABLE `appoinment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `doctor_data`
--
ALTER TABLE `doctor_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_admin`
--
ALTER TABLE `user_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD CONSTRAINT `appoinment_ibfk_1` FOREIGN KEY (`app_doc`) REFERENCES `doctor_data` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
