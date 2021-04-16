-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: sqa
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `lastName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(11) DEFAULT NULL,
  `phoneNumber` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKNhanvien615183` (`address`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Lê','Sĩ ','2','0942215556','shounen193@gmail.com');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `incometax`
--

DROP TABLE IF EXISTS `incometax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `incometax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `incometax`
--

LOCK TABLES `incometax` WRITE;
/*!40000 ALTER TABLE `incometax` DISABLE KEYS */;
INSERT INTO `incometax` VALUES (1,'từ hoạt động kinh doanh'),(2,'từ đầu tư vốn'),(3,'từ chuyển nhượng vốn'),(4,'từ trúng thưởng'),(5,'từ thừa kế'),(6,'từ bản quyền'),(7,'từ nhượng quyền thương mại'),(8,'từ chuyển nhượng bất động sản'),(9,'từ lương tháng');
/*!40000 ALTER TABLE `incometax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reduce`
--

DROP TABLE IF EXISTS `reduce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reduce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `reduceValue` int(11) NOT NULL,
  `updateAt` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reduce`
--

LOCK TABLES `reduce` WRITE;
/*!40000 ALTER TABLE `reduce` DISABLE KEYS */;
INSERT INTO `reduce` VALUES (1,'giảm trừ gia cảnh',11000000,'2020-06-02'),(2,'giảm trừ với mỗi người phụ thuộc',4400000,'2020-06-02');
/*!40000 ALTER TABLE `reduce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxdetail`
--

DROP TABLE IF EXISTS `taxdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `incomeTaxId` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `taxRate` float NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKChitietThu156620` (`incomeTaxId`),
  CONSTRAINT `FKChitietThue` FOREIGN KEY (`incomeTaxId`) REFERENCES `incometax` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxdetail`
--

LOCK TABLES `taxdetail` WRITE;
/*!40000 ALTER TABLE `taxdetail` DISABLE KEYS */;
INSERT INTO `taxdetail` VALUES (1,1,'phân phối cung cấp hàng hóa',0.5),(2,1,'dịch vụ xây dựng không bao gồm thầu nguyên liệu',2),(3,1,'sản xuất, vận tải, dịch vụ có gắn với hàng hóa, xây dựng có bao thầu nguyên vật liệu',1.5),(4,1,'hoạt động kinh doanh khác',1),(5,2,'không có',5),(6,3,'không có',20),(7,4,'không có',10),(8,5,'không có',10),(9,6,'không có',5),(10,7,'không có',5),(11,8,'không có',2),(12,9,'trên 11 triệu tới 18 triệu 1 tháng',15),(13,9,'trên 18 triệu tới 32 triệu 1 tháng',20),(14,9,'trên 32 triệu tới 52 triệu 1 tháng',25),(15,9,'trên 52 triệu tới 80 triệu 1 tháng',30),(16,9,'trên 80 triệu 1 tháng',35);
/*!40000 ALTER TABLE `taxdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxpayer`
--

DROP TABLE IF EXISTS `taxpayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxpayer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phoneNumer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `address` varchar(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKNguoidongt738096` (`address`),
  KEY `id` (`id`),
  KEY `id_2` (`id`),
  KEY `id_3` (`id`),
  KEY `id_4` (`id`),
  KEY `id_5` (`id`),
  KEY `id_6` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxpayer`
--

LOCK TABLES `taxpayer` WRITE;
/*!40000 ALTER TABLE `taxpayer` DISABLE KEYS */;
INSERT INTO `taxpayer` VALUES (1,'Nguyễn Văn Tuấn','0932215558','1','tuan@gmail.com'),(2,'Nguyễn Nhật Minh','0942216667','2','nminh@gmail.com'),(3,'Lê Nhật Lệ','094777888','4','le@gmail.com'),(4,'Đỗ Minh Đức','0937872237','3','minhduc@gmail.com'),(5,'Đỗ Minh Năng','0938485123','3','minhdang@gmail.com'),(6,'Huỳnh Thúc Kháng','0941288528','13','thuckh@gmail.com'),(7,'Mai Tất Đạt','0384785284','14','maidat@gmail.com'),(8,'Đinh Minh Nhất','048383784857','9','minhnhat@gmail.com'),(9,'Vũ Văn Toàn','03485889748','4','vantoan@gmail.com'),(10,'Phùng Quốc Hà','0494893858','6','ha@gmail.com'),(11,'Vũ Việt Vinh','0998498128','8','vinh@gmail.com'),(12,'Nguyễn Trung Anh','0933472888','10','ducvuviet@gmail.com'),(13,'Lê Huy Nhất','03949588472','11','huynhat@gmail.com');
/*!40000 ALTER TABLE `taxpayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxreport`
--

DROP TABLE IF EXISTS `taxreport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxreport` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxpayerId` int(11) NOT NULL,
  `taxdetailId` int(11) NOT NULL,
  `taxtype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `income` float NOT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKBaocaothue363914_idx` (`taxdetailId`),
  KEY `FKBaocaothue254520` (`taxpayerId`),
  CONSTRAINT `taxreport_ibfk_1` FOREIGN KEY (`taxpayerId`) REFERENCES `taxpayer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `taxreport_ibfk_2` FOREIGN KEY (`taxdetailId`) REFERENCES `taxdetail` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxreport`
--

LOCK TABLES `taxreport` WRITE;
/*!40000 ALTER TABLE `taxreport` DISABLE KEYS */;
INSERT INTO `taxreport` VALUES (1,1,1,'TNCN',20000000,'2020-11-17','đã nộp'),(2,2,13,'TNCN',30000000,'2020-03-03','đã nộp'),(3,2,13,'TNCN',30000000,'2020-04-03','đã nộp'),(4,3,15,'TNCN',60000000,'2020-04-03','đã nộp'),(5,4,1,'TNCN',45000000,'2020-05-03','đã nộp'),(6,7,8,'TNCN',32000000,'2020-08-03','đã nộp'),(7,12,3,'TNCN',15000000,'2020-09-03','đã nộp'),(8,13,6,'TNCN',21000000,'2020-10-03','đã nộp'),(9,9,5,'TNCN',22000000,'2020-03-03','đã nộp'),(10,10,13,'TNCN',19000000,'2020-03-07','đã nộp'),(11,10,13,'TNCN',19000000,'2020-04-07','đã nộp'),(12,10,13,'TNCN',19000000,'2020-05-07','đã nộp'),(13,8,13,'TNCN',29000000,'2020-03-06','đã nộp');
/*!40000 ALTER TABLE `taxreport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxreport_reduce`
--

DROP TABLE IF EXISTS `taxreport_reduce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxreport_reduce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reduceId` int(11) NOT NULL,
  `taxreportId` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKBaocaothue867476` (`taxreportId`),
  KEY `FKBaocaothue848828` (`reduceId`),
  CONSTRAINT `FKBaocaothue848828` FOREIGN KEY (`reduceId`) REFERENCES `reduce` (`id`),
  CONSTRAINT `FKBaocaothue867476` FOREIGN KEY (`taxreportId`) REFERENCES `taxreport` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxreport_reduce`
--

LOCK TABLES `taxreport_reduce` WRITE;
/*!40000 ALTER TABLE `taxreport_reduce` DISABLE KEYS */;
INSERT INTO `taxreport_reduce` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,1,8),(9,1,9),(10,1,10),(11,1,11),(12,1,12),(13,1,13),(14,2,2),(15,2,3),(16,2,4),(17,2,10),(18,2,11),(19,2,12),(20,2,13);
/*!40000 ALTER TABLE `taxreport_reduce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employeeId` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKThanhvien843740` (`employeeId`),
  CONSTRAINT `FKThanhvien843740` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'admin','admin','admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-16 12:24:30
