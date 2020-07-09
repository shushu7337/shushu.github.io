-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2020-07-09 10:30:07
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

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `res_intro`
--
ALTER TABLE `res_intro`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `res_intro`
--
ALTER TABLE `res_intro`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
