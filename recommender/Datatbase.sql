CREATE DATABASE  IF NOT EXISTS `quan_ly_thu_vien_merged` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quan_ly_thu_vien_merged`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: quan_ly_thu_vien_merged
-- ------------------------------------------------------
-- Server version	9.2.0

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
-- Table structure for table `ban_sao_sach`
--

DROP TABLE IF EXISTS `ban_sao_sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ban_sao_sach` (
  `ma_ban_sao` int NOT NULL AUTO_INCREMENT,
  `ma_sach` int NOT NULL,
  `ma_vach` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rfid` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tinh_trang` enum('còn','đang_mượn','đặt_trước','hỏng','mất') COLLATE utf8mb4_unicode_ci DEFAULT 'còn',
  `vi_tri` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_mua` date DEFAULT NULL,
  `gia_mua` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ma_ban_sao`),
  UNIQUE KEY `ma_vach` (`ma_vach`),
  UNIQUE KEY `rfid` (`rfid`),
  KEY `fk_ban_sao_sach` (`ma_sach`),
  CONSTRAINT `fk_ban_sao_sach` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ban_sao_sach`
--

LOCK TABLES `ban_sao_sach` WRITE;
/*!40000 ALTER TABLE `ban_sao_sach` DISABLE KEYS */;
INSERT INTO `ban_sao_sach` VALUES (1,1,'VACH001','RFID001','đang_mượn','Kệ A1','2025-09-20',50000.00),(2,1,'VACH002','RFID002','còn','Kệ A1','2025-09-20',50000.00),(3,2,'VACH003','RFID003','đang_mượn','Kệ B2','2025-09-20',75000.00),(4,3,'VACH004','RFID004','còn','Kệ C3','2025-09-20',60000.00),(5,1,'VACH1002','RFID1002','đang_mượn','Kệ A','2025-09-20',50000.00),(6,1,'VACH1003','RFID1003','đang_mượn','Kệ A','2025-09-20',50000.00),(7,6,'S6_0001','RFID6_0001','đang_mượn','Kệ B2','2025-09-20',82000.00),(8,6,'S6_0002','RFID6_0002','đang_mượn','Kệ B2','2025-09-20',82000.00),(9,6,'S6_0003','RFID6_0003','mất','Kệ B2','2025-09-20',82000.00),(10,6,'S6_0004','RFID6_0004','hỏng','Kệ B2','2025-09-20',82000.00),(11,6,'S6_0005','RFID6_0005','đang_mượn','Kệ B2','2025-09-20',82000.00),(12,6,'S6_0006','RFID6_0006','đang_mượn','Kệ B1','2025-09-20',75000.00),(13,6,'S6_0007','RFID6_0007','đang_mượn','Kệ B1','2025-09-20',75000.00),(14,6,'S6_0008','RFID6_0008','đang_mượn','Kệ B1','2025-09-20',75000.00),(15,6,'S6_0009','RFID6_0009','đang_mượn','Kệ B1','2025-09-20',75000.00),(16,6,'S6_0010','RFID6_0010','đang_mượn','Kệ B1','2025-09-20',75000.00),(17,6,'S6_0011','RFID6_0011','mất','Kệ B1','2025-09-20',75000.00),(18,6,'S6_0012','RFID6_0012','đang_mượn','Kệ B1','2025-09-20',75000.00),(19,6,'S6_0013','RFID6_0013','còn','Kệ B1','2025-09-20',75000.00),(20,6,'S6_0014','RFID6_0014','còn','Kệ B1','2025-09-20',75000.00),(21,6,'S6_0015','RFID6_0015','còn','Kệ B1','2025-09-20',75000.00),(22,6,'S6_0016','RFID6_0016','còn','Kệ B1','2025-09-20',75000.00),(23,6,'S6_0017','RFID6_0017','còn','Kệ B1','2025-09-20',75000.00);
/*!40000 ALTER TABLE `ban_sao_sach` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_them_ban_sao` AFTER INSERT ON `ban_sao_sach` FOR EACH ROW UPDATE sach 
SET so_luong = so_luong + 1
WHERE ma_sach = NEW.ma_sach */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_them_ban_sao_con` AFTER INSERT ON `ban_sao_sach` FOR EACH ROW BEGIN
    IF NEW.tinh_trang = 'còn' THEN
        UPDATE sach
        SET so_luong_con = so_luong_con + 1
        WHERE ma_sach = NEW.ma_sach;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_sua_ban_sao` AFTER UPDATE ON `ban_sao_sach` FOR EACH ROW BEGIN
    -- Nếu đổi sang đầu sách khác thì cập nhật cả hai
    IF OLD.ma_sach <> NEW.ma_sach THEN
        UPDATE sach SET so_luong = so_luong - 1 WHERE ma_sach = OLD.ma_sach;
        UPDATE sach SET so_luong = so_luong + 1 WHERE ma_sach = NEW.ma_sach;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_sua_ban_sao_con` AFTER UPDATE ON `ban_sao_sach` FOR EACH ROW BEGIN
    -- Nếu đổi tình trạng
    IF OLD.tinh_trang <> NEW.tinh_trang THEN
        IF OLD.tinh_trang = 'còn' THEN
            UPDATE sach
            SET so_luong_con = so_luong_con - 1
            WHERE ma_sach = OLD.ma_sach;
        END IF;
        IF NEW.tinh_trang = 'còn' THEN
            UPDATE sach
            SET so_luong_con = so_luong_con + 1
            WHERE ma_sach = NEW.ma_sach;
        END IF;
    END IF;

    -- Nếu đổi sang đầu sách khác nhưng tình trạng vẫn là 'còn'
    IF OLD.ma_sach <> NEW.ma_sach AND NEW.tinh_trang = 'còn' THEN
        UPDATE sach SET so_luong_con = so_luong_con - 1 WHERE ma_sach = OLD.ma_sach;
        UPDATE sach SET so_luong_con = so_luong_con + 1 WHERE ma_sach = NEW.ma_sach;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_xoa_ban_sao` AFTER DELETE ON `ban_sao_sach` FOR EACH ROW UPDATE sach 
SET so_luong = so_luong - 1
WHERE ma_sach = OLD.ma_sach */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_xoa_ban_sao_con` AFTER DELETE ON `ban_sao_sach` FOR EACH ROW BEGIN
    IF OLD.tinh_trang = 'còn' THEN
        UPDATE sach
        SET so_luong_con = so_luong_con - 1
        WHERE ma_sach = OLD.ma_sach;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cau_hinh`
--

DROP TABLE IF EXISTS `cau_hinh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cau_hinh` (
  `ten_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_tri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ten_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cau_hinh`
--

LOCK TABLES `cau_hinh` WRITE;
/*!40000 ALTER TABLE `cau_hinh` DISABLE KEYS */;
INSERT INTO `cau_hinh` VALUES ('default_borrow_days','14'),('fine_per_day','1000'),('max_books_per_user','10'),('so_ngay_muon_mac_dinh','14'),('so_sach_toi_da_moi_doc_gia','10'),('tien_phat_moi_ngay','1000');
/*!40000 ALTER TABLE `cau_hinh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_dat_muon`
--

DROP TABLE IF EXISTS `chi_tiet_dat_muon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_dat_muon` (
  `ma_dat_muon` int NOT NULL,
  `ma_sach` int NOT NULL,
  `so_luong` int DEFAULT '1',
  PRIMARY KEY (`ma_dat_muon`,`ma_sach`),
  KEY `ma_sach` (`ma_sach`),
  CONSTRAINT `chi_tiet_dat_muon_ibfk_1` FOREIGN KEY (`ma_dat_muon`) REFERENCES `dat_muon` (`ma_dat_muon`),
  CONSTRAINT `chi_tiet_dat_muon_ibfk_2` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_dat_muon`
--

LOCK TABLES `chi_tiet_dat_muon` WRITE;
/*!40000 ALTER TABLE `chi_tiet_dat_muon` DISABLE KEYS */;
INSERT INTO `chi_tiet_dat_muon` VALUES (1,1,1),(1,3,2),(2,1,3),(2,2,3),(3,1,1),(3,3,1),(4,1,1),(4,3,1),(5,1,1),(5,2,1),(6,1,1),(6,2,1),(7,1,1),(7,2,1),(8,1,1),(8,3,1),(9,1,1),(9,3,1),(10,1,1),(10,3,1),(11,1,1),(11,2,1),(11,3,1),(12,1,1),(12,2,1),(12,3,1),(13,1,1),(13,2,1),(13,3,1),(14,1,1),(14,2,1),(14,3,1),(15,1,1),(15,2,1),(15,3,1),(16,1,2),(16,2,1),(17,1,2),(17,2,1),(18,1,2),(18,2,1),(19,1,2),(19,2,1),(20,1,2),(20,2,1),(21,1,2),(21,2,1),(22,6,2),(23,6,2),(24,6,2),(25,2,1),(26,6,1),(27,6,1),(28,6,1),(29,6,1),(30,6,1),(31,6,1),(32,6,1);
/*!40000 ALTER TABLE `chi_tiet_dat_muon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_muon`
--

DROP TABLE IF EXISTS `chi_tiet_muon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_muon` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_phieu_muon` int NOT NULL,
  `ma_sach` int NOT NULL,
  `so_luong` int DEFAULT '1',
  `trang_thai_sach` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_tra` date DEFAULT NULL,
  `ma_ban_sao` int NOT NULL,
  `da_tra` tinyint(1) DEFAULT '0',
  `ngay_tra_thuc_te` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ct_muon_phieu` (`ma_phieu_muon`),
  KEY `fk_ct_muon_sach` (`ma_sach`),
  KEY `fk_ct_muon_ban_sao` (`ma_ban_sao`),
  CONSTRAINT `fk_ct_muon_ban_sao` FOREIGN KEY (`ma_ban_sao`) REFERENCES `ban_sao_sach` (`ma_ban_sao`),
  CONSTRAINT `fk_ct_muon_phieu` FOREIGN KEY (`ma_phieu_muon`) REFERENCES `phieu_muon` (`ma_phieu_muon`),
  CONSTRAINT `fk_ct_muon_sach` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_muon`
--

LOCK TABLES `chi_tiet_muon` WRITE;
/*!40000 ALTER TABLE `chi_tiet_muon` DISABLE KEYS */;
INSERT INTO `chi_tiet_muon` VALUES (1,19,1,1,NULL,NULL,1,0,NULL),(2,20,1,1,NULL,NULL,2,1,'2025-09-20'),(3,24,1,1,NULL,NULL,5,0,NULL),(4,24,1,1,NULL,NULL,6,0,NULL),(5,24,2,1,NULL,NULL,3,0,NULL),(6,25,6,1,NULL,NULL,7,0,NULL),(7,25,6,1,NULL,NULL,8,0,NULL),(8,26,6,1,NULL,NULL,9,1,'2025-09-20'),(9,26,6,1,NULL,NULL,10,1,'2025-09-20'),(10,27,6,1,NULL,NULL,9,1,'2025-09-20'),(11,27,6,1,NULL,NULL,10,1,'2025-09-20'),(12,29,6,1,NULL,NULL,9,0,NULL),(13,30,6,1,NULL,'2025-10-05',11,0,NULL),(14,31,6,1,NULL,'2025-10-05',12,0,NULL),(15,32,6,1,NULL,'2025-10-05',13,0,NULL),(16,33,6,1,NULL,'2025-10-05',14,0,NULL),(17,34,6,1,NULL,'2025-10-05',15,0,NULL),(18,35,6,1,NULL,NULL,16,0,NULL),(19,36,6,1,'còn','2025-10-05',17,1,'2025-09-21'),(20,37,6,1,NULL,'2025-10-19',18,0,NULL),(21,38,6,1,'còn','2025-10-05',19,1,'2025-09-21'),(22,39,6,1,'còn','2025-10-05',9,1,'2025-09-21');
/*!40000 ALTER TABLE `chi_tiet_muon` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_kiem_tra_ton` BEFORE INSERT ON `chi_tiet_muon` FOR EACH ROW BEGIN
    DECLARE sl INT;
    SELECT so_luong INTO sl FROM sach WHERE ma_sach = NEW.ma_sach;
    IF sl <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Sách đã hết, không thể mượn.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_muon_sach` AFTER INSERT ON `chi_tiet_muon` FOR EACH ROW BEGIN
    UPDATE sach
    SET so_luong_con = so_luong_con - NEW.so_luong
    WHERE ma_sach = NEW.ma_sach;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_muon_ban_sao` AFTER INSERT ON `chi_tiet_muon` FOR EACH ROW BEGIN
    DECLARE tinh_trang_hien_tai VARCHAR(20);

    -- Lấy tình trạng hiện tại của bản sao
    SELECT tinh_trang INTO tinh_trang_hien_tai
    FROM ban_sao_sach
    WHERE ma_ban_sao = NEW.ma_ban_sao;

    -- Nếu bản sao không khả dụng thì báo lỗi
    IF tinh_trang_hien_tai <> 'còn' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Bản sao sách này không khả dụng!';
    END IF;

    -- Đổi tình trạng bản sao thành "đang_mượn"
    UPDATE ban_sao_sach
    SET tinh_trang = 'đang_mượn'
    WHERE ma_ban_sao = NEW.ma_ban_sao;

    -- Giảm số lượng còn lại (so_luong_con), KHÔNG động tới so_luong
    UPDATE sach
    SET so_luong_con = so_luong_con - 1
    WHERE ma_sach = NEW.ma_sach;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_tinh_phat_tra_muon` AFTER UPDATE ON `chi_tiet_muon` FOR EACH ROW BEGIN
    DECLARE so_ngay_tre INT;
    DECLARE muc_phat DECIMAL(10,2);
    DECLARE tien_phat DECIMAL(10,2);
    DECLARE id_docgia INT;

    -- Chỉ xử lý khi vừa trả (da_tra từ 0 → 1)
    IF NEW.da_tra = 1 AND OLD.da_tra = 0 THEN
        -- Nếu có hạn trả và trả muộn
        IF NEW.ngay_tra IS NOT NULL AND NEW.ngay_tra_thuc_te > NEW.ngay_tra THEN
            SET so_ngay_tre = DATEDIFF(NEW.ngay_tra_thuc_te, NEW.ngay_tra);

            -- Lấy mức phạt mỗi ngày từ bảng cau_hinh
            SELECT CAST(gia_tri AS DECIMAL(10,2))
            INTO muc_phat
            FROM cau_hinh
            WHERE ten_key = 'tien_phat_moi_ngay'
            LIMIT 1;

            -- Nếu không có cấu hình thì mặc định 1000
            IF muc_phat IS NULL THEN
                SET muc_phat = 1000;
            END IF;

            SET tien_phat = so_ngay_tre * muc_phat;

            -- Lấy mã độc giả từ phiếu mượn
            SELECT ma_doc_gia INTO id_docgia
            FROM phieu_muon
            WHERE ma_phieu_muon = NEW.ma_phieu_muon
            LIMIT 1;

            -- Ghi phạt
            INSERT INTO phat(ma_nguoi_dung, ma_phieu_muon, so_tien, ly_do, ngay_phat, trang_thai)
            VALUES (
                id_docgia,
                NEW.ma_phieu_muon,
                tien_phat,
                CONCAT('Trả sách muộn ', so_ngay_tre, ' ngày'),
                CURDATE(),
                'Chưa thanh toán'
            );
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_cap_nhat_trang_thai_phieu_muon` AFTER UPDATE ON `chi_tiet_muon` FOR EACH ROW BEGIN
    DECLARE tong_chi_tiet INT;
    DECLARE tong_da_tra INT;
    DECLARE co_qua_han INT;

    -- Chỉ xử lý khi sách vừa được đánh dấu trả
    IF NEW.da_tra = 1 AND OLD.da_tra = 0 THEN
        -- Đếm tổng số chi tiết mượn của phiếu
        SELECT COUNT(*) INTO tong_chi_tiet
        FROM chi_tiet_muon
        WHERE ma_phieu_muon = NEW.ma_phieu_muon;

        -- Đếm số chi tiết đã trả
        SELECT COUNT(*) INTO tong_da_tra
        FROM chi_tiet_muon
        WHERE ma_phieu_muon = NEW.ma_phieu_muon
          AND da_tra = 1;

        -- Kiểm tra có quyển nào quá hạn không
        SELECT COUNT(*) INTO co_qua_han
        FROM chi_tiet_muon
        WHERE ma_phieu_muon = NEW.ma_phieu_muon
          AND da_tra = 1
          AND ngay_tra_thuc_te > ngay_tra;

        -- Cập nhật trạng thái phiếu mượn
        IF tong_da_tra = tong_chi_tiet THEN
            IF co_qua_han > 0 THEN
                UPDATE phieu_muon
                SET trang_thai = 'Quá hạn'
                WHERE ma_phieu_muon = NEW.ma_phieu_muon;
            ELSE
                UPDATE phieu_muon
                SET trang_thai = 'Đã trả'
                WHERE ma_phieu_muon = NEW.ma_phieu_muon;
            END IF;
        ELSE
            IF co_qua_han > 0 THEN
                UPDATE phieu_muon
                SET trang_thai = 'Quá hạn'
                WHERE ma_phieu_muon = NEW.ma_phieu_muon;
            ELSE
                UPDATE phieu_muon
                SET trang_thai = 'Đang mượn'
                WHERE ma_phieu_muon = NEW.ma_phieu_muon;
            END IF;
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_cap_nhat_trang_thai_muon` AFTER UPDATE ON `chi_tiet_muon` FOR EACH ROW BEGIN
    DECLARE tong_chi_tiet INT;
    DECLARE tong_da_tra INT;
    DECLARE co_qua_han INT;
    DECLARE co_mat INT;
    DECLARE co_hong INT;

    -- Chỉ chạy khi cập nhật trạng thái trả
    IF NEW.da_tra = 1 AND OLD.da_tra = 0 THEN
        
        -- Tổng số chi tiết trong phiếu
        SELECT COUNT(*) INTO tong_chi_tiet
        FROM chi_tiet_muon
        WHERE ma_phieu_muon = NEW.ma_phieu_muon;

        -- Tổng số đã trả
        SELECT COUNT(*) INTO tong_da_tra
        FROM chi_tiet_muon
        WHERE ma_phieu_muon = NEW.ma_phieu_muon
          AND da_tra = 1;

        -- Có sách trả muộn không?
        SELECT COUNT(*) INTO co_qua_han
        FROM chi_tiet_muon
        WHERE ma_phieu_muon = NEW.ma_phieu_muon
          AND da_tra = 1
          AND ngay_tra_thuc_te > ngay_tra;

        -- Có sách mất không? (tình trạng bản sao = 'mất')
        SELECT COUNT(*) INTO co_mat
        FROM chi_tiet_muon ct
        JOIN ban_sao_sach bs ON ct.ma_ban_sao = bs.ma_ban_sao
        WHERE ct.ma_phieu_muon = NEW.ma_phieu_muon
          AND bs.tinh_trang = 'mất';

        -- Có sách hỏng không? (tình trạng bản sao = 'hỏng')
        SELECT COUNT(*) INTO co_hong
        FROM chi_tiet_muon ct
        JOIN ban_sao_sach bs ON ct.ma_ban_sao = bs.ma_ban_sao
        WHERE ct.ma_phieu_muon = NEW.ma_phieu_muon
          AND bs.tinh_trang = 'hỏng';

        -- Cập nhật trạng thái phiếu
        IF tong_da_tra = tong_chi_tiet THEN
            IF co_mat > 0 THEN
                UPDATE phieu_muon SET trang_thai = 'Mất sách'
                WHERE ma_phieu_muon = NEW.ma_phieu_muon;
            ELSEIF co_hong > 0 THEN
                UPDATE phieu_muon SET trang_thai = 'Hỏng sách'
                WHERE ma_phieu_muon = NEW.ma_phieu_muon;
            ELSEIF co_qua_han > 0 THEN
                UPDATE phieu_muon SET trang_thai = 'Quá hạn'
                WHERE ma_phieu_muon = NEW.ma_phieu_muon;
            ELSE
                UPDATE phieu_muon SET trang_thai = 'Đã trả'
                WHERE ma_phieu_muon = NEW.ma_phieu_muon;
            END IF;
        ELSE
            -- Chưa trả hết
            IF co_mat > 0 THEN
                UPDATE phieu_muon SET trang_thai = 'Mất sách'
                WHERE ma_phieu_muon = NEW.ma_phieu_muon;
            ELSEIF co_hong > 0 THEN
                UPDATE phieu_muon SET trang_thai = 'Hỏng sách'
                WHERE ma_phieu_muon = NEW.ma_phieu_muon;
            ELSEIF co_qua_han > 0 THEN
                UPDATE phieu_muon SET trang_thai = 'Quá hạn'
                WHERE ma_phieu_muon = NEW.ma_phieu_muon;
            ELSE
                UPDATE phieu_muon SET trang_thai = 'Chưa đủ'
                WHERE ma_phieu_muon = NEW.ma_phieu_muon;
            END IF;
        END IF;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `chi_tiet_tra`
--

DROP TABLE IF EXISTS `chi_tiet_tra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_tra` (
  `ma_chi_tiet_tra` int NOT NULL AUTO_INCREMENT,
  `ma_phieu_tra` int NOT NULL,
  `ma_sach` int NOT NULL,
  `so_luong` int NOT NULL DEFAULT '1',
  `tinh_trang_sach` enum('tot','rach','mat_trang','hong') COLLATE utf8mb4_unicode_ci DEFAULT 'tot',
  `ma_ban_sao` int DEFAULT NULL,
  PRIMARY KEY (`ma_chi_tiet_tra`),
  KEY `ma_phieu_tra` (`ma_phieu_tra`),
  KEY `ma_sach` (`ma_sach`),
  KEY `fk_ct_tra_ban_sao` (`ma_ban_sao`),
  CONSTRAINT `chi_tiet_tra_ibfk_1` FOREIGN KEY (`ma_phieu_tra`) REFERENCES `phieu_tra` (`ma_phieu_tra`),
  CONSTRAINT `chi_tiet_tra_ibfk_2` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`),
  CONSTRAINT `fk_ct_tra_ban_sao` FOREIGN KEY (`ma_ban_sao`) REFERENCES `ban_sao_sach` (`ma_ban_sao`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_tra`
--

LOCK TABLES `chi_tiet_tra` WRITE;
/*!40000 ALTER TABLE `chi_tiet_tra` DISABLE KEYS */;
INSERT INTO `chi_tiet_tra` VALUES (1,5,1,1,'tot',NULL),(2,6,1,1,'tot',NULL),(3,7,2,1,'tot',NULL),(4,7,3,1,'tot',NULL),(5,8,2,1,'tot',NULL),(6,8,3,1,'tot',NULL),(7,9,2,1,'tot',NULL),(8,9,3,1,'tot',NULL),(13,21,1,1,'tot',2),(14,22,1,1,'tot',2),(15,23,1,1,'tot',2),(16,24,1,1,'tot',2),(17,25,1,1,'tot',2),(18,26,1,1,'tot',2),(19,27,1,1,'tot',2),(20,28,1,1,'tot',2),(21,29,1,1,'tot',2),(26,38,6,1,'tot',9),(27,38,6,1,'tot',10),(30,39,6,1,'tot',9),(31,39,6,1,'tot',10),(33,39,6,1,'tot',10),(34,40,6,1,'tot',9),(35,40,6,1,'tot',9),(36,41,6,1,'tot',9),(37,42,6,1,'tot',9),(38,42,6,1,'tot',10),(40,42,6,1,'tot',9),(41,42,6,1,'rach',10),(42,43,6,1,'tot',19),(43,43,6,1,'tot',9),(46,46,6,1,'tot',19),(47,46,6,1,'tot',19),(53,53,6,1,'tot',17),(54,53,6,1,'mat_trang',17),(56,55,6,1,'tot',9),(57,55,6,1,'mat_trang',9);
/*!40000 ALTER TABLE `chi_tiet_tra` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_tinh_phat_tra` AFTER INSERT ON `chi_tiet_tra` FOR EACH ROW BEGIN
    DECLARE v_so_ngay_trong_han INT;
    DECLARE v_gia_tri DECIMAL(10,2);
    DECLARE v_tien_phat_moi_ngay DECIMAL(10,2);
    DECLARE v_ma_nguoi_dung INT;
    DECLARE v_ngay_tra DATE;
    DECLARE v_ma_phieu_muon INT;
    DECLARE v_tieu_de VARCHAR(200);
    DECLARE v_ly_do_tinh_trang VARCHAR(255);

    -- Lấy phiếu mượn + người mượn + hạn trả
    SELECT pt.ma_phieu_muon, pm.ma_nguoi_dung, ctm.ngay_tra
    INTO v_ma_phieu_muon, v_ma_nguoi_dung, v_ngay_tra
    FROM phieu_tra pt
    JOIN phieu_muon pm ON pt.ma_phieu_muon = pm.ma_phieu_muon
    JOIN chi_tiet_muon ctm ON ctm.ma_phieu_muon = pm.ma_phieu_muon
         AND ctm.ma_ban_sao = NEW.ma_ban_sao
    WHERE pt.ma_phieu_tra = NEW.ma_phieu_tra
    LIMIT 1;

    -- Lấy giá trị & tiêu đề sách
    SELECT gia_tri, tieu_de INTO v_gia_tri, v_tieu_de
    FROM sach
    WHERE ma_sach = NEW.ma_sach;

    IF v_gia_tri IS NULL THEN
        SET v_gia_tri = 50000; -- fallback
    END IF;

    IF v_tieu_de IS NULL THEN
        SET v_tieu_de = CONCAT('Sách mã ', NEW.ma_sach);
    END IF;

    -- Lấy cấu hình tiền phạt mỗi ngày
    SELECT CAST(gia_tri AS DECIMAL(10,2))
    INTO v_tien_phat_moi_ngay
    FROM cau_hinh
    WHERE ten_key = 'tien_phat_moi_ngay';

    IF v_tien_phat_moi_ngay IS NULL THEN
        SET v_tien_phat_moi_ngay = 1000;
    END IF;

    -- Case 1: Trả muộn
    IF CURDATE() > v_ngay_tra THEN
        SET v_so_ngay_trong_han = DATEDIFF(CURDATE(), v_ngay_tra);
        INSERT INTO phat(ma_nguoi_dung, ma_phieu_muon, so_tien, ly_do, ngay_phat, trang_thai)
        VALUES (
            v_ma_nguoi_dung,
            v_ma_phieu_muon,
            v_so_ngay_trong_han * v_tien_phat_moi_ngay,
            CONCAT('Trả muộn ', v_so_ngay_trong_han, ' ngày'),
            CURDATE(),
            'Chưa thanh toán'
        );
    END IF;

    -- Case 2: Hỏng, rách, mất
    IF NEW.tinh_trang_sach IN ('rach','hong','mat_trang') THEN
        -- Map tình trạng sang mô tả tiếng Việt
        IF NEW.tinh_trang_sach = 'rach' THEN
            SET v_ly_do_tinh_trang = 'bị rách';
        ELSEIF NEW.tinh_trang_sach = 'hong' THEN
            SET v_ly_do_tinh_trang = 'bị hỏng';
        ELSEIF NEW.tinh_trang_sach = 'mat_trang' THEN
            SET v_ly_do_tinh_trang = 'bị mất trang';
        ELSE
            SET v_ly_do_tinh_trang = CONCAT('bị ', NEW.tinh_trang_sach);
        END IF;

        INSERT INTO phat(ma_nguoi_dung, ma_phieu_muon, so_tien, ly_do, ngay_phat, trang_thai)
        VALUES (
            v_ma_nguoi_dung,
            v_ma_phieu_muon,
            v_gia_tri,
            CONCAT('Sách "', v_tieu_de, '" ', v_ly_do_tinh_trang),
            CURDATE(),
            'Chưa thanh toán'
        );
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `danh_gia`
--

DROP TABLE IF EXISTS `danh_gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danh_gia` (
  `ma_danh_gia` int NOT NULL AUTO_INCREMENT,
  `ma_sach` int DEFAULT NULL,
  `ma_doc_gia` int DEFAULT NULL,
  `diem` int DEFAULT NULL,
  `binh_luan` text COLLATE utf8mb4_unicode_ci,
  `ngay_danh_gia` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ma_danh_gia`),
  KEY `ma_sach` (`ma_sach`),
  KEY `ma_doc_gia` (`ma_doc_gia`),
  FULLTEXT KEY `ft_dg_binh_luan` (`binh_luan`),
  CONSTRAINT `danh_gia_ibfk_1` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`),
  CONSTRAINT `danh_gia_ibfk_2` FOREIGN KEY (`ma_doc_gia`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `danh_gia_chk_1` CHECK ((`diem` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_gia`
--

LOCK TABLES `danh_gia` WRITE;
/*!40000 ALTER TABLE `danh_gia` DISABLE KEYS */;
INSERT INTO `danh_gia` VALUES (1,1,3,5,'Sách rất hữu ích cho người học CSDL','2025-07-23 16:58:22'),(2,2,4,4,'Văn học cổ điển hay nhưng hơi dài','2025-07-23 16:58:22');
/*!40000 ALTER TABLE `danh_gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `danh_muc`
--

DROP TABLE IF EXISTS `danh_muc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `danh_muc` (
  `ma_danh_muc` int NOT NULL AUTO_INCREMENT,
  `ten_danh_muc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma_danh_muc`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_muc`
--

LOCK TABLES `danh_muc` WRITE;
/*!40000 ALTER TABLE `danh_muc` DISABLE KEYS */;
INSERT INTO `danh_muc` VALUES (1,'Sách'),(2,'Tạp chí'),(3,'Báo'),(4,'Media'),(5,'Vở');
/*!40000 ALTER TABLE `danh_muc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dat_muon`
--

DROP TABLE IF EXISTS `dat_muon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dat_muon` (
  `ma_dat_muon` int NOT NULL AUTO_INCREMENT,
  `ma_nguoi_dung` int DEFAULT NULL,
  `ngay_dat` date NOT NULL,
  `ngay_du_kien_muon` date DEFAULT NULL,
  `trang_thai` enum('Chờ duyệt','Đang xử lý','Đã duyệt','Đang mượn','Hoàn thành','Hủy') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Chờ duyệt',
  `ghi_chu` text COLLATE utf8mb4_unicode_ci,
  `ma_nhan_vien` int DEFAULT NULL,
  PRIMARY KEY (`ma_dat_muon`),
  KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  KEY `ma_nhan_vien` (`ma_nhan_vien`),
  CONSTRAINT `dat_muon_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `dat_muon_ibfk_2` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dat_muon`
--

LOCK TABLES `dat_muon` WRITE;
/*!40000 ALTER TABLE `dat_muon` DISABLE KEYS */;
INSERT INTO `dat_muon` VALUES (1,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',NULL),(2,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',NULL),(3,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',NULL),(4,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(5,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(6,1,'2025-09-16','2025-09-20','Hủy',NULL,1),(7,1,'2025-09-16','2025-09-20','Chờ duyệt','Mượn để làm tiểu luận',NULL),(8,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(9,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(10,1,'2025-09-16','2025-09-20','Chờ duyệt','Mượn để làm tiểu luận',NULL),(11,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(12,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(13,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(14,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(15,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(16,1,'2025-09-19','2025-09-25','Chờ duyệt','Muốn mượn sách học kỳ',NULL),(17,1,'2025-09-19','2025-09-25','Chờ duyệt','Muốn mượn sách học kỳ',NULL),(18,1,'2025-09-19','2025-09-25','Chờ duyệt','Muốn mượn sách học kỳ',NULL),(19,1,'2025-09-19','2025-09-25','Chờ duyệt','Muốn mượn sách học kỳ',NULL),(20,1,'2025-09-19','2025-09-25','Đang mượn','Muốn mượn sách học kỳ',2),(21,1,'2025-09-19','2025-09-25','Chờ duyệt','Muốn mượn sách học kỳ',NULL),(22,1,'2025-09-19','2025-09-25','Đang mượn','Muốn mượn sách học kỳ',2),(23,5,'2025-09-20','2025-09-25','Đang mượn','Muốn mượn sách học kỳ',2),(24,5,'2025-09-20','2025-09-25','Đang mượn','Muốn mượn sách học kỳ',2),(25,5,'2025-09-21','2025-09-25','Chờ duyệt','Muốn mượn sách để test mysql',NULL),(26,5,'2025-09-21','2025-09-25','Đang mượn','Muốn mượn sách để test mysql',2),(27,5,'2025-09-21','2025-09-25','Chờ duyệt','Muốn mượn sách để test mysql',NULL),(28,5,'2025-09-21','2025-09-25','Đang mượn','Muốn mượn sách để test mysql',2),(29,5,'2025-09-21','2025-09-25','Đang mượn','Muốn mượn sách để test mysql',2),(30,5,'2025-09-21','2025-09-25','Đang mượn','Muốn mượn sách để test mysql',2),(31,5,'2025-09-21','2025-09-25','Đang mượn','Muốn mượn sách để test mysql',2),(32,5,'2025-09-21','2025-09-25','Đang mượn','Muốn mượn sách để test mysql',2);
/*!40000 ALTER TABLE `dat_muon` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_notify_reject_dat_muon` AFTER UPDATE ON `dat_muon` FOR EACH ROW BEGIN
    -- Khi trạng thái đổi từ "Chờ duyệt" sang "Hủy"
    IF NEW.trang_thai = 'Hủy' AND OLD.trang_thai = 'Chờ duyệt' THEN
        INSERT INTO notification(ma_nguoi_dung, noi_dung, ngay_gui, da_doc)
        VALUES (
            NEW.ma_nguoi_dung,
            CONCAT('Đơn đặt mượn #', NEW.ma_dat_muon,
                   ' của bạn đã bị từ chối. Lý do: ',
                   IFNULL(NEW.ghi_chu, 'Không có lý do cụ thể.')),
            NOW(),
            0
        );
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_notify_approve_dat_muon` AFTER UPDATE ON `dat_muon` FOR EACH ROW BEGIN
    -- Khi trạng thái đổi từ "Chờ duyệt" sang "Hoàn thành"
    IF NEW.trang_thai = 'Hoàn thành' AND OLD.trang_thai = 'Chờ duyệt' THEN
        INSERT INTO notification(ma_nguoi_dung, noi_dung, ngay_gui, da_doc)
        VALUES (
            NEW.ma_nguoi_dung,
            CONCAT('Đơn đặt mượn #', NEW.ma_dat_muon,
                   ' của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.'),
            NOW(),
            0
        );
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_duyet_dat_muon` AFTER UPDATE ON `dat_muon` FOR EACH ROW BEGIN
    DECLARE new_phieu_muon_id INT;

    -- Nếu đơn đặt mượn chuyển sang 'Đã duyệt'
    IF NEW.trang_thai = 'Đã duyệt' AND OLD.trang_thai <> 'Đã duyệt' THEN

        -- 1. Tạo phiếu mượn mới (dùng ma_nguoi_dung thay cho ma_doc_gia)
        INSERT INTO phieu_muon(ma_doc_gia, ngay_muon, ngay_tra, trang_thai)
        VALUES (NEW.ma_nguoi_dung, CURDATE(), NEW.ngay_du_kien_muon, 'Đang mượn');

        SET new_phieu_muon_id = LAST_INSERT_ID();

        -- 2. Copy chi tiết từ chi_tiet_dat_muon sang chi_tiet_muon
        --    Lấy luôn tình trạng hiện tại của bản sao từ ban_sao_sach
        INSERT INTO chi_tiet_muon(ma_phieu_muon, ma_sach, ma_ban_sao, so_luong, trang_thai_sach, ngay_tra, da_tra)
        SELECT new_phieu_muon_id, bs.ma_sach, cd.ma_ban_sao, 1, bs.tinh_trang, NEW.ngay_du_kien_muon, 0
        FROM chi_tiet_dat_muon cd
        JOIN ban_sao_sach bs ON cd.ma_ban_sao = bs.ma_ban_sao
        WHERE cd.ma_dat_muon = NEW.ma_dat_muon;

        -- 3. Cập nhật tình trạng bản sao sang 'đang mượn'
        UPDATE ban_sao_sach
        SET tinh_trang = 'đang mượn'
        WHERE ma_ban_sao IN (
            SELECT ma_ban_sao FROM chi_tiet_dat_muon WHERE ma_dat_muon = NEW.ma_dat_muon
        );

        -- 4. Giảm số lượng còn trong bảng sách
        UPDATE sach
        SET so_luong_con = so_luong_con - 1
        WHERE ma_sach IN (
            SELECT bs.ma_sach
            FROM chi_tiet_dat_muon cd
            JOIN ban_sao_sach bs ON cd.ma_ban_sao = bs.ma_ban_sao
            WHERE cd.ma_dat_muon = NEW.ma_dat_muon
        );
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_delete_dat_muon` AFTER DELETE ON `dat_muon` FOR EACH ROW BEGIN
    DELETE FROM chi_tiet_dat_muon
    WHERE ma_dat_muon = OLD.ma_dat_muon;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ebook`
--

DROP TABLE IF EXISTS `ebook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ebook` (
  `ma_ebook` int NOT NULL AUTO_INCREMENT,
  `ma_sach` int DEFAULT NULL,
  `dinh_dang` enum('pdf','epub','mobi','mp3') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dung_luong` decimal(10,2) DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loai_file` enum('pdf','audio') COLLATE utf8mb4_unicode_ci DEFAULT 'pdf',
  PRIMARY KEY (`ma_ebook`),
  KEY `ma_sach` (`ma_sach`),
  CONSTRAINT `ebook_ibfk_1` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ebook`
--

LOCK TABLES `ebook` WRITE;
/*!40000 ALTER TABLE `ebook` DISABLE KEYS */;
/*!40000 ALTER TABLE `ebook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gia_han`
--

DROP TABLE IF EXISTS `gia_han`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gia_han` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_phieu_muon` int NOT NULL,
  `so_ngay` int NOT NULL,
  `ngay_gia_han` datetime NOT NULL,
  `ma_nhan_vien` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ma_phieu_muon` (`ma_phieu_muon`),
  KEY `ma_nhan_vien` (`ma_nhan_vien`),
  CONSTRAINT `gia_han_ibfk_1` FOREIGN KEY (`ma_phieu_muon`) REFERENCES `phieu_muon` (`ma_phieu_muon`),
  CONSTRAINT `gia_han_ibfk_2` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gia_han`
--

LOCK TABLES `gia_han` WRITE;
/*!40000 ALTER TABLE `gia_han` DISABLE KEYS */;
INSERT INTO `gia_han` VALUES (1,37,7,'2025-09-21 16:38:36',2),(2,37,7,'2025-09-21 16:40:25',2);
/*!40000 ALTER TABLE `gia_han` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khu_vuc`
--

DROP TABLE IF EXISTS `khu_vuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khu_vuc` (
  `ma_khu_vuc` int NOT NULL AUTO_INCREMENT,
  `ten_khu_vuc` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma_khu_vuc`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khu_vuc`
--

LOCK TABLES `khu_vuc` WRITE;
/*!40000 ALTER TABLE `khu_vuc` DISABLE KEYS */;
INSERT INTO `khu_vuc` VALUES (1,'Tầng 1 - Khu A'),(2,'Tầng 2 - Khu B');
/*!40000 ALTER TABLE `khu_vuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ngon_ngu`
--

DROP TABLE IF EXISTS `ngon_ngu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ngon_ngu` (
  `ma_ngon_ngu` int NOT NULL AUTO_INCREMENT,
  `ten_ngon_ngu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma_ngon_ngu`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ngon_ngu`
--

LOCK TABLES `ngon_ngu` WRITE;
/*!40000 ALTER TABLE `ngon_ngu` DISABLE KEYS */;
INSERT INTO `ngon_ngu` VALUES (1,'Tiếng Việt'),(2,'Tiếng Anh'),(3,'Tiếng Pháp'),(4,'Tiếng Trung'),(5,'Tiếng Nhật');
/*!40000 ALTER TABLE `ngon_ngu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoi_dung`
--

DROP TABLE IF EXISTS `nguoi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoi_dung` (
  `ma_nguoi_dung` int NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `gioi_tinh` enum('nam','nữ','khác') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_dien_thoai` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_dang_ky` datetime DEFAULT CURRENT_TIMESTAMP,
  `han_the` date DEFAULT NULL,
  `anh_dai_dien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ma_vai_tro` int DEFAULT NULL,
  `ma_trang_thai` int DEFAULT NULL,
  PRIMARY KEY (`ma_nguoi_dung`),
  UNIQUE KEY `email` (`email`),
  KEY `ma_vai_tro` (`ma_vai_tro`),
  KEY `ma_trang_thai` (`ma_trang_thai`),
  CONSTRAINT `nguoi_dung_ibfk_1` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro` (`ma_vai_tro`),
  CONSTRAINT `nguoi_dung_ibfk_2` FOREIGN KEY (`ma_trang_thai`) REFERENCES `trang_thai_nguoi_dung` (`ma_trang_thai`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi_dung`
--

LOCK TABLES `nguoi_dung` WRITE;
/*!40000 ALTER TABLE `nguoi_dung` DISABLE KEYS */;
INSERT INTO `nguoi_dung` VALUES (1,'Nguyễn Văn A','a@example.com','123456','1990-01-01','nam','Hà Nội','0901111111','2025-09-09 06:59:46','2026-12-31',NULL,1,1),(2,'Trần Thị B','b@example.com','123456','1992-05-10','nữ','HCM','0902222222','2025-09-09 06:59:46','2026-12-31',NULL,2,1),(3,'Lê Văn C','c@example.com','123456','1995-07-20','nam','Đà Nẵng','0903333333','2025-09-09 06:59:46','2026-12-31',NULL,2,2),(4,'Phạm Thị D','d@example.com','123456','1998-09-09','nữ','Cần Thơ','0904444444','2025-09-09 06:59:46','2026-12-31',NULL,3,1),(5,'Hoàng Văn E','e@example.com','123456','2000-12-12','nam','Hải Phòng','0905555555','2025-09-09 06:59:46','2026-12-31',NULL,1,1);
/*!40000 ALTER TABLE `nguoi_dung` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_nguoi_dung` AFTER INSERT ON `nguoi_dung` FOR EACH ROW BEGIN
   INSERT INTO nhat_ky_he_thong(ma_nguoi_dung, thao_tac, thoi_gian)
VALUES (NEW.ma_nguoi_dung, 'Thêm mới người dùng', NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nha_cung_cap`
--

DROP TABLE IF EXISTS `nha_cung_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nha_cung_cap` (
  `ma_ncc` int NOT NULL AUTO_INCREMENT,
  `ten_ncc` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_dien_thoai` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nguoi_lien_he` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_ncc`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nha_cung_cap`
--

LOCK TABLES `nha_cung_cap` WRITE;
/*!40000 ALTER TABLE `nha_cung_cap` DISABLE KEYS */;
INSERT INTO `nha_cung_cap` VALUES (1,'Công ty Sách Alpha','Hà Nội','0911000001',NULL,NULL),(2,'Nhà sách Fahasa','TP.HCM','0911000002',NULL,NULL);
/*!40000 ALTER TABLE `nha_cung_cap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nha_xuat_ban`
--

DROP TABLE IF EXISTS `nha_xuat_ban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nha_xuat_ban` (
  `ma_nxb` int NOT NULL AUTO_INCREMENT,
  `ten_nxb` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_dien_thoai` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_nxb`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nha_xuat_ban`
--

LOCK TABLES `nha_xuat_ban` WRITE;
/*!40000 ALTER TABLE `nha_xuat_ban` DISABLE KEYS */;
INSERT INTO `nha_xuat_ban` VALUES (1,'NXB Trẻ','TP.HCM','0281234567',NULL),(2,'NXB Giáo Dục','Hà Nội','0249876543',NULL);
/*!40000 ALTER TABLE `nha_xuat_ban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhat_ky_he_thong`
--

DROP TABLE IF EXISTS `nhat_ky_he_thong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhat_ky_he_thong` (
  `ma_nhat_ky` int NOT NULL AUTO_INCREMENT,
  `ma_nguoi_dung` int DEFAULT NULL,
  `thao_tac` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thoi_gian` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ma_nhat_ky`),
  KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `nhat_ky_he_thong_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhat_ky_he_thong`
--

LOCK TABLES `nhat_ky_he_thong` WRITE;
/*!40000 ALTER TABLE `nhat_ky_he_thong` DISABLE KEYS */;
INSERT INTO `nhat_ky_he_thong` VALUES (1,1,'Thêm sách: Giáo trình Cơ sở dữ liệu','2025-07-23 16:58:22'),(2,2,'Xử lý trả sách phiếu #2','2025-07-23 16:58:22'),(3,1,'Tạo phiếu mượn','2025-09-17 00:08:26'),(4,1,'Tạo phiếu mượn','2025-09-17 00:15:09'),(5,1,'Tạo phiếu mượn','2025-09-17 00:17:10'),(6,1,'Tạo phiếu mượn','2025-09-17 00:38:11'),(7,1,'Tạo phiếu mượn','2025-09-17 00:40:07'),(8,1,'Tạo phiếu mượn','2025-09-17 00:59:20'),(9,1,'Tạo phiếu mượn','2025-09-17 01:01:20'),(10,1,'Tạo phiếu mượn','2025-09-17 01:07:20'),(11,1,'Tạo phiếu mượn','2025-09-17 01:19:00'),(12,1,'Tạo phiếu mượn','2025-09-17 03:49:05'),(13,1,'Tạo phiếu mượn','2025-09-17 03:58:19'),(14,1,'Tạo phiếu mượn','2025-09-17 04:08:32'),(15,1,'Tạo phiếu mượn','2025-09-17 04:17:00'),(16,1,'Tạo phiếu mượn','2025-09-17 04:21:17'),(17,1,'Tạo phiếu mượn','2025-09-20 03:30:09'),(18,1,'Tạo phiếu mượn','2025-09-20 03:38:40'),(19,1,'Tạo phiếu mượn','2025-09-20 03:40:09'),(20,1,'Tạo phiếu mượn','2025-09-20 03:48:26'),(21,1,'Tạo phiếu mượn','2025-09-20 03:50:06'),(22,1,'Tạo phiếu mượn','2025-09-20 03:51:34'),(23,1,'Tạo phiếu mượn','2025-09-20 03:56:35'),(24,1,'Tạo phiếu mượn','2025-09-20 03:58:54'),(25,1,'Thêm sách: Lập trình Java cơ bản','2025-09-20 04:31:08'),(26,1,'Tạo phiếu mượn','2025-09-20 04:33:03'),(27,5,'Tạo phiếu mượn','2025-09-20 12:52:35'),(28,5,'Tạo phiếu mượn','2025-09-20 14:18:19'),(29,5,'Tạo phiếu mượn','2025-09-21 11:31:50'),(30,5,'Tạo phiếu mượn','2025-09-21 11:33:02'),(31,5,'Tạo phiếu mượn','2025-09-21 11:42:58'),(32,5,'Tạo phiếu mượn','2025-09-21 11:43:29'),(33,5,'Tạo phiếu mượn','2025-09-21 11:43:31'),(34,5,'Tạo phiếu mượn','2025-09-21 11:44:51'),(35,5,'Tạo phiếu mượn','2025-09-21 12:01:29'),(36,5,'Tạo phiếu mượn','2025-09-21 12:06:40'),(37,5,'Tạo phiếu mượn','2025-09-21 12:21:10'),(38,5,'Tạo phiếu mượn','2025-09-21 12:36:05'),(39,5,'Tạo phiếu mượn','2025-09-21 12:40:54'),(40,5,'Tạo phiếu mượn','2025-09-21 15:39:14');
/*!40000 ALTER TABLE `nhat_ky_he_thong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `ma_tb` int NOT NULL AUTO_INCREMENT,
  `ma_nguoi_dung` int DEFAULT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_gui` datetime DEFAULT CURRENT_TIMESTAMP,
  `da_doc` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ma_tb`),
  KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,1,'Bạn vừa mượn sách thành công.','2025-09-17 00:08:26',0),(2,1,'Bạn vừa mượn sách thành công.','2025-09-17 00:15:09',0),(3,1,'Bạn vừa mượn sách thành công.','2025-09-17 00:17:10',0),(4,1,'Bạn vừa mượn sách thành công.','2025-09-17 00:38:11',0),(5,1,'Đơn đặt mượn #4 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 00:38:11',0),(6,1,'Bạn vừa mượn sách thành công.','2025-09-17 00:40:07',0),(7,1,'Đơn đặt mượn #5 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 00:40:07',0),(8,1,'Đơn đặt mượn #6 của bạn đã bị từ chối. Lý do: Không có lý do cụ thể.','2025-09-17 00:41:06',0),(9,1,'Bạn vừa mượn sách thành công.','2025-09-17 00:59:20',0),(10,1,'Đơn đặt mượn #9 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 00:59:20',0),(11,1,'Bạn vừa mượn sách thành công.','2025-09-17 01:01:20',0),(12,1,'Bạn vừa mượn sách thành công.','2025-09-17 01:07:20',0),(13,1,'Đơn đặt mượn #8 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 01:07:20',0),(14,1,'Bạn vừa mượn sách thành công.','2025-09-17 01:19:00',0),(15,1,'Bạn vừa mượn sách thành công.','2025-09-17 03:49:05',0),(16,1,'Đơn đặt mượn #11 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 03:49:05',0),(17,1,'Bạn vừa mượn sách thành công.','2025-09-17 03:58:19',0),(18,1,'Đơn đặt mượn #12 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 03:58:19',0),(19,1,'Bạn vừa mượn sách thành công.','2025-09-17 04:08:32',0),(20,1,'Đơn đặt mượn #13 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 04:08:32',0),(21,1,'Bạn vừa mượn sách thành công.','2025-09-17 04:17:00',0),(22,1,'Đơn đặt mượn #14 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 04:17:00',0),(23,1,'Bạn đã trả sách, cảm ơn!','2025-09-17 04:17:19',0),(24,1,'Bạn vừa mượn sách thành công.','2025-09-17 04:21:17',0),(25,1,'Đơn đặt mượn #15 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 04:21:17',0),(26,1,'Bạn đã trả sách, cảm ơn!','2025-09-17 04:21:33',0),(27,1,'Bạn đã trả sách, cảm ơn!','2025-09-17 04:25:42',0),(28,1,'Bạn đã trả sách, cảm ơn!','2025-09-17 04:26:02',0),(29,1,'Bạn đã trả sách, cảm ơn!','2025-09-17 04:26:14',0),(30,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:30:09',0),(31,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:38:40',0),(32,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:40:09',0),(33,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:48:26',0),(34,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:50:06',0),(35,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:51:34',0),(36,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:56:35',0),(37,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:58:54',0),(38,1,'Bạn vừa mượn sách thành công.','2025-09-20 04:33:03',0),(39,NULL,'Bạn đã trả sách, cảm ơn!','2025-09-20 04:52:10',0),(40,NULL,'Bạn đã trả sách, cảm ơn!','2025-09-20 04:53:29',0),(41,NULL,'Bạn đã trả sách, cảm ơn!','2025-09-20 11:40:29',0),(42,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 11:52:12',0),(43,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 11:53:34',0),(44,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 11:54:38',0),(45,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 11:57:10',0),(46,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:01:24',0),(47,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:02:27',0),(48,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:02:59',0),(49,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:04:27',0),(50,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:05:01',0),(51,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:08:44',0),(52,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:11:17',0),(53,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:11:52',0),(54,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:11:55',0),(55,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:11:55',0),(56,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:11:56',0),(57,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:12:00',0),(58,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:12:01',0),(59,5,'Bạn vừa mượn sách thành công.','2025-09-20 12:52:35',0),(68,5,'Bạn đã trả sách, cảm ơn!','2025-09-20 13:55:26',0),(69,5,'Bạn đã trả sách, cảm ơn!','2025-09-20 13:56:38',0),(70,5,'Bạn đã trả sách, cảm ơn!','2025-09-20 14:04:14',0),(71,5,'Bạn vừa mượn sách thành công.','2025-09-20 14:18:19',0),(72,5,'Bạn đã trả sách, cảm ơn!','2025-09-20 14:20:26',0),(73,5,'Bạn đã trả sách, cảm ơn!','2025-09-20 14:21:40',0),(74,5,'Bạn vừa mượn sách thành công.','2025-09-21 11:31:50',0),(75,5,'Bạn vừa mượn sách thành công.','2025-09-21 11:33:02',0),(76,5,'Bạn vừa mượn sách thành công.','2025-09-21 11:42:58',0),(77,5,'Bạn vừa mượn sách thành công.','2025-09-21 11:43:29',0),(78,5,'Bạn vừa mượn sách thành công.','2025-09-21 11:43:31',0),(79,5,'Bạn vừa mượn sách thành công.','2025-09-21 11:44:51',0),(80,5,'Bạn vừa mượn sách thành công.','2025-09-21 12:01:29',0),(81,5,'Bạn vừa mượn sách thành công.','2025-09-21 12:06:40',0),(82,5,'Bạn vừa mượn sách thành công.','2025-09-21 12:21:10',0),(83,5,'Bạn vừa mượn sách thành công.','2025-09-21 12:36:05',0),(84,5,'Bạn vừa mượn sách thành công.','2025-09-21 12:40:54',0),(85,5,'Bạn đã trả sách, cảm ơn!','2025-09-21 12:41:27',0),(88,5,'Bạn đã trả sách, cảm ơn!','2025-09-21 14:45:00',0),(95,5,'Bạn đã trả sách, cảm ơn!','2025-09-21 15:00:32',0),(96,5,'Bạn vừa mượn sách thành công.','2025-09-21 15:39:14',0),(98,5,'Bạn đã trả sách, cảm ơn!','2025-09-21 15:54:28',0),(99,5,'Bạn bị phạt: 50000.00 VND - Sách 6 bị hỏng/rách/mất','2025-09-21 15:54:28',0);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `ma_payment` int NOT NULL AUTO_INCREMENT,
  `ma_nguoi_dung` int DEFAULT NULL,
  `so_tien` decimal(10,2) NOT NULL,
  `ngay_thanh_toan` datetime DEFAULT CURRENT_TIMESTAMP,
  `phuong_thuc` enum('tien_mat','the_ngan_hang','momo','zalopay') COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` enum('thanh_cong','that_bai','cho_xu_ly') COLLATE utf8mb4_unicode_ci DEFAULT 'cho_xu_ly',
  `ma_giao_dich` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_thuc` enum('momo','zalopay','stripe','khac') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_payment`),
  KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phat`
--

DROP TABLE IF EXISTS `phat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phat` (
  `ma_phat` int NOT NULL AUTO_INCREMENT,
  `ma_nguoi_dung` int DEFAULT NULL,
  `ma_phieu_muon` int DEFAULT NULL,
  `so_tien` decimal(10,2) NOT NULL,
  `ly_do` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_phat` date NOT NULL,
  `trang_thai` enum('Chưa thanh toán','Đã thanh toán') COLLATE utf8mb4_unicode_ci DEFAULT 'Chưa thanh toán',
  PRIMARY KEY (`ma_phat`),
  KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  KEY `ma_phieu_muon` (`ma_phieu_muon`),
  CONSTRAINT `phat_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `phat_ibfk_2` FOREIGN KEY (`ma_phieu_muon`) REFERENCES `phieu_muon` (`ma_phieu_muon`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phat`
--

LOCK TABLES `phat` WRITE;
/*!40000 ALTER TABLE `phat` DISABLE KEYS */;
INSERT INTO `phat` VALUES (1,5,39,50000.00,'Sách 6 bị hỏng/rách/mất','2025-09-21','Chưa thanh toán');
/*!40000 ALTER TABLE `phat` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_thong_bao_phat` AFTER INSERT ON `phat` FOR EACH ROW BEGIN
    INSERT INTO notification(ma_nguoi_dung, noi_dung, ngay_gui)
    VALUES (NEW.ma_nguoi_dung, CONCAT('Bạn bị phạt: ', NEW.so_tien, ' VND - ', NEW.ly_do), NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phieu_muon`
--

DROP TABLE IF EXISTS `phieu_muon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_muon` (
  `ma_phieu_muon` int NOT NULL AUTO_INCREMENT,
  `ma_nguoi_dung` int DEFAULT NULL,
  `ma_nhan_vien` int DEFAULT NULL,
  `ngay_muon` date NOT NULL,
  `ngay_hen_tra` date DEFAULT NULL,
  `trang_thai` enum('Đang mượn','Đã trả','Chưa đủ','Mất sách','Hỏng sách','Quá hạn') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'Đang mượn',
  `ghi_chu` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ma_phieu_muon`),
  KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  KEY `ma_nhan_vien` (`ma_nhan_vien`),
  CONSTRAINT `phieu_muon_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `phieu_muon_ibfk_2` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_muon`
--

LOCK TABLES `phieu_muon` WRITE;
/*!40000 ALTER TABLE `phieu_muon` DISABLE KEYS */;
INSERT INTO `phieu_muon` VALUES (1,3,2,'2025-07-01',NULL,'Đang mượn',NULL),(2,4,2,'2025-07-05',NULL,'Đã trả',NULL),(3,1,NULL,'2025-09-17','2025-09-20','Đang mượn',NULL),(4,1,NULL,'2025-09-17','2025-09-20','Đang mượn',NULL),(5,1,NULL,'2025-09-17','2025-09-20','Đang mượn',NULL),(6,1,1,'2025-09-17','2025-09-20','Đang mượn',NULL),(7,1,1,'2025-09-17','2025-09-20','Đang mượn',NULL),(8,1,1,'2025-09-17','2025-09-20','Đang mượn',NULL),(9,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(10,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(11,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(12,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(13,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(14,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(15,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(16,1,1,'2025-09-17','2025-09-24','Đã trả',NULL),(17,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(18,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(19,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(20,1,2,'2025-09-20','2025-10-04','Đã trả',NULL),(21,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(22,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(23,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(24,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(25,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(26,5,2,'2025-09-20','2025-10-04','Đã trả',NULL),(27,5,2,'2025-09-20','2025-10-04','Đã trả',NULL),(28,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(29,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(30,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(31,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(32,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(33,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(34,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(35,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(36,5,2,'2025-09-21','2025-10-05','Đã trả',NULL),(37,5,2,'2025-09-21','2025-10-19','Đang mượn',NULL),(38,5,2,'2025-09-21','2025-10-05','Đã trả',NULL),(39,5,2,'2025-09-21','2025-10-05','Đã trả',NULL);
/*!40000 ALTER TABLE `phieu_muon` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_thong_bao_muon` AFTER INSERT ON `phieu_muon` FOR EACH ROW BEGIN
    INSERT INTO notification(ma_nguoi_dung, noi_dung, ngay_gui)
    VALUES (NEW.ma_nguoi_dung, 'Bạn vừa mượn sách thành công.', NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_phieu_muon` AFTER INSERT ON `phieu_muon` FOR EACH ROW BEGIN
    INSERT INTO nhat_ky_he_thong(ma_nguoi_dung, thao_tac, thoi_gian)
VALUES (NEW.ma_nguoi_dung, 'Tạo phiếu mượn', NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_update_ngaytra_chitietmuon` AFTER UPDATE ON `phieu_muon` FOR EACH ROW BEGIN
    -- Chỉ đồng bộ khi ngày hẹn trả thay đổi
    IF NEW.ngay_hen_tra <> OLD.ngay_hen_tra THEN
        UPDATE chi_tiet_muon
        SET ngay_tra = NEW.ngay_hen_tra
        WHERE ma_phieu_muon = NEW.ma_phieu_muon;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_delete_phieu_muon` AFTER DELETE ON `phieu_muon` FOR EACH ROW BEGIN
    -- Xóa toàn bộ chi tiết mượn liên quan đến phiếu mượn vừa xóa
    DELETE FROM chi_tiet_muon
    WHERE ma_phieu_muon = OLD.ma_phieu_muon;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `phieu_tra`
--

DROP TABLE IF EXISTS `phieu_tra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_tra` (
  `ma_phieu_tra` int NOT NULL AUTO_INCREMENT,
  `ma_phieu_muon` int DEFAULT NULL,
  `ma_nhan_vien` int DEFAULT NULL,
  `ngay_tra` date NOT NULL,
  `ghi_chu` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`ma_phieu_tra`),
  KEY `ma_phieu_muon` (`ma_phieu_muon`),
  KEY `ma_nhan_vien` (`ma_nhan_vien`),
  CONSTRAINT `phieu_tra_ibfk_1` FOREIGN KEY (`ma_phieu_muon`) REFERENCES `phieu_muon` (`ma_phieu_muon`),
  CONSTRAINT `phieu_tra_ibfk_2` FOREIGN KEY (`ma_nhan_vien`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_tra`
--

LOCK TABLES `phieu_tra` WRITE;
/*!40000 ALTER TABLE `phieu_tra` DISABLE KEYS */;
INSERT INTO `phieu_tra` VALUES (1,2,2,'2025-07-18','Sách hơi rách ở bìa, đã ghi nhận'),(5,15,1,'2025-09-17','Độc giả trả 1 quyển trước'),(6,16,1,'2025-09-17','Độc giả trả 1 quyển trước'),(7,16,1,'2025-09-17','Độc giả trả nốt'),(8,16,1,'2025-09-17','Độc giả trả nốt'),(9,16,1,'2025-09-17','Độc giả trả nốt'),(10,NULL,2,'2025-09-20','1'),(11,NULL,2,'2025-09-20','1'),(12,NULL,2,'2025-09-20','1'),(13,20,2,'2025-09-20','Trả sách theo bản sao'),(14,20,2,'2025-09-20','Trả sách theo bản sao'),(15,20,2,'2025-09-20','Trả sách theo bản sao'),(16,20,2,'2025-09-20','Trả sách theo bản sao'),(17,20,2,'2025-09-20','Trả sách theo bản sao'),(18,20,2,'2025-09-20','Trả sách theo bản sao'),(19,20,2,'2025-09-20','Trả sách theo bản sao'),(20,20,2,'2025-09-20','Trả sách theo bản sao'),(21,20,2,'2025-09-20','Trả sách theo bản sao'),(22,20,2,'2025-09-20','Trả sách theo bản sao'),(23,20,2,'2025-09-20','Trả sách theo bản sao'),(24,20,2,'2025-09-20','Trả sách theo bản sao'),(25,20,2,'2025-09-20','Trả sách theo bản sao'),(26,20,2,'2025-09-20','Trả sách theo bản sao'),(27,20,2,'2025-09-20','Trả sách theo bản sao'),(28,20,2,'2025-09-20','Trả sách theo bản sao'),(29,20,2,'2025-09-20','Trả sách theo bản sao'),(38,26,2,'2025-09-20','Độc giả trả'),(39,26,2,'2025-09-20','Độc giả trả'),(40,26,2,'2025-09-20','Độc giả trả'),(41,26,2,'2025-09-20','Độc giả trả'),(42,27,2,'2025-09-20','Độc giả trả'),(43,38,2,'2025-09-21','Độc giả trả'),(46,38,2,'2025-09-21','Trả sách đúng hạn'),(53,36,2,'2025-09-21','Trả sách đúng hạn'),(55,39,2,'2025-09-21','Trả sách đúng hạn');
/*!40000 ALTER TABLE `phieu_tra` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_tra_sach` AFTER INSERT ON `phieu_tra` FOR EACH ROW BEGIN
    UPDATE sach
    SET so_luong = so_luong + 1
    WHERE ma_sach IN (
        SELECT ma_sach FROM chi_tiet_muon WHERE ma_phieu_muon = NEW.ma_phieu_muon
    );
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_thong_bao_tra` AFTER INSERT ON `phieu_tra` FOR EACH ROW BEGIN
    DECLARE uid INT;
    SELECT ma_nguoi_dung INTO uid FROM phieu_muon WHERE ma_phieu_muon = NEW.ma_phieu_muon;
    INSERT INTO notification(ma_nguoi_dung, noi_dung, ngay_gui)
    VALUES (uid, 'Bạn đã trả sách, cảm ơn!', NOW());
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_phat_qua_han` AFTER INSERT ON `phieu_tra` FOR EACH ROW BEGIN
    DECLARE ngay_hen DATE;
    DECLARE ngay_tra_thuc DATE;
    DECLARE so_ngay_tre INT;
    DECLARE tien_phat INT;

    -- Lấy ngày hẹn trả
    SELECT ngay_hen_tra INTO ngay_hen
    FROM phieu_muon
    WHERE ma_phieu_muon = NEW.ma_phieu_muon;

    SET ngay_tra_thuc = NEW.ngay_tra;

    IF ngay_tra_thuc > ngay_hen THEN
        SET so_ngay_tre = DATEDIFF(ngay_tra_thuc, ngay_hen);

        SELECT gia_tri INTO tien_phat
        FROM cau_hinh
        WHERE ten_tham_so = 'tien_phat_moi_ngay';

        INSERT INTO phat(ma_nguoi_dung, ma_phieu_muon, so_tien, ly_do, ngay_phat)
        SELECT pm.ma_nguoi_dung, pm.ma_phieu_muon,
               so_ngay_tre * tien_phat,
               CONCAT('Trả muộn ', so_ngay_tre, ' ngày'), NOW()
        FROM phieu_muon pm
        WHERE pm.ma_phieu_muon = NEW.ma_phieu_muon;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_phieu_tra` AFTER INSERT ON `phieu_tra` FOR EACH ROW BEGIN
    -- Thêm các bản ghi trả tương ứng với những chi tiết mượn chưa trả
    INSERT INTO chi_tiet_tra (ma_phieu_tra, ma_sach, ma_ban_sao, tinh_trang_sach)
    SELECT NEW.ma_phieu_tra, ct.ma_sach, ct.ma_ban_sao, 'tot'
    FROM chi_tiet_muon ct
    WHERE ct.ma_phieu_muon = NEW.ma_phieu_muon
      AND ct.da_tra = 0;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_delete_phieu_tra` AFTER DELETE ON `phieu_tra` FOR EACH ROW BEGIN
    -- Xóa toàn bộ chi tiết trả liên quan đến phiếu trả vừa xóa
    DELETE FROM chi_tiet_tra
    WHERE ma_phieu_tra = OLD.ma_phieu_tra;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `quyen`
--

DROP TABLE IF EXISTS `quyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quyen` (
  `ma_quyen` int NOT NULL AUTO_INCREMENT,
  `ten_quyen` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma_quyen`),
  UNIQUE KEY `ten_quyen` (`ten_quyen`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quyen`
--

LOCK TABLES `quyen` WRITE;
/*!40000 ALTER TABLE `quyen` DISABLE KEYS */;
INSERT INTO `quyen` VALUES (6,'CAU_HINH_HE_THONG'),(3,'DUYET_MUON'),(4,'DUYET_TRA'),(2,'QUAN_LY_NGUOI_DUNG'),(1,'QUAN_LY_SACH'),(5,'XEM_BAO_CAO');
/*!40000 ALTER TABLE `quyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sach` (
  `ma_sach` int NOT NULL AUTO_INCREMENT,
  `tieu_de` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tac_gia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ISBN` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_trang` int DEFAULT NULL,
  `so_luong` int NOT NULL DEFAULT '1',
  `nam_xuat_ban` year DEFAULT NULL,
  `gia_tri` decimal(10,2) DEFAULT NULL,
  `mo_ta` text COLLATE utf8mb4_unicode_ci,
  `hinh_bia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ma_the_loai` int DEFAULT NULL,
  `ma_danh_muc` int DEFAULT NULL,
  `ma_ngon_ngu` int DEFAULT NULL,
  `ma_nxb` int DEFAULT NULL,
  `ma_ncc` int DEFAULT NULL,
  `ma_khu_vuc` int DEFAULT NULL,
  `trang_thai` enum('Hoạt động','Ngừng lưu hành','Khóa') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Hoạt động',
  `so_luong_con` int DEFAULT '0',
  PRIMARY KEY (`ma_sach`),
  UNIQUE KEY `ISBN` (`ISBN`),
  UNIQUE KEY `ISBN_2` (`ISBN`),
  KEY `ma_the_loai` (`ma_the_loai`),
  KEY `ma_danh_muc` (`ma_danh_muc`),
  KEY `ma_ngon_ngu` (`ma_ngon_ngu`),
  KEY `ma_nxb` (`ma_nxb`),
  KEY `ma_ncc` (`ma_ncc`),
  KEY `ma_khu_vuc` (`ma_khu_vuc`),
  FULLTEXT KEY `ft_tieu_de_tac_gia_ISBN` (`tieu_de`,`tac_gia`,`ISBN`),
  CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`ma_the_loai`) REFERENCES `the_loai` (`ma_the_loai`),
  CONSTRAINT `sach_ibfk_2` FOREIGN KEY (`ma_danh_muc`) REFERENCES `danh_muc` (`ma_danh_muc`),
  CONSTRAINT `sach_ibfk_3` FOREIGN KEY (`ma_ngon_ngu`) REFERENCES `ngon_ngu` (`ma_ngon_ngu`),
  CONSTRAINT `sach_ibfk_4` FOREIGN KEY (`ma_nxb`) REFERENCES `nha_xuat_ban` (`ma_nxb`),
  CONSTRAINT `sach_ibfk_5` FOREIGN KEY (`ma_ncc`) REFERENCES `nha_cung_cap` (`ma_ncc`),
  CONSTRAINT `sach_ibfk_6` FOREIGN KEY (`ma_khu_vuc`) REFERENCES `khu_vuc` (`ma_khu_vuc`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sach`
--

LOCK TABLES `sach` WRITE;
/*!40000 ALTER TABLE `sach` DISABLE KEYS */;
INSERT INTO `sach` VALUES (1,'Giáo trình Cơ sở dữ liệu','Nguyễn Văn T','9786041234567',300,30,NULL,NULL,'Giáo trình học CSDL cơ bản','bia_csd.jpg',1,1,1,2,1,1,'Hoạt động',1),(2,'Những người khốn khổ','Victor Hugo','9786047654321',500,1,NULL,NULL,'Tiểu thuyết kinh điển Pháp','bia_kk.jpg',2,1,1,1,2,2,'Hoạt động',0),(3,'Tạp chí Khoa học Việt Nam','Nhiều tác giả','TCKH202507',100,1,NULL,NULL,'Tạp chí chuyên đề khoa học công nghệ','bia_tckh.jpg',1,2,1,1,1,1,'Hoạt động',1),(6,'Lập trình Java cơ bản','Nguyễn Văn B','9786047654322',300,20,2021,NULL,'Sách hướng dẫn lập trình Java cho sinh viên','java.jpg',1,1,1,1,1,1,'Hoạt động',-34);
/*!40000 ALTER TABLE `sach` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_sach` AFTER INSERT ON `sach` FOR EACH ROW BEGIN
   INSERT INTO nhat_ky_he_thong(ma_nguoi_dung, thao_tac, thoi_gian)
VALUES (1, CONCAT('Thêm sách: ', NEW.tieu_de), NOW());

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sach_yeu_thich`
--

DROP TABLE IF EXISTS `sach_yeu_thich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sach_yeu_thich` (
  `ma_nguoi_dung` int NOT NULL,
  `ma_sach` int NOT NULL,
  `ngay_them` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ma_nguoi_dung`,`ma_sach`),
  KEY `ma_sach` (`ma_sach`),
  CONSTRAINT `sach_yeu_thich_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `sach_yeu_thich_ibfk_2` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sach_yeu_thich`
--

LOCK TABLES `sach_yeu_thich` WRITE;
/*!40000 ALTER TABLE `sach_yeu_thich` DISABLE KEYS */;
INSERT INTO `sach_yeu_thich` VALUES (1,1,'2025-09-15 09:58:00'),(1,2,'2025-09-15 09:58:00'),(2,3,'2025-09-15 09:58:00');
/*!40000 ALTER TABLE `sach_yeu_thich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `the_loai`
--

DROP TABLE IF EXISTS `the_loai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `the_loai` (
  `ma_the_loai` int NOT NULL AUTO_INCREMENT,
  `ten_the_loai` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma_the_loai`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `the_loai`
--

LOCK TABLES `the_loai` WRITE;
/*!40000 ALTER TABLE `the_loai` DISABLE KEYS */;
INSERT INTO `the_loai` VALUES (1,'Khoa học'),(2,'Văn học'),(3,'Lịch sử'),(4,'Công nghệ'),(5,'Khác');
/*!40000 ALTER TABLE `the_loai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tin_nhan`
--

DROP TABLE IF EXISTS `tin_nhan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tin_nhan` (
  `ma_tin_nhan` int NOT NULL AUTO_INCREMENT,
  `ma_nguoi_gui` int DEFAULT NULL,
  `ma_nguoi_nhan` int DEFAULT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thoi_gian` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ma_tin_nhan`),
  KEY `ma_nguoi_gui` (`ma_nguoi_gui`),
  KEY `ma_nguoi_nhan` (`ma_nguoi_nhan`),
  CONSTRAINT `tin_nhan_ibfk_1` FOREIGN KEY (`ma_nguoi_gui`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `tin_nhan_ibfk_2` FOREIGN KEY (`ma_nguoi_nhan`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tin_nhan`
--

LOCK TABLES `tin_nhan` WRITE;
/*!40000 ALTER TABLE `tin_nhan` DISABLE KEYS */;
INSERT INTO `tin_nhan` VALUES (1,3,2,'Chị ơi, em xin gia hạn sách thêm 1 tuần nhé.','2025-07-23 16:58:22'),(2,2,3,'Được em, chị đã ghi nhận lại rồi.','2025-07-23 16:58:22');
/*!40000 ALTER TABLE `tin_nhan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trang_thai_nguoi_dung`
--

DROP TABLE IF EXISTS `trang_thai_nguoi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trang_thai_nguoi_dung` (
  `ma_trang_thai` int NOT NULL AUTO_INCREMENT,
  `ten_trang_thai` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma_trang_thai`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trang_thai_nguoi_dung`
--

LOCK TABLES `trang_thai_nguoi_dung` WRITE;
/*!40000 ALTER TABLE `trang_thai_nguoi_dung` DISABLE KEYS */;
INSERT INTO `trang_thai_nguoi_dung` VALUES (1,'hoạt động'),(2,'không hoạt động');
/*!40000 ALTER TABLE `trang_thai_nguoi_dung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_tinh_trang_muon_tra`
--

DROP TABLE IF EXISTS `v_tinh_trang_muon_tra`;
/*!50001 DROP VIEW IF EXISTS `v_tinh_trang_muon_tra`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_tinh_trang_muon_tra` AS SELECT 
 1 AS `ma_phieu_muon`,
 1 AS `ma_nguoi_dung`,
 1 AS `ten_doc_gia`,
 1 AS `ma_sach`,
 1 AS `ten_sach`,
 1 AS `ma_ban_sao`,
 1 AS `tinh_trang_ban_sao`,
 1 AS `ngay_muon`,
 1 AS `han_tra`,
 1 AS `ngay_tra_thuc_te`,
 1 AS `trang_thai_chi_tiet`,
 1 AS `tien_phat`,
 1 AS `trang_thai_phat`,
 1 AS `trang_thai_phieu`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vai_tro`
--

DROP TABLE IF EXISTS `vai_tro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vai_tro` (
  `ma_vai_tro` int NOT NULL AUTO_INCREMENT,
  `ten_vai_tro` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ma_vai_tro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vai_tro`
--

LOCK TABLES `vai_tro` WRITE;
/*!40000 ALTER TABLE `vai_tro` DISABLE KEYS */;
INSERT INTO `vai_tro` VALUES (1,'Admin'),(2,'Thủ thư'),(3,'Độc giả');
/*!40000 ALTER TABLE `vai_tro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vai_tro_quyen`
--

DROP TABLE IF EXISTS `vai_tro_quyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vai_tro_quyen` (
  `ma_vai_tro` int NOT NULL,
  `ma_quyen` int NOT NULL,
  PRIMARY KEY (`ma_vai_tro`,`ma_quyen`),
  KEY `ma_quyen` (`ma_quyen`),
  CONSTRAINT `vai_tro_quyen_ibfk_1` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro` (`ma_vai_tro`),
  CONSTRAINT `vai_tro_quyen_ibfk_2` FOREIGN KEY (`ma_quyen`) REFERENCES `quyen` (`ma_quyen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vai_tro_quyen`
--

LOCK TABLES `vai_tro_quyen` WRITE;
/*!40000 ALTER TABLE `vai_tro_quyen` DISABLE KEYS */;
/*!40000 ALTER TABLE `vai_tro_quyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_doc_gia_no_phat`
--

DROP TABLE IF EXISTS `vw_doc_gia_no_phat`;
/*!50001 DROP VIEW IF EXISTS `vw_doc_gia_no_phat`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_doc_gia_no_phat` AS SELECT 
 1 AS `ma_nguoi_dung`,
 1 AS `ho_ten`,
 1 AS `tong_no`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_thong_ke_ngay`
--

DROP TABLE IF EXISTS `vw_thong_ke_ngay`;
/*!50001 DROP VIEW IF EXISTS `vw_thong_ke_ngay`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_thong_ke_ngay` AS SELECT 
 1 AS `ngay`,
 1 AS `tong_phieu_muon`,
 1 AS `tong_phieu_tra`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_top_sach_muon`
--

DROP TABLE IF EXISTS `vw_top_sach_muon`;
/*!50001 DROP VIEW IF EXISTS `vw_top_sach_muon`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_top_sach_muon` AS SELECT 
 1 AS `ma_sach`,
 1 AS `tieu_de`,
 1 AS `so_lan_muon`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `yeu_cau_tra`
--

DROP TABLE IF EXISTS `yeu_cau_tra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yeu_cau_tra` (
  `ma_yeu_cau` int NOT NULL AUTO_INCREMENT,
  `ma_phieu_muon` int NOT NULL,
  `ma_doc_gia` int NOT NULL,
  `ngay_gui` datetime DEFAULT CURRENT_TIMESTAMP,
  `trang_thai` enum('cho_xac_nhan','da_xac_nhan','huy') COLLATE utf8mb4_unicode_ci DEFAULT 'cho_xac_nhan',
  PRIMARY KEY (`ma_yeu_cau`),
  KEY `ma_phieu_muon` (`ma_phieu_muon`),
  KEY `ma_doc_gia` (`ma_doc_gia`),
  CONSTRAINT `yeu_cau_tra_ibfk_1` FOREIGN KEY (`ma_phieu_muon`) REFERENCES `phieu_muon` (`ma_phieu_muon`),
  CONSTRAINT `yeu_cau_tra_ibfk_2` FOREIGN KEY (`ma_doc_gia`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeu_cau_tra`
--

LOCK TABLES `yeu_cau_tra` WRITE;
/*!40000 ALTER TABLE `yeu_cau_tra` DISABLE KEYS */;
INSERT INTO `yeu_cau_tra` VALUES (1,7,1,'2025-09-17 03:30:33','cho_xac_nhan'),(2,12,1,'2025-09-17 03:49:43','da_xac_nhan'),(3,13,1,'2025-09-17 03:58:32','da_xac_nhan'),(4,14,1,'2025-09-17 04:08:39','da_xac_nhan'),(5,15,1,'2025-09-17 04:17:14','da_xac_nhan'),(6,16,1,'2025-09-17 04:21:24','da_xac_nhan'),(7,16,1,'2025-09-17 04:25:25','da_xac_nhan'),(8,16,1,'2025-09-17 04:25:49','da_xac_nhan'),(9,16,1,'2025-09-17 04:26:08','da_xac_nhan'),(10,20,1,'2025-09-20 00:00:00','da_xac_nhan'),(11,26,5,'2025-09-20 00:00:00','da_xac_nhan'),(12,26,5,'2025-09-20 00:00:00','da_xac_nhan'),(13,26,5,'2025-09-20 00:00:00','da_xac_nhan'),(14,27,5,'2025-09-20 00:00:00','da_xac_nhan'),(15,36,5,'2025-09-21 00:00:00','cho_xac_nhan'),(16,36,5,'2025-09-21 00:00:00','cho_xac_nhan'),(17,37,5,'2025-09-21 00:00:00','cho_xac_nhan'),(18,38,5,'2025-09-21 00:00:00','da_xac_nhan'),(19,38,5,'2025-09-21 00:00:00','da_xac_nhan'),(20,38,5,'2025-09-21 00:00:00','cho_xac_nhan'),(21,37,5,'2025-09-21 00:00:00','cho_xac_nhan'),(22,36,5,'2025-09-21 00:00:00','da_xac_nhan'),(23,36,5,'2025-09-21 00:00:00','cho_xac_nhan'),(24,39,5,'2025-09-21 00:00:00','da_xac_nhan');
/*!40000 ALTER TABLE `yeu_cau_tra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'quan_ly_thu_vien_merged'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `ev_nhac_han_tra_sach` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = '+00:00' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `ev_nhac_han_tra_sach` ON SCHEDULE EVERY 1 DAY STARTS '2025-09-09 07:06:31' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    INSERT INTO notification(ma_nguoi_dung, noi_dung, ngay_gui)
    SELECT pm.ma_nguoi_dung,
           CONCAT('Nhắc nhở: Bạn cần trả sách trong phiếu mượn ', pm.ma_phieu_muon, ' vào ngày mai.'),
           NOW()
    FROM phieu_muon pm
    JOIN chi_tiet_muon ct ON pm.ma_phieu_muon = ct.ma_phieu_muon
    WHERE ct.ngay_tra = CURDATE() + INTERVAL 1 DAY;
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `ev_tao_phat_qua_han` */;;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = '+00:00' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `ev_tao_phat_qua_han` ON SCHEDULE EVERY 1 DAY STARTS '2025-09-09 07:06:31' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
    INSERT INTO phat(ma_nguoi_dung, ma_phieu_muon, so_tien, ly_do, ngay_phat)
    SELECT pm.ma_nguoi_dung, pm.ma_phieu_muon, 50000, 'Trả sách quá hạn', NOW()
    FROM phieu_muon pm
    JOIN chi_tiet_muon ct ON pm.ma_phieu_muon = ct.ma_phieu_muon
    LEFT JOIN phieu_tra pt ON pt.ma_phieu_muon = pm.ma_phieu_muon
    WHERE ct.ngay_tra < CURDATE() AND pt.ma_phieu_tra IS NULL;
END */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'quan_ly_thu_vien_merged'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddBookWithCopies` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddBookWithCopies`(
    IN p_tieu_de VARCHAR(200),
    IN p_tac_gia VARCHAR(255),
    IN p_ISBN VARCHAR(20),
    IN p_so_trang INT,
    IN p_nam_xuat_ban YEAR,
    IN p_mo_ta TEXT,
    IN p_hinh_bia VARCHAR(255),
    IN p_ma_the_loai INT,
    IN p_ma_danh_muc INT,
    IN p_ma_ngon_ngu INT,
    IN p_ma_nxb INT,
    IN p_ma_ncc INT,
    IN p_ma_khu_vuc INT,
    IN p_trang_thai ENUM('Hoạt động','Ngừng lưu hành','Khóa'),
    IN p_so_luong_ban_sao INT,
    IN p_vi_tri VARCHAR(100),
    IN p_gia_mua DECIMAL(10,2)
)
BEGIN
    DECLARE v_ma_sach INT;
    DECLARE i INT DEFAULT 1;

    -- 1. Thêm đầu sách mới
    INSERT INTO sach (
        tieu_de, tac_gia, ISBN, so_trang, nam_xuat_ban,
        mo_ta, hinh_bia, ma_the_loai, ma_danh_muc, ma_ngon_ngu,
        ma_nxb, ma_ncc, ma_khu_vuc, trang_thai,
        so_luong, so_luong_con
    ) VALUES (
        p_tieu_de, p_tac_gia, p_ISBN, p_so_trang, p_nam_xuat_ban,
        p_mo_ta, p_hinh_bia, p_ma_the_loai, p_ma_danh_muc, p_ma_ngon_ngu,
        p_ma_nxb, p_ma_ncc, p_ma_khu_vuc, p_trang_thai,
        0, 0
    );

    -- Lấy id của sách vừa thêm
    SET v_ma_sach = LAST_INSERT_ID();

    -- 2. Thêm nhiều bản sao cho sách này
    WHILE i <= p_so_luong_ban_sao DO
        INSERT INTO ban_sao_sach (
            ma_sach, ma_vach, rfid, tinh_trang, vi_tri, ngay_mua, gia_mua
        ) VALUES (
            v_ma_sach,
            CONCAT('S', v_ma_sach, '_', LPAD(i, 4, '0')),
            CONCAT('RFID', v_ma_sach, '_', LPAD(i, 4, '0')),
            'còn',
            p_vi_tri,
            CURDATE(),
            p_gia_mua
        );
        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddCopiesForBook` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddCopiesForBook`(
    IN p_ma_sach INT,        -- mã sách đã tồn tại
    IN p_so_luong INT,       -- số bản sao muốn thêm
    IN p_vi_tri VARCHAR(100),
    IN p_gia_mua DECIMAL(10,2)
)
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE v_max_id INT;

    -- Tìm số thứ tự lớn nhất đã cấp cho mã sách này
    SELECT IFNULL(MAX(CAST(SUBSTRING_INDEX(ma_vach, '_', -1) AS UNSIGNED)), 0)
    INTO v_max_id
    FROM ban_sao_sach
    WHERE ma_sach = p_ma_sach;

    -- Thêm từng bản sao mới
    WHILE i <= p_so_luong DO
        INSERT INTO ban_sao_sach (
            ma_sach, ma_vach, rfid, tinh_trang, vi_tri, ngay_mua, gia_mua
        ) VALUES (
            p_ma_sach,
            CONCAT('S', p_ma_sach, '_', LPAD(v_max_id + i, 4, '0')),
            CONCAT('RFID', p_ma_sach, '_', LPAD(v_max_id + i, 4, '0')),
            'còn',
            p_vi_tri,
            CURDATE(),
            p_gia_mua
        );
        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddSachYeuThich` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddSachYeuThich`(
    IN p_ma_nguoi_dung INT,
    IN p_ma_sach INT
)
BEGIN
    INSERT IGNORE INTO sach_yeu_thich (ma_nguoi_dung, ma_sach)
    VALUES (p_ma_nguoi_dung, p_ma_sach);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdvancedSearchNguoiDung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AdvancedSearchNguoiDung`(
    IN p_ho_ten VARCHAR(255),
    IN p_dia_chi VARCHAR(255),
    IN p_so_dien_thoai VARCHAR(20)
)
BEGIN
    SELECT *
    FROM nguoi_dung
    WHERE (p_ho_ten IS NULL OR ho_ten LIKE CONCAT('%', p_ho_ten, '%'))
      AND (p_dia_chi IS NULL OR dia_chi LIKE CONCAT('%', p_dia_chi, '%'))
      AND (p_so_dien_thoai IS NULL OR so_dien_thoai LIKE CONCAT('%', p_so_dien_thoai, '%'));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AdvancedSearchSach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AdvancedSearchSach`(
    IN p_tieu_de VARCHAR(255),
    IN p_tac_gia VARCHAR(100),
    IN p_ISBN VARCHAR(20)
)
BEGIN
    SELECT *
    FROM sach
    WHERE (p_tieu_de IS NULL OR tieu_de LIKE CONCAT('%', p_tieu_de, '%'))
      AND (p_tac_gia IS NULL OR tac_gia LIKE CONCAT('%', p_tac_gia, '%'))
      AND (p_ISBN IS NULL OR ISBN LIKE CONCAT('%', p_ISBN, '%'));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ApproveDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ApproveDatMuon`(
    IN p_ma_dat_muon INT,
    IN p_ma_nhan_vien INT
)
BEGIN
    -- biến
    DECLARE v_ma_nguoi_dung INT;
    DECLARE v_ngay_du_kien DATE;
    DECLARE v_ngay_muon DATE;
    DECLARE v_ngay_hen_tra DATE;
    DECLARE v_ma_phieu_muon INT;
    DECLARE v_max_borrow_days INT;

    DECLARE done INT DEFAULT 0;
    DECLARE v_ma_sach INT;
    DECLARE v_so_luong INT;
    DECLARE v_ma_ban_sao INT;
    DECLARE v_trang_thai_sach VARCHAR(100);
    DECLARE v_err_msg VARCHAR(255);

    -- Cursor & handler
    DECLARE cur CURSOR FOR
        SELECT ma_sach, so_luong
        FROM chi_tiet_dat_muon
        WHERE ma_dat_muon = p_ma_dat_muon;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Handler rollback khi có lỗi
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Duyệt phiếu thất bại do lỗi hệ thống hoặc dữ liệu đồng thời';
    END;

    START TRANSACTION;

    -- Lấy số ngày mượn mặc định
    SELECT CAST(gia_tri AS UNSIGNED)
    INTO v_max_borrow_days
    FROM cau_hinh
    WHERE ten_key = 'so_ngay_muon_mac_dinh';

    -- Lấy thông tin phiếu đặt mượn
    SELECT ma_nguoi_dung, ngay_du_kien_muon
    INTO v_ma_nguoi_dung, v_ngay_du_kien
    FROM dat_muon
    WHERE ma_dat_muon = p_ma_dat_muon
      AND trang_thai = 'Chờ duyệt'
    FOR UPDATE;

    IF v_ma_nguoi_dung IS NULL THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Phiếu đặt mượn không hợp lệ hoặc đã được xử lý';
    END IF;

    SET v_ngay_muon = CURDATE();
    SET v_ngay_hen_tra = DATE_ADD(v_ngay_muon, INTERVAL v_max_borrow_days DAY);

    -- Tạo phiếu mượn
    INSERT INTO phieu_muon(ma_nguoi_dung, ma_nhan_vien, ngay_muon, ngay_hen_tra, trang_thai)
    VALUES (v_ma_nguoi_dung, p_ma_nhan_vien, v_ngay_muon, v_ngay_hen_tra, 'Đang mượn');

    SET v_ma_phieu_muon = LAST_INSERT_ID();

    -- Duyệt qua chi tiết đặt mượn
    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO v_ma_sach, v_so_luong;
        IF done THEN
            LEAVE read_loop;
        END IF;

        WHILE v_so_luong > 0 DO
            -- chọn bản sao khả dụng và khóa
            SELECT ma_ban_sao, tinh_trang INTO v_ma_ban_sao, v_trang_thai_sach
            FROM ban_sao_sach
            WHERE ma_sach = v_ma_sach AND tinh_trang = 'còn'
            LIMIT 1
            FOR UPDATE;

            IF v_ma_ban_sao IS NULL THEN
                SET v_err_msg = CONCAT('Không đủ bản sao khả dụng cho sách ', v_ma_sach);
                ROLLBACK;
                SIGNAL SQLSTATE '45000'
                SET MESSAGE_TEXT = v_err_msg;
            END IF;

            -- ghi chi tiết mượn
            INSERT INTO chi_tiet_muon(
                ma_phieu_muon, ma_sach, ma_ban_sao, so_luong, da_tra,
                trang_thai_sach, ngay_tra
            )
            VALUES (
                v_ma_phieu_muon, v_ma_sach, v_ma_ban_sao, 1, 0,
                v_trang_thai_sach, v_ngay_hen_tra
            );

            -- cập nhật bản sao
            UPDATE ban_sao_sach
            SET tinh_trang = 'đang_mượn'
            WHERE ma_ban_sao = v_ma_ban_sao;

            -- giảm số lượng sách
            UPDATE sach
            SET so_luong_con = so_luong_con - 1
            WHERE ma_sach = v_ma_sach;

            SET v_so_luong = v_so_luong - 1;
        END WHILE;
    END LOOP;
    CLOSE cur;

    -- cập nhật trạng thái đặt mượn
    UPDATE dat_muon
    SET trang_thai = 'Đang mượn', ma_nhan_vien = p_ma_nhan_vien
    WHERE ma_dat_muon = p_ma_dat_muon;

    COMMIT;

    -- trả về mã phiếu mượn
    SELECT v_ma_phieu_muon AS ma_phieu_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AuthenticateNguoiDung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AuthenticateNguoiDung`(
       IN p_email VARCHAR(100),
    IN p_mat_khau VARCHAR(255)
)
BEGIN
    SELECT *
    FROM nguoi_dung
    WHERE email = p_email
      AND mat_khau = p_mat_khau
      AND ma_trang_thai = 1
    LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `BaoCaoTonKhoSach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `BaoCaoTonKhoSach`()
BEGIN
    SELECT s.tieu_de, s.so_luong, IF(s.so_luong < 5, 'Đang được mượn nhiều', 'Sách chưa được mượn nhiều') AS tinh_trang
    FROM sach s;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cap_nhat_nguoi_dung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cap_nhat_nguoi_dung`(
    IN p_ma_nguoi_dung INT,
    IN p_ho_ten VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_dien_thoai VARCHAR(20)
)
BEGIN
    UPDATE nguoi_dung
    SET ho_ten = p_ho_ten, email = p_email, dien_thoai = p_dien_thoai
    WHERE ma_nguoi_dung = p_ma_nguoi_dung;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cap_nhat_sach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cap_nhat_sach`(
    IN p_ma_sach INT,
    IN p_ten_sach VARCHAR(200),
    IN p_so_luong INT
)
BEGIN
    UPDATE sach
    SET ten_sach = p_ten_sach, so_luong = p_so_luong
    WHERE ma_sach = p_ma_sach;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckDieuKienMuonSach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckDieuKienMuonSach`(
    IN p_ma_doc_gia INT
)
BEGIN
    -- Check trạng thái tài khoản
    IF EXISTS (
        SELECT 1
        FROM nguoi_dung nd
        JOIN trang_thai_nguoi_dung tt ON nd.ma_trang_thai = tt.ma_trang_thai
        WHERE nd.ma_nguoi_dung = p_ma_doc_gia
          AND LOWER(tt.ten_trang_thai) <> 'hoạt động'
    ) THEN
        SELECT 'ERROR' AS status, 'Tài khoản không hoạt động' AS message;

    -- Check còn phí phạt chưa thanh toán
    ELSEIF EXISTS (
        SELECT 1
        FROM phat p
        WHERE p.ma_nguoi_dung = p_ma_doc_gia
          AND p.trang_thai = 'Chưa thanh toán'
    ) THEN
        SELECT 'ERROR' AS status, 'Bạn còn phí phạt chưa thanh toán' AS message;

    ELSE
        SELECT 'SUCCESS' AS status, 'Đủ điều kiện mượn / gia hạn' AS message;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ConfirmTraSachChiTietFull` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ConfirmTraSachChiTietFull`(
    IN p_ma_yeu_cau INT,
    IN p_ma_nhan_vien INT,
    IN p_ghi_chu VARCHAR(255),
    IN p_chi_tiet_json JSON
)
BEGIN
    DECLARE v_ma_phieu_muon INT;
    DECLARE v_ma_doc_gia INT;
    DECLARE v_ma_phieu_tra INT;
    DECLARE i INT DEFAULT 0;
    DECLARE n INT;
    DECLARE v_ma_sach INT;
    DECLARE v_ma_ban_sao INT;
    DECLARE v_tinh_trang VARCHAR(20);
    DECLARE v_msg VARCHAR(255);
    DECLARE v_tien_phat DECIMAL(10,2);

    -- Bắt đầu transaction
    START TRANSACTION;

    -- 1. Lấy phiếu mượn từ yêu cầu trả
    SELECT ma_phieu_muon, ma_doc_gia
    INTO v_ma_phieu_muon, v_ma_doc_gia
    FROM yeu_cau_tra
    WHERE ma_yeu_cau = p_ma_yeu_cau
      AND trang_thai = 'cho_xac_nhan'
    LIMIT 1;

    IF v_ma_phieu_muon IS NULL THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Yêu cầu trả không hợp lệ hoặc đã xử lý';
    END IF;

    -- 2. Tạo phiếu trả
    INSERT INTO phieu_tra(ma_phieu_muon, ma_nhan_vien, ngay_tra, ghi_chu)
    VALUES (v_ma_phieu_muon, p_ma_nhan_vien, CURDATE(), p_ghi_chu);

    SET v_ma_phieu_tra = LAST_INSERT_ID();

    -- 3. Duyệt JSON chi tiết
    SET n = JSON_LENGTH(p_chi_tiet_json);
    WHILE i < n DO
        SET v_ma_ban_sao = JSON_UNQUOTE(JSON_EXTRACT(p_chi_tiet_json, CONCAT('$[', i, '].ma_ban_sao')));
        SET v_tinh_trang = JSON_UNQUOTE(JSON_EXTRACT(p_chi_tiet_json, CONCAT('$[', i, '].tinh_trang')));

        -- Check tình trạng hợp lệ
        IF v_tinh_trang IS NULL OR v_tinh_trang NOT IN ('tot','rach','mat_trang','hong') THEN
            SET v_msg = CONCAT('Sai tình trạng sách ở chi tiết #', i);
            ROLLBACK;
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;
        END IF;

        -- Khóa chi tiết mượn để tránh xử lý trùng (FOR UPDATE)
        SELECT ma_sach
        INTO v_ma_sach
        FROM chi_tiet_muon
        WHERE ma_ban_sao = v_ma_ban_sao
          AND ma_phieu_muon = v_ma_phieu_muon
          AND da_tra = 0
        FOR UPDATE;

        IF v_ma_sach IS NULL THEN
            SET v_msg = CONCAT('Bản sao #', v_ma_ban_sao, ' không hợp lệ hoặc đã trả');
            ROLLBACK;
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;
        END IF;

        -- Insert chi tiết trả
        INSERT INTO chi_tiet_tra(ma_phieu_tra, ma_sach, ma_ban_sao, so_luong, tinh_trang_sach)
        VALUES (v_ma_phieu_tra, v_ma_sach, v_ma_ban_sao, 1, v_tinh_trang);

        -- Update chi_tiet_muon
        UPDATE chi_tiet_muon
        SET da_tra = 1, ngay_tra_thuc_te = CURDATE()
        WHERE ma_phieu_muon = v_ma_phieu_muon
          AND ma_sach = v_ma_sach
          AND ma_ban_sao = v_ma_ban_sao
          AND da_tra = 0;

        -- Update tình trạng bản sao + số lượng sách
        IF v_tinh_trang = 'tot' THEN
            UPDATE ban_sao_sach SET tinh_trang = 'còn'
            WHERE ma_ban_sao = v_ma_ban_sao;

            UPDATE sach SET so_luong_con = so_luong_con + 1
            WHERE ma_sach = v_ma_sach;

        ELSEIF v_tinh_trang IN ('rach','hong') THEN
            UPDATE ban_sao_sach SET tinh_trang = 'hỏng'
            WHERE ma_ban_sao = v_ma_ban_sao;

        ELSEIF v_tinh_trang = 'mat_trang' THEN
            UPDATE ban_sao_sach SET tinh_trang = 'mất'
            WHERE ma_ban_sao = v_ma_ban_sao;
        END IF;

        SET i = i + 1;
    END WHILE;

    -- 4. Đánh dấu yêu cầu trả đã xử lý
    UPDATE yeu_cau_tra
    SET trang_thai = 'da_xac_nhan'
    WHERE ma_yeu_cau = p_ma_yeu_cau;

    -- 5. Tính tổng tiền phạt (nếu có)
    SELECT IFNULL(SUM(so_tien),0)
    INTO v_tien_phat
    FROM phat
    WHERE ma_phieu_muon = v_ma_phieu_muon;

    -- Commit transaction
    COMMIT;

    -- 6. Kết quả trả về
    SELECT v_ma_phieu_tra AS ma_phieu_tra,
           v_tien_phat AS tien_phat;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dang_nhap` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dang_nhap`(
    IN p_email VARCHAR(100),
    IN p_mat_khau VARCHAR(255)
)
BEGIN
    SELECT ma_nguoi_dung, ho_ten, ma_vai_tro
    FROM nguoi_dung
    WHERE email = p_email AND mat_khau = p_mat_khau AND ma_trang_thai = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DanhSachNguoiDung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DanhSachNguoiDung`()
BEGIN

    SELECT nd.*, vt.TenVaiTro, tt.TenTrangThai

    FROM nguoi_dung nd

    LEFT JOIN vai_tro vt ON nd.MaVaiTro = vt.MaVaiTro

    LEFT JOIN trang_thai_nguoi_dung tt ON nd.MaTrangThai = tt.MaTrangThai;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DanhSachSach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DanhSachSach`()
BEGIN

    SELECT s.*, tl.TenTheLoai, dm.TenDanhMuc, nn.TenNgonNgu, nxb.TenNXB, kv.TenKhuVuc

    FROM sach s

    LEFT JOIN the_loai tl ON s.MaTheLoai = tl.MaTheLoai

    LEFT JOIN danh_muc dm ON s.MaDanhMuc = dm.MaDanhMuc

    LEFT JOIN ngon_ngu nn ON s.MaNgonNgu = nn.MaNgonNgu

    LEFT JOIN nha_xuat_ban nxb ON s.MaNXB = nxb.MaNXB

    LEFT JOIN khu_vuc kv ON s.MaKhuVuc = kv.MaKhuVuc;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `danh_sach_danh_gia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `danh_sach_danh_gia`(IN p_ma_sach INT)
BEGIN
    SELECT dg.*, nd.ho_ten
    FROM danh_gia dg
    JOIN nguoi_dung nd ON dg.ma_nguoi_dung = nd.ma_nguoi_dung
    WHERE dg.ma_sach = p_ma_sach;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `danh_sach_dat_muon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `danh_sach_dat_muon`(IN p_ma_nguoi_dung INT)
BEGIN
    SELECT * FROM dat_muon WHERE ma_nguoi_dung = p_ma_nguoi_dung;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `danh_sach_phat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `danh_sach_phat`(IN p_ma_nguoi_dung INT)
BEGIN
    SELECT * FROM phat WHERE ma_nguoi_dung = p_ma_nguoi_dung;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `danh_sach_phieu_muon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `danh_sach_phieu_muon`(IN p_ma_nguoi_dung INT)
BEGIN
    SELECT * FROM phieu_muon WHERE ma_nguoi_dung = p_ma_nguoi_dung;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `danh_sach_thong_bao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `danh_sach_thong_bao`(IN p_ma_nguoi_dung INT)
BEGIN
    SELECT * FROM notification
    WHERE ma_nguoi_dung = p_ma_nguoi_dung
    ORDER BY ngay_gui DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteChiTietDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteChiTietDatMuon`(IN p_ma_dat_muon INT)
BEGIN
    DELETE FROM chi_tiet_dat_muon WHERE ma_dat_muon = p_ma_dat_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteChiTietMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteChiTietMuon`(IN p_ma_phieu_muon INT)
BEGIN
    DELETE FROM chi_tiet_muon WHERE ma_phieu_muon = p_ma_phieu_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteDanhGia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteDanhGia`(IN p_ma_danh_gia INT)
BEGIN
    DELETE FROM danh_gia WHERE ma_danh_gia = p_ma_danh_gia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteDanhMuc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteDanhMuc`(IN p_ma_danh_muc INT)
BEGIN
    DELETE FROM danh_muc WHERE ma_danh_muc = p_ma_danh_muc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteDatMuon`(IN p_ma_dat_muon INT)
BEGIN
    DELETE FROM dat_muon WHERE ma_dat_muon = p_ma_dat_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteKhuVuc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteKhuVuc`(IN p_ma_khu_vuc INT)
BEGIN
    DELETE FROM khu_vuc WHERE ma_khu_vuc = p_ma_khu_vuc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteNgonNgu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteNgonNgu`(IN p_ma_ngon_ngu INT)
BEGIN
    DELETE FROM ngon_ngu WHERE ma_ngon_ngu = p_ma_ngon_ngu;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteNguoiDung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteNguoiDung`(IN p_ma_nguoi_dung INT)
BEGIN
    DELETE FROM nguoi_dung WHERE ma_nguoi_dung = p_ma_nguoi_dung;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteNhaCungCap` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteNhaCungCap`(IN p_ma_ncc INT)
BEGIN
    DELETE FROM nha_cung_cap WHERE ma_ncc = p_ma_ncc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteNhatKyHeThong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteNhatKyHeThong`(IN p_ma_nhat_ky INT)
BEGIN
    DELETE FROM nhat_ky_he_thong WHERE ma_nhat_ky = p_ma_nhat_ky;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteNhaXuatBan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteNhaXuatBan`(IN p_ma_nxb INT)
BEGIN
    DELETE FROM nha_xuat_ban WHERE ma_nxb = p_ma_nxb;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeletePhieuMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeletePhieuMuon`(IN p_ma_phieu_muon INT)
BEGIN
    DELETE FROM phieu_muon WHERE ma_phieu_muon = p_ma_phieu_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeletePhieuTra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeletePhieuTra`(IN p_ma_phieu_tra INT)
BEGIN
    DELETE FROM phieu_tra WHERE ma_phieu_tra = p_ma_phieu_tra;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteSach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteSach`(IN p_ma_sach INT)
BEGIN
    DELETE FROM sach WHERE ma_sach = p_ma_sach;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteTheLoai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteTheLoai`(IN p_ma_the_loai INT)
BEGIN
    DELETE FROM the_loai WHERE ma_the_loai = p_ma_the_loai;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteTinNhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteTinNhan`(IN p_ma_tin_nhan INT)
BEGIN
    DELETE FROM tin_nhan WHERE ma_tin_nhan = p_ma_tin_nhan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DeleteVaiTro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteVaiTro`(IN p_ma_vai_tro INT)
BEGIN
    DELETE FROM vai_tro WHERE ma_vai_tro = p_ma_vai_tro;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `doi_trang_thai_nguoi_dung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `doi_trang_thai_nguoi_dung`(
    IN p_ma_nguoi_dung INT,
    IN p_ma_trang_thai INT
)
BEGIN
    UPDATE nguoi_dung
    SET ma_trang_thai = p_ma_trang_thai
    WHERE ma_nguoi_dung = p_ma_nguoi_dung;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `duyet_dat_muon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `duyet_dat_muon`(
    IN p_ma_dat_muon INT,
    IN p_ma_nhan_vien INT,
    IN p_ngay_muon DATE,
    IN p_ngay_du_kien_tra DATE
)
BEGIN
    DECLARE v_ma_doc_gia INT;
    DECLARE v_ma_phieu_muon INT;

    -- Lấy thông tin độc giả
    SELECT ma_doc_gia INTO v_ma_doc_gia
    FROM dat_muon
    WHERE ma_dat_muon = p_ma_dat_muon;

    -- Tạo phiếu mượn mới
    INSERT INTO phieu_muon(ma_doc_gia, ma_nhan_vien, ngay_muon, ngay_du_kien_tra, trang_thai)
    VALUES (v_ma_doc_gia, p_ma_nhan_vien, p_ngay_muon, p_ngay_du_kien_tra, 'Đang mượn');

    SET v_ma_phieu_muon = LAST_INSERT_ID();

    -- Thêm sách mượn
    INSERT INTO chi_tiet_muon(ma_phieu_muon, ma_sach, so_luong, trang_thai_sach)
    SELECT v_ma_phieu_muon, ma_sach, so_luong, 'Tốt'
    FROM chi_tiet_dat_muon
    WHERE ma_dat_muon = p_ma_dat_muon;

    -- Cập nhật trạng thái
    UPDATE dat_muon
    SET trang_thai = 'Đã duyệt', ma_nhan_vien = p_ma_nhan_vien
    WHERE ma_dat_muon = p_ma_dat_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllChiTietDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllChiTietDatMuon`()
BEGIN
    SELECT * FROM chi_tiet_dat_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllChiTietMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllChiTietMuon`()
BEGIN
    SELECT * FROM chi_tiet_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllDanhGia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllDanhGia`()
BEGIN
    SELECT * FROM danh_gia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllDanhMuc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllDanhMuc`()
BEGIN
    SELECT * FROM danh_muc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllDatMuon`()
BEGIN
    SELECT * FROM dat_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllKhuVuc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllKhuVuc`()
BEGIN
    SELECT * FROM khu_vuc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllNgonNgu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllNgonNgu`()
BEGIN
    SELECT * FROM ngon_ngu;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllNguoiDung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllNguoiDung`()
BEGIN
    SELECT * FROM nguoi_dung;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllNhaCungCap` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllNhaCungCap`()
BEGIN
    SELECT * FROM nha_cung_cap;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllNhatKyHeThong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllNhatKyHeThong`()
BEGIN
    SELECT * FROM nhat_ky_he_thong;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllNhaXuatBan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllNhaXuatBan`()
BEGIN
    SELECT * FROM nha_xuat_ban;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllPhieuMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllPhieuMuon`()
BEGIN
    SELECT * FROM phieu_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllPhieuTra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllPhieuTra`()
BEGIN
    SELECT * FROM phieu_tra;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllSach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllSach`()
BEGIN
    SELECT * FROM sach;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllSachFullInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllSachFullInfo`()
BEGIN
    SELECT 
        s.ma_sach,
        s.tieu_de,
        s.tac_gia,
        s.ISBN,
        s.so_trang,
        s.so_luong,
        s.nam_xuat_ban,
        s.gia_tri,
        s.mo_ta,
        s.hinh_bia,
        
        -- Join để lấy tên thể loại, danh mục, ngôn ngữ, NXB, NCC, khu vực
        tl.ten_the_loai,
        dm.ten_danh_muc,
        nn.ten_ngon_ngu,
        nha_xuat_ban.ten_nxb,
        nha_cung_cap.ten_ncc,
        kv.ten_khu_vuc,
        
        -- Tính số lượng còn lại = tổng số lượng - số đang mượn chưa trả
        (s.so_luong - IFNULL((
            SELECT SUM(ctm.so_luong)
            FROM chi_tiet_muon ctm
            JOIN phieu_muon pm ON pm.ma_phieu_muon = ctm.ma_phieu_muon
            WHERE ctm.ma_sach = s.ma_sach 
              AND pm.trang_thai = 'Đang mượn'
        ), 0)) AS so_luong_con_lai

    FROM sach s
    LEFT JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    LEFT JOIN danh_muc dm ON s.ma_danh_muc = dm.ma_danh_muc
    LEFT JOIN ngon_ngu nn ON s.ma_ngon_ngu = nn.ma_ngon_ngu
    LEFT JOIN nha_xuat_ban ON s.ma_nxb = nha_xuat_ban.ma_nxb
    LEFT JOIN nha_cung_cap ON s.ma_ncc = nha_cung_cap.ma_ncc
    LEFT JOIN khu_vuc kv ON s.ma_khu_vuc = kv.ma_khu_vuc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllTheLoai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllTheLoai`()
BEGIN
    SELECT * FROM the_loai;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllTinNhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllTinNhan`()
BEGIN
    SELECT * FROM tin_nhan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetAllVaiTro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllVaiTro`()
BEGIN
    SELECT * FROM vai_tro;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetChiTietDatMuonById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetChiTietDatMuonById`(IN p_ma_dat_muon INT)
BEGIN
    SELECT * FROM chi_tiet_dat_muon WHERE ma_dat_muon = p_ma_dat_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetChiTietMuonById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetChiTietMuonById`(IN p_ma_phieu_muon INT)
BEGIN
    SELECT * FROM chi_tiet_muon WHERE ma_phieu_muon = p_ma_phieu_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDanhGiaById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDanhGiaById`(IN p_ma_danh_gia INT)
BEGIN
    SELECT * FROM danh_gia WHERE ma_danh_gia = p_ma_danh_gia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDanhMucById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDanhMucById`(IN p_ma_danh_muc INT)
BEGIN
    SELECT * FROM danh_muc WHERE ma_danh_muc = p_ma_danh_muc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDatMuonById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDatMuonById`(IN p_ma_dat_muon INT)
BEGIN
    SELECT * FROM dat_muon WHERE ma_dat_muon = p_ma_dat_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetKhuVucById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetKhuVucById`(IN p_ma_khu_vuc INT)
BEGIN
    SELECT * FROM khu_vuc WHERE ma_khu_vuc = p_ma_khu_vuc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMostBorrowedBooks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMostBorrowedBooks`(
    IN p_limit INT
)
BEGIN
    SELECT s.ma_sach, s.tieu_de, s.tac_gia, s.ISBN, SUM(ctm.so_luong) AS total_borrowed
    FROM chi_tiet_muon ctm
    JOIN sach s ON ctm.ma_sach = s.ma_sach
    GROUP BY s.ma_sach, s.tieu_de, s.tac_gia, s.ISBN
    ORDER BY total_borrowed DESC
    LIMIT p_limit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMuonTraByUserId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMuonTraByUserId`(IN p_ma_nguoi_dung INT)
BEGIN
    SELECT pm.ma_phieu_muon, pm.ngay_muon, pm.trang_thai, s.tieu_de, s.tac_gia, ctm.so_luong
    FROM phieu_muon pm
    JOIN chi_tiet_muon ctm ON pm.ma_phieu_muon = ctm.ma_phieu_muon
    JOIN sach s ON ctm.ma_sach = s.ma_sach
    WHERE pm.ma_nguoi_dung = p_ma_nguoi_dung;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMuonTraStats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMuonTraStats`()
BEGIN
    SELECT 
        COUNT(DISTINCT pm.ma_phieu_muon) AS so_luot_muon,
        COUNT(DISTINCT pt.ma_phieu_tra) AS so_luot_tra
    FROM phieu_muon pm
    LEFT JOIN phieu_tra pt ON pm.ma_phieu_muon = pt.ma_phieu_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetNgonNguById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetNgonNguById`(IN p_ma_ngon_ngu INT)
BEGIN
    SELECT * FROM ngon_ngu WHERE ma_ngon_ngu = p_ma_ngon_ngu;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetNguoiDungById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetNguoiDungById`(IN p_ma_nguoi_dung INT)
BEGIN
    SELECT * FROM nguoi_dung WHERE ma_nguoi_dung = p_ma_nguoi_dung;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetNguoiMuonTichCuc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetNguoiMuonTichCuc`()
BEGIN
    SELECT nd.ho_ten, COUNT(pm.ma_phieu_muon) AS so_luot_muon
    FROM nguoi_dung nd
    JOIN phieu_muon pm ON nd.ma_nguoi_dung = pm.ma_doc_gia
    WHERE pm.ngay_muon >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
    GROUP BY nd.ho_ten
    ORDER BY so_luot_muon DESC
    LIMIT 10;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetNhaCungCapById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetNhaCungCapById`(IN p_ma_ncc INT)
BEGIN
    SELECT * FROM nha_cung_cap WHERE ma_ncc = p_ma_ncc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetNhatKyHeThongById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetNhatKyHeThongById`(IN p_ma_nhat_ky INT)
BEGIN
    SELECT * FROM nhat_ky_he_thong WHERE ma_nhat_ky = p_ma_nhat_ky;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetNhaXuatBanById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetNhaXuatBanById`(IN p_ma_nxb INT)
BEGIN
    SELECT * FROM nha_xuat_ban WHERE ma_nxb = p_ma_nxb;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPhieuMuonById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPhieuMuonById`(IN p_ma_phieu_muon INT)
BEGIN
    SELECT * FROM phieu_muon WHERE ma_phieu_muon = p_ma_phieu_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetPhieuTraById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPhieuTraById`(IN p_ma_phieu_tra INT)
BEGIN
    SELECT * FROM phieu_tra WHERE ma_phieu_tra = p_ma_phieu_tra;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSachById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSachById`(IN p_ma_sach INT)
BEGIN
    SELECT * FROM sach WHERE ma_sach = p_ma_sach;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSachCountByTheLoai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSachCountByTheLoai`()
BEGIN
    SELECT tl.ten_the_loai, COUNT(s.ma_sach) AS so_luong_sach
    FROM sach s
    JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    GROUP BY tl.ten_the_loai;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSachQuaHan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSachQuaHan`()
BEGIN
    SELECT s.tieu_de, pm.ngay_muon, DATEDIFF(CURDATE(), pm.ngay_muon) AS so_ngay_qua_han
    FROM phieu_muon pm
    JOIN chi_tiet_muon ctm ON pm.ma_phieu_muon = ctm.ma_phieu_muon
    JOIN sach s ON ctm.ma_sach = s.ma_sach
    WHERE pm.trang_thai = 'dang muon' AND DATEDIFF(CURDATE(), pm.ngay_muon) > 30;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSachStatsByTheLoaiNam` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSachStatsByTheLoaiNam`()
BEGIN
    SELECT tl.ten_the_loai, s.nam_xuat_ban, COUNT(s.ma_sach) AS so_luong
    FROM sach s
    JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    WHERE s.nam_xuat_ban IS NOT NULL
    GROUP BY tl.ten_the_loai, s.nam_xuat_ban;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSachYeuThichByUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSachYeuThichByUser`(
    IN p_ma_nguoi_dung INT
)
BEGIN
   SELECT s.ma_sach,
           s.tieu_de,
           s.tac_gia,
           s.ISBN,
           s.so_trang,
           s.so_luong,
           s.nam_xuat_ban,
           s.gia_tri,
           s.mo_ta,
           s.hinh_bia,
           sy.ngay_them
    FROM sach_yeu_thich sy
    JOIN sach s ON sy.ma_sach = s.ma_sach
    WHERE sy.ma_nguoi_dung = p_ma_nguoi_dung;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTheLoaiById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTheLoaiById`(IN p_ma_the_loai INT)
BEGIN
    SELECT * FROM the_loai WHERE ma_the_loai = p_ma_the_loai;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTinNhanById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTinNhanById`(IN p_ma_tin_nhan INT)
BEGIN
    SELECT * FROM tin_nhan WHERE ma_tin_nhan = p_ma_tin_nhan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTonKhoSach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTonKhoSach`()
BEGIN
    SELECT s.tieu_de, s.so_luong
    FROM sach s
    WHERE s.so_luong < 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTopNguoiMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTopNguoiMuon`()
BEGIN
    SELECT nd.ho_ten, COUNT(pm.ma_phieu_muon) AS so_luot_muon
    FROM nguoi_dung nd
    JOIN phieu_muon pm ON nd.ma_nguoi_dung = pm.ma_doc_gia
    GROUP BY nd.ho_ten
    ORDER BY so_luot_muon DESC
    LIMIT 10;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetVaiTroById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetVaiTroById`(IN p_ma_vai_tro INT)
BEGIN
    SELECT * FROM vai_tro WHERE ma_vai_tro = p_ma_vai_tro;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ghi_nhat_ky` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ghi_nhat_ky`(IN p_ma_nguoi_dung INT, IN p_hanh_dong VARCHAR(255))
BEGIN
    INSERT INTO nhat_ky_he_thong(ma_nguoi_dung, hanh_dong)
    VALUES (p_ma_nguoi_dung, p_hanh_dong);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GiaHanPhieuMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GiaHanPhieuMuon`(
    IN p_ma_phieu_muon INT,
    IN p_so_ngay INT,
    IN p_ma_nhan_vien INT
)
BEGIN
    DECLARE v_ngay_hen_tra DATE;
    DECLARE v_so_ngay_gia_han_toi_da INT DEFAULT 30; -- số ngày gia hạn tối đa
    DECLARE v_so_lan_gia_han INT DEFAULT 0;
    DECLARE v_ma_gia_han INT;

    -- Lấy ngày hẹn trả hiện tại
    SELECT ngay_hen_tra INTO v_ngay_hen_tra
    FROM phieu_muon
    WHERE ma_phieu_muon = p_ma_phieu_muon;

    IF v_ngay_hen_tra IS NULL THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Không tìm thấy phiếu mượn';
    END IF;

    -- Đếm số lần gia hạn trước đó
    SELECT COUNT(*) INTO v_so_lan_gia_han
    FROM gia_han
    WHERE ma_phieu_muon = p_ma_phieu_muon;

    IF v_so_lan_gia_han >= 2 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Đã vượt quá số lần gia hạn cho phép';
    END IF;

    -- Kiểm tra số ngày gia hạn
    IF p_so_ngay <= 0 OR p_so_ngay > v_so_ngay_gia_han_toi_da THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Số ngày gia hạn không hợp lệ';
    END IF;

    -- Cập nhật ngày hẹn trả mới
    UPDATE phieu_muon
    SET ngay_hen_tra = DATE_ADD(v_ngay_hen_tra, INTERVAL p_so_ngay DAY)
    WHERE ma_phieu_muon = p_ma_phieu_muon;

    -- Ghi vào bảng gia_han
    INSERT INTO gia_han(ma_phieu_muon, so_ngay, ngay_gia_han, ma_nhan_vien)
    VALUES (p_ma_phieu_muon, p_so_ngay, NOW(), p_ma_nhan_vien);

    SET v_ma_gia_han = LAST_INSERT_ID();

    -- Trả kết quả
    SELECT v_ma_gia_han AS ma_gia_han,
           DATE_ADD(v_ngay_hen_tra, INTERVAL p_so_ngay DAY) AS ngay_hen_tra_moi;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gui_thong_bao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gui_thong_bao`(IN p_ma_nguoi_dung INT, IN p_noi_dung TEXT)
BEGIN
    INSERT INTO notification(ma_nguoi_dung, noi_dung)
    VALUES (p_ma_nguoi_dung, p_noi_dung);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `gui_tin_nhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `gui_tin_nhan`(IN p_gui INT, IN p_nhan INT, IN p_noi_dung TEXT)
BEGIN
    INSERT INTO tin_nhan(ma_nguoi_dung_gui, ma_nguoi_dung_nhan, noi_dung)
    VALUES (p_gui, p_nhan, p_noi_dung);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hop_thoai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hop_thoai`(IN p_user1 INT, IN p_user2 INT)
BEGIN
    SELECT * FROM tin_nhan
    WHERE (ma_nguoi_dung_gui = p_user1 AND ma_nguoi_dung_nhan = p_user2)
       OR (ma_nguoi_dung_gui = p_user2 AND ma_nguoi_dung_nhan = p_user1)
    ORDER BY ngay_gui ASC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertChiTietDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertChiTietDatMuon`(
    IN p_ma_dat_muon INT,
    IN p_ma_sach INT,
    IN p_so_luong INT
)
BEGIN
    DECLARE v_con_lai INT;
    DECLARE v_trang_thai VARCHAR(50);

    -- Kiểm tra số lượng đặt hợp lệ
    IF p_so_luong <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Số lượng mượn phải lớn hơn 0';
    END IF;

    -- Kiểm tra sách có tồn tại không
    IF NOT EXISTS (SELECT 1 FROM sach WHERE ma_sach = p_ma_sach) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Sách không tồn tại';
    END IF;

    -- Kiểm tra tình trạng sách (nếu có trạng thái khóa/ngừng lưu hành)
    SELECT trang_thai INTO v_trang_thai
    FROM sach
    WHERE ma_sach = p_ma_sach;

    IF v_trang_thai IS NOT NULL AND v_trang_thai <> 'Hoạt động' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Sách này hiện không được phép mượn';
    END IF;

    -- Kiểm tra còn đủ số lượng hay không
    SELECT so_luong INTO v_con_lai
    FROM sach
    WHERE ma_sach = p_ma_sach;

    IF v_con_lai IS NULL OR v_con_lai < p_so_luong THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Không đủ số lượng sách để đặt mượn';
    END IF;

    -- Nếu hợp lệ thì thêm chi tiết đặt mượn
    INSERT INTO chi_tiet_dat_muon(ma_dat_muon, ma_sach, so_luong)
    VALUES (p_ma_dat_muon, p_ma_sach, p_so_luong);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertChiTietMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertChiTietMuon`(
    IN p_ma_phieu_muon INT,
    IN p_ma_sach INT,
    IN p_so_luong INT
)
BEGIN
    INSERT INTO chi_tiet_muon (ma_phieu_muon, ma_sach, so_luong)
    VALUES (p_ma_phieu_muon, p_ma_sach, p_so_luong);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertDanhGia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertDanhGia`(
    IN p_ma_sach INT,
    IN p_ma_doc_gia INT,
    IN p_diem INT,
    IN p_binh_luan TEXT,
    IN p_ngay_danh_gia DATE
)
BEGIN
    INSERT INTO danh_gia (ma_sach, ma_doc_gia, diem, binh_luan, ngay_danh_gia)
    VALUES (p_ma_sach, p_ma_doc_gia, p_diem, p_binh_luan, p_ngay_danh_gia);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertDanhMuc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertDanhMuc`(
    IN p_ten_danh_muc VARCHAR(255)
)
BEGIN
    INSERT INTO danh_muc (ten_danh_muc)
    VALUES (p_ten_danh_muc);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertDatMuon`(
    IN p_ma_nguoi_dung INT,
    IN p_ngay_dat DATE,
    IN p_ngay_du_kien_muon DATE,
    IN p_ghi_chu TEXT,
    IN p_ma_nhan_vien INT
)
BEGIN
    DECLARE v_tinh_trang VARCHAR(50);
    DECLARE v_han_the DATE;
    DECLARE v_no_phat INT;
    DECLARE v_dang_muon INT;
    DECLARE v_max_reserve_days INT;
    DECLARE v_max_borrow_books INT;
    DECLARE v_ngay_du_kien DATE;
    DECLARE v_msg VARCHAR(255);

    -- Lấy số ngày cho phép đặt mượn
    SELECT CAST(gia_tri AS UNSIGNED)
    INTO v_max_reserve_days
    FROM cau_hinh
    WHERE ten_key = 'so_ngay_muon_mac_dinh';

    -- Lấy số sách mượn tối đa
    SELECT CAST(gia_tri AS UNSIGNED)
    INTO v_max_borrow_books
    FROM cau_hinh
    WHERE ten_key = 'so_sach_toi_da_moi_doc_gia';

    -- Xác định ngày dự kiến mượn (nếu client không truyền thì dùng mặc định)
    IF p_ngay_du_kien_muon IS NULL THEN
        SET v_ngay_du_kien = DATE_ADD(p_ngay_dat, INTERVAL v_max_reserve_days DAY);
    ELSE
        SET v_ngay_du_kien = p_ngay_du_kien_muon;
        -- kiểm tra không được nhỏ hơn ngày đặt
        IF v_ngay_du_kien < p_ngay_dat THEN
            SET v_msg = 'Ngày dự kiến mượn không hợp lệ (trước ngày đặt)';
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;
        END IF;
        -- kiểm tra không được vượt quá số ngày cho phép
        IF v_ngay_du_kien > DATE_ADD(p_ngay_dat, INTERVAL v_max_reserve_days DAY) THEN
            SET v_msg = CONCAT('Ngày dự kiến mượn vượt quá số ngày cho phép (', v_max_reserve_days, ' ngày)');
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;
        END IF;
    END IF;

    -- Lấy trạng thái và hạn thẻ
    SELECT tt.ten_trang_thai, nd.han_the
    INTO v_tinh_trang, v_han_the
    FROM nguoi_dung nd
    JOIN trang_thai_nguoi_dung tt ON nd.ma_trang_thai = tt.ma_trang_thai
    WHERE nd.ma_nguoi_dung = p_ma_nguoi_dung;

    -- Kiểm tra thẻ hết hạn
    IF v_han_the < CURDATE() THEN
        SET v_msg = 'Thẻ thư viện đã hết hạn';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;
    END IF;

    -- Kiểm tra tài khoản bị khóa
    IF v_tinh_trang <> 'Hoạt động' THEN
        SET v_msg = 'Tài khoản không hoạt động';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;
    END IF;

    -- Kiểm tra nợ phí phạt
    SELECT COUNT(*) INTO v_no_phat
    FROM phat
    WHERE ma_nguoi_dung = p_ma_nguoi_dung AND trang_thai = 'Chưa thanh toán';

    IF v_no_phat > 0 THEN
        SET v_msg = 'Người dùng còn nợ phí phạt chưa thanh toán';
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;
    END IF;

    -- Kiểm tra số sách đang mượn
    SELECT IFNULL(SUM(ctm.so_luong),0) INTO v_dang_muon
    FROM chi_tiet_muon ctm
    JOIN phieu_muon pm ON pm.ma_phieu_muon = ctm.ma_phieu_muon
    WHERE pm.ma_nguoi_dung = p_ma_nguoi_dung AND pm.trang_thai = 'Đang mượn';

    IF v_dang_muon >= v_max_borrow_books THEN
        SET v_msg = CONCAT('Người dùng đã mượn quá số sách cho phép (', v_max_borrow_books, ')');
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = v_msg;
    END IF;

    -- Nếu hợp lệ thì insert (trạng thái mặc định 'Chờ duyệt')
    INSERT INTO dat_muon(ma_nguoi_dung, ngay_dat, ngay_du_kien_muon, trang_thai, ghi_chu, ma_nhan_vien)
    VALUES (p_ma_nguoi_dung, p_ngay_dat, v_ngay_du_kien, 'Chờ duyệt', p_ghi_chu, p_ma_nhan_vien);

    -- Trả về ID vừa insert
    SELECT LAST_INSERT_ID() AS ma_dat_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertKhuVuc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertKhuVuc`(
    IN p_ten_khu_vuc VARCHAR(255)
)
BEGIN
    INSERT INTO khu_vuc (ten_khu_vuc)
    VALUES (p_ten_khu_vuc);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertNgonNgu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertNgonNgu`(
    IN p_ten_ngon_ngu VARCHAR(255)
)
BEGIN
    INSERT INTO ngon_ngu (ten_ngon_ngu)
    VALUES (p_ten_ngon_ngu);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertNguoiDung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertNguoiDung`(
    IN p_ho_ten VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_mat_khau VARCHAR(255),
    IN p_ngay_sinh DATE,
    IN p_dia_chi VARCHAR(255),
    IN p_so_dien_thoai VARCHAR(20),
    IN p_ma_vai_tro INT,
    IN p_ngay_het_han DATE,
    IN p_ma_trang_thai INT
)
BEGIN
    -- Kiểm tra số điện thoại hợp lệ: bắt đầu bằng 0 và chỉ chứa chữ số
    IF p_so_dien_thoai IS NOT NULL AND p_so_dien_thoai NOT REGEXP '^0[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Số điện thoại không hợp lệ';
    END IF;

    IF p_ma_vai_tro IS NULL THEN
        SET p_ma_vai_tro = 1;
    END IF;

    IF p_ma_trang_thai IS NULL THEN
        SET p_ma_trang_thai = 2;
    END IF;

    IF p_ngay_het_han IS NULL THEN
        SET p_ngay_het_han = DATE_ADD(CURDATE(), INTERVAL 5 YEAR);
    END IF;

    INSERT INTO nguoi_dung (
        ho_ten, email, mat_khau, ngay_sinh, dia_chi, so_dien_thoai, ma_vai_tro, ngay_dang_ky, ngay_het_han, ma_trang_thai
    ) VALUES (
        p_ho_ten, p_email, p_mat_khau, p_ngay_sinh, p_dia_chi, p_so_dien_thoai, p_ma_vai_tro, CURDATE(), p_ngay_het_han, p_ma_trang_thai
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertNhaCungCap` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertNhaCungCap`(
    IN p_ten_ncc VARCHAR(255),
    IN p_dia_chi TEXT,
    IN p_sdt VARCHAR(20)
)
BEGIN
    INSERT INTO nha_cung_cap (ten_ncc, dia_chi, sdt)
    VALUES (p_ten_ncc, p_dia_chi, p_sdt);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertNhatKyHeThong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertNhatKyHeThong`(
    IN p_noi_dung TEXT,
    IN p_thoi_gian DATETIME
)
BEGIN
    INSERT INTO nhat_ky_he_thong (noi_dung, thoi_gian)
    VALUES (p_noi_dung, p_thoi_gian);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertNhaXuatBan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertNhaXuatBan`(
    IN p_ten_nxb VARCHAR(255),
    IN p_dia_chi TEXT,
    IN p_sdt VARCHAR(20)
)
BEGIN
    INSERT INTO nha_xuat_ban (ten_nxb, dia_chi, sdt)
    VALUES (p_ten_nxb, p_dia_chi, p_sdt);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertPhieuMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertPhieuMuon`(
    IN p_ma_nguoi_dung INT,
    IN p_ngay_muon DATE,
    IN p_trang_thai VARCHAR(50)
)
BEGIN
    INSERT INTO phieu_muon (ma_nguoi_dung, ngay_muon, trang_thai)
    VALUES (p_ma_nguoi_dung, p_ngay_muon, p_trang_thai);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertPhieuTra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertPhieuTra`(
    IN p_ma_phieu_muon INT,
    IN p_ngay_tra DATE,
    IN p_trang_thai VARCHAR(50)
)
BEGIN
    INSERT INTO phieu_tra (ma_phieu_muon, ngay_tra, trang_thai)
    VALUES (p_ma_phieu_muon, p_ngay_tra, p_trang_thai);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertSach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertSach`(
    IN p_tieu_de VARCHAR(255),
    IN p_tac_gia VARCHAR(255),
    IN p_ISBN VARCHAR(50),
    IN p_so_luong INT,
    IN p_so_trang INT,
    IN p_mo_ta TEXT,
    IN p_hinh_bia VARCHAR(255),
    IN p_ma_nxb INT,
    IN p_ma_danh_muc INT,
    IN p_ma_the_loai INT,
    IN p_ma_ngon_ngu INT,
    IN p_ma_khu_vuc INT,
    IN p_ma_ncc INT
)
BEGIN
    INSERT INTO sach (tieu_de, tac_gia, ISBN, so_luong, so_trang, mo_ta, hinh_bia, ma_nxb, ma_danh_muc, ma_the_loai, ma_ngon_ngu, ma_khu_vuc, ma_ncc)
    VALUES (p_tieu_de, p_tac_gia, p_ISBN, p_so_luong, p_so_trang, p_mo_ta, p_hinh_bia, p_ma_nxb, p_ma_danh_muc, p_ma_the_loai, p_ma_ngon_ngu, p_ma_khu_vuc, p_ma_ncc);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertTheLoai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertTheLoai`(
    IN p_ten_the_loai VARCHAR(255)
)
BEGIN
    INSERT INTO the_loai (ten_the_loai)
    VALUES (p_ten_the_loai);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertTinNhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertTinNhan`(
    IN p_noi_dung TEXT,
    IN p_ma_nguoi_gui INT,
    IN p_ma_nguoi_nhan INT,
    IN p_thoi_gian DATETIME
)
BEGIN
    INSERT INTO tin_nhan (noi_dung, ma_nguoi_gui, ma_nguoi_nhan, thoi_gian)
    VALUES (p_noi_dung, p_ma_nguoi_gui, p_ma_nguoi_nhan, p_thoi_gian);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `InsertVaiTro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `InsertVaiTro`(
    IN p_ten_vai_tro VARCHAR(255)
)
BEGIN
    INSERT INTO vai_tro (ten_vai_tro)
    VALUES (p_ten_vai_tro);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `kiem_tra_qua_han` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `kiem_tra_qua_han`(IN p_ma_nguoi_dung INT)
BEGIN
    SELECT pm.ma_phieu_muon, ct.ma_sach, ct.ngay_tra
    FROM phieu_muon pm
    JOIN chi_tiet_muon ct ON pm.ma_phieu_muon = ct.ma_phieu_muon
    WHERE pm.ma_nguoi_dung = p_ma_nguoi_dung AND ct.ngay_tra < CURDATE();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lay_ebook` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `lay_ebook`(IN p_ma_sach INT)
BEGIN
    SELECT * FROM ebook WHERE ma_sach = p_ma_sach;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `lich_su_thanh_toan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `lich_su_thanh_toan`(IN p_ma_nguoi_dung INT)
BEGIN
    SELECT * FROM payment
    WHERE ma_nguoi_dung = p_ma_nguoi_dung
    ORDER BY ngay_thanh_toan DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RejectDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RejectDatMuon`(
    IN p_ma_dat_muon INT,
    IN p_ma_nhan_vien INT,
    IN p_ly_do TEXT
)
BEGIN
    DECLARE v_exists INT;

    -- Kiểm tra phiếu đặt có tồn tại và còn chờ duyệt không
    SELECT COUNT(*) INTO v_exists
    FROM dat_muon
    WHERE ma_dat_muon = p_ma_dat_muon AND trang_thai = 'Chờ duyệt';

    IF v_exists = 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Phiếu đặt mượn không tồn tại hoặc đã được xử lý';
    END IF;

    -- Cập nhật trạng thái phiếu đặt thành "Bị từ chối"
    UPDATE dat_muon
    SET trang_thai = 'Bị từ chối',
        ma_nhan_vien = p_ma_nhan_vien,
        ghi_chu = CONCAT('Từ chối: ', p_ly_do)
    WHERE ma_dat_muon = p_ma_dat_muon;

    -- Trả kết quả
    SELECT p_ma_dat_muon AS ma_dat_muon, p_ly_do AS ly_do;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RemoveSachYeuThich` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RemoveSachYeuThich`(
    IN p_ma_nguoi_dung INT,
    IN p_ma_sach INT
)
BEGIN
    DELETE FROM sach_yeu_thich
    WHERE ma_nguoi_dung = p_ma_nguoi_dung AND ma_sach = p_ma_sach;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RequestTraSach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RequestTraSach`(
    IN p_ma_phieu_muon INT,
    IN p_ma_nguoi_dung INT
)
BEGIN
    -- Kiểm tra phiếu mượn có thuộc về người dùng này không
    IF NOT EXISTS (
        SELECT 1 
        FROM phieu_muon
        WHERE ma_phieu_muon = p_ma_phieu_muon 
          AND ma_nguoi_dung = p_ma_nguoi_dung
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Phiếu mượn không tồn tại hoặc không thuộc về người dùng này';
    END IF;

    -- Tạo yêu cầu trả sách (dùng mã độc giả trong bảng yêu cầu trả = mã người dùng bên phiếu mượn)
    INSERT INTO yeu_cau_tra(ma_phieu_muon, ma_doc_gia, ngay_gui, trang_thai)
    VALUES (p_ma_phieu_muon, p_ma_nguoi_dung, CURDATE(), 'cho_xac_nhan');

    SELECT LAST_INSERT_ID() AS ma_yeu_cau;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sach_con_ton` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sach_con_ton`(IN p_ma_sach INT)
BEGIN
    SELECT so_luong FROM sach WHERE ma_sach = p_ma_sach;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchChiTietDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchChiTietDatMuon`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM chi_tiet_dat_muon
    WHERE ma_dat_muon LIKE CONCAT('%', p_keyword, '%')
       OR ma_sach LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchChiTietMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchChiTietMuon`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM chi_tiet_muon
    WHERE ma_phieu_muon LIKE CONCAT('%', p_keyword, '%')
       OR ma_sach LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchDanhGia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchDanhGia`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM danh_gia
    WHERE binh_luan LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchDanhMuc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchDanhMuc`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM danh_muc
    WHERE ten_danh_muc LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchDatMuon`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM dat_muon
    WHERE trang_thai LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchKhuVuc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchKhuVuc`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM khu_vuc
    WHERE ten_khu_vuc LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchNgonNgu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchNgonNgu`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM ngon_ngu
    WHERE ten_ngon_ngu LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchNguoiDung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchNguoiDung`(
    IN p_keyword VARCHAR(255)
)
BEGIN
    SELECT *
    FROM nguoi_dung
    WHERE ho_ten LIKE CONCAT('%', p_keyword, '%')
       OR email LIKE CONCAT('%', p_keyword, '%')
       OR so_dien_thoai LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchNhaCungCap` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchNhaCungCap`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM nha_cung_cap
    WHERE ten_ncc LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchNhatKyHeThong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchNhatKyHeThong`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM nhat_ky_he_thong
    WHERE noi_dung LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchNhaXuatBan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchNhaXuatBan`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM nha_xuat_ban
    WHERE ten_nxb LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchPhieuMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchPhieuMuon`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM phieu_muon
    WHERE trang_thai LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchPhieuTra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchPhieuTra`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM phieu_tra
    WHERE trang_thai LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchSach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchSach`(
    IN p_keyword VARCHAR(255)
)
BEGIN
    SELECT *
    FROM sach
    WHERE MATCH(tieu_de, tac_gia, ISBN) AGAINST (p_keyword IN NATURAL LANGUAGE MODE)
       OR tieu_de LIKE CONCAT('%', p_keyword, '%')
       OR tac_gia LIKE CONCAT('%', p_keyword, '%')
       OR ISBN LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchTheLoai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchTheLoai`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM the_loai
    WHERE ten_the_loai LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchTinNhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchTinNhan`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM tin_nhan
    WHERE noi_dung LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SearchVaiTro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchVaiTro`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT * FROM vai_tro
    WHERE ten_vai_tro LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaChiTietMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SuaChiTietMuon`(

    IN p_MaPhieuMuon INT,

    IN p_MaSach INT,

    IN p_NgayTra DATE

)
BEGIN

    UPDATE chi_tiet_muon

    SET NgayTra = p_NgayTra

    WHERE MaPhieuMuon = p_MaPhieuMuon AND MaSach = p_MaSach;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaDanhGia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SuaDanhGia`(

    IN p_MaDanhGia INT,

    IN p_MaSach INT,

    IN p_MaNguoiDung INT,

    IN p_Rating INT,

    IN p_BinhLuan TEXT

)
BEGIN

    UPDATE danh_gia

    SET MaSach = p_MaSach,

        MaNguoiDung = p_MaNguoiDung,

        Rating = p_Rating,

        BinhLuan = p_BinhLuan

    WHERE MaDanhGia = p_MaDanhGia;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SuaDatMuon`(

    IN p_MaDatMuon INT,

    IN p_MaNguoiDung INT,

    IN p_NgayDat DATE,

    IN p_TrangThai ENUM('ChoDuyet','DaDuyet','Huy')

)
BEGIN

    UPDATE dat_muon

    SET MaNguoiDung = p_MaNguoiDung,

        NgayDat = p_NgayDat,

        TrangThai = p_TrangThai

    WHERE MaDatMuon = p_MaDatMuon;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaEbook` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SuaEbook`(

    IN p_MaEbook INT,

    IN p_MaSach INT,

    IN p_DinhDang ENUM('PDF','EPUB','MOBI','MP3'),

    IN p_DungLuong DECIMAL(10,2),

    IN p_FilePath VARCHAR(255),

    IN p_LoaiFile ENUM('PDF','Audio')

)
BEGIN

    UPDATE ebook

    SET MaSach = p_MaSach,

        DinhDang = p_DinhDang,

        DungLuong = p_DungLuong,

        FilePath = p_FilePath,

        LoaiFile = p_LoaiFile

    WHERE MaEbook = p_MaEbook;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaNguoiDung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SuaNguoiDung`(

    IN p_MaNguoiDung INT,

    IN p_HoTen VARCHAR(100),

    IN p_Email VARCHAR(100),

    IN p_DienThoai VARCHAR(20),

    IN p_MaVaiTro INT,

    IN p_MaTrangThai INT

)
BEGIN

    UPDATE nguoi_dung

    SET HoTen = p_HoTen,

        Email = p_Email,

        DienThoai = p_DienThoai,

        MaVaiTro = p_MaVaiTro,

        MaTrangThai = p_MaTrangThai

    WHERE MaNguoiDung = p_MaNguoiDung;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaPhat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SuaPhat`(

    IN p_MaPhat INT,

    IN p_MaNguoiDung INT,

    IN p_MaPhieuMuon INT,

    IN p_SoTien DECIMAL(10,2),

    IN p_LyDo VARCHAR(255),

    IN p_NgayPhat DATE

)
BEGIN

    UPDATE phat

    SET MaNguoiDung = p_MaNguoiDung,

        MaPhieuMuon = p_MaPhieuMuon,

        SoTien = p_SoTien,

        LyDo = p_LyDo,

        NgayPhat = p_NgayPhat

    WHERE MaPhat = p_MaPhat;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaPhieuMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SuaPhieuMuon`(

    IN p_MaPhieuMuon INT,

    IN p_MaNguoiDung INT,

    IN p_NgayMuon DATE,

    IN p_TrangThai ENUM('DangMuon','DaTra','QuaHan'),

    IN p_GhiChu TEXT

)
BEGIN

    UPDATE phieu_muon

    SET MaNguoiDung = p_MaNguoiDung,

        NgayMuon = p_NgayMuon,

        TrangThai = p_TrangThai,

        GhiChu = p_GhiChu

    WHERE MaPhieuMuon = p_MaPhieuMuon;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaPhieuTra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SuaPhieuTra`(

    IN p_MaPhieuTra INT,

    IN p_MaPhieuMuon INT,

    IN p_NgayTra DATE,

    IN p_GhiChu TEXT

)
BEGIN

    UPDATE phieu_tra

    SET MaPhieuMuon = p_MaPhieuMuon,

        NgayTra = p_NgayTra,

        GhiChu = p_GhiChu

    WHERE MaPhieuTra = p_MaPhieuTra;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaSach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SuaSach`(

    IN p_MaSach INT,

    IN p_TenSach VARCHAR(200),

    IN p_TacGia VARCHAR(255),

    IN p_ISBN VARCHAR(50),

    IN p_SoTrang INT,

    IN p_NamXuatBan YEAR,

    IN p_GiaTri DECIMAL(10,2),

    IN p_MoTa TEXT,

    IN p_HinhAnh VARCHAR(255),

    IN p_SoLuong INT,

    IN p_MaTheLoai INT,

    IN p_MaDanhMuc INT,

    IN p_MaNgonNgu INT,

    IN p_MaNXB INT,

    IN p_MaNCC INT,

    IN p_MaKhuVuc INT

)
BEGIN

    UPDATE sach

    SET TenSach = p_TenSach,

        TacGia = p_TacGia,

        ISBN = p_ISBN,

        SoTrang = p_SoTrang,

        NamXuatBan = p_NamXuatBan,

        GiaTri = p_GiaTri,

        MoTa = p_MoTa,

        HinhAnh = p_HinhAnh,

        SoLuong = p_SoLuong,

        MaTheLoai = p_MaTheLoai,

        MaDanhMuc = p_MaDanhMuc,

        MaNgonNgu = p_MaNgonNgu,

        MaNXB = p_MaNXB,

        MaNCC = p_MaNCC,

        MaKhuVuc = p_MaKhuVuc

    WHERE MaSach = p_MaSach;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaThanhToan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SuaThanhToan`(

    IN p_MaPayment INT,

    IN p_MaNguoiDung INT,

    IN p_SoTien DECIMAL(10,2),

    IN p_PhuongThuc ENUM('TienMat','TheNganHang','Momo','ZaloPay'),

    IN p_TrangThai ENUM('ThanhCong','ThatBai','ChoXuLy'),

    IN p_MaGiaoDich VARCHAR(100),

    IN p_HinhThuc ENUM('Momo','ZaloPay','Stripe','Khac')

)
BEGIN

    UPDATE payment

    SET MaNguoiDung = p_MaNguoiDung,

        SoTien = p_SoTien,

        PhuongThuc = p_PhuongThuc,

        TrangThai = p_TrangThai,

        MaGiaoDich = p_MaGiaoDich,

        HinhThuc = p_HinhThuc

    WHERE MaPayment = p_MaPayment;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SuaThongBao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SuaThongBao`(

    IN p_MaTB INT,

    IN p_MaNguoiDung INT,

    IN p_NoiDung TEXT,

    IN p_DaDoc TINYINT

)
BEGIN

    UPDATE notification

    SET MaNguoiDung = p_MaNguoiDung,

        NoiDung = p_NoiDung,

        DaDoc = p_DaDoc

    WHERE MaTB = p_MaTB;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tao_dat_muon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tao_dat_muon`(IN p_ma_nguoi_dung INT, IN p_ma_sach INT)
BEGIN
    DECLARE newDM INT;
    INSERT INTO dat_muon(ma_nguoi_dung, ngay_dat, trang_thai) VALUES (p_ma_nguoi_dung, CURDATE(), 'ChoDuyet');
    SET newDM = LAST_INSERT_ID();
    INSERT INTO chi_tiet_dat_muon(ma_dat_muon, ma_sach) VALUES (newDM, p_ma_sach);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tao_phat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tao_phat`(
    IN p_ma_nguoi_dung INT,
    IN p_ma_phieu_muon INT,
    IN p_so_tien DECIMAL(10,2),
    IN p_ly_do VARCHAR(255)
)
BEGIN
    INSERT INTO phat(ma_nguoi_dung, ma_phieu_muon, so_tien, ly_do, ngay_phat)
    VALUES (p_ma_nguoi_dung, p_ma_phieu_muon, p_so_tien, p_ly_do, CURDATE());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tao_phieu_muon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tao_phieu_muon`(
    IN p_ma_nguoi_dung INT,
    IN p_ma_sach INT
)
BEGIN
    DECLARE newPM INT;
    INSERT INTO phieu_muon(ma_nguoi_dung, ngay_muon) VALUES (p_ma_nguoi_dung, CURDATE());
    SET newPM = LAST_INSERT_ID();
    INSERT INTO chi_tiet_muon(ma_phieu_muon, ma_sach) VALUES (newPM, p_ma_sach);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tao_phieu_tra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tao_phieu_tra`(IN p_ma_phieu_muon INT)
BEGIN
    INSERT INTO phieu_tra(ma_phieu_muon, ngay_tra) VALUES (p_ma_phieu_muon, CURDATE());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tao_thanh_toan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tao_thanh_toan`(
    IN p_ma_nguoi_dung INT,
    IN p_so_tien DECIMAL(10,2),
    IN p_hinh_thuc VARCHAR(50)
)
BEGIN
    INSERT INTO payment(ma_nguoi_dung, so_tien, hinh_thuc)
    VALUES (p_ma_nguoi_dung, p_so_tien, p_hinh_thuc);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ThemChiTietDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ThemChiTietDatMuon`(

    IN p_MaDatMuon INT,

    IN p_MaSach INT

)
BEGIN

    INSERT INTO chi_tiet_dat_muon(MaDatMuon, MaSach)

    VALUES (p_MaDatMuon, p_MaSach);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ThemChiTietMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ThemChiTietMuon`(

    IN p_MaPhieuMuon INT,

    IN p_MaSach INT,

    IN p_NgayTra DATE

)
BEGIN

    INSERT INTO chi_tiet_muon(MaPhieuMuon, MaSach, NgayTra)

    VALUES (p_MaPhieuMuon, p_MaSach, p_NgayTra);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ThemDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ThemDatMuon`(

    IN p_MaNguoiDung INT,

    IN p_NgayDat DATE

)
BEGIN

    INSERT INTO dat_muon(MaNguoiDung, NgayDat, TrangThai)

    VALUES (p_MaNguoiDung, p_NgayDat, 'ChoDuyet');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ThemPhat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ThemPhat`(

    IN p_MaNguoiDung INT,

    IN p_MaPhieuMuon INT,

    IN p_SoTien DECIMAL(10,2),

    IN p_LyDo VARCHAR(255)

)
BEGIN

    INSERT INTO phat(MaNguoiDung, MaPhieuMuon, SoTien, LyDo, NgayPhat)

    VALUES (p_MaNguoiDung, p_MaPhieuMuon, p_SoTien, p_LyDo, CURDATE());

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ThemPhieuMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ThemPhieuMuon`(

    IN p_MaNguoiDung INT,

    IN p_NgayMuon DATE,

    IN p_GhiChu TEXT

)
BEGIN

    INSERT INTO phieu_muon(MaNguoiDung, NgayMuon, GhiChu)

    VALUES (p_MaNguoiDung, p_NgayMuon, p_GhiChu);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ThemPhieuTra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ThemPhieuTra`(

    IN p_MaPhieuMuon INT,

    IN p_NgayTra DATE,

    IN p_GhiChu TEXT

)
BEGIN

    INSERT INTO phieu_tra(MaPhieuMuon, NgayTra, GhiChu)

    VALUES (p_MaPhieuMuon, p_NgayTra, p_GhiChu);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ThemThanhToan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ThemThanhToan`(

    IN p_MaNguoiDung INT,

    IN p_SoTien DECIMAL(10,2),

    IN p_PhuongThuc ENUM('TienMat','TheNganHang','Momo','ZaloPay'),

    IN p_TrangThai ENUM('ThanhCong','ThatBai','ChoXuLy'),

    IN p_MaGiaoDich VARCHAR(100),

    IN p_HinhThuc ENUM('Momo','ZaloPay','Stripe','Khac')

)
BEGIN

    INSERT INTO payment(MaNguoiDung, SoTien, PhuongThuc, TrangThai, MaGiaoDich, HinhThuc)

    VALUES (p_MaNguoiDung, p_SoTien, p_PhuongThuc, p_TrangThai, p_MaGiaoDich, p_HinhThuc);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ThemThongBao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ThemThongBao`(

    IN p_MaNguoiDung INT,

    IN p_NoiDung TEXT

)
BEGIN

    INSERT INTO notification(MaNguoiDung, NoiDung)

    VALUES (p_MaNguoiDung, p_NoiDung);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ThemTinNhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ThemTinNhan`(

    IN p_MaNguoiDungGui INT,

    IN p_MaNguoiDungNhan INT,

    IN p_NoiDung TEXT

)
BEGIN

    INSERT INTO tin_nhan(MaNguoiDungGui, MaNguoiDungNhan, NoiDung)

    VALUES (p_MaNguoiDungGui, p_MaNguoiDungNhan, p_NoiDung);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `them_danh_gia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `them_danh_gia`(IN p_ma_sach INT, IN p_ma_nguoi_dung INT, IN p_rating INT, IN p_binh_luan TEXT)
BEGIN
    INSERT INTO danh_gia(ma_sach, ma_nguoi_dung, rating, binh_luan)
    VALUES (p_ma_sach, p_ma_nguoi_dung, p_rating, p_binh_luan);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `them_ebook` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `them_ebook`(
    IN p_ma_sach INT,
    IN p_file_path VARCHAR(255),
    IN p_loai_file VARCHAR(20)
)
BEGIN
    INSERT INTO ebook(ma_sach, file_path, loai_file)
    VALUES (p_ma_sach, p_file_path, p_loai_file);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `them_nguoi_dung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `them_nguoi_dung`(
    IN p_ho_ten VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_mat_khau VARCHAR(255),
    IN p_dien_thoai VARCHAR(20),
    IN p_ma_vai_tro INT
)
BEGIN
    INSERT INTO nguoi_dung(ho_ten, email, mat_khau, dien_thoai, ma_vai_tro, ma_trang_thai)
    VALUES (p_ho_ten, p_email, p_mat_khau, p_dien_thoai, p_ma_vai_tro, 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `them_sach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `them_sach`(
    IN p_ten_sach VARCHAR(200),
    IN p_nam_xb INT,
    IN p_so_luong INT,
    IN p_ma_the_loai INT,
    IN p_ma_danh_muc INT,
    IN p_ma_ngon_ngu INT,
    IN p_ma_nxb INT,
    IN p_ma_ncc INT,
    IN p_ma_khu_vuc INT
)
BEGIN
    INSERT INTO sach(ten_sach, nam_xb, so_luong, ma_the_loai, ma_danh_muc, ma_ngon_ngu, ma_nxb, ma_ncc, ma_khu_vuc)
    VALUES (p_ten_sach, p_nam_xb, p_so_luong, p_ma_the_loai, p_ma_danh_muc, p_ma_ngon_ngu, p_ma_nxb, p_ma_ncc, p_ma_khu_vuc);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ThongKeSachTheoNXB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ThongKeSachTheoNXB`()
BEGIN
    SELECT nxb.ten_nxb, COUNT(s.ma_sach) AS so_luong_sach
    FROM sach s
    JOIN nha_xuat_ban nxb ON s.ma_nxb = nxb.ma_nxb
    GROUP BY nxb.ten_nxb;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TimKiemNguoiDung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TimKiemNguoiDung`(IN p_keyword VARCHAR(100))
BEGIN

    SELECT * FROM nguoi_dung

    WHERE HoTen LIKE CONCAT('%', p_keyword, '%')

       OR Email LIKE CONCAT('%', p_keyword, '%')

       OR DienThoai LIKE CONCAT('%', p_keyword, '%');

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TimKiemPhieuMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TimKiemPhieuMuon`(IN p_MaNguoiDung INT)
BEGIN

    SELECT pm.*, nd.HoTen

    FROM phieu_muon pm

    JOIN nguoi_dung nd ON pm.MaNguoiDung = nd.MaNguoiDung

    WHERE pm.MaNguoiDung = p_MaNguoiDung;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `tim_kiem_sach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `tim_kiem_sach`(IN p_keyword VARCHAR(100))
BEGIN
    SELECT * FROM sach WHERE ten_sach LIKE CONCAT('%', p_keyword, '%');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateChiTietDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateChiTietDatMuon`(
    IN p_ma_dat_muon INT,
    IN p_ma_sach INT,
    IN p_so_luong INT
)
BEGIN
    UPDATE chi_tiet_dat_muon
    SET ma_sach = p_ma_sach,
        so_luong = p_so_luong
    WHERE ma_dat_muon = p_ma_dat_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateChiTietMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateChiTietMuon`(
    IN p_ma_phieu_muon INT,
    IN p_ma_sach INT,
    IN p_so_luong INT
)
BEGIN
    UPDATE chi_tiet_muon
    SET ma_sach = p_ma_sach,
        so_luong = p_so_luong
    WHERE ma_phieu_muon = p_ma_phieu_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateDanhGia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateDanhGia`(
    IN p_ma_danh_gia INT,
    IN p_ma_sach INT,
    IN p_ma_doc_gia INT,
    IN p_diem INT,
    IN p_binh_luan TEXT,
    IN p_ngay_danh_gia DATE
)
BEGIN
    UPDATE danh_gia
    SET ma_sach = p_ma_sach,
        ma_doc_gia = p_ma_doc_gia,
        diem = p_diem,
        binh_luan = p_binh_luan,
        ngay_danh_gia = p_ngay_danh_gia
    WHERE ma_danh_gia = p_ma_danh_gia;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateDanhMuc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateDanhMuc`(
    IN p_ma_danh_muc INT,
    IN p_ten_danh_muc VARCHAR(255)
)
BEGIN
    UPDATE danh_muc
    SET ten_danh_muc = p_ten_danh_muc
    WHERE ma_danh_muc = p_ma_danh_muc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateDatMuon`(
    IN p_ma_dat_muon INT,
    IN p_ma_nguoi_dung INT,
    IN p_ngay_dat DATE,
    IN p_trang_thai VARCHAR(50)
)
BEGIN
    UPDATE dat_muon
    SET ma_nguoi_dung = p_ma_nguoi_dung,
        ngay_dat = p_ngay_dat,
        trang_thai = p_trang_thai
    WHERE ma_dat_muon = p_ma_dat_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateKhuVuc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateKhuVuc`(
    IN p_ma_khu_vuc INT,
    IN p_ten_khu_vuc VARCHAR(255)
)
BEGIN
    UPDATE khu_vuc
    SET ten_khu_vuc = p_ten_khu_vuc
    WHERE ma_khu_vuc = p_ma_khu_vuc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateNgonNgu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateNgonNgu`(
    IN p_ma_ngon_ngu INT,
    IN p_ten_ngon_ngu VARCHAR(255)
)
BEGIN
    UPDATE ngon_ngu
    SET ten_ngon_ngu = p_ten_ngon_ngu
    WHERE ma_ngon_ngu = p_ma_ngon_ngu;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateNguoiDung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateNguoiDung`(
    IN p_ma_nguoi_dung INT,
    IN p_ho_ten VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_mat_khau VARCHAR(255),
    IN p_ngay_sinh DATE,
    IN p_dia_chi VARCHAR(255),
    IN p_so_dien_thoai VARCHAR(20),
    IN p_ma_vai_tro INT,
    IN p_ngay_dang_ky DATE,
    IN p_ngay_het_han DATE,
    IN p_ma_trang_thai INT,
    IN p_user_role INT
)
BEGIN
    IF p_user_role <> 1 THEN
        -- Kiểm tra số điện thoại hợp lệ: bắt đầu bằng 0 và chỉ chứa chữ số
        IF p_so_dien_thoai IS NOT NULL AND p_so_dien_thoai NOT REGEXP '^0[0-9]+$' THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Số điện thoại không hợp lệ';
        END IF;

        -- Nếu không phải admin, giữ nguyên ma_vai_tro và ma_trang_thai hiện tại
        UPDATE nguoi_dung
        SET ho_ten = p_ho_ten,
            email = p_email,
            mat_khau = p_mat_khau,
            ngay_sinh = p_ngay_sinh,
            dia_chi = p_dia_chi,
            so_dien_thoai = p_so_dien_thoai,
            ma_vai_tro = ma_vai_tro,
            ngay_dang_ky = p_ngay_dang_ky,
            ngay_het_han = p_ngay_het_han,
            ma_trang_thai = ma_trang_thai
        WHERE ma_nguoi_dung = p_ma_nguoi_dung;
    ELSE
        -- Kiểm tra số điện thoại hợp lệ: bắt đầu bằng 0 và chỉ chứa chữ số
        IF p_so_dien_thoai IS NOT NULL AND p_so_dien_thoai NOT REGEXP '^0[0-9]+$' THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Số điện thoại không hợp lệ';
        END IF;

        UPDATE nguoi_dung
        SET ho_ten = p_ho_ten,
            email = p_email,
            mat_khau = p_mat_khau,
            ngay_sinh = p_ngay_sinh,
            dia_chi = p_dia_chi,
            so_dien_thoai = p_so_dien_thoai,
            ma_vai_tro = p_ma_vai_tro,
            ngay_dang_ky = p_ngay_dang_ky,
            ngay_het_han = p_ngay_het_han,
            ma_trang_thai = p_ma_trang_thai
        WHERE ma_nguoi_dung = p_ma_nguoi_dung;
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateNhaCungCap` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateNhaCungCap`(
    IN p_ma_ncc INT,
    IN p_ten_ncc VARCHAR(255),
    IN p_dia_chi TEXT,
    IN p_sdt VARCHAR(20)
)
BEGIN
    UPDATE nha_cung_cap
    SET ten_ncc = p_ten_ncc,
        dia_chi = p_dia_chi,
        sdt = p_sdt
    WHERE ma_ncc = p_ma_ncc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateNhatKyHeThong` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateNhatKyHeThong`(
    IN p_ma_nhat_ky INT,
    IN p_noi_dung TEXT,
    IN p_thoi_gian DATETIME
)
BEGIN
    UPDATE nhat_ky_he_thong
    SET noi_dung = p_noi_dung,
        thoi_gian = p_thoi_gian
    WHERE ma_nhat_ky = p_ma_nhat_ky;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateNhaXuatBan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateNhaXuatBan`(
    IN p_ma_nxb INT,
    IN p_ten_nxb VARCHAR(255),
    IN p_dia_chi TEXT,
    IN p_sdt VARCHAR(20)
)
BEGIN
    UPDATE nha_xuat_ban
    SET ten_nxb = p_ten_nxb,
        dia_chi = p_dia_chi,
        sdt = p_sdt
    WHERE ma_nxb = p_ma_nxb;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdatePhieuMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdatePhieuMuon`(
    IN p_ma_phieu_muon INT,
    IN p_ma_nguoi_dung INT,
    IN p_ngay_muon DATE,
    IN p_trang_thai VARCHAR(50)
)
BEGIN
    UPDATE phieu_muon
    SET ma_nguoi_dung = p_ma_nguoi_dung,
        ngay_muon = p_ngay_muon,
        trang_thai = p_trang_thai
    WHERE ma_phieu_muon = p_ma_phieu_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdatePhieuTra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdatePhieuTra`(
    IN p_ma_phieu_tra INT,
    IN p_ma_phieu_muon INT,
    IN p_ngay_tra DATE,
    IN p_trang_thai VARCHAR(50)
)
BEGIN
    UPDATE phieu_tra
    SET ma_phieu_muon = p_ma_phieu_muon,
        ngay_tra = p_ngay_tra,
        trang_thai = p_trang_thai
    WHERE ma_phieu_tra = p_ma_phieu_tra;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateSach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateSach`(
    IN p_ma_sach INT,
    IN p_tieu_de VARCHAR(255),
    IN p_tac_gia VARCHAR(255),
    IN p_ISBN VARCHAR(50),
    IN p_so_luong INT,
    IN p_so_trang INT,
    IN p_mo_ta TEXT,
    IN p_hinh_bia VARCHAR(255),
    IN p_ma_nxb INT,
    IN p_ma_danh_muc INT,
    IN p_ma_the_loai INT,
    IN p_ma_ngon_ngu INT,
    IN p_ma_khu_vuc INT,
    IN p_ma_ncc INT
)
BEGIN
    UPDATE sach
    SET tieu_de = p_tieu_de,
        tac_gia = p_tac_gia,
        ISBN = p_ISBN,
        so_luong = p_so_luong,
        so_trang = p_so_trang,
        mo_ta = p_mo_ta,
        hinh_bia = p_hinh_bia,
        ma_nxb = p_ma_nxb,
        ma_danh_muc = p_ma_danh_muc,
        ma_the_loai = p_ma_the_loai,
        ma_ngon_ngu = p_ma_ngon_ngu,
        ma_khu_vuc = p_ma_khu_vuc,
        ma_ncc = p_ma_ncc
    WHERE ma_sach = p_ma_sach;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateTheLoai` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateTheLoai`(
    IN p_ma_the_loai INT,
    IN p_ten_the_loai VARCHAR(255)
)
BEGIN
    UPDATE the_loai
    SET ten_the_loai = p_ten_the_loai
    WHERE ma_the_loai = p_ma_the_loai;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateTinNhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateTinNhan`(
    IN p_ma_tin_nhan INT,
    IN p_noi_dung TEXT,
    IN p_ma_nguoi_gui INT,
    IN p_ma_nguoi_nhan INT,
    IN p_thoi_gian DATETIME
)
BEGIN
    UPDATE tin_nhan
    SET noi_dung = p_noi_dung,
        ma_nguoi_gui = p_ma_nguoi_gui,
        ma_nguoi_nhan = p_ma_nguoi_nhan,
        thoi_gian = p_thoi_gian
    WHERE ma_tin_nhan = p_ma_tin_nhan;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateTrangThaiNguoiDung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateTrangThaiNguoiDung`(
    IN p_ma_nguoi_dung INT,
    IN p_trang_thai_moi VARCHAR(50)
)
BEGIN
    UPDATE nguoi_dung
    SET trang_thai = p_trang_thai_moi
    WHERE ma_nguoi_dung = p_ma_nguoi_dung;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateVaiTro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateVaiTro`(
    IN p_ma_vai_tro INT,
    IN p_ten_vai_tro VARCHAR(255)
)
BEGIN
    UPDATE vai_tro
    SET ten_vai_tro = p_ten_vai_tro
    WHERE ma_vai_tro = p_ma_vai_tro;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `xet_duyet_dat_muon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `xet_duyet_dat_muon`(IN p_ma_dat_muon INT, IN p_trang_thai VARCHAR(20))
BEGIN
    UPDATE dat_muon SET trang_thai = p_trang_thai WHERE ma_dat_muon = p_ma_dat_muon;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XoaChiTietDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XoaChiTietDatMuon`(IN p_MaDatMuon INT, IN p_MaSach INT)
BEGIN

    DELETE FROM chi_tiet_dat_muon WHERE MaDatMuon = p_MaDatMuon AND MaSach = p_MaSach;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XoaChiTietMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XoaChiTietMuon`(IN p_MaPhieuMuon INT, IN p_MaSach INT)
BEGIN

    DELETE FROM chi_tiet_muon WHERE MaPhieuMuon = p_MaPhieuMuon AND MaSach = p_MaSach;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XoaDanhGia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XoaDanhGia`(IN p_MaDanhGia INT)
BEGIN

    DELETE FROM danh_gia WHERE MaDanhGia = p_MaDanhGia;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XoaDatMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XoaDatMuon`(IN p_MaDatMuon INT)
BEGIN

    DELETE FROM dat_muon WHERE MaDatMuon = p_MaDatMuon;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XoaEbook` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XoaEbook`(IN p_MaEbook INT)
BEGIN

    DELETE FROM ebook WHERE MaEbook = p_MaEbook;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XoaNguoiDung` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XoaNguoiDung`(IN p_MaNguoiDung INT)
BEGIN

    DELETE FROM nguoi_dung WHERE MaNguoiDung = p_MaNguoiDung;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XoaPhat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XoaPhat`(IN p_MaPhat INT)
BEGIN

    DELETE FROM phat WHERE MaPhat = p_MaPhat;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XoaPhieuMuon` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XoaPhieuMuon`(IN p_MaPhieuMuon INT)
BEGIN

    DELETE FROM phieu_muon WHERE MaPhieuMuon = p_MaPhieuMuon;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XoaPhieuTra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XoaPhieuTra`(IN p_MaPhieuTra INT)
BEGIN

    DELETE FROM phieu_tra WHERE MaPhieuTra = p_MaPhieuTra;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XoaThanhToan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XoaThanhToan`(IN p_MaPayment INT)
BEGIN

    DELETE FROM payment WHERE MaPayment = p_MaPayment;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XoaThongBao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XoaThongBao`(IN p_MaTB INT)
BEGIN

    DELETE FROM notification WHERE MaTB = p_MaTB;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `XoaTinNhan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'IGNORE_SPACE,ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `XoaTinNhan`(IN p_MaTinNhan INT)
BEGIN

    DELETE FROM tin_nhan WHERE MaTinNhan = p_MaTinNhan;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `xoa_sach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `xoa_sach`(IN p_ma_sach INT)
BEGIN
    DELETE FROM sach WHERE ma_sach = p_ma_sach;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `v_tinh_trang_muon_tra`
--

/*!50001 DROP VIEW IF EXISTS `v_tinh_trang_muon_tra`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_tinh_trang_muon_tra` AS select `pm`.`ma_phieu_muon` AS `ma_phieu_muon`,`pm`.`ma_nguoi_dung` AS `ma_nguoi_dung`,`nd`.`ho_ten` AS `ten_doc_gia`,`ct`.`ma_sach` AS `ma_sach`,`s`.`tieu_de` AS `ten_sach`,`ct`.`ma_ban_sao` AS `ma_ban_sao`,`bs`.`tinh_trang` AS `tinh_trang_ban_sao`,`pm`.`ngay_muon` AS `ngay_muon`,`ct`.`ngay_tra` AS `han_tra`,`ct`.`ngay_tra_thuc_te` AS `ngay_tra_thuc_te`,(case when (`ct`.`da_tra` = 1) then 'Đã trả' else 'Chưa trả' end) AS `trang_thai_chi_tiet`,`p`.`so_tien` AS `tien_phat`,`p`.`trang_thai` AS `trang_thai_phat`,`pm`.`trang_thai` AS `trang_thai_phieu` from (((((`phieu_muon` `pm` join `nguoi_dung` `nd` on((`pm`.`ma_nguoi_dung` = `nd`.`ma_nguoi_dung`))) join `chi_tiet_muon` `ct` on((`pm`.`ma_phieu_muon` = `ct`.`ma_phieu_muon`))) join `sach` `s` on((`ct`.`ma_sach` = `s`.`ma_sach`))) left join `ban_sao_sach` `bs` on((`ct`.`ma_ban_sao` = `bs`.`ma_ban_sao`))) left join `phat` `p` on(((`pm`.`ma_phieu_muon` = `p`.`ma_phieu_muon`) and (`pm`.`ma_nguoi_dung` = `p`.`ma_nguoi_dung`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_doc_gia_no_phat`
--

/*!50001 DROP VIEW IF EXISTS `vw_doc_gia_no_phat`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_doc_gia_no_phat` AS select `nd`.`ma_nguoi_dung` AS `ma_nguoi_dung`,`nd`.`ho_ten` AS `ho_ten`,sum(`p`.`so_tien`) AS `tong_no` from (`phat` `p` join `nguoi_dung` `nd` on((`p`.`ma_nguoi_dung` = `nd`.`ma_nguoi_dung`))) group by `nd`.`ma_nguoi_dung`,`nd`.`ho_ten` having (sum(`p`.`so_tien`) > 0) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_thong_ke_ngay`
--

/*!50001 DROP VIEW IF EXISTS `vw_thong_ke_ngay`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_thong_ke_ngay` AS select cast(`pm`.`ngay_muon` as date) AS `ngay`,count(distinct `pm`.`ma_phieu_muon`) AS `tong_phieu_muon`,count(distinct `pt`.`ma_phieu_tra`) AS `tong_phieu_tra` from (`phieu_muon` `pm` left join `phieu_tra` `pt` on((`pm`.`ma_phieu_muon` = `pt`.`ma_phieu_muon`))) group by cast(`pm`.`ngay_muon` as date) order by `ngay` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_top_sach_muon`
--

/*!50001 DROP VIEW IF EXISTS `vw_top_sach_muon`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_top_sach_muon` AS select `s`.`ma_sach` AS `ma_sach`,`s`.`tieu_de` AS `tieu_de`,count(`ct`.`ma_sach`) AS `so_lan_muon` from (`chi_tiet_muon` `ct` join `sach` `s` on((`ct`.`ma_sach` = `s`.`ma_sach`))) group by `s`.`ma_sach`,`s`.`tieu_de` order by `so_lan_muon` desc limit 10 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-28 10:16:54
