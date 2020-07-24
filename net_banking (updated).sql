-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2019 at 06:45 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `net_banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `uname` char(25) DEFAULT NULL,
  `pwd` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `uname`, `pwd`) VALUES
(1, 'admin', 'password123');

-- --------------------------------------------------------

--
-- Table structure for table `appresult`
--

CREATE TABLE `appresult` (
  `imei` varchar(19) NOT NULL,
  `qrresult` varchar(20) NOT NULL,
  `serial_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appresult`
--

INSERT INTO `appresult` (`imei`, `qrresult`, `serial_no`) VALUES
('868151044259796', '938244', 14),
('868151044259796', '552216', 15),
('868151044259796', '323097', 16),
('869338029402223', '858573', 17),
('869338029402223', '216078', 18);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary1`
--

CREATE TABLE `beneficiary1` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary1`
--

INSERT INTO `beneficiary1` (`benef_id`, `benef_cust_id`, `email`, `phone_no`, `account_no`) VALUES
(1, 2, 'sanketsonje@gmail.com', '+91 9860346229', 1122334455);

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary2`
--

CREATE TABLE `beneficiary2` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary3`
--

CREATE TABLE `beneficiary3` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary4`
--

CREATE TABLE `beneficiary4` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary5`
--

CREATE TABLE `beneficiary5` (
  `benef_id` int(11) NOT NULL,
  `benef_cust_id` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `aadhar_no` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `branch` varchar(30) DEFAULT NULL,
  `account_no` int(11) DEFAULT NULL,
  `pin` int(4) DEFAULT NULL,
  `uname` varchar(30) DEFAULT NULL,
  `pwd` varchar(30) DEFAULT NULL,
  `imei` double NOT NULL,
  `random` double NOT NULL,
  `result` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `first_name`, `last_name`, `gender`, `dob`, `aadhar_no`, `email`, `phone_no`, `address`, `branch`, `account_no`, `pin`, `uname`, `pwd`, `imei`, `random`, `result`) VALUES
(1, 'Nupur', 'Shinkar', 'female', '1997-01-24', '301531040501', 'nrshinkar@gmail.com', '7719827827', 'Pune', 'Kothrud', 1345623478, 2066, 'nupur', 'nupur@18', 868151044259796, 323097, 1),
(2, 'Sanket', 'Sonje', 'male', '1996-07-28', '754585850460', 'sanketsonje@gmail.com', '+91 9860346229', 'Pune', 'Dhayri', 1122334455, 1234, 'sanket', 'sanket@18', 864089040905232, 923911, 0),
(3, 'Shubham', 'Kamble', 'male', '1997-01-21', '754585850461', 'shubhamkamble@gmail.com', '+91 9860346221', 'Pune', 'Mumbai', 1122334456, 1234, 'shubham', 'shubham@28', 356320064883269, 0, 0),
(4, 'Pranav', 'Pardeshi', 'male', '1996-07-21', '301531040502', 'pranavpardeshi@gmail.com', '+91 9860346207', 'Pune', 'Kalyan', 1122334457, 1234, 'pranav', 'pranav@18', 869338029402223, 216078, 1),
(5, 'Sarang', 'Shinde', 'male', '1997-01-01', '754585850466', 'sarangshinde@gmail.com', '+91 9860346267', 'Ulhasnagar', 'Dadar', 1122334458, 1234, 'sarang', 'sarang@18', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news_body`
--

CREATE TABLE `news_body` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `passbook1`
--

CREATE TABLE `passbook1` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook1`
--

INSERT INTO `passbook1` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2019-03-23 18:31:27', 'Opening Balance', 0, 10000, 10000),
(2, '2019-03-28 10:41:44', 'Sent to: Sanket Sonje, AC/No: 1122334455', 1000, 0, 9000);

-- --------------------------------------------------------

--
-- Table structure for table `passbook2`
--

CREATE TABLE `passbook2` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook2`
--

INSERT INTO `passbook2` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2019-03-23 18:49:11', 'Opening Balance', 0, 10000, 10000),
(2, '2019-03-28 10:41:44', 'Received from: Nupur Shinkar, AC/No: 1345623478', 0, 1000, 11000);

-- --------------------------------------------------------

--
-- Table structure for table `passbook3`
--

CREATE TABLE `passbook3` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook3`
--

INSERT INTO `passbook3` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2019-03-23 18:51:30', 'Opening Balance', 0, 10000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `passbook4`
--

CREATE TABLE `passbook4` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook4`
--

INSERT INTO `passbook4` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2019-03-23 18:52:54', 'Opening Balance', 0, 10000, 10000),
(2, '2019-03-28 11:10:03', 'Cash to Self', 1000, 0, 9000);

-- --------------------------------------------------------

--
-- Table structure for table `passbook5`
--

CREATE TABLE `passbook5` (
  `trans_id` int(11) NOT NULL,
  `trans_date` datetime DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `debit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passbook5`
--

INSERT INTO `passbook5` (`trans_id`, `trans_date`, `remarks`, `debit`, `credit`, `balance`) VALUES
(1, '2019-03-28 10:58:14', 'Opening Balance', 0, 10000, 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appresult`
--
ALTER TABLE `appresult`
  ADD PRIMARY KEY (`serial_no`);

--
-- Indexes for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary2`
--
ALTER TABLE `beneficiary2`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary3`
--
ALTER TABLE `beneficiary3`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary4`
--
ALTER TABLE `beneficiary4`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary5`
--
ALTER TABLE `beneficiary5`
  ADD PRIMARY KEY (`benef_id`),
  ADD UNIQUE KEY `benef_cust_id` (`benef_cust_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `aadhar_no` (`aadhar_no`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone_no` (`phone_no`),
  ADD UNIQUE KEY `account_no` (`account_no`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_body`
--
ALTER TABLE `news_body`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `passbook1`
--
ALTER TABLE `passbook1`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook2`
--
ALTER TABLE `passbook2`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook3`
--
ALTER TABLE `passbook3`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook4`
--
ALTER TABLE `passbook4`
  ADD PRIMARY KEY (`trans_id`);

--
-- Indexes for table `passbook5`
--
ALTER TABLE `passbook5`
  ADD PRIMARY KEY (`trans_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appresult`
--
ALTER TABLE `appresult`
  MODIFY `serial_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `beneficiary1`
--
ALTER TABLE `beneficiary1`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beneficiary2`
--
ALTER TABLE `beneficiary2`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary3`
--
ALTER TABLE `beneficiary3`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary4`
--
ALTER TABLE `beneficiary4`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beneficiary5`
--
ALTER TABLE `beneficiary5`
  MODIFY `benef_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_body`
--
ALTER TABLE `news_body`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `passbook1`
--
ALTER TABLE `passbook1`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook2`
--
ALTER TABLE `passbook2`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook3`
--
ALTER TABLE `passbook3`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `passbook4`
--
ALTER TABLE `passbook4`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `passbook5`
--
ALTER TABLE `passbook5`
  MODIFY `trans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
