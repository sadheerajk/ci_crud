-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2019 at 01:54 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE IF NOT EXISTS `persons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `firstName`, `lastName`, `gender`, `address`, `dob`, `photo`) VALUES
(8, 'Kashif', 'Zulifqar', 'male', 'village natha gala,dis Ponch', '2016-12-16', '1482161516379.JPG'),
(9, 'Hassan', 'Khan', 'male', 'kdksflkdfklsfjdfkfjsdkfsd', '2016-12-21', '1482161782115.JPG'),
(10, 'Aqib', 'KHan', 'male', 'asdksdlaskdslds', '2016-12-07', '1482161801771.JPG'),
(11, 'Mujhtaba', 'Ahmed', 'male', 's;ldkdlasdkasldksdl', '2017-01-19', '1482161818618.JPG'),
(12, 'Muhammad', 'Saddam Azad', 'male', 'sdklsds;ldskd', '2017-01-19', '1482161837580.JPG'),
(13, 'Danyal', 'Rashid', 'male', 'as;ldksldkdsld', '2017-02-15', '1482161861859.JPG'),
(14, 'Zohaib', 'Jamil', 'male', 'alkdadlaak;sdl', '2017-02-02', '1482161932485.JPG'),
(15, 'Salik', 'Javid', 'male', 'sklfsflkflfs', '2017-02-08', '1482161986727.JPG'),
(17, 'Zeeshan', 'Amin', 'male', 'dfklsflkfsdl', '2017-01-31', '1482162456474.JPG'),
(18, 'Atif', 'Mumtaz', 'male', 'Dist poonch,TEH Rawalakot City Rawalakot', '2017-01-04', '1482162529989.JPG'),
(19, 'Muhammad', 'Sadheer', 'male', 'District Poonch,TEH Hajira City Dhar Bazaar AK.', '1995-12-01', '1482162637609.JPG');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
