-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2024 at 10:51 PM
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
-- Database: `dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `chinese`
--

CREATE TABLE `chinese` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chinese_test`
--

CREATE TABLE `chinese_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `english`
--

CREATE TABLE `english` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `english`
--

INSERT INTO `english` (`id`, `question`, `answer`, `level`) VALUES
(1, 'is red a color or a fruit?', 'color', 'beginner');

-- --------------------------------------------------------

--
-- Table structure for table `english_test`
--

CREATE TABLE `english_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `english_test`
--

INSERT INTO `english_test` (`id`, `question`, `answer`) VALUES
(1, 'What is the capital of the UK?', 'London'),
(2, 'What is the past tense of \"run\"?', 'ran'),
(3, 'What is the synonym of \"happy\"?', 'joyful'),
(4, 'How do you say \"hello\" in Spanish?', 'hola'),
(5, 'What is 2 + 2?', '4'),
(6, 'Name a fruit that is yellow.', 'banana'),
(7, 'What is the largest mammal?', 'blue whale'),
(8, 'How many continents are there?', '7');

-- --------------------------------------------------------

--
-- Table structure for table `french`
--

CREATE TABLE `french` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `french_test`
--

CREATE TABLE `french_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `german`
--

CREATE TABLE `german` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `german_test`
--

CREATE TABLE `german_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `italian`
--

CREATE TABLE `italian` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `italian_test`
--

CREATE TABLE `italian_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `russian`
--

CREATE TABLE `russian` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `russian_test`
--

CREATE TABLE `russian_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spanish`
--

CREATE TABLE `spanish` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spanish_test`
--

CREATE TABLE `spanish_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chinese`
--
ALTER TABLE `chinese`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chinese_test`
--
ALTER TABLE `chinese_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `english`
--
ALTER TABLE `english`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `english_test`
--
ALTER TABLE `english_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `french`
--
ALTER TABLE `french`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `french_test`
--
ALTER TABLE `french_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `german`
--
ALTER TABLE `german`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `german_test`
--
ALTER TABLE `german_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `italian`
--
ALTER TABLE `italian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `italian_test`
--
ALTER TABLE `italian_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `russian`
--
ALTER TABLE `russian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `russian_test`
--
ALTER TABLE `russian_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spanish`
--
ALTER TABLE `spanish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spanish_test`
--
ALTER TABLE `spanish_test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chinese`
--
ALTER TABLE `chinese`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chinese_test`
--
ALTER TABLE `chinese_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `english`
--
ALTER TABLE `english`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `english_test`
--
ALTER TABLE `english_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `french`
--
ALTER TABLE `french`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `french_test`
--
ALTER TABLE `french_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `german`
--
ALTER TABLE `german`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `german_test`
--
ALTER TABLE `german_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `italian`
--
ALTER TABLE `italian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `italian_test`
--
ALTER TABLE `italian_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `russian`
--
ALTER TABLE `russian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `russian_test`
--
ALTER TABLE `russian_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spanish`
--
ALTER TABLE `spanish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spanish_test`
--
ALTER TABLE `spanish_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
