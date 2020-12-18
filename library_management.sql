-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2020 at 02:07 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_information`
--

CREATE TABLE `book_information` (
  `isbn` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `publisher` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_information`
--

INSERT INTO `book_information` (`isbn`, `name`, `category`, `status`, `author`, `publisher`) VALUES
(1001, 'book1', 'adventure', 'available', 'author1', 'publisher1'),
(1002, 'book2', 'comic', 'not_available', 'author2', 'publisher2'),
(1003, 'book3', 'science_fiction', 'available', 'author3', 'publisher3'),
(1004, 'book4', 'poetry', 'available', 'author4', 'publisher4'),
(1005, 'book5', 'biographies', 'available', 'author5', 'publisher5');

-- --------------------------------------------------------

--
-- Table structure for table `card_information`
--

CREATE TABLE `card_information` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `section` varchar(2) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `book_name` varchar(80) DEFAULT NULL,
  `isbn` int(11) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `returned_date` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card_information`
--

INSERT INTO `card_information` (`id`, `name`, `section`, `class`, `book_name`, `isbn`, `issue_date`, `returned_date`, `status`) VALUES
(1, 'joy', 'c', 8, 'book3', 1003, '2020-10-01', '2020-11-15', 'received'),
(2, 'akil', 'c', 9, 'book5', 1005, '2020-10-11', '2020-11-28', 'received'),
(3, 'mim', 'a', 10, 'book4', 1004, '2020-10-09', '2020-11-25', 'received'),
(4, 'rakib', 'd', 7, 'book2', 1002, '2020-10-05', '2020-11-20', 'received'),
(5, 'habib', 'b', 8, 'book1', 1001, '2020-10-15', '2020-11-29', 'received');

-- --------------------------------------------------------

--
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `section` varchar(2) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `shift` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`id`, `name`, `section`, `class`, `shift`) VALUES
(1, 'joy', 'c', 8, 'day'),
(2, 'akil', 'c', 9, 'morning'),
(3, 'mim', 'a', 10, 'morning'),
(4, 'rakib', 'd', 7, 'day'),
(5, 'habib', 'b', 8, 'day');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_information`
--
ALTER TABLE `book_information`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `card_information`
--
ALTER TABLE `card_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student_information`
--
ALTER TABLE `student_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
