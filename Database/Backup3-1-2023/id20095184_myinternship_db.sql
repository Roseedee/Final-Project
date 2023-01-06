-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 03, 2023 at 07:15 AM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20095184_myinternship_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ac_id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `date_regis` timestamp NOT NULL DEFAULT current_timestamp(),
  `act_id` int(10) NOT NULL COMMENT 'ประเภทบัญชี'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ac_id`, `username`, `password`, `date_regis`, `act_id`) VALUES
(1, 'muhamhad@gmail.com', '12345', '2023-01-03 00:00:00', 1),
(2, 'musleefa@gmail.com', '12345', '2023-01-03 00:00:00', 1),
(3, 'hakim@gmail.com', '12345', '2023-01-03 00:00:00', 1),
(4, 'amera@gmail.com', '12345', '2023-01-03 00:00:00', 1),
(5, 'fairus@gmail.com', '12345', '2023-01-03 00:00:00', 1),
(6, 'rusdee@gmail.com', '12345', '2023-01-03 00:00:00', 1),
(7, 'suhaine@gmail.com', '12345', '2023-01-03 00:00:00', 1),
(8, 'mislin@gmail.com', '12345', '2023-01-03 00:00:00', 1),
(9, 'rohanee@gmail.com', '12345', '2023-01-03 00:00:00', 1),
(10, 'fatin@gmail.com', '12345', '2023-01-03 00:00:00', 1),
(11, 'roseedee', '2002', '2023-01-03 05:05:25', 1),
(12, '0987654321', '12345', '2023-01-03 06:53:32', 1);

-- --------------------------------------------------------

--
-- Table structure for table `account_type`
--

CREATE TABLE `account_type` (
  `act_id` int(10) NOT NULL,
  `act_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `account_type`
--

INSERT INTO `account_type` (`act_id`, `act_type`) VALUES
(1, 'student'),
(2, 'company');

-- --------------------------------------------------------

--
-- Table structure for table `address_student`
--

CREATE TABLE `address_student` (
  `ad_id` int(10) NOT NULL,
  `ad_address` varchar(50) NOT NULL,
  `ad_sub_district` varchar(10) NOT NULL,
  `ad_district` varchar(10) NOT NULL,
  `ad_province` varchar(10) NOT NULL,
  `ad_zipcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address_student`
--

INSERT INTO `address_student` (`ad_id`, `ad_address`, `ad_sub_district`, `ad_district`, `ad_province`, `ad_zipcode`) VALUES
(1, '3/8', 'ปุยุด', 'เมือง', 'ปัตตานี', '94000'),
(2, '9/1', 'อาเนาะรู', 'เมือง', 'ปัตตานี', '94000'),
(3, '78/8', 'สะบารัง', 'เมือง', 'ปัตตานี', '94000'),
(4, '12/4', 'หน้าถ้ำ', 'เมือง', 'ยะลา', '95000'),
(5, '3/2', 'บุดี', 'เมือง', 'ยะลา', '95000'),
(6, '72/1', 'สะเตง', 'เมือง', 'ยะลา', '95000'),
(7, '33/4', 'ปุโรง', 'กรงปินัง', 'ยะลา', '95000'),
(8, '44/9', 'สะเอะ', 'กรงปินัง', 'ยะลา', '95000'),
(9, '48/1', 'กรงปินัง', 'กรงปินัง', 'ยะลา', '95000'),
(10, '1/12', 'บันนังสตา', 'บันนังสตา', 'ยะลา', '95130'),
(11, '3/8 Banhadsai', 'ธารคีรี', 'สะบ้าย้อย', 'สงขลา', '90210'),
(12, '115/2', 'บางเคว้า', 'เมือง', 'เพชรบูรณ์', '890000');

-- --------------------------------------------------------

--
-- Table structure for table `intelligent_type`
--

CREATE TABLE `intelligent_type` (
  `itt_id` int(10) NOT NULL,
  `itt_type` varchar(45) NOT NULL,
  `itt_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `intelligent_type`
--

INSERT INTO `intelligent_type` (`itt_id`, `itt_type`, `itt_description`) VALUES
(1, 'ปัญญาด้านมิติสัมพันธ์', NULL),
(2, 'ปัญญาด้านภาษา', NULL),
(3, 'ปัญญาด้านตรรกะและคณิตศาสตร์', NULL),
(4, 'ปัญญาด้านร่างการและการเคลื่อนไหว', NULL),
(5, 'ปัญญาด้านดนตรี', NULL),
(6, 'ปัญญาด้านมนุษย์สัมพันธ์', NULL),
(7, 'ปัญญาด้านความเข้าใจตนเอง', NULL),
(8, 'ปัญญาด้านธรรมชาติวิทยา', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `j_id` int(10) NOT NULL,
  `j_jobname` varchar(45) NOT NULL,
  `itt_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`j_id`, `j_jobname`, `itt_id`) VALUES
(1, 'สถาปนิก', 1),
(2, 'ศิลปิน', 1),
(3, 'มัณฑนากร', 1),
(4, 'วิศวกร', 1),
(5, 'นักออกแบบ', 1),
(6, 'นักเขียน', 2),
(7, 'นักประพันธ์', 2),
(8, 'นักข่าว', 2),
(9, 'ทนายความ', 2),
(10, 'ครูอาจารย์', 2),
(11, 'ไอที/เขียนโปรแกรม', 3),
(12, 'วิศวกร', 3),
(13, 'บัญชี', 3),
(14, 'งานวิจัยและวิทยาศาสตร์', 3),
(15, 'ช่างซ่อมรถยนต์', 4),
(16, 'ช่างเชื่อม', 4),
(17, 'ช่างไฟฟ้า', 4),
(18, 'จิตรกร', 4),
(19, 'นักประดิษฐ์', 4),
(20, 'ศัลยแพทย์', 4),
(21, 'นักดนตรี', 5),
(22, 'นักประพันธ์', 5),
(23, 'นักร้อง', 5),
(24, 'ครูสอนดนตรี', 5),
(25, 'นักจิตวิทยา', 6),
(26, 'ที่ปรึกษา', 6),
(27, 'นักขาย', 6),
(28, 'นักการเมือง', 6),
(29, 'นักปรัชญา', 7),
(30, 'งานเขียน', 7),
(31, 'นักทฤษฎี', 7),
(32, 'นักวิทยาศาสตร์', 7),
(33, 'นักชีววิทยา', 8),
(34, 'นักอนุรักษ์', 8),
(35, 'ชาวสวนชาวไร่', 8);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `q_id` int(10) NOT NULL,
  `q_quiz` varchar(50) NOT NULL,
  `itt_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`q_id`, `q_quiz`, `itt_id`) VALUES
(1, 'รักและชอบในงานศิลปะ', 1),
(2, 'ชอบการถ่ายรูป', 1),
(3, 'ชอบเล่นเกมส์เกี่ยวกับการออกแบบสร้างบ้าน', 1),
(4, 'ชอบแตะต้องหรือสัมผัสกับสิ่งของ', 1),
(5, 'สนุกกับการจดบันทึกเรื่องราวต่างๆที่เราสนใจ', 1),
(6, 'ชอบดูหนังและการ์ตูน', 1),
(7, 'ชอบการทดลอง และการทดลองสิ่งแปลกใหม่', 1),
(8, 'เก่งเรื่องการระบายสี', 1),
(9, 'มีความจำและจินตนาการที่สื่อให้มองเห็นได้', 1),
(10, 'ชอบเล่นเกมส์เกี่ยวกับรูปภาพ เช่นการต่อจิ๊กซอว์', 1),
(11, 'แม่นยำในการกะระยะทาง และส่วนสูง', 1),
(12, 'ชอบศิลปะหรือเรขาคณิตมากกว่าที่ใช้ความคิด', 1),
(13, 'สนใจเรื่องอาคาร สถานที่ที่มีสวยงาม', 1),
(14, 'ชอบงานหัตถกรรมหรืองานฝีมือ เช่น เย็บปัก  ตัดเสื้อ', 1),
(15, 'ชอบเกมส์ที่ใช้การสังเกตุเช่น จิ๊กซอว์ เลโก้', 1),
(16, 'ชอบเล่นเกมส์ปริศนาที่ใช้ความคิดแก้ เช่น สืบสวน', 1),
(17, 'สื่อหรือแสดงให้คนอื่นรู้ได้โดยการวาดรูป', 1),
(18, 'จำเส้นทาง ทิศทางได้ดี', 1),
(19, 'ชอบเข้าร่วมกิจกรรมดนตรี นาฏศิลป์', 1),
(20, 'ชอบการออกแบบ สิ่งของเครื่องประดับ เสื้อผ้าฯลฯ', 1),
(21, 'เก่งเรื่องการอ่านกาพย์ กลอนเป็นต้น', 2),
(22, 'ชอบการอ่าน เช่น หนังสือนวนิยาย และสื่อโฆษณา', 2),
(23, 'รับความรู้จากการฟังวิทยุ และเทปเสียงได้ดี', 2),
(24, 'ชอบเปรียบเทียบ โดยใช้สำนวน สุภาษิต', 2),
(25, 'ชอบเขียนบันทึกประจำวัน', 2),
(26, 'ชอบอ่านคู่มือการใช้งานสิ่งของ', 2),
(27, 'ชอบการค้นคว้าหาความรู้ใหม่ๆอยู่เสมอ', 2),
(28, 'ชอบเขียนหนังสือและเรียงประโยคได้ดี', 2),
(29, 'ชอบใช้คำคล้องจอง เขียนโคลงฉันท์กาพย์กลอน', 2),
(30, 'ชอบวิชาสังคม ประวัติและภาษา', 2),
(31, 'ชอบคำนวณ แก้โจทย์คณิต', 3),
(32, 'ทำงานตามขั้นตอนที่วางไว้', 3),
(33, 'ชอบเล่นคอมพิวเตอร์', 3),
(34, 'คิดเลขได้อย่างรวดเร็ว', 3),
(35, 'ชอบวิชาคณิตหรือการคำนวณ', 3),
(36, 'ชอบแก้ปัญหาทีละอย่าง ตามขั้นตอน', 3),
(37, 'ชอบใช้เหตุในการคิดแก้ปัญหาที่เข้าใจยาก', 3),
(38, 'ติดตามความเคลื่อนไหวที่เกี่ยวกับวิทยาศาสตร์', 3),
(39, 'ชอบงานที่เกี่ยวกับเครื่องกล งานซ่อม', 3),
(40, 'ชอบใช้ตารางและกราฟในการนำเสนอ', 3),
(41, 'ไม่สามารถอยู่นิ่งเป็นเวลานานได้', 4),
(42, 'ชอบเล่นกีฬา ใช้เวลากลางแจ้ง เล่นกับเพื่อนๆ\r\n', 4),
(43, 'ชอบงานที่ต้องใช้มือทำหรืองานฝีมือ', 4),
(44, 'เก่งด้านเล่นกีฬา', 4),
(45, 'เล่นเกมส์ที่ขยับร่างกายเพื่อบังคับตัวละคร', 4),
(46, 'ชอบการแสดงกายกรรมหรือการเต้น', 4),
(47, 'ชอบกิจกรรมที่ใช้ร่างกายเช่นกีฬา', 4),
(48, 'มีความคล่องตัว ตอบสนองต่อสถานการณ์อันตราย', 4),
(49, 'ร้องเพลงตรงทำนองเนื้อร้อง', 5),
(50, 'เล่นดนตรีได้', 5),
(51, 'ชอบฟังเพลง ฟังดนตรีหลากหลาย', 5),
(52, 'มีความสามารถการเลียนแบบท่าทาง เสียง', 5),
(53, 'มีความรู้ทางวิชาดนตรี', 5),
(54, 'สามารถจดจำแม้ได้ยินหรือฟังเพียงไม่กี่ครั้ง', 5),
(55, 'เคาะหรือเล่นเครื่องได้ตรงจังหวะ', 5),
(56, 'ชอบสร้างเสียงดนตรี เช่นผิวปาก ใบไม้', 5),
(57, 'ชอบฟังเพลงและดนตรี', 5),
(58, 'ชอบการเต้นตามจังหวะหรือฟ้อนรำ', 5),
(59, 'รักและชอบในงานศิลปะ', 6),
(60, 'ชอบพบปะกับผู้คนมากกว่าการอยู่คนเดียว', 6),
(61, 'ชอบการถ่ายรูป', 6),
(62, 'ชอบช่วยเหลือผู้คน', 6),
(63, 'ชอบแตะต้องหรือสัมผัสกับสิ่งของ', 6),
(64, 'สนุกกับการจดบันทึกเรื่องราวต่างๆที่เราสนใจ', 6),
(65, 'ชอบสร้างโมเดลบ้าน ตัวต่อเลโก้และฟิกเกอร์', 6),
(66, 'ชอบการทำงานหรืออยู่ร่วมกับผู้อื่น', 6),
(67, 'ชอบเล่นเกมส์เศรษฐีหรือเกมส์ที่เกี่ยวกับการลงทุน', 6),
(68, 'ชอบการมีเพื่อนเยอะๆ', 6),
(69, 'ชอบดูหนังและการ์ตูน', 6),
(70, 'ชอบการทำงานกลุ่ม', 6),
(71, 'ชอบตัดสินใจ ให้คนอื่นทำมากกว่าลงมือทำ', 6),
(72, 'ชอบการทดลอง และการทดลองสิ่งแปลกใหม่', 6),
(73, 'มีความสามารถด้านการเรียน กิจกรรม และคบเพื่อน', 6),
(74, 'เก่งเรื่องการระบายสี', 6),
(75, 'ทำให้คนอื่นคล้อยตามและเป็นผู้นำในเรื่องงาน', 6),
(76, 'มีความคิดในการแก้ปัญหาได้ดีกว่าเพื่อนวัยเดียวกัน', 6),
(77, 'มีความจำและจินตนาการที่สื่อให้เห็นได้', 6),
(78, 'ชอบเล่นเกมส์เกี่ยวกับรูปภาพ เช่นการต่อจิ๊กซอว์', 6),
(79, 'แม่นยำในการกะระยะทาง และส่วนสูง', 6),
(80, 'สามารถจดจำและการแสดงความรู้สึกของคนได้', 6),
(81, 'ชอบศิลปะหรือเรขาคณิตมากกว่าที่ใช้ความคิด', 6),
(82, 'สนใจเรื่องอาคาร สถานที่ที่มีสวยงาม', 6),
(83, 'ชอบสังเกตุสิ่งที่คนอื่นทำ', 6),
(84, 'ชอบวิเคราะห์เรื่องการเงิน', 6),
(85, 'ชอบทำกิจกรรมกลางแจ้งมากกว่าเรียนในห้อง', 6),
(86, 'ชอบเชื่อมโยงเหตุการณ์ ต่างๆ เช่นคำพูด', 6),
(87, 'ชอบงานหัตถกรรมหรืองานฝีมือ เช่น เย็บปัก  ตัดเสื้อ', 6),
(88, 'ชอบเกมส์ที่ใช้การสังเกตุเช่น จิ๊กซอว์ เลโก้', 6),
(89, 'ชอบเล่นเกมส์ปริศนาที่ใช้ความคิดแก้ เช่น สืบสวน', 6),
(90, 'สามารถคิดช่องทางการทำเงินได้', 6),
(91, 'มักมีคนมาขอปรึกษาอยู่บ่อยๆ', 6),
(92, 'สื่อหรือแสดงให้คนอื่นรู้ได้โดยการวาดรูป', 6),
(93, 'สื่อสารกับคนอื่นได้ดี', 6),
(94, 'ชอบทำงานกับคนอื่นๆ', 6),
(95, 'จำเส้นทาง ทิศทางได้ดี', 6),
(96, 'ชอบเข้าร่วมกิจกรรมดนตรี นาฏศิลป์', 6),
(97, 'ชอบการออกแบบ สิ่งของเครื่องประดับ เสื้อผ้าฯลฯ', 6),
(98, 'ชอบบริหารงาน เอาใจใส่ และรับผิดชอบงาน', 6),
(99, 'ให้คำปรึกษาหรือติดต่อประสานงาน', 6),
(100, 'แสดงความเห็นโดยใช้เหตุผลหรือภาพประกอบ', 7),
(101, 'อดทนต่อความกดดันที่ทำให้เครียด', 7),
(102, 'ชอบที่จะเอาชนะการแข่งขัน', 7),
(103, 'ชอบตัดสินใจตามที่ตัวเองคิดเสมอ', 7),
(104, 'คาดการณ์สิ่งที่จะเกิดจากความจริง', 7),
(105, 'ชอบพูดหรือแสดงความคิดเห็น', 7),
(106, 'สามารถจดจำแยะแยะข้อมูลสิ่งต่างๆได้ดี', 7),
(107, 'ไม่ชอบลอกเอางานของคนอื่นมาเป็นของตัวเอง', 7),
(108, 'ชอบทำตามกฎที่ได้รับ', 7),
(109, 'รอบคอบในการคิดเงินก่อนตัดสินใจซื้อทุกครั้ง', 7),
(110, 'เก่งเรื่องการสื่อสารกับผู้คนและแก้ไขปัญหาได้', 7),
(111, 'อธิบายความคิดเห็น เพื่อลดความคิดไม่ตรงกัน', 7),
(112, 'ชอบทำตามระเบียบที่โรงเรียนหรือสังคมสั่ง', 7),
(113, 'จดจ่อกับคอมพิวเตอร์ได้นาน', 7),
(114, 'ชอบโน้มน้าว เป็นหัวหน้าในการทำงาน', 7),
(115, 'ชอบเอาชนะของอีกคนด้วยเหตุผล', 7),
(116, 'ชอบสังเกตความเห็นที่ไม่ถูกต้องของคนอื่น', 7),
(117, 'สามารถนั่งทำงานได้นาน จนทำงานเสร็จ', 7),
(118, 'มีความเห็นที่แตกต่างกับคนอื่นที่ทั้งจริงและไม่', 7),
(119, 'ชอบดูแลตัวเอง รักษาสุขภาพ ไม่ให้เจ็บป่วย', 7),
(120, 'ตั้งสติและรับมือกับปัญหาได้ดี', 7),
(121, 'มีความสุขที่ได้ท่องเที่ยว', 8),
(122, 'ชอบต้นไม้ป่าไม้ การปลูกพืชผักและการเลี้ยงสัตว์', 8),
(123, 'ชอบสังเกตการเปลี่ยนแปลงของสิ่งมีชีวิต', 8),
(124, 'ชอบช่วยเหลือคนหรือสัตว์ที่ได้รับความเดือดร้อน', 8),
(125, 'สามารถแยกประเภทของสัตว์และพืชได้', 8),
(126, 'สามารถแยกประเภทของสัตว์และพืชได้', 8),
(127, 'เก่งวิชาชีววิทยา พืช สัตว์ และสิ่งแวดล้อม', 8),
(128, 'มลพิษทางอากาศ น้ำ เสียง ขยะมูลฝอยและสิ่งปฏิกูล', 8),
(129, 'แม่นยำการใช้สารเคมีหรือส่วนประกอบการอาหาร', 8),
(130, 'ชอบเรียนวิทยาศาสตร์', 8),
(131, 'งานอดิเรกที่เกี่ยวกับศึกษาทดลองสิ่งมีชีวิต', 8),
(132, 'ชอบฟัง สังเกตข่าวสภาพอากาศ ภูมิประเทศ', 8),
(133, 'เชื่อมโยงความสัมพันธ์ของสิ่งมีชีวิตต่างๆได้', 8),
(134, 'แก้แล้ว :เลียนเสียงการกระทำของสัตว์ได้', 8);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `sk_id` int(10) NOT NULL,
  `sk_skill` varchar(45) NOT NULL,
  `skt_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`sk_id`, `sk_skill`, `skt_id`) VALUES
(1, 'การบัญขี', 1),
(2, 'ความมั่นใจ', 1),
(3, 'การจัดทำงบประงบประมาณ', 1),
(4, 'สถิติธุรกิจ / บทวิเคราะห์', 1),
(5, 'การจัดการกระแสเงินสด', 1),
(6, 'การปฏิบัติตาม', 1),
(7, 'สัญญา', 1),
(8, 'กฎหมายองค์กร', 1),
(9, 'การวิเคราะห์ต้นทุน', 1),
(10, 'การป้อนข้อมูล', 1),
(11, 'การสร้างแบรนด์นายจ้าง', 1),
(12, 'การวางแผนงาน', 1),
(13, 'การเงิน', 1),
(14, 'การวิเคราะห์ทางการเงิน', 1),
(15, 'การสร้างแบบจำลองทางการเงิน', 1),
(16, 'การรายงานทางการเงิน', 1),
(17, 'การจัดการทรัพยากรมนุษย์', 1),
(18, 'นำเข้าส่งออก', 1),
(19, 'ตรวจสอบภายใน', 1),
(20, 'การสร้างแบบจำลอง 3 มิติ', 2),
(21, 'AutoCAD', 2),
(22, 'AutoDesk', 2),
(23, 'ระบบอัตโนมัติ', 2),
(24, 'วิศวกรรมเคมี', 2),
(25, 'วิศวกรรมโยธา', 2),
(26, 'การตรวจสอบการก่อสร้าง', 2),
(27, 'การประมาณการต้นทุน', 2),
(28, 'เขียนแบบไฟฟ้า', 2),
(29, 'วิศวกรรมไฟฟ้า', 2),
(30, 'อิเล็กทรอนิกส์', 2),
(31, 'วิศวกรรมอุตสาหการ', 2),
(32, 'วิศวกรรมวัสดุ', 2),
(33, 'MathCAD', 2),
(34, 'เขียนแบบเครื่องกล', 2),
(35, 'วิศวกรรมการผลิต', 2),
(36, 'ระบบการจัดการคุณภาพ', 2),
(37, 'การสำรวจปริมาณ', 2),
(38, 'SOLIDWORKS', 2),
(39, 'ซาวด์เอ็นจิเนียริ่ง', 2),
(40, 'สามารถทำงานเป็นกะได้', 3),
(41, 'การคิดวิเคราะห์', 3),
(42, 'การเขียนเชิงสร้างสรรค์', 3),
(43, 'กระฉับกระเฉง', 3),
(44, 'กระตือรือร้น', 3),
(45, 'เรียนรู้เร็ว', 3),
(46, 'ทักษะการสื่อสารที่ดี', 3),
(47, 'ความรับผิดชอบสูง', 3),
(48, 'ทักษะความเป็นผู้นำ', 3),
(49, 'ตรงตามกำหนดเวลา', 3),
(50, 'การรายงานข่าว', 3),
(51, 'บุคลิกดี', 3),
(52, 'นักคิดบวก', 3),
(53, 'การแก้ปัญหา', 3),
(54, 'ตรงต่อเวลา', 3),
(55, 'บริการด้วยใจ', 3),
(56, 'การทำงานเป็นทีม', 3),
(57, 'เต็มใจที่จะทำงานล่วงเวลา', 3),
(58, '.NET', 4),
(59, 'Adobe Premiere', 4),
(60, 'Chrome OS', 4),
(61, 'DirectX', 4),
(62, 'AJAX', 4),
(63, 'Amazon AWS', 4),
(64, 'Network Programming', 4),
(65, 'Objective C', 4),
(66, 'OpenGL', 4),
(67, 'PHP', 4),
(68, 'node.js', 4),
(69, 'Postgre SQL', 4),
(70, 'NoSQL', 4),
(71, 'Computer Security', 4),
(72, 'MySQL', 4),
(73, 'Windows API', 4),
(74, 'XML', 4),
(75, 'React.js', 4),
(76, 'UI / UX', 4),
(77, 'Spring Boot', 4),
(78, ':Vue.js', 4),
(79, 'Xcode', 4),
(80, 'Smarty PHP', 4),
(81, 'R', 4),
(82, 'eCommerce', 4),
(83, 'Computer Graphics', 4),
(84, 'Server-Side Rendering', 4),
(85, 'Python', 4),
(86, 'MongoDB', 4),
(87, 'C++', 4),
(88, 'Database Development', 4),
(89, 'iOS', 4),
(90, 'CSS', 4),
(91, 'Kotlin', 4),
(92, 'Firebase', 4),
(93, 'DevOps', 4),
(94, 'Facebook API', 4),
(95, 'HTML5', 4),
(96, 'JSON', 4),
(97, 'Javascript', 4),
(98, 'Microsoft Access', 4),
(99, 'Matlab', 4),
(100, 'Java', 4),
(101, 'Cloud Computing', 4),
(102, 'Linux', 4),
(103, 'Fortran', 4),
(104, 'Golang', 4),
(105, 'Game Design', 4),
(106, 'Android', 4),
(107, 'Full Stack', 4),
(108, 'Git', 4),
(109, 'ASP.NET', 4),
(110, 'C', 4),
(111, 'C#', 4),
(112, 'Angular.js', 4),
(113, 'Apache', 4),
(114, 'Bash', 4),
(115, 'Assembly', 4),
(116, '3D Animation', 5),
(117, 'Adobe XD', 5),
(118, '3D Rendering', 5),
(119, ':Adobe Illustrator', 5),
(120, 'Branding', 5),
(121, 'SketchUp', 5),
(122, 'Adobe Dreamweaver', 5),
(123, 'Video Editing', 5),
(124, 'Google Adwords', 5),
(125, 'Creative Presentation', 5),
(126, 'Sketch', 5),
(127, 'BIM', 5),
(128, 'Product Design', 5),
(129, 'Adobe InDesign', 5),
(130, 'After Effects', 5),
(131, 'Facebook Marketing', 5),
(132, 'Digital Marketing', 5),
(133, 'Visio', 5),
(134, 'Blender', 5),
(135, 'Adobe Photoshop', 5),
(136, 'ปิโตรเคมี', 6),
(137, 'การประกันคุณภาพ', 6),
(138, 'วิจัย', 6),
(139, 'ชีววิทยา', 6),
(140, 'กระบวนการทางเคมี', 6),
(141, 'การจัดการความปลอดภัย', 6),
(142, 'การพัฒนาผลิตภัณฑ์', 6);

-- --------------------------------------------------------

--
-- Table structure for table `skill_type`
--

CREATE TABLE `skill_type` (
  `skt_id` int(10) NOT NULL,
  `skt_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skill_type`
--

INSERT INTO `skill_type` (`skt_id`, `skt_type`) VALUES
(1, 'ธุรกิจและการเงิน'),
(2, 'วิศวกรรม'),
(3, 'ทักษะทั่วไป'),
(4, 'ไอที'),
(5, 'การตลาดและการออกแบบ'),
(6, 'วิทยาศาสตร์');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `st_id` int(10) NOT NULL COMMENT 'ดึงจากตาราง account',
  `st_pname` varchar(10) NOT NULL,
  `st_fname` varchar(20) NOT NULL,
  `st_lname` varchar(20) NOT NULL,
  `st_sex` tinyint(4) NOT NULL,
  `st_birthday` date NOT NULL,
  `st_email` varchar(50) NOT NULL,
  `st_tel` varchar(20) NOT NULL,
  `st_academy` varchar(50) NOT NULL,
  `st_education_lv` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`st_id`, `st_pname`, `st_fname`, `st_lname`, `st_sex`, `st_birthday`, `st_email`, `st_tel`, `st_academy`, `st_education_lv`) VALUES
(1, 'นาย', 'มูฮัมหมัดอาลี', 'มันกอตอ', 1, '2003-10-31', 'muhamhad@gmail.com', '0875469870', 'วิทยาลัยเทคนิคยะลา', '0'),
(2, 'นาง', 'มูลีฟา', 'มามีดาโอะ', 0, '2003-11-01', 'musleefa@gmail.com', '0798467835', 'วิทยาลัยเทคนิคยะลา', '0'),
(3, 'นาย', 'ฮากีม', 'มูไร', 1, '2004-10-04', 'hakim@gmail.com', '0964875162', 'วิทยาลัยเทคนิคยะลา', '1'),
(4, 'นาง', 'อามีรา', 'อาลู', 0, '2004-07-05', 'amera@gmail.com', '0789375891', 'วิทยาลัยเทคนิคยะลา', '1'),
(5, 'นาย', 'ไฟรุส', 'มะตีเยาะ', 1, '2002-05-03', 'fairus@gmail.com', '0875497689', 'วิทยาลัยเทคนิคยะลา', '0'),
(6, 'นาง', 'รูสดี', 'มามะ', 0, '2004-07-08', 'rusdee@gmail.com', '0983124675', 'วิทยาลัยเทคนิคยะลา', '1'),
(7, 'นาง', 'ซูไฮณี', 'มาบูเลาะ', 0, '2004-11-06', 'suhaine@gmail.com', '0879456818', 'วิทยาลัยเทคนิคยะลา', '1'),
(8, 'นาง', 'มิสลิน', 'เจ๊ะลู', 0, '2004-01-08', 'mislin@gmail.com', '0871249738', 'วิทยาลัยเทคนิคยะลา', '1'),
(9, 'นาง', 'รอฮันนี', 'อะมีนา', 0, '2002-11-17', 'rohanee@gmail.com', '0876489752', 'วิทยาลัยเทคนิคยะลา', '0'),
(10, 'นาย', 'ฟาติน', 'ดือรามัน', 1, '2002-05-04', 'fatin@gmail.com', '0876482147', 'วิทยาลัยเทคนิคยะลา', '0'),
(11, 'นาย', 'Roseedee', 'Cehleah', 1, '2002-03-31', 'roseedee2002@gmail.com', '0630742165', 'วิทยาลัยเทคนิคยะลา', '1'),
(12, 'นาย', 'พงศ์อมรศรชัย', 'ไชยะ', 1, '1990-04-29', '-', '0987654321', 'ปลากาตูนวิทยาลง', '0');

-- --------------------------------------------------------

--
-- Table structure for table `student_skill`
--

CREATE TABLE `student_skill` (
  `st_id` int(10) NOT NULL,
  `sk_id` int(10) NOT NULL,
  `sk_skill` varchar(45) NOT NULL,
  `skt_type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_skill`
--

INSERT INTO `student_skill` (`st_id`, `sk_id`, `sk_skill`, `skt_type`) VALUES
(11, 116, '3D Animation', ''),
(11, 41, 'การคิดวิเคราะห์', 'ทักษะทั่วไป'),
(2, 119, ':Adobe Illustrator', 'การตลาดและการออกแบบ'),
(12, 54, 'ตรงต่อเวลา', 'ทักษะทั่วไป'),
(12, 45, 'เรียนรู้เร็ว', 'ทักษะทั่วไป'),
(11, 40, 'สามารถทำงานเป็นกะได้', 'ทักษะทั่วไป');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ac_id`),
  ADD KEY `act_id` (`act_id`);

--
-- Indexes for table `account_type`
--
ALTER TABLE `account_type`
  ADD PRIMARY KEY (`act_id`);

--
-- Indexes for table `address_student`
--
ALTER TABLE `address_student`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `intelligent_type`
--
ALTER TABLE `intelligent_type`
  ADD PRIMARY KEY (`itt_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`j_id`),
  ADD KEY `itt_id` (`itt_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `itt_id` (`itt_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`sk_id`);

--
-- Indexes for table `skill_type`
--
ALTER TABLE `skill_type`
  ADD PRIMARY KEY (`skt_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`st_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ac_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `account_type`
--
ALTER TABLE `account_type`
  MODIFY `act_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `intelligent_type`
--
ALTER TABLE `intelligent_type`
  MODIFY `itt_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `j_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `q_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `sk_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `skill_type`
--
ALTER TABLE `skill_type`
  MODIFY `skt_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`act_id`) REFERENCES `account_type` (`act_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `address_student`
--
ALTER TABLE `address_student`
  ADD CONSTRAINT `address_student_ibfk_1` FOREIGN KEY (`ad_id`) REFERENCES `student` (`st_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `job_ibfk_1` FOREIGN KEY (`itt_id`) REFERENCES `intelligent_type` (`itt_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`itt_id`) REFERENCES `intelligent_type` (`itt_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`st_id`) REFERENCES `account` (`ac_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
