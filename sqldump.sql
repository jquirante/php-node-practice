-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 18, 2018 at 10:42 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `c1018db`
--

-- --------------------------------------------------------

--
-- Table structure for table `currentNumber`
--

CREATE TABLE `currentNumber` (
  `ID` mediumint(8) UNSIGNED NOT NULL,
  `number` int(10) UNSIGNED NOT NULL,
  `numberCode` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currentNumber`
--

INSERT INTO `currentNumber` (`ID`, `number`, `numberCode`) VALUES
(1, 62, '5c1960b47c10b'),
(2, 87, '5c1962b2b7896'),
(3, 65, '5c1965f1db53f'),
(4, 62, '5c1967bdd428e'),
(5, 63, '5c19752a445b6'),
(6, 77, '5c1976918cb0a'),
(7, 81, '5c1976e371724');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `currentNumber`
--
ALTER TABLE `currentNumber`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `currentNumber`
--
ALTER TABLE `currentNumber`
  MODIFY `ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
