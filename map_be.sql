-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: map_db
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `name_province` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `area_of_whole_province` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `industry_land` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `commercial_land` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `services_land` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_agricultural_land` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_forestry_land` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_fishery_land` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name_province`),
  CONSTRAINT `FK_area_to_province` FOREIGN KEY (`name_province`) REFERENCES `province` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attraction`
--

DROP TABLE IF EXISTS `attraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attraction` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `province_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lat` float NOT NULL,
  `longt` float NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decribes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_attraction_to_province` (`province_name`),
  CONSTRAINT `FK_attraction_to_province` FOREIGN KEY (`province_name`) REFERENCES `province` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attraction`
--

LOCK TABLES `attraction` WRITE;
/*!40000 ALTER TABLE `attraction` DISABLE KEYS */;
/*!40000 ALTER TABLE `attraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `climate`
--

DROP TABLE IF EXISTS `climate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `climate` (
  `name_province` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `generals_feature` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `annual_average_temperature` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `annual_average_humidity` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `rain_per_year` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`name_province`),
  CONSTRAINT `FK_climate_to_province` FOREIGN KEY (`name_province`) REFERENCES `province` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `climate`
--

LOCK TABLES `climate` WRITE;
/*!40000 ALTER TABLE `climate` DISABLE KEYS */;
INSERT INTO `climate` VALUES ('Đà Nẵng','Thời tiết Đà Nẵng là nơi chuyển tiếp đan xen giữa khí hậu miền Bắc và miền Nam, với tính trội là khí hậu nhiệt đới ở phía Nam. Mỗi năm có 2 mùa rõ rệt: mùa khô từ tháng 1 đến tháng 7 và mùa mưa kéo dài từ tháng 8 đến tháng 12, thỉnh thoảng có những đợt rét mùa đông nhưng không đậm và không kéo dài.','Nhiệt độ trung bình hàng năm khoảng 25,6ºC, cao nhất là tháng 6 (29,2ºC), thấp nhất là tháng 2 (21,2ºC). Riêng vùng rừng núi Bà Nà ở độ cao gần 1.500m có nhiệt độ trung bình từ 17ºC đến 20ºC.','Độ ẩm không khí trung bình hàng năm là 83,4%','Lượng mưa trung bình hàng năm là 1.355mm, cao nhất là tháng 10 với 266mm, thấp nhất là tháng 2 với 7mm'),('Hà Tĩnh','Nằm trong khu vực nhiệt đới gió mùa, Hà Tĩnh là tỉnh chịu ảnh hưởng lớn của khí hậu chuyển tiếp của miền Bắc và miền Nam, với đặc trưng khí hậu nhiệt đới điển hình của miền Nam và có một mùa đông giá lạnh của miền Bắc, nên thời tiết, khí hậu ở Hà Tĩnh rất khắc nghiệt.','Nhiệt độ trung bình từ 24,70C (tháng 4) đến 32,90 (tháng 6)','80% - 84%','2500 mm - 2650 mm'),('Quảng Bình','Quảng Bình nằm ở vùng nhiệt đới gió mùa và luôn bị tác động bởi khí hậu của phía Bắc và phía Nam và được chia làm hai mùa rõ rệt:\r\n    Mùa mưa từ tháng 9 đến tháng 3 năm sau. Lượng mưa trung bình hàng năm 2.000 - 2.300mm/năm. Thời gian mưa tập trung vào các tháng 9, 10 và 11.\r\n    Mùa khô từ tháng 4 đến tháng 8 với nhiệt độ trung bình 24oC - 25oC. Ba tháng có nhiệt độ cao nhất là tháng 6, 7 và 8.\r\n    Nhiệt độ bình quân các tháng trong năm của thành phố Đồng Hới, tỉnh lỵ tỉnh Quảng Bình.','Nhiệt độ trung bình từ 19.5 độ C (tháng 1) đến 30.5 (tháng 6, 7)','83 – 84%','2.000 mm – 2.500 mm'),('Quảng Trị','Quảng Trị nằm ở phía Nam của Bắc Trung Bộ, trọn vẹn trong khu vực nhiệt đới ẩm gió mùa, là vùng chuyển tiếp giữa hai miền khí hậu. Miền khí hậu phía bắc có mùa đông lạnh và phía nam nóng ẩm quanh năm. Ở vùng này khí hậu khắc nghiệt, chịu hậu quả nặng nề của gió tây nam khô nóng, bão, mưa lớn, khí hậu biến động mạnh, thời tiết diễn biến thất thường, vì vậy trong sản xuất và đời sống người dân gặp không ít khó khăn.','Nhiệt độ trung bình hàng năm dao động từ 20-25 °C, tháng 7 cao nhất còn tháng 1 thấp nhất','Quảng Trị có độ ẩm tương đối, trung bình năm khoảng 83-88%',' khoảng 2.000–2.700 mm'),('Thừa Thiên Huế','Khí hậu Thừa Thiên Huế gần giống như Quảng Trị với kiểu khí hậu nhiệt đới gió mùa. Những tháng đầu năm có nắng ấm. Thỉnh thoảng lụt vào tháng 5. Các tháng 6, 7 và 8 có gió mạnh. Mưa lũ và có gió đông vào tháng 9 và 10. Tháng 11 thường có lụt. Cuối năm mưa kéo dài. Nhưng hiện nay do chịu tác động của biến đổi khí hậu nên từ tháng 3 đến tháng 8 nắng nóng lên đến đỉnh điểm. Các tháng 9, 10, 11 thường xuyên có bão. Từ tháng 12 đến tháng 2 năm sau là giai đoạn gió mùa đông bắc kéo về gây mưa to kèm theo đó lũ trên các sông tăng nhanh.','24°C - 25°C','87.6%','khoảng 2500mm/năm');
/*!40000 ALTER TABLE `climate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `economy`
--

DROP TABLE IF EXISTS `economy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `economy` (
  `name_province` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gdp` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `construction_industry` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `trade_services` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `agriculture_forestry_seafood` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `_export` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `_import` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `number_bussiness_and_projects` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_register_investment_capital` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_industries_fields_of_investment` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`name_province`),
  CONSTRAINT `economy_ibfk_1` FOREIGN KEY (`name_province`) REFERENCES `province` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `economy`
--

LOCK TABLES `economy` WRITE;
/*!40000 ALTER TABLE `economy` DISABLE KEYS */;
INSERT INTO `economy` VALUES ('Đà Nẵng','GRDP: 101.233 tỷ đồng/GRDP bình quân đầu người: 87.16 triệu đồng','36%','62%','2%','1,623 tỷ đồng','1,365 tỷ đồng','','668 triệu USD (2019)',''),('Hà Tĩnh','81.818,42 tỷ đồng','41.95%','33.75%','15.81%','144,3 triệu USD','105,9 triệu USD','3.743 doanh nghiệp','19.749 tỷ đồng',''),('Quảng Bình','GRDP đạt 33.282 tỉ Đồng/GRDP bình quân đầu người đạt 37,5 triệu đồng','','','','','','','',''),('Quảng Trị','GRDP đạt 34.098,7 tỷ đồng/GRDP bình quân đầu người là 53,9 triệu đồng','25,67%','52.48%','21,85%','0.2 tỷ USD','','','20.2 triệu USD',''),('Thừa Thiên Huế','GRDP: 51.3228 tỉ đồng (2,2079 tỉ USD)/GRDP đầu người: 46,7 triệu đồng (2.007 USD)','31,81%','48,40%','11,38%','950 triệu USD','','','','');
/*!40000 ALTER TABLE `economy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_and_training_system`
--

DROP TABLE IF EXISTS `education_and_training_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_and_training_system` (
  `name_province` varchar(256) NOT NULL,
  `system_school` text,
  PRIMARY KEY (`name_province`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_and_training_system`
--

LOCK TABLES `education_and_training_system` WRITE;
/*!40000 ALTER TABLE `education_and_training_system` DISABLE KEYS */;
INSERT INTO `education_and_training_system` VALUES ('Đà Nẵng','- Hiện nay trên địa bàn thành phố có 32 trường Trung học Phổ thông, 60 trường Trung học Cơ sở, 99 trường Tiểu học, bên cạnh đó còn có 4 trường Mẫu giáo, 213 trường mầm non với 1.249 lớp học, 2.422 giáo viên và 37,8 nghìn học sinh'),('Hà Tĩnh','- Toàn tỉnh có 667 trường (gồm 254 trường mầm non, 221 trường tiểu học, 147 trường THCS,  45 trường THPT.\n- 23 cơ sở giáo dục nghề nghiệp, trong đó có 4 trường cao đẳng, 1 phân hiệu của trường cao đẳng, 4 trường trung cấp, 10 trung tâm GDNN-GDTX cấp huyện, 4 cơ sở dạy nghề khác.'),('Quảng Bình','- Toàn tỉnh có 640 trường và cơ sở giáo dục - đào tạo. Có 184 trường và cơ sở giáo dục mầm non, 247 trường tiểu học, 11 trường tiểu học và trung học cơ sở, 144 trường trung học cơ sở, 6 trường trung học cơ sở và phổ thông trung học, 27 trường phổ thông trung học '),('Quảng Trị','- 223 trường học (Tiểu học 67 trường, THCS 43 trường, giảm 02 trường; phổ thông cơ sở 80 trường,  THPT 24 trường; Trung học 6 trường,Phổ thông 02 trường, Liên cấp 01 trường, 167 trường mầm non)'),('Thừa Thiên Huế','- 204 trường mẫu giáo \n- 196 trường phổ thông (196 trường tiểu học, 114 trường trung học cở sở, 36 trường trung học phổ thông, 18 trường phổ thông cơ sở, 1 trường trung học)\n- 1 trường trung cấp chuyện nghiệp\n- 5 trường cao đẳng\n- 10 trường đại học');
/*!40000 ALTER TABLE `education_and_training_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geographical_location_topography`
--

DROP TABLE IF EXISTS `geographical_location_topography`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geographical_location_topography` (
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `critical_position` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `topography_geology` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`province`),
  KEY `province` (`province`),
  CONSTRAINT `FK_geotopo_to_province` FOREIGN KEY (`province`) REFERENCES `province` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geographical_location_topography`
--

LOCK TABLES `geographical_location_topography` WRITE;
/*!40000 ALTER TABLE `geographical_location_topography` DISABLE KEYS */;
INSERT INTO `geographical_location_topography` VALUES ('Đà Nẵng','Đà Nẵng nằm ở vị trí 15o55’20” đến 16o14’10” vĩ tuyến Bắc và 107o18’30” đến 108o20’00” kinh tuyến Đông, Bắc giáp tỉnh Thừa Thiên - Huế, Tây và Nam giáp tỉnh Quảng Nam, Đông giáp Biển Đông.\r\n    Đà Nẵng nằm ở Trung độ của nước Việt Nam, trên trục giao thông Bắc - Nam về đường bộ, đường sắt, đường biển và đường hàng không, trung tâm thành phố cách Thủ đô Hà Nội 764km về phía Bắc, cách thành phố Hồ Chí Minh 964 km về phía Nam.','Địa hình thành phố Đà Nẵng đa dạng, bị chia cắt mạnh, hướng dốc từ Tây - Bắc xuống Đông - Nam, có thể chia thành 3 dạng địa hình chính: Địa hình núi cao; Địa hình đồi gò; Địa hình đồng bằng.\r\n    - Địa hình núi cao: Tại Đà Nẵng, địa hình núi cao phân bố ở phía Tây và Tây Bắc của thành phố, ở các xã: Hoà Bắc, Hoà Liên, Hoà Ninh, Hòa Phú (huyện Hoà Vang) với độ cao trung bình từ 500 – 1.000m, gồm nhiều dãy núi nối tiếp nhau đâm ra biển, đây là vùng địa hình có độ chia cắt mạnh, một số thung lũng xen kẽ với núi cao như Bà Nà (1.487m), Hoi Mít (1.292m), Núi Mân (1.712m).\r\n    - Địa hình đồi gò: Phân bố ở phía Tây, Tây Bắc thành phố, gồm các xã Hoà Liên, Hoà Sơn, Hoà Nhơn, Hoà Phong và một phần các xã Hoà Khương, Hoà Ninh (huyện Hoà Vang). Đây là khu vực chuyển tiếp giữa núi cao và đồng bằng, đặc trưng của vùng này là dạng đồi bát úp, bạc màu, các loại đá biến chất, thường trơ sỏi đá, có độ cao trung bình từ 50 - 100m, ở đây có nhiều đồi lượn sóng, mức độ chia cắt ít, độ dốc thay đổi từ 30 – 80m.\r\n    - Địa hình đồng bằng: Phân bố chủ yếu ở phía Đông thành phố, dọc theo các con sông lớn: Sông Yên, sông Tuý Loan, sông Cẩm Lệ, sông Vĩnh Điện, sông Cu Đê, sông Hàn và dọc theo biển. Địa hình đồng bằng bị chia cắt nhiều và nhỏ, hẹp, có nhiều hướng dốc, dọc theo bờ biển. Đây là vùng địa hình tương đối thấp, tập trung dân cư, nhiều cơ sở nông nghiệp, công nghiệp, dịch vụ, quân sự và các khu chức năng của thành phố.'),('Hà Tĩnh','Hà Tĩnh trải dài từ 17°54’ đến 18°37’ vĩ Bắc và từ 106°30’ đến 105°07’ kinh Đông. Phía Bắc giáp tỉnh Nghệ An, phía Nam giáp tỉnh Quảng Bình, phía Tây giáp hai tỉnh Borikhamxay và Khammuane của Lào, phía Đông giáp Biển Đông (Vịnh Bắc Bộ)','Tỉnh Hà Tĩnh được chia làm bốn loại địa hình cơ bản gồm:\r\n    - Vùng núi cao nằm ở phía Đông của dãy Trường Sơn, địa hình dốc bị chia cắt mạnh, tạo nên thành những thung lũng nhỏ hẹp chạy dọc theo các triền sông lớn của hệ thống sông Ngàn Phố, Ngàn Sâu và Rào Trổ.\r\n    - Vùng trung du và bán sơn địa là vùng chuyển từ vùng núi cao xuống vùng đồng bằng, chạy dọc phía tây nam đường Hồ Chí Minh, địa hình có dạng xen lẫn giữa các đồi trung bình và thấp với đất ruộng.\r\n    - Vùng đồng bằng chạy dọc hai bên Quốc lộ 1A theo chân núi Trà Sơn và dải ven biển với địa hình tương đối bằng phẳng do quá trình bồi tụ phù sa của các sông, phù sa biển trên các vỏ phong hoá Feralit hay trầm tích biển.\r\n    - Vùng ven biển nằm ở phía Đông đường Quốc lộ 1A, địa hình vùng này được tạo bởi những đụn cát, ở những vùng trũng được lấp đầy bởi những trầm tích, đầm phá hay phù sa. Ngoài ra, vùng này còn xuất hiện các dãy đồi núi sót chạy dọc ven biển và nhiều bãi ngập mặn được tạo ra từ nhiều cửa sông.'),('Quảng Bình','Tỉnh Quảng Bình nằm trải dài từ 16°55’ đến 18°05’ vĩ Bắc và từ 105°37’ đến 107°00’ kinh Đông, cách thủ đô Hà Nội 500 km về phía Bắc, cách Thành phố Hồ Chí Minh 1.220 km về phía Nam và cách thành phố Đà Nẵng 267 km về phía Nam theo đường Quốc lộ 1A, có vị trí địa lý phía bắc giáp Hà Tĩnh, phía nam giáp Quảng Trị, Phía Tây giáp tỉnh Khammuane, tỉnh Savannakhet, Lào với đường biên giới 201.87 km, Phía đông giáp Biển Đông','Quảng Bình là tỉnh ven biển Bắc Trung Bộ, chiếm vị trí quan trọng trong nền kinh tế quốc dân và đảm bảo quốc phòng, an ninh của cả nước. Quảng Bình là vùng đất văn vật, có di chỉ văn hoá Bàu Tró, trống đồng Phù Lưu và nhiều di tích lịch sử, văn hoá nổi tiếng khác. Dải đất Quảng Bình như một bức tranh hoành tráng, có rừng, có biển, có nhiều cảnh quan thiên nhiên đẹp, nổi tiếng với Di sản Thiên nhiên thế giới Phong Nha - Kẻ Bàng. Quảng Bình là một tỉnh có nhiều loại tài nguyên khoáng sản, tiêu biểu như vàng, đá vôi và kaolin chất lượng cao, trữ lượng lớn, vật liệu xây dựng, nhiều điểm nước khoáng nước nóng nổi tiếng,... nơi hội tụ nhiều tính chất đa dạng của địa chất, địa hình, địa mạo minh chứng hùng hồn cho lịch sử hình thành và phát triển của vỏ trái đất ở khu vực. Quảng Bình cũng là địa bàn chịu ảnh hưởng khá nặng nề của các hiện tượng thời tiết khắc nghiệt, đặc biệt là thiên tai và sự cố môi trường như bão, lũ lụt, hạn hán và các tai biến địa chất khác.'),('Quảng Trị','Phía Bắc giáp tỉnh Quảng Bình, phía Nam giáp tỉnh Thừa Thiên Huế, phía Tây giáp biên giới các tỉnh Savannakhet và Saravane của Cộng hòa Dân chủ Nhân dân Lào, phía Đông giáp biển Đông. Tỉnh lỵ của Quảng Trị là thành phố Đông Hà nằm cách thủ đô Hà Nội 593 km về phía Nam, cách Thành phố Hồ Chí Minh 1.120 km về phía Bắc, cách Huế 66 km về phía Bắc theo đường Quốc lộ 1A.\r\nQuảng Trị là một tỉnh nằm ở dải đất miền Trung Việt Nam, nơi chuyển tiếp giữa hai miền địa lý Bắc - Nam. Tọa độ địa lý trên đất liền Quảng Trị ở vào vị trí: Cực Bắc là 17°10′ vĩ Bắc,  Cực Nam là 16°18′ vĩ Bắc, Cực Đông là 107°23′58″ kinh Đông, Cực Tây là 106°28′55″ kinh Đông.','Địa hình đa dạng bao gồm núi, đồi, đồng bằng, cồn cát và bãi biển chạy theo hướng tây bắc - đông nam. Quảng Trị có nhiều sông ngòi với 7 hệ thống sông chính là sông Thạch Hãn, sông Bến Hải, sông Hiếu, sông Ô Lâu, sông Bến Đá, sông Xê Pôn và sông Sê Păng Hiêng. Nhìn đại thể, địa hình núi, đồi và đồng bằng Quảng Trị chạy dài theo hướng tây bắc - đông nam và trùng với phương của đường bờ biển.\r\n    - Địa hình núi cao. Phân bố ở phía Tây từ dãy Trường Sơn đến miền đồi bát úp, chiếm diện tích lớn nhất, có độ cao từ 250–2000 m, độ dốc 20-300. Địa hình phân cắt mạnh, độ dốc lớn, quá trình xâm thực và rửa trôi mạnh. Các khối núi điển hình là Động Voi Mẹp, Động Sa Mui, Động Châu, Động Vàng. Địa hình vùng núi có thể phát triển trồng rừng, trồng cây lâu năm và chăn nuôi đại gia súc. Tuy nhiên phần lớn địa hình bị chia cắt mạnh, sông suối, đèo dốc nên đi lại khó khăn, làm hạn chế trong việc xây dựng cơ sở hạ tầng như giao thông, mạng lưới điện... cũng như tổ chức đời sống xã hội và sản xuất. Tuy nhiên có tiềm năng thủy điện nhỏ khá phong phú.\r\n\r\n    - Địa hình gò đồi, núi thấp.Là phần chuyển tiếp từ địa hình núi cao đến địa hình đồng bằng, chạy dài dọc theo tỉnh. Có độ cao từ 50-250m, một vài nơi có độ cao trên 500 m. Địa hình gò đồi, núi thấp (vùng gò đồi trung du) tạo nên các dải thoải, lượn sóng, độ phân cắt từ sâu đến trung bình. Khối bazan Gio Linh - Cam Lộ có độ cao xấp xỉ 100 – 250 m dạng bán bình nguyên, lượn sóng thoải, vỏ phong hóa dày, khối bazan Vĩnh Linh nằm sát ven biển, có độ cao tuyệt đối từ 50-100m. Địa hình gò đồi, núi thấp thích hợp cho trồng cây công nghiệp như cao su, hồ tiêu, cây ăn quả lâu năm.\r\n\r\n    - Địa hình đồng bằng.Là những vùng đất được bồi đắp phù sa từ hệ thống các sông, địa hình tương đối bằng phẳng, có độ cao tuyệt đối từ 25–30 m. Bao gồm đồng bằng Triệu Phong được bồi tụ từ phù sa sông Thạch Hãn khá màu mỡ; đồng bằng Hải Lăng, đồng bằng sông Bến Hải tương đối phì nhiêu. Đây là vùng trọng điểm sản xuất lương thực, nhất là sản xuất lúa ở các huyện Hải Lăng, Triệu Phong, Gio Linh, Vĩnh Linh.\r\n\r\n    - Địa hình ven biển.Chủ yếu là các cồn cát, đụn cát phân bố dọc ven biển. Địa hình tương đối bằng phẳng, thuận lợi cho việc phân bố dân cư. Một số khu vực có địa hình phân hóa thành các bồn trũng cục bộ dễ bị ngập úng khi có mưa lớn hoặc một số khu vực chỉ là các cồn cát khô hạn, sản xuất chưa thuận lợi, làm cho đời sống dân cư thiếu ổn định.'),('Thừa Thiên Huế','Tỉnh Thừa Thiên Huế nằm ở duyên hải miền trung Việt Nam bao gồm phần đất liền và phần lãnh hải thuộc thềm lục địa biển Đông. 	Phần đất liền Thừa Thiên Huế có tọa độ địa lý như sau:\r\n    Điểm cực Bắc: 16°44\' 30\'\' vĩ Bắc và 107° 23\' 48\'\' kinh Đông tại thôn Giáp Tây, xã Điền Hương, huyện Phong Điền.\r\n    Điểm cực Nam: 15° 59\' 30\'\' vĩ Bắc và 107° 41\' 52\'\' kinh Đông ở đỉnh núi cực nam, xã Thượng Nhật, huyện Nam Đông.\r\n    Điểm cực Tây: 16° 22\' 45\'\' vĩ Bắc và 107° 00\' 56\'\' kinh Đông tại bản Paré, xã Hồng Thủy, huyện A Lưới.\r\n    Điểm cực Đông: 16° 13\' 18\'\' vĩ Bắc và 108° 12\' 57\'\' kinh Đông tại bờ phía Đông đảo Sơn Chà, thị trấn Lăng Cô, huyện Phú Lộc.','Địa hình Thừa Thiên Huế khá phức tạp gồm nhiều dạng: vùng đồi núi, đồng bằng, biển. Cấu trúc của địa hình theo chiều ngang từ đông sang tây gồm: biển, đầm phá, đồng bằng nhỏ hẹp, vùng đồi thấp và núi.\r\n    - Vùng đồi núi: chiếm khoảng 75% diện tích của tỉnh, là bộ phận phía nam của dải Trường Sơn Bắc. Dãy núi phía tây chạy theo hướng tây bắc-đông nam càng về phía nam càng cao dần và bẻ quặt theo hướng tây - đông (dãy Bạch Mã). Độ cao trung bình từ 500m – 600m, độ cao này tăng dần về phía tây, phía nam và đông nam. Những đỉnh cao đều cấu tạo từ đá Granit đỉnh nhọn, sườn dốc. Hệ thống núi thống nhất thành khối liên tục, sườn dốc, bị sông ngòi cắt xẻ nên khá hiểm trở. Giữa vùng núi cao là những thung lũng màu mỡ.\r\n    - Vùng đồng bằng duyên hải: Dải đồng bằng duyên hải: chiếm khoảng 15,3% diện tích đất tự nhiên, bao gồm những cồn cát duyên hải, các bãi phù sa biển, vũng, phá, các vùng trũng chưa được phù sa bồi đắp đầy đủ.Đồng bằng Thừa Thiên Huế: hẹp ngang, nơi rộng nhất khoảng 16 km và hẹp nhất chỉ 4 km (Cầu Hai). Hoạt động sản xuất nông nghiệp theo chiều ngang này bị thu hẹp hơn do hàng năm có sự xâm lấn của những trảng cát nội đồng và dải cát ven biển. Phía tây đồng bằng tiếp cận với vùng đồi núi có độ chênh cao khoảng 10m. Đây là vùng có thổ nhưỡng thô gồm phù sa lẫn cát sỏi, đất nghèo chất mùn. Phía đông là dải đất thấp xuôi về đầm phá ven biển gồm những đồng bằng nhỏ. Do nguồn gốc hình thành khác nhau nên thành phần vật chất cấu tạo không đồng nhất: những bãi cát rộng của Phong Điền, những vùng cát xen kẽ giữa các vùng đồi đá gốc (Phò Trạch, Phong Thu), các đồng bằng hẹp do phù sa sông bồi tụ như Quảng Điền, Phú Vang, Hương Thuỷ ...đất khá phì nhiêu, thích hợp để trồng trọt cây lương thực.\r\n    -Vùng đầm phá Là một hệ cảnh quan độc đáo của Thừa Thiên Huế, vùng đầm phá có diện tích 22.040 ha, dài 68 km, bắt đầu từ cửa sông Ô Lâu phía bắc chạy song song với bờ biển đến cửa Tư Hiền, chiều rộng từ 1 đến 6 km. Độ sâu tăng dần từ Tây sang Đông. Hiện nay sự lắng tụ phù sa, làm độ sâu của đầm phá đang có chiều hướng cạn dần. Vùng đầm phá Thừa Thiên Huế có giá trị kinh tế lớn, nổi bật là sự phong phú về nguồn lợi thuỷ sản nước lợ và rừng nước mặn. Đầm phá cùng với hệ thống sông ngòi tạo thành một mạng lưới giao thông đường thuỷ nối các vùng từ Bắc đến Nam dọc theo tuyến biển khá thuận lợi.');
/*!40000 ALTER TABLE `geographical_location_topography` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `human_resource`
--

DROP TABLE IF EXISTS `human_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `human_resource` (
  `name_province` varchar(256) NOT NULL,
  `population` varchar(256) DEFAULT NULL,
  `number_working_age` varchar(256) DEFAULT NULL,
  `trained_workers` varchar(256) DEFAULT NULL,
  `untrained_workers` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`name_province`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `human_resource`
--

LOCK TABLES `human_resource` WRITE;
/*!40000 ALTER TABLE `human_resource` DISABLE KEYS */;
INSERT INTO `human_resource` VALUES ('Đà Nẵng','1.020.44 người','581.400 người','',''),('Hà Tĩnh','1.296.622 người','715.476 người','72%','28%'),('Quảng Bình','901.984 người','532.469 người','15.945 người',''),('Quảng Trị','638.627 người','367.257 người','241.949 người (65.88% của tổng 367.257 người lao động )','125.298 người (35.12%)'),('Thừa Thiên Huế','1133700 người','621.715 người','','');
/*!40000 ALTER TABLE `human_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infrastructure`
--

DROP TABLE IF EXISTS `infrastructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `infrastructure` (
  `name_province` varchar(256) NOT NULL,
  `airport` text,
  `seaport` text,
  `riverport` text,
  `electricity_distribution_system` text,
  `water_supply_system` text,
  `waste_water_treatment_system` text,
  `transportation` text,
  `post_and_telecommunication` text,
  `development_center` text,
  PRIMARY KEY (`name_province`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infrastructure`
--

LOCK TABLES `infrastructure` WRITE;
/*!40000 ALTER TABLE `infrastructure` DISABLE KEYS */;
INSERT INTO `infrastructure` VALUES ('Đà Nẵng','Sân bay Quốc tế Đà Nẵng là cảng hàng không lớn nhất khu vực miền Trung - Tây Nguyên và lớn thứ ba của Việt Nam, nằm ở quận Hải Châu, cách trung tâm thành phố Đà Nẵng 3 km, với tổng diện tích khu vực sân bay là 842 ha, trong đó diện tích khu vực hàng không dân dụng là 150 ha','cảng Đà Nẵng có ba khu bến: Tiên Sa - Sơn Trà, Liên Chiểu và Thọ Quang.','','Công ty điện lực Đà Nẵng','Công ty cổ phần cấp nước Đà Nẵng','','-Đường bộ: Tính đến thời điểm hiện nay, trên địa bàn thành phố có tổng cộng 2.342 tuyến đường với tổng chiều dài 1396,36 km và 72 cầu có chiều dài lớn hơn 25m (chưa tính các cầu trên đường cao tốc) với tổng chiều dài 14.798,44m.\n-Đường sắt: Tuyến đường sắt huyết mạch Bắc - Nam chạy dọc thành phố với tổng chiều dài khoảng 30 km\n-Hàng không: sân bay quốc tế Đà Nẵng đón 15 triệu lượt khách/năm từ năm 2020 trở đi, tiếp nhận 400.000 - 1.000.000 tấn hàng/năm\n	-Đường thủy: Với một vị trí đặc biệt thuận lợi về giao thông đường biển, nằm gần với đường hàng hải quốc tế, Cảng Đà Nẵng là cảng biển lớn nhất của miền Trung.[155] Cảng Đà Nẵng có độ sâu trung bình từ 15 – 20 m, có khả năng tiếp nhận các tàu lớn có trọng tải đến 40.000 tấn\n    ','Hạ tầng viễn thông công cộng tại thành phố Đà Nẵng gồm có đường kết nối Internet quốc tế qua đường cáp quang biển (SMW3, APG) và đường trên đất liền có tổng dung lượng lên đến 2.500 Gbps. Tính đến cuối năm 2017, trên địa bàn thành phố có 1.560 vị trí lắp đặt trạm BTS của 5 nhà mạng, mạng lưới cung cấp dịch vụ điện thoại cố định (hữu tuyền và vô tuyến) tại Đà Nẵng đã phát triển rộng khắp đến 100% thôn, tổ. Tổng số thuê bao điện thoại (cố định và di động) đạt 2.887.500 thuê bao, thuê bao Internet băng rộng đạt 2.113.794 thuê bao. Tỷ lệ thuê bao Internet băng rộng khoảng 1,4 thuê bao/1 người dân, tỷ lệ thuê bao điện thoại di động khoảng 2,7 thuê bao/1 người dân.','9 khu công nghiệp, 6 cụm khu công nghiệp, 6 khu nông nghiệp công nghệ cao'),('Hà Tĩnh','Không có','6 cảng biển:  Bến cảng xăng dầu LPG Vũng Áng, Bến cảng Nhà máy Nhiệt điện Vũng Áng 1, Bến cảng Xuân Hải, Bến cảng Sơn Dương, Bến cảng Xuân Phổ, Bến cảng Vũng Áng','1 cảng sông: Cảng Hộ Độ','Công ty điện lực Hà Tĩnh','Công ty cổ phần cấp nước Hà Tĩnh','','- Đường bộ: Mạng lưới đường bộ toàn tỉnh có tổng chiều dài là 16.655,16km. Riêng hệ thống đường Quốc lộ và đường tỉnh có dài là 850,03km, trong đó đường Quốc lộ có 07 tuyến với tổng chiều dài 492,50km, đường tỉnh có 10 tuyến với tổng chiều dài là 357,53km.\n- Đường sắt: Đường sắt qua địa bàn Hà Tĩnh là 71km, khổ đường 1m. Trên tuyến có 2 ga hàng hóa, 8 ga hành khách chủ yếu là ga xép;\n- Đường biển: Với chiều dài 137km bờ biển, có 4 cửa biển lớn thuận lợi cho việc vận tải ven biển.\n-Đường thủy nội địa: Hà Tĩnh có 9 tuyến sông với chiều dài 437km. Hầu hết là các sông nhỏ, độ dốc lớn, nhiều thác ghềnh, chiều dài khai thác vận tải ngắn, bị hạn chế bởi tĩnh không cầu đường bộ. Tổng chiều dài tuyến sông đưa vào quản lý khai thác vận tải trên địa bàn tỉnh là 246,5km, trong đó Trung ương quản lý 88,5km, địa phương quản lý 158km.\n    ','Hạ tầng viễn thông phát triển mạnh với  trên 1.690 trạm trạm thu phát sóng thông tin di động (BTS), chiều dài cáp quang  khoảng 6.000 km.. 100% xã có cáp quang đi qua. Thuê bao điện thoại đạt trên 1000.000. Thuê bao Internet đạt trên 50.000. Sóng truyền hình địa phương phủ đến trên 95% diện tích, cùng với các trạm vệ tinh và chuyển tiếp sóng phủ đến 100% diện tích, dân cư của tỉnh.','Hà Tĩnh có 02 khu kinh tế, 03 khu công nghiệp và 23 cụm công nghiệp (CCN)'),('Quảng Bình','sân bay Đồng Hới','Bến cảng Gianh. Bến cảng xăng dầu sông Gianh, bến cảng Hòn La, bến cảng Thắng Lợi','','Công ty điện lực Quảng Bình','Công ty cổ phần cấp nước Quảng Bình','Naphapro','','',''),('Quảng Trị','Không có','1 cảng biển: Bến cảng Cửa Việt','1 cảng sông: Cảng Đông Hà','Công ty điện lực Quảng Trị','Công ty CP nước sạch Quảng Trị','','- Quảng Trị có hệ thống giao thông khá phát triển, thuận lợi cả về đường bộ, đường sắt và đường thủy. Các tuyến quốc lộ được đầu tư nâng cấp, các tuyến đường tỉnh, đường huyện nối các trung tâm phát triển được nhựa hóa. Đến nay, 100% số xã có đường ô tô đến trung tâm xã thông suốt 04 mùa trong năm.\n- Cảng Cửa Việt đang được đầu tư nâng cấp để đón tàu có tổng trọng tải đến 5.000 DWT','Bưu chính viễn thông phát triển','tỉnh Quảng Trị có 3 khu công nghiệp (KCN) và 2 khu kinh tế (KKT)'),('Thừa Thiên Huế','Sân bay Quốc tế Phú Bài nằm trên quốc lộ 1A, cách phía Nam thành phố Huế khoảng 15 km.','cảng nước sâu Chân Mây','cảng Thuận An','Hiện nay tỉnh Thừa Thiên Huế được nhận điện từ hệ thống điện Quốc Gia. Ngoài ra tỉnh Thừa Thiên Huế  còn có trạm phát điện diezel Ngự Bình có công suất đạt 2x4000 kVA đang vận hành và phát hiện bổ sung vào những giờ cao điểm.','Công ty TNHH Xây dựng và Cấp nước Thừa Thiên Huế','Naphapro','- Đường bộ: Toàn tỉnh có hơn 2.500 km đường bộ, Quốc lộ 1A chạy xuyên qua tỉnh từ Bắc xuống Nam cùng với các tuyến quốc lộ, tỉnh lộ chạy song song và cắt ngang như quốc lộ 49 (tuyến đường huyết mạch nối từ cảng Thuận An qua thành phố Huế lên huyện miền núi A Lưới, quốc lộ 49B (kết nối các xã, phường ven biển), tỉnh lộ 2, 3, 4, 5, 6, 7, 8A, 8B, 10A, 10B, 10C, 11A, 11B, 15, 18 và các tỉnh lộ khác.\n- Đường sắt: Tuyến đường sắt Bắc – Nam chạy qua tỉnh Thừa Thiên Huế dài 101,2 km đóng một vai trò quan trọng trong giao thông của tỉnh.\n- Đường thủy: Tổng chiều dài 563 km sông, đầm phá.','','');
/*!40000 ALTER TABLE `infrastructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province` (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lat` float NOT NULL,
  `longt` float NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES ('Đà Nẵng',16.0471,108.206),('Hà Tĩnh',18.3428,105.906),('Quảng Bình',17.4659,106.598),('Quảng Trị',16.8162,107.1),('Thừa Thiên Huế',16.4637,107.591);
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_investment_costs`
--

DROP TABLE IF EXISTS `reference_investment_costs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reference_investment_costs` (
  `name_province` varchar(256) NOT NULL,
  `electricity_price` text,
  `water_price` text,
  `gas_price` text,
  `rent_office_premises_factory` text,
  `rental_price_houses_and_apartments` text,
  `construction_costs` text,
  `price_workers` text,
  `transport_costs` text,
  PRIMARY KEY (`name_province`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_investment_costs`
--

LOCK TABLES `reference_investment_costs` WRITE;
/*!40000 ALTER TABLE `reference_investment_costs` DISABLE KEYS */;
INSERT INTO `reference_investment_costs` VALUES ('Đà Nẵng','Bậc 1: Cho kWh từ 0 – 50 : 1.678 (đồng/kWh)\nBậc 2: Cho kWh từ 51 – 100 : 1.734 (đồng/kWh)\nBậc 3: Cho kWh từ 101 – 200: 2.014 (đồng/kWh)\nBậc 4: Cho kWh từ 201 – 300 : 2.536 (đồng/kWh)\nBậc 5: Cho kWh từ 301 – 400 : 2.834 (đồng/kWh)\nBậc 6: Cho kWh từ 401 trở lên : 2.927 (đồng/kWh)','khu vực đô thị theo hộ gia đình mức giá từ 4.580 - 6.849 đồng/m3, khu vực khách hàng là đơn vị hành chính áp dụng mức giá 7.568,4 đồng/m3, sản xuất kinh doanh vật chất giá 10.759,2 đồng/m3, kinh doanh dịch vụ giá 16.302,4 đồng/m3; khách hàng khu vực huyện Hòa Vang giá từ 3000-4.500 đồng/m3.','Giá gas: Bình 12kg - 428.000 VNĐ, Bình 45kg - 1.603.250 VNĐ','- Tùy vào địa điểm, không có giá chung','- Tùy vào địa điểm, không có giá chung','Không có giá chung','','Tùy hãng vận tải'),('Hà Tĩnh','1.864,44 đồng/kWh','- Giá nước sạch cho sinh hoạt gia đình, khu dân cư, sinh viên thuê phòng trọ:\n + Mức từ 1m3 - 10m3 đầu tiên (hộ/tháng): giá 6.000 đồng/m3 đối với thị trấn các huyện: Hương Khê, Vũ Quang, Hương Sơn, khu vực Cửa khẩu quốc tế Cầu Treo và vùng phụ cận; giá 6.500 đồng/m3  đối với khu vực TP Hà Tĩnh, TX Hồng Lĩnh, TX Kỳ Anh, thị trấn các huyện: Cẩm Xuyên, Can Lộc, Nghi Xuân, Đức Thọ và vùng phụ cận.\n + Mức từ trên 10m3 - 20m3 (hộ/ tháng): giá 8.100 đồng/m3\n + Mức từ trên 20m3 - 30m3 (hộ/tháng): giá 9.800 đồng/m3\n + Mức trên 30m3 (hộ/tháng): giá 12.200 đồng/m3\n- Giá nước sạch cho: Các trường học, nhà trẻ, mẫu giáo, bệnh viện, trạm y tế công lập; Cơ quan hành chính, đơn vị sự nghiệp, lực lượng vũ trang, an ninh: giá 9.800 đồng/m3\n- Giá nước sạch cho các hoạt động sản xuất vật chất và xây dựng; các cơ sở giáo dục mầm non, giáo dục phổ thông, giáo dục nghề nghiệp, cơ sở y tế ngoài công lập: giá 12.200 đồng/m3\n- Giá nước sạch cho các hoạt động kinh doanh dịch vụ: giá 16.300 đồng/m3','Giá gas: Bình 12kg - 401.000 VNĐ, Bình 45kg - 1.502.250 VNĐ','- Tùy vào địa điểm, không có giá chung','- Tùy vào địa điểm, không có giá chung','Không có giá chung','Chi phí tối thiểu: \n- Mức 3.430.000 đồng/tháng, áp dụng đối với doanh nghiệp hoạt động vùng III.\n- Mức 3.070.000 đồng/tháng, áp dụng đối với doanh nghiệp hoạt động trên địa bàn các huyện, thị xã còn lại (vùng IV)','Tùy hãng vận tải'),('Quảng Bình','1.864,44 đồng/kWh','giá 7.000 đồng/m3; từ trên 10 - 20 m3 có giá 8.700 đồng/m3; từ trên 20 - 30 m3 có giá 9.700 đồng/m3 và trên 30 m3 có giá 10.400 đồng/m3','','','Tùy vào địa điểm không có giá chung','Không có giá chung','',''),('Quảng Trị','1.864,44 đồng/kWh','','','','','','',''),('Thừa Thiên Huế','1.864,44 đồng/kWh','','','','','','','');
/*!40000 ALTER TABLE `reference_investment_costs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-16 18:20:14
