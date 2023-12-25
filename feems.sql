-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2023 at 08:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feems`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` char(4) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(30) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `Java` varchar(5) NOT NULL,
  `Python` varchar(5) NOT NULL,
  `DS` varchar(5) NOT NULL,
  `AOA` varchar(5) NOT NULL,
  `total` int(4) NOT NULL,
  `paid` int(4) NOT NULL,
  `Cheque No` varchar(20) NOT NULL,
  `Bank name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `mobile`, `name`, `address`, `date`, `Java`, `Python`, `DS`, `AOA`, `total`, `paid`, `Cheque No`, `Bank name`) VALUES
('1234', 9321572497, 'Kaustubh Bane', 'Vazira Jayesh , Borivali', '2022-11-22', '✔', '✔', '✘', '✔', 6800, 5800, '', ''),
('ABCD', 9109108282, 'Swayam Kandarkar', 'Vazira Jayesh, Borivali', '2023-11-10', '✔', '✔', '✘', '✔', 6800, 6000, 'AYKUGNFCLZM23', 'SBI'),
('6789', 8866142685, 'Aayush Raul', 'Riddhi Siddhi, Borivali', '2023-08-07', '✔', '✔', '✔', '✔', 9800, 9800, '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
