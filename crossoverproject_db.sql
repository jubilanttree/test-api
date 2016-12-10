-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2016 at 09:44 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crossoverproject_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `metalist`
--

CREATE TABLE IF NOT EXISTS `metalist` (
  `meta_sno` int(55) NOT NULL AUTO_INCREMENT,
  `metrics_test` int(55) NOT NULL,
  `metrics_maintainability` int(55) NOT NULL,
  `metrics_security` int(55) NOT NULL,
  `metrics_workmanship` int(55) NOT NULL,
  `unit_test_val_1` int(55) NOT NULL,
  `unit_test_val_2` int(55) NOT NULL,
  `unit_code_covered` int(55) NOT NULL,
  `functional_test_val_1` int(55) NOT NULL,
  `functional_test_val_2` int(55) NOT NULL,
  `functional_code_covered` int(55) NOT NULL,
  `uniqueId` int(55) NOT NULL,
  `result` varchar(255) NOT NULL,
  `change` varchar(255) NOT NULL,
  PRIMARY KEY (`meta_sno`),
  UNIQUE KEY `uniqueId` (`uniqueId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `metalist`
--

INSERT INTO `metalist` (`meta_sno`, `metrics_test`, `metrics_maintainability`, `metrics_security`, `metrics_workmanship`, `unit_test_val_1`, `unit_test_val_2`, `unit_code_covered`, `functional_test_val_1`, `functional_test_val_2`, `functional_code_covered`, `uniqueId`, `result`, `change`) VALUES
(1, 64, 72, 64, 53, 142, 10, 76, 4321, 2145, 48, 11111, '', ''),
(2, 72, 64, 53, 64, 30, 120, 50, 300, 600, 60, 22222, 'Running', ''),
(3, 20, 19, 30, 34, 59, 90, 68, 33, 100, 98, 33333, 'Metrics Reduction', 'Change Rejected'),
(4, 99, 52, 86, 32, 3651, 1500, 48, 65, 150, 78, 44444, 'Complete', ''),
(5, 99, 52, 86, 32, 1500, 1500, 48, 65, 150, 69, 55555, 'Metrics Reduction', 'Change Rejected'),
(6, 99, 52, 86, 66, 1500, 1500, 48, 65, 150, 66, 66666, 'Auto-Merged', 'Change Accepted');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `sno` int(55) NOT NULL AUTO_INCREMENT,
  `change_build` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `time_started` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `metrics` int(55) NOT NULL,
  `build` int(55) NOT NULL,
  `unit_test` int(55) NOT NULL,
  `functional_test` int(55) NOT NULL,
  `unique_id` int(55) NOT NULL,
  PRIMARY KEY (`sno`),
  UNIQUE KEY `unique_id` (`unique_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`sno`, `change_build`, `owner`, `time_started`, `state`, `metrics`, `build`, `unit_test`, `functional_test`, `unique_id`) VALUES
(1, 'Tenrox-R1_1235', '', '', 'Pending', 1, 1, 1, 1, 11111),
(2, '432462', 'jtuck', '4/18/2014 12:12pm', 'Running', 2, 1, 1, 1, 22222),
(3, '432461', 'samy', '4/18/2014 12:12pm', 'Rejected', 3, 4, 4, 4, 33333),
(4, 'Tenrox-R1_1234', '', '4/18/2014 12:12pm', 'Completed', 4, 4, 4, 4, 44444),
(5, '432460', 'oduk', '4/18/2014 12:12pm', 'Rejected', 3, 1, 1, 1, 55555),
(6, '432459', '', '4/18/2014 12:12pm', 'Accepted', 4, 4, 4, 4, 66666);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
