-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: peekpa_db1
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_user'),(22,'Can change user',6,'change_user'),(23,'Can delete user',6,'delete_user'),(24,'Can view user',6,'view_user'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add post',8,'add_post'),(30,'Can change post',8,'change_post'),(31,'Can delete post',8,'delete_post'),(32,'Can view post',8,'view_post'),(33,'Can add link',9,'add_link'),(34,'Can change link',9,'change_link'),(35,'Can delete link',9,'delete_link'),(36,'Can view link',9,'view_link'),(37,'Can add advertise',10,'add_advertise'),(38,'Can change advertise',10,'change_advertise'),(39,'Can delete advertise',10,'delete_advertise'),(40,'Can view advertise',10,'view_advertise'),(41,'Can add daily visit num',11,'add_dailyvisitnum'),(42,'Can change daily visit num',11,'change_dailyvisitnum'),(43,'Can delete daily visit num',11,'delete_dailyvisitnum'),(44,'Can view daily visit num',11,'view_dailyvisitnum'),(45,'Can add total visit num',12,'add_totalvisitnum'),(46,'Can change total visit num',12,'change_totalvisitnum'),(47,'Can delete total visit num',12,'delete_totalvisitnum'),(48,'Can view total visit num',12,'view_totalvisitnum'),(49,'Can add user visit',13,'add_uservisit'),(50,'Can change user visit',13,'change_uservisit'),(51,'Can delete user visit',13,'delete_uservisit'),(52,'Can view user visit',13,'view_uservisit');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_dailyvisitnum`
--

DROP TABLE IF EXISTS `bloguser_dailyvisitnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloguser_dailyvisitnum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `day` date NOT NULL,
  `count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_dailyvisitnum`
--

LOCK TABLES `bloguser_dailyvisitnum` WRITE;
/*!40000 ALTER TABLE `bloguser_dailyvisitnum` DISABLE KEYS */;
INSERT INTO `bloguser_dailyvisitnum` VALUES (1,'2022-09-04',13),(2,'2022-09-05',7);
/*!40000 ALTER TABLE `bloguser_dailyvisitnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_totalvisitnum`
--

DROP TABLE IF EXISTS `bloguser_totalvisitnum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloguser_totalvisitnum` (
  `id` int NOT NULL AUTO_INCREMENT,
  `count` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_totalvisitnum`
--

LOCK TABLES `bloguser_totalvisitnum` WRITE;
/*!40000 ALTER TABLE `bloguser_totalvisitnum` DISABLE KEYS */;
INSERT INTO `bloguser_totalvisitnum` VALUES (1,20);
/*!40000 ALTER TABLE `bloguser_totalvisitnum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_user`
--

DROP TABLE IF EXISTS `bloguser_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloguser_user` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `uid` varchar(22) NOT NULL,
  `email` varchar(254) NOT NULL,
  `username` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `data_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_user`
--

LOCK TABLES `bloguser_user` WRITE;
/*!40000 ALTER TABLE `bloguser_user` DISABLE KEYS */;
INSERT INTO `bloguser_user` VALUES ('pbkdf2_sha256$150000$Za4bhLpjEK8j$Q4lTUi2GiGNjETFrJwf+mgiRolsGMZ2PlCNf62oWCrs=','2022-09-04 12:19:43.443655',0,'7rBkQ3vySXF79aFoVSiDoo','test1@qq.com','test1',1,1,'2022-09-04 12:16:06.433005'),('pbkdf2_sha256$150000$ehmf1WqfI6g7$cd2bLmcuSvy4jf/Wy5SrckMwOZCnrtG1Z8UCAaQFsZ0=',NULL,0,'kRmfxCVXkKRGjUzT5xCAnV','test@qq.com','test',0,1,'2022-09-04 07:58:04.913972'),('pbkdf2_sha256$150000$Q3MC4SnJHBXc$rqrqjwMS4ODkPNMy4qP/uu8/CT6SoB6brsFaS9hwVFM=','2022-09-04 12:18:06.531075',1,'NFmsSY5XDvxhgoYJuHxaFK','1195426250@qq.com','Admin',1,1,'2022-08-26 09:53:29.212285');
/*!40000 ALTER TABLE `bloguser_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_user_groups`
--

DROP TABLE IF EXISTS `bloguser_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloguser_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(22) NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bloguser_user_groups_user_id_group_id_69c4a080_uniq` (`user_id`,`group_id`),
  KEY `bloguser_user_groups_group_id_8f554e44_fk_auth_group_id` (`group_id`),
  CONSTRAINT `bloguser_user_groups_group_id_8f554e44_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `bloguser_user_groups_user_id_27646886_fk_bloguser_user_uid` FOREIGN KEY (`user_id`) REFERENCES `bloguser_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_user_groups`
--

LOCK TABLES `bloguser_user_groups` WRITE;
/*!40000 ALTER TABLE `bloguser_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `bloguser_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_user_user_permissions`
--

DROP TABLE IF EXISTS `bloguser_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloguser_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(22) NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `bloguser_user_user_permi_user_id_permission_id_bd9d87d4_uniq` (`user_id`,`permission_id`),
  KEY `bloguser_user_user_p_permission_id_deb90a5c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `bloguser_user_user_p_permission_id_deb90a5c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `bloguser_user_user_p_user_id_de74689f_fk_bloguser_` FOREIGN KEY (`user_id`) REFERENCES `bloguser_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_user_user_permissions`
--

LOCK TABLES `bloguser_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `bloguser_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `bloguser_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bloguser_uservisit`
--

DROP TABLE IF EXISTS `bloguser_uservisit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bloguser_uservisit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(30) NOT NULL,
  `end_point` varchar(200) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `day` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloguser_uservisit`
--

LOCK TABLES `bloguser_uservisit` WRITE;
/*!40000 ALTER TABLE `bloguser_uservisit` DISABLE KEYS */;
INSERT INTO `bloguser_uservisit` VALUES (1,'127.0.0.1','/','2022-09-04 11:02:14.854351','2022-09-04'),(2,'127.0.0.1','/list/','2022-09-04 11:02:16.741726','2022-09-04'),(3,'127.0.0.1','/detail/202209034924/','2022-09-04 11:02:18.224349','2022-09-04'),(4,'127.0.0.1','/detail/202209034924/','2022-09-04 11:02:21.360994','2022-09-04'),(5,'127.0.0.1','/detail/202209038014/','2022-09-04 11:02:25.957543','2022-09-04'),(6,'127.0.0.1','/detail/202209038014/','2022-09-04 11:02:29.611891','2022-09-04'),(7,'127.0.0.1','/','2022-09-04 11:46:15.813607','2022-09-04'),(8,'127.0.0.1','/list/','2022-09-04 11:46:20.061031','2022-09-04'),(9,'127.0.0.1','/','2022-09-04 11:46:33.577656','2022-09-04'),(10,'127.0.0.1','/list/','2022-09-04 11:46:35.344745','2022-09-04'),(11,'127.0.0.1','/','2022-09-04 11:49:27.701669','2022-09-04'),(12,'127.0.0.1','/','2022-09-04 11:52:41.191012','2022-09-04'),(13,'127.0.0.1','/','2022-09-04 11:56:32.927124','2022-09-04'),(14,'127.0.0.1','/','2022-09-05 01:24:02.992733','2022-09-05'),(15,'127.0.0.1','/','2022-09-05 01:24:34.406729','2022-09-05'),(16,'127.0.0.1','/','2022-09-05 01:24:50.750335','2022-09-05'),(17,'127.0.0.1','/list/','2022-09-05 01:25:45.100810','2022-09-05'),(18,'127.0.0.1','/','2022-09-05 01:26:02.055367','2022-09-05'),(19,'127.0.0.1','/','2022-09-05 01:26:10.589129','2022-09-05'),(20,'127.0.0.1','/list/','2022-09-05 01:26:16.388285','2022-09-05');
/*!40000 ALTER TABLE `bloguser_uservisit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` varchar(22) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_bloguser_user_uid` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_bloguser_user_uid` FOREIGN KEY (`user_id`) REFERENCES `bloguser_user` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(11,'bloguser','dailyvisitnum'),(12,'bloguser','totalvisitnum'),(6,'bloguser','user'),(13,'bloguser','uservisit'),(4,'contenttypes','contenttype'),(10,'link','advertise'),(9,'link','link'),(7,'post','category'),(8,'post','post'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-08-26 09:50:27.591503'),(2,'contenttypes','0002_remove_content_type_name','2022-08-26 09:50:28.657165'),(3,'auth','0001_initial','2022-08-26 09:50:30.035904'),(4,'auth','0002_alter_permission_name_max_length','2022-08-26 09:50:34.616213'),(5,'auth','0003_alter_user_email_max_length','2022-08-26 09:50:34.681273'),(6,'auth','0004_alter_user_username_opts','2022-08-26 09:50:34.765631'),(7,'auth','0005_alter_user_last_login_null','2022-08-26 09:50:34.851066'),(8,'auth','0006_require_contenttypes_0002','2022-08-26 09:50:34.930881'),(9,'auth','0007_alter_validators_add_error_messages','2022-08-26 09:50:35.007554'),(10,'auth','0008_alter_user_username_max_length','2022-08-26 09:50:35.068896'),(11,'auth','0009_alter_user_last_name_max_length','2022-08-26 09:50:35.128546'),(12,'auth','0010_alter_group_name_max_length','2022-08-26 09:50:35.375595'),(13,'auth','0011_update_proxy_permissions','2022-08-26 09:50:35.453528'),(14,'bloguser','0001_initial','2022-08-26 09:50:36.736500'),(15,'admin','0001_initial','2022-08-26 09:50:41.601355'),(16,'admin','0002_logentry_remove_auto_add','2022-08-26 09:50:43.702735'),(17,'admin','0003_logentry_add_action_flag_choices','2022-08-26 09:50:43.785397'),(18,'sessions','0001_initial','2022-08-26 09:50:44.303112'),(19,'post','0001_initial','2022-08-28 07:58:05.281261'),(20,'post','0002_post','2022-08-28 08:42:04.352865'),(21,'link','0001_initial','2022-09-04 03:54:44.759022'),(22,'link','0002_advertise','2022-09-04 07:10:09.859319'),(23,'bloguser','0002_dailyvisitnum_totalvisitnum_uservisit','2022-09-04 10:51:02.402226');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('hlk0lh8tw3jl3okpro20me98sjhj1mjj','NTVkZjU1ZWIyNzExN2JkMDcwMWQ5MTJmNTdjOGJmOTZmMTgxYzgzZDp7Il9hdXRoX3VzZXJfaWQiOiJORm1zU1k1WER2eGhnb1lKdUh4YUZLIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZGEyNDdlOWY5Y2ZhNDA1MTliNjMxNTU4NDk4NjM0NWUxMjcwZjlhIn0=','2022-09-09 14:42:57.773237'),('maoabh69j2iv0eidgpbwtji7xs5cobu7','NTVkZjU1ZWIyNzExN2JkMDcwMWQ5MTJmNTdjOGJmOTZmMTgxYzgzZDp7Il9hdXRoX3VzZXJfaWQiOiJORm1zU1k1WER2eGhnb1lKdUh4YUZLIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlZGEyNDdlOWY5Y2ZhNDA1MTliNjMxNTU4NDk4NjM0NWUxMjcwZjlhIn0=','2022-09-18 12:15:23.690905'),('wed8uxpa7hjbihfhsayg2tjazog9c5cl','OTQ2OWI5MzM1OGM4MjRlMTg2MDM0MTc1YWMyNGY1YWZiNDJjZDcxODp7Il9hdXRoX3VzZXJfaWQiOiI3ckJrUTN2eVNYRjc5YUZvVlNpRG9vIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMWJjMDkyNDlmZGI0ZDc3MzM2MGI3ODEzOTc0YWI0NDNhOTczN2VlIn0=','2022-09-18 12:19:43.518046');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_advertise`
--

DROP TABLE IF EXISTS `link_advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_advertise` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `image_url` varchar(200) NOT NULL,
  `link_url` varchar(200) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_advertise`
--

LOCK TABLES `link_advertise` WRITE;
/*!40000 ALTER TABLE `link_advertise` DISABLE KEYS */;
INSERT INTO `link_advertise` VALUES (2,'娣樺疂','https://fc1tn.baidu.com/it/u=3207640727,1056758652&fm=202&mola=new&crop=v1','https://uland.taobao.com/','2022-09-04 07:31:31.025639');
/*!40000 ALTER TABLE `link_advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_link`
--

DROP TABLE IF EXISTS `link_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `link_link` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `show_name` varchar(30) NOT NULL,
  `url` varchar(200) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  `status` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_link`
--

LOCK TABLES `link_link` WRITE;
/*!40000 ALTER TABLE `link_link` DISABLE KEYS */;
INSERT INTO `link_link` VALUES (1,'鍙嬮摼111','鐧惧害','http://www.baidu.com','2022-09-04 04:54:04.660275',1);
/*!40000 ALTER TABLE `link_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_category`
--

DROP TABLE IF EXISTS `post_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `create_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_category`
--

LOCK TABLES `post_category` WRITE;
/*!40000 ALTER TABLE `post_category` DISABLE KEYS */;
INSERT INTO `post_category` VALUES (1,'Django寮€鍙?,'2022-08-28 08:24:22.580414');
/*!40000 ALTER TABLE `post_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_post`
--

DROP TABLE IF EXISTS `post_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `content_html` longtext NOT NULL,
  `priority` int NOT NULL,
  `is_hot` tinyint(1) NOT NULL,
  `status` int unsigned NOT NULL,
  `publish_time` datetime(6) NOT NULL,
  `time_id` varchar(30) NOT NULL,
  `read_num` int unsigned NOT NULL,
  `author_id` varchar(22) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `post_post_author_id_99d134d5_fk_bloguser_user_uid` (`author_id`),
  KEY `post_post_category_id_f4001070_fk_post_category_id` (`category_id`),
  CONSTRAINT `post_post_author_id_99d134d5_fk_bloguser_user_uid` FOREIGN KEY (`author_id`) REFERENCES `bloguser_user` (`uid`),
  CONSTRAINT `post_post_category_id_f4001070_fk_post_category_id` FOREIGN KEY (`category_id`) REFERENCES `post_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_post`
--

LOCK TABLES `post_post` WRITE;
/*!40000 ALTER TABLE `post_post` DISABLE KEYS */;
INSERT INTO `post_post` VALUES (1,'Peekpa鍗氬绯荤粺浠嬬粛','涓€绡囨枃绔犲甫浣犳墦閫欴jango寮€鍙?,'https://labfile.oss.aliyuncs.com/courses/3326/00001.jpeg','### Markdown璇硶\r\n鏂囩珷閲囩敤鐨勬槸 Markdown 璇硶锛岃繖涓?`璇硶` 鏈€澶х殑濂藉灏辨槸鏂逛究锛?*蹇嵎**銆?杩欓噷涓嶅仛杩囧璁茶В锛屼粎浠呭彧鏄?婕旂ず浣跨敤*銆?,'<h3 id=\"markdown\">Markdown璇硶</h3>\n<p>鏂囩珷閲囩敤鐨勬槸 Markdown 璇硶锛岃繖涓?<code>璇硶</code> 鏈€澶х殑濂藉灏辨槸鏂逛究锛?strong>蹇嵎</strong>銆?杩欓噷涓嶅仛杩囧璁茶В锛屼粎浠呭彧鏄?em>婕旂ず浣跨敤</em>銆?/p>',0,1,0,'2022-08-28 09:14:56.430083','202208286917',0,'NFmsSY5XDvxhgoYJuHxaFK',1),(2,'Peekpa棣栭〉澶х劍鐐瑰浘','杩欑瘒鏂囩珷鏄敤鏉ュ睍绀洪椤靛ぇ鐒︾偣鍥炬帹鑽愪綅缃殑銆?,'https://labfile.oss.aliyuncs.com/courses/3326/00002.jpeg','棣栭〉澶х劍鐐瑰浘鎺ㄨ崘浣嶇疆锛?Priority 鏄?100銆?,'<p>棣栭〉澶х劍鐐瑰浘鎺ㄨ崘浣嶇疆锛?Priority 鏄?100銆?/p>',100,1,1,'2022-09-03 06:55:13.725743','202209038014',1,'NFmsSY5XDvxhgoYJuHxaFK',1),(3,'Peekpa灏忕劍鐐瑰浘宸︿竴锛屽睍绀鸿鎯呴〉鍥剧墖','杩欑瘒鏂囩珷涓昏灞曠ず鐨勬槸鏂囩珷鐨勫浘鐗囦俊鎭€?,'https://labfile.oss.aliyuncs.com/courses/3326/00003.jpeg','### 娴嬭瘯鍥剧墖\r\n姣忎竴绡囨枃绔犻兘鍙兘浼氭湁寰堝閰嶅浘锛岃繖浜涢厤鍥鹃兘鏄娇鐢?Markdown 璇硶鏉ュ疄鐜扮殑銆傛墍浠ユ垜浠繖鍒楀氨鏉ュ疄鐜颁竴寮犻厤鍥剧殑灞曠ず锛歕r\n\r\n![婕旂ず](https://labfile.oss.aliyuncs.com/courses/3326/00003.jpeg)\r\n\r\n婕旂ず瀹屾瘯锛屼笂闈㈢殑杩欎釜灏辨槸鍦ㄥ崥瀹㈣鎯呴〉鍥剧墖鐨勫睍绀恒€?,'<h3 id=\"_1\">娴嬭瘯鍥剧墖</h3>\n<p>姣忎竴绡囨枃绔犻兘鍙兘浼氭湁寰堝閰嶅浘锛岃繖浜涢厤鍥鹃兘鏄娇鐢?Markdown 璇硶鏉ュ疄鐜扮殑銆傛墍浠ユ垜浠繖鍒楀氨鏉ュ疄鐜颁竴寮犻厤鍥剧殑灞曠ず锛?/p>\n<p><img alt=\"婕旂ず\" src=\"https://labfile.oss.aliyuncs.com/courses/3326/00003.jpeg\" /></p>\n<p>婕旂ず瀹屾瘯锛屼笂闈㈢殑杩欎釜灏辨槸鍦ㄥ崥瀹㈣鎯呴〉鍥剧墖鐨勫睍绀恒€?/p>',99,0,1,'2022-09-03 06:56:26.870933','202209034846',0,'NFmsSY5XDvxhgoYJuHxaFK',1),(4,'Peekpa灏忕劍鐐逛腑闂达紝鏍囬鍒楄〃灞曠ず','杩欑瘒鏂囩珷涓昏灞曠ず鏍囬鍒楄〃鏍峰紡銆?,'https://labfile.oss.aliyuncs.com/courses/3326/00004.jpeg','### 鏍囬涓€\r\n涓€绡囨枃绔犳湁寰堝鏍囬锛岃€屼笖鏈夊緢澶氬眰绾х殑鏍囬銆傛垜浠繖閲屽氨鏉ュ疄楠屽乏渚х殑鏍囬鍒楄〃鏄浣曞睍绀虹殑銆俓r\n#### 瀛愭爣棰樹竴\r\n瀛愭爣棰樹竴鍐呭銆俓r\n#### 瀛愭爣棰樹簩\r\n瀛愭爣棰樹簩鍐呭銆俓r\n### 鏍囬浜孿r\n#### 鏍囬浜岀殑瀛愭爣棰榎r\n鏍囬浜岀殑瀛愭爣棰樺唴瀹?,'<h3 id=\"_1\">鏍囬涓€</h3>\n<p>涓€绡囨枃绔犳湁寰堝鏍囬锛岃€屼笖鏈夊緢澶氬眰绾х殑鏍囬銆傛垜浠繖閲屽氨鏉ュ疄楠屽乏渚х殑鏍囬鍒楄〃鏄浣曞睍绀虹殑銆?/p>\n<h4 id=\"_2\">瀛愭爣棰樹竴</h4>\n<p>瀛愭爣棰樹竴鍐呭銆?/p>\n<h4 id=\"_3\">瀛愭爣棰樹簩</h4>\n<p>瀛愭爣棰樹簩鍐呭銆?/p>\n<h3 id=\"_4\">鏍囬浜?/h3>\n<h4 id=\"_5\">鏍囬浜岀殑瀛愭爣棰?/h4>\n<p>鏍囬浜岀殑瀛愭爣棰樺唴瀹?/p>',98,0,1,'2022-09-03 06:57:08.802524','202209036527',0,'NFmsSY5XDvxhgoYJuHxaFK',1),(5,'Peekpa灏忕劍鐐瑰彸涓€锛屼唬鐮侀儴鍒嗗睍绀?,'杩欑瘒鏂囩珷涓昏灞曠ず鏂囩珷浠ｇ爜鏍蜂緥銆?,'https://labfile.oss.aliyuncs.com/courses/3326/00005.jpeg','璁＄畻鏈虹殑鍗氬鏂囩珷锛屼竴鑸細鏈夊ぇ閲忎唬鐮佹ā鍧楀湪鏂囩珷涓紝閭ｄ箞鎴戜滑杩欓噷灏辨潵缁欏ぇ瀹剁湅浠ｇ爜濡備綍灞曠ず銆俓r\n杩欓噷浠ｇ爜鍧楅渶瑕侀伒寰?Markdown 鏍煎紡鏍煎紡銆傛墍浠ュ簲璇ユ槸灏嗕互涓嬩唬鐮佸寘瑁瑰湪涓変釜 **`** 涓細\r\n```\r\nclass CategoryEditView(View):\r\n    def get(self, request):\r\n        category_id = request.GET.get(\'category_id\')\r\n        category = Category.objects.get(pk=category_id)\r\n        context = {\r\n            \'item_data\': category,\r\n        }\r\n        return render(request, \'cms/category/publish.html\', context=context)\r\n```','<p>璁＄畻鏈虹殑鍗氬鏂囩珷锛屼竴鑸細鏈夊ぇ閲忎唬鐮佹ā鍧楀湪鏂囩珷涓紝閭ｄ箞鎴戜滑杩欓噷灏辨潵缁欏ぇ瀹剁湅浠ｇ爜濡備綍灞曠ず銆俓n杩欓噷浠ｇ爜鍧楅渶瑕侀伒寰?Markdown 鏍煎紡鏍煎紡銆傛墍浠ュ簲璇ユ槸灏嗕互涓嬩唬鐮佸寘瑁瑰湪涓変釜 <strong>`</strong> 涓細</p>\n<div class=\"codehilite\"><pre><span></span><code><span class=\"k\">class</span> <span class=\"n\">CategoryEditView</span>(<span class=\"n\">View</span>):\n    <span class=\"n\">def</span> <span class=\"nb\">get</span>(<span class=\"nb\">self</span>, <span class=\"n\">request</span>):\n        <span class=\"n\">category_id</span> = <span class=\"n\">request</span>.<span class=\"n\">GET</span>.<span class=\"nb\">get</span>(<span class=\"s\">&#39;category_id&#39;</span>)\n        <span class=\"n\">category</span> = <span class=\"n\">Category</span>.<span class=\"n\">objects</span>.<span class=\"nb\">get</span>(<span class=\"n\">pk</span>=<span class=\"n\">category_id</span>)\n        <span class=\"n\">context</span> = {\n            <span class=\"s\">&#39;item_data&#39;</span>: <span class=\"n\">category</span>,\n        }\n        <span class=\"k\">return</span> <span class=\"n\">render</span>(<span class=\"n\">request</span>, <span class=\"s\">&#39;cms/category/publish.html&#39;</span>, <span class=\"n\">context</span>=<span class=\"n\">context</span>)\n</code></pre></div>',97,0,2,'2022-09-03 06:58:04.880703','202209035210',0,'NFmsSY5XDvxhgoYJuHxaFK',1),(6,'Peekpa缁煎悎灞曠ず鍐呭','鍗氬璇︽儏椤电患鍚堝睍绀?,'https://labfile.oss.aliyuncs.com/courses/3326/00006.jpeg','鍥犱负鏄患鍚堝睍绀哄唴瀹癸紝鎵€浠ュ唴瀹逛細姣旇緝澶氥€俓r\n### 鏍囬涓€\r\n涓€绡囨枃绔犳湁寰堝鏍囬锛岃€屼笖鏈夊緢澶氬眰绾х殑鏍囬銆傛垜浠繖閲屽氨鏉ュ疄楠屽乏渚х殑鏍囬鍒楄〃鏄浣曞睍绀虹殑銆俓r\n#### 浠ｇ爜閮ㄥ垎灞曠ず\r\n```\r\nclass CategoryEditView(View):\r\n    def get(self, request):\r\n        category_id = request.GET.get(\'category_id\')\r\n        category = Category.objects.get(pk=category_id)\r\n        context = {\r\n            \'item_data\': category,\r\n        }\r\n        return render(request, \'cms/category/publish.html\', context=context)\r\n```\r\n#### 鍥剧墖閮ㄥ垎灞曠ず\r\n杩欎釜鍖哄煙鏄浘鐗囦綅缃睍绀猴紝鍏蜂綋鍥剧墖濡備笅锛歕r\n![](https://labfile.oss.aliyuncs.com/courses/3326/00006.jpeg)\r\n### Markdown璇硶\r\n鏂囩珷閲囩敤鐨勬槸 Markdown 璇硶锛岃繖涓?`璇硶` 鏈€澶х殑濂藉灏辨槸鏂逛究锛?*蹇嵎**銆?杩欓噷涓嶅仛杩囧璁茶В锛屼粎浠呭彧鏄?婕旂ず浣跨敤*銆?,'<p>鍥犱负鏄患鍚堝睍绀哄唴瀹癸紝鎵€浠ュ唴瀹逛細姣旇緝澶氥€?/p>\n<h3 id=\"_1\">鏍囬涓€</h3>\n<p>涓€绡囨枃绔犳湁寰堝鏍囬锛岃€屼笖鏈夊緢澶氬眰绾х殑鏍囬銆傛垜浠繖閲屽氨鏉ュ疄楠屽乏渚х殑鏍囬鍒楄〃鏄浣曞睍绀虹殑銆?/p>\n<h4 id=\"_2\">浠ｇ爜閮ㄥ垎灞曠ず</h4>\n<div class=\"codehilite\"><pre><span></span><code><span class=\"k\">class</span> <span class=\"n\">CategoryEditView</span>(<span class=\"n\">View</span>):\n    <span class=\"n\">def</span> <span class=\"nb\">get</span>(<span class=\"nb\">self</span>, <span class=\"n\">request</span>):\n        <span class=\"n\">category_id</span> = <span class=\"n\">request</span>.<span class=\"n\">GET</span>.<span class=\"nb\">get</span>(<span class=\"s\">&#39;category_id&#39;</span>)\n        <span class=\"n\">category</span> = <span class=\"n\">Category</span>.<span class=\"n\">objects</span>.<span class=\"nb\">get</span>(<span class=\"n\">pk</span>=<span class=\"n\">category_id</span>)\n        <span class=\"n\">context</span> = {\n            <span class=\"s\">&#39;item_data&#39;</span>: <span class=\"n\">category</span>,\n        }\n        <span class=\"k\">return</span> <span class=\"n\">render</span>(<span class=\"n\">request</span>, <span class=\"s\">&#39;cms/category/publish.html&#39;</span>, <span class=\"n\">context</span>=<span class=\"n\">context</span>)\n</code></pre></div>\n\n<h4 id=\"_3\">鍥剧墖閮ㄥ垎灞曠ず</h4>\n<p>杩欎釜鍖哄煙鏄浘鐗囦綅缃睍绀猴紝鍏蜂綋鍥剧墖濡備笅锛歕n<img alt=\"\" src=\"https://labfile.oss.aliyuncs.com/courses/3326/00006.jpeg\" /></p>\n<h3 id=\"markdown\">Markdown璇硶</h3>\n<p>鏂囩珷閲囩敤鐨勬槸 Markdown 璇硶锛岃繖涓?<code>璇硶</code> 鏈€澶х殑濂藉灏辨槸鏂逛究锛?strong>蹇嵎</strong>銆?杩欓噷涓嶅仛杩囧璁茶В锛屼粎浠呭彧鏄?em>婕旂ず浣跨敤</em>銆?/p>',0,0,1,'2022-09-03 07:00:28.890523','202209031040',0,'NFmsSY5XDvxhgoYJuHxaFK',1),(7,'Peekpa鍗氬绯荤粺浠嬬粛','涓€绡囨枃绔犲甫浣犳墦閫欴jango寮€鍙?,'https://labfile.oss.aliyuncs.com/courses/3326/00001.jpeg','### Markdown璇硶\r\n鏂囩珷閲囩敤鐨勬槸 Markdown 璇硶锛岃繖涓?`璇硶` 鏈€澶х殑濂藉灏辨槸鏂逛究锛?*蹇嵎**銆?杩欓噷涓嶅仛杩囧璁茶В锛屼粎浠呭彧鏄?婕旂ず浣跨敤*銆?,'<h3 id=\"markdown\">Markdown璇硶</h3>\n<p>鏂囩珷閲囩敤鐨勬槸 Markdown 璇硶锛岃繖涓?<code>璇硶</code> 鏈€澶х殑濂藉灏辨槸鏂逛究锛?strong>蹇嵎</strong>銆?杩欓噷涓嶅仛杩囧璁茶В锛屼粎浠呭彧鏄?em>婕旂ず浣跨敤</em>銆?/p>',0,1,1,'2022-09-03 07:36:23.660110','202209034924',2,'NFmsSY5XDvxhgoYJuHxaFK',1);
/*!40000 ALTER TABLE `post_post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-05  9:37:51
