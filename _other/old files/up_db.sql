-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2019 at 03:30 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `up_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE `atms` (
  `atmSQLID` smallint(6) NOT NULL,
  `atmPos1` float NOT NULL,
  `atmPos2` float NOT NULL,
  `atmPos3` float NOT NULL,
  `atmPos4` float NOT NULL,
  `atmPos5` float NOT NULL,
  `atmPos6` float NOT NULL,
  `atmPreseceneZice` tinyint(1) NOT NULL DEFAULT 0,
  `atmProbijenBios` tinyint(1) NOT NULL DEFAULT 0,
  `atmVremeDoRoba` tinyint(1) NOT NULL DEFAULT 0,
  `atmExists` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `banned`
--

CREATE TABLE `banned` (
  `ban_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ban_type` smallint(1) DEFAULT NULL,
  `ban_time` int(11) DEFAULT NULL,
  `ban_reason` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_admin` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_date` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bussines`
--

CREATE TABLE `bussines` (
  `bussines_id` int(11) NOT NULL,
  `b_owner_sqlID` int(11) DEFAULT -1,
  `bOnAuction` tinyint(1) NOT NULL DEFAULT 0,
  `bOwner` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Drzava',
  `b_price` int(11) NOT NULL,
  `b_type` smallint(3) NOT NULL,
  `b_locked` tinyint(4) DEFAULT 0,
  `b_money` int(11) DEFAULT 0,
  `b_enter_x` float NOT NULL,
  `b_enter_y` float NOT NULL,
  `b_enter_z` float NOT NULL,
  `b_exit_x` float DEFAULT 0,
  `b_exit_y` float DEFAULT 0,
  `b_exit_z` float DEFAULT 0,
  `b_enter_int` int(11) DEFAULT 0,
  `b_enter_vw` int(11) DEFAULT 0,
  `b_exit_int` int(11) DEFAULT 0,
  `b_exit_vw` int(11) DEFAULT 0,
  `b_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `b_level` int(11) NOT NULL,
  `b_jobID` smallint(2) DEFAULT 0,
  `b_neaktivnost` int(11) DEFAULT 0,
  `b_facture` int(11) DEFAULT 100
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `containers`
--

CREATE TABLE `containers` (
  `koSQLID` smallint(6) NOT NULL,
  `koObjPos1` float NOT NULL,
  `koObjPos2` float NOT NULL,
  `koObjPos3` float NOT NULL,
  `koObjRot1` float NOT NULL,
  `koObjRot2` float NOT NULL,
  `koObjRot3` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

CREATE TABLE `fields` (
  `fieldSQLID` mediumint(9) NOT NULL,
  `fieldOwnerSQLID` int(11) NOT NULL,
  `fieldOwned` tinyint(1) NOT NULL DEFAULT 0,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fields_stalks`
--

CREATE TABLE `fields_stalks` (
  `sSQLID` mediumint(9) NOT NULL,
  `sfieldID` mediumint(9) NOT NULL,
  `sPos1` float NOT NULL,
  `sPos2` float NOT NULL,
  `sPos3` float NOT NULL,
  `sPlanted` tinyint(1) NOT NULL DEFAULT 1,
  `sGrow` tinyint(1) NOT NULL DEFAULT 0,
  `sMinut` tinyint(2) NOT NULL,
  `sHour` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_stations`
--

CREATE TABLE `fuel_stations` (
  `fsSQLID` int(11) NOT NULL,
  `fsPlaced` tinyint(1) NOT NULL DEFAULT 1,
  `fsBussinesID` mediumint(9) NOT NULL,
  `fsName` varchar(50) NOT NULL,
  `fsFuelL` smallint(6) NOT NULL DEFAULT 50,
  `fsFuelPrice` tinyint(2) NOT NULL,
  `fsPos1` float NOT NULL,
  `fsPos2` float NOT NULL,
  `fsPos3` float NOT NULL,
  `fsTruckID` mediumint(9) NOT NULL DEFAULT -1,
  `fsCisternID` mediumint(9) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gangzones`
--

CREATE TABLE `gangzones` (
  `gzone_id` int(11) NOT NULL,
  `taken` tinyint(4) DEFAULT NULL,
  `takeable` tinyint(4) DEFAULT NULL,
  `gang_id` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `gz_radius` smallint(3) NOT NULL DEFAULT 100,
  `color` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_pos_x` float DEFAULT NULL,
  `pickup_pos_y` float DEFAULT NULL,
  `pickup_pos_z` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gangzones`
--

INSERT INTO `gangzones` (`gzone_id`, `taken`, `takeable`, `gang_id`, `time`, `gz_radius`, `color`, `pickup_pos_x`, `pickup_pos_y`, `pickup_pos_z`) VALUES
(2, 0, 1, 0, 0, 250, 'FFFFFF', 671.469, -519.967, 16.336),
(3, 0, 1, 0, 0, 150, 'FFFFFF', 2667.75, -1474.22, 30.594);

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE `garages` (
  `garage_id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT -1,
  `g_property` int(11) DEFAULT 0,
  `g_price` int(11) NOT NULL,
  `g_level` int(11) NOT NULL,
  `g_locked` tinyint(4) DEFAULT 0,
  `garage_pos_x` float NOT NULL,
  `garage_pos_y` float NOT NULL,
  `garage_pos_z` float NOT NULL,
  `garage_vehicle_pos_x` float NOT NULL,
  `garage_vehicle_pos_y` float NOT NULL,
  `garage_vehicle_pos_z` float NOT NULL,
  `garage_vehicle_pos_a` float NOT NULL,
  `g_vw` int(11) NOT NULL,
  `g_type` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
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

CREATE TABLE `gps` (
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

CREATE TABLE `organizations` (
  `org_id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(24) CHARACTER SET utf8 DEFAULT NULL,
  `type` int(11) NOT NULL,
  `suspended` tinyint(4) DEFAULT 0,
  `max_members` smallint(2) DEFAULT 30,
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
  `interior` int(11) DEFAULT 0,
  `virtualw` int(11) DEFAULT 0,
  `spawn_point_x` float DEFAULT 0,
  `spawn_point_y` float DEFAULT 0,
  `spawn_point_z` float DEFAULT 0,
  `oDilerX` float NOT NULL DEFAULT 0,
  `oDilerY` float NOT NULL DEFAULT 0,
  `oDilerZ` float NOT NULL DEFAULT 0,
  `oDilerA` float NOT NULL DEFAULT 0,
  `oDilerCena` smallint(6) NOT NULL DEFAULT 500,
  `oDilerRadi` tinyint(1) NOT NULL DEFAULT 0,
  `duty_point_pos_x` float DEFAULT 0,
  `duty_point_pos_y` float DEFAULT 0,
  `duty_point_pos_z` float DEFAULT 0,
  `duty_point_int` smallint(6) DEFAULT 0,
  `duty_point_vw` smallint(6) DEFAULT 0,
  `equip_point_pos_x` float DEFAULT 0,
  `equip_point_pos_y` float DEFAULT 0,
  `equip_point_pos_z` float DEFAULT 0,
  `equip_point_int` smallint(6) DEFAULT 0,
  `equip_point_vw` smallint(6) DEFAULT 0,
  `savez` smallint(6) DEFAULT -1,
  `safe_pos_x` float DEFAULT 0,
  `safe_pos_y` float DEFAULT 0,
  `safe_pos_z` float DEFAULT 0,
  `safe_money` int(11) DEFAULT 0,
  `safe_drug_amount` smallint(6) DEFAULT 0,
  `safe_mats` int(11) NOT NULL DEFAULT 0,
  `ent_bussines` smallint(6) DEFAULT 0,
  `owned_business` smallint(6) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `org_members`
--

CREATE TABLE `org_members` (
  `id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `memb_rank` smallint(1) NOT NULL,
  `memb_type` smallint(1) NOT NULL DEFAULT 0,
  `memb_sqlID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `org_ports`
--

CREATE TABLE `org_ports` (
  `port_id` int(11) NOT NULL,
  `org_id` int(11) NOT NULL,
  `pos_1_x` float NOT NULL,
  `pos_1_y` float NOT NULL,
  `pos_1_z` float NOT NULL,
  `int_1` int(11) DEFAULT 0,
  `vw_1` int(11) DEFAULT 0,
  `pos_2_x` float NOT NULL,
  `pos_2_y` float NOT NULL,
  `pos_2_z` float NOT NULL,
  `int_2` int(11) DEFAULT 0,
  `vw_2` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parkings`
--

CREATE TABLE `parkings` (
  `parkSQLID` smallint(6) NOT NULL,
  `parkPlaced` tinyint(1) NOT NULL DEFAULT 1,
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

CREATE TABLE `propertys` (
  `iSQLID` mediumint(9) NOT NULL,
  `iOwnerSQLID` mediumint(9) NOT NULL DEFAULT -1,
  `iGarageSqlID` mediumint(9) NOT NULL DEFAULT -1,
  `iOwned` tinyint(4) NOT NULL DEFAULT 0,
  `iOnAuction` tinyint(1) NOT NULL DEFAULT 0,
  `iOwner` varchar(25) NOT NULL DEFAULT 'Drzava',
  `iMoney` int(11) NOT NULL DEFAULT 0,
  `iUsage` tinyint(4) NOT NULL,
  `iNeaktivnost` smallint(3) NOT NULL DEFAULT 0,
  `iEnter1` float NOT NULL,
  `iEnter2` float NOT NULL,
  `iEnter3` float NOT NULL,
  `iExit1` float NOT NULL,
  `iExit2` float NOT NULL,
  `iExit3` float NOT NULL,
  `iPrice` int(11) NOT NULL,
  `iLevel` smallint(6) NOT NULL,
  `iLocked` tinyint(4) NOT NULL DEFAULT 1,
  `iVrsta` tinyint(4) NOT NULL,
  `iInterior` int(11) NOT NULL,
  `iVW` int(11) NOT NULL,
  `iOruzje1` tinyint(4) NOT NULL DEFAULT 0,
  `iOruzje2` tinyint(4) NOT NULL DEFAULT 0,
  `iOruzje3` tinyint(4) NOT NULL DEFAULT 0,
  `iOruzje4` tinyint(4) NOT NULL DEFAULT 0,
  `iMunicija1` smallint(6) NOT NULL DEFAULT 0,
  `iMunicija2` smallint(6) NOT NULL DEFAULT 0,
  `iMunicija3` smallint(6) NOT NULL DEFAULT 0,
  `iMunicija4` smallint(6) NOT NULL DEFAULT 0,
  `iDrugAmmount` smallint(6) NOT NULL DEFAULT 0,
  `iMats` mediumint(9) NOT NULL DEFAULT 0,
  `iAlarm` tinyint(1) NOT NULL DEFAULT 0,
  `iDoorLevel` tinyint(4) NOT NULL DEFAULT 0,
  `iLockLevel` tinyint(1) NOT NULL DEFAULT 0,
  `iTime` smallint(6) NOT NULL DEFAULT 0,
  `iAdress` varchar(50) NOT NULL DEFAULT '',
  `iRentable` tinyint(1) NOT NULL DEFAULT 0,
  `iRentPrice` smallint(6) NOT NULL DEFAULT 0,
  `iRentovano` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `propertys`
--

INSERT INTO `propertys` (`iSQLID`, `iOwnerSQLID`, `iGarageSqlID`, `iOwned`, `iOnAuction`, `iOwner`, `iMoney`, `iUsage`, `iNeaktivnost`, `iEnter1`, `iEnter2`, `iEnter3`, `iExit1`, `iExit2`, `iExit3`, `iPrice`, `iLevel`, `iLocked`, `iVrsta`, `iInterior`, `iVW`, `iOruzje1`, `iOruzje2`, `iOruzje3`, `iOruzje4`, `iMunicija1`, `iMunicija2`, `iMunicija3`, `iMunicija4`, `iDrugAmmount`, `iMats`, `iAlarm`, `iDoorLevel`, `iLockLevel`, `iTime`, `iAdress`, `iRentable`, `iRentPrice`, `iRentovano`) VALUES
(1, 2, 0, 1, 0, 'almightymumitza', 0, 1, 0, 766.922, -1605.89, 13.804, 2468.84, -1698.33, 1013.51, 500000, 5, 0, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Ada Ciganlija', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `punishments`
--

CREATE TABLE `punishments` (
  `p_id` int(11) NOT NULL,
  `p_user_id` int(11) NOT NULL,
  `p_admin` int(11) NOT NULL,
  `p_reason` varchar(64) NOT NULL,
  `p_jail_min` int(11) NOT NULL,
  `p_money_fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rents`
--

CREATE TABLE `rents` (
  `vrSQLID` smallint(6) NOT NULL,
  `vrLiP_Pos_X` float NOT NULL,
  `vrLiP_Pos_Y` float NOT NULL,
  `vrLiP_Pos_Z` float NOT NULL,
  `vrSpawn_Pos_X` float NOT NULL,
  `vrSpawn_Pos_Y` float NOT NULL,
  `vrSpawn_Pos_Z` float NOT NULL,
  `vrSpawn_Pos_A` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` mediumint(7) NOT NULL,
  `p_name` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `isonline` tinyint(1) DEFAULT 0,
  `user_ip` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `registered` tinyint(1) DEFAULT 0,
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `level` smallint(5) DEFAULT 1,
  `exp` smallint(6) DEFAULT 0,
  `xOnlineSati` smallint(6) DEFAULT 0,
  `money` int(11) DEFAULT 0,
  `xBRacun` int(11) DEFAULT 0,
  `xZlato` mediumint(9) DEFAULT 0,
  `xPlatiRacun` mediumint(9) DEFAULT 0,
  `payday` tinyint(2) DEFAULT 0,
  `upgrades` tinyint(3) DEFAULT 0,
  `admin_lvl` tinyint(1) DEFAULT 0,
  `admin_code` int(4) DEFAULT 0,
  `xTestAdmin` tinyint(1) DEFAULT 0,
  `helper_level` tinyint(1) DEFAULT 0,
  `vip_level` tinyint(1) DEFAULT 0,
  `spec_rank` tinyint(2) DEFAULT 0,
  `staff_min` smallint(6) DEFAULT 0,
  `vip_time` float DEFAULT 0,
  `skin_id` smallint(5) DEFAULT 0,
  `spawn` tinyint(1) DEFAULT 0,
  `materials` mediumint(9) DEFAULT 0,
  `job_id` tinyint(2) DEFAULT 0,
  `contract` tinyint(1) DEFAULT 0,
  `fight_style` tinyint(1) DEFAULT 0,
  `spawn_hp` float DEFAULT 0,
  `vehicle_license` tinyint(1) DEFAULT 0,
  `boat_license` tinyint(1) DEFAULT 0,
  `air_license` tinyint(1) DEFAULT 0,
  `gun_license` tinyint(1) DEFAULT 0,
  `toolkit` tinyint(1) DEFAULT 0,
  `property_id_1` smallint(4) DEFAULT -1,
  `property_id_2` smallint(4) DEFAULT -1,
  `property_id_3` smallint(4) DEFAULT -1,
  `bussines_id` smallint(4) DEFAULT 0,
  `field_id` smallint(4) DEFAULT -1,
  `garage_id` smallint(4) DEFAULT 0,
  `xTelefon` tinyint(1) NOT NULL DEFAULT 0,
  `phone_number` mediumint(9) DEFAULT 0,
  `phone_credit` mediumint(9) DEFAULT 0,
  `strenght` smallint(3) DEFAULT 0,
  `jail_type` tinyint(1) DEFAULT 0,
  `jail_time` smallint(4) DEFAULT 0,
  `wanted_level` tinyint(2) DEFAULT 0,
  `arrested` smallint(6) DEFAULT 0,
  `xPDUhapsio` mediumint(9) NOT NULL DEFAULT 0,
  `xPDStatsTicket` mediumint(9) NOT NULL DEFAULT 0,
  `xPDStatsTicketMoney` mediumint(9) NOT NULL DEFAULT 0,
  `xTakenWeps` mediumint(9) NOT NULL DEFAULT 0,
  `xTakenDrugs` mediumint(9) NOT NULL DEFAULT 0,
  `credit_rest` mediumint(9) DEFAULT 0,
  `credit_amount` mediumint(9) DEFAULT 0,
  `credit_installment` smallint(5) DEFAULT 0,
  `warn` tinyint(1) DEFAULT 0,
  `mute` smallint(4) DEFAULT 0,
  `mask_id` mediumint(9) DEFAULT 0,
  `rp_learn` tinyint(1) DEFAULT 0,
  `tutorial` tinyint(1) DEFAULT 0,
  `marker_p1` float DEFAULT 0,
  `marker_p2` float DEFAULT 0,
  `marker_p3` float DEFAULT 0,
  `gps_level` tinyint(1) DEFAULT 1,
  `org_contract` smallint(5) DEFAULT 0,
  `hitman_price` mediumint(9) DEFAULT 0,
  `country` tinyint(2) DEFAULT 0,
  `email` varchar(128) CHARACTER SET utf8 NOT NULL,
  `org_punishment` tinyint(3) DEFAULT 0,
  `offpjail` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpprison` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpmute` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `married` tinyint(1) DEFAULT 0,
  `married_to` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `xBundeve` smallint(6) NOT NULL DEFAULT 0,
  `xSemeBundeve` mediumint(9) DEFAULT 0,
  `lotto_number` smallint(3) DEFAULT 0,
  `lotto_money` mediumint(9) DEFAULT 0,
  `vehicle_slots` smallint(4) DEFAULT 1,
  `rob_time` tinyint(3) DEFAULT 0,
  `leave_jail` tinyint(1) DEFAULT 0,
  `bail_price` int(11) DEFAULT 0,
  `hangar_time` tinyint(3) DEFAULT 0,
  `event_first_place` smallint(5) DEFAULT 0,
  `event_second_place` smallint(5) DEFAULT 0,
  `event_third_place` smallint(5) DEFAULT 0,
  `dm_event_kills` mediumint(9) DEFAULT 0,
  `cstdm_score` mediumint(9) DEFAULT 0,
  `rent_id` smallint(4) DEFAULT -1,
  `reserve_keys` int(11) DEFAULT -1,
  `watch` smallint(5) DEFAULT 0,
  `dbo` tinyint(1) DEFAULT 0,
  `dbo_color` tinyint(2) DEFAULT 0,
  `rp_poen` smallint(3) DEFAULT 0,
  `z_poen` smallint(3) DEFAULT 0,
  `xZCoin` tinyint(3) NOT NULL DEFAULT 0,
  `reaction_poen` smallint(3) DEFAULT 0,
  `taking_time` tinyint(3) DEFAULT 0,
  `gift` smallint(6) DEFAULT 0,
  `xPaketic` tinyint(1) DEFAULT 0,
  `gate_key` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `mats_smugl` tinyint(1) DEFAULT 0,
  `robp_time` tinyint(3) DEFAULT 0,
  `law_appeals` smallint(4) DEFAULT 0,
  `law_skill` smallint(4) DEFAULT 0,
  `xTBan` smallint(6) NOT NULL DEFAULT 0,
  `xTWarn` smallint(6) NOT NULL DEFAULT 0,
  `xTKick` smallint(6) NOT NULL DEFAULT 0,
  `xTCharge` smallint(6) NOT NULL DEFAULT 0,
  `xTJail` smallint(6) NOT NULL DEFAULT 0,
  `xTUnjail` smallint(6) NOT NULL DEFAULT 0,
  `xTUnwarn` smallint(6) NOT NULL DEFAULT 0,
  `xTUnban` smallint(6) NOT NULL DEFAULT 0,
  `xTPM` smallint(6) NOT NULL DEFAULT 0,
  `xAlsoKnowAS` varchar(22) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `xReputation` smallint(5) NOT NULL DEFAULT 0,
  `xBoombox` tinyint(1) NOT NULL DEFAULT 0,
  `xTorba_Pizza` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Sok` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Pivo` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Hambi` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Piletina` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_Laptop` tinyint(1) NOT NULL DEFAULT 0,
  `xTorba_Dinamit` tinyint(1) NOT NULL DEFAULT 0,
  `xTorba_Droga` mediumint(9) NOT NULL DEFAULT 0,
  `xTorba_Kantica` mediumint(9) NOT NULL DEFAULT 0,
  `xTorba_Oruzje_1` smallint(3) NOT NULL DEFAULT 0,
  `xTorba_Oruzje_2` smallint(3) NOT NULL DEFAULT 0,
  `xTorba_Oruzje_3` smallint(3) NOT NULL DEFAULT 0,
  `xTorba_OruzjeM_1` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_OruzjeM_2` smallint(6) NOT NULL DEFAULT 0,
  `xTorba_OruzjeM_3` smallint(6) NOT NULL DEFAULT 0,
  `last_login` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `reg_date` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `p_name`, `isonline`, `user_ip`, `password`, `registered`, `sex`, `age`, `level`, `exp`, `xOnlineSati`, `money`, `xBRacun`, `xZlato`, `xPlatiRacun`, `payday`, `upgrades`, `admin_lvl`, `admin_code`, `xTestAdmin`, `helper_level`, `vip_level`, `spec_rank`, `staff_min`, `vip_time`, `skin_id`, `spawn`, `materials`, `job_id`, `contract`, `fight_style`, `spawn_hp`, `vehicle_license`, `boat_license`, `air_license`, `gun_license`, `toolkit`, `property_id_1`, `property_id_2`, `property_id_3`, `bussines_id`, `field_id`, `garage_id`, `xTelefon`, `phone_number`, `phone_credit`, `strenght`, `jail_type`, `jail_time`, `wanted_level`, `arrested`, `xPDUhapsio`, `xPDStatsTicket`, `xPDStatsTicketMoney`, `xTakenWeps`, `xTakenDrugs`, `credit_rest`, `credit_amount`, `credit_installment`, `warn`, `mute`, `mask_id`, `rp_learn`, `tutorial`, `marker_p1`, `marker_p2`, `marker_p3`, `gps_level`, `org_contract`, `hitman_price`, `country`, `email`, `org_punishment`, `offpjail`, `offpprison`, `offpmute`, `married`, `married_to`, `xBundeve`, `xSemeBundeve`, `lotto_number`, `lotto_money`, `vehicle_slots`, `rob_time`, `leave_jail`, `bail_price`, `hangar_time`, `event_first_place`, `event_second_place`, `event_third_place`, `dm_event_kills`, `cstdm_score`, `rent_id`, `reserve_keys`, `watch`, `dbo`, `dbo_color`, `rp_poen`, `z_poen`, `xZCoin`, `reaction_poen`, `taking_time`, `gift`, `xPaketic`, `gate_key`, `mats_smugl`, `robp_time`, `law_appeals`, `law_skill`, `xTBan`, `xTWarn`, `xTKick`, `xTCharge`, `xTJail`, `xTUnjail`, `xTUnwarn`, `xTUnban`, `xTPM`, `xAlsoKnowAS`, `xReputation`, `xBoombox`, `xTorba_Pizza`, `xTorba_Sok`, `xTorba_Pivo`, `xTorba_Hambi`, `xTorba_Piletina`, `xTorba_Laptop`, `xTorba_Dinamit`, `xTorba_Droga`, `xTorba_Kantica`, `xTorba_Oruzje_1`, `xTorba_Oruzje_2`, `xTorba_Oruzje_3`, `xTorba_OruzjeM_1`, `xTorba_OruzjeM_2`, `xTorba_OruzjeM_3`, `last_login`, `reg_date`) VALUES
(1, 'almightymumitza', 0, '255.255.255.255', '7A52DE551D859DF9E5F8F76FD3011CD28CC595EF6F8682A6FADF8BAC151ADA34', 1, 1, 21, 21, 6, 4, 3389243, 15937, 400, 0, 1, 0, 6, 1, 0, 0, 0, 2, 243, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, 2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 640201, 0, 1, 1296.21, -14.675, 1493.34, 1, 0, 0, 5, 'magician@zyx-ogc.com', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 10, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, '(@mumitzaa)', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 0, 0, 69, 0, 0, '2019-08-29 22:52:32', '28/03/2019 - 0:27:21'),
(2, 'Test_Sys', 0, '255.255.255.255', '65D334B70AB5E08544B46A434871D7C0451D6A0EDD3BABA7BAAF6641E989FED5', 1, 1, 21, 1, 0, 0, 50000, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 2, 0, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 6, 'test@reg.sys', 0, '2', '2', '2', 0, 'Niko', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Niko', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-05-30 18:57:54', '2019-05-30 18:50:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_clothes`
--

CREATE TABLE `user_clothes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cloth_slot_1` int(11) DEFAULT -1,
  `cloth_slot_1_p1` float DEFAULT 0,
  `cloth_slot_1_p2` float DEFAULT 0,
  `cloth_slot_1_p3` float DEFAULT 0,
  `cloth_slot_1_p4` float DEFAULT 0,
  `cloth_slot_1_p5` float DEFAULT 0,
  `cloth_slot_1_p6` float DEFAULT 0,
  `cloth_slot_1_p7` float DEFAULT 0,
  `cloth_slot_1_p8` float DEFAULT 0,
  `cloth_slot_1_p9` float DEFAULT 0,
  `cloth_slot_2` int(11) DEFAULT -1,
  `cloth_slot_2_p1` float DEFAULT 0,
  `cloth_slot_2_p2` float DEFAULT 0,
  `cloth_slot_2_p3` float DEFAULT 0,
  `cloth_slot_2_p4` float DEFAULT 0,
  `cloth_slot_2_p5` float DEFAULT 0,
  `cloth_slot_2_p6` float DEFAULT 0,
  `cloth_slot_2_p7` float DEFAULT 0,
  `cloth_slot_2_p8` float DEFAULT 0,
  `cloth_slot_2_p9` float DEFAULT 0,
  `cloth_slot_3` int(11) DEFAULT -1,
  `cloth_slot_3_p1` float DEFAULT 0,
  `cloth_slot_3_p2` float DEFAULT 0,
  `cloth_slot_3_p3` float DEFAULT 0,
  `cloth_slot_3_p4` float DEFAULT 0,
  `cloth_slot_3_p5` float DEFAULT 0,
  `cloth_slot_3_p6` float DEFAULT 0,
  `cloth_slot_3_p7` float DEFAULT 0,
  `cloth_slot_3_p8` float DEFAULT 0,
  `cloth_slot_3_p9` float DEFAULT 0,
  `cloth_slot_4` int(11) DEFAULT -1,
  `cloth_slot_4_p1` float DEFAULT 0,
  `cloth_slot_4_p2` float DEFAULT 0,
  `cloth_slot_4_p3` float DEFAULT 0,
  `cloth_slot_4_p4` float DEFAULT 0,
  `cloth_slot_4_p5` float DEFAULT 0,
  `cloth_slot_4_p6` float DEFAULT 0,
  `cloth_slot_4_p7` float DEFAULT NULL,
  `cloth_slot_4_p8` float DEFAULT 0,
  `cloth_slot_4_p9` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_clothes`
--

INSERT INTO `user_clothes` (`id`, `user_id`, `cloth_slot_1`, `cloth_slot_1_p1`, `cloth_slot_1_p2`, `cloth_slot_1_p3`, `cloth_slot_1_p4`, `cloth_slot_1_p5`, `cloth_slot_1_p6`, `cloth_slot_1_p7`, `cloth_slot_1_p8`, `cloth_slot_1_p9`, `cloth_slot_2`, `cloth_slot_2_p1`, `cloth_slot_2_p2`, `cloth_slot_2_p3`, `cloth_slot_2_p4`, `cloth_slot_2_p5`, `cloth_slot_2_p6`, `cloth_slot_2_p7`, `cloth_slot_2_p8`, `cloth_slot_2_p9`, `cloth_slot_3`, `cloth_slot_3_p1`, `cloth_slot_3_p2`, `cloth_slot_3_p3`, `cloth_slot_3_p4`, `cloth_slot_3_p5`, `cloth_slot_3_p6`, `cloth_slot_3_p7`, `cloth_slot_3_p8`, `cloth_slot_3_p9`, `cloth_slot_4`, `cloth_slot_4_p1`, `cloth_slot_4_p2`, `cloth_slot_4_p3`, `cloth_slot_4_p4`, `cloth_slot_4_p5`, `cloth_slot_4_p6`, `cloth_slot_4_p7`, `cloth_slot_4_p8`, `cloth_slot_4_p9`) VALUES
(1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `veh_id` int(11) NOT NULL,
  `owner_sqlID` int(11) DEFAULT 0,
  `v_price` int(11) NOT NULL,
  `v_locked` tinyint(1) DEFAULT 0,
  `v_pos_x` float NOT NULL,
  `v_pos_y` float NOT NULL,
  `v_pos_z` float NOT NULL,
  `v_pos_a` float NOT NULL,
  `v_virtualw` int(11) NOT NULL,
  `v_interior` int(11) NOT NULL,
  `v_usage` smallint(2) NOT NULL,
  `v_organization` smallint(2) DEFAULT 0,
  `v_job` smallint(2) DEFAULT -1,
  `v_fuel_station` smallint(2) DEFAULT -1,
  `v_color_1` int(11) NOT NULL,
  `v_color_2` int(11) NOT NULL,
  `v_model` int(11) NOT NULL,
  `v_teh` smallint(2) DEFAULT 0,
  `v_reg` smallint(2) DEFAULT 0,
  `v_reg_vreme` smallint(3) DEFAULT 0,
  `v_tablice` varchar(24) COLLATE utf8_unicode_ci DEFAULT 'NEMA',
  `v_gps` smallint(2) DEFAULT 0,
  `v_insurance` smallint(2) DEFAULT 0,
  `v_lock` smallint(2) DEFAULT 0,
  `v_alarm` smallint(2) DEFAULT 0,
  `v_fuel` smallint(2) DEFAULT 40,
  `v_fuel_type` smallint(2) DEFAULT 0,
  `v_neon` int(11) DEFAULT 0,
  `v_tuned` tinyint(1) DEFAULT 0,
  `v_imobilizator` int(11) DEFAULT 0,
  `v_spoiler` int(11) DEFAULT 0,
  `v_hood` int(11) DEFAULT 0,
  `v_roof` int(11) DEFAULT 0,
  `v_skirt` int(11) DEFAULT 0,
  `v_lamps` int(11) DEFAULT 0,
  `v_nitro` int(11) DEFAULT 0,
  `v_exhaust` int(11) DEFAULT 0,
  `v_wheels` int(11) DEFAULT 0,
  `v_stereo` int(11) DEFAULT 0,
  `v_hydraulics` int(11) DEFAULT 0,
  `v_front_bumper` int(11) DEFAULT 0,
  `v_rear_bumper` int(11) DEFAULT 0,
  `v_vents` int(11) DEFAULT 0,
  `v_paintjob` int(11) DEFAULT 255,
  `v_drug_ammount` int(11) DEFAULT 0,
  `v_mats` int(11) DEFAULT 0,
  `v_weapon_melee` int(11) DEFAULT 0,
  `v_weapon_slot_1` int(11) DEFAULT 0,
  `v_weapon_ammo_1` int(11) DEFAULT 0,
  `v_weapon_slot_2` int(11) DEFAULT 0,
  `v_weapon_ammo_2` int(11) DEFAULT 0,
  `v_gajbica_slot_1` int(11) DEFAULT -1,
  `v_gajbica_slot_2` int(11) DEFAULT -1,
  `v_gajbica_slot_3` int(11) DEFAULT -1,
  `v_gajbica_slot_4` int(11) DEFAULT -1,
  `v_gajbica_slot_5` int(11) DEFAULT -1,
  `v_gajbica_kolicina_1` int(11) DEFAULT 0,
  `v_gajbica_kolicina_2` int(11) DEFAULT 0,
  `v_gajbica_kolicina_3` int(11) DEFAULT 0,
  `v_gajbica_kolicina_4` int(11) DEFAULT 0,
  `v_gajbica_kolicina_5` int(11) DEFAULT 0,
  `v_neaktivnost` int(11) DEFAULT 0,
  `v_kilometri` int(11) DEFAULT 0,
  `v_metri` int(11) DEFAULT 0,
  `vLastSpawn` varchar(44) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_salon`
--

CREATE TABLE `vehicle_salon` (
  `salon_id` int(11) NOT NULL,
  `s_bussines_id` int(11) NOT NULL,
  `veh_buyed_pos_x` float NOT NULL,
  `veh_buyed_pos_y` float NOT NULL,
  `veh_buyed_pos_z` float NOT NULL,
  `veh_buyed_pos_a` float NOT NULL,
  `pickup_pos_x` float NOT NULL,
  `pickup_pos_y` float NOT NULL,
  `pickup_pos_z` float NOT NULL,
  `s_interior` int(11) NOT NULL DEFAULT 0,
  `s_virtualw` int(11) NOT NULL DEFAULT 0,
  `veh_model_1` int(11) DEFAULT 0,
  `veh_model_2` int(11) DEFAULT 0,
  `veh_model_3` int(11) DEFAULT 0,
  `veh_model_4` int(11) DEFAULT 0,
  `veh_model_5` int(11) DEFAULT 0,
  `veh_model_6` int(11) DEFAULT 0,
  `veh_model_7` int(11) DEFAULT 0,
  `veh_model_8` int(11) DEFAULT 0,
  `veh_model_9` int(11) DEFAULT 0,
  `veh_model_10` int(11) DEFAULT 0,
  `veh_model_11` int(11) DEFAULT 0,
  `veh_model_12` int(11) DEFAULT 0,
  `veh_model_13` int(11) DEFAULT 0,
  `veh_model_14` int(11) DEFAULT 0,
  `veh_model_15` int(11) DEFAULT 0,
  `veh_model_16` int(11) DEFAULT 0,
  `veh_amount_1` int(11) DEFAULT 0,
  `veh_amount_2` int(11) DEFAULT 0,
  `veh_amount_3` int(11) DEFAULT 0,
  `veh_amount_4` int(11) DEFAULT 0,
  `veh_amount_5` int(11) DEFAULT 0,
  `veh_amount_6` int(11) DEFAULT 0,
  `veh_amount_7` int(11) DEFAULT 0,
  `veh_amount_8` int(11) DEFAULT 0,
  `veh_amount_9` int(11) DEFAULT 0,
  `veh_amount_10` int(11) DEFAULT 0,
  `veh_amount_11` int(11) DEFAULT 0,
  `veh_amount_12` int(11) DEFAULT 0,
  `veh_amount_13` int(11) DEFAULT 0,
  `veh_amount_14` int(11) DEFAULT 0,
  `veh_amount_15` int(11) DEFAULT 0,
  `veh_amount_16` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `xmas_presents`
--

CREATE TABLE `xmas_presents` (
  `presSQLID` smallint(6) NOT NULL,
  `presTaken` tinyint(1) NOT NULL DEFAULT 0,
  `presPlaced` tinyint(1) NOT NULL DEFAULT 1,
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

CREATE TABLE `xmas_trees` (
  `ctSQLID` smallint(6) NOT NULL,
  `ctPlaced` tinyint(1) NOT NULL DEFAULT 1,
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

CREATE TABLE `_anticheat` (
  `acSQLID` tinyint(1) NOT NULL,
  `WeaponHRezimRada` tinyint(1) NOT NULL DEFAULT 1,
  `TeleportHRezimRada` tinyint(1) NOT NULL DEFAULT 0,
  `HealthHRezimRada` tinyint(1) NOT NULL DEFAULT 0,
  `SpeedHRezimRada` tinyint(1) NOT NULL DEFAULT 0,
  `JetPackHRezimRada` tinyint(1) NOT NULL DEFAULT 1,
  `MoneyHRezimRada` tinyint(1) NOT NULL DEFAULT 0,
  `FlyHRezimRada` tinyint(1) NOT NULL DEFAULT 0,
  `TuningHRezimRada` tinyint(1) NOT NULL DEFAULT 1,
  `VehRepRezimRada` tinyint(1) NOT NULL DEFAULT 0,
  `VehTrollRezimRada` tinyint(1) NOT NULL DEFAULT 0,
  `antiWeaponH` tinyint(1) NOT NULL DEFAULT 1,
  `antiTeleportH` tinyint(1) NOT NULL DEFAULT 1,
  `antiHealthH` tinyint(1) NOT NULL DEFAULT 1,
  `antiArmourH` tinyint(1) NOT NULL DEFAULT 1,
  `antiSpeedH` tinyint(1) NOT NULL DEFAULT 1,
  `antiJetPackH` tinyint(1) NOT NULL DEFAULT 1,
  `antiMoneyH` tinyint(1) NOT NULL DEFAULT 1,
  `antiFlyH` tinyint(1) NOT NULL DEFAULT 1,
  `antiTuningH` tinyint(1) NOT NULL DEFAULT 1,
  `antiVehRepair` tinyint(1) NOT NULL DEFAULT 1,
  `antiVehTroll` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_anticheat`
--

INSERT INTO `_anticheat` (`acSQLID`, `WeaponHRezimRada`, `TeleportHRezimRada`, `HealthHRezimRada`, `SpeedHRezimRada`, `JetPackHRezimRada`, `MoneyHRezimRada`, `FlyHRezimRada`, `TuningHRezimRada`, `VehRepRezimRada`, `VehTrollRezimRada`, `antiWeaponH`, `antiTeleportH`, `antiHealthH`, `antiArmourH`, `antiSpeedH`, `antiJetPackH`, `antiMoneyH`, `antiFlyH`, `antiTuningH`, `antiVehRepair`, `antiVehTroll`) VALUES
(1, 1, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_stats`
--

CREATE TABLE `_stats` (
  `ssSQLID` tinyint(1) NOT NULL,
  `RegistrovanihKorisnika` mediumint(9) NOT NULL DEFAULT 0,
  `BanovanihKorisnika` mediumint(9) NOT NULL DEFAULT 0,
  `KikovanihKorisnika` mediumint(9) NOT NULL DEFAULT 0,
  `BrojWarnova` mediumint(9) NOT NULL DEFAULT 0,
  `BrojPosetaServeru` mediumint(9) NOT NULL DEFAULT 0,
  `HappyHours` tinyint(1) NOT NULL DEFAULT 0,
  `HappyHoursLvl` tinyint(2) NOT NULL DEFAULT 0,
  `HappyJobs` tinyint(1) NOT NULL DEFAULT 0,
  `PocetniLevel` tinyint(1) NOT NULL DEFAULT 1,
  `PocetniNovaca` mediumint(9) NOT NULL DEFAULT 35000,
  `BankaNovac` mediumint(7) NOT NULL DEFAULT 0,
  `KupovinaVozila` tinyint(4) NOT NULL DEFAULT 1,
  `Report` tinyint(1) NOT NULL DEFAULT 1,
  `Pitanja` tinyint(1) NOT NULL DEFAULT 1,
  `RekordServera` smallint(5) NOT NULL DEFAULT 0,
  `Oglasi` tinyint(1) NOT NULL DEFAULT 1,
  `Registracija` tinyint(1) NOT NULL DEFAULT 1,
  `ReactTime` mediumint(9) NOT NULL DEFAULT 7500,
  `ReactName` varchar(25) NOT NULL DEFAULT 'No-one'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_stats`
--

INSERT INTO `_stats` (`ssSQLID`, `RegistrovanihKorisnika`, `BanovanihKorisnika`, `KikovanihKorisnika`, `BrojWarnova`, `BrojPosetaServeru`, `HappyHours`, `HappyHoursLvl`, `HappyJobs`, `PocetniLevel`, `PocetniNovaca`, `BankaNovac`, `KupovinaVozila`, `Report`, `Pitanja`, `RekordServera`, `Oglasi`, `Registracija`, `ReactTime`, `ReactName`) VALUES
(1, 2, 0, 0, 0, 106, 3, 20, 3, 1, 50000, 0, 1, 1, 1, 1, 1, 1, 7500, 'No-one');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atms`
--
ALTER TABLE `atms`
  ADD PRIMARY KEY (`atmSQLID`),
  ADD UNIQUE KEY `atmSQLID` (`atmSQLID`);

--
-- Indexes for table `banned`
--
ALTER TABLE `banned`
  ADD PRIMARY KEY (`ban_id`),
  ADD UNIQUE KEY `ban_id` (`ban_id`);

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
  MODIFY `ban_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bussines`
--
ALTER TABLE `bussines`
  MODIFY `bussines_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `containers`
--
ALTER TABLE `containers`
  MODIFY `koSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fields`
--
ALTER TABLE `fields`
  MODIFY `fieldSQLID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fields_stalks`
--
ALTER TABLE `fields_stalks`
  MODIFY `sSQLID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fuel_stations`
--
ALTER TABLE `fuel_stations`
  MODIFY `fsSQLID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gangzones`
--
ALTER TABLE `gangzones`
  MODIFY `gzone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
  MODIFY `garage_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `org_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `org_members`
--
ALTER TABLE `org_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `iSQLID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `punishments`
--
ALTER TABLE `punishments`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rents`
--
ALTER TABLE `rents`
  MODIFY `vrSQLID` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` mediumint(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_clothes`
--
ALTER TABLE `user_clothes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `acSQLID` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `_stats`
--
ALTER TABLE `_stats`
  MODIFY `ssSQLID` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
