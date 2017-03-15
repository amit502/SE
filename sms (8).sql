-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2017 at 03:03 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `ID` int(11) NOT NULL,
  `TT_ID` int(11) DEFAULT NULL,
  `CLASS_ID` int(11) DEFAULT NULL,
  `PROF_ID` int(11) DEFAULT NULL,
  `TYPE` varchar(10) DEFAULT NULL,
  `LENGTH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`ID`, `TT_ID`, `CLASS_ID`, `PROF_ID`, `TYPE`, `LENGTH`) VALUES
(1, 1, 7, 1, 'MANDATORY', 1),
(2, 1, 7, 2, 'MANDATORY', 1),
(12, 1, 7, 1, 'MANDATORY', 1),
(19, 1, 7, 2, 'MANDATORY', 1),
(20, 1, 7, 2, 'MANDATORY', 1),
(36, 1, 15, 1, 'MANDATORY', 1),
(40, 1, 26, 23, 'MANDATORY', 1),
(41, 1, 26, 23, 'MANDATORY', 1),
(42, 1, 26, 23, 'MANDATORY', 1),
(43, 2, 29, 31, 'MANDATORY', 1),
(44, 2, 29, 31, 'DESIRABLE', 1),
(45, 2, 29, 31, 'MANDATORY', 1),
(46, 2, 32, 31, 'MANDATORY', 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `year` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `class` int(11) NOT NULL,
  `Nepali` int(11) NOT NULL,
  `English` int(11) NOT NULL,
  `Math` int(11) NOT NULL,
  `Social Studies` int(11) NOT NULL,
  `Science` int(11) NOT NULL,
  `Population and Environent` int(11) NOT NULL,
  `Subject 7` int(11) NOT NULL,
  `Subject 8` int(11) NOT NULL,
  `Subject 9` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `postedby` varchar(100) NOT NULL,
  `news` longtext NOT NULL,
  `subject` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `postedby`, `news`, `subject`, `date`) VALUES
(1, 'sanjay', 'Routine is to come.', 'notice', '2017-02-14'),
(10, 'Amit', 'Tomorrow is holiday.', 'Holiday', '2017-02-14'),
(11, 'Patel', 'Probability exam on 2073/11/09.', 'Exam', '2017-02-14'),
(12, 'Amit Patel', 'My name is amit.....', 'OK', '2017-02-14'),
(13, 'pppppp', 'ppppppppppppppppppppppppppppp', 'ppppppp', '2017-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `ID` int(11) NOT NULL,
  `TT_ID` int(11) DEFAULT NULL,
  `TYPE` varchar(10) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `AVL` text,
  `CONTAINS` varchar(100) DEFAULT NULL,
  `SIZE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`ID`, `TT_ID`, `TYPE`, `NAME`, `AVL`, `CONTAINS`, `SIZE`) VALUES
(29, 2, 'CLASS', 'class1', '', NULL, 50),
(30, 2, 'ROOM', 'r1', '', NULL, 50),
(31, 2, 'PROF', 'Amit', NULL, NULL, 0),
(32, 2, 'CLASS', 'class2', '', NULL, 50),
(41, 2, 'PROF', 'Anu Patel', '', NULL, 0),
(42, 2, 'PROF', 'Lachan Prasad  Chaurasiya', '', NULL, 0),
(43, 2, 'PROF', 'Ash Kumar  Jha', '', NULL, 0),
(44, 2, 'PROF', 'Lachan Prasad  Chaurasiya', '', NULL, 0),
(45, 2, 'PROF', 'Saroj Prasad  Chauhan', '', NULL, 0),
(46, 2, 'PROF', 'Akhileshwar Prasad  Chaurasiya', '', NULL, 0),
(47, 2, 'PROF', 'Sundar Pandit  Kumhal', '', NULL, 0),
(48, 2, 'PROF', 'Mimtaj  Aalam', '', NULL, 0),
(49, 2, 'PROF', 'Jagdev   Prasad', '', NULL, 0),
(50, 2, 'PROF', 'Ramlakhan Prasad  Chaurasiya', '', NULL, 0),
(51, 2, 'PROF', 'Rajeshwar Prasad  Chai', '', NULL, 0),
(52, 2, 'PROF', 'Pramod Prasad  Chaurasuya', '', NULL, 0),
(53, 2, 'PROF', 'Harindra Prasad  Chaurasiya', '', NULL, 0),
(54, 2, 'PROF', 'Parsuram  Tiwari', '', NULL, 0),
(55, 2, 'PROF', 'Kishori  Mukhiya', '', NULL, 0),
(56, 2, 'PROF', 'Jitendra Prasad  Chaurasiya', '', NULL, 0),
(57, 2, 'PROF', 'Manita Mishra', '', NULL, 0),
(58, 2, 'PROF', 'Ashok Kumar  Chaurasiya', '', NULL, 0),
(59, 2, 'PROF', 'Awadhkishor Prasad  Chaurasiya', '', NULL, 0),
(60, 2, 'PROF', 'Kunti Devi  Mukhiya', '', NULL, 0),
(61, 2, 'PROF', 'Shindhu Kumari  Devi', '', NULL, 0),
(62, 2, 'PROF', 'Pramila   Rauniyar', '', NULL, 0),
(63, 2, 'PROF', 'Chanchala Kumari Kanu', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sched_activities`
--

CREATE TABLE `sched_activities` (
  `ID` int(11) NOT NULL,
  `TT_ID` int(11) DEFAULT NULL,
  `CLASS_ID` int(11) DEFAULT NULL,
  `PROF_ID` int(11) DEFAULT NULL,
  `ROOM_ID` int(11) DEFAULT NULL,
  `DAY` int(11) DEFAULT NULL,
  `INT_NO` int(11) DEFAULT NULL,
  `TWEAK` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sched_activities`
--

INSERT INTO `sched_activities` (`ID`, `TT_ID`, `CLASS_ID`, `PROF_ID`, `ROOM_ID`, `DAY`, `INT_NO`, `TWEAK`) VALUES
(688, 2, 32, 31, 30, 5, 2, 0),
(689, 2, 29, 31, 30, 2, 5, 0),
(690, 2, 29, 31, 30, 3, 2, 0),
(691, 2, 29, 31, 30, 5, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `structures`
--

CREATE TABLE `structures` (
  `user_id` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `m1` varchar(11) NOT NULL DEFAULT 'Not Paid',
  `m2` varchar(11) NOT NULL DEFAULT 'Not Paid',
  `m3` varchar(11) NOT NULL DEFAULT 'Not Paid',
  `m4` varchar(11) NOT NULL DEFAULT 'Not Paid',
  `m5` varchar(11) NOT NULL DEFAULT 'Not Paid',
  `m6` varchar(11) NOT NULL DEFAULT 'Not Paid',
  `m7` varchar(11) NOT NULL DEFAULT 'Not Paid',
  `m8` varchar(11) NOT NULL DEFAULT 'Not Paid',
  `m9` varchar(11) NOT NULL DEFAULT 'Not Paid',
  `m10` varchar(11) NOT NULL DEFAULT 'Not Paid',
  `m11` varchar(11) NOT NULL DEFAULT 'Not Paid',
  `m12` varchar(11) NOT NULL DEFAULT 'Not Paid',
  `Remaining` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `structures`
--

INSERT INTO `structures` (`user_id`, `Name`, `m1`, `m2`, `m3`, `m4`, `m5`, `m6`, `m7`, `m8`, `m9`, `m10`, `m11`, `m12`, `Remaining`) VALUES
('st1017821870', 'Ragini Chaurasiya', 'Paid', 'Paid', 'Paid', 'Paid', 'Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 0),
('st135959580', 'Pranil GC', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 0),
('st25588418', 'Amit Kumar Patel', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_table`
--

CREATE TABLE `student_table` (
  `student_id` varchar(40) NOT NULL,
  `std_roll_no` int(11) NOT NULL,
  `dob` varchar(12) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `email` varchar(64) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `Status` varchar(40) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `Year` year(4) DEFAULT NULL,
  `class` int(11) DEFAULT NULL,
  `father` varchar(60) NOT NULL,
  `mother` varchar(60) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `fee` int(11) NOT NULL,
  `scholarship` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_table`
--

INSERT INTO `student_table` (`student_id`, `std_roll_no`, `dob`, `gender`, `email`, `phone`, `address`, `Status`, `Year`, `class`, `father`, `mother`, `student_name`, `fee`, `scholarship`) VALUES
('st1017821870', 25, '01/09/2064', 'female', '', '', '', 'Enrolled', 2017, 6, 'Not Mention', 'Not Mention', 'Ragini Chaurasiya', 600, 0),
('st1018638858', 14, '01/12/2065', 'female', '', '', '', 'Enrolled', 2017, 8, 'Ramprabesh Baitha', 'Anita Devi', 'Anshu Kumari Baitha', 800, 0),
('st1024762928', 12, '10/05/2065', 'male', '', '', '', 'Enrolled', 2017, 5, 'Ijarail Miya ', 'Phulasaiwan Khatun', 'Sajad Miya Dhobi', 500, 0),
('st1029011470', 28, '03/12/2061', 'female', '', '', '', 'Enrolled', 2017, 2, 'Ramkishor Sah', 'Lalmati Devi', 'Anjana Kumari Teli', 200, 0),
('st1037044284', 30, '22/1/2060', 'female', '', '', '', 'Enrolled', 2017, 5, 'Lakshuman Mukhiya Bin', 'Not Mention', 'Suman Kumari Bin', 500, 0),
('st1049797482', 3, '15/1/2066', 'female', '', '', '', 'Enrolled', 2017, 7, 'Pashuram Thakur Hajam', 'Mina Devi', 'Priti Kumari Hajam', 700, 0),
('st1058547358', 7, '16/8/2058', 'male', '', '', '', 'Enrolled', 2017, 9, 'Awadhkisor Mukhiya', 'Ramkumari Devi', 'Rajkumar Bin', 900, 0),
('st1061262757', 4, '10/04/2059', 'female', '', '', '', 'Enrolled', 2017, 1, 'Murat Prasad yadv', 'Lalmuni Devi', 'Puja Kumari  Yadav', 100, 0),
('st1075488168', 24, '19/1/2068', 'female', '', '', '', 'Enrolled', 2017, 10, 'Aasha Ram', 'Rabita Kumari Devi', 'Lalsa Kumari Ram', 1000, 0),
('st1080036994', 14, '20/10/2062', 'female', '', '', '', 'Enrolled', 2017, 6, 'Lakshuman Pandit Kohar', 'Koshila Devi', 'Priyi Kumari Kohar', 600, 0),
('st1081435229', 4, '10/07/2065', 'female', '', '', '', 'Enrolled', 2017, 7, 'Panalal Prasad Chauhan', 'Sangita Devi', 'Rima Kumari  Chauhan', 700, 0),
('st1117550984', 29, '03/01/2065', 'male', '', '', '', 'Enrolled', 2017, 7, 'Arbind Mukhiya Bin', 'Not Mention', 'Santanu Mukhiya  Bin', 700, 0),
('st1127372022', 18, '17/6/2061', 'female', '', '', '', 'Enrolled', 2017, 3, 'Tulsi Sah', 'Not Mention', 'Aasha Kumari Teli', 300, 0),
('st1131914455', 12, '03/01/2060', 'female', '', '', '', 'Enrolled', 2017, 2, 'Chandeshwar Patel', 'Sipati Devi', 'Jiska Kumari Kurmi', 200, 0),
('st1140049786', 12, '02/10/2063', 'male', '', '', '', 'Enrolled', 2017, 3, 'Kamlesh Sonar', 'Not Mention', 'Ashis Sonar', 300, 0),
('st1156218664', 2, '10/05/2065', 'female', '', '', '', 'Enrolled', 2017, 8, 'Chandeswar Prasad Kurmi', 'Mina Devi', 'Tanu Kumari Patel', 900, 0),
('st1160298945', 7, '08/12/2064', 'female', '', '', '', 'Enrolled', 2017, 8, '-', '-', 'Arti Kumari Mukhiya', 800, 0),
('st1162588218', 21, '18/1/2065', 'female', '', '', '', 'Enrolled', 2017, 7, 'Sahadew Hajara Dusad', 'Not Mention', 'Gudiya Kumari Paswan', 700, 0),
('st1164377903', 6, '04/03/2067', 'female', '', '', '', 'Enrolled', 2017, 10, 'Anil Kumar Sarraff', 'Sandhya Devi', 'Pinki Kumari Sonar', 1000, 0),
('st1173129319', 14, '01/03/2063', 'female', '', '', '', 'Enrolled', 2017, 5, 'Mahanth Sah Goth', 'Sushila Devi', 'Mamata Kumari  Sah', 500, 0),
('st1178911330', 27, '05/06/2071', 'female', '', '', '', 'Enrolled', 2017, 8, 'Samir Sah ', 'Renu Devi', 'Shalu Kumari Sarraff', 800, 0),
('st1184870184', 20, '10/01/2061', 'female', '', '', '', 'Enrolled', 2017, 2, 'Nagendra Chaurasiya', 'Not Mention', 'Anamika  Chaurasiya', 200, 0),
('st1189171927', 29, 'Gita Devi', 'female', '', '', '', 'Enrolled', 2017, 10, 'Hiralal Prasad Chaurasiya', 'Gita Devi', 'Archana Kumari  Chaurasiya', 1000, 0),
('st1199163982', 22, '10/08/2065', 'female', '', '', '', 'Enrolled', 2017, 9, 'Ramesh Kumar Chaurasiya', 'Antima Devi', 'Rina Kumari Chaurasiya', 900, 0),
('st1223272213', 18, '05/03/2060', 'female', '', '', '', 'Enrolled', 2017, 5, 'Ramshiw Mahato', 'Not Mention', 'Rabita Kumari Tatwa', 500, 0),
('st1226381966', 8, '13/10/2063 ', 'female', '', '', '', 'Enrolled', 2017, 8, 'Rambabu Sah Telii', 'Rukhamina Devi', 'Susama Kumari Teli', 800, 0),
('st1227480646', 15, '15/7/2066', 'female', '', '', '', 'Enrolled', 2017, 8, 'Kamles Sah Sonar', 'Suraswati Devi', 'Amrita Kumari Sonar', 800, 0),
('st1236389153', 27, '30/6/2068', 'female', '', '', '', 'Enrolled', 2017, 10, 'Amod Prasad Kurmi', 'Babita Devi', 'Anuska Kumari Patel', 1000, 0),
('st1241494332', 27, '20/8/2063', 'female', '', '', '', 'Enrolled', 2017, 6, 'Arjun Prasad Chauhan', 'Sonamati Devi', 'Nibha Kumari Chauhan', 600, 0),
('st124492125', 17, '20/8/2064', 'male', '', '', '', 'Enrolled', 2017, 4, 'Ramayodhya Prasad Chauhan', 'Suchita Devi', 'Jata Shankar Chauhan', 400, 0),
('st1259398860', 17, '01/07/2068', 'male', '', '', '', 'Enrolled', 2017, 10, 'Manoj Mukhiya', 'Krisnawati Devi', 'Niraj Mukhiya Bin', 1000, 0),
('st126304823', 15, '05/07/2060', 'female', '', '', '', 'Enrolled', 2017, 3, 'Jain Rai Sharma ', 'Mina Devi', 'Urmila Kumari Lohar', 300, 0),
('st1264107037', 16, '15/12/2062', 'female', '', '', '', 'Enrolled', 2017, 6, 'Shiwnath Prasad Barai', 'Gyanti Chaurasiya', 'Suryarekha Kumari Chaurasiya', 600, 0),
('st1311966379', 7, '05/04/2059', 'male', '', '', '', 'Enrolled', 2017, 2, 'Meghraj Ram', 'Koshila Devi', 'Lalbabu  Ram', 200, 0),
('st1325317603', 15, '18/3/2065', 'female', '', '', '', 'Enrolled', 2017, 7, 'Mahesh Prasad Teli', 'Urmila Devi', 'Susita Kumari  Teli', 700, 0),
('st1326011703', 24, '10/03/2065', 'female', '', '', '', 'Enrolled', 2017, 8, 'Motilal Hajara', 'Manju Devi', 'Arti Kumari Hajara', 800, 0),
('st1336061360', 18, '22/6/2066', 'female', '', '', '', 'Enrolled', 2017, 10, 'Shivpujan Mukhiya Bin', 'Sima Devi', 'Nandani Kumari Bin', 1000, 0),
('st1337196698', 27, '10/10/2054', 'female', '', '', '', 'Enrolled', 2017, 1, 'Shivmangal Prasad Yadav', 'Binda Devi Yadav', 'Chhema Sah', 100, 0),
('st1348388102', 2, '10/03/2061', 'female', '', '', '', 'Enrolled', 2017, 4, 'Ramesawar Mahato', 'Sugandhi Devi', 'Anjani Kumari Tatwa', 400, 0),
('st1351474826', 6, '03/04/2062', 'male', '', '', '', 'Enrolled', 2017, 3, 'Bholalu Mukhiya', 'Not Mention', 'Prahalad Bin', 300, 0),
('st135959580', 31, '1994-03-06', 'male', '', '9841334455', 'Pulchowk', 'Enrolled', 2017, 8, 'Om GC', 'Mina GC', 'Pranil GC', 1400, 100),
('st1372011580', 9, '22/6/2065', 'female', '', '', '', 'Enrolled', 2017, 3, 'Amirka Mahara', 'Phulmatiya', 'Shila Kumari Ram ', 300, 0),
('st1373199182', 10, '01/01/2058', 'female', '', '', '', 'Enrolled', 2017, 1, 'Sikendra Prasad Chauhan', 'Sakuntala Devi', 'Arti Kumari Chauhan', 100, 0),
('st1400945945', 30, '06/11/2064', 'female', '', '', '', 'Enrolled', 2017, 7, 'Upendra Sah Sonar', 'Anita Devi', 'Anjali Kumari Sonar', 700, 0),
('st1407186986', 23, '03/02/2063', 'female', '', '', '', 'Enrolled', 2017, 5, 'Not Mention', 'Not Mention', 'Sugi Kumari Ram', 500, 0),
('st140860264', 13, '07/06/2057', 'male', '', '', '', 'Enrolled', 2017, 1, 'Parma Sah Kalwar', 'Manawati Devi', 'Bipin Kumar Sah', 100, 0),
('st1412406053', 3, '05/06/2071', 'female', '', '', '', 'Enrolled', 2017, 9, 'Suman Mukhiya', '', 'Binita Kumari Bin', 900, 0),
('st1413523560', 40, '06/08/2068', 'male', '', '', '', 'Enrolled', 2017, 10, 'Shushil Thakur Lohar', 'Shanti Devi', 'Rupesh Thakur Lohar', 1000, 0),
('st141878069', 6, '01/02/2060', 'male', '', '', '', 'Enrolled', 2017, 4, 'Panalal Chaurasiya ', 'Not Mention', ' Milan Kumar Chaurasiya ', 400, 0),
('st1424883612', 18, '15/1/2062', 'female', '', '', '', 'Enrolled', 2017, 2, 'Najir Miya', 'Not Mention', 'Sogari Khatun Dhobi', 200, 0),
('st1427602516', 25, '28/6/2058', 'female', '', '', '', 'Enrolled', 2017, 2, 'Ramchandra Barai', 'Genda Devi', 'Ramdulari  Chaurasiya', 200, 0),
('st1438200371', 15, '10/02/2071', 'male', '', '', '', 'Enrolled', 2017, 10, 'Byas Mukhiya Bin', 'Kunti Devi', 'Dipesh Mukhiya Bin', 1000, 0),
('st1460063482', 34, '15/6/2059', 'female', '', '', '', 'Enrolled', 2017, 10, 'Chokat Sah Kanu', 'M', 'Soshila Kumari Kanu', 1000, 0),
('st1472640488', 25, '18/3/2064', 'female', '', '', '', 'Enrolled', 2017, 7, 'Mahesh Sah', 'Urmila Devi', 'aarti Kumari Teli', 700, 0),
('st1476995583', 11, '16/3/2064', 'female', '', '', '', 'Enrolled', 2017, 9, 'Utim Ram', 'Rampati Devi', 'Nisha Kumari Ram', 900, 0),
('st1487461161', 11, '15/1/2057', 'male', '', '', '', 'Enrolled', 2017, 1, 'Lalkishor Sah Teli', 'Amita Devi', 'Ramil Kumar  Sah', 100, 0),
('st1494181348', 17, '05/04/2062', 'male', '', '', '', 'Enrolled', 2017, 6, 'Jagadis Mahato', 'Koshila Devi', 'Gandhari Prasad Chauhan', 600, 0),
('st1494427715', 15, '15/7/2060', 'male', '', '', '', 'Enrolled', 2017, 5, 'Prabhu Ram', 'Rambha Devi', 'Jayprakash  Ram', 500, 0),
('st1507514690', 20, '15/10/2058', 'female', '', '', '', 'Enrolled', 2017, 5, 'Chokat Ram', 'Sabita Devi', 'Murti Kumari Ram', 500, 0),
('st1509058423', 18, '01/01/2063', 'female', '', '', '', 'Enrolled', 2017, 9, '-', '-', 'Antima Kumari Chaurasiya', 900, 0),
('st1540541310', 20, '07/07/2071', 'female', '', '', '', 'Enrolled', 2017, 10, 'Gambhira Sah Sarraff', 'Mana Dvi', 'Priti Kumari Sarraff', 1000, 0),
('st1558156780', 17, '15/1/2063', 'female', '', '', '', 'Enrolled', 2017, 3, 'Hiralal Mukhiya', 'Mira Devi', 'Jyoti Kumari Bin', 300, 0),
('st1584001709', 26, '05/02/2059', 'female', '', '', '', 'Enrolled', 2017, 2, 'Ramadhar Padit', 'Jhariya Devi', 'Majha Kumari Kohar', 200, 0),
('st1595182522', 26, '20/8/2062', 'female', '', '', '', 'Enrolled', 2017, 3, 'Umesh Sah Sonar', 'Sita Devi', 'Ganga Kumari Sonar', 300, 0),
('st1599367416', 21, '25/9/2063', 'male', '', '', '', 'Enrolled', 2017, 6, 'Jakir Husen', 'Not Mention', 'Manir Husen Dhobi', 600, 0),
('st1638068921', 19, '12/02/2065', 'male', '', '', '', 'Enrolled', 2017, 8, 'Rameshwar Goth', 'Shripati Devi', 'Gajaraj Kumar Goth', 800, 0),
('st1638230123', 39, '19/10/2061', 'female', '', '', '', 'Enrolled', 2017, 10, 'Ram Asis Mahara', 'Rita Devi', 'Niva Kumari Ram', 1000, 0),
('st1639374747', 26, '25/1/2064', 'female', '', '', '', 'Enrolled', 2017, 7, 'Ramji Prasad Chaurasiya', 'Kabita Kumari Devi', 'Anjani Kumari Chaurasiya', 700, 0),
('st1645002808', 31, '14/2/2067', 'female', '', '', '', 'Enrolled', 2017, 10, 'Santosh Mukhiya Bin', 'Genu Devi', 'Sumitra Kumari Bin', 1000, 0),
('st1651025796', 28, '04/10/2062', 'female', '', '', '', 'Enrolled', 2017, 4, 'Bishwas Padit', 'Sumintra Devi', 'Anjali Kumari Kohar', 400, 0),
('st1651243062', 5, '05/01/2067', 'female', '', '', '', 'Enrolled', 2017, 6, 'Ranjit Kumar Chaurasiya', 'Shoshila Devi ', 'Anusaka Kumari Chaurasiya ', 5000, 0),
('st1657134373', 3, '04/01/2061', 'female', '', '', '', 'Enrolled', 2017, 2, 'Pramod Ram', 'Sona Devi', 'Rupa Kumari Ram', 200, 0),
('st1657877857', 29, '10/02/2062', 'female', '', '', '', 'Enrolled', 2017, 2, 'Basti Chaurasiya', 'Lalmuni', 'Rani Kumari Chaurasiya', 200, 0),
('st1668103037', 30, '05/02/2067', 'female', '', '', '', 'Enrolled', 2017, 10, 'Mukesh Ram', 'Manti Devi', 'Sabita Kumari Ram', 1000, 0),
('st1678885336', 14, '03/01/2060', 'male', '', '', '', 'Enrolled', 2017, 2, 'Hirdesh Chaurasiya', 'Anita Devi', 'Bhushan Kumar Chaurasiya', 200, 0),
('st1683453709', 25, '10/05/2060', 'female', '', '', '', 'Enrolled', 2017, 5, 'Mahabir Sah', 'Sumitra Devi', 'Urmila Kumari Sah', 500, 0),
('st1695829813', 22, '03/02/2062', 'female', '', '', '', 'Enrolled', 2017, 2, 'Rajeswar Ram', 'Not Mention', 'Kabita Kumari Ram', 200, 0),
('st1714240944', 29, '25/6/2065', 'female', '', '', '', 'Enrolled', 2017, 8, 'Shiwpujan Mukhiya Bin', 'Sima Devi', 'Anjani Kumari Bin', 800, 0),
('st1719594908', 19, '19/10/2060', 'female', '', '', '', 'Enrolled', 2017, 4, 'Ramashish Mahara', 'Rita Devi', 'Pushpa Kumari Ram', 400, 0),
('st1723815066', 13, '05/01/2060', 'female', '', '', '', 'Enrolled', 2017, 3, 'Kanahi Thakur Hajam', 'Prabha Devi', 'Babali Kumari Chaurasiya', 300, 0),
('st17477007', 11, '10/02/2062', 'female', '', '', '', 'Enrolled', 2017, 6, 'Naresh Ram', 'Anita Devi', 'Shila Kumari Ram', 600, 0),
('st1752072556', 25, '07/03/2065', 'female', '', '', '', 'Enrolled', 2017, 8, 'Asha Ram', 'Rabina Devi', 'Chanda Kumari Ram', 800, 0),
('st175829866', 3, '20/1/2062', 'female', '', '', '', 'Enrolled', 2017, 5, 'Not Mention', 'Not Mention', 'Roshani Kumari Chaurasiya', 500, 0),
('st1769528846', 12, '03/01/2066', 'male', '', '', '', 'Enrolled', 2017, 8, 'Bhagawan Mukhiya Bin ', 'Ramjyoti Devi', 'Dipak Mukhiya Bin', 800, 0),
('st1774878326', 27, '06/01/2066', 'female', '', '', '', 'Enrolled', 2017, 9, 'Byash Mukhiya', 'Kunti Devi', 'Babita Kumari Bin', 900, 0),
('st1778811515', 8, '10/05/2062', 'female', '', '', '', 'Enrolled', 2017, 2, 'Joglal Ram', 'Rina Devi', 'Muskan Kumari Ram', 200, 0),
('st1787482991', 16, '05/01/2059', 'male', '', '', '', 'Enrolled', 2017, 2, 'Chhathulal Chaurasiya', 'Rajvanti Devi', 'Angad Chaurasiya', 200, 0),
('st1792421341', 3, '10/02/2060', 'male', '', '', '', 'Enrolled', 2017, 3, 'Awadh Kishor Mukhiya ', 'Ramkumari Devi', 'Rajwanshi Bin', 300, 0),
('st1795251762', 1, '15/5/2066', 'female', '', '', '', 'Enrolled', 2017, 9, 'Santosh Kumar Chauhan', 'M', 'Khushbu Kumari Chauhan', 900, 0),
('st1800943518', 18, '10/10/2065', 'female', '', '', '', 'Enrolled', 2017, 7, 'unknown', 'unknown', 'Rina Kumari Ram', 700, 0),
('st1810946188', 17, '12/10/2063', 'male', '', '', '', 'Enrolled', 2017, 5, 'Shrilal Ram', 'Not Mention', 'Rajan Ram', 500, 0),
('st1823192411', 7, '02/01/2057', 'male', '', '', '', 'Enrolled', 2017, 1, 'Prabhu Prasad Chauhan', 'Sangita Devi', 'Sandip Kumar Chauhan', 100, 0),
('st1835177757', 32, '15/2/2068', 'male', '', '', '', 'Enrolled', 2017, 10, 'Santosh Mukhiya Bin', 'Genu Devi', 'Akash Mukhiya', 1000, 0),
('st1837915610', 29, '10/02/2061', 'female', '', '', '', 'Enrolled', 2017, 3, 'Man Bahadur Shrestha', 'Bishnu Shrestha', 'Hom Kumari Shrestha', 300, 0),
('st1876266815', 10, '20/1/2068', 'female', '', '', '', 'Enrolled', 2017, 10, 'Chokat Mahara ', 'Sabita Devi', 'Babiya Kumari Chamar', 1000, 0),
('st1878221331', 18, '10/04/2061', 'male', '', '', '', 'Enrolled', 2017, 4, 'Shriramji Prasad Chaurasiya', 'Kabita Devi', 'Rambinay  Chaurasiya', 400, 0),
('st1914175661', 24, '05/07/2063', 'male', '', '', '', 'Enrolled', 2017, 4, 'Banu Mahara Chamar', 'Not Mention', 'Ladu Ram', 400, 0),
('st1951140199', 16, '10/06/2065', 'female', '', '', '', 'Enrolled', 2017, 7, 'Ramesh Raut Bin', 'unknown', 'Priti Kumari Bin', 700, 0),
('st1993217879', 9, '11/02/2059', 'male', '', '', '', 'Enrolled', 2017, 1, 'Mahindra Mahato Koeri', 'Rina Devi', 'Nikesh Mahato Koeri', 100, 0),
('st2017564262', 21, '07/06/2066', 'male', '', '', '', 'Enrolled', 2017, 8, 'Sahadew Paswan', 'Shripati Dusadin', 'Rupak Paswan', 800, 0),
('st2018860184', 9, '01/04/2068', 'male', '', '', '', 'Enrolled', 2017, 10, 'Naresh Baitha', 'Gita Devi', 'Nitesh Kumar Baitha', 1000, 0),
('st2030179244', 10, '05/01/2061', 'female', '', '', '', 'Enrolled', 2017, 8, 'Rambabu Sah Teli', 'Rukhamina Devi', 'Mamata Kumari Teli', 800, 0),
('st2031589799', 20, '29/1/2059', 'male', '', '', '', 'Enrolled', 2017, 1, 'Ida Miya Hawari', 'Shaiwan Khatun', 'Taiyab Miya Sah', 100, 0),
('st2082919412', 24, '25/7/2062', 'male', '', '', '', 'Enrolled', 2017, 9, 'Shiwpujan Prasad Chaurasiya', 'Nirmala Devi', 'Mandip Kumar Chaurasiya', 900, 0),
('st2092981428', 22, '04/04/2060', 'male', '', '', '', 'Enrolled', 2017, 4, 'Sonadat Chaurasiya', 'Not Mention', 'Prem Sagar  Chaurasiya', 400, 0),
('st2098548205', 19, '03/02/2062', 'female', '', '', '', 'Enrolled', 2017, 6, 'Sonalal Prasad Koiri', 'Sabita Devi', 'Rima Kumari Kushwaha', 600, 0),
('st2112234608', 23, '31/4/2066', 'female', '', '', '', 'Enrolled', 2017, 8, 'Asha Mukhiya Bin', 'Rekha Devi', 'Rima Kumari Bin', 800, 0),
('st2126057343', 11, '05/01/2062', 'female', '', '', '', 'Enrolled', 2017, 2, 'Utim Sharma', 'Sosila Devi', 'Dipawali Kumari Lihar', 200, 0),
('st2128027927', 2, '20/12/2058', 'female', '', '', '', 'Enrolled', 2017, 1, 'Rumae Miya', 'Rasulbani Khatun', 'Salma Khatun', 100, 0),
('st2130567123', 48, '10/05/2067', 'female', '', '', '', 'Enrolled', 2017, 10, 'Awadhkishor Mukhiya', 'Ramdulari Devi', 'Kanti Kumari Bin', 1000, 0),
('st2137736165', 29, '20/7/2064', 'female', '', '', '', 'Enrolled', 2017, 9, 'Byas Mukhiya Bin', 'Kunti Devi', 'Puja Kumari Mukhiya ', 900, 0),
('st2143919964', 20, '04/12/2062', 'female', '', '', '', 'Enrolled', 2017, 6, 'Shiwpujan Mukhiya', 'Rajkumari', 'Rajni Kumari Mukhiya', 600, 0),
('st2147261426', 4, '08/05/2065', 'female', '', '', '', 'Enrolled', 2017, 8, '', '', 'Amrita Kumari Lohar', 800, 0),
('st2159526478', 7, '03/04/2062', 'male', '', '', '', 'Enrolled', 2017, 3, 'Arjun Mukhiya', 'Kisanauti', 'Shatan Bin ', 300, 0),
('st2164765408', 14, '12/08/2058', 'male', '', '', '', 'Enrolled', 2017, 1, 'Rambakas Prasad Chaurasiya', 'Babita Devi Chaurasiya', 'Rajababu  Sah', 100, 0),
('st2170677709', 24, '20/1/2062', 'female', '', '', '', 'Enrolled', 2017, 6, 'Chokat Sah Kanu', 'Saraswati Devi', 'Suman Kumari Kanu', 600, 0),
('st217154632', 1, '10/03/2065', 'male', '', '', '', 'Enrolled', 2017, 6, 'Pappu Kumar Chaurasiya ', 'Not Mention', 'Nikhil Kumar Chaurasiya', 600, 0),
('st2173122097', 12, '05/01/2063', 'female', '', '', '', 'Enrolled', 2017, 4, 'Binod Kumar Chaurasiya', 'Pana Devi', 'Sanchita Kumari Chaurasiya', 400, 0),
('st220116725', 15, '10/01/2066', 'male', '', '', '', 'Enrolled', 2017, 9, 'Biswas Pandit', 'Sangita Devi', 'Birendra Kumar Padit ', 900, 0),
('st2208810662', 27, '07/01/2060', 'male', '', '', '', 'Enrolled', 2017, 2, 'Not Mention', 'Not Mention', 'Rajkumar  Chauhan', 200, 0),
('st2209754867', 5, '05/06/2062', 'female', '', '', '', 'Enrolled', 2017, 8, 'Ramshiw Mahato Tatwa ', 'Suwasni Devi', 'Kajali Kumari Tatwa', 800, 0),
('st2221548264', 13, '04/03/2061', 'female', '', '', '', 'Enrolled', 2017, 5, 'Ramshiw Ram', 'Not Mention', 'Rabita Kumari Ram', 500, 0),
('st2222101076', 20, '10/02/2061', 'female', '', '', '', 'Enrolled', 2017, 3, 'Samsul Miya Dhobi', 'Not Mention', 'Rehana Khatun Dhobi', 300, 0),
('st2222627610', 10, '15/2/2064', 'female', '', '', '', 'Enrolled', 2017, 7, 'Ijrail Miya', 'Phusaiban Khatun', 'Sakhina Khatun', 700, 0),
('st2229235353', 8, '25/10/2067', 'female', '', '', '', 'Enrolled', 2017, 10, 'Kamlesh Sah Sonar', 'Sursati Devi Sonar', 'Asmita Kumari Sonar', 0, 0),
('st2235792888', 28, '10/01/2053', 'female', '', '', '', 'Enrolled', 2017, 1, 'Sikendra Prasad Chaurasiya', 'Mina Devi', 'Gayatri  Sah', 100, 0),
('st2239515909', 22, '01/08/2068', 'male', '', '', '', 'Enrolled', 2017, 10, 'Anil Kumar Sonar', 'Sandewa Devi', 'Bikash Kumar Sarraff', 1000, 0),
('st2292959834', 16, '05/01/2063', 'female', '', '', '', 'Enrolled', 2017, 4, 'Hiralal Prasad Chaurasiya', 'Not Mention', 'Minta Kumari Chaurasiya', 400, 0),
('st2293175519', 5, '05/04/2062', 'male', '', '', '', 'Enrolled', 2017, 2, 'Chhotelal Sah', 'Not Mention', 'Ashis Teli', 200, 0),
('st2311383116', 14, '18/3/2062', 'female', '', '', '', 'Enrolled', 2017, 7, 'Mahesh Prasad Teli', 'Urmila Devi', 'Krin Kumari Teli', 700, 0),
('st2337745844', 8, '01/10/2064', 'female', '', '', '', 'Enrolled', 2017, 7, 'Ramniwas Chaurasiya', 'Sangita Devi', 'Chanda Kumari Chaurasiya', 700, 0),
('st2365384395', 35, '10/01/2062', 'female', '', '', '', 'Enrolled', 2017, 10, 'Chokat Sah Kamu', 'M', 'Suman Kumari Kanu', 1000, 0),
('st2382139009', 12, '10/09/2068', 'female', '', '', '', 'Enrolled', 2017, 9, 'Dinesh Ram', 'Sakuntala Devi', 'Nilama Kumari Ram', 900, 0),
('st2407245790', 26, '07/07/2065', 'male', '', '', '', 'Enrolled', 2017, 8, 'Gambhira Sah Sonar', 'Mina Dev', 'Suman Kumar Sarraff', 800, 0),
('st2409724991', 1, '10/07/2064', 'female', '', '', '', 'Enrolled', 2017, 5, 'Not Mention', 'Not Mention', 'Sabitri Mukhiya Bin', 500, 0),
('st2429114009', 3, '15/3/2060', 'female', '', '', '', 'Enrolled', 2017, 4, 'Shriram Kamkar', 'Not Mention', 'Sona Kumari Kamkar', 400, 0),
('st2506989005', 17, '05/01/2054', 'male', '', '', '', 'Enrolled', 2017, 1, 'Dinanath Mahato Koeri', 'Uma Devi', 'Jitlal Sah', 100, 0),
('st2521306512', 2, '10/07/2064', 'female', '', '', '', 'Enrolled', 2017, 9, 'Arbind Mukhiya', '-', 'Manti Kumari Bin', 900, 0),
('st2527991715', 20, '25/5/2063', 'female', '', '', '', 'Enrolled', 2017, 4, 'Thag Prasad Padit', 'Ramdulari Devi', 'Khushbu Kumari Padit', 400, 0),
('st2536335090', 23, '05/07/2062', 'female', '', '', '', 'Enrolled', 2017, 6, 'Bipendra Prasad Kumhal', 'Lalita Devi', 'Chandani Kumari Pandit', 600, 0),
('st253756532', 18, '25/3/2060', 'female', '', '', '', 'Enrolled', 2017, 8, 'Rameshwar Goth', 'Shripati Devi', 'Priti Kumari Goth', 800, 0),
('st25588418', 32, '2002-03-14', 'male', '', '9841575754', 'Madhopur', 'Enrolled', 2017, 8, 'JayNarayan Raut', 'Anita Devi Raut', 'Amit Kumar Patel', 1500, 100),
('st2573922147', 30, '10/10/2066', 'female', '', '', '', 'Enrolled', 2017, 9, 'Pinku Kumar Chaurasuya', 'Suman Devi', 'Priti Kumari Chaurasiya ', 900, 0),
('st2594720005', 14, '02/01/2065', 'female', '', '', '', 'Enrolled', 2017, 9, 'Dipedra Prasad Kumhal', 'Sunita Devi', 'Kalpna Kumari Padit', 900, 0),
('st2609275396', 9, '05/01/2061', 'female', '', '', '', 'Enrolled', 2017, 8, 'Rambabu Sah Teli ', 'Rukhamina Devi', 'Mamata Kumari Teli', 800, 0),
('st2611662948', 13, '07/02/2063', 'female', '', '', '', 'Enrolled', 2017, 4, 'Ramprabesh Ram', 'Not Mention', 'Rubi Kumari Ram', 400, 0),
('st261710999', 16, '05/05/2059', 'female', '', '', '', 'Enrolled', 2017, 1, 'Ganesh Prasad Kanu', 'Laxmi Devi', 'Bandana  Sah', 100, 0),
('st2620024626', 19, '25/12/2063', 'female', '', '', '', 'Enrolled', 2017, 9, 'Tapsi Pandit', 'Rankali Devi', 'Mamta Kumari Padit', 900, 0),
('st2621333230', 6, '03/01/2058', 'female', '', '', '', 'Enrolled', 2017, 2, 'Rajendra Ram', 'Minta Devi', 'Lalpari Kumari Ram', 200, 0),
('st2625168657', 4, '11/10/2071', 'female', '', '', '', 'Enrolled', 2017, 9, 'Bhola Mukhiya ', 'Shanti Devi', 'Manita Kumari Bin ', 900, 0),
('st2627093146', 3, '10/03/2065', 'female', '', '', '', 'Enrolled', 2017, 6, 'Ranraj Ram', 'Not Mention', 'Budhi Kumari Ram', 600, 0),
('st2637761083', 7, '27/7/2071', 'male', '', '', '', 'Enrolled', 2017, 10, 'Surendra Babu Sonar', 'Tetar Devi', 'Abhay Kumar Sah Sonar', 1000, 0),
('st2638090836', 2, '15/1/2066', 'male', '', '', '', 'Enrolled', 2017, 7, 'Kamles Sah Sonar', 'Anita Devi', 'Manish Kumar Sonar', 700, 0),
('st2656748109', 26, '16/2/2062', 'female', '', '', '', 'Enrolled', 2017, 4, 'Jakir Husen', 'Not Mention', 'Bishamila Dhobi', 400, 0),
('st2661444963', 1, '19/10/2066', 'female', '', '', '', 'Enrolled', 2017, 7, 'Birendra Mukhiya Bin', 'Rita Devi', 'Chathi Kumari Bin', 700, 0),
('st266505596', 5, '05/10/2061', 'male', '', '', '', 'Enrolled', 2017, 4, 'Binod Sharma', 'Nibha Devi', 'Shiwasahan Thakur Lohar', 400, 0),
('st2672273886', 28, '10/01/2065', 'female', '', '', '', 'Enrolled', 2017, 7, 'Panalal Chaurasiya', 'Not Mention', 'Nisha Kumari Chaursiya', 7, 0),
('st2686588487', 47, '21', 'female', '', '', '', 'Enrolled', 2017, 10, 'Shambu Ram', 'Gudiya Devi', 'Bhawani Kumari Ram', 1000, 0),
('st2696114619', 24, '10/01/2059', 'female', '', '', '', 'Enrolled', 2017, 5, 'Nathu Ram', 'Rajpati Devi', 'Kabita Kumaria Ram', 500, 0),
('st2697060436', 26, '10/01/2054', 'female', '', '', '', 'Enrolled', 2017, 1, 'Ram Ayodhya Prasad Chauhan', 'Sochita Devi', 'Krishna Kumari Sah', 100, 0),
('st2704697896', 38, '01/09/2064', 'female', '', '', '', 'Enrolled', 2017, 10, 'Hiralal Prasad Chaurasiya', 'M', 'Gita Kumari  Chaurasiya', 1000, 0),
('st2704863907', 27, '25/1/2060', 'male', '', '', '', 'Enrolled', 2017, 5, 'Rajeswar Ram', 'Lalmati Devi', 'Mandip Kumar Ram', 500, 0),
('st2707973418', 13, '24/6/2062', 'female', '', '', '', 'Enrolled', 2017, 6, 'Tapsi Pandit', 'Samakali Devi', 'Sunita Kumari Padit', 600, 0),
('st2717254934', 0, '10/02/2068', 'male', '', '', '', 'Enrolled', 2017, 10, 'Awadesh Ram', 'Lalti Devi', 'Pradip Ram', 1000, 0),
('st2718691956', 3, '04/03/2067', 'female', '', '', '', 'Enrolled', 2017, 10, 'Umesh Prasad Sonar', 'Sita Devi', 'Gudi Kumari', 1000, 0),
('st2723929567', 42, '12/04/2062', 'male', '', '', '', 'Enrolled', 2017, 10, 'Raghunath Mahara', 'Mina Devi', 'Akash Ram', 1000, 0),
('st2745961588', 1, '10/01/2066', 'female', '', '', '', 'Enrolled', 2017, 8, 'Shashi Prasad Chaurasiya', 'Sandhaya Devi', 'Karina Kumari Chaurasiya', 900, 0),
('st2769339862', 4, '23/1/2060', 'male', '', '', '', 'Enrolled', 2017, 2, 'Rambhu Mahara', 'Not Mention', 'Satpal Ram', 200, 0),
('st2778006711', 28, '02/01/2060', 'female', '', '', '', 'Enrolled', 2017, 5, 'Rajindra Ram', 'Minta Devi', 'Phulpari Kumari ', 500, 0),
('st2815034363', 6, '16/4/2064', 'male', '', '', '', 'Enrolled', 2017, 5, 'Chathu Mahara Chamar', 'Tetari Devi', 'Andip Mahar Chamar', 500, 0),
('st2820110405', 41, '18/2/2061', 'female', '', '', '', 'Enrolled', 2017, 10, 'Shushil Thakur Lohar', 'Shanti Devi', 'Roshani Thakur Lohar', 1000, 0),
('st2829527008', 25, '22/3/2068', 'male', '', '', '', 'Enrolled', 2017, 10, 'Sumit Babu Sarraff', 'Sangite Devi', 'Rahul Kumar Sarraff', 1000, 0),
('st283015867', 4, '06/05/2066', 'male', '', '', '', 'Enrolled', 2017, 10, 'Rajeshwar Ram ', 'Shova Devi', 'Niraj Ram', 1000, 0),
('st2837798641', 15, '05/01/2059', 'male', '', '', '', 'Enrolled', 2017, 2, 'Chhathulal Chaurasiya', 'Rajvanti Devi', 'Girdhari Sharan Chaurasiya', 200, 0),
('st2850573704', 15, '05/02/2062', 'female', '', '', '', 'Enrolled', 2017, 6, 'Ramesh Kumar Chaurasiya', 'Anita Devi', 'Rekha Kumari Chaurasiya ', 600, 0),
('st2855925863', 24, '26/7/2052', 'female', '', '', '', 'Enrolled', 2017, 1, 'Bachhan Thakur Hajam', 'Kanti Devi', 'Murti Kumari Sah', 100, 0),
('st2862975524', 1, '10/03/2063', 'female', '', '', '', 'Enrolled', 2017, 4, 'Birendra Ram', 'Nirmala Devi', 'Sanjana Kumari Ram', 500, 0),
('st2868368990', 23, '28/8/2061', 'male', '', '', '', 'Enrolled', 2017, 3, 'Sahadev Paswan', 'Sumitri Devi', 'Bishesh Dusad', 300, 0),
('st2878914699', 11, '10/04/2065', 'male', '', '', '', 'Enrolled', 2017, 8, 'Bhagawan Mukhiya Bin', 'Ramjyoti Devi', 'Shiwraj Mukhiya Bin', 800, 0),
('st2889642071', 15, '08/09/2055', 'male', '', '', '', 'Enrolled', 2017, 1, 'Matrika Mahato', 'Shoshila Devi', 'Laxmi  Sah', 100, 0),
('st2894848970', 27, '25/4/2063', 'female', '', '', '', 'Enrolled', 2017, 4, 'Ramayan Padit ', 'Saraswati Devi', 'Lalsa Kumari Kohar ', 400, 0),
('st2903129103', 45, '10/01/2065', 'male', '', '', '', 'Enrolled', 2017, 10, 'Dhiraj Shrma', 'M', 'Shiwraj Thakur Lohar', 1000, 0),
('st2935642929', 36, '19/4/2066', 'female', '', '', '', 'Enrolled', 2017, 10, 'Mukesh Ram', 'M', 'Amrita Kumari Ram', 1000, 0),
('st2938355491', 14, '05/01/2060', 'male', '', '', '', 'Enrolled', 2017, 3, 'Kanahi Thakur Hajam', 'Prabha Devi', 'Shivbalak Hajam', 300, 0),
('st2946277486', 7, '07/05/2067', 'female', '', '', '', 'Enrolled', 2017, 7, 'Subodh Prasad Chaurasiya', 'Anju Devi', 'Sonali Chaurasiya', 700, 0),
('st2953626435', 25, '15/1/2064', 'female', '', '', '', 'Enrolled', 2017, 9, 'Dinesh Ram', 'Sakuntala Devi', 'Dibya Kumari Ram', 900, 0),
('st2953959371', 26, '05/01/2067', 'female', '', '', '', 'Enrolled', 2017, 10, 'Mahesh Sah Teli', 'Urmila Devi', 'Nitu Kumari Teli', 1000, 0),
('st2970096721', 1, '10/10/2065', 'female', '', '', '', 'Enrolled', 2017, 10, 'Hiralal Mukhiya ', 'Mira Devi', 'Madhu Kumari   Mukhiya', 1000, 50),
('st299556692', 4, '15/11/2061', 'female', '', '', '', 'Enrolled', 2017, 5, 'Harindra Prasad Chaurasiya', 'Sumanti Devi', 'Menuka Kumari Chaurasiya', 500, 0),
('st3001821939', 8, '01/12/2063', 'female', '', '', '', 'Enrolled', 2017, 5, 'Not Mention', 'Not Mention', 'Ranjita Kumari  Chaurasiya', 500, 0),
('st3047653570', 7, '10/05/2065', 'female', '', '', '', 'Enrolled', 2017, 6, 'Sanjay Chaurasiya', 'Not Mention', 'Chandani Kumari Chaurasiya', 600, 0),
('st3049399386', 7, '05/09/2065', 'female', '', '', '', 'Enrolled', 2017, 5, 'Not Mention', 'Not Mention', 'Nilama Kumari  Ram', 500, 0),
('st3051148902', 15, '20/10/2062', 'female', '', '', '', 'Enrolled', 2017, 4, 'Lakshuman Padit Kohar', 'Koshila Devi', 'Priya Kumari Kohar', 400, 0),
('st3052782237', 19, '03/02/2061', 'female', '', '', '', 'Enrolled', 2017, 3, 'Bij Bihari Hajam', 'Not Mention', 'Rima Kumari Hajam', 300, 0),
('st3087827263', 5, '10/05/2064', 'female', '', '', '', 'Enrolled', 2017, 9, 'Jadolal Mukhiya', '', 'Manturi Kumari Mukhiya', 900, 0),
('st312027831', 4, '26/10/2064', 'female', '', '', '', 'Enrolled', 2017, 6, 'Birendra Mukhiya Bin ', 'Not Mention', 'Dewanti Kumari Mukhiya ', 600, 0),
('st3130633849', 22, '20/7/2064', 'female', '', '', '', 'Enrolled', 2017, 8, 'Byas Mukhiya Bin', 'Kunti', 'Puja Kumari Mukhiya', 800, 0),
('st313706767', 27, '05/04/2065', 'male', '', '', '', 'Enrolled', 2017, 7, 'Rajesawar Ram ', 'Shobha Devi', 'Sudhir Ram', 0, 0),
('st3147247250', 11, '02/10/2067', 'male', '', '', '', 'Enrolled', 2017, 10, 'Tapasi Padit', 'Ramkali Devi Padit ', 'Sujit Kumar Padit', 1000, 0),
('st3165464107', 16, '03/02/2062', 'female', '', '', '', 'Enrolled', 2017, 3, 'Rajeshwar Ram', 'Lalmati Devi', 'Kabita Kumari Ram', 300, 0),
('st3171362665', 5, '10/05/2067', 'male', '', '', '', 'Enrolled', 2017, 10, 'Raju Ram', 'Chinta Devi', 'Amrit Ram', 1000, 0),
('st3175577688', 30, '15/5/2066', 'male', '', '', '', 'Enrolled', 2017, 8, 'Phajil Miya Dhobi', 'Najma Khatun', 'Riyauj Miya Dhobi', 800, 0),
('st3253791813', 25, '15/1/2061', 'male', '', '', '', 'Enrolled', 2017, 3, 'Doman Prasad Sonar', 'Not Mention', 'Ganesh Kumar Sonar', 300, 0),
('st3256908985', 11, '18/3/2061', 'female', '', '', '', 'Enrolled', 2017, 4, 'Amirka Majhi', 'Sawariya Devi', 'Urmila Kumari Mushar', 400, 0),
('st3263193998', 16, '18/3/2064', 'male', '', '', '', 'Enrolled', 2017, 8, 'Chokat Ram', 'Sabita Devi', 'Kriahna Ram', 800, 0),
('st3290361842', 30, '15/5/2059', 'female', '', '', '', 'Enrolled', 2017, 6, 'Bhoal Mukhiya', 'Shanti Devi', 'Sunita Kumari Bin', 600, 0),
('st3295803862', 21, '14/12/2057', 'male', '', '', '', 'Enrolled', 2017, 1, 'Mahanand Mishra', 'Sita Devi Mishra', 'Bibek  Sah', 100, 0),
('st3296828015', 13, '06/04/2061', 'male', '', '', '', 'Enrolled', 2017, 2, 'Ajay Kumar', 'Pratima Devi', 'Amit Kumar  Chaursiya', 200, 0),
('st33153689', 1, '07/04/2057', 'female', '', '', '', 'Enrolled', 2017, 1, 'Ramayan Padit', 'Sarswati Devi', 'Nirmala Kumari Prajapati', 100, 0),
('st3322735449', 28, '15/6/2066', 'female', '', '', '', 'Enrolled', 2017, 8, 'Samid Miya Dhibi ', 'Sayada Khatun', 'Nurkali Khatun', 800, 0),
('st3323936488', 21, '27/4/2061', 'female', '', '', '', 'Enrolled', 2017, 2, 'Binod Mukhiya', 'Not Mention', 'Punam Kumari Mukhiya', 200, 0),
('st3328154727', 22, '10/08/2063', 'female', '', '', '', 'Enrolled', 2017, 5, 'Phajil Miya', 'Najama Khatun', 'Sakhina Khatun Dhobi ', 500, 0),
('st3335852369', 2, '22/6/2061', 'female', '', '', '', 'Enrolled', 2017, 2, 'Jaynarayan Sharma', 'Mina Dei', 'Sndhaya Kumari  Lohar', 200, 0),
('st3352465769', 8, '06/01/2065', 'female', '', '', '', 'Enrolled', 2017, 9, 'Shri Kant Prasad', '', 'Manisha Kumari Tatwa', 900, 0),
('st3352491398', 1, '05/04/2064', 'male', '', '', '', 'Enrolled', 2017, 3, 'Ramkishor Sah', 'Lalmati Devi', 'Dipesh Sah Teli', 300, 0),
('st3358585886', 5, '07/04/2063', 'female', '', '', '', 'Enrolled', 2017, 5, 'Not Mention', 'Not Mention', 'Priya Kumari Chaurasiya', 500, 0),
('st3401659237', 11, '02/06/2062', 'female', '', '', '', 'Enrolled', 2017, 5, 'Shankar Sah', 'Koshila Devi', 'Puja Kumari Kalwar ', 500, 0),
('st3403105144', 10, '12/04/2062', 'male', '', '', '', 'Enrolled', 2017, 2, 'Diraj Thakur', 'Not Mention', 'Anshu Kumar Lohar', 200, 0),
('st3416579431', 2, '10/01/2063', 'female', '', '', '', 'Enrolled', 2017, 5, 'Nandakisor Padit', 'Dhanwanti Devi', 'Usha Kumari Kohar', 500, 0),
('st3465597495', 2, '15/4/2065', 'male', '', '', '', 'Enrolled', 2017, 10, 'Shankar Sah', 'Koshilya Kumari Kalwar', 'Suraj Lal Sah', 1000, 50),
('st3481942125', 17, '16/3/2060', 'female', '', '', '', 'Enrolled', 2017, 2, 'Gagandev Chauhan', 'Not Mention', 'Nisha Kumari Chauhan', 200, 0),
('st3488126687', 19, '04/03/2061', 'female', '', '', '', 'Enrolled', 2017, 5, 'Ramshiw Mahato', 'Not Mention', 'Lalita Kumari Tatwa', 500, 0),
('st3488720464', 28, '12/12/2066', 'female', '', '', '', 'Enrolled', 2017, 10, 'Hiralal Prasad Chaurasiya', 'Gita Devi', 'Arti Kumari Chaurasiya', 1000, 0),
('st3513963915', 12, '07/05/2061', 'female', '', '', '', 'Enrolled', 2017, 7, 'unknown', 'unknown', 'Sunam Kumari Dusad', 700, 0),
('st352615477', 17, '16/10/2066', 'male', '', '', '', 'Enrolled', 2017, 8, 'Bikas Goth', 'Lalsa Devi', 'Jay Kumar Goth', 800, 0),
('st3541956655', 9, '27/1/2060', 'male', '', '', '', 'Enrolled', 2017, 2, 'Rajendra Ram', 'Minta Devi', 'Raju Ram', 200, 0),
('st358027160', 9, '11/03/2064', 'male', '', '', '', 'Enrolled', 2017, 9, 'Naresh Ram', '', 'Naresh Ram ', 900, 0),
('st3592564611', 20, '16/1/2065', 'female', '', '', '', 'Enrolled', 2017, 9, 'Tapsi Pandit', 'Ramkali Devi', 'Kiran Kumari Padit', 900, 0),
('st3594656589', 17, '10/06/2065', 'female', '', '', '', 'Enrolled', 2017, 7, 'Utim Sharma', 'Shoshila Devi', 'Rusum Kumari Lohar', 700, 0),
('st3597401515', 29, '08/10/2064', 'female', '', '', '', 'Enrolled', 2017, 6, 'Shashi Prasad Chaurasiya', 'Sandhya Devi', 'Karishama Kumari Chaurasiya', 600, 0),
('st3604155354', 12, '10/09/2057', 'female', '', '', '', 'Enrolled', 2017, 1, 'Suresh Prasad Chauhan', 'Gendawali Devi', 'Raj Kumari Sah', 100, 0),
('st3605506150', 24, '15/1/2060', 'male', '', '', '', 'Enrolled', 2017, 2, 'Sankar Ram', 'Sipati Devi', 'Sunil Kumar  Ram', 200, 0),
('st3616480935', 44, '03/05/2062', 'male', '', '', '', 'Enrolled', 2017, 10, 'Prabhu Ram', 'Lilawati Devi', 'Sandip Kumar Ram', 1000, 0),
('st3677850472', 16, '31/12/2066', 'male', '', '', '', 'Enrolled', 2017, 9, '-', '-', 'Santosh Kumar Tatwa', 900, 0),
('st3703466130', 30, '05/03/2065', 'female', '', '', '', 'Enrolled', 2017, 4, 'Nandkishor Padit', 'Dhanawanti Devi', 'Suraj Kumar Kohar', 400, 0),
('st3749201010', 6, '11/10/2057', 'male', '', '', '', 'Enrolled', 2017, 1, 'Not Mention', 'Not Mention', 'Ramesh Kumar Paswan', 100, 0),
('st3781853956', 6, '24/5/2064', 'female', '', '', '', 'Enrolled', 2017, 6, 'Pramod Mahara', 'Not Mention', 'Rubi Kumari Ram', 600, 0),
('st3784124483', 24, '10/01/2064', 'female', '', '', '', 'Enrolled', 2017, 7, 'Sonadat Chaurasiya', 'Not Mention', 'Gudiya Kumari Chaurasiya ', 700, 0),
('st379428491', 9, '17/1/2063', 'male', '', '', '', 'Enrolled', 2017, 4, 'Chandika Mahara', 'Aashiya Devi', 'Sajan Kumar  Ram', 400, 0),
('st3801384133', 5, '15/10/2059', 'female', '', '', '', 'Enrolled', 2017, 3, 'Kailash Mukhiya', 'Not Mention', 'Phul Kumari Bin', 300, 0),
('st3808125774', 6, '20/3/2066', 'female', '', '', '', 'Enrolled', 2017, 7, 'Rampujan Sah Teli ', 'Shrimati Devi', 'Priyanka Kumari Teli', 700, 0),
('st3814618355', 22, '05/03/2055', 'male', '', '', '', 'Enrolled', 2017, 1, 'Dinanath Ram', 'Lalita Devi', 'Sonalal Sah', 100, 0),
('st3819714465', 10, '10/05/2061', 'female', '', '', '', 'Enrolled', 2017, 5, 'Phajil Miya', 'Najama Khatun', 'Madina Khatun Dhobi', 500, 0),
('st3858815151', 9, '20/1/2065', 'female', '', '', '', 'Enrolled', 2017, 6, 'Binod Thakur Lohar', 'Not Mention', 'Nitu Kumari Lohar', 600, 0),
('st3862367787', 19, '15/4/2061', 'female', '', '', '', 'Enrolled', 2017, 2, 'Pramod Chaurasiya', 'Nilam Chaurasiya', 'Neha  Chaurasiya', 200, 0),
('st3871808116', 26, '10/05/2065', 'female', '', '', '', 'Enrolled', 2017, 9, 'Sonalal Prasad Koiri', 'Sabita Devi', 'Mamta Kumari Kushwaha', 900, 0),
('st3873252385', 14, '03/04/2056', 'female', '', '', '', 'Enrolled', 2017, 4, 'Chandrika Ram', 'Aashiya Devi', 'Sugi Kumari Ram', 400, 0),
('st3887135760', 21, '05/01/2065', 'male', '', '', '', 'Enrolled', 2017, 9, 'Ojir Husen ', 'Asana Khatun', 'Salaman Khan Husen Dhobi', 900, 0),
('st390292475', 10, '11/03/2064', 'male', '', '', '', 'Enrolled', 2017, 6, 'Niresh Ran', 'Anita Devi', 'Nites Ram', 0, 0),
('st3903338677', 14, '12/04/2069', 'female', '', '', '', 'Enrolled', 2017, 10, 'Dulachan Baitha', 'Sudama Devi', 'Bibha Kumari Baitha', 1000, 0),
('st391497740', 5, '10/05/2057', 'female', '', '', '', 'Enrolled', 2017, 1, 'Ram Ayodhya Prasad Chauhan', 'Sochita Devi', 'Puja Kumari Chauhan', 100, 0),
('st3955849239', 23, '07/03/2056', 'male', '', '', '', 'Enrolled', 2017, 1, 'Munna Prasad Yadav', 'Lalpari Devi', 'Bablu Kumar  Sah', 100, 0),
('st3970520331', 13, '18/7/2064', 'female', '', '', '', 'Enrolled', 2017, 7, 'Jitendra Prasad Chaurasiya', 'unknown', 'Priti Kumari Chaurasiya', 700, 0),
('st3982474923', 8, '22/1/2057', 'male', '', '', '', 'Enrolled', 2017, 1, 'Rambhu Sah Kanu', 'Mina Devi', 'Rabi Kumar  Sahi', 100, 0),
('st4015142779', 20, '30/1/2066', 'male', '', '', '', 'Enrolled', 2017, 8, 'Rameshwar Goth ', 'Shripati Devi', 'Bhupraj Kumar Goth', 800, 0),
('st4050140672', 11, '04/03/2062', 'male', '', '', '', 'Enrolled', 2017, 3, 'Suba Hajara', 'Not Mention', 'Bikas Dusad', 300, 0),
('st4059671850', 10, '29/4/2059', 'male', '', '', '', 'Enrolled', 2017, 3, 'Rambabu Sah', 'Rukhamina Devi', 'Shyam Sumdar Teli', 300, 0),
('st4083753875', 46, '14/10/2064', 'female', '', '', '', 'Enrolled', 2017, 10, 'Rampat Ram', 'Rampati Devi', 'Rina Kumari Ram', 1000, 0),
('st409943250', 22, '01/01/2065', 'female', '', '', '', 'Enrolled', 2017, 7, 'Binad Sharma', 'Nibha Devi', 'Amrita Kumari Lohar ', 700, 0),
('st4115474365', 27, '20/8/2062', 'female', '', '', '', 'Enrolled', 2017, 3, 'Umesh Sah Sonar', 'Sita Devi', 'Jamuna Kumar Sonar', 300, 0),
('st4128983242', 12, '05/02/2071', 'female', '', '', '', 'Enrolled', 2017, 10, 'Ojir Hushain Miya', 'Aasma Khatun', 'Rupshana Khatun', 0, 0),
('st4129766114', 8, '15/1/2062 ', 'male', '', '', '', 'Enrolled', 2017, 6, 'Surat Das', 'Not Mention', 'Suraj Das Tatwa', 600, 0),
('st418090792', 25, '15/2/2062', 'female', '', '', '', 'Enrolled', 2017, 4, 'Gopal Chauhan', 'Sangita Devi', 'Lalsa Kumari Chauhan', 400, 0),
('st4181413979', 23, '15/6/2068', 'male', '', '', '', 'Enrolled', 2017, 10, 'Bipin Kumar Shriwastaw', 'Archana Devi', 'Mohit Kumar Shriwastaw', 1000, 0),
('st4192318431', 21, '10/10/2054', 'male', '', '', '', 'Enrolled', 2017, 3, 'Bula Ram', 'Sudamiya Devi', 'Amit Kumar Ram', 300, 0),
('st4192476206', 2, '25/1/2065', 'male', '', '', '', 'Enrolled', 2017, 6, 'Sanjay Chaurasiya', 'Not Mention', 'Ujwal Kumar Chaurasiya', 600, 0),
('st4214531186', 22, '19/7/2060', 'male', '', '', '', 'Enrolled', 2017, 3, 'Chhathu Ram', 'Not Mention', 'Sandip Kumar Ram', 300, 0),
('st4238957182', 17, '25/1/2065', 'female', '', '', '', 'Enrolled', 2017, 9, 'Chathulal Chaurasiya', 'Ramaanwati Devi', 'Prabh Kumari Chaurasiya', 900, 0),
('st4246562580', 21, '25/1/2061', 'male', '', '', '', 'Enrolled', 2017, 4, 'Shiwpujan Chaurasiya', 'Nirmala Devi', 'Rohit Kumar Chaurasiya ', 400, 0),
('st4250465549', 1, '05/07/2063', 'male', '', '', '', 'Enrolled', 2017, 2, 'Banu Ram', 'Bhagrati Devi', 'Ladu  Ram', 200, 0),
('st4267629698', 23, '10/12/2056', 'male', '', '', '', 'Enrolled', 2017, 2, 'Mahendra Ram', 'Not Mention', 'Om Prakash  Ram', 200, 0),
('st4271187767', 21, 'Sayada Khatu', 'male', '', '', '', 'Enrolled', 2017, 5, 'Samid Miya', 'Sayada Khatun', 'Sadam Husen Dhobi', 500, 0),
('st4281386381', 24, '01/08/2062', 'female', '', '', '', 'Enrolled', 2017, 3, 'Ramniwas Chaurasiya', 'Sangita Devi', 'Chandani Kumari Chaurasiya', 300, 0),
('st469426272', 6, '02/09/2064', 'female', '', '', '', 'Enrolled', 2017, 8, 'Ramshiw Mahato Tatwa', 'Suwasni Devi', 'Pushpa Kumari Tatwa', 800, 0),
('st511055619', 2, '23/1/2061', 'female', '', '', '', 'Enrolled', 2017, 3, 'Pawan Kumari Sah', 'Anita Devi', 'Priya Kumari Teli ', 300, 0),
('st511173625', 37, '13/8/2063', 'female', '', '', '', 'Enrolled', 2017, 10, 'Aarjun Mukhiya Bin', 'Krisnawti Devi', 'Sushita Kumari Bin', 1000, 0),
('st520578582', 26, '13/7/2064', 'female', '', '', '', 'Enrolled', 2017, 5, 'Bipin Kumar Shriwasto', 'Not Mention', 'Nisha Kumari Shriwastaw', 500, 0),
('st536197599', 13, '12/01/2064', 'male', '', '', '', 'Enrolled', 2017, 9, 'Bipedra Prasad Kumhal', 'Lalita Devi', 'Chandan Kumar Padit', 900, 0),
('st550666154', 19, '29/2/2057', 'male', '', '', '', 'Enrolled', 2017, 1, 'Munilal Sah', 'Laxmina Devi', 'Rupesh Kumar Sah', 100, 0),
('st554904321', 16, '15/5/2071', 'female', '', '', '', 'Enrolled', 2017, 10, 'Ramprabesh Baitha Dobi', 'Anita Devi', 'Priyanka Kumari Dobi', 1000, 0),
('st56555882', 20, '19/4/2066', 'female', '', '', '', 'Enrolled', 2017, 7, 'Mukesh Ram', 'Pratima Devi', 'Amrita Kumari Ram', 700, 0),
('st610548878', 16, '15/5/2064', 'male', '', '', '', 'Enrolled', 2017, 5, 'Dewraj Ram', 'Bhagarati Devi', 'Radheshyam Ram', 500, 0),
('st642615185', 25, '25/5/2055', 'male', '', '', '', 'Enrolled', 2017, 1, 'Punilal Sah Kanu', 'Shivrati Devi', 'Bharat Kumar Sah', 100, 0),
('st643130785', 29, '25/10/2056', 'female', '', '', '', 'Enrolled', 2017, 1, 'Sugrim Sharma', 'Manroj Devi', 'Aarti Sah', 100, 0),
('st648818609', 28, '15/1/2061', 'male', '', '', '', 'Enrolled', 2017, 3, 'Devraj Mahara', 'Sunaina Devi', 'Sani Mahara Chamar', 300, 0),
('st655534582', 30, '20/6/2058', 'female', '', '', '', 'Enrolled', 2017, 3, 'Man Bahadur Shrestha', 'Bishnu Shrestha', 'Manisha  Kumari Shrestha', 300, 0),
('st670832516', 12, '11/10/2059', 'female', '', '', '', 'Enrolled', 2017, 6, 'Tapsi Pandit', 'Samakali Devi', 'Punita Kumari Padit', 600, 0),
('st671483371', 5, '19/10/2066', 'male', '', '', '', 'Enrolled', 2017, 7, 'Surendra Mahara', 'Sakuntala Devi', 'Aditya  Ram', 7, 700),
('st692413967', 33, '03/12/2066', 'female', '', '', '', 'Enrolled', 2017, 10, 'Ramesh Kumar Chaurasiya', 'Anita Devi', 'Nisa Kumari Chaurasiya', 1000, 0),
('st710670596', 8, '05/03/2062', 'female', '', '', '', 'Enrolled', 2017, 4, 'Sukhadi Ram ', 'Not Mention', 'Sangita Kumari Ram', 400, 0),
('st722465130', 43, '18/7/2064', 'male', '', '', '', 'Enrolled', 2017, 10, 'Prabhu Ram ', 'Lialawati Devi', 'Mandip Kumar Ram ', 1000, 0),
('st72406454', 6, '10/01/2066', 'male', '', '', '', 'Enrolled', 2017, 9, 'Arjun Mukhiya Bin', 'Krisanauti Devi', 'Raja Mukhiya Bin', 900, 0),
('st738047803', 10, '07/03/2062', 'male', '', '', '', 'Enrolled', 2017, 4, 'Not Mention', 'Not Mention', 'Rajan Mahara Chamar', 400, 0),
('st740233259', 3, '09/08/2066', 'female', '', '', '', 'Enrolled', 2017, 8, 'Chandeswar Prasad Kurmi', 'Mina Devi', 'Anu Kumari Patel', 800, 0),
('st742038005', 7, '10/03/2062', 'male', '', '', '', 'Enrolled', 2017, 4, 'Pashuram Thakur', 'Sona Devi', 'Bikas Hajam', 400, 0),
('st754470222', 23, '14/10/2064', 'female', '', '', '', 'Enrolled', 2017, 4, 'Rampat Mahara', 'Rampati Devi', 'Rina Kumari  Ram', 400, 0),
('st771571735', 19, '02/01/2071', 'female', '', '', '', 'Enrolled', 2017, 10, 'Pashuram Thakur', 'Sona Devi', 'Riti Kumari Hajam', 1000, 0),
('st792715976', 28, '05/09/2065', 'male', '', '', '', 'Enrolled', 2017, 6, 'Pawan Sah', 'Not Mention', 'Anuj Sah', 600, 0),
('st810258242', 4, '29/2/2062', 'male', '', '', '', 'Enrolled', 2017, 4, 'Shriram Kamkar', 'Not Mention', 'Manu Kumar Kamkar ', 400, 0),
('st835561912', 11, '20/6/2065', 'male', '', '', '', 'Enrolled', 2017, 7, 'Birendra Mahara Chamar', 'Nirmala Devi', 'aarti Kumari Ram', 700, 0),
('st842623374', 30, '01/11/2056', 'male', '', '', '', 'Enrolled', 2017, 1, 'Amika Ram Harijan', 'Imrita Devi', 'Anil Kumar Sah', 100, 0),
('st846704646', 9, '20/10/2064', 'male', '', '', '', 'Enrolled', 2017, 5, 'Not Mention', 'Not Mention', 'Sarbajit Kumar Chaurasiya', 5, 0),
('st886782283', 23, '25/2/2064', 'male', '', '', '', 'Enrolled', 2017, 9, 'Sikendra Ram', 'Durgapati Devi', 'Rajan Kumar Ram', 900, 0),
('st897300909', 9, '05/03/2061', 'female', '', '', '', 'Enrolled', 2017, 7, 'Shrikant Prasad ', 'M', 'Priyantu Kumari  Chaurasiya', 700, 0),
('st899544536', 22, '01/05/2062', 'male', '', '', '', 'Enrolled', 2017, 6, 'Sanjay Kumari Pandit', 'Kiran Devi', 'Prashant Kumar  Pandit', 600, 0),
('st900923995', 13, '04/10/2071', 'female', '', '', '', 'Enrolled', 2017, 10, 'Jailal Prasad Yadav', 'Godawari Devi', 'Nirjala Kumari Yadav', 1000, 0),
('st901282194', 18, '20/7/2057', 'male', '', '', '', 'Enrolled', 2017, 1, 'Harichandra Mahato', 'Krishna Devi', 'Ankesh  Sah', 100, 0),
('st921458241', 29, '04/02/2062', 'female', '', '', '', 'Enrolled', 2017, 5, 'Rajindra Ram', 'Minta Devi', 'Pratiksha Kumari  Ram', 500, 0),
('st92940782', 3, '11/08/2057', 'male', '', '', '', 'Enrolled', 2017, 1, 'Laxmi Prasad Chaurasiya', 'Siyapati Devi', 'Salma Chaurasiya', 100, 0),
('st944237450', 19, '10/02/2062', 'female', '', '', '', 'Enrolled', 2017, 7, 'Shrikant Prasad', 'unknown', 'Anisa Kumari Tatwa', 700, 0),
('st948488748', 23, '10/03/2064', 'female', '', '', '', 'Enrolled', 2017, 7, 'Megharaj Ram', 'Not Mention', 'Chathi Kumari Ram', 700, 0),
('st953653087', 4, '10/10/2057', 'female', '', '', '', 'Enrolled', 2017, 3, 'Jadolal Mukhiya', 'Ashiya Devi', 'Shanti Kumari Bin', 300, 0),
('st958549041', 28, '10/02/2062', 'female', '', '', '', 'Enrolled', 2017, 9, 'Mahabir Sah Teli', 'Sumintra Devi', 'Puja Kumari Teli', 900, 0),
('st971705533', 13, '10/06/2066', 'female', '', '', '', 'Enrolled', 2017, 8, 'Bhagawan Mukhiya Bin', 'Ramjyoti Devi', 'Chanda Kumari Bin', 800, 0),
('st987234164', 21, '02/02/2071', 'female', '', '', '', 'Enrolled', 2017, 10, 'Samari Sah Sonar', 'Renu Devi', 'Anita Kumari Sarraff', 1000, 0),
('st988419151', 8, '10/01/2061', 'female', '', '', '', 'Enrolled', 2017, 3, 'Kisori Mahara', 'Bdhupa Devi', 'Shiwdulari Ram', 300, 0),
('st98995954', 30, '09/07/2060', 'male', '', '', '', 'Enrolled', 2017, 2, 'Lakhan Lal', 'Sona Devi', 'Dhanraj  Chauhan', 200, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `class` int(10) NOT NULL,
  `date_time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `class`, `date_time`) VALUES
(30, 'EPH', 1, '2017-02-10T14:22'),
(40, 'Math', 4, '2017-03-16T14:00'),
(42, 'Math', 5, '2017-03-06T11:08'),
(25, 'Social', 1, '2017-03-10T14:00');

-- --------------------------------------------------------

--
-- Table structure for table `subject_table`
--

CREATE TABLE `subject_table` (
  `subject_no` int(11) NOT NULL,
  `subject_name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `teacher_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `COpt` varchar(20) CHARACTER SET utf8 NOT NULL,
  `class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_table`
--

INSERT INTO `subject_table` (`subject_no`, `subject_name`, `teacher_name`, `COpt`, `class`) VALUES
(1, 'Math', 'Anu Patel', 'Compulsory', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendence`
--

CREATE TABLE `tbl_attendence` (
  `attID` int(11) NOT NULL,
  `StudentRollNumber` int(11) NOT NULL,
  `SubjectId` int(11) NOT NULL,
  `Attendence` varchar(11) NOT NULL,
  `Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_attendence`
--

INSERT INTO `tbl_attendence` (`attID`, `StudentRollNumber`, `SubjectId`, `Attendence`, `Date`) VALUES
(42, 2, 1, 'P', '2017-03-02 00:00:00'),
(43, 5, 1, 'P', '2017-03-03 00:00:00'),
(44, 17, 1, 'P', '2017-03-14 00:00:00'),
(45, 2, 1, 'P', '2017-03-14 00:00:00'),
(46, 6, 1, 'P', '2017-03-14 00:00:00'),
(47, 28, 1, 'P', '2017-03-14 00:00:00'),
(48, 19, 1, 'P', '2017-03-14 00:00:00'),
(49, 18, 1, 'P', '2017-03-14 00:00:00'),
(50, 24, 1, 'P', '2017-03-14 00:00:00'),
(51, 22, 1, 'P', '2017-03-14 00:00:00'),
(52, 9, 1, 'P', '2017-03-15 00:00:00'),
(53, 11, 1, 'A', '2017-03-15 00:00:00'),
(54, 6, 1, 'A', '2017-03-15 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_img`
--

CREATE TABLE `tbl_img` (
  `name` varchar(50) NOT NULL,
  `type` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_img`
--

INSERT INTO `tbl_img` (`name`, `type`) VALUES
('aditya.jpg', 'image/jpeg'),
('amit.jpg', 'image/jpeg'),
('c6ragini.jpg', 'image/jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_table`
--

CREATE TABLE `teacher_table` (
  `teacher_id` varchar(50) NOT NULL,
  `first_name` varchar(64) CHARACTER SET utf8mb4 NOT NULL,
  `last_name` varchar(64) CHARACTER SET utf8mb4 NOT NULL,
  `dob` varchar(12) NOT NULL,
  `gender` varchar(8) CHARACTER SET utf8mb4 NOT NULL,
  `email` varchar(64) CHARACTER SET utf8mb4 NOT NULL,
  `phone` varchar(32) CHARACTER SET utf8mb4 DEFAULT NULL,
  `degree` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  `salary` varchar(64) CHARACTER SET utf8mb4 NOT NULL,
  `address` text CHARACTER SET utf8mb4 NOT NULL,
  `res_id` int(11) NOT NULL,
  `father` varchar(50) NOT NULL,
  `mother` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_table`
--

INSERT INTO `teacher_table` (`teacher_id`, `first_name`, `last_name`, `dob`, `gender`, `email`, `phone`, `degree`, `salary`, `address`, `res_id`, `father`, `mother`) VALUES
('tr1029913392', 'Kunti Devi ', 'Mukhiya', '30/4/2045', 'female', '', '9821134932', 'Slc Board Nepal', '20000', 'Parsa', 60, 'Lotan Mukhiya', 'Fula Devi'),
('tr1105031979', 'Sundar Pandit ', 'Kumhal', '09/05/2036', 'male', '', '9845254576', 'TU, Science', '30000', 'Parsa', 47, 'Chhotelal Pandit Kumahal', 'Ramsati Devi'),
('tr1289977465', 'Manita', 'Mishra', '12/07/2025', 'female', '', '9845118535', 'Tu, Education', '27000', 'Parsa', 57, 'Bishnu Prasad Mishra', 'Mina Devi Mishra'),
('tr1357123611', 'Pramila ', ' Rauniyar', '29/4/2043', 'female', '', '9847126298', 'Tu, Education', '25000', 'Nawalparasi', 62, 'Ashok Prasad Rauniyar', 'Laxmi Devi Rauniyar'),
('tr1482331374', 'Parsuram', ' Tiwari', '30/7/2013', 'male', '', '9725153329', 'Slc Board Nepal', '20000', 'Parsa', 54, 'Mahendra Tiwari', 'Narayani Devi'),
('tr1533360085', 'Awadhkishor Prasad ', 'Chaurasiya', '10/02/2026', 'male', '', '9845189590', 'Slc Board Nepal', '20000', 'Parsa', 59, 'Tarachand Prasad Chaurasiya', 'Radhika Devi Chaurasiya '),
('tr1724468803', 'Jitendra Prasad', ' Chaurasiya', '10/02/2026', 'male', '', '9845256154', 'Slc Board Nepal', '20000', 'Parsa', 56, 'Devnarayan Raut Barai', 'Dhupa Devi'),
('tr1763213852', 'Kishori ', 'Mukhiya', '15/5/2017', 'male', '', '9806806411', 'University Io Bihar, Art', '25000', 'Parsa', 55, 'Raghunath Mukhiya', 'Janki Devi'),
('tr2196102557', 'Jagdev  ', 'Prasad', '05/01/2024', 'male', '', '9845095355', 'Tu, Art', '25000', 'Parsa', 49, 'Jamuna Prasad', 'Kushum Devi'),
('tr235258971', 'Rajeshwar Prasad ', 'Chai', '30/5/2017', 'male', '', '9811125406', 'Tu, Art', '30,000', 'Parsa', 51, 'Babulal Mahato Chai', 'Rupa Devi Chain'),
('tr2539257440', 'Shindhu Kumari ', 'Devi', '20/9/2040', 'female', '', '9807149492', 'Bihar Board Patana, Art', '25000', 'Parsa', 61, 'Radhakrishna Chaurasiya', 'Kalawati Devi'),
('tr2703140633', 'Saroj Prasad ', 'Chauhan', '13/5/2026', 'male', '', '9845256154', 'TU, Science', '30000', 'Parsa', 45, 'Chandrika Prasad ', 'Krishna Devi'),
('tr3265802475', 'Ash Kumar ', 'Jha', '15/3/2018', 'male', '', '9845405070', 'Tribhovan University, Education', '27000', 'Sarlahi', 43, 'Shree Bhadra Jha', 'Dewtayan Devi'),
('tr3893555857', 'Akhileshwar Prasad', ' Chaurasiya', '01/01/2023', 'male', '', '9804266194', 'Tu, Art', '25000', 'Prasa', 46, 'Paras Raur Barai', 'Champa Devi Baraini'),
('tr4283865300', 'Ramlakhan Prasad', ' Chaurasiya', '19/8/2017', 'male', '', '9804221806', 'Bihar University, Science', '30000', 'Parsa', 50, 'Ram Sewak Bhagat', 'Dulari Devi'),
('tr460915059', 'Pramod Prasad ', 'Chaurasuya', '07/09/2031', 'male', '', '9845190565', 'Tu, Art', '30,000', 'Parsa', 52, 'Ram Prasad Raut Barai', 'Pathali Devi Baraini'),
('tr811608588', 'Mimtaj ', 'Aalam', '16/5/2036', 'male', '', '9845188178', 'Tu, Education', '27000', 'Parsa', 48, 'Rasul Miya', 'Jaibun Nesha Khatun'),
('tr87965113', 'Chanchala Kumari', 'Kanu', '20/8/2049', 'female', '', '9845886409', 'Hseb, Education', '27000', 'Parsa', 63, 'Pradeep Kumar Kanu', 'Sangita Devi'),
('tr948137636', 'Harindra Prasad', ' Chaurasiya', '02/01/2024', 'male', '', '9804233146', 'Bihar University, Science', '30,000', 'Parsa', 53, 'Gorakh Raut Barai', 'Yetwariya Devi Baraini'),
('tr950240452', 'Ashok Kumar ', 'Chaurasiya', '21/9/2029', 'male', '', '9804233042', 'Bihar University, Management', '28000', 'Parsa', 58, 'Rajdev Prasad Chaurasiya', 'Nayan Devi Baraini');

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE `timetables` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `DAYS` int(11) DEFAULT NULL,
  `INTERVALS` int(11) DEFAULT NULL,
  `INTERVAL_START` int(11) DEFAULT NULL,
  `INTERVAL_LENGTH` int(11) DEFAULT NULL,
  `INTERVAL_GAP` int(11) DEFAULT NULL,
  `DAY_NAMES` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetables`
--

INSERT INTO `timetables` (`ID`, `USER_ID`, `NAME`, `DAYS`, `INTERVALS`, `INTERVAL_START`, `INTERVAL_LENGTH`, `INTERVAL_GAP`, `DAY_NAMES`) VALUES
(2, 1, 'routine', 6, 7, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `trrecord`
--

CREATE TABLE `trrecord` (
  `t_id` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `t_name` varchar(100) NOT NULL,
  `sex` int(11) NOT NULL,
  `nationality` int(11) NOT NULL,
  `citizenship_no` varchar(20) NOT NULL,
  `issue_district` varchar(20) NOT NULL,
  `father's_name` varchar(100) NOT NULL,
  `mother's_name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `license_no` int(11) NOT NULL,
  `bank_acc_no` int(11) NOT NULL,
  `bank_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `user_id` varchar(40) NOT NULL,
  `time` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `user_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `user_id`, `time`, `date`, `user_status`) VALUES
(223, 'c6ragini', 'ragini', 'st1017821870', '01:57:00pm', '2017:03:10', 'student'),
(148, 'anshukumari ', 'anshu', 'st1018638858', '10:29:32am', '2017:03:10', 'student'),
(243, 'c5sajad', 'sajad', 'st1024762928', '02:31:26pm', '2017:03:10', 'student'),
(350, 'c2anjana', 'anjana', 'st1029011470', '11:50:30pm', '2017:03:10', 'student'),
(262, 'c5suman ', 'suman ', 'st1037044284', '02:59:27pm', '2017:03:10', 'student'),
(168, 'c7priti', 'priti', 'st1049797482', '10:58:29am', '2017:03:10', 'student'),
(111, 'rajkumar', 'raj', 'st1058547358', '08:52:29am', '2017:03:10', 'student'),
(356, 'c1puja', 'puja', 'st1061262757', '12:16:47pm', '2017:03:11', 'student'),
(79, 'lalsakumari', 'lalsa', 'st1075488168', '01:01:16am', '2017:03:10', 'student'),
(212, 'c6priyi', 'priyi', 'st1080036994', '01:36:38pm', '2017:03:10', 'student'),
(169, 'c7rima', 'rima', 'st1081435229', '10:59:24am', '2017:03:10', 'student'),
(195, 'c7santanu', 'santanu', 'st1117550984', '01:10:17pm', '2017:03:10', 'student'),
(309, 'c3aasha', 'aasha', 'st1127372022', '08:29:26pm', '2017:03:10', 'student'),
(333, 'c2jiska ', 'jiska ', 'st1131914455', '10:20:12pm', '2017:03:10', 'student'),
(303, 'c3ashis', 'ashis', 'st1140049786', '07:13:17pm', '2017:03:10', 'student'),
(135, 'tanu_kumari', 'tanu', 'st1156218664', '10:07:04am', '2017:03:10', 'student'),
(140, 'arti_kumari', 'arti', 'st1160298945', '10:14:02am', '2017:03:10', 'student'),
(188, 'c7gudiya', 'gudiya', 'st1162588218', '01:02:08pm', '2017:03:10', 'student'),
(61, 'pinkikumari', 'pinki', 'st1164377903', '12:31:48am', '2017:03:10', 'student'),
(246, 'c5sushila ', 'sushila ', 'st1173129319', '02:36:28pm', '2017:03:10', 'student'),
(162, 'shalukumari', 'shalu', 'st1178911330', '10:50:11am', '2017:03:10', 'student'),
(341, 'c2anamika  ', 'anamika', 'st1184870184', '11:34:51pm', '2017:03:10', 'student'),
(84, 'archanakumari', 'archana', 'st1189171927', '01:13:48am', '2017:03:10', 'student'),
(125, 'rina_kumari', 'rina', 'st1199163982', '09:16:13am', '2017:03:10', 'student'),
(250, 'c5rabitatatwa', 'rabitatatwa', 'st1223272213', '02:41:18pm', '2017:03:10', 'student'),
(141, 'susmakumari', 'susma', 'st1226381966', '10:15:03am', '2017:03:10', 'student'),
(150, 'amritasonar', 'amrita', 'st1227480646', '10:34:09am', '2017:03:10', 'student'),
(82, 'anuskakumari', 'anuska', 'st1236389153', '01:10:26am', '2017:03:10', 'student'),
(224, 'c6nibha', 'nibha', 'st1241494332', '01:58:00pm', '2017:03:10', 'student'),
(279, 'c4jata', 'jata', 'st124492125', '03:42:19pm', '2017:03:10', 'student'),
(72, 'nirajmukhiya', 'niraj', 'st1259398860', '12:52:16am', '2017:03:10', 'student'),
(306, 'c3urmila', 'urmila', 'st126304823', '07:21:41pm', '2017:03:10', 'student'),
(213, 'c6suryarekha', 'suryarekha', 'st1264107037', '01:38:05pm', '2017:03:10', 'student'),
(328, 'c2lalbabu ', 'lalbabu ', 'st1311966379', '09:45:14pm', '2017:03:10', 'student'),
(182, 'c7sustia', 'sustia', 'st1325317603', '12:54:41pm', '2017:03:10', 'student'),
(159, 'artihajara', 'arti', 'st1326011703', '10:46:06am', '2017:03:10', 'student'),
(73, 'nandanikumarri', 'nandani', 'st1336061360', '12:53:28am', '2017:03:10', 'student'),
(379, 'c1Chhema', 'Chhema', 'st1337196698', '12:50:38pm', '2017:03:11', 'student'),
(264, 'c4anjani', 'anjani', 'st1348388102', '03:21:46pm', '2017:03:10', 'student'),
(297, 'c3prahalad ', 'prahalad', 'st1351474826', '04:07:01pm', '2017:03:10', 'student'),
(300, 'c3shila', 'shila', 'st1372011580', '07:07:49pm', '2017:03:10', 'student'),
(362, 'c1arti ', 'arti ', 'st1373199182', '12:24:55pm', '2017:03:11', 'student'),
(197, 'c7anjali', 'anjali', 'st1400945945', '01:13:02pm', '2017:03:10', 'student'),
(255, 'c5sugi ', 'sugi', 'st1407186986', '02:48:02pm', '2017:03:10', 'student'),
(365, 'c1bipin ', 'bipin ', 'st140860264', '12:28:47pm', '2017:03:11', 'student'),
(107, 'binitakumari', 'binita', 'st1412406053', '08:47:44am', '2017:03:10', 'student'),
(96, 'rupeshthakur', 'rupesh', 'st1413523560', '01:33:15am', '2017:03:10', 'student'),
(268, 'c4milan', 'milan', 'st141878069', '03:27:26pm', '2017:03:10', 'student'),
(338, 'c2sogari', 'sogari', 'st1424883612', '11:12:48pm', '2017:03:10', 'student'),
(347, 'c2ramdulari', 'ramdulari', 'st1427602516', '11:46:33pm', '2017:03:10', 'student'),
(70, 'dipeshmukhiya', 'dipesh', 'st1438200371', '12:49:40am', '2017:03:10', 'student'),
(90, 'soshilakumari', 'soshila', 'st1460063482', '01:21:44am', '2017:03:10', 'student'),
(192, 'c7aartiteli', 'aarti', 'st1472640488', '01:07:06pm', '2017:03:10', 'student'),
(114, 'nisha_kumari', 'nisha', 'st1476995583', '09:01:40am', '2017:03:10', 'student'),
(363, 'c1ramil', 'ramil', 'st1487461161', '12:26:05pm', '2017:03:11', 'student'),
(214, 'c6gandhari ', 'gandhari', 'st1494181348', '01:39:27pm', '2017:03:10', 'student'),
(247, 'c5jayprakash ', 'jayprakash ', 'st1494427715', '02:37:31pm', '2017:03:10', 'student'),
(252, 'c5murti ', 'murt', 'st1507514690', '02:44:25pm', '2017:03:10', 'student'),
(121, 'antimakumari', 'antima', 'st1509058423', '09:11:37am', '2017:03:10', 'student'),
(75, 'pritikumari', 'priti', 'st1540541310', '12:56:07am', '2017:03:10', 'student'),
(308, 'c3jyoti', 'jyoti', 'st1558156780', '08:28:18pm', '2017:03:10', 'student'),
(348, 'c2majha', 'majha', 'st1584001709', '11:47:44pm', '2017:03:10', 'student'),
(317, 'c3ganga', 'ganga', 'st1595182522', '09:25:15pm', '2017:03:10', 'student'),
(218, 'c6manir', 'manir', 'st1599367416', '01:47:57pm', '2017:03:10', 'student'),
(154, 'gajarajkumar', 'gajaraj', 'st1638068921', '10:39:14am', '2017:03:10', 'student'),
(95, 'nivakumari', 'niva', 'st1638230123', '01:31:52am', '2017:03:10', 'student'),
(193, 'c7anjani', 'anjani', 'st1639374747', '01:08:08pm', '2017:03:10', 'student'),
(86, 'sumitramukhiya', 'sumitra', 'st1645002808', '01:16:26am', '2017:03:10', 'student'),
(290, 'c4anjali', 'anjali', 'st1651025796', '03:56:55pm', '2017:03:10', 'student'),
(201, 'c6anusaka', 'anusaka', 'st1651243062', '01:21:48pm', '2017:03:10', 'student'),
(324, 'c2rupa', 'rupa', 'st1657134373', '09:35:08pm', '2017:03:10', 'student'),
(351, 'c2Rani ', 'Rani ', 'st1657877857', '11:51:29pm', '2017:03:10', 'student'),
(85, 'sabitakumari', 'sabita', 'st1668103037', '01:15:13am', '2017:03:10', 'student'),
(335, 'c2bhushan', 'bhushan', 'st1678885336', '11:03:24pm', '2017:03:10', 'student'),
(257, 'c5urmila', 'urmila', 'st1683453709', '02:50:42pm', '2017:03:10', 'student'),
(343, 'c2kabita', 'kabita', 'st1695829813', '11:37:23pm', '2017:03:10', 'student'),
(164, 'anjanikumari', 'anjani', 'st1714240944', '10:52:26am', '2017:03:10', 'student'),
(281, 'c4pushpa ', 'pushpa ', 'st1719594908', '03:44:54pm', '2017:03:10', 'student'),
(304, 'c3babali', 'babali', 'st1723815066', '07:15:57pm', '2017:03:10', 'student'),
(208, 'c6shila', 'shila', 'st17477007', '01:31:10pm', '2017:03:10', 'student'),
(160, 'chandaram', 'chanda', 'st1752072556', '10:47:22am', '2017:03:10', 'student'),
(233, 'c5roshani', 'roshani', 'st175829866', '02:14:19pm', '2017:03:10', 'student'),
(146, 'dipakmukhiya', 'dipak', 'st1769528846', '10:25:16am', '2017:03:10', 'student'),
(130, 'babita_kumari', 'babita', 'st1774878326', '09:39:33am', '2017:03:10', 'student'),
(329, 'c2muskan', 'muskan', 'st1778811515', '09:46:49pm', '2017:03:10', 'student'),
(337, 'c2angad', 'angad', 'st1787482991', '11:06:21pm', '2017:03:10', 'student'),
(294, 'c3rajwanshi', 'rajwanshi', 'st1792421341', '04:04:02pm', '2017:03:10', 'student'),
(105, 'khushbukumari', 'khushby', 'st1795251762', '08:43:50am', '2017:03:10', 'student'),
(185, 'c7rina', 'rina', 'st1800943518', '12:58:09pm', '2017:03:10', 'student'),
(249, 'c5ranjan', 'ranjan', 'st1810946188', '02:39:38pm', '2017:03:10', 'student'),
(359, 'c1sandip', 'sandip', 'st1823192411', '12:20:50pm', '2017:03:11', 'student'),
(88, 'akashmukhiya', 'akash', 'st1835177757', '01:19:17am', '2017:03:10', 'student'),
(320, 'c3hom', 'hom', 'st1837915610', '09:29:11pm', '2017:03:10', 'student'),
(65, 'babiyakumari', 'babiya', 'st1876266815', '12:39:58am', '2017:03:10', 'student'),
(280, 'c4rambinay', 'rambinay', 'st1878221331', '03:43:26pm', '2017:03:10', 'student'),
(286, 'c4ladu', 'ladu', 'st1914175661', '03:51:23pm', '2017:03:10', 'student'),
(183, 'c7pritibin', 'priti', 'st1951140199', '12:55:52pm', '2017:03:10', 'student'),
(361, 'c1nikesh', 'nikesh', 'st1993217879', '12:23:51pm', '2017:03:11', 'student'),
(156, 'rupakkumar', 'rupak', 'st2017564262', '10:41:37am', '2017:03:10', 'student'),
(64, 'niteshkumar', 'nitesh', 'st2018860184', '12:38:27am', '2017:03:10', 'student'),
(144, 'mamta__kumari', 'mamta', 'st2030179244', '10:22:50am', '2017:03:10', 'student'),
(372, 'c1Taiyab ', 'Taiyab ', 'st2031589799', '12:41:54pm', '2017:03:11', 'student'),
(127, 'mandip_kumar', 'mandip', 'st2082919412', '09:18:47am', '2017:03:10', 'student'),
(284, 'c4prem', 'prem', 'st2092981428', '03:48:52pm', '2017:03:10', 'student'),
(216, 'c6rima', 'rima', 'st2098548205', '01:45:11pm', '2017:03:10', 'student'),
(158, 'rimakumari', 'rima', 'st2112234608', '10:44:31am', '2017:03:10', 'student'),
(332, 'c2dipawali', 'dipawali', 'st2126057343', '10:13:50pm', '2017:03:10', 'student'),
(354, 'c1salma', 'salma', 'st2128027927', '12:14:00pm', '2017:03:11', 'student'),
(104, 'kantikumari', 'kanti', 'st2130567123', '01:42:53am', '2017:03:10', 'student'),
(132, 'puja_kumari', 'puja', 'st2137736165', '09:42:14am', '2017:03:10', 'student'),
(217, 'c6rajni', 'rajni', 'st2143919964', '01:46:26pm', '2017:03:10', 'student'),
(137, 'amrita_kumari', 'amrita', 'st2147261426', '10:10:17am', '2017:03:10', 'student'),
(298, 'c3shatan', 'shatan', 'st2159526478', '04:08:13pm', '2017:03:10', 'student'),
(366, 'c1rajababu', 'rajababu', 'st2164765408', '12:30:15pm', '2017:03:11', 'student'),
(222, 'c6suman', 'suman', 'st2170677709', '01:55:47pm', '2017:03:10', 'student'),
(198, 'c6nikhil', 'nikhil', 'st217154632', '01:15:11pm', '2017:03:10', 'student'),
(274, 'c4sanchita', 'sanchita', 'st2173122097', '03:35:36pm', '2017:03:10', 'student'),
(118, 'birendrakumar', 'birendra', 'st220116725', '09:08:11am', '2017:03:10', 'student'),
(349, 'c2rajkumar', 'rajkumar', 'st2208810662', '11:48:55pm', '2017:03:10', 'student'),
(138, 'kajali_kumari', 'kajali', 'st2209754867', '10:11:44am', '2017:03:10', 'student'),
(245, 'c5rabita', 'rabita', 'st2221548264', '02:35:12pm', '2017:03:10', 'student'),
(311, 'c3rehana ', 'rehana', 'st2222101076', '08:32:05pm', '2017:03:10', 'student'),
(177, 'c7sakhina', 'sakhina', 'st2222627610', '12:48:46pm', '2017:03:10', 'student'),
(63, 'asmitakumari', 'asmita', 'st2229235353', '12:34:36am', '2017:03:10', 'student'),
(381, 'c1Gayatri', 'Gayatri', 'st2235792888', '12:53:36pm', '2017:03:11', 'student'),
(77, 'bikashkumar', 'bikash', 'st2239515909', '12:58:53am', '2017:03:10', 'student'),
(278, 'c4minta ', 'minta', 'st2292959834', '03:41:20pm', '2017:03:10', 'student'),
(326, 'c2ashis', 'ashis', 'st2293175519', '09:38:09pm', '2017:03:10', 'student'),
(181, 'c7krin', 'krin', 'st2311383116', '12:53:28pm', '2017:03:10', 'student'),
(175, 'c7chanda', 'chanda', 'st2337745844', '12:44:07pm', '2017:03:10', 'student'),
(91, 'sumankumari', 'suman', 'st2365384395', '01:22:50am', '2017:03:10', 'student'),
(115, 'nilamakumari', 'nilama', 'st2382139009', '09:02:48am', '2017:03:10', 'student'),
(161, 'sumansarraff', 'suman', 'st2407245790', '10:48:48am', '2017:03:10', 'student'),
(228, 'c5sabitri', 'sabitri', 'st2409724991', '02:03:18pm', '2017:03:10', 'student'),
(265, 'c4sona', 'sona', 'st2429114009', '03:23:00pm', '2017:03:10', 'student'),
(369, 'c1jitlal', 'jitlal', 'st2506989005', '12:34:13pm', '2017:03:11', 'student'),
(106, 'mantikumari', 'manti', 'st2521306512', '08:46:35am', '2017:03:10', 'student'),
(282, 'c4khushbu', 'khushbu', 'st2527991715', '03:46:46pm', '2017:03:10', 'student'),
(221, 'c6chandanipandit', 'chandani', 'st2536335090', '01:54:46pm', '2017:03:10', 'student'),
(153, 'pritigoth', 'priti', 'st253756532', '10:37:51am', '2017:03:10', 'student'),
(404, 'amit', 'patel', 'st25588418', '03:32:04pm', '2017:03:15', 'student'),
(133, 'priti_kumari', 'priti', 'st2573922147', '09:43:26am', '2017:03:10', 'student'),
(117, 'kalpnakumari', 'kalpna', 'st2594720005', '09:05:17am', '2017:03:10', 'student'),
(275, 'c4rubi', 'rubi', 'st2611662948', '03:37:00pm', '2017:03:10', 'student'),
(368, 'c1bandana', 'bandana', 'st261710999', '12:32:47pm', '2017:03:11', 'student'),
(122, 'mamtakumari', 'mamta', 'st2620024626', '09:12:33am', '2017:03:10', 'student'),
(327, 'c2lalpari', 'lalpari', 'st2621333230', '09:39:17pm', '2017:03:10', 'student'),
(108, 'manitakumari', 'manita', 'st2625168657', '08:48:55am', '2017:03:10', 'student'),
(203, 'c6budhi', 'budhi', 'st2627093146', '01:25:19pm', '2017:03:10', 'student'),
(62, 'abhaykumar', 'abhay', 'st2637761083', '12:33:21am', '2017:03:10', 'student'),
(167, 'c7manish', 'manish', 'st2638090836', '10:57:22am', '2017:03:10', 'student'),
(287, 'c4bishamila', 'bishamila', 'st2656748109', '03:52:52pm', '2017:03:10', 'student'),
(166, '7chathi', 'chathi', 'st2661444963', '10:56:11am', '2017:03:10', 'student'),
(267, 'c5shiwasahan', 'shiwasahan', 'st266505596', '03:26:18pm', '2017:03:10', 'student'),
(196, 'c7nisha', 'nisha', 'st2672273886', '01:11:59pm', '2017:03:10', 'student'),
(103, 'bhawanikumari', 'bhawani', 'st2686588487', '01:41:46am', '2017:03:10', 'student'),
(256, 'c5kabita', 'kabita', 'st2696114619', '02:49:19pm', '2017:03:10', 'student'),
(378, 'c1Krishna', 'Krishna', 'st2697060436', '12:49:38pm', '2017:03:11', 'student'),
(94, 'gita_kumari', 'gita', 'st2704697896', '01:30:47am', '2017:03:10', 'student'),
(259, 'c5mandip', 'andip', 'st2704863907', '02:54:27pm', '2017:03:10', 'student'),
(210, 'c6sunita', 'sunita', 'st2707973418', '01:33:07pm', '2017:03:10', 'student'),
(87, 'pradipram', 'pradip', 'st2717254934', '01:18:03am', '2017:03:10', 'student'),
(58, 'gudiya', 'gudi', 'st2718691956', '12:23:51am', '2017:03:10', 'student'),
(98, 'akash_ram', 'akash', 'st2723929567', '01:35:47am', '2017:03:10', 'student'),
(134, 'karinakumari', 'karina', 'st2745961588', '09:45:02am', '2017:03:10', 'student'),
(325, 'c2satpal', 'satpal', 'st2769339862', '09:36:54pm', '2017:03:10', 'student'),
(260, 'c5phulpari', 'phulpari', 'st2778006711', '02:56:38pm', '2017:03:10', 'student'),
(237, 'c5andip', 'andip', 'st2815034363', '02:22:02pm', '2017:03:10', 'student'),
(97, 'roshanithakur', 'roshani', 'st2820110405', '01:34:31am', '2017:03:10', 'student'),
(80, 'rahulkumar', 'rahul', 'st2829527008', '01:02:23am', '2017:03:10', 'student'),
(59, 'nirajram', 'niraj', 'st283015867', '12:25:27am', '2017:03:10', 'student'),
(336, 'c2girdhari', 'girdhari', 'st2837798641', '11:04:34pm', '2017:03:10', 'student'),
(211, 'c6rekha', 'rekha', 'st2850573704', '01:34:20pm', '2017:03:10', 'student'),
(376, 'c1Murti ', 'Murti ', 'st2855925863', '12:47:13pm', '2017:03:11', 'student'),
(263, 'c5sanjana', 'sanjana', 'st2862975524', '03:20:16pm', '2017:03:10', 'student'),
(314, 'c3bishesh ', 'bishesh', 'st2868368990', '09:00:35pm', '2017:03:10', 'student'),
(145, 'shiwrajmukhiya', 'shiwraj', 'st2878914699', '10:24:14am', '2017:03:10', 'student'),
(367, 'c1laxmi  ', 'laxmi  ', 'st2889642071', '12:31:37pm', '2017:03:11', 'student'),
(289, 'c4lalsakohar', 'lalsa', 'st2894848970', '03:55:59pm', '2017:03:10', 'student'),
(101, 'shiwrajthakuar', 'shiwraj', 'st2903129103', '01:39:15am', '2017:03:10', 'student'),
(92, 'amritakumari', 'amrita', 'st2935642929', '01:24:48am', '2017:03:10', 'student'),
(305, 'c3shivbalak', 'shivbalak', 'st2938355491', '07:20:14pm', '2017:03:10', 'student'),
(173, 'c7sonali', 'sonali', 'st2946277486', '11:05:50am', '2017:03:10', 'student'),
(128, 'dibyakumari', 'dibya', 'st2953626435', '09:19:54am', '2017:03:10', 'student'),
(81, 'nitukumari', 'nitu', 'st2953959371', '01:06:14am', '2017:03:10', 'student'),
(56, 'madhuwala', 'madhu', 'st2970096721', '12:18:48am', '2017:03:10', 'student'),
(235, 'c5menuka', 'menuka', 'st299556692', '02:16:58pm', '2017:03:10', 'student'),
(239, 'c5ranjita', 'ranjita', 'st3001821939', '02:25:06pm', '2017:03:10', 'student'),
(238, 'c5nilama', 'nilama', 'st3049399386', '02:23:48pm', '2017:03:10', 'student'),
(277, 'c4priya ', 'priya', 'st3051148902', '03:40:15pm', '2017:03:10', 'student'),
(310, 'c3rima', 'rima', 'st3052782237', '08:30:38pm', '2017:03:10', 'student'),
(109, 'manturikumari', 'manturi', 'st3087827263', '08:50:13am', '2017:03:10', 'student'),
(200, 'c6dewanti', 'dewanti', 'st312027831', '01:20:02pm', '2017:03:10', 'student'),
(157, 'pooja', 'puja', 'st3130633849', '10:43:16am', '2017:03:10', 'student'),
(194, 'c7sudhir', 'sudhir', 'st313706767', '01:09:11pm', '2017:03:10', 'student'),
(66, 'sujitkumar', 'sujit', 'st3147247250', '12:41:11am', '2017:03:10', 'student'),
(307, 'c3Kabita ', 'Kabita ', 'st3165464107', '08:25:32pm', '2017:03:10', 'student'),
(60, 'amritram', 'amrit', 'st3171362665', '12:30:14am', '2017:03:10', 'student'),
(165, 'riyaujmiya', 'riyauj', 'st3175577688', '10:53:53am', '2017:03:10', 'student'),
(316, 'c3ganesh', 'ganesh', 'st3253791813', '09:23:10pm', '2017:03:10', 'student'),
(273, 'c4urmila', 'urmila', 'st3256908985', '03:34:11pm', '2017:03:10', 'student'),
(151, 'kriahna', 'kriahna', 'st3263193998', '10:35:34am', '2017:03:10', 'student'),
(227, 'c6sunitabin', 'sunita', 'st3290361842', '02:01:37pm', '2017:03:10', 'student'),
(373, 'c1bibek', 'bibek', 'st3295803862', '12:43:32pm', '2017:03:11', 'student'),
(334, 'c2amit', 'amit', 'st3296828015', '11:02:17pm', '2017:03:10', 'student'),
(353, 'c1Nirmala', 'Nirmala', 'st33153689', '12:11:59pm', '2017:03:11', 'student'),
(163, 'nurkali', 'nurkali', 'st3322735449', '10:51:21am', '2017:03:10', 'student'),
(342, 'c2punam', 'punam', 'st3323936488', '11:36:11pm', '2017:03:10', 'student'),
(254, 'c5sakhina', 'sakhina', 'st3328154727', '02:46:50pm', '2017:03:10', 'student'),
(323, 'c2sndahya', 'sndahya', 'st3335852369', '09:34:04pm', '2017:03:10', 'student'),
(112, 'manishakumari', 'manisha', 'st3352465769', '08:54:47am', '2017:03:10', 'student'),
(292, 'c3dipesh', 'dipesh', 'st3352491398', '04:00:40pm', '2017:03:10', 'student'),
(236, 'c5priya', 'priya', 'st3358585886', '02:18:09pm', '2017:03:10', 'student'),
(242, 'c5puja', 'puja', 'st3401659237', '02:30:10pm', '2017:03:10', 'student'),
(331, 'c2anshu', 'anshu', 'st3403105144', '10:12:20pm', '2017:03:10', 'student'),
(143, 'mamataKumari', 'mamata', 'st3409705276', '10:16:56am', '2017:03:10', 'student'),
(229, 'c5usha', 'usha', 'st3416579431', '02:04:42pm', '2017:03:10', 'student'),
(57, 'surajmukhi', 'suraj', 'st3465597495', '12:21:20am', '2017:03:10', 'student'),
(339, 'c2nisha', 'nisha', 'st3481942125', '11:15:06pm', '2017:03:10', 'student'),
(251, 'c5lalita ', 'lalita', 'st3488126687', '02:43:03pm', '2017:03:10', 'student'),
(83, 'artikumari', 'arti', 'st3488720464', '01:12:17am', '2017:03:10', 'student'),
(179, 'c7sunam', 'sunam', 'st3513963915', '12:50:52pm', '2017:03:10', 'student'),
(152, 'jaykumar', 'jay', 'st352615477', '10:36:40am', '2017:03:10', 'student'),
(330, 'c2raju', 'raju', 'st3541956655', '10:11:02pm', '2017:03:10', 'student'),
(113, 'nareshram', 'naresh', 'st358027160', '08:55:58am', '2017:03:10', 'student'),
(123, 'kirankumari', 'kiran', 'st3592564611', '09:13:47am', '2017:03:10', 'student'),
(184, 'c7rusum', 'rusum', 'st3594656589', '12:57:10pm', '2017:03:10', 'student'),
(226, 'c6karishama ', 'karishama ', 'st3597401515', '02:00:16pm', '2017:03:10', 'student'),
(364, 'c1raj', 'raj', 'st3604155354', '12:27:41pm', '2017:03:11', 'student'),
(345, 'c2sunil ', 'sunil', 'st3605506150', '11:41:42pm', '2017:03:10', 'student'),
(100, 'sandipkumar', 'sandip', 'st3616480935', '01:38:07am', '2017:03:10', 'student'),
(119, 'santoshkumar', 'santosh', 'st3677850472', '09:09:10am', '2017:03:10', 'student'),
(291, 'c4suraj', 'suraj', 'st3703466130', '03:57:54pm', '2017:03:10', 'student'),
(358, 'c1ramesh ', 'ramesh ', 'st3749201010', '12:19:13pm', '2017:03:11', 'student'),
(204, 'c6rubi', 'rubi', 'st3781853956', '01:26:15pm', '2017:03:10', 'student'),
(191, 'c7gudiyachaurisiya', 'gudiya', 'st3784124483', '01:05:50pm', '2017:03:10', 'student'),
(272, 'c4sajan', 'sajan', 'st379428491', '03:32:59pm', '2017:03:10', 'student'),
(296, 'c3phul', 'phul', 'st3801384133', '04:06:05pm', '2017:03:10', 'student'),
(172, 'c7priyanka', 'priyanka', 'st3808125774', '11:04:57am', '2017:03:10', 'student'),
(374, 'c1sonalal ', 'sonalal ', 'st3814618355', '12:45:18pm', '2017:03:11', 'student'),
(241, 'c5madina', 'madina', 'st3819714465', '02:29:05pm', '2017:03:10', 'student'),
(206, 'c6nitu', 'nitu', 'st3858815151', '01:28:49pm', '2017:03:10', 'student'),
(129, 'mamta_kumari', 'mamta', 'st3871808116', '09:21:33am', '2017:03:10', 'student'),
(276, 'c4rugi', 'Sugi', 'st3873252385', '03:38:58pm', '2017:03:10', 'student'),
(124, 'salamankhan', 'salaman', 'st3887135760', '09:14:55am', '2017:03:10', 'student'),
(207, 'c6nites', 'nites', 'st390292475', '01:30:06pm', '2017:03:10', 'student'),
(69, 'bibhakumari', 'bibha', 'st3903338677', '12:48:17am', '2017:03:10', 'student'),
(357, 'c1pujakumari', 'puja', 'st391497740', '12:18:04pm', '2017:03:11', 'student'),
(375, 'c1Bablu', 'Bablu', 'st3955849239', '12:46:15pm', '2017:03:11', 'student'),
(180, 'c7pritikumari', 'priti', 'st3970520331', '12:52:15pm', '2017:03:10', 'student'),
(360, 'c1Rabi ', 'Rabi ', 'st3982474923', '12:21:48pm', '2017:03:11', 'student'),
(155, 'bhuprajkumar', 'bhupraj', 'st4015142779', '10:40:25am', '2017:03:10', 'student'),
(302, 'c3bikas', 'bikas', 'st4050140672', '07:10:49pm', '2017:03:10', 'student'),
(301, 'c3shyam', 'shyam', 'st4059671850', '07:09:26pm', '2017:03:10', 'student'),
(102, 'rinakumari', 'rina', 'st4083753875', '01:40:31am', '2017:03:10', 'student'),
(189, 'c7amritalohar', 'amrita', 'st409943250', '01:03:24pm', '2017:03:10', 'student'),
(318, 'c3jamuna', 'jamuna', 'st4115474365', '09:26:18pm', '2017:03:10', 'student'),
(67, 'rupshana', 'rupshna', 'st4128983242', '12:42:31am', '2017:03:10', 'student'),
(205, 'c6surajj', 'suraj', 'st4129766114', '01:27:40pm', '2017:03:10', 'student'),
(288, 'c4lalsa', 'lalsa', 'st418090792', '03:54:19pm', '2017:03:10', 'student'),
(78, 'mohitkumar', 'mohit', 'st4181413979', '01:00:04am', '2017:03:10', 'student'),
(312, 'c3amit', 'amit', 'st4192318431', '08:33:17pm', '2017:03:10', 'student'),
(199, 'c6ujwal', 'ujwal', 'st4192476206', '01:18:37pm', '2017:03:10', 'student'),
(313, 'c3sandip', 'sandip', 'st4214531186', '08:52:27pm', '2017:03:10', 'student'),
(120, 'prabhkumari', 'prabh', 'st4238957182', '09:10:38am', '2017:03:10', 'student'),
(283, 'c4rohit', 'rohit', 'st4246562580', '03:47:52pm', '2017:03:10', 'student'),
(322, 'c2ladu', 'ladu', 'st4250465549', '09:32:52pm', '2017:03:10', 'student'),
(344, 'c2om', 'om', 'st4267629698', '11:38:38pm', '2017:03:10', 'student'),
(253, 'c5sadam ', 'sadam ', 'st4271187767', '02:45:39pm', '2017:03:10', 'student'),
(315, 'c3chandani', 'chandani', 'st4281386381', '09:20:09pm', '2017:03:10', 'student'),
(139, 'ramshiwkumari', 'ramshiw', 'st469426272', '10:13:04am', '2017:03:10', 'student'),
(293, 'c3priya', 'priya', 'st511055619', '04:02:07pm', '2017:03:10', 'student'),
(93, 'sushitakumari', 'sushita', 'st511173625', '01:29:27am', '2017:03:10', 'student'),
(258, 'c5nisha ', 'nisha', 'st520578582', '02:52:46pm', '2017:03:10', 'student'),
(116, 'chandankumar', 'chandan', 'st536197599', '09:04:01am', '2017:03:10', 'student'),
(371, 'c1rupesh', 'rupesh', 'st550666154', '12:40:32pm', '2017:03:11', 'student'),
(71, 'priyankakumari', 'priyanka', 'st554904321', '12:50:59am', '2017:03:10', 'student'),
(187, 'c7amrita', 'amrita', 'st56555882', '01:00:06pm', '2017:03:10', 'student'),
(248, 'c5radheshyam', 'radheshyam', 'st610548878', '02:38:41pm', '2017:03:10', 'student'),
(377, 'c1bharat', 'bharat', 'st642615185', '12:48:28pm', '2017:03:11', 'student'),
(380, 'c1Aarti', 'Aarti', 'st643130785', '12:51:46pm', '2017:03:11', 'student'),
(319, 'c3sani', 'sani', 'st648818609', '09:27:08pm', '2017:03:10', 'student'),
(321, '3cmanisha', 'manisha', 'st655534582', '09:30:08pm', '2017:03:10', 'student'),
(209, 'c6punita', 'punita', 'st670832516', '01:32:05pm', '2017:03:10', 'student'),
(170, 'c7aditya', 'aditya', 'st671483371', '11:00:43am', '2017:03:10', 'student'),
(89, 'nisakumari', 'nisa', 'st692413967', '01:20:20am', '2017:03:10', 'student'),
(270, 'c4sangita', 'sangita', 'st710670596', '03:30:04pm', '2017:03:10', 'student'),
(99, 'mandipkumar', 'mandip', 'st722465130', '01:36:58am', '2017:03:10', 'student'),
(110, 'rajamukhiya', 'raja', 'st72406454', '08:51:24am', '2017:03:10', 'student'),
(271, 'c4rajan', 'rajan', 'st738047803', '03:31:21pm', '2017:03:10', 'student'),
(136, 'anukumari', 'anu', 'st740233259', '10:08:57am', '2017:03:10', 'student'),
(269, 'c4bikas ', 'bikas', 'st742038005', '03:28:38pm', '2017:03:10', 'student'),
(285, 'c4rina', 'rina', 'st754470222', '03:50:05pm', '2017:03:10', 'student'),
(74, 'ritikumari', 'riti', 'st771571735', '12:54:41am', '2017:03:10', 'student'),
(225, 'c6anuj', 'anuj', 'st792715976', '01:59:05pm', '2017:03:10', 'student'),
(266, 'c4manu', 'manu', 'st810258242', '03:25:11pm', '2017:03:10', 'student'),
(178, 'c7aarti', 'aarti', 'st835561912', '12:49:49pm', '2017:03:10', 'student'),
(382, 'c1Anil', 'Anil', 'st842623374', '12:54:38pm', '2017:03:11', 'student'),
(240, 'c5sarbajit', 'sarbajit', 'st846704646', '02:26:44pm', '2017:03:10', 'student'),
(126, 'rajankumar', 'rajan', 'st886782283', '09:17:23am', '2017:03:10', 'student'),
(176, 'c7priyantu', 'priyantu', 'st897300909', '12:47:37pm', '2017:03:10', 'student'),
(219, 'c6prashant', 'prashant', 'st899544536', '01:49:21pm', '2017:03:10', 'student'),
(68, 'nirjalakumari', 'nirjala', 'st900923995', '12:44:20am', '2017:03:10', 'student'),
(370, 'c1ankesh', 'ankesh', 'st901282194', '12:36:46pm', '2017:03:11', 'student'),
(261, 'c5pratiksha', 'pratiksha', 'st921458241', '02:57:51pm', '2017:03:10', 'student'),
(355, 'c1salmach', 'salma', 'st92940782', '12:15:39pm', '2017:03:11', 'student'),
(186, 'c7anisa', 'anisa', 'st944237450', '12:59:07pm', '2017:03:10', 'student'),
(190, 'c7chathi', 'chathi', 'st948488748', '01:04:32pm', '2017:03:10', 'student'),
(295, 'c3shanti', 'shanti', 'st953653087', '04:04:52pm', '2017:03:10', 'student'),
(131, 'pujakumari', 'puja', 'st958549041', '09:40:34am', '2017:03:10', 'student'),
(147, 'chandakumari ', 'chanda', 'st971705533', '10:28:06am', '2017:03:10', 'student'),
(76, 'anitakumari', 'anita', 'st987234164', '12:57:28am', '2017:03:10', 'student'),
(299, 'c3shiwdulari', '', 'st988419151', '04:11:04pm', '2017:03:10', 'student'),
(352, 'c2Dhanraj ', 'Dhanraj ', 'st98995954', '11:52:30pm', '2017:03:10', 'student'),
(400, 'kuntidevi ', 'kunti', 'tr1029913392', '10:41:31pm', '2017:03:13', 'teacher'),
(387, 'sundarpandit ', 'sundar', 'tr1105031979', '10:21:48pm', '2017:03:13', 'teacher'),
(397, 'manita', 'manita', 'tr1289977465', '10:36:29pm', '2017:03:13', 'teacher'),
(402, 'pramila ', 'pramila ', 'tr1357123611', '10:50:39pm', '2017:03:13', 'teacher'),
(394, 'parsuram', 'parsuram', 'tr1482331374', '10:32:02pm', '2017:03:13', 'teacher'),
(399, 'awadhkishorprasad ', 'Awadhkishor Prasad ', 'tr1533360085', '10:39:44pm', '2017:03:13', 'teacher'),
(396, 'jitendraprasad', 'jitendra', 'tr1724468803', '10:34:54pm', '2017:03:13', 'teacher'),
(395, 'kishori ', 'kishori ', 'tr1763213852', '10:33:22pm', '2017:03:13', 'teacher'),
(389, 'jagdev  ', 'jagdev  ', 'tr2196102557', '10:24:44pm', '2017:03:13', 'teacher'),
(391, 'rajeshwarprasad ', 'rajeshwar', 'tr235258971', '10:27:51pm', '2017:03:13', 'teacher'),
(401, 'shindhukumari ', 'shindhu', 'tr2539257440', '10:43:18pm', '2017:03:13', 'teacher'),
(385, 'sarojprasad', 'saroj', 'tr2703140633', '10:18:43pm', '2017:03:13', 'teacher'),
(384, 'lachanprasad ', 'lachan', 'tr2835715201', '10:16:00pm', '2017:03:13', 'teacher'),
(383, 'ashkumar ', 'ashkumar ', 'tr3265802475', '10:10:19pm', '2017:03:13', 'teacher'),
(386, 'akhileshwarprasad', 'akhileshwar', 'tr3893555857', '10:20:17pm', '2017:03:13', 'teacher'),
(390, 'ramlakhanprasad', 'ramlakhan', 'tr4283865300', '10:26:11pm', '2017:03:13', 'teacher'),
(392, 'pramodprasad ', 'pramod', 'tr460915059', '10:29:07pm', '2017:03:13', 'teacher'),
(388, 'mimtaj ', 'mimtaj', 'tr811608588', '10:23:34pm', '2017:03:13', 'teacher'),
(403, 'chanchala', 'chanchala', 'tr87965113', '10:58:12pm', '2017:03:13', 'teacher'),
(393, 'harindraprasad', 'harindra', 'tr948137636', '10:30:43pm', '2017:03:13', 'teacher'),
(398, 'ashokkumar', 'ashok', 'tr950240452', '10:38:23pm', '2017:03:13', 'teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sched_activities`
--
ALTER TABLE `sched_activities`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `structures`
--
ALTER TABLE `structures`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `student_table`
--
ALTER TABLE `student_table`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subject_table`
--
ALTER TABLE `subject_table`
  ADD PRIMARY KEY (`subject_no`);

--
-- Indexes for table `tbl_attendence`
--
ALTER TABLE `tbl_attendence`
  ADD PRIMARY KEY (`attID`),
  ADD UNIQUE KEY `attend` (`StudentRollNumber`,`SubjectId`,`Date`),
  ADD KEY `StudentRollNumber_2` (`StudentRollNumber`,`SubjectId`,`Date`);

--
-- Indexes for table `tbl_img`
--
ALTER TABLE `tbl_img`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `teacher_table`
--
ALTER TABLE `teacher_table`
  ADD PRIMARY KEY (`teacher_id`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `trrecord`
--
ALTER TABLE `trrecord`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `sched_activities`
--
ALTER TABLE `sched_activities`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=692;
--
-- AUTO_INCREMENT for table `subject_table`
--
ALTER TABLE `subject_table`
  MODIFY `subject_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_attendence`
--
ALTER TABLE `tbl_attendence`
  MODIFY `attID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
