-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 26, 2019 at 11:21 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onestepawaydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
CREATE TABLE IF NOT EXISTS `service` (
  `oname` varchar(80) DEFAULT NULL,
  `bname` varchar(80) DEFAULT NULL,
  `oemailid` varchar(80) NOT NULL,
  `opassword` varchar(120) DEFAULT NULL,
  `ocontact` varchar(80) DEFAULT NULL,
  `oservice` varchar(80) DEFAULT NULL,
  `oaddress` varchar(200) DEFAULT NULL,
  `odescribe` varchar(200) DEFAULT NULL,
  `olongitude` decimal(11,6) DEFAULT '0.000000',
  `olatitude` decimal(11,6) DEFAULT '0.000000',
  `imagename` varchar(80) DEFAULT NULL,
  `brating` int(10) DEFAULT '0',
  PRIMARY KEY (`oemailid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`oname`, `bname`, `oemailid`, `opassword`, `ocontact`, `oservice`, `oaddress`, `odescribe`, `olongitude`, `olatitude`, `imagename`, `brating`) VALUES
('Alam jain', 'Alam Plumbing Construction', 'alamjain@gmail.com', 'alam123/', '7000591688', 'Plumber', '86, Dhiraj Nagar Road, Dhiraj Nagar, Indore, Madhya Pradesh 452001', 'M/s. Alam Plumbing Construction was founded in the year 2002 ', '75.904137', '22.742861', 'plumber2.jpg', 2),
('plumber Dhanpa', 'plumber Dhanpa', 'dhanpa@gmail.com', 'dhanpa123/', '8269445840', 'Plumber', 'Teen Puliya, Nanda Nagar, Indore, Madhya Pradesh 452011', 'Best plumber in service in Nanda Nagar', '75.881250', '22.740250', 'plumber3.jpg', 2),
('Deepak plumber', 'Deepak plumber', 'deepak@gmail.com', 'deepak123/', '9977727438', 'Plumber', 'Little Flower, School, Silverwings Appartment, 103, Khajrana Main Rd, Opposite To, Indore, Madhya Pradesh 452001', NULL, '75.924866', '22.750732', 'deepakplumber.jpg', 3),
('JAISWAL PLUMBER WORKS\r\n', 'JAISWAL PLUMBER WORKS\r\n', 'jaiswal@gmail.com', 'jaiswal123/', '9826128271', 'Plumber', '71. Hukumchand Colony, near Auto stand,, Pachkuiya Road, Indore, Madhya Pradesh 452002', NULL, '75.835360', '22.718660', 'jaiswalplumber.png', NULL),
('Plumbers King', 'Plumbers King', 'plumberking@gmail.com', 'plumberking123/', '7747052052', 'Plumber', ' Malharganj, Indore, Madhya Pradesh 452002', NULL, '75.845810', '22.718710', 'plumberking.jpg', NULL),
('Indore Plumber Services', 'Indore Plumber Services', 'indoreplumber@gmail.com', 'indoreplumber123/', '9977849019', 'Plumber', 'sapna sangeeta indore', NULL, '75.867279', '22.699694', 'indoreplumber.jpg', NULL),
('Laxmi Pipes & Fittings Pvt Ltd\r\n', 'Laxmi Pipes & Fittings Pvt Ltd\r\n', 'laxmi@gmail.com', 'laxmi123/', '7312265533', 'Plumber', 'G-13, Ratlam Kothi, Ratlam Kothi, Indore, Madhya Pradesh 452010', 'Best in raatlam kothi', '75.877800', '22.721180', 'laxmiplumber.jpg', NULL),
('Trained Masters Education System', 'Trained Masters Education System', 'tm@gmail.com', 'tm123/', '8349678919', 'Tutor', 'Manali Apartment, MR 10 Rd, Ida Officers Colony, Scheme 54 PU4, Indore, Madhya Pradesh 452010', 'Best home tuition in Indore. Teachers are very experienced and talented.', '75.864121', '22.705243', 'tmcoaching.jpg', NULL),
('Hello Tutors', 'Hello Tutors', 'hello@gmail.com', 'hello123/', '9826056518', 'Tutor', '134, 1st Floor, Apollo Square, Janjeerwala Chouraha, Race Course Road, Indore, Madhya Pradesh 452001', 'The best tution providing service in Indore... Rajesh Sir is the best who understand each and every individual', '75.864121', '22.705243', 'hellotutors.jpg', NULL),
('Best Home Tutor Indore ', 'Private home tuition service', 'besthome@gmail.com', 'besthome123/', '9201010192', 'Tutor', '201 Royal Glory Building, Side Walking Road, Vijay Nagar, Indore, Madhya Pradesh 452010', 'best platform for students as well as tutor', '75.891541', '22.752373', 'besttutor.jpg', NULL),
('Khanna sir', 'KHANNA TUTORIALS', 'khanna@gmail.com', 'khanna123/', '8989851598', 'Tutor', ' U. G. 4, Sanchit Appartment, , Scheme 78, on scheme 74-78 connecting road, Indore, Madhya Pradesh 452010', 'Best for commerce background', '75.864121', '22.705243', 'khanna.jpg', NULL),
('GUPTA sir', 'GUPTA TUTORS', 'gupta@gmail.com', 'gupta123/', '9826960898', 'Tutor', 'MR 3 Road, Mahalaxmi Nagar, Indore, Madhya Pradesh 452010', '\'We offers : 1. Home Tutions at all localities in Indore 2. Regular Analysis of Student by our Tutors. 3. Easy to learn. 4. Competitive exposure. 5. Career Guidance', '75.864121', '22.705243', 'tutor1.jpg', NULL),
('Mahesh Tyagi', 'Tyagi tutors', 't@b.com', 'Tyagi123/', '9898767656', 'Tutor', 'Near satya sai square, Indore', 'Best mathematics coaching                                                \r\n                                            ', '75.895140', '22.755469', 't@b.com.jpg', NULL),
('AC Technicians', 'AC Technicians', 'actech@gmaiil.com', 'actech123/', '7000049696', 'Technician', '11/D, Sector D, Scheme 71, Indore, Madhya Pradesh 452001', 'Air Conditioning Repair service best in indore', '75.870400', '22.716380', 'actech.jpg', 4),
('Mansorr ferrani', 'Mansoor Technician', 'mansoor@gmail.com', 'mansorr123/', '989745789', 'Technician', 'Geeta nagar behind SKPS School', 'Best technician with quick n d reliabe service', '75.892080', '22.714910', 'mansoortech.jpg', 5),
('Guddu bhaiya', 'Guddu Electrician & Technicians', 'guddu@hotmail.com', 'guddu123/', '6533472837', 'Technician', 'MIG Main Road Indore', 'Cheapest service for any kind of tech problem', '75.884500', '22.744050', 'technician1.jpg', 0),
('Dheeraj Mehta', 'DMLT technician', 'DMLT@gmail.com', 'dheeraj123/', '6267346534', 'Technician', 'Near sapna sangeeta square', 'best staff and huge staff for different workds', '75.868889', '22.700752', '', 0),
('Shubhank', 'The Boutique', 'boutiques@gmail.com', 'shubhank123/', '8982970333', 'Fashion Designer', 'Shop No.UG-4, Malwa Santoor Apartment, Opposite Golden Gate, Scheme No.54, Vijay Nagar, Indore, Madhya Pradesh 452010', 'The Boutique has wide rang of kurti, suit and other ladies wear. You will get best of the stitching at this place. Working since 2001.', '75.891541', '22.752373', 'boutique1.jpg', 4),
('Nisha & Jagat', 'Nisha & Jagat Designers', 'nishajagat@gmail.com', 'nisha123/', '6723645398', 'Fashion Designer', 'Floor 2, Nisha & Jagat, 25/1 R.S.Bhandari Marg, 56 dukan rotary Near Reader\'s club,, New Palasia, Indore, Madhya Pradesh 452001', 'Nisha & Jagat is the style galore of Indore with an epic collection of designer \r\nattires. We love to experiment with textile art in amazing new ways', '75.865318', '22.726450', 'boutique2.jpg', 5),
('Roopsi Fashions', 'Roopsi Fashions', 'roopsi@gmail.com', 'roopsi123/', '9832948576', 'Fashion Designer', ' 2,Silver Arc Plaza, Rau, Indore, Madhya Pradesh 452001', '\"Its a nice place for designer sarees and lahangas in centre of Indore city !!!\"', '75.804001', '22.639961', 'boutique3.jpg', 2),
('Libaas Boutique', 'Libaas Boutique', 'libaas@gmail.com', 'libaas123/', '9898358675', 'Fashion Designer', 'HX-24, E7 Extension, E-7, Arera Colony, Bhopal, Madhya Pradesh 462016', 'Manufacturer of Wedding Garments, Designer Suits & Designer Sarees offered \r\nby Libaas Boutique from Bhopal, Madhya Pradesh, India.', '77.439490', '23.217770', 'boutique4.jpg', 0),
('Indore Mechanics Garage', 'Indore Mechanics Garage', 'indoremechanic@gmail.com', 'mechanic123/', '8602084917\r\n', 'Mechanic', '13, Mishra Nagar, Indore, Madhya Pradesh 452009', 'Best in indore', '75.837310', '22.691750', 'mechanic1.jpg', 2),
('Shree ram', 'Shree ram mechanic', 'shreeraam@gmail.com', 'shree123/', '9889774556', 'Mechanic', 'No.-32-C, Sayaji Club Rd, Mechanic Nagar, Badi Bhamori, Indore, Madhya Pradesh 452010', 'Cheapest oil services', '75.891900', '22.749560', 'mechanic1.jpg', 1),
('Punjab Mechanic', 'Punjab ER mechanic', 'punjab@gmail.com', 'punjab123/', '9888877854', 'Mechanic', 'Bhurthala mandher Chandigarh Punjab', 'Vision Automobiles in Vijay Nagar, Indore listed under Car Repair & Services \r\noffering services like Customer Friendly Service Stations, Breakdown Support ', '75.959848', '30.543043', 'mechanic3.jpg', 5),
('Maheendra lalwani', 'Indus mechanics', 'indus@gmail.com', 'indus1233/', '7677654432', 'Mechanic', 'Mechanic nagar ujjain MP', 'Indus Coach Builder, Bhamori, Indore, Madhya Pradesh - Established in 1957, \r\nwe are Manufacturer of AC Bus Body, Staff Bus Body, Mini Bus Body, Bus Bodies', '75.784248', '23.179190', 'mechanic4.jpg', 4),
('Zubeda ', 'Zubeda', 'zubeda@gmail.com', 'zubedaa123/', '8987544673', 'Helper', 'Geeta nagar indore', 'fast and flexible service', '75.892080', '22.714910', 'helper1.jpg', 5),
('Sulekha ', 'Sulekha', 'sulekha@gmail.com', 'sulekha123/', '9898465345', 'Helper', 'Vijay nagar indore', 'Bartan Jhaado pocha khana', '75.891418', '22.758940', 'helper2.jpg', 0),
('Anju ', 'Anju', 'anju@gmail.com', 'anju123/', '9898837465', 'Helper', 'Sapna sangeeta indore', 'Bartan, khaana ,', '75.855797', '22.721239', 'helper3.jpg', 2),
('Kamla', 'Kamla Services', 'kamla123@gmail.com', 'kamala123/', '7878765647', 'Helper', 'patnipura indore', 'Cleaning ', '75.879349', '22.738020', 'helper4.jpg', 4),
('Kamla ', 'Kamla Services', 'kamla@gmail.com', 'kamla123/', '989727655', 'Helper', 'Sapna sangeeta indore', 'Bartan cleaning', '75.855797', '22.721239', 'helper1.jpg', 4),
('BBLUNT Mini Salon', 'BBLUNT Mini Salon', 'bblunt@gmail.com', 'bblunt123/', '7314000109', 'Hair Stylist', ' LG 4, BCM Heights, Scheme No. 54, Indore, Madhya Pradesh 452010', 'The best place in indore for a nice hair styling...', '75.830020', '22.702670', 'hair1.jpg', 1),
('Genius Women salon', 'Genius Women salon', 'Genius@gmail.com', 'genius123/', '07312548585', 'Hair Stylist', 'LG 4- 2 / 5 , Girnar Tower, 6/6 New Palasia ,, Near 56 Shop, near UCO Bank, Indore, Madhya Pradesh 452001', 'Our hair stylists are well trained to personalize fashion forward looks that bring out your best features', '91.903830', '46.360040', 'hair2.jpg', 4),
('Matrix', 'Matrix hair salon', 'matrix@gmail.com', 'matrix123/', '7312456786', 'Hair Stylist', 'Rau indore', 'Matrix Be Beautiful (Sapna Sangeeta Mall) in Sapna Sangeeta Road, Indore \r\nlisted under Unisex Beauty Parlours offering services like Hair Rebonding, Hair ...', '75.804001', '22.639961', 'hair3.jpg', 5),
('Zameer\'s Hair & Skin Salon', 'Zameer\'s Hair & Skin Salon', 'zamer@gmail.com', 'amer123/', '9898345321', 'Hair Stylist', ' 102,Western Business Center,1/6,Opp. Cakes & More, Near Mangilal Doodhwala, New Palasia, Indore, Madhya Pradesh 452001', 'Zameers Salon in New Palasia, Indore listed under Unisex Beauty Parlours \r\noffering services like Hair Colour Application, Offer Home Services, Skin \r\nTreatment, ...', '75.723221', '22.535151', 'hair4.jpg', 3),
('Trisatya Enterprises(Godrej Interio)', 'Trisatya Enterprises(Godrej Interio)', 'trisatya@gmail.com', 'trisatya123/', '9898847564', 'Furniture Specialist', ' 63 A/B, , Indore, Madhya Pradesh 452010', 'Trisatya Enterprises in Vijay Nagar, Indore is a top company in the category \r\nFurniture Dealers, also known for Modular Kitchen Dealers, Mattress Dealers, \r\nOffice ...', '75.892500', '22.768380', 'furni1.jpg', 4),
('Welcome furniture', 'Welcome furniture', 'welcome@gmail.com', 'welcome123/', '8787567432', 'Furniture Specialist', '23/3, Jawahar Marg, Champa Bagh, Indore, Madhya Pradesh 452007', '\'We have started working in 2006, and now we are one of the best manufacturers, wholesalers, traders in the Industry. One can visit our factory outlet', '75.841860', '22.715240', 'furni2.jpg', 3),
('SANTECNICA', 'SANTECNICA', 'san@gmail.com', 'san123/\r\n', '9883847564', 'Electrician', '140, ORBIT MALL, AB ROAD, Indore, Madhya Pradesh 452010', 'View Santecnica Indore\'s profile on LinkedIn, the world\'s largest professional \r\ncommunity. Santecnica has 1 job listed on their profile.', '75.758904', '22.543449', 'elec1.jpg', 5),
('SANTECNICA', 'SANTECNICA', 'san2@gmail.com', 'san123/\r\n', '9883847564', 'Electrician', '140, ORBIT MALL, AB ROAD, Indore, Madhya Pradesh 452010', 'View Santecnica Indore\'s profile on LinkedIn, the world\'s largest professional \r\ncommunity. Santecnica has 1', '75.758904', '22.543449', 'elec1.jpg', 5),
('Tanay Electricals', 'Tanay Electricals', 'tanay@gmail.com', 'tanay123/', '9898765623', 'Electrician', '2143-D,sudama nagar,jaroliya market, Indore, Madhya Pradesh 452009', 'Switch Boards, Limit Switches & Pressure Switch Retailer offered by Tanay \r\nElectricals from Indore, Madhya Pradesh, India.', '75.829990', '22.689640', 'elec3.jpg', 5),
('SUDHIR KUSHWAH , BAJAJ ELECTRIC', 'SUDHIR KUSHWAH , BAJAJ ELECTRIC', 'sudhir@gmail.com', 'sudhir123/', '9898989898', 'Electrician', '78, Main Rd, Sector A, Slice 2, Aranya Nagar, Vijay Nagar, Indore, Madhya Pradesh 452010', 'ushwaha Auto & Electric in Vijay Nagar, Indore listed under Battery Dealers \r\noffering services like 24x7 ', '75.890750', '22.768760', 'elec4.jpg', 4),
('Ador Welding Limited\r\n', 'Ador Welding Limited\r\n', 'ador@gmail.com', 'ador123/', '7312494220', 'Welder', '402, Apollo Trade Center, Ambedkar Square, Geeta Bhavan - Chouraha, A.B. Road, Indore, Madhya Pradesh 452001', 'Ador Welding Limited (formerly known as Advani–Oerlikon Limited) is an \r\nindustrial ... Since it\'s inception (1951), Ador Welding Ltd. (AWL) has gone a long \r\nway to ... plant at Raipur, Ch', '75.864121', '22.705243', 'weld1.jpg', 4),
('Naval Gas Welding - Shraddha Bike Point', 'Naval Gas Welding - Shraddha Bike Point', 'naval@gmail.com', 'naval123/', '9898984567', 'Welder', '181, Badi Bhamori Square, Badi Bhamori, Nanda Nagar, Indore, Madhya Pradesh 452010', 'Naval Gas Welding - Shraddha Bike Point is leading Bike Dealers in Indore : \r\nIndia - AllInfoNe', '75.804001', '22.639961', 'weld2.jpg', 1),
('D & H India Limited', 'D & H India Limited', 'dh@gmail.com', 'dh123/', '9893454454', 'Welder', 'Plot ‘A’, Sector ‘A’, Industrial Area, Sanwer Road, Indore, Madhya Pradesh 452015', 'Formerly \'D & H Welding Electrodes (India) Ltd.\' ... D & H India Limited offers a \r\nwide range of Welding Consumables ', '75.892190', '22.740590', 'weld3.jpg', 5),
('Krishna ', 'Krishna Welder', 'krishna123@gmail.com', 'krishna123/', '9898847231', 'Welder', 'Sundar Nagar, Indore, Madhya Pradesh 452011', 'Shri Ram Krishna Bag Colony, Dhiraj Nagar, Khajrana is a Locality in Indore City \r\nin Indore', '75.515991', '22.824459', 'weld4.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `name` text NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `password` varchar(10000) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `service` text NOT NULL,
  `address` text NOT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `emailid`, `password`, `contact`, `service`, `address`) VALUES
('Siddharth Varangaonkar', 'sidvarangaonkar1905@gmail.com', 'sha256$QYtIcoB8$1dd44ac4df20f8620b949cb8042a60ee1e6cff0546cc098fd88943eb8a6a25a2', '9926053529', 'Technician', 'ab 87,sch no 54,sneh tower,above sbi bhamori branch,vijay nagar'),
('Siddharth Varangaonkar', 'sidvarangaonkr1905@gmail.com', 'sha256$E0m6zkqF$8b5722f82ac6eec6cf8f3040c7481a5a25b392d3c73efd3d251b644231b92b14', '9926053529', 'Please select your Service', 'ab 87,sch no 54,sneh tower,above sbi bhamori branch,vijay nagar'),
('Sandeep Varangaonkar', 'kunnu@gmail.co.in', 'sha256$4x5Iv24b$9923de5066ff05403cf79c120ef52522b47e503179071eb70c1c067ab9deb4d5', '9926053529', 'Plumber', 'ab 87,sch no 54,sneh tower,above sbi bhamori branch,vijay nagar'),
('', '', 'sha256$xOz2u4Yc$e266ab665a39f02ffd80fc133959132365a9731ae739a3aa57efb77168e88104', '', 'Please select your Service', ''),
('suyash', 'suyash@gmail.com', 'sha256$lHFgTSsS$58f35995ffc253ec07b012d4a3cb53810e46ed52a45264d765f99a857d806c3d', '5455656565', 'Technician', 'jbh'),
('bjha', 'su@gmail.com', 'sha256$8yBn8BTt$b5488348eeb211bcda6dc89aa0b1522d584cd4acd2169774bc0eacd602f773a8', '9926053529', 'Please select your Service', 'ab 87,sch no 54,sneh tower,above sbi bhamori branch,vijay nagar'),
('Siddharth Varangaonkar', 'sidavarangaonkar1905@gmail.com', 'sha256$IESa7L8q$ac5e5887d6a74133c6e50b824ed15ab9ca275a5f47d8defaa41a8075b5513e75', '9926053529', 'Plumber', 'ab 87,sch no 54,sneh tower,above sbi bhamori branch,vijay nagar'),
('Siddharth Varangaonkar', 'shachitajains@gmail.com', 'sha256$EhiXW901$62d93b96def976135cdb47d78608dc54a7c39abc9470ba4d184b6d4dafabd28c', '9926053529', 'Plumber', 'ab 87,sch no 54,sneh tower,above sbi bhamori branch,vijay nagar'),
('Siddharth Varangaonkar', 'si2varangaonkar1905@gmail.com', 'Siddharth123/', '9926053529', 'Plumber', 'ab 87,sch no 54,sneh tower,above sbi bhamori branch,vijay nagar'),
('Siddharth Varangaonkar', 'udit@gmail.co1', '0', '0', 'Tutor', 'ab 87,sch no 54,sneh tower,above sbi bhamori branch,vijay nagar'),
('manvendra@gmail.co', 'manvendra@gmail.co', 'Manvendra123/', '1232115355', 'Technician', 'ab 87,sch no 54,sneh tower,above sbi bhamori branch,vijay nagar'),
('hello', 'hello@gmail.cos', 'Hello123', '9926053520', 'Plumber', 'ab 87,sch no 54,sneh tower,above sbi bhamori branch,vijay nagar'),
('Manvendra ', 'manvendra@yahoo.com', 'Yomama/1', '9898989898', 'Tutor', 'Rasoma ki piche.... website sudharo');

-- --------------------------------------------------------

--
-- Table structure for table `userreview`
--

DROP TABLE IF EXISTS `userreview`;
CREATE TABLE IF NOT EXISTS `userreview` (
  `no` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `bemailid` varchar(200) DEFAULT NULL,
  `emailid` varchar(80) DEFAULT NULL,
  `message` varchar(120) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userreview`
--

INSERT INTO `userreview` (`no`, `name`, `bemailid`, `emailid`, `message`, `rating`) VALUES
(1, 'parth', 'alamjain@gmail.com', 'parth@gmail.com', 'Bad service dissatisfied', 2),
(2, 'Siddharth Varangaonkar', 'deepak@gmail.com', 'sidvarangaonkar1905@gmail.com', 'dasd', 4),
(3, 'meraanaam', 'alamjain@gmail.com', 'meranamsad', 'dsmaeiaod', 4),
(4, 'Shachita jain', 'deepak@gmail.com', 'shachitajains@gmail.com', 'east or west deepak is the best!', 5),
(5, 'my name is gonsalves', 'deepak@gmail.com', 'meduniya me akela hu', 'Nicce service', 0),
(8, 'Parth ', 'alamjain@gmail.com', 'varan', 'varan', 0),
(9, 'Parth ', 'alamjain@gmail.com', 'varan', 'varan', 0),
(10, 'Siddharth Varangaonkar', 'alamjain@gmail.com', 'sidvarangaonkar1905@gmail.com', 'Nice plumber with knowledge', 3),
(11, 'Manvendra', 'deepak@gmail.com', 'manvendra@gmail.com', 'Me manvinder from indore', 3),
(12, 'Manvendra', 'deepak@gmail.com', 'manvendra@gmail.com', 'Me manvinder from indore', 3),
(13, 'Ramesh Surana', 'alamjain@gmail.com', 'rameshsurana@gmail.com', 'satisfied with quick responsive service', 4),
(14, 'Kunnu singh', 'dhanpa@gmail.com', 'kunnu@gmail.com', 'Last time i was satisfied wbut not this time', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
