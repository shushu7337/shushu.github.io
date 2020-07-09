-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-07-09 10:30:04
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
-- 資料表結構 `res_edu_exp`
--

CREATE TABLE `res_edu_exp` (
  `id` int(10) UNSIGNED NOT NULL,
  `edu_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_date` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_dept` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_con` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `res_edu_exp`
--

INSERT INTO `res_edu_exp` (`id`, `edu_name`, `edu_date`, `edu_dept`, `edu_con`, `sh`) VALUES
(1, '國立嘉義大學-NATIONAL CHIAYI UNIVERSITY', 'Set.2011-Jun.2015\r\n', 'Department of Wood Based Materials and Design ', 'Honorable mention of The 3th SAKURA Award ', 0);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `res_edu_exp`
--
ALTER TABLE `res_edu_exp`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_edu_exp`
--
ALTER TABLE `res_edu_exp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
