-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-07-09 10:27:56
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
-- 資料表結構 `res_intro`
--

CREATE TABLE `res_intro` (
  `id` int(10) UNSIGNED NOT NULL,
  `intro` text NOT NULL,
  `sh` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `res_intro`
--

INSERT INTO `res_intro` (`id`, `intro`, `sh`) VALUES
(1, '背景簡介：\r\n    畢業於嘉義大學木質材料與設計學系(原:林產科學暨家具工程學系)，在大學就學期間適逢系所轉型，從原有的木材相關專業知識融入了設計發想相關課程，也因此有這個契機讓我對於新事物的敏感度及挑戰上有極大的興趣與欲望，並於大學四年級時以專題製作作品參賽，成功奪下佳作，替當時系所轉型的過程添加了更多肯定的風評。\r\n職場歷練:   \r\n    畢業後投入機械設備製造公司，因公司有滿大一部分的業務屬於生產線的設計製造，常會出差安裝修繕各式機台，進而累積了許多現場突發狀況的處理能力。出差的過程中常會得到客戶的回饋，讓我認知到公司對於產品理念的堅持及品質上的要求是如此重要的事情。也因為如此讓非工科相關學歷的我，從中學到金屬加工、機械設備裝修技術及小公司獨到的經營理念。\r\n    而後因想在職場結合大學所學而加入了科定，起初四個月於倉管物流單位服務，認知到從成品端至出貨端其中的控管對於公司也是極其重要之一環，無論是成品數據化控管、出貨前的檢驗、包裝，產品售後服務之處理，及如何透過現有產品來滿足業務端各項疑難雜症，對我來說，在該單位其間，是一段意想不到且頗為豐收的收穫。\r\n    輾轉之間我加入了家具研發部門，由於是新創立的單位，對於公司與我來說是一條嶄新的道路。而在公司培訓下加上大學專業科目知識，在家具部門期間負責從逆向工程作業至3D實體圖檔修飾，CAD/CAM應用及實作操作機台等各項獨立作業。\r\n未來展望:\r\n    在職期間同時注重工作專業與其他專業的學習，是我極為重視的一環，也因此從就職至今仍會利用空檔來強化電腦繪圖及語言能力。希望能透過自身經驗來為貴司服務貢獻，並且期許能共同成長、相互茁壯。', 1),
(2, '這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試這是測試', 1);

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

-- --------------------------------------------------------

--
-- 資料表結構 `res_portfolio`
--

CREATE TABLE `res_portfolio` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sh` int(10) NOT NULL,
  `type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `res_portfolio`
--

INSERT INTO `res_portfolio` (`id`, `title`, `point`, `img`, `sh`, `type`, `url`) VALUES
(1, '個人月歷', '以html/css完成主要框架及效果\r\n年月份功能以PHP作呈現', 'calendar.png', 1, 'PHP', 'http://220.128.133.15/s1090205/Calendar/'),
(7, '倒數計時器', '透過JS來製作倒數功能表', 'countclock.png', 1, 'JavaScript', 'http://220.128.133.15/s1090205/DigitalClock/'),
(8, '統一發票兌獎系統', '以PHP做系統基礎建置，並搭配HTML/CSS做外觀及網頁架構的設立', 'invoice.png', 1, 'PHP', 'http://220.128.133.15/s1090205/Invoice/'),
(9, 'Analog Clock', '以JavaScript開發的小品網頁時鐘', 'clock.png', 1, 'JavaScript', 'http://220.128.133.15/s1090205/Clock/'),
(10, '家飾', '負責以逆向工程並做圖形修整，規畫並進行CNC編碼、與量產規劃。', 'all.png', 1, 'Others', ''),
(11, '餐桌', '負責透過逆向工程與CNC編碼工法來製作出精準榫卯工法之餐桌', 'table.png', 1, 'Others', ''),
(12, '沙發', '負責逆向工程建模並做樣式修整，CNC製造、量產規劃', 'sofa.png', 1, 'Others', ''),
(63, '文創小品', '負責從設計、製作研發及量產規劃的完整流程項目', 'think.png', 1, 'Others', '');

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
-- 資料表索引 `res_intro`
--
ALTER TABLE `res_intro`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `res_jsc`
--
ALTER TABLE `res_jsc`
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
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_intro`
--
ALTER TABLE `res_intro`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_jsc`
--
ALTER TABLE `res_jsc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_portfolio`
--
ALTER TABLE `res_portfolio`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

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
