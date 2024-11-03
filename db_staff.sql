-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: staff_search_db
-- ------------------------------------------------------
-- Server version	8.0.38

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
  `id` bigint NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add resume',7,'add_resume'),(26,'Can change resume',7,'change_resume'),(27,'Can delete resume',7,'delete_resume'),(28,'Can view resume',7,'view_resume'),(29,'Can add work experience',8,'add_workexperience'),(30,'Can change work experience',8,'change_workexperience'),(31,'Can delete work experience',8,'delete_workexperience'),(32,'Can view work experience',8,'view_workexperience'),(33,'Can add portfolio',9,'add_portfolio'),(34,'Can change portfolio',9,'change_portfolio'),(35,'Can delete portfolio',9,'delete_portfolio'),(36,'Can view portfolio',9,'view_portfolio'),(37,'Can add education',10,'add_education'),(38,'Can change education',10,'change_education'),(39,'Can delete education',10,'delete_education'),(40,'Can view education',10,'view_education'),(41,'Can add driving license',11,'add_drivinglicense'),(42,'Can change driving license',11,'change_drivinglicense'),(43,'Can delete driving license',11,'delete_drivinglicense'),(44,'Can view driving license',11,'view_drivinglicense'),(45,'Can add about',12,'add_about'),(46,'Can change about',12,'change_about'),(47,'Can delete about',12,'delete_about'),(48,'Can view about',12,'view_about'),(49,'Can add employer',13,'add_employer'),(50,'Can change employer',13,'change_employer'),(51,'Can delete employer',13,'delete_employer'),(52,'Can view employer',13,'view_employer'),(53,'Can add service',14,'add_service'),(54,'Can change service',14,'change_service'),(55,'Can delete service',14,'delete_service'),(56,'Can view service',14,'view_service'),(57,'Can add photos',15,'add_photos'),(58,'Can change photos',15,'change_photos'),(59,'Can delete photos',15,'delete_photos'),(60,'Can view photos',15,'view_photos'),(61,'Can add feedback',16,'add_feedback'),(62,'Can change feedback',16,'change_feedback'),(63,'Can delete feedback',16,'delete_feedback'),(64,'Can view feedback',16,'view_feedback'),(65,'Can add additionally',17,'add_additionally'),(66,'Can change additionally',17,'change_additionally'),(67,'Can delete additionally',17,'delete_additionally'),(68,'Can view additionally',17,'view_additionally'),(69,'Can add professional skills',18,'add_professionalskills'),(70,'Can change professional skills',18,'change_professionalskills'),(71,'Can delete professional skills',18,'delete_professionalskills'),(72,'Can view professional skills',18,'view_professionalskills'),(73,'Can add photos',19,'add_photos'),(74,'Can change photos',19,'change_photos'),(75,'Can delete photos',19,'delete_photos'),(76,'Can view photos',19,'view_photos'),(77,'Can add conditions',20,'add_conditions'),(78,'Can change conditions',20,'change_conditions'),(79,'Can delete conditions',20,'delete_conditions'),(80,'Can view conditions',20,'view_conditions'),(81,'Can add vacancy',21,'add_vacancy'),(82,'Can change vacancy',21,'change_vacancy'),(83,'Can delete vacancy',21,'delete_vacancy'),(84,'Can view vacancy',21,'view_vacancy'),(85,'Can add ticket',22,'add_ticket'),(86,'Can change ticket',22,'change_ticket'),(87,'Can delete ticket',22,'delete_ticket'),(88,'Can view ticket',22,'view_ticket');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$ZWJEMIUIt5t077fcNv8Oxs$FSVJY82xzJkXTYmZW1Q/M5GT7YxuXFzwAZCmYWvWNkY=','2024-08-22 12:43:25.132815',0,'siraminor','Александр','Торгашов','siraminor@yandex.ru',0,1,'2024-08-05 07:40:19.431116'),(2,'pbkdf2_sha256$600000$J433KIv8jmJ9fx0uNz7Vf6$CsAjxj7VXtXPAQ+RlILfqFhoinXNDPjawO/StC6kP8U=','2024-08-13 12:45:10.651692',0,'sergey','Сергей','Торгашов','173lis@mail.ru',0,1,'2024-08-07 09:26:19.095602'),(3,'pbkdf2_sha256$600000$5fZM6QDt2gfjjDbSJRzPJ2$/hr1koi2BLzC7QyCENRGsTzXzLx114hLBuGS2Ob8if4=','2024-08-18 18:24:58.226181',1,'admin','','','',1,1,'2024-08-18 17:57:37.924365');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
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
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(22,'help','ticket'),(12,'resume','about'),(11,'resume','drivinglicense'),(10,'resume','education'),(19,'resume','photos'),(9,'resume','portfolio'),(18,'resume','professionalskills'),(7,'resume','resume'),(8,'resume','workexperience'),(17,'services','additionally'),(16,'services','feedback'),(15,'services','photos'),(14,'services','service'),(6,'sessions','session'),(13,'users','employer'),(20,'vacancy','conditions'),(21,'vacancy','vacancy');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-08-04 17:05:07.520944'),(2,'auth','0001_initial','2024-08-04 17:05:08.125810'),(3,'admin','0001_initial','2024-08-04 17:05:08.254517'),(4,'admin','0002_logentry_remove_auto_add','2024-08-04 17:05:08.262525'),(5,'admin','0003_logentry_add_action_flag_choices','2024-08-04 17:05:08.269531'),(6,'contenttypes','0002_remove_content_type_name','2024-08-04 17:05:08.340596'),(7,'auth','0002_alter_permission_name_max_length','2024-08-04 17:05:08.393060'),(8,'auth','0003_alter_user_email_max_length','2024-08-04 17:05:08.411633'),(9,'auth','0004_alter_user_username_opts','2024-08-04 17:05:08.417638'),(10,'auth','0005_alter_user_last_login_null','2024-08-04 17:05:08.466633'),(11,'auth','0006_require_contenttypes_0002','2024-08-04 17:05:08.469635'),(12,'auth','0007_alter_validators_add_error_messages','2024-08-04 17:05:08.476639'),(13,'auth','0008_alter_user_username_max_length','2024-08-04 17:05:08.534662'),(14,'auth','0009_alter_user_last_name_max_length','2024-08-04 17:05:08.593755'),(15,'auth','0010_alter_group_name_max_length','2024-08-04 17:05:08.609768'),(16,'auth','0011_update_proxy_permissions','2024-08-04 17:05:08.616609'),(17,'auth','0012_alter_user_first_name_max_length','2024-08-04 17:05:08.674271'),(18,'resume','0001_initial','2024-08-04 17:05:09.158129'),(19,'sessions','0001_initial','2024-08-04 17:05:09.194534'),(20,'users','0001_initial','2024-08-04 17:05:09.284865'),(21,'services','0001_initial','2024-08-04 17:49:14.377469'),(22,'services','0002_alter_feedback_estimation_alter_photos_image_and_more','2024-08-04 18:04:03.167643'),(23,'resume','0002_alter_about_biography_alter_portfolio_description_and_more','2024-08-04 19:23:46.988609'),(24,'resume','0003_delete_drivinglicense','2024-08-05 08:02:22.785609'),(25,'resume','0004_professionalskills','2024-08-05 08:16:36.802876'),(26,'resume','0002_remove_portfolio_image_alter_portfolio_resume_photos','2024-08-05 10:25:27.445983'),(27,'resume','0003_alter_workexperience_experience','2024-08-06 09:21:56.436178'),(28,'services','0003_additionally_car_additionally_tools_and_more','2024-08-06 09:21:56.826421'),(29,'services','0004_service_date_update_service_date_uploaded','2024-08-06 09:24:05.211448'),(30,'services','0005_alter_additionally_minimum_order','2024-08-06 12:07:12.452263'),(31,'services','0006_alter_service_email_alter_service_phone','2024-08-06 12:20:35.489283'),(32,'resume','0004_alter_resume_email_alter_resume_phone','2024-08-06 12:21:15.473751'),(33,'vacancy','0001_initial','2024-08-07 10:08:20.863165'),(34,'services','0007_alter_feedback_estimation','2024-08-10 12:09:40.550248'),(35,'services','0008_alter_additionally_service_alter_service_experience','2024-08-10 12:57:14.320704'),(36,'vacancy','0002_vacancy_date_update_vacancy_date_uploaded','2024-08-10 13:47:37.968488'),(37,'vacancy','0003_alter_conditions_vacancy','2024-08-10 13:50:08.037183'),(38,'vacancy','0004_remove_conditions_photo_vacancy_photo','2024-08-11 10:21:11.179368'),(39,'resume','0005_alter_workexperience_company_name_and_more','2024-08-11 11:37:21.955770'),(40,'resume','0006_alter_professionalskills_skills','2024-08-12 18:08:24.147583'),(41,'help','0001_initial','2024-08-18 18:27:40.678792');
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
INSERT INTO `django_session` VALUES ('gqxbu1ix60fs4xxc4grukshvbq1i6kgl','.eJxVjMsOwiAQRf-FtSFAeYhL934DYZgZqRqalHZl_HfbpAvdnnPufYuU16WmtdOcRhQXocXpl0EuT2q7wEdu90mWqS3zCHJP5GG7vE1Ir-vR_h3U3Ou2tqSN8pYdMXgmp0OOmtUZ4qDJMURkJsTsHDpjgi0qcIRBB_IbRhafL_rgOQQ:1savh3:bLk1sH7GyvUF7SQe9V0EK7PwZXvbPUe0vX1s4Mm4bK4','2024-08-19 11:16:01.936957'),('wwpa8cell89brcnd7tmrpafavx6inaxp','.eJxVjMsOwiAQRf-FtSFAeYhL934DYZgZqRqalHZl_HfbpAvdnnPufYuU16WmtdOcRhQXocXpl0EuT2q7wEdu90mWqS3zCHJP5GG7vE1Ir-vR_h3U3Ou2tqSN8pYdMXgmp0OOmtUZ4qDJMURkJsTsHDpjgi0qcIRBB_IbRhafL_rgOQQ:1sh79x:ov-Zn3enhAbumicQPYtKTK18zS2UYKJpz0MNpJI8B7A','2024-09-05 12:43:25.171850');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_ticket`
--

DROP TABLE IF EXISTS `help_ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_ticket` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(16) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `ticket_file` varchar(100) DEFAULT NULL,
  `date_uploaded` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_ticket`
--

LOCK TABLES `help_ticket` WRITE;
/*!40000 ALTER TABLE `help_ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `help_ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_about`
--

DROP TABLE IF EXISTS `resume_about`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resume_about` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `biography` longtext,
  `resume_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resume_id` (`resume_id`),
  CONSTRAINT `resume_about_resume_id_45077660_fk_resume_resume_id` FOREIGN KEY (`resume_id`) REFERENCES `resume_resume` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_about`
--

LOCK TABLES `resume_about` WRITE;
/*!40000 ALTER TABLE `resume_about` DISABLE KEYS */;
INSERT INTO `resume_about` VALUES (1,'',1),(3,'',4);
/*!40000 ALTER TABLE `resume_about` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_education`
--

DROP TABLE IF EXISTS `resume_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resume_education` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `degree` varchar(31) NOT NULL,
  `form_of_education` varchar(14) NOT NULL,
  `year_of_graduation` int unsigned NOT NULL,
  `educational_institution` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `specialty` varchar(150) NOT NULL,
  `resume_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_education_resume_id_dfdfc5f8_fk_resume_resume_id` (`resume_id`),
  CONSTRAINT `resume_education_resume_id_dfdfc5f8_fk_resume_resume_id` FOREIGN KEY (`resume_id`) REFERENCES `resume_resume` (`id`),
  CONSTRAINT `resume_education_chk_1` CHECK ((`year_of_graduation` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_education`
--

LOCK TABLES `resume_education` WRITE;
/*!40000 ALTER TABLE `resume_education` DISABLE KEYS */;
INSERT INTO `resume_education` VALUES (1,'higher education','full-time',2021,'ДИТИ НИЯУ МИФИ','Информатика','Программист',1),(3,'secondary education','full-part-time',2020,'ДИТИ НИЯУ МИФИ','','',4);
/*!40000 ALTER TABLE `resume_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_photos`
--

DROP TABLE IF EXISTS `resume_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resume_photos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `portfolio_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_photos_portfolio_id_c13b144e_fk_resume_portfolio_id` (`portfolio_id`),
  CONSTRAINT `resume_photos_portfolio_id_c13b144e_fk_resume_portfolio_id` FOREIGN KEY (`portfolio_id`) REFERENCES `resume_portfolio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_photos`
--

LOCK TABLES `resume_photos` WRITE;
/*!40000 ALTER TABLE `resume_photos` DISABLE KEYS */;
INSERT INTO `resume_photos` VALUES (1,'photo/resume_images/2024/08/05/1.PNG',1),(2,'photo/resume_images/2024/08/05/Снимок.PNG',1);
/*!40000 ALTER TABLE `resume_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_portfolio`
--

DROP TABLE IF EXISTS `resume_portfolio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resume_portfolio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `resume_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resume_portfolio_resume_id_4a527607_uniq` (`resume_id`),
  CONSTRAINT `resume_portfolio_resume_id_4a527607_fk_resume_resume_id` FOREIGN KEY (`resume_id`) REFERENCES `resume_resume` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_portfolio`
--

LOCK TABLES `resume_portfolio` WRITE;
/*!40000 ALTER TABLE `resume_portfolio` DISABLE KEYS */;
INSERT INTO `resume_portfolio` VALUES (1,'Все сделанные сайты работают по сей день',1),(3,'',4);
/*!40000 ALTER TABLE `resume_portfolio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_professionalskills`
--

DROP TABLE IF EXISTS `resume_professionalskills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resume_professionalskills` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `skills` longtext,
  `resume_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resume_id` (`resume_id`),
  CONSTRAINT `resume_professionalskills_resume_id_dc024044_fk_resume_resume_id` FOREIGN KEY (`resume_id`) REFERENCES `resume_resume` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_professionalskills`
--

LOCK TABLES `resume_professionalskills` WRITE;
/*!40000 ALTER TABLE `resume_professionalskills` DISABLE KEYS */;
INSERT INTO `resume_professionalskills` VALUES (1,'Python Django SQL',1),(3,'',4);
/*!40000 ALTER TABLE `resume_professionalskills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_resume`
--

DROP TABLE IF EXISTS `resume_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resume_resume` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `date_birth` date NOT NULL,
  `city` varchar(50) NOT NULL,
  `removal` tinyint(1) NOT NULL,
  `remote_work` tinyint(1) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `post` varchar(100) NOT NULL,
  `salary_currency` varchar(3) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `employment` varchar(10) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `resume_file` varchar(100) DEFAULT NULL,
  `date_uploaded` datetime(6) NOT NULL,
  `date_update` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_resume_user_id_0b155703_fk_auth_user_id` (`user_id`),
  CONSTRAINT `resume_resume_user_id_0b155703_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_resume`
--

LOCK TABLES `resume_resume` WRITE;
/*!40000 ALTER TABLE `resume_resume` DISABLE KEYS */;
INSERT INTO `resume_resume` VALUES (1,'Александр','Торгашов','2002-09-18','Димитровград',0,1,'+79022467055','siraminor@yandex.ru','Python разработчик','RUB',80000.00,'full-time','','','2024-08-05 12:06:36.959888','2024-08-05 12:06:36.959888',1),(4,'Александр','Торгашов','2002-09-18','Димитровград',1,0,'+79022467055','siraminor@yandex.ru','Охранник','RUB',60000.00,'full-time','','','2024-08-12 18:09:16.241114','2024-08-12 18:09:16.241114',1);
/*!40000 ALTER TABLE `resume_resume` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resume_workexperience`
--

DROP TABLE IF EXISTS `resume_workexperience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resume_workexperience` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `position` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `experience` varchar(18) NOT NULL,
  `right_now` tinyint(1) NOT NULL,
  `description` longtext NOT NULL,
  `achievements` longtext NOT NULL,
  `resume_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `resume_workexperience_resume_id_64f9c63e_fk_resume_resume_id` (`resume_id`),
  CONSTRAINT `resume_workexperience_resume_id_64f9c63e_fk_resume_resume_id` FOREIGN KEY (`resume_id`) REFERENCES `resume_resume` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resume_workexperience`
--

LOCK TABLES `resume_workexperience` WRITE;
/*!40000 ALTER TABLE `resume_workexperience` DISABLE KEYS */;
INSERT INTO `resume_workexperience` VALUES (1,'Разработчик python на Django','IT-gear','2022-03-12','2023-10-21','2',0,'','',1),(3,'','',NULL,NULL,'without-experience',0,'','',4);
/*!40000 ALTER TABLE `resume_workexperience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_additionally`
--

DROP TABLE IF EXISTS `services_additionally`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_additionally` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contract` varchar(3) NOT NULL,
  `warranty` varchar(3) NOT NULL,
  `minimum_order_currency` varchar(3) DEFAULT NULL,
  `minimum_order` decimal(10,2) DEFAULT NULL,
  `purchase` varchar(3) NOT NULL,
  `service_id` bigint NOT NULL,
  `car` varchar(3) NOT NULL,
  `tools` varchar(3) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `services_additionally_service_id_82ff41b6_uniq` (`service_id`),
  CONSTRAINT `services_additionally_service_id_82ff41b6_fk_services_service_id` FOREIGN KEY (`service_id`) REFERENCES `services_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_additionally`
--

LOCK TABLES `services_additionally` WRITE;
/*!40000 ALTER TABLE `services_additionally` DISABLE KEYS */;
INSERT INTO `services_additionally` VALUES (1,'no','yes','RUB',2000.00,'yes',2,'yes','yes'),(2,'no','no','RUB',5000.00,'no',3,'yes','yes'),(3,'no','no','RUB',2000.00,'no',4,'yes','no'),(4,'yes','no','RUB',1000.00,'no',5,'no','yes'),(5,'yes','yes','RUB',10000.00,'yes',6,'yes','yes'),(6,'yes','no','RUB',5000.00,'no',7,'yes','yes');
/*!40000 ALTER TABLE `services_additionally` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_feedback`
--

DROP TABLE IF EXISTS `services_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_feedback` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `estimation` int NOT NULL,
  `feedback_text` longtext NOT NULL,
  `service_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `services_feedback_service_id_2891bd66_fk_services_service_id` (`service_id`),
  CONSTRAINT `services_feedback_service_id_2891bd66_fk_services_service_id` FOREIGN KEY (`service_id`) REFERENCES `services_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_feedback`
--

LOCK TABLES `services_feedback` WRITE;
/*!40000 ALTER TABLE `services_feedback` DISABLE KEYS */;
INSERT INTO `services_feedback` VALUES (1,5,'Сделал свою работу качественно и в короткие сроки, буду обращаться ещё!',2),(2,3,'Всё отлично',2);
/*!40000 ALTER TABLE `services_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_photos`
--

DROP TABLE IF EXISTS `services_photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_photos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `service_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `services_photos_service_id_5e6ce729_fk_services_service_id` (`service_id`),
  CONSTRAINT `services_photos_service_id_5e6ce729_fk_services_service_id` FOREIGN KEY (`service_id`) REFERENCES `services_service` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_photos`
--

LOCK TABLES `services_photos` WRITE;
/*!40000 ALTER TABLE `services_photos` DISABLE KEYS */;
INSERT INTO `services_photos` VALUES (1,'photo/resume_images/2024/08/10/Снимок.PNG',2),(2,'photo/resume_images/2024/08/12/1.PNG',2),(3,'photo/resume_images/2024/08/12/2.PNG',2),(4,'photo/resume_images/2024/08/12/3.PNG',2);
/*!40000 ALTER TABLE `services_photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services_service`
--

DROP TABLE IF EXISTS `services_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services_service` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `experience` varchar(18) NOT NULL,
  `group` varchar(18) NOT NULL,
  `description` longtext NOT NULL,
  `price_list` longtext,
  `cost_currency` varchar(3) NOT NULL,
  `cost` decimal(10,2) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `user_id` int NOT NULL,
  `date_update` datetime(6) NOT NULL,
  `date_uploaded` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `services_service_user_id_4bbc67ac_fk_auth_user_id` (`user_id`),
  CONSTRAINT `services_service_user_id_4bbc67ac_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services_service`
--

LOCK TABLES `services_service` WRITE;
/*!40000 ALTER TABLE `services_service` DISABLE KEYS */;
INSERT INTO `services_service` VALUES (2,'Отделочник','3','1','Выполняю работы по отделке стен в новостройках','Выровнять стену 2000 рублей','RUB',5000.00,'+79022467055','siraminor@yandex.ru',1,'2024-08-12 13:04:59.567298','2024-08-06 12:21:20.483391'),(3,'Массажист','6','1','Мануальный массаж всего тела','','RUB',5000.00,'+79022467055','siraminor@yandex.ru',1,'2024-08-06 12:24:52.037130','2024-08-06 12:24:52.037130'),(4,'Перевозка груза','2','2-4','Помощь с переездом, перевоз крупногабаритных грузов.','Подъём на этаж - 200 р','RUB',2000.00,'+79022467055','siraminor@yandex.ru',1,'2024-08-06 12:31:12.241693','2024-08-06 12:31:12.241693'),(5,'Выгул собак','1','1','Выгуливание собаки утром и вечером','','RUB',1000.00,'+79022467055','siraminor@yandex.ru',1,'2024-08-06 12:35:33.968726','2024-08-06 12:35:33.968726'),(6,'Клининг','4','2-4','Уборка квартиры и дома.','','RUB',10000.00,'+79022467055','siraminor@yandex.ru',1,'2024-08-06 12:41:09.778327','2024-08-06 12:41:09.778327'),(7,'Тамада','less-than-year','1','Проведение свадеб, дней рождений, различных праздников','','RUB',5000.00,'+79022467055','siraminor@yandex.ru',1,'2024-08-06 12:52:23.964141','2024-08-06 12:52:23.964141');
/*!40000 ALTER TABLE `services_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_employer`
--

DROP TABLE IF EXISTS `users_employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_employer` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `company_name` varchar(100) NOT NULL,
  `company_description` longtext NOT NULL,
  `company_phone` varchar(20) DEFAULT NULL,
  `company_email` varchar(254) DEFAULT NULL,
  `company_address` varchar(200) DEFAULT NULL,
  `company_site` varchar(200) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `users_employer_user_id_d473f901_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_employer`
--

LOCK TABLES `users_employer` WRITE;
/*!40000 ALTER TABLE `users_employer` DISABLE KEYS */;
INSERT INTO `users_employer` VALUES (1,'AGIMA','AGIMA — крупнейший интегратор digital-решений. Один из лидеров в сфере веб-разработки и мобильной разработки по версии Тэглайн и Ruward.','89567567345','info_agima@agima.ru','г Москва, б-р. Большой (инновационного центра Сколково Тер), стр. 1, эт 4 пом 1485 Раб 17','https://www.agima.ru/',2);
/*!40000 ALTER TABLE `users_employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacancy_conditions`
--

DROP TABLE IF EXISTS `vacancy_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacancy_conditions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `employment` varchar(18) NOT NULL,
  `contract` varchar(33) NOT NULL,
  `salary_currency` varchar(3) NOT NULL,
  `salary` decimal(14,2) NOT NULL,
  `underworking` tinyint(1) NOT NULL,
  `remote_work` tinyint(1) NOT NULL,
  `frequency_payments` varchar(11) NOT NULL,
  `what_employees_get` longtext,
  `vacancy_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vacancy_conditions_vacancy_id_4e901a9e_uniq` (`vacancy_id`),
  CONSTRAINT `vacancy_conditions_vacancy_id_4e901a9e_fk_vacancy_vacancy_id` FOREIGN KEY (`vacancy_id`) REFERENCES `vacancy_vacancy` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacancy_conditions`
--

LOCK TABLES `vacancy_conditions` WRITE;
/*!40000 ALTER TABLE `vacancy_conditions` DISABLE KEYS */;
INSERT INTO `vacancy_conditions` VALUES (1,'full-time','employment-contract','RUB',60000.00,0,0,'twice-month','Медицинская страховка',1),(2,'full-time','GPH-contract-with-individual','RUB',45000.00,0,0,'twice-month','Питание, Мед страховка, Униформа',2);
/*!40000 ALTER TABLE `vacancy_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacancy_vacancy`
--

DROP TABLE IF EXISTS `vacancy_vacancy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacancy_vacancy` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `profession` varchar(50) NOT NULL,
  `field_of_activity` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `company_id` bigint NOT NULL,
  `date_update` datetime(6) NOT NULL,
  `date_uploaded` datetime(6) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vacancy_vacancy_company_id_686e3505_fk_users_employer_id` (`company_id`),
  CONSTRAINT `vacancy_vacancy_company_id_686e3505_fk_users_employer_id` FOREIGN KEY (`company_id`) REFERENCES `users_employer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacancy_vacancy`
--

LOCK TABLES `vacancy_vacancy` WRITE;
/*!40000 ALTER TABLE `vacancy_vacancy` DISABLE KEYS */;
INSERT INTO `vacancy_vacancy` VALUES (1,'Требуется Системный программист','Программист','Информационные технологии','Обязанности:\r\n\r\nПроектирование, разработка и поддержка системного программного обеспечения.\r\nОптимизация существующих программных решений для повышения производительности.\r\nУчастие в анализе требований и проектировании архитектуры систем.\r\nПроведение тестирования и отладки системного ПО.\r\nСотрудничество с другими командами для интеграции различных систем и сервисов.\r\nТребования:\r\n\r\nОпыт работы в разработке системного программного обеспечения (C, C++, Rust или аналогичные языки).\r\nЗнание принципов работы операционных систем и архитектуры компьютеров.\r\nОпыт работы с инструментами для разработки и отладки ПО.\r\nУмение работать с документацией и разработка технических спецификаций.\r\nВысшее образование в области информационных технологий или смежных областях.\r\nУсловия:\r\n\r\nКонкурентоспособная зарплата.\r\nВозможности для профессионального роста и обучения.\r\nГибкий график работы.\r\nДружелюбная команда и интересные проекты.',1,'2024-08-10 13:47:37.916957','2024-08-10 13:47:37.944792',NULL),(2,'Требуется оператор станка ЧПУ','Оператор станка ЧПУ','Механическая обработка','Изготовление деталей и компонентов из различных материалов (металл, пластик, дерево) методом фрезерования, токарной обработки, сверления и т. д.',1,'2024-08-10 14:13:14.559719','2024-08-10 14:13:14.559719',NULL);
/*!40000 ALTER TABLE `vacancy_vacancy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-28 19:21:34
