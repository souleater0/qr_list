-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2024 at 03:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8765398765, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', '2024-04-30 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbldirectory`
--

CREATE TABLE `tbldirectory` (
  `ID` int(10) NOT NULL,
  `ItemBarcode` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemDesc` varchar(250) NOT NULL,
  `Status` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldirectory`
--

INSERT INTO `tbldirectory` (`ID`, `ItemBarcode`, `ItemName`, `ItemDesc`, `Status`) VALUES
(1, 'CD000001', 'CORNDOG-PLAIN', 'CORNDOG-PLAIN', '1'),
(2, 'CD000002', 'CORNDOG-HOTDOG', 'CORNDOG-HOTDOG', '1'),
(3, 'CD000003', 'CORNDOG-MOZZARELA', 'CORNDOG-MOZZARELA', '1'),
(4, 'CD000004', 'CORNDOG-MOZZARELA-HOTDOG', 'CORNDOG-MOZZARELA-HOTDOG', '1'),
(5, 'SW-00001', 'SINGAPORE WAFFLE-PLAIN', 'SINGAPORE WAFFLE-PLAIN', '1'),
(6, 'SW-00002', 'SINGAPORE WAFFLE-CHOCOLATE', 'SINGAPORE WAFFLE-CHOCOLATE', '1'),
(7, 'SW-00003', 'SINGAPORE WAFFLE-PB', 'SINGAPORE WAFFLE-PB', '1'),
(8, 'SW-00004', 'SINGAPORE WAFFLE-CARAMEL', 'SINGAPORE WAFFLE-CARAMEL', '1'),
(9, 'SW-00005', 'SINGAPORE WAFFLE-NUTTELA', 'SINGAPORE WAFFLE-NUTTELA', '1'),
(10, 'SW-00006', 'SINGAPORE WAFFLE-KITKAT', 'SINGAPORE WAFFLE-KITKAT', '1'),
(11, 'SW-00007', 'SINGAPORE WAFFLE-CC', 'SINGAPORE WAFFLE-CC', '1'),
(12, 'SW-00008', 'SINGAPORE WAFFLE-CH+BNN', 'SINGAPORE WAFFLE-CH+BNN', '1'),
(13, 'SW-00009', 'SINGAPORE WAFFLE-PEA+BNN', 'SINGAPORE WAFFLE-PEA+BNN', '1'),
(14, 'NAC-00001', 'NACHOS-CLASSIC', 'NACHOS-CLASSIC', '1'),
(15, 'NAC-00002', 'NACHOS-OVERLOAD', 'NACHOS-OVERLOAD', '1'),
(16, 'NAC-00003', 'NACHOS-SUPOVERLOAD', 'NACHOS-SUPOVERLOAD', '1'),
(17, 'FR-00001', 'FRIES-MEGA', 'FRIES-MEGA', '1'),
(18, 'FR-00002', 'FRIES-SUPERMEGA', 'FRIES-SUPERMEGA', '1'),
(19, 'FR-00003', 'TWISTER FRIES', 'TWISTER FRIES', '1'),
(20, 'FR-00004', 'SPAM FRIES', 'SPAM FRIES', '1'),
(21, 'FR-00005', 'FRIES PLATTERS', 'FRIES PLATTERS', '1'),
(22, 'KED-0001', 'K-EGGDROP- H&C', 'K-EGGDROP- H&C', '1'),
(23, 'KED-0002', 'K-EGGDROP- BACON', 'K-EGGDROP- BACON', '1'),
(24, 'KED-0003', 'K-EGGDROP- SPAM', 'K-EGGDROP- SPAM', '1'),
(25, 'CB-00001', 'CORNBALL', 'CORNBALL', '1'),
(26, 'SANDW0001', 'SANDW-CHSY HTDOG', 'SANDW-CHSY HTDOG', '1'),
(27, 'SANDW0002', 'SANDW-FOOTLONG', 'SANDW-FOOTLONG', '1'),
(28, 'MR0001', 'MALAYSIA RAMLY BRGR', 'MALAYSIA RAMLY BRGR', '1'),
(29, 'SHW-00001', 'SHWRM-TURKISH BEEF', 'SHWRM-TURKISH BEEF', '1'),
(30, 'SHW-00002', 'SHWRM-CHICKEN', 'SHWRM-CHICKEN', '1'),
(31, 'MT-00001', 'MT-CARAMEL MAC -16OZ', 'MT-CARAMEL MAC -16OZ', '1'),
(32, 'MT-00002', 'MT-STRAW -16OZ', 'MT-STRAW -16OZ', '1'),
(33, 'MT-00003', 'MT-CARAMEL SALTED -16OZ', 'MT-CARAMEL SALTED -16OZ', '1'),
(34, 'MT-00004', 'MT-CC-16OZ', 'MT-CC-16OZ', '1'),
(35, 'MT-00005', 'MT-OKINAWA 160Z', 'MT-OKINAWA 160Z', '1'),
(36, 'MT-00006', 'MT-BELGIAN DARK CHOC 16OZ', 'MT-BELGIAN DARK CHOC 16OZ', '1'),
(37, 'MT-00007', 'MT-MATCHA 16OZ', 'MT-MATCHA 16OZ', '1'),
(38, 'MT-00008', 'MT-WINTERMELON 16OZ', 'MT-WINTERMELON 16OZ', '1'),
(39, 'MT-00009', 'MT-CC-22OZ', 'MT-CC-22OZ', '1'),
(40, 'MT-00010', 'MT-OKINAWA 220Z', 'MT-OKINAWA 220Z', '1'),
(41, 'MT-00011', 'MT-BELGIAN DARK CHOC 22OZ', 'MT-BELGIAN DARK CHOC 22OZ', '1'),
(42, 'MT-00012', 'MT-MATCHA 22OZ', 'MT-MATCHA 22OZ', '1'),
(43, 'MT-00013', 'MT-WINTERMELON 22OZ', 'MT-WINTERMELON 22OZ', '1'),
(44, 'RS-00001', 'RS-CARAMEL-MAC 16OZ', 'RS-CARAMEL-MAC 16OZ', '1'),
(45, 'RS-00002', 'RS-STRAWBERRY 16OZ', 'RS-STRAWBERRY 16OZ', '1'),
(46, 'RS-00003', 'RS-CARAMEL-SALTED 16OZ', 'RS-CARAMEL-SALTED 16OZ', '1'),
(47, 'RS-00004', 'RS-CC 16OZ', 'RS-CC 16OZ', '1'),
(48, 'RS-00005', 'RS-OKINAWA 16OZ', 'RS-OKINAWA 16OZ', '1'),
(49, 'RS-00006', 'RS-BELGIAN DARK CHOC 16OZ', 'RS-BELGIAN DARK CHOC 16OZ', '1'),
(50, 'RS-00007', 'RS-MATCHA 16OZ', 'RS-MATCHA 16OZ', '1'),
(51, 'RS-00008', 'RS-WINTERMELON 16OZ', 'RS-WINTERMELON 16OZ', '1'),
(52, 'RS-00009', 'RS-CARAMEL-MAC 22OZ', 'RS-CARAMEL-MAC 22OZ', '1'),
(53, 'RS-00010', 'RS-STRAWBERRY 22OZ', 'RS-STRAWBERRY 22OZ', '1'),
(54, 'RS-00011', 'RS-CARAMEL-SALTED 22OZ', 'RS-CARAMEL-SALTED 22OZ', '1'),
(55, 'RS-00012', 'RS-CC 22OZ', 'RS-CC 22OZ', '1'),
(56, 'RS-00013', 'RS-OKINAWA 22OZ', 'RS-OKINAWA 22OZ', '1'),
(57, 'RS-00014', 'RS-BELGIAN DARK CHOC 22OZ', 'RS-BELGIAN DARK CHOC 22OZ', '1'),
(58, 'RS-00015', 'RS-MATCHA 22OZ', 'RS-MATCHA 22OZ', '1'),
(59, 'RS-00016', 'RS-WINTERMELON 22OZ', 'RS-WINTERMELON 22OZ', '1'),
(60, 'CC-0001', 'CC-CARAMEL-MAC 16OZ', 'CC-CARAMEL-MAC 16OZ', '1'),
(61, 'CC-0002', 'CC-STRAWBERRY 16OZ', 'CC-STRAWBERRY 16OZ', '1'),
(62, 'CC-0003', 'CC-SALTED CARAMEL 16OZ', 'CC-SALTED CARAMEL 16OZ', '1'),
(63, 'CC-0004', 'CC-CC 16OZ', 'CC-CC 16OZ', '1'),
(64, 'CC-0005', 'CC-OKINAWA 16OZ', 'CC-OKINAWA 16OZ', '1'),
(65, 'CC-0006', 'CC-BELGIAN DARK CHOC 16OZ', 'CC-BELGIAN DARK CHOC 16OZ', '1'),
(66, 'CC-0007', 'CC-MATCHA-16OZ', 'CC-MATCHA-16OZ', '1'),
(67, 'CC-0008', 'CC-WINTER-16OZ', 'CC-WINTER-16OZ', '1'),
(68, 'CC-0009', 'CC-CARAMEL-MAC 22OZ', 'CC-CARAMEL-MAC 22OZ', '1'),
(69, 'CC-0010', 'CC-STRAWBERRY 22OZ', 'CC-STRAWBERRY 22OZ', '1'),
(70, 'CC-0011', 'CC-SALTED CARAMEL 22OZ', 'CC-SALTED CARAMEL 22OZ', '1'),
(71, 'CC-0012', 'CC-CC 22OZ', 'CC-CC 22OZ', '1'),
(72, 'CC-0013', 'CC-OKINAWA 22OZ', 'CC-OKINAWA 22OZ', '1'),
(73, 'CC-0014', 'CC-BELGIAN DARK CHOC 22OZ', 'CC-BELGIAN DARK CHOC 22OZ', '1'),
(74, 'CC-0015', 'CC-MATCHA-22OZ', 'CC-MATCHA-22OZ', '1'),
(75, 'CC-0016', 'CC-WINTER-22OZ', 'CC-WINTER-22OZ', '1'),
(76, 'FR-001', 'FR-CHOCO HAZELNUT 16OZ', 'FR-CHOCO HAZELNUT 16OZ', '1'),
(77, 'FR-002', 'FR-SALTED CARAMEL 16OZ', 'FR-SALTED CARAMEL 16OZ', '1'),
(78, 'FR-003', 'FR-STRAWBERRY 16OZ', 'FR-STRAWBERRY 16OZ', '1'),
(79, 'FR-004', 'FR-MATCHA 16OZ', 'FR-MATCHA 16OZ', '1'),
(80, 'FR-005', 'FR-CARAMEL MACCHIATO 16OZ', 'FR-CARAMEL MACCHIATO 16OZ', '1'),
(81, 'FR-006', 'FR-COFFEE LATTE 16OZ', 'FR-COFFEE LATTE 16OZ', '1'),
(82, 'FR-007', 'FR-CC 16OZ', 'FR-CC 16OZ', '1'),
(83, 'DS-001', 'HALOHALO-CREAMY', 'HALOHALO-CREAMY', '1'),
(84, 'DS-002', 'HALOHALO-CREAMY B1TK1', 'HALOHALO-CREAMY B1TK1', '1'),
(85, 'SF-0001', 'SF-FISHBALL', 'SF-FISHBALL', '1'),
(86, 'SF-0002', 'SF-KIKIAM', 'SF-KIKIAM', '1'),
(87, 'SF-0003', 'SF-SQUIDBALL', 'SF-SQUIDBALL', '1'),
(88, 'SF-0004', 'SF-CHICKENBALL', 'SF-CHICKENBALL', '1'),
(89, 'SF-0005', 'SF-TOKNENENG', 'SF-TOKNENENG', '1'),
(90, 'SF-0006', 'SF-TOKWA', 'SF-TOKWA', '1'),
(91, 'ICC-001', 'ICECOFEE-HAZELNUT 16OZ', 'ICECOFEE-HAZELNUT 16OZ', '1'),
(92, 'ICC-002', 'ICECOFEE-ESPRESSO COFF 16OZ', 'ICECOFEE-ESPRESSO COFF 16OZ', '1'),
(93, 'ICC-003', 'ICECOFEE-CHOCO 16OZ', 'ICECOFEE-CHOCO 16OZ', '1'),
(94, 'ICC-004', 'ICECOFEE-HAZELNUT 22OZ', 'ICECOFEE-HAZELNUT 22OZ', '1'),
(95, 'ICC-005', 'ICECOFEE-ESPRESSO COFF 22OZ', 'ICECOFEE-ESPRESSO COFF 22OZ', '1'),
(96, 'ICC-006', 'ICECOFEE-CHOCO 22OZ', 'ICECOFEE-CHOCO 22OZ', '1'),
(97, 'HOT-001', 'HOTCOFEE-HAZELNUT 16OZ', 'HOTCOFEE-HAZELNUT 16OZ', '1'),
(98, 'HOT-002', 'HOTCOFEE-ESPRESSO COFF 16OZ', 'HOTCOFEE-ESPRESSO COFF 16OZ', '1'),
(99, 'HOT-003', 'HOTCOFEE-CHOCO 16OZ', 'HOTCOFEE-CHOCO 16OZ', '1'),
(100, 'HOT-004', 'HOTCOFEE-HAZELNUT 22OZ', 'HOTCOFEE-HAZELNUT 22OZ', '1'),
(101, 'HOT-005', 'HOTCOFEE-ESPRESSO COFF 22OZ', 'HOTCOFEE-ESPRESSO COFF 22OZ', '1'),
(102, 'HOT-006', 'HOTCOFEE-CHOCO 22OZ', 'HOTCOFEE-CHOCO 22OZ', '1'),
(103, 'FR-008', 'FR-CHOCO HAZELNUT 22OZ', 'FR-CHOCO HAZELNUT 22OZ', '1'),
(104, 'FR-009', 'FR-SALTED CARAMEL 22OZ', 'FR-SALTED CARAMEL 22OZ', '1'),
(105, 'FR-010', 'FR-STRAWBERRY 22OZ', 'FR-STRAWBERRY 22OZ', '1'),
(106, 'FR-011', 'FR-MATCHA 22OZ', 'FR-MATCHA 22OZ', '1'),
(107, 'FR-012', 'FR-CARAMEL MACCHIATO 22OZ', 'FR-CARAMEL MACCHIATO 22OZ', '1'),
(108, 'FR-013', 'FR-COFFEE LATTE 22OZ', 'FR-COFFEE LATTE 22OZ', '1'),
(109, 'FR-014', 'FR-CC 22OZ', 'FR-CC 22OZ', '1'),
(110, 'ST-01', 'ST- CARAMEL SUNDAE', 'ST- CARAMEL SUNDAE', '1'),
(111, 'ST-02', 'ST- CHOCO SUNDAE', 'ST- CHOCO SUNDAE', '1'),
(112, 'ST-03', 'ST- COFFEE SUNDAE', 'ST- COFFEE SUNDAE', '1'),
(113, 'ST-04', 'ST- STRAWBERRY SUNDAE', 'ST- STRAWBERRY SUNDAE', '1'),
(114, 'RR-1', 'ROCKY ROAD', 'ROCKY ROAD', '1'),
(115, 'CT-1', 'CT-COFFEE BIG', 'CT-COFFEE BIG', '1'),
(116, 'CT-2', 'CT-VANILLA BIG', 'CT-VANILLA BIG', '1'),
(117, 'CT-3', 'CT-CHOCO BIG', 'CT-CHOCO BIG', '1'),
(118, 'CT-4', 'CT-MIX BIG', 'CT-MIX BIG', '1'),
(119, 'CF-1', 'COKE FLOAT', 'COKE FLOAT', '1'),
(120, 'ICC-007', 'ICECOFEE-SPANISH 16OZ', 'ICECOFEE-SPANISH 16OZ', '1'),
(121, 'ICC-008', 'ICECOFEE-SPANISH 22OZ', 'ICECOFEE-SPANISH 22OZ', '1'),
(122, 'CT-5', 'CT-COFFEE SMALL', 'CT-COFFEE SMALL', '1'),
(123, 'CT-6', 'CT-VANILLA SMALL', 'CT-VANILLA SMALL', '1'),
(124, 'CT-7', 'CT-CHOCO SMALL', 'CT-CHOCO SMALL', '1'),
(125, 'CT-8', 'CT-MIX SMALL', 'CT-MIX SMALL', '1'),
(126, '4800016307010', 'MAXX', 'JNJ Maxx Eucalyptus Candy', '1'),
(127, '4800818809880', 'V Fresh Candy', 'V Fresh Candy', '1'),
(128, '4800016304019', 'Maxx Cherry Candy', 'JNJ Maxx Cherry Candy', '1'),
(129, '4806500730029', 'Snowbear Candy', 'Snowbear Candy', '1'),
(130, '4800016307041', 'Dynamite Candy', 'JNJ Dynamite Candy', '1'),
(131, '8996001346297', 'Fres Cherry Candy', 'Fres Cherry Candy', '1'),
(132, '4800016475016', 'XO Coffee Candy', 'JNJ XO Coffee Candy', '1'),
(133, '4800103343464', 'Mr. Keso Candy', 'Mr. Keso Candy', '1'),
(134, '4800318808906', 'Potchi Strawberry Candy', 'Potchi Strawberry Candy', '1'),
(135, '4800016476099', 'XO Chocolate Candy', 'JNJ XO Chocolate Candy', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldirectory`
--
ALTER TABLE `tbldirectory`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldirectory`
--
ALTER TABLE `tbldirectory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
