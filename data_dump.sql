-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: echo_sign
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('afaae54e-4b21-4442-bc8d-0359b1068f7b','632939d69a722fd4145be8f8723c8d1d754ef273924beb9c4486e9191797a181','2024-12-25 15:01:54.074','20241225100248_add_deleted_at',NULL,NULL,'2024-12-25 15:01:53.673',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meetings`
--

DROP TABLE IF EXISTS `meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meetings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creator_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meetings_creator_id_foreign` (`creator_id`),
  CONSTRAINT `meetings_creator_id_foreign` FOREIGN KEY (`creator_id`) REFERENCES `participants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meetings`
--

LOCK TABLES `meetings` WRITE;
/*!40000 ALTER TABLE `meetings` DISABLE KEYS */;
INSERT INTO `meetings` VALUES (1,'Emergency Meeting',1,'2024-12-25 15:02:16',NULL),(2,'Meeting 02',9,'2024-12-28 07:42:09',NULL),(3,'Sigma Males Meeting',12,'2024-12-28 08:23:50',NULL),(4,'rr',28,'2024-12-29 16:35:48',NULL),(5,'Workshop 2 Meeting',40,'2025-01-05 10:12:25',NULL),(6,'Workshop Meeting',48,'2025-01-10 08:37:52',NULL),(7,'Work Meeting',51,'2025-01-10 08:39:02',NULL),(8,'Sigma Males Meeting',63,'2025-01-11 11:03:40',NULL),(9,'Sigma Males Meeting',71,'2025-01-11 14:56:05',NULL),(10,'Sigma Males Meeting',82,'2025-01-11 16:18:33',NULL),(11,'Annual Meeting',85,'2025-01-12 15:11:20',NULL),(12,'BIM Class',87,'2025-01-13 13:43:48',NULL),(13,'Workshop 2 Meeting',89,'2025-01-14 02:18:59',NULL),(14,'Workshop 2 Meeting',92,'2025-01-14 02:25:59',NULL),(15,'sd',94,'2025-01-14 02:27:51',NULL),(16,'Sign Language Class 01',98,'2025-01-14 10:57:55',NULL),(17,'Responsive Design Class ',102,'2025-01-18 11:01:43',NULL),(18,'Workshop 2 Meeting',113,'2025-01-18 14:57:53',NULL),(19,'Testing EchoSign',121,'2025-01-20 04:07:15',NULL),(20,'Testing New Model',125,'2025-01-20 04:20:10',NULL),(21,'Testing New Model',127,'2025-01-20 04:28:33',NULL);
/*!40000 ALTER TABLE `meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants`
--

DROP TABLE IF EXISTS `participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participants` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants`
--

LOCK TABLES `participants` WRITE;
/*!40000 ALTER TABLE `participants` DISABLE KEYS */;
INSERT INTO `participants` VALUES (1,'Fei','2024-12-25 15:02:16',NULL),(2,'james','2024-12-25 15:02:53',NULL),(3,'jake','2024-12-25 15:03:02',NULL),(4,'Fei','2024-12-25 15:23:25',NULL),(5,'Jake','2024-12-25 15:38:01',NULL),(6,'Bruce Wayne','2024-12-26 08:30:16',NULL),(7,'Bruce Wayne ','2024-12-26 08:41:32',NULL),(8,'Feii','2024-12-26 08:50:51',NULL),(9,'Fei','2024-12-28 07:42:09',NULL),(10,'Fei','2024-12-28 07:42:11',NULL),(11,'Bruce Wayne','2024-12-28 07:45:18',NULL),(12,'Skibidi Toilet','2024-12-28 08:23:50',NULL),(13,'Skibidi Toilet','2024-12-28 08:23:51',NULL),(14,'Fei','2024-12-28 08:25:55',NULL),(15,'Bruce Wayne ','2024-12-29 04:19:58',NULL),(16,'FEi','2024-12-29 07:43:31',NULL),(17,'James','2024-12-29 14:05:38',NULL),(18,'Handsome','2024-12-29 14:06:08',NULL),(19,'Hansen','2024-12-29 14:09:51',NULL),(20,'John','2024-12-29 14:13:47',NULL),(21,'Hello World','2024-12-29 14:28:53',NULL),(22,'dev1','2024-12-29 14:29:05',NULL),(23,'admin1','2024-12-29 14:29:12',NULL),(24,'FDFF','2024-12-29 15:41:04',NULL),(25,'Chee','2024-12-29 15:47:13',NULL),(26,'user1','2024-12-29 15:52:39',NULL),(27,'fffff','2024-12-29 16:17:38',NULL),(28,'FDFF','2024-12-29 16:35:48',NULL),(29,'FDFF','2024-12-29 16:35:49',NULL),(30,'Chee','2024-12-29 16:36:52',NULL),(31,'ffff','2024-12-29 16:44:09',NULL),(32,'ee','2024-12-29 16:44:29',NULL),(33,'rrr','2024-12-29 16:44:41',NULL),(34,'ffdsdf','2024-12-29 16:45:25',NULL),(35,'John Doe','2025-01-05 09:31:11',NULL),(36,'Jason','2025-01-05 10:08:58',NULL),(37,'Jennie','2025-01-05 10:09:13',NULL),(38,'Thomas','2025-01-05 10:09:37',NULL),(39,'Thomas','2025-01-05 10:11:30',NULL),(40,'Thomas','2025-01-05 10:12:25',NULL),(41,'Thomas','2025-01-05 10:12:26',NULL),(42,'Jennie','2025-01-05 10:13:32',NULL),(43,'Fei','2025-01-05 10:17:11',NULL),(44,'dev1','2025-01-05 10:18:27',NULL),(45,'Bruce','2025-01-05 10:18:52',NULL),(46,'Skibidi Toilet','2025-01-09 04:43:25',NULL),(47,'Fei0716','2025-01-09 05:14:24',NULL),(48,'Fei','2025-01-10 08:37:52',NULL),(49,'Fei','2025-01-10 08:38:10',NULL),(50,'Fei','2025-01-10 08:38:10',NULL),(51,'Fei','2025-01-10 08:39:02',NULL),(52,'Fei','2025-01-10 08:39:03',NULL),(53,'admin1','2025-01-10 08:44:16',NULL),(54,'dev1','2025-01-10 08:44:45',NULL),(55,'Fei0716','2025-01-10 09:16:10',NULL),(56,'user1','2025-01-10 09:36:12',NULL),(57,'asd','2025-01-10 09:58:15',NULL),(58,'sasda','2025-01-10 10:00:01',NULL),(59,'asd','2025-01-10 10:02:23',NULL),(60,'asd','2025-01-10 10:02:23',NULL),(61,'user1','2025-01-11 10:56:35',NULL),(62,'Skibidi Toilet','2025-01-11 10:58:58',NULL),(63,'Fei','2025-01-11 11:03:40',NULL),(64,'Fei','2025-01-11 11:03:47',NULL),(65,'dev1','2025-01-11 11:06:12',NULL),(66,'Fei0716','2025-01-11 11:06:44',NULL),(67,'Skibidi Toilet','2025-01-11 11:09:42',NULL),(68,'user1','2025-01-11 14:49:48',NULL),(69,'Jason','2025-01-11 14:50:34',NULL),(70,'Sigma Boy','2025-01-11 14:51:20',NULL),(71,'Fei','2025-01-11 14:56:05',NULL),(72,'Fei','2025-01-11 14:56:17',NULL),(73,'Skibidi Toilet','2025-01-11 14:57:40',NULL),(74,'Jason','2025-01-11 14:57:55',NULL),(75,'Sigma Boy','2025-01-11 15:20:23',NULL),(76,'Skibidi Toilet','2025-01-11 15:21:27',NULL),(77,'user1','2025-01-11 15:25:59',NULL),(78,'Siuuu','2025-01-11 15:30:02',NULL),(79,'admin1','2025-01-11 16:13:14',NULL),(80,'asd','2025-01-11 16:15:42',NULL),(81,'Fei0716','2025-01-11 16:17:47',NULL),(82,'Fei','2025-01-11 16:18:33',NULL),(83,'Fei','2025-01-11 16:18:34',NULL),(84,'user1','2025-01-11 16:47:52',NULL),(85,'Patrick Bateman','2025-01-12 15:11:20',NULL),(86,'Patrick Bateman','2025-01-12 15:11:24',NULL),(87,'Jennie','2025-01-13 13:43:47',NULL),(88,'Jennie','2025-01-13 13:44:00',NULL),(89,'Fei','2025-01-14 02:18:59',NULL),(90,'Fei','2025-01-14 02:19:04',NULL),(91,'dev1','2025-01-14 02:24:47',NULL),(92,'Fei','2025-01-14 02:25:59',NULL),(93,'Fei','2025-01-14 02:26:00',NULL),(94,'Fauziah','2025-01-14 02:27:51',NULL),(95,'dev1','2025-01-14 02:28:19',NULL),(96,'Json','2025-01-14 02:37:24',NULL),(97,'Jennie','2025-01-14 02:37:30',NULL),(98,'Fei','2025-01-14 10:57:55',NULL),(99,'Fei','2025-01-14 10:57:58',NULL),(100,'Bruce Wayne ','2025-01-14 11:01:42',NULL),(101,'hehe','2025-01-18 10:57:24',NULL),(102,'Fei','2025-01-18 11:01:43',NULL),(103,'Fei','2025-01-18 11:01:45',NULL),(104,'Bruce Wayne ','2025-01-18 11:04:23',NULL),(105,'dev1','2025-01-18 11:05:49',NULL),(106,'user1','2025-01-18 11:12:15',NULL),(107,'Fei0716','2025-01-18 11:12:45',NULL),(108,'Skibidi','2025-01-18 11:23:16',NULL),(109,'admin1','2025-01-18 14:37:37',NULL),(110,'asd','2025-01-18 14:39:06',NULL),(111,'Fei0716','2025-01-18 14:48:50',NULL),(112,'user1','2025-01-18 14:53:19',NULL),(113,'Fei','2025-01-18 14:57:53',NULL),(114,'Fei','2025-01-18 14:57:55',NULL),(115,'Bruce Wayne ','2025-01-18 14:58:29',NULL),(116,'admin1','2025-01-18 15:02:01',NULL),(117,'asdasd','2025-01-18 15:02:37',NULL),(118,'dev1','2025-01-18 15:09:19',NULL),(119,'Murdock','2025-01-18 15:11:31',NULL),(120,'Bruce Wayne','2025-01-18 15:15:47',NULL),(121,'Bruce Wayne','2025-01-20 04:07:15',NULL),(122,'Bruce Wayne','2025-01-20 04:08:18',NULL),(123,'Fei','2025-01-20 04:12:57',NULL),(124,'Skibidi Toilet','2025-01-20 04:13:53',NULL),(125,'Bruce Wayne','2025-01-20 04:20:10',NULL),(126,'Bruce Wayne','2025-01-20 04:20:23',NULL),(127,'Bruce Wayne','2025-01-20 04:28:33',NULL),(128,'Bruce Wayne','2025-01-20 04:28:45',NULL);
/*!40000 ALTER TABLE `participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participants_meetings`
--

DROP TABLE IF EXISTS `participants_meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `participants_meetings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `participant_id` bigint unsigned NOT NULL,
  `meeting_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `participants_meetings_meeting_id_foreign` (`meeting_id`),
  KEY `participants_meetings_participant_id_foreign` (`participant_id`),
  CONSTRAINT `participants_meetings_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE,
  CONSTRAINT `participants_meetings_participant_id_foreign` FOREIGN KEY (`participant_id`) REFERENCES `participants` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participants_meetings`
--

LOCK TABLES `participants_meetings` WRITE;
/*!40000 ALTER TABLE `participants_meetings` DISABLE KEYS */;
INSERT INTO `participants_meetings` VALUES (1,2,1,'2024-12-25 15:02:53','2024-12-25 15:16:27','2024-12-25 15:16:27'),(2,3,1,'2024-12-25 15:03:02','2024-12-25 15:03:15','2024-12-25 15:03:15'),(3,4,1,'2024-12-25 15:23:25','2024-12-28 04:46:13','2024-12-28 04:46:13'),(4,5,1,'2024-12-25 15:38:01','2025-01-11 14:54:40','2025-01-11 14:54:40'),(5,6,1,'2024-12-26 08:30:16','2024-12-27 16:56:37','2024-12-27 16:56:37'),(6,7,1,'2024-12-26 08:41:32','2024-12-27 16:11:27','2024-12-27 16:11:27'),(7,8,1,'2024-12-26 08:50:51','2024-12-26 08:53:56','2024-12-26 08:53:56'),(9,11,2,'2024-12-28 07:45:18','2024-12-29 14:27:47','2024-12-29 14:27:47'),(10,13,3,'2024-12-28 08:23:51','2024-12-28 08:25:30','2024-12-28 08:25:30'),(11,14,3,'2024-12-28 08:25:55','2025-01-11 14:54:39','2025-01-11 14:54:39'),(12,15,2,'2024-12-29 04:19:58','2024-12-29 06:59:35','2024-12-29 06:59:35'),(13,16,2,'2024-12-29 07:43:31','2024-12-29 07:43:33','2024-12-29 07:43:33'),(14,17,2,'2024-12-29 14:05:38','2024-12-29 14:33:57','2024-12-29 14:33:57'),(15,18,2,'2024-12-29 14:06:08','2024-12-29 14:08:27','2024-12-29 14:08:27'),(16,19,2,'2024-12-29 14:09:51','2024-12-29 14:13:22','2024-12-29 14:13:22'),(17,20,2,'2024-12-29 14:13:47','2024-12-29 14:27:48','2024-12-29 14:27:48'),(18,21,2,'2024-12-29 14:28:53','2024-12-29 14:29:32','2024-12-29 14:29:32'),(20,23,2,'2024-12-29 14:29:12','2025-01-10 10:00:34','2025-01-10 10:00:34'),(21,24,2,'2024-12-29 15:41:04','2024-12-29 16:35:41','2024-12-29 16:35:41'),(22,25,2,'2024-12-29 15:47:13','2024-12-29 16:17:32','2024-12-29 16:17:32'),(24,27,2,'2024-12-29 16:17:38','2024-12-29 16:28:14','2024-12-29 16:28:14'),(25,29,4,'2024-12-29 16:35:49','2024-12-29 16:36:48','2024-12-29 16:36:48'),(26,30,4,'2024-12-29 16:36:52','2024-12-29 16:46:16','2024-12-29 16:46:16'),(27,31,4,'2024-12-29 16:44:09','2024-12-29 16:44:13','2024-12-29 16:44:13'),(28,32,2,'2024-12-29 16:44:30','2024-12-29 16:44:32','2024-12-29 16:44:32'),(29,33,4,'2024-12-29 16:44:41','2024-12-29 16:44:49','2024-12-29 16:44:49'),(30,34,4,'2024-12-29 16:45:25','2024-12-29 18:35:01','2024-12-29 18:35:01'),(35,39,2,'2025-01-05 10:11:30','2025-01-05 10:12:09','2025-01-05 10:12:09'),(36,41,5,'2025-01-05 10:12:26','2025-01-05 10:16:31','2025-01-05 10:16:31'),(37,42,5,'2025-01-05 10:13:32','2025-01-05 10:26:14','2025-01-05 10:26:14'),(40,45,5,'2025-01-05 10:18:52','2025-01-05 10:26:11','2025-01-05 10:26:11'),(41,46,2,'2025-01-09 04:43:25','2025-01-10 10:00:34','2025-01-10 10:00:34'),(43,49,6,'2025-01-10 08:38:10','2025-01-10 08:38:53','2025-01-10 08:38:53'),(44,50,6,'2025-01-10 08:38:10','2025-01-10 08:38:53','2025-01-10 08:38:53'),(45,52,7,'2025-01-10 08:39:03','2025-01-10 10:02:56','2025-01-10 10:02:56'),(46,53,7,'2025-01-10 08:44:16','2025-01-10 09:43:51','2025-01-10 09:43:51'),(47,54,7,'2025-01-10 08:44:45','2025-01-10 09:43:51','2025-01-10 09:43:51'),(48,55,7,'2025-01-10 09:16:10','2025-01-10 09:43:51','2025-01-10 09:43:51'),(49,56,7,'2025-01-10 09:36:12','2025-01-10 10:02:56','2025-01-10 10:02:56'),(51,58,2,'2025-01-10 10:00:01','2025-01-10 10:00:34','2025-01-10 10:00:34'),(53,60,7,'2025-01-10 10:02:23','2025-01-10 10:02:56','2025-01-10 10:02:56'),(56,64,8,'2025-01-11 11:03:47','2025-01-11 11:32:40','2025-01-11 11:32:40'),(57,65,8,'2025-01-11 11:06:12','2025-01-11 11:09:16','2025-01-11 11:09:16'),(58,66,8,'2025-01-11 11:06:44','2025-01-11 11:07:28','2025-01-11 11:07:28'),(59,67,8,'2025-01-11 11:09:42','2025-01-11 11:09:49','2025-01-11 11:09:49'),(60,68,3,'2025-01-11 14:49:48','2025-01-11 14:54:45','2025-01-11 14:54:45'),(61,69,1,'2025-01-11 14:50:34','2025-01-11 14:54:40','2025-01-11 14:54:40'),(62,70,3,'2025-01-11 14:51:20','2025-01-11 14:54:39','2025-01-11 14:54:39'),(64,73,1,'2025-01-11 14:57:40','2025-01-11 14:59:46','2025-01-11 14:59:46'),(65,74,9,'2025-01-11 14:57:55','2025-01-11 15:00:02','2025-01-11 15:00:02'),(66,75,9,'2025-01-11 15:20:23','2025-01-11 16:18:25','2025-01-11 16:18:25'),(67,76,9,'2025-01-11 15:21:27','2025-01-11 15:56:10','2025-01-11 15:56:10'),(68,77,9,'2025-01-11 15:25:59','2025-01-11 15:30:21','2025-01-11 15:30:21'),(69,78,9,'2025-01-11 15:30:02','2025-01-11 15:30:21','2025-01-11 15:30:21'),(70,79,9,'2025-01-11 16:13:14','2025-01-11 16:14:08','2025-01-11 16:14:08'),(71,80,9,'2025-01-11 16:15:42','2025-01-11 16:17:56','2025-01-11 16:17:56'),(72,81,9,'2025-01-11 16:17:47','2025-01-11 16:17:56','2025-01-11 16:17:56'),(73,83,10,'2025-01-11 16:18:34','2025-01-11 17:18:06','2025-01-11 17:18:06'),(74,84,10,'2025-01-11 16:47:52','2025-01-11 16:48:36','2025-01-11 16:48:36'),(75,86,11,'2025-01-12 15:11:24','2025-01-12 15:18:51','2025-01-12 15:18:51'),(76,88,12,'2025-01-13 13:44:00','2025-01-13 14:50:54','2025-01-13 14:50:54'),(78,91,13,'2025-01-14 02:24:47','2025-01-14 02:25:04','2025-01-14 02:25:04'),(79,93,14,'2025-01-14 02:26:00','2025-01-14 02:37:10','2025-01-14 02:37:10'),(80,95,14,'2025-01-14 02:28:19','2025-01-14 02:37:16','2025-01-14 02:37:16'),(81,96,14,'2025-01-14 02:37:24','2025-01-14 02:48:14','2025-01-14 02:48:14'),(82,97,14,'2025-01-14 02:37:30','2025-01-14 02:48:24','2025-01-14 02:48:24'),(83,99,16,'2025-01-14 10:57:58','2025-01-18 14:48:34','2025-01-18 14:48:34'),(84,100,16,'2025-01-14 11:01:42','2025-01-18 11:04:19','2025-01-18 11:04:19'),(86,103,17,'2025-01-18 11:01:45','2025-01-18 11:25:05','2025-01-18 11:25:05'),(87,104,17,'2025-01-18 11:04:23','2025-01-18 11:05:02','2025-01-18 11:05:02'),(88,105,17,'2025-01-18 11:05:49','2025-01-18 11:12:40','2025-01-18 11:12:40'),(89,106,17,'2025-01-18 11:12:15','2025-01-18 11:12:27','2025-01-18 11:12:27'),(90,107,17,'2025-01-18 11:12:45','2025-01-18 11:23:04','2025-01-18 11:23:04'),(91,108,17,'2025-01-18 11:23:16','2025-01-18 11:24:44','2025-01-18 11:24:44'),(92,109,16,'2025-01-18 14:37:37','2025-01-18 14:48:34','2025-01-18 14:48:34'),(93,110,16,'2025-01-18 14:39:06','2025-01-18 14:48:34','2025-01-18 14:48:34'),(94,111,16,'2025-01-18 14:48:50','2025-01-18 14:56:20','2025-01-18 14:56:20'),(95,112,16,'2025-01-18 14:53:19','2025-01-18 14:56:20','2025-01-18 14:56:20'),(96,114,18,'2025-01-18 14:57:55','2025-01-18 16:05:09','2025-01-18 16:05:09'),(97,115,18,'2025-01-18 14:58:29','2025-01-18 15:00:45','2025-01-18 15:00:45'),(98,116,18,'2025-01-18 15:02:01','2025-01-18 15:02:22','2025-01-18 15:02:22'),(99,117,18,'2025-01-18 15:02:37','2025-01-18 15:04:22','2025-01-18 15:04:22'),(100,118,18,'2025-01-18 15:09:19','2025-01-18 15:15:34','2025-01-18 15:15:34'),(101,119,18,'2025-01-18 15:11:31','2025-01-18 15:15:34','2025-01-18 15:15:34'),(102,120,18,'2025-01-18 15:15:47','2025-01-18 15:28:27','2025-01-18 15:28:27'),(103,122,19,'2025-01-20 04:08:18','2025-01-20 04:13:47','2025-01-20 04:13:47'),(104,123,19,'2025-01-20 04:12:57','2025-01-20 04:13:47','2025-01-20 04:13:47'),(105,124,19,'2025-01-20 04:13:53','2025-01-20 04:16:33','2025-01-20 04:16:33'),(106,126,20,'2025-01-20 04:20:23','2025-01-20 04:21:06','2025-01-20 04:21:06'),(107,128,21,'2025-01-20 04:28:45','2025-01-20 04:49:48','2025-01-20 04:49:48');
/*!40000 ALTER TABLE `participants_meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_last_activity_index` (`last_activity`),
  KEY `sessions_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2025-01-20 13:16:42
