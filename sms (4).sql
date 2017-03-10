-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2017 at 09:33 PM
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
(41, 2, 'PROF', 'Anu Patel', '', NULL, 0);

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
(680, 2, 32, 31, 30, 3, 7, 0),
(681, 2, 29, 31, 30, 4, 1, 0),
(682, 2, 29, 31, 30, 2, 1, 0),
(683, 2, 29, 31, 30, 6, 1, 0);

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
('st0', '', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 'Not Paid', 0);

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
('st233386664', 2, '1992-03-09', 'male', 'patelarun@outlook.com', '9841575754', 'Madhopur', 'Enrolled', 2017, 4, 'JayNarayan Raut', 'Anita Devi Raut', 'Arun Patel', 1400, 100),
('st25588418', 0, '1996-03-09', 'male', 'patelamyt@gmail.com', '9841334455', 'Madhopur', 'Enrolled', 2017, 6, 'JayNarayan Raut', 'Anita Devi Raut', 'Amit Kumar Patel', 1500, 200),
('st817477723', 5, '1986-03-14', 'male', 'pateladi@gmail.com', '9841334455', 'Madhopur', 'Enrolled', 2017, 4, 'JayNarayan Raut', 'Anita Devi Raut', 'Aditya Patel', 1400, 200);

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
(1, 'Math', 'Anu Patel', 'Compulsory', 4),
(2, 'English', 'Anu Patel', 'Compulsory', 5);

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
(43, 5, 1, 'P', '2017-03-03 00:00:00'),
(44, 2, 1, 'P', '2017-03-10 00:00:00'),
(45, 2, 2, 'P', '2017-03-10 00:00:00'),
(49, 5, 1, 'P', '2017-03-10 00:00:00'),
(52, 5, 2, 'P', '2017-03-10 00:00:00'),
(53, 0, 1, 'P', '2017-03-10 00:00:00'),
(54, 0, 2, 'A', '2017-03-10 00:00:00');

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
('amit.jpg', 'image/jpeg');

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
('tr1833286559', 'Anu', 'Patel', '1994-03-08', 'female', 'patelanu@gmail.com', '9841334455', 'Master', '60000', 'Madhopur', 41, 'JayNarayan Raut', 'Anita Devi Raut');

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
(61, '', '', 'st0', '12:58:25am', '2017:03:11', 'student'),
(48, 'arun', 'patel', 'st233386664', '07:45:08pm', '2017:03:01', 'student'),
(39, 'amit', 'patel', 'st25588418', '12:02:00am', '2017:03:01', 'student'),
(52, 'aditya', 'patel', 'st817477723', '08:17:39pm', '2017:03:02', 'student'),
(51, 'anu', 'patel', 'tr1833286559', '12:21:15am', '2017:03:02', 'teacher');

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
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_index` (`name`,`class`,`date_time`),
  ADD UNIQUE KEY `unique_sub` (`name`,`class`),
  ADD UNIQUE KEY `unique_date` (`class`,`date_time`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `sched_activities`
--
ALTER TABLE `sched_activities`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=684;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `subject_table`
--
ALTER TABLE `subject_table`
  MODIFY `subject_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_attendence`
--
ALTER TABLE `tbl_attendence`
  MODIFY `attID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
