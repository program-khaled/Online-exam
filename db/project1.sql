-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26 أغسطس 2021 الساعة 18:42
-- إصدار الخادم: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- بنية الجدول `admin`
--

CREATE TABLE `admin` (
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `role` varchar(10) DEFAULT 'admin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `admin`
--

INSERT INTO `admin` (`email`, `password`, `role`) VALUES
('head@gmail.com', 'head', 'head'),
('teacher1@gmail.com', 'teacher1', 'admin'),
('teacher2@gmail.com', 'teacher2', 'admin');

-- --------------------------------------------------------

--
-- بنية الجدول `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('6127c39ea0663', '6127c39ea0b12'),
('6127c39ea2840', '6127c39ea2d1e'),
('6127c39ec6f44', '6127c39ec7b65'),
('6127c39eda9b4', '6127c39edaf05'),
('6127c39edca06', '6127c39edce07');

-- --------------------------------------------------------

--
-- بنية الجدول `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('6127c39ea0663', 'في افريقيا', '6127c39ea0b0f'),
('6127c39ea0663', 'في اسيا', '6127c39ea0b10'),
('6127c39ea0663', 'في امريكا', '6127c39ea0b11'),
('6127c39ea0663', 'في الخليج العربي', '6127c39ea0b12'),
('6127c39ea2840', 'هارون الرشيد', '6127c39ea2d1b'),
('6127c39ea2840', 'المتنبي', '6127c39ea2d1c'),
('6127c39ea2840', 'ناظم الغزالي', '6127c39ea2d1d'),
('6127c39ea2840', 'ابو جعفر المنصور', '6127c39ea2d1e'),
('6127c39ec6f44', 'الانبار', '6127c39ec7b5b'),
('6127c39ec6f44', 'البصرة', '6127c39ec7b63'),
('6127c39ec6f44', 'نينوى', '6127c39ec7b64'),
('6127c39ec6f44', 'بغداد', '6127c39ec7b65'),
('6127c39eda9b4', 'الفرات', '6127c39edaf05'),
('6127c39eda9b4', 'شط العرب', '6127c39edaf07'),
('6127c39eda9b4', 'دجلة', '6127c39edaf08'),
('6127c39eda9b4', 'النيل', '6127c39edaf09'),
('6127c39edca06', 'انشتاين', '6127c39edce04'),
('6127c39edca06', 'ابن سينا', '6127c39edce05'),
('6127c39edca06', 'ابن الهيثم', '6127c39edce06'),
('6127c39edca06', 'حمورابي', '6127c39edce07');

-- --------------------------------------------------------

--
-- بنية الجدول `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('6127c322bc524', '6127c39ea0663', 'اين يقع العراق', 4, 1),
('6127c322bc524', '6127c39ea2840', 'من هو مؤسس بغداد', 4, 2),
('6127c322bc524', '6127c39ec6f44', 'ماهي عاصمة العراق', 4, 3),
('6127c322bc524', '6127c39eda9b4', 'ماهو النهر الذي يقسم بغداد الى قسمين', 4, 4),
('6127c322bc524', '6127c39edca06', 'من هو اول من كتب القانون في العالم', 4, 5);

-- --------------------------------------------------------

--
-- بنية الجدول `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`, `email`) VALUES
('6127c322bc524', 'معلومات عامة', 10, 10, 5, 40, 'امتحان تجريبي ', '#معلومات', '2021-08-26 16:36:50', 'teacher1@gmail.com');

-- --------------------------------------------------------

--
-- بنية الجدول `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- بنية الجدول `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
