-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 02, 2019 at 03:42 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `holiland`
--

-- --------------------------------------------------------

--
-- Table structure for table `cakeseries`
--

CREATE TABLE `cakeseries` (
  `cakeseriesid` int(11) NOT NULL,
  `cakeseriesimg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `cid` int(12) NOT NULL,
  `cimg` varchar(128) NOT NULL,
  `z-index` tinyint(3) NOT NULL,
  `url` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`cid`, `cimg`, `z-index`, `url`) VALUES
(1, 'http://www.holiland.com/data/afficheimg/1457047833194068991.jpg', 1, ''),
(2, 'http://www.holiland.com/data/afficheimg/1456986961694221493.jpg', 2, ''),
(3, 'http://www.holiland.com/data/afficheimg/1464247474728938268.jpg', 3, ''),
(4, 'http://www.holiland.com/data/afficheimg/1451241729614010049.jpg', 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
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
-- Table structure for table `footer2`
--

CREATE TABLE `footer2` (
  `footer2id` int(12) NOT NULL,
  `footer2title` varchar(128) NOT NULL,
  `footer2titileE` varchar(128) NOT NULL,
  `footer2img` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `holiland_carousel_item`
--

CREATE TABLE `holiland_carousel_item` (
  `caid` tinyint(4) NOT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `url` varchar(128) DEFAULT NULL,
  `title` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `holiland_navbar_item`
--

CREATE TABLE `holiland_navbar_item` (
  `btitle` varchar(10) DEFAULT NULL,
  `burl` varchar(128) DEFAULT NULL,
  `bztitle` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `holiland_navbar_item`
--

INSERT INTO `holiland_navbar_item` (`btitle`, `burl`, `bztitle`) VALUES
('All Produc', 'index.html', '全部产品'),
('Cake Serie', 'index.html', '蛋糕系列'),
('Wagashi', 'index.html', '零食糕点'),
('About Us', 'index.html', '关于我们');

-- --------------------------------------------------------

--
-- Table structure for table `holiland_site_info`
--

CREATE TABLE `holiland_site_info` (
  `site_name` varchar(32) DEFAULT NULL,
  `logo` varchar(128) DEFAULT NULL,
  `copyright` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productcake`
--

CREATE TABLE `productcake` (
  `pid` int(12) NOT NULL,
  `title` varchar(128) NOT NULL,
  `pservice` varchar(128) NOT NULL,
  `price` smallint(128) NOT NULL,
  `pattr` varchar(128) NOT NULL,
  `tableware` varchar(128) NOT NULL,
  `img_sm` varchar(128) NOT NULL,
  `img_md` varchar(128) NOT NULL,
  `img_lg` varchar(128) NOT NULL,
  `img_body` varchar(128) NOT NULL,
  `img_main` varchar(128) NOT NULL,
  `series` varchar(128) NOT NULL COMMENT '系列'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `productwagashi`
--

CREATE TABLE `productwagashi` (
  `pid` int(12) NOT NULL,
  `ptitle` varchar(128) NOT NULL,
  `pservice` varchar(128) NOT NULL,
  `price` smallint(128) NOT NULL,
  `pattr` varchar(128) NOT NULL COMMENT '规格',
  `img_sm` varchar(128) NOT NULL,
  `img_md` varchar(128) NOT NULL,
  `img_lg` varchar(128) NOT NULL,
  `img_body` varchar(128) NOT NULL,
  `img_main` varchar(128) NOT NULL COMMENT '商品列表图',
  `url` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `productwagashi`
--

INSERT INTO `productwagashi` (`pid`, `ptitle`, `pservice`, `price`, `pattr`, `img_sm`, `img_md`, `img_lg`, `img_body`, `img_main`, `url`) VALUES
(1, '海盐玫瑰小酥', '满150包邮顺丰发货', 29, '', 'http://www.holiland.com/data/anatomy/201904/1555528465226094161.jpg', '', '\'http://www.holiland.com/images/201904/goods_img/1117_P_1555527068627.jpg\',\'http://www.holiland.com/images/201904/goods_img/1117', '\r\n\'http://www.holiland.com/images/upload/images/20190418/1555555729653371.jpg\',\'http://www.holiland.com/images/upload/images/201', 'http://www.holiland.com/images/201904/goods_img/1117_G_1555527068773.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE `series` (
  `sid` int(12) NOT NULL,
  `stitle` varchar(128) NOT NULL,
  `simg` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`sid`, `stitle`, `simg`, `url`) VALUES
(1, '经典', 'xxx', 'xxxx');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `serviceid` int(12) NOT NULL,
  `servicetitle` varchar(128) NOT NULL,
  `servicetitleE` varchar(128) NOT NULL,
  `serviceimg` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
-- Dumping data for table `user`
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
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `vid` int(12) NOT NULL,
  `url` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`vid`, `url`) VALUES
(1, 'https://img.alicdn.com/imgextra/i2/2455221099/TB2ZMW8hHZnBKNjSZFGXXbt3FXa_!!2455221099.jpg'),
(2, 'http://www.baidu.com'),
(3, 'http://www.qq.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cakeseries`
--
ALTER TABLE `cakeseries`
  ADD PRIMARY KEY (`cakeseriesid`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `footer2`
--
ALTER TABLE `footer2`
  ADD PRIMARY KEY (`footer2id`);

--
-- Indexes for table `holiland_carousel_item`
--
ALTER TABLE `holiland_carousel_item`
  ADD PRIMARY KEY (`caid`);

--
-- Indexes for table `productcake`
--
ALTER TABLE `productcake`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `productwagashi`
--
ALTER TABLE `productwagashi`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`serviceid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cakeseries`
--
ALTER TABLE `cakeseries`
  MODIFY `cakeseriesid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `cid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(128) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `footer2`
--
ALTER TABLE `footer2`
  MODIFY `footer2id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productcake`
--
ALTER TABLE `productcake`
  MODIFY `pid` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productwagashi`
--
ALTER TABLE `productwagashi`
  MODIFY `pid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `sid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `serviceid` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` smallint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `vid` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
