-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Aug 17, 2021 at 05:03 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `c_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `account_no` int(13) DEFAULT NULL,
  `cur_balance` float NOT NULL,
  PRIMARY KEY (`c_id`),
  KEY `c_id` (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`c_id`, `name`, `email`, `account_no`, `cur_balance`) VALUES
(1, 'Bhagya Saikia', 'bhagya@gmail.com', 612234346, 18500),
(2, 'Pori Borah', 'pori@gmail.com', 786534793, 33500),
(3, 'Reeta Nath', 'reeta@gmail.com', 765432873, 18200.5),
(4, 'Karan Sharma', 'karan@gmail.com', 678453984, 41055),
(5, 'Veer Medhi', 'veer@gmail.com', 876985655, 6900.5),
(6, 'Nanu Boruah', 'nanu@gmail.com', 876567456, 21500),
(7, 'Barbie Paul', 'barbie@gmail.com', 987567665, 48400.5),
(8, 'Richa Reddy', 'richa@gmail.com', 876567985, 12500),
(9, 'Meena Hazarika', 'meena@gmail.com', 987567664, 23000.5),
(10, 'Ram Bhuyan', 'ram@gmail.com', 677567664, 25500);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sender_id` int(20) NOT NULL,
  `sender_account` int(20) NOT NULL,
  `receiver_id` int(20) NOT NULL,
  `receiver_account` int(20) NOT NULL,
  `amount` float NOT NULL,
  `transfer_time` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `sender_id`, `sender_account`, `receiver_id`, `receiver_account`, `amount`, `transfer_time`) VALUES
(1, 4, 678453984, 1, 612234346, 5000, '2021-07-05 02:09:54'),
(2, 7, 987567665, 1, 612234346, 5000, '2021-07-05 02:11:28'),
(3, 9, 987567664, 6, 876567456, 2000, '2021-07-05 02:13:53'),
(4, 1, 612234346, 10, 677567664, 3000, '2021-07-05 02:19:54'),
(5, 1, 612234346, 3, 765432873, 3000, '2021-07-05 07:51:11'),
(6, 10, 677567664, 8, 876567985, 500, '2021-07-05 17:43:54'),
(7, 8, 876567985, 10, 677567664, 500, '2021-07-05 17:50:02'),
(8, 4, 678453984, 7, 987567665, 500, '2021-07-07 06:36:02'),
(9, 4, 678453984, 7, 987567665, 500, '2021-07-07 06:37:07'),
(10, 4, 678453984, 7, 987567665, 500, '2021-07-07 06:37:42'),
(11, 4, 678453984, 7, 987567665, 500, '2021-07-07 06:39:15'),
(12, 4, 678453984, 7, 987567665, 500, '2021-07-07 06:43:43'),
(13, 4, 678453984, 7, 987567665, 500, '2021-07-07 06:45:28'),
(14, 4, 678453984, 7, 987567665, 500, '2021-07-07 06:45:53'),
(15, 4, 678453984, 7, 987567665, 500, '2021-07-07 06:51:25'),
(16, 4, 678453984, 7, 987567665, 500, '2021-07-07 06:51:55'),
(17, 4, 678453984, 7, 987567665, 500, '2021-07-07 06:53:04'),
(18, 4, 678453984, 7, 987567665, 500, '2021-07-07 06:53:45'),
(19, 4, 678453984, 7, 987567665, 500, '2021-07-07 06:54:16'),
(20, 4, 678453984, 7, 987567665, 500, '2021-07-07 06:54:33'),
(21, 4, 678453984, 7, 987567665, 500, '2021-07-07 07:02:34'),
(22, 4, 678453984, 7, 987567665, 500, '2021-07-07 07:02:51'),
(23, 4, 678453984, 7, 987567665, 500, '2021-07-07 07:03:07'),
(24, 4, 678453984, 7, 987567665, 500, '2021-07-07 07:03:19'),
(25, 4, 678453984, 7, 987567665, 500, '2021-07-07 07:06:48'),
(26, 4, 678453984, 7, 987567665, 500, '2021-07-07 07:07:53'),
(27, 4, 678453984, 3, 765432873, 500, '2021-07-07 07:20:07'),
(28, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:21:53'),
(29, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:22:31'),
(30, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:22:40'),
(31, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:22:54'),
(32, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:23:21'),
(33, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:23:37'),
(34, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:25:35'),
(35, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:25:37'),
(36, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:27:16'),
(37, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:28:47'),
(38, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:29:21'),
(39, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:29:40'),
(40, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:29:54'),
(41, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:30:04'),
(42, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:30:59'),
(43, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:31:34'),
(44, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:32:11'),
(45, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:32:21'),
(46, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:32:34'),
(47, 3, 765432873, 10, 677567664, 400, '2021-07-07 07:34:01'),
(48, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:35:51'),
(49, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:36:05'),
(50, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:36:12'),
(51, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:36:54'),
(52, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:37:29'),
(53, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:37:50'),
(54, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:42:00'),
(55, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:44:30'),
(56, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:44:49'),
(57, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:45:34'),
(58, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:46:14'),
(59, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:46:44'),
(60, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:46:57'),
(61, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:47:08'),
(62, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:47:15'),
(63, 7, 987567665, 4, 678453984, 2000, '2021-07-07 07:47:26'),
(64, 7, 987567665, 3, 765432873, 200, '2021-07-07 07:48:21'),
(65, 4, 678453984, 2, 786534793, 500, '2021-07-07 10:45:57'),
(66, 4, 678453984, 2, 786534793, 500, '2021-07-07 10:46:38'),
(67, 3, 765432873, 5, 876985655, 500, '2021-07-07 10:53:18'),
(68, 1, 612234346, 7, 987567665, 2000, '2021-07-07 11:39:11'),
(69, 8, 876567985, 7, 987567665, 500, '2021-07-07 11:40:53'),
(70, 1, 612234346, 4, 678453984, 500, '2021-07-07 11:42:22'),
(71, 1, 612234346, 7, 987567665, 2000, '2021-07-07 15:32:57'),
(72, 6, 876567456, 5, 876985655, 500, '2021-07-07 15:37:00'),
(73, 1, 612234346, 7, 987567665, 2000, '2021-07-07 15:39:32'),
(74, 3, 765432873, 7, 987567665, 2000, '2021-07-07 15:48:53'),
(75, 3, 765432873, 7, 987567665, 2000, '2021-07-07 15:55:22'),
(76, 1, 612234346, 3, 765432873, 2000, '2021-08-11 17:51:31'),
(77, 4, 678453984, 2, 786534793, 500, '2021-08-12 12:57:23'),
(78, 3, 765432873, 5, 876985655, 500, '2021-08-12 13:02:58'),
(79, 3, 765432873, 7, 987567665, 600, '2021-08-17 04:54:54');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
