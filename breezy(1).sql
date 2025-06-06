-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2025 at 11:37 PM
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
-- Database: `breezy`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `message` varchar(200) NOT NULL,
  `indate` date NOT NULL,
  `outdate` date NOT NULL,
  `number` int(20) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `room` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`name`, `email`, `phone`, `message`, `indate`, `outdate`, `number`, `destination`, `room`) VALUES
('harpreet', 'harpreet12@gmail.com', 2147483647, 'work', '2025-04-02', '2025-04-10', 7, 'manali', 'suite'),
('Simer', 'sssimerr@gmail.com', 2147483647, 'ok', '2025-04-10', '2025-04-24', 9, 'kanyakumari', 'deluxe'),
('Simer', 'sssimerr@gmail.com', 2147483647, 'ok', '2025-04-10', '2025-04-24', 9, 'kanyakumari', 'deluxe'),
('teddy', 'teddy@gmail.com', 2147483647, 'yeah', '2025-03-28', '2025-04-03', 6, 'heaven', 'executive'),
('SIM', 'sss@gmail.com', 2147483647, 'nice', '2025-03-27', '2025-03-30', 4, 'serene', 'deluxe'),
('Harpreet Kaur ', 'harpreet12@gmail.com', 2147483647, 'no', '2025-04-09', '2025-04-18', 5, 'houseboat', 'family'),
('santra', 'santra15@gmail.com', 2147483647, 'no', '2025-04-21', '2025-04-24', 5, 'manali', 'executive'),
('santra', 'santra15@gmail.com', 2147483647, 'no', '2025-04-25', '2025-04-29', 6, 'ladakh', 'executive'),
('sarah', 'sarah167@gmail.com', 2147483647, 'ok', '2025-04-25', '2025-04-30', 5, 'houseboat', 'family'),
('Harpreet Kaur ', 'harpreetkaur55@gmail.com', 2147483647, 'ok', '2025-04-25', '2025-04-28', 5, 'ladakh', 'suite');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `phone`, `destination`, `message`) VALUES
('simer', 'simer.preet1515@gmail.com', 2147483647, 'assam', 'ok fine'),
('simer', 'simer.preet1515@gmail.com', 2147483647, 'assam', 'ok fine'),
('teddy', 'teddy@gmail.com', 2147483647, 'jammu&kashmir', 'ryytm'),
('harpreet', 'harpreet12@gmail.com', 2147483647, 'jammu&kashmir', 'goood nice'),
('harpreet', 'harpreet12@gmail.com', 2147483647, 'kerala', 'tell me'),
('sarah', 'sarah167@gmail.com', 2147483647, 'himachalpradesh', 'thank you'),
('santra', 'santra15@gmail.com', 2147483647, 'jammu&kashmir', 'help');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(10) NOT NULL,
  `age` int(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL,
  `message` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `age`, `email`, `phone`, `message`) VALUES
('sheero', 15, 'sheero@gmail.com', 2147483647, 'goodd'),
('sheero', 15, 'sheero@gmail.com', 2147483647, 'goodd'),
('Simer', 20, 'simer.preet1515@mail.com', 2147483647, 'nice work'),
('harpreet', 23, 'teddy@gmail.com', 2147483647, 'good site'),
('santra', 1, 'santra15@gmail.com', 2147483647, 'very nice website');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'khushal_klair_', '$2y$10$YteTWhgPan2sYQtDvgIE8.52AEKIBcixwtRXkYRLt4gqqu6gPOk7K', ''),
(8, 'simer54_pp', '$2y$10$sA2bD/CgnDNebwgpbC1FUOQ4bDkzOvIwh775BG7eiEWeiXj5k0EyC', ''),
(9, 'simer_15', '$2y$10$wlp0EZbdkazSV4sijrHSp.FtrTFDdEPzB0upf1.Cyz8NB3r0RIzAu', 'simer@gmail.com'),
(10, 'simer_15', 'black15', 'simer@gmail.com'),
(11, 'simer_15', 'black15', 'simer.preet1515@gmail.com'),
(12, 'simer_15', 'black123', 'simer.preet@gmail.com'),
(13, 'teddy65', 'teddy67', 'teddy@gmail.com'),
(14, 'harpreet56', 'hk89kaur', 'harpreet12@gmail.com'),
(15, 'harpreet', 'hkaur12', 'harpreet12@gmail.com'),
(16, 'harpreet', 'harpreet555', 'harpreetkaur55@gmail.com'),
(17, 'santra15', 'santra15', 'santra15@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
