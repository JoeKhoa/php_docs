-- phpMyAdmin SQL Dump
-- version 4.7.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 02, 2018 at 05:56 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php0505_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `date_order` date NOT NULL,
  `total` double NOT NULL,
  `promt_price` float NOT NULL DEFAULT '0',
  `payment_method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token_date` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0: chưa xác nhận, 1: đã xác nhận, 2:đã hoàn tất'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `id_customer`, `date_order`, `total`, `promt_price`, `payment_method`, `note`, `token`, `token_date`, `status`) VALUES
(3, 3, '2018-05-21', 47997000, 47817000, 'COD', 'ko co ', 'sdfghsdfddcsfref23456taedfv', '0000-00-00 00:00:00', 0),
(4, 4, '2018-05-21', 171877000, 171697000, 'nhận tại cửa hàng', 'dat hang luc 2h chieu ', 'sdfghsdfddcsfref23456taedfv', '2018-05-21 14:21:26', 0),
(5, 5, '2018-05-21', 171877000, 171697000, 'nhận tại cửa hàng', 'dat hang luc 2h chieu ', 'sdfghsdfddcsfref23456taedfv', '2018-05-21 19:22:42', 0),
(6, 6, '2018-05-23', 27998000, 27908000, 'COD', 'qwer4th', '48Y9dcSek5eMHQxKPNUwmA55AZyCqM', '2018-05-23 19:02:05', 0),
(7, 7, '2018-05-23', 27998000, 27908000, 'COD', 'qwer4th', 'rZV3ocr1dePzKNa6iYJyBMlNsWMT3U', '2018-05-23 19:05:43', 0),
(8, 8, '2018-05-23', 27998000, 27908000, 'COD', '2134567890iuhfgfdcz', 'X9ThlaZI9Rbs180NP1CpDHULEwBJ3M', '2018-05-23 19:14:37', 0),
(9, 9, '2018-05-23', 34790000, 32790000, 'COD', '2345654redscx', 'C1UgK61Opp5WtymI7kKWO6cOHyFSrN', '2018-05-23 19:19:15', 0),
(10, 10, '2018-05-25', 27998000, 27908000, 'COD', 'qưer', '', '0000-00-00 00:00:00', 1),
(11, 17, '2018-07-24', 229980000, 228990000, 'COD', '', 'BbTyz6fzDwijyRi4AKxxRR8oBbcP4bNCPTQUUNL8lbsqpHhvLw', '2018-07-24 19:25:03', 0),
(12, 18, '2018-07-24', 479929000, 478849000, 'COD', '', 'WWUFVVPR5OkfZqVyPw5rHGwQx8J60Itj6YQri0c0IKT07gnaR5', '2018-07-24 19:26:15', 0),
(13, 19, '2018-07-26', 49989000, 49809000, 'COD', '<p>sdsd</p>', NULL, '2018-07-26 19:00:00', 1),
(14, 20, '2018-07-26', 189965000, 189245000, 'COD', '<p>wed</p>', NULL, NULL, 1),
(15, 21, '2018-07-26', 299900000, 299000000, 'COD', '<p>qư</p>', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `id` int(11) NOT NULL,
  `id_bill` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `discount_price` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='chi_tiet_hoa_don' ROW_FORMAT=COMPACT;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `id_bill`, `id_product`, `quantity`, `price`, `discount_price`) VALUES
(7, 3, 7, 2, 39998000, NULL),
(8, 3, 10, 1, 7999000, NULL),
(9, 4, 7, 2, 39998000, NULL),
(10, 4, 10, 1, 7999000, NULL),
(11, 4, 61, 1, 31900000, NULL),
(12, 4, 62, 2, 91980000, NULL),
(13, 5, 7, 2, 39998000, NULL),
(14, 5, 10, 1, 7999000, NULL),
(15, 5, 61, 1, 31900000, NULL),
(16, 5, 62, 2, 91980000, NULL),
(17, 6, 7, 1, 19999000, NULL),
(18, 6, 10, 1, 7999000, NULL),
(19, 7, 7, 1, 19999000, NULL),
(20, 7, 10, 1, 7999000, NULL),
(21, 8, 7, 1, 19999000, NULL),
(22, 8, 10, 1, 7999000, NULL),
(23, 9, 1, 1, 34790000, NULL),
(24, 10, 7, 1, 19999000, NULL),
(25, 10, 10, 1, 7999000, NULL),
(26, 9, 1, 1, 34790000, NULL),
(27, 9, 1, 1, 34790000, NULL),
(28, 11, 7, 10, 199990000, 199090000),
(29, 11, 2, 1, 29990000, 29900000),
(30, 12, 7, 11, 219989000, 218999000),
(31, 12, 2, 1, 29990000, 29900000),
(32, 12, 62, 5, 229950000, 229950000),
(33, 13, 2, 1, 29990000, 29900000),
(34, 13, 7, 1, 19999000, 19909000),
(35, 14, 2, 3, 89970000, 89700000),
(36, 14, 7, 5, 99995000, 99545000),
(37, 15, 2, 10, 299900000, 299000000);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id_url` int(11) DEFAULT NULL,
  `icon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `id_url`, `icon`) VALUES
(5, 'Apple Watch', 4, 'fa-clock-o'),
(6, 'Phụ kiện', 5, 'fa-headphones'),
(7, 'iPhone X', 6, 'fa-mobile'),
(8, 'iPhone 8|8Plus', 7, 'fa-mobile'),
(9, 'iPhone 7|7Plus', 8, 'fa-mobile'),
(10, 'iPhone 6|6Plus', 9, 'fa-mobile'),
(11, 'iPad Pro', 10, 'fa-tablet'),
(12, 'iPad (New) 2017', 11, 'fa-tablet'),
(13, 'iPad mini 4', 12, 'fa-tablet'),
(14, 'Macbook 12 inch', 14, 'fa-laptop'),
(15, 'Macbook Air', 15, 'fa-laptop'),
(16, 'Macbook Pro Retina', 16, 'fa-laptop'),
(17, 'iMAC', 17, 'fa-inbox'),
(18, 'MacPro', 18, 'fa-inbox'),
(19, 'Mac mini', 19, 'fa-inbox');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `gender`, `email`, `address`, `phone`) VALUES
(2, '234', '2345', 'qwer', 'we', ''),
(3, 'Huong Hương', 'Nam', 'huongnguyenak96@gmail.com', 'Quận 1', '1632967751'),
(4, 'Hương Hương  Ngoc', 'Nữ', 'huongnguyenak962345@gmail.com', 'Quận 1', '1632967751'),
(5, 'Hương Hương  Ngoc', 'Nữ', 'huongnguyenak962345@gmail.com', 'Quận 1', '1632967751'),
(6, 'Huong Hương', 'Nam', 'huongnguyen08.cv@gmail.com', 'Quận 1', '1632967751'),
(7, 'Huong Hương', 'Nam', 'huongnguyen08.cv@gmail.com', 'Quận 1', '1632967751'),
(8, 'Huong Hương', 'Nam', 'huongnguyen08.cv@gmail.com', 'Quận 1', '1632967751'),
(9, 'Ngoc Huong', 'Nam', 'huongnguyen08@gmail.com', 'Quận 1', '1632967751'),
(10, 'Ngoc Huong', 'Nam', 'huongnguyen08.cv@gmail.com', 'Quận 1', '1632967751'),
(11, 'Ngoc Huong', 'nam', 'huongnguyenak96@gmail.com', 'Quận 1', '1632967751'),
(12, 'Ngoc Huong', 'nam', 'huongnguyenak96@gmail.com', 'Quận 1', '1632967751'),
(13, 'Ngoc Huong', 'nam', 'huongnguyenak96@gmail.com', 'Quận 1', '1632967751'),
(14, 'Ngoc Huong', 'nam', 'huongnguyenak96@gmail.com', 'Quận 1', '1632967751'),
(15, 'Ngoc Huong', 'nam', 'huongnguyenak96@gmail.com', 'Quận 1', '1632967751'),
(16, 'Ngoc Huong', 'nam', 'huongnguyenak96@gmail.com', 'Quận 1', '1632967751'),
(17, 'Ngoc Huong', 'nam', 'huongnguyenak96@gmail.com', 'Quận 1', '1632967751'),
(18, 'Ngoc Huong', 'nam', 'huongnguyenak96@gmail.com', 'Quận 1', '1632967751'),
(19, 'Ngoc Huong', 'nam', 'huongnguyen08.cv@gmail.com', 'Quận 1', '1632967751'),
(20, 'Ngoc Huong', 'nam', 'huongnguyen08.cv@gmail.com', 'Quận 1', '1632967751'),
(21, 'Ngoc Huong', 'nam', 'huongnguyen08.cv@gmail.com', 'Quận 1', '1632967751');

-- --------------------------------------------------------

--
-- Table structure for table `page_url`
--

CREATE TABLE `page_url` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `page_url`
--

INSERT INTO `page_url` (`id`, `url`) VALUES
(54, 'apple-cap-apple-cap-ket-noi-30-pin-to-usb-cable'),
(50, 'apple-cap-chuyen-doi-lightning-to-35mm'),
(57, 'apple-cap-hdmi-to-hdmi-cable-18m'),
(61, 'apple-cap-ket-noi-apple-lightning-to-30-pin-adapter'),
(53, 'apple-cap-ket-noi-lightning-to-usb-cable'),
(56, 'apple-cap-lightning-to-usb-cable-(2m)'),
(64, 'apple-cap-lightning-to-usb-camera-adapter'),
(65, 'apple-cap-mini-displayport-to-vga-adapter'),
(66, 'apple-cap-thunderbolt-to-gigabit-ethernet-adapter'),
(58, 'apple-cap-usb-c-charge-cable-(2m)'),
(63, 'apple-cap-usb-c-to-usb'),
(76, 'apple-op-lung-iphone-66s-leather-red'),
(77, 'apple-op-lung-iphone-66s-plus-leather-midnight-blue'),
(79, 'apple-op-lung-iphone-7-plus8-plus-silicon-cocoa'),
(78, 'apple-op-lung-iphone-7-plus8-plus-silicon-pink-sand'),
(68, 'apple-op-lung-iphone-78-silicon-cocoa'),
(69, 'apple-op-lung-iphone-78-silicon-pink-sand'),
(71, 'apple-op-lung-iphone-78-silicon-red'),
(70, 'apple-op-lung-iphone-78-silicon-sea-blue'),
(72, 'apple-op-lung-iphone-87--silicon-rose-red'),
(73, 'apple-op-lung-iphone-87--silicon-white'),
(55, 'apple-sac-12w-usb-power-adapter'),
(51, 'apple-sac-magsafe-to-magsafe-2-converter'),
(52, 'apple-sac-nguon-5w-usb-power-adapter'),
(60, 'apple-tai-nghe-earpods-with-lightning-connection'),
(62, 'apple-tai-nghe-earpods-with-remote-and-mic'),
(4, 'apple-watch'),
(45, 'apple-watch-series-1-38mm,-vien-nhom,-day-mau-trang'),
(46, 'apple-watch-series-1-42mm,-vien-nhom,-day-mau-den'),
(48, 'apple-watch-series-3-gps-38mm,-vien-nhom,-day-mau-hong'),
(47, 'apple-watch-series-3-gps-38mm,-vien-nhom,-day-mau-trang-xam'),
(49, 'apple-watch-series-3-gps-42mm,-vien-nhom,-day-mau-den'),
(17, 'imac'),
(80, 'imac-2017-4k-retina-display-215-inch---mndy2---core-i5-30ghz-8gb-hdd-1tb'),
(82, 'imac-2017-4k-retina-display-215-inch---mne02---core-i5-34ghz-8gb-hdd-1tb'),
(81, 'imac-2017-5k-retina-display-27inch---mne92---core-i5-34ghz-8gb-fusion-drive-1tb'),
(83, 'imac-2017-5k-retina-display-27inch---mned2---core-i5-38ghz-8gb-fusion-drive-2tb'),
(85, 'imac-215-inch-2017---mmqa2---core-i5-23ghz-8gb-hdd-1tb'),
(13, 'imac-mac-pro'),
(87, 'imac-mk482-(retina-5k,-27-inch,-late-2015)---core-i5--33ghz-fursion-drive'),
(90, 'imac-pro-–-mq2y2-(8core32g1tbvega-56)-–-new'),
(93, 'imac-pro-–-mq2y2-option-(10core128gb2tbvega-64)-like-new-99%'),
(95, 'imac-pro-–-mq2y2-option-(14core64g2tbvega-64)'),
(12, 'ipad-mini-4'),
(44, 'ipad-mini-4-wi-fi-4g-128gb'),
(11, 'ipad-new-2017'),
(10, 'ipad-pro'),
(34, 'ipad-pro-105-wi-fi-256gb-(2017)'),
(32, 'ipad-pro-105-wi-fi-4g-256gb-(2017)'),
(39, 'ipad-pro-105-wi-fi-4g-512gb-(2017)'),
(31, 'ipad-pro-105-wi-fi-4g-64gb-(2017)'),
(30, 'ipad-pro-105-wi-fi-64gb-(2017)'),
(35, 'ipad-pro-129--wi-fi-64gb-(2017)'),
(37, 'ipad-pro-129-wi-fi-256gb-(2017)'),
(38, 'ipad-pro-129-wi-fi-4g-256gb-(2017)'),
(33, 'ipad-pro-129-wi-fi-4g-512gb-(2017)'),
(36, 'ipad-pro-129-wi-fi-4g-64gb-(2017)'),
(41, 'ipad-wi-fi-128gb-(2017)'),
(40, 'ipad-wi-fi-32gb-(2017)'),
(43, 'ipad-wi-fi-4g-128gb-(2017)'),
(42, 'ipad-wi-fi-4g-32gb-(2017)'),
(29, 'iphone-6-32gb-(2017)'),
(9, 'iphone-6-6plus'),
(28, 'iphone-6s-plus-32gb'),
(27, 'iphone-7-32gb'),
(8, 'iphone-7-7plus'),
(26, 'iphone-7-plus-32gb'),
(23, 'iphone-8-256gb'),
(25, 'iphone-8-64gb'),
(7, 'iphone-8-8plus'),
(22, 'iphone-8-plus-256gb'),
(24, 'iphone-8-plus-64gb'),
(6, 'iphone-x'),
(20, 'iphone-x-256gb'),
(21, 'iphone-x-64gb'),
(19, 'mac-mini'),
(97, 'mac-mini-2014-core-i5-26ghz-8gb-1tb-new-99%'),
(18, 'mac-pro'),
(88, 'mac-pro-md878----6-core--dual-gpu-d700-12gb-new-99%--used'),
(91, 'mac-pro-me253----quad-core--256gb--dual-gpu-d300--new-99%--used'),
(14, 'macbook-12-inch'),
(99, 'macbook-12-inch-2017-core-i5-8gb-512gb-(nhieu-mau)'),
(100, 'macbook-12-inch-2017-core-m3-8gb-256gb-(-nhieu-mau-)'),
(15, 'macbook-air'),
(102, 'macbook-air-2015--116-inch-mjvp2--max-option'),
(103, 'macbook-air-mjvm2-(116-inch,-early-2015)---core-i5--ram-4gb--ssd-128gb'),
(104, 'macbook-air-mqd32-(133-inch,-2017)---core-i5--ram-8gb--ssd-128gb'),
(105, 'macbook-air-mqd32-(133-inch,-2017)---core-i5--ram-8gb--ssd-128gb-new-99%'),
(106, 'macbook-air-mqd42-(133-inch,-2017)---core-i5--ram-8gb--ssd-256gb'),
(107, 'macbook-pro-133-2017-mpxq2-(core-i5--8gb--128gb)-(gray-space-)'),
(108, 'macbook-pro-133-2017-mpxt2-(core-i5--8gb--256gb)-new-100%'),
(16, 'macbook-pro-retina'),
(109, 'macbook-pro-retina-mjlq2-(154-inch,-mid-2015)---core-i7--ram-16gb--ssd-256gb'),
(110, 'mlh12-macbook-2016-touchbar-13-inch-16gb-256gb-touchbar-likenew-99%'),
(111, 'mnqf2-macbook-2016-touchbar-13-inch-16gb-used-new-97%'),
(112, 'mnqf2-macbook-2016-touchbar-13-inch-i5-16gb-512gb-ssd-touchbar'),
(113, 'mnqg2---macbook-pro-retina-2016-13inch-512gb-touch-bar-(silver)--new-99%'),
(114, 'mptr2---macbook-pro-2017-15-inch-ssd-256gb-touchbar-(-space-gray)'),
(115, 'mptt2---macbook-pro-2017-15-inch-quad-i7-31ghz-1tb-ssd-option-(space-gray)'),
(116, 'mptt2---macbook-pro-2017-15-inch-ssd-512gb-touchbar-(-space-gray)'),
(117, 'mptu2---macbook-pro-2017-15-inch-ssd-256gb-touchbar-(sliver)'),
(118, 'mptv2---macbook-pro-2017-15-inch-ssd-512gb-touchbar-(-silver-)'),
(119, 'mpxv2--macbook-pro-retina-2017-13-inch-256gb-touchbar-(-gray-space-)'),
(120, 'mpxw2---macbook-pro-retina-2017-13inch-ssd-512gb-touchbar-(gray-space-)'),
(121, 'mpxx2---macbook-pro-retina-2017-13inch-ssd-256gb-touchbar-(-silver-)'),
(122, 'mpxy2---macbook-pro-retina-2017-13inch-ssd-512gb-touchbar-(-silver-)'),
(5, 'phu-kien'),
(59, 'pknk-cap-ket-noi-lightning-to-usb-c-mk0x2zaa'),
(74, 'pknk-op-lung-iphone-87--silicon-dark-olive-mr3n2fea'),
(75, 'pknk-op-lung-iphone-87--silicon-ultra-violet-mqgr2fea'),
(101, 'the-new-macbook-2016---mmgm2---12--core-m5--ram-8gb--ssd-512gb-(rose-gold)');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  `id_url` int(11) DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `promotion_price` float NOT NULL DEFAULT '0',
  `promotion` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'khuyen mai kem theo',
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: sp bình thường, 1: sp đặc biệt',
  `new` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: old, 1:new',
  `update_at` date NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: chua xoa, 1: da xoa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_type`, `id_url`, `name`, `detail`, `price`, `promotion_price`, `promotion`, `image`, `status`, `new`, `update_at`, `deleted`) VALUES
(1, 7, 20, 'iPhone X 256GB', 'Màn Hình: 5.8 inchs OLED\n        Camera: 7.0 MP/ Dual 12.0 MP\n        Pin: 2716 mAh, Li-Ion battery\n        Ram: 3 GB\n        CPU: Apple A11 Bionic\n        HĐH: iOS 11', 34790000, 32790000, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Giảm ngay 1,000,000đMua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không q', 'iphone-x-256gb.png', 0, 0, '2018-04-03', 0),
(2, 7, 21, 'iPhone X 64GB', 'Màn Hình: 5.8 inchs OLED\n        Camera: 7.0 MP/ Dual 12.0 MP\n        Pin: 2716 mAh, Li-Ion battery\n        Ram: 3 GB\n        CPU: Apple A11 Bionic\n        HĐH: iOS 11', 29990000, 29900000, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Giảm ngay 1,000,000đMua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không q', 'iphone-x-64gb.png', 1, 1, '2018-04-02', 0),
(3, 8, 22, 'iPhone 8 Plus 256GB', 'Màn Hình: 5.5 inchs HD Retina\n	Camera: 7.0 MP/ Dual 12.0 MP\n	Pin: 2675 mAh\n	Ram: 3 GB\n	CPU:Apple A11 Bionic\n	HĐH: iOS 11', 28790000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Giảm ngay 1,000,000đMua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không q', 'iphone-8-plus-256gb.png', 0, 0, '2018-02-16', 0),
(4, 8, 23, 'iPhone 8 256GB', 'Màn Hình: 4.7 inch\n	Camera: 12.0 MP/ 7.0 MP\n	Pin: 1821 mAh\n	Ram: 2 GB\n	CPU: Apple A11 Bionic\n	HĐH: iOS 11', 25790000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Giảm ngay 1,000,000đMua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không q', 'iphone-8-256gb.png', 0, 0, '2018-02-16', 0),
(5, 8, 24, 'iPhone 8 Plus 64GB', 'Màn Hình: 5.5 inchs HD Retina\n	Camera: 7.0 MP/ Dual 12.0 MP\n	Pin: 2675 mAh\n	Ram: 3 GB\n	CPU : Apple A11 Bionic\n	HĐH: iOS 11', 23990000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'iphone-8-plus-64gb.png', 0, 0, '2018-02-16', 0),
(6, 8, 25, 'iPhone 8 64GB', 'Màn Hình: 4.7 inchs \n	Camera: 12.0 MP/ 7.0 MP\n	Pin: 1821 mAh\n	Ram: 2 GB\n	CPU: Apple A11 Bionic\n	HĐH: iOS 11', 20990000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'iphone-8-64gb.png', 0, 0, '2018-02-16', 0),
(7, 9, 26, 'iPhone 7 Plus 32GB', 'Màn Hình: 5.5 inch (1920 x 1080 pixels)\n	Camera: Chính: Dual Camera 12.0MP; Phụ: 7.0MP\n	Pin:  Li-Ion 11.1 Wh (2900 mAh)\n	Ram: 3 GB\n	CPU : Apple A10, 4 Nhân, Quad-core 2.3 GHz\n	HĐH: iOS', 19999000, 19909000, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'iphone-7-plus-32gb.png', 1, 1, '2018-02-16', 0),
(8, 9, 27, 'iPhone 7 32GB', 'Màn Hình: 4.7 inch(1334 x 750 pixel)\n	Camera: Chính: 12.0 MP, Phụ: 7.0 MP\n	Pin:  Li-Ion 7.45 Wh (1960 mAh)\n	Ram: 2 GB\n	CPU : Apple A10, 4 Nhân, 2.3 Ghz\n	HĐH: iOS 10', 15999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'iphone-7-32gb.png', 0, 0, '2018-02-16', 0),
(9, 10, 28, 'iPhone 6s Plus 32GB', 'Màn Hình:  5.5 inch, 1080 x 1920 pixels\n	Camera: 12.0 MP/ 5.0MP\n	Pin:  lithium-ion battery 2750mAh\n	Ram: 2 GB\n	CPU : Apple A9, 2 Nhân, Dual-core 1.8 GHz\n	HĐH: iOS 10', 13999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Giảm ngay 1,000,000đMua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không q', 'iphone-6s-plus-32gb.png', 0, 0, '2018-02-16', 0),
(10, 10, 29, 'iPhone 6 32GB (2017)', 'Màn Hình:  4.7 inch (1334 x 750 pixels)\n	Camera: Chính: 8.0 MP, Phụ: 1.2 MP\n	Pin: Lithium - Ion 1810mAh\n	Ram: 1GB \n	CPU : Apple A8 2 nhân 64-bit, 2 Nhân, 1.4 GHz\n	HĐH: iOS', 7999000, 0, 'GÍA ĐẶC BIỆT ĐẾN 15.04 : 6,999,000đ\n\nMua combo (iPhone - Apple Watch) giảm thêm 1,000,000đ\nHOẶC MUA VỚI GIÁ THƯỜNG: 7,999,000đ\n\nTrả góp 0%\n	Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đ', 'iphone-6-32gb-(2017).png', 1, 0, '2018-02-16', 0),
(11, 11, 30, 'iPad Pro 10.5 WI-FI 64GB (2017)', 'Màn Hình : Retina display, , 10.5 inch(1668 x 2224 pixels)\n	Camera : 12.0 MP, /7.0 MP\n	Pin : 30.4 W/h Lithium - Polymer\n	Ram : 4 GB\n	Kết Nối : Wi-Fi\n	HĐH : iOS', 16999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Tặng Office 365 PersonalKM2:Tặng Office 365 PersonalGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm n', 'ipad-pro-105-wi-fi-64gb-(2017).png', 0, 0, '2018-02-16', 0),
(12, 11, 31, 'iPad Pro 10.5 WI-FI 4G 64GB (2017)', 'Màn Hình : Retina display, , 10.5 inch(1668 x 2224 pixels)\n	Camera : 12.0 MP, /7.0 MP\n	Pin : 30.4 W/h Lithium - Polymer\n	Ram : 4 GB\n	Kết Nối : Wi-Fi (802.11a/b/g/n/ac), , Có, , Có\n	HĐH : iOS', 19999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Tặng Office 365 PersonalKM2:Tặng Office 365 PersonalGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm n', 'ipad-pro-105-wi-fi-4g-64gb-(2017).png', 0, 0, '2018-02-16', 0),
(13, 11, 32, 'iPad Pro 10.5 WI-FI 4G 256GB (2017)', 'Màn Hình : Retina display, , 10.5 inch(1668 x 2224 pixels)\n	Camera : 12.0 MP, /7.0 MP\n	Pin : 30.4 W/h Lithium - Polymer\n	Ram : 4 GB\n	Kết Nối : Wi-Fi (802.11a/b/g/n/ac), , Có, , Có\n	HĐH : iOS', 23999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Tặng Office 365 PersonalKM2:Tặng Office 365 PersonalGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm n', 'ipad-pro-105-wi-fi-4g-256gb-(2017).png', 0, 0, '2018-02-16', 0),
(14, 11, 33, 'iPad Pro 12.9 WI-FI 4G 512GB (2017)', 'Màn Hình : Retina display, , 12.9 inch(2732 x 2048 pixels)\n	Camera : 12.0 MP, /7.0 MP\n	Pin : 41 W/h Lithium - Polymer\n	Ram : 4 GB\n	Kết Nối : Wi-Fi (802.11a/b/g/n/ac), , Có, , Có\n	HĐH : iOS', 32999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Tặng Office 365 PersonalKM2:Tặng Office 365 PersonalGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm n', 'ipad-pro-129-wi-fi-4g-512gb-(2017).png', 0, 0, '2018-02-16', 0),
(15, 11, 34, 'iPad Pro 10.5 WI-FI 256GB (2017)', 'Màn Hình : Retina display, , 10.5 inch(1668 x 2224 pixels)\n	Camera : 12.0 MP, /7.0 MP\n	Pin : 30.4 W/h Lithium - Polymer\n	Ram : 4 GB\n	Kết Nối : Không\n	HĐH : iOS', 20999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Tặng Office 365 PersonalKM2:Tặng Office 365 PersonalGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm n', 'ipad-pro-105-wi-fi-256gb-(2017).png', 0, 0, '2018-02-16', 0),
(16, 11, 35, 'iPad Pro 12.9  WI-FI 64GB (2017)', 'Màn Hình : Retina display, , 12.9 inch(2732 x 2048 pixels)\n	Camera : 12.0 MP, /7.0 MP\n	Pin : 41 W/h Lithium - Polymer\n	Ram : 4 GB\n	Kết Nối : Không\n	HĐH : iOS', 20999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Tặng Office 365 PersonalKM2:Tặng Office 365 PersonalGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm n', 'ipad-pro-129--wi-fi-64gb-(2017).png', 0, 0, '2018-02-16', 0),
(17, 11, 36, 'iPad Pro 12.9 WI-FI 4G 64GB (2017)', 'Màn Hình : Retina display, , 12.9 inch(2732 x 2048 pixels)\n	Camera : 12.0 MP, /7.0 MP\n	Pin : 41 W/h Lithium - Polymer\n	Ram : 4 GB\n	Kết Nối : Wi-Fi (802.11a/b/g/n/ac), , Có, , Có\n	HĐH : iOS', 23999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Tặng Office 365 PersonalKM2:Tặng Office 365 PersonalGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm n', 'ipad-pro-129-wi-fi-4g-64gb-(2017).png', 0, 0, '2018-02-16', 0),
(18, 11, 37, 'iPad Pro 12.9 WI-FI 256GB (2017)', 'Màn Hình : Retina display, , 12.9 inch(2732 x 2048 pixels)\n	Camera : 12.0 MP, /7.0 MP\n	Pin : 41 W/h Lithium - Polymer\n	Ram : 4 GB\n	Kết Nối : Không\n	HĐH : iOS', 24999000, 24699000, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Tặng Office 365 PersonalKM2:Tặng Office 365 PersonalGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm n', 'ipad-pro-129-wi-fi-256gb-(2017).png', 1, 0, '2018-02-16', 0),
(19, 11, 38, 'iPad Pro 12.9 WI-FI 4G 256GB (2017)', 'Màn Hình : Retina display, , 12.9 inch(2732 x 2048 pixels)\n	Camera : 12.0 MP, /7.0 MP\n	Pin : 41 W/h Lithium - Polymer\n	Ram : 4 GB\n	Kết Nối : Wi-Fi (802.11a/b/g/n/ac), , Có, , Có\n	HĐH : iOS', 27999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Tặng Office 365 PersonalKM2:Tặng Office 365 PersonalGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm n', 'ipad-pro-129-wi-fi-4g-256gb-(2017).png', 1, 1, '2018-02-16', 0),
(20, 11, 39, 'iPad Pro 10.5 WI-FI 4G 512GB (2017)', 'Màn Hình : Retina display, , 10.5 inch(1668 x 2224 pixels)\n	Camera : 12.0 MP, /7.0 MP\n	Pin : 30.4 W/h Lithium - Polymer\n	Ram : 4 GB\n	Kết Nối : Wi-Fi (802.11a/b/g/n/ac), , Có, , Có\n	HĐH : iOS', 28999000, 28399000, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Tặng Office 365 PersonalKM2:Tặng Office 365 PersonalGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm n', 'ipad-pro-105-wi-fi-4g-512gb-(2017).png', 0, 0, '2018-02-16', 0),
(21, 12, 40, 'iPad Wi-Fi 32GB (2017)', 'Màn Hình : Retina display, , 9.7 inch(2048 x 1536 pixels)\n	Camera : 8.0 MP, /1.2 MP\n	Pin : 32.4 Wh Lithium - Ion\n	Ram : 2 GB\n	Kết Nối : Không\n	HĐH : iOS', 8999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%KM2:Giảm ngay 500,000đGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm ngay 2% và không quá 300,000đ k', 'ipad-wi-fi-32gb-(2017).png', 0, 0, '2018-02-16', 0),
(22, 12, 41, 'iPad Wi-Fi 128GB (2017)', 'Màn Hình : Retina display, , 9.7 inch(2048 x 1536 pixels)\n	Camera : 8.0 MP, /1.2 MP\n	Pin : 32.4 Wh Lithium - Ion\n	Ram : 2GB \n	Kết Nối : Không\n	HĐH : iOS', 10999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%KM2:Giảm ngay 500,000đGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm ngay 2% và không quá 300,000đ k', 'ipad-wi-fi-128gb-(2017).png', 0, 0, '2018-02-16', 0),
(23, 12, 42, 'iPad Wi-Fi 4G 32GB (2017)', 'Màn Hình : Retina display, , 9.7 inch(2048 x 1536 pixels)\n	Camera : 8.0 MP, /1.2 MP\n	Pin : 32.4 Wh Lithium - Ion\n	Ram : 2 GB\n	Kết Nối : Wi‑Fi,3G,4G\n	HĐH : iOS', 12999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%KM2:Giảm ngay 500,000đGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm ngay 2% và không quá 300,000đ k', 'ipad-wi-fi-4g-32gb-(2017).png', 0, 0, '2018-02-16', 0),
(24, 12, 43, 'iPad Wi-Fi 4G 128GB (2017)', 'Màn Hình : Retina display, , 9.7 inch(2048 x 1536 pixels)\n	Camera : 8.0 MP, /1.2 MP\n	Pin : 32.4 Wh Lithium - Ion\n	Ram : 2 GB\n	Kết Nối : Wi‑Fi (802.11a/b/g/n/ac); dual band (2.4GHz and 5GHz); HT80 with MIMO, , UMTS/HSPA/HSPA+/​DC‑HSDPA (850, 900, 1700/2100, 1900, 2100 MHz); GSM/EDGE (850, 900, 1800, 1900 MHz), , LTE (Bands 1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 25, 26, 28, 29, 38, 39, 40, 41)\n	HĐH : iOS', 14999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%KM2:Giảm ngay 500,000đGiảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm ngay 2% và không quá 300,000đ k', 'ipad-wi-fi-4g-128gb-(2017).png', 0, 0, '2018-02-16', 0),
(25, 13, 44, 'iPad Mini 4 Wi-Fi 4G 128GB', 'Màn Hình : Rentina, , 7.9 inch(2048 x 1536 pixels)\n	Camera : 8.0 MP, /1.2 MP\n	Pin : 19.1Whr Li-Po\n	Ram : 2GB DDR3\n	Kết Nối : Wi‑Fi 802.11a/​b/​g/​n/​ac, , HSDPA 850/ 900/ 1700/ 1900/ 2100 MHz, , LTE\n	HĐH :', 13999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%KM2:Giảm ngay 4% và không quá 600,000đ khi Trả góp qua Thẻ tín dụng HSBC (áp dụng 3 ngày cuối tuần)Giảm ngay 2% và không quá 300,000đ khi Trả góp qua Thẻ', 'ipad-mini-4-wi-fi-4g-128gb.png', 0, 0, '2018-02-16', 0),
(26, 5, 45, 'Apple Watch Series 1 38mm, viền nhôm, dây màu trắng', 'Dòng máy tương thích : iPhone\n	Hiển thị màn hình : OLED Retina display with Force Touch (450 nits)\n	Xử lý/ Bộ nhớ : S1P dual-core\n	Dung lượng Pin/Thời gian sử dụng : Lên đến 18h\n	Thông báo : Tin nhắn, cuộc gọi,...', 7999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'apple-watch-series-1-38mm,-vien-nhom,-day-mau-trang.png', 0, 0, '2018-02-16', 0),
(27, 5, 46, 'Apple Watch Series 1 42mm, viền nhôm, dây màu đen', 'Dòng máy tương thích : iPhone\n	Hiển thị màn hình : OLED Retina display with Force Touch (450 nits)\n	Xử lý/ Bộ nhớ : S1P dual-core\n	Dung lượng Pin/Thời gian sử dụng : Lên đến 18h\n	Thông báo : Tin nhắn, cuộc gọi,...', 8999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'apple-watch-series-1-42mm,-vien-nhom,-day-mau-den.png', 0, 0, '2018-02-16', 0),
(28, 5, 47, 'Apple Watch Series 3 GPS 38mm, viền nhôm, dây màu trắng xám', 'Dòng máy tương thích : iPhone\n	Hiển thị màn hình : OLED Retina display with Force Touch\n	Xử lý/ Bộ nhớ : W2 chip\n	Dung lượng Pin/Thời gian sử dụng : Lên đến 18h\n	Thông báo : Tin nhắn, cuộc gọi,..\n ', 9999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'apple-watch-series-3-gps-38mm,-vien-nhom,-day-mau-trang-xam.png', 0, 0, '2018-02-16', 0),
(29, 5, 48, 'Apple Watch Series 3 GPS 38mm, viền nhôm, dây màu hồng', 'Dòng máy tương thích : iPhone\n	Hiển thị màn hình : OLED Retina display with Force Touch\n	Xử lý/ Bộ nhớ : W2 chip\n	Dung lượng Pin/Thời gian sử dụng : Lên đến 18h\n	Thông báo : Tin nhắn, cuộc gọi,..', 9999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'apple-watch-series-3-gps-38mm,-vien-nhom,-day-mau-hong.png', 0, 0, '2018-02-16', 0),
(30, 6, 49, 'Apple Watch Series 3 GPS 42mm, viền nhôm, dây màu đen', 'Bộ nhớ: 8 GB\n	RAM: 768 MB\n	Màn hình: AMOLED\n	Đồ họa: PowerVR\n	Hệ điều hành: watchOS\n	Giao tiếp mạng: Wi-Fi 802.11 b/g/n, Bluetooth 4.2\n	Dung lượng pin: Li-Ion 279 mAh\n	Khối lượng: 32.3 g', 10999000, 0, 'Khách hàng chọn 1 trong 2 KM sau:KM1:Trả góp 0%Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đKM2:Mua combo (iPhone - Apple Watch) giảm thêm 1,000,000đGiảm ngay 4% và không quá 600,000đ khi Trả ', 'apple-watch-series-3-gps-42mm,-vien-nhom,-day-mau-den.png', 0, 0, '2018-02-16', 0),
(31, 6, 50, 'Apple Cáp chuyển đổi Lightning to 3.5mm', '', 299000, 0, '', 'apple-cap-chuyen-doi-lightning-to-35mm.png', 0, 0, '2018-02-16', 0),
(32, 6, 51, 'Apple Sạc Magsafe to Magsafe 2 Converter', '', 349000, 0, '', 'apple-sac-magsafe-to-magsafe-2-converter.png', 0, 0, '2018-02-16', 0),
(33, 6, 52, 'Apple Sạc nguồn 5W USB Power Adapter', '', 499000, 0, '', 'apple-sac-nguon-5w-usb-power-adapter.png', 0, 0, '2018-02-16', 0),
(34, 6, 53, 'Apple Cáp kết nối Lightning to USB Cable', '', 499000, 0, '', 'apple-cap-ket-noi-lightning-to-usb-cable.png', 0, 0, '2018-02-16', 0),
(35, 6, 54, 'Apple Cáp Apple Cáp kết nối 30-pin to USB Cable', '', 599000, 0, '', 'apple-cap-apple-cap-ket-noi-30-pin-to-usb-cable.png', 0, 0, '2018-02-16', 0),
(36, 6, 55, 'Apple Sạc 12W Usb Power Adapter', '', 599000, 0, '', 'apple-sac-12w-usb-power-adapter.png', 0, 0, '2018-02-16', 0),
(37, 6, 56, 'Apple Cáp Lightning to USB Cable (2m)', '', 699000, 0, '', 'apple-cap-lightning-to-usb-cable-(2m).png', 0, 0, '2018-02-16', 0),
(38, 6, 57, 'Apple Cáp HDMI to HDMI cable 1.8M', '', 699000, 0, '', 'apple-cap-hdmi-to-hdmi-cable-18m.png', 0, 0, '2018-02-16', 0),
(39, 6, 58, 'Apple Cáp USB-C Charge Cable (2m)', '', 699000, 0, '', 'apple-cap-usb-c-charge-cable-(2m).png', 0, 0, '2018-02-16', 0),
(40, 6, 59, 'PKNK Cáp kết nối Lightning to USB-C MK0X2ZA/A', '', 799000, 0, '', 'pknk-cap-ket-noi-lightning-to-usb-c-mk0x2zaa.png', 0, 0, '2018-02-16', 0),
(41, 6, 60, 'Apple Tai nghe Earpods with Lightning Connection', '', 799000, 0, '', 'apple-tai-nghe-earpods-with-lightning-connection.png', 0, 0, '2018-02-16', 0),
(42, 6, 61, 'Apple Cáp kết nối Apple Lightning to 30-pin Adapter', '', 799000, 0, '', 'apple-cap-ket-noi-apple-lightning-to-30-pin-adapter.png', 0, 0, '2018-02-16', 0),
(43, 6, 62, 'Apple Tai nghe Earpods with Remote and Mic', '', 799000, 0, '', 'apple-tai-nghe-earpods-with-remote-and-mic.png', 0, 0, '2018-02-16', 0),
(44, 6, 63, 'Apple Cáp USB-C to USB', '', 799000, 0, '', 'apple-cap-usb-c-to-usb.png', 0, 0, '2018-02-16', 0),
(45, 6, 64, 'Apple Cáp Lightning to USB Camera Adapter', '', 899000, 0, '', 'apple-cap-lightning-to-usb-camera-adapter.png', 0, 0, '2018-02-16', 0),
(46, 6, 65, 'Apple Cáp Mini DisplayPort to VGA Adapter', '', 999000, 0, '', 'apple-cap-mini-displayport-to-vga-adapter.png', 0, 0, '2018-02-16', 0),
(47, 6, 66, 'Apple Cáp Thunderbolt to Gigabit Ethernet Adapter', '', 999000, 0, '', 'apple-cap-thunderbolt-to-gigabit-ethernet-adapter.png', 0, 0, '2018-02-16', 0),
(48, 6, 47, 'Apple Cáp kết nối Apple Lightning to 30-pin Adapter', '', 999000, 0, '', 'apple-cap-ket-noi-apple-lightning-to-30-pin-adapter.png', 0, 0, '2018-02-16', 0),
(49, 6, 68, 'Apple Ốp lưng iPhone 7/8 Silicon Cocoa', '', 999000, 988000, '', 'apple-op-lung-iphone-78-silicon-cocoa.png', 0, 0, '2018-02-16', 0),
(50, 6, 69, 'Apple Ốp lưng iPhone 7/8 Silicon Pink Sand', '', 999000, 989000, '', 'apple-op-lung-iphone-78-silicon-pink-sand.png', 0, 0, '2018-02-16', 0),
(51, 6, 70, 'Apple Ốp lưng iPhone 7/8 Silicon Sea Blue', '', 999000, 989000, '', 'apple-op-lung-iphone-78-silicon-sea-blue.png', 0, 0, '2018-02-16', 0),
(52, 6, 71, 'Apple Ốp lưng iPhone 7/8 Silicon Red', '', 999000, 0, '', 'apple-op-lung-iphone-78-silicon-red.png', 0, 0, '2018-02-16', 0),
(53, 6, 72, 'Apple Ốp lưng iPhone 8/7  Silicon Rose Red', '', 999000, 0, '', 'apple-op-lung-iphone-87--silicon-rose-red.png', 0, 0, '2018-02-16', 0),
(54, 6, 73, 'Apple Ốp lưng iPhone 8/7  Silicon White', '', 999000, 0, '', 'apple-op-lung-iphone-87--silicon-white.png', 0, 0, '2018-02-16', 0),
(55, 6, 74, 'PKNK Ốp lưng iPhone 8/7  Silicon Dark Olive MR3N2FE/A', '', 1099000, 1059000, '', 'pknk-op-lung-iphone-87--silicon-dark-olive-mr3n2fea.png', 0, 0, '2018-02-16', 0),
(56, 6, 75, 'PKNK Ốp lưng iPhone 8/7  Silicon Ultra Violet MQGR2FE/A', '', 1099000, 0, '', 'pknk-op-lung-iphone-87--silicon-ultra-violet-mqgr2fea.png', 0, 0, '2018-02-16', 0),
(57, 6, 76, 'Apple Ốp lưng iPhone 6/6s Leather Red', '', 1099000, 0, '', 'apple-op-lung-iphone-66s-leather-red.png', 0, 0, '2018-02-16', 0),
(58, 6, 77, 'Apple Ốp lưng iPhone 6/6s Plus Leather Midnight Blue', '', 1299000, 0, '', 'apple-op-lung-iphone-66s-plus-leather-midnight-blue.png', 0, 0, '2018-02-16', 0),
(59, 6, 78, 'Apple Ốp lưng iPhone 7 Plus/8 Plus Silicon Pink Sand', '', 1299000, 0, '', 'apple-op-lung-iphone-7-plus8-plus-silicon-pink-sand.png', 0, 0, '2018-02-16', 0),
(60, 6, 79, 'Apple Ốp lưng iPhone 7 Plus/8 Plus Silicon Cocoa', '', 1299000, 0, '', 'apple-op-lung-iphone-7-plus8-plus-silicon-cocoa.png', 0, 0, '2018-02-16', 0),
(61, 17, 80, 'iMac 2017 4K Retina Display 21.5 inch - MNDY2 - Core i5 3.0GHz/ 8GB/ HDD 1TB', '- Bộ vi xử lý: 3.4GHz Core i5 (Turbo Boost lên đến 3.8GHz)\n    - Ram: 8GB of 2400MHz DDR4\n    - Ổ cứng: 1TB (5400 rpm) Fusion Drive hoặc 256GB hoặc 512GB SSD\n    - Đồ họa: Radeon Pro 570 with 4GB of VRAM\n    - Màn hình: 27inch (diagonal) Retina 5K display\n    - Độ phân giải: 5210 × 2880pixels, với hỗ trợ hàng tỷ màu\n    - Cổng mạng: Wi-Fi 802.11ac Khả năng tương thích chuẩn IEEE 802.11a/b/g/n, Bluetooth 4.2\n    - Khe cắm: Giắc cắm tai nghe 3,5 mm, Khe cắm thẻ SDXC.', 31900000, 0, '', 'imac-2017-4k-retina-display-215-inch---mndy2---core-i5-30ghz-8gb-hdd-1tb.png', 0, 0, '2018-02-16', 0),
(62, 17, 81, 'iMac 2017 5K Retina Display 27inch - MNE92 - Core i5 3.4GHz/ 8GB/ Fusion Drive 1TB', '- Bộ vi xử lý: 3.4GHz Core i5 (Turbo Boost lên đến 3.8GHz)\n    - Ram: 8GB of 2400MHz DDR4\n    - Ổ cứng: 1TB (5400 rpm) Fusion Drive hoặc 256GB hoặc 512GB SSD\n    - Đồ họa: Radeon Pro 570 with 4GB of VRAM\n    - Màn hình: 27inch (diagonal) Retina 5K display\n    - Độ phân giải: 5210 × 2880pixels, với hỗ trợ hàng tỷ màu\n    - Cổng mạng: Wi-Fi 802.11ac Khả năng tương thích chuẩn IEEE 802.11a/b/g/n, Bluetooth 4.2\n    - Khe cắm: Giắc cắm tai nghe 3,5 mm, Khe cắm thẻ SDXC.', 45990000, 0, '', 'imac-2017-5k-retina-display-27inch---mne92---core-i5-34ghz-8gb-fusion-drive-1tb.png', 0, 0, '2018-02-16', 0),
(63, 17, 82, 'iMac 2017 4K Retina Display 21.5 inch - MNE02 - Core i5 3.4GHz/ 8GB/ HDD 1TB', '- Bộ vi xử lý: 3.4GHz Core i5 (Turbo Boost lên đến 3.8GHz)\n    - Ram: 8GB of 2400MHz DDR4\n    - Ổ cứng: 1TB (5400 rpm) Fusion Drive hoặc 256GB hoặc 512GB SSD\n    - Đồ họa: Radeon Pro 570 with 4GB of VRAM\n    - Màn hình: 27inch (diagonal) Retina 5K display\n    - Độ phân giải: 5210 × 2880pixels, với hỗ trợ hàng tỷ màu\n    - Cổng mạng: Wi-Fi 802.11ac Khả năng tương thích chuẩn IEEE 802.11a/b/g/n, Bluetooth 4.2\n    - Khe cắm: Giắc cắm tai nghe 3,5 mm, Khe cắm thẻ SDXC.', 38500000, 0, '', 'imac-2017-4k-retina-display-215-inch---mne02---core-i5-34ghz-8gb-hdd-1tb.png', 0, 0, '2018-02-16', 0),
(64, 17, 83, 'iMac 2017 5K Retina Display 27inch - MNED2 - Core i5 3.8GHz/ 8GB/ Fusion Drive 2TB', '- Bộ vi xử lý: 3.4GHz Core i5 (Turbo Boost lên đến 3.8GHz)\n    - Ram: 8GB of 2400MHz DDR4\n    - Ổ cứng: 1TB (5400 rpm) Fusion Drive hoặc 256GB hoặc 512GB SSD\n    - Đồ họa: Radeon Pro 570 with 4GB of VRAM\n    - Màn hình: 27inch (diagonal) Retina 5K display\n    - Độ phân giải: 5210 × 2880pixels, với hỗ trợ hàng tỷ màu\n    - Cổng mạng: Wi-Fi 802.11ac Khả năng tương thích chuẩn IEEE 802.11a/b/g/n, Bluetooth 4.2\n    - Khe cắm: Giắc cắm tai nghe 3,5 mm, Khe cắm thẻ SDXC.', 57500000, 0, '', 'imac-2017-5k-retina-display-27inch---mned2---core-i5-38ghz-8gb-fusion-drive-2tb.png', 0, 0, '2018-02-16', 0),
(65, 17, 63, 'iMac 2017 5K Retina Display 27inch - MNE92 - Core i5 3.4GHz/ 8GB/ Fusion Drive 1TB', '- Bộ vi xử lý: 3.4GHz Core i5 (Turbo Boost lên đến 3.8GHz)\n    - Ram: 8GB of 2400MHz DDR4\n    - Ổ cứng: 1TB (5400 rpm) Fusion Drive hoặc 256GB hoặc 512GB SSD\n    - Đồ họa: Radeon Pro 570 with 4GB of VRAM\n    - Màn hình: 27inch (diagonal) Retina 5K display\n    - Độ phân giải: 5210 × 2880pixels, với hỗ trợ hàng tỷ màu\n    - Cổng mạng: Wi-Fi 802.11ac Khả năng tương thích chuẩn IEEE 802.11a/b/g/n, Bluetooth 4.2\n    - Khe cắm: Giắc cắm tai nghe 3,5 mm, Khe cắm thẻ SDXC.', 45990000, 0, '', 'imac-2017-5k-retina-display-27inch---mne92---core-i5-34ghz-8gb-fusion-drive-1tb.png', 0, 0, '2018-02-16', 0),
(66, 17, 85, 'iMac 21.5 inch 2017 - MMQA2 - Core i5 2.3GHz/ 8GB/ HDD 1TB', '- Bộ vi xử lý: 3.4GHz Core i5 (Turbo Boost lên đến 3.8GHz)\n    - Ram: 8GB of 2400MHz DDR4\n    - Ổ cứng: 1TB (5400 rpm) Fusion Drive hoặc 256GB hoặc 512GB SSD\n    - Đồ họa: Radeon Pro 570 with 4GB of VRAM\n    - Màn hình: 27inch (diagonal) Retina 5K display\n    - Độ phân giải: 5210 × 2880pixels, với hỗ trợ hàng tỷ màu\n    - Cổng mạng: Wi-Fi 802.11ac Khả năng tương thích chuẩn IEEE 802.11a/b/g/n, Bluetooth 4.2\n    - Khe cắm: Giắc cắm tai nghe 3,5 mm, Khe cắm thẻ SDXC.', 25500000, 0, '', 'imac-215-inch-2017---mmqa2---core-i5-23ghz-8gb-hdd-1tb.png', 0, 0, '2018-02-16', 0),
(67, 17, 65, 'iMac 2017 5K Retina Display 27inch - MNED2 - Core i5 3.8GHz/ 8GB/ Fusion Drive 2TB', '- Bộ vi xử lý: 3.4GHz Core i5 (Turbo Boost lên đến 3.8GHz)\n    - Ram: 8GB of 2400MHz DDR4\n    - Ổ cứng: 1TB (5400 rpm) Fusion Drive hoặc 256GB hoặc 512GB SSD\n    - Đồ họa: Radeon Pro 570 with 4GB of VRAM\n    - Màn hình: 27inch (diagonal) Retina 5K display\n    - Độ phân giải: 5210 × 2880pixels, với hỗ trợ hàng tỷ màu\n    - Cổng mạng: Wi-Fi 802.11ac Khả năng tương thích chuẩn IEEE 802.11a/b/g/n, Bluetooth 4.2\n    - Khe cắm: Giắc cắm tai nghe 3,5 mm, Khe cắm thẻ SDXC.', 57500000, 0, '', 'imac-2017-5k-retina-display-27inch---mned2---core-i5-38ghz-8gb-fusion-drive-2tb.png', 0, 0, '2018-02-16', 0),
(68, 17, 87, 'iMac MK482 (Retina 5K, 27 inch, Late 2015) - Core i5 / 3.3Ghz Fursion Drive', '- Bộ vi xử lý: 3.4GHz Core i5 (Turbo Boost lên đến 3.8GHz)\n    - Ram: 8GB of 2400MHz DDR4\n    - Ổ cứng: 1TB (5400 rpm) Fusion Drive hoặc 256GB hoặc 512GB SSD\n    - Đồ họa: Radeon Pro 570 with 4GB of VRAM\n    - Màn hình: 27inch (diagonal) Retina 5K display\n    - Độ phân giải: 5210 × 2880pixels, với hỗ trợ hàng tỷ màu\n    - Cổng mạng: Wi-Fi 802.11ac Khả năng tương thích chuẩn IEEE 802.11a/b/g/n, Bluetooth 4.2\n    - Khe cắm: Giắc cắm tai nghe 3,5 mm, Khe cắm thẻ SDXC.', 40900000, 0, '', 'imac-mk482-(retina-5k,-27-inch,-late-2015)---core-i5--33ghz-fursion-drive.png', 0, 0, '2018-02-16', 0),
(69, 18, 88, 'Mac Pro MD878  - 6-Core / Dual GPU D700 12GB New 99% -USED', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 77000000, 0, '', 'mac-pro-md878----6-core--dual-gpu-d700-12gb-new-99--used.png', 0, 0, '2018-02-16', 0),
(71, 17, 90, 'iMac Pro – MQ2Y2 (8Core/32G/1TB/Vega 56) – New', '- Bộ vi xử lý: 3.4GHz Core i5 (Turbo Boost lên đến 3.8GHz)\n    - Ram: 8GB of 2400MHz DDR4\n    - Ổ cứng: 1TB (5400 rpm) Fusion Drive hoặc 256GB hoặc 512GB SSD\n    - Đồ họa: Radeon Pro 570 with 4GB of VRAM\n    - Màn hình: 27inch (diagonal) Retina 5K display\n    - Độ phân giải: 5210 × 2880pixels, với hỗ trợ hàng tỷ màu\n    - Cổng mạng: Wi-Fi 802.11ac Khả năng tương thích chuẩn IEEE 802.11a/b/g/n, Bluetooth 4.2\n    - Khe cắm: Giắc cắm tai nghe 3,5 mm, Khe cắm thẻ SDXC.', 129000000, 0, '', 'imac-pro-–-mq2y2-(8core32g1tbvega-56)-–-new.png', 0, 0, '2018-02-16', 0),
(72, 18, 91, 'Mac Pro ME253  - Quad-Core / 256GB / Dual GPU D300  New 99% -USED', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 39000000, 0, '', 'mac-pro-me253----quad-core--256gb--dual-gpu-d300--new-99--used.png', 0, 0, '2018-02-16', 0),
(74, 17, 93, 'iMac Pro – MQ2Y2 Option (10Core/128Gb/2TB/Vega 64) Like New 99%', '- Bộ vi xử lý: 3.4GHz Core i5 (Turbo Boost lên đến 3.8GHz)\n    - Ram: 8GB of 2400MHz DDR4\n    - Ổ cứng: 1TB (5400 rpm) Fusion Drive hoặc 256GB hoặc 512GB SSD\n    - Đồ họa: Radeon Pro 570 with 4GB of VRAM\n    - Màn hình: 27inch (diagonal) Retina 5K display\n    - Độ phân giải: 5210 × 2880pixels, với hỗ trợ hàng tỷ màu\n    - Cổng mạng: Wi-Fi 802.11ac Khả năng tương thích chuẩn IEEE 802.11a/b/g/n, Bluetooth 4.2\n    - Khe cắm: Giắc cắm tai nghe 3,5 mm, Khe cắm thẻ SDXC.', 197000000, 195000000, '', 'imac-pro-–-mq2y2-option-(10core128gb2tbvega-64)-like-new-99.png', 1, 0, '2018-02-16', 0),
(76, 17, 95, 'iMac Pro – MQ2Y2 Option (14Core/64G/2TB/Vega 64)', '- Bộ vi xử lý: 3.4GHz Core i5 (Turbo Boost lên đến 3.8GHz)\n    - Ram: 8GB of 2400MHz DDR4\n    - Ổ cứng: 1TB (5400 rpm) Fusion Drive hoặc 256GB hoặc 512GB SSD\n    - Đồ họa: Radeon Pro 570 with 4GB of VRAM\n    - Màn hình: 27inch (diagonal) Retina 5K display\n    - Độ phân giải: 5210 × 2880pixels, với hỗ trợ hàng tỷ màu\n    - Cổng mạng: Wi-Fi 802.11ac Khả năng tương thích chuẩn IEEE 802.11a/b/g/n, Bluetooth 4.2\n    - Khe cắm: Giắc cắm tai nghe 3,5 mm, Khe cắm thẻ SDXC.', 209000000, 0, '', 'imac-pro-–-mq2y2-option-(14core64g2tbvega-64).png', 0, 0, '2018-02-16', 0),
(78, 19, 97, 'Mac mini 2014 Core I5 2.6Ghz 8GB 1TB New 99%', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 12500000, 0, '', 'mac-mini-2014-core-i5-26ghz-8gb-1tb-new-99.png', 0, 0, '2018-02-16', 0),
(80, 14, 14, 'Macbook 12 inch 2017 Core I5 8GB 512GB (Nhiều Màu)', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 36500000, 0, '', 'macbook-12-inch-2017-core-i5-8gb-512gb-(nhieu-mau).png', 0, 0, '2018-02-16', 0),
(81, 14, 14, 'Macbook 12 inch 2017 Core M3 8GB 256GB ( Nhiều Màu )', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 29900000, 0, '', 'macbook-12-inch-2017-core-m3-8gb-256gb-(-nhieu-mau-).png', 0, 0, '2018-02-16', 0),
(82, 16, 14, 'The New MacBook 2016 - MMGM2 - 12\" / Core m5 / RAM 8GB / SSD 512GB (Rose Gold)', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 27900000, 0, '', 'the-new-macbook-2016---mmgm2---12--core-m5--ram-8gb--ssd-512gb-(rose-gold).png', 0, 0, '2018-02-16', 0),
(83, 14, 102, 'Macbook Air 2015 -11.6 inch MJVP2- Max Option', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 19500000, 0, '', 'macbook-air-2015--116-inch-mjvp2--max-option.png', 1, 0, '2018-02-16', 0),
(84, 14, 103, 'Macbook Air MJVM2 (11.6 inch, Early 2015) - Core i5 / RAM 4GB / SSD 128GB', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 16900000, 0, '', 'macbook-air-mjvm2-(116-inch,-early-2015)---core-i5--ram-4gb--ssd-128gb.png', 0, 0, '2018-02-16', 0),
(85, 14, 104, 'Macbook Air MQD32 (13.3 inch, 2017) - Core i5 / RAM 8GB / SSD 128GB', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 20200000, 0, '', 'macbook-air-mqd32-(133-inch,-2017)---core-i5--ram-8gb--ssd-128gb.png', 0, 0, '2018-02-16', 0),
(86, 14, 105, 'Macbook Air MQD32 (13.3 inch, 2017) - Core i5 / RAM 8GB / SSD 128GB New 99%', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 17900000, 17300000, '', 'macbook-air-mqd32-(133-inch,-2017)---core-i5--ram-8gb--ssd-128gb-new-99.png', 0, 0, '2018-02-16', 0),
(87, 14, 106, 'Macbook Air MQD42 (13.3 inch, 2017) - Core i5 / RAM 8GB / SSD 256GB', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 25500000, 0, '', 'macbook-air-mqd42-(133-inch,-2017)---core-i5--ram-8gb--ssd-256gb.png', 1, 0, '2018-02-16', 0),
(88, 16, 107, 'Macbook Pro 13.3\" 2017 MPXQ2 (Core I5 / 8GB / 128GB) (Gray Space )', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 28900000, 0, '', 'macbook-pro-133-2017-mpxq2-(core-i5--8gb--128gb)-(gray-space-).png', 1, 1, '2018-02-16', 0),
(89, 16, 108, 'Macbook Pro 13.3\" 2017 MPXT2 (Core I5 / 8GB / 256GB) New 100%', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 33700000, 0, '', 'macbook-pro-133-2017-mpxt2-(core-i5--8gb--256gb)-new-100.png', 0, 0, '2018-02-16', 0),
(90, 16, 109, 'Macbook Pro Retina MJLQ2 (15.4 inch, Mid 2015) - Core i7 / RAM 16GB / SSD 256GB', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 37500000, 0, '', 'macbook-pro-retina-mjlq2-(154-inch,-mid-2015)---core-i7--ram-16gb--ssd-256gb.png', 0, 0, '2018-02-16', 0),
(91, 16, 110, 'MLH12-Macbook 2016 TouchBar 13 inch 16GB 256GB TouchBar LikeNew 99%', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 34900000, 0, '', 'mlh12-macbook-2016-touchbar-13-inch-16gb-256gb-touchbar-likenew-99.png', 0, 0, '2018-02-16', 0),
(92, 16, 111, 'MNQF2-Macbook 2016 TouchBar 13 inch 16GB USED New 97%', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 30500000, 0, '', 'mnqf2-macbook-2016-touchbar-13-inch-16gb-used-new-97%.png', 0, 0, '2018-02-16', 0),
(93, 16, 112, 'MNQF2-Macbook 2016 TouchBar 13 inch I5 16GB 512GB SSD TouchBar', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 35500000, 0, '', 'mnqf2-macbook-2016-touchbar-13-inch-i5-16gb-512gb-ssd-touchbar.png', 0, 0, '2018-02-16', 0),
(94, 16, 113, 'MNQG2 - Macbook Pro Retina 2016 13inch 512GB Touch Bar (Silver)  New 99%', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 34500000, 0, '', 'mnqg2---macbook-pro-retina-2016-13inch-512gb-touch-bar-(silver)--new-99.png', 0, 0, '2018-02-16', 0),
(95, 16, 114, 'MPTR2 - MacBook Pro 2017 15 inch SSD 256GB TouchBar ( Space Gray)', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 50900000, 0, '', 'mptr2---macbook-pro-2017-15-inch-ssd-256gb-touchbar-(-space-gray).png', 0, 0, '2018-02-16', 0),
(96, 16, 115, 'MPTT2 - MacBook Pro 2017 15 inch Quad I7 3.1Ghz 1TB SSD OPTION (SPACE GRAY)', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 60500000, 0, '', 'mptt2---macbook-pro-2017-15-inch-quad-i7-31ghz-1tb-ssd-option-(space-gray).png', 0, 0, '2018-02-16', 0),
(97, 16, 116, 'MPTT2 - MacBook Pro 2017 15 inch SSD 512GB TouchBar ( Space Gray)', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 58900000, 0, '', 'mptt2---macbook-pro-2017-15-inch-ssd-512gb-touchbar-(-space-gray).png', 0, 0, '2018-02-16', 0),
(98, 16, 117, 'MPTU2 - MacBook Pro 2017 15 inch SSD 256GB TouchBar (SLIVER)', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 50500000, 50000000, '', 'mptu2---macbook-pro-2017-15-inch-ssd-256gb-touchbar-(sliver).png', 0, 0, '2018-02-16', 0),
(99, 16, 118, 'MPTV2 - MacBook Pro 2017 15 inch SSD 512GB TouchBar ( Silver )', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 59800000, 0, '', 'mptv2---macbook-pro-2017-15-inch-ssd-512gb-touchbar-(-silver-).png', 0, 0, '2018-02-16', 0),
(100, 16, 119, 'MPXV2 -Macbook Pro Retina 2017 13 inch 256GB TouchBar ( Gray Space )', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 39500000, 0, '', 'mpxv2--macbook-pro-retina-2017-13-inch-256gb-touchbar-(-gray-space-).png', 1, 0, '2018-02-16', 0),
(101, 16, 120, 'MPXW2 - Macbook Pro Retina 2017 13inch SSD 512GB TouchBar (Gray Space )', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 44500000, 0, '', 'mpxw2---macbook-pro-retina-2017-13inch-ssd-512gb-touchbar-(gray-space-).png', 0, 0, '2018-02-16', 0),
(102, 16, 121, 'MPXX2 - Macbook Pro Retina 2017 13inch SSD 256GB TouchBar ( Silver )', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 40800000, 0, '', 'mpxx2---macbook-pro-retina-2017-13inch-ssd-256gb-touchbar-(-silver-).png', 0, 0, '2018-02-16', 0),
(103, 16, 122, 'MPXY2 - Macbook Pro Retina 2017 13inch SSD 512GB TouchBar ( Silver )', '- Bộ xử lý CPU: 3.7 GHz Intel Xeon E5 Quad-Core\n    - RAM: 16GB\n    - Lưu trữ SSD: 256GB PCIe-based Flash Storage (Option)\n    - Đồ họa: Dual AMD FirePro D300 GPUs (2 x 2GB)\n    - 6 cổng Thunderbolt 2\n    - 4 cổng USB 3.0, 1 cổng HDMI 1.4\n    - 802.11a/b/g/n/ac Wi-Fi, Bluetooth 4.0\n    - Thiết kế độc đáo, nhỏ gọn\n    - Hệ điều hành: Mac OS X 10.10 or 10.11', 44500000, 44400000, '', 'mpxy2---macbook-pro-retina-2017-13inch-ssd-512gb-touchbar-(-silver-).png', 0, 0, '2018-02-16', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(10) NOT NULL DEFAULT 'staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: show , 0: hide'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id`, `image`, `link`, `title`, `status`) VALUES
(1, 'slider-img3.jpg', '', 'Slide  03', 1),
(2, 'slider-img1.jpg', '', 'Slide 01', 1),
(3, 'slider-img2.jpg', '', 'Slide  02', 1),
(4, 'slider-img4.jpg', '', 'Slide 04', 0),
(5, 'slider-img5.jpg', '', 'Slide 05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `remember_token` varchar(1000) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `birthdate`, `gender`, `address`, `email`, `phone`, `remember_token`, `updated_at`, `created_at`) VALUES
(1, 'huonghuong', '1', 'Huong Hương', '2018-04-03', 'nữ', 'Quận 1', 'huongnguyenak96@gmail.com', '', NULL, '2018-04-15 01:35:57', '2018-04-15 01:35:57'),
(2, 'huong', '121212', NULL, NULL, NULL, NULL, 'huong@gmail.com', NULL, NULL, '2018-04-24 23:28:25', '2018-04-24 23:28:25'),
(4, '1377764620473', '$2y$10$u8e2QbsKypZ6.B5X7vANMO1dN0xjgaEGpZzqaB5hUDHDbvJ4YnqNm', NULL, NULL, NULL, NULL, '206154413404huong@gmail.com', NULL, NULL, '2018-04-24 23:31:01', '2018-04-24 23:31:01'),
(5, '712286668573', '$2y$10$IOvA1jVv1tUrKY0bD8VyOe0bNCbIVMQKNX2.zkOyXZ0s1g9U4vt..', NULL, NULL, NULL, NULL, '400563674038huong@gmail.com', NULL, NULL, '2018-04-24 23:31:02', '2018-04-24 23:31:02'),
(6, '430470243514', '$2y$10$86AhDsGbqaeNIRD1xiAfTuLuMHkcyzrtC09ieQNUIeniKCVheYJI.', NULL, NULL, NULL, NULL, '365431308610huong@gmail.com', NULL, NULL, '2018-04-24 23:35:26', '2018-04-24 23:35:26'),
(7, '1290848086886', '$2y$10$g1q9ZWlhsiO6xztfEEL.Wey5v7lKJoz6GtLWkoTZKolMpPk7Yctia', NULL, NULL, NULL, NULL, '520082013187huong@gmail.com', NULL, NULL, '2018-04-24 23:46:55', '2018-04-24 23:46:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `1` (`id_customer`);

--
-- Indexes for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `3` (`id_product`),
  ADD KEY `id_bill` (`id_bill`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_url` (`id_url`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_url`
--
ALTER TABLE `page_url`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `url` (`url`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_type` (`id_type`),
  ADD KEY `id_url` (`id_url`);
ALTER TABLE `products` ADD FULLTEXT KEY `name_2` (`name`);
ALTER TABLE `products` ADD FULLTEXT KEY `search1` (`name`,`detail`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bill_detail`
--
ALTER TABLE `bill_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `page_url`
--
ALTER TABLE `page_url`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `1` FOREIGN KEY (`id_customer`) REFERENCES `customers` (`id`);

--
-- Constraints for table `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD CONSTRAINT `bill_detail_ibfk_1` FOREIGN KEY (`id_bill`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `bill_detail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`id_url`) REFERENCES `page_url` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_type`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_url`) REFERENCES `page_url` (`id`);

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `role_user_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
