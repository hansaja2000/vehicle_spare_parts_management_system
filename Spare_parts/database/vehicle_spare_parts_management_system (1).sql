-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2022 at 07:49 PM
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
-- Database: `vehicle_spare_parts_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `C_id` int(5) NOT NULL,
  `password` varchar(25) NOT NULL,
  `C_mail` varchar(30) DEFAULT NULL,
  `C_phone` varchar(12) DEFAULT NULL,
  `C_add` varchar(30) DEFAULT NULL,
  `f_name` varchar(15) DEFAULT NULL,
  `l_name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_id`, `password`, `C_mail`, `C_phone`, `C_add`, `f_name`, `l_name`) VALUES
(14, 'e', 'e', 'e', '', 'e', 'e'),
(15, 'w', 'w', 'w', '', 'w', 'w');

-- --------------------------------------------------------

--
-- Table structure for table `customer_distributor`
--

CREATE TABLE `customer_distributor` (
  `C_id` int(5) NOT NULL,
  `D_id` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customer_spare_parts`
--

CREATE TABLE `customer_spare_parts` (
  `C_id` int(5) NOT NULL,
  `SP_id` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `D_id` varchar(5) NOT NULL,
  `D_name` varchar(30) DEFAULT NULL,
  `D_add` varchar(30) DEFAULT NULL,
  `D_phone` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `electric_part`
--

CREATE TABLE `electric_part` (
  `ep_name` varchar(20) DEFAULT NULL,
  `SP_id` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `C_id` int(5) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nut_bolt_part`
--

CREATE TABLE `nut_bolt_part` (
  `np_name` varchar(20) DEFAULT NULL,
  `SP_id` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_1`
--

CREATE TABLE `order_1` (
  `O_no` varchar(5) NOT NULL,
  `O_date` date DEFAULT NULL,
  `D_id` varchar(5) DEFAULT NULL,
  `S_id` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rubber_part`
--

CREATE TABLE `rubber_part` (
  `rp_name` varchar(20) DEFAULT NULL,
  `SP_id` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `spare_parts`
--

CREATE TABLE `spare_parts` (
  `SP_id` varchar(8) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `S_id` varchar(5) NOT NULL,
  `S_name` varchar(30) DEFAULT NULL,
  `S_add` varchar(30) DEFAULT NULL,
  `S_phone` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff_spare_parts`
--

CREATE TABLE `staff_spare_parts` (
  `S_id` varchar(5) DEFAULT NULL,
  `SP_id` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transmission_part`
--

CREATE TABLE `transmission_part` (
  `tr_name` varchar(20) DEFAULT NULL,
  `SP_id` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`C_id`);

--
-- Indexes for table `customer_distributor`
--
ALTER TABLE `customer_distributor`
  ADD KEY `customer_distributor_ibfk_1` (`D_id`),
  ADD KEY `customer_distributor_ibfk_2` (`C_id`);

--
-- Indexes for table `customer_spare_parts`
--
ALTER TABLE `customer_spare_parts`
  ADD KEY `SP_id` (`SP_id`),
  ADD KEY `customer_spare_parts_ibfk_3` (`C_id`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`D_id`);

--
-- Indexes for table `electric_part`
--
ALTER TABLE `electric_part`
  ADD KEY `SP_id` (`SP_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`password`),
  ADD KEY `login_ibfk_1` (`C_id`);

--
-- Indexes for table `nut_bolt_part`
--
ALTER TABLE `nut_bolt_part`
  ADD KEY `SP_id` (`SP_id`);

--
-- Indexes for table `order_1`
--
ALTER TABLE `order_1`
  ADD PRIMARY KEY (`O_no`),
  ADD KEY `D_id` (`D_id`),
  ADD KEY `S_id` (`S_id`);

--
-- Indexes for table `rubber_part`
--
ALTER TABLE `rubber_part`
  ADD KEY `SP_id` (`SP_id`);

--
-- Indexes for table `spare_parts`
--
ALTER TABLE `spare_parts`
  ADD PRIMARY KEY (`SP_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`S_id`);

--
-- Indexes for table `staff_spare_parts`
--
ALTER TABLE `staff_spare_parts`
  ADD KEY `S_id` (`S_id`),
  ADD KEY `SP_id` (`SP_id`);

--
-- Indexes for table `transmission_part`
--
ALTER TABLE `transmission_part`
  ADD KEY `SP_id` (`SP_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `C_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_distributor`
--
ALTER TABLE `customer_distributor`
  ADD CONSTRAINT `customer_distributor_ibfk_1` FOREIGN KEY (`D_id`) REFERENCES `distributor` (`D_id`),
  ADD CONSTRAINT `customer_distributor_ibfk_2` FOREIGN KEY (`C_id`) REFERENCES `customer` (`C_id`);

--
-- Constraints for table `customer_spare_parts`
--
ALTER TABLE `customer_spare_parts`
  ADD CONSTRAINT `customer_spare_parts_ibfk_2` FOREIGN KEY (`SP_id`) REFERENCES `spare_parts` (`SP_id`),
  ADD CONSTRAINT `customer_spare_parts_ibfk_3` FOREIGN KEY (`C_id`) REFERENCES `customer` (`C_id`);

--
-- Constraints for table `electric_part`
--
ALTER TABLE `electric_part`
  ADD CONSTRAINT `electric_part_ibfk_1` FOREIGN KEY (`SP_id`) REFERENCES `spare_parts` (`SP_id`);

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`C_id`) REFERENCES `customer` (`C_id`);

--
-- Constraints for table `nut_bolt_part`
--
ALTER TABLE `nut_bolt_part`
  ADD CONSTRAINT `nut_bolt_part_ibfk_1` FOREIGN KEY (`SP_id`) REFERENCES `spare_parts` (`SP_id`);

--
-- Constraints for table `order_1`
--
ALTER TABLE `order_1`
  ADD CONSTRAINT `order_1_ibfk_1` FOREIGN KEY (`D_id`) REFERENCES `distributor` (`D_id`),
  ADD CONSTRAINT `order_1_ibfk_2` FOREIGN KEY (`S_id`) REFERENCES `staff` (`S_id`);

--
-- Constraints for table `rubber_part`
--
ALTER TABLE `rubber_part`
  ADD CONSTRAINT `rubber_part_ibfk_1` FOREIGN KEY (`SP_id`) REFERENCES `spare_parts` (`SP_id`);

--
-- Constraints for table `staff_spare_parts`
--
ALTER TABLE `staff_spare_parts`
  ADD CONSTRAINT `staff_spare_parts_ibfk_1` FOREIGN KEY (`S_id`) REFERENCES `staff` (`S_id`),
  ADD CONSTRAINT `staff_spare_parts_ibfk_2` FOREIGN KEY (`SP_id`) REFERENCES `spare_parts` (`SP_id`);

--
-- Constraints for table `transmission_part`
--
ALTER TABLE `transmission_part`
  ADD CONSTRAINT `transmission_part_ibfk_1` FOREIGN KEY (`SP_id`) REFERENCES `spare_parts` (`SP_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
