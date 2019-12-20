-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2019 at 09:14 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homesecure`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `sn` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `location` varchar(100) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`sn`, `name`, `feedback`, `location`, `slug`, `date`, `img`) VALUES
(1, 'Devendra Gupta', 'Station Road, Shivrampur Chitrakoot', 'Shivrampur', 'first_blog', '2019-06-09 18:30:00', '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),
(2, 'Dipanshu', 'Shankar Bazar Kuber Ganj Karwi Chitrakoot UP', 'Karwi Chitrakoot', '', '2019-05-31 18:30:00', '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),
(3, 'Prashant Kumar Mishra', 'Ramghat, near by Kamadgiri Hotel, Chitrakoot UP', 'Chitrakoot', '', '2019-06-02 18:30:00', '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0'),
(4, 'Aradhna Gupta', 'Khohi, Chitrakoot MP', 'Chitrakoot', '', '2019-06-09 18:30:00', '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `sno` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `msg` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`sno`, `name`, `email`, `subject`, `msg`) VALUES
(6, 'asd', 'abc@xyz.com', 'a', 'ads'),
(7, 'asd', 'abc@xyz.com', 'a', 'ads'),
(8, 'asd', 'abc@xyz.com', 'a', 'ads');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `sn` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`sn`, `category`, `sub_cat`, `name`, `image`) VALUES
(1, 'CCTV', '', 'CCTV', 'cctv.png'),
(2, 'BIOMATRIC', '', 'BIOMATRIC', 'biometric.png'),
(3, 'ACCESS CONTROL', '', 'ACCESS CONTROL', 'access-control.png'),
(4, 'ENTRENCE PRODUCT', '', 'ENTRENCE PRODUCT', 'ENTRANCE PRODUCTS.png'),
(5, 'HOTEL LOCK SOLUTION', '', 'HOTEL LOCK SOLUTION', 'hotel-lock.png'),
(6, 'VIDEO DOOR PHONE', '', 'VIDEO DOOR PHONE', 'video-door.png'),
(7, 'IP MULTI DOOR PHONE APARTMENT SOLUTION', '', 'IP MULTIPLE PHONE APARTMENT SOLUTION', 'IP MULTI DOOR PHONE APARTMENT SOLUTION.png'),
(8, 'INTRUSION ALARM', '', 'INTRUSION ALARM', 'notification.png'),
(9, 'CARDS', '', 'CARDS', 'key-card.png'),
(10, 'CCTV', 'CAMERA', 'CAMERA', ''),
(11, 'CCTV', 'DIGITAL VIDEO RECORDER (XVR)', 'DIGITAL VIDEO RECORDER (XVR)', ''),
(12, 'CCTV', 'NETWORK VIDEO RECORDER', 'NETWORK VIDEO RECORDER', ''),
(13, 'CCTV', 'NVR KIT', 'NVR KIT', ''),
(14, 'CCTV', 'POWER SUPPLY', 'POWER SUPPLY', ''),
(15, 'CCTV', 'FIBER ACCESSORES', 'FIBER ACCESSORES', ''),
(16, 'CCTV', 'POE SWITCH', 'POE SWITCH', ''),
(17, 'CCTV', 'VR CAMERA', 'VR CAMERA', ''),
(18, 'CAMERA', 'AHD CAMERA', 'AHD CAMERA', ''),
(19, 'CAMERA', 'IP CAMERA', 'IP CAMERA', ''),
(20, 'CAMERA', 'NETWORK CAMERA', 'NETWORK CAMERA', ''),
(21, 'CAMERA', 'PROJECT IP CCTV', 'PROJECT IP CCTV', ''),
(22, 'CAMERA', 'BODY WORN CAMERA', 'BODY WORN CAMERA', ''),
(23, 'DIGITAL VIDEO RECORDER (XVR)', 'IBIS SERIES', 'IBIS SERIES', ''),
(24, 'DIGITAL VIDEO RECORDER (XVR)', 'FALCON SERIES', 'FALCON SERIES', ''),
(25, 'Network Video Recorder', 'FALCON SERIES', 'FALCON SERIES', ''),
(26, 'NETWORK VIDEO RECORDER', 'IBIS SERIES', 'IBIS SERIES', ''),
(27, 'NVR Kit', 'S-4WKL', 'S-4WKL', ''),
(28, 'NVR Kit', '8 CHANNEL NVR KIT', '8 CHANNEL NVR KIT', ''),
(29, 'NVR Kit', '4 CHANNEL NVR KIT', '4 CHANNEL NVR KIT', ''),
(30, 'POWER SUPPLY', 'METAL SERIES', 'METAL SERIES', ''),
(31, 'POWER SUPPLY', 'FIBER SERIES', 'FIBER SERIES', ''),
(32, 'FIBER ACCESSORES', 'MEDIA CONVERTOR', 'MEDIA CONVERTOR', ''),
(33, 'FIBER ACCESSORES', 'EPON', 'EPON', ''),
(34, 'FIBER ACCESSORES', 'RACKMOUNTABLE RACK', 'RACKMOUNTABLE RACK', ''),
(35, 'POE SWITCH', '10/100', '10/100', ''),
(36, 'POE SWITCH', '10/100/1000', '10/100/1000', ''),
(37, 'VR CAMERA', 'SIP-1S-VR8', 'SIP-1S-VR8', ''),
(38, 'VR CAMERA', 'SIP-1S-VR4', 'SIP-1S-VR4', ''),
(39, 'VR CAMERA', 'S-VR5K', 'S-VR5K', ''),
(40, 'AI CAMERA', 'S-VR30K', 'S-VR30K', ''),
(41, 'BIOMATRIC', 'AADHAR BASED', 'AADHAR BASED', ''),
(42, 'BIOMATRIC', 'BASIC DEVICE', 'BASIC DEVICE', ''),
(43, 'BIOMATRIC', 'FINGERPRINT & FACE WITH ACCESS CONTROL', 'FINGERPRINT & FACE WITH ACCESS CONTROL', ''),
(44, 'BIOMATRIC', 'CLOUD BASED DEVICE', 'CLOUD BASED DEVICE', ''),
(45, 'BIOMATRIC', 'USB BIOMETRIC DEVICE', 'USB BIOMETRIC DEVICE', ''),
(46, 'BIOMATRIC', 'PALM VEIN RECOGNITION', 'PALM VEIN RECOGNITION', ''),
(47, 'ACCESS CONTROL', 'MULTI DOOR ACCESS CONTROLLER', 'MULTI DOOR ACCESS CONTROLLER', ''),
(48, 'ACCESS CONTROL', 'MULTI CARD RFID READER', 'MULTI CARD RFID READER', ''),
(49, 'ACCESS CONTROL', 'FINGERPRINT & RFID CARD READER', 'FINGERPRINT & RFID CARD READER', ''),
(50, 'ACCESS CONTROL', 'LOCKS', 'LOCKS', ''),
(51, 'ACCESS CONTROL', 'BRACKETS', 'BRACKETS', ''),
(52, 'ACCESS CONTROL', 'UHF READER', 'UHF READER', ''),
(53, 'ACCESS CONTROL', 'MULTI CARD READER', 'MULTI CARD READER', ''),
(54, 'ACCESS CONTROL', 'ACCESS CONTROL ACCESSORIES', 'ACCESS CONTROL ACCESSORIES', ''),
(55, 'ACCESS CONTROL', 'READER', 'READER', ''),
(56, 'ACCESS CONTROL', 'STANDALONE ACCESS CONTROLLER', 'STANDALONE ACCESS CONTROLLER', ''),
(57, 'ENTRENCE PRODUCT', 'BOOM BARRIER', 'BOOM BARRIER', ''),
(58, 'ENTRENCE PRODUCT', 'FLAP BARRIER', 'FLAP BARRIER', ''),
(59, 'ENTRENCE PRODUCT', 'TRIPOD / TURNSTILE', 'TRIPOD / TURNSTILE', ''),
(60, 'ENTRENCE PRODUCT', 'SWING BARRIER / P-TYPE GATE', 'SWING BARRIER / P-TYPE GATE', ''),
(61, 'ENTRENCE PRODUCT', 'FULL HEIGHT TURNSTILE', 'FULL HEIGHT TURNSTILE', ''),
(62, 'ENTRENCE PRODUCT', 'TYRE BUSTER', 'TYRE BUSTER', ''),
(63, 'HOTEL LOCK SOLUTION', 'HOTEL LOCKS', 'HOTEL LOCKS', ''),
(64, 'HOTEL LOCK SOLUTION', 'HOTEL LOCK SOLUTION ACCESSORIES', 'HOTEL LOCK SOLUTION ACCESSORIES', ''),
(65, 'HOTEL LOCK SOLUTION', 'RFID LOCKS FOR LOCKER', 'RFID LOCKS FOR LOCKER', ''),
(66, 'VIDEO DOOR PHONE', 'ANALOGUE VIDEO DOOR PHONE INDOOR', 'ANALOGUE VIDEO DOOR PHONE INDOOR', ''),
(67, 'VIDEO DOOR PHONE', 'ANALOGUE OUTDOOR STATION', 'ANALOGUE OUTDOOR STATION', ''),
(68, 'VIDEO DOOR PHONE', 'ANALOGUE VIDEO DOOR PHONE SET', 'ANALOGUE VIDEO DOOR PHONE SET', ''),
(69, 'IP MULTI DOOR PHONE APARTMENT SOLUTION', 'IP INDOOR STATION', 'IP INDOOR STATION', ''),
(70, 'IP MULTI DOOR PHONE APARTMENT SOLUTION', 'IP OUTDOOR STATION', 'IP OUTDOOR STATION', ''),
(71, 'IP MULTI DOOR PHONE APARTMENT SOLUTION', 'IP MULTI-APARTMENT SYSTEM', 'IP MULTI-APARTMENT SYSTEM', ''),
(72, 'INTRUSION ALARM', 'WIRELESS ACCESSORIES', 'WIRELESS ACCESSORIES', ''),
(73, 'INTRUSION ALARM', 'WIRED ACCESSORIES', 'WIRED ACCESSORIES', ''),
(74, 'INTRUSION ALARM', 'GSM ALARM SYSTEM', 'GSM ALARM SYSTEM', ''),
(75, 'CARDS', 'UHF CARDS', 'UHF CARDS', ''),
(76, 'CARDS', 'PVC CARDS', 'PVC CARDS', ''),
(77, 'CARDS', 'LOW FREQUENCY (LF) CARDS\r\n', 'LOW FREQUENCY (LF) CARDS\r\n', ''),
(78, 'CARDS', 'CONTACTLESS CARDS', 'CONTACTLESS CARDS', '');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `sn` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `sub_cat` varchar(100) NOT NULL,
  `name` varchar(30) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`sn`, `category`, `sub_cat`, `name`, `image`, `date`) VALUES
(1, 'CCTV', '', '', 'cctv.png', '2019-06-15 12:15:46'),
(3, 'BIOMETRIC', '', '', 'biometric.png', '2019-06-15 12:15:46'),
(5, 'ACCESS CONTROL', '', '', 'access-control.png', '2019-06-15 12:15:46'),
(6, 'HOTEL LOCKS SOLUTIONS', '', '', 'video-door-phone.png', '2019-06-15 12:15:46'),
(7, 'ENTRANCE PRODUCTS', '', '', 'network.png', '2019-06-15 12:15:46'),
(8, 'INTRUSION ALARM', '', '', 'notification.png', '2019-06-15 12:15:46'),
(9, 'VIDEO DOOR PHONE', '', '', 'smart-home.png', '2019-06-15 12:15:46'),
(10, 'IP MULTI DOOR PHONE APARTMENT SOLUTION', '', '', 'smart-lock.png', '2019-06-15 12:15:46'),
(15, 'CARDS', '', '', 'key-card.png', '2019-06-15 12:15:46'),
(16, 'TAGS', '', '', 'tag.png', '2019-06-15 12:15:46'),
(22, 'CCTV', 'CAMERA', 'CAMERA', 'image1', '2019-06-15 23:36:59'),
(23, 'CCTV', 'DIGITAL VIDEO RECORDER (XVR)', 'DIGITAL VIDEO RECORDER (XVR)', 'image1', '2019-06-15 23:38:11'),
(25, 'SFGSDFG', 'DFGSFDG', 'SDFGSDFG', 'ADF', '2019-06-16 02:59:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`sn`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`sn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `sn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
