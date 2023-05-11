/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : django_shopping

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 11/05/2023 11:12:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for _auth_user
-- ----------------------------
DROP TABLE IF EXISTS `_auth_user`;
CREATE TABLE `_auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of _auth_user
-- ----------------------------
INSERT INTO `_auth_user` VALUES (1, 'pbkdf2_sha256$180000$BE2Ka9x2tiQX$oHjOPWoJ7w0HGYm+UDXk9P5L/f4SEnHJgflp8RtCBKI=', '2023-05-10 08:49:41.901988', 1, 'admin', 'admin', 'systems', 'admin@gmail.com', 1, 1, '0000-00-00 00:00:00.000000');

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (1, 'CUSTOMER');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 41 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add customer', 7, 'add_customer');
INSERT INTO `auth_permission` VALUES (26, 'Can change customer', 7, 'change_customer');
INSERT INTO `auth_permission` VALUES (27, 'Can delete customer', 7, 'delete_customer');
INSERT INTO `auth_permission` VALUES (28, 'Can view customer', 7, 'view_customer');
INSERT INTO `auth_permission` VALUES (29, 'Can add product', 8, 'add_product');
INSERT INTO `auth_permission` VALUES (30, 'Can change product', 8, 'change_product');
INSERT INTO `auth_permission` VALUES (31, 'Can delete product', 8, 'delete_product');
INSERT INTO `auth_permission` VALUES (32, 'Can view product', 8, 'view_product');
INSERT INTO `auth_permission` VALUES (33, 'Can add orders', 9, 'add_orders');
INSERT INTO `auth_permission` VALUES (34, 'Can change orders', 9, 'change_orders');
INSERT INTO `auth_permission` VALUES (35, 'Can delete orders', 9, 'delete_orders');
INSERT INTO `auth_permission` VALUES (36, 'Can view orders', 9, 'view_orders');
INSERT INTO `auth_permission` VALUES (37, 'Can add feedback', 10, 'add_feedback');
INSERT INTO `auth_permission` VALUES (38, 'Can change feedback', 10, 'change_feedback');
INSERT INTO `auth_permission` VALUES (39, 'Can delete feedback', 10, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (40, 'Can view feedback', 10, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `email` varchar(254) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$180000$BE2Ka9x2tiQX$oHjOPWoJ7w0HGYm+UDXk9P5L/f4SEnHJgflp8RtCBKI=', '2023-05-10 09:09:02.809945', 1, 'admin', 'admin', 'systems', 'admin@gmail.com', 1, 1, '0000-00-00 00:00:00.000000');
INSERT INTO `auth_user` VALUES (4, 'pbkdf2_sha256$180000$BE2Ka9x2tiQX$oHjOPWoJ7w0HGYm+UDXk9P5L/f4SEnHJgflp8RtCBKI=', '2023-05-10 09:00:28.196585', 1, 'admin1', '', 'admin@gmail.com', '1', 1, 127, '0000-00-00 00:00:00.000000');
INSERT INTO `auth_user` VALUES (5, 'pbkdf2_sha256$150000$opswm8Dc7gYN$slayHm60irK9AZkoq5mD+AjPG+Fe/WFe60CmNJXHKvM=', '2021-05-19 04:52:08.285767', 0, 'myre', 'Myrel', '', '0', 1, 127, '0000-00-00 00:00:00.000000');
INSERT INTO `auth_user` VALUES (6, 'pbkdf2_sha256$180000$mYbL1tmCjHU9$rdZWZsRk7hSiAHCgEUz3AvfYp1RImsuFtEBC9LsISQM=', '2023-05-10 09:03:38.427724', 1, 'root', '', '', '', 1, 1, '2023-05-10 09:02:43.664757');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_user_id_6a12ed8b`(`user_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544`(`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------
INSERT INTO `auth_user_groups` VALUES (3, 5, 1);
INSERT INTO `auth_user_groups` VALUES (4, 7, 1);

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permissions_user_id_a95ead1b`(`user_id`) USING BTREE,
  INDEX `auth_user_user_permissions_permission_id_1fbb5f2c`(`permission_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Fixed;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET tis620 COLLATE tis620_thai_ci NULL,
  `object_repr` varchar(200) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `content_type_id` int NULL DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_chk_1` CHECK (`action_flag` >= 0)
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES (1, '2020-10-22 08:57:04.506317', '1', 'Samsung Galaxy note 10', 0, '8', 1, 1);
INSERT INTO `django_admin_log` VALUES (2, '2021-05-17 05:57:28.110293', '2', 'Orders object (2)', 0, '9', 4, 2);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `model` varchar(100) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (7, 'ecom', 'customer');
INSERT INTO `django_content_type` VALUES (8, 'ecom', 'product');
INSERT INTO `django_content_type` VALUES (9, 'ecom', 'orders');
INSERT INTO `django_content_type` VALUES (10, 'ecom', 'feedback');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 23 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2023-05-10 08:52:48.947472');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2023-05-10 08:52:49.942066');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2023-05-10 08:52:59.111430');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-05-10 08:53:00.546750');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-10 08:53:00.555301');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-05-10 08:53:01.567698');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-05-10 08:53:02.087353');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-05-10 08:53:02.529630');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-05-10 08:53:02.539706');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-05-10 08:53:03.213472');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-05-10 08:53:03.215471');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-10 08:53:03.222441');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-05-10 08:53:04.800192');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-10 08:53:05.190151');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-05-10 08:53:05.548401');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-05-10 08:53:05.556403');
INSERT INTO `django_migrations` VALUES (17, 'ecom', '0001_initial', '2023-05-10 08:53:05.662396');
INSERT INTO `django_migrations` VALUES (18, 'ecom', '0002_product', '2023-05-10 08:53:06.357028');
INSERT INTO `django_migrations` VALUES (19, 'ecom', '0003_orders', '2023-05-10 08:53:06.532060');
INSERT INTO `django_migrations` VALUES (20, 'ecom', '0004_feedback', '2023-05-10 08:53:09.003208');
INSERT INTO `django_migrations` VALUES (21, 'ecom', '0005_feedback_date', '2023-05-10 08:53:10.111858');
INSERT INTO `django_migrations` VALUES (22, 'sessions', '0001_initial', '2023-05-10 08:53:10.377544');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `session_data` longtext CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('6greoddbeeb6ykcsip79uxti0s4tsclp', 'YjIyMTAwMWFiNThmMzQ0NTBmZGI3ZDkwZTA1YTk3OTZlODc5MDhjZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkMDE4ZWViNDA2NThkMWM4MjFiMmM2NDZjM2Y2NTJhNTg0Yjg5MDczIn0=', '2023-05-24 09:09:02.811971');

-- ----------------------------
-- Table structure for ecom_customer
-- ----------------------------
DROP TABLE IF EXISTS `ecom_customer`;
CREATE TABLE `ecom_customer`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `profile_pic` varchar(100) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL,
  `address` varchar(40) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `mobile` varchar(20) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ecom_customer
-- ----------------------------
INSERT INTO `ecom_customer` VALUES (3, 'profile_pic/CustomerProfilePic/8_jvAI1dZ.jpg', 'Dumanggas, Iloilo City', '0912345678', 5);
INSERT INTO `ecom_customer` VALUES (4, 'profile_pic/CustomerProfilePic/Helpdesk_Assistant.jpg', 'mukdahan', '0804066967', 7);

-- ----------------------------
-- Table structure for ecom_feedback
-- ----------------------------
DROP TABLE IF EXISTS `ecom_feedback`;
CREATE TABLE `ecom_feedback`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `feedback` varchar(500) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ecom_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for ecom_orders
-- ----------------------------
DROP TABLE IF EXISTS `ecom_orders`;
CREATE TABLE `ecom_orders`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL,
  `address` varchar(500) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL,
  `order_date` date NULL DEFAULT NULL,
  `status` varchar(50) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL,
  `customer_id` int NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `ecom_orders_customer_id_db3d65c9`(`customer_id`) USING BTREE,
  INDEX `ecom_orders_product_id_d66d851f`(`product_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ecom_orders
-- ----------------------------
INSERT INTO `ecom_orders` VALUES (5, 'myrel@gmail.com', 'brgy.dumanggas', '9123456789', '2021-05-19', 'Delivered', 3, 4);

-- ----------------------------
-- Table structure for ecom_product
-- ----------------------------
DROP TABLE IF EXISTS `ecom_product`;
CREATE TABLE `ecom_product`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(40) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  `product_image` varchar(100) CHARACTER SET tis620 COLLATE tis620_thai_ci NULL DEFAULT NULL,
  `price` int UNSIGNED NOT NULL,
  `description` varchar(40) CHARACTER SET tis620 COLLATE tis620_thai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  CONSTRAINT `ecom_product_chk_1` CHECK (`price` >= 0)
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ecom_product
-- ----------------------------
INSERT INTO `ecom_product` VALUES (4, 'Macbook First Edition', 'product_image/mac.jpg', 250000, 'The original MacBook, available in black');
INSERT INTO `ecom_product` VALUES (5, 'Asus Laptop', 'product_image/laptop_1.jpg', 75000, 'Best Gaming Laptop');

-- ----------------------------
-- Table structure for sqlite_sequence
-- ----------------------------
DROP TABLE IF EXISTS `sqlite_sequence`;
CREATE TABLE `sqlite_sequence`  (
  `name` longblob NULL,
  `seq` longblob NULL
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = tis620 COLLATE = tis620_thai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sqlite_sequence
-- ----------------------------
INSERT INTO `sqlite_sequence` VALUES (0x646A616E676F5F6D6967726174696F6E73, 0x3232);
INSERT INTO `sqlite_sequence` VALUES (0x646A616E676F5F61646D696E5F6C6F67, 0x32);
INSERT INTO `sqlite_sequence` VALUES (0x646A616E676F5F636F6E74656E745F74797065, 0x3130);
INSERT INTO `sqlite_sequence` VALUES (0x617574685F7065726D697373696F6E, 0x3430);
INSERT INTO `sqlite_sequence` VALUES (0x617574685F75736572, 0x37);
INSERT INTO `sqlite_sequence` VALUES (0x617574685F67726F7570, 0x31);
INSERT INTO `sqlite_sequence` VALUES (0x65636F6D5F666565646261636B, 0x30);
INSERT INTO `sqlite_sequence` VALUES (0x65636F6D5F70726F64756374, 0x35);
INSERT INTO `sqlite_sequence` VALUES (0x65636F6D5F637573746F6D6572, 0x34);
INSERT INTO `sqlite_sequence` VALUES (0x617574685F757365725F67726F757073, 0x34);
INSERT INTO `sqlite_sequence` VALUES (0x65636F6D5F6F7264657273, 0x35);

SET FOREIGN_KEY_CHECKS = 1;
