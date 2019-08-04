-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-08-04 18:01:40
-- 服务器版本： 10.1.36-MariaDB
-- PHP 版本： 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `holiland`
--
SET NAMES UTF8;
DROP DATABASE IF EXISTS holiland;
CREATE DATABASE holiland CHARSET = UTF8;
USE holiland;
-- --------------------------------------------------------

--
-- 表的结构 `cakeseries`
--

CREATE TABLE `cakeseries` (
  `cakeseriesid` int(11) NOT NULL,
  `cakeseriesimgurl` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `cakeseries`
--

INSERT INTO `cakeseries` (`cakeseriesid`, `cakeseriesimgurl`) VALUES
(1, 'http://www.holiland.com/data/afficheimg/1556066281201055112.jpg'),
(2, 'http://www.holiland.com/data/afficheimg/1556068738109862476.jpg'),
(3, 'http://www.holiland.com/data/afficheimg/1457033830198279930.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `carousel`
--

CREATE TABLE `carousel` (
  `cid` int(12) NOT NULL,
  `cimgurl` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `carousel`
--

INSERT INTO `carousel` (`cid`, `cimgurl`) VALUES
(1, 'http://www.holiland.com/data/afficheimg/1451241729614010049.jpg'),
(2, 'http://www.holiland.com/data/afficheimg/1456986961694221493.jpg'),
(3, 'http://www.holiland.com/data/afficheimg/1457047833194068991.jpg'),
(4, 'http://www.holiland.com/data/afficheimg/1464247474728938268.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--

CREATE TABLE `cart` (
  `cartid` int(128) NOT NULL,
  `uid` int(12) NOT NULL,
  `pid` int(12) NOT NULL,
  `count` int(12) NOT NULL,
  `price` smallint(128) NOT NULL,
  `img_main` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `ptitle` varchar(128) NOT NULL,
  `pattr` varchar(128) NOT NULL,
  `pintegral` int(12) NOT NULL COMMENT '积分'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `holiland_carousel_item`
--

CREATE TABLE `holiland_carousel_item` (
  `caid` tinyint(4) NOT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `holiland_site_info`
--

CREATE TABLE `holiland_site_info` (
  `site_name` varchar(32) DEFAULT NULL,
  `logo` varchar(128) DEFAULT NULL,
  `copyright` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `productcake`
--

CREATE TABLE `productcake` (
  `pid` int(12) NOT NULL,
  `title` varchar(128) NOT NULL,
  `pservice` varchar(128) NOT NULL,
  `price` smallint(128) NOT NULL,
  `pattr` varchar(128) NOT NULL,
  `pattrprice` decimal(12,0) NOT NULL,
  `tableware` varchar(128) NOT NULL COMMENT '餐具',
  `img_right` varchar(128) NOT NULL,
  `img_sm` varchar(128) NOT NULL,
  `img_md` varchar(128) NOT NULL,
  `img_lg` varchar(128) NOT NULL,
  `img_body` varchar(1024) NOT NULL,
  `img_main` varchar(1024) NOT NULL,
  `series` varchar(128) NOT NULL COMMENT '系列',
  `url` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `productcake`
--

INSERT INTO `productcake` (`pid`, `title`, `pservice`, `price`, `pattr`, `pattrprice`, `tableware`, `img_right`, `img_sm`, `img_md`, `img_lg`, `img_body`, `img_main`, `series`, `url`) VALUES
(1, '感恩有您', '', 289, '20cm-酸奶提子', '289', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551926928129726700.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1040_P_1552023697058.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551955714759181.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1040_G_1552023697572.jpg', '1', 'detailCake'),
(2, '浪漫甜心', '', 269, '15x15cm-双莓慕斯+草莓', '269', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551926736694955098.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1042_P_1552021476062.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551955509692884.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1042_G_1552021476415.jpg', '1', 'detailCake'),
(3, '小小飞行员', '', 299, '20cm-酸奶提子,20cm-双莓慕斯+草莓', '299', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551928342967487598.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1028_P_1552020798662.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551957126851457.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1028_G_1552020798350.jpg', '2', 'detailCake'),
(4, '瑞鹤呈祥', '', 569, '35cm-酸奶提子,40cm-酸奶提子', '569', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551927334084710451.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1036_P_1552021593410.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551956118920856.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1036_G_1552021593270.jpg', '3', 'detailCake'),
(5, '感恩有您', '', 289, '20cm-酸奶提子', '289', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551926928129726700.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1040_P_1552023697058.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551955714759181.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1040_G_1552023697572.jpg', '1', 'detailCake'),
(6, '浪漫甜心', '', 269, '15x15cm-双莓慕斯+草莓', '269', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551926736694955098.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1042_P_1552021476062.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551955509692884.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1042_G_1552021476415.jpg', '1', 'detailCake'),
(7, '小小飞行员', '', 299, '20cm-酸奶提子,20cm-双莓慕斯+草莓', '299', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551928342967487598.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1028_P_1552020798662.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551957126851457.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1028_G_1552020798350.jpg', '2', 'detailCake'),
(8, '瑞鹤呈祥', '', 569, '35cm-酸奶提子,40cm-酸奶提子', '569', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551927334084710451.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1036_P_1552021593410.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551956118920856.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1036_G_1552021593270.jpg', '3', 'detailCake'),
(9, '感恩有您', '', 289, '20cm-酸奶提子', '289', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551926928129726700.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1040_P_1552023697058.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551955714759181.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1040_G_1552023697572.jpg', '1', 'detailCake'),
(10, '浪漫甜心', '', 269, '15x15cm-双莓慕斯+草莓', '269', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551926736694955098.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1042_P_1552021476062.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551955509692884.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1042_G_1552021476415.jpg', '1', 'detailCake'),
(11, '小小飞行员', '', 299, '20cm-酸奶提子,20cm-双莓慕斯+草莓', '299', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551928342967487598.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1028_P_1552020798662.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551957126851457.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1028_G_1552020798350.jpg', '2', 'detailCake'),
(12, '瑞鹤呈祥', '', 569, '35cm-酸奶提子,40cm-酸奶提子', '569', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551927334084710451.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1036_P_1552021593410.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551956118920856.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1036_G_1552021593270.jpg', '3', 'detailCake'),
(13, '感恩有您', '', 289, '20cm-酸奶提子', '289', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551926928129726700.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1040_P_1552023697058.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551955714759181.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1040_G_1552023697572.jpg', '1', 'detailCake'),
(14, '浪漫甜心', '', 269, '15x15cm-双莓慕斯+草莓', '269', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551926736694955098.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1042_P_1552021476062.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551955509692884.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1042_G_1552021476415.jpg', '1', 'detailCake'),
(15, '小小飞行员', '', 299, '20cm-酸奶提子,20cm-双莓慕斯+草莓', '299', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551928342967487598.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1028_P_1552020798662.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551957126851457.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1028_G_1552020798350.jpg', '2', 'detailCake'),
(16, '瑞鹤呈祥', '', 569, '35cm-酸奶提子,40cm-酸奶提子', '569', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551927334084710451.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1036_P_1552021593410.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551956118920856.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1036_G_1552021593270.jpg', '3', 'detailCake'),
(17, '感恩有您', '', 289, '20cm-酸奶提子', '289', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551926928129726700.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1040_P_1552023697058.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551955714759181.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1040_G_1552023697572.jpg', '1', 'detailCake'),
(18, '浪漫甜心', '', 269, '15x15cm-双莓慕斯+草莓', '269', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551926736694955098.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1042_P_1552021476062.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551955509692884.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1042_G_1552021476415.jpg', '1', 'detailCake'),
(19, '小小飞行员', '', 299, '20cm-酸奶提子,20cm-双莓慕斯+草莓', '299', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551928342967487598.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1028_P_1552020798662.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551957126851457.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1028_G_1552020798350.jpg', '2', 'detailCake'),
(20, '瑞鹤呈祥', '', 569, '35cm-酸奶提子,40cm-酸奶提子', '569', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551927334084710451.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1036_P_1552021593410.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551956118920856.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1036_G_1552021593270.jpg', '3', 'detailCake'),
(21, '感恩有您', '', 289, '20cm-酸奶提子', '289', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551926928129726700.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1040_P_1552023697058.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551955714759181.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1040_G_1552023697572.jpg', '1', 'detailCake'),
(22, '浪漫甜心', '', 269, '15x15cm-双莓慕斯+草莓', '269', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551926736694955098.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1042_P_1552021476062.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551955509692884.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1042_G_1552021476415.jpg', '1', 'detailCake'),
(23, '小小飞行员', '', 299, '20cm-酸奶提子,20cm-双莓慕斯+草莓', '299', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551928342967487598.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1028_P_1552020798662.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551957126851457.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1028_G_1552020798350.jpg', '2', 'detailCake'),
(24, '瑞鹤呈祥', '', 569, '35cm-酸奶提子,40cm-酸奶提子', '569', '2人份,不要餐具,3人份', 'http://www.holiland.com/data/anatomy/201903/1551927334084710451.jpg', '', '', 'http://www.holiland.com/images/201903/goods_img/1036_P_1552021593410.jpg', 'http://www.holiland.com/images/upload/images/20190307/1551956118920856.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg', 'http://www.holiland.com/images/201903/goods_img/1036_G_1552021593270.jpg', '3', 'detailCake');

-- --------------------------------------------------------

--
-- 表的结构 `productwagashi`
--

CREATE TABLE `productwagashi` (
  `pid` int(12) NOT NULL,
  `title` varchar(128) NOT NULL,
  `pservice` varchar(128) NOT NULL,
  `price` smallint(128) NOT NULL,
  `pattr` varchar(128) NOT NULL COMMENT '规格',
  `pattrprice` decimal(10,0) NOT NULL,
  `img_right` varchar(128) NOT NULL,
  `img_sm` varchar(128) NOT NULL,
  `img_md` varchar(128) NOT NULL,
  `img_lg` varchar(1024) NOT NULL,
  `img_body` varchar(1024) NOT NULL,
  `img_main` varchar(128) NOT NULL COMMENT '商品列表图',
  `url` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `productwagashi`
--

INSERT INTO `productwagashi` (`pid`, `title`, `pservice`, `price`, `pattr`, `pattrprice`, `img_right`, `img_sm`, `img_md`, `img_lg`, `img_body`, `img_main`, `url`) VALUES
(1, '半熟芝士冰淇淋（10支）', '', 139, '7味全家福系列,可可奶茶系列,可爱甜心系列', '139', 'http://www.holiland.com/data/anatomy/201905/1557966759901891237.jpg', '', '', 'http://www.holiland.com/images/201905/goods_img/1139_P_1557966759224.jpg,http://www.holiland.com/images/201905/goods_img/1139_P_1557966760488.jpg', 'http://www.holiland.com/images/upload/images/20190516/1557995453894812.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201905/goods_img/1139_G_1557966759836.jpg', 'detailWagashi'),
(2, '雪绒芝士', '', 48, '6枚入-玫瑰蜜桃味,6枚入-青梅味', '48', 'http://www.holiland.com/data/anatomy/201907/1562474189519495842.jpg', '', '', 'http://www.holiland.com/images/201907/goods_img/1144_P_1562474190887.jpg,http://www.holiland.com/images/201907/goods_img/1144_P_1562474189429.png', 'http://www.holiland.com/images/upload/images/20190707/1562502923445155.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201907/goods_img/1144_G_1562475751584.jpg', 'detailWagashi'),
(3, '生吐司', '不支持7天无理由', 28, '', '0', 'http://www.holiland.com/data/anatomy/201901/1548877338311837328.jpg', '', '', 'http://www.holiland.com/images/201901/goods_img/953_P_1548877338626.jpg,http://www.holiland.com/images/201901/goods_img/953_P_1548877338484.jpg,http://www.holiland.com/images/201901/goods_img/953_P_1548877338110.jpg', 'http://www.holiland.com/images/upload/images/20190131/1548905843270365.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201901/goods_img/953_G_1548877338289.jpg', 'detailWagashi'),
(4, '半熟芝士冰淇淋（10支）', '', 139, '7味全家福系列,可可奶茶系列,可爱甜心系列', '139', 'http://www.holiland.com/data/anatomy/201905/1557966759901891237.jpg', '', '', 'http://www.holiland.com/images/201905/goods_img/1139_P_1557966759224.jpg,http://www.holiland.com/images/201905/goods_img/1139_P_1557966760488.jpg', 'http://www.holiland.com/images/upload/images/20190516/1557995453894812.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201905/goods_img/1139_G_1557966759836.jpg', 'detailWagashi'),
(5, '雪绒芝士', '', 48, '6枚入-玫瑰蜜桃味,6枚入-青梅味', '48', 'http://www.holiland.com/data/anatomy/201907/1562474189519495842.jpg', '', '', 'http://www.holiland.com/images/201907/goods_img/1144_P_1562474190887.jpg,http://www.holiland.com/images/201907/goods_img/1144_P_1562474189429.png', 'http://www.holiland.com/images/upload/images/20190707/1562502923445155.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201907/goods_img/1144_G_1562475751584.jpg', 'detailWagashi'),
(6, '生吐司', '不支持7天无理由', 28, '', '0', 'http://www.holiland.com/data/anatomy/201901/1548877338311837328.jpg', '', '', 'http://www.holiland.com/images/201901/goods_img/953_P_1548877338626.jpg,http://www.holiland.com/images/201901/goods_img/953_P_1548877338484.jpg,http://www.holiland.com/images/201901/goods_img/953_P_1548877338110.jpg', 'http://www.holiland.com/images/upload/images/20190131/1548905843270365.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201901/goods_img/953_G_1548877338289.jpg', 'detailWagashi'),
(7, '半熟芝士冰淇淋（10支）', '', 139, '7味全家福系列,可可奶茶系列,可爱甜心系列', '139', 'http://www.holiland.com/data/anatomy/201905/1557966759901891237.jpg', '', '', 'http://www.holiland.com/images/201905/goods_img/1139_P_1557966759224.jpg,http://www.holiland.com/images/201905/goods_img/1139_P_1557966760488.jpg', 'http://www.holiland.com/images/upload/images/20190516/1557995453894812.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201905/goods_img/1139_G_1557966759836.jpg', 'detailWagashi'),
(8, '雪绒芝士', '', 48, '6枚入-玫瑰蜜桃味,6枚入-青梅味', '48', 'http://www.holiland.com/data/anatomy/201907/1562474189519495842.jpg', '', '', 'http://www.holiland.com/images/201907/goods_img/1144_P_1562474190887.jpg,http://www.holiland.com/images/201907/goods_img/1144_P_1562474189429.png', 'http://www.holiland.com/images/upload/images/20190707/1562502923445155.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201907/goods_img/1144_G_1562475751584.jpg', 'detailWagashi'),
(9, '生吐司', '不支持7天无理由', 28, '', '0', 'http://www.holiland.com/data/anatomy/201901/1548877338311837328.jpg', '', '', 'http://www.holiland.com/images/201901/goods_img/953_P_1548877338626.jpg,http://www.holiland.com/images/201901/goods_img/953_P_1548877338484.jpg,http://www.holiland.com/images/201901/goods_img/953_P_1548877338110.jpg', 'http://www.holiland.com/images/upload/images/20190131/1548905843270365.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201901/goods_img/953_G_1548877338289.jpg', 'detailWagashi'),
(10, '半熟芝士冰淇淋（10支）', '', 139, '7味全家福系列,可可奶茶系列,可爱甜心系列', '139', 'http://www.holiland.com/data/anatomy/201905/1557966759901891237.jpg', '', '', 'http://www.holiland.com/images/201905/goods_img/1139_P_1557966759224.jpg,http://www.holiland.com/images/201905/goods_img/1139_P_1557966760488.jpg', 'http://www.holiland.com/images/upload/images/20190516/1557995453894812.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201905/goods_img/1139_G_1557966759836.jpg', 'detailWagashi'),
(11, '雪绒芝士', '', 48, '6枚入-玫瑰蜜桃味,6枚入-青梅味', '48', 'http://www.holiland.com/data/anatomy/201907/1562474189519495842.jpg', '', '', 'http://www.holiland.com/images/201907/goods_img/1144_P_1562474190887.jpg,http://www.holiland.com/images/201907/goods_img/1144_P_1562474189429.png', 'http://www.holiland.com/images/upload/images/20190707/1562502923445155.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201907/goods_img/1144_G_1562475751584.jpg', 'detailWagashi'),
(12, '生吐司', '不支持7天无理由', 28, '', '0', 'http://www.holiland.com/data/anatomy/201901/1548877338311837328.jpg', '', '', 'http://www.holiland.com/images/201901/goods_img/953_P_1548877338626.jpg,http://www.holiland.com/images/201901/goods_img/953_P_1548877338484.jpg,http://www.holiland.com/images/201901/goods_img/953_P_1548877338110.jpg', 'http://www.holiland.com/images/upload/images/20190131/1548905843270365.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201901/goods_img/953_G_1548877338289.jpg', 'detailWagashi'),
(13, '半熟芝士冰淇淋（10支）', '', 139, '7味全家福系列,可可奶茶系列,可爱甜心系列', '139', 'http://www.holiland.com/data/anatomy/201905/1557966759901891237.jpg', '', '', 'http://www.holiland.com/images/201905/goods_img/1139_P_1557966759224.jpg,http://www.holiland.com/images/201905/goods_img/1139_P_1557966760488.jpg', 'http://www.holiland.com/images/upload/images/20190516/1557995453894812.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201905/goods_img/1139_G_1557966759836.jpg', 'detailWagashi'),
(14, '雪绒芝士', '', 48, '6枚入-玫瑰蜜桃味,6枚入-青梅味', '48', 'http://www.holiland.com/data/anatomy/201907/1562474189519495842.jpg', '', '', 'http://www.holiland.com/images/201907/goods_img/1144_P_1562474190887.jpg,http://www.holiland.com/images/201907/goods_img/1144_P_1562474189429.png', 'http://www.holiland.com/images/upload/images/20190707/1562502923445155.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201907/goods_img/1144_G_1562475751584.jpg', 'detailWagashi'),
(15, '生吐司', '不支持7天无理由', 28, '', '0', 'http://www.holiland.com/data/anatomy/201901/1548877338311837328.jpg', '', '', 'http://www.holiland.com/images/201901/goods_img/953_P_1548877338626.jpg,http://www.holiland.com/images/201901/goods_img/953_P_1548877338484.jpg,http://www.holiland.com/images/201901/goods_img/953_P_1548877338110.jpg', 'http://www.holiland.com/images/upload/images/20190131/1548905843270365.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201901/goods_img/953_G_1548877338289.jpg', 'detailWagashi'),
(16, '半熟芝士冰淇淋（10支）', '', 139, '7味全家福系列,可可奶茶系列,可爱甜心系列', '139', 'http://www.holiland.com/data/anatomy/201905/1557966759901891237.jpg', '', '', 'http://www.holiland.com/images/201905/goods_img/1139_P_1557966759224.jpg,http://www.holiland.com/images/201905/goods_img/1139_P_1557966760488.jpg', 'http://www.holiland.com/images/upload/images/20190516/1557995453894812.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201905/goods_img/1139_G_1557966759836.jpg', 'detailWagashi'),
(17, '雪绒芝士', '', 48, '6枚入-玫瑰蜜桃味,6枚入-青梅味', '48', 'http://www.holiland.com/data/anatomy/201907/1562474189519495842.jpg', '', '', 'http://www.holiland.com/images/201907/goods_img/1144_P_1562474190887.jpg,http://www.holiland.com/images/201907/goods_img/1144_P_1562474189429.png', 'http://www.holiland.com/images/upload/images/20190707/1562502923445155.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201907/goods_img/1144_G_1562475751584.jpg', 'detailWagashi'),
(18, '生吐司', '不支持7天无理由', 28, '', '0', 'http://www.holiland.com/data/anatomy/201901/1548877338311837328.jpg', '', '', 'http://www.holiland.com/images/201901/goods_img/953_P_1548877338626.jpg,http://www.holiland.com/images/201901/goods_img/953_P_1548877338484.jpg,http://www.holiland.com/images/201901/goods_img/953_P_1548877338110.jpg', 'http://www.holiland.com/images/upload/images/20190131/1548905843270365.jpg,http://www.holiland.com/images/upload/images/20190516/1557995505946184.jpg\n', 'http://www.holiland.com/images/201901/goods_img/953_G_1548877338289.jpg', 'detailWagashi');

-- --------------------------------------------------------

--
-- 表的结构 `series`
--

CREATE TABLE `series` (
  `sid` int(12) NOT NULL,
  `stitle` varchar(128) NOT NULL,
  `stitleE` varchar(128) NOT NULL,
  `simgurl` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `series`
--

INSERT INTO `series` (`sid`, `stitle`, `stitleE`, `simgurl`) VALUES
(1, '经典系列', 'CLASSIC SERIES', 'http://www.holiland.com/data/afficheimg/1556050944618701139.jpg'),
(2, '儿童系列', 'CHILDREN SERIES', 'http://www.holiland.com/data/afficheimg/1556053192285643115.jpg'),
(3, '尊爱系列', 'RESPECT AND LOVE', 'http://www.holiland.com/data/afficheimg/1562625291693904523.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `service`
--

CREATE TABLE `service` (
  `serviceid` int(12) NOT NULL,
  `servicetitle` varchar(128) NOT NULL,
  `servicetitleE` varchar(128) NOT NULL,
  `serviceimg` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `service`
--

INSERT INTO `service` (`serviceid`, `servicetitle`, `servicetitleE`, `serviceimg`) VALUES
(1, '配送包', 'DELIVERY PACKAGE', 'http://www.holiland.com/data/afficheimg/1528259724147241527.jpg'),
(2, '店面形象', 'STORE IMAGES', 'http://www.holiland.com/data/afficheimg/1458096609174521318.jpg'),
(3, '配送服务', 'DELIVERY SERVICE', 'http://www.holiland.com/data/afficheimg/1458039189338219135.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` smallint(11) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `upwd` varchar(50) DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(32) DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `gender` tinyint(1) DEFAULT NULL COMMENT '1：男，2：女',
  `birthdaytype` varchar(5) DEFAULT NULL,
  `birthday` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `phone`, `upwd`, `token`, `email`, `uname`, `gender`, `birthdaytype`, `birthday`) VALUES
(1, '12345678912', '123', '', '123456@qq.com', '小丸子', 1, '阳历', '2019-06-13'),
(2, '18201438483', '123456', '', '456564asdjasodjlk@126.com', 'werewolf吧', 2, '阴历', '2019-07-11'),
(3, '18201438480', 'asdfsad', '', 'afasdf', NULL, 0, '', NULL),
(6, '13552280895', 'dbbe27a6d588f27ee193', '', NULL, '糕友_13552280895', NULL, NULL, NULL),
(7, '13552280896', 'dbbe27a6d588f27ee193', '', NULL, '糕友_13552280896', NULL, NULL, NULL),
(8, '13552280897', 'dbbe27a6d588f27ee193', '', NULL, '糕友_13552280897', NULL, NULL, NULL),
(9, '13552280898', 'dbbe27a6d588f27ee193', '', NULL, '糕友_13552280898', NULL, NULL, NULL),
(10, '13552280899', 'dbbe27a6d588f27ee193', '', NULL, '糕友_13552280899', NULL, NULL, NULL),
(11, '13552280812', 'dbbe27a6d588f27ee193', '', NULL, '糕友_13552280812', NULL, NULL, NULL),
(12, '13552280813', 'dbbe27a6d588f27ee193', '', NULL, '糕友_13552280813', NULL, NULL, NULL),
(13, '13552280817', 'dbbe27a6d588f27ee193', '', NULL, '糕友_13552280817', NULL, NULL, NULL),
(14, '13552280894', 'dbbe27a6d588f27ee193f1943e6abed9', '', NULL, '糕友_13552280894', NULL, NULL, NULL),
(15, '13552280866', 'dbbe27a6d588f27ee193f1943e6abed9', '', NULL, '糕友_13552280866', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `video`
--

CREATE TABLE `video` (
  `vid` int(12) NOT NULL,
  `url` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `video`
--

INSERT INTO `video` (`vid`, `url`) VALUES
(1, 'http://cloud.video.taobao.com//play/u/2455221099/p/1/e/6/t/1/50071310842.mp4'),
(2, 'http://www.baidu.com'),
(3, 'http://www.qq.com');

--
-- 转储表的索引
--

--
-- 表的索引 `cakeseries`
--
ALTER TABLE `cakeseries`
  ADD PRIMARY KEY (`cakeseriesid`);

--
-- 表的索引 `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`cid`);

--
-- 表的索引 `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- 表的索引 `holiland_carousel_item`
--
ALTER TABLE `holiland_carousel_item`
  ADD PRIMARY KEY (`caid`);

--
-- 表的索引 `productcake`
--
ALTER TABLE `productcake`
  ADD PRIMARY KEY (`pid`);

--
-- 表的索引 `productwagashi`
--
ALTER TABLE `productwagashi`
  ADD PRIMARY KEY (`pid`);

--
-- 表的索引 `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`sid`);

--
-- 表的索引 `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serviceid`);

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- 表的索引 `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`vid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `cakeseries`
--
ALTER TABLE `cakeseries`
  MODIFY `cakeseriesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `carousel`
--
ALTER TABLE `carousel`
  MODIFY `cid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(128) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `productcake`
--
ALTER TABLE `productcake`
  MODIFY `pid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 使用表AUTO_INCREMENT `productwagashi`
--
ALTER TABLE `productwagashi`
  MODIFY `pid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- 使用表AUTO_INCREMENT `series`
--
ALTER TABLE `series`
  MODIFY `sid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `service`
--
ALTER TABLE `service`
  MODIFY `serviceid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- 使用表AUTO_INCREMENT `video`
--
ALTER TABLE `video`
  MODIFY `vid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
