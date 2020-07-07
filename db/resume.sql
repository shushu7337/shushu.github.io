-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-07-07 10:40:24
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
(1, 'admin', '123'),
(2, 'aaa', 'aaa'),
(3, 'dddasdf', 'ddd'),
(6, 'sss', 'sss');

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
(2, '國鉅機械股份有限公司', ' Jul.2015-Mar.2016', '-　Welding and metal structure processing \r\n-　Mechanical equipment assembly and 　maintenance ', 'MECHANICAL EQUIPMENT MANUFACTURING TECHNICIAN', 1);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_edu_exp`
--
ALTER TABLE `res_edu_exp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_portfolio`
--
ALTER TABLE `res_portfolio`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_profile`
--
ALTER TABLE `res_profile`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_skills`
--
ALTER TABLE `res_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_work_exp`
--
ALTER TABLE `res_work_exp`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
