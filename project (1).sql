-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2019 at 12:03 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `all_player`
-- (See below for the actual view)
--
CREATE TABLE `all_player` (
`Player_Name` varchar(40)
,`Debut_Date` date
,`Age` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `all_rounder`
--

CREATE TABLE `all_rounder` (
  `All_Name` varchar(40) NOT NULL,
  `All_id` int(11) NOT NULL,
  `Bat_Avg` float NOT NULL,
  `St_Rate` float NOT NULL,
  `Economy` float NOT NULL,
  `Wickets_per_match` float NOT NULL,
  `Matches` int(11) NOT NULL,
  `all_points` int(11) NOT NULL,
  `all_img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `all_rounder`
--

INSERT INTO `all_rounder` (`All_Name`, `All_id`, `Bat_Avg`, `St_Rate`, `Economy`, `Wickets_per_match`, `Matches`, `all_points`, `all_img`) VALUES
('Hardik Pandya', 288, 29.24, 116, 5.53, 1, 45, 270, 'https://www.cricbuzz.com/stats/img/faceImages/9647.jpg'),
('Krunal Pandya', 199, 32.2, 85, 5.21, 1.106, 0, 270, 'https://www.cricbuzz.com/stats/img/faceImages/11311.jpg'),
('Vijay Shankar', 487, 36.65, 92.94, 5.05, 0.8, 9, 270, 'https://www.cricbuzz.com/stats/img/faceImages/8204.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `batsman`
--

CREATE TABLE `batsman` (
  `Bat_Name` varchar(40) NOT NULL,
  `Bat_id` int(11) NOT NULL,
  `Bat_Avg` float NOT NULL,
  `St_Rate` float NOT NULL,
  `Centuries` int(11) NOT NULL,
  `Matches_Played` int(11) NOT NULL,
  `Avg_Home` float NOT NULL,
  `Avg_Away` float NOT NULL,
  `Bat_Form` float NOT NULL,
  `Is_Injured` tinyint(1) NOT NULL,
  `Is_Captain` tinyint(1) NOT NULL,
  `Bat_Points` int(11) DEFAULT NULL,
  `Bat_img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batsman`
--

INSERT INTO `batsman` (`Bat_Name`, `Bat_id`, `Bat_Avg`, `St_Rate`, `Centuries`, `Matches_Played`, `Avg_Home`, `Avg_Away`, `Bat_Form`, `Is_Injured`, `Is_Captain`, `Bat_Points`, `Bat_img`) VALUES
('Rohit Sharma', 101, 47.39, 87.95, 22, 206, 61.98, 41.27, 48.9, 0, 0, 320, 'https://www.cricbuzz.com/stats/img/faceImages/576.jpg'),
('Virat Kohli', 127, 59.57, 92.96, 41, 227, 62.07, 57.87, 61, 0, 1, 1360, 'https://sportsbeatsindia.com/wp-content/uploads/2017/11/Virat-Kohli.jpg'),
('Shikhar Dhawan', 217, 44.62, 93.79, 16, 128, 40.97, 46.25, 39, 0, 0, 280, 'https://www.cricbuzz.com/stats/img/faceImages/1446.jpg'),
('Ambati Rayudu', 256, 47.05, 79.04, 3, 55, 46.42, 47.38, 24.7, 0, 0, 210, 'http://www.espncricinfo.com/db/PICTURES/CMS/205300/205371.1.jpg'),
('Kedar Jadhav', 321, 43.48, 102.53, 2, 59, 43.63, 43.27, 29, 0, 0, 240, 'http://www.espncricinfo.com/db/PICTURES/CMS/263700/263706.1.jpg'),
('Lokesh Rahul', 354, 34.3, 80.89, 1, 14, 44.25, 30, 24.1, 0, 0, 160, 'https://starsunfolded.com/wp-content/uploads/2016/05/KL-Rahul-10.jpg'),
('Ajinkaya Rahane', 444, 35.25, 78.63, 3, 90, 34, 36.12, 33.5, 1, 0, -1790, 'https://i.cricketcb.com/stats/img/faceImages/1447.jpg'),
('Prithvi Shaw', 1001, 25.55, 73.68, 0, 7, 30, 21.05, 55, 0, 0, 160, 'https://blogtimenow.com/wp-content/uploads/2014/06/hide-facebook-profile-picture-notification.jpg'),
('Sachin Tendulkar', 1011, 100, 100, 100, 100, 100, 100, 100, 1, 0, -1750, 'https://blogtimenow.com/wp-content/uploads/2014/06/hide-facebook-profile-picture-notification.jpg');

-- --------------------------------------------------------

--
-- Stand-in structure for view `bat_view`
-- (See below for the actual view)
--
CREATE TABLE `bat_view` (
`Bat_Name` varchar(40)
,`Bat_id` int(11)
,`Matches_Played` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `bowler`
--

CREATE TABLE `bowler` (
  `Bowler_Name` varchar(40) NOT NULL,
  `Bowl_id` int(11) NOT NULL,
  `Bowl_Type` varchar(40) NOT NULL,
  `Economy` float NOT NULL,
  `Wickets_per_match` float NOT NULL,
  `Matches` int(11) NOT NULL,
  `5w` int(11) NOT NULL,
  `Bowl_Form` float NOT NULL,
  `Is_Injured` tinyint(1) NOT NULL,
  `Bowl_Points` int(11) NOT NULL,
  `Bowl_img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bowler`
--

INSERT INTO `bowler` (`Bowler_Name`, `Bowl_id`, `Bowl_Type`, `Economy`, `Wickets_per_match`, `Matches`, `5w`, `Bowl_Form`, `Is_Injured`, `Bowl_Points`, `Bowl_img`) VALUES
('Jasprit Bumrah', 145, 'Fast Medium', 4.51, 1.73, 49, 1, 60.24, 0, 380, 'http://www.espncricinfo.com/db/PICTURES/CMS/263700/263704.1.jpg'),
('Bhuvaneshwar Kumar', 196, 'Fast Medium', 5.01, 1.123, 105, 1, 42.41, 0, 355, 'https://www.cricbuzz.com/stats/img/faceImages/1726.jpg'),
('Mohammed Shami', 221, 'Fast Medium', 5.58, 1.793, 62, 0, 31.2, 1, -1710, 'http://www.espncricinfo.com/db/PICTURES/CMS/263700/263708.1.jpg'),
('Ravichandra Ashwin', 244, 'Spin', 4.91, 1.35, 111, 0, 19.19, 0, 310, 'https://www.cricbuzz.com/stats/img/faceImages/1593.jpg'),
('Ravindra Jadeja', 324, 'Spin', 4.88, 1.152, 151, 1, 27.65, 0, 360, 'https://www.cricbuzz.com/stats/img/faceImages/587.jpg'),
('Yuzvendra Chahal', 397, 'Spin', 4.89, 1.75, 41, 0, 43.01, 0, 320, 'https://static.indiatvnews.com/ins-web/images/yuzvendra-chahal-1540550943.jpg'),
('Kuldeep Yadav', 414, 'Spin', 4.93, 2.01, 44, 1, 36.36, 0, 360, 'http://www.espncricinfo.com/db/PICTURES/CMS/179400/179447.1.jpg'),
('Umesh Yadav', 423, 'Fast Medium', 6.01, 1.413, 75, 0, 24.8, 0, 250, 'https://i.cricketcb.com/stats/img/faceImages/1858.jpg');

-- --------------------------------------------------------

--
-- Stand-in structure for view `bowl_view`
-- (See below for the actual view)
--
CREATE TABLE `bowl_view` (
`Bowler_Name` varchar(40)
,`Bowl_id` int(11)
,`Bowl_Type` varchar(40)
,`Matches` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `coach_1`
--

CREATE TABLE `coach_1` (
  `Coach_Name` char(30) DEFAULT NULL,
  `Coach_ID` char(10) DEFAULT NULL,
  `Specialization` char(30) DEFAULT NULL,
  `Join_Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coach_1`
--

INSERT INTO `coach_1` (`Coach_Name`, `Coach_ID`, `Specialization`, `Join_Date`) VALUES
('Ravi Shastri', 'C1055', 'Head Coach', '2017-07-17'),
('Sanjay Bangar', 'C1024', 'Assistant Coach', '2017-07-17'),
('Bharat Arun', 'C1035', 'Bowling Coach', '2017-07-17'),
('R Sridhar', 'C1044', 'Batting Coach', '2017-07-17'),
('Patrick Farhart', 'C1021', 'Physio', '2017-07-17'),
('Test', 'C1066', 'Bowling', '2019-04-12'),
('Test2', 'C1077', 'Batting Coach', '2019-04-12'),
('Test3', 'C1088', 'Fielding Coach', '2019-04-13'),
('Tirth', 'C1099', 'Keeping Coach', '2019-04-13'),
('Mridul', 'C2000', 'Everything', '2019-04-13'),
('Mridul', 'C2001', 'Batting', '2019-04-16');

--
-- Triggers `coach_1`
--
DELIMITER $$
CREATE TRIGGER `Insert_Coach` AFTER INSERT ON `coach_1` FOR EACH ROW INSERT INTO coach_logs VALUES (NULL,NEW.Coach_Id,'Inserted',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `coach_logs`
--

CREATE TABLE `coach_logs` (
  `id` int(11) NOT NULL,
  `Coach_Id` varchar(10) NOT NULL,
  `Action` varchar(20) NOT NULL,
  `Created_Date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coach_logs`
--

INSERT INTO `coach_logs` (`id`, `Coach_Id`, `Action`, `Created_Date`) VALUES
(1, 'C1088', 'Inserted', '2019-04-13 18:45:37'),
(2, 'C1099', 'Inserted', '2019-04-13 18:50:41'),
(3, 'C2000', 'Inserted', '2019-04-15 15:13:48'),
(4, 'C2001', 'Inserted', '2019-04-16 10:13:55');

-- --------------------------------------------------------

--
-- Table structure for table `cricket_team`
--

CREATE TABLE `cricket_team` (
  `Team_Name` varchar(20) NOT NULL,
  `Team_Ranking` int(10) NOT NULL,
  `Trophies_Won` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cricket_team`
--

INSERT INTO `cricket_team` (`Team_Name`, `Team_Ranking`, `Trophies_Won`) VALUES
('Team India', 3, 'ODI World Cup 1983 Winners'),
('Team India', 3, 'T-20 World Cup 2007 Winners'),
('Team India', 3, 'ODI World Cup 2011 Winners'),
('Team India', 3, 'Champions Trophy 2013 Winners');

-- --------------------------------------------------------

--
-- Table structure for table `opponents`
--

CREATE TABLE `opponents` (
  `Opp_Name` varchar(30) NOT NULL,
  `Opp_Ranking` int(11) NOT NULL,
  `Total_Wins` int(11) NOT NULL,
  `Total_Losses` int(11) NOT NULL,
  `Managing_Board` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opponents`
--

INSERT INTO `opponents` (`Opp_Name`, `Opp_Ranking`, `Total_Wins`, `Total_Losses`, `Managing_Board`) VALUES
('England', 1, 362, 330, 'England And Wales Cricket Board'),
('New Zealand', 3, 332, 362, 'New Zealand Cricket'),
('South Africa', 4, 362, 204, 'Cricket South Africa'),
('Australia', 5, 562, 326, 'Cricket Australia'),
('Pakistan', 6, 479, 401, 'Pakistan Cricket Board'),
('Sri Lanka', 8, 379, 416, 'Sri Lanka Cricket');

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `Player_Name` varchar(40) NOT NULL,
  `Player_id` int(11) NOT NULL,
  `Debut_Date` date NOT NULL,
  `Age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`Player_Name`, `Player_id`, `Debut_Date`, `Age`) VALUES
('MS Dhoni', 98, '2004-12-23', 37),
('Rohit Sharma', 101, '2007-06-23', 31),
('Virat Kohli', 127, '2008-08-18', 30),
('Jasprit Bumrah', 145, '2016-01-23', 25),
('Bhuvaneshvar Kumar', 196, '2012-12-30', 29),
('Krunal Pandya', 199, '2019-03-21', 28),
('Shikhar Dhawan', 217, '2010-10-10', 33),
('Mohammed Shami', 221, '2013-01-06', 28),
('Ravichandra Ashwin', 244, '2010-06-05', 32),
('Ambati Rayudu', 256, '2013-07-24', 33),
('Hardik Pandya', 288, '2016-10-16', 25),
('Dinesh Kartik', 294, '2004-09-05', 33),
('Kedar Jadhav', 321, '2014-11-16', 34),
('Ravindra Jadeja', 324, '2009-02-08', 30),
('Lokesh Rahul', 354, '2016-06-10', 26),
('Rishabh Pant', 363, '2018-10-21', 21),
('Yuzvendra Chahal', 397, '2016-06-11', 28),
('Kuldeep Yadav', 414, '2017-06-23', 24),
('Umesh Yadav', 423, '2010-05-28', 31),
('Ajinkya Rahane', 444, '2013-03-22', 30),
('Vijay Shankar', 487, '2019-01-18', 28),
('Sachin Tendulkar', 1011, '1998-06-09', 39);

-- --------------------------------------------------------

--
-- Table structure for table `wicket_keeper`
--

CREATE TABLE `wicket_keeper` (
  `Wk_Name` varchar(40) NOT NULL,
  `Wk_id` int(11) NOT NULL,
  `Bat_Avg` float NOT NULL,
  `Catches` int(11) NOT NULL,
  `Stump_Outs` int(11) NOT NULL,
  `Matches` int(11) NOT NULL,
  `St_Rate` float NOT NULL,
  `Avg_Home` float NOT NULL,
  `Avg_Away` float NOT NULL,
  `wk_points` int(11) NOT NULL,
  `Wk_img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wicket_keeper`
--

INSERT INTO `wicket_keeper` (`Wk_Name`, `Wk_id`, `Bat_Avg`, `Catches`, `Stump_Outs`, `Matches`, `St_Rate`, `Avg_Home`, `Avg_Away`, `wk_points`, `Wk_img`) VALUES
('MS Dhoni', 98, 50.12, 313, 120, 341, 87.55, 54.52, 48.19, 440, 'https://www.cricbuzz.com/stats/img/faceImages/265.jpg'),
('Dinesh Kartik', 294, 31.04, 35, 7, 71, 73.71, 42.3, 28.59, 260, 'http://www.espncricinfo.com/db/PICTURES/CMS/263600/263696.1.jpg'),
('Rishab Pant', 363, 23.25, 2, 0, 5, 130.98, 23.25, 0, 220, 'https://images1.livehindustan.com/uploadimage/library/2019/02/06/16_9/16_9_1/Rishabh_Pant_Getty_Images__1549426200.jpg');

-- --------------------------------------------------------

--
-- Structure for view `all_player`
--
DROP TABLE IF EXISTS `all_player`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `all_player`  AS  select `player`.`Player_Name` AS `Player_Name`,`player`.`Debut_Date` AS `Debut_Date`,`player`.`Age` AS `Age` from `player` ;

-- --------------------------------------------------------

--
-- Structure for view `bat_view`
--
DROP TABLE IF EXISTS `bat_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bat_view`  AS  select `batsman`.`Bat_Name` AS `Bat_Name`,`batsman`.`Bat_id` AS `Bat_id`,`batsman`.`Matches_Played` AS `Matches_Played` from (`batsman` join `player`) where (`batsman`.`Bat_id` = `player`.`Player_id`) ;

-- --------------------------------------------------------

--
-- Structure for view `bowl_view`
--
DROP TABLE IF EXISTS `bowl_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bowl_view`  AS  select `bowler`.`Bowler_Name` AS `Bowler_Name`,`bowler`.`Bowl_id` AS `Bowl_id`,`bowler`.`Bowl_Type` AS `Bowl_Type`,`bowler`.`Matches` AS `Matches` from (`player` join `bowler`) where (`player`.`Player_id` = `bowler`.`Bowl_id`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `all_rounder`
--
ALTER TABLE `all_rounder`
  ADD PRIMARY KEY (`All_Name`);

--
-- Indexes for table `batsman`
--
ALTER TABLE `batsman`
  ADD PRIMARY KEY (`Bat_id`);

--
-- Indexes for table `bowler`
--
ALTER TABLE `bowler`
  ADD PRIMARY KEY (`Bowl_id`);

--
-- Indexes for table `coach_logs`
--
ALTER TABLE `coach_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opponents`
--
ALTER TABLE `opponents`
  ADD PRIMARY KEY (`Opp_Ranking`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`Player_id`);

--
-- Indexes for table `wicket_keeper`
--
ALTER TABLE `wicket_keeper`
  ADD PRIMARY KEY (`Wk_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coach_logs`
--
ALTER TABLE `coach_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
