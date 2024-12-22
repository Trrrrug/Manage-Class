-- MySQL dump 10.13  Distrib 9.0.1, for macos14 (arm64)
--
-- Host: localhost    Database: manage_class
-- ------------------------------------------------------
-- Server version	9.0.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendance_students`
--

DROP TABLE IF EXISTS `attendance_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance_students` (
  `attendance_id` bigint unsigned NOT NULL,
  `student_id` bigint unsigned NOT NULL,
  `status` tinyint NOT NULL COMMENT 'statusAttendanceEnums',
  PRIMARY KEY (`attendance_id`,`student_id`),
  KEY `attendance_students_student_id_foreign` (`student_id`),
  CONSTRAINT `attendance_students_attendance_id_foreign` FOREIGN KEY (`attendance_id`) REFERENCES `attendances` (`id`) ON DELETE CASCADE,
  CONSTRAINT `attendance_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_students`
--

LOCK TABLES `attendance_students` WRITE;
/*!40000 ALTER TABLE `attendance_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendances`
--

DROP TABLE IF EXISTS `attendances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendances` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `classSchedule_id` bigint unsigned NOT NULL,
  `teacher_id` bigint unsigned NOT NULL,
  `date` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attendances_classschedule_id_teacher_id_date_unique` (`classSchedule_id`,`teacher_id`,`date`),
  KEY `attendances_teacher_id_foreign` (`teacher_id`),
  CONSTRAINT `attendances_classschedule_id_foreign` FOREIGN KEY (`classSchedule_id`) REFERENCES `class_schedules` (`id`) ON DELETE CASCADE,
  CONSTRAINT `attendances_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendances`
--

LOCK TABLES `attendances` WRITE;
/*!40000 ALTER TABLE `attendances` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_schedules`
--

DROP TABLE IF EXISTS `class_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `time_start` timestamp NOT NULL,
  `time_end` timestamp NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT 'StatusClassScheduleEnums',
  `time_line` tinyint NOT NULL DEFAULT '0' COMMENT 'TimeLineEnums',
  `weekdays` tinyint NOT NULL COMMENT 'WeekDaysEnums',
  `shift` tinyint NOT NULL COMMENT 'ShiftEnums',
  `target` int DEFAULT NULL,
  `teacher_id` bigint unsigned DEFAULT NULL,
  `subject_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_id` bigint unsigned DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_schedules_teacher_id_foreign` (`teacher_id`),
  KEY `class_schedules_subject_id_foreign` (`subject_id`),
  KEY `class_schedules_room_id_foreign` (`room_id`),
  CONSTRAINT `class_schedules_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE SET NULL,
  CONSTRAINT `class_schedules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE SET NULL,
  CONSTRAINT `class_schedules_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_schedules`
--

LOCK TABLES `class_schedules` WRITE;
/*!40000 ALTER TABLE `class_schedules` DISABLE KEYS */;
INSERT INTO `class_schedules` VALUES (1,'2024-12-08 14:24:13','2025-01-08 14:24:13',0,0,1,1,NULL,8,2,NULL,NULL,1,NULL),(2,'2024-12-08 14:24:13','2025-01-08 14:24:13',0,0,1,1,NULL,2,3,NULL,NULL,10,NULL),(3,'2024-12-08 14:24:13','2025-01-08 14:24:13',0,0,1,1,NULL,8,1,NULL,NULL,6,NULL),(4,'2024-12-08 14:24:13','2025-01-08 14:24:13',0,0,1,1,NULL,6,1,NULL,NULL,9,NULL),(5,'2024-12-08 14:24:13','2025-01-08 14:24:13',0,0,1,1,NULL,5,4,NULL,NULL,9,NULL);
/*!40000 ALTER TABLE `class_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_students`
--

DROP TABLE IF EXISTS `class_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_students` (
  `classSchedule_id` bigint unsigned NOT NULL,
  `student_id` bigint unsigned NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT 'StatusClassStudentEnums',
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`classSchedule_id`,`student_id`),
  KEY `class_students_student_id_foreign` (`student_id`),
  CONSTRAINT `class_students_classschedule_id_foreign` FOREIGN KEY (`classSchedule_id`) REFERENCES `class_schedules` (`id`) ON DELETE CASCADE,
  CONSTRAINT `class_students_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_students`
--

LOCK TABLES `class_students` WRITE;
/*!40000 ALTER TABLE `class_students` DISABLE KEYS */;
INSERT INTO `class_students` VALUES (1,7,0,NULL),(2,25,0,NULL),(3,2,0,NULL),(4,4,0,NULL),(5,26,0,NULL);
/*!40000 ALTER TABLE `class_students` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2016_06_01_000001_create_oauth_auth_codes_table',1),(2,'2016_06_01_000002_create_oauth_access_tokens_table',1),(3,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(4,'2016_06_01_000004_create_oauth_clients_table',1),(5,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(6,'2019_12_14_000001_create_personal_access_tokens_table',1),(7,'2022_08_09_181620_create_rooms_table',1),(8,'2022_09_17_111550_create_students_table',1),(9,'2022_09_17_111604_create_teachers_table',1),(10,'2022_09_17_112023_create_subjects_table',1),(11,'2022_09_17_114709_create_class_schedules_table',1),(12,'2022_09_17_114727_create_class_students_table',1),(13,'2022_09_17_114817_create_attendances_table',1),(14,'2022_09_17_114826_create_attendance_students_table',1),(15,'2022_10_07_202722_create_register_teaches_table',1),(16,'2022_10_09_181908_alter_table_class_schedule_add_foregion_room_id',1),(17,'2022_11_04_111536_add_soft_delete_to_class_table',1),(18,'2022_11_13_214338_alter_table_class_schedule_change_on_delete_set_null',1),(19,'2022_11_16_145909_create_posts_table',1),(20,'2022_11_16_165404_alter_table_post_change_column_content',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `client_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `client_id` bigint unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_teaches`
--

DROP TABLE IF EXISTS `register_teaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register_teaches` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `weekdays` tinyint NOT NULL COMMENT 'WeekDaysEnums',
  `shift` tinyint NOT NULL COMMENT 'ShiftEnums',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT 'StatusRegisterTeachEnums',
  `teacher_id` bigint unsigned NOT NULL,
  `subject_id` bigint unsigned NOT NULL,
  `classSchedule_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `register_teaches_teacher_id_foreign` (`teacher_id`),
  KEY `register_teaches_subject_id_foreign` (`subject_id`),
  KEY `register_teaches_classschedule_id_foreign` (`classSchedule_id`),
  CONSTRAINT `register_teaches_classschedule_id_foreign` FOREIGN KEY (`classSchedule_id`) REFERENCES `class_schedules` (`id`) ON DELETE CASCADE,
  CONSTRAINT `register_teaches_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `register_teaches_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_teaches`
--

LOCK TABLES `register_teaches` WRITE;
/*!40000 ALTER TABLE `register_teaches` DISABLE KEYS */;
/*!40000 ALTER TABLE `register_teaches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'11/27','2024-12-08 14:24:13','2024-12-08 14:24:13'),(2,'10/25','2024-12-08 14:24:13','2024-12-08 14:24:13'),(3,'08/26','2024-12-08 14:24:13','2024-12-08 14:24:13'),(4,'10/27','2024-12-08 14:24:13','2024-12-08 14:24:13'),(5,'05/27','2024-12-08 14:24:13','2024-12-08 14:24:13'),(6,'11/27','2024-12-08 14:24:13','2024-12-08 14:24:13'),(7,'03/27','2024-12-08 14:24:13','2024-12-08 14:24:13'),(8,'03/26','2024-12-08 14:24:13','2024-12-08 14:24:13'),(9,'06/26','2024-12-08 14:24:13','2024-12-08 14:24:13'),(10,'01/25','2024-12-08 14:24:13','2024-12-08 14:24:13');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Hứa Cương','456','84-70-474-5699','kim.phuong@example.com','2024-12-08 14:24:13','2024-12-08 14:24:13'),(2,'Em. Lỳ Khiêm','456','(070)143-3416','nton@example.com','2024-12-08 14:24:13','2024-12-08 14:24:13'),(3,'Anh. Quách Ngọc','456','0129 206 2074','tuyet.quan@example.com','2024-12-08 14:24:13','2024-12-08 14:24:13'),(4,'Lô Như Thắm','456','+84-351-681-8914','dan47@example.com','2024-12-08 14:24:13','2024-12-08 14:24:13'),(5,'Kiều Khánh Ái','456','0122-539-6896','duong.thuy@example.org','2024-12-08 14:24:13','2024-12-08 14:24:13'),(6,'Chú. Đường Chánh Bổng','456','0121-747-4689','tiep.linh@example.org','2024-12-08 14:24:13','2024-12-08 14:24:13'),(7,'Cô. Mạch Thụy Thảo','456','(84)(52)375-1878','du.lo@example.com','2024-12-08 14:24:13','2024-12-08 14:24:13'),(8,'Em. Viên Nghị Sỹ','456','033 964 5711','yen.hanh@example.net','2024-12-08 14:24:13','2024-12-08 14:24:13'),(9,'Khưu Quốc Giáp','456','(0320) 404 4442','kma@example.org','2024-12-08 14:24:13','2024-12-08 14:24:13'),(10,'Bác. Phan Nga','456','(84)(167)614-0535','hao.khau@example.org','2024-12-08 14:24:13','2024-12-08 14:24:13'),(11,'Chị. An Uyển Bạch','456','84-280-668-8001','tong.hop@example.org','2024-12-08 14:24:13','2024-12-08 14:24:13'),(12,'Vương Trà','456','061 333 2499','chung.canh@example.org','2024-12-08 14:24:13','2024-12-08 14:24:13'),(13,'Em. Khưu Liên','456','(091) 939 1928','fbac@example.org','2024-12-08 14:24:13','2024-12-08 14:24:13'),(14,'Tông Duệ','456','(84)(27)406-4651','hy.thi@example.org','2024-12-08 14:24:13','2024-12-08 14:24:13'),(15,'Nguyễn Hương','456','(0166)810-5334','khuyen.moc@example.org','2024-12-08 14:24:13','2024-12-08 14:24:13'),(16,'Cụ. Điền Thiện','456','(0163)329-8603','vu.kieu@example.net','2024-12-08 14:24:13','2024-12-08 14:24:13'),(17,'Đậu Lam Hân','456','+84-231-899-3354','di30@example.net','2024-12-08 14:24:13','2024-12-08 14:24:13'),(18,'Bác. Thạch Dinh','456','(84)(168)162-7238','bach.nham@example.com','2024-12-08 14:24:13','2024-12-08 14:24:13'),(19,'Lại Tuyết','456','(0218) 287 0105','ldo@example.net','2024-12-08 14:24:13','2024-12-08 14:24:13'),(20,'Đinh Khuê','456','(0511) 281 6090','nhu.kieu@example.com','2024-12-08 14:24:13','2024-12-08 14:24:13'),(21,'Đàm Tịnh Phương','456','84-711-284-8658','tien.thai@example.net','2024-12-08 14:24:13','2024-12-08 14:24:13'),(22,'Cát Đài','456','(0125) 688 1583','thieu.hieu@example.org','2024-12-08 14:24:13','2024-12-08 14:24:13'),(23,'Ánh Lợi','456','030-677-3088','giao.han@example.net','2024-12-08 14:24:13','2024-12-08 14:24:13'),(24,'Mâu Nhã','456','055-834-0658','xchu@example.net','2024-12-08 14:24:13','2024-12-08 14:24:13'),(25,'Bác. Cái Mộc Ty','456','+84-73-150-0397','hue.doan@example.org','2024-12-08 14:24:13','2024-12-08 14:24:13'),(26,'Cô. Lê Phượng Thư','456','84-8-9823-4152','suong62@example.net','2024-12-08 14:24:13','2024-12-08 14:24:13'),(27,'Bác. Trang Long Luận','456','(84)(58)997-5526','lan.yen@example.org','2024-12-08 14:24:13','2024-12-08 14:24:13'),(28,'Đồng Cương','456','(0166) 386 1592','ngan44@example.com','2024-12-08 14:24:13','2024-12-08 14:24:13'),(29,'Trần Khê','456','(0320) 153 2550','thao.cat@example.com','2024-12-08 14:24:13','2024-12-08 14:24:13'),(30,'Tô Huyền Cầm','456','(84)(231)312-4646','dat71@example.net','2024-12-08 14:24:13','2024-12-08 14:24:13'),(31,'Duc Dang','011832',NULL,'dangduyduc1908@gmail.com','2024-12-08 14:24:41','2024-12-08 14:24:41');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Cô. Đoàn Ân',5000,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(2,'Chị. Thôi Bích',10000,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(3,'Thân Đông San',20000,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(4,'Em. Hán Nhu',50000,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(5,'Nhữ Tâm',5000,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(10,'Lập trình website',300000,'2022-11-14 15:11:53','2022-11-14 15:11:53'),(20,'Tin học văn phòng',300000,'2022-11-14 15:11:53','2022-11-14 15:11:53'),(30,'Tiếng Trung',300000,'2022-11-14 15:11:53','2022-11-14 15:11:53'),(40,'Tiếng Anh B1',300000,'2022-11-14 15:11:53','2022-11-14 15:11:53'),(50,'Tiếng Anh giao tiếp',300000,'2022-11-14 15:11:53','2022-11-14 15:11:53'),(60,'Tin học M1',300000,NULL,NULL),(70,'Bằng lái xe hạng B',300000,'2022-11-14 15:11:53','2022-11-14 15:11:53'),(80,'Kiểm thử phần mềm',300000,'2022-11-14 15:11:53','2022-11-14 15:11:53'),(90,'Kỹ năng giao tiếp và làm việc nhóm',300000,'2022-11-14 15:11:53','2022-11-14 15:11:53');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint NOT NULL COMMENT 'LevelTeacherEnum',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'San Trực Diêm','84-230-413-5149','123',1,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(2,'Vy Việt Tống','(061) 213 8022','123',1,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(3,'Tuệ Tuấn Mang','(039)307-9631','123',1,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(4,'Phượng Sâm Hàng','(84)(123)954-3584','123',1,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(5,'Hà Danh Nghiêm','079-806-1420','123',1,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(6,'Chi Quý Thập','(099) 347 6129','123',1,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(7,'Uyên Triết Tào','(84)(55)808-8347','123',1,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(8,'Mỹ Toản Dư','(84)(76)161-7070','123',1,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(9,'Tâm Luật Bửu','84-124-092-9626','123',1,'2024-12-08 14:24:13','2024-12-08 14:24:13'),(10,'Hân Thọ Cổ','+84-241-508-9135','123',1,'2024-12-08 14:24:13','2024-12-08 14:24:13');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'manage_class'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-19  0:00:39
