-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 23, 2019 at 09:15 PM
-- Server version: 5.5.60-0+deb8u1-log
-- PHP Version: 5.6.38-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `srv_1086206_5dP`
--

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE IF NOT EXISTS `atms` (
`atmSQLID` smallint(6) NOT NULL,
  `atmPos1` float NOT NULL,
  `atmPos2` float NOT NULL,
  `atmPos3` float NOT NULL,
  `atmPos4` float NOT NULL,
  `atmPos5` float NOT NULL,
  `atmPos6` float NOT NULL,
  `atmPreseceneZice` tinyint(1) NOT NULL DEFAULT '0',
  `atmProbijenBios` tinyint(1) NOT NULL DEFAULT '0',
  `atmVremeDoRoba` tinyint(1) NOT NULL DEFAULT '0',
  `atmExists` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banned`
--

CREATE TABLE IF NOT EXISTS `banned` (
`ban_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ban_type` smallint(1) DEFAULT NULL,
  `ban_time` int(11) DEFAULT NULL,
  `ban_reason` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_admin` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_date` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bussines`
--

CREATE TABLE IF NOT EXISTS `bussines` (
`bussines_id` int(11) NOT NULL,
  `b_owner_sqlID` int(11) DEFAULT '-1',
  `bOnAuction` tinyint(1) NOT NULL DEFAULT '0',
  `bOwner` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Drzava',
  `b_price` int(11) NOT NULL,
  `b_type` smallint(3) NOT NULL,
  `b_locked` tinyint(4) DEFAULT '0',
  `b_money` int(11) DEFAULT '0',
  `b_enter_x` float NOT NULL,
  `b_enter_y` float NOT NULL,
  `b_enter_z` float NOT NULL,
  `b_exit_x` float DEFAULT '0',
  `b_exit_y` float DEFAULT '0',
  `b_exit_z` float DEFAULT '0',
  `b_enter_int` int(11) DEFAULT '0',
  `b_enter_vw` int(11) DEFAULT '0',
  `b_exit_int` int(11) DEFAULT '0',
  `b_exit_vw` int(11) DEFAULT '0',
  `b_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `b_level` int(11) NOT NULL,
  `b_jobID` smallint(2) DEFAULT '0',
  `b_neaktivnost` int(11) DEFAULT '0',
  `b_facture` int(11) DEFAULT '100'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bussines`
--

INSERT INTO `bussines` (`bussines_id`, `b_owner_sqlID`, `bOnAuction`, `bOwner`, `b_price`, `b_type`, `b_locked`, `b_money`, `b_enter_x`, `b_enter_y`, `b_enter_z`, `b_exit_x`, `b_exit_y`, `b_exit_z`, `b_enter_int`, `b_enter_vw`, `b_exit_int`, `b_exit_vw`, `b_name`, `b_level`, `b_jobID`, `b_neaktivnost`, `b_facture`) VALUES
(2, -1, 0, 'Drzava', 500000, 1, 0, 3075, 1315, -899.269, 39.578, -30.908, -92.01, 1003.55, 0, 0, 18, 1, 'Prodavnica 24/7', 5, 0, 0, 100),
(3, 10, 0, 'Kristijan', 550000, 16, 0, 186500, 1396.53, -916.019, 35.751, 1031.73, 2662.57, -46.5, 0, 0, 0, 2, 'Electronic Shop', 5, 0, 53, 47),
(4, -1, 0, 'Drzava', 2000000, 27, 0, 153, 1346.94, -1088.63, 24.238, 0, 0, 0, 0, 0, 0, 0, 'Vodovod', 5, 0, 0, 100),
(5, 10, 0, 'Kristijan', 1500000, 22, 0, 566000, 1342.06, -1104.21, 23.818, 1630.9, -1176.34, 1025.58, 0, 0, 6, 4, 'Kladionica', 5, 0, 1, 48),
(6, 3, 0, 'Ghetoven', 1000000, 30, 0, 0, 1083.35, 995.123, 11, 1141.8, -50.702, 996.521, 0, 0, 3, 5, 'Casino', 5, 0, 49, 51),
(7, -1, 0, 'Drzava', 500000, 1, 0, 800, 1549.53, -2306.07, 13.545, -30.908, -92.01, 1003.55, 0, 0, 18, 6, 'Prodavnica 24/7', 5, 0, 0, 100);

-- --------------------------------------------------------

--
-- Table structure for table `containers`
--

CREATE TABLE IF NOT EXISTS `containers` (
`koSQLID` smallint(6) NOT NULL,
  `koObjPos1` float NOT NULL,
  `koObjPos2` float NOT NULL,
  `koObjPos3` float NOT NULL,
  `koObjRot1` float NOT NULL,
  `koObjRot2` float NOT NULL,
  `koObjRot3` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `containers`
--

INSERT INTO `containers` (`koSQLID`, `koObjPos1`, `koObjPos2`, `koObjPos3`, `koObjRot1`, `koObjRot2`, `koObjRot3`) VALUES
(1, 1337.34, -1106.52, 23.687, 0, 0, -97.2);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE IF NOT EXISTS `fields` (
`fieldSQLID` mediumint(9) NOT NULL,
  `fieldOwnerSQLID` int(11) NOT NULL,
  `fieldOwned` tinyint(1) NOT NULL DEFAULT '0',
  `fieldOwner` varchar(25) NOT NULL DEFAULT 'Drzava',
  `fieldPrice` int(11) NOT NULL,
  `fieldLevel` smallint(6) NOT NULL,
  `fieldMaxX` float NOT NULL,
  `fieldMinX` float NOT NULL,
  `fieldMaxY` float NOT NULL,
  `fieldMinY` float NOT NULL,
  `fieldStalkNumber` tinyint(2) NOT NULL,
  `fieldObjectPos1` float NOT NULL,
  `fieldObjectPos2` float NOT NULL,
  `fieldObjectPos3` float NOT NULL,
  `fieldObjectPos4` float NOT NULL,
  `fieldObjectPos5` float NOT NULL,
  `fieldObjectPos6` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`fieldSQLID`, `fieldOwnerSQLID`, `fieldOwned`, `fieldOwner`, `fieldPrice`, `fieldLevel`, `fieldMaxX`, `fieldMinX`, `fieldMaxY`, `fieldMinY`, `fieldStalkNumber`, `fieldObjectPos1`, `fieldObjectPos2`, `fieldObjectPos3`, `fieldObjectPos4`, `fieldObjectPos5`, `fieldObjectPos6`) VALUES
(1, 12, 1, 'Luka_Smith', 150000, 4, -159.351, -325.958, -1312.63, -1416.17, 27, -317.119, -1316.21, 8.313, -1, 1.4, 4.298),
(2, 0, 0, 'Drzava', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fields_stalks`
--

CREATE TABLE IF NOT EXISTS `fields_stalks` (
`sSQLID` mediumint(9) NOT NULL,
  `sfieldID` mediumint(9) NOT NULL,
  `sPos1` float NOT NULL,
  `sPos2` float NOT NULL,
  `sPos3` float NOT NULL,
  `sPlanted` tinyint(1) NOT NULL DEFAULT '1',
  `sGrow` tinyint(1) NOT NULL DEFAULT '0',
  `sMinut` tinyint(2) NOT NULL,
  `sHour` tinyint(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fields_stalks`
--

INSERT INTO `fields_stalks` (`sSQLID`, `sfieldID`, `sPos1`, `sPos2`, `sPos3`, `sPlanted`, `sGrow`, `sMinut`, `sHour`) VALUES
(1, 0, -316.721, -1316.01, 9.361, 1, 1, 0, 0),
(2, 0, -315.162, -1317.91, 9.233, 1, 1, 0, 0),
(3, 0, -313.089, -1316.85, 9.28, 1, 1, 0, 0),
(4, 0, -312.285, -1318.98, 9.144, 1, 1, 0, 0),
(5, 0, -314.67, -1319.69, 9.121, 1, 1, 0, 0),
(6, 0, -318.925, -1319.06, 9.194, 1, 1, 0, 0),
(7, 0, -321.172, -1317.25, 9.323, 1, 1, 0, 0),
(8, 0, -319.779, -1316.05, 9.383, 1, 1, 0, 0),
(9, 0, -321.941, -1314.15, 9.516, 1, 1, 0, 0),
(10, 0, -324.668, -1316.33, 9.537, 1, 1, 0, 0),
(11, 0, -324.434, -1318.51, 9.52, 1, 1, 0, 0),
(12, 0, -323.951, -1320.89, 9.486, 1, 1, 0, 0),
(13, 0, -324.099, -1317.65, 9.498, 1, 1, 0, 0),
(14, 0, -321.819, -1319.56, 9.347, 1, 1, 0, 0),
(15, 0, -319.36, -1318.03, 9.26, 1, 1, 0, 0),
(16, 0, -316.509, -1313.93, 9.484, 1, 1, 0, 0),
(17, 0, -314.815, -1314.81, 9.417, 1, 1, 0, 0),
(18, 0, -310.826, -1316.82, 9.262, 1, 1, 0, 0),
(19, 0, -311.397, -1321.36, 8.993, 1, 1, 0, 0),
(20, 0, -313.444, -1321.37, 9.009, 1, 1, 0, 0),
(21, 0, -315.821, -1321.1, 9.045, 1, 1, 0, 0),
(22, 0, -316.62, -1321.01, 9.057, 1, 1, 0, 0),
(23, 0, -318.128, -1320.84, 9.103, 1, 1, 0, 0),
(24, 0, -318.742, -1320.77, 9.143, 1, 1, 0, 0),
(25, 0, -319.443, -1320.69, 9.189, 1, 1, 0, 0),
(26, 0, -319.443, -1320.69, 9.649, 1, 1, 0, 0),
(27, 0, -320.132, -1320.61, 9.235, 1, 1, 0, 0),
(28, 0, -321.038, -1320.51, 9.295, 1, 1, 0, 0),
(29, 0, -322.484, -1320.35, 9.39, 1, 1, 0, 0),
(30, 0, -322.999, -1319.39, 9.425, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fuel_stations`
--

CREATE TABLE IF NOT EXISTS `fuel_stations` (
`fsSQLID` int(11) NOT NULL,
  `fsPlaced` tinyint(1) NOT NULL DEFAULT '1',
  `fsBussinesID` mediumint(9) NOT NULL,
  `fsName` varchar(50) NOT NULL,
  `fsFuelL` smallint(6) NOT NULL DEFAULT '50',
  `fsFuelPrice` tinyint(2) NOT NULL,
  `fsPos1` float NOT NULL,
  `fsPos2` float NOT NULL,
  `fsPos3` float NOT NULL,
  `fsTruckID` mediumint(9) NOT NULL DEFAULT '-1',
  `fsCisternID` mediumint(9) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangzones`
--

CREATE TABLE IF NOT EXISTS `gangzones` (
`gzone_id` int(11) NOT NULL,
  `taken` tinyint(4) DEFAULT NULL,
  `takeable` tinyint(4) DEFAULT NULL,
  `gang_id` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `gz_radius` smallint(3) NOT NULL DEFAULT '100',
  `color` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_pos_x` float DEFAULT NULL,
  `pickup_pos_y` float DEFAULT NULL,
  `pickup_pos_z` float DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gangzones`
--

INSERT INTO `gangzones` (`gzone_id`, `taken`, `takeable`, `gang_id`, `time`, `gz_radius`, `color`, `pickup_pos_x`, `pickup_pos_y`, `pickup_pos_z`) VALUES
(2, 0, 1, 0, 0, 250, 'FFFFFF', 671.469, -519.967, 16.336),
(3, 1, 1, 1, 0, 150, '', 2667.75, -1474.22, 30.594);

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE IF NOT EXISTS `garages` (
`garage_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT '-1',
  `g_property` int(11) DEFAULT '0',
  `g_price` int(11) NOT NULL,
  `g_level` int(11) NOT NULL,
  `g_locked` tinyint(4) DEFAULT '0',
  `garage_pos_x` float NOT NULL,
  `garage_pos_y` float NOT NULL,
  `garage_pos_z` float NOT NULL,
  `garage_vehicle_pos_x` float NOT NULL,
  `garage_vehicle_pos_y` float NOT NULL,
  `garage_vehicle_pos_z` float NOT NULL,
  `garage_vehicle_pos_a` float NOT NULL,
  `g_vw` int(11) NOT NULL,
  `g_type` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `garages`
--

INSERT INTO `garages` (`garage_id`, `owner_id`, `g_property`, `g_price`, `g_level`, `g_locked`, `garage_pos_x`, `garage_pos_y`, `garage_pos_z`, `garage_vehicle_pos_x`, `garage_vehicle_pos_y`, `garage_vehicle_pos_z`, `garage_vehicle_pos_a`, `g_vw`, `g_type`) VALUES
(1, 24, 2, 500000, 6, 0, 1012.44, 1058.53, 11, 1017.95, 1060.51, 10.569, 288.589, 0, 3),
(2, 24, 0, 500000, 6, 0, 759.927, -1610.33, 12.846, 758.634, -1610.71, 12.474, 2.136, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE IF NOT EXISTS `gates` (
`gateid` int(11) NOT NULL,
  `gateowner` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gatemodel` int(11) NOT NULL,
  `gatefor` int(11) NOT NULL,
  `gateorg` int(11) DEFAULT NULL,
  `gatespeed` float NOT NULL,
  `gateradius` float NOT NULL,
  `gatetime` int(11) NOT NULL,
  `gatepos_1` float NOT NULL,
  `gatepos_2` float NOT NULL,
  `gatepos_3` float NOT NULL,
  `gatepos_4` float NOT NULL,
  `gatepos_5` float NOT NULL,
  `gatepos_6` float NOT NULL,
  `gateint` int(11) DEFAULT NULL,
  `gatevw` int(11) DEFAULT NULL,
  `gatemove_1` float NOT NULL,
  `gatemove_2` float NOT NULL,
  `gatemove_3` float NOT NULL,
  `gatemove_4` float NOT NULL,
  `gatemove_5` float NOT NULL,
  `gatemove_6` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gps`
--

CREATE TABLE IF NOT EXISTS `gps` (
`gpsSQLID` smallint(6) NOT NULL,
  `gpsName` varchar(50) NOT NULL,
  `gpsPos1` float NOT NULL,
  `gpsPos2` float NOT NULL,
  `gpsPos3` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE IF NOT EXISTS `organizations` (
`org_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(24) CHARACTER SET utf8 DEFAULT NULL,
  `type` int(11) NOT NULL,
  `suspended` tinyint(4) DEFAULT '0',
  `max_members` smallint(2) DEFAULT '30',
  `male_skin_1` smallint(3) NOT NULL,
  `male_skin_2` smallint(3) NOT NULL,
  `male_skin_3` smallint(3) NOT NULL,
  `male_skin_4` smallint(3) NOT NULL,
  `male_skin_5` smallint(3) NOT NULL,
  `male_skin_6` smallint(3) NOT NULL,
  `female_skin_1` smallint(3) NOT NULL,
  `female_skin_2` smallint(3) NOT NULL,
  `female_skin_3` smallint(3) NOT NULL,
  `female_skin_4` smallint(3) NOT NULL,
  `female_skin_5` smallint(3) NOT NULL,
  `female_skin_6` smallint(3) NOT NULL,
  `rank_1` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_2` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_3` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_4` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_5` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_6` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `enter_pos_x` float NOT NULL,
  `enter_pos_y` float NOT NULL,
  `enter_pos_z` float NOT NULL,
  `exit_pos_x` float NOT NULL,
  `exit_pos_y` float NOT NULL,
  `exit_pos_z` float NOT NULL,
  `interior` int(11) DEFAULT '0',
  `virtualw` int(11) DEFAULT '0',
  `spawn_point_x` float DEFAULT '0',
  `spawn_point_y` float DEFAULT '0',
  `spawn_point_z` float DEFAULT '0',
  `oDilerX` float NOT NULL DEFAULT '0',
  `oDilerY` float NOT NULL DEFAULT '0',
  `oDilerZ` float NOT NULL DEFAULT '0',
  `oDilerA` float NOT NULL DEFAULT '0',
  `oDilerCena` smallint(6) NOT NULL DEFAULT '500',
  `oDilerRadi` tinyint(1) NOT NULL DEFAULT '0',
  `duty_point_pos_x` float DEFAULT '0',
  `duty_point_pos_y` float DEFAULT '0',
  `duty_point_pos_z` float DEFAULT '0',
  `duty_point_int` smallint(6) DEFAULT '0',
  `duty_point_vw` smallint(6) DEFAULT '0',
  `equip_point_pos_x` float DEFAULT '0',
  `equip_point_pos_y` float DEFAULT '0',
  `equip_point_pos_z` float DEFAULT '0',
  `equip_point_int` smallint(6) DEFAULT '0',
  `equip_point_vw` smallint(6) DEFAULT '0',
  `savez` smallint(6) DEFAULT '-1',
  `safe_pos_x` float DEFAULT '0',
  `safe_pos_y` float DEFAULT '0',
  `safe_pos_z` float DEFAULT '0',
  `safe_money` int(11) DEFAULT '0',
  `safe_drug_amount` smallint(6) DEFAULT '0',
  `safe_mats` int(11) NOT NULL DEFAULT '0',
  `ent_bussines` smallint(6) DEFAULT '0',
  `owned_business` smallint(6) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`org_id`, `name`, `prefix`, `color`, `type`, `suspended`, `max_members`, `male_skin_1`, `male_skin_2`, `male_skin_3`, `male_skin_4`, `male_skin_5`, `male_skin_6`, `female_skin_1`, `female_skin_2`, `female_skin_3`, `female_skin_4`, `female_skin_5`, `female_skin_6`, `rank_1`, `rank_2`, `rank_3`, `rank_4`, `rank_5`, `rank_6`, `enter_pos_x`, `enter_pos_y`, `enter_pos_z`, `exit_pos_x`, `exit_pos_y`, `exit_pos_z`, `interior`, `virtualw`, `spawn_point_x`, `spawn_point_y`, `spawn_point_z`, `oDilerX`, `oDilerY`, `oDilerZ`, `oDilerA`, `oDilerCena`, `oDilerRadi`, `duty_point_pos_x`, `duty_point_pos_y`, `duty_point_pos_z`, `duty_point_int`, `duty_point_vw`, `equip_point_pos_x`, `equip_point_pos_y`, `equip_point_pos_z`, `equip_point_int`, `equip_point_vw`, `savez`, `safe_pos_x`, `safe_pos_y`, `safe_pos_z`, `safe_money`, `safe_drug_amount`, `safe_mats`, `ent_bussines`, `owned_business`) VALUES
(1, 'Black Dragon Triads', 'BDT', NULL, 3, 0, 50, 1, 2, 3, 4, 5, 294, 1, 1, 1, 1, 1, 1, '', 'Enforcer', 'Vanguard', '', '', '', 1259.33, -785.377, 92.03, 93.926, 643.12, 1392.06, 6, 1, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 12000, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `org_members`
--

CREATE TABLE IF NOT EXISTS `org_members` (
`id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `memb_rank` smallint(1) NOT NULL,
  `memb_type` smallint(1) NOT NULL DEFAULT '0',
  `memb_sqlID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `org_members`
--

INSERT INTO `org_members` (`id`, `org_id`, `memb_rank`, `memb_type`, `memb_sqlID`) VALUES
(12, 1, 6, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `org_ports`
--

CREATE TABLE IF NOT EXISTS `org_ports` (
`port_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `pos_1_x` float NOT NULL,
  `pos_1_y` float NOT NULL,
  `pos_1_z` float NOT NULL,
  `int_1` int(11) DEFAULT '0',
  `vw_1` int(11) DEFAULT '0',
  `pos_2_x` float NOT NULL,
  `pos_2_y` float NOT NULL,
  `pos_2_z` float NOT NULL,
  `int_2` int(11) DEFAULT '0',
  `vw_2` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parkings`
--

CREATE TABLE IF NOT EXISTS `parkings` (
`parkSQLID` smallint(6) NOT NULL,
  `parkPlaced` tinyint(1) NOT NULL DEFAULT '1',
  `parkObjectPos1` float NOT NULL,
  `parkObjectPos2` float NOT NULL,
  `parkObjectPos3` float NOT NULL,
  `parkObjectPos4` float NOT NULL,
  `parkObjectPos5` float NOT NULL,
  `parkObjectPos6` float NOT NULL,
  `parkInt` int(11) NOT NULL,
  `parkVW` int(11) NOT NULL,
  `parkMaxX` float NOT NULL,
  `parkMinX` float NOT NULL,
  `parkMaxY` float NOT NULL,
  `parkMinY` float NOT NULL,
  `parkPickup_1_Pos1` float NOT NULL,
  `parkPickup_1_Pos2` float NOT NULL,
  `parkPickup_1_Pos3` float NOT NULL,
  `parkPickup_2_Pos1` float NOT NULL,
  `parkPickup_2_Pos2` float NOT NULL,
  `parkPickup_2_Pos3` float NOT NULL,
  `parkMaxParkPlaces` tinyint(2) NOT NULL,
  `parkPlace_X0` float NOT NULL,
  `parkPlace_Y0` float NOT NULL,
  `parkPlace_Z0` float NOT NULL,
  `parkPlace_A0` float NOT NULL,
  `parkPlace_X1` float NOT NULL,
  `parkPlace_Y1` float NOT NULL,
  `parkPlace_Z1` float NOT NULL,
  `parkPlace_A1` float NOT NULL,
  `parkPlace_X2` float NOT NULL,
  `parkPlace_Y2` float NOT NULL,
  `parkPlace_Z2` float NOT NULL,
  `parkPlace_A2` float NOT NULL,
  `parkPlace_X3` float NOT NULL,
  `parkPlace_Y3` float NOT NULL,
  `parkPlace_Z3` float NOT NULL,
  `parkPlace_A3` float NOT NULL,
  `parkPlace_X4` float NOT NULL,
  `parkPlace_Y4` float NOT NULL,
  `parkPlace_Z4` float NOT NULL,
  `parkPlace_A4` float NOT NULL,
  `parkPlace_X5` float NOT NULL,
  `parkPlace_Y5` float NOT NULL,
  `parkPlace_Z5` float NOT NULL,
  `parkPlace_A5` float NOT NULL,
  `parkPlace_X6` float NOT NULL,
  `parkPlace_Y6` float NOT NULL,
  `parkPlace_Z6` float NOT NULL,
  `parkPlace_A6` float NOT NULL,
  `parkPlace_X7` float NOT NULL,
  `parkPlace_Y7` float NOT NULL,
  `parkPlace_Z7` float NOT NULL,
  `parkPlace_A7` float NOT NULL,
  `parkPlace_X8` float NOT NULL,
  `parkPlace_Y8` float NOT NULL,
  `parkPlace_Z8` float NOT NULL,
  `parkPlace_A8` float NOT NULL,
  `parkPlace_X9` float NOT NULL,
  `parkPlace_Y9` float NOT NULL,
  `parkPlace_Z9` float NOT NULL,
  `parkPlace_A9` float NOT NULL,
  `parkPlace_X10` float NOT NULL,
  `parkPlace_Y10` float NOT NULL,
  `parkPlace_Z10` float NOT NULL,
  `parkPlace_A10` float NOT NULL,
  `parkPlace_X11` float NOT NULL,
  `parkPlace_Y11` float NOT NULL,
  `parkPlace_Z11` float NOT NULL,
  `parkPlace_A11` float NOT NULL,
  `parkPlace_X12` float NOT NULL,
  `parkPlace_Y12` float NOT NULL,
  `parkPlace_Z12` float NOT NULL,
  `parkPlace_A12` float NOT NULL,
  `parkPlace_X13` float NOT NULL,
  `parkPlace_Y13` float NOT NULL,
  `parkPlace_Z13` float NOT NULL,
  `parkPlace_A13` float NOT NULL,
  `parkPlace_X14` float NOT NULL,
  `parkPlace_Y14` float NOT NULL,
  `parkPlace_Z14` float NOT NULL,
  `parkPlace_A14` float NOT NULL,
  `parkPlace_X15` float NOT NULL,
  `parkPlace_Y15` float NOT NULL,
  `parkPlace_Z15` float NOT NULL,
  `parkPlace_A15` float NOT NULL,
  `parkPlace_X16` float NOT NULL,
  `parkPlace_Y16` float NOT NULL,
  `parkPlace_Z16` float NOT NULL,
  `parkPlace_A16` float NOT NULL,
  `parkPlace_X17` float NOT NULL,
  `parkPlace_Y17` float NOT NULL,
  `parkPlace_Z17` float NOT NULL,
  `parkPlace_A17` float NOT NULL,
  `parkPlace_X18` float NOT NULL,
  `parkPlace_Y18` float NOT NULL,
  `parkPlace_Z18` float NOT NULL,
  `parkPlace_A18` float NOT NULL,
  `parkPlace_X19` float NOT NULL,
  `parkPlace_Y19` float NOT NULL,
  `parkPlace_Z19` float NOT NULL,
  `parkPlace_A19` float NOT NULL,
  `parkPlace_X20` float NOT NULL,
  `parkPlace_Y20` float NOT NULL,
  `parkPlace_Z20` float NOT NULL,
  `parkPlace_A20` float NOT NULL,
  `parkPlace_X21` float NOT NULL,
  `parkPlace_Y21` float NOT NULL,
  `parkPlace_Z21` float NOT NULL,
  `parkPlace_A21` float NOT NULL,
  `parkPlace_X22` float NOT NULL,
  `parkPlace_Y22` float NOT NULL,
  `parkPlace_Z22` float NOT NULL,
  `parkPlace_A22` float NOT NULL,
  `parkPlace_X23` float NOT NULL,
  `parkPlace_Y23` float NOT NULL,
  `parkPlace_Z23` float NOT NULL,
  `parkPlace_A23` float NOT NULL,
  `parkPlace_X24` float NOT NULL,
  `parkPlace_Y24` float NOT NULL,
  `parkPlace_Z24` float NOT NULL,
  `parkPlace_A24` float NOT NULL,
  `parkPlace_X25` float NOT NULL,
  `parkPlace_Y25` float NOT NULL,
  `parkPlace_Z25` float NOT NULL,
  `parkPlace_A25` float NOT NULL,
  `parkPlace_X26` float NOT NULL,
  `parkPlace_Y26` float NOT NULL,
  `parkPlace_Z26` float NOT NULL,
  `parkPlace_A26` float NOT NULL,
  `parkPlace_X27` float NOT NULL,
  `parkPlace_Y27` float NOT NULL,
  `parkPlace_Z27` float NOT NULL,
  `parkPlace_A27` float NOT NULL,
  `parkPlace_X28` float NOT NULL,
  `parkPlace_Y28` float NOT NULL,
  `parkPlace_Z28` float NOT NULL,
  `parkPlace_A28` float NOT NULL,
  `parkPlace_X29` float NOT NULL,
  `parkPlace_Y29` float NOT NULL,
  `parkPlace_Z29` float NOT NULL,
  `parkPlace_A29` float NOT NULL,
  `parkPlace_X30` float NOT NULL,
  `parkPlace_Y30` float NOT NULL,
  `parkPlace_Z30` float NOT NULL,
  `parkPlace_A30` float NOT NULL,
  `parkPlace_X31` float NOT NULL,
  `parkPlace_Y31` float NOT NULL,
  `parkPlace_Z31` float NOT NULL,
  `parkPlace_A31` float NOT NULL,
  `parkPlace_X32` float NOT NULL,
  `parkPlace_Y32` float NOT NULL,
  `parkPlace_Z32` float NOT NULL,
  `parkPlace_A32` float NOT NULL,
  `parkPlace_X33` float NOT NULL,
  `parkPlace_Y33` float NOT NULL,
  `parkPlace_Z33` float NOT NULL,
  `parkPlace_A33` float NOT NULL,
  `parkPlace_X34` float NOT NULL,
  `parkPlace_Y34` float NOT NULL,
  `parkPlace_Z34` float NOT NULL,
  `parkPlace_A34` float NOT NULL,
  `parkPlace_X35` float NOT NULL,
  `parkPlace_Y35` float NOT NULL,
  `parkPlace_Z35` float NOT NULL,
  `parkPlace_A35` float NOT NULL,
  `parkPlace_X36` float NOT NULL,
  `parkPlace_Y36` float NOT NULL,
  `parkPlace_Z36` float NOT NULL,
  `parkPlace_A36` float NOT NULL,
  `parkPlace_X37` float NOT NULL,
  `parkPlace_Y37` float NOT NULL,
  `parkPlace_Z37` float NOT NULL,
  `parkPlace_A37` float NOT NULL,
  `parkPlace_X38` float NOT NULL,
  `parkPlace_Y38` float NOT NULL,
  `parkPlace_Z38` float NOT NULL,
  `parkPlace_A38` float NOT NULL,
  `parkPlace_X39` float NOT NULL,
  `parkPlace_Y39` float NOT NULL,
  `parkPlace_Z39` float NOT NULL,
  `parkPlace_A39` float NOT NULL,
  `parkPlace_X40` float NOT NULL,
  `parkPlace_Y40` float NOT NULL,
  `parkPlace_Z40` float NOT NULL,
  `parkPlace_A40` float NOT NULL,
  `parkPlace_X41` float NOT NULL,
  `parkPlace_Y41` float NOT NULL,
  `parkPlace_Z41` float NOT NULL,
  `parkPlace_A41` float NOT NULL,
  `parkPlace_X42` float NOT NULL,
  `parkPlace_Y42` float NOT NULL,
  `parkPlace_Z42` float NOT NULL,
  `parkPlace_A42` float NOT NULL,
  `parkPlace_X43` float NOT NULL,
  `parkPlace_Y43` float NOT NULL,
  `parkPlace_Z43` float NOT NULL,
  `parkPlace_A43` float NOT NULL,
  `parkPlace_X44` float NOT NULL,
  `parkPlace_Y44` float NOT NULL,
  `parkPlace_Z44` float NOT NULL,
  `parkPlace_A44` float NOT NULL,
  `parkPlace_X45` float NOT NULL,
  `parkPlace_Y45` float NOT NULL,
  `parkPlace_Z45` float NOT NULL,
  `parkPlace_A45` float NOT NULL,
  `parkPlace_X46` float NOT NULL,
  `parkPlace_Y46` float NOT NULL,
  `parkPlace_Z46` float NOT NULL,
  `parkPlace_A46` float NOT NULL,
  `parkPlace_X47` float NOT NULL,
  `parkPlace_Y47` float NOT NULL,
  `parkPlace_Z47` float NOT NULL,
  `parkPlace_A47` float NOT NULL,
  `parkPlace_X48` float NOT NULL,
  `parkPlace_Y48` float NOT NULL,
  `parkPlace_Z48` float NOT NULL,
  `parkPlace_A48` float NOT NULL,
  `parkPlace_X49` float NOT NULL,
  `parkPlace_Y49` float NOT NULL,
  `parkPlace_Z49` float NOT NULL,
  `parkPlace_A49` float NOT NULL,
  `parkPlace_X50` float NOT NULL,
  `parkPlace_Y50` float NOT NULL,
  `parkPlace_Z50` float NOT NULL,
  `parkPlace_A50` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `propertys`
--

CREATE TABLE IF NOT EXISTS `propertys` (
`iSQLID` mediumint(9) NOT NULL,
  `iOwnerSQLID` mediumint(9) NOT NULL DEFAULT '-1',
  `iGarageSqlID` mediumint(9) NOT NULL DEFAULT '-1',
  `iOwned` tinyint(4) NOT NULL DEFAULT '0',
  `iOnAuction` tinyint(1) NOT NULL DEFAULT '0',
  `iOwner` varchar(25) NOT NULL DEFAULT 'Drzava',
  `iMoney` int(11) NOT NULL DEFAULT '0',
  `iUsage` tinyint(4) NOT NULL,
  `iNeaktivnost` smallint(3) NOT NULL DEFAULT '0',
  `iEnter1` float NOT NULL,
  `iEnter2` float NOT NULL,
  `iEnter3` float NOT NULL,
  `iExit1` float NOT NULL,
  `iExit2` float NOT NULL,
  `iExit3` float NOT NULL,
  `iPrice` int(11) NOT NULL,
  `iLevel` smallint(6) NOT NULL,
  `iLocked` tinyint(4) NOT NULL DEFAULT '1',
  `iVrsta` tinyint(4) NOT NULL,
  `iInterior` int(11) NOT NULL,
  `iVW` int(11) NOT NULL,
  `iOruzje1` tinyint(4) NOT NULL DEFAULT '0',
  `iOruzje2` tinyint(4) NOT NULL DEFAULT '0',
  `iOruzje3` tinyint(4) NOT NULL DEFAULT '0',
  `iOruzje4` tinyint(4) NOT NULL DEFAULT '0',
  `iMunicija1` smallint(6) NOT NULL DEFAULT '0',
  `iMunicija2` smallint(6) NOT NULL DEFAULT '0',
  `iMunicija3` smallint(6) NOT NULL DEFAULT '0',
  `iMunicija4` smallint(6) NOT NULL DEFAULT '0',
  `iDrugAmmount` smallint(6) NOT NULL DEFAULT '0',
  `iMats` mediumint(9) NOT NULL DEFAULT '0',
  `iAlarm` tinyint(1) NOT NULL DEFAULT '0',
  `iDoorLevel` tinyint(4) NOT NULL DEFAULT '0',
  `iLockLevel` tinyint(1) NOT NULL DEFAULT '0',
  `iTime` smallint(6) NOT NULL DEFAULT '0',
  `iAdress` varchar(50) NOT NULL DEFAULT '',
  `iRentable` tinyint(1) NOT NULL DEFAULT '0',
  `iRentPrice` smallint(6) NOT NULL DEFAULT '0',
  `iRentovano` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propertys`
--

INSERT INTO `propertys` (`iSQLID`, `iOwnerSQLID`, `iGarageSqlID`, `iOwned`, `iOnAuction`, `iOwner`, `iMoney`, `iUsage`, `iNeaktivnost`, `iEnter1`, `iEnter2`, `iEnter3`, `iExit1`, `iExit2`, `iExit3`, `iPrice`, `iLevel`, `iLocked`, `iVrsta`, `iInterior`, `iVW`, `iOruzje1`, `iOruzje2`, `iOruzje3`, `iOruzje4`, `iMunicija1`, `iMunicija2`, `iMunicija3`, `iMunicija4`, `iDrugAmmount`, `iMats`, `iAlarm`, `iDoorLevel`, `iLockLevel`, `iTime`, `iAdress`, `iRentable`, `iRentPrice`, `iRentovano`) VALUES
(1, 15, 0, 1, 0, 'Leo_Close', 0, 1, 1, 766.922, -1605.89, 13.804, 2468.84, -1698.33, 1013.51, 500000, 5, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 1, 1, 0, 'Ada Ciganlija', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `punishments`
--

CREATE TABLE IF NOT EXISTS `punishments` (
`p_id` int(11) NOT NULL,
  `p_user_id` int(11) NOT NULL,
  `p_admin` int(11) NOT NULL,
  `p_reason` varchar(64) NOT NULL,
  `p_jail_min` int(11) NOT NULL,
  `p_money_fine` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `punishments`
--

INSERT INTO `punishments` (`p_id`, `p_user_id`, `p_admin`, `p_reason`, `p_jail_min`, `p_money_fine`) VALUES
(1, 11, 8, 'DM', 30, 30000),
(2, 12, 8, 'KOS', 20, 20000),
(3, 10, 8, 'DM', 30, 30000),
(4, 12, 13, 'DM', 30, 30000),
(5, 12, 13, 'DM', 30, 30000),
(6, 8, 10, 'DB', 15, 15000),
(7, 14, 8, 'CR', 5, 5000),
(8, 8, 14, 'Ometanje radnika', 60, 60000),
(9, 15, 12, 'MG', 5, 5000),
(10, 12, 11, 'PvE', 10, 10000),
(11, 15, 12, 'RK', 20, 20000),
(12, 12, 15, 'DM', 30, 30000),
(13, 15, 12, 'PG', 10, 10000),
(14, 10, 16, 'DM', 30, 30000),
(15, 12, 15, 'MG', 5, 5000),
(16, 3, 8, 'DM', 30, 30000),
(17, 12, 8, 'RK', 20, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE IF NOT EXISTS `rents` (
`vrSQLID` smallint(6) NOT NULL,
  `vrLiP_Pos_X` float NOT NULL,
  `vrLiP_Pos_Y` float NOT NULL,
  `vrLiP_Pos_Z` float NOT NULL,
  `vrSpawn_Pos_X` float NOT NULL,
  `vrSpawn_Pos_Y` float NOT NULL,
  `vrSpawn_Pos_Z` float NOT NULL,
  `vrSpawn_Pos_A` float NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rents`
--

INSERT INTO `rents` (`vrSQLID`, `vrLiP_Pos_X`, `vrLiP_Pos_Y`, `vrLiP_Pos_Z`, `vrSpawn_Pos_X`, `vrSpawn_Pos_Y`, `vrSpawn_Pos_Z`, `vrSpawn_Pos_A`) VALUES
(2, 1555.75, -2299.88, 13.554, 1552.31, -2310.18, 13.543, 359.496);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` mediumint(7) NOT NULL,
  `p_name` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `isonline` tinyint(1) DEFAULT '0',
  `user_ip` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `registered` tinyint(1) DEFAULT '0',
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `level` smallint(5) DEFAULT '1',
  `exp` smallint(6) DEFAULT '0',
  `xOnlineSati` smallint(6) DEFAULT '0',
  `money` int(11) DEFAULT '0',
  `xBRacun` int(11) DEFAULT '0',
  `xZlato` mediumint(9) DEFAULT '0',
  `xPlatiRacun` mediumint(9) DEFAULT '0',
  `payday` tinyint(2) DEFAULT '0',
  `upgrades` tinyint(3) DEFAULT '0',
  `admin_lvl` tinyint(1) DEFAULT '0',
  `admin_code` int(4) DEFAULT '0',
  `xSpecAdmin` tinyint(1) DEFAULT '0',
  `helper_level` tinyint(1) DEFAULT '0',
  `vip_level` tinyint(1) DEFAULT '0',
  `spec_rank` tinyint(2) DEFAULT '0',
  `staff_min` smallint(6) DEFAULT '0',
  `vip_time` float DEFAULT '0',
  `skin_id` smallint(5) DEFAULT '0',
  `spawn` tinyint(1) DEFAULT '0',
  `lider` tinyint(2) NOT NULL DEFAULT '0',
  `clan` tinyint(2) NOT NULL DEFAULT '0',
  `rank` tinyint(2) NOT NULL DEFAULT '0',
  `materials` mediumint(9) DEFAULT '0',
  `job_id` tinyint(2) DEFAULT '0',
  `contract` tinyint(1) DEFAULT '0',
  `fight_style` tinyint(1) DEFAULT '0',
  `spawn_hp` float DEFAULT '0',
  `vehicle_license` tinyint(1) DEFAULT '0',
  `boat_license` tinyint(1) DEFAULT '0',
  `air_license` tinyint(1) DEFAULT '0',
  `gun_license` tinyint(1) DEFAULT '0',
  `toolkit` tinyint(1) DEFAULT '0',
  `property_id_1` smallint(4) DEFAULT '-1',
  `property_id_2` smallint(4) DEFAULT '-1',
  `property_id_3` smallint(4) DEFAULT '-1',
  `bussines_id` smallint(4) DEFAULT '0',
  `field_id` smallint(4) DEFAULT '-1',
  `garage_id` smallint(4) DEFAULT '0',
  `xTelefon` tinyint(1) NOT NULL DEFAULT '0',
  `phone_number` mediumint(9) DEFAULT '0',
  `phone_credit` mediumint(9) DEFAULT '0',
  `strenght` smallint(3) DEFAULT '0',
  `jail_type` tinyint(1) DEFAULT '0',
  `jail_time` smallint(4) DEFAULT '0',
  `wanted_level` tinyint(2) DEFAULT '0',
  `arrested` smallint(6) DEFAULT '0',
  `xPDUhapsio` mediumint(9) NOT NULL DEFAULT '0',
  `xPDStatsTicket` mediumint(9) NOT NULL DEFAULT '0',
  `xPDStatsTicketMoney` mediumint(9) NOT NULL DEFAULT '0',
  `xTakenWeps` mediumint(9) NOT NULL DEFAULT '0',
  `xTakenDrugs` mediumint(9) NOT NULL DEFAULT '0',
  `credit_rest` mediumint(9) DEFAULT '0',
  `credit_amount` mediumint(9) DEFAULT '0',
  `credit_installment` smallint(5) DEFAULT '0',
  `warn` tinyint(1) DEFAULT '0',
  `mute` smallint(4) DEFAULT '0',
  `mask_id` mediumint(9) DEFAULT '0',
  `rp_learn` tinyint(1) DEFAULT '0',
  `tutorial` tinyint(1) DEFAULT '0',
  `marker_p1` float DEFAULT '0',
  `marker_p2` float DEFAULT '0',
  `marker_p3` float DEFAULT '0',
  `gps_level` tinyint(1) DEFAULT '1',
  `org_contract` smallint(5) DEFAULT '0',
  `hitman_price` mediumint(9) DEFAULT '0',
  `country` tinyint(2) DEFAULT '0',
  `email` varchar(128) CHARACTER SET utf8 NOT NULL,
  `org_punishment` tinyint(3) DEFAULT '0',
  `offpjail` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpprison` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpmute` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `married` tinyint(1) DEFAULT '0',
  `married_to` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `xBundeve` smallint(6) NOT NULL DEFAULT '0',
  `xSemeBundeve` mediumint(9) DEFAULT '0',
  `lotto_number` smallint(3) DEFAULT '0',
  `lotto_money` mediumint(9) DEFAULT '0',
  `vehicle_slots` smallint(4) DEFAULT '1',
  `rob_time` tinyint(3) DEFAULT '0',
  `leave_jail` tinyint(1) DEFAULT '0',
  `bail_price` int(11) DEFAULT '0',
  `hangar_time` tinyint(3) DEFAULT '0',
  `event_first_place` smallint(5) DEFAULT '0',
  `event_second_place` smallint(5) DEFAULT '0',
  `event_third_place` smallint(5) DEFAULT '0',
  `dm_event_kills` mediumint(9) DEFAULT '0',
  `cstdm_score` mediumint(9) DEFAULT '0',
  `rent_id` smallint(4) DEFAULT '-1',
  `reserve_keys` int(11) DEFAULT '-1',
  `watch` smallint(5) DEFAULT '0',
  `dbo` tinyint(1) DEFAULT '0',
  `dbo_color` tinyint(2) DEFAULT '0',
  `rp_poen` smallint(3) DEFAULT '0',
  `z_poen` smallint(3) DEFAULT '0',
  `xZCoin` tinyint(3) NOT NULL DEFAULT '0',
  `reaction_poen` smallint(3) DEFAULT '0',
  `taking_time` tinyint(3) DEFAULT '0',
  `gift` smallint(6) DEFAULT '0',
  `xPaketic` tinyint(1) DEFAULT '0',
  `gate_key` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `mats_smugl` tinyint(1) DEFAULT '0',
  `robp_time` tinyint(3) DEFAULT '0',
  `law_appeals` smallint(4) DEFAULT '0',
  `law_skill` smallint(4) DEFAULT '0',
  `xTBan` smallint(6) NOT NULL DEFAULT '0',
  `xTWarn` smallint(6) NOT NULL DEFAULT '0',
  `xTKick` smallint(6) NOT NULL DEFAULT '0',
  `xTCharge` smallint(6) NOT NULL DEFAULT '0',
  `xTJail` smallint(6) NOT NULL DEFAULT '0',
  `xTUnjail` smallint(6) NOT NULL DEFAULT '0',
  `xTUnwarn` smallint(6) NOT NULL DEFAULT '0',
  `xTUnban` smallint(6) NOT NULL DEFAULT '0',
  `xTPM` smallint(6) NOT NULL DEFAULT '0',
  `xAlsoKnowAS` varchar(22) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xReputation` smallint(5) NOT NULL DEFAULT '0',
  `xBoombox` tinyint(1) NOT NULL DEFAULT '0',
  `xTorba_Pizza` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Sok` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Pivo` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Hambi` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Piletina` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Laptop` tinyint(1) NOT NULL DEFAULT '0',
  `xTorba_Dinamit` tinyint(1) NOT NULL DEFAULT '0',
  `xTorba_Droga` mediumint(9) NOT NULL DEFAULT '0',
  `xTorba_Kantica` mediumint(9) NOT NULL DEFAULT '0',
  `xTorba_Oruzje_1` smallint(3) NOT NULL DEFAULT '0',
  `xTorba_Oruzje_2` smallint(3) NOT NULL DEFAULT '0',
  `xTorba_Oruzje_3` smallint(3) NOT NULL DEFAULT '0',
  `xTorba_OruzjeM_1` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_OruzjeM_2` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_OruzjeM_3` smallint(6) NOT NULL DEFAULT '0',
  `last_login` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `reg_date` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `p_name`, `isonline`, `user_ip`, `password`, `registered`, `sex`, `age`, `level`, `exp`, `xOnlineSati`, `money`, `xBRacun`, `xZlato`, `xPlatiRacun`, `payday`, `upgrades`, `admin_lvl`, `admin_code`, `xSpecAdmin`, `helper_level`, `vip_level`, `spec_rank`, `staff_min`, `vip_time`, `skin_id`, `spawn`, `lider`, `clan`, `rank`, `materials`, `job_id`, `contract`, `fight_style`, `spawn_hp`, `vehicle_license`, `boat_license`, `air_license`, `gun_license`, `toolkit`, `property_id_1`, `property_id_2`, `property_id_3`, `bussines_id`, `field_id`, `garage_id`, `xTelefon`, `phone_number`, `phone_credit`, `strenght`, `jail_type`, `jail_time`, `wanted_level`, `arrested`, `xPDUhapsio`, `xPDStatsTicket`, `xPDStatsTicketMoney`, `xTakenWeps`, `xTakenDrugs`, `credit_rest`, `credit_amount`, `credit_installment`, `warn`, `mute`, `mask_id`, `rp_learn`, `tutorial`, `marker_p1`, `marker_p2`, `marker_p3`, `gps_level`, `org_contract`, `hitman_price`, `country`, `email`, `org_punishment`, `offpjail`, `offpprison`, `offpmute`, `married`, `married_to`, `xBundeve`, `xSemeBundeve`, `lotto_number`, `lotto_money`, `vehicle_slots`, `rob_time`, `leave_jail`, `bail_price`, `hangar_time`, `event_first_place`, `event_second_place`, `event_third_place`, `dm_event_kills`, `cstdm_score`, `rent_id`, `reserve_keys`, `watch`, `dbo`, `dbo_color`, `rp_poen`, `z_poen`, `xZCoin`, `reaction_poen`, `taking_time`, `gift`, `xPaketic`, `gate_key`, `mats_smugl`, `robp_time`, `law_appeals`, `law_skill`, `xTBan`, `xTWarn`, `xTKick`, `xTCharge`, `xTJail`, `xTUnjail`, `xTUnwarn`, `xTUnban`, `xTPM`, `xAlsoKnowAS`, `xReputation`, `xBoombox`, `xTorba_Pizza`, `xTorba_Sok`, `xTorba_Pivo`, `xTorba_Hambi`, `xTorba_Piletina`, `xTorba_Laptop`, `xTorba_Dinamit`, `xTorba_Droga`, `xTorba_Kantica`, `xTorba_Oruzje_1`, `xTorba_Oruzje_2`, `xTorba_Oruzje_3`, `xTorba_OruzjeM_1`, `xTorba_OruzjeM_2`, `xTorba_OruzjeM_3`, `last_login`, `reg_date`) VALUES
(3, 'Ghetoven', 0, '255.255.255.255', '79153393ECD0C1267AF4F52A1B29CFFA2442FB7CA4579C67A3DFCDAB89D7FE01', 1, 1, 18, 187, 4, 250, 46622440, 5012507, 5000000, 5000000, 22, 0, 8, 123, 0, 0, 0, 1, 82, 0, 124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 6, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 640203, 0, 1, 0, 0, 0, 1, 0, 0, 2, 'hrsakk5@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 17, 0, 1, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, '(Montana)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-21 21:11:57', '2019-10-19 21:43:58'),
(4, 'Saco', 0, '255.255.255.255', '05BB68A513FD40BD92104AE5E6D0F79025C36C17B598C8326AF759A77068468B', 1, 1, 24, 10, 7, 2, 27483, 17935, 7, 0, 4, 0, 6, 1, 0, 0, 0, 1, 148, 0, 21, 0, 0, 0, 0, 0, 4, 2, 0, 0, 0, 0, 0, 0, 0, 2, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 2, 'sacosamp@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 19043, 0, 0, 0, 0, 1, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 01:19:12', '2019-10-19 21:44:12'),
(5, 'Pejca_Suarez', 0, '255.255.255.255', 'B1F548C24C29526D66FEF3242CF837AB76215E905FEB2C70B373AA667D753582', 1, 1, 17, 1, 0, 0, 1039801, 43657, 86, 0, 26, 0, 0, 9521, 1, 0, 0, 0, 42, 0, 22, 1, 0, 0, 0, 10000, 5, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 3, 'luka.samp004@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-19 22:59:50', '2019-10-19 22:07:32'),
(6, 'Antonio_Capone', 0, '255.255.255.255', '9B6587B15968FF19BAD41C3F5161CC73F05B913E2C2D537D82FEEC685C2353EA', 1, 1, 25, 10, 0, 0, 250000, 747200, 0, 0, 39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 640206, 0, 1, 0, 0, 0, 1, 0, 0, 5, 'sadasd@dsad.da', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 01:19:11', '2019-10-19 23:16:59'),
(10, 'Kristijan', 0, '31.223.131.251', '8D4A03A93A13DF34550E12B9B830E45A6461FA85F68C7E35475CB574CC997E58', 1, 1, 16, 135, 48, 19, 91922762, 197760, 0, 0, 58, 0, 8, 1, 0, 0, 0, 0, 1209, 0, 294, 0, 0, 0, 0, 0, 5, 21, 0, 0, 0, 1, 1, 0, 0, 1, -1, -1, 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 5, '@mrs.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 1, 2, 0, 0, 1, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 22:22:59', '2019-10-20 02:50:10'),
(11, 'Roky_Maestro', 0, '255.255.255.255', '011BE8C1FAFEEF79585BE5F52BCD2D298244DCB9470BE808D13089F8A9F36DA0', 1, 1, 17, 5, 11, 3, 9994282, 10320, 0, 0, 8, 0, 1, 455, 0, 0, 0, 0, 185, 0, 22, 0, 0, 0, 0, 0, 4, 3, 0, 0, 1, 0, 1, 0, 0, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 5, 'roki@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 19039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, '(Sef)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 21:09:54', '2019-10-20 03:17:55'),
(12, 'Luka_Smith', 0, '255.255.255.255', 'C9A7D17999E96220226B0205D0DC8ACED0186A02A699A0E40784C35AAC8372B7', 1, 1, 17, 6, 0, 8, 9775297, 20886, 0, 0, 9, 2, 1, 111, 0, 0, 0, 0, 491, 0, 22, 1, 0, 0, 0, 3000, 0, 3, 0, 0, 1, 0, 1, 0, 1, -1, -1, -1, 0, 0, 0, 1, 189492, 420, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 4, 'lukajovanovi586@gmail.com', 6, '2', '2', '2', 0, 'Niko', 4, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 19039, 1, 0, 0, 0, 0, 4, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 'None', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 21:09:52', '2019-10-20 03:18:24'),
(13, 'Johny', 0, '255.255.255.255', 'CC961CDFB79341C96BF19697906A6B5F6DC5DEC321E52F2B2AF34000A58D4EC9', 1, 1, 17, 5, 6, 2, 44435, 36886, 0, 0, 19, 0, 4, 166, 0, 0, 0, 0, 151, 0, 294, 1, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19000, 20000, 1000, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 5, 'caponeboss02@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 17, -1, -1, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-20 19:29:46', '2019-10-20 03:46:57'),
(14, 'Daco_Corleone', 0, '255.255.255.255', '6BC541330D4606E78ECE3FA5DC0B5FEA8DFB437CDDDF2C49F098654424462452', 1, 1, 15, 5, 4, 1, 79997, 6335, 0, 0, 16, 0, 0, 0, 1, 3, 0, 0, 114, 0, 294, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, -1, 0, 1, 269327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 3, 'danijeldukic1994@gmail.com', 9, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 18:45:14', '2019-10-20 18:07:18'),
(15, 'Leo_Close', 1, '255.255.255.255', '0DC3DCA95A7AFAE5B9F17FA77D8ABDDD05C5A1F75C67B1F10D128A36BD555C2A', 1, 1, 17, 6, 12, 15, 1990225768, 42368, 0, 0, 29, 2, 0, 822, 1, 5, 0, 0, 1321, 0, 22, 0, 0, 0, 0, 0, 5, 9, 0, 5, 0, 0, 0, 0, 1, 1, -1, -1, 0, -1, 0, 1, 240227, 474, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 640215, 0, 1, 0, 0, 0, 3, 0, 0, 2, 'leoclose575@gmail.com', 2, '2', '2', '2', 0, 'Niko', 0, 5, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 19039, 0, 0, 0, 10, 1, 27, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, '(a)', 4, 1, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 20:50:50', '2019-10-20 19:16:35'),
(16, 'DEXTER', 0, '255.255.255.255', 'B118BF1D06E6DDA94B099CEF83ADA0D56E9A9D9A331277E554BE3E7686286103', 1, 1, 21, 10, 0, 0, 43500, 0, 0, 0, 20, 0, 0, 399, 0, 0, 0, 0, 3, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 2, 'kristijan.supak@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-20 20:56:01', '2019-10-20 20:32:51'),
(18, 'Hordasica', 1, '255.255.255.255', '3BEC7F00442FAD1E6CFE2A20AB172510A1D7479375D8693B9B4F6701CF43714F', 1, 2, 16, 10, 0, 0, 56793, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 5, 'sajra_2003@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 1, 5, 0, 0, 0, 2, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 23:13:04', '2019-10-21 00:57:14'),
(19, 'Miljan_Bond', 0, '255.255.255.255', '0E28E3F46B350FDCBBDE90988A6B939CBAC3147D872EDDA2F48C0B4BC2D0D6B5', 1, 1, 23, 1, 0, 0, 49600, 0, 0, 0, 50, 0, 3, 123, 0, 0, 0, 3, 43, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 3, '@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-21 20:12:30', '2019-10-21 02:17:22'),
(20, 'Nathan_Houston', 0, '255.255.255.255', 'F1C6EEDB74584D587EF0151DFBACB122E7928C9B43C3D360538DF81C181EB4FD', 1, 1, 17, 5, 0, 0, 50000, 0, 0, 0, 47, 0, 0, 0, 0, 0, 3, 0, 0, 1572000000, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 5, 'shone.boss1@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '(Massacre)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 18:35:05', '2019-10-22 01:28:24'),
(21, 'Leo_Klaus', 0, '255.255.255.255', 'F8872C67A554666960F03FDA3406BF52579299C20E0727B967628B417EF49D43', 1, 1, 70, 1, 0, 0, 44000, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 6, 'dasdas@hotmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 18:30:11', '2019-10-23 18:24:34'),
(23, 'Hare_Imamovic', 0, '255.255.255.255', '1709CCDE30900F0163E8CF7B72B3717EEEEECE76C46C72E6B57B6215A1719373', 1, 1, 23, 10, 4, 1, 50928, 3460, 0, 0, 39, 0, 0, 0, 1, 0, 0, 0, 53, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 5, 'harebajker@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 22:24:05', '2019-10-23 18:43:43'),
(24, 'Carl', 0, '255.255.255.255', 'B7154F86D4E2ECCE10D4D568652AF94F29B20577FAAB73A568C8DF8275DD3083', 1, 1, 16, 10, 4, 1, 1242678850, 4450, 0, 0, 30, 0, 5, 1, 0, 0, 3, 0, 80, 1572000000, 294, 1, 0, 0, 0, 0, 2, 3, 0, 0, 1, 1, 1, 1, 0, -1, -1, -1, 0, 0, -1, 1, 293295, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 3, 0, 0, 5, 'kicodebil@gmail.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, '', 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-10-23 22:47:59', '2019-10-23 18:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_clothes`
--

CREATE TABLE IF NOT EXISTS `user_clothes` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cloth_slot_1` int(11) DEFAULT '-1',
  `cloth_slot_1_p1` float DEFAULT '0',
  `cloth_slot_1_p2` float DEFAULT '0',
  `cloth_slot_1_p3` float DEFAULT '0',
  `cloth_slot_1_p4` float DEFAULT '0',
  `cloth_slot_1_p5` float DEFAULT '0',
  `cloth_slot_1_p6` float DEFAULT '0',
  `cloth_slot_1_p7` float DEFAULT '0',
  `cloth_slot_1_p8` float DEFAULT '0',
  `cloth_slot_1_p9` float DEFAULT '0',
  `cloth_slot_2` int(11) DEFAULT '-1',
  `cloth_slot_2_p1` float DEFAULT '0',
  `cloth_slot_2_p2` float DEFAULT '0',
  `cloth_slot_2_p3` float DEFAULT '0',
  `cloth_slot_2_p4` float DEFAULT '0',
  `cloth_slot_2_p5` float DEFAULT '0',
  `cloth_slot_2_p6` float DEFAULT '0',
  `cloth_slot_2_p7` float DEFAULT '0',
  `cloth_slot_2_p8` float DEFAULT '0',
  `cloth_slot_2_p9` float DEFAULT '0',
  `cloth_slot_3` int(11) DEFAULT '-1',
  `cloth_slot_3_p1` float DEFAULT '0',
  `cloth_slot_3_p2` float DEFAULT '0',
  `cloth_slot_3_p3` float DEFAULT '0',
  `cloth_slot_3_p4` float DEFAULT '0',
  `cloth_slot_3_p5` float DEFAULT '0',
  `cloth_slot_3_p6` float DEFAULT '0',
  `cloth_slot_3_p7` float DEFAULT '0',
  `cloth_slot_3_p8` float DEFAULT '0',
  `cloth_slot_3_p9` float DEFAULT '0',
  `cloth_slot_4` int(11) DEFAULT '-1',
  `cloth_slot_4_p1` float DEFAULT '0',
  `cloth_slot_4_p2` float DEFAULT '0',
  `cloth_slot_4_p3` float DEFAULT '0',
  `cloth_slot_4_p4` float DEFAULT '0',
  `cloth_slot_4_p5` float DEFAULT '0',
  `cloth_slot_4_p6` float DEFAULT '0',
  `cloth_slot_4_p7` float DEFAULT NULL,
  `cloth_slot_4_p8` float DEFAULT '0',
  `cloth_slot_4_p9` float DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_clothes`
--

INSERT INTO `user_clothes` (`id`, `user_id`, `cloth_slot_1`, `cloth_slot_1_p1`, `cloth_slot_1_p2`, `cloth_slot_1_p3`, `cloth_slot_1_p4`, `cloth_slot_1_p5`, `cloth_slot_1_p6`, `cloth_slot_1_p7`, `cloth_slot_1_p8`, `cloth_slot_1_p9`, `cloth_slot_2`, `cloth_slot_2_p1`, `cloth_slot_2_p2`, `cloth_slot_2_p3`, `cloth_slot_2_p4`, `cloth_slot_2_p5`, `cloth_slot_2_p6`, `cloth_slot_2_p7`, `cloth_slot_2_p8`, `cloth_slot_2_p9`, `cloth_slot_3`, `cloth_slot_3_p1`, `cloth_slot_3_p2`, `cloth_slot_3_p3`, `cloth_slot_3_p4`, `cloth_slot_3_p5`, `cloth_slot_3_p6`, `cloth_slot_3_p7`, `cloth_slot_3_p8`, `cloth_slot_3_p9`, `cloth_slot_4`, `cloth_slot_4_p1`, `cloth_slot_4_p2`, `cloth_slot_4_p3`, `cloth_slot_4_p4`, `cloth_slot_4_p5`, `cloth_slot_4_p6`, `cloth_slot_4_p7`, `cloth_slot_4_p8`, `cloth_slot_4_p9`) VALUES
(1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 4, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 6, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 7, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 8, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 9, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 10, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 11, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 12, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 13, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 14, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 15, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(15, 16, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(16, 17, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(17, 18, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 19, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(19, 20, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 21, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(21, 22, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(22, 23, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(23, 24, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
`veh_id` int(11) NOT NULL,
  `owner_sqlID` int(11) DEFAULT '0',
  `v_price` int(11) NOT NULL,
  `v_locked` tinyint(1) DEFAULT '0',
  `v_pos_x` float NOT NULL,
  `v_pos_y` float NOT NULL,
  `v_pos_z` float NOT NULL,
  `v_pos_a` float NOT NULL,
  `v_virtualw` int(11) NOT NULL,
  `v_interior` int(11) NOT NULL,
  `v_usage` smallint(2) NOT NULL,
  `v_organization` smallint(2) DEFAULT '0',
  `v_job` smallint(2) DEFAULT '-1',
  `v_fuel_station` smallint(2) DEFAULT '-1',
  `v_color_1` int(11) NOT NULL,
  `v_color_2` int(11) NOT NULL,
  `v_model` int(11) NOT NULL,
  `v_teh` smallint(2) DEFAULT '0',
  `v_reg` smallint(2) DEFAULT '0',
  `v_reg_vreme` smallint(3) DEFAULT '0',
  `v_tablice` varchar(24) COLLATE utf8_unicode_ci DEFAULT 'NEMA',
  `v_gps` smallint(2) DEFAULT '0',
  `v_insurance` smallint(2) DEFAULT '0',
  `v_lock` smallint(2) DEFAULT '0',
  `v_alarm` smallint(2) DEFAULT '0',
  `v_fuel` smallint(2) DEFAULT '40',
  `v_fuel_type` smallint(2) DEFAULT '0',
  `v_neon` int(11) DEFAULT '0',
  `v_tuned` tinyint(1) DEFAULT '0',
  `v_imobilizator` int(11) DEFAULT '0',
  `v_spoiler` int(11) DEFAULT '0',
  `v_hood` int(11) DEFAULT '0',
  `v_roof` int(11) DEFAULT '0',
  `v_skirt` int(11) DEFAULT '0',
  `v_lamps` int(11) DEFAULT '0',
  `v_nitro` int(11) DEFAULT '0',
  `v_exhaust` int(11) DEFAULT '0',
  `v_wheels` int(11) DEFAULT '0',
  `v_stereo` int(11) DEFAULT '0',
  `v_hydraulics` int(11) DEFAULT '0',
  `v_front_bumper` int(11) DEFAULT '0',
  `v_rear_bumper` int(11) DEFAULT '0',
  `v_vents` int(11) DEFAULT '0',
  `v_paintjob` int(11) DEFAULT '255',
  `v_drug_ammount` int(11) DEFAULT '0',
  `v_mats` int(11) DEFAULT '0',
  `v_weapon_melee` int(11) DEFAULT '0',
  `v_weapon_slot_1` int(11) DEFAULT '0',
  `v_weapon_ammo_1` int(11) DEFAULT '0',
  `v_weapon_slot_2` int(11) DEFAULT '0',
  `v_weapon_ammo_2` int(11) DEFAULT '0',
  `v_gajbica_slot_1` int(11) DEFAULT '-1',
  `v_gajbica_slot_2` int(11) DEFAULT '-1',
  `v_gajbica_slot_3` int(11) DEFAULT '-1',
  `v_gajbica_slot_4` int(11) DEFAULT '-1',
  `v_gajbica_slot_5` int(11) DEFAULT '-1',
  `v_gajbica_kolicina_1` int(11) DEFAULT '0',
  `v_gajbica_kolicina_2` int(11) DEFAULT '0',
  `v_gajbica_kolicina_3` int(11) DEFAULT '0',
  `v_gajbica_kolicina_4` int(11) DEFAULT '0',
  `v_gajbica_kolicina_5` int(11) DEFAULT '0',
  `v_neaktivnost` int(11) DEFAULT '0',
  `v_kilometri` int(11) DEFAULT '0',
  `v_metri` int(11) DEFAULT '0',
  `vLastSpawn` varchar(44) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`veh_id`, `owner_sqlID`, `v_price`, `v_locked`, `v_pos_x`, `v_pos_y`, `v_pos_z`, `v_pos_a`, `v_virtualw`, `v_interior`, `v_usage`, `v_organization`, `v_job`, `v_fuel_station`, `v_color_1`, `v_color_2`, `v_model`, `v_teh`, `v_reg`, `v_reg_vreme`, `v_tablice`, `v_gps`, `v_insurance`, `v_lock`, `v_alarm`, `v_fuel`, `v_fuel_type`, `v_neon`, `v_tuned`, `v_imobilizator`, `v_spoiler`, `v_hood`, `v_roof`, `v_skirt`, `v_lamps`, `v_nitro`, `v_exhaust`, `v_wheels`, `v_stereo`, `v_hydraulics`, `v_front_bumper`, `v_rear_bumper`, `v_vents`, `v_paintjob`, `v_drug_ammount`, `v_mats`, `v_weapon_melee`, `v_weapon_slot_1`, `v_weapon_ammo_1`, `v_weapon_slot_2`, `v_weapon_ammo_2`, `v_gajbica_slot_1`, `v_gajbica_slot_2`, `v_gajbica_slot_3`, `v_gajbica_slot_4`, `v_gajbica_slot_5`, `v_gajbica_kolicina_1`, `v_gajbica_kolicina_2`, `v_gajbica_kolicina_3`, `v_gajbica_kolicina_4`, `v_gajbica_kolicina_5`, `v_neaktivnost`, `v_kilometri`, `v_metri`, `vLastSpawn`) VALUES
(1, 15, 1700000, 0, 1453.67, -715.811, 91.413, 202.971, 0, 0, 1, 0, -1, -1, 5, 7, 560, 0, 0, 0, 'NEMA', 0, 0, 0, 0, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_salon`
--

CREATE TABLE IF NOT EXISTS `vehicle_salon` (
`salon_id` int(11) NOT NULL,
  `s_bussines_id` int(11) NOT NULL,
  `veh_buyed_pos_x` float NOT NULL,
  `veh_buyed_pos_y` float NOT NULL,
  `veh_buyed_pos_z` float NOT NULL,
  `veh_buyed_pos_a` float NOT NULL,
  `pickup_pos_x` float NOT NULL,
  `pickup_pos_y` float NOT NULL,
  `pickup_pos_z` float NOT NULL,
  `s_interior` int(11) NOT NULL DEFAULT '0',
  `s_virtualw` int(11) NOT NULL DEFAULT '0',
  `veh_model_1` int(11) DEFAULT '0',
  `veh_model_2` int(11) DEFAULT '0',
  `veh_model_3` int(11) DEFAULT '0',
  `veh_model_4` int(11) DEFAULT '0',
  `veh_model_5` int(11) DEFAULT '0',
  `veh_model_6` int(11) DEFAULT '0',
  `veh_model_7` int(11) DEFAULT '0',
  `veh_model_8` int(11) DEFAULT '0',
  `veh_model_9` int(11) DEFAULT '0',
  `veh_model_10` int(11) DEFAULT '0',
  `veh_model_11` int(11) DEFAULT '0',
  `veh_model_12` int(11) DEFAULT '0',
  `veh_model_13` int(11) DEFAULT '0',
  `veh_model_14` int(11) DEFAULT '0',
  `veh_model_15` int(11) DEFAULT '0',
  `veh_model_16` int(11) DEFAULT '0',
  `veh_amount_1` int(11) DEFAULT '0',
  `veh_amount_2` int(11) DEFAULT '0',
  `veh_amount_3` int(11) DEFAULT '0',
  `veh_amount_4` int(11) DEFAULT '0',
  `veh_amount_5` int(11) DEFAULT '0',
  `veh_amount_6` int(11) DEFAULT '0',
  `veh_amount_7` int(11) DEFAULT '0',
  `veh_amount_8` int(11) DEFAULT '0',
  `veh_amount_9` int(11) DEFAULT '0',
  `veh_amount_10` int(11) DEFAULT '0',
  `veh_amount_11` int(11) DEFAULT '0',
  `veh_amount_12` int(11) DEFAULT '0',
  `veh_amount_13` int(11) DEFAULT '0',
  `veh_amount_14` int(11) DEFAULT '0',
  `veh_amount_15` int(11) DEFAULT '0',
  `veh_amount_16` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xmas_presents`
--

CREATE TABLE IF NOT EXISTS `xmas_presents` (
`presSQLID` smallint(6) NOT NULL,
  `presTaken` tinyint(1) NOT NULL DEFAULT '0',
  `presPlaced` tinyint(1) NOT NULL DEFAULT '1',
  `presPos1` float NOT NULL,
  `presPos2` float NOT NULL,
  `presPos3` float NOT NULL,
  `presPos4` float NOT NULL,
  `presPos5` float NOT NULL,
  `presPos6` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `xmas_trees`
--

CREATE TABLE IF NOT EXISTS `xmas_trees` (
`ctSQLID` smallint(6) NOT NULL,
  `ctPlaced` tinyint(1) NOT NULL DEFAULT '1',
  `ctPos1` float NOT NULL,
  `ctPos2` float NOT NULL,
  `ctPos3` float NOT NULL,
  `ctPos4` float NOT NULL,
  `ctPos5` float NOT NULL,
  `ctPos6` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_anticheat`
--

CREATE TABLE IF NOT EXISTS `_anticheat` (
`acSQLID` tinyint(1) NOT NULL,
  `WeaponHRezimRada` tinyint(1) NOT NULL DEFAULT '1',
  `TeleportHRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `HealthHRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `SpeedHRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `JetPackHRezimRada` tinyint(1) NOT NULL DEFAULT '1',
  `MoneyHRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `FlyHRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `TuningHRezimRada` tinyint(1) NOT NULL DEFAULT '1',
  `VehRepRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `VehTrollRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `antiWeaponH` tinyint(1) NOT NULL DEFAULT '1',
  `antiTeleportH` tinyint(1) NOT NULL DEFAULT '1',
  `antiHealthH` tinyint(1) NOT NULL DEFAULT '1',
  `antiArmourH` tinyint(1) NOT NULL DEFAULT '1',
  `antiSpeedH` tinyint(1) NOT NULL DEFAULT '1',
  `antiJetPackH` tinyint(1) NOT NULL DEFAULT '1',
  `antiMoneyH` tinyint(1) NOT NULL DEFAULT '1',
  `antiFlyH` tinyint(1) NOT NULL DEFAULT '1',
  `antiTuningH` tinyint(1) NOT NULL DEFAULT '1',
  `antiVehRepair` tinyint(1) NOT NULL DEFAULT '1',
  `antiVehTroll` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_anticheat`
--

INSERT INTO `_anticheat` (`acSQLID`, `WeaponHRezimRada`, `TeleportHRezimRada`, `HealthHRezimRada`, `SpeedHRezimRada`, `JetPackHRezimRada`, `MoneyHRezimRada`, `FlyHRezimRada`, `TuningHRezimRada`, `VehRepRezimRada`, `VehTrollRezimRada`, `antiWeaponH`, `antiTeleportH`, `antiHealthH`, `antiArmourH`, `antiSpeedH`, `antiJetPackH`, `antiMoneyH`, `antiFlyH`, `antiTuningH`, `antiVehRepair`, `antiVehTroll`) VALUES
(1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_stats`
--

CREATE TABLE IF NOT EXISTS `_stats` (
`ssSQLID` tinyint(1) NOT NULL,
  `RegistrovanihKorisnika` mediumint(9) NOT NULL DEFAULT '0',
  `BanovanihKorisnika` mediumint(9) NOT NULL DEFAULT '0',
  `KikovanihKorisnika` mediumint(9) NOT NULL DEFAULT '0',
  `BrojWarnova` mediumint(9) NOT NULL DEFAULT '0',
  `BrojPosetaServeru` mediumint(9) NOT NULL DEFAULT '0',
  `HappyHours` tinyint(1) NOT NULL DEFAULT '0',
  `HappyHoursLvl` tinyint(2) NOT NULL DEFAULT '0',
  `HappyJobs` tinyint(1) NOT NULL DEFAULT '0',
  `PocetniLevel` tinyint(1) NOT NULL DEFAULT '1',
  `PocetniNovaca` mediumint(9) NOT NULL DEFAULT '35000',
  `BankaNovac` mediumint(7) NOT NULL DEFAULT '0',
  `KupovinaVozila` tinyint(4) NOT NULL DEFAULT '1',
  `Report` tinyint(1) NOT NULL DEFAULT '1',
  `Pitanja` tinyint(1) NOT NULL DEFAULT '1',
  `RekordServera` smallint(5) NOT NULL DEFAULT '0',
  `Oglasi` tinyint(1) NOT NULL DEFAULT '1',
  `Registracija` tinyint(1) NOT NULL DEFAULT '1',
  `ReactTime` mediumint(9) NOT NULL DEFAULT '7500',
  `ReactName` varchar(25) NOT NULL DEFAULT 'No-one'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_stats`
--

INSERT INTO `_stats` (`ssSQLID`, `RegistrovanihKorisnika`, `BanovanihKorisnika`, `KikovanihKorisnika`, `BrojWarnova`, `BrojPosetaServeru`, `HappyHours`, `HappyHoursLvl`, `HappyJobs`, `PocetniLevel`, `PocetniNovaca`, `BankaNovac`, `KupovinaVozila`, `Report`, `Pitanja`, `RekordServera`, `Oglasi`, `Registracija`, `ReactTime`, `ReactName`) VALUES
(1, 24, 0, 3, 12, 333, 4, 0, 0, 1, 50000, 100000, 1, 1, 1, 6, 1, 1, 7500, 'No-one');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
 ADD PRIMARY KEY (`atmSQLID`), ADD UNIQUE KEY `atmSQLID` (`atmSQLID`);

--
-- Indexes for table `banned`
--
ALTER TABLE `banned`
 ADD PRIMARY KEY (`ban_id`), ADD UNIQUE KEY `ban_id` (`ban_id`);

--
-- Indexes for table `bussines`
--
ALTER TABLE `bussines`
 ADD PRIMARY KEY (`bussines_id`);

--
-- Indexes for table `containers`
--
ALTER TABLE `containers`
 ADD PRIMARY KEY (`koSQLID`);

--
-- Indexes for table `fields`
--
ALTER TABLE `fields`
 ADD PRIMARY KEY (`fieldSQLID`);

--
-- Indexes for table `fields_stalks`
--
ALTER TABLE `fields_stalks`
 ADD PRIMARY KEY (`sSQLID`);

--
-- Indexes for table `fuel_stations`
--
ALTER TABLE `fuel_stations`
 ADD PRIMARY KEY (`fsSQLID`);

--
-- Indexes for table `gangzones`
--
ALTER TABLE `gangzones`
 ADD PRIMARY KEY (`gzone_id`);

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
 ADD PRIMARY KEY (`garage_id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
 ADD PRIMARY KEY (`gateid`);

--
-- Indexes for table `gps`
--
ALTER TABLE `gps`
 ADD PRIMARY KEY (`gpsSQLID`);

--
-- Indexes for table `organizations`
--
ALTER TABLE `organizations`
 ADD PRIMARY KEY (`org_id`);

--
-- Indexes for table `org_members`
--
ALTER TABLE `org_members`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_ports`
--
ALTER TABLE `org_ports`
 ADD PRIMARY KEY (`port_id`);

--
-- Indexes for table `parkings`
--
ALTER TABLE `parkings`
 ADD PRIMARY KEY (`parkSQLID`);

--
-- Indexes for table `propertys`
--
ALTER TABLE `propertys`
 ADD PRIMARY KEY (`iSQLID`);

--
-- Indexes for table `punishments`
--
ALTER TABLE `punishments`
 ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `rents`
--
ALTER TABLE `rents`
 ADD PRIMARY KEY (`vrSQLID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_clothes`
--
ALTER TABLE `user_clothes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
 ADD PRIMARY KEY (`veh_id`);

--
-- Indexes for table `vehicle_salon`
--
ALTER TABLE `vehicle_salon`
 ADD PRIMARY KEY (`salon_id`);

--
-- Indexes for table `xmas_presents`
--
ALTER TABLE `xmas_presents`
 ADD PRIMARY KEY (`presSQLID`);

--
-- Indexes for table `xmas_trees`
--
ALTER TABLE `xmas_trees`
 ADD PRIMARY KEY (`ctSQLID`);

--
-- Indexes for table `_anticheat`
--
ALTER TABLE `_anticheat`
 ADD PRIMARY KEY (`acSQLID`);

--
-- Indexes for table `_stats`
--
ALTER TABLE `_stats`
 ADD PRIMARY KEY (`ssSQLID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atms`
--
ALTER TABLE `atms`
MODIFY `atmSQLID` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banned`
--
ALTER TABLE `banned`
MODIFY `ban_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `bussines`
--
ALTER TABLE `bussines`
MODIFY `bussines_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `containers`
--
ALTER TABLE `containers`
MODIFY `koSQLID` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
MODIFY `fieldSQLID` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fields_stalks`
--
ALTER TABLE `fields_stalks`
MODIFY `sSQLID` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `fuel_stations`
--
ALTER TABLE `fuel_stations`
MODIFY `fsSQLID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gangzones`
--
ALTER TABLE `gangzones`
MODIFY `gzone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
MODIFY `garage_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
MODIFY `gateid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gps`
--
ALTER TABLE `gps`
MODIFY `gpsSQLID` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `organizations`
--
ALTER TABLE `organizations`
MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `org_members`
--
ALTER TABLE `org_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `org_ports`
--
ALTER TABLE `org_ports`
MODIFY `port_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parkings`
--
ALTER TABLE `parkings`
MODIFY `parkSQLID` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `propertys`
--
ALTER TABLE `propertys`
MODIFY `iSQLID` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `punishments`
--
ALTER TABLE `punishments`
MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
MODIFY `vrSQLID` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` mediumint(7) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `user_clothes`
--
ALTER TABLE `user_clothes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `vehicle_salon`
--
ALTER TABLE `vehicle_salon`
MODIFY `salon_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xmas_presents`
--
ALTER TABLE `xmas_presents`
MODIFY `presSQLID` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `xmas_trees`
--
ALTER TABLE `xmas_trees`
MODIFY `ctSQLID` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_anticheat`
--
ALTER TABLE `_anticheat`
MODIFY `acSQLID` tinyint(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `_stats`
--
ALTER TABLE `_stats`
MODIFY `ssSQLID` tinyint(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
