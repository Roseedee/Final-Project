-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2023 at 03:44 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20095184_myinternship_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_student`
--

CREATE TABLE `address_student` (
  `ad_id` int(10) NOT NULL,
  `ad_address` varchar(50) NOT NULL,
  `ad_sub_district` varchar(10) NOT NULL,
  `ad_district` varchar(10) NOT NULL,
  `ad_province` varchar(10) NOT NULL,
  `ad_zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address_student`
--

INSERT INTO `address_student` (`ad_id`, `ad_address`, `ad_sub_district`, `ad_district`, `ad_province`, `ad_zipcode`) VALUES
(1, '3/8', 'ปุยุด', 'เมือง', 'ปัตตานี', '94000'),
(2, '9/1', 'อาเนาะรู', 'เมือง', 'ปัตตานี', '94000'),
(3, '78/8', 'สะบารัง', 'เมือง', 'ปัตตานี', '94000'),
(4, '12/4', 'หน้าถ้ำ', 'เมือง', 'ยะลา', '95000'),
(5, '3/2', 'บุดี', 'เมือง', 'ยะลา', '95000'),
(6, '72/1', 'สะเตง', 'เมือง', 'ยะลา', '95000'),
(7, '33/4', 'ปุโรง', 'กรงปินัง', 'ยะลา', '95000'),
(8, '44/9', 'สะเอะ', 'กรงปินัง', 'ยะลา', '95000'),
(9, '48/1', 'กรงปินัง', 'กรงปินัง', 'ยะลา', '95000'),
(10, '1/12', 'บันนังสตา', 'บันนังสตา', 'ยะลา', '95130'),
(11, '3/8 Banhadsai', 'ธารคีรี', 'สะบ้าย้อย', 'สงขลา', '90210'),
(12, '115/2', 'บางเคว้า', 'เมือง', 'เพชรบูรณ์', '890000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_student`
--
ALTER TABLE `address_student`
  ADD PRIMARY KEY (`ad_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address_student`
--
ALTER TABLE `address_student`
  ADD CONSTRAINT `address_student_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `student` (`st_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
