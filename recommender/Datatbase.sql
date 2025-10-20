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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ban_sao_sach`
--

LOCK TABLES `ban_sao_sach` WRITE;
/*!40000 ALTER TABLE `ban_sao_sach` DISABLE KEYS */;
INSERT INTO `ban_sao_sach` VALUES (1,1,'VACH001','RFID001','đang_mượn','Kệ A1','2025-09-20',50000.00),(2,1,'VACH002','RFID002','còn','Kệ A1','2025-09-20',50000.00),(3,2,'VACH003','RFID003','đang_mượn','Kệ B2','2025-09-20',75000.00),(4,3,'VACH004','RFID004','còn','Kệ C3','2025-09-20',60000.00),(5,1,'VACH1002','RFID1002','đang_mượn','Kệ A','2025-09-20',50000.00),(6,1,'VACH1003','RFID1003','đang_mượn','Kệ A','2025-09-20',50000.00),(7,6,'S6_0001','RFID6_0001','đang_mượn','Kệ B2','2025-09-20',82000.00),(8,6,'S6_0002','RFID6_0002','đang_mượn','Kệ B2','2025-09-20',82000.00),(9,6,'S6_0003','RFID6_0003','mất','Kệ B2','2025-09-20',82000.00),(10,6,'S6_0004','RFID6_0004','hỏng','Kệ B2','2025-09-20',82000.00),(11,6,'S6_0005','RFID6_0005','đang_mượn','Kệ B2','2025-09-20',82000.00),(12,6,'S6_0006','RFID6_0006','đang_mượn','Kệ B1','2025-09-20',75000.00),(13,6,'S6_0007','RFID6_0007','đang_mượn','Kệ B1','2025-09-20',75000.00),(14,6,'S6_0008','RFID6_0008','đang_mượn','Kệ B1','2025-09-20',75000.00),(15,6,'S6_0009','RFID6_0009','đang_mượn','Kệ B1','2025-09-20',75000.00),(16,6,'S6_0010','RFID6_0010','đang_mượn','Kệ B1','2025-09-20',75000.00),(17,6,'S6_0011','RFID6_0011','mất','Kệ B1','2025-09-20',75000.00),(18,6,'S6_0012','RFID6_0012','đang_mượn','Kệ B1','2025-09-20',75000.00),(19,6,'S6_0013','RFID6_0013','còn','Kệ B1','2025-09-20',75000.00),(20,6,'S6_0014','RFID6_0014','còn','Kệ B1','2025-09-20',75000.00),(21,6,'S6_0015','RFID6_0015','đang_mượn','Kệ B1','2025-09-20',75000.00),(22,6,'S6_0016','RFID6_0016','đang_mượn','Kệ B1','2025-09-20',75000.00),(23,6,'S6_0017','RFID6_0017','còn','Kệ B1','2025-09-20',75000.00),(24,9,'S9_0001',NULL,'còn','Kệ C3','2025-10-18',70000.00),(25,9,'S9_0002',NULL,'còn','Kệ C3','2025-10-18',70000.00),(26,9,'S9_0003',NULL,'còn','Kệ C3','2025-10-18',70000.00),(27,9,'S9_0004',NULL,'còn','Kệ C3','2025-10-18',70000.00),(28,9,'S9_0005',NULL,'còn','Kệ C3','2025-10-18',70000.00),(40,12,'S12_0001',NULL,'còn','Kệ A3','2025-10-19',35000.00),(41,12,'S12_0002',NULL,'còn','Kệ A3','2025-10-19',35000.00),(42,12,'S12_0003',NULL,'còn','Kệ A3','2025-10-19',35000.00),(43,12,'S12_0004',NULL,'còn','Kệ A3','2025-10-19',35000.00),(44,12,'S12_0005',NULL,'còn','Kệ A3','2025-10-19',35000.00),(45,1,'S1_0001',NULL,'còn','Kệ A4','2025-10-19',32999.00),(46,1,'S1_0002',NULL,'còn','Kệ A4','2025-10-19',32999.00),(47,1,'S1_0003',NULL,'còn','Kệ A4','2025-10-19',32999.00),(48,1,'S1_0004',NULL,'còn','Kệ A4','2025-10-19',32999.00),(49,1,'S1_0005',NULL,'còn','Kệ A4','2025-10-19',32999.00),(51,13,'S13_0001',NULL,'còn','Kệ C3','2025-10-19',29999.00),(52,13,'S13_0002',NULL,'còn','Kệ C3','2025-10-19',29999.00),(53,13,'S13_0003',NULL,'còn','Kệ C3','2025-10-19',29999.00),(54,13,'S13_0004',NULL,'còn','Kệ C3','2025-10-19',29999.00),(55,13,'S13_0005',NULL,'còn','Kệ C3','2025-10-19',29999.00),(56,14,'S14_0001',NULL,'còn','Kệ B2','2025-10-19',69000.00),(57,14,'S14_0002',NULL,'còn','Kệ B2','2025-10-19',69000.00),(58,14,'S14_0003',NULL,'còn','Kệ B2','2025-10-19',69000.00),(59,14,'S14_0004',NULL,'còn','Kệ B2','2025-10-19',69000.00),(60,14,'S14_0005',NULL,'còn','Kệ B2','2025-10-19',69000.00),(61,15,'S15_0001',NULL,'còn','Kệ C2','2025-10-19',39999.00),(62,15,'S15_0002',NULL,'còn','Kệ C2','2025-10-19',39999.00),(63,15,'S15_0003',NULL,'còn','Kệ C2','2025-10-19',39999.00),(64,15,'S15_0004',NULL,'còn','Kệ C2','2025-10-19',39999.00),(65,15,'S15_0005',NULL,'còn','Kệ C2','2025-10-19',39999.00),(66,15,'S15_0006',NULL,'còn','Kệ C2','2025-10-19',39999.00),(67,17,'S17_0001',NULL,'đang_mượn','Kệ A3, hàng 2','2025-10-19',29999.00),(68,17,'S17_0002',NULL,'còn','Kệ A3, hàng 2','2025-10-19',29999.00),(69,17,'S17_0003',NULL,'còn','Kệ A3, hàng 2','2025-10-19',29999.00),(70,18,'S18_0001',NULL,'đang_mượn','Kệ D1','2025-10-19',30000.00),(71,18,'S18_0002',NULL,'còn','Kệ D1','2025-10-19',30000.00);
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
-- Table structure for table `bien_muc_sach`
--

DROP TABLE IF EXISTS `bien_muc_sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bien_muc_sach` (
  `ma_bien_muc` int NOT NULL AUTO_INCREMENT,
  `tieu_de` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tom_tat` text COLLATE utf8mb4_unicode_ci,
  `isbn` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nam_xuat_ban` year DEFAULT NULL,
  `nha_xuat_ban` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_trang` int DEFAULT NULL,
  `ngon_ngu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dinh_danh` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ma_danh_muc` int DEFAULT NULL,
  `ma_nha_cung_cap` int DEFAULT NULL,
  `ma_khu_vuc` int DEFAULT NULL,
  `noi_bat` tinyint(1) DEFAULT '0',
  `file_pdf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_bia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinh_bia_public_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trang_thai` enum('nhap_lieu','cho_duyet','kich_hoat') COLLATE utf8mb4_unicode_ci DEFAULT 'nhap_lieu',
  `ngay_tao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ma_bien_muc`),
  KEY `ma_danh_muc` (`ma_danh_muc`),
  CONSTRAINT `bien_muc_sach_ibfk_1` FOREIGN KEY (`ma_danh_muc`) REFERENCES `danh_muc` (`ma_danh_muc`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bien_muc_sach`
--

LOCK TABLES `bien_muc_sach` WRITE;
/*!40000 ALTER TABLE `bien_muc_sach` DISABLE KEYS */;
INSERT INTO `bien_muc_sach` VALUES (1,'Lập trình Web với NodeJS','Tài liệu hướng dẫn học NodeJS và Express nâng cao','9786041234567',2024,'Nhà xuất bản Khoa Học',320,'Tiếng Việt','NODEJS-001',5,NULL,NULL,1,'https://res.cloudinary.com/dzc0fwfti/image/upload/v1760511883/QLTV/pdf/1234.pdf',NULL,NULL,'nhap_lieu','2025-10-15 14:08:47'),(2,'Lập trình Web với NodeJS','Tài liệu hướng dẫn học NodeJS và Express nâng cao','9786041234222',2024,'Nhà xuất bản Khoa Học',320,'Tiếng Việt','NODEJS-001',5,NULL,NULL,1,'https://res.cloudinary.com/dzc0fwfti/image/upload/v1760511883/QLTV/pdf/1234.pdf',NULL,NULL,'kich_hoat','2025-10-15 14:20:55'),(3,'Lập trình Web với NodeJS','Tài liệu hướng dẫn học NodeJS và Express nâng cao','9786041234223',2024,'Nhà xuất bản Khoa Học',320,'Tiếng Việt','NODEJS-123',3,NULL,NULL,1,NULL,'https://res.cloudinary.com/dzc0fwfti/image/upload/v1760756091/QLTV/images/1760756089152_Nitro_Wallpaper_07_3840x2400.jpg',NULL,'nhap_lieu','2025-10-18 09:54:55'),(4,'Lập trình Web với NodeJS','Tài liệu hướng dẫn học NodeJS và Express nâng cao','9786041234223',2024,'Nhà xuất bản Khoa Học',320,'Tiếng Việt','NODEJS-123',3,NULL,NULL,1,NULL,'https://res.cloudinary.com/dzc0fwfti/image/upload/v1760756263/QLTV/images/1760756259655_Nitro_Wallpaper_07_3840x2400.jpg',NULL,'nhap_lieu','2025-10-18 09:57:47'),(5,'Test biên mục 1','Test biên mục 2','9786041234225',2024,'Nhà xuất bản Khoa Học',320,'Tiếng Việt','NODEJS-123',3,NULL,NULL,1,NULL,'https://res.cloudinary.com/dzc0fwfti/image/upload/v1760756577/QLTV/images/1760756572134_Nitro_Wallpaper_07_3840x2400.jpg',NULL,'nhap_lieu','2025-10-18 10:03:02'),(6,'Test biên mục 2','Test biên mục 2','9786041234226',2024,'Nhà xuất bản Khoa Học',320,'Tiếng Việt','NODEJS-123',3,NULL,NULL,1,NULL,'https://res.cloudinary.com/dzc0fwfti/image/upload/v1760756616/QLTV/images/1760756612283_Nitro_Wallpaper_07_3840x2400.jpg',NULL,'nhap_lieu','2025-10-18 10:03:40'),(7,'Test biên mục 3','Test biên mục 3','9786041234229',2024,'Nhà xuất bản Khoa Học',320,'Tiếng Việt','NODEJS-125',3,NULL,NULL,1,NULL,'https://res.cloudinary.com/dzc0fwfti/image/upload/v1760757103/QLTV/images/1760757100109_Nitro_Wallpaper_07_3840x2400.jpg',NULL,'nhap_lieu','2025-10-18 10:11:47'),(13,'Test biên mục 4','Test biên mục 4','9786041234220',2024,'Nhà xuất bản Khoa Học',320,'Tiếng Việt','NODEJS-125',3,NULL,NULL,1,'https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760807821711_1234.pdf','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760807829/QLTV/hinh_bia/tluug6qxiuzbwhchsxlp.jpg',NULL,'nhap_lieu','2025-10-19 00:17:13'),(14,'Sách test demo 1','Sách này đang test thử nghiệm','9786041234220',2022,NULL,200,'Tiếng Việt',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,'nhap_lieu','2025-10-19 01:08:52'),(15,'Test sách demo 2','Đây là sách tôi đang demo lần 2 biên mục','9786041234220',2022,'Fahasa',200,'Tiếng Anh','ABC-123',2,NULL,NULL,0,NULL,NULL,NULL,'nhap_lieu','2025-10-19 01:22:56'),(16,'sách test demo biên mục 3','tôi đang test','9786041234220',2024,'fahasa',50,'Tiếng Anh','123',1,NULL,NULL,0,NULL,NULL,NULL,'nhap_lieu','2025-10-19 01:49:45'),(17,'Test biên mục 5','9786041234220','9786041234220',2017,'faf',200,'Tiếng Việt ','123',1,NULL,NULL,0,'https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760813804543_1234.pdf','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760813809/QLTV/hinh_bia/jhsy6yjxbdqtqsgpbywl.jpg',NULL,'nhap_lieu','2025-10-19 01:56:55'),(18,'Nhà Giả Kim','Một câu chuyện triết lý kể về hành trình của chàng chăn cừu Santiago đi tìm kho báu, khám phá chính bản thân và ý nghĩa cuộc sống.','9786041136005',2020,'NXB Giáo Dục',228,'Tiếng Anh','ALCHEMIST-VN2020',2,2,1,0,'https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760852624157_WAI.pdf','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760852628/QLTV/hinh_bia/whubdlfzt0cmrc3wttdt.jpg',NULL,'kich_hoat','2025-10-19 12:43:50'),(19,'Trí tuệ nhân tạo – Kỷ nguyên mới của công nghệ','Cuốn sách cung cấp cái nhìn toàn diện về sự phát triển của trí tuệ nhân tạo, từ nền tảng cơ bản đến các ứng dụng hiện đại như học sâu, xử lý ngôn ngữ tự nhiên và robot.','9786041234567',2023,'NXB Trẻ',123,'Tiếng Trung','AI2023TG',1,2,2,1,'https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760856215412_WAI.pdf','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760856235/QLTV/hinh_bia/r9z4ovbghgs4p6za8nct.jpg','QLTV/hinh_bia/r9z4ovbghgs4p6za8nct','kich_hoat','2025-10-19 13:43:58'),(20,'Atomic Habits – Thói quen nguyên tử','Cuốn sách hướng dẫn cách hình thành những thói quen nhỏ mang lại kết quả lớn. James Clear chia sẻ các chiến lược khoa học giúp bạn thay đổi hành vi, cải thiện năng suất và đạt được mục tiêu lâu dài.','9786047755138',2019,'NXB Trẻ',120,'Tiếng Anh','TC-2019-ATOMIC',1,1,1,1,'https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760856956252_WAI.pdf','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760856960/QLTV/hinh_bia/a7yrpf4xngczzayt83dd.jpg','QLTV/hinh_bia/a7yrpf4xngczzayt83dd','kich_hoat','2025-10-19 13:56:02'),(21,'Trí Tuệ Nhân Tạo – Hành Trình Của Máy Học','Cuốn sách giới thiệu tổng quan về trí tuệ nhân tạo (AI) và các phương pháp học máy, giúp người đọc hiểu rõ cách máy tính học từ dữ liệu.','9786049988112',2024,'NXB Trẻ',200,'Tiếng Việt','AI2024',4,1,2,1,'https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760857520168_WAI.pdf','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760857524/QLTV/hinh_bia/lmxvjc1u7orrbcgbhfar.jpg','QLTV/hinh_bia/lmxvjc1u7orrbcgbhfar','kich_hoat','2025-10-19 14:05:26'),(22,'The Subtle Art of Not Giving','A counterintuitive approach to living a good life by embracing limitations and focusing on what truly matters.','9780062457714',2016,'NXB Trẻ',222,'Tiếng Anh','SAONF-EN-2016',5,2,2,1,'https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760871626221_WAI.pdf','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760871631/QLTV/hinh_bia/iy23blijahxozudp41od.jpg','QLTV/hinh_bia/iy23blijahxozudp41od','kich_hoat','2025-10-19 18:00:34'),(23,'Sapiens: A Brief History of Humankind','Explores the history and impact of Homo sapiens from the Stone Age to the modern age, focusing on how shared beliefs have shaped societies.','9780062316097',2015,'NXB Trẻ',123,'Tiếng Anh','SAPIENS-EN-2015',1,2,1,1,'https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760872661053_WAI.pdf','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760872665/QLTV/hinh_bia/i0jr1rhorwetlgv6tbc5.jpg','QLTV/hinh_bia/i0jr1rhorwetlgv6tbc5','kich_hoat','2025-10-19 18:17:48'),(24,'A Brief History of Time','Stephen Hawking explains the fundamental questions about the universe — its origin, structure, and eventual fate — in a clear and accessible way.','9780553380999',2012,'NXB Trẻ',222,'Tiếng Anh','ABHOT-EN-1998',2,2,2,1,'https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760873701753_WAI.pdf','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760873707/QLTV/hinh_bia/tprqptlftwa6l7vjgkfm.jpg','QLTV/hinh_bia/tprqptlftwa6l7vjgkfm','kich_hoat','2025-10-19 18:35:08');
/*!40000 ALTER TABLE `bien_muc_sach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bien_muc_tac_gia`
--

DROP TABLE IF EXISTS `bien_muc_tac_gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bien_muc_tac_gia` (
  `ma_tac_gia` int NOT NULL AUTO_INCREMENT,
  `ma_bien_muc` int DEFAULT NULL,
  `ten_tac_gia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_tac_gia`),
  KEY `ma_bien_muc` (`ma_bien_muc`),
  CONSTRAINT `bien_muc_tac_gia_ibfk_1` FOREIGN KEY (`ma_bien_muc`) REFERENCES `bien_muc_sach` (`ma_bien_muc`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bien_muc_tac_gia`
--

LOCK TABLES `bien_muc_tac_gia` WRITE;
/*!40000 ALTER TABLE `bien_muc_tac_gia` DISABLE KEYS */;
INSERT INTO `bien_muc_tac_gia` VALUES (1,4,'Nguyễn Văn A'),(2,4,'Lê Thị B'),(3,5,'Nguyễn Văn A'),(4,5,'Lê Thị B'),(5,6,'Nguyễn Văn A'),(6,6,'Lê Thị B'),(7,7,'Nguyễn Văn A'),(8,7,'Lê Thị B'),(19,13,'Nguyễn Văn A'),(20,13,'Lê Thị B'),(21,14,'Nguyễn Hữu Linh'),(22,15,'Nguyễn Hữu Linh'),(23,15,'[\"Nguyễn Hữu Linh\"]'),(24,16,'Nguyễn Hữu Linh'),(25,17,'Nguyễn Hữu Linh'),(26,18,'Paulo Coelho'),(27,19,'Nguyễn Minh Trí'),(28,19,'Trần Bảo Khang'),(29,20,'James Clear'),(30,21,'Phạm Minh Tuấn'),(31,21,'Lê Hoàng Long'),(32,22,'Mark Manson'),(33,23,'Yuval Noah Harari'),(34,24,'Stephen Hawking');
/*!40000 ALTER TABLE `bien_muc_tac_gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bien_muc_tai_lieu_dinh_kem`
--

DROP TABLE IF EXISTS `bien_muc_tai_lieu_dinh_kem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bien_muc_tai_lieu_dinh_kem` (
  `ma_tai_lieu` int NOT NULL AUTO_INCREMENT,
  `ma_bien_muc` int DEFAULT NULL,
  `ten_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duong_dan` text COLLATE utf8mb4_unicode_ci,
  `loai_file` enum('pdf','image','video','khac') COLLATE utf8mb4_unicode_ci DEFAULT 'pdf',
  `ngay_tao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ma_tai_lieu`),
  KEY `ma_bien_muc` (`ma_bien_muc`),
  CONSTRAINT `bien_muc_tai_lieu_dinh_kem_ibfk_1` FOREIGN KEY (`ma_bien_muc`) REFERENCES `bien_muc_sach` (`ma_bien_muc`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bien_muc_tai_lieu_dinh_kem`
--

LOCK TABLES `bien_muc_tai_lieu_dinh_kem` WRITE;
/*!40000 ALTER TABLE `bien_muc_tai_lieu_dinh_kem` DISABLE KEYS */;
INSERT INTO `bien_muc_tai_lieu_dinh_kem` VALUES (1,4,'1234.pdf','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760756258/QLTV/pdf/1760756259655_1234.pdf','pdf','2025-10-18 09:57:47'),(2,5,'1234.pdf','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760756571/QLTV/pdf/1760756572131_1234.pdf','pdf','2025-10-18 10:03:02'),(3,6,'1234.pdf','https://res.cloudinary.com/dzc0fwfti/raw/upload/v1760756611/QLTV/pdf/1760756612282_1234','pdf','2025-10-18 10:03:40'),(4,7,'1234.pdf','https://res.cloudinary.com/dzc0fwfti/raw/upload/v1760757099/QLTV/pdf/1760757100109_1234','pdf','2025-10-18 10:11:47'),(10,13,'1234.pdf','https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760807821711_1234.pdf','pdf','2025-10-19 00:17:13'),(11,17,'1234.pdf','https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760813804543_1234.pdf','pdf','2025-10-19 01:56:55'),(12,18,'WAI.pdf','https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760852624157_WAI.pdf','pdf','2025-10-19 12:43:50'),(13,19,'WAI.pdf','https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760856215412_WAI.pdf','pdf','2025-10-19 13:43:58'),(14,20,'WAI.pdf','https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760856956252_WAI.pdf','pdf','2025-10-19 13:56:02'),(15,21,'WAI.pdf','https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760857520168_WAI.pdf','pdf','2025-10-19 14:05:26'),(16,22,'WAI.pdf','https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760871626221_WAI.pdf','pdf','2025-10-19 18:00:34'),(17,23,'WAI.pdf','https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760872661053_WAI.pdf','pdf','2025-10-19 18:17:48'),(18,24,'WAI.pdf','https://qwuhmpmkuncwfsvirnrw.supabase.co/storage/v1/object/public/QLTV/pdf/1760873701753_WAI.pdf','pdf','2025-10-19 18:35:08');
/*!40000 ALTER TABLE `bien_muc_tai_lieu_dinh_kem` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `chi_tiet_dat_muon` VALUES (1,1,1),(1,3,2),(2,1,3),(2,2,3),(3,1,1),(3,3,1),(4,1,1),(4,3,1),(5,1,1),(5,2,1),(6,1,1),(6,2,1),(7,1,1),(7,2,1),(8,1,1),(8,3,1),(9,1,1),(9,3,1),(10,1,1),(10,3,1),(11,1,1),(11,2,1),(11,3,1),(12,1,1),(12,2,1),(12,3,1),(13,1,1),(13,2,1),(13,3,1),(14,1,1),(14,2,1),(14,3,1),(15,1,1),(15,2,1),(15,3,1),(16,1,2),(16,2,1),(17,1,2),(17,2,1),(18,1,2),(18,2,1),(19,1,2),(19,2,1),(20,1,2),(20,2,1),(21,1,2),(21,2,1),(22,6,2),(23,6,2),(24,6,2),(25,2,1),(26,6,1),(27,6,1),(28,6,1),(29,6,1),(30,6,1),(31,6,1),(32,6,1),(33,18,1),(34,17,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_muon`
--

LOCK TABLES `chi_tiet_muon` WRITE;
/*!40000 ALTER TABLE `chi_tiet_muon` DISABLE KEYS */;
INSERT INTO `chi_tiet_muon` VALUES (1,19,1,1,NULL,NULL,1,0,NULL),(2,20,1,1,NULL,NULL,2,1,'2025-09-20'),(3,24,1,1,NULL,NULL,5,0,NULL),(4,24,1,1,NULL,NULL,6,0,NULL),(5,24,2,1,NULL,NULL,3,0,NULL),(6,25,6,1,NULL,NULL,7,0,NULL),(7,25,6,1,NULL,NULL,8,0,NULL),(8,26,6,1,NULL,NULL,9,1,'2025-09-20'),(9,26,6,1,NULL,NULL,10,1,'2025-09-20'),(10,27,6,1,NULL,NULL,9,1,'2025-09-20'),(11,27,6,1,NULL,NULL,10,1,'2025-09-20'),(12,29,6,1,NULL,NULL,9,0,NULL),(13,30,6,1,NULL,'2025-10-05',11,0,NULL),(14,31,6,1,NULL,'2025-10-05',12,0,NULL),(15,32,6,1,NULL,'2025-10-05',13,0,NULL),(16,33,6,1,NULL,'2025-10-05',14,0,NULL),(17,34,6,1,NULL,'2025-10-05',15,0,NULL),(18,35,6,1,NULL,NULL,16,0,NULL),(19,36,6,1,'còn','2025-10-05',17,1,'2025-09-21'),(20,37,6,1,NULL,'2025-10-19',18,0,NULL),(21,38,6,1,'còn','2025-10-05',19,1,'2025-09-21'),(22,39,6,1,'còn','2025-10-05',9,1,'2025-09-21'),(33,40,6,1,NULL,NULL,21,0,NULL),(34,40,6,1,NULL,NULL,22,0,NULL),(35,41,18,1,'còn','2025-11-03',70,0,NULL),(36,42,17,1,'còn','2025-11-03',67,0,NULL);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_cap_nhat_so_thich_sau_muon` AFTER INSERT ON `chi_tiet_muon` FOR EACH ROW BEGIN
    CALL CapNhatHoSoSoThich(
        (SELECT ma_nguoi_dung FROM phieu_muon WHERE ma_phieu_muon = NEW.ma_phieu_muon)
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_score_borrow` AFTER INSERT ON `chi_tiet_muon` FOR EACH ROW BEGIN
  DECLARE uid INT;

  -- Lấy user từ phieu_muon
  SELECT ma_nguoi_dung INTO uid
  FROM phieu_muon
  WHERE ma_phieu_muon = NEW.ma_phieu_muon;

  -- Cộng điểm cho user
  UPDATE user_rank
  SET score = score + 10
  WHERE ma_nguoi_dung = uid;
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_tinh_phat_after_update` AFTER UPDATE ON `chi_tiet_muon` FOR EACH ROW BEGIN
  IF NEW.da_tra = 1 AND OLD.da_tra <> 1 THEN
    CALL CalculateFineForChiTiet(NEW.id);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `danh_gia`
--

LOCK TABLES `danh_gia` WRITE;
/*!40000 ALTER TABLE `danh_gia` DISABLE KEYS */;
INSERT INTO `danh_gia` VALUES (1,1,3,5,'Sách rất hữu ích cho người học CSDL','2025-07-23 16:58:22'),(2,2,4,4,'Văn học cổ điển hay nhưng hơi dài','2025-07-23 16:58:22'),(3,2,7,4,'Đọc ổn','2025-09-30 21:12:03'),(4,1,7,5,'Sách hay','2025-09-30 21:12:06'),(5,17,1,5,'Sách này hay á','2025-10-20 00:00:00');
/*!40000 ALTER TABLE `danh_gia` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_cap_nhat_so_thich_sau_danh_gia` AFTER INSERT ON `danh_gia` FOR EACH ROW BEGIN
    CALL CapNhatHoSoSoThich(NEW.ma_doc_gia);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_score_review` AFTER INSERT ON `danh_gia` FOR EACH ROW BEGIN
  UPDATE user_rank
  SET score = score + 5
  WHERE ma_nguoi_dung = NEW.ma_doc_gia;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dat_muon`
--

LOCK TABLES `dat_muon` WRITE;
/*!40000 ALTER TABLE `dat_muon` DISABLE KEYS */;
INSERT INTO `dat_muon` VALUES (1,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',NULL),(2,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',NULL),(3,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',NULL),(4,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(5,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(6,1,'2025-09-16','2025-09-20','Hủy',NULL,1),(7,1,'2025-09-16','2025-09-20','Chờ duyệt','Mượn để làm tiểu luận',NULL),(8,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(9,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(10,1,'2025-09-16','2025-09-20','Chờ duyệt','Mượn để làm tiểu luận',NULL),(11,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(12,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(13,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(14,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(15,1,'2025-09-16','2025-09-20','Hoàn thành','Mượn để làm tiểu luận',1),(16,1,'2025-09-19','2025-09-25','Chờ duyệt','Muốn mượn sách học kỳ',NULL),(17,1,'2025-09-19','2025-09-25','Chờ duyệt','Muốn mượn sách học kỳ',NULL),(18,1,'2025-09-19','2025-09-25','Chờ duyệt','Muốn mượn sách học kỳ',NULL),(19,1,'2025-09-19','2025-09-25','Chờ duyệt','Muốn mượn sách học kỳ',NULL),(20,1,'2025-09-19','2025-09-25','Đang mượn','Muốn mượn sách học kỳ',2),(21,1,'2025-09-19','2025-09-25','Chờ duyệt','Muốn mượn sách học kỳ',NULL),(22,1,'2025-09-19','2025-09-25','Đang mượn','Muốn mượn sách học kỳ',2),(23,5,'2025-09-20','2025-09-25','Đang mượn','Muốn mượn sách học kỳ',2),(24,5,'2025-09-20','2025-09-25','Đang mượn','Muốn mượn sách học kỳ',2),(25,5,'2025-09-21','2025-09-25','Chờ duyệt','Muốn mượn sách để test mysql',NULL),(26,5,'2025-09-21','2025-09-25','Đang mượn','Muốn mượn sách để test mysql',2),(27,5,'2025-09-21','2025-09-25','Chờ duyệt','Muốn mượn sách để test mysql',NULL),(28,5,'2025-09-21','2025-09-25','Đang mượn','Muốn mượn sách để test mysql',2),(29,5,'2025-09-21','2025-09-25','Đang mượn','Muốn mượn sách để test mysql',2),(30,5,'2025-09-21','2025-09-25','Đang mượn','Muốn mượn sách để test mysql',2),(31,5,'2025-09-21','2025-09-25','Đang mượn','Muốn mượn sách để test mysql',2),(32,5,'2025-09-21','2025-09-25','Đang mượn','Muốn mượn sách để test mysql',2),(33,1,'2025-10-19','2025-10-19','Đang mượn',NULL,1),(34,1,'2025-10-19','2025-10-19','Đang mượn',NULL,1);
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

      -- 1. Tạo phiếu mượn mới
      INSERT INTO phieu_muon(ma_doc_gia, ngay_muon, ngay_tra, trang_thai)
      VALUES (NEW.ma_nguoi_dung, CURDATE(), NEW.ngay_du_kien_muon, 'Đang mượn');

      SET new_phieu_muon_id = LAST_INSERT_ID();

      -- 2. Copy chi tiết đặt mượn sang chi tiết mượn
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
-- Table structure for table `ho_so_so_thich`
--

DROP TABLE IF EXISTS `ho_so_so_thich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ho_so_so_thich` (
  `ma_ho_so` int NOT NULL AUTO_INCREMENT,
  `ma_nguoi_dung` int NOT NULL,
  `ma_the_loai` int NOT NULL,
  `diem_so` decimal(5,2) DEFAULT '1.00',
  `lan_cap_nhat` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ma_ho_so`),
  UNIQUE KEY `unique_nguoi_the_loai` (`ma_nguoi_dung`,`ma_the_loai`),
  KEY `ma_the_loai` (`ma_the_loai`),
  CONSTRAINT `ho_so_so_thich_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `ho_so_so_thich_ibfk_2` FOREIGN KEY (`ma_the_loai`) REFERENCES `the_loai` (`ma_the_loai`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ho_so_so_thich`
--

LOCK TABLES `ho_so_so_thich` WRITE;
/*!40000 ALTER TABLE `ho_so_so_thich` DISABLE KEYS */;
INSERT INTO `ho_so_so_thich` VALUES (3,5,1,30.00,'2025-09-29 10:34:35'),(24,7,1,6.50,'2025-09-30 21:20:38'),(25,7,2,2.00,'2025-09-30 21:20:38'),(43,1,1,19.50,'2025-10-20 13:21:42'),(44,1,2,5.50,'2025-10-20 13:21:42');
/*!40000 ALTER TABLE `ho_so_so_thich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ho_tro`
--

DROP TABLE IF EXISTS `ho_tro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ho_tro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_nguoi_dung` int NOT NULL,
  `tieu_de` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trang_thai` enum('Chưa xử lý','Đang xử lý','Đã xử lý') COLLATE utf8mb4_unicode_ci DEFAULT 'Chưa xử lý',
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `ho_tro_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ho_tro`
--

LOCK TABLES `ho_tro` WRITE;
/*!40000 ALTER TABLE `ho_tro` DISABLE KEYS */;
INSERT INTO `ho_tro` VALUES (1,1,'Không đăng nhập được','Em nhập đúng mật khẩu nhưng hệ thống báo sai.','Chưa xử lý','2025-10-05 12:01:50'),(2,2,'Lỗi tìm kiếm sách','Tìm theo tên sách không hiển thị kết quả.','Đang xử lý','2025-10-05 12:01:50'),(3,3,'Xin gia hạn mượn sách','Em muốn gia hạn thêm 7 ngày cho phiếu mượn #15.','Chưa xử lý','2025-10-05 12:01:50'),(4,1,'Phí phạt chưa đúng','Em bị phạt 20k nhưng em đã trả đúng hạn.','Đang xử lý','2025-10-05 12:01:50'),(5,2,'Không tải được avatar','Em upload ảnh nhưng hệ thống báo lỗi server.','Đã xử lý','2025-10-05 12:01:50'),(6,1,'Không đăng nhập được','Em nhập đúng mật khẩu nhưng hệ thống báo sai.','Đang xử lý','2025-10-05 12:46:28'),(7,1,'Lỗi tìm kiếm sách','Tìm sách nhưng không thấy kết quả.','Chưa xử lý','2025-10-05 12:46:28'),(8,1,'Xin gia hạn sách','Em muốn gia hạn sách Toán Cao Cấp thêm 7 ngày.','Đã xử lý','2025-10-05 12:46:28');
/*!40000 ALTER TABLE `ho_tro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ho_tro_phan_hoi`
--

DROP TABLE IF EXISTS `ho_tro_phan_hoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ho_tro_phan_hoi` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ho_tro_id` int NOT NULL,
  `ma_nguoi_dung` int NOT NULL,
  `noi_dung` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_tao` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ho_tro_id` (`ho_tro_id`),
  KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `ho_tro_phan_hoi_ibfk_1` FOREIGN KEY (`ho_tro_id`) REFERENCES `ho_tro` (`id`),
  CONSTRAINT `ho_tro_phan_hoi_ibfk_2` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ho_tro_phan_hoi`
--

LOCK TABLES `ho_tro_phan_hoi` WRITE;
/*!40000 ALTER TABLE `ho_tro_phan_hoi` DISABLE KEYS */;
INSERT INTO `ho_tro_phan_hoi` VALUES (7,1,2,'Chúng tôi đã tiếp nhận yêu cầu của bạn, sẽ xử lý trong 24h.','2025-10-05 12:13:17'),(8,1,1,'Đã reset mật khẩu, bạn thử đăng nhập lại nhé.','2025-10-05 12:13:17'),(9,2,1,'Lỗi tìm kiếm đã được chuyển cho bộ phận kỹ thuật.','2025-10-05 12:13:17'),(10,3,1,'Yêu cầu gia hạn sách #15 đã được phê duyệt thêm 7 ngày.','2025-10-05 12:13:17'),(11,4,1,'Phí phạt đã được kiểm tra lại, bạn sẽ không phải trả tiền.','2025-10-05 12:13:17'),(12,5,1,'Lỗi upload avatar là do định dạng ảnh, vui lòng chọn ảnh JPG/PNG.','2025-10-05 12:13:17'),(13,1,1,'Chúng tôi đã tiếp nhận yêu cầu, vui lòng chờ xử lý.','2025-10-05 12:46:41'),(14,1,1,'Đã reset mật khẩu, bạn thử lại nhé.','2025-10-05 12:46:41'),(15,1,1,'Em đã thử rồi nhưng vẫn không được.','2025-10-05 12:46:41'),(16,2,1,'Lỗi này đã được chuyển cho bộ phận kỹ thuật.','2025-10-05 12:46:41'),(17,3,1,'Yêu cầu gia hạn đã được phê duyệt thêm 7 ngày.','2025-10-05 12:46:41'),(18,3,1,'Em cảm ơn admin!','2025-10-05 12:46:41'),(19,1,1,'aaaaa','2025-10-05 12:57:32'),(20,4,1,'vâng ạ','2025-10-05 13:08:16'),(21,4,1,'test phản hồi user','2025-10-05 13:09:01'),(22,4,1,'ok','2025-10-05 13:12:11'),(23,4,1,'1234','2025-10-05 13:34:18'),(24,4,1,'1231232','2025-10-05 13:34:30'),(25,4,1,'test cuối','2025-10-05 13:34:45');
/*!40000 ALTER TABLE `ho_tro_phan_hoi` ENABLE KEYS */;
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
-- Table structure for table `lich_su_goi_y`
--

DROP TABLE IF EXISTS `lich_su_goi_y`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lich_su_goi_y` (
  `ma_goi_y` int NOT NULL AUTO_INCREMENT,
  `ma_nguoi_dung` int NOT NULL,
  `ma_sach` int NOT NULL,
  `ngay_goi_y` datetime DEFAULT CURRENT_TIMESTAMP,
  `ty_le_khop` decimal(5,2) DEFAULT NULL,
  `da_xem` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ma_goi_y`),
  KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  KEY `ma_sach` (`ma_sach`),
  CONSTRAINT `lich_su_goi_y_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `lich_su_goi_y_ibfk_2` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lich_su_goi_y`
--

LOCK TABLES `lich_su_goi_y` WRITE;
/*!40000 ALTER TABLE `lich_su_goi_y` DISABLE KEYS */;
/*!40000 ALTER TABLE `lich_su_goi_y` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lich_su_kich_hoat`
--

DROP TABLE IF EXISTS `lich_su_kich_hoat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lich_su_kich_hoat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_bien_muc` int NOT NULL,
  `ma_sach` int NOT NULL,
  `so_ban_sao` int DEFAULT '0',
  `mode` enum('add_copy','update') COLLATE utf8mb4_unicode_ci NOT NULL,
  `thong_bao` text COLLATE utf8mb4_unicode_ci,
  `thoi_gian` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ma_bien_muc` (`ma_bien_muc`),
  KEY `ma_sach` (`ma_sach`),
  CONSTRAINT `lich_su_kich_hoat_ibfk_1` FOREIGN KEY (`ma_bien_muc`) REFERENCES `bien_muc_sach` (`ma_bien_muc`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `lich_su_kich_hoat_ibfk_2` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lich_su_kich_hoat`
--

LOCK TABLES `lich_su_kich_hoat` WRITE;
/*!40000 ALTER TABLE `lich_su_kich_hoat` DISABLE KEYS */;
INSERT INTO `lich_su_kich_hoat` VALUES (1,18,12,5,'add_copy','Tạo đầu sách mới và thêm bản sao','2025-10-19 12:59:09'),(2,19,1,5,'add_copy','ISBN đã tồn tại — chỉ thêm bản sao mới','2025-10-19 13:50:19'),(3,20,13,5,'add_copy','Tạo đầu sách mới và thêm bản sao','2025-10-19 13:56:39'),(4,21,14,5,'add_copy','Tạo đầu sách mới và thêm bản sao','2025-10-19 14:06:03'),(5,22,15,6,'add_copy','Tạo đầu sách mới và thêm bản sao','2025-10-19 18:01:06'),(6,23,17,3,'add_copy','? Tạo đầu sách mới và thêm bản sao','2025-10-19 18:24:39'),(7,24,18,2,'add_copy','Tạo đầu sách mới','2025-10-19 18:35:34');
/*!40000 ALTER TABLE `lich_su_kich_hoat` ENABLE KEYS */;
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
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vip` tinyint(1) DEFAULT '0',
  `vip_from` date DEFAULT NULL,
  `vip_to` date DEFAULT NULL,
  `last_login` date DEFAULT NULL,
  `streak_days` int DEFAULT '0',
  `avatar_public_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ma_nguoi_dung`),
  UNIQUE KEY `email` (`email`),
  KEY `ma_vai_tro` (`ma_vai_tro`),
  KEY `ma_trang_thai` (`ma_trang_thai`),
  CONSTRAINT `nguoi_dung_ibfk_1` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro` (`ma_vai_tro`),
  CONSTRAINT `nguoi_dung_ibfk_2` FOREIGN KEY (`ma_trang_thai`) REFERENCES `trang_thai_nguoi_dung` (`ma_trang_thai`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoi_dung`
--

LOCK TABLES `nguoi_dung` WRITE;
/*!40000 ALTER TABLE `nguoi_dung` DISABLE KEYS */;
INSERT INTO `nguoi_dung` VALUES (1,'Nguyễn Văn A','a@example.com','123456','1989-12-30','nam','Hà Nội','0901111111','2025-09-08 16:59:46','2026-12-29',NULL,1,1,'https://res.cloudinary.com/dzc0fwfti/image/upload/v1759251285/user_updates/rzo5t3bbitt2ce9asgrq.jpg',0,NULL,NULL,'2025-10-20',7,'user_updates/rzo5t3bbitt2ce9asgrq'),(2,'Trần Thị B','b@example.com','123456','1992-05-10','nữ','HCM','0902222222','2025-09-09 06:59:46','2026-12-31',NULL,2,1,NULL,0,NULL,NULL,NULL,0,NULL),(3,'Lê Văn C','c@example.com','123456','1995-07-20','nam','Đà Nẵng','0903333333','2025-09-09 06:59:46','2026-12-31',NULL,2,2,NULL,0,NULL,NULL,NULL,0,NULL),(4,'Phạm Thị D','d@example.com','123456','1998-09-09','nữ','Cần Thơ','0904444444','2025-09-09 06:59:46','2026-12-31',NULL,3,1,NULL,0,NULL,NULL,NULL,0,NULL),(5,'Hoàng Văn E','e@example.com','123456','2000-12-12','nam','Hải Phòng','0905555555','2025-09-09 06:59:46','2026-12-31',NULL,1,1,NULL,0,NULL,NULL,NULL,0,NULL),(7,'Đỗ Anh Tuấn','anhTuan@gmail.com','123456','2025-09-30','nam','Hưng Yên','0123456789','2025-09-26 12:10:25','2026-12-16','anh.png',1,1,'https://res.cloudinary.com/dzc0fwfti/image/upload/v1759251371/user_updates/efali0rimvgo0fuit6gs.jpg',1,'2025-09-30','2025-10-30','2025-10-14',1,'user_updates/efali0rimvgo0fuit6gs'),(9,'Trợ lý ảo AI','ai@thuvienso.vn','',NULL,'khác','Thư viện trung tâm','','2025-10-05 21:54:58',NULL,NULL,1,1,NULL,0,NULL,NULL,NULL,0,NULL);
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_init_user_rank` AFTER INSERT ON `nguoi_dung` FOR EACH ROW BEGIN
  INSERT INTO user_rank(ma_nguoi_dung, rank_name, score)
  VALUES (NEW.ma_nguoi_dung, 'Thành viên', 0);
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_update_streak` BEFORE UPDATE ON `nguoi_dung` FOR EACH ROW BEGIN
  DECLARE diff INT;

  IF NEW.last_login IS NOT NULL AND OLD.last_login IS NOT NULL THEN
    SET diff = DATEDIFF(NEW.last_login, OLD.last_login);

    IF diff = 1 THEN
      SET NEW.streak_days = OLD.streak_days + 1;
    ELSEIF diff > 1 THEN
      SET NEW.streak_days = 1;
    ELSE
      SET NEW.streak_days = OLD.streak_days;
    END IF;
  END IF;

  -- Lưu vào bảng user_streak
  IF NEW.last_login IS NOT NULL THEN
    INSERT IGNORE INTO user_streak(ma_nguoi_dung, date)
    VALUES (NEW.ma_nguoi_dung, NEW.last_login);
  END IF;
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhat_ky_he_thong`
--

LOCK TABLES `nhat_ky_he_thong` WRITE;
/*!40000 ALTER TABLE `nhat_ky_he_thong` DISABLE KEYS */;
INSERT INTO `nhat_ky_he_thong` VALUES (1,1,'Thêm sách: Giáo trình Cơ sở dữ liệu','2025-07-23 16:58:22'),(2,2,'Xử lý trả sách phiếu #2','2025-07-23 16:58:22'),(3,1,'Tạo phiếu mượn','2025-09-17 00:08:26'),(4,1,'Tạo phiếu mượn','2025-09-17 00:15:09'),(5,1,'Tạo phiếu mượn','2025-09-17 00:17:10'),(6,1,'Tạo phiếu mượn','2025-09-17 00:38:11'),(7,1,'Tạo phiếu mượn','2025-09-17 00:40:07'),(8,1,'Tạo phiếu mượn','2025-09-17 00:59:20'),(9,1,'Tạo phiếu mượn','2025-09-17 01:01:20'),(10,1,'Tạo phiếu mượn','2025-09-17 01:07:20'),(11,1,'Tạo phiếu mượn','2025-09-17 01:19:00'),(12,1,'Tạo phiếu mượn','2025-09-17 03:49:05'),(13,1,'Tạo phiếu mượn','2025-09-17 03:58:19'),(14,1,'Tạo phiếu mượn','2025-09-17 04:08:32'),(15,1,'Tạo phiếu mượn','2025-09-17 04:17:00'),(16,1,'Tạo phiếu mượn','2025-09-17 04:21:17'),(17,1,'Tạo phiếu mượn','2025-09-20 03:30:09'),(18,1,'Tạo phiếu mượn','2025-09-20 03:38:40'),(19,1,'Tạo phiếu mượn','2025-09-20 03:40:09'),(20,1,'Tạo phiếu mượn','2025-09-20 03:48:26'),(21,1,'Tạo phiếu mượn','2025-09-20 03:50:06'),(22,1,'Tạo phiếu mượn','2025-09-20 03:51:34'),(23,1,'Tạo phiếu mượn','2025-09-20 03:56:35'),(24,1,'Tạo phiếu mượn','2025-09-20 03:58:54'),(25,1,'Thêm sách: Lập trình Java cơ bản','2025-09-20 04:31:08'),(26,1,'Tạo phiếu mượn','2025-09-20 04:33:03'),(27,5,'Tạo phiếu mượn','2025-09-20 12:52:35'),(28,5,'Tạo phiếu mượn','2025-09-20 14:18:19'),(29,5,'Tạo phiếu mượn','2025-09-21 11:31:50'),(30,5,'Tạo phiếu mượn','2025-09-21 11:33:02'),(31,5,'Tạo phiếu mượn','2025-09-21 11:42:58'),(32,5,'Tạo phiếu mượn','2025-09-21 11:43:29'),(33,5,'Tạo phiếu mượn','2025-09-21 11:43:31'),(34,5,'Tạo phiếu mượn','2025-09-21 11:44:51'),(35,5,'Tạo phiếu mượn','2025-09-21 12:01:29'),(36,5,'Tạo phiếu mượn','2025-09-21 12:06:40'),(37,5,'Tạo phiếu mượn','2025-09-21 12:21:10'),(38,5,'Tạo phiếu mượn','2025-09-21 12:36:05'),(39,5,'Tạo phiếu mượn','2025-09-21 12:40:54'),(40,5,'Tạo phiếu mượn','2025-09-21 15:39:14'),(41,7,'Thêm mới người dùng','2025-09-30 21:10:25'),(42,7,'Tạo phiếu mượn','2025-09-30 21:12:41'),(43,9,'Thêm mới người dùng','2025-10-05 21:54:58'),(44,1,'Thêm sách: Lập trình Web với NodeJS','2025-10-15 14:21:20'),(45,1,'Thêm sách: Test biên mục 4','2025-10-18 12:27:20'),(48,1,'Thêm sách: Nhà Giả Kim','2025-10-19 12:59:09'),(49,1,'Thêm sách: Atomic Habits – Thói quen nguyên tử','2025-10-19 13:56:39'),(50,1,'Thêm sách: Trí Tuệ Nhân Tạo – Hành Trình Của Máy Học','2025-10-19 14:06:03'),(51,1,'Thêm sách: The Subtle Art of Not Giving','2025-10-19 18:01:06'),(53,1,'Thêm sách: Sapiens: A Brief History of Humankind','2025-10-19 18:24:39'),(54,1,'Thêm sách: A Brief History of Time','2025-10-19 18:35:34'),(55,1,'Tạo phiếu mượn','2025-10-20 01:57:41'),(56,1,'Tạo phiếu mượn','2025-10-20 01:59:54');
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
  `da_doc` tinyint(1) NOT NULL DEFAULT '0',
  `loai_tb` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `meta` json DEFAULT NULL,
  PRIMARY KEY (`ma_tb`),
  KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,1,'Bạn vừa mượn sách thành công.','2025-09-17 00:08:26',0,'general',NULL),(2,1,'Bạn vừa mượn sách thành công.','2025-09-17 00:15:09',0,'general',NULL),(3,1,'Bạn vừa mượn sách thành công.','2025-09-17 00:17:10',0,'general',NULL),(4,1,'Bạn vừa mượn sách thành công.','2025-09-17 00:38:11',0,'general',NULL),(5,1,'Đơn đặt mượn #4 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 00:38:11',0,'general',NULL),(6,1,'Bạn vừa mượn sách thành công.','2025-09-17 00:40:07',0,'general',NULL),(7,1,'Đơn đặt mượn #5 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 00:40:07',0,'general',NULL),(8,1,'Đơn đặt mượn #6 của bạn đã bị từ chối. Lý do: Không có lý do cụ thể.','2025-09-17 00:41:06',0,'general',NULL),(9,1,'Bạn vừa mượn sách thành công.','2025-09-17 00:59:20',0,'general',NULL),(10,1,'Đơn đặt mượn #9 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 00:59:20',0,'general',NULL),(11,1,'Bạn vừa mượn sách thành công.','2025-09-17 01:01:20',0,'general',NULL),(12,1,'Bạn vừa mượn sách thành công.','2025-09-17 01:07:20',0,'general',NULL),(13,1,'Đơn đặt mượn #8 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 01:07:20',0,'general',NULL),(14,1,'Bạn vừa mượn sách thành công.','2025-09-17 01:19:00',0,'general',NULL),(15,1,'Bạn vừa mượn sách thành công.','2025-09-17 03:49:05',0,'general',NULL),(16,1,'Đơn đặt mượn #11 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 03:49:05',0,'general',NULL),(17,1,'Bạn vừa mượn sách thành công.','2025-09-17 03:58:19',0,'general',NULL),(18,1,'Đơn đặt mượn #12 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 03:58:19',0,'general',NULL),(19,1,'Bạn vừa mượn sách thành công.','2025-09-17 04:08:32',0,'general',NULL),(20,1,'Đơn đặt mượn #13 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 04:08:32',0,'general',NULL),(21,1,'Bạn vừa mượn sách thành công.','2025-09-17 04:17:00',0,'general',NULL),(22,1,'Đơn đặt mượn #14 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 04:17:00',0,'general',NULL),(23,1,'Bạn đã trả sách, cảm ơn!','2025-09-17 04:17:19',0,'general',NULL),(24,1,'Bạn vừa mượn sách thành công.','2025-09-17 04:21:17',0,'general',NULL),(25,1,'Đơn đặt mượn #15 của bạn đã được duyệt. Vui lòng đến thư viện nhận sách.','2025-09-17 04:21:17',0,'general',NULL),(26,1,'Bạn đã trả sách, cảm ơn!','2025-09-17 04:21:33',0,'general',NULL),(27,1,'Bạn đã trả sách, cảm ơn!','2025-09-17 04:25:42',0,'general',NULL),(28,1,'Bạn đã trả sách, cảm ơn!','2025-09-17 04:26:02',0,'general',NULL),(29,1,'Bạn đã trả sách, cảm ơn!','2025-09-17 04:26:14',0,'general',NULL),(30,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:30:09',0,'general',NULL),(31,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:38:40',0,'general',NULL),(32,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:40:09',0,'general',NULL),(33,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:48:26',0,'general',NULL),(34,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:50:06',0,'general',NULL),(35,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:51:34',0,'general',NULL),(36,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:56:35',0,'general',NULL),(37,1,'Bạn vừa mượn sách thành công.','2025-09-20 03:58:54',0,'general',NULL),(38,1,'Bạn vừa mượn sách thành công.','2025-09-20 04:33:03',0,'general',NULL),(39,NULL,'Bạn đã trả sách, cảm ơn!','2025-09-20 04:52:10',0,'general',NULL),(40,NULL,'Bạn đã trả sách, cảm ơn!','2025-09-20 04:53:29',0,'general',NULL),(41,NULL,'Bạn đã trả sách, cảm ơn!','2025-09-20 11:40:29',0,'general',NULL),(42,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 11:52:12',0,'general',NULL),(43,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 11:53:34',0,'general',NULL),(44,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 11:54:38',0,'general',NULL),(45,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 11:57:10',0,'general',NULL),(46,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:01:24',0,'general',NULL),(47,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:02:27',0,'general',NULL),(48,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:02:59',0,'general',NULL),(49,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:04:27',0,'general',NULL),(50,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:05:01',0,'general',NULL),(51,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:08:44',0,'general',NULL),(52,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:11:17',0,'general',NULL),(53,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:11:52',0,'general',NULL),(54,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:11:55',0,'general',NULL),(55,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:11:55',0,'general',NULL),(56,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:11:56',0,'general',NULL),(57,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:12:00',0,'general',NULL),(58,1,'Bạn đã trả sách, cảm ơn!','2025-09-20 12:12:01',0,'general',NULL),(59,5,'Bạn vừa mượn sách thành công.','2025-09-20 12:52:35',0,'general',NULL),(68,5,'Bạn đã trả sách, cảm ơn!','2025-09-20 13:55:26',0,'general',NULL),(69,5,'Bạn đã trả sách, cảm ơn!','2025-09-20 13:56:38',0,'general',NULL),(70,5,'Bạn đã trả sách, cảm ơn!','2025-09-20 14:04:14',0,'general',NULL),(71,5,'Bạn vừa mượn sách thành công.','2025-09-20 14:18:19',0,'general',NULL),(72,5,'Bạn đã trả sách, cảm ơn!','2025-09-20 14:20:26',0,'general',NULL),(73,5,'Bạn đã trả sách, cảm ơn!','2025-09-20 14:21:40',0,'general',NULL),(74,5,'Bạn vừa mượn sách thành công.','2025-09-21 11:31:50',0,'general',NULL),(75,5,'Bạn vừa mượn sách thành công.','2025-09-21 11:33:02',0,'general',NULL),(76,5,'Bạn vừa mượn sách thành công.','2025-09-21 11:42:58',0,'general',NULL),(77,5,'Bạn vừa mượn sách thành công.','2025-09-21 11:43:29',0,'general',NULL),(78,5,'Bạn vừa mượn sách thành công.','2025-09-21 11:43:31',0,'general',NULL),(79,5,'Bạn vừa mượn sách thành công.','2025-09-21 11:44:51',0,'general',NULL),(80,5,'Bạn vừa mượn sách thành công.','2025-09-21 12:01:29',0,'general',NULL),(81,5,'Bạn vừa mượn sách thành công.','2025-09-21 12:06:40',0,'general',NULL),(82,5,'Bạn vừa mượn sách thành công.','2025-09-21 12:21:10',0,'general',NULL),(83,5,'Bạn vừa mượn sách thành công.','2025-09-21 12:36:05',0,'general',NULL),(84,5,'Bạn vừa mượn sách thành công.','2025-09-21 12:40:54',0,'general',NULL),(85,5,'Bạn đã trả sách, cảm ơn!','2025-09-21 12:41:27',0,'general',NULL),(88,5,'Bạn đã trả sách, cảm ơn!','2025-09-21 14:45:00',0,'general',NULL),(95,5,'Bạn đã trả sách, cảm ơn!','2025-09-21 15:00:32',0,'general',NULL),(96,5,'Bạn vừa mượn sách thành công.','2025-09-21 15:39:14',0,'general',NULL),(98,5,'Bạn đã trả sách, cảm ơn!','2025-09-21 15:54:28',0,'general',NULL),(99,5,'Bạn bị phạt: 50000.00 VND - Sách 6 bị hỏng/rách/mất','2025-09-21 15:54:28',0,'general',NULL),(100,7,'Bạn vừa mượn sách thành công.','2025-09-30 21:12:41',0,'general',NULL),(101,5,'Nhắc nhở: Bạn cần trả sách trong phiếu mượn 30 vào ngày mai.','2025-10-04 07:06:31',0,'general',NULL),(102,5,'Nhắc nhở: Bạn cần trả sách trong phiếu mượn 31 vào ngày mai.','2025-10-04 07:06:31',0,'general',NULL),(103,5,'Nhắc nhở: Bạn cần trả sách trong phiếu mượn 32 vào ngày mai.','2025-10-04 07:06:31',0,'general',NULL),(104,5,'Nhắc nhở: Bạn cần trả sách trong phiếu mượn 33 vào ngày mai.','2025-10-04 07:06:31',0,'general',NULL),(105,5,'Nhắc nhở: Bạn cần trả sách trong phiếu mượn 34 vào ngày mai.','2025-10-04 07:06:31',0,'general',NULL),(106,5,'Nhắc nhở: Bạn cần trả sách trong phiếu mượn 36 vào ngày mai.','2025-10-04 07:06:31',0,'general',NULL),(107,5,'Nhắc nhở: Bạn cần trả sách trong phiếu mượn 38 vào ngày mai.','2025-10-04 07:06:31',0,'general',NULL),(108,5,'Nhắc nhở: Bạn cần trả sách trong phiếu mượn 39 vào ngày mai.','2025-10-04 07:06:31',0,'general',NULL),(109,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-07 07:11:51',0,'general',NULL),(110,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-07 07:11:51',0,'general',NULL),(111,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-07 07:11:51',0,'general',NULL),(112,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-07 07:11:51',0,'general',NULL),(113,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-07 07:11:51',0,'general',NULL),(114,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-10 07:15:02',0,'general',NULL),(115,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-10 07:15:02',0,'general',NULL),(116,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-10 07:15:02',0,'general',NULL),(117,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-10 07:15:02',0,'general',NULL),(118,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-10 07:15:02',0,'general',NULL),(119,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-15 07:06:31',0,'general',NULL),(120,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-15 07:06:31',0,'general',NULL),(121,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-15 07:06:31',0,'general',NULL),(122,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-15 07:06:31',0,'general',NULL),(123,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-15 07:06:31',0,'general',NULL),(124,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-16 07:06:31',0,'general',NULL),(125,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-16 07:06:31',0,'general',NULL),(126,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-16 07:06:31',0,'general',NULL),(127,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-16 07:06:31',0,'general',NULL),(128,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-16 07:06:31',0,'general',NULL),(129,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-17 07:06:31',0,'general',NULL),(130,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-17 07:06:31',0,'general',NULL),(131,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-17 07:06:31',0,'general',NULL),(132,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-17 07:06:31',0,'general',NULL),(133,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-17 07:06:31',0,'general',NULL),(134,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-19 17:44:12',0,'general',NULL),(135,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-19 17:44:12',0,'general',NULL),(136,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-19 17:44:12',0,'general',NULL),(137,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-19 17:44:12',0,'general',NULL),(138,5,'Bạn bị phạt: 50000.00 VND - Trả sách quá hạn','2025-10-19 17:44:12',0,'general',NULL),(139,1,'Bạn vừa mượn sách thành công.','2025-10-20 01:57:41',0,'general',NULL),(140,1,'Bạn vừa mượn sách thành công.','2025-10-20 01:59:54',0,'general',NULL),(141,5,'Khoản phạt #10 đã được thanh toán 20.000 VND.','2025-10-20 15:05:30',0,'phat_paid','{\"ma_phat\": 10, \"so_thanh_toan\": 20000}');
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
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_update_fine_after_payment` AFTER UPDATE ON `payment` FOR EACH ROW BEGIN
  IF NEW.trang_thai = 'thanh_cong' AND OLD.trang_thai <> 'thanh_cong' THEN
    CALL UpdateFineAfterPayment(NEW.ma_payment);
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
  `ma_chi_tiet_muon` int DEFAULT NULL,
  `so_duoc_thanh_toan` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`ma_phat`),
  UNIQUE KEY `ux_phat_ma_chi_tiet_muon` (`ma_chi_tiet_muon`),
  KEY `ma_nguoi_dung` (`ma_nguoi_dung`),
  KEY `ma_phieu_muon` (`ma_phieu_muon`),
  CONSTRAINT `phat_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`),
  CONSTRAINT `phat_ibfk_2` FOREIGN KEY (`ma_phieu_muon`) REFERENCES `phieu_muon` (`ma_phieu_muon`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phat`
--

LOCK TABLES `phat` WRITE;
/*!40000 ALTER TABLE `phat` DISABLE KEYS */;
INSERT INTO `phat` VALUES (1,5,39,50000.00,'Sách 6 bị hỏng/rách/mất','2025-09-21','Chưa thanh toán',NULL,0.00),(2,5,30,50000.00,'Trả sách quá hạn','2025-10-07','Chưa thanh toán',NULL,0.00),(3,5,31,50000.00,'Trả sách quá hạn','2025-10-07','Chưa thanh toán',NULL,0.00),(4,5,32,50000.00,'Trả sách quá hạn','2025-10-07','Chưa thanh toán',NULL,0.00),(5,5,33,50000.00,'Trả sách quá hạn','2025-10-07','Chưa thanh toán',NULL,0.00),(6,5,34,50000.00,'Trả sách quá hạn','2025-10-07','Chưa thanh toán',NULL,0.00),(7,5,30,50000.00,'Trả sách quá hạn','2025-10-10','Chưa thanh toán',NULL,0.00),(8,5,31,50000.00,'Trả sách quá hạn','2025-10-10','Chưa thanh toán',NULL,0.00),(9,5,32,50000.00,'Trả sách quá hạn','2025-10-10','Chưa thanh toán',NULL,0.00),(10,5,33,50000.00,'Trả sách quá hạn','2025-10-10','Chưa thanh toán',NULL,0.00),(11,5,34,50000.00,'Trả sách quá hạn','2025-10-10','Chưa thanh toán',NULL,0.00),(12,5,30,50000.00,'Trả sách quá hạn','2025-10-15','Chưa thanh toán',NULL,0.00),(13,5,31,50000.00,'Trả sách quá hạn','2025-10-15','Chưa thanh toán',NULL,0.00),(14,5,32,50000.00,'Trả sách quá hạn','2025-10-15','Chưa thanh toán',NULL,0.00),(15,5,33,50000.00,'Trả sách quá hạn','2025-10-15','Chưa thanh toán',NULL,0.00),(16,5,34,50000.00,'Trả sách quá hạn','2025-10-15','Chưa thanh toán',NULL,0.00),(17,5,30,50000.00,'Trả sách quá hạn','2025-10-16','Chưa thanh toán',NULL,0.00),(18,5,31,50000.00,'Trả sách quá hạn','2025-10-16','Chưa thanh toán',NULL,0.00),(19,5,32,50000.00,'Trả sách quá hạn','2025-10-16','Chưa thanh toán',NULL,0.00),(20,5,33,50000.00,'Trả sách quá hạn','2025-10-16','Chưa thanh toán',NULL,0.00),(21,5,34,50000.00,'Trả sách quá hạn','2025-10-16','Chưa thanh toán',NULL,0.00),(22,5,30,50000.00,'Trả sách quá hạn','2025-10-17','Chưa thanh toán',NULL,0.00),(23,5,31,50000.00,'Trả sách quá hạn','2025-10-17','Chưa thanh toán',NULL,0.00),(24,5,32,50000.00,'Trả sách quá hạn','2025-10-17','Chưa thanh toán',NULL,0.00),(25,5,33,50000.00,'Trả sách quá hạn','2025-10-17','Chưa thanh toán',NULL,0.00),(26,5,34,50000.00,'Trả sách quá hạn','2025-10-17','Chưa thanh toán',NULL,0.00),(27,5,30,50000.00,'Trả sách quá hạn','2025-10-19','Chưa thanh toán',NULL,0.00),(28,5,31,50000.00,'Trả sách quá hạn','2025-10-19','Chưa thanh toán',NULL,0.00),(29,5,32,50000.00,'Trả sách quá hạn','2025-10-19','Chưa thanh toán',NULL,0.00),(30,5,33,50000.00,'Trả sách quá hạn','2025-10-19','Chưa thanh toán',NULL,0.00),(31,5,34,50000.00,'Trả sách quá hạn','2025-10-19','Chưa thanh toán',NULL,0.00);
/*!40000 ALTER TABLE `phat` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_muon`
--

LOCK TABLES `phieu_muon` WRITE;
/*!40000 ALTER TABLE `phieu_muon` DISABLE KEYS */;
INSERT INTO `phieu_muon` VALUES (1,3,2,'2025-07-01',NULL,'Đang mượn',NULL),(2,4,2,'2025-07-05',NULL,'Đã trả',NULL),(3,1,NULL,'2025-09-17','2025-09-20','Đang mượn',NULL),(4,1,NULL,'2025-09-17','2025-09-20','Đang mượn',NULL),(5,1,NULL,'2025-09-17','2025-09-20','Đang mượn',NULL),(6,1,1,'2025-09-17','2025-09-20','Đang mượn',NULL),(7,1,1,'2025-09-17','2025-09-20','Đang mượn',NULL),(8,1,1,'2025-09-17','2025-09-20','Đang mượn',NULL),(9,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(10,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(11,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(12,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(13,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(14,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(15,1,1,'2025-09-17','2025-09-24','Đang mượn',NULL),(16,1,1,'2025-09-17','2025-09-24','Đã trả',NULL),(17,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(18,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(19,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(20,1,2,'2025-09-20','2025-10-04','Đã trả',NULL),(21,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(22,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(23,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(24,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(25,1,2,'2025-09-20','2025-10-04','Đang mượn',NULL),(26,5,2,'2025-09-20','2025-10-04','Đã trả',NULL),(27,5,2,'2025-09-20','2025-10-04','Đã trả',NULL),(28,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(29,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(30,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(31,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(32,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(33,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(34,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(35,5,2,'2025-09-21','2025-10-05','Đang mượn',NULL),(36,5,2,'2025-09-21','2025-10-05','Đã trả',NULL),(37,5,2,'2025-09-21','2025-10-19','Đang mượn',NULL),(38,5,2,'2025-09-21','2025-10-05','Đã trả',NULL),(39,5,2,'2025-09-21','2025-10-05','Đã trả',NULL),(40,7,NULL,'2025-09-30','2025-10-07','Đang mượn','Test mượn'),(41,1,1,'2025-10-20','2025-11-03','Đang mượn',NULL),(42,1,1,'2025-10-20','2025-11-03','Đang mượn',NULL);
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
  `ma_bien_muc` int DEFAULT NULL,
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
  `hinh_bia_public_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `noi_bat` tinyint(1) DEFAULT '0',
  `ngay_nhap` datetime DEFAULT CURRENT_TIMESTAMP,
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sach`
--

LOCK TABLES `sach` WRITE;
/*!40000 ALTER TABLE `sach` DISABLE KEYS */;
INSERT INTO `sach` VALUES (1,NULL,'Giáo trình Cơ sở dữ liệu','Nguyễn Văn T','9786041234567',300,14,2021,20000.00,'Giáo trình học CSDL cơ bản','bia_csd.jpg',1,1,1,2,1,1,'Hoạt động',6,NULL,0,'2025-10-19 12:55:00'),(2,NULL,'Những người khốn khổ','Victor Hugo','9786047654321',500,1,2022,20000.00,'Tiểu thuyết kinh điển Pháp','bia_kk.jpg',2,1,1,1,2,2,'Hoạt động',0,NULL,0,'2025-10-19 12:55:00'),(3,NULL,'Tạp chí Khoa học Việt Nam','Nhiều tác giả','TCKH202507',100,1,2008,30000.00,'Tạp chí chuyên đề khoa học công nghệ','bia_tckh.jpg',1,2,1,1,1,1,'Hoạt động',1,NULL,0,'2025-10-19 12:55:00'),(6,NULL,'Lập trình Java cơ bản','Nguyễn Văn B','9786047654322',300,17,2021,40000.00,'Sách hướng dẫn lập trình Java cho sinh viên','java.jpg',1,1,1,1,1,1,'Hoạt động',3,NULL,0,'2025-10-19 12:55:00'),(8,NULL,'Lập trình Web với NodeJS','Nguyễn Văn A, Lê Thị B','9786041234222',320,0,2024,70000.00,'Tài liệu hướng dẫn học NodeJS và Express nâng cao','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760511883/QLTV/pdf/1234.pdf',5,5,1,1,1,1,'Hoạt động',0,NULL,0,'2025-10-19 12:55:00'),(9,NULL,'Test biên mục 4','Nguyễn Văn A, Lê Thị B','9786041234220',320,5,2024,70000.00,'Test biên mục 4','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760764546/QLTV/hinh_bia/shd5qhytasukc3sgjcgb.jpg',3,3,1,1,1,1,'Hoạt động',5,NULL,0,'2025-10-19 12:55:00'),(12,NULL,'Nhà Giả Kim','Paulo Coelho','9786041136005',228,5,2020,35000.00,'Một câu chuyện triết lý kể về hành trình của chàng chăn cừu Santiago đi tìm kho báu, khám phá chính bản thân và ý nghĩa cuộc sống.','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760852628/QLTV/hinh_bia/whubdlfzt0cmrc3wttdt.jpg',2,2,1,1,2,1,'Hoạt động',5,NULL,0,'2025-10-19 12:59:09'),(13,20,'Atomic Habits – Thói quen nguyên tử','James Clear','9786047755138',120,9,2019,29999.00,'Cuốn sách hướng dẫn cách hình thành những thói quen nhỏ mang lại kết quả lớn. James Clear chia sẻ các chiến lược khoa học giúp bạn thay đổi hành vi, cải thiện năng suất và đạt được mục tiêu lâu dài.','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760856960/QLTV/hinh_bia/a7yrpf4xngczzayt83dd.jpg',1,1,1,1,1,1,'Hoạt động',5,'QLTV/hinh_bia/a7yrpf4xngczzayt83dd',1,'2025-10-19 13:56:39'),(14,21,'Trí Tuệ Nhân Tạo – Hành Trình Của Máy Học','Phạm Minh Tuấn, Lê Hoàng Long','9786049988112',200,5,2024,69000.00,'Cuốn sách giới thiệu tổng quan về trí tuệ nhân tạo (AI) và các phương pháp học máy, giúp người đọc hiểu rõ cách máy tính học từ dữ liệu.','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760857524/QLTV/hinh_bia/lmxvjc1u7orrbcgbhfar.jpg',4,4,1,1,1,2,'Hoạt động',4,'QLTV/hinh_bia/lmxvjc1u7orrbcgbhfar',1,'2025-10-19 14:06:03'),(15,22,'The Subtle Art of Not Giving','Mark Manson','9780062457714',222,6,2016,39999.00,'A counterintuitive approach to living a good life by embracing limitations and focusing on what truly matters.','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760871631/QLTV/hinh_bia/iy23blijahxozudp41od.jpg',5,NULL,NULL,NULL,2,2,'Hoạt động',5,'QLTV/hinh_bia/iy23blijahxozudp41od',1,'2025-10-19 18:01:06'),(17,23,'Sapiens: A Brief History of Humankind','Yuval Noah Harari','9780062316097',123,3,2015,29999.00,'Explores the history and impact of Homo sapiens from the Stone Age to the modern age, focusing on how shared beliefs have shaped societies.','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760872665/QLTV/hinh_bia/i0jr1rhorwetlgv6tbc5.jpg',1,1,2,NULL,2,1,'Hoạt động',2,'QLTV/hinh_bia/i0jr1rhorwetlgv6tbc5',1,'2025-10-19 18:24:39'),(18,24,'A Brief History of Time','Stephen Hawking','9780553380999',222,2,2012,30000.00,'Stephen Hawking explains the fundamental questions about the universe — its origin, structure, and eventual fate — in a clear and accessible way.','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760873707/QLTV/hinh_bia/tprqptlftwa6l7vjgkfm.jpg',2,NULL,2,1,2,2,'Hoạt động',1,'QLTV/hinh_bia/tprqptlftwa6l7vjgkfm',1,'2025-10-19 18:35:34');
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_sach_before_insert` BEFORE INSERT ON `sach` FOR EACH ROW BEGIN
  IF NEW.ma_danh_muc IS NOT NULL THEN
    SET NEW.ma_the_loai = NEW.ma_danh_muc;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_log_sach` AFTER INSERT ON `sach` FOR EACH ROW BEGIN
   INSERT INTO nhat_ky_he_thong(ma_nguoi_dung, thao_tac, thoi_gian)
VALUES (1, CONCAT('Thêm sách: ', NEW.tieu_de), NOW());

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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_sach_before_update` BEFORE UPDATE ON `sach` FOR EACH ROW BEGIN
  IF NEW.ma_danh_muc IS NOT NULL AND NEW.ma_danh_muc <> OLD.ma_danh_muc THEN
    SET NEW.ma_the_loai = NEW.ma_danh_muc;
  END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sach_tac_gia`
--

DROP TABLE IF EXISTS `sach_tac_gia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sach_tac_gia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_sach` int DEFAULT NULL,
  `ten_tac_gia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ma_sach` (`ma_sach`),
  CONSTRAINT `sach_tac_gia_ibfk_1` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sach_tac_gia`
--

LOCK TABLES `sach_tac_gia` WRITE;
/*!40000 ALTER TABLE `sach_tac_gia` DISABLE KEYS */;
/*!40000 ALTER TABLE `sach_tac_gia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sach_thong_tin_phu`
--

DROP TABLE IF EXISTS `sach_thong_tin_phu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sach_thong_tin_phu` (
  `ma_thong_tin` int NOT NULL AUTO_INCREMENT,
  `ma_sach` int DEFAULT NULL,
  `nhan_de_phu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_cutter_tac_gia` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phan_loai_tai_lieu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lan_tai_ban` int DEFAULT NULL,
  `kho_sach_cm` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tai_lieu_kem_theo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chu_de` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_chung_tu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anh_chung_tu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_tao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ma_thong_tin`),
  KEY `ma_sach` (`ma_sach`),
  CONSTRAINT `sach_thong_tin_phu_ibfk_1` FOREIGN KEY (`ma_sach`) REFERENCES `sach` (`ma_sach`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sach_thong_tin_phu`
--

LOCK TABLES `sach_thong_tin_phu` WRITE;
/*!40000 ALTER TABLE `sach_thong_tin_phu` DISABLE KEYS */;
INSERT INTO `sach_thong_tin_phu` VALUES (1,12,'The Alchemist (Vietnamese Edition)','C672N','Tiểu thuyết',5,NULL,'Không ','Triết lý sống, Khám phá bản thân','ALC-2020-FA','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760852629/QLTV/anh_chung_tu/ebj2pmbsgslm5eqlifqe.jpg','2025-10-19 12:59:09'),(2,1,'Giới thiệu về trí tuệ nhân tạo','N23','Sách nghiên cứu',1,NULL,'Không','Trí tuệ nhân tạo, công nghệ tương lai, học máy','CT2023-045','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760856237/QLTV/anh_chung_tu/zgolwg5fqndmaiayoicn.jpg','2025-10-19 13:50:19'),(3,13,'Thay đổi nhỏ - Hiệu quả lớn','C52','Sách kỹ năng',2,NULL,'Không','Kỹ năng sống','CT2024-001','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760856961/QLTV/anh_chung_tu/fgqze8jtxczbepw0xxkx.jpg','2025-10-19 13:56:39'),(4,14,'Giới thiệu học máy và trí tuệ nhân tạo','P123T45','Tham khảo chuyên ngành',1,'19x25','File dữ liệu huấn luyện mẫu','AI, Machine Learning, Deep Learning','CTAI2024','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760857525/QLTV/anh_chung_tu/y0kjmjvvo5hsasczlyhm.jpg','2025-10-19 14:06:03'),(5,15,'A Counterintuitive Approach to Living a Good Life','M296s','Self-help',1,NULL,'Supplemental Reading Guide','Philosophy, Psychology, Life Lessons','INV-SAONF-2025','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760871632/QLTV/anh_chung_tu/fylbcgjfaxxujibjt2yb.jpg','2025-10-19 18:01:06'),(6,17,'A Brief History of Humankind','H255s','History, Anthropology',3,NULL,'Reference Notes & Discussion Guide','Reference Notes & Discussion Guide','INV-SAPIENS-2025','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760872666/QLTV/anh_chung_tu/bqj4418atzpqbq0tle47.jpg','2025-10-19 18:24:39'),(7,18,'From the Big Bang to Black Holes','H391b','Science',5,NULL,'Illustrated Edition Appendix','Cosmology, Physics, Space-Time','INV-ABHOT-2025',NULL,'2025-10-19 18:35:34');
/*!40000 ALTER TABLE `sach_thong_tin_phu` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `sach_yeu_thich` VALUES (1,1,'2025-09-15 09:58:00'),(1,17,'2025-10-20 10:54:09'),(1,18,'2025-10-20 10:52:21'),(2,3,'2025-09-15 09:58:00');
/*!40000 ALTER TABLE `sach_yeu_thich` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_cap_nhat_so_thich_sau_yeu_thich` AFTER INSERT ON `sach_yeu_thich` FOR EACH ROW BEGIN
    CALL CapNhatHoSoSoThich(NEW.ma_nguoi_dung);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `the_loai`
--

LOCK TABLES `the_loai` WRITE;
/*!40000 ALTER TABLE `the_loai` DISABLE KEYS */;
INSERT INTO `the_loai` VALUES (1,'Khoa học'),(2,'Văn học'),(3,'Lịch sử'),(4,'Công nghệ'),(5,'Khác'),(6,'Tài chính');
/*!40000 ALTER TABLE `the_loai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thong_tin_phu_sach`
--

DROP TABLE IF EXISTS `thong_tin_phu_sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thong_tin_phu_sach` (
  `ma_thong_tin` int NOT NULL AUTO_INCREMENT,
  `ma_bien_muc` int NOT NULL,
  `nhan_de_phu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_cutter_tac_gia` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phan_loai_tai_lieu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lan_tai_ban` int DEFAULT '1',
  `kho_sach_cm` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tai_lieu_kem_theo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chu_de` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_chung_tu` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anh_chung_tu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_tao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ma_thong_tin`),
  KEY `ma_bien_muc` (`ma_bien_muc`),
  CONSTRAINT `thong_tin_phu_sach_ibfk_1` FOREIGN KEY (`ma_bien_muc`) REFERENCES `bien_muc_sach` (`ma_bien_muc`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thong_tin_phu_sach`
--

LOCK TABLES `thong_tin_phu_sach` WRITE;
/*!40000 ALTER TABLE `thong_tin_phu_sach` DISABLE KEYS */;
INSERT INTO `thong_tin_phu_sach` VALUES (1,13,'Tập 2 - Địa lý tự nhiên Việt Nam','DLN-A12','910',2,'19x27','1 bản đồ gấp','Địa lý, tự nhiên Việt Nam','CT-2025-001','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760807831/QLTV/anh_chung_tu/zwdy8g6potamjucqfcub.jpg','2025-10-19 00:17:13'),(2,14,'Tập 1',NULL,'102',1,'19x27','1 Đĩa CD','Code','CT-123',NULL,'2025-10-19 01:08:52'),(3,15,'Tập 2 test demo','L123','110',2,'19x27','1 bản đồ','code','123',NULL,'2025-10-19 01:22:56'),(4,16,'Tập 4',NULL,'123',2,'19x27',NULL,'code ','123',NULL,'2025-10-19 01:49:45'),(5,17,'Tập 5',NULL,'123',1,NULL,NULL,'code','123','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760813813/QLTV/anh_chung_tu/k3xjvyzavukjmaedwswp.jpg','2025-10-19 01:56:55'),(6,18,'The Alchemist (Vietnamese Edition)','C672N','Tiểu thuyết',5,NULL,'Không ','Triết lý sống, Khám phá bản thân','ALC-2020-FA','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760852629/QLTV/anh_chung_tu/ebj2pmbsgslm5eqlifqe.jpg','2025-10-19 12:43:50'),(7,19,'Giới thiệu về trí tuệ nhân tạo','N23','Sách nghiên cứu',1,NULL,'Không','Trí tuệ nhân tạo, công nghệ tương lai, học máy','CT2023-045','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760856237/QLTV/anh_chung_tu/zgolwg5fqndmaiayoicn.jpg','2025-10-19 13:43:58'),(8,20,'Thay đổi nhỏ - Hiệu quả lớn','C52','Sách kỹ năng',2,NULL,'Không','Kỹ năng sống','CT2024-001','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760856961/QLTV/anh_chung_tu/fgqze8jtxczbepw0xxkx.jpg','2025-10-19 13:56:02'),(9,21,'Giới thiệu học máy và trí tuệ nhân tạo','P123T45','Tham khảo chuyên ngành',1,'19x25','File dữ liệu huấn luyện mẫu','AI, Machine Learning, Deep Learning','CTAI2024','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760857525/QLTV/anh_chung_tu/y0kjmjvvo5hsasczlyhm.jpg','2025-10-19 14:05:26'),(10,22,'A Counterintuitive Approach to Living a Good Life','M296s','Self-help',1,NULL,'Supplemental Reading Guide','Philosophy, Psychology, Life Lessons','INV-SAONF-2025','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760871632/QLTV/anh_chung_tu/fylbcgjfaxxujibjt2yb.jpg','2025-10-19 18:00:34'),(11,23,'A Brief History of Humankind','H255s','History, Anthropology',3,NULL,'Reference Notes & Discussion Guide','Reference Notes & Discussion Guide','INV-SAPIENS-2025','https://res.cloudinary.com/dzc0fwfti/image/upload/v1760872666/QLTV/anh_chung_tu/bqj4418atzpqbq0tle47.jpg','2025-10-19 18:17:48'),(12,24,'From the Big Bang to Black Holes','H391b','Science',5,NULL,'Illustrated Edition Appendix','Cosmology, Physics, Space-Time','INV-ABHOT-2025',NULL,'2025-10-19 18:35:08');
/*!40000 ALTER TABLE `thong_tin_phu_sach` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tin_nhan`
--

LOCK TABLES `tin_nhan` WRITE;
/*!40000 ALTER TABLE `tin_nhan` DISABLE KEYS */;
INSERT INTO `tin_nhan` VALUES (1,3,2,'Chị ơi, em xin gia hạn sách thêm 1 tuần nhé.','2025-07-23 16:58:22'),(2,2,3,'Được em, chị đã ghi nhận lại rồi.','2025-07-23 16:58:22'),(3,1,NULL,'Sách Lập trình Python còn không?','2025-10-05 21:48:10'),(4,1,NULL,'Sách Lập trình Python còn không?','2025-10-05 21:50:13'),(6,1,NULL,'Sách Lập trình Python còn không?','2025-10-05 21:55:53'),(8,1,NULL,'Sách Lập trình Python còn không?','2025-10-05 21:57:38'),(10,1,NULL,'Sách Lập trình Python còn không?','2025-10-05 21:59:52'),(11,9,1,'⚠️ Câu truy vấn bị chặn vì không an toàn.','2025-10-05 21:59:52'),(12,1,9,'Sách Lập trình Python còn không?','2025-10-05 22:06:03'),(13,9,1,'Không tìm thấy kết quả phù hợp.','2025-10-05 22:06:03'),(14,1,9,'Sách Lập trình Python còn không?','2025-10-05 22:08:23'),(15,9,1,'Không tìm thấy kết quả phù hợp.','2025-10-05 22:08:23'),(16,1,9,'Sách Lập trình Python còn không?','2025-10-05 22:11:21'),(17,9,1,'Không tìm thấy dữ liệu phù hợp tại thư viện.','2025-10-05 22:11:21'),(18,1,9,'Lập trình Java cơ bản cồn bao nhiêu quyển','2025-10-05 22:11:45'),(19,9,1,'Chào bạn!\n\nThực ra để học Java cơ bản, bạn chỉ cần **một quyển sách chất lượng** là đủ để làm quen và nắm vững các kiến thức nền tảng rồi đó!\n\nQuan trọng nhất không phải là số lượng sách bạn có, mà là:\n\n1.  **Chất lượng sách:** Chọn cuốn có lộ trình rõ ràng, giải thích dễ hiểu, nhiều ví dụ thực hành.\n2.  **Sự kiên trì thực hành:** Đọc đến đâu, bạn nên code và chạy thử các ví dụ đến đó. Đây là cách học hiệu quả nhất.\n3.  **Kết hợp học online:** Sau khi có nền tảng từ sách, bạn có thể bổ sung kiến thức qua các trang web, video hướng dẫn, khóa học online để mở rộng và cập nhật.\n\nTóm lại, không cần quá nhiều sách đâu. Một cuốn tốt cộng với sự kiên trì thực hành là chìa khóa để bạn học Java cơ bản thật vững!','2025-10-05 22:11:45'),(20,1,9,'Lập trình Java cơ bản còn bao nhiêu quyển ?','2025-10-05 22:12:24'),(21,9,1,'Số lượng còn: -40.','2025-10-05 22:12:24'),(22,1,9,'Thư viện mở cửa lúc nào?','2025-10-05 22:54:13'),(23,9,1,'Chào bạn, mỗi thư viện sẽ có giờ mở cửa khác nhau bạn nhé!\n\nĐể biết chính xác nhất, bạn có thể:\n*   Kiểm tra trên **trang web chính thức** của thư viện đó.\n*   Tìm kiếm trên **Google Maps** (thường có ghi giờ mở cửa).\n*   Hoặc **gọi điện trực tiếp** cho thư viện để hỏi ạ.','2025-10-05 22:54:13'),(24,1,9,'Làm thế nào để mượn sách?','2025-10-05 22:55:10'),(25,9,1,'Chào bạn! Mượn sách dễ lắm, bạn chỉ cần làm theo các bước cơ bản sau nhé:\n\n1.  **Đến thư viện:** Tìm thư viện công cộng hoặc thư viện trường học/cơ quan gần bạn.\n2.  **Làm thẻ thành viên:** Nếu chưa có, bạn cần đăng ký thẻ thư viện (thường chỉ cần CMND/CCCD).\n3.  **Chọn sách:** Tìm cuốn sách bạn muốn đọc.\n4.  **Ra quầy mượn trả:** Mang sách đến quầy, nhân viên sẽ quét mã và hoàn tất thủ tục mượn cho bạn.\n\nThế là bạn có thể mang sách về rồi! Đừng quên chú ý ngày trả sách để không bị quá hạn nhé. Một số thư viện còn có cả dịch vụ mượn sách online nữa đó!','2025-10-05 22:55:10');
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
-- Table structure for table `user_badge`
--

DROP TABLE IF EXISTS `user_badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_badge` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_nguoi_dung` int NOT NULL,
  `badge_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `awarded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ma_nguoi_dung` (`ma_nguoi_dung`,`badge_key`),
  CONSTRAINT `user_badge_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_badge`
--

LOCK TABLES `user_badge` WRITE;
/*!40000 ALTER TABLE `user_badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_rank`
--

DROP TABLE IF EXISTS `user_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_rank` (
  `ma_nguoi_dung` int NOT NULL,
  `rank_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'Thành viên',
  `score` int DEFAULT '0',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ma_nguoi_dung`),
  CONSTRAINT `user_rank_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_rank`
--

LOCK TABLES `user_rank` WRITE;
/*!40000 ALTER TABLE `user_rank` DISABLE KEYS */;
INSERT INTO `user_rank` VALUES (7,'Thành viên',30,'2025-09-30 21:20:38'),(9,'Thành viên',0,'2025-10-05 21:54:58');
/*!40000 ALTER TABLE `user_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_streak`
--

DROP TABLE IF EXISTS `user_streak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_streak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ma_nguoi_dung` int NOT NULL,
  `date` date NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ma_nguoi_dung` (`ma_nguoi_dung`,`date`),
  CONSTRAINT `user_streak_ibfk_1` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`ma_nguoi_dung`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_streak`
--

LOCK TABLES `user_streak` WRITE;
/*!40000 ALTER TABLE `user_streak` DISABLE KEYS */;
INSERT INTO `user_streak` VALUES (1,7,'2025-09-30','2025-09-30 21:35:18'),(5,1,'2025-09-30','2025-09-30 23:02:22'),(39,7,'2025-10-01','2025-10-01 14:32:53'),(40,1,'2025-10-01','2025-10-01 14:33:06'),(45,1,'2025-10-03','2025-10-03 21:29:54'),(47,7,'2025-10-05','2025-10-05 11:26:19'),(49,1,'2025-10-05','2025-10-05 11:34:35'),(59,1,'2025-10-06','2025-10-06 23:44:02'),(61,1,'2025-10-08','2025-10-08 08:59:34'),(63,7,'2025-10-14','2025-10-14 10:03:23'),(64,1,'2025-10-14','2025-10-14 10:07:50'),(66,1,'2025-10-15','2025-10-15 09:16:27'),(71,1,'2025-10-16','2025-10-16 12:10:00'),(73,1,'2025-10-17','2025-10-17 14:59:29'),(74,1,'2025-10-18','2025-10-18 13:32:16'),(75,1,'2025-10-19','2025-10-19 13:39:01'),(77,1,'2025-10-20','2025-10-20 01:52:23');
/*!40000 ALTER TABLE `user_streak` ENABLE KEYS */;
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
-- Temporary view structure for view `vw_lich_su_muon`
--

DROP TABLE IF EXISTS `vw_lich_su_muon`;
/*!50001 DROP VIEW IF EXISTS `vw_lich_su_muon`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_lich_su_muon` AS SELECT 
 1 AS `ma_phieu_muon`,
 1 AS `ma_nguoi_dung`,
 1 AS `ngay_muon`,
 1 AS `han_tra`,
 1 AS `trang_thai_phieu`,
 1 AS `ma_chi_tiet`,
 1 AS `ten_sach`,
 1 AS `so_luong`,
 1 AS `ngay_tra_thuc_te`,
 1 AS `trang_thai_sach`,
 1 AS `tien_phat`,
 1 AS `ly_do_phat`,
 1 AS `trang_thai_phat`*/;
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeu_cau_tra`
--

LOCK TABLES `yeu_cau_tra` WRITE;
/*!40000 ALTER TABLE `yeu_cau_tra` DISABLE KEYS */;
INSERT INTO `yeu_cau_tra` VALUES (1,7,1,'2025-09-17 03:30:33','cho_xac_nhan'),(2,12,1,'2025-09-17 03:49:43','da_xac_nhan'),(3,13,1,'2025-09-17 03:58:32','da_xac_nhan'),(4,14,1,'2025-09-17 04:08:39','da_xac_nhan'),(5,15,1,'2025-09-17 04:17:14','da_xac_nhan'),(6,16,1,'2025-09-17 04:21:24','da_xac_nhan'),(7,16,1,'2025-09-17 04:25:25','da_xac_nhan'),(8,16,1,'2025-09-17 04:25:49','da_xac_nhan'),(9,16,1,'2025-09-17 04:26:08','da_xac_nhan'),(10,20,1,'2025-09-20 00:00:00','da_xac_nhan'),(11,26,5,'2025-09-20 00:00:00','da_xac_nhan'),(12,26,5,'2025-09-20 00:00:00','da_xac_nhan'),(13,26,5,'2025-09-20 00:00:00','da_xac_nhan'),(14,27,5,'2025-09-20 00:00:00','da_xac_nhan'),(15,36,5,'2025-09-21 00:00:00','cho_xac_nhan'),(16,36,5,'2025-09-21 00:00:00','cho_xac_nhan'),(17,37,5,'2025-09-21 00:00:00','cho_xac_nhan'),(18,38,5,'2025-09-21 00:00:00','da_xac_nhan'),(19,38,5,'2025-09-21 00:00:00','da_xac_nhan'),(20,38,5,'2025-09-21 00:00:00','cho_xac_nhan'),(21,37,5,'2025-09-21 00:00:00','cho_xac_nhan'),(22,36,5,'2025-09-21 00:00:00','da_xac_nhan'),(23,36,5,'2025-09-21 00:00:00','cho_xac_nhan'),(24,39,5,'2025-09-21 00:00:00','da_xac_nhan'),(25,41,1,'2025-10-20 00:00:00','cho_xac_nhan'),(26,41,1,'2025-10-20 00:00:00','cho_xac_nhan'),(27,41,1,'2025-10-20 00:00:00','cho_xac_nhan'),(28,41,1,'2025-10-20 00:00:00','cho_xac_nhan'),(29,41,1,'2025-10-20 00:00:00','cho_xac_nhan'),(30,41,1,'2025-10-20 00:00:00','cho_xac_nhan'),(31,41,1,'2025-10-20 00:00:00','cho_xac_nhan'),(32,41,1,'2025-10-20 00:00:00','cho_xac_nhan');
/*!40000 ALTER TABLE `yeu_cau_tra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'quan_ly_thu_vien_merged'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `evt_update_ranks` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`root`@`localhost`*/ /*!50106 EVENT `evt_update_ranks` ON SCHEDULE EVERY 1 DAY STARTS '2025-09-30 21:00:23' ON COMPLETION NOT PRESERVE ENABLE DO CALL sp_update_ranks() */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
/*!50106 DROP EVENT IF EXISTS `ev_nhac_han_tra_sach` */;;
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
    IN p_ISBN VARCHAR(20),
    IN p_ma_the_loai INT,
    IN p_ma_ngon_ngu INT,
    IN p_ma_nxb INT
)
BEGIN
    SELECT 
        s.ma_sach, s.tieu_de, s.tac_gia, s.ISBN, s.nam_xuat_ban, s.gia_tri,
        tl.ten_the_loai, nn.ten_ngon_ngu, nxb.ten_nxb
    FROM sach s
    LEFT JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    LEFT JOIN ngon_ngu nn ON s.ma_ngon_ngu = nn.ma_ngon_ngu
    LEFT JOIN nha_xuat_ban nxb ON s.ma_nxb = nxb.ma_nxb
    WHERE (p_tieu_de IS NULL OR s.tieu_de LIKE CONCAT('%', p_tieu_de, '%'))
      AND (p_tac_gia IS NULL OR s.tac_gia LIKE CONCAT('%', p_tac_gia, '%'))
      AND (p_ISBN IS NULL OR s.ISBN LIKE CONCAT('%', p_ISBN, '%'))
      AND (p_ma_the_loai IS NULL OR s.ma_the_loai = p_ma_the_loai)
      AND (p_ma_ngon_ngu IS NULL OR s.ma_ngon_ngu = p_ma_ngon_ngu)
      AND (p_ma_nxb IS NULL OR s.ma_nxb = p_ma_nxb);

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
/*!50003 DROP PROCEDURE IF EXISTS `CalculateFineForChiTiet` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CalculateFineForChiTiet`(IN p_id_chi_tiet INT)
proc_block: BEGIN
  DECLARE v_ma_phieu INT;
  DECLARE v_ngay_hen DATE;
  DECLARE v_ngay_tra_thuc DATE;
  DECLARE v_da_tra TINYINT;
  DECLARE v_so_ngay_tre INT;
  DECLARE v_muc_phat DECIMAL(10,2);
  DECLARE v_tien_phat DECIMAL(10,2);
  DECLARE v_ma_doc_gia INT;
  DECLARE v_ly_do VARCHAR(255);
  DECLARE v_exists INT DEFAULT 0;

  START TRANSACTION;

  -- Lấy thông tin chi tiết mượn
  SELECT ma_phieu_muon, ngay_tra, ngay_tra_thuc_te, da_tra
  INTO v_ma_phieu, v_ngay_hen, v_ngay_tra_thuc, v_da_tra
  FROM chi_tiet_muon
  WHERE id = p_id_chi_tiet
  FOR UPDATE;

  -- Nếu chưa trả thì dừng
  IF v_da_tra IS NULL OR v_da_tra = 0 THEN
    ROLLBACK;
    LEAVE proc_block;
  END IF;

  -- Nếu không có ngày hẹn hoặc ngày trả thì bỏ qua
  IF v_ngay_tra_thuc IS NULL OR v_ngay_hen IS NULL THEN
    ROLLBACK;
    LEAVE proc_block;
  END IF;

  -- Nếu trả đúng hạn thì không phạt
  IF v_ngay_tra_thuc <= v_ngay_hen THEN
    ROLLBACK;
    LEAVE proc_block;
  END IF;

  -- Tính số ngày trễ và tiền phạt
  SET v_so_ngay_tre = DATEDIFF(v_ngay_tra_thuc, v_ngay_hen);

  SELECT CAST(gia_tri AS DECIMAL(10,2))
  INTO v_muc_phat
  FROM cau_hinh
  WHERE ten_key = 'tien_phat_moi_ngay' OR ten_tham_so = 'tien_phat_moi_ngay'
  LIMIT 1;

  IF v_muc_phat IS NULL OR v_muc_phat = 0 THEN
    SET v_muc_phat = 1000;
  END IF;

  SET v_tien_phat = v_so_ngay_tre * v_muc_phat;
  SET v_ly_do = CONCAT('Trả sách muộn ', v_so_ngay_tre, ' ngày');

  -- Lấy mã người dùng từ phiếu mượn
  SELECT ma_nguoi_dung INTO v_ma_doc_gia
  FROM phieu_muon
  WHERE ma_phieu_muon = v_ma_phieu
  LIMIT 1
  FOR UPDATE;

  -- Kiểm tra trùng phạt
  SELECT COUNT(*) INTO v_exists
  FROM phat
  WHERE ma_chi_tiet_muon = p_id_chi_tiet;

  IF v_exists = 0 THEN
    INSERT INTO phat(ma_nguoi_dung, ma_phieu_muon, ma_chi_tiet_muon, so_tien, ly_do, ngay_phat, trang_thai)
    VALUES (v_ma_doc_gia, v_ma_phieu, p_id_chi_tiet, v_tien_phat, v_ly_do, CURDATE(), 'Chưa thanh toán');

    INSERT INTO notification(ma_nguoi_dung, noi_dung, ngay_gui)
    VALUES (
      v_ma_doc_gia,
      CONCAT('Bạn bị phạt ', FORMAT(v_tien_phat, 0), ' VND do ', v_ly_do),
      NOW()
    );

    INSERT INTO nhat_ky_he_thong(ma_nguoi_dung, thao_tac, thoi_gian)
    VALUES (
      v_ma_doc_gia,
      CONCAT('Tạo phạt tự động (chi tiết ', p_id_chi_tiet, '): ', FORMAT(v_tien_phat, 0), ' VND - ', v_ly_do),
      NOW()
    );
  END IF;

  COMMIT;
END proc_block ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CapNhatHoSoSoThich` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CapNhatHoSoSoThich`(IN p_ma_nguoi_dung INT)
BEGIN
    -- Xóa hồ sơ cũ
    DELETE FROM ho_so_so_thich WHERE ma_nguoi_dung = p_ma_nguoi_dung;
    
    -- Dựa trên sách đã mượn (trọng số 2.0)
    INSERT INTO ho_so_so_thich (ma_nguoi_dung, ma_the_loai, diem_so)
    SELECT p_ma_nguoi_dung, s.ma_the_loai, COUNT(*) * 2.0
    FROM chi_tiet_muon ctm
    JOIN phieu_muon pm ON ctm.ma_phieu_muon = pm.ma_phieu_muon
    JOIN sach s ON ctm.ma_sach = s.ma_sach
    WHERE pm.ma_nguoi_dung = p_ma_nguoi_dung
    GROUP BY s.ma_the_loai;
    
    -- Dựa trên sách yêu thích (trọng số 1.5)
    INSERT INTO ho_so_so_thich (ma_nguoi_dung, ma_the_loai, diem_so)
    SELECT p_ma_nguoi_dung, s.ma_the_loai, 1.5
    FROM sach_yeu_thich syt
    JOIN sach s ON syt.ma_sach = s.ma_sach
    WHERE syt.ma_nguoi_dung = p_ma_nguoi_dung
    ON DUPLICATE KEY UPDATE diem_so = diem_so + VALUES(diem_so);
    
    -- Dựa trên đánh giá (trọng số 0.5 * điểm)
    INSERT INTO ho_so_so_thich (ma_nguoi_dung, ma_the_loai, diem_so)
    SELECT p_ma_nguoi_dung, s.ma_the_loai, dg.diem * 0.5
    FROM danh_gia dg
    JOIN sach s ON dg.ma_sach = s.ma_sach
    WHERE dg.ma_doc_gia = p_ma_nguoi_dung
    ON DUPLICATE KEY UPDATE diem_so = diem_so + VALUES(diem_so);
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteSach`(
    IN p_ma_sach INT
)
BEGIN
    UPDATE sach
    SET trang_thai = 'Ngừng lưu hành'
    WHERE ma_sach = p_ma_sach;

    SELECT 'OK' AS status, CONCAT('Sách ', p_ma_sach, ' đã được chuyển sang trạng thái Ngừng lưu hành') AS message;

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
/*!50003 DROP PROCEDURE IF EXISTS `GetAllBienMucFull` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllBienMucFull`()
BEGIN
    -- ✅ Lấy thông tin cơ bản + tổng hợp dữ liệu
    SELECT 
        bms.ma_bien_muc,
        bms.tieu_de,
        bms.isbn,
        bms.nam_xuat_ban,
        bms.nha_xuat_ban,
        bms.hinh_bia,
        bms.trang_thai,
        bms.noi_bat,
        bms.ngay_tao,
        dm.ten_danh_muc,
        GROUP_CONCAT(DISTINCT bmtg.ten_tac_gia SEPARATOR ', ') AS tac_gia,
        (
            SELECT COUNT(bs.ma_ban_sao)
            FROM sach s
            JOIN ban_sao_sach bs ON bs.ma_sach = s.ma_sach
            WHERE s.ISBN = bms.isbn
        ) AS tong_ban_sao,
        (
            SELECT COUNT(bs.ma_ban_sao)
            FROM sach s
            JOIN ban_sao_sach bs ON bs.ma_sach = s.ma_sach
            WHERE s.ISBN = bms.isbn AND bs.trang_thai = 'đang_mượn'
        ) AS so_dang_muon,
        (
            SELECT COUNT(bs.ma_ban_sao)
            FROM sach s
            JOIN ban_sao_sach bs ON bs.ma_sach = s.ma_sach
            WHERE s.ISBN = bms.isbn AND bs.trang_thai = 'còn'
        ) AS so_con,
        (
            SELECT duong_dan
            FROM bien_muc_tai_lieu_dinh_kem tldk
            WHERE tldk.ma_bien_muc = bms.ma_bien_muc
              AND tldk.loai_tai_lieu = 'pdf'
            LIMIT 1
        ) AS file_pdf
    FROM bien_muc_sach bms
    LEFT JOIN danh_muc dm ON dm.ma_danh_muc = bms.ma_danh_muc
    LEFT JOIN bien_muc_tac_gia bmtg ON bmtg.ma_bien_muc = bms.ma_bien_muc
    GROUP BY bms.ma_bien_muc
    ORDER BY bms.ngay_tao DESC;
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
    SELECT 
        s.ma_sach,
        s.tieu_de,
        s.tac_gia,
        s.ISBN,
        s.so_trang,
        s.so_luong,
        s.so_luong_con,
        s.nam_xuat_ban,
        s.gia_tri,
        s.mo_ta,
        s.hinh_bia,
        tl.ten_the_loai,
        nn.ten_ngon_ngu,
        nxb.ten_nxb,
        ncc.ten_ncc,
        kv.ten_khu_vuc,
        s.trang_thai,
        s.noi_bat,
        s.ngay_nhap
    FROM sach s
    LEFT JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    LEFT JOIN ngon_ngu nn ON s.ma_ngon_ngu = nn.ma_ngon_ngu
    LEFT JOIN nha_xuat_ban nxb ON s.ma_nxb = nxb.ma_nxb
    LEFT JOIN nha_cung_cap ncc ON s.ma_ncc = ncc.ma_ncc
    LEFT JOIN khu_vuc kv ON s.ma_khu_vuc = kv.ma_khu_vuc
    ORDER BY s.ma_sach DESC;

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
        s.hinh_bia_public_id,

        -- Join để lấy tên thể loại, danh mục, ngôn ngữ, NXB, NCC, khu vực
        tl.ten_the_loai,
        dm.ten_danh_muc,
        nn.ten_ngon_ngu,
        nxb.ten_nxb,
        ncc.ten_ncc,
        kv.ten_khu_vuc,

        -- Tính số lượng còn lại = tổng số lượng - số đang mượn chưa trả
        (s.so_luong - IFNULL((
            SELECT SUM(ctm.so_luong)
            FROM chi_tiet_muon ctm
            INNER JOIN phieu_muon pm ON pm.ma_phieu_muon = ctm.ma_phieu_muon
            WHERE ctm.ma_sach = s.ma_sach 
              AND pm.trang_thai = 'Đang mượn'
        ), 0)) AS so_luong_con_lai

    FROM sach s
    LEFT JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    LEFT JOIN danh_muc dm ON s.ma_danh_muc = dm.ma_danh_muc
    LEFT JOIN ngon_ngu nn ON s.ma_ngon_ngu = nn.ma_ngon_ngu
    LEFT JOIN nha_xuat_ban nxb ON s.ma_nxb = nxb.ma_nxb
    LEFT JOIN nha_cung_cap ncc ON s.ma_ncc = ncc.ma_ncc
    LEFT JOIN khu_vuc kv ON s.ma_khu_vuc = kv.ma_khu_vuc

    ORDER BY s.ma_sach DESC;

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
/*!50003 DROP PROCEDURE IF EXISTS `GetBienMucFullById` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetBienMucFullById`(
    IN p_ma_bien_muc INT
)
BEGIN
    -- ========================
    -- 1️⃣ Thông tin chính biên mục
    -- ========================
    SELECT 
        bms.ma_bien_muc,
        bms.tieu_de,
        bms.tom_tat,
        bms.isbn,
        bms.nam_xuat_ban,
        bms.nha_xuat_ban,
        bms.so_trang,
        bms.ngon_ngu,
        bms.dinh_danh,
        bms.hinh_bia,
        bms.trang_thai,
        bms.noi_bat,
        bms.ngay_tao,
        dm.ten_danh_muc
    FROM bien_muc_sach bms
    LEFT JOIN danh_muc dm ON dm.ma_danh_muc = bms.ma_danh_muc
    WHERE bms.ma_bien_muc = p_ma_bien_muc;

    -- ========================
    -- 2️⃣ Danh sách tác giả
    -- ========================
    SELECT 
        ten_tac_gia
    FROM bien_muc_tac_gia
    WHERE ma_bien_muc = p_ma_bien_muc;

    -- ========================
    -- 3️⃣ Tài liệu đính kèm (PDF, ảnh...)
    -- ========================
    SELECT 
        loai_file,
        duong_dan
    FROM bien_muc_tai_lieu_dinh_kem
    WHERE ma_bien_muc = p_ma_bien_muc;

    -- ========================
    -- 4️⃣ Danh sách đầu sách thuộc biên mục (theo ISBN)
    -- ========================
    SELECT 
        s.ma_sach,
        s.tieu_de,
        s.ISBN,
        s.trang_thai,
        COUNT(bs.ma_ban_sao) AS so_ban_sao,
        IFNULL(SUM(bs.gia_mua), 0) AS tong_gia_tri
    FROM sach s
    LEFT JOIN ban_sao_sach bs ON bs.ma_sach = s.ma_sach
    WHERE s.ISBN = (SELECT isbn FROM bien_muc_sach WHERE ma_bien_muc = p_ma_bien_muc)
    GROUP BY s.ma_sach;

    -- ========================
    -- 5️⃣ Danh sách bản sao chi tiết
    -- ========================
    SELECT 
        bs.ma_ban_sao,
        bs.tinh_trang,
        bs.gia_mua,
        bs.ngay_mua,
        s.ma_sach,
        s.tieu_de
    FROM ban_sao_sach bs
    JOIN sach s ON s.ma_sach = bs.ma_sach
    WHERE s.ISBN = (SELECT isbn FROM bien_muc_sach WHERE ma_bien_muc = p_ma_bien_muc);
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMostBorrowedBooks`(IN p_limit INT)
BEGIN
    SELECT 
        s.ma_sach,
        s.tieu_de,
        s.tac_gia,
        COUNT(ctm.ma_sach) AS tong_luot_muon
    FROM chi_tiet_muon ctm
    JOIN sach s ON s.ma_sach = ctm.ma_sach
    GROUP BY s.ma_sach
    ORDER BY tong_luot_muon DESC
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
    -- 1. Thông tin chính của sách (kèm PDF, thể loại, ngôn ngữ, NXB, NCC, khu vực)
    SELECT 
        s.*,
        tl.ten_the_loai,
        nn.ten_ngon_ngu,
        nxb.ten_nxb,
        ncc.ten_ncc,
        kv.ten_khu_vuc,
        bms.file_pdf
    FROM sach s
    LEFT JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    LEFT JOIN ngon_ngu nn ON s.ma_ngon_ngu = nn.ma_ngon_ngu
    LEFT JOIN nha_xuat_ban nxb ON s.ma_nxb = nxb.ma_nxb
    LEFT JOIN nha_cung_cap ncc ON s.ma_ncc = ncc.ma_ncc
    LEFT JOIN khu_vuc kv ON s.ma_khu_vuc = kv.ma_khu_vuc
    LEFT JOIN bien_muc_sach bms ON s.ma_bien_muc = bms.ma_bien_muc
    WHERE s.ma_sach = p_ma_sach;

    --  2. Thông tin phụ
    SELECT 
        stp.ma_thong_tin,
        stp.ma_sach,
        stp.nhan_de_phu,
        stp.so_cutter_tac_gia,
        stp.phan_loai_tai_lieu,
        stp.lan_tai_ban,
        stp.kho_sach_cm,
        stp.tai_lieu_kem_theo,
        stp.chu_de,
        stp.so_chung_tu,
        stp.anh_chung_tu,
        stp.ngay_tao
    FROM sach_thong_tin_phu stp
    WHERE stp.ma_sach = p_ma_sach;

    --  3. File đính kèm
    SELECT 
        btdk.ten_file,
        btdk.duong_dan,
        btdk.loai_file,
        btdk.ngay_tao
    FROM bien_muc_tai_lieu_dinh_kem btdk
    JOIN sach s2 ON s2.ma_bien_muc = btdk.ma_bien_muc
    WHERE s2.ma_sach = p_ma_sach;

    -- 4. Bản sao vật lý
    SELECT 
        bs.ma_ban_sao,
        bs.ma_vach,
        bs.vi_tri,
        bs.tinh_trang,
        bs.gia_mua,
        bs.ngay_mua
    FROM ban_sao_sach bs
    WHERE bs.ma_sach = p_ma_sach;

    -- 5. Lịch sử mượn
    SELECT 
        pm.ma_phieu_muon,
        pm.ngay_muon,
        pm.ngay_hen_tra,
        pm.trang_thai,
        pm.ghi_chu
    FROM chi_tiet_muon ctm
    JOIN phieu_muon pm ON pm.ma_phieu_muon = ctm.ma_phieu_muon
    WHERE ctm.ma_sach = p_ma_sach;

    -- . Đánh giá sách (bao gồm điểm và bình luận)
    SELECT 
        dg.ma_danh_gia,
        dg.ma_doc_gia,
        nd.ho_ten AS ten_doc_gia,
        dg.diem,
        dg.binh_luan,
        dg.ngay_danh_gia
    FROM danh_gia dg
    LEFT JOIN nguoi_dung nd ON nd.ma_nguoi_dung = dg.ma_doc_gia
    WHERE dg.ma_sach = p_ma_sach
    ORDER BY dg.ngay_danh_gia DESC;

    --  7. Điểm trung bình đánh giá
    SELECT 
        ROUND(AVG(dg.diem), 1) AS diem_trung_binh,
        COUNT(dg.ma_danh_gia) AS tong_danh_gia
    FROM danh_gia dg
    WHERE dg.ma_sach = p_ma_sach;
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
/*!50003 DROP PROCEDURE IF EXISTS `GetSachFull` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSachFull`(IN p_limit INT)
BEGIN
  SELECT 
    bms.ma_bien_muc,
    bms.tieu_de,
    bms.hinh_bia,
    bms.mo_ta_ngan,
    GROUP_CONCAT(tg.ten_tac_gia SEPARATOR ', ') AS tac_gia
  FROM bien_muc_sach bms
  LEFT JOIN bien_muc_tac_gia tg ON bms.ma_bien_muc = tg.ma_bien_muc
  WHERE bms.trang_thai = 'kich_hoat'
  GROUP BY bms.ma_bien_muc
  ORDER BY RAND()
  LIMIT p_limit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSachMoi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSachMoi`(IN p_limit INT)
BEGIN
  SELECT 
    bms.ma_bien_muc,
    bms.tieu_de,
    bms.hinh_bia,
    bms.ngay_tao,
    GROUP_CONCAT(tg.ten_tac_gia SEPARATOR ', ') AS tac_gia
  FROM bien_muc_sach bms
  LEFT JOIN bien_muc_tac_gia tg ON bms.ma_bien_muc = tg.ma_bien_muc
  WHERE bms.trang_thai = 'kich_hoat'
  GROUP BY bms.ma_bien_muc
  ORDER BY bms.ngay_tao DESC
  LIMIT p_limit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSachMuonNhieu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSachMuonNhieu`(IN p_limit INT)
BEGIN
  SELECT 
    bms.ma_bien_muc,
    bms.tieu_de,
    bms.hinh_bia,
    GROUP_CONCAT(tg.ten_tac_gia SEPARATOR ', ') AS tac_gia,
    COUNT(ct.id) AS luot_muon
  FROM chi_tiet_muon ct
  JOIN sach s ON ct.ma_sach = s.ma_sach
  JOIN bien_muc_sach bms ON s.tieu_de = bms.tieu_de
  LEFT JOIN bien_muc_tac_gia tg ON bms.ma_bien_muc = tg.ma_bien_muc
  GROUP BY bms.ma_bien_muc
  ORDER BY luot_muon DESC
  LIMIT p_limit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetSachNoiBat` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetSachNoiBat`(IN p_limit INT)
BEGIN
  SELECT 
    s.ma_sach,
    bms.ma_bien_muc,
    bms.tieu_de,
    bms.hinh_bia,
    GROUP_CONCAT(tg.ten_tac_gia SEPARATOR ', ') AS tac_gia
  FROM bien_muc_sach bms
  LEFT JOIN sach s ON s.ma_bien_muc = bms.ma_bien_muc
  LEFT JOIN bien_muc_tac_gia tg ON bms.ma_bien_muc = tg.ma_bien_muc
  WHERE bms.noi_bat = 1 
    AND bms.trang_thai = 'kich_hoat'
  GROUP BY s.ma_sach, bms.ma_bien_muc, bms.tieu_de, bms.hinh_bia
  ORDER BY bms.ngay_tao DESC
  LIMIT p_limit;
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
/*!50003 DROP PROCEDURE IF EXISTS `GoiYSachPhoBien` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GoiYSachPhoBien`(IN p_so_luong INT)
BEGIN
    SELECT 
        s.ma_sach,
        s.tieu_de,
        s.tac_gia,
        s.mo_ta,
        s.hinh_bia,
        tl.ten_the_loai,
        AVG(COALESCE(dg.diem, 3)) AS diem_trung_binh,
        COUNT(DISTINCT dg.ma_danh_gia) AS so_luot_danh_gia,
        COUNT(DISTINCT ctm.id) AS so_luot_muon,
        (COUNT(DISTINCT ctm.id) * 0.4 + AVG(COALESCE(dg.diem, 3)) * 0.6) AS diem_pho_bien
    FROM sach s
    JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    LEFT JOIN danh_gia dg ON s.ma_sach = dg.ma_sach
    LEFT JOIN chi_tiet_muon ctm ON s.ma_sach = ctm.ma_sach
    WHERE s.trang_thai = 'Hoạt động'
      AND s.so_luong_con > 0
    GROUP BY s.ma_sach, s.tieu_de, s.tac_gia, s.mo_ta, s.hinh_bia, tl.ten_the_loai
    ORDER BY diem_pho_bien DESC, so_luot_danh_gia DESC
    LIMIT p_so_luong;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GoiYSachTheoDocGia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GoiYSachTheoDocGia`(IN ma_doc_gia INT)
BEGIN
    -- Tìm các thể loại mà độc giả đã mượn hoặc đánh giá cao
    WITH TheLoaiYeuThich AS (
        SELECT DISTINCT s.ma_the_loai
        FROM (
            -- Lấy từ lịch sử mượn
            SELECT DISTINCT ct.ma_sach
            FROM chi_tiet_muon ct
            JOIN phieu_muon pm ON ct.ma_phieu_muon = pm.ma_phieu_muon
            WHERE pm.ma_nguoi_dung = ma_doc_gia

            UNION

            -- Lấy từ sách yêu thích
            SELECT ma_sach
            FROM sach_yeu_thich
            WHERE ma_nguoi_dung = ma_doc_gia

            UNION

            -- Lấy từ sách đã đánh giá cao (điểm >= 4)
            SELECT ma_sach
            FROM danh_gia
            WHERE ma_doc_gia = ma_doc_gia AND diem >= 4
        ) AS SachDaTiepXuc
        JOIN sach s ON SachDaTiepXuc.ma_sach = s.ma_sach
    ),

    -- Lấy danh sách sách đã mượn để loại trừ
    SachDaMuon AS (
        SELECT DISTINCT ct.ma_sach
        FROM chi_tiet_muon ct
        JOIN phieu_muon pm ON ct.ma_phieu_muon = pm.ma_phieu_muon
        WHERE pm.ma_nguoi_dung = ma_doc_gia
    )

    -- Gợi ý các sách cùng thể loại, chưa mượn, và có đánh giá tốt
    SELECT s.ma_sach, s.tieu_de, s.tac_gia, s.ma_the_loai, tl.ten_the_loai,
           AVG(dg.diem) AS diem_trung_binh,
           COUNT(dg.ma_danh_gia) AS so_luot_danh_gia
    FROM sach s
    JOIN TheLoaiYeuThich tlyt ON s.ma_the_loai = tlyt.ma_the_loai
    LEFT JOIN danh_gia dg ON s.ma_sach = dg.ma_sach
    LEFT JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    WHERE s.ma_sach NOT IN (SELECT ma_sach FROM SachDaMuon)
    GROUP BY s.ma_sach, s.tieu_de, s.tac_gia, s.ma_the_loai, tl.ten_the_loai
    HAVING diem_trung_binh >= 3.5 OR diem_trung_binh IS NULL
    ORDER BY diem_trung_binh DESC, so_luot_danh_gia DESC
    LIMIT 10;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GoiYSachTheoSoThich` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GoiYSachTheoSoThich`(
    IN p_ma_nguoi_dung INT,
    IN p_so_luong INT,
    IN p_ma_the_loai_uu_tien INT
)
BEGIN
    DECLARE v_ty_le_khop_min DECIMAL(5,2) DEFAULT 0.3;
    DECLARE v_so_dong INT;

    -- Cập nhật hồ sơ sở thích
    CALL CapNhatHoSoSoThich(p_ma_nguoi_dung);

    -- Lấy dữ liệu gợi ý
    SELECT 
        s.ma_sach,
        s.tieu_de,
        s.tac_gia,
        s.mo_ta,
        s.hinh_bia,
        tl.ten_the_loai,
        AVG(COALESCE(dg.diem, 3)) AS diem_trung_binh,
        COUNT(DISTINCT dg.ma_danh_gia) AS so_luot_danh_gia,
        (COALESCE(hsst.diem_so, 0.5) * 
         (1 + CASE WHEN s.ma_the_loai = p_ma_the_loai_uu_tien THEN 0.5 ELSE 0 END)) AS ty_le_khop
    FROM sach s
    JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    LEFT JOIN danh_gia dg ON s.ma_sach = dg.ma_sach
    LEFT JOIN ho_so_so_thich hsst 
           ON s.ma_the_loai = hsst.ma_the_loai 
          AND hsst.ma_nguoi_dung = p_ma_nguoi_dung
    WHERE s.trang_thai = 'Hoạt động'
      AND s.so_luong_con > 0
      AND s.ma_sach NOT IN (
          SELECT DISTINCT ctm.ma_sach
          FROM chi_tiet_muon ctm 
          JOIN phieu_muon pm ON ctm.ma_phieu_muon = pm.ma_phieu_muon 
          WHERE pm.ma_nguoi_dung = p_ma_nguoi_dung
      )
      AND s.ma_sach NOT IN (
          SELECT ma_sach FROM sach_yeu_thich WHERE ma_nguoi_dung = p_ma_nguoi_dung
      )
    GROUP BY s.ma_sach, s.tieu_de, s.tac_gia, s.mo_ta, s.hinh_bia, tl.ten_the_loai, hsst.diem_so
    HAVING ty_le_khop >= v_ty_le_khop_min
    ORDER BY ty_le_khop DESC, diem_trung_binh DESC, so_luot_danh_gia DESC
    LIMIT p_so_luong;
    
    -- Nếu không có dữ liệu, fallback sang sách phổ biến
    SET v_so_dong = ROW_COUNT();
    IF v_so_dong = 0 THEN
        CALL GoiYSachPhoBien(p_so_luong);
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GoiYSachTuongTu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GoiYSachTuongTu`(IN p_ma_sach INT, IN p_so_luong INT)
BEGIN
    SELECT 
        s2.ma_sach,
        s2.tieu_de,
        s2.tac_gia,
        s2.mo_ta,
        s2.hinh_bia,
        tl.ten_the_loai,
        AVG(COALESCE(dg.diem, 3)) AS diem_trung_binh,
        (CASE WHEN s2.ma_the_loai = s1.ma_the_loai THEN 0.4 ELSE 0 END +
         CASE WHEN s2.tac_gia = s1.tac_gia THEN 0.3 ELSE 0 END +
         CASE WHEN ABS(s2.nam_xuat_ban - s1.nam_xuat_ban) <= 5 THEN 0.3 ELSE 0 END) AS do_tuong_tu
    FROM sach s1
    JOIN sach s2 ON s2.ma_the_loai = s1.ma_the_loai OR s2.tac_gia = s1.tac_gia
    JOIN the_loai tl ON s2.ma_the_loai = tl.ma_the_loai
    LEFT JOIN danh_gia dg ON s2.ma_sach = dg.ma_sach
    WHERE s1.ma_sach = p_ma_sach
      AND s2.ma_sach != p_ma_sach
      AND s2.trang_thai = 'Hoạt động'
      AND s2.so_luong_con > 0
    GROUP BY s2.ma_sach, s2.tieu_de, s2.tac_gia, s2.mo_ta, s2.hinh_bia, tl.ten_the_loai, 
             s1.ma_the_loai, s1.tac_gia, s1.nam_xuat_ban
    HAVING do_tuong_tu > 0.3
    ORDER BY do_tuong_tu DESC, diem_trung_binh DESC
    LIMIT p_so_luong;
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
    IN p_hinh_bia_public_id VARCHAR(255),
    IN p_ma_nxb INT,
    IN p_ma_danh_muc INT,
    IN p_ma_the_loai INT,
    IN p_ma_ngon_ngu INT,
    IN p_ma_khu_vuc INT,
    IN p_ma_ncc INT
)
BEGIN
    INSERT INTO sach (
        tieu_de, tac_gia, ISBN, so_luong, so_trang, mo_ta,
        hinh_bia, hinh_bia_public_id,
        ma_nxb, ma_danh_muc, ma_the_loai,
        ma_ngon_ngu, ma_khu_vuc, ma_ncc
    )
    VALUES (
        p_tieu_de, p_tac_gia, p_ISBN, p_so_luong, p_so_trang, p_mo_ta,
        p_hinh_bia, p_hinh_bia_public_id,
        p_ma_nxb, p_ma_danh_muc, p_ma_the_loai,
        p_ma_ngon_ngu, p_ma_khu_vuc, p_ma_ncc
    );
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
/*!50003 DROP PROCEDURE IF EXISTS `KichHoatBienMuc_V4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `KichHoatBienMuc_V4`(
  IN p_ma_bien_muc INT,
  IN p_so_ban_sao INT,
  IN p_vi_tri VARCHAR(100),
  IN p_gia DECIMAL(10,2)
)
BEGIN
  DECLARE v_tieu_de VARCHAR(255);
  DECLARE v_tom_tat TEXT;
  DECLARE v_isbn VARCHAR(50);
  DECLARE v_nam_xuat_ban YEAR;
  DECLARE v_so_trang INT;
  DECLARE v_ma_danh_muc INT;
  DECLARE v_ngon_ngu VARCHAR(100);
  DECLARE v_ma_ngon_ngu INT;
  DECLARE v_hinh_bia VARCHAR(255);
  DECLARE v_tac_gia VARCHAR(255);
  DECLARE v_ma_sach INT;
  DECLARE v_count INT DEFAULT 0;
  DECLARE v_existing INT DEFAULT 0;

  -- 1️⃣ Lấy thông tin biên mục
  SELECT 
    tieu_de, tom_tat, isbn, nam_xuat_ban, so_trang, ma_danh_muc,
    ngon_ngu, hinh_bia
  INTO 
    v_tieu_de, v_tom_tat, v_isbn, v_nam_xuat_ban, v_so_trang, v_ma_danh_muc,
    v_ngon_ngu, v_hinh_bia
  FROM bien_muc_sach
  WHERE ma_bien_muc = p_ma_bien_muc
  LIMIT 1;

  IF v_tieu_de IS NULL THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Không tìm thấy biên mục.';
  END IF;

  -- 2️⃣ Ngôn ngữ
  SELECT ma_ngon_ngu INTO v_ma_ngon_ngu
  FROM ngon_ngu
  WHERE ten_ngon_ngu = v_ngon_ngu
  LIMIT 1;

  IF v_ma_ngon_ngu IS NULL THEN
    SET v_ma_ngon_ngu = 1;
  END IF;

  -- 3️⃣ Tác giả
  SELECT GROUP_CONCAT(ten_tac_gia SEPARATOR ', ')
  INTO v_tac_gia
  FROM bien_muc_tac_gia
  WHERE ma_bien_muc = p_ma_bien_muc;

  -- 4️⃣ Kiểm tra ISBN
  SELECT COUNT(*) INTO v_existing FROM sach WHERE ISBN = v_isbn;

  IF v_existing > 0 THEN
    SELECT ma_sach INTO v_ma_sach FROM sach WHERE ISBN = v_isbn LIMIT 1;
    UPDATE sach
      SET so_luong = so_luong + p_so_ban_sao,
          so_luong_con = so_luong_con + p_so_ban_sao,
          gia_tri = p_gia
    WHERE ma_sach = v_ma_sach;
  ELSE
    INSERT INTO sach (
      tieu_de, tac_gia, ISBN, so_trang, so_luong, nam_xuat_ban, gia_tri,
      mo_ta, hinh_bia, ma_danh_muc, ma_ngon_ngu, ma_nxb, ma_ncc, ma_khu_vuc,
      trang_thai, so_luong_con, hinh_bia_public_id
    ) VALUES (
      v_tieu_de, v_tac_gia, v_isbn, v_so_trang, p_so_ban_sao, v_nam_xuat_ban,
      p_gia, v_tom_tat, v_hinh_bia, v_ma_danh_muc, v_ma_ngon_ngu,
      NULL, NULL, NULL, 'Hoạt động', p_so_ban_sao, NULL
    );

    SET v_ma_sach = LAST_INSERT_ID();
  END IF;

  -- 5️⃣ Tạo bản sao
  SET v_count = 1;
  WHILE v_count <= p_so_ban_sao DO
    INSERT INTO ban_sao_sach (
      ma_sach, ma_vach, rfid, tinh_trang, vi_tri, ngay_mua, gia_mua
    )
    VALUES (
      v_ma_sach,
      CONCAT('S', v_ma_sach, '_', LPAD(v_count, 4, '0')),
      NULL,
      'còn',
      p_vi_tri,
      CURDATE(),
      p_gia
    );
    SET v_count = v_count + 1;
  END WHILE;

  -- 6️⃣ Cập nhật trạng thái
  UPDATE bien_muc_sach
  SET trang_thai = 'kich_hoat'
  WHERE ma_bien_muc = p_ma_bien_muc;

  -- 7️⃣ Trả kết quả
  SELECT v_ma_sach AS ma_sach, v_tieu_de AS tieu_de;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `KichHoatBienMuc_V5` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `KichHoatBienMuc_V5`(
    IN p_ma_bien_muc INT,
    IN p_so_ban_sao INT,
    IN p_vi_tri VARCHAR(200),
    IN p_gia DECIMAL(12,2),
    IN p_update_flag TINYINT
)
BEGIN
    DECLARE v_tieu_de VARCHAR(255);
    DECLARE v_tom_tat TEXT;
    DECLARE v_isbn VARCHAR(50);
    DECLARE v_nam_xuat_ban YEAR;
    DECLARE v_so_trang INT;
    DECLARE v_ma_the_loai INT;
    DECLARE v_ma_nha_cung_cap INT;
    DECLARE v_ma_khu_vuc INT;
    DECLARE v_ngon_ngu VARCHAR(100);
    DECLARE v_ma_ngon_ngu INT;
    DECLARE v_nha_xuat_ban VARCHAR(255);
    DECLARE v_ma_nxb INT;
    DECLARE v_hinh_bia VARCHAR(255);
    DECLARE v_hinh_bia_public_id VARCHAR(255);
    DECLARE v_noi_bat TINYINT DEFAULT 0;
    DECLARE v_tac_gia_text TEXT;
    DECLARE v_ma_sach INT;
    DECLARE v_exists INT DEFAULT 0;
    DECLARE v_counter INT DEFAULT 1;
    DECLARE v_thong_bao TEXT DEFAULT '';

    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        GET DIAGNOSTICS CONDITION 1
            @p1 = RETURNED_SQLSTATE, @p2 = MESSAGE_TEXT;
        ROLLBACK;
        SELECT 'ERROR' AS status,
               CONCAT('❌ SQLSTATE: ', @p1, ' | Message: ', @p2) AS message;
    END;

    START TRANSACTION;

    -- Lấy dữ liệu từ biên mục
    SELECT 
        tieu_de, tom_tat, isbn, nam_xuat_ban, so_trang, ma_danh_muc,
        ngon_ngu, nha_xuat_ban, hinh_bia, hinh_bia_public_id, noi_bat,
        ma_nha_cung_cap, ma_khu_vuc
    INTO 
        v_tieu_de, v_tom_tat, v_isbn, v_nam_xuat_ban, v_so_trang, v_ma_the_loai,
        v_ngon_ngu, v_nha_xuat_ban, v_hinh_bia, v_hinh_bia_public_id, v_noi_bat,
        v_ma_nha_cung_cap, v_ma_khu_vuc
    FROM bien_muc_sach
    WHERE ma_bien_muc = p_ma_bien_muc
    LIMIT 1 FOR UPDATE;

    IF v_tieu_de IS NULL THEN
        ROLLBACK;
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Không tìm thấy biên mục để kích hoạt';
    END IF;

    -- Lấy mã ngôn ngữ nếu có (nếu chưa có thì thêm mới)
    SELECT ma_ngon_ngu INTO v_ma_ngon_ngu FROM ngon_ngu WHERE ten_ngon_ngu = v_ngon_ngu LIMIT 1;
    IF v_ma_ngon_ngu IS NULL THEN
        INSERT INTO ngon_ngu(ten_ngon_ngu) VALUES (v_ngon_ngu);
        SET v_ma_ngon_ngu = LAST_INSERT_ID();
    END IF;

    -- Lấy mã nhà xuất bản nếu có (nếu chưa có thì thêm mới)
    SELECT ma_nxb INTO v_ma_nxb FROM nha_xuat_ban WHERE ten_nxb = v_nha_xuat_ban LIMIT 1;
    IF v_ma_nxb IS NULL THEN
        INSERT INTO nha_xuat_ban(ten_nxb) VALUES (v_nha_xuat_ban);
        SET v_ma_nxb = LAST_INSERT_ID();
    END IF;

    -- Gom tên tác giả
    SELECT GROUP_CONCAT(ten_tac_gia SEPARATOR ', ') INTO v_tac_gia_text
    FROM bien_muc_tac_gia WHERE ma_bien_muc = p_ma_bien_muc;

    -- Kiểm tra ISBN tồn tại
    SELECT COUNT(*) INTO v_exists FROM sach WHERE ISBN = v_isbn;

    IF v_exists > 0 THEN
        SELECT ma_sach INTO v_ma_sach FROM sach WHERE ISBN = v_isbn LIMIT 1 FOR UPDATE;

        IF p_update_flag = 1 THEN
            UPDATE sach
            SET 
                tieu_de = v_tieu_de,
                mo_ta = v_tom_tat,
                nam_xuat_ban = v_nam_xuat_ban,
                so_trang = v_so_trang,
                ma_the_loai = v_ma_the_loai,
                ma_ngon_ngu = v_ma_ngon_ngu,
                ma_nxb = v_ma_nxb,
                ma_ncc = v_ma_nha_cung_cap,
                ma_khu_vuc = v_ma_khu_vuc,
                hinh_bia = v_hinh_bia,
                hinh_bia_public_id = v_hinh_bia_public_id,
                gia_tri = p_gia,
                noi_bat = v_noi_bat
            WHERE ma_sach = v_ma_sach;

            SET v_thong_bao = 'ISBN đã tồn tại — cập nhật metadata';
        ELSE
            SET v_thong_bao = 'ISBN đã tồn tại — chỉ thêm bản sao mới';
        END IF;
    ELSE
        -- Tạo đầu sách mới (KHÔNG cập nhật số lượng vì trigger lo)
        INSERT INTO sach (
            ma_bien_muc, tieu_de, tac_gia, ISBN, so_trang,
            nam_xuat_ban, gia_tri, mo_ta, hinh_bia, hinh_bia_public_id, 
            ma_the_loai, ma_ngon_ngu, ma_nxb, ma_ncc, ma_khu_vuc, 
            trang_thai, noi_bat, ngay_nhap
        )
        VALUES (
            p_ma_bien_muc, v_tieu_de, v_tac_gia_text, v_isbn, v_so_trang,
            v_nam_xuat_ban, p_gia, v_tom_tat, v_hinh_bia, v_hinh_bia_public_id,
            v_ma_the_loai, v_ma_ngon_ngu, v_ma_nxb, v_ma_nha_cung_cap, v_ma_khu_vuc,
            'Hoạt động', v_noi_bat, NOW()
        );

        SET v_ma_sach = LAST_INSERT_ID();
        SET v_thong_bao = 'Tạo đầu sách mới';
    END IF;

    -- Xóa bản sao cũ và tạo mới (trigger tự tăng số lượng)
    DELETE FROM ban_sao_sach WHERE ma_sach = v_ma_sach;
    SET v_counter = 1;
    WHILE v_counter <= p_so_ban_sao DO
        INSERT INTO ban_sao_sach (ma_sach, ma_vach, vi_tri, tinh_trang, ngay_mua, gia_mua)
        VALUES (
            v_ma_sach,
            CONCAT('S', v_ma_sach, '_', LPAD(v_counter, 4, '0')),
            p_vi_tri,
            'còn',
            CURDATE(),
            p_gia
        );
        SET v_counter = v_counter + 1;
    END WHILE;

    -- Sao chép thông tin phụ
    DELETE FROM sach_thong_tin_phu WHERE ma_sach = v_ma_sach;
    INSERT INTO sach_thong_tin_phu (
        ma_sach, nhan_de_phu, so_cutter_tac_gia, phan_loai_tai_lieu,
        lan_tai_ban, kho_sach_cm, tai_lieu_kem_theo, chu_de,
        so_chung_tu, anh_chung_tu
    )
    SELECT 
        v_ma_sach, nhan_de_phu, so_cutter_tac_gia, phan_loai_tai_lieu,
        lan_tai_ban, kho_sach_cm, tai_lieu_kem_theo, chu_de,
        so_chung_tu, anh_chung_tu
    FROM thong_tin_phu_sach
    WHERE ma_bien_muc = p_ma_bien_muc;

    --  Cập nhật trạng thái
    UPDATE bien_muc_sach
    SET trang_thai = 'kich_hoat'
    WHERE ma_bien_muc = p_ma_bien_muc;

    -- Ghi lịch sử
    INSERT INTO lich_su_kich_hoat (ma_bien_muc, ma_sach, so_ban_sao, mode, thong_bao)
    VALUES (p_ma_bien_muc, v_ma_sach, p_so_ban_sao, IF(p_update_flag=1,'update','add_copy'), v_thong_bao);

    COMMIT;

    SELECT 'OK' AS status, v_ma_sach AS ma_sach, v_thong_bao AS message;
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
/*!50003 DROP PROCEDURE IF EXISTS `LuuLichSuGoiY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LuuLichSuGoiY`(
    IN p_ma_nguoi_dung INT,
    IN p_danh_sach_sach JSON
)
BEGIN
    DECLARE i INT DEFAULT 0;
    DECLARE v_ma_sach INT;
    DECLARE v_ty_le_khop DECIMAL(5,2);
    DECLARE v_so_luong INT;

    SET v_so_luong = JSON_LENGTH(p_danh_sach_sach);

    WHILE i < v_so_luong DO
        SET v_ma_sach = CAST(JSON_UNQUOTE(JSON_EXTRACT(p_danh_sach_sach, CONCAT('$[', i, '].ma_sach'))) AS UNSIGNED);
        SET v_ty_le_khop = CAST(JSON_UNQUOTE(JSON_EXTRACT(p_danh_sach_sach, CONCAT('$[', i, '].ty_le_khop'))) AS DECIMAL(5,2));

        INSERT INTO lich_su_goi_y (ma_nguoi_dung, ma_sach, ty_le_khop)
        VALUES (p_ma_nguoi_dung, v_ma_sach, v_ty_le_khop);

        SET i = i + 1;
    END WHILE;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `SearchSach`(IN p_keyword VARCHAR(255))
BEGIN
    SELECT s.ma_sach, s.tieu_de, s.tac_gia, s.ISBN, tl.ten_the_loai, nn.ten_ngon_ngu
    FROM sach s
    LEFT JOIN the_loai tl ON s.ma_the_loai = tl.ma_the_loai
    LEFT JOIN ngon_ngu nn ON s.ma_ngon_ngu = nn.ma_ngon_ngu
    WHERE s.tieu_de LIKE CONCAT('%', p_keyword, '%')
       OR s.tac_gia LIKE CONCAT('%', p_keyword, '%')
       OR s.ISBN LIKE CONCAT('%', p_keyword, '%');

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
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_home` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_home`(IN p_uid INT)
BEGIN
  /* 1. Thông tin user */
  SELECT 
    u.ma_nguoi_dung AS id,
    u.ho_ten AS name,
    COALESCE(u.avatar, u.anh_dai_dien, '') AS avatar,
    CASE WHEN u.is_vip = 1 THEN 'vip' ELSE 'member' END AS membershipType,
    u.streak_days AS readingStreak,
    -- so sach dang muon
    (SELECT COUNT(*) 
       FROM chi_tiet_muon ct
       JOIN phieu_muon pm ON ct.ma_phieu_muon = pm.ma_phieu_muon
       WHERE pm.ma_nguoi_dung = p_uid AND ct.da_tra = 0) AS borrowedBooks,
    -- tong sach da muon
    (SELECT COUNT(*) 
       FROM phieu_muon pm
       WHERE pm.ma_nguoi_dung = p_uid
         AND pm.trang_thai IN ('Đã trả','Hoàn thành')) AS totalBorrowed,
    -- so sach yeu thich
    (SELECT COUNT(*) 
       FROM sach_yeu_thich sw
       WHERE sw.ma_nguoi_dung = p_uid) AS wishlist,
    COALESCE(r.rank_name, 'Thành viên') AS rankName,
    COALESCE(r.score, 0) AS score
  FROM nguoi_dung u
  LEFT JOIN user_rank r ON u.ma_nguoi_dung = r.ma_nguoi_dung
  WHERE u.ma_nguoi_dung = p_uid;

  /* 2. Sách nổi bật (top 5 rating cao) */
  SELECT 
    s.ma_sach AS id,
    s.tieu_de AS title,
    s.tac_gia AS author,
    IFNULL(ROUND(AVG(dg.diem),1),0) AS rating,
    COUNT(dg.ma_danh_gia) AS reviews,
    CASE 
      WHEN SUM(CASE WHEN bs.tinh_trang='còn' THEN 1 ELSE 0 END) > 0 
      THEN 1 ELSE 0 END AS available,
    SUM(CASE WHEN bs.tinh_trang='còn' THEN 1 ELSE 0 END) AS leftCopies
  FROM sach s
  LEFT JOIN danh_gia dg ON s.ma_sach = dg.ma_sach
  LEFT JOIN ban_sao_sach bs ON s.ma_sach = bs.ma_sach
  GROUP BY s.ma_sach
  ORDER BY rating DESC
  LIMIT 5;

  /* 3. Thông báo quan trọng (sách gần hết hạn trong 3 ngày) */
  SELECT 
    s.tieu_de AS bookTitle,
    DATEDIFF(ctm.ngay_tra, CURDATE()) AS daysLeft
  FROM chi_tiet_muon ctm
  JOIN phieu_muon pm ON ctm.ma_phieu_muon = pm.ma_phieu_muon
  JOIN sach s ON ctm.ma_sach = s.ma_sach
  WHERE pm.ma_nguoi_dung = p_uid
    AND ctm.da_tra = 0
    AND ctm.ngay_tra IS NOT NULL
    AND DATEDIFF(ctm.ngay_tra, CURDATE()) BETWEEN 0 AND 3;

  /* 4. Gợi ý (lấy random 3 sách user chưa mượn) */
  SELECT 
    s.ma_sach AS id,
    s.tieu_de AS title,
    s.tac_gia AS author,
    IFNULL(ROUND(AVG(dg.diem),1),0) AS rating
  FROM sach s
  LEFT JOIN danh_gia dg ON s.ma_sach = dg.ma_sach
  WHERE s.ma_sach NOT IN (
    SELECT DISTINCT ma_sach
    FROM chi_tiet_muon ct
    JOIN phieu_muon pm ON ct.ma_phieu_muon = pm.ma_phieu_muon
    WHERE pm.ma_nguoi_dung = p_uid
  )
  GROUP BY s.ma_sach
  ORDER BY RAND()
  LIMIT 3;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_profile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_get_profile`(IN uid INT)
BEGIN
  SELECT 
    u.ma_nguoi_dung,
    u.ho_ten,
    u.email,
    -- ưu tiên avatar nếu có, fallback về anh_dai_dien
    COALESCE(u.avatar, u.anh_dai_dien, '') AS avatar,
    u.is_vip,
    u.vip_from,
    u.vip_to,
    u.streak_days,
    COALESCE(r.rank_name, 'Thành viên') AS rank_name,
    COALESCE(r.score, 0) AS score,
    -- tổng phiếu mượn đã hoàn thành / đã trả
    (SELECT COUNT(*) 
       FROM phieu_muon pm
       WHERE pm.ma_nguoi_dung = uid
         AND pm.trang_thai IN ('Đã trả','Hoàn thành')) AS total_borrowed,
    -- số sách đang mượn (chi_tiet_muon.da_tra = 0)
    (SELECT COUNT(*) 
       FROM chi_tiet_muon ct
       JOIN phieu_muon pm2 ON ct.ma_phieu_muon = pm2.ma_phieu_muon
       WHERE pm2.ma_nguoi_dung = uid
         AND ct.da_tra = 0) AS currently_borrowed,
    -- điểm trung bình user (danh_gia.ma_doc_gia)
    (SELECT IFNULL(ROUND(AVG(dg.diem),1),0)
       FROM danh_gia dg
       WHERE dg.ma_doc_gia = uid) AS avg_rating
  FROM nguoi_dung u
  LEFT JOIN user_rank r ON u.ma_nguoi_dung = r.ma_nguoi_dung
  WHERE u.ma_nguoi_dung = uid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_ranks` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_ranks`()
BEGIN
  DECLARE done INT DEFAULT 0;
  DECLARE uid INT;
  DECLARE cur CURSOR FOR SELECT ma_nguoi_dung FROM user_rank;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

  OPEN cur;
  read_loop: LOOP
    FETCH cur INTO uid;
    IF done THEN
      LEAVE read_loop;
    END IF;

    UPDATE user_rank
    SET rank_name = CASE 
      WHEN score >= 2000 THEN 'Kim cương'
      WHEN score >= 1000 THEN 'Vàng'
      WHEN score >= 500 THEN 'Bạc'
      WHEN score >= 100 THEN 'Đồng'
      ELSE 'Thành viên'
    END
    WHERE ma_nguoi_dung = uid;
  END LOOP;
  CLOSE cur;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_update_streak` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_streak`(IN uid INT)
BEGIN
    DECLARE last DATE;
    DECLARE today DATE;
    DECLARE diff INT;

    -- Lấy ngày hiện tại
    SET today = CURDATE();

    -- Lấy last_login cũ
    SELECT DATE(last_login)
    INTO last
    FROM nguoi_dung
    WHERE ma_nguoi_dung = uid;

    -- Nếu chưa có last_login -> reset streak = 1
    IF last IS NULL THEN
        UPDATE nguoi_dung
        SET streak_days = 1,
            last_login = NOW()
        WHERE ma_nguoi_dung = uid;

    ELSE
        SET diff = DATEDIFF(today, last);

        IF diff = 0 THEN
            -- Cùng ngày, chỉ update last_login, không tăng streak
            UPDATE nguoi_dung
            SET last_login = NOW()
            WHERE ma_nguoi_dung = uid;

        ELSEIF diff = 1 THEN
            -- Liên tiếp hôm qua -> hôm nay
            UPDATE nguoi_dung
            SET streak_days = streak_days + 1,
                last_login = NOW()
            WHERE ma_nguoi_dung = uid;

        ELSE
            -- Bỏ lỡ >= 2 ngày -> reset streak
            UPDATE nguoi_dung
            SET streak_days = 1,
                last_login = NOW()
            WHERE ma_nguoi_dung = uid;
        END IF;
    END IF;
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
/*!50003 DROP PROCEDURE IF EXISTS `ThemBanSaoSach` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ThemBanSaoSach`(
  IN p_ma_sach INT,
  IN p_so_ban_sao INT,
  IN p_vi_tri VARCHAR(100),
  IN p_gia DECIMAL(10,2)
)
BEGIN
  DECLARE i INT DEFAULT 1;
  WHILE i <= p_so_ban_sao DO
    INSERT INTO ban_sao_sach (ma_sach, ma_vach, rfid, tinh_trang, vi_tri, ngay_mua, gia_mua)
    VALUES (
      p_ma_sach,
      CONCAT('S', p_ma_sach, '_', LPAD(i, 4, '0')),
      CONCAT('RFID', p_ma_sach, '_', LPAD(i, 4, '0')),
      'còn',
      p_vi_tri,
      CURDATE(),
      p_gia
    );
    SET i = i + 1;
  END WHILE;
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
/*!50003 DROP PROCEDURE IF EXISTS `UpdateFineAfterPayment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateFineAfterPayment`(IN p_ma_payment INT)
proc_end: BEGIN
  DECLARE v_uid INT;
  DECLARE v_amount DECIMAL(10,2);
  DECLARE done INT DEFAULT 0;
  DECLARE v_ma_phat INT;
  DECLARE v_phat_tien DECIMAL(10,2);
  DECLARE v_so_duoc_thanh_toan DECIMAL(10,2);
  DECLARE v_need DECIMAL(10,2);

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

  START TRANSACTION;

  -- Lấy payment info
  SELECT ma_nguoi_dung, so_tien
  INTO v_uid, v_amount
  FROM payment
  WHERE ma_payment = p_ma_payment AND trang_thai = 'thanh_cong'
  LIMIT 1
  FOR UPDATE;

  IF v_uid IS NULL THEN
    ROLLBACK;
    LEAVE proc_end;
  END IF;

  read_loop: LOOP
    -- Lấy khoản phạt chưa thanh toán sớm nhất
    SELECT ma_phat, so_tien, so_duoc_thanh_toan
    INTO v_ma_phat, v_phat_tien, v_so_duoc_thanh_toan
    FROM phat
    WHERE ma_nguoi_dung = v_uid AND trang_thai = 'Chưa thanh toán'
    ORDER BY ngay_phat ASC
    LIMIT 1
    FOR UPDATE;

    IF v_ma_phat IS NULL THEN
      LEAVE read_loop;
    END IF;

    SET v_need = v_phat_tien - v_so_duoc_thanh_toan;

    IF v_amount <= 0 THEN
      LEAVE read_loop;
    END IF;

    IF v_amount >= v_need THEN
      UPDATE phat
      SET so_duoc_thanh_toan = so_tien, trang_thai = 'Đã thanh toán'
      WHERE ma_phat = v_ma_phat;

      SET v_amount = v_amount - v_need;

      INSERT INTO notification(ma_nguoi_dung, noi_dung, ngay_gui)
      VALUES (
        v_uid,
        CONCAT('Khoản phạt #', v_ma_phat, ' đã được thanh toán ', FORMAT(v_need,0), ' VND.'),
        NOW()
      );

      INSERT INTO nhat_ky_he_thong(ma_nguoi_dung, thao_tac, thoi_gian)
      VALUES (v_uid, CONCAT('Đánh dấu phạt ', v_ma_phat, ' đã thanh toán: ', FORMAT(v_need,0), ' VND'), NOW());
    ELSE
      UPDATE phat
      SET so_duoc_thanh_toan = so_duoc_thanh_toan + v_amount
      WHERE ma_phat = v_ma_phat;

      INSERT INTO notification(ma_nguoi_dung, noi_dung, ngay_gui)
      VALUES (
        v_uid,
        CONCAT('Thanh toán một phần cho phạt #', v_ma_phat, ': ', FORMAT(v_amount,0), ' VND.'),
        NOW()
      );

      INSERT INTO nhat_ky_he_thong(ma_nguoi_dung, thao_tac, thoi_gian)
      VALUES (v_uid, CONCAT('Thanh toán một phần cho phạt ', v_ma_phat, ': ', FORMAT(v_amount,0), ' VND'), NOW());

      SET v_amount = 0;
      LEAVE read_loop;
    END IF;
  END LOOP;

  IF v_amount > 0 THEN
    INSERT INTO nhat_ky_he_thong(ma_nguoi_dung, thao_tac, thoi_gian)
    VALUES (v_uid, CONCAT('Payment #', p_ma_payment, ' còn dư sau phân bổ: ', FORMAT(v_amount,0), ' VND'), NOW());
  END IF;

  COMMIT;
END proc_end ;;
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
    IN p_gioi_tinh VARCHAR(10),           -- 'nam' | 'nữ' | 'khác'  (NULL nếu không muốn thay)
    IN p_dia_chi VARCHAR(255),
    IN p_so_dien_thoai VARCHAR(20),
    IN p_ngay_dang_ky DATETIME,
    IN p_han_the DATE,
    IN p_ma_vai_tro INT,
    IN p_ma_trang_thai INT,
    IN p_user_role INT,                   -- 1 = admin, khác = non-admin
    IN p_avatar VARCHAR(500),             -- MỚI: URL Cloudinary (NULL nếu không cập nhật)
    IN p_avatar_public_id VARCHAR(255)    -- MỚI: public_id Cloudinary (NULL nếu không có)
)
BEGIN
    -- 0. Kiểm tra người dùng tồn tại
    IF NOT EXISTS (SELECT 1 FROM nguoi_dung WHERE ma_nguoi_dung = p_ma_nguoi_dung) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Người dùng không tồn tại';
    END IF;

    -- 1. Validate số điện thoại (nếu truyền)
    IF p_so_dien_thoai IS NOT NULL AND p_so_dien_thoai NOT REGEXP '^0[0-9]+$' THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Số điện thoại không hợp lệ';
    END IF;

    -- 1.1 Validate gioi_tinh nếu truyền (tuỳ chọn)
    IF p_gioi_tinh IS NOT NULL AND p_gioi_tinh NOT IN ('nam','nữ','khác') THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Giới tính không hợp lệ';
    END IF;

    -- 2. Cập nhật theo quyền: non-admin không được thay ma_vai_tro / ma_trang_thai
    IF p_user_role <> 1 THEN
        UPDATE nguoi_dung
        SET
            ho_ten = p_ho_ten,
            email = p_email,
            mat_khau = p_mat_khau,
            ngay_sinh = p_ngay_sinh,
            gioi_tinh = CASE WHEN p_gioi_tinh IS NOT NULL THEN p_gioi_tinh ELSE gioi_tinh END,
            dia_chi = p_dia_chi,
            so_dien_thoai = p_so_dien_thoai,
            ngay_dang_ky = p_ngay_dang_ky,
            han_the = p_han_the
        WHERE ma_nguoi_dung = p_ma_nguoi_dung;
    ELSE
        -- admin: được cập nhật role + trạng thái
        UPDATE nguoi_dung
        SET
            ho_ten = p_ho_ten,
            email = p_email,
            mat_khau = p_mat_khau,
            ngay_sinh = p_ngay_sinh,
            gioi_tinh = CASE WHEN p_gioi_tinh IS NOT NULL THEN p_gioi_tinh ELSE gioi_tinh END,
            dia_chi = p_dia_chi,
            so_dien_thoai = p_so_dien_thoai,
            ngay_dang_ky = p_ngay_dang_ky,
            han_the = p_han_the,
            ma_vai_tro = p_ma_vai_tro,
            ma_trang_thai = p_ma_trang_thai
        WHERE ma_nguoi_dung = p_ma_nguoi_dung;
    END IF;

    -- 3. Nếu truyền avatar URL / public_id thì cập nhật (không bắt buộc)
    IF p_avatar IS NOT NULL OR p_avatar_public_id IS NOT NULL THEN
        UPDATE nguoi_dung
        SET
            avatar = CASE WHEN p_avatar IS NOT NULL THEN p_avatar ELSE avatar END,
            avatar_public_id = CASE WHEN p_avatar_public_id IS NOT NULL THEN p_avatar_public_id ELSE avatar_public_id END
        WHERE ma_nguoi_dung = p_ma_nguoi_dung;
    END IF;

    -- 4. Trả về bản ghi sau khi cập nhật để backend dễ dùng
    SELECT
      ma_nguoi_dung, ho_ten, email, ngay_sinh, gioi_tinh, dia_chi,
      so_dien_thoai, ngay_dang_ky, han_the, anh_dai_dien, avatar, avatar_public_id,
      ma_vai_tro, ma_trang_thai, is_vip, vip_from, vip_to, last_login, streak_days
    FROM nguoi_dung
    WHERE ma_nguoi_dung = p_ma_nguoi_dung;
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
    IN p_hinh_bia_public_id VARCHAR(255),
    IN p_ma_nxb INT,
    IN p_ma_danh_muc INT,
    IN p_ma_the_loai INT,
    IN p_ma_ngon_ngu INT,
    IN p_ma_khu_vuc INT,
    IN p_ma_ncc INT,
    IN p_trang_thai ENUM('Hoạt động', 'Ngưng hoạt động','khóa')
)
BEGIN
    UPDATE sach
    SET
        tieu_de = p_tieu_de,
        tac_gia = p_tac_gia,
        ISBN = p_ISBN,
        so_luong = p_so_luong,
        so_trang = p_so_trang,
        mo_ta = p_mo_ta,
        hinh_bia = p_hinh_bia,
        hinh_bia_public_id = p_hinh_bia_public_id,
        ma_nxb = p_ma_nxb,
        ma_danh_muc = p_ma_danh_muc,
        ma_the_loai = p_ma_the_loai,
        ma_ngon_ngu = p_ma_ngon_ngu,
        ma_khu_vuc = p_ma_khu_vuc,
        ma_ncc = p_ma_ncc,
        trang_thai = IFNULL(p_trang_thai, trang_thai)
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
-- Final view structure for view `vw_lich_su_muon`
--

/*!50001 DROP VIEW IF EXISTS `vw_lich_su_muon`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_lich_su_muon` AS select `pm`.`ma_phieu_muon` AS `ma_phieu_muon`,`pm`.`ma_nguoi_dung` AS `ma_nguoi_dung`,`pm`.`ngay_muon` AS `ngay_muon`,`pm`.`ngay_hen_tra` AS `han_tra`,`pm`.`trang_thai` AS `trang_thai_phieu`,`ct`.`id` AS `ma_chi_tiet`,`s`.`tieu_de` AS `ten_sach`,`ct`.`so_luong` AS `so_luong`,`ct`.`ngay_tra_thuc_te` AS `ngay_tra_thuc_te`,(case when (`ct`.`da_tra` = 1) then 'Đã trả' else 'Chưa trả' end) AS `trang_thai_sach`,ifnull(`p`.`so_tien`,0) AS `tien_phat`,`p`.`ly_do` AS `ly_do_phat`,`p`.`trang_thai` AS `trang_thai_phat` from (((`phieu_muon` `pm` join `chi_tiet_muon` `ct` on((`pm`.`ma_phieu_muon` = `ct`.`ma_phieu_muon`))) join `sach` `s` on((`ct`.`ma_sach` = `s`.`ma_sach`))) left join `phat` `p` on((`pm`.`ma_phieu_muon` = `p`.`ma_phieu_muon`))) */;
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

-- Dump completed on 2025-10-20 15:23:22
