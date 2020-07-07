-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-07-07 05:38:41
-- 伺服器版本： 10.4.11-MariaDB
-- PHP 版本： 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `resume`
--

-- --------------------------------------------------------

--
-- 資料表結構 `res_work_exp`
--

CREATE TABLE `res_work_exp` (
  `id` int(10) UNSIGNED NOT NULL,
  `ser_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ser_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ser_con` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ser_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `res_work_exp`
--

INSERT INTO `res_work_exp` (`id`, `ser_name`, `ser_date`, `ser_con`, `ser_title`, `sh`) VALUES
(1, 'KD_科定企業股份有限公司 ', 'Jun.2016 - Nov.2019', '-　Product Reverse Engineering \r\n-　3D Drawing & Modleing \r\n-　4 Axis & 5 Axis  CNC Programmer and 　　　Operator \r\n-　Product Mass Production', 'PRODUCT DEVELOPER', 1),
(2, '國鉅機械股份有限公司', ' Jul.2015-Mar.2016', '-　Welding and metal structure processing \r\n- Mechanical equipment assembly and 　maintenance ', 'MECHANICAL EQUIPMENT MANUFACTURING TECHNICIAN', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `res_work_exp`
--
ALTER TABLE `res_work_exp`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_work_exp`
--
ALTER TABLE `res_work_exp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
