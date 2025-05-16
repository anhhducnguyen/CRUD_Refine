-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: auth_service_db
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT 'GOOGLE_SSO',
  `username` varchar(255) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expiry` bigint DEFAULT NULL,
  `role` enum('student','teacher','admin') NOT NULL DEFAULT 'student',
  `google_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_google_id_unique` (`google_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21012479 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES (2,'maingan@gmail.com','$2b$10$Sv/FJ/8ktO/PzcSxdh79COVPh49miF3zYZheClW41Fj5t1OW9Sp8O',NULL,NULL,NULL,'student',NULL,'2025-05-05 01:41:20','2025-05-05 01:41:20'),(3,'testuser@example.com','$2b$10$qVBogggvsyW/Bj161U03f.n8eB8rnQfWIZoVslMgBe6LPJeFaPMW.','testuser',NULL,NULL,'student',NULL,'2025-05-08 00:57:05','2025-05-08 00:57:05'),(4,'testuser2@example.com','$2b$10$oYf0LK84ZnYrFUk60kmm9OU363UPWVbXkHwWa8BIRZkF0EA7uUdh.','testuser2',NULL,NULL,'student',NULL,'2025-05-08 01:06:46','2025-05-08 01:06:46'),(7,'testuser3@example.com','$2b$10$lcEDMknVADnYTyfMgeJxKeewYsjSrHX2Kgp5suCFMDn/yz3csLp8u','testuser3',NULL,NULL,'student',NULL,'2025-05-08 01:18:02','2025-05-08 01:18:02'),(8,'testuser3example.com','$2b$10$/Q/h2kT5QqQD1/imVfS3au2Cacj528Sj9/PTTwstT1g4LiU.zttVm','testuser3example.com',NULL,NULL,'student',NULL,'2025-05-08 01:19:15','2025-05-08 01:19:15'),(10,'testuser5@example.com','$2b$10$bRS4dcHRI/Fg0a6iILA5ZOCmNnhiJpfdD3inzZyVl9DYPA3yoHFBW','testuser5',NULL,NULL,'student',NULL,'2025-05-08 01:23:17','2025-05-08 01:23:17'),(11,'testuser6@example.com','$2b$10$QHNQNa2YHglBB3BdtqA3/ObW4Lk3iutzFQ.v3oFV1C2F63BmOxMVK','testuser6',NULL,NULL,'student',NULL,'2025-05-08 01:26:36','2025-05-08 01:26:36'),(21012477,'testuser9@example.com','$2b$10$n6oPiern17Z5XbOp47.8me2K7wr.An5EDtliXDsWkOhi6tkSOfwZa','testuser9',NULL,NULL,'student',NULL,'2025-05-08 01:26:51','2025-05-08 01:26:51'),(21012478,'anhnguyen2k373@gmail.com','$2b$10$OuQPArFMaQ4V2pOGQhl1e.JZ1TH2VdSQQan9GNWWXqO8MO90OhMmK','ducanh','cde3e81e24d7492c545816663fda4a310778a66a336558c1932e0a3aebb04615',1747245473331,'admin',NULL,'2025-04-17 07:55:00','2025-04-17 07:55:00');
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_attendance`
--

DROP TABLE IF EXISTS `exam_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_attendance` (
  `attendance_id` int unsigned NOT NULL AUTO_INCREMENT,
  `schedule_id` int NOT NULL,
  `student_id` int NOT NULL,
  `is_present` tinyint(1) NOT NULL DEFAULT '0',
  `violation_id` int DEFAULT NULL,
  `reported_by` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`attendance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_attendance`
--

LOCK TABLES `exam_attendance` WRITE;
/*!40000 ALTER TABLE `exam_attendance` DISABLE KEYS */;
INSERT INTO `exam_attendance` VALUES (1,1,21012478,1,NULL,9001,'2025-05-13 03:49:35','2025-05-13 03:49:35'),(2,1,21012477,0,NULL,9001,'2025-05-13 03:49:35','2025-05-13 03:49:35'),(3,1,103,1,5,9002,'2025-05-13 03:49:35','2025-05-13 03:49:35'),(4,2,104,1,NULL,9003,'2025-05-13 03:49:35','2025-05-13 03:49:35');
/*!40000 ALTER TABLE `exam_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_rooms`
--

DROP TABLE IF EXISTS `exam_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam_rooms` (
  `room_id` int NOT NULL AUTO_INCREMENT,
  `room_name` varchar(50) NOT NULL,
  `capacity` int NOT NULL,
  PRIMARY KEY (`room_id`),
  UNIQUE KEY `room_name` (`room_name`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_rooms`
--

LOCK TABLES `exam_rooms` WRITE;
/*!40000 ALTER TABLE `exam_rooms` DISABLE KEYS */;
INSERT INTO `exam_rooms` VALUES (101,'A2_203',40),(102,'A2_204',40);
/*!40000 ALTER TABLE `exam_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exams_chedules`
--

DROP TABLE IF EXISTS `exams_chedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exams_chedules` (
  `schedule_id` int unsigned NOT NULL AUTO_INCREMENT,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `room_id` int unsigned NOT NULL,
  `invigilator_id` int unsigned DEFAULT NULL,
  `student_id` int unsigned DEFAULT NULL,
  `created_by` int unsigned NOT NULL,
  `status` enum('scheduled','completed','cancelled') NOT NULL DEFAULT 'scheduled',
  `name_schedule` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exams_chedules`
--

LOCK TABLES `exams_chedules` WRITE;
/*!40000 ALTER TABLE `exams_chedules` DISABLE KEYS */;
INSERT INTO `exams_chedules` VALUES (1,'2025-05-20 08:00:00','2025-05-20 10:00:00',101,9001,21012478,1,'scheduled','Big data integration and analysis'),(2,'2025-05-20 13:00:00','2025-05-20 15:00:00',102,9002,21012477,1,'scheduled','Software design analysis'),(3,'2025-05-21 08:00:00','2025-05-21 10:00:00',101,9001,21012476,2,'completed','Toan Cao Cap'),(4,'2025-05-22 08:00:00','2025-05-22 10:00:00',102,9001,21012475,2,'cancelled','Vat Ly '),(5,'2025-05-20 10:30:00','2025-05-20 12:30:00',101,9002,21012479,1,'scheduled','Machine Learning'),(6,'2025-05-21 13:00:00','2025-05-21 15:00:00',102,9001,21012480,2,'scheduled','Artificial Intelligence'),(7,'2025-05-22 13:00:00','2025-05-22 15:00:00',101,9002,21012481,2,'completed','He Thong Nhung'),(8,'2025-05-23 08:00:00','2025-05-23 10:00:00',102,9001,21012482,1,'cancelled','An Toan Thong Tin');
/*!40000 ALTER TABLE `exams_chedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knex_migrations`
--

DROP TABLE IF EXISTS `knex_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knex_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int DEFAULT NULL,
  `migration_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knex_migrations`
--

LOCK TABLES `knex_migrations` WRITE;
/*!40000 ALTER TABLE `knex_migrations` DISABLE KEYS */;
INSERT INTO `knex_migrations` VALUES (1,'20250417045229_create_users_table.js',1,'2025-04-17 07:54:45'),(8,'20250416154747_create_users_table.js',2,'2025-05-13 03:49:30'),(9,'20250429231049_create_exam_attendance_table.js',2,'2025-05-13 03:49:30'),(10,'20250506132106_create_examschedules_table.js',3,'2025-05-13 04:01:24');
/*!40000 ALTER TABLE `knex_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `knex_migrations_lock`
--

DROP TABLE IF EXISTS `knex_migrations_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `knex_migrations_lock` (
  `index` int unsigned NOT NULL AUTO_INCREMENT,
  `is_locked` int DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knex_migrations_lock`
--

LOCK TABLES `knex_migrations_lock` WRITE;
/*!40000 ALTER TABLE `knex_migrations_lock` DISABLE KEYS */;
INSERT INTO `knex_migrations_lock` VALUES (1,0);
/*!40000 ALTER TABLE `knex_migrations_lock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'Chí','Trần',30,'male','https://i.pravatar.cc/150?img=40','2025-05-14 05:19:35','2025-05-14 05:19:35'),(5,'Hải','Nguyễn',42,'female','https://i.pravatar.cc/150?img=29','2025-05-14 05:19:35','2025-05-14 05:19:35'),(6,'An','Lê',22,'female','https://i.pravatar.cc/150?img=39','2025-05-14 05:19:35','2025-05-14 05:19:35'),(7,'Hải','Lê',22,'female','https://i.pravatar.cc/150?img=30','2025-05-14 05:19:35','2025-05-14 05:19:35'),(8,'Bình','Nguyễn',20,'female','https://i.pravatar.cc/150?img=26','2025-05-14 05:19:35','2025-05-14 05:19:35'),(9,'Dũng','Trần',55,'male','https://i.pravatar.cc/150?img=21','2025-05-14 05:19:35','2025-05-14 05:19:35'),(10,'Hải','Phạm',23,'male','https://i.pravatar.cc/150?img=12','2025-05-14 05:19:35','2025-05-14 05:19:35'),(11,'Hải','Hoàng',60,'male','https://i.pravatar.cc/150?img=59','2025-05-14 05:19:35','2025-05-14 05:19:35'),(12,'Dũng','Hoàng',55,'male','https://i.pravatar.cc/150?img=15','2025-05-14 05:19:35','2025-05-14 05:19:35'),(13,'Hải','Nguyễn',48,'male','https://i.pravatar.cc/150?img=4','2025-05-14 05:19:35','2025-05-14 05:19:35'),(14,'Chí','Lê',43,'female','https://i.pravatar.cc/150?img=56','2025-05-14 05:19:35','2025-05-14 05:19:35'),(15,'Hải','Phạm',23,'female','https://i.pravatar.cc/150?img=11','2025-05-14 05:19:35','2025-05-14 05:19:35'),(16,'Bình','Lê',33,'female','https://i.pravatar.cc/150?img=60','2025-05-14 05:19:35','2025-05-14 05:19:35'),(17,'Bình','Hoàng',18,'male','https://i.pravatar.cc/150?img=26','2025-05-14 05:19:35','2025-05-14 05:19:35'),(18,'Chí','Hoàng',37,'female','https://i.pravatar.cc/150?img=36','2025-05-14 05:19:35','2025-05-14 05:19:35'),(19,'An','Lê',50,'male','https://i.pravatar.cc/150?img=34','2025-05-14 05:19:35','2025-05-14 05:19:35'),(20,'Bình','Trần',54,'male','https://i.pravatar.cc/150?img=48','2025-05-14 05:19:35','2025-05-14 05:19:35'),(21,'Bình','Lê',25,'female','https://i.pravatar.cc/150?img=60','2025-05-14 05:19:35','2025-05-14 05:19:35'),(22,'An','Lê',46,'female','https://i.pravatar.cc/150?img=65','2025-05-14 05:19:35','2025-05-14 05:19:35'),(23,'Dũng','Lê',39,'male','https://i.pravatar.cc/150?img=56','2025-05-14 05:19:35','2025-05-14 05:19:35'),(24,'Dũng','Lê',54,'female','https://i.pravatar.cc/150?img=29','2025-05-14 05:19:35','2025-05-14 05:19:35'),(25,'An','Nguyễn',43,'male','https://i.pravatar.cc/150?img=46','2025-05-14 05:19:35','2025-05-14 05:19:35'),(26,'Dũng','Nguyễn',50,'female','https://i.pravatar.cc/150?img=19','2025-05-14 05:19:35','2025-05-14 05:19:35'),(27,'An','Nguyễn',34,'male','https://i.pravatar.cc/150?img=22','2025-05-14 05:19:35','2025-05-14 05:19:35'),(28,'Dũng','Lê',49,'female','https://i.pravatar.cc/150?img=41','2025-05-14 05:19:35','2025-05-14 05:19:35'),(29,'An','Trần',36,'male','https://i.pravatar.cc/150?img=13','2025-05-14 05:19:35','2025-05-14 05:19:35'),(30,'Hải','Lê',24,'female','https://i.pravatar.cc/150?img=9','2025-05-14 05:19:35','2025-05-14 05:19:35'),(31,'An','Phạm',54,'female','https://i.pravatar.cc/150?img=61','2025-05-14 05:19:35','2025-05-14 05:19:35'),(32,'Dũng','Hoàng',19,'female','https://i.pravatar.cc/150?img=30','2025-05-14 05:19:35','2025-05-14 05:19:35'),(33,'Hải','Phạm',32,'female','https://i.pravatar.cc/150?img=30','2025-05-14 05:19:35','2025-05-14 05:19:35'),(34,'An','Hoàng',39,'female','https://i.pravatar.cc/150?img=20','2025-05-14 05:19:35','2025-05-14 05:19:35'),(35,'An','Phạm',22,'male','https://i.pravatar.cc/150?img=6','2025-05-14 05:19:35','2025-05-14 05:19:35'),(36,'Hải','Lê',38,'male','https://i.pravatar.cc/150?img=60','2025-05-14 05:19:35','2025-05-14 05:19:35'),(37,'An','Phạm',39,'male','https://i.pravatar.cc/150?img=56','2025-05-14 05:19:35','2025-05-14 05:19:35'),(38,'Bình','Phạm',18,'female','https://i.pravatar.cc/150?img=27','2025-05-14 05:19:35','2025-05-14 05:19:35'),(39,'Bình','Hoàng',28,'male','https://i.pravatar.cc/150?img=45','2025-05-14 05:19:35','2025-05-14 05:19:35'),(40,'Bình','Hoàng',60,'female','https://i.pravatar.cc/150?img=52','2025-05-14 05:19:35','2025-05-14 05:19:35'),(41,'An','Nguyễn',33,'male','https://i.pravatar.cc/150?img=24','2025-05-14 05:19:35','2025-05-14 05:19:35'),(42,'Bình','Nguyễn',27,'female','https://i.pravatar.cc/150?img=69','2025-05-14 05:19:35','2025-05-14 05:19:35'),(43,'Bình','Phạm',36,'male','https://i.pravatar.cc/150?img=16','2025-05-14 05:19:35','2025-05-14 05:19:35'),(44,'Dũng','Trần',20,'male','https://i.pravatar.cc/150?img=3','2025-05-14 05:19:35','2025-05-14 05:19:35'),(45,'Hải','Nguyễn',27,'female','https://i.pravatar.cc/150?img=44','2025-05-14 05:19:35','2025-05-14 05:19:35'),(46,'An','Hoàng',53,'female','https://i.pravatar.cc/150?img=40','2025-05-14 05:19:35','2025-05-14 05:19:35'),(47,'Hải','Nguyễn',49,'male','https://i.pravatar.cc/150?img=12','2025-05-14 05:19:35','2025-05-14 05:19:35'),(48,'An','Phạm',34,'female','https://i.pravatar.cc/150?img=68','2025-05-14 05:19:35','2025-05-14 05:19:35'),(49,'Bình','Phạm',56,'male','https://i.pravatar.cc/150?img=6','2025-05-14 05:19:35','2025-05-14 05:19:35'),(50,'Hải','Trần',60,'female','https://i.pravatar.cc/150?img=41','2025-05-14 05:19:35','2025-05-14 05:19:35'),(51,'An','Nguyễn',32,'male','https://i.pravatar.cc/150?img=43','2025-05-14 05:19:35','2025-05-14 05:19:35'),(52,'Dũng','Lê',49,'male','https://i.pravatar.cc/150?img=61','2025-05-14 05:19:35','2025-05-14 05:19:35'),(53,'Bình','Hoàng',33,'male','https://i.pravatar.cc/150?img=17','2025-05-14 05:19:35','2025-05-14 05:19:35'),(54,'Bình','Nguyễn',53,'female','https://i.pravatar.cc/150?img=9','2025-05-14 05:19:35','2025-05-14 05:19:35'),(55,'An','Hoàng',39,'female','https://i.pravatar.cc/150?img=9','2025-05-14 05:19:35','2025-05-14 05:19:35'),(56,'Chí','Phạm',40,'male','https://i.pravatar.cc/150?img=12','2025-05-14 05:19:35','2025-05-14 05:19:35'),(57,'Dũng','Trần',28,'male','https://i.pravatar.cc/150?img=58','2025-05-14 05:19:35','2025-05-14 05:19:35'),(58,'Bình','Lê',20,'female','https://i.pravatar.cc/150?img=30','2025-05-14 05:19:35','2025-05-14 05:19:35'),(59,'Hải','Lê',45,'female','https://i.pravatar.cc/150?img=52','2025-05-14 05:19:35','2025-05-14 05:19:35'),(60,'Chí','Nguyễn',58,'female','https://i.pravatar.cc/150?img=70','2025-05-14 05:19:35','2025-05-14 05:19:35'),(61,'Bình','Trần',33,'male','https://i.pravatar.cc/150?img=40','2025-05-14 05:19:35','2025-05-14 05:19:35'),(62,'Chí','Lê',19,'female','https://i.pravatar.cc/150?img=65','2025-05-14 05:19:35','2025-05-14 05:19:35'),(63,'An','Nguyễn',20,'female','https://i.pravatar.cc/150?img=27','2025-05-14 05:19:35','2025-05-14 05:19:35'),(64,'An','Phạm',49,'female','https://i.pravatar.cc/150?img=33','2025-05-14 05:19:35','2025-05-14 05:19:35'),(65,'An','Trần',26,'female','https://i.pravatar.cc/150?img=23','2025-05-14 05:19:35','2025-05-14 05:19:35'),(66,'Dũng','Lê',27,'female','https://i.pravatar.cc/150?img=10','2025-05-14 05:19:35','2025-05-14 05:19:35'),(67,'Chí','Lê',49,'female','https://i.pravatar.cc/150?img=37','2025-05-14 05:19:35','2025-05-14 05:19:35'),(68,'Dũng','Nguyễn',31,'male','https://i.pravatar.cc/150?img=36','2025-05-14 05:19:35','2025-05-14 05:19:35'),(69,'Dũng','Phạm',33,'female','https://i.pravatar.cc/150?img=8','2025-05-14 05:19:35','2025-05-14 05:19:35'),(70,'An','Hoàng',37,'male','https://i.pravatar.cc/150?img=67','2025-05-14 05:19:35','2025-05-14 05:19:35'),(71,'Bình','Nguyễn',38,'female','https://i.pravatar.cc/150?img=37','2025-05-14 05:19:35','2025-05-14 05:19:35'),(72,'Dũng','Lê',18,'male','https://i.pravatar.cc/150?img=34','2025-05-14 05:19:35','2025-05-14 05:19:35'),(73,'Chí','Nguyễn',48,'male','https://i.pravatar.cc/150?img=3','2025-05-14 05:19:35','2025-05-14 05:19:35'),(74,'Hải','Trần',53,'male','https://i.pravatar.cc/150?img=63','2025-05-14 05:19:35','2025-05-14 05:19:35'),(75,'Dũng','Lê',49,'male','https://i.pravatar.cc/150?img=66','2025-05-14 05:19:35','2025-05-14 05:19:35'),(76,'Dũng','Trần',20,'male','https://i.pravatar.cc/150?img=26','2025-05-14 05:19:35','2025-05-14 05:19:35'),(77,'Chí','Lê',40,'male','https://i.pravatar.cc/150?img=21','2025-05-14 05:19:35','2025-05-14 05:19:35'),(78,'Bình','Phạm',59,'male','https://i.pravatar.cc/150?img=39','2025-05-14 05:19:35','2025-05-14 05:19:35'),(79,'Bình','Phạm',49,'female','https://i.pravatar.cc/150?img=31','2025-05-14 05:19:35','2025-05-14 05:19:35'),(80,'Dũng','Phạm',18,'female','https://i.pravatar.cc/150?img=54','2025-05-14 05:19:35','2025-05-14 05:19:35'),(81,'Chí','Lê',40,'male','https://i.pravatar.cc/150?img=7','2025-05-14 05:19:35','2025-05-14 05:19:35'),(82,'Chí','Hoàng',34,'male','https://i.pravatar.cc/150?img=25','2025-05-14 05:19:35','2025-05-14 05:19:35'),(83,'Chí','Nguyễn',19,'male','https://i.pravatar.cc/150?img=4','2025-05-14 05:19:35','2025-05-14 05:19:35'),(84,'An','Lê',58,'male','https://i.pravatar.cc/150?img=60','2025-05-14 05:19:35','2025-05-14 05:19:35'),(85,'Bình','Phạm',19,'female','https://i.pravatar.cc/150?img=29','2025-05-14 05:19:35','2025-05-14 05:19:35'),(86,'Bình','Trần',53,'male','https://i.pravatar.cc/150?img=67','2025-05-14 05:19:35','2025-05-14 05:19:35'),(87,'Chí','Phạm',52,'female','https://i.pravatar.cc/150?img=40','2025-05-14 05:19:35','2025-05-14 05:19:35'),(88,'Hải','Phạm',50,'female','https://i.pravatar.cc/150?img=39','2025-05-14 05:19:35','2025-05-14 05:19:35'),(89,'Chí','Lê',25,'male','https://i.pravatar.cc/150?img=38','2025-05-14 05:19:35','2025-05-14 05:19:35'),(90,'Chí','Lê',39,'female','https://i.pravatar.cc/150?img=33','2025-05-14 05:19:35','2025-05-14 05:19:35'),(91,'Hải','Trần',20,'male','https://i.pravatar.cc/150?img=50','2025-05-14 05:19:35','2025-05-14 05:19:35'),(92,'Hải','Phạm',54,'male','https://i.pravatar.cc/150?img=33','2025-05-14 05:19:35','2025-05-14 05:19:35'),(93,'Bình','Nguyễn',19,'female','https://i.pravatar.cc/150?img=55','2025-05-14 05:19:35','2025-05-14 05:19:35'),(94,'An','Trần',35,'female','https://i.pravatar.cc/150?img=46','2025-05-14 05:19:35','2025-05-14 05:19:35'),(95,'Bình','Phạm',34,'female','https://i.pravatar.cc/150?img=37','2025-05-14 05:19:35','2025-05-14 05:19:35'),(96,'Dũng','Trần',41,'female','https://i.pravatar.cc/150?img=12','2025-05-14 05:19:35','2025-05-14 05:19:35'),(97,'An','Nguyễn',36,'female','https://i.pravatar.cc/150?img=1','2025-05-14 05:19:35','2025-05-14 05:19:35'),(98,'An','Trần',37,'male','https://i.pravatar.cc/150?img=11','2025-05-14 05:19:35','2025-05-14 05:19:35'),(99,'Hải','Lê',39,'female','https://i.pravatar.cc/150?img=8','2025-05-14 05:19:35','2025-05-14 05:19:35'),(100,'Chí','Phạm',26,'female','https://i.pravatar.cc/150?img=10','2025-05-14 05:19:35','2025-05-14 05:19:35'),(101,'John','Doe',28,'male',NULL,'2025-05-15 03:56:45','2025-05-15 03:56:45'),(102,'John','Doe',28,'male',NULL,'2025-05-15 04:00:27','2025-05-15 04:00:27');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-17  0:12:12
