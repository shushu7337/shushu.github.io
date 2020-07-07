-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-07-07 05:38:31
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
-- 資料表結構 `res_portfolio`
--

CREATE TABLE `res_portfolio` (
  `id` int(10) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(10) NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `res_portfolio`
--

INSERT INTO `res_portfolio` (`id`, `title`, `point`, `img`, `sh`, `type`) VALUES
(1, '個人月歷', '以html/css完成主要框架及效果\r\n年月份功能以PHP作呈現', 'calendar.png', 0, 'PHP'),
(7, '倒數計時器', '透過JS來製作倒數功能表', 'countclock.png', 1, 'JavaScript'),
(8, '統一發票兌獎系統', '以PHP做系統基礎建置，並搭配HTML/CSS做外觀及網頁架構的設立', 'invoice.png', 1, 'PHP'),
(9, '類比時鐘', '以JavaScript開發的小品網頁時鐘', 'clock.png', 1, 'JavaScript'),
(10, '家飾', '負責以逆向工程並做圖形修整，規畫並進行CNC編碼、與量產規劃。', 'all.png', 1, 'Others'),
(11, '餐桌', '負責透過逆向工程與CNC編碼工法來製作出精準榫卯工法之餐桌', 'table.png', 1, 'Others'),
(12, '沙發', '負責逆向工程建模並做樣式修整，CNC製造、量產規劃', 'sofa.png', 1, 'Others'),
(63, '文創小品', '負責從設計、製作研發及量產規劃的完整流程項目', 'think.png', 1, 'Others');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `res_portfolio`
--
ALTER TABLE `res_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_portfolio`
--
ALTER TABLE `res_portfolio`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
