-- MySQL dump 10.13  Distrib 5.7.33, for Linux (x86_64)
--
-- Host: localhost    Database: backend_Tkonstruye
-- ------------------------------------------------------
-- Server version	5.7.33-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Construcción Casa','2021-04-19 01:51:12',1,1,'2021-04-19 05:51:07','2021-04-19 07:19:43'),(2,'Construcción Piscina','2021-04-19 01:58:06',1,1,'2021-04-19 05:58:03','2021-04-19 07:24:41'),(4,'Prueba a ver','2021-04-20 21:25:59',1,1,'2021-04-21 01:25:56','2021-04-21 01:25:59');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `region` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Antofagasta',1,'2021-04-19 04:37:45',1,1,'2021-04-19 08:37:34','2021-04-19 08:37:45'),(2,'Santiago',3,'2021-04-19 04:40:39',1,1,'2021-04-19 08:40:19','2021-04-19 08:40:39');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communes`
--

DROP TABLE IF EXISTS `communes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `city` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communes`
--

LOCK TABLES `communes` WRITE;
/*!40000 ALTER TABLE `communes` DISABLE KEYS */;
INSERT INTO `communes` VALUES (1,'Antofagasta',1,'2021-03-23 20:14:50',1,1,'2021-03-15 19:43:37','2021-04-19 08:37:34',1),(2,'La Florida',NULL,'2021-03-25 20:40:38',1,1,'2021-03-26 00:40:27','2021-04-19 08:40:19',2);
/*!40000 ALTER TABLE `communes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configs`
--

DROP TABLE IF EXISTS `configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configs`
--

LOCK TABLES `configs` WRITE;
/*!40000 ALTER TABLE `configs` DISABLE KEYS */;
INSERT INTO `configs` VALUES (1,'2021-03-17 22:03:19',1,1,'2021-03-18 02:03:15','2021-03-18 03:24:20');
/*!40000 ALTER TABLE `configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_store`
--

DROP TABLE IF EXISTS `core_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `core_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_store`
--

LOCK TABLES `core_store` WRITE;
/*!40000 ALTER TABLE `core_store` DISABLE KEYS */;
INSERT INTO `core_store` VALUES (1,'model_def_strapi::core-store','{\"uid\":\"strapi::core-store\",\"collectionName\":\"core_store\",\"info\":{\"name\":\"core_store\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}}','object',NULL,NULL),(2,'model_def_strapi::webhooks','{\"uid\":\"strapi::webhooks\",\"collectionName\":\"strapi_webhooks\",\"info\":{\"name\":\"Strapi webhooks\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}}','object',NULL,NULL),(3,'model_def_strapi::permission','{\"uid\":\"strapi::permission\",\"collectionName\":\"strapi_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Permission\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"fields\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"model\":\"role\",\"plugin\":\"admin\"}}}','object',NULL,NULL),(4,'model_def_strapi::role','{\"uid\":\"strapi::role\",\"collectionName\":\"strapi_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Role\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"collection\":\"user\",\"via\":\"roles\",\"plugin\":\"admin\",\"attribute\":\"user\",\"column\":\"id\",\"isVirtual\":true},\"permissions\":{\"configurable\":false,\"plugin\":\"admin\",\"collection\":\"permission\",\"via\":\"role\",\"isVirtual\":true}}}','object',NULL,NULL),(5,'model_def_strapi::user','{\"uid\":\"strapi::user\",\"collectionName\":\"strapi_administrator\",\"kind\":\"collectionType\",\"info\":{\"name\":\"User\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"collection\":\"role\",\"collectionName\":\"strapi_users_roles\",\"via\":\"users\",\"dominant\":true,\"plugin\":\"admin\",\"configurable\":false,\"private\":true,\"attribute\":\"role\",\"column\":\"id\",\"isVirtual\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true}}}','object',NULL,NULL),(6,'model_def_plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"collectionName\":\"users-permissions_permission\",\"kind\":\"collectionType\",\"info\":{\"name\":\"permission\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(7,'model_def_plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"collectionName\":\"users-permissions_role\",\"kind\":\"collectionType\",\"info\":{\"name\":\"role\",\"description\":\"\"},\"options\":{\"timestamps\":false},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(8,'model_def_plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"collectionName\":\"users-permissions_user\",\"kind\":\"collectionType\",\"info\":{\"name\":\"user\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"name\":{\"type\":\"string\",\"maxLength\":128},\"rut\":{\"type\":\"string\",\"maxLength\":10},\"phone\":{\"type\":\"string\",\"maxLength\":16},\"giro\":{\"type\":\"text\",\"maxLength\":200},\"contact\":{\"type\":\"text\",\"maxLength\":200},\"slogan\":{\"type\":\"text\",\"maxLength\":200},\"photo\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"commune\":{\"model\":\"commune\",\"via\":\"users\"},\"tickets\":{\"via\":\"users_permissions_user\",\"collection\":\"ticket\",\"isVirtual\":true},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(9,'model_def_plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"collectionName\":\"upload_file\",\"kind\":\"collectionType\",\"info\":{\"name\":\"file\",\"description\":\"\"},\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(10,'plugin_users-permissions_grant','{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}','object','',''),(11,'plugin_upload_settings','{\"sizeOptimization\":true,\"responsiveDimensions\":true}','object','development',''),(12,'plugin_content_manager_configuration_content_types::strapi::permission','{\"uid\":\"strapi::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"Subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Subject\",\"searchable\":true,\"sortable\":true}},\"fields\":{\"edit\":{\"label\":\"Fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Fields\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"Conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"fields\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}]]}}','object','',''),(13,'plugin_content_manager_configuration_content_types::strapi::role','{\"uid\":\"strapi::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"Code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"editRelations\":[\"users\",\"permissions\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6}]]}}','object','',''),(14,'plugin_content_manager_configuration_content_types::strapi::user','{\"uid\":\"strapi::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"Firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"Lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"RegistrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"RegistrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"IsActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"Roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"editRelations\":[\"roles\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}','object','',''),(15,'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission','{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}','object','',''),(16,'plugin_content_manager_configuration_content_types::plugins::users-permissions.role','{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}','object','',''),(17,'plugin_content_manager_configuration_content_types::plugins::users-permissions.user','{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"ConfirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ConfirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"rut\":{\"edit\":{\"label\":\"Rut\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Rut\",\"searchable\":true,\"sortable\":true}},\"phone\":{\"edit\":{\"label\":\"Phone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Phone\",\"searchable\":true,\"sortable\":true}},\"giro\":{\"edit\":{\"label\":\"Giro\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Giro\",\"searchable\":true,\"sortable\":true}},\"contact\":{\"edit\":{\"label\":\"Contact\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Contact\",\"searchable\":true,\"sortable\":true}},\"slogan\":{\"edit\":{\"label\":\"Slogan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Slogan\",\"searchable\":true,\"sortable\":true}},\"photo\":{\"edit\":{\"label\":\"Photo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Photo\",\"searchable\":false,\"sortable\":false}},\"commune\":{\"edit\":{\"label\":\"Commune\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Commune\",\"searchable\":true,\"sortable\":true}},\"tickets\":{\"edit\":{\"label\":\"Tickets\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Tickets\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"role\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"username\",\"size\":6}],[{\"name\":\"email\",\"size\":6},{\"name\":\"phone\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"rut\",\"size\":6}],[{\"name\":\"confirmed\",\"size\":4},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"giro\",\"size\":6},{\"name\":\"photo\",\"size\":6}],[{\"name\":\"slogan\",\"size\":6},{\"name\":\"contact\",\"size\":6}]],\"editRelations\":[\"role\",\"commune\",\"tickets\"]}}','object','',''),(18,'plugin_content_manager_configuration_content_types::plugins::upload.file','{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}','object','',''),(19,'plugin_users-permissions_email','{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}','object','',''),(20,'plugin_users-permissions_advanced','{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":\"http://localhost:8081/resetpassword\",\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}','object','',''),(21,'plugin_documentation_config','{\"restrictedAccess\":false}','object','',''),(22,'model_def_application::works.works','{\"uid\":\"application::works.works\",\"collectionName\":\"works\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Works\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"Name\":{\"type\":\"string\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(23,'model_def_application::country.country','{\"uid\":\"application::country.country\",\"collectionName\":\"countries\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Country\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\",\"maxLength\":32},\"regions\":{\"via\":\"country\",\"collection\":\"region\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(24,'plugin_content_manager_configuration_content_types::application::country.country','{\"uid\":\"application::country.country\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"regions\":{\"edit\":{\"label\":\"Regions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Regions\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"regions\"],\"list\":[\"id\",\"name\",\"regions\"]}}','object','',''),(25,'model_def_application::region.region','{\"uid\":\"application::region.region\",\"collectionName\":\"regions\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Region\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\",\"maxLength\":32},\"country\":{\"model\":\"country\",\"via\":\"regions\"},\"cities\":{\"via\":\"region\",\"collection\":\"city\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(26,'plugin_content_manager_configuration_content_types::application::region.region','{\"uid\":\"application::region.region\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"country\":{\"edit\":{\"label\":\"Country\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Country\",\"searchable\":true,\"sortable\":true}},\"cities\":{\"edit\":{\"label\":\"Cities\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Cities\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"country\",\"cities\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"country\",\"cities\"]}}','object','',''),(27,'model_def_application::province.province','{\"uid\":\"application::province.province\",\"collectionName\":\"CIty\",\"kind\":\"collectionType\",\"info\":{\"name\":\"City\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\",\"maxLength\":32},\"region\":{\"model\":\"region\",\"via\":\"provinces\"},\"communes\":{\"via\":\"city\",\"collection\":\"commune\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(29,'model_def_application::commune.commune','{\"uid\":\"application::commune.commune\",\"collectionName\":\"communes\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Commune\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\",\"maxLength\":32},\"users\":{\"via\":\"commune\",\"plugin\":\"users-permissions\",\"collection\":\"user\",\"isVirtual\":true},\"city\":{\"via\":\"communes\",\"model\":\"city\"},\"tickets\":{\"via\":\"commune\",\"collection\":\"ticket\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(30,'plugin_content_manager_configuration_content_types::application::commune.commune','{\"uid\":\"application::commune.commune\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}},\"city\":{\"edit\":{\"label\":\"City\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"City\",\"searchable\":true,\"sortable\":true}},\"tickets\":{\"edit\":{\"label\":\"Tickets\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Tickets\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"city\",\"tickets\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"users\",\"city\",\"tickets\"]}}','object','',''),(31,'model_def_application::config.config','{\"uid\":\"application::config.config\",\"collectionName\":\"configs\",\"kind\":\"singleType\",\"info\":{\"name\":\"Config\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"logo\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"logo_mobile\":{\"model\":\"file\",\"via\":\"related\",\"allowedTypes\":[\"images\",\"files\",\"videos\"],\"plugin\":\"upload\",\"required\":false},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(32,'plugin_content_manager_configuration_content_types::application::config.config','{\"uid\":\"application::config.config\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"logo\":{\"edit\":{\"label\":\"Logo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Logo\",\"searchable\":false,\"sortable\":false}},\"logo_mobile\":{\"edit\":{\"label\":\"Logo_mobile\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Logo_mobile\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"logo\",\"published_at\",\"created_at\"],\"edit\":[[{\"name\":\"logo\",\"size\":6},{\"name\":\"logo_mobile\",\"size\":6}]],\"editRelations\":[]}}','object','',''),(33,'model_def_application::customer.customer','{\"uid\":\"application::customer.customer\",\"collectionName\":\"customers\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Customer\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\"},\"phone\":{\"type\":\"string\"},\"slogan\":{\"type\":\"text\"},\"rut\":{\"type\":\"string\"},\"giro\":{\"type\":\"text\"},\"contact\":{\"type\":\"text\"},\"commune\":{\"model\":\"commune\",\"via\":\"customers\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(34,'model_def_application::category.category','{\"uid\":\"application::category.category\",\"collectionName\":\"categories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Category\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"subcategories\":{\"collection\":\"subcategory\",\"via\":\"category\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(35,'plugin_content_manager_configuration_content_types::application::category.category','{\"uid\":\"application::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"subcategories\":{\"edit\":{\"label\":\"Subcategories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Subcategories\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"subcategories\"],\"list\":[\"id\",\"name\",\"subcategories\"]}}','object','',''),(36,'model_def_application::subcategory.subcategory','{\"uid\":\"application::subcategory.subcategory\",\"collectionName\":\"subcategories\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Subcategory\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"category\":{\"via\":\"subcategories\",\"model\":\"category\"},\"wizard_fields\":{\"via\":\"subcategories\",\"collection\":\"wizard-field\",\"attribute\":\"wizard-field\",\"column\":\"id\",\"isVirtual\":true},\"tickets\":{\"via\":\"subcategory\",\"collection\":\"ticket\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(37,'plugin_content_manager_configuration_content_types::application::subcategory.subcategory','{\"uid\":\"application::subcategory.subcategory\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"Category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Category\",\"searchable\":true,\"sortable\":true}},\"wizard_fields\":{\"edit\":{\"label\":\"Wizard_fields\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"label\"},\"list\":{\"label\":\"Wizard_fields\",\"searchable\":false,\"sortable\":false}},\"tickets\":{\"edit\":{\"label\":\"Tickets\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Tickets\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"category\",\"tickets\"],\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"category\",\"wizard_fields\",\"tickets\"]}}','object','',''),(38,'model_def_application::wizar-field.wizar-field','{\"uid\":\"application::wizar-field.wizar-field\",\"collectionName\":\"wizar_fields\",\"kind\":\"collectionType\",\"info\":{\"name\":\"WizardField\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"type\":{\"type\":\"enumeration\",\"enum\":[\"string\",\"number\",\"float\",\"boolean\",\"select\"],\"required\":true},\"isSelect\":{\"type\":\"json\"},\"isNumberMax\":{\"type\":\"integer\"},\"isNumberMin\":{\"type\":\"integer\"},\"isRequired\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"subcategories\":{\"collection\":\"subcategory\",\"via\":\"wizar_fields\",\"dominant\":true,\"attribute\":\"subcategory\",\"column\":\"id\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(40,'model_def_application::city.city','{\"uid\":\"application::city.city\",\"collectionName\":\"cities\",\"kind\":\"collectionType\",\"info\":{\"name\":\"City\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"name\":{\"type\":\"string\"},\"region\":{\"model\":\"region\",\"via\":\"cities\"},\"communes\":{\"collection\":\"commune\",\"via\":\"city\",\"isVirtual\":true},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(41,'plugin_content_manager_configuration_content_types::application::city.city','{\"uid\":\"application::city.city\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"region\":{\"edit\":{\"label\":\"Region\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Region\",\"searchable\":true,\"sortable\":true}},\"communes\":{\"edit\":{\"label\":\"Communes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Communes\",\"searchable\":false,\"sortable\":false}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"name\",\"size\":6}]],\"editRelations\":[\"region\",\"communes\"],\"list\":[\"id\",\"name\",\"region\",\"communes\"]}}','object','',''),(42,'model_def_application::wizard-field.wizard-field','{\"uid\":\"application::wizard-field.wizard-field\",\"collectionName\":\"wizard_fields\",\"kind\":\"collectionType\",\"info\":{\"name\":\"WizardField\",\"description\":\"\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"label\":{\"type\":\"string\",\"required\":true},\"type\":{\"type\":\"enumeration\",\"enum\":[\"text\",\"number\",\"select\",\"radio\",\"checkbox\",\"textarea\"],\"required\":true},\"isNumberMin\":{\"type\":\"integer\"},\"isNumberMax\":{\"type\":\"integer\"},\"isSelect\":{\"type\":\"json\"},\"isRadio\":{\"type\":\"json\"},\"isCheckbox\":{\"type\":\"json\"},\"isRequired\":{\"type\":\"boolean\",\"default\":false,\"required\":true},\"subcategories\":{\"collection\":\"subcategory\",\"via\":\"wizard_fields\",\"dominant\":true,\"attribute\":\"subcategory\",\"column\":\"id\",\"isVirtual\":true},\"isTextLength\":{\"type\":\"integer\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(43,'plugin_content_manager_configuration_content_types::application::wizard-field.wizard-field','{\"uid\":\"application::wizard-field.wizard-field\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"label\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"isSelect\":{\"edit\":{\"label\":\"IsSelect\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsSelect\",\"searchable\":false,\"sortable\":false}},\"isRequired\":{\"edit\":{\"label\":\"IsRequired\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsRequired\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"isCheckbox\":{\"edit\":{\"label\":\"IsCheckbox\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsCheckbox\",\"searchable\":false,\"sortable\":false}},\"isRadio\":{\"edit\":{\"label\":\"IsRadio\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsRadio\",\"searchable\":false,\"sortable\":false}},\"isNumberMax\":{\"edit\":{\"label\":\"IsNumberMax\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsNumberMax\",\"searchable\":true,\"sortable\":true}},\"label\":{\"edit\":{\"label\":\"Label\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Label\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"subcategories\":{\"edit\":{\"label\":\"Subcategories\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Subcategories\",\"searchable\":false,\"sortable\":false}},\"isTextLength\":{\"edit\":{\"label\":\"IsTextLength\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsTextLength\",\"searchable\":true,\"sortable\":true}},\"isNumberMin\":{\"edit\":{\"label\":\"IsNumberMin\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"IsNumberMin\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"label\",\"size\":6},{\"name\":\"type\",\"size\":6}],[{\"name\":\"isRequired\",\"size\":4}],[{\"name\":\"isTextLength\",\"size\":4},{\"name\":\"isNumberMin\",\"size\":4},{\"name\":\"isNumberMax\",\"size\":4}],[{\"name\":\"isSelect\",\"size\":12}],[{\"name\":\"isRadio\",\"size\":12}],[{\"name\":\"isCheckbox\",\"size\":12}]],\"editRelations\":[\"subcategories\"],\"list\":[\"id\",\"label\",\"type\"]}}','object','',''),(44,'model_def_application::ticket.ticket','{\"uid\":\"application::ticket.ticket\",\"collectionName\":\"tickets\",\"kind\":\"collectionType\",\"info\":{\"name\":\"Ticket\"},\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"draftAndPublish\":true},\"attributes\":{\"subcategory\":{\"model\":\"subcategory\",\"via\":\"tickets\"},\"users_permissions_user\":{\"plugin\":\"users-permissions\",\"model\":\"user\",\"via\":\"tickets\"},\"requirements\":{\"type\":\"json\"},\"commune\":{\"model\":\"commune\",\"via\":\"tickets\"},\"published_at\":{\"type\":\"datetime\",\"configurable\":false},\"created_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true},\"updated_by\":{\"model\":\"user\",\"plugin\":\"admin\",\"configurable\":false,\"writable\":false,\"private\":true}}}','object',NULL,NULL),(45,'plugin_content_manager_configuration_content_types::application::ticket.ticket','{\"uid\":\"application::ticket.ticket\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"subcategory\":{\"edit\":{\"label\":\"Subcategory\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Subcategory\",\"searchable\":true,\"sortable\":true}},\"users_permissions_user\":{\"edit\":{\"label\":\"Users_permissions_user\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users_permissions_user\",\"searchable\":true,\"sortable\":true}},\"requirements\":{\"edit\":{\"label\":\"Requirements\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Requirements\",\"searchable\":false,\"sortable\":false}},\"commune\":{\"edit\":{\"label\":\"Commune\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Commune\",\"searchable\":true,\"sortable\":true}},\"published_at\":{\"edit\":{\"label\":\"Published_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Published_at\",\"searchable\":true,\"sortable\":true}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"requirements\",\"size\":12}]],\"editRelations\":[\"subcategory\",\"users_permissions_user\",\"commune\"],\"list\":[\"id\",\"users_permissions_user\",\"subcategory\",\"commune\"]}}','object','','');
/*!40000 ALTER TABLE `core_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Chile','2021-03-15 15:40:35',1,1,'2021-03-15 19:38:42','2021-03-15 19:40:35');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regions`
--

DROP TABLE IF EXISTS `regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regions`
--

LOCK TABLES `regions` WRITE;
/*!40000 ALTER TABLE `regions` DISABLE KEYS */;
INSERT INTO `regions` VALUES (1,'Antofagasta',1,'2021-03-23 20:15:14',1,1,'2021-03-15 19:42:09','2021-03-24 00:15:15'),(2,'Tarapacá',1,'2021-03-16 00:52:07',1,1,'2021-03-16 04:51:58','2021-03-16 04:52:07'),(3,'Región Metropolitana',1,'2021-03-25 20:39:17',1,1,'2021-03-26 00:39:12','2021-03-26 00:42:15');
/*!40000 ALTER TABLE `regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_administrator`
--

DROP TABLE IF EXISTS `strapi_administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_administrator` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `registrationToken` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_administrator_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_administrator`
--

LOCK TABLES `strapi_administrator` WRITE;
/*!40000 ALTER TABLE `strapi_administrator` DISABLE KEYS */;
INSERT INTO `strapi_administrator` VALUES (1,'Admin','Tkonstruye',NULL,'admintkonstruye@gmail.com','$2a$10$S2u9LLMo7oHlvuysDBtIdOEiaRHMVh/d1oxWzHCOAnq17PmzzPcSq',NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `strapi_administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_permission`
--

DROP TABLE IF EXISTS `strapi_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fields` longtext,
  `conditions` longtext,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_permission`
--

LOCK TABLES `strapi_permission` WRITE;
/*!40000 ALTER TABLE `strapi_permission` DISABLE KEYS */;
INSERT INTO `strapi_permission` VALUES (1,'plugins::upload.read',NULL,NULL,'[]',2,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(2,'plugins::upload.assets.create',NULL,NULL,'[]',2,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(3,'plugins::upload.assets.update',NULL,NULL,'[]',2,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(4,'plugins::upload.assets.download',NULL,NULL,'[]',2,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(5,'plugins::upload.assets.copy-link',NULL,NULL,'[]',2,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(6,'plugins::upload.read',NULL,NULL,'[\"admin::is-creator\"]',3,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(7,'plugins::upload.assets.create',NULL,NULL,'[]',3,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(8,'plugins::upload.assets.update',NULL,NULL,'[\"admin::is-creator\"]',3,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(9,'plugins::upload.assets.download',NULL,NULL,'[]',3,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(10,'plugins::upload.assets.copy-link',NULL,NULL,'[]',3,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(14,'plugins::content-manager.explorer.delete','plugins::users-permissions.user',NULL,'[]',1,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(15,'plugins::content-type-builder.read',NULL,NULL,'[]',1,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(16,'plugins::upload.read',NULL,NULL,'[]',1,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(17,'plugins::upload.assets.create',NULL,NULL,'[]',1,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(18,'plugins::upload.assets.update',NULL,NULL,'[]',1,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(19,'plugins::upload.assets.download',NULL,NULL,'[]',1,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(20,'plugins::upload.assets.copy-link',NULL,NULL,'[]',1,'2021-02-01 08:29:09','2021-02-01 08:29:09'),(21,'plugins::upload.settings.read',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(22,'plugins::content-manager.single-types.configure-view',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(23,'plugins::content-manager.collection-types.configure-view',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(24,'plugins::content-manager.components.configure-layout',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(25,'plugins::users-permissions.roles.create',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(26,'plugins::users-permissions.roles.read',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(27,'plugins::users-permissions.roles.update',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(28,'plugins::users-permissions.roles.delete',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(29,'plugins::users-permissions.providers.read',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(30,'plugins::users-permissions.providers.update',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(31,'plugins::users-permissions.email-templates.read',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(32,'plugins::users-permissions.email-templates.update',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(33,'plugins::users-permissions.advanced-settings.read',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(34,'plugins::users-permissions.advanced-settings.update',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(35,'admin::marketplace.read',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(36,'admin::marketplace.plugins.install',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(37,'admin::marketplace.plugins.uninstall',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(38,'admin::webhooks.create',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(39,'admin::webhooks.read',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(40,'admin::webhooks.update',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(41,'admin::webhooks.delete',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(42,'admin::users.create',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(43,'admin::users.read',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(44,'admin::users.update',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(45,'admin::users.delete',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(46,'admin::roles.create',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(47,'admin::roles.read',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(48,'admin::roles.update',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(49,'admin::roles.delete',NULL,NULL,'[]',1,'2021-02-01 08:29:10','2021-02-01 08:29:10'),(50,'plugins::documentation.read',NULL,NULL,'[]',1,'2021-02-03 01:07:03','2021-02-03 01:07:03'),(51,'plugins::documentation.settings.update',NULL,NULL,'[]',1,'2021-02-03 01:07:03','2021-02-03 01:07:03'),(52,'plugins::documentation.settings.regenerate',NULL,NULL,'[]',1,'2021-02-03 01:07:03','2021-02-03 01:07:03'),(62,'plugins::content-manager.explorer.delete','application::country.country',NULL,'[]',1,'2021-03-15 19:19:27','2021-03-15 19:19:27'),(63,'plugins::content-manager.explorer.publish','application::country.country',NULL,'[]',1,'2021-03-15 19:19:27','2021-03-15 19:19:27'),(64,'plugins::content-manager.explorer.create','application::country.country','[\"name\",\"regions\"]','[]',1,'2021-03-15 19:25:37','2021-03-15 19:25:37'),(66,'plugins::content-manager.explorer.read','application::country.country','[\"name\",\"regions\"]','[]',1,'2021-03-15 19:25:37','2021-03-15 19:25:37'),(68,'plugins::content-manager.explorer.update','application::country.country','[\"name\",\"regions\"]','[]',1,'2021-03-15 19:25:37','2021-03-15 19:25:37'),(70,'plugins::content-manager.explorer.delete','application::region.region',NULL,'[]',1,'2021-03-15 19:25:37','2021-03-15 19:25:37'),(71,'plugins::content-manager.explorer.publish','application::region.region',NULL,'[]',1,'2021-03-15 19:25:37','2021-03-15 19:25:37'),(86,'plugins::content-manager.explorer.delete','application::commune.commune',NULL,'[]',1,'2021-03-15 19:28:35','2021-03-15 19:28:35'),(87,'plugins::content-manager.explorer.publish','application::commune.commune',NULL,'[]',1,'2021-03-15 19:28:35','2021-03-15 19:28:35'),(97,'plugins::content-manager.explorer.delete','application::config.config',NULL,'[]',1,'2021-03-18 02:01:01','2021-03-18 02:01:01'),(98,'plugins::content-manager.explorer.publish','application::config.config',NULL,'[]',1,'2021-03-18 02:01:01','2021-03-18 02:01:01'),(99,'plugins::content-manager.explorer.create','application::config.config','[\"logo\",\"logo_mobile\"]','[]',1,'2021-03-18 03:23:47','2021-03-18 03:23:47'),(100,'plugins::content-manager.explorer.read','application::config.config','[\"logo\",\"logo_mobile\"]','[]',1,'2021-03-18 03:23:47','2021-03-18 03:23:47'),(101,'plugins::content-manager.explorer.update','application::config.config','[\"logo\",\"logo_mobile\"]','[]',1,'2021-03-18 03:23:47','2021-03-18 03:23:47'),(134,'plugins::content-manager.explorer.delete','application::category.category',NULL,'[]',1,'2021-04-19 05:49:59','2021-04-19 05:49:59'),(135,'plugins::content-manager.explorer.publish','application::category.category',NULL,'[]',1,'2021-04-19 05:49:59','2021-04-19 05:49:59'),(136,'plugins::content-manager.explorer.create','application::category.category','[\"name\",\"subcategories\"]','[]',1,'2021-04-19 05:52:26','2021-04-19 05:52:26'),(138,'plugins::content-manager.explorer.read','application::category.category','[\"name\",\"subcategories\"]','[]',1,'2021-04-19 05:52:26','2021-04-19 05:52:26'),(140,'plugins::content-manager.explorer.update','application::category.category','[\"name\",\"subcategories\"]','[]',1,'2021-04-19 05:52:26','2021-04-19 05:52:26'),(142,'plugins::content-manager.explorer.delete','application::subcategory.subcategory',NULL,'[]',1,'2021-04-19 05:52:26','2021-04-19 05:52:26'),(143,'plugins::content-manager.explorer.publish','application::subcategory.subcategory',NULL,'[]',1,'2021-04-19 05:52:26','2021-04-19 05:52:26'),(155,'plugins::content-manager.explorer.create','application::city.city','[\"name\",\"region\",\"communes\"]','[]',1,'2021-04-19 08:36:42','2021-04-19 08:36:42'),(157,'plugins::content-manager.explorer.create','application::region.region','[\"name\",\"country\",\"cities\"]','[]',1,'2021-04-19 08:36:42','2021-04-19 08:36:42'),(158,'plugins::content-manager.explorer.read','application::city.city','[\"name\",\"region\",\"communes\"]','[]',1,'2021-04-19 08:36:42','2021-04-19 08:36:42'),(160,'plugins::content-manager.explorer.read','application::region.region','[\"name\",\"country\",\"cities\"]','[]',1,'2021-04-19 08:36:42','2021-04-19 08:36:42'),(161,'plugins::content-manager.explorer.update','application::city.city','[\"name\",\"region\",\"communes\"]','[]',1,'2021-04-19 08:36:42','2021-04-19 08:36:42'),(163,'plugins::content-manager.explorer.update','application::region.region','[\"name\",\"country\",\"cities\"]','[]',1,'2021-04-19 08:36:42','2021-04-19 08:36:42'),(164,'plugins::content-manager.explorer.delete','application::city.city',NULL,'[]',1,'2021-04-19 08:36:42','2021-04-19 08:36:42'),(165,'plugins::content-manager.explorer.publish','application::city.city',NULL,'[]',1,'2021-04-19 08:36:42','2021-04-19 08:36:42'),(172,'plugins::content-manager.explorer.delete','application::wizard-field.wizard-field',NULL,'[]',1,'2021-04-19 08:49:54','2021-04-19 08:49:54'),(173,'plugins::content-manager.explorer.publish','application::wizard-field.wizard-field',NULL,'[]',1,'2021-04-19 08:49:54','2021-04-19 08:49:54'),(174,'plugins::content-manager.explorer.create','application::wizard-field.wizard-field','[\"label\",\"type\",\"isNumberMin\",\"isNumberMax\",\"isSelect\",\"isRadio\",\"isCheckbox\",\"isRequired\",\"subcategories\",\"isTextLength\"]','[]',1,'2021-04-19 22:32:57','2021-04-19 22:32:57'),(175,'plugins::content-manager.explorer.read','application::wizard-field.wizard-field','[\"label\",\"type\",\"isNumberMin\",\"isNumberMax\",\"isSelect\",\"isRadio\",\"isCheckbox\",\"isRequired\",\"subcategories\",\"isTextLength\"]','[]',1,'2021-04-19 22:32:57','2021-04-19 22:32:57'),(176,'plugins::content-manager.explorer.update','application::wizard-field.wizard-field','[\"label\",\"type\",\"isNumberMin\",\"isNumberMax\",\"isSelect\",\"isRadio\",\"isCheckbox\",\"isRequired\",\"subcategories\",\"isTextLength\"]','[]',1,'2021-04-19 22:32:57','2021-04-19 22:32:57'),(177,'plugins::content-manager.explorer.create','application::commune.commune','[\"name\",\"users\",\"city\",\"tickets\"]','[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:36'),(178,'plugins::content-manager.explorer.create','application::subcategory.subcategory','[\"name\",\"category\",\"wizard_fields\",\"tickets\"]','[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:36'),(179,'plugins::content-manager.explorer.create','application::ticket.ticket','[\"subcategory\",\"users_permissions_user\",\"requirements\",\"commune\"]','[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:36'),(180,'plugins::content-manager.explorer.create','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"name\",\"rut\",\"phone\",\"giro\",\"contact\",\"slogan\",\"photo\",\"commune\",\"tickets\"]','[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:36'),(181,'plugins::content-manager.explorer.read','application::commune.commune','[\"name\",\"users\",\"city\",\"tickets\"]','[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:36'),(182,'plugins::content-manager.explorer.read','application::subcategory.subcategory','[\"name\",\"category\",\"wizard_fields\",\"tickets\"]','[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:36'),(183,'plugins::content-manager.explorer.read','application::ticket.ticket','[\"subcategory\",\"users_permissions_user\",\"requirements\",\"commune\"]','[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:36'),(184,'plugins::content-manager.explorer.read','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"name\",\"rut\",\"phone\",\"giro\",\"contact\",\"slogan\",\"photo\",\"commune\",\"tickets\"]','[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:36'),(185,'plugins::content-manager.explorer.update','application::commune.commune','[\"name\",\"users\",\"city\",\"tickets\"]','[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:36'),(186,'plugins::content-manager.explorer.update','application::subcategory.subcategory','[\"name\",\"category\",\"wizard_fields\",\"tickets\"]','[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:36'),(187,'plugins::content-manager.explorer.update','application::ticket.ticket','[\"subcategory\",\"users_permissions_user\",\"requirements\",\"commune\"]','[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:36'),(188,'plugins::content-manager.explorer.update','plugins::users-permissions.user','[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\",\"name\",\"rut\",\"phone\",\"giro\",\"contact\",\"slogan\",\"photo\",\"commune\",\"tickets\"]','[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:37'),(189,'plugins::content-manager.explorer.delete','application::ticket.ticket',NULL,'[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:37'),(190,'plugins::content-manager.explorer.publish','application::ticket.ticket',NULL,'[]',1,'2021-04-22 09:18:36','2021-04-22 09:18:37');
/*!40000 ALTER TABLE `strapi_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_role`
--

DROP TABLE IF EXISTS `strapi_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `strapi_role_name_unique` (`name`),
  UNIQUE KEY `strapi_role_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_role`
--

LOCK TABLES `strapi_role` WRITE;
/*!40000 ALTER TABLE `strapi_role` DISABLE KEYS */;
INSERT INTO `strapi_role` VALUES (1,'Super Admin','strapi-super-admin','Super Admins can access and manage all features and settings.','2021-02-01 08:29:08','2021-02-01 08:29:08'),(2,'Editor','strapi-editor','Editors can manage and publish contents including those of other users.','2021-02-01 08:29:09','2021-02-01 08:29:09'),(3,'Author','strapi-author','Authors can manage the content they have created.','2021-02-01 08:29:09','2021-02-01 08:29:09');
/*!40000 ALTER TABLE `strapi_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_users_roles`
--

DROP TABLE IF EXISTS `strapi_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_users_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_users_roles`
--

LOCK TABLES `strapi_users_roles` WRITE;
/*!40000 ALTER TABLE `strapi_users_roles` DISABLE KEYS */;
INSERT INTO `strapi_users_roles` VALUES (1,1,1);
/*!40000 ALTER TABLE `strapi_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strapi_webhooks`
--

DROP TABLE IF EXISTS `strapi_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strapi_webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strapi_webhooks`
--

LOCK TABLES `strapi_webhooks` WRITE;
/*!40000 ALTER TABLE `strapi_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `strapi_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,'Construir Casa',1,'2021-04-19 01:57:25',1,1,'2021-04-19 05:57:18','2021-04-21 01:21:58'),(2,'Ampliar Casa',1,'2021-04-19 01:58:13',1,1,'2021-04-19 05:57:42','2021-04-19 07:20:25'),(3,'Construir Piscina Obra',2,'2021-04-19 01:58:39',1,1,'2021-04-19 05:58:30','2021-04-19 07:25:00'),(4,'Prueba Gmail henry',4,'2021-04-20 21:58:14',1,1,'2021-04-21 01:58:11','2021-04-21 01:58:14');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories_wizard_fields__wizard_fields_subcategories`
--

DROP TABLE IF EXISTS `subcategories_wizard_fields__wizard_fields_subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategories_wizard_fields__wizard_fields_subcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wizard-field_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories_wizard_fields__wizard_fields_subcategories`
--

LOCK TABLES `subcategories_wizard_fields__wizard_fields_subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories_wizard_fields__wizard_fields_subcategories` DISABLE KEYS */;
INSERT INTO `subcategories_wizard_fields__wizard_fields_subcategories` VALUES (1,1,1),(2,2,1),(3,3,2),(4,4,2),(5,5,1),(7,6,3);
/*!40000 ALTER TABLE `subcategories_wizard_fields__wizard_fields_subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subcategory` int(11) DEFAULT NULL,
  `users_permissions_user` int(11) DEFAULT NULL,
  `requirements` longtext,
  `commune` int(11) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,2,34,NULL,1,'2021-04-23 01:23:49',1,1,'2021-04-23 05:23:44','2021-04-23 05:23:49'),(2,2,34,'{\"¡probando campo texto!\":\"asdasd\",\"¡probando campo number!\":\"5\"}',2,'2021-04-23 01:37:36',NULL,NULL,'2021-04-23 05:37:36','2021-04-23 05:37:36'),(3,2,34,'{\"¡probando campo texto!\":\"asdasd\",\"¡probando campo number!\":\"5\"}',2,'2021-04-23 01:41:37',NULL,NULL,'2021-04-23 05:41:37','2021-04-23 05:41:37'),(4,2,34,'{\"¡probando campo texto!\":\"asdasd\",\"¡probando campo number!\":\"5\"}',2,'2021-04-23 01:43:05',NULL,NULL,'2021-04-23 05:43:06','2021-04-23 05:43:06'),(5,3,33,'{\"probando textarea\":\"es aqui la respuesta debe ser aceptada\"}',2,'2021-04-23 02:09:26',NULL,NULL,'2021-04-23 06:09:26','2021-04-23 06:09:26'),(6,3,33,'{\"probando textarea\":\"es aqui la respuesta debe ser aceptada\"}',2,'2021-04-23 02:10:42',NULL,NULL,'2021-04-23 06:10:42','2021-04-23 06:10:42'),(7,3,33,'{\"probando textarea\":\"es aqui la respuesta debe ser aceptada\"}',2,'2021-04-23 02:12:03',NULL,NULL,'2021-04-23 06:12:03','2021-04-23 06:12:03'),(8,3,33,'{\"probando textarea\":\"es aqui la respuesta debe ser aceptada\"}',2,'2021-04-23 02:14:01',NULL,NULL,'2021-04-23 06:14:01','2021-04-23 06:14:02');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file`
--

DROP TABLE IF EXISTS `upload_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file`
--

LOCK TABLES `upload_file` WRITE;
/*!40000 ALTER TABLE `upload_file` DISABLE KEYS */;
INSERT INTO `upload_file` VALUES (2,'logo_1.png','','',1563,454,'{\"thumbnail\":{\"name\":\"thumbnail_unnamed.png\",\"hash\":\"thumbnail_unnamed_9890b2d656\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":245,\"height\":71,\"size\":7.33,\"path\":null,\"url\":\"/uploads/thumbnail_unnamed_9890b2d656.png\"},\"large\":{\"name\":\"large_unnamed.png\",\"hash\":\"large_unnamed_9890b2d656\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":1000,\"height\":290,\"size\":48.04,\"path\":null,\"url\":\"/uploads/large_unnamed_9890b2d656.png\"},\"medium\":{\"name\":\"medium_unnamed.png\",\"hash\":\"medium_unnamed_9890b2d656\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":218,\"size\":33.15,\"path\":null,\"url\":\"/uploads/medium_unnamed_9890b2d656.png\"},\"small\":{\"name\":\"small_unnamed.png\",\"hash\":\"small_unnamed_9890b2d656\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":145,\"size\":19.24,\"path\":null,\"url\":\"/uploads/small_unnamed_9890b2d656.png\"}}','unnamed_9890b2d656','.png','image/png',17.36,'/uploads/unnamed_9890b2d656.png',NULL,'local',NULL,1,1,'2021-03-18 02:51:05','2021-03-18 02:51:43'),(3,'unnamed (2).png','','',789,783,'{\"thumbnail\":{\"name\":\"thumbnail_unnamed (2).png\",\"hash\":\"thumbnail_unnamed_2_75e8f145fa\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":157,\"height\":156,\"size\":4.96,\"path\":null,\"url\":\"/uploads/thumbnail_unnamed_2_75e8f145fa.png\"},\"medium\":{\"name\":\"medium_unnamed (2).png\",\"hash\":\"medium_unnamed_2_75e8f145fa\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":750,\"height\":744,\"size\":35.74,\"path\":null,\"url\":\"/uploads/medium_unnamed_2_75e8f145fa.png\"},\"small\":{\"name\":\"small_unnamed (2).png\",\"hash\":\"small_unnamed_2_75e8f145fa\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":496,\"size\":21.55,\"path\":null,\"url\":\"/uploads/small_unnamed_2_75e8f145fa.png\"}}','unnamed_2_75e8f145fa','.png','image/png',8.93,'/uploads/unnamed_2_75e8f145fa.png',NULL,'local',NULL,1,1,'2021-03-18 03:24:16','2021-03-18 03:24:16'),(5,'pandora_favicon.png','','',512,512,'{\"thumbnail\":{\"name\":\"thumbnail_pandora_favicon.png\",\"hash\":\"thumbnail_pandora_favicon_11019ecd9d\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":156,\"height\":156,\"size\":13.6,\"path\":null,\"url\":\"/uploads/thumbnail_pandora_favicon_11019ecd9d.png\"},\"small\":{\"name\":\"small_pandora_favicon.png\",\"hash\":\"small_pandora_favicon_11019ecd9d\",\"ext\":\".png\",\"mime\":\"image/png\",\"width\":500,\"height\":500,\"size\":51.32,\"path\":null,\"url\":\"/uploads/small_pandora_favicon_11019ecd9d.png\"}}','pandora_favicon_11019ecd9d','.png','image/png',19.04,'/uploads/pandora_favicon_11019ecd9d.png',NULL,'local',NULL,1,1,'2021-03-24 08:32:33','2021-03-24 08:32:53'),(10,'Celebraran-cumpleaños-del-comandante-Hugo-Chávez-en-el-Cuartel-de-la-Montaña.jpg',NULL,NULL,800,445,'{\"thumbnail\":{\"name\":\"thumbnail_Celebraran-cumpleaños-del-comandante-Hugo-Chávez-en-el-Cuartel-de-la-Montaña.jpg\",\"hash\":\"thumbnail_Celebraran_cumpleanos_del_comandante_Hugo_Chavez_en_el_Cuartel_de_la_Montana_841d76cc18\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":245,\"height\":136,\"size\":9.08,\"path\":null,\"url\":\"/uploads/thumbnail_Celebraran_cumpleanos_del_comandante_Hugo_Chavez_en_el_Cuartel_de_la_Montana_841d76cc18.jpg\"},\"medium\":{\"name\":\"medium_Celebraran-cumpleaños-del-comandante-Hugo-Chávez-en-el-Cuartel-de-la-Montaña.jpg\",\"hash\":\"medium_Celebraran_cumpleanos_del_comandante_Hugo_Chavez_en_el_Cuartel_de_la_Montana_841d76cc18\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":750,\"height\":417,\"size\":51.23,\"path\":null,\"url\":\"/uploads/medium_Celebraran_cumpleanos_del_comandante_Hugo_Chavez_en_el_Cuartel_de_la_Montana_841d76cc18.jpg\"},\"small\":{\"name\":\"small_Celebraran-cumpleaños-del-comandante-Hugo-Chávez-en-el-Cuartel-de-la-Montaña.jpg\",\"hash\":\"small_Celebraran_cumpleanos_del_comandante_Hugo_Chavez_en_el_Cuartel_de_la_Montana_841d76cc18\",\"ext\":\".jpg\",\"mime\":\"image/jpeg\",\"width\":500,\"height\":278,\"size\":27.47,\"path\":null,\"url\":\"/uploads/small_Celebraran_cumpleanos_del_comandante_Hugo_Chavez_en_el_Cuartel_de_la_Montana_841d76cc18.jpg\"}}','Celebraran_cumpleanos_del_comandante_Hugo_Chavez_en_el_Cuartel_de_la_Montana_841d76cc18','.jpg','image/jpeg',56.57,'/uploads/Celebraran_cumpleanos_del_comandante_Hugo_Chavez_en_el_Cuartel_de_la_Montana_841d76cc18.jpg',NULL,'local',NULL,NULL,NULL,'2021-04-01 08:30:55','2021-04-01 08:30:55');
/*!40000 ALTER TABLE `upload_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upload_file_morph`
--

DROP TABLE IF EXISTS `upload_file_morph`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upload_file_morph` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upload_file_morph`
--

LOCK TABLES `upload_file_morph` WRITE;
/*!40000 ALTER TABLE `upload_file_morph` DISABLE KEYS */;
INSERT INTO `upload_file_morph` VALUES (3,2,1,'configs','logo',1),(4,3,1,'configs','logo_mobile',1),(6,10,33,'users-permissions_user','photo',1);
/*!40000 ALTER TABLE `upload_file_morph` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_permission`
--

DROP TABLE IF EXISTS `users-permissions_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=442 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_permission`
--

LOCK TABLES `users-permissions_permission` WRITE;
/*!40000 ALTER TABLE `users-permissions_permission` DISABLE KEYS */;
INSERT INTO `users-permissions_permission` VALUES (1,'content-manager','collection-types','bulkdelete',0,'',1,NULL,NULL),(2,'content-manager','collection-types','bulkdelete',0,'',2,NULL,NULL),(3,'content-manager','collection-types','find',0,'',1,NULL,NULL),(4,'content-manager','collection-types','create',0,'',1,NULL,NULL),(5,'content-manager','collection-types','create',0,'',2,NULL,NULL),(6,'content-manager','collection-types','delete',0,'',1,NULL,NULL),(7,'content-manager','collection-types','findone',0,'',2,NULL,NULL),(8,'content-manager','collection-types','delete',0,'',2,NULL,NULL),(9,'content-manager','collection-types','find',0,'',2,NULL,NULL),(10,'content-manager','collection-types','findone',0,'',1,NULL,NULL),(11,'content-manager','collection-types','previewmanyrelations',0,'',1,NULL,NULL),(12,'content-manager','collection-types','previewmanyrelations',0,'',2,NULL,NULL),(13,'content-manager','collection-types','publish',0,'',1,NULL,NULL),(14,'content-manager','collection-types','publish',0,'',2,NULL,NULL),(15,'content-manager','collection-types','unpublish',0,'',1,NULL,NULL),(16,'content-manager','collection-types','unpublish',0,'',2,NULL,NULL),(17,'content-manager','collection-types','update',0,'',1,NULL,NULL),(18,'content-manager','collection-types','update',0,'',2,NULL,NULL),(19,'content-manager','components','findcomponentconfiguration',0,'',1,NULL,NULL),(20,'content-manager','components','findcomponentconfiguration',0,'',2,NULL,NULL),(21,'content-manager','components','findcomponents',0,'',1,NULL,NULL),(22,'content-manager','components','findcomponents',0,'',2,NULL,NULL),(23,'content-manager','components','updatecomponentconfiguration',0,'',1,NULL,NULL),(24,'content-manager','components','updatecomponentconfiguration',0,'',2,NULL,NULL),(25,'content-manager','content-types','findcontenttypeconfiguration',0,'',1,NULL,NULL),(26,'content-manager','content-types','findcontenttypeconfiguration',0,'',2,NULL,NULL),(27,'content-manager','content-types','findcontenttypes',0,'',1,NULL,NULL),(28,'content-manager','content-types','findcontenttypes',0,'',2,NULL,NULL),(29,'content-manager','content-types','updatecontenttypeconfiguration',0,'',1,NULL,NULL),(30,'content-manager','content-types','updatecontenttypeconfiguration',0,'',2,NULL,NULL),(31,'content-manager','relations','find',0,'',1,NULL,NULL),(32,'content-manager','relations','find',0,'',2,NULL,NULL),(33,'content-manager','single-types','createorupdate',0,'',1,NULL,NULL),(34,'content-manager','single-types','createorupdate',0,'',2,NULL,NULL),(35,'content-manager','single-types','delete',0,'',1,NULL,NULL),(36,'content-manager','single-types','delete',0,'',2,NULL,NULL),(37,'content-manager','single-types','find',0,'',1,NULL,NULL),(38,'content-manager','single-types','find',0,'',2,NULL,NULL),(39,'content-manager','single-types','publish',0,'',1,NULL,NULL),(40,'content-manager','single-types','publish',0,'',2,NULL,NULL),(41,'content-manager','single-types','unpublish',0,'',1,NULL,NULL),(42,'content-manager','single-types','unpublish',0,'',2,NULL,NULL),(43,'content-manager','uid','checkuidavailability',0,'',1,NULL,NULL),(44,'content-manager','uid','checkuidavailability',0,'',2,NULL,NULL),(45,'content-manager','uid','generateuid',0,'',1,NULL,NULL),(46,'content-manager','uid','generateuid',0,'',2,NULL,NULL),(47,'content-type-builder','builder','getreservednames',0,'',1,NULL,NULL),(48,'content-type-builder','builder','getreservednames',0,'',2,NULL,NULL),(49,'content-type-builder','componentcategories','deletecategory',0,'',1,NULL,NULL),(50,'content-type-builder','componentcategories','deletecategory',0,'',2,NULL,NULL),(51,'content-type-builder','componentcategories','editcategory',0,'',1,NULL,NULL),(52,'content-type-builder','componentcategories','editcategory',0,'',2,NULL,NULL),(53,'content-type-builder','components','createcomponent',0,'',1,NULL,NULL),(54,'content-type-builder','components','createcomponent',0,'',2,NULL,NULL),(55,'content-type-builder','components','deletecomponent',0,'',1,NULL,NULL),(56,'content-type-builder','components','deletecomponent',0,'',2,NULL,NULL),(57,'content-type-builder','components','getcomponent',0,'',1,NULL,NULL),(58,'content-type-builder','components','getcomponent',0,'',2,NULL,NULL),(59,'content-type-builder','components','getcomponents',0,'',1,NULL,NULL),(60,'content-type-builder','components','getcomponents',0,'',2,NULL,NULL),(61,'content-type-builder','components','updatecomponent',0,'',1,NULL,NULL),(62,'content-type-builder','components','updatecomponent',0,'',2,NULL,NULL),(63,'content-type-builder','connections','getconnections',0,'',1,NULL,NULL),(64,'content-type-builder','connections','getconnections',0,'',2,NULL,NULL),(65,'content-type-builder','contenttypes','createcontenttype',0,'',1,NULL,NULL),(66,'content-type-builder','contenttypes','createcontenttype',0,'',2,NULL,NULL),(67,'content-type-builder','contenttypes','deletecontenttype',0,'',1,NULL,NULL),(68,'content-type-builder','contenttypes','deletecontenttype',0,'',2,NULL,NULL),(69,'content-type-builder','contenttypes','getcontenttype',0,'',1,NULL,NULL),(70,'content-type-builder','contenttypes','getcontenttype',0,'',2,NULL,NULL),(71,'content-type-builder','contenttypes','getcontenttypes',0,'',1,NULL,NULL),(72,'content-type-builder','contenttypes','getcontenttypes',0,'',2,NULL,NULL),(73,'content-type-builder','contenttypes','updatecontenttype',0,'',1,NULL,NULL),(74,'content-type-builder','contenttypes','updatecontenttype',0,'',2,NULL,NULL),(75,'email','email','send',0,'',1,NULL,NULL),(76,'email','email','send',0,'',2,NULL,NULL),(77,'upload','upload','count',0,'',1,NULL,NULL),(78,'upload','upload','count',0,'',2,NULL,NULL),(79,'upload','upload','destroy',0,'',1,NULL,NULL),(80,'upload','upload','destroy',0,'',2,NULL,NULL),(81,'upload','upload','find',0,'',1,NULL,NULL),(82,'upload','upload','find',0,'',2,NULL,NULL),(83,'upload','upload','findone',0,'',1,NULL,NULL),(84,'upload','upload','findone',0,'',2,NULL,NULL),(85,'upload','upload','getsettings',0,'',1,NULL,NULL),(86,'upload','upload','getsettings',0,'',2,NULL,NULL),(87,'upload','upload','search',0,'',1,NULL,NULL),(88,'upload','upload','search',0,'',2,NULL,NULL),(89,'upload','upload','updatesettings',0,'',1,NULL,NULL),(90,'upload','upload','updatesettings',0,'',2,NULL,NULL),(91,'upload','upload','upload',1,'',1,NULL,NULL),(92,'upload','upload','upload',0,'',2,NULL,NULL),(93,'users-permissions','auth','callback',1,'',1,NULL,NULL),(94,'users-permissions','auth','callback',1,'',2,NULL,NULL),(95,'users-permissions','auth','connect',1,'',1,NULL,NULL),(96,'users-permissions','auth','connect',1,'',2,NULL,NULL),(97,'users-permissions','auth','emailconfirmation',0,'',1,NULL,NULL),(98,'users-permissions','auth','emailconfirmation',1,'',2,NULL,NULL),(99,'users-permissions','auth','forgotpassword',1,'',1,NULL,NULL),(100,'users-permissions','auth','forgotpassword',1,'',2,NULL,NULL),(101,'users-permissions','auth','register',0,'',1,NULL,NULL),(102,'users-permissions','auth','register',1,'',2,NULL,NULL),(103,'users-permissions','auth','resetpassword',1,'',1,NULL,NULL),(104,'users-permissions','auth','resetpassword',1,'',2,NULL,NULL),(105,'users-permissions','auth','sendemailconfirmation',0,'',1,NULL,NULL),(106,'users-permissions','auth','sendemailconfirmation',0,'',2,NULL,NULL),(107,'users-permissions','user','count',0,'',1,NULL,NULL),(108,'users-permissions','user','count',0,'',2,NULL,NULL),(109,'users-permissions','user','create',0,'',1,NULL,NULL),(110,'users-permissions','user','create',1,'',2,NULL,NULL),(111,'users-permissions','user','destroy',0,'',1,NULL,NULL),(112,'users-permissions','user','destroy',0,'',2,NULL,NULL),(113,'users-permissions','user','destroyall',0,'',1,NULL,NULL),(114,'users-permissions','user','destroyall',0,'',2,NULL,NULL),(115,'users-permissions','user','find',0,'',1,NULL,NULL),(116,'users-permissions','user','find',1,'',2,NULL,NULL),(117,'users-permissions','user','findone',0,'',1,NULL,NULL),(118,'users-permissions','user','findone',1,'',2,NULL,NULL),(119,'users-permissions','user','me',1,'',1,NULL,NULL),(120,'users-permissions','user','me',1,'',2,NULL,NULL),(121,'users-permissions','user','update',1,'',1,NULL,NULL),(122,'users-permissions','user','update',0,'',2,NULL,NULL),(123,'users-permissions','userspermissions','createrole',0,'',1,NULL,NULL),(124,'users-permissions','userspermissions','createrole',0,'',2,NULL,NULL),(125,'users-permissions','userspermissions','deleterole',0,'',1,NULL,NULL),(126,'users-permissions','userspermissions','deleterole',0,'',2,NULL,NULL),(127,'users-permissions','userspermissions','getadvancedsettings',0,'',1,NULL,NULL),(128,'users-permissions','userspermissions','getadvancedsettings',0,'',2,NULL,NULL),(129,'users-permissions','userspermissions','getemailtemplate',0,'',1,NULL,NULL),(130,'users-permissions','userspermissions','getemailtemplate',0,'',2,NULL,NULL),(131,'users-permissions','userspermissions','getpermissions',0,'',1,NULL,NULL),(132,'users-permissions','userspermissions','getpermissions',0,'',2,NULL,NULL),(133,'users-permissions','userspermissions','getpolicies',0,'',1,NULL,NULL),(134,'users-permissions','userspermissions','getpolicies',0,'',2,NULL,NULL),(135,'users-permissions','userspermissions','getproviders',0,'',1,NULL,NULL),(136,'users-permissions','userspermissions','getproviders',0,'',2,NULL,NULL),(137,'users-permissions','userspermissions','getrole',0,'',1,NULL,NULL),(138,'users-permissions','userspermissions','getrole',0,'',2,NULL,NULL),(139,'users-permissions','userspermissions','getroles',1,'',1,NULL,NULL),(140,'users-permissions','userspermissions','getroles',1,'',2,NULL,NULL),(141,'users-permissions','userspermissions','getroutes',0,'',1,NULL,NULL),(142,'users-permissions','userspermissions','getroutes',0,'',2,NULL,NULL),(143,'users-permissions','userspermissions','index',0,'',1,NULL,NULL),(144,'users-permissions','userspermissions','index',0,'',2,NULL,NULL),(145,'users-permissions','userspermissions','searchusers',0,'',1,NULL,NULL),(146,'users-permissions','userspermissions','searchusers',0,'',2,NULL,NULL),(147,'users-permissions','userspermissions','updateadvancedsettings',0,'',1,NULL,NULL),(148,'users-permissions','userspermissions','updateadvancedsettings',0,'',2,NULL,NULL),(149,'users-permissions','userspermissions','updateemailtemplate',0,'',1,NULL,NULL),(150,'users-permissions','userspermissions','updateemailtemplate',0,'',2,NULL,NULL),(151,'users-permissions','userspermissions','updateproviders',0,'',1,NULL,NULL),(152,'users-permissions','userspermissions','updateproviders',0,'',2,NULL,NULL),(153,'users-permissions','userspermissions','updaterole',0,'',1,NULL,NULL),(154,'users-permissions','userspermissions','updaterole',0,'',2,NULL,NULL),(155,'documentation','documentation','deletedoc',0,'',1,NULL,NULL),(156,'documentation','documentation','deletedoc',0,'',2,NULL,NULL),(157,'documentation','documentation','getinfos',0,'',1,NULL,NULL),(158,'documentation','documentation','getinfos',0,'',2,NULL,NULL),(159,'documentation','documentation','index',0,'',1,NULL,NULL),(160,'documentation','documentation','index',0,'',2,NULL,NULL),(161,'documentation','documentation','login',0,'',1,NULL,NULL),(162,'documentation','documentation','login',0,'',2,NULL,NULL),(163,'documentation','documentation','loginview',0,'',1,NULL,NULL),(164,'documentation','documentation','loginview',0,'',2,NULL,NULL),(165,'documentation','documentation','regeneratedoc',0,'',1,NULL,NULL),(166,'documentation','documentation','regeneratedoc',0,'',2,NULL,NULL),(167,'documentation','documentation','updatesettings',0,'',1,NULL,NULL),(168,'documentation','documentation','updatesettings',0,'',2,NULL,NULL),(169,'content-manager','collection-types','find',0,'',3,NULL,NULL),(170,'content-manager','collection-types','findone',0,'',3,NULL,NULL),(171,'content-manager','collection-types','create',0,'',3,NULL,NULL),(172,'content-manager','collection-types','update',0,'',3,NULL,NULL),(173,'content-manager','collection-types','delete',0,'',3,NULL,NULL),(174,'content-manager','collection-types','publish',0,'',3,NULL,NULL),(175,'content-manager','collection-types','unpublish',0,'',3,NULL,NULL),(176,'content-manager','collection-types','bulkdelete',0,'',3,NULL,NULL),(177,'content-manager','collection-types','previewmanyrelations',0,'',3,NULL,NULL),(178,'content-manager','components','findcomponents',0,'',3,NULL,NULL),(179,'content-manager','components','findcomponentconfiguration',0,'',3,NULL,NULL),(180,'content-manager','components','updatecomponentconfiguration',0,'',3,NULL,NULL),(181,'content-manager','content-types','findcontenttypes',0,'',3,NULL,NULL),(182,'content-manager','content-types','findcontenttypeconfiguration',0,'',3,NULL,NULL),(183,'content-manager','content-types','updatecontenttypeconfiguration',0,'',3,NULL,NULL),(184,'content-manager','relations','find',1,'',3,NULL,NULL),(185,'content-manager','single-types','find',0,'',3,NULL,NULL),(186,'content-manager','single-types','createorupdate',0,'',3,NULL,NULL),(187,'content-manager','single-types','delete',0,'',3,NULL,NULL),(188,'content-manager','single-types','publish',0,'',3,NULL,NULL),(189,'content-manager','single-types','unpublish',0,'',3,NULL,NULL),(190,'content-manager','uid','generateuid',0,'',3,NULL,NULL),(191,'content-manager','uid','checkuidavailability',0,'',3,NULL,NULL),(192,'content-type-builder','builder','getreservednames',0,'',3,NULL,NULL),(193,'content-type-builder','componentcategories','editcategory',0,'',3,NULL,NULL),(194,'content-type-builder','componentcategories','deletecategory',0,'',3,NULL,NULL),(195,'content-type-builder','components','getcomponents',0,'',3,NULL,NULL),(196,'content-type-builder','components','getcomponent',0,'',3,NULL,NULL),(197,'content-type-builder','components','createcomponent',0,'',3,NULL,NULL),(198,'content-type-builder','components','updatecomponent',0,'',3,NULL,NULL),(199,'content-type-builder','components','deletecomponent',0,'',3,NULL,NULL),(200,'content-type-builder','connections','getconnections',0,'',3,NULL,NULL),(201,'content-type-builder','contenttypes','getcontenttypes',0,'',3,NULL,NULL),(202,'content-type-builder','contenttypes','getcontenttype',0,'',3,NULL,NULL),(203,'content-type-builder','contenttypes','createcontenttype',0,'',3,NULL,NULL),(204,'content-type-builder','contenttypes','updatecontenttype',0,'',3,NULL,NULL),(205,'content-type-builder','contenttypes','deletecontenttype',0,'',3,NULL,NULL),(206,'documentation','documentation','getinfos',0,'',3,NULL,NULL),(207,'documentation','documentation','index',0,'',3,NULL,NULL),(208,'documentation','documentation','loginview',0,'',3,NULL,NULL),(209,'documentation','documentation','login',0,'',3,NULL,NULL),(210,'documentation','documentation','regeneratedoc',0,'',3,NULL,NULL),(211,'documentation','documentation','deletedoc',0,'',3,NULL,NULL),(212,'documentation','documentation','updatesettings',0,'',3,NULL,NULL),(213,'email','email','send',0,'',3,NULL,NULL),(214,'upload','upload','find',0,'',3,NULL,NULL),(215,'upload','upload','findone',0,'',3,NULL,NULL),(216,'upload','upload','count',0,'',3,NULL,NULL),(217,'upload','upload','destroy',0,'',3,NULL,NULL),(218,'upload','upload','updatesettings',0,'',3,NULL,NULL),(219,'upload','upload','getsettings',0,'',3,NULL,NULL),(220,'upload','upload','upload',1,'',3,NULL,NULL),(221,'upload','upload','search',0,'',3,NULL,NULL),(222,'users-permissions','auth','callback',1,'',3,NULL,NULL),(223,'users-permissions','auth','resetpassword',1,'',3,NULL,NULL),(224,'users-permissions','auth','connect',1,'',3,NULL,NULL),(225,'users-permissions','auth','forgotpassword',1,'',3,NULL,NULL),(226,'users-permissions','auth','register',0,'',3,NULL,NULL),(227,'users-permissions','auth','emailconfirmation',0,'',3,NULL,NULL),(228,'users-permissions','auth','sendemailconfirmation',0,'',3,NULL,NULL),(229,'users-permissions','user','create',0,'',3,NULL,NULL),(230,'users-permissions','user','update',1,'',3,NULL,NULL),(231,'users-permissions','user','find',0,'',3,NULL,NULL),(232,'users-permissions','user','findone',0,'',3,NULL,NULL),(233,'users-permissions','user','count',0,'',3,NULL,NULL),(234,'users-permissions','user','destroy',0,'',3,NULL,NULL),(235,'users-permissions','user','destroyall',0,'',3,NULL,NULL),(236,'users-permissions','user','me',1,'',3,NULL,NULL),(237,'users-permissions','userspermissions','createrole',0,'',3,NULL,NULL),(238,'users-permissions','userspermissions','deleterole',0,'',3,NULL,NULL),(239,'users-permissions','userspermissions','getpermissions',0,'',3,NULL,NULL),(240,'users-permissions','userspermissions','getpolicies',0,'',3,NULL,NULL),(241,'users-permissions','userspermissions','getrole',0,'',3,NULL,NULL),(242,'users-permissions','userspermissions','getroles',1,'',3,NULL,NULL),(243,'users-permissions','userspermissions','getroutes',0,'',3,NULL,NULL),(244,'users-permissions','userspermissions','index',0,'',3,NULL,NULL),(245,'users-permissions','userspermissions','searchusers',0,'',3,NULL,NULL),(246,'users-permissions','userspermissions','updaterole',0,'',3,NULL,NULL),(247,'users-permissions','userspermissions','getemailtemplate',0,'',3,NULL,NULL),(248,'users-permissions','userspermissions','updateemailtemplate',0,'',3,NULL,NULL),(249,'users-permissions','userspermissions','getadvancedsettings',0,'',3,NULL,NULL),(250,'users-permissions','userspermissions','updateadvancedsettings',0,'',3,NULL,NULL),(251,'users-permissions','userspermissions','getproviders',0,'',3,NULL,NULL),(252,'users-permissions','userspermissions','updateproviders',0,'',3,NULL,NULL),(253,'application','country','count',0,'',1,NULL,NULL),(254,'application','country','count',0,'',2,NULL,NULL),(255,'application','country','count',0,'',3,NULL,NULL),(256,'application','country','create',0,'',1,NULL,NULL),(257,'application','country','create',0,'',2,NULL,NULL),(258,'application','country','create',0,'',3,NULL,NULL),(259,'application','country','delete',0,'',1,NULL,NULL),(260,'application','country','delete',0,'',2,NULL,NULL),(261,'application','country','delete',0,'',3,NULL,NULL),(262,'application','country','find',1,'',1,NULL,NULL),(263,'application','country','find',0,'',2,NULL,NULL),(264,'application','country','find',1,'',3,NULL,NULL),(265,'application','country','findone',1,'',1,NULL,NULL),(266,'application','country','findone',0,'',2,NULL,NULL),(267,'application','country','findone',1,'',3,NULL,NULL),(268,'application','country','update',0,'',1,NULL,NULL),(269,'application','country','update',0,'',2,NULL,NULL),(270,'application','country','update',0,'',3,NULL,NULL),(271,'application','region','count',0,'',1,NULL,NULL),(272,'application','region','count',0,'',2,NULL,NULL),(273,'application','region','count',0,'',3,NULL,NULL),(274,'application','region','create',0,'',1,NULL,NULL),(275,'application','region','create',0,'',2,NULL,NULL),(276,'application','region','create',0,'',3,NULL,NULL),(277,'application','region','delete',0,'',1,NULL,NULL),(278,'application','region','delete',0,'',2,NULL,NULL),(279,'application','region','delete',0,'',3,NULL,NULL),(280,'application','region','find',1,'',1,NULL,NULL),(281,'application','region','find',0,'',2,NULL,NULL),(282,'application','region','find',1,'',3,NULL,NULL),(283,'application','region','findone',1,'',1,NULL,NULL),(284,'application','region','findone',0,'',2,NULL,NULL),(285,'application','region','findone',1,'',3,NULL,NULL),(286,'application','region','update',0,'',1,NULL,NULL),(287,'application','region','update',0,'',2,NULL,NULL),(288,'application','region','update',0,'',3,NULL,NULL),(307,'application','commune','count',0,'',1,NULL,NULL),(308,'application','commune','count',0,'',2,NULL,NULL),(309,'application','commune','count',0,'',3,NULL,NULL),(310,'application','commune','create',0,'',1,NULL,NULL),(311,'application','commune','create',0,'',2,NULL,NULL),(312,'application','commune','create',0,'',3,NULL,NULL),(313,'application','commune','delete',0,'',1,NULL,NULL),(314,'application','commune','delete',0,'',2,NULL,NULL),(315,'application','commune','delete',0,'',3,NULL,NULL),(316,'application','commune','find',1,'',1,NULL,NULL),(317,'application','commune','find',0,'',2,NULL,NULL),(318,'application','commune','find',1,'',3,NULL,NULL),(319,'application','commune','findone',1,'',1,NULL,NULL),(320,'application','commune','findone',0,'',2,NULL,NULL),(321,'application','commune','findone',1,'',3,NULL,NULL),(322,'application','commune','update',0,'',1,NULL,NULL),(323,'application','commune','update',0,'',2,NULL,NULL),(324,'application','commune','update',0,'',3,NULL,NULL),(325,'application','config','delete',0,'',1,NULL,NULL),(326,'application','config','delete',0,'',2,NULL,NULL),(327,'application','config','delete',0,'',3,NULL,NULL),(328,'application','config','find',1,'',1,NULL,NULL),(329,'application','config','find',1,'',2,NULL,NULL),(330,'application','config','find',1,'',3,NULL,NULL),(331,'application','config','update',0,'',1,NULL,NULL),(332,'application','config','update',0,'',2,NULL,NULL),(333,'application','config','update',0,'',3,NULL,NULL),(334,'application','category','count',0,'',1,NULL,NULL),(335,'application','category','count',0,'',2,NULL,NULL),(336,'application','category','count',0,'',3,NULL,NULL),(337,'application','category','create',0,'',1,NULL,NULL),(338,'application','category','create',0,'',2,NULL,NULL),(339,'application','category','create',0,'',3,NULL,NULL),(340,'application','category','delete',0,'',1,NULL,NULL),(341,'application','category','delete',0,'',2,NULL,NULL),(342,'application','category','delete',0,'',3,NULL,NULL),(343,'application','category','find',1,'',1,NULL,NULL),(344,'application','category','find',1,'',2,NULL,NULL),(345,'application','category','find',1,'',3,NULL,NULL),(346,'application','category','findone',1,'',1,NULL,NULL),(347,'application','category','findone',1,'',2,NULL,NULL),(348,'application','category','findone',1,'',3,NULL,NULL),(349,'application','category','update',0,'',1,NULL,NULL),(350,'application','category','update',0,'',2,NULL,NULL),(351,'application','category','update',0,'',3,NULL,NULL),(352,'application','subcategory','count',0,'',1,NULL,NULL),(353,'application','subcategory','count',0,'',2,NULL,NULL),(354,'application','subcategory','count',0,'',3,NULL,NULL),(355,'application','subcategory','create',0,'',1,NULL,NULL),(356,'application','subcategory','create',0,'',2,NULL,NULL),(357,'application','subcategory','create',0,'',3,NULL,NULL),(358,'application','subcategory','delete',0,'',1,NULL,NULL),(359,'application','subcategory','delete',0,'',2,NULL,NULL),(360,'application','subcategory','delete',0,'',3,NULL,NULL),(361,'application','subcategory','find',1,'',1,NULL,NULL),(362,'application','subcategory','find',1,'',2,NULL,NULL),(363,'application','subcategory','find',1,'',3,NULL,NULL),(364,'application','subcategory','findone',1,'',1,NULL,NULL),(365,'application','subcategory','findone',1,'',2,NULL,NULL),(366,'application','subcategory','findone',1,'',3,NULL,NULL),(367,'application','subcategory','update',0,'',1,NULL,NULL),(368,'application','subcategory','update',0,'',2,NULL,NULL),(369,'application','subcategory','update',0,'',3,NULL,NULL),(388,'application','city','count',0,'',1,NULL,NULL),(389,'application','city','count',0,'',2,NULL,NULL),(390,'application','city','count',0,'',3,NULL,NULL),(391,'application','city','create',0,'',1,NULL,NULL),(392,'application','city','create',0,'',2,NULL,NULL),(393,'application','city','create',0,'',3,NULL,NULL),(394,'application','city','delete',0,'',1,NULL,NULL),(395,'application','city','delete',0,'',2,NULL,NULL),(396,'application','city','delete',0,'',3,NULL,NULL),(397,'application','city','find',1,'',1,NULL,NULL),(398,'application','city','find',0,'',2,NULL,NULL),(399,'application','city','find',1,'',3,NULL,NULL),(400,'application','city','findone',1,'',1,NULL,NULL),(401,'application','city','findone',0,'',2,NULL,NULL),(402,'application','city','findone',1,'',3,NULL,NULL),(403,'application','city','update',0,'',1,NULL,NULL),(404,'application','city','update',0,'',2,NULL,NULL),(405,'application','city','update',0,'',3,NULL,NULL),(406,'application','wizard-field','count',0,'',1,NULL,NULL),(407,'application','wizard-field','count',0,'',2,NULL,NULL),(408,'application','wizard-field','count',0,'',3,NULL,NULL),(409,'application','wizard-field','create',0,'',1,NULL,NULL),(410,'application','wizard-field','create',0,'',2,NULL,NULL),(411,'application','wizard-field','create',0,'',3,NULL,NULL),(412,'application','wizard-field','delete',0,'',1,NULL,NULL),(413,'application','wizard-field','delete',0,'',2,NULL,NULL),(414,'application','wizard-field','delete',0,'',3,NULL,NULL),(415,'application','wizard-field','find',1,'',1,NULL,NULL),(416,'application','wizard-field','find',1,'',2,NULL,NULL),(417,'application','wizard-field','find',1,'',3,NULL,NULL),(418,'application','wizard-field','findone',1,'',1,NULL,NULL),(419,'application','wizard-field','findone',1,'',2,NULL,NULL),(420,'application','wizard-field','findone',1,'',3,NULL,NULL),(421,'application','wizard-field','update',0,'',1,NULL,NULL),(422,'application','wizard-field','update',0,'',2,NULL,NULL),(423,'application','wizard-field','update',0,'',3,NULL,NULL),(424,'application','ticket','count',1,'',1,NULL,NULL),(425,'application','ticket','count',0,'',2,NULL,NULL),(426,'application','ticket','count',1,'',3,NULL,NULL),(427,'application','ticket','create',1,'',1,NULL,NULL),(428,'application','ticket','create',0,'',2,NULL,NULL),(429,'application','ticket','create',1,'',3,NULL,NULL),(430,'application','ticket','delete',1,'',1,NULL,NULL),(431,'application','ticket','delete',0,'',2,NULL,NULL),(432,'application','ticket','delete',1,'',3,NULL,NULL),(433,'application','ticket','find',1,'',1,NULL,NULL),(434,'application','ticket','find',0,'',2,NULL,NULL),(435,'application','ticket','find',1,'',3,NULL,NULL),(436,'application','ticket','findone',1,'',1,NULL,NULL),(437,'application','ticket','findone',0,'',2,NULL,NULL),(438,'application','ticket','findone',1,'',3,NULL,NULL),(439,'application','ticket','update',1,'',1,NULL,NULL),(440,'application','ticket','update',0,'',2,NULL,NULL),(441,'application','ticket','update',1,'',3,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_role`
--

DROP TABLE IF EXISTS `users-permissions_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_role_type_unique` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_role`
--

LOCK TABLES `users-permissions_role` WRITE;
/*!40000 ALTER TABLE `users-permissions_role` DISABLE KEYS */;
INSERT INTO `users-permissions_role` VALUES (1,'Authenticated','Default role given to authenticated user.','authenticated',NULL,NULL),(2,'Public','Default role given to unauthenticated user.','public',NULL,NULL),(3,'Professional','Default role given to professional user.','professional',NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users-permissions_user`
--

DROP TABLE IF EXISTS `users-permissions_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users-permissions_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmationToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `phone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slogan` longtext,
  `rut` varchar(255) DEFAULT NULL,
  `giro` longtext,
  `contact` longtext,
  `address` longtext,
  `commune` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users-permissions_user_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users-permissions_user`
--

LOCK TABLES `users-permissions_user` WRITE;
/*!40000 ALTER TABLE `users-permissions_user` DISABLE KEYS */;
INSERT INTO `users-permissions_user` VALUES (33,'Dorwan2','henryjaimes.peli@gmail.com','local','$2a$10$VmnPZYK6axUl0v7OoSBfj.7qKBzf8oDN40CecEWjzTOh1gaR4WSjy',NULL,NULL,NULL,NULL,3,NULL,NULL,'2021-03-27 09:55:12','2021-04-18 04:15:54','04127738972','Dorwan8',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat',NULL,2,NULL),(34,'jahen222','henryjaimes.peli2@gmail.com','local','$2a$10$.Z5mDC6IeYPN3OWheoNuoe6N.ugPnyN9EjgYXpf5kftj0R.kFdKei',NULL,NULL,NULL,NULL,3,NULL,NULL,'2021-04-22 08:21:10','2021-04-22 08:21:10','04127738975',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'jahen','henryjaimes.peli3@gmail.com','local','$2a$10$2TIOrXAidLzapkQ717Q6j.qss4MTRcZkvk2eMEE6gblamxsyVJ1ti',NULL,NULL,NULL,NULL,1,NULL,NULL,'2021-04-22 08:22:04','2021-04-22 08:22:04','04127738975',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(36,'wer','henryjaimes.peli4@gmail.com','local','$2a$10$eS5zVkBFyZVgfwaVajZbTOjTxKl5yDyBjT3pwjjKG4zbJPYYs2bCO',NULL,NULL,NULL,NULL,3,NULL,NULL,'2021-04-22 08:28:40','2021-04-22 08:28:40','0412444',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users-permissions_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wizard_fields`
--

DROP TABLE IF EXISTS `wizard_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wizard_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `isNumberMin` int(11) DEFAULT NULL,
  `isNumberMax` int(11) DEFAULT NULL,
  `isSelect` longtext,
  `isRadio` longtext,
  `isCheckbox` longtext,
  `isRequired` tinyint(1) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `isTextLength` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wizard_fields`
--

LOCK TABLES `wizard_fields` WRITE;
/*!40000 ALTER TABLE `wizard_fields` DISABLE KEYS */;
INSERT INTO `wizard_fields` VALUES (1,'¿De cuántos metros quieres la casa?','select',NULL,NULL,'{\"1\":\"Menos de 50 m2\",\"2\":\"Entre 51 y 70 m2\",\"3\":\"Entre 71 y 100 m2\",\"4\":\"Más de 100m2\",\"5\":\"No lo sé\"}',NULL,NULL,0,'2021-04-19 04:57:39',1,1,'2021-04-19 08:57:20','2021-04-19 22:53:35',NULL),(2,'¿Cuántas habitaciones?','select',NULL,NULL,'{\"1\":\"1\",\"2\":\"2\",\"3\":\"3\",\"4\":\"4\",\"5\":\"5 o más\"}',NULL,NULL,1,'2021-04-19 06:27:09',1,1,'2021-04-19 08:58:56','2021-04-19 10:27:10',NULL),(3,'¡probando campo texto!','text',NULL,NULL,NULL,NULL,NULL,1,'2021-04-19 18:20:25',1,1,'2021-04-19 22:20:20','2021-04-19 22:34:59',128),(4,'¡probando campo number!','number',5,NULL,NULL,NULL,NULL,1,'2021-04-19 18:41:14',1,1,'2021-04-19 22:40:44','2021-04-19 22:41:14',NULL),(5,'campo de prueba marco','select',NULL,NULL,'{\"1\":\"option 1\",\"2\":\"option 2\",\"3\":\"option 3\"}',NULL,NULL,1,'2021-04-19 22:43:51',1,1,'2021-04-20 02:43:43','2021-04-20 02:44:56',NULL),(6,'probando textarea','textarea',NULL,NULL,NULL,NULL,NULL,0,'2021-04-19 23:13:05',1,1,'2021-04-20 03:12:59','2021-04-20 03:13:06',200);
/*!40000 ALTER TABLE `wizard_fields` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-22 22:18:47