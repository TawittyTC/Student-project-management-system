-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2022 at 06:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbmr`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbacceptdeny`
--

CREATE TABLE `tbacceptdeny` (
  `ad_id` int(11) NOT NULL,
  `ad_name` varchar(200) NOT NULL,
  `ad_status` varchar(99) DEFAULT NULL,
  `ad_time` date DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbacceptdeny`
--

INSERT INTO `tbacceptdeny` (`ad_id`, `ad_name`, `ad_status`, `ad_time`, `project_id`, `stu_id`, `teacher_id`) VALUES
(1, 'การอนุมัติขอสอบโครงงาน', 'รอการอนุมัติ', '2022-01-01', 6, 1, 206),
(2, 'การขอจัดทำโครงงานระบบฟอกอากาศ', 'อนุมัติเรียบร้อย', '2022-02-02', 2, 2, 208);

-- --------------------------------------------------------

--
-- Table structure for table `tbadvice`
--

CREATE TABLE `tbadvice` (
  `advice_id` int(11) NOT NULL,
  `advice_name` varchar(99) DEFAULT NULL,
  `advice_desc` varchar(250) DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbadvice`
--

INSERT INTO `tbadvice` (`advice_id`, `advice_name`, `advice_desc`, `stu_id`, `teacher_id`) VALUES
(1, 'ปรึกษาเรื่องโครงงาน', 'ติดปัญหาในการทำส่วนของเครื่องกรอง', 6, 205),
(2, 'ปรึกษาเรื่องการทำเอกสาร', 'มีปัญหาในการจัดทำเอกสาร การจัดการแบบฟอร์ม', 3, 209),
(3, 'ปรึกษาเรื่อง03', 'มีปัญหาในการจัดทำเอกสาร การจัดการแบบฟอร์ม', 7, 210),
(4, 'ปรึกษาเรื่อง04', 'มีปัญหาในการจัดทำเอกสาร', 9, 203),
(5, 'ปรึกษาเรื่องจิปะถะ', 'การจัดการแบบฟอร์ม', 1, 201);

-- --------------------------------------------------------

--
-- Table structure for table `tbdepartment`
--

CREATE TABLE `tbdepartment` (
  `dep_id` int(11) NOT NULL,
  `dep_name` varchar(99) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `univ_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbdepartment`
--

INSERT INTO `tbdepartment` (`dep_id`, `dep_name`, `faculty_id`, `univ_id`) VALUES
(1, 'วิศวกรรมคอมพิวเตอร์', 1, 1),
(2, 'วิศวกรรมโยธา', 1, 1),
(3, 'วิศวกรรมอิเล็คทรอนิกส์', 1, 1),
(4, 'วิศวกรรมไฟฟ้า', 1, 1),
(5, 'วิศวกรรมเครื่องกล', 1, 1),
(6, 'วิศวกรรมอุตสาหการ', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbdistrict`
--

CREATE TABLE `tbdistrict` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(99) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbdistrict`
--

INSERT INTO `tbdistrict` (`district_id`, `district_name`, `province_id`, `post_id`) VALUES
(1, 'สิงหนคร', 1, 90280),
(2, 'เมืองสงขลา', 1, 90000);

-- --------------------------------------------------------

--
-- Table structure for table `tbdocument`
--

CREATE TABLE `tbdocument` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(99) DEFAULT NULL,
  `doc_status` varchar(99) DEFAULT NULL,
  `upload_time` date DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `per_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbdocument`
--

INSERT INTO `tbdocument` (`doc_id`, `doc_name`, `doc_status`, `upload_time`, `user_id`, `per_id`) VALUES
(1, 'เอกสารขออนุมัติโครงการ', 'อนุัมัติ', '2020-02-04', 3, 2),
(2, 'เอกสารยืนขอสอบโครงงาน', 'รอการอนุมัติ', '2022-02-02', 6, 3),
(4, 'เอกสาร space zoo', 'กำลังดำเนินการ', '2020-02-23', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbfaculty`
--

CREATE TABLE `tbfaculty` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` varchar(99) DEFAULT NULL,
  `univ_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbfaculty`
--

INSERT INTO `tbfaculty` (`faculty_id`, `faculty_name`, `univ_id`) VALUES
(1, 'วิศวกรรมศาตร์', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblogin`
--

CREATE TABLE `tblogin` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `login_password` varchar(99) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `per_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblogin`
--

INSERT INTO `tblogin` (`login_id`, `login_username`, `login_password`, `role_id`, `user_id`, `per_id`) VALUES
(1, 'u1', '11111111', 1, 1, 2),
(2, 'u2', '22222222', 1, 2, 2),
(3, 'u3', '33333333', 1, 3, 2),
(4, 'u4', '44444444', 1, 4, 2),
(5, 'u5', '55555555', 1, 5, 2),
(6, 'u6', '66666666', 1, 6, 2),
(7, 'u7', '77777777', 1, 7, 2),
(8, 'u8', '88888888', 2, 8, 2),
(9, 'u9', '99999999', 2, 9, 1),
(10, 'u10', '1010101010', 2, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbpermission`
--

CREATE TABLE `tbpermission` (
  `per_id` int(11) NOT NULL,
  `access_desc` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbpermission`
--

INSERT INTO `tbpermission` (`per_id`, `access_desc`) VALUES
(1, 'สามารถอ่านได้เท่านั้น'),
(2, 'สามารถแก้ไขและอ่านได้'),
(3, 'ไม่สามารถอ่านและแก้ไขได้');

-- --------------------------------------------------------

--
-- Table structure for table `tbprefix`
--

CREATE TABLE `tbprefix` (
  `prefix_id` int(1) NOT NULL,
  `prefix_name` varchar(25) CHARACTER SET utf8 NOT NULL,
  `prefix_abbreviations` varchar(10) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbprefix`
--

INSERT INTO `tbprefix` (`prefix_id`, `prefix_name`, `prefix_abbreviations`) VALUES
(1, 'นาย', 'นาย'),
(2, 'นาง', 'นาง'),
(3, 'นางสาว', 'นส.'),
(4, 'ดอกเตอร์', 'ดร.'),
(5, 'ผู้ช่วยศาสตราจารย์', 'ผส'),
(6, 'รองศาสตราจารย์', 'รศ'),
(7, 'ศาสตราจารย์', 'ศ.'),
(8, 'ศาสตราจารย์ ดอกเตอร์', 'ศ.ดร.');

-- --------------------------------------------------------

--
-- Table structure for table `tbproject`
--

CREATE TABLE `tbproject` (
  `project_id` int(11) NOT NULL,
  `project_name` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `project_duration` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `project_status` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `project_approval` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `stu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbproject`
--

INSERT INTO `tbproject` (`project_id`, `project_name`, `project_duration`, `project_status`, `project_approval`, `stu_id`) VALUES
(1, 'ระบบกรองน้ำ', 'ระยะเวลา 3 เดือน', 'กำลังดำเนินการ', 'ผ่านการอนุมัติ', 1),
(2, 'ระบบกรองอากาศ', 'ระยะเวลา 6 เดือน', 'รอการอนุมัติ', 'ไม่ผ่านการอนุมัติ', 2),
(3, 'โครงการ03', 'ระยะเวลา 7 เดือน', 'รอการเซ็นอนุมัติ', 'รอการอนุมัติ', 3),
(4, 'โครงการ04', 'ระยะเวลา 6 เดือน', 'รอการอนุมัติ', 'ไม่ผ่านการอนุมัติ', 4),
(5, 'ระบบกรองน้ำประปา', 'ระยะเวลา 3 เดือน', 'กำลังดำเนินการ', 'ผ่านการอนุมัติ', 5),
(6, 'ระบบกรองดิน', 'ระยะเวลา 6 เดือน', 'รอการอนุมัติ', 'ไม่ผ่านการอนุมัติ', 6),
(7, 'ระบบกรองแสง', 'ระยะเวลา 3 เดือน', 'กำลังดำเนินการ', 'ผ่านการอนุมัติ', 7),
(8, 'ระบบแยกชนิดไม้', 'ระยะเวลา 3 เดือน', 'กำลังดำเนินการ', 'ผ่านการอนุมัติ', 8),
(9, 'ระบบแยกชนิดดิน', 'ระยะเวลา 4 เดือน', 'กำลังดำเนินการ', 'ผ่านการอนุมัติ', 9),
(13, 'โครงการ space zoo', '5 เดือน', 'เสร็จสมบูรณ์', 'อนุมัติ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbprovince`
--

CREATE TABLE `tbprovince` (
  `province_id` int(11) NOT NULL,
  `province_name` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbprovince`
--

INSERT INTO `tbprovince` (`province_id`, `province_name`) VALUES
(1, 'สงขลา');

-- --------------------------------------------------------

--
-- Table structure for table `tbregister`
--

CREATE TABLE `tbregister` (
  `reg_id` int(11) NOT NULL,
  `reg_date` datetime DEFAULT NULL,
  `reg_type` varchar(250) DEFAULT NULL,
  `reg_desc` varchar(250) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbregister`
--

INSERT INTO `tbregister` (`reg_id`, `reg_date`, `reg_type`, `reg_desc`, `login_id`) VALUES
(1, '2022-01-01 00:00:00', 'บุคคลภายใน', 'คนจากภายในมหาลัยลงทะเบียน', 1),
(2, '2022-02-02 00:00:00', 'บุคคลภายนอก', 'คนจากนอกมหาลัยลงทะเบียน', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbrole`
--

CREATE TABLE `tbrole` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbrole`
--

INSERT INTO `tbrole` (`role_id`, `role_name`) VALUES
(1, 'student'),
(2, 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `tbstudent`
--

CREATE TABLE `tbstudent` (
  `stu_id` int(99) NOT NULL,
  `stu_fname` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `stu_lname` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `stu_mobile` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `stu_email` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `univ_id` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbstudent`
--

INSERT INTO `tbstudent` (`stu_id`, `stu_fname`, `stu_lname`, `stu_mobile`, `stu_email`, `univ_id`, `dep_id`, `faculty_id`) VALUES
(1, 'stu1', 'lstu1', '111-111-1111', 'stu1@gmail.com', NULL, NULL, NULL),
(2, 'stu2', 'lstu2', '222-222-2222', 'stu2@gmail.com', NULL, NULL, NULL),
(3, 'stu3', 'lstu3', '333-333-3333', 'stu3@gmail.com', NULL, NULL, NULL),
(4, 'stu4', 'lstu4', '444-444-4444', 'stu4@gmail.com', NULL, NULL, NULL),
(5, 'stu5', 'lstu5', '555-555-5555', 'stu5@gmail.com', NULL, NULL, NULL),
(6, 'stu6', 'lstu6', '666-666-6666', 'stu6@gmail.com', NULL, NULL, NULL),
(7, 'stu7', 'lstu7', '777-777-7777', 'stu7@gmail.com', NULL, NULL, NULL),
(8, 'stu8', 'lstu8', '888-888-8888', 'stu8@gmail.com', NULL, NULL, NULL),
(9, 'stu9', 'lstu9', '999-999-9999', 'stu9@gmail.com', NULL, NULL, NULL),
(10, 'stu10', 'lstu10', '101-101-1010', 'stu10@gmail.com', NULL, NULL, NULL),
(11, '', '', '', '', NULL, NULL, NULL),
(12, '', '', '', '', NULL, NULL, NULL),
(13, '', '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbsubdistrict`
--

CREATE TABLE `tbsubdistrict` (
  `subdistrict_id` int(11) NOT NULL,
  `subdistrict_name` varchar(99) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbsubdistrict`
--

INSERT INTO `tbsubdistrict` (`subdistrict_id`, `subdistrict_name`, `district_id`) VALUES
(1, 'หัวเขา', 1),
(2, 'บ่อยาง', 2),
(3, 'เขารูปช้าง', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbteacher`
--

CREATE TABLE `tbteacher` (
  `teacher_id` int(11) NOT NULL,
  `teacher_fname` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `teacher_lname` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `teacher_email` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `teacher_mobile` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `univ_id` int(11) DEFAULT NULL,
  `dep_id` int(11) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbteacher`
--

INSERT INTO `tbteacher` (`teacher_id`, `teacher_fname`, `teacher_lname`, `teacher_email`, `teacher_mobile`, `univ_id`, `dep_id`, `faculty_id`) VALUES
(1, 'teacher01', 'lteacher01', 'teacher01@gmail.com', '111-111-1111', NULL, NULL, NULL),
(2, 'teacher02', 'lteacher02', 'teacher02@gmail.com', '222-222-2222', NULL, NULL, NULL),
(3, 'teacher03', 'lteacher03', 'teacher03@gmail.com', '333-333-3333', NULL, NULL, NULL),
(4, 'teacher04', 'lteacher04', 'teacher04@gmail.com', '444-444-4444', NULL, NULL, NULL),
(5, 'teacher05', 'lteacher05', 'teacher05@gmail.com', '555-555-5555', NULL, NULL, NULL),
(6, 'teacher06', 'lteacher06', 'teacher06@gmail.com', '666-666-6666', NULL, NULL, NULL),
(7, 'teacher07', 'lteacher07', 'teacher07@gmail.com', '777-777-7777', NULL, NULL, NULL),
(8, 'teacher08', 'lteacher08', 'teacher08@gmail.com', '888-888-8888', NULL, NULL, NULL),
(9, 'teacher09', 'lteacher09', 'teacher09@gmail.com', '999-999-9999', NULL, NULL, NULL),
(10, 'teacher10', 'lteacher10', 'teacher10@gmail.com', '101-101-1010', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbthesis`
--

CREATE TABLE `tbthesis` (
  `thesis_id` int(11) NOT NULL,
  `thesis_name` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `upload_time` date DEFAULT NULL,
  `thesis_status` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `per_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbthesis`
--

INSERT INTO `tbthesis` (`thesis_id`, `thesis_name`, `upload_time`, `thesis_status`, `user_id`, `per_id`) VALUES
(1, 'วิทยานิพนธ์น้ำกระท่อม03', '2020-02-23', 'กำลังดำเนินการ', 1, 2),
(7, 'วิทยานิพนธ์การGMP', '2020-02-04', 'กำลังดำเนินการ', NULL, NULL),
(9, 'วิทยานิพนธ์ Space Zoo', '2020-02-23', 'กำลังดำเนินการ', NULL, NULL),
(12, 'วิทยานิพนธ์การGMP ขั้นสูง', '2020-02-23', 'รอการอนุัมัติ', NULL, NULL),
(13, 'วิทยานิพนธ์ Space Zoo 02', '2020-02-04', 'กำลังดำเนินการ', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbuniversity`
--

CREATE TABLE `tbuniversity` (
  `univ_id` int(11) NOT NULL,
  `univ_name` varchar(99) DEFAULT NULL,
  `univ_num` varchar(99) DEFAULT NULL,
  `subdistrict_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbuniversity`
--

INSERT INTO `tbuniversity` (`univ_id`, `univ_name`, `univ_num`, `subdistrict_id`) VALUES
(1, 'มหาวิทยาลัยเทคโนโลยีราชมงคลศรีวิชัย', '1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbuser`
--

CREATE TABLE `tbuser` (
  `user_id` int(11) NOT NULL,
  `user_fname` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `user_lname` varchar(99) CHARACTER SET utf8 DEFAULT NULL,
  `user_mobile` varchar(99) DEFAULT NULL,
  `house_num` varchar(99) NOT NULL,
  `subdistrict_id` int(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbuser`
--

INSERT INTO `tbuser` (`user_id`, `user_fname`, `user_lname`, `user_mobile`, `house_num`, `subdistrict_id`) VALUES
(1, 'f1', 'l1', '111-111-1111', '1/11', 1),
(2, 'f2', 'l2', '222-222-2222', '2/22', 2),
(3, 'f3', 'l3', '333-333-3333', '3/33', 3),
(4, 'f4', 'l4', '444-444-4444', '4/44', 2),
(5, 'f5', 'l5', '555-555-5555', '5/55', 1),
(6, 'f6', 'l6', '666-666-6666', '6/66', 3),
(7, 'f7', 'l7', '777-777-7777', '7/77', 2),
(8, 'f8', 'l8', '888-888-8888', '8/88', 1),
(9, 'f9', 'l9', '999-999-9999', '9/99', 3),
(10, 'f10', 'l10', '101-101-1010', '10/10', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbacceptdeny`
--
ALTER TABLE `tbacceptdeny`
  ADD PRIMARY KEY (`ad_id`),
  ADD KEY `project_id` (`project_id`),
  ADD KEY `student_id` (`stu_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `tbadvice`
--
ALTER TABLE `tbadvice`
  ADD PRIMARY KEY (`advice_id`),
  ADD KEY `student_id` (`stu_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `tbdepartment`
--
ALTER TABLE `tbdepartment`
  ADD PRIMARY KEY (`dep_id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `univ_id` (`univ_id`);

--
-- Indexes for table `tbdistrict`
--
ALTER TABLE `tbdistrict`
  ADD PRIMARY KEY (`district_id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `tbdocument`
--
ALTER TABLE `tbdocument`
  ADD PRIMARY KEY (`doc_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `per_id` (`per_id`);

--
-- Indexes for table `tbfaculty`
--
ALTER TABLE `tbfaculty`
  ADD PRIMARY KEY (`faculty_id`),
  ADD KEY `univ_id` (`univ_id`);

--
-- Indexes for table `tblogin`
--
ALTER TABLE `tblogin`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `per_id` (`per_id`);

--
-- Indexes for table `tbpermission`
--
ALTER TABLE `tbpermission`
  ADD PRIMARY KEY (`per_id`);

--
-- Indexes for table `tbprefix`
--
ALTER TABLE `tbprefix`
  ADD PRIMARY KEY (`prefix_id`);

--
-- Indexes for table `tbproject`
--
ALTER TABLE `tbproject`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `student_id` (`stu_id`);

--
-- Indexes for table `tbprovince`
--
ALTER TABLE `tbprovince`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `tbregister`
--
ALTER TABLE `tbregister`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `login_id` (`login_id`);

--
-- Indexes for table `tbrole`
--
ALTER TABLE `tbrole`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbstudent`
--
ALTER TABLE `tbstudent`
  ADD PRIMARY KEY (`stu_id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `univ_id` (`univ_id`),
  ADD KEY `dep_id` (`dep_id`);

--
-- Indexes for table `tbsubdistrict`
--
ALTER TABLE `tbsubdistrict`
  ADD PRIMARY KEY (`subdistrict_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `tbteacher`
--
ALTER TABLE `tbteacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `univ_id` (`univ_id`),
  ADD KEY `dep_id` (`dep_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `tbthesis`
--
ALTER TABLE `tbthesis`
  ADD PRIMARY KEY (`thesis_id`),
  ADD KEY `per_id` (`per_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbuniversity`
--
ALTER TABLE `tbuniversity`
  ADD PRIMARY KEY (`univ_id`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `subdistrict_id` (`subdistrict_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbacceptdeny`
--
ALTER TABLE `tbacceptdeny`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbadvice`
--
ALTER TABLE `tbadvice`
  MODIFY `advice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbdocument`
--
ALTER TABLE `tbdocument`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblogin`
--
ALTER TABLE `tblogin`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbproject`
--
ALTER TABLE `tbproject`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbstudent`
--
ALTER TABLE `tbstudent`
  MODIFY `stu_id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbteacher`
--
ALTER TABLE `tbteacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbthesis`
--
ALTER TABLE `tbthesis`
  MODIFY `thesis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbacceptdeny`
--
ALTER TABLE `tbacceptdeny`
  ADD CONSTRAINT `tbacceptdeny_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `tbproject` (`project_id`),
  ADD CONSTRAINT `tbacceptdeny_ibfk_2` FOREIGN KEY (`stu_id`) REFERENCES `tbstudent` (`stu_id`),
  ADD CONSTRAINT `tbacceptdeny_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `tbteacher` (`teacher_id`);

--
-- Constraints for table `tbadvice`
--
ALTER TABLE `tbadvice`
  ADD CONSTRAINT `tbadvice_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `tbstudent` (`stu_id`),
  ADD CONSTRAINT `tbadvice_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `tbteacher` (`teacher_id`);

--
-- Constraints for table `tbdepartment`
--
ALTER TABLE `tbdepartment`
  ADD CONSTRAINT `tbdepartment_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `tbfaculty` (`faculty_id`),
  ADD CONSTRAINT `tbdepartment_ibfk_2` FOREIGN KEY (`univ_id`) REFERENCES `tbuniversity` (`univ_id`);

--
-- Constraints for table `tbdistrict`
--
ALTER TABLE `tbdistrict`
  ADD CONSTRAINT `tbdistrict_ibfk_1` FOREIGN KEY (`province_id`) REFERENCES `tbprovince` (`province_id`),
  ADD CONSTRAINT `tbdistrict_ibfk_2` FOREIGN KEY (`province_id`) REFERENCES `tbprovince` (`province_id`);

--
-- Constraints for table `tbdocument`
--
ALTER TABLE `tbdocument`
  ADD CONSTRAINT `tbdocument_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbuser` (`user_id`),
  ADD CONSTRAINT `tbdocument_ibfk_2` FOREIGN KEY (`per_id`) REFERENCES `tbpermission` (`per_id`);

--
-- Constraints for table `tbfaculty`
--
ALTER TABLE `tbfaculty`
  ADD CONSTRAINT `tbfaculty_ibfk_1` FOREIGN KEY (`univ_id`) REFERENCES `tbuniversity` (`univ_id`);

--
-- Constraints for table `tblogin`
--
ALTER TABLE `tblogin`
  ADD CONSTRAINT `tblogin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbuser` (`user_id`),
  ADD CONSTRAINT `tblogin_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbuser` (`user_id`),
  ADD CONSTRAINT `tblogin_ibfk_3` FOREIGN KEY (`role_id`) REFERENCES `tbrole` (`role_id`),
  ADD CONSTRAINT `tblogin_ibfk_4` FOREIGN KEY (`per_id`) REFERENCES `tbpermission` (`per_id`);

--
-- Constraints for table `tbproject`
--
ALTER TABLE `tbproject`
  ADD CONSTRAINT `tbproject_ibfk_1` FOREIGN KEY (`stu_id`) REFERENCES `tbstudent` (`stu_id`);

--
-- Constraints for table `tbregister`
--
ALTER TABLE `tbregister`
  ADD CONSTRAINT `tbregister_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `tblogin` (`login_id`);

--
-- Constraints for table `tbstudent`
--
ALTER TABLE `tbstudent`
  ADD CONSTRAINT `tbstudent_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `tbfaculty` (`faculty_id`),
  ADD CONSTRAINT `tbstudent_ibfk_2` FOREIGN KEY (`dep_id`) REFERENCES `tbdepartment` (`dep_id`),
  ADD CONSTRAINT `tbstudent_ibfk_3` FOREIGN KEY (`univ_id`) REFERENCES `tbuniversity` (`univ_id`),
  ADD CONSTRAINT `tbstudent_ibfk_4` FOREIGN KEY (`dep_id`) REFERENCES `tbdepartment` (`dep_id`);

--
-- Constraints for table `tbsubdistrict`
--
ALTER TABLE `tbsubdistrict`
  ADD CONSTRAINT `tbsubdistrict_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `tbdistrict` (`district_id`);

--
-- Constraints for table `tbteacher`
--
ALTER TABLE `tbteacher`
  ADD CONSTRAINT `tbteacher_ibfk_1` FOREIGN KEY (`univ_id`) REFERENCES `tbuniversity` (`univ_id`),
  ADD CONSTRAINT `tbteacher_ibfk_2` FOREIGN KEY (`dep_id`) REFERENCES `tbdepartment` (`dep_id`),
  ADD CONSTRAINT `tbteacher_ibfk_3` FOREIGN KEY (`faculty_id`) REFERENCES `tbfaculty` (`faculty_id`);

--
-- Constraints for table `tbthesis`
--
ALTER TABLE `tbthesis`
  ADD CONSTRAINT `tbthesis_ibfk_1` FOREIGN KEY (`per_id`) REFERENCES `tbpermission` (`per_id`),
  ADD CONSTRAINT `tbthesis_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `tbuser` (`user_id`);

--
-- Constraints for table `tbuniversity`
--
ALTER TABLE `tbuniversity`
  ADD CONSTRAINT `tbuniversity_ibfk_1` FOREIGN KEY (`subdistrict_id`) REFERENCES `tbsubdistrict` (`subdistrict_id`);

--
-- Constraints for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD CONSTRAINT `tbuser_ibfk_1` FOREIGN KEY (`subdistrict_id`) REFERENCES `tbsubdistrict` (`subdistrict_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
