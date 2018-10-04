# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.2.13-MariaDB)
# Database: arquis
# Generation Time: 2018-10-04 09:36:57 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table arquitectonicos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `arquitectonicos`;

CREATE TABLE `arquitectonicos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extrellas` int(11) NOT NULL,
  `principal` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fotos` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ano` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table construidos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `construidos`;

CREATE TABLE `construidos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extrellas` int(11) NOT NULL,
  `principal` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fotos` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ano` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table data_rows
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_rows`;

CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`)
VALUES
	(1,1,'id','number','ID',1,0,0,0,0,0,'',1),
	(2,1,'name','text','Name',1,1,1,1,1,1,'',2),
	(3,1,'email','text','Email',1,1,1,1,1,1,'',3),
	(4,1,'password','password','Password',1,0,0,1,1,0,'',4),
	(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'',5),
	(6,1,'created_at','timestamp','Created At',0,1,1,0,0,0,'',6),
	(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',7),
	(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'',8),
	(9,1,'user_belongsto_role_relationship','relationship','Role',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}',10),
	(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',11),
	(11,1,'locale','text','Locale',0,1,1,1,1,0,'',12),
	(12,1,'settings','hidden','Settings',0,0,0,0,0,0,'',12),
	(13,2,'id','number','ID',1,0,0,0,0,0,'',1),
	(14,2,'name','text','Name',1,1,1,1,1,1,'',2),
	(15,2,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),
	(16,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),
	(17,3,'id','number','ID',1,0,0,0,0,0,'',1),
	(18,3,'name','text','Name',1,1,1,1,1,1,'',2),
	(19,3,'created_at','timestamp','Created At',0,0,0,0,0,0,'',3),
	(20,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'',4),
	(21,3,'display_name','text','Display Name',1,1,1,1,1,1,'',5),
	(22,1,'role_id','text','Role',1,1,1,1,1,1,'',9),
	(23,5,'id','hidden','Id',1,0,0,0,0,0,NULL,1),
	(24,5,'nombre','text','Nombre',1,1,1,1,1,1,NULL,2),
	(25,5,'extrellas','number','Extrellas',1,1,1,1,1,1,NULL,3),
	(26,5,'principal','file','Principal',1,1,1,1,1,1,NULL,4),
	(27,5,'fotos','multiple_images','Fotos',1,1,1,1,1,1,NULL,5),
	(28,5,'ano','number','Ano',1,1,1,1,1,1,NULL,6),
	(29,5,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,7),
	(30,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,8),
	(31,9,'id','hidden','Id',1,0,0,0,0,0,NULL,1),
	(32,9,'nombre','text','Nombre',1,1,1,1,1,1,NULL,2),
	(33,9,'extrellas','number','Extrellas',1,1,1,1,1,1,NULL,3),
	(34,9,'principal','image','Principal',1,1,1,1,1,1,NULL,4),
	(35,9,'fotos','multiple_images','Fotos',1,1,1,1,1,1,NULL,5),
	(36,9,'ano','number','Ano',1,1,1,1,1,1,NULL,6),
	(37,9,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,7),
	(38,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,8),
	(39,10,'id','hidden','Id',1,0,0,0,0,0,NULL,1),
	(40,10,'nombre','text','Nombre',1,1,1,1,1,1,NULL,2),
	(41,10,'precio','number','Precio',1,1,1,1,1,1,NULL,3),
	(42,10,'superficie','text','Superficie',1,1,1,1,1,1,NULL,4),
	(43,10,'descCorta','text','DescCorta',1,1,1,1,1,1,NULL,5),
	(44,10,'desc','rich_text_box','Desc',1,1,1,1,1,1,NULL,6),
	(45,10,'plantas','multiple_images','Plantas',1,1,1,1,1,1,NULL,7),
	(46,10,'avence','multiple_images','Avence',1,1,1,1,1,1,NULL,8),
	(47,10,'ano','number','Ano',1,1,1,1,1,1,NULL,9),
	(48,10,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,10),
	(49,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,11);

/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table data_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `data_types`;

CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`)
VALUES
	(1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','','',1,0,NULL,'2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'','',1,0,NULL,'2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(5,'arquitectonicos','arquitectonicos','Arquitectonico','Arquitectonicos',NULL,'App\\Arquitectonicos',NULL,NULL,'Propiedades para la seccion arquitectonicos',1,0,'{\"order_column\":\"id\",\"order_display_column\":\"created_at\"}','2018-10-04 09:05:01','2018-10-04 09:05:17'),
	(9,'construidos','construidos','Construido','Construidos',NULL,'App\\Construidos',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"created_at\"}','2018-10-04 09:21:01','2018-10-04 09:21:01'),
	(10,'ventas','ventas','Venta','Ventas',NULL,'App\\Venta',NULL,NULL,NULL,1,0,'{\"order_column\":\"id\",\"order_display_column\":\"created_at\"}','2018-10-04 09:22:32','2018-10-04 09:22:32');

/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_items`;

CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`)
VALUES
	(1,1,'Dashboard','','_self','voyager-boat',NULL,NULL,1,'2018-10-04 08:50:19','2018-10-04 08:50:19','voyager.dashboard',NULL),
	(2,1,'Media','','_self','voyager-images',NULL,NULL,5,'2018-10-04 08:50:19','2018-10-04 08:50:19','voyager.media.index',NULL),
	(3,1,'Users','','_self','voyager-person',NULL,NULL,3,'2018-10-04 08:50:19','2018-10-04 08:50:19','voyager.users.index',NULL),
	(4,1,'Roles','','_self','voyager-lock',NULL,NULL,2,'2018-10-04 08:50:19','2018-10-04 08:50:19','voyager.roles.index',NULL),
	(5,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2018-10-04 08:50:19','2018-10-04 08:50:19',NULL,NULL),
	(6,1,'Menu Builder','','_self','voyager-list',NULL,5,10,'2018-10-04 08:50:19','2018-10-04 08:50:19','voyager.menus.index',NULL),
	(7,1,'Database','','_self','voyager-data',NULL,5,11,'2018-10-04 08:50:19','2018-10-04 08:50:19','voyager.database.index',NULL),
	(8,1,'Compass','','_self','voyager-compass',NULL,5,12,'2018-10-04 08:50:19','2018-10-04 08:50:19','voyager.compass.index',NULL),
	(9,1,'BREAD','','_self','voyager-bread',NULL,5,13,'2018-10-04 08:50:19','2018-10-04 08:50:19','voyager.bread.index',NULL),
	(10,1,'Settings','','_self','voyager-settings',NULL,NULL,14,'2018-10-04 08:50:19','2018-10-04 08:50:19','voyager.settings.index',NULL),
	(11,1,'Arquitectonicos','','_self',NULL,NULL,NULL,15,'2018-10-04 09:05:01','2018-10-04 09:05:01','voyager.arquitectonicos.index',NULL),
	(14,1,'Construidos','','_self',NULL,NULL,NULL,18,'2018-10-04 09:21:01','2018-10-04 09:21:01','voyager.construidos.index',NULL),
	(15,1,'Ventas','','_self',NULL,NULL,NULL,19,'2018-10-04 09:22:32','2018-10-04 09:22:32','voyager.ventas.index',NULL);

/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','2018-10-04 08:50:19','2018-10-04 08:50:19');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(26,'2014_10_12_000000_create_users_table',1),
	(27,'2014_10_12_100000_create_password_resets_table',1),
	(28,'2016_01_01_000000_add_voyager_user_fields',1),
	(29,'2016_01_01_000000_create_data_types_table',1),
	(30,'2016_05_19_173453_create_menu_table',1),
	(31,'2016_10_21_190000_create_roles_table',1),
	(32,'2016_10_21_190000_create_settings_table',1),
	(33,'2016_11_30_135954_create_permission_table',1),
	(34,'2016_11_30_141208_create_permission_role_table',1),
	(35,'2016_12_26_201236_data_types__add__server_side',1),
	(36,'2017_01_13_000000_add_route_to_menu_items_table',1),
	(37,'2017_01_14_005015_create_translations_table',1),
	(38,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),
	(39,'2017_03_06_000000_add_controller_to_data_types_table',1),
	(40,'2017_04_21_000000_add_order_to_data_rows_table',1),
	(41,'2017_07_05_210000_add_policyname_to_data_types_table',1),
	(42,'2017_08_05_000000_add_group_to_settings_table',1),
	(43,'2017_11_26_013050_add_user_role_relationship',1),
	(44,'2017_11_26_015000_create_user_roles_table',1),
	(45,'2018_03_11_000000_add_user_settings',1),
	(46,'2018_03_14_000000_add_details_to_data_types_table',1),
	(47,'2018_03_16_000000_make_settings_value_nullable',1),
	(48,'2018_09_22_201814_create_venta_table',1),
	(49,'2018_09_22_201911_create_construido_table',1),
	(50,'2018_10_02_042644_create_arquitectonicos_table',1);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table permission_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permission_role`;

CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;

INSERT INTO `permission_role` (`permission_id`, `role_id`)
VALUES
	(1,1),
	(1,2),
	(2,1),
	(3,1),
	(4,1),
	(4,2),
	(5,1),
	(6,1),
	(6,2),
	(7,1),
	(7,2),
	(8,1),
	(8,2),
	(9,1),
	(9,2),
	(10,1),
	(10,2),
	(11,1),
	(12,1),
	(13,1),
	(14,1),
	(15,1),
	(16,1),
	(17,1),
	(18,1),
	(19,1),
	(20,1),
	(21,1),
	(22,1),
	(23,1),
	(24,1),
	(25,1),
	(26,1),
	(26,2),
	(27,1),
	(27,2),
	(28,1),
	(28,2),
	(29,1),
	(29,2),
	(30,1),
	(30,2),
	(31,1),
	(32,1),
	(33,1),
	(34,1),
	(35,1),
	(41,1),
	(42,1),
	(43,1),
	(44,1),
	(45,1),
	(46,1),
	(47,1),
	(48,1),
	(49,1),
	(50,1),
	(51,1),
	(52,1),
	(53,1),
	(54,1),
	(55,1);

/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table permissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`)
VALUES
	(1,'browse_admin',NULL,'2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(2,'browse_bread',NULL,'2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(3,'browse_database',NULL,'2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(4,'browse_media',NULL,'2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(5,'browse_compass',NULL,'2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(6,'browse_menus','menus','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(7,'read_menus','menus','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(8,'edit_menus','menus','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(9,'add_menus','menus','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(10,'delete_menus','menus','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(11,'browse_roles','roles','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(12,'read_roles','roles','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(13,'edit_roles','roles','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(14,'add_roles','roles','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(15,'delete_roles','roles','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(16,'browse_users','users','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(17,'read_users','users','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(18,'edit_users','users','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(19,'add_users','users','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(20,'delete_users','users','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(21,'browse_settings','settings','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(22,'read_settings','settings','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(23,'edit_settings','settings','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(24,'add_settings','settings','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(25,'delete_settings','settings','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(26,'browse_arquitectonicos','arquitectonicos','2018-10-04 09:05:01','2018-10-04 09:05:01'),
	(27,'read_arquitectonicos','arquitectonicos','2018-10-04 09:05:01','2018-10-04 09:05:01'),
	(28,'edit_arquitectonicos','arquitectonicos','2018-10-04 09:05:01','2018-10-04 09:05:01'),
	(29,'add_arquitectonicos','arquitectonicos','2018-10-04 09:05:01','2018-10-04 09:05:01'),
	(30,'delete_arquitectonicos','arquitectonicos','2018-10-04 09:05:01','2018-10-04 09:05:01'),
	(31,'browse_construido','construido','2018-10-04 09:10:42','2018-10-04 09:10:42'),
	(32,'read_construido','construido','2018-10-04 09:10:42','2018-10-04 09:10:42'),
	(33,'edit_construido','construido','2018-10-04 09:10:42','2018-10-04 09:10:42'),
	(34,'add_construido','construido','2018-10-04 09:10:42','2018-10-04 09:10:42'),
	(35,'delete_construido','construido','2018-10-04 09:10:42','2018-10-04 09:10:42'),
	(41,'browse_venta','venta','2018-10-04 09:16:47','2018-10-04 09:16:47'),
	(42,'read_venta','venta','2018-10-04 09:16:47','2018-10-04 09:16:47'),
	(43,'edit_venta','venta','2018-10-04 09:16:47','2018-10-04 09:16:47'),
	(44,'add_venta','venta','2018-10-04 09:16:47','2018-10-04 09:16:47'),
	(45,'delete_venta','venta','2018-10-04 09:16:47','2018-10-04 09:16:47'),
	(46,'browse_construidos','construidos','2018-10-04 09:21:01','2018-10-04 09:21:01'),
	(47,'read_construidos','construidos','2018-10-04 09:21:01','2018-10-04 09:21:01'),
	(48,'edit_construidos','construidos','2018-10-04 09:21:01','2018-10-04 09:21:01'),
	(49,'add_construidos','construidos','2018-10-04 09:21:01','2018-10-04 09:21:01'),
	(50,'delete_construidos','construidos','2018-10-04 09:21:01','2018-10-04 09:21:01'),
	(51,'browse_ventas','ventas','2018-10-04 09:22:32','2018-10-04 09:22:32'),
	(52,'read_ventas','ventas','2018-10-04 09:22:32','2018-10-04 09:22:32'),
	(53,'edit_ventas','ventas','2018-10-04 09:22:32','2018-10-04 09:22:32'),
	(54,'add_ventas','ventas','2018-10-04 09:22:32','2018-10-04 09:22:32'),
	(55,'delete_ventas','ventas','2018-10-04 09:22:32','2018-10-04 09:22:32');

/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Administrator','2018-10-04 08:50:19','2018-10-04 08:50:19'),
	(2,'editor','Editor','2018-10-04 08:50:19','2018-10-04 09:06:20');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`)
VALUES
	(1,'site.title','Site Title','Site Title','','text',1,'Site'),
	(2,'site.description','Site Description','Site Description','','text',2,'Site'),
	(3,'site.logo','Site Logo','','','image',3,'Site'),
	(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),
	(5,'admin.bg_image','Admin Background Image','settings/October2018/LiSQaP3NjBN5IOQmSpoE.png','','image',5,'Admin'),
	(6,'admin.title','Admin Title','C Arquitectos','','text',1,'Admin'),
	(7,'admin.description','Admin Description','Bienvenido al administrador de propiedades de Zahori bienes raices','','text',2,'Admin'),
	(8,'admin.loader','Admin Loader','settings/October2018/3fgV0xdtJcTQQTqcGPYj.png','','image',3,'Admin'),
	(9,'admin.icon_image','Admin Icon Image','settings/October2018/fQmRv51VIiJ6Wld7MmL1.png','','image',4,'Admin'),
	(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',1,'Admin');

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translations`;

CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`)
VALUES
	(1,1,'Adrián','adrian@develupme.com','users/October2018/p4YnKiLpH1mmue29HksI.jpg',NULL,'$2y$10$gb5yXFj2UamNiFQBJdtE6OfLxf835lNTas.7.qZFHr4PDzAcscDRW','9SLKGbuBH7LgXT0hCnGY13GUZbaxjkYZiSEzlfcoxtYtehZ9bMfeCsp8TlFP','{\"locale\":\"es\"}','2018-10-04 08:56:19','2018-10-04 08:57:11'),
	(2,2,'Edgar','edgar@webhre.com','users/October2018/Mp4P1TzGMVi1gYukYCKi.png',NULL,'$2y$10$3FH48knuN.uTX04ugr.PFeRdl.b.9rCH/2EQc/.eMtoYMKVr8Llra','DtD2Hy9oE8geeVLRksUEMHbR0xb3bQIL8TmJ6rAH9xtTEJsw6BIwNl1xdado','{\"locale\":\"es\"}','2018-10-04 09:08:40','2018-10-04 09:08:40');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table ventas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ventas`;

CREATE TABLE `ventas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` double(8,2) NOT NULL,
  `superficie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descCorta` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `plantas` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `avence` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ano` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
