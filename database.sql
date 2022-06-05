-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 05, 2022 lúc 04:43 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `database`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password_mk` varchar(100) NOT NULL,
  `hoten` text NOT NULL,
  `ngaysinh` date NOT NULL,
  `email` text NOT NULL,
  `sdt` varchar(100) NOT NULL,
  `role_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `username`, `password_mk`, `hoten`, `ngaysinh`, `email`, `sdt`, `role_user`) VALUES
('001', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin', '2000-04-23', 'admin@gmail.com', '0908999999', 0),
('51800271', 'tuandat', 'e10adc3949ba59abbe56e057f20f883e', 'Tuan Dat', '0000-00-00', 'thiendat111@gmail.com', '0908809045324', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `orderID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `tableID` int(11) NOT NULL,
  `types` varchar(250) NOT NULL,
  `prices` float NOT NULL,
  `timeToStart` time NOT NULL,
  `timeToEnd` time NOT NULL,
  `customerName` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`orderID`, `quantity`, `tableID`, `types`, `prices`, `timeToStart`, `timeToEnd`, `customerName`) VALUES
(99, 8, 995, 'Bida crom', 50000, '14:00:00', '16:00:00', 'tuandat'),
(247, 8, 995, 'Bida pool', 50000, '14:00:00', '16:00:00', 'tuandat');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billiards`
--

CREATE TABLE `billiards` (
  `tableID` int(11) NOT NULL,
  `numbers` int(11) NOT NULL,
  `types` varchar(1024) CHARACTER SET utf8 NOT NULL,
  `prices` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `billiards`
--

INSERT INTO `billiards` (`tableID`, `numbers`, `types`, `prices`) VALUES
(995, 1, '4 types', 50000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee`
--

CREATE TABLE `employee` (
  `employeeID` varchar(100) NOT NULL,
  `employeeName` varchar(1024) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `birthDate` date NOT NULL,
  `phone` varchar(100) NOT NULL,
  `salary` float NOT NULL,
  `position` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `employee`
--

INSERT INTO `employee` (`employeeID`, `employeeName`, `email`, `birthDate`, `phone`, `salary`, `position`) VALUES
('783', 'employee1', 'employee@gmail.com', '2002-02-20', '090809090909', 1500000, 'Manager');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `typeofbilliards`
--

CREATE TABLE `typeofbilliards` (
  `typeID` int(11) NOT NULL,
  `types` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `typeofbilliards`
--

INSERT INTO `typeofbilliards` (`typeID`, `types`) VALUES
(1, 'Bida crom'),
(2, 'Bida snooker'),
(3, 'Bida pool'),
(4, 'Bida 4 bi');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`orderID`);

--
-- Chỉ mục cho bảng `billiards`
--
ALTER TABLE `billiards`
  ADD PRIMARY KEY (`tableID`);

--
-- Chỉ mục cho bảng `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employeeID`);

--
-- Chỉ mục cho bảng `typeofbilliards`
--
ALTER TABLE `typeofbilliards`
  ADD PRIMARY KEY (`typeID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
