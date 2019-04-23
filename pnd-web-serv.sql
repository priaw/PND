-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2019 at 10:19 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pnd-web-serv`
--

-- --------------------------------------------------------

--
-- Table structure for table `budgets`
--

CREATE TABLE `budgets` (
  `budg_id` int(11) NOT NULL,
  `fuel` int(11) NOT NULL,
  `toll` int(11) NOT NULL,
  `police` int(11) NOT NULL,
  `repair` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `customer_name` text COLLATE utf8_unicode_ci NOT NULL,
  `code-name` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `contact-number` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `customer_name`, `code-name`, `address`, `contact-number`) VALUES
(0, '-', '-', '-', '-'),
(1, 'บริษัท เดชากร เอ็นจิเนียริ่ง จำกัด  ', 'DEC', '231 ซอยรังสิต-นครนายกซอย 27 ตำบล ประชาธิปัตย์ อำเภอ ธัญบุรี จังหวัด ปทุมธานี 12130', '-'),
(2, 'บริษัท เจ.ที.แอล. คอสโม่ โปรเจค จำกัด ', 'JTL', '92/5 หมู่ที่ 2 ตำบล บางพลับ อำเภอ ปากเกร็ด จังหวัด นนทบุรี 11120 ', '02-156-8805 ');

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `dealer_id` int(11) NOT NULL,
  `dealer_name` text COLLATE utf8_unicode_ci NOT NULL,
  `dealer_surname` text COLLATE utf8_unicode_ci NOT NULL,
  `dealer_address` text COLLATE utf8_unicode_ci NOT NULL,
  `dealer_contact` text COLLATE utf8_unicode_ci NOT NULL,
  `dealer_customer_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`dealer_id`, `dealer_name`, `dealer_surname`, `dealer_address`, `dealer_contact`, `dealer_customer_id`) VALUES
(0, '-', '-', '-', '-', 0),
(1, 'บอล', '-', '-', '-', 2),
(2, 'ติน', '-', '-', '-', 2),
(3, 'นนท์', '-', '-', '-', 2),
(4, 'ปุ๋ย', '-', '-', '-', 2),
(5, 'เซ้ง', '-', '-', '-', 2),
(6, 'จักร', '-', '-', '-', 2),
(7, 'โรจน์', '-', '-', '-', 2);

-- --------------------------------------------------------

--
-- Table structure for table `document`
--

CREATE TABLE `document` (
  `doc_id` int(11) NOT NULL,
  `name` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `download-link` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driver_id` int(11) NOT NULL,
  `driver_name` text COLLATE utf8_unicode_ci NOT NULL,
  `driver_surname` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `driver_address` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `driver-contact` text COLLATE utf8_unicode_ci NOT NULL,
  `driver_identity` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `driver_surname`, `driver_address`, `driver-contact`, `driver_identity`) VALUES
(1, 'ประหยัด', 'เพราะดี', '34 หมู่ที่ 10 ตำบล โนน อำเภอ โนนนารายณ์ จังหวัด สุรินทร์ 32130', '0890021286', '3320100658620'),
(2, 'ธงชัย', 'มะนะยิ่ง', '61 หมู่ที่ 21 ตำบล นิคม อำเภอ สตึก จังหวัด บุรีรัมย์ 31150', '859119200', '1319900198528'),
(3, 'สถาพร', 'พันธ์อุ่น', '44 หมู่ที่ 1 ตำบล ยาง อำเภอ กันทรารมย์ จังหวัด ศรีสะเกษ 33130', '0997141861', '3330300429918'),
(4, 'นิคม', 'ทัพเสลา', '4ฟกดเ', '859119202', '1223334210124'),
(5, 'ลำไย', 'พึ่งพักษ์', '209 หมู่ที่ 6 ตำบล โสน อำเภอ ขุขันธ์ จังหวัด ศรีสะเกษ 31140', '859119203', '1223257770124'),
(6, 'อรุณ', 'ผมทำ', '101 หมู่ที่ 2 ตำบล ช่องแมว อำเภอ ลำทะเมนชัย จังหวัด นครราชสีมา 30270', '0989865464', '1223254210888'),
(7, 'นพพร', 'บุญเติม', '75/1 หมู่ที่ 13 ตำบล นิคม อำเภอ สตึก จังหวัด บุรีรัมย์ 31150', '0644230148', '1319900428973'),
(8, 'วรวัฒน์', 'ผนึกดี', '4/32 หมู่ที่ 8 ตำบล คลองข่อย อำเภอ ปากเกร็ด จังหวัด นนทบุรี 11120', '0859363605', '1102002439351');

-- --------------------------------------------------------

--
-- Table structure for table `listjobs`
--

CREATE TABLE `listjobs` (
  `list_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `customer` int(11) NOT NULL,
  `dealer` int(3) NOT NULL,
  `driver` int(3) NOT NULL,
  `trucks` text COLLATE utf8_unicode_ci NOT NULL,
  `source` text COLLATE utf8_unicode_ci NOT NULL,
  `destination` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `job_description` text COLLATE utf8_unicode_ci NOT NULL,
  `advance_fuel` int(11) NOT NULL DEFAULT '0',
  `status` binary(1) NOT NULL DEFAULT '\0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `listjobs`
--

INSERT INTO `listjobs` (`list_id`, `date`, `customer`, `dealer`, `driver`, `trucks`, `source`, `destination`, `price`, `job_description`, `advance_fuel`, `status`) VALUES
(2, '2562-02-16', 1, 0, 1, 'เฮี้ยบ', '', 'ทำงานในไซด์บางไทร', 3000, 'เหมา', 0, 0x30),
(6, '2562-02-19', 1, 0, 2, 'หกล้อ', 'บางไทร', 'สาย 1', 3000, '', 0, 0x31),
(7, '2562-02-19', 1, 0, 1, 'เฮี้ยบ', '', 'ทำงานในไซด์บางไทร', 3000, 'เหมา', 0, 0x30),
(8, '2562-02-20', 1, 0, 1, 'เฮี้ยบ', '', 'ทำงานในไซด์บางไทร', 3000, '', 0, 0x30),
(9, '2562-02-21', 1, 0, 1, 'เฮี้ยบ', '', 'ทำงานในไซด์บางไทร', 3000, '', 0, 0x31),
(10, '2562-02-22', 1, 0, 6, 'เฮี้ยบ', '', 'ทำงานในไซด์กิ่งแก้ว ซอย 6', 5000, '', 0, 0x31),
(11, '2562-02-22', 1, 0, 1, 'เฮี้ยบ', '', 'ทำงานในไซด์บางไทร', 3000, 'เหมา', 0, 0x31),
(12, '2562-02-23', 1, 0, 2, 'เฮี้ยบ', '', 'ทำงานในไซด์อ่อนนุช 21', 5000, '', 0, 0x31),
(13, '2562-02-23', 1, 0, 4, 'หกล้อ', 'ไทเมทอล + อ่อนนุช', 'บางกรวย', 3500, '(2500+1000)', 0, 0x30),
(16, '2562-02-25', 1, 0, 1, 'เฮี้ยบ', '', 'ทำงานในไซด์บางไทร', 3000, 'เหมา', 0, 0x30),
(18, '2562-02-27', 1, 0, 2, 'เฮี้ยบ', 'อ่อนนุช 21', 'ไลท์อโศก (ย้ายเหล็กแผ่น)', 3500, '', 0, 0x30),
(19, '2562-02-27', 1, 0, 1, 'เฮี้ยบ', '', 'ทำงานในไซด์บางไทร', 3000, 'เหมา', 0, 0x30),
(22, '2562-02-01', 2, 1, 3, 'หกล้อ', 'พัฒนาชนบท', 'สโตร์', 2900, '', 0, 0x30),
(23, '2562-02-01', 2, 2, 7, 'หกล้อ', 'พระอุดม', 'บดินทร์เดชา', 2700, '', 0, 0x30),
(24, '2562-02-02', 2, 3, 6, 'หกล้อ', 'AP ไทรม้า', 'บางกระดี', 2500, '', 0, 0x31),
(25, '2562-02-04', 2, 2, 6, 'หกล้อ', 'ลาดปลาดุก', 'อ่อนนุช 70/1', 2700, '', 0, 0x31),
(26, '2562-02-04', 2, 1, 5, 'หกล้อ', 'พระอุดม 2', 'ซิตี้สุขสวัสดิ์', 2500, '', 0, 0x30),
(27, '2562-02-05', 2, 2, 6, 'หกล้อ', 'ศรีนครินทร์ 53', 'บดินทร์เดชา', 2700, '', 0, 0x30),
(28, '2562-02-05', 2, 1, 5, 'หกล้อ', 'SC พระราม 53', 'ซิตี้สุขสวัสดิ์', 2500, '', 0, 0x30),
(29, '2562-02-05', 2, 2, 3, 'กระบะ', 'อ่อนนุช 70/1', 'บดินทร์เดชา', 1500, '', 0, 0x30),
(30, '2562-02-05', 2, 2, 7, 'หกล้อ', 'ศรีนครินทร์ 53', 'บดินทร์เดชา', 2700, '', 0, 0x30),
(31, '2562-02-07', 2, 3, 5, 'หกล้อ', 'บางกะดี', 'วงศกร', 2700, '', 0, 0x30),
(32, '2562-02-08', 2, 3, 4, 'หกล้อ', 'บางกะดี', 'วงศกร', 2700, '', 0, 0x30),
(33, '2562-02-08', 2, 2, 3, 'กระบะ', 'นครอินทร์ 1', 'ศรีนครินทร์ 53', 1500, '', 0, 0x30),
(34, '2562-02-09', 2, 4, 6, 'หกล้อ', 'สโตร์', 'วงศกร', 2700, '', 0, 0x30),
(35, '2562-02-09', 2, 3, 5, 'หกล้อ', 'บางกะดี', 'วงศกร 1', 2700, '', 0, 0x30),
(36, '2562-02-10', 2, 4, 6, 'หกล้อ', 'สโตร์ - วงศกร', 'วงศกร', 2500, '', 0, 0x30),
(37, '2562-02-10', 2, 5, 8, 'กระบะ', 'ลาดปลาดุก 1, 2', 'AP ไทรม้า', 1000, '', 0, 0x30),
(38, '2562-02-12', 2, 5, 7, 'หกล้อ', 'ศรีนครินทร์ 53', 'วงศกร', 2700, '', 0, 0x30),
(39, '2562-02-12', 2, 2, 4, 'หกล้อ', 'ซิตี้อ่อนนุช', 'บดินทร์เดชา', 2700, '', 0, 0x30),
(40, '2562-02-13', 2, 6, 5, 'หกล้อ', 'พระอุดม  2', 'วงศกร', 2700, '', 0, 0x30),
(41, '2562-02-14', 2, 3, 3, 'หกล้อ', 'จตุโชติ 11/1 ', 'บางกระดี', 2700, '', 0, 0x30),
(42, '2562-02-18', 2, 1, 7, 'หกล้อ', 'นครอินทร์ 1', 'พระอุดม 3', 2500, '', 0, 0x30),
(43, '2562-02-18', 2, 6, 3, 'หกล้อ', 'วงศกร 5', 'บางกระดี', 2700, '', 0, 0x30),
(44, '2562-02-21', 2, 7, 6, 'หกล้อ', 'บางกะดี', 'วงศกร 1', 2500, '', 0, 0x30),
(45, '2562-02-23', 2, 2, 6, 'หกล้อ', 'วงศกร', 'บดินทร์เดชา', 2500, '', 0, 0x30),
(47, '2562-02-27', 2, 3, 3, 'เฮี้ยบ', 'เวนิวพระราม 5', 'บดินทร์เดชา', 3500, '', 0, 0x30);

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `truck_id` int(3) NOT NULL,
  `truck_type` text NOT NULL,
  `brand` text NOT NULL,
  `model` text NOT NULL,
  `plate-no` text NOT NULL,
  `tax-expire` date NOT NULL,
  `mileage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `budgets`
--
ALTER TABLE `budgets`
  ADD PRIMARY KEY (`budg_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`dealer_id`),
  ADD KEY `customer-id` (`dealer_customer_id`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `id` (`driver_id`);

--
-- Indexes for table `listjobs`
--
ALTER TABLE `listjobs`
  ADD PRIMARY KEY (`list_id`),
  ADD KEY `driver` (`driver`),
  ADD KEY `customer` (`customer`),
  ADD KEY `dealer` (`dealer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `listjobs`
--
ALTER TABLE `listjobs`
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dealer`
--
ALTER TABLE `dealer`
  ADD CONSTRAINT `dealer_ibfk_1` FOREIGN KEY (`dealer_customer_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `listjobs`
--
ALTER TABLE `listjobs`
  ADD CONSTRAINT `listjobs_ibfk_1` FOREIGN KEY (`driver`) REFERENCES `driver` (`driver_id`),
  ADD CONSTRAINT `listjobs_ibfk_2` FOREIGN KEY (`customer`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `listjobs_ibfk_3` FOREIGN KEY (`dealer`) REFERENCES `dealer` (`dealer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
