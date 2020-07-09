-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-07-09 10:30:10
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
-- 資料表結構 `res_jsc`
--

CREATE TABLE `res_jsc` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `item` text NOT NULL,
  `sh` int(10) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `res_jsc`
--

INSERT INTO `res_jsc` (`id`, `content`, `item`, `sh`, `no`) VALUES
(2, '全端/前端/後端網頁設計人員', '期望職位', 1, 1),
(3, '雙北/桃園', '期望工作地點', 1, 2),
(4, '面議', '期望薪資', 1, 0),
(5, '全職', '工作性質', 1, 4),
(6, '上班睡覺下班尿尿', '期望工作內容', 1, 5);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `res_jsc`
--
ALTER TABLE `res_jsc`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_jsc`
--
ALTER TABLE `res_jsc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
