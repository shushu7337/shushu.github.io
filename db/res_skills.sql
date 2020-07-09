-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-07-09 10:30:21
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
-- 資料表結構 `res_skills`
--

CREATE TABLE `res_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `web` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `graphic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `res_skills`
--

INSERT INTO `res_skills` (`id`, `web`, `graphic`, `others`, `sh`) VALUES
(1, 'JavaScript', 'Adobe Photoshop', 'Git', 1),
(2, 'CSS/HTML5', 'Adobe Illustrator', 'Github', 1),
(3, 'Bootstrap', 'Zbrush', 'AlphaCam', 1),
(4, 'PHP', 'Zbrush', 'SolidWorks', 1),
(5, 'MySQL/MariaDB', '3ds Max', 'AutoCad', 1);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `res_skills`
--
ALTER TABLE `res_skills`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_skills`
--
ALTER TABLE `res_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
