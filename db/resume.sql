-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-07-02 08:53:16
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
-- 資料表結構 `res_admin`
--

CREATE TABLE `res_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `acc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pw` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `res_admin`
--

INSERT INTO `res_admin` (`id`, `acc`, `pw`) VALUES
(1, 'admin', '123');

-- --------------------------------------------------------

--
-- 資料表結構 `res_edu_exp`
--

CREATE TABLE `res_edu_exp` (
  `id` int(10) UNSIGNED NOT NULL,
  `sch_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `dept` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sch_cont` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `res_portfolio`
--

CREATE TABLE `res_portfolio` (
  `id` int(10) NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `res_profile`
--

CREATE TABLE `res_profile` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` int(128) NOT NULL,
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth` date NOT NULL,
  `location` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `res_skills`
--

CREATE TABLE `res_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `Web` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Graphic` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Others` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `res_work_exp`
--

CREATE TABLE `res_work_exp` (
  `id` int(10) UNSIGNED NOT NULL,
  `ser_name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ser_date` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ser_con` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ser_title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `res_admin`
--
ALTER TABLE `res_admin`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `res_edu_exp`
--
ALTER TABLE `res_edu_exp`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `res_portfolio`
--
ALTER TABLE `res_portfolio`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `res_profile`
--
ALTER TABLE `res_profile`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `res_skills`
--
ALTER TABLE `res_skills`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `res_work_exp`
--
ALTER TABLE `res_work_exp`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_admin`
--
ALTER TABLE `res_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_edu_exp`
--
ALTER TABLE `res_edu_exp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_portfolio`
--
ALTER TABLE `res_portfolio`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_profile`
--
ALTER TABLE `res_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_skills`
--
ALTER TABLE `res_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_work_exp`
--
ALTER TABLE `res_work_exp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
