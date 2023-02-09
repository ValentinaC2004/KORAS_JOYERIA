-- MariaDB dump 10.19  Distrib 10.4.24-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: korasjoyeria
-- ------------------------------------------------------
-- Server version	10.4.24-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_interface_theme`
--

DROP TABLE IF EXISTS `admin_interface_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_interface_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_visible` tinyint(1) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `logo_visible` tinyint(1) NOT NULL,
  `css_header_background_color` varchar(10) NOT NULL,
  `title_color` varchar(10) NOT NULL,
  `css_header_text_color` varchar(10) NOT NULL,
  `css_header_link_color` varchar(10) NOT NULL,
  `css_header_link_hover_color` varchar(10) NOT NULL,
  `css_module_background_color` varchar(10) NOT NULL,
  `css_module_text_color` varchar(10) NOT NULL,
  `css_module_link_color` varchar(10) NOT NULL,
  `css_module_link_hover_color` varchar(10) NOT NULL,
  `css_module_rounded_corners` tinyint(1) NOT NULL,
  `css_generic_link_color` varchar(10) NOT NULL,
  `css_generic_link_hover_color` varchar(10) NOT NULL,
  `css_save_button_background_color` varchar(10) NOT NULL,
  `css_save_button_background_hover_color` varchar(10) NOT NULL,
  `css_save_button_text_color` varchar(10) NOT NULL,
  `css_delete_button_background_color` varchar(10) NOT NULL,
  `css_delete_button_background_hover_color` varchar(10) NOT NULL,
  `css_delete_button_text_color` varchar(10) NOT NULL,
  `list_filter_dropdown` tinyint(1) NOT NULL,
  `related_modal_active` tinyint(1) NOT NULL,
  `related_modal_background_color` varchar(10) NOT NULL,
  `related_modal_rounded_corners` tinyint(1) NOT NULL,
  `logo_color` varchar(10) NOT NULL,
  `recent_actions_visible` tinyint(1) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `related_modal_background_opacity` varchar(5) NOT NULL,
  `env_name` varchar(50) NOT NULL,
  `env_visible_in_header` tinyint(1) NOT NULL,
  `env_color` varchar(10) NOT NULL,
  `env_visible_in_favicon` tinyint(1) NOT NULL,
  `related_modal_close_button_visible` tinyint(1) NOT NULL,
  `language_chooser_active` tinyint(1) NOT NULL,
  `language_chooser_display` varchar(10) NOT NULL,
  `list_filter_sticky` tinyint(1) NOT NULL,
  `form_pagination_sticky` tinyint(1) NOT NULL,
  `form_submit_sticky` tinyint(1) NOT NULL,
  `css_module_background_selected_color` varchar(10) NOT NULL,
  `css_module_link_selected_color` varchar(10) NOT NULL,
  `logo_max_height` smallint(5) unsigned NOT NULL CHECK (`logo_max_height` >= 0),
  `logo_max_width` smallint(5) unsigned NOT NULL CHECK (`logo_max_width` >= 0),
  `foldable_apps` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_interface_theme_name_30bda70f_uniq` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_interface_theme`
--

LOCK TABLES `admin_interface_theme` WRITE;
/*!40000 ALTER TABLE `admin_interface_theme` DISABLE KEYS */;
INSERT INTO `admin_interface_theme` VALUES (1,'Django',0,'Django administration',1,'',1,'#0C4B33','#F5DD5D','#44B78B','#FFFFFF','#C9F0DD','#44B78B','#FFFFFF','#FFFFFF','#C9F0DD',1,'#0C3C26','#156641','#0C4B33','#0C3C26','#FFFFFF','#BA2121','#A41515','#FFFFFF',1,1,'#000000',1,'#FFFFFF',1,'','0.3','',1,'#E74C3C',1,1,1,'code',1,0,0,'#FFFFCC','#FFFFFF',100,400,1),(2,'Koras Joyeria',1,'Administración',1,'admin-interface/logo/logokorasjoyeria.png',1,'#FFFFFF','#000000','#808080','#D9BB6A','#C9F0DD','#7F7F7F','#FFFFFF','#FFFFFF','#C9F0DD',1,'#000000','#9A9A9A','#6C6C6C','#000000','#FFFFFF','#BA2121','#A41515','#FFFFFF',1,1,'#000000',1,'#FFFFFF',1,'','0.3','',1,'#BEAE50',1,1,1,'code',1,0,0,'#FFFFCC','#FFFFFF',100,400,1);
/*!40000 ALTER TABLE `admin_interface_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add categoria',1,'add_categoria'),(2,'Can change categoria',1,'change_categoria'),(3,'Can delete categoria',1,'delete_categoria'),(4,'Can view categoria',1,'view_categoria'),(5,'Can add producto',2,'add_producto'),(6,'Can change producto',2,'change_producto'),(7,'Can delete producto',2,'delete_producto'),(8,'Can view producto',2,'view_producto'),(9,'Can add compra',3,'add_compra'),(10,'Can change compra',3,'change_compra'),(11,'Can delete compra',3,'delete_compra'),(12,'Can view compra',3,'view_compra'),(13,'Can add compra detalle',4,'add_compradetalle'),(14,'Can change compra detalle',4,'change_compradetalle'),(15,'Can delete compra detalle',4,'delete_compradetalle'),(16,'Can view compra detalle',4,'view_compradetalle'),(17,'Can add diamante p',5,'add_diamantep'),(18,'Can change diamante p',5,'change_diamantep'),(19,'Can delete diamante p',5,'delete_diamantep'),(20,'Can view diamante p',5,'view_diamantep'),(21,'Can add marco p',6,'add_marcop'),(22,'Can change marco p',6,'change_marcop'),(23,'Can delete marco p',6,'delete_marcop'),(24,'Can view marco p',6,'view_marcop'),(25,'Can add material p',7,'add_materialp'),(26,'Can change material p',7,'change_materialp'),(27,'Can delete material p',7,'delete_materialp'),(28,'Can view material p',7,'view_materialp'),(29,'Can add size p',8,'add_sizep'),(30,'Can change size p',8,'change_sizep'),(31,'Can delete size p',8,'delete_sizep'),(32,'Can view size p',8,'view_sizep'),(33,'Can add Empleado',9,'add_empleado'),(34,'Can change Empleado',9,'change_empleado'),(35,'Can delete Empleado',9,'delete_empleado'),(36,'Can view Empleado',9,'view_empleado'),(37,'Can add Tipo',10,'add_tipo'),(38,'Can change Tipo',10,'change_tipo'),(39,'Can delete Tipo',10,'delete_tipo'),(40,'Can view Tipo',10,'view_tipo'),(41,'Can add profile',11,'add_profile'),(42,'Can change profile',11,'change_profile'),(43,'Can delete profile',11,'delete_profile'),(44,'Can view profile',11,'view_profile'),(45,'Can add talla',12,'add_talla'),(46,'Can change talla',12,'change_talla'),(47,'Can delete talla',12,'delete_talla'),(48,'Can view talla',12,'view_talla'),(49,'Can add colore',13,'add_colore'),(50,'Can change colore',13,'change_colore'),(51,'Can delete colore',13,'delete_colore'),(52,'Can view colore',13,'view_colore'),(53,'Can add imagen producto',14,'add_imagenproducto'),(54,'Can change imagen producto',14,'change_imagenproducto'),(55,'Can delete imagen producto',14,'delete_imagenproducto'),(56,'Can view imagen producto',14,'view_imagenproducto'),(57,'Can add base joya',15,'add_basejoya'),(58,'Can change base joya',15,'change_basejoya'),(59,'Can delete base joya',15,'delete_basejoya'),(60,'Can view base joya',15,'view_basejoya'),(61,'Can add ensables piedras joya',16,'add_ensablespiedrasjoya'),(62,'Can change ensables piedras joya',16,'change_ensablespiedrasjoya'),(63,'Can delete ensables piedras joya',16,'delete_ensablespiedrasjoya'),(64,'Can view ensables piedras joya',16,'view_ensablespiedrasjoya'),(65,'Can add joyaprediseñada',17,'add_joyaprediseñada'),(66,'Can change joyaprediseñada',17,'change_joyaprediseñada'),(67,'Can delete joyaprediseñada',17,'delete_joyaprediseñada'),(68,'Can view joyaprediseñada',17,'view_joyaprediseñada'),(69,'Can add Theme',18,'add_theme'),(70,'Can change Theme',18,'change_theme'),(71,'Can delete Theme',18,'delete_theme'),(72,'Can view Theme',18,'view_theme'),(73,'Can add log entry',19,'add_logentry'),(74,'Can change log entry',19,'change_logentry'),(75,'Can delete log entry',19,'delete_logentry'),(76,'Can view log entry',19,'view_logentry'),(77,'Can add permission',20,'add_permission'),(78,'Can change permission',20,'change_permission'),(79,'Can delete permission',20,'delete_permission'),(80,'Can view permission',20,'view_permission'),(81,'Can add group',21,'add_group'),(82,'Can change group',21,'change_group'),(83,'Can delete group',21,'delete_group'),(84,'Can view group',21,'view_group'),(85,'Can add user',22,'add_user'),(86,'Can change user',22,'change_user'),(87,'Can delete user',22,'delete_user'),(88,'Can view user',22,'view_user'),(89,'Can add content type',23,'add_contenttype'),(90,'Can change content type',23,'change_contenttype'),(91,'Can delete content type',23,'delete_contenttype'),(92,'Can view content type',23,'view_contenttype'),(93,'Can add session',24,'add_session'),(94,'Can change session',24,'change_session'),(95,'Can delete session',24,'delete_session'),(96,'Can view session',24,'view_session'),(97,'Can add sub categoria',25,'add_subcategoria'),(98,'Can change sub categoria',25,'change_subcategoria'),(99,'Can delete sub categoria',25,'delete_subcategoria'),(100,'Can view sub categoria',25,'view_subcategoria'),(101,'Can add diseñar color',26,'add_diseñarcolor'),(102,'Can change diseñar color',26,'change_diseñarcolor'),(103,'Can delete diseñar color',26,'delete_diseñarcolor'),(104,'Can view diseñar color',26,'view_diseñarcolor');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$toFV0DOBISgXJFqKdqmAOQ$4FzVxcf66Ze/l04RZ2rmibVD0QYQbPdDT9ePxmS5yTs=','2023-01-15 16:53:56.018612',1,'cossio','','','vcossio2004@gmail.com',1,1,'2023-01-15 10:42:18.440622'),(2,'pbkdf2_sha256$320000$ksjKmg1G6j9P4h7nQWyd3c$Nx/JIDqaoyplqkjBu2qzbTMwLxJspJMvICUq0V19Wu0=','2023-01-15 16:53:24.555229',0,'valentinaprueba','valentina','cossio','vcossio2004@gmail.com',0,1,'2023-01-15 16:53:11.542710');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-01-15 11:11:09.633704','1','cadenas',1,'[{\"added\": {}}]',1,1),(2,'2023-01-15 11:12:02.919103','1','talla1 - cadenas',1,'[{\"added\": {}}]',12,1),(3,'2023-01-15 11:12:12.724884','1','azul',1,'[{\"added\": {}}]',13,1),(4,'2023-01-15 11:13:06.332250','1','producto1',1,'[{\"added\": {}}, {\"added\": {\"name\": \"imagen producto\", \"object\": \"ImagenProducto object (1)\"}}, {\"added\": {\"name\": \"imagen producto\", \"object\": \"ImagenProducto object (2)\"}}, {\"added\": {\"name\": \"imagen producto\", \"object\": \"ImagenProducto object (3)\"}}]',2,1),(5,'2023-01-15 11:20:44.056803','2','dsadsadasd',1,'[{\"added\": {}}, {\"added\": {\"name\": \"imagen producto\", \"object\": \"ImagenProducto object (4)\"}}, {\"added\": {\"name\": \"imagen producto\", \"object\": \"ImagenProducto object (5)\"}}, {\"added\": {\"name\": \"imagen producto\", \"object\": \"ImagenProducto object (6)\"}}]',2,1),(6,'2023-01-15 11:23:16.317415','3','sddasdasd',1,'[{\"added\": {}}, {\"added\": {\"name\": \"imagen producto\", \"object\": \"ImagenProducto object (7)\"}}]',2,1),(7,'2023-01-15 11:25:46.607655','1','cobre',1,'[{\"added\": {}}]',15,1),(8,'2023-01-15 11:27:44.730283','2','oro',1,'[{\"added\": {}}]',15,1),(9,'2023-01-15 11:28:03.358360','3','plata',1,'[{\"added\": {}}]',15,1),(10,'2023-01-15 11:28:19.681762','4','simcobre',1,'[{\"added\": {}}]',15,1),(11,'2023-01-15 11:28:36.788500','5','simoro',1,'[{\"added\": {}}]',15,1),(12,'2023-01-15 11:28:48.090505','6','simplata',1,'[{\"added\": {}}]',15,1),(13,'2023-01-15 13:03:29.576160','2','Anillos',1,'[{\"added\": {}}]',1,1),(14,'2023-01-15 13:06:51.484118','1','cadenas -- Mujer',1,'[{\"added\": {}}]',25,1),(15,'2023-01-15 13:10:35.065535','4','cadena linda',1,'[{\"added\": {}}]',2,1),(16,'2023-01-15 13:14:37.740327','2','Anillos -- Hombre',1,'[{\"added\": {}}]',25,1),(17,'2023-01-15 13:15:40.668531','5','anillo hermoso',1,'[{\"added\": {}}]',2,1),(18,'2023-01-20 16:17:17.412023','6','el jiji',1,'[{\"added\": {}}]',2,1),(19,'2023-01-24 16:29:46.501096','3','cadenas -- Hombre',1,'[{\"added\": {}}]',25,1),(20,'2023-01-24 16:33:58.589213','2','Anillos -- Hombre',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',25,1),(21,'2023-01-24 16:37:58.783531','4','Anillos -- Mujer',1,'[{\"added\": {}}]',25,1),(22,'2023-01-24 16:40:36.897067','1','cadenas -- Mujer',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',25,1),(23,'2023-01-24 16:43:01.784304','2','Anillos',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',1,1),(24,'2023-01-24 16:44:52.178653','1','cadenas',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',1,1),(25,'2023-01-24 16:45:51.061953','1','cadenas',2,'[{\"changed\": {\"fields\": [\"Foto\"]}}]',1,1),(26,'2023-01-24 16:47:21.855350','2','Anillos -- 3',1,'[{\"added\": {}}]',12,1),(27,'2023-01-24 16:47:31.056249','3','Anillos -- 4.5',1,'[{\"added\": {}}]',12,1),(28,'2023-01-24 16:47:41.854785','4','Anillos -- 8',1,'[{\"added\": {}}]',12,1),(29,'2023-01-24 16:48:20.740970','5','cadenas -- 40cm',1,'[{\"added\": {}}]',12,1),(30,'2023-01-24 16:48:31.784629','6','cadenas -- 45cm',1,'[{\"added\": {}}]',12,1),(31,'2023-01-24 16:48:43.772222','7','cadenas -- 60cm',1,'[{\"added\": {}}]',12,1),(32,'2023-01-24 16:48:55.387925','2','dorado',1,'[{\"added\": {}}]',13,1),(33,'2023-01-24 16:48:59.781068','3','plateado',1,'[{\"added\": {}}]',13,1),(34,'2023-01-24 16:52:09.574102','4','negro',1,'[{\"added\": {}}]',13,1),(35,'2023-01-24 16:53:28.687820','6','Anillo Cadena De Eslabones',2,'[{\"changed\": {\"fields\": [\"Nombre producto\", \"Precio producto\", \"Desc\", \"Talla id\", \"Id color\", \"Peso\"]}}]',2,1),(36,'2023-01-24 17:01:09.540850','6','Anillo Cadena De Eslabones',2,'[]',2,1),(37,'2023-01-24 17:01:42.883684','6','Anillo Cadena De Eslabones',2,'[{\"changed\": {\"fields\": [\"Imagen\"]}}]',2,1),(38,'2023-01-24 17:04:45.705488','5','Anillo de acero',2,'[{\"changed\": {\"fields\": [\"Nombre producto\", \"Precio producto\", \"Stock\", \"Desc\", \"Talla id\", \"Id color\", \"Peso\", \"Subcategoria\", \"Imagen\"]}}]',2,1),(39,'2023-01-24 17:07:13.497200','7','Anillo serpiente',1,'[{\"added\": {}}]',2,1),(40,'2023-01-24 17:07:34.301153','7','Anillo serpiente',2,'[{\"changed\": {\"fields\": [\"Desc\"]}}]',2,1),(41,'2023-01-24 17:10:32.338624','8','Anillos geometricos',1,'[{\"added\": {}}]',2,1),(42,'2023-01-24 17:13:11.848584','9','Anillo ajustador',1,'[{\"added\": {}}]',2,1),(43,'2023-01-24 17:15:09.239330','3','anillos dorados',2,'[{\"changed\": {\"fields\": [\"Nombre producto\", \"Precio producto\", \"Desc\", \"Talla id\", \"Id color\", \"Peso\", \"Categoria\", \"Subcategoria\"]}}]',2,1),(44,'2023-01-24 17:17:59.077089','4','cadena oro',2,'[{\"changed\": {\"fields\": [\"Nombre producto\", \"Stock\", \"Desc\", \"Talla id\", \"Id color\", \"Peso\", \"Subcategoria\", \"Imagen\"]}}]',2,1),(45,'2023-01-24 17:18:51.521324','4','cadena oro',2,'[{\"changed\": {\"fields\": [\"Precio producto\"]}}]',2,1),(46,'2023-01-24 17:20:37.783399','10','Cadena plata',1,'[{\"added\": {}}]',2,1),(47,'2023-01-24 17:22:47.991984','11','cadena y pulsera plata con oro',1,'[{\"added\": {}}]',2,1),(48,'2023-01-24 17:25:24.779416','12','corazón cuarzo',1,'[{\"added\": {}}]',2,1),(49,'2023-01-25 17:28:48.413247','2','Koras Joyeria',1,'[{\"added\": {}}]',18,1),(50,'2023-01-25 17:29:12.024504','2','Koras Joyeria',2,'[{\"changed\": {\"fields\": [\"Logo\"]}}]',18,1),(51,'2023-01-25 17:29:31.154231','2','Koras Joyeria',2,'[{\"changed\": {\"fields\": [\"Title\"]}}]',18,1),(52,'2023-01-25 17:30:09.008426','2','Koras Joyeria',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',18,1),(53,'2023-01-25 17:30:31.295330','2','Koras Joyeria',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',18,1),(54,'2023-01-25 17:30:46.482660','2','Koras Joyeria',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',18,1),(55,'2023-01-25 17:31:23.884542','2','Koras Joyeria',2,'[{\"changed\": {\"fields\": [\"Text color\"]}}]',18,1),(56,'2023-01-25 17:31:48.085934','2','Koras Joyeria',2,'[{\"changed\": {\"fields\": [\"Link color\"]}}]',18,1),(57,'2023-01-25 17:32:14.763566','2','Koras Joyeria',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',18,1),(58,'2023-01-25 17:32:36.387613','2','Koras Joyeria',2,'[{\"changed\": {\"fields\": [\"Background color\"]}}]',18,1),(59,'2023-01-25 17:33:57.047660','2','Koras Joyeria',2,'[{\"changed\": {\"fields\": [\"Link color\", \"Link hover color\", \"Background color\", \"Background hover color\"]}}]',18,1),(60,'2023-01-25 18:05:14.491509','9','Anillo ajustador',2,'[]',2,1),(61,'2023-01-25 18:05:54.120423','9','Anillo ajustador',2,'[{\"added\": {\"name\": \"imagen producto\", \"object\": \"ImagenProducto object (8)\"}}]',2,1),(62,'2023-01-25 18:11:04.104367','9','Anillo ajustador',2,'[]',2,1),(63,'2023-01-25 18:11:31.977139','9','Anillo ajustador',2,'[]',2,1),(64,'2023-01-25 18:12:19.166490','9','Anillo ajustador',2,'[{\"added\": {\"name\": \"imagen producto\", \"object\": \"ImagenProducto object (9)\"}}]',2,1),(65,'2023-01-25 18:12:50.736209','9','Anillo ajustador',2,'[{\"added\": {\"name\": \"imagen producto\", \"object\": \"ImagenProducto object (10)\"}}, {\"added\": {\"name\": \"imagen producto\", \"object\": \"ImagenProducto object (11)\"}}, {\"added\": {\"name\": \"imagen producto\", \"object\": \"ImagenProducto object (12)\"}}]',2,1),(66,'2023-01-25 19:36:18.164154','7','Anillo serpiente',2,'[{\"added\": {\"name\": \"imagen producto\", \"object\": \"ImagenProducto object (13)\"}}]',2,1),(67,'2023-01-26 17:07:12.678634','7','jiji -- Anillos',1,'[{\"added\": {}}]',15,1),(68,'2023-01-26 17:08:13.902834','1','cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Categoria\"]}}]',15,1),(69,'2023-01-26 17:08:22.442866','2','oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Categoria\"]}}]',15,1),(70,'2023-01-26 17:08:29.127828','3','plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Categoria\"]}}]',15,1),(71,'2023-01-26 17:08:35.796155','4','simcobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Categoria\"]}}]',15,1),(72,'2023-01-26 17:08:41.995637','5','simoro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Categoria\"]}}]',15,1),(73,'2023-01-26 17:08:47.967446','6','simplata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Categoria\"]}}]',15,1),(74,'2023-01-26 17:13:47.516929','1','cobre -- cadenas',1,'[{\"added\": {}}]',16,1),(75,'2023-01-26 17:14:06.787267','2','oro -- cadenas',1,'[{\"added\": {}}]',16,1),(76,'2023-01-26 17:14:21.478798','3','plata -- cadenas',1,'[{\"added\": {}}]',16,1),(77,'2023-01-26 17:14:42.137667','4','bull_cobre -- cadenas',1,'[{\"added\": {}}]',16,1),(78,'2023-01-26 17:15:20.880109','5','bull_oro -- cadenas',1,'[{\"added\": {}}]',16,1),(79,'2023-01-26 17:15:33.294925','6','bull_plata -- cadenas',1,'[{\"added\": {}}]',16,1),(80,'2023-01-26 17:15:47.586770','7','chuf_cobre -- cadenas',1,'[{\"added\": {}}]',16,1),(81,'2023-01-26 17:15:59.497938','8','chuf_oro -- cadenas',1,'[{\"added\": {}}]',16,1),(82,'2023-01-26 17:16:19.524683','9','chuf_plata -- cadenas',1,'[{\"added\": {}}]',16,1),(83,'2023-01-26 17:16:34.687872','10','cil_cobre -- cadenas',1,'[{\"added\": {}}]',16,1),(84,'2023-01-26 17:16:54.261580','11','cil_oro -- cadenas',1,'[{\"added\": {}}]',16,1),(85,'2023-01-26 17:17:17.646238','12','cil_plata -- cadenas',1,'[{\"added\": {}}]',16,1),(86,'2023-01-26 17:17:36.238375','13','cir_cobre -- cadenas',1,'[{\"added\": {}}]',16,1),(87,'2023-01-26 17:18:02.396558','14','cir_oro -- cadenas',1,'[{\"added\": {}}]',16,1),(88,'2023-01-26 17:18:36.607702','15','cir_plata -- cadenas',1,'[{\"added\": {}}]',16,1),(89,'2023-01-26 17:18:51.045044','16','cloud_cobre -- cadenas',1,'[{\"added\": {}}]',16,1),(90,'2023-01-26 17:19:08.393012','17','cloud_oro -- cadenas',1,'[{\"added\": {}}]',16,1),(91,'2023-01-26 17:19:27.541093','18','cloud_plata -- cadenas',1,'[{\"added\": {}}]',16,1),(92,'2023-01-26 17:20:53.167593','19','criss_cobre -- cadenas',1,'[{\"added\": {}}]',16,1),(93,'2023-01-26 17:21:11.957579','20','criss_oro -- cadenas',1,'[{\"added\": {}}]',16,1),(94,'2023-01-26 17:21:29.239954','21','criss_plata -- cadenas',1,'[{\"added\": {}}]',16,1),(95,'2023-01-26 17:21:58.993662','22','cross_cobre -- cadenas',1,'[{\"added\": {}}]',16,1),(96,'2023-01-26 17:22:19.876379','23','cross_oro -- cadenas',1,'[{\"added\": {}}]',16,1),(97,'2023-01-26 17:22:36.082016','24','cross_plata -- cadenas',1,'[{\"added\": {}}]',16,1),(98,'2023-01-26 17:23:08.943758','25','cruz_cobre -- cadenas',1,'[{\"added\": {}}]',16,1),(99,'2023-01-26 17:23:37.914299','26','cruz_oro -- cadenas',1,'[{\"added\": {}}]',16,1),(100,'2023-01-26 17:23:51.002654','27','cruz_plata -- cadenas',1,'[{\"added\": {}}]',16,1),(101,'2023-01-26 17:24:08.472823','28','cuad_cobre -- cadenas',1,'[{\"added\": {}}]',16,1),(102,'2023-01-26 17:24:33.042495','29','cuad_oro -- cadenas',1,'[{\"added\": {}}]',16,1),(103,'2023-01-26 17:24:53.666681','30','cuad_plata -- cadenas',1,'[{\"added\": {}}]',16,1),(104,'2023-01-26 17:29:20.362901','31','dart_cobre -- cadenas',1,'[{\"added\": {}}]',16,1),(105,'2023-01-26 17:29:39.702409','32','dart_oro -- cadenas',1,'[{\"added\": {}}]',16,1),(106,'2023-01-26 17:29:57.870996','33','dart_plata -- cadenas',1,'[{\"added\": {}}]',16,1),(107,'2023-01-26 17:30:34.044163','34','dome_cobre -- cadenas',1,'[{\"added\": {}}]',16,1),(108,'2023-01-26 17:31:26.112953','35','dome_oro -- cadenas',1,'[{\"added\": {}}]',16,1),(109,'2023-01-26 17:31:43.579969','36','dome_plata -- cadenas',1,'[{\"added\": {}}]',16,1),(110,'2023-01-26 18:07:48.582800','1','cobre',1,'[{\"added\": {}}]',26,1),(111,'2023-01-26 18:11:09.723658','2','plata',1,'[{\"added\": {}}]',26,1),(112,'2023-01-26 18:13:40.568393','3','oro',1,'[{\"added\": {}}]',26,1),(113,'2023-01-26 18:49:33.277707','1','cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(114,'2023-01-26 18:49:45.480165','1','rar_cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"PalabrasClave\"]}}]',15,1),(115,'2023-01-26 18:49:55.815726','2','rar_oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"PalabrasClave\", \"Color\"]}}]',15,1),(116,'2023-01-26 18:50:09.712494','3','rar_plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"PalabrasClave\", \"Color\"]}}]',15,1),(117,'2023-01-26 18:50:21.632984','4','simcobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(118,'2023-01-26 18:50:30.943893','5','simoro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(119,'2023-01-26 18:50:40.012574','6','sim_plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"PalabrasClave\", \"Color\"]}}]',15,1),(120,'2023-01-26 18:50:49.023891','4','sim_cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"PalabrasClave\"]}}]',15,1),(121,'2023-01-26 18:50:58.068976','5','sim_oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"PalabrasClave\"]}}]',15,1),(122,'2023-01-26 18:51:12.442866','7','ring_cobre -- Anillos',2,'[{\"changed\": {\"fields\": [\"PalabrasClave\", \"Color\"]}}]',15,1),(123,'2023-01-26 18:53:03.078461','1','cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(124,'2023-01-26 18:53:12.350658','2','oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(125,'2023-01-26 18:53:20.358235','3','plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(126,'2023-01-26 18:53:27.393444','4','bull_cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(127,'2023-01-26 18:53:34.571570','5','bull_oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(128,'2023-01-26 18:53:41.637518','6','bull_plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(129,'2023-01-26 18:53:48.406174','7','chuf_cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(130,'2023-01-26 18:53:55.555083','8','chuf_oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(131,'2023-01-26 18:54:05.461526','9','chuf_plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(132,'2023-01-26 18:54:13.739426','10','cil_cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(133,'2023-01-26 18:54:21.792708','11','cil_oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(134,'2023-01-26 18:54:30.279639','12','cil_plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(135,'2023-01-26 18:54:40.732408','13','cir_cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(136,'2023-01-26 18:54:48.752044','14','cir_oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(137,'2023-01-26 18:54:56.788986','15','cir_plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(138,'2023-01-26 18:55:07.075621','16','cloud_cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(139,'2023-01-26 18:55:14.788986','17','cloud_oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(140,'2023-01-26 18:55:22.038800','18','cloud_plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(141,'2023-01-26 18:55:28.353036','19','criss_cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(142,'2023-01-26 18:55:35.355395','20','criss_oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(143,'2023-01-26 18:55:44.193287','21','criss_plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(144,'2023-01-26 18:55:50.962319','22','cross_cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(145,'2023-01-26 18:55:57.213378','23','cross_oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(146,'2023-01-26 18:59:04.707696','24','cross_plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(147,'2023-01-26 18:59:12.498831','25','cruz_cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(148,'2023-01-26 18:59:21.138884','26','cruz_oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(149,'2023-01-26 18:59:26.879487','27','cruz_plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(150,'2023-01-26 18:59:33.107883','28','cuad_cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(151,'2023-01-26 18:59:42.093330','29','cuad_oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(152,'2023-01-26 18:59:47.023406','30','cuad_plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(153,'2023-01-26 18:59:52.571865','31','dart_cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(154,'2023-01-26 18:59:59.669563','32','dart_oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(155,'2023-01-26 19:00:05.518455','33','dart_plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(156,'2023-01-26 19:00:12.371430','34','dome_cobre -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(157,'2023-01-26 19:00:19.256817','35','dome_oro -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(158,'2023-01-26 19:00:24.908530','36','dome_plata -- cadenas',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',16,1),(159,'2023-01-26 19:35:55.872909','8','ring_plata -- Anillos',1,'[{\"added\": {}}]',15,1),(160,'2023-01-26 19:36:16.114735','9','ring_oro -- Anillos',1,'[{\"added\": {}}]',15,1),(161,'2023-01-26 19:36:46.066804','10','mult_plata -- Anillos',1,'[{\"added\": {}}]',15,1),(162,'2023-01-26 19:37:10.531793','11','mult_oro -- Anillos',1,'[{\"added\": {}}]',15,1),(163,'2023-01-26 19:38:03.410539','12','mult_cobre -- Anillos',1,'[{\"added\": {}}]',15,1),(164,'2023-01-26 19:38:34.165447','13','ex_plata -- Anillos',1,'[{\"added\": {}}]',15,1),(165,'2023-01-26 19:38:50.406139','14','ex_oro -- Anillos',1,'[{\"added\": {}}]',15,1),(166,'2023-01-26 19:39:06.248089','15','ex_cobre -- Anillos',1,'[{\"added\": {}}]',15,1),(167,'2023-01-26 19:39:22.611953','16','cab_plata -- Anillos',1,'[{\"added\": {}}]',15,1),(168,'2023-01-26 19:39:48.157333','17','cab_oro -- Anillos',1,'[{\"added\": {}}]',15,1),(169,'2023-01-26 19:40:10.809479','18','cab_cobre -- Anillos',1,'[{\"added\": {}}]',15,1),(170,'2023-01-26 19:40:40.912581','7','ba_cobre -- Anillos',2,'[{\"changed\": {\"fields\": [\"PalabrasClave\", \"Image\"]}}]',15,1),(171,'2023-01-26 19:40:53.381454','7','ring_cobre -- Anillos',2,'[{\"changed\": {\"fields\": [\"PalabrasClave\"]}}]',15,1),(172,'2023-01-26 19:52:58.050920','4','oro',1,'[{\"added\": {}}]',26,1),(173,'2023-01-26 19:53:23.384262','5','cobre',1,'[{\"added\": {}}]',26,1),(174,'2023-01-26 19:53:41.455542','6','plata',1,'[{\"added\": {}}]',26,1),(175,'2023-01-26 19:56:40.734979','17','cab_oro -- Anillos',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(176,'2023-01-26 19:57:30.250467','18','cab_cobre -- Anillos',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(177,'2023-01-26 19:57:37.908054','16','cab_plata -- Anillos',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(178,'2023-01-26 19:57:51.263164','15','ex_cobre -- Anillos',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(179,'2023-01-26 19:57:58.743504','14','ex_oro -- Anillos',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(180,'2023-01-26 19:58:06.521763','13','ex_plata -- Anillos',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(181,'2023-01-26 19:58:17.044660','12','mult_cobre -- Anillos',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(182,'2023-01-26 19:58:31.649908','11','mult_oro -- Anillos',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(183,'2023-01-26 19:58:41.203780','10','mult_plata -- Anillos',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(184,'2023-01-26 19:58:51.491613','9','ring_oro -- Anillos',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(185,'2023-01-26 19:59:02.114529','8','ring_plata -- Anillos',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(186,'2023-01-26 19:59:10.924957','7','ring_cobre -- Anillos',2,'[{\"changed\": {\"fields\": [\"Color\"]}}]',15,1),(187,'2023-01-26 20:29:46.080915','37','Acuamarina -- Anillos',1,'[{\"added\": {}}]',16,1),(188,'2023-01-26 20:47:16.751441','38','Alejandrina -- Anillos',1,'[{\"added\": {}}]',16,1),(189,'2023-01-26 20:52:27.486073','39','Cepacio -- Anillos',1,'[{\"added\": {}}]',16,1),(190,'2023-01-26 20:52:40.113266','40','Citrino -- Anillos',1,'[{\"added\": {}}]',16,1),(191,'2023-01-26 20:52:55.633137','41','Cuarzo -- Anillos',1,'[{\"added\": {}}]',16,1),(192,'2023-01-26 20:53:15.974409','42','Diamante -- Anillos',1,'[{\"added\": {}}]',16,1),(193,'2023-01-26 20:53:31.329118','43','Esmeralda -- Anillos',1,'[{\"added\": {}}]',16,1),(194,'2023-01-26 20:53:43.759399','44','Espinela -- Anillos',1,'[{\"added\": {}}]',16,1),(195,'2023-01-26 20:53:59.643275','45','Granate -- Anillos',1,'[{\"added\": {}}]',16,1),(196,'2023-01-26 20:54:16.819925','46','Greealina -- Anillos',1,'[{\"added\": {}}]',16,1),(197,'2023-01-26 20:54:34.153113','47','Greefiro -- Anillos',1,'[{\"added\": {}}]',16,1),(198,'2023-01-26 20:54:46.870944','48','Jade -- Anillos',1,'[{\"added\": {}}]',16,1),(199,'2023-01-26 20:55:00.120247','49','Kitera -- Anillos',1,'[{\"added\": {}}]',16,1),(200,'2023-01-26 20:55:16.230145','50','Morganita -- Anillos',1,'[{\"added\": {}}]',16,1),(201,'2023-01-26 20:55:31.549083','51','Ocrino -- Anillos',1,'[{\"added\": {}}]',16,1),(202,'2023-01-26 20:55:49.619940','52','Onyx -- Anillos',1,'[{\"added\": {}}]',16,1),(203,'2023-01-26 20:56:08.538220','53','Oragtrino -- Anillos',1,'[{\"added\": {}}]',16,1),(204,'2023-01-26 20:56:26.805177','54','Rubi -- Anillos',1,'[{\"added\": {}}]',16,1),(205,'2023-01-26 20:56:44.680014','55','Thoneyna -- Anillos',1,'[{\"added\": {}}]',16,1),(206,'2023-01-26 20:57:02.596674','56','Timilina -- Anillos',1,'[{\"added\": {}}]',16,1),(207,'2023-01-26 20:57:15.843235','57','Topacio -- Anillos',1,'[{\"added\": {}}]',16,1),(208,'2023-01-26 20:57:31.935752','58','Turmalina -- Anillos',1,'[{\"added\": {}}]',16,1),(209,'2023-01-26 20:57:51.018788','59','Zafiro -- Anillos',1,'[{\"added\": {}}]',16,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (19,'admin','logentry'),(18,'admin_interface','theme'),(21,'auth','group'),(20,'auth','permission'),(22,'auth','user'),(23,'contenttypes','contenttype'),(15,'koras_joyeria','basejoya'),(1,'koras_joyeria','categoria'),(13,'koras_joyeria','colore'),(3,'koras_joyeria','compra'),(4,'koras_joyeria','compradetalle'),(5,'koras_joyeria','diamantep'),(26,'koras_joyeria','diseñarcolor'),(9,'koras_joyeria','empleado'),(16,'koras_joyeria','ensablespiedrasjoya'),(14,'koras_joyeria','imagenproducto'),(17,'koras_joyeria','joyaprediseñada'),(6,'koras_joyeria','marcop'),(7,'koras_joyeria','materialp'),(2,'koras_joyeria','producto'),(11,'koras_joyeria','profile'),(8,'koras_joyeria','sizep'),(25,'koras_joyeria','subcategoria'),(12,'koras_joyeria','talla'),(10,'koras_joyeria','tipo'),(24,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-01-15 10:39:40.393686'),(2,'auth','0001_initial','2023-01-15 10:39:48.918948'),(3,'admin','0001_initial','2023-01-15 10:39:50.471629'),(4,'admin','0002_logentry_remove_auto_add','2023-01-15 10:39:50.589315'),(5,'admin','0003_logentry_add_action_flag_choices','2023-01-15 10:39:50.685058'),(6,'admin_interface','0001_initial','2023-01-15 10:39:50.988246'),(7,'admin_interface','0002_add_related_modal','2023-01-15 10:39:51.660800'),(8,'admin_interface','0003_add_logo_color','2023-01-15 10:39:51.916744'),(9,'admin_interface','0004_rename_title_color','2023-01-15 10:39:52.182035'),(10,'admin_interface','0005_add_recent_actions_visible','2023-01-15 10:39:52.406412'),(11,'admin_interface','0006_bytes_to_str','2023-01-15 10:39:52.673695'),(12,'admin_interface','0007_add_favicon','2023-01-15 10:39:53.057256'),(13,'admin_interface','0008_change_related_modal_background_opacity_type','2023-01-15 10:39:53.480584'),(14,'admin_interface','0009_add_enviroment','2023-01-15 10:39:53.827191'),(15,'admin_interface','0010_add_localization','2023-01-15 10:39:53.972010'),(16,'admin_interface','0011_add_environment_options','2023-01-15 10:39:54.729328'),(17,'admin_interface','0012_update_verbose_names','2023-01-15 10:39:54.843456'),(18,'admin_interface','0013_add_related_modal_close_button','2023-01-15 10:39:55.055321'),(19,'admin_interface','0014_name_unique','2023-01-15 10:39:55.376717'),(20,'admin_interface','0015_add_language_chooser_active','2023-01-15 10:39:55.622380'),(21,'admin_interface','0016_add_language_chooser_display','2023-01-15 10:39:55.857748'),(22,'admin_interface','0017_change_list_filter_dropdown','2023-01-15 10:39:55.915602'),(23,'admin_interface','0018_theme_list_filter_sticky','2023-01-15 10:39:56.200835'),(24,'admin_interface','0019_add_form_sticky','2023-01-15 10:39:56.596774'),(25,'admin_interface','0020_module_selected_colors','2023-01-15 10:39:57.030647'),(26,'admin_interface','0021_file_extension_validator','2023-01-15 10:39:57.139238'),(27,'admin_interface','0022_add_logo_max_width_and_height','2023-01-15 10:39:57.613750'),(28,'admin_interface','0023_theme_foldable_apps','2023-01-15 10:39:57.806235'),(29,'admin_interface','0024_remove_theme_css','2023-01-15 10:39:57.995321'),(30,'contenttypes','0002_remove_content_type_name','2023-01-15 10:40:01.424053'),(31,'auth','0002_alter_permission_name_max_length','2023-01-15 10:40:03.388142'),(32,'auth','0003_alter_user_email_max_length','2023-01-15 10:40:04.911819'),(33,'auth','0004_alter_user_username_opts','2023-01-15 10:40:05.099318'),(34,'auth','0005_alter_user_last_login_null','2023-01-15 10:40:06.996740'),(35,'auth','0006_require_contenttypes_0002','2023-01-15 10:40:07.066552'),(36,'auth','0007_alter_validators_add_error_messages','2023-01-15 10:40:07.129385'),(37,'auth','0008_alter_user_username_max_length','2023-01-15 10:40:07.358772'),(38,'auth','0009_alter_user_last_name_max_length','2023-01-15 10:40:07.657368'),(39,'auth','0010_alter_group_name_max_length','2023-01-15 10:40:07.995456'),(40,'auth','0011_update_proxy_permissions','2023-01-15 10:40:08.096185'),(41,'auth','0012_alter_user_first_name_max_length','2023-01-15 10:40:08.328564'),(42,'koras_joyeria','0001_initial','2023-01-15 10:40:10.798283'),(43,'koras_joyeria','0002_usuario','2023-01-15 10:40:11.125525'),(44,'koras_joyeria','0003_alter_usuario_rol','2023-01-15 10:40:11.299462'),(45,'koras_joyeria','0004_producto_color_producto_peso_producto_talla','2023-01-15 10:40:12.295936'),(46,'koras_joyeria','0005_compra_compradetalle','2023-01-15 10:40:17.446791'),(47,'koras_joyeria','0006_diamantep_marcop_materialp_pesop_sizep_tallap','2023-01-15 10:40:19.155898'),(48,'koras_joyeria','0007_empleado','2023-01-15 10:40:20.106623'),(49,'koras_joyeria','0008_tipo_empleado_tipo','2023-01-15 10:40:22.686224'),(50,'koras_joyeria','0009_empleado_categoria_id_empleado_descrip','2023-01-15 10:40:24.369721'),(51,'koras_joyeria','0010_alter_usuario_rol','2023-01-15 10:40:24.552234'),(52,'koras_joyeria','0011_remove_usuario_rol','2023-01-15 10:40:24.968121'),(53,'koras_joyeria','0012_remove_producto_color','2023-01-15 10:40:25.331150'),(54,'koras_joyeria','0013_producto_color','2023-01-15 10:40:26.169907'),(55,'koras_joyeria','0014_alter_producto_foto','2023-01-15 10:40:27.930201'),(56,'koras_joyeria','0015_remove_producto_id_producto_alter_producto_foto','2023-01-15 10:40:28.815832'),(57,'koras_joyeria','0016_alter_producto_options_producto_timestamp_and_more','2023-01-15 10:40:30.711763'),(58,'koras_joyeria','0017_rol_profile_rol','2023-01-15 10:40:31.716076'),(59,'koras_joyeria','0018_roles_alter_profile_rol_delete_rol','2023-01-15 10:40:33.715730'),(60,'koras_joyeria','0019_remove_compra_usuario_compra_user_delete_usuario','2023-01-15 10:40:34.966386'),(61,'koras_joyeria','0020_remove_profile_rol_remove_roles_nombre_rol_roles_rol_and_more','2023-01-15 10:40:38.124941'),(62,'koras_joyeria','0021_delete_roles_profile_rol','2023-01-15 10:40:38.434116'),(63,'koras_joyeria','0022_role_remove_profile_rol','2023-01-15 10:40:38.760241'),(64,'koras_joyeria','0023_profile_rol_role_id_rol_role_nombre_rol','2023-01-15 10:40:40.477847'),(65,'koras_joyeria','0024_alter_profile_rol','2023-01-15 10:40:42.466881'),(66,'koras_joyeria','0025_alter_profile_rol_delete_role','2023-01-15 10:40:44.301342'),(67,'koras_joyeria','0026_pesos_tallas_delete_pesop_delete_tallap_and_more','2023-01-15 10:40:49.386829'),(68,'koras_joyeria','0027_rename_pesos_peso_rename_tallas_talla','2023-01-15 10:40:52.117415'),(69,'koras_joyeria','0028_remove_producto_peso_id_producto_peso_delete_peso','2023-01-15 10:40:52.897044'),(70,'koras_joyeria','0029_rename_categoria_id_talla_id_categoria_and_more','2023-01-15 10:40:56.309569'),(71,'koras_joyeria','0030_remove_categoria_id_categoria','2023-01-15 10:40:56.631705'),(72,'koras_joyeria','0031_alter_profile_image','2023-01-15 10:40:56.736431'),(73,'koras_joyeria','0032_alter_producto_foto_alter_profile_image','2023-01-15 10:40:56.796267'),(74,'koras_joyeria','0033_alter_profile_image','2023-01-15 10:40:56.854110'),(75,'koras_joyeria','0034_categoria_foto_alter_producto_foto','2023-01-15 10:40:57.088911'),(76,'koras_joyeria','0035_remove_colore_id_categoria_alter_categoria_foto','2023-01-15 10:40:57.730197'),(77,'koras_joyeria','0036_alter_producto_id_categoria_alter_producto_id_color_and_more','2023-01-15 10:41:04.788743'),(78,'koras_joyeria','0037_alter_producto_foto','2023-01-15 10:41:05.678365'),(79,'koras_joyeria','0038_alter_producto_foto_alter_profile_image','2023-01-15 10:41:05.832245'),(80,'koras_joyeria','0039_rename_foto_producto_imagen_alter_categoria_foto_and_more','2023-01-15 10:41:06.806645'),(81,'koras_joyeria','0040_basejoya_ensablespiedrasjoya_joyaprediseñada','2023-01-15 10:41:08.631518'),(82,'koras_joyeria','0041_basejoya_id_categoria_and_more','2023-01-15 10:41:09.945179'),(83,'sessions','0001_initial','2023-01-15 10:41:10.281281'),(84,'koras_joyeria','0042_remove_basejoya_id_categoria_and_more','2023-01-15 13:06:18.427749'),(85,'koras_joyeria','0043_remove_producto_id_categoria_producto_categoria','2023-01-15 13:08:30.596993'),(86,'koras_joyeria','0044_subcategoria_foto','2023-01-15 13:13:42.345906'),(87,'koras_joyeria','0045_producto_subcategoria_alter_producto_categoria','2023-01-20 15:59:22.268723'),(88,'koras_joyeria','0046_alter_subcategoria_categoria','2023-01-20 18:39:11.581318'),(89,'koras_joyeria','0047_alter_basejoya_categoria_and_more','2023-01-26 16:16:56.829215'),(90,'koras_joyeria','0048_diseñarcolor_basejoya_color_and_more','2023-01-26 18:04:58.919852'),(91,'koras_joyeria','0049_alter_ensablespiedrasjoya_color','2023-01-26 21:18:18.411279'),(92,'koras_joyeria','0050_alter_ensablespiedrasjoya_color','2023-01-26 22:17:16.326130');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('qqz5d0tr9a0qfg47fincz6yu2tqrdxyv','.eJx90MFuwyAMBuBXqThHESQhQG_bznuGyMFkoaMQEThVefeSqpMWddrFB__2Z8SNDJDTPOTVxMEiORNGqt-9EfS38XuAF_BfodbBp2jHeh-pn-lafwY07v05ewBmWOey3bLOYDfJCYFxlHriCjmMjeHYq5arXktVCleCSy2B9aKZhBRSY9sbzaaCaojRpkDON8LoXpcYMOsUHg9ntCI-XMdohp9-OfsBaDycFgcJCgE6X7MDLJHoBKU76pNFKEC7VUS9sOov9c1b58IJLnlNBYtHuWvlUW6KLF5k8Y9cPm6xxidzlBtKjzLbtu0ON6KVcw:1pLC7D:XvklX6p2FMqD78fbOrk0tNmmWJs6bUul5heXR6prpdo','2023-02-09 18:57:11.627920');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `sueldo` int(11) NOT NULL,
  `fecha_nac` date NOT NULL,
  `foto` varchar(100) NOT NULL,
  `tipo_id` bigint(20) NOT NULL,
  `categoria_id_id` bigint(20) NOT NULL,
  `descrip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `correo` (`correo`),
  KEY `empleado_tipo_id_2e58a1a3_fk_koras_joyeria_tipo_id` (`tipo_id`),
  KEY `empleado_categoria_id_id_21935723_fk_koras_joyeria_categoria_id` (`categoria_id_id`),
  CONSTRAINT `empleado_categoria_id_id_21935723_fk_koras_joyeria_categoria_id` FOREIGN KEY (`categoria_id_id`) REFERENCES `koras_joyeria_categoria` (`id`),
  CONSTRAINT `empleado_tipo_id_2e58a1a3_fk_koras_joyeria_tipo_id` FOREIGN KEY (`tipo_id`) REFERENCES `koras_joyeria_tipo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_basejoya`
--

DROP TABLE IF EXISTS `koras_joyeria_basejoya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_basejoya` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `palabrasClave` varchar(12) NOT NULL,
  `categoria_id` bigint(20) DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `koras_joyeria_basejo_categoria_id_1defb796_fk_koras_joy` (`categoria_id`),
  KEY `koras_joyeria_basejo_color_id_cbb072e2_fk_koras_joy` (`color_id`),
  CONSTRAINT `koras_joyeria_basejo_categoria_id_1defb796_fk_koras_joy` FOREIGN KEY (`categoria_id`) REFERENCES `koras_joyeria_categoria` (`id`),
  CONSTRAINT `koras_joyeria_basejo_color_id_cbb072e2_fk_koras_joy` FOREIGN KEY (`color_id`) REFERENCES `koras_joyeria_diseñarcolor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_basejoya`
--

LOCK TABLES `koras_joyeria_basejoya` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_basejoya` DISABLE KEYS */;
INSERT INTO `koras_joyeria_basejoya` VALUES (1,'proyecto_koras/diseñarjoya/basejoya/ba_cad_rar_cobre.png','rar_cobre',1,1),(2,'proyecto_koras/diseñarjoya/basejoya/ba_cad_rar_oro.png','rar_oro',1,3),(3,'proyecto_koras/diseñarjoya/basejoya/ba_cad_rar_plata.png','rar_plata',1,2),(4,'proyecto_koras/diseñarjoya/basejoya/ba_cad_sim_cobre.png','sim_cobre',1,1),(5,'proyecto_koras/diseñarjoya/basejoya/ba_cad_sim_oro.png','sim_oro',1,3),(6,'proyecto_koras/diseñarjoya/basejoya/ba_cad_sim_plata.png','sim_plata',1,2),(7,'proyecto_koras/diseñarjoya/basejoya/ba_ring_cobre.png','ring_cobre',2,5),(8,'proyecto_koras/diseñarjoya/basejoya/ba_ring_plata.png','ring_plata',2,6),(9,'proyecto_koras/diseñarjoya/basejoya/ba_ring_oro.png','ring_oro',2,4),(10,'proyecto_koras/diseñarjoya/basejoya/ba_mult_ring_plata.png','mult_plata',2,6),(11,'proyecto_koras/diseñarjoya/basejoya/ba_mult_ring_oro.png','mult_oro',2,4),(12,'proyecto_koras/diseñarjoya/basejoya/ba_mult_ring_cobre.png','mult_cobre',2,5),(13,'proyecto_koras/diseñarjoya/basejoya/ba_ex_ring_plata.png','ex_plata',2,6),(14,'proyecto_koras/diseñarjoya/basejoya/ba_ex_ring_oro.png','ex_oro',2,4),(15,'proyecto_koras/diseñarjoya/basejoya/ba_ex_ring_cobre.png','ex_cobre',2,5),(16,'proyecto_koras/diseñarjoya/basejoya/ba_cab_ring_plata.png','cab_plata',2,6),(17,'proyecto_koras/diseñarjoya/basejoya/ba_cab_ring_oro.png','cab_oro',2,4),(18,'proyecto_koras/diseñarjoya/basejoya/ba_cab_ring_cobre_DkgW2OT.png','cab_cobre',2,5);
/*!40000 ALTER TABLE `koras_joyeria_basejoya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_categoria`
--

DROP TABLE IF EXISTS `koras_joyeria_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_categoria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_categoria`
--

LOCK TABLES `koras_joyeria_categoria` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_categoria` DISABLE KEYS */;
INSERT INTO `koras_joyeria_categoria` VALUES (1,'cadenas','proyecto_koras/categorias/cadenn.webp'),(2,'Anillos','proyecto_koras/categorias/anillos.jpg');
/*!40000 ALTER TABLE `koras_joyeria_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_colore`
--

DROP TABLE IF EXISTS `koras_joyeria_colore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_colore` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_color` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_colore`
--

LOCK TABLES `koras_joyeria_colore` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_colore` DISABLE KEYS */;
INSERT INTO `koras_joyeria_colore` VALUES (1,'azul'),(2,'dorado'),(3,'plateado'),(4,'negro');
/*!40000 ALTER TABLE `koras_joyeria_colore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_compra`
--

DROP TABLE IF EXISTS `koras_joyeria_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_compra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha_hora` datetime(6) NOT NULL,
  `estado` smallint(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `koras_joyeria_compra_user_id_eeed0fcf` (`user_id`),
  CONSTRAINT `koras_joyeria_compra_user_id_eeed0fcf_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_compra`
--

LOCK TABLES `koras_joyeria_compra` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `koras_joyeria_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_compradetalle`
--

DROP TABLE IF EXISTS `koras_joyeria_compradetalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_compradetalle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `id_compra_id` bigint(20) NOT NULL,
  `producto_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `koras_joyeria_compra_id_compra_id_7a8d1bdf_fk_koras_joy` (`id_compra_id`),
  KEY `koras_joyeria_compra_producto_id_267b55b9_fk_koras_joy` (`producto_id`),
  CONSTRAINT `koras_joyeria_compra_id_compra_id_7a8d1bdf_fk_koras_joy` FOREIGN KEY (`id_compra_id`) REFERENCES `koras_joyeria_compra` (`id`),
  CONSTRAINT `koras_joyeria_compra_producto_id_267b55b9_fk_koras_joy` FOREIGN KEY (`producto_id`) REFERENCES `koras_joyeria_producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_compradetalle`
--

LOCK TABLES `koras_joyeria_compradetalle` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_compradetalle` DISABLE KEYS */;
/*!40000 ALTER TABLE `koras_joyeria_compradetalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_diamantep`
--

DROP TABLE IF EXISTS `koras_joyeria_diamantep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_diamantep` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `diamantep` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_diamantep`
--

LOCK TABLES `koras_joyeria_diamantep` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_diamantep` DISABLE KEYS */;
/*!40000 ALTER TABLE `koras_joyeria_diamantep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_diseñarcolor`
--

DROP TABLE IF EXISTS `koras_joyeria_diseñarcolor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_diseñarcolor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `color` varchar(12) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `categoria_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `koras_joyeria_diseña_categoria_id_ccbea2ab_fk_koras_joy` (`categoria_id`),
  CONSTRAINT `koras_joyeria_diseña_categoria_id_ccbea2ab_fk_koras_joy` FOREIGN KEY (`categoria_id`) REFERENCES `koras_joyeria_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_diseñarcolor`
--

LOCK TABLES `koras_joyeria_diseñarcolor` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_diseñarcolor` DISABLE KEYS */;
INSERT INTO `koras_joyeria_diseñarcolor` VALUES (1,'cobre','proyecto_koras/diseñarjoya/colores/cobree.jpg',1),(2,'plata','proyecto_koras/diseñarjoya/colores/color-plateado.png',1),(3,'oro','proyecto_koras/diseñarjoya/colores/53198613-fondo.webp',1),(4,'oro','proyecto_koras/diseñarjoya/colores/53198613-fondo_YaYXcIW.webp',2),(5,'cobre','proyecto_koras/diseñarjoya/colores/cobree_FIp1JBE.jpg',2),(6,'plata','proyecto_koras/diseñarjoya/colores/color-plateado_UsJl1Y2.png',2);
/*!40000 ALTER TABLE `koras_joyeria_diseñarcolor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_ensablespiedrasjoya`
--

DROP TABLE IF EXISTS `koras_joyeria_ensablespiedrasjoya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_ensablespiedrasjoya` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `palabrasClave` varchar(12) NOT NULL,
  `categoria_id` bigint(20) DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `koras_joyeria_ensabl_categoria_id_9453ee18_fk_koras_joy` (`categoria_id`),
  KEY `koras_joyeria_ensabl_color_id_b4ca3e54_fk_koras_joy` (`color_id`),
  CONSTRAINT `koras_joyeria_ensabl_categoria_id_9453ee18_fk_koras_joy` FOREIGN KEY (`categoria_id`) REFERENCES `koras_joyeria_categoria` (`id`),
  CONSTRAINT `koras_joyeria_ensabl_color_id_b4ca3e54_fk_koras_joy` FOREIGN KEY (`color_id`) REFERENCES `koras_joyeria_diseñarcolor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_ensablespiedrasjoya`
--

LOCK TABLES `koras_joyeria_ensablespiedrasjoya` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_ensablespiedrasjoya` DISABLE KEYS */;
INSERT INTO `koras_joyeria_ensablespiedrasjoya` VALUES (1,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_bat_cobre.PNG','cobre',1,1),(2,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_bat_oro.PNG','oro',1,3),(3,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_bat_plata.PNG','plata',1,2),(4,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_bull_cobre.PNG','bull_cobre',1,1),(5,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_bull_oro.PNG','bull_oro',1,3),(6,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_bull_plata.PNG','bull_plata',1,2),(7,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_chuf_cobre.PNG','chuf_cobre',1,1),(8,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_chuf_oro.PNG','chuf_oro',1,3),(9,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_chuf_plata.PNG','chuf_plata',1,2),(10,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cil_cobre.PNG','cil_cobre',1,1),(11,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cil_oro.PNG','cil_oro',1,3),(12,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cil_plata.PNG','cil_plata',1,2),(13,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cir_cobre.PNG','cir_cobre',1,1),(14,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cir_oro.PNG','cir_oro',1,3),(15,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cir_plata.PNG','cir_plata',1,2),(16,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cloud_cobre.PNG','cloud_cobre',1,1),(17,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cloud_oro.PNG','cloud_oro',1,3),(18,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cloud_plata.PNG','cloud_plata',1,2),(19,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_criss_cobre.PNG','criss_cobre',1,1),(20,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_criss_oro.PNG','criss_oro',1,3),(21,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_criss_plata.PNG','criss_plata',1,2),(22,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cross_cobre.PNG','cross_cobre',1,1),(23,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cross_oro.PNG','cross_oro',1,3),(24,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cross_plata.PNG','cross_plata',1,2),(25,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cruz_cobre.PNG','cruz_cobre',1,1),(26,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cruz_oro.PNG','cruz_oro',1,3),(27,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cruz_plata.PNG','cruz_plata',1,2),(28,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cuad_cobre.PNG','cuad_cobre',1,1),(29,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cuad_oro.PNG','cuad_oro',1,3),(30,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_cuad_plata.PNG','cuad_plata',1,2),(31,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_dart_cobre.PNG','dart_cobre',1,1),(32,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_dart_oro.PNG','dart_oro',1,3),(33,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_dart_plata.PNG','dart_plata',1,2),(34,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_dome_cobre.PNG','dome_cobre',1,1),(35,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_dome_oro.PNG','dome_oro',1,3),(36,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/ens_dome_plata.PNG','dome_plata',1,2),(37,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Acuamarina.png','Acuamarina',2,NULL),(38,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Alejandrina.png','Alejandrina',2,NULL),(39,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/cepacio.png','Cepacio',2,NULL),(40,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Citrino.png','Citrino',2,NULL),(41,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Cuarzo.png','Cuarzo',2,NULL),(42,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Diamante.png','Diamante',2,NULL),(43,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Esmeralda.png','Esmeralda',2,NULL),(44,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Espinela.png','Espinela',2,NULL),(45,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Granate.png','Granate',2,NULL),(46,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Greealina.png','Greealina',2,NULL),(47,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/greefiro.png','Greefiro',2,NULL),(48,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Jade.png','Jade',2,NULL),(49,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Kitera.png','Kitera',2,NULL),(50,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Morganita.png','Morganita',2,NULL),(51,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Ocrino.png','Ocrino',2,NULL),(52,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Onyx.png','Onyx',2,NULL),(53,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Oragtrino.png','Oragtrino',2,NULL),(54,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Rubí.png','Rubi',2,NULL),(55,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Thoneyna.png','Thoneyna',2,NULL),(56,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Timilina.png','Timilina',2,NULL),(57,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Topacio.png','Topacio',2,NULL),(58,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Turmalina.png','Turmalina',2,NULL),(59,'proyecto_koras/diseñarjoya/ensamblespiedrasjoya/Zafiro.png','Zafiro',2,NULL);
/*!40000 ALTER TABLE `koras_joyeria_ensablespiedrasjoya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_imagenproducto`
--

DROP TABLE IF EXISTS `koras_joyeria_imagenproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_imagenproducto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(100) DEFAULT NULL,
  `producto_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `koras_joyeria_imagen_producto_id_11cf3218_fk_koras_joy` (`producto_id`),
  CONSTRAINT `koras_joyeria_imagen_producto_id_11cf3218_fk_koras_joy` FOREIGN KEY (`producto_id`) REFERENCES `koras_joyeria_producto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_imagenproducto`
--

LOCK TABLES `koras_joyeria_imagenproducto` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_imagenproducto` DISABLE KEYS */;
INSERT INTO `koras_joyeria_imagenproducto` VALUES (1,'proyecto_koras/productos/beauty-7403551__340.jpg',1),(2,'proyecto_koras/productos/depositphotos_4813991-stock-photo-gold-jewelry-on-white_aco37s8.jpg',1),(3,'proyecto_koras/productos/depositphotos_348355852-stock-photo-selective-focus-earrings-je_KaeNdE4.jpg',1),(4,'proyecto_koras/productos/beauty-7403551__340_t2pckUO.jpg',2),(5,'proyecto_koras/productos/woman-5805574__340.jpg',2),(6,'proyecto_koras/productos/young-woman-1867618__340.jpg',2),(7,'proyecto_koras/productos/depositphotos_8823251-stock-photo-pendant-in-form-of-rings.jpg',3),(8,'proyecto_koras/productos/font-joyeria.jpg',9),(9,'proyecto_koras/productos/port10_zue0hgM.jpg',9),(10,'proyecto_koras/productos/port8_8YkSsfk.jpg',9),(11,'proyecto_koras/productos/port4_REDor6c.jpg',9),(12,'proyecto_koras/productos/port3_EYFHyKB.jpg',9),(13,'proyecto_koras/productos/ba_cab_ring_cobre.png',7);
/*!40000 ALTER TABLE `koras_joyeria_imagenproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_joyaprediseñada`
--

DROP TABLE IF EXISTS `koras_joyeria_joyaprediseñada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_joyaprediseñada` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `basejoya_id` bigint(20) NOT NULL,
  `ensamblespiedrasjoya_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `koras_joyeria_joyapr_basejoya_id_e7591ef0_fk_koras_joy` (`basejoya_id`),
  KEY `koras_joyeria_joyapr_ensamblespiedrasjoya_1f06dbcf_fk_koras_joy` (`ensamblespiedrasjoya_id`),
  CONSTRAINT `koras_joyeria_joyapr_basejoya_id_e7591ef0_fk_koras_joy` FOREIGN KEY (`basejoya_id`) REFERENCES `koras_joyeria_basejoya` (`id`),
  CONSTRAINT `koras_joyeria_joyapr_ensamblespiedrasjoya_1f06dbcf_fk_koras_joy` FOREIGN KEY (`ensamblespiedrasjoya_id`) REFERENCES `koras_joyeria_ensablespiedrasjoya` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_joyaprediseñada`
--

LOCK TABLES `koras_joyeria_joyaprediseñada` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_joyaprediseñada` DISABLE KEYS */;
/*!40000 ALTER TABLE `koras_joyeria_joyaprediseñada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_marcop`
--

DROP TABLE IF EXISTS `koras_joyeria_marcop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_marcop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `marcop` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_marcop`
--

LOCK TABLES `koras_joyeria_marcop` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_marcop` DISABLE KEYS */;
/*!40000 ALTER TABLE `koras_joyeria_marcop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_materialp`
--

DROP TABLE IF EXISTS `koras_joyeria_materialp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_materialp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `materialp` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_materialp`
--

LOCK TABLES `koras_joyeria_materialp` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_materialp` DISABLE KEYS */;
/*!40000 ALTER TABLE `koras_joyeria_materialp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_producto`
--

DROP TABLE IF EXISTS `koras_joyeria_producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_producto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(100) NOT NULL,
  `precio_producto` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `desc` longtext NOT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `timestamp` datetime(6) NOT NULL,
  `talla_id_id` bigint(20) DEFAULT NULL,
  `peso` varchar(10) DEFAULT NULL,
  `id_color_id` bigint(20) DEFAULT NULL,
  `categoria_id` bigint(20) DEFAULT NULL,
  `subcategoria_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `koras_joyeria_produc_id_color_id_57382d7d_fk_koras_joy` (`id_color_id`),
  KEY `koras_joyeria_produc_talla_id_id_b5b4bf15_fk_koras_joy` (`talla_id_id`),
  KEY `koras_joyeria_produc_subcategoria_id_49825149_fk_koras_joy` (`subcategoria_id`),
  KEY `koras_joyeria_produc_categoria_id_23775983_fk_koras_joy` (`categoria_id`),
  CONSTRAINT `koras_joyeria_produc_categoria_id_23775983_fk_koras_joy` FOREIGN KEY (`categoria_id`) REFERENCES `koras_joyeria_categoria` (`id`),
  CONSTRAINT `koras_joyeria_produc_id_color_id_57382d7d_fk_koras_joy` FOREIGN KEY (`id_color_id`) REFERENCES `koras_joyeria_colore` (`id`),
  CONSTRAINT `koras_joyeria_produc_subcategoria_id_49825149_fk_koras_joy` FOREIGN KEY (`subcategoria_id`) REFERENCES `koras_joyeria_subcategoria` (`id`),
  CONSTRAINT `koras_joyeria_produc_talla_id_id_b5b4bf15_fk_koras_joy` FOREIGN KEY (`talla_id_id`) REFERENCES `koras_joyeria_talla` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_producto`
--

LOCK TABLES `koras_joyeria_producto` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_producto` DISABLE KEYS */;
INSERT INTO `koras_joyeria_producto` VALUES (1,'producto1',300,4,'dscnjdsbjfdsjlfbjldsbjlfbdf','proyecto_koras/productos/depositphotos_8423176-stock-photo-pendant-in-form-of-rings_1v0yYVv.jpg','2023-01-15 11:12:29.000000',1,'15',1,NULL,NULL),(2,'dsadsadasd',300,3,'dsadnasfjlbdlfbjldsblsjaf','proyecto_koras/productos/depositphotos_3734605-stock-photo-diamond-jewelry.jpg','2023-01-15 11:20:12.000000',1,'3',1,NULL,NULL),(3,'anillos dorados',32000,6,'anillos argolla dorados','proyecto_koras/productos/depositphotos_6595201-stock-photo-gold-jewelry-bracelets-and-chains.jpg','2023-01-15 11:22:52.000000',3,'7',2,2,4),(4,'cadena oro',200000,27,'Cadenas Oro Laminado 4 Mm','proyecto_koras/productos/cadenaoro.webp','2023-01-15 13:08:38.000000',6,'20',2,1,3),(5,'Anillo de acero',14000,7,'Anillo Hombre Acero Inoxidable','proyecto_koras/productos/inox.webp','2023-01-15 13:14:44.000000',3,'6',3,2,2),(6,'Anillo Cadena De Eslabones',22705,5,'Anillo Cadena De Eslabones Giratoria Acero Inoxidable','proyecto_koras/productos/eslabon.webp','2023-01-20 16:16:13.000000',4,'8',4,2,2),(7,'Anillo serpiente',20000,9,'Anillo De Serpiente Vintage Para Hombre','proyecto_koras/productos/serpi.webp','2023-01-24 17:04:58.000000',3,'3',3,2,2),(8,'Anillos geometricos',20200,6,'Set 8 Anillos Geométricos Mujer Dorado I F K M','proyecto_koras/productos/geo.webp','2023-01-24 17:09:16.000000',3,'3',2,2,4),(9,'Anillo ajustador',21900,8,'Ajustador Anillo Tamaño Invisible Mujer Sencillo Silicona X4','proyecto_koras/productos/invi.webp','2023-01-24 17:10:38.000000',3,'2',3,2,4),(10,'Cadena plata',24900,45,'Cadena 55 Cm Titanio Plateada 5 Mm De Grosor Hombre','proyecto_koras/productos/tita.webp','2023-01-24 17:19:20.000000',5,'34',3,1,3),(11,'cadena y pulsera plata con oro',81225,20,'Set Cadena Y Pulsera Plata Con Baño Oro De 18k + Estuche','proyecto_koras/productos/bañooro.webp','2023-01-24 17:21:10.000000',7,'5',2,1,3),(12,'corazón cuarzo',16900,30,'Collar Corazón Cuarzo Amatista Cadena Acero Dayoshop','proyecto_koras/productos/cuarzo.webp','2023-01-24 17:23:51.000000',7,'4',3,1,1);
/*!40000 ALTER TABLE `koras_joyeria_producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_profile`
--

DROP TABLE IF EXISTS `koras_joyeria_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rol` smallint(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `koras_joyeria_profile_user_id_3019c2c5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_profile`
--

LOCK TABLES `koras_joyeria_profile` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_profile` DISABLE KEYS */;
INSERT INTO `koras_joyeria_profile` VALUES (1,'proyecto_koras/profiles/profile-default.png',1,3),(2,'proyecto_koras/profiles/profile-default.png',2,3);
/*!40000 ALTER TABLE `koras_joyeria_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_sizep`
--

DROP TABLE IF EXISTS `koras_joyeria_sizep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_sizep` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sizep` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_sizep`
--

LOCK TABLES `koras_joyeria_sizep` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_sizep` DISABLE KEYS */;
/*!40000 ALTER TABLE `koras_joyeria_sizep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_subcategoria`
--

DROP TABLE IF EXISTS `koras_joyeria_subcategoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_subcategoria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_subcategoria` varchar(20) NOT NULL,
  `categoria_id` bigint(20) NOT NULL,
  `foto` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `koras_joyeria_subcat_categoria_id_7f490ed0_fk_koras_joy` (`categoria_id`),
  CONSTRAINT `koras_joyeria_subcat_categoria_id_7f490ed0_fk_koras_joy` FOREIGN KEY (`categoria_id`) REFERENCES `koras_joyeria_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_subcategoria`
--

LOCK TABLES `koras_joyeria_subcategoria` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_subcategoria` DISABLE KEYS */;
INSERT INTO `koras_joyeria_subcategoria` VALUES (1,'Mujer',1,'proyecto_koras/subcategorias/cadenasmujer.jpg'),(2,'Hombre',2,'proyecto_koras/subcategorias/anillohombre.jpg'),(3,'Hombre',1,'proyecto_koras/subcategorias/hombre.webp'),(4,'Mujer',2,'proyecto_koras/subcategorias/anillomujer.jpg');
/*!40000 ALTER TABLE `koras_joyeria_subcategoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_talla`
--

DROP TABLE IF EXISTS `koras_joyeria_talla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_talla` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `talla` varchar(20) NOT NULL,
  `id_categoria_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `koras_joyeria_talla_id_categoria_id_e74cb832_fk_koras_joy` (`id_categoria_id`),
  CONSTRAINT `koras_joyeria_talla_id_categoria_id_e74cb832_fk_koras_joy` FOREIGN KEY (`id_categoria_id`) REFERENCES `koras_joyeria_categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_talla`
--

LOCK TABLES `koras_joyeria_talla` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_talla` DISABLE KEYS */;
INSERT INTO `koras_joyeria_talla` VALUES (1,'talla1',1),(2,'3',2),(3,'4.5',2),(4,'8',2),(5,'40cm',1),(6,'45cm',1),(7,'60cm',1);
/*!40000 ALTER TABLE `koras_joyeria_talla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `koras_joyeria_tipo`
--

DROP TABLE IF EXISTS `koras_joyeria_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `koras_joyeria_tipo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `koras_joyeria_tipo`
--

LOCK TABLES `koras_joyeria_tipo` WRITE;
/*!40000 ALTER TABLE `koras_joyeria_tipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `koras_joyeria_tipo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-09 11:36:47
