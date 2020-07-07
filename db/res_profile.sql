-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-07-07 05:38:35
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
-- 資料表結構 `res_profile`
--

CREATE TABLE `res_profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信箱',
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '電話',
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `res_profile`
--

INSERT INTO `res_profile` (`id`, `email`, `phone`, `name`, `intro`, `birth`, `location`, `img`) VALUES
(1, 'text@gmail.com', '0919921618', 'SHUHAO CHANG', 'During working, I not only take my responsibility seriously but also keep learning the different skills in case I have to use it in another day.     Since the opportunity always favors the prepared mind. Therefore,I enjoy attempting to challenge and progress continuously.  I’m really looking forward to putting my skills to use in a challenging environment.', '2020-05-12', '新北/桃園', 'me1.jpg');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `res_profile`
--
ALTER TABLE `res_profile`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_profile`
--
ALTER TABLE `res_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
