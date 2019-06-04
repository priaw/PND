-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2019 at 06:26 AM
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
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"pnd-web-serv\",\"table\":\"listjobs\"},{\"db\":\"pnd-web-serv\",\"table\":\"trucks\"},{\"db\":\"pnd-web-serv\",\"table\":\"driver\"},{\"db\":\"pnd-web-serv\",\"table\":\"customer\"},{\"db\":\"pnd-web-serv\",\"table\":\"budgets\"},{\"db\":\"pnd-web-serv\",\"table\":\"list-jobs\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'pnd-web-serv', 'driver', '{\"sorted_col\":\"`driver`.`driver_id` ASC\"}', '2019-04-09 12:33:27'),
('root', 'pnd-web-serv', 'listjobs', '{\"sorted_col\":\"`listjobs`.`driver` ASC\"}', '2019-04-09 12:29:16');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-06-04 04:25:41', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `pnd-web-serv`
--
CREATE DATABASE IF NOT EXISTS `pnd-web-serv` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `pnd-web-serv`;

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

--
-- Dumping data for table `budgets`
--

INSERT INTO `budgets` (`budg_id`, `fuel`, `toll`, `police`, `repair`) VALUES
(1456, 498489, 16485, 1884, 1234654);

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
  `driver_contact` text COLLATE utf8_unicode_ci NOT NULL,
  `driver_identity` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driver_id`, `driver_name`, `driver_surname`, `driver_address`, `driver_contact`, `driver_identity`) VALUES
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
(2, '2019-03-05', 1, 0, 1, 'เฮี้ยบ', 'abb', 'bbv', 0, 'เหมา', 0, 0x30),
(7, '2019-03-05', 1, 0, 1, 'เฮี้ยบ', 'abb', 'bbv', 0, 'เหมา', 0, 0x30),
(9, '2019-03-05', 1, 0, 1, 'เฮี้ยบ', 'abb', 'bbv', 0, '', 0, 0x31),
(10, '2019-03-05', 1, 0, 6, 'เฮี้ยบ', 'abb', 'bbv', 0, '', 0, 0x31),
(11, '2019-03-05', 1, 0, 1, 'เฮี้ยบ', 'abb', 'bbv', 0, 'เหมา', 0, 0x31),
(12, '2019-03-05', 1, 0, 2, 'เฮี้ยบ', 'abb', 'bbv', 0, '', 0, 0x31),
(13, '2019-03-05', 1, 0, 4, 'หกล้อ', 'abb', 'bbv', 0, '(2500+1000)', 0, 0x30),
(16, '2019-03-05', 1, 0, 1, 'เฮี้ยบ', 'abb', 'bbv', 0, 'เหมา', 0, 0x30),
(18, '2019-03-05', 1, 0, 2, 'เฮี้ยบ', 'abb', 'bbv', 0, '', 0, 0x30),
(19, '2019-03-05', 1, 0, 1, 'เฮี้ยบ', 'abb', 'bbv', 0, 'เหมา', 0, 0x30),
(22, '2019-03-05', 2, 1, 3, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(23, '2019-03-05', 2, 2, 7, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(24, '2019-03-05', 2, 3, 6, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x31),
(25, '2019-03-05', 2, 2, 6, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x31),
(26, '2019-03-05', 2, 1, 5, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(27, '2019-03-05', 2, 2, 6, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(28, '2019-03-05', 2, 1, 5, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(29, '2019-03-05', 2, 2, 3, 'กระบะ', 'abb', 'bbv', 0, '', 0, 0x30),
(30, '2019-03-05', 2, 2, 7, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(31, '2019-03-05', 2, 3, 5, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(32, '2019-03-05', 2, 3, 4, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(33, '2019-03-05', 2, 2, 3, 'กระบะ', 'abb', 'bbv', 0, '', 0, 0x30),
(34, '2019-03-05', 2, 4, 6, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(35, '2019-03-05', 2, 3, 5, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(36, '2019-03-05', 2, 4, 6, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(37, '2019-03-05', 2, 5, 8, 'กระบะ', 'abb', 'bbv', 0, '', 0, 0x30),
(38, '2019-03-05', 2, 5, 7, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(39, '2019-03-05', 2, 2, 4, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(40, '2019-03-05', 2, 6, 5, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(41, '2019-03-05', 2, 3, 3, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(42, '2019-03-05', 2, 1, 7, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(43, '2019-03-05', 2, 6, 3, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(45, '2019-03-05', 2, 2, 6, 'หกล้อ', 'abb', 'bbv', 0, '', 0, 0x30),
(47, '2019-03-05', 2, 3, 3, 'เฮี้ยบ', 'abb', 'bbv', 0, '', 0, 0x30);

-- --------------------------------------------------------

--
-- Table structure for table `trucks`
--

CREATE TABLE `trucks` (
  `truck_id` int(3) NOT NULL,
  `truck_type` text NOT NULL,
  `brand` text NOT NULL,
  `model` text NOT NULL,
  `plate_no` text NOT NULL,
  `tax_expire` date NOT NULL,
  `mileage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trucks`
--

INSERT INTO `trucks` (`truck_id`, `truck_type`, `brand`, `model`, `plate_no`, `tax_expire`, `mileage`) VALUES
(165, '516', '4984', '16518', '854', '2019-05-22', 16984896);

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
  MODIFY `list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

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
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
