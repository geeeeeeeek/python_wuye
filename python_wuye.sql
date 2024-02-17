/*
 Navicat Premium Data Transfer

 Source Server         : localhost连接
 Source Server Type    : MySQL
 Source Server Version : 50737
 Source Host           : localhost:3306
 Source Schema         : python_wuye

 Target Server Type    : MySQL
 Target Server Version : 50737
 File Encoding         : 65001

 Date: 16/01/2024 18:06:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add tag', 13, 'add_tag');
INSERT INTO `auth_permission` VALUES (50, 'Can change tag', 13, 'change_tag');
INSERT INTO `auth_permission` VALUES (51, 'Can delete tag', 13, 'delete_tag');
INSERT INTO `auth_permission` VALUES (52, 'Can view tag', 13, 'view_tag');
INSERT INTO `auth_permission` VALUES (53, 'Can add user', 14, 'add_user');
INSERT INTO `auth_permission` VALUES (54, 'Can change user', 14, 'change_user');
INSERT INTO `auth_permission` VALUES (55, 'Can delete user', 14, 'delete_user');
INSERT INTO `auth_permission` VALUES (56, 'Can view user', 14, 'view_user');
INSERT INTO `auth_permission` VALUES (57, 'Can add thing', 15, 'add_thing');
INSERT INTO `auth_permission` VALUES (58, 'Can change thing', 15, 'change_thing');
INSERT INTO `auth_permission` VALUES (59, 'Can delete thing', 15, 'delete_thing');
INSERT INTO `auth_permission` VALUES (60, 'Can view thing', 15, 'view_thing');
INSERT INTO `auth_permission` VALUES (61, 'Can add record', 16, 'add_record');
INSERT INTO `auth_permission` VALUES (62, 'Can change record', 16, 'change_record');
INSERT INTO `auth_permission` VALUES (63, 'Can delete record', 16, 'delete_record');
INSERT INTO `auth_permission` VALUES (64, 'Can view record', 16, 'view_record');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add banner', 18, 'add_banner');
INSERT INTO `auth_permission` VALUES (70, 'Can change banner', 18, 'change_banner');
INSERT INTO `auth_permission` VALUES (71, 'Can delete banner', 18, 'delete_banner');
INSERT INTO `auth_permission` VALUES (72, 'Can view banner', 18, 'view_banner');
INSERT INTO `auth_permission` VALUES (73, 'Can add address', 19, 'add_address');
INSERT INTO `auth_permission` VALUES (74, 'Can change address', 19, 'change_address');
INSERT INTO `auth_permission` VALUES (75, 'Can delete address', 19, 'delete_address');
INSERT INTO `auth_permission` VALUES (76, 'Can view address', 19, 'view_address');
INSERT INTO `auth_permission` VALUES (77, 'Can add asset', 20, 'add_asset');
INSERT INTO `auth_permission` VALUES (78, 'Can change asset', 20, 'change_asset');
INSERT INTO `auth_permission` VALUES (79, 'Can delete asset', 20, 'delete_asset');
INSERT INTO `auth_permission` VALUES (80, 'Can view asset', 20, 'view_asset');
INSERT INTO `auth_permission` VALUES (81, 'Can add park', 21, 'add_park');
INSERT INTO `auth_permission` VALUES (82, 'Can change park', 21, 'change_park');
INSERT INTO `auth_permission` VALUES (83, 'Can delete park', 21, 'delete_park');
INSERT INTO `auth_permission` VALUES (84, 'Can view park', 21, 'view_park');
INSERT INTO `auth_permission` VALUES (85, 'Can add repair', 22, 'add_repair');
INSERT INTO `auth_permission` VALUES (86, 'Can change repair', 22, 'change_repair');
INSERT INTO `auth_permission` VALUES (87, 'Can delete repair', 22, 'delete_repair');
INSERT INTO `auth_permission` VALUES (88, 'Can view repair', 22, 'view_repair');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------

-- ----------------------------
-- Table structure for b_address
-- ----------------------------
DROP TABLE IF EXISTS `b_address`;
CREATE TABLE `b_address`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `default` tinyint(1) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_address_user_id_a37a8d6a_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_address_user_id_a37a8d6a_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_address
-- ----------------------------

-- ----------------------------
-- Table structure for b_asset
-- ----------------------------
DROP TABLE IF EXISTS `b_asset`;
CREATE TABLE `b_asset`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `asset_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_asset
-- ----------------------------
INSERT INTO `b_asset` VALUES (1, '20230901001', '除草机', '用于除草', '2024-01-15 18:39:44.767595');
INSERT INTO `b_asset` VALUES (2, '20230901002', '扫把', '用于地下室清扫', '2024-01-15 18:40:06.933089');
INSERT INTO `b_asset` VALUES (3, '20230901003', '垃圾车', '', '2024-01-15 18:40:17.719277');
INSERT INTO `b_asset` VALUES (4, '20230901004', '雅迪电动车', 'aaa', '2024-01-15 18:40:39.720876');
INSERT INTO `b_asset` VALUES (7, '20230901005', '办公电脑', '用于维护系统', '2024-01-15 18:41:36.047279');
INSERT INTO `b_asset` VALUES (8, '20230901006', '空调外机', '', '2024-01-15 18:41:52.144780');

-- ----------------------------
-- Table structure for b_banner
-- ----------------------------
DROP TABLE IF EXISTS `b_banner`;
CREATE TABLE `b_banner`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_banner_thing_id_3f307d00_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_banner_thing_id_3f307d00_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_banner
-- ----------------------------

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '清华园小区A区', '2024-01-15 10:17:35.948178');
INSERT INTO `b_classification` VALUES (2, '清华园小区B区', '2024-01-15 10:18:17.358908');
INSERT INTO `b_classification` VALUES (3, '清华园小区C区', '2024-01-15 10:18:23.223211');
INSERT INTO `b_classification` VALUES (4, '清华园小区D区', '2024-01-15 10:18:31.347795');

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-14 11:09:53.468853');
INSERT INTO `b_login_log` VALUES (2, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-14 11:10:21.032763');
INSERT INTO `b_login_log` VALUES (3, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-15 17:40:49.346669');
INSERT INTO `b_login_log` VALUES (4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-15 19:03:38.520067');
INSERT INTO `b_login_log` VALUES (5, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-15 19:05:27.311553');
INSERT INTO `b_login_log` VALUES (6, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-15 19:07:33.203927');
INSERT INTO `b_login_log` VALUES (7, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-15 19:11:25.756695');
INSERT INTO `b_login_log` VALUES (8, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '2024-01-15 19:24:00.220549');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 545 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1, '127.0.0.1', '2024-01-14 11:06:00.001511', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (2, '127.0.0.1', '2024-01-14 11:06:00.010520', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (3, '127.0.0.1', '2024-01-14 11:06:00.025069', '/myapp/admin/classification/list', 'GET', NULL, '37');
INSERT INTO `b_op_log` VALUES (4, '127.0.0.1', '2024-01-14 11:06:55.046706', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (5, '127.0.0.1', '2024-01-14 11:06:55.047706', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (6, '127.0.0.1', '2024-01-14 11:06:55.049706', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (7, '127.0.0.1', '2024-01-14 11:06:56.512719', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (8, '127.0.0.1', '2024-01-14 11:06:56.513719', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (9, '127.0.0.1', '2024-01-14 11:06:56.514904', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (10, '127.0.0.1', '2024-01-14 11:07:08.120357', '/myapp/admin/adminLogin', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (11, '127.0.0.1', '2024-01-14 11:08:38.206647', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (12, '127.0.0.1', '2024-01-14 11:08:38.207664', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (13, '127.0.0.1', '2024-01-14 11:08:38.225886', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (14, '127.0.0.1', '2024-01-14 11:08:47.577770', '/myapp/admin/user/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (15, '127.0.0.1', '2024-01-14 11:09:03.558949', '/myapp/admin/user/create', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (16, '127.0.0.1', '2024-01-14 11:09:12.372817', '/myapp/admin/user/create', 'POST', NULL, '0');
INSERT INTO `b_op_log` VALUES (17, '127.0.0.1', '2024-01-14 11:09:32.860854', '/myapp/admin/user/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (18, '127.0.0.1', '2024-01-14 11:09:32.912854', '/myapp/admin/user/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (19, '127.0.0.1', '2024-01-14 11:09:53.474847', '/myapp/admin/adminLogin', 'POST', NULL, '50');
INSERT INTO `b_op_log` VALUES (20, '127.0.0.1', '2024-01-14 11:09:53.658833', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (21, '127.0.0.1', '2024-01-14 11:09:53.668201', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (22, '127.0.0.1', '2024-01-14 11:09:53.671071', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (23, '127.0.0.1', '2024-01-14 11:09:55.086097', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (24, '127.0.0.1', '2024-01-14 11:09:56.610172', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (25, '127.0.0.1', '2024-01-14 11:09:56.611828', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (26, '127.0.0.1', '2024-01-14 11:09:56.614270', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (27, '127.0.0.1', '2024-01-14 11:10:15.781900', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (28, '127.0.0.1', '2024-01-14 11:10:21.036750', '/myapp/admin/adminLogin', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (29, '127.0.0.1', '2024-01-14 11:10:21.102742', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (30, '127.0.0.1', '2024-01-14 11:10:21.105742', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (31, '127.0.0.1', '2024-01-14 11:10:21.107742', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (32, '127.0.0.1', '2024-01-14 11:10:24.236841', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (33, '127.0.0.1', '2024-01-14 11:10:24.967835', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (34, '127.0.0.1', '2024-01-14 11:10:42.376867', '/myapp/admin/user/create', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (35, '127.0.0.1', '2024-01-14 11:10:42.419916', '/myapp/admin/user/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (36, '127.0.0.1', '2024-01-14 11:10:48.622695', '/myapp/admin/loginLog/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (37, '127.0.0.1', '2024-01-14 11:10:49.781620', '/myapp/admin/opLog/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (38, '127.0.0.1', '2024-01-14 11:10:59.208415', '/myapp/admin/errorLog/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (39, '127.0.0.1', '2024-01-14 11:11:00.041681', '/myapp/admin/loginLog/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (40, '127.0.0.1', '2024-01-14 11:11:02.010713', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1045');
INSERT INTO `b_op_log` VALUES (41, '127.0.0.1', '2024-01-14 11:11:05.060490', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (42, '127.0.0.1', '2024-01-14 11:11:12.284359', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (43, '127.0.0.1', '2024-01-15 10:11:30.767662', '/', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (44, '127.0.0.1', '2024-01-15 10:11:30.846746', '/favicon.ico', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (45, '127.0.0.1', '2024-01-15 10:11:38.856765', '/admin/', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (46, '127.0.0.1', '2024-01-15 10:11:38.947572', '/admin/login/', 'GET', NULL, '70');
INSERT INTO `b_op_log` VALUES (47, '127.0.0.1', '2024-01-15 10:11:41.710514', '/admin/login/', 'POST', NULL, '107');
INSERT INTO `b_op_log` VALUES (48, '127.0.0.1', '2024-01-15 10:11:49.072680', '/myapp', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (49, '127.0.0.1', '2024-01-15 10:11:53.908682', '/myapp/', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (50, '127.0.0.1', '2024-01-15 10:11:59.824972', '/myapp/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (51, '127.0.0.1', '2024-01-15 10:12:10.905850', '/myapp/admin/thing/list', 'GET', NULL, '42');
INSERT INTO `b_op_log` VALUES (52, '127.0.0.1', '2024-01-15 10:12:15.378071', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (53, '127.0.0.1', '2024-01-15 10:12:16.418021', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (54, '127.0.0.1', '2024-01-15 10:12:20.158535', '/myapp/admin/thing/', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (55, '127.0.0.1', '2024-01-15 10:12:24.113536', '/myapp/admin/thing/create', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (56, '127.0.0.1', '2024-01-15 10:12:27.245234', '/myapp/admin/thing/create', 'OPTIONS', NULL, '13');
INSERT INTO `b_op_log` VALUES (57, '127.0.0.1', '2024-01-15 10:12:28.044185', '/myapp/admin/thing/create', 'OPTIONS', NULL, '11');
INSERT INTO `b_op_log` VALUES (58, '127.0.0.1', '2024-01-15 10:13:56.138011', '/myapp/admin/thing/create', 'GET', NULL, '0');
INSERT INTO `b_op_log` VALUES (59, '127.0.0.1', '2024-01-15 10:13:58.884369', '/myapp/admin/thing/create', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (60, '127.0.0.1', '2024-01-15 10:14:04.352953', '/myapp/admin/thing/create', 'POST', NULL, '1');
INSERT INTO `b_op_log` VALUES (61, '127.0.0.1', '2024-01-15 10:14:53.286624', '/myapp/admin/thing/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (62, '127.0.0.1', '2024-01-15 10:15:31.564043', '/myapp/admin/thing/create', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (63, '127.0.0.1', '2024-01-15 10:16:29.806629', '/myapp/admin/classification/create', 'GET', NULL, '32');
INSERT INTO `b_op_log` VALUES (64, '127.0.0.1', '2024-01-15 10:17:35.968188', '/myapp/admin/classification/create', 'POST', NULL, '48');
INSERT INTO `b_op_log` VALUES (65, '127.0.0.1', '2024-01-15 10:18:08.242081', '/myapp/admin/classification/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (66, '127.0.0.1', '2024-01-15 10:18:17.386159', '/myapp/admin/classification/create', 'POST', NULL, '58');
INSERT INTO `b_op_log` VALUES (67, '127.0.0.1', '2024-01-15 10:18:23.252212', '/myapp/admin/classification/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (68, '127.0.0.1', '2024-01-15 10:18:31.373802', '/myapp/admin/classification/create', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (69, '127.0.0.1', '2024-01-15 10:18:37.128889', '/myapp/admin/thing/create', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (70, '127.0.0.1', '2024-01-15 10:19:57.747634', '/myapp/admin/thing/create', 'POST', NULL, '59');
INSERT INTO `b_op_log` VALUES (71, '127.0.0.1', '2024-01-15 10:20:33.528773', '/myapp/admin/thing/update', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (72, '127.0.0.1', '2024-01-15 10:20:52.596185', '/myapp/admin/thing/update', 'POST', NULL, '54');
INSERT INTO `b_op_log` VALUES (73, '127.0.0.1', '2024-01-15 10:32:46.836268', '/', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (74, '127.0.0.1', '2024-01-15 10:32:51.226441', '/myapp/admin/thing/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (75, '127.0.0.1', '2024-01-15 10:32:54.677469', '/myapp/', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (76, '127.0.0.1', '2024-01-15 10:35:38.260649', '/myapp/', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (77, '127.0.0.1', '2024-01-15 17:40:13.999633', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (78, '127.0.0.1', '2024-01-15 17:40:14.000633', '/myapp/admin/tag/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (79, '127.0.0.1', '2024-01-15 17:40:14.001633', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (80, '127.0.0.1', '2024-01-15 17:40:15.593765', '/myapp/admin/user/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (81, '127.0.0.1', '2024-01-15 17:40:49.352673', '/myapp/admin/adminLogin', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (82, '127.0.0.1', '2024-01-15 17:40:49.433891', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (83, '127.0.0.1', '2024-01-15 17:40:49.436892', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (84, '127.0.0.1', '2024-01-15 17:40:49.451122', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (85, '127.0.0.1', '2024-01-15 17:41:01.661209', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (86, '127.0.0.1', '2024-01-15 17:41:01.663208', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (87, '127.0.0.1', '2024-01-15 17:41:01.674888', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (88, '127.0.0.1', '2024-01-15 17:41:06.232865', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (89, '127.0.0.1', '2024-01-15 17:41:17.575170', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1050');
INSERT INTO `b_op_log` VALUES (90, '127.0.0.1', '2024-01-15 17:41:18.946786', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (91, '127.0.0.1', '2024-01-15 17:41:34.857274', '/myapp/admin/user/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (92, '127.0.0.1', '2024-01-15 17:41:34.904252', '/myapp/admin/user/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (93, '127.0.0.1', '2024-01-15 17:41:41.116373', '/myapp/admin/user/update', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (94, '127.0.0.1', '2024-01-15 17:41:41.138356', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (95, '127.0.0.1', '2024-01-15 17:41:47.879986', '/myapp/admin/user/update', 'POST', NULL, '43');
INSERT INTO `b_op_log` VALUES (96, '127.0.0.1', '2024-01-15 17:41:47.922493', '/myapp/admin/user/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (97, '127.0.0.1', '2024-01-15 17:41:52.034216', '/myapp/admin/user/update', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (98, '127.0.0.1', '2024-01-15 17:41:52.057205', '/myapp/admin/user/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (99, '127.0.0.1', '2024-01-15 17:41:57.281769', '/myapp/admin/user/update', 'POST', NULL, '39');
INSERT INTO `b_op_log` VALUES (100, '127.0.0.1', '2024-01-15 17:41:57.317693', '/myapp/admin/user/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (101, '127.0.0.1', '2024-01-15 17:42:00.622872', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (102, '127.0.0.1', '2024-01-15 18:15:32.522426', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (103, '127.0.0.1', '2024-01-15 18:15:39.005865', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (104, '127.0.0.1', '2024-01-15 18:16:30.723541', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (105, '127.0.0.1', '2024-01-15 18:16:48.035628', '/myapp/admin/classification/create', 'POST', NULL, '23');
INSERT INTO `b_op_log` VALUES (106, '127.0.0.1', '2024-01-15 18:16:48.050599', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (107, '127.0.0.1', '2024-01-15 18:16:52.604538', '/myapp/admin/classification/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (108, '127.0.0.1', '2024-01-15 18:16:52.621047', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (109, '127.0.0.1', '2024-01-15 18:16:54.783505', '/myapp/admin/classification/delete', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (110, '127.0.0.1', '2024-01-15 18:16:54.819702', '/myapp/admin/classification/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (111, '127.0.0.1', '2024-01-15 18:16:59.725084', '/myapp/admin/classification/create', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (112, '127.0.0.1', '2024-01-15 18:16:59.753599', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (113, '127.0.0.1', '2024-01-15 18:17:02.492451', '/myapp/admin/classification/delete', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (114, '127.0.0.1', '2024-01-15 18:17:02.527441', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (115, '127.0.0.1', '2024-01-15 18:17:04.239980', '/myapp/admin/user/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (116, '127.0.0.1', '2024-01-15 18:17:05.040988', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (117, '127.0.0.1', '2024-01-15 18:17:08.234360', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (118, '127.0.0.1', '2024-01-15 18:17:08.236358', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (119, '127.0.0.1', '2024-01-15 18:17:08.238871', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (120, '127.0.0.1', '2024-01-15 18:17:25.739530', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (121, '127.0.0.1', '2024-01-15 18:17:25.754090', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (122, '127.0.0.1', '2024-01-15 18:17:25.763267', '/myapp/admin/tag/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (123, '127.0.0.1', '2024-01-15 18:18:50.629507', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (124, '127.0.0.1', '2024-01-15 18:18:50.631433', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (125, '127.0.0.1', '2024-01-15 18:18:50.633494', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (126, '127.0.0.1', '2024-01-15 18:19:32.610020', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (127, '127.0.0.1', '2024-01-15 18:19:32.612029', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (128, '127.0.0.1', '2024-01-15 18:19:32.627020', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (129, '127.0.0.1', '2024-01-15 18:20:00.256518', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (130, '127.0.0.1', '2024-01-15 18:20:00.258415', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (131, '127.0.0.1', '2024-01-15 18:20:00.273366', '/myapp/admin/tag/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (132, '127.0.0.1', '2024-01-15 18:20:12.406313', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (133, '127.0.0.1', '2024-01-15 18:20:12.828197', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (134, '127.0.0.1', '2024-01-15 18:20:12.828197', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (135, '127.0.0.1', '2024-01-15 18:20:12.830910', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (136, '127.0.0.1', '2024-01-15 18:20:32.868956', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (137, '127.0.0.1', '2024-01-15 18:20:32.869964', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (138, '127.0.0.1', '2024-01-15 18:20:32.885976', '/myapp/admin/thing/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (139, '127.0.0.1', '2024-01-15 18:21:02.972795', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (140, '127.0.0.1', '2024-01-15 18:21:02.989340', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (141, '127.0.0.1', '2024-01-15 18:21:02.991390', '/myapp/admin/classification/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (142, '127.0.0.1', '2024-01-15 18:23:44.444333', '/myapp/admin/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (143, '127.0.0.1', '2024-01-15 18:23:44.447875', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (144, '127.0.0.1', '2024-01-15 18:23:44.466232', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (145, '127.0.0.1', '2024-01-15 18:25:01.672795', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (146, '127.0.0.1', '2024-01-15 18:25:01.673787', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (147, '127.0.0.1', '2024-01-15 18:25:01.685796', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (148, '127.0.0.1', '2024-01-15 18:25:05.320781', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (149, '127.0.0.1', '2024-01-15 18:25:05.789779', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (150, '127.0.0.1', '2024-01-15 18:25:05.791322', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (151, '127.0.0.1', '2024-01-15 18:25:05.800704', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (152, '127.0.0.1', '2024-01-15 18:25:12.069960', '/myapp/admin/thing/update', 'POST', NULL, '14');
INSERT INTO `b_op_log` VALUES (153, '127.0.0.1', '2024-01-15 18:25:12.090959', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (154, '127.0.0.1', '2024-01-15 18:25:17.669030', '/myapp/admin/thing/update', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (155, '127.0.0.1', '2024-01-15 18:25:17.709768', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (156, '127.0.0.1', '2024-01-15 18:25:40.511575', '/myapp/admin/thing/create', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (157, '127.0.0.1', '2024-01-15 18:25:40.559586', '/myapp/admin/thing/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (158, '127.0.0.1', '2024-01-15 18:26:27.913966', '/myapp/admin/thing/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (159, '127.0.0.1', '2024-01-15 18:26:27.913966', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (160, '127.0.0.1', '2024-01-15 18:26:27.937945', '/myapp/admin/thing/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (161, '127.0.0.1', '2024-01-15 18:26:50.759189', '/myapp/admin/thing/create', 'POST', NULL, '32');
INSERT INTO `b_op_log` VALUES (162, '127.0.0.1', '2024-01-15 18:26:50.811714', '/myapp/admin/thing/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (163, '127.0.0.1', '2024-01-15 18:27:08.914672', '/myapp/admin/thing/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (164, '127.0.0.1', '2024-01-15 18:27:08.945374', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (165, '127.0.0.1', '2024-01-15 18:27:39.015383', '/myapp/admin/thing/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (166, '127.0.0.1', '2024-01-15 18:27:39.044728', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (167, '127.0.0.1', '2024-01-15 18:27:42.500967', '/myapp/admin/thing/delete', 'POST', NULL, '35');
INSERT INTO `b_op_log` VALUES (168, '127.0.0.1', '2024-01-15 18:27:42.531958', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (169, '127.0.0.1', '2024-01-15 18:27:46.765942', '/myapp/admin/thing/update', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (170, '127.0.0.1', '2024-01-15 18:27:46.806458', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (171, '127.0.0.1', '2024-01-15 18:27:58.534248', '/myapp/admin/thing/update', 'POST', NULL, '24');
INSERT INTO `b_op_log` VALUES (172, '127.0.0.1', '2024-01-15 18:27:58.565251', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (173, '127.0.0.1', '2024-01-15 18:28:23.081896', '/myapp/admin/thing/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (174, '127.0.0.1', '2024-01-15 18:28:23.135636', '/myapp/admin/thing/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (175, '127.0.0.1', '2024-01-15 18:28:26.793336', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (176, '127.0.0.1', '2024-01-15 18:28:27.528596', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (177, '127.0.0.1', '2024-01-15 18:28:27.528596', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (178, '127.0.0.1', '2024-01-15 18:28:27.536730', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (179, '127.0.0.1', '2024-01-15 18:28:33.792035', '/myapp/admin/thing/list', 'GET', NULL, '110');
INSERT INTO `b_op_log` VALUES (180, '127.0.0.1', '2024-01-15 18:28:34.701852', '/myapp/admin/thing/list', 'GET', NULL, '41');
INSERT INTO `b_op_log` VALUES (181, '127.0.0.1', '2024-01-15 18:29:14.805588', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (182, '127.0.0.1', '2024-01-15 18:29:15.898747', '/myapp/admin/thing/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (183, '127.0.0.1', '2024-01-15 18:29:18.431265', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (184, '127.0.0.1', '2024-01-15 18:29:19.194787', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (185, '127.0.0.1', '2024-01-15 18:29:19.196167', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (186, '127.0.0.1', '2024-01-15 18:29:19.199462', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (187, '127.0.0.1', '2024-01-15 18:29:33.937289', '/myapp/admin/thing/create', 'POST', NULL, '44');
INSERT INTO `b_op_log` VALUES (188, '127.0.0.1', '2024-01-15 18:29:33.968806', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (189, '127.0.0.1', '2024-01-15 18:29:36.343068', '/myapp/admin/thing/delete', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (190, '127.0.0.1', '2024-01-15 18:29:36.377076', '/myapp/admin/thing/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (191, '127.0.0.1', '2024-01-15 18:29:37.894170', '/myapp/admin/classification/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (192, '127.0.0.1', '2024-01-15 18:29:38.562930', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (193, '127.0.0.1', '2024-01-15 18:29:38.580771', '/myapp/admin/tag/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (194, '127.0.0.1', '2024-01-15 18:29:38.585771', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (195, '127.0.0.1', '2024-01-15 18:30:35.173550', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (196, '127.0.0.1', '2024-01-15 18:30:35.176079', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (197, '127.0.0.1', '2024-01-15 18:30:35.190288', '/myapp/admin/classification/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (198, '127.0.0.1', '2024-01-15 18:30:37.727935', '/myapp/admin/overview/count', 'GET', NULL, '174');
INSERT INTO `b_op_log` VALUES (199, '127.0.0.1', '2024-01-15 18:31:35.487758', '/myapp/admin/overview/count', 'GET', NULL, '64');
INSERT INTO `b_op_log` VALUES (200, '127.0.0.1', '2024-01-15 18:31:39.073208', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (201, '127.0.0.1', '2024-01-15 18:31:39.079211', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (202, '127.0.0.1', '2024-01-15 18:31:39.084209', '/myapp/admin/classification/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (203, '127.0.0.1', '2024-01-15 18:33:00.003867', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (204, '127.0.0.1', '2024-01-15 18:33:00.006859', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (205, '127.0.0.1', '2024-01-15 18:33:00.021905', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (206, '127.0.0.1', '2024-01-15 18:33:51.664826', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (207, '127.0.0.1', '2024-01-15 18:34:31.124159', '/myapp/admin/classification/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (208, '127.0.0.1', '2024-01-15 18:34:32.380390', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (209, '127.0.0.1', '2024-01-15 18:34:32.388373', '/myapp/admin/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (210, '127.0.0.1', '2024-01-15 18:34:32.403374', '/myapp/admin/thing/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (211, '127.0.0.1', '2024-01-15 18:34:33.760997', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (212, '127.0.0.1', '2024-01-15 18:34:34.474282', '/myapp/admin/classification/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (213, '127.0.0.1', '2024-01-15 18:34:34.477295', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (214, '127.0.0.1', '2024-01-15 18:34:34.479444', '/myapp/admin/classification/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (215, '127.0.0.1', '2024-01-15 18:35:41.096420', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (216, '127.0.0.1', '2024-01-15 18:35:41.099652', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (217, '127.0.0.1', '2024-01-15 18:35:41.107157', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (218, '127.0.0.1', '2024-01-15 18:36:19.469073', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (219, '127.0.0.1', '2024-01-15 18:36:19.470909', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (220, '127.0.0.1', '2024-01-15 18:36:19.479052', '/myapp/admin/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (221, '127.0.0.1', '2024-01-15 18:38:04.306260', '/myapp/admin/asset/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (222, '127.0.0.1', '2024-01-15 18:39:44.773592', '/myapp/admin/asset/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (223, '127.0.0.1', '2024-01-15 18:39:44.795566', '/myapp/admin/asset/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (224, '127.0.0.1', '2024-01-15 18:40:06.938098', '/myapp/admin/asset/create', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (225, '127.0.0.1', '2024-01-15 18:40:06.963097', '/myapp/admin/asset/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (226, '127.0.0.1', '2024-01-15 18:40:17.733531', '/myapp/admin/asset/create', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (227, '127.0.0.1', '2024-01-15 18:40:17.784738', '/myapp/admin/asset/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (228, '127.0.0.1', '2024-01-15 18:40:39.727877', '/myapp/admin/asset/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (229, '127.0.0.1', '2024-01-15 18:40:39.750879', '/myapp/admin/asset/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (230, '127.0.0.1', '2024-01-15 18:40:45.107475', '/myapp/admin/asset/create', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (231, '127.0.0.1', '2024-01-15 18:40:45.156692', '/myapp/admin/asset/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (232, '127.0.0.1', '2024-01-15 18:40:48.200081', '/myapp/admin/asset/update', 'POST', NULL, '46');
INSERT INTO `b_op_log` VALUES (233, '127.0.0.1', '2024-01-15 18:40:48.226636', '/myapp/admin/asset/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (234, '127.0.0.1', '2024-01-15 18:40:50.661740', '/myapp/admin/asset/delete', 'POST', NULL, '45');
INSERT INTO `b_op_log` VALUES (235, '127.0.0.1', '2024-01-15 18:40:50.706491', '/myapp/admin/asset/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (236, '127.0.0.1', '2024-01-15 18:40:55.836992', '/myapp/admin/asset/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (237, '127.0.0.1', '2024-01-15 18:40:55.858983', '/myapp/admin/asset/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (238, '127.0.0.1', '2024-01-15 18:40:59.051496', '/myapp/admin/asset/delete', 'POST', NULL, '19');
INSERT INTO `b_op_log` VALUES (239, '127.0.0.1', '2024-01-15 18:40:59.099922', '/myapp/admin/asset/list', 'GET', NULL, '29');
INSERT INTO `b_op_log` VALUES (240, '127.0.0.1', '2024-01-15 18:41:00.983201', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (241, '127.0.0.1', '2024-01-15 18:41:00.986204', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (242, '127.0.0.1', '2024-01-15 18:41:00.999201', '/myapp/admin/thing/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (243, '127.0.0.1', '2024-01-15 18:41:01.512688', '/myapp/admin/asset/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (244, '127.0.0.1', '2024-01-15 18:41:36.052288', '/myapp/admin/asset/create', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (245, '127.0.0.1', '2024-01-15 18:41:36.075275', '/myapp/admin/asset/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (246, '127.0.0.1', '2024-01-15 18:41:52.158477', '/myapp/admin/asset/create', 'POST', NULL, '36');
INSERT INTO `b_op_log` VALUES (247, '127.0.0.1', '2024-01-15 18:41:52.207473', '/myapp/admin/asset/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (248, '127.0.0.1', '2024-01-15 18:43:11.945614', '/myapp/admin/asset/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (249, '127.0.0.1', '2024-01-15 18:43:12.925645', '/myapp/admin/asset/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (250, '127.0.0.1', '2024-01-15 18:43:13.994715', '/myapp/admin/asset/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (251, '127.0.0.1', '2024-01-15 18:44:19.155074', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (252, '127.0.0.1', '2024-01-15 18:44:19.161072', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (253, '127.0.0.1', '2024-01-15 18:44:19.174072', '/myapp/admin/tag/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (254, '127.0.0.1', '2024-01-15 18:44:20.665997', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (255, '127.0.0.1', '2024-01-15 18:44:20.672006', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (256, '127.0.0.1', '2024-01-15 18:44:20.683609', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (257, '127.0.0.1', '2024-01-15 18:48:31.567126', '/myapp/admin/park/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (258, '127.0.0.1', '2024-01-15 18:48:31.575158', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (259, '127.0.0.1', '2024-01-15 18:48:31.576156', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (260, '127.0.0.1', '2024-01-15 18:48:34.709496', '/myapp/admin/asset/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (261, '127.0.0.1', '2024-01-15 18:48:35.170662', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (262, '127.0.0.1', '2024-01-15 18:48:35.173670', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (263, '127.0.0.1', '2024-01-15 18:48:35.195991', '/myapp/admin/classification/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (264, '127.0.0.1', '2024-01-15 18:49:04.803777', '/myapp/admin/park/create', 'POST', NULL, '27');
INSERT INTO `b_op_log` VALUES (265, '127.0.0.1', '2024-01-15 18:49:04.843768', '/myapp/admin/park/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (266, '127.0.0.1', '2024-01-15 18:50:03.208448', '/myapp/admin/asset/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (267, '127.0.0.1', '2024-01-15 18:50:03.682951', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (268, '127.0.0.1', '2024-01-15 18:50:03.685031', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (269, '127.0.0.1', '2024-01-15 18:50:03.688059', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (270, '127.0.0.1', '2024-01-15 18:50:26.130010', '/myapp/admin/park/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (271, '127.0.0.1', '2024-01-15 18:50:26.174699', '/myapp/admin/park/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (272, '127.0.0.1', '2024-01-15 18:50:42.835431', '/myapp/admin/park/create', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (273, '127.0.0.1', '2024-01-15 18:50:42.863979', '/myapp/admin/park/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (274, '127.0.0.1', '2024-01-15 18:50:58.929118', '/myapp/admin/park/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (275, '127.0.0.1', '2024-01-15 18:50:58.958129', '/myapp/admin/park/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (276, '127.0.0.1', '2024-01-15 18:51:13.658243', '/myapp/admin/park/create', 'POST', NULL, '25');
INSERT INTO `b_op_log` VALUES (277, '127.0.0.1', '2024-01-15 18:51:13.713884', '/myapp/admin/park/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (278, '127.0.0.1', '2024-01-15 18:51:31.305066', '/myapp/admin/park/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (279, '127.0.0.1', '2024-01-15 18:51:31.366029', '/myapp/admin/park/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (280, '127.0.0.1', '2024-01-15 18:52:01.100617', '/myapp/admin/park/create', 'POST', NULL, '20');
INSERT INTO `b_op_log` VALUES (281, '127.0.0.1', '2024-01-15 18:52:01.153960', '/myapp/admin/park/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (282, '127.0.0.1', '2024-01-15 18:52:06.055140', '/myapp/admin/park/update', 'POST', NULL, '12');
INSERT INTO `b_op_log` VALUES (283, '127.0.0.1', '2024-01-15 18:52:06.102806', '/myapp/admin/park/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (284, '127.0.0.1', '2024-01-15 18:52:09.616092', '/myapp/admin/park/update', 'POST', NULL, '40');
INSERT INTO `b_op_log` VALUES (285, '127.0.0.1', '2024-01-15 18:52:09.648362', '/myapp/admin/park/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (286, '127.0.0.1', '2024-01-15 18:52:18.502914', '/myapp/admin/park/create', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (287, '127.0.0.1', '2024-01-15 18:52:18.536681', '/myapp/admin/park/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (288, '127.0.0.1', '2024-01-15 18:52:21.098594', '/myapp/admin/park/delete', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (289, '127.0.0.1', '2024-01-15 18:52:21.148964', '/myapp/admin/park/list', 'GET', NULL, '33');
INSERT INTO `b_op_log` VALUES (290, '127.0.0.1', '2024-01-15 18:52:26.235524', '/myapp/admin/park/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (291, '127.0.0.1', '2024-01-15 18:52:33.245985', '/myapp/admin/asset/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (292, '127.0.0.1', '2024-01-15 18:52:36.934933', '/myapp/admin/asset/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (293, '127.0.0.1', '2024-01-15 18:52:39.009330', '/myapp/admin/park/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (294, '127.0.0.1', '2024-01-15 18:52:39.022231', '/myapp/admin/park/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (295, '127.0.0.1', '2024-01-15 18:52:39.033339', '/myapp/admin/park/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (296, '127.0.0.1', '2024-01-15 18:53:11.213933', '/myapp/admin/asset/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (297, '127.0.0.1', '2024-01-15 18:53:11.580842', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (298, '127.0.0.1', '2024-01-15 18:53:11.582841', '/myapp/admin/classification/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (299, '127.0.0.1', '2024-01-15 18:53:11.592894', '/myapp/admin/classification/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (300, '127.0.0.1', '2024-01-15 18:53:29.335644', '/myapp/admin/asset/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (301, '127.0.0.1', '2024-01-15 18:53:30.611191', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (302, '127.0.0.1', '2024-01-15 18:53:30.613192', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (303, '127.0.0.1', '2024-01-15 18:53:30.621705', '/myapp/admin/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (304, '127.0.0.1', '2024-01-15 18:53:31.304626', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (305, '127.0.0.1', '2024-01-15 18:53:31.309664', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (306, '127.0.0.1', '2024-01-15 18:53:31.310665', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (307, '127.0.0.1', '2024-01-15 18:54:40.744777', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (308, '127.0.0.1', '2024-01-15 18:54:40.745778', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (309, '127.0.0.1', '2024-01-15 18:54:40.752787', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (310, '127.0.0.1', '2024-01-15 18:54:43.558893', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (311, '127.0.0.1', '2024-01-15 18:54:43.559893', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (312, '127.0.0.1', '2024-01-15 18:54:43.568893', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (313, '127.0.0.1', '2024-01-15 18:54:44.174792', '/myapp/admin/asset/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (314, '127.0.0.1', '2024-01-15 18:55:24.817029', '/myapp/admin/repair/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (315, '127.0.0.1', '2024-01-15 18:56:06.522999', '/myapp/admin/repair/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (316, '127.0.0.1', '2024-01-15 18:56:49.729423', '/myapp/admin/repair/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (317, '127.0.0.1', '2024-01-15 18:57:18.507563', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (318, '127.0.0.1', '2024-01-15 18:57:18.509551', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (319, '127.0.0.1', '2024-01-15 18:57:18.529559', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (320, '127.0.0.1', '2024-01-15 18:57:20.250191', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (321, '127.0.0.1', '2024-01-15 18:57:20.251191', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (322, '127.0.0.1', '2024-01-15 18:57:20.256781', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (323, '127.0.0.1', '2024-01-15 18:57:51.223160', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (324, '127.0.0.1', '2024-01-15 18:57:51.223160', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (325, '127.0.0.1', '2024-01-15 18:57:51.224159', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (326, '127.0.0.1', '2024-01-15 18:59:19.376619', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (327, '127.0.0.1', '2024-01-15 18:59:19.378635', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (328, '127.0.0.1', '2024-01-15 18:59:19.380650', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (329, '127.0.0.1', '2024-01-15 18:59:19.997971', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (330, '127.0.0.1', '2024-01-15 18:59:20.001980', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (331, '127.0.0.1', '2024-01-15 18:59:20.006971', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (332, '127.0.0.1', '2024-01-15 18:59:57.717669', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (333, '127.0.0.1', '2024-01-15 18:59:57.719669', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (334, '127.0.0.1', '2024-01-15 18:59:57.721667', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (335, '127.0.0.1', '2024-01-15 19:00:30.865892', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (336, '127.0.0.1', '2024-01-15 19:00:30.866893', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (337, '127.0.0.1', '2024-01-15 19:00:30.869893', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (338, '127.0.0.1', '2024-01-15 19:00:32.522765', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (339, '127.0.0.1', '2024-01-15 19:00:32.523764', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (340, '127.0.0.1', '2024-01-15 19:00:32.524764', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (341, '127.0.0.1', '2024-01-15 19:00:47.348457', '/myapp/admin/repair/create', 'POST', NULL, '41');
INSERT INTO `b_op_log` VALUES (342, '127.0.0.1', '2024-01-15 19:00:47.372529', '/myapp/admin/repair/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (343, '127.0.0.1', '2024-01-15 19:01:11.084938', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (344, '127.0.0.1', '2024-01-15 19:01:11.087938', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (345, '127.0.0.1', '2024-01-15 19:01:11.093948', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (346, '127.0.0.1', '2024-01-15 19:01:11.543025', '/myapp/admin/repair/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (347, '127.0.0.1', '2024-01-15 19:01:11.548987', '/myapp/admin/repair/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (348, '127.0.0.1', '2024-01-15 19:01:11.564517', '/myapp/admin/repair/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (349, '127.0.0.1', '2024-01-15 19:01:21.177660', '/myapp/admin/repair/update', 'POST', NULL, '15');
INSERT INTO `b_op_log` VALUES (350, '127.0.0.1', '2024-01-15 19:01:21.218047', '/myapp/admin/repair/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (351, '127.0.0.1', '2024-01-15 19:01:43.146793', '/myapp/admin/repair/create', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (352, '127.0.0.1', '2024-01-15 19:01:43.200808', '/myapp/admin/repair/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (353, '127.0.0.1', '2024-01-15 19:02:04.988072', '/myapp/admin/repair/create', 'POST', NULL, '31');
INSERT INTO `b_op_log` VALUES (354, '127.0.0.1', '2024-01-15 19:02:05.039047', '/myapp/admin/repair/list', 'GET', NULL, '28');
INSERT INTO `b_op_log` VALUES (355, '127.0.0.1', '2024-01-15 19:02:34.137091', '/myapp/admin/repair/create', 'POST', NULL, '33');
INSERT INTO `b_op_log` VALUES (356, '127.0.0.1', '2024-01-15 19:02:34.180120', '/myapp/admin/repair/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (357, '127.0.0.1', '2024-01-15 19:02:37.474690', '/myapp/admin/repair/update', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (358, '127.0.0.1', '2024-01-15 19:02:37.519315', '/myapp/admin/repair/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (359, '127.0.0.1', '2024-01-15 19:02:42.555986', '/myapp/admin/repair/create', 'POST', NULL, '38');
INSERT INTO `b_op_log` VALUES (360, '127.0.0.1', '2024-01-15 19:02:42.607512', '/myapp/admin/repair/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (361, '127.0.0.1', '2024-01-15 19:02:45.161400', '/myapp/admin/repair/delete', 'POST', NULL, '42');
INSERT INTO `b_op_log` VALUES (362, '127.0.0.1', '2024-01-15 19:02:45.198393', '/myapp/admin/repair/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (363, '127.0.0.1', '2024-01-15 19:02:49.510710', '/myapp/admin/repair/update', 'POST', NULL, '10');
INSERT INTO `b_op_log` VALUES (364, '127.0.0.1', '2024-01-15 19:02:49.564722', '/myapp/admin/repair/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (365, '127.0.0.1', '2024-01-15 19:03:03.057789', '/myapp/admin/park/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (366, '127.0.0.1', '2024-01-15 19:03:03.061778', '/myapp/admin/park/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (367, '127.0.0.1', '2024-01-15 19:03:03.065778', '/myapp/admin/park/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (368, '127.0.0.1', '2024-01-15 19:03:03.509580', '/myapp/admin/repair/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (369, '127.0.0.1', '2024-01-15 19:03:03.523573', '/myapp/admin/repair/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (370, '127.0.0.1', '2024-01-15 19:03:03.528573', '/myapp/admin/repair/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (371, '127.0.0.1', '2024-01-15 19:03:10.599708', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (372, '127.0.0.1', '2024-01-15 19:03:12.028641', '/myapp/admin/repair/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (373, '127.0.0.1', '2024-01-15 19:03:12.041625', '/myapp/admin/repair/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (374, '127.0.0.1', '2024-01-15 19:03:12.042625', '/myapp/admin/repair/list', 'GET', NULL, '21');
INSERT INTO `b_op_log` VALUES (375, '127.0.0.1', '2024-01-15 19:03:17.318130', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (376, '127.0.0.1', '2024-01-15 19:03:17.320336', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (377, '127.0.0.1', '2024-01-15 19:03:17.324728', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (378, '127.0.0.1', '2024-01-15 19:03:34.200614', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (379, '127.0.0.1', '2024-01-15 19:03:34.202057', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (380, '127.0.0.1', '2024-01-15 19:03:34.206429', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (381, '127.0.0.1', '2024-01-15 19:03:38.525069', '/myapp/admin/adminLogin', 'POST', NULL, '47');
INSERT INTO `b_op_log` VALUES (382, '127.0.0.1', '2024-01-15 19:03:38.613417', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (383, '127.0.0.1', '2024-01-15 19:03:38.616902', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (384, '127.0.0.1', '2024-01-15 19:03:38.617923', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (385, '127.0.0.1', '2024-01-15 19:03:50.486017', '/myapp/admin/thing/list', 'GET', NULL, '24');
INSERT INTO `b_op_log` VALUES (386, '127.0.0.1', '2024-01-15 19:03:52.314135', '/myapp/admin/thing/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (387, '127.0.0.1', '2024-01-15 19:03:53.478483', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (388, '127.0.0.1', '2024-01-15 19:03:53.483483', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (389, '127.0.0.1', '2024-01-15 19:03:53.488483', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (390, '127.0.0.1', '2024-01-15 19:03:54.850002', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (391, '127.0.0.1', '2024-01-15 19:03:54.853947', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (392, '127.0.0.1', '2024-01-15 19:03:54.868969', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (393, '127.0.0.1', '2024-01-15 19:03:55.461221', '/myapp/admin/asset/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (394, '127.0.0.1', '2024-01-15 19:03:56.053374', '/myapp/admin/classification/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (395, '127.0.0.1', '2024-01-15 19:03:56.818480', '/myapp/admin/user/list', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (396, '127.0.0.1', '2024-01-15 19:03:58.678871', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1035');
INSERT INTO `b_op_log` VALUES (397, '127.0.0.1', '2024-01-15 19:04:05.865891', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (398, '127.0.0.1', '2024-01-15 19:04:05.868892', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (399, '127.0.0.1', '2024-01-15 19:04:05.872892', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (400, '127.0.0.1', '2024-01-15 19:04:42.596335', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (401, '127.0.0.1', '2024-01-15 19:04:42.601332', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (402, '127.0.0.1', '2024-01-15 19:04:42.610332', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (403, '127.0.0.1', '2024-01-15 19:04:43.500886', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (404, '127.0.0.1', '2024-01-15 19:04:43.501885', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (405, '127.0.0.1', '2024-01-15 19:04:43.510886', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (406, '127.0.0.1', '2024-01-15 19:05:09.641906', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (407, '127.0.0.1', '2024-01-15 19:05:09.645437', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (408, '127.0.0.1', '2024-01-15 19:05:09.660669', '/myapp/admin/tag/list', 'GET', NULL, '23');
INSERT INTO `b_op_log` VALUES (409, '127.0.0.1', '2024-01-15 19:05:11.357360', '/myapp/admin/repair/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (410, '127.0.0.1', '2024-01-15 19:05:11.359361', '/myapp/admin/repair/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (411, '127.0.0.1', '2024-01-15 19:05:11.375563', '/myapp/admin/repair/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (412, '127.0.0.1', '2024-01-15 19:05:11.924461', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (413, '127.0.0.1', '2024-01-15 19:05:11.926462', '/myapp/admin/thing/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (414, '127.0.0.1', '2024-01-15 19:05:11.930834', '/myapp/admin/thing/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (415, '127.0.0.1', '2024-01-15 19:05:13.864842', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (416, '127.0.0.1', '2024-01-15 19:05:13.866842', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (417, '127.0.0.1', '2024-01-15 19:05:13.872843', '/myapp/admin/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (418, '127.0.0.1', '2024-01-15 19:05:15.125723', '/myapp/admin/repair/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (419, '127.0.0.1', '2024-01-15 19:05:15.126724', '/myapp/admin/repair/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (420, '127.0.0.1', '2024-01-15 19:05:15.130724', '/myapp/admin/repair/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (421, '127.0.0.1', '2024-01-15 19:05:16.082308', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (422, '127.0.0.1', '2024-01-15 19:05:16.083313', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (423, '127.0.0.1', '2024-01-15 19:05:16.090312', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (424, '127.0.0.1', '2024-01-15 19:05:16.696162', '/myapp/admin/repair/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (425, '127.0.0.1', '2024-01-15 19:05:16.698669', '/myapp/admin/repair/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (426, '127.0.0.1', '2024-01-15 19:05:16.701674', '/myapp/admin/repair/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (427, '127.0.0.1', '2024-01-15 19:05:17.090385', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (428, '127.0.0.1', '2024-01-15 19:05:17.095385', '/myapp/admin/thing/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (429, '127.0.0.1', '2024-01-15 19:05:17.102896', '/myapp/admin/thing/list', 'GET', NULL, '15');
INSERT INTO `b_op_log` VALUES (430, '127.0.0.1', '2024-01-15 19:05:18.442437', '/myapp/admin/user/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (431, '127.0.0.1', '2024-01-15 19:05:27.315563', '/myapp/admin/adminLogin', 'POST', NULL, '34');
INSERT INTO `b_op_log` VALUES (432, '127.0.0.1', '2024-01-15 19:05:27.417024', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (433, '127.0.0.1', '2024-01-15 19:05:27.419176', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (434, '127.0.0.1', '2024-01-15 19:05:27.439530', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (435, '127.0.0.1', '2024-01-15 19:05:28.517047', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (436, '127.0.0.1', '2024-01-15 19:05:28.521316', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (437, '127.0.0.1', '2024-01-15 19:05:28.534932', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (438, '127.0.0.1', '2024-01-15 19:05:28.995275', '/myapp/admin/tag/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (439, '127.0.0.1', '2024-01-15 19:05:28.997276', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (440, '127.0.0.1', '2024-01-15 19:05:29.010280', '/myapp/admin/tag/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (441, '127.0.0.1', '2024-01-15 19:05:31.051457', '/myapp/admin/thing/update', 'POST', NULL, '26');
INSERT INTO `b_op_log` VALUES (442, '127.0.0.1', '2024-01-15 19:05:33.916437', '/myapp/admin/thing/delete', 'POST', NULL, '13');
INSERT INTO `b_op_log` VALUES (443, '127.0.0.1', '2024-01-15 19:05:35.238637', '/myapp/admin/repair/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (444, '127.0.0.1', '2024-01-15 19:05:35.240736', '/myapp/admin/repair/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (445, '127.0.0.1', '2024-01-15 19:05:35.244740', '/myapp/admin/repair/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (446, '127.0.0.1', '2024-01-15 19:05:36.943345', '/myapp/admin/repair/delete', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (447, '127.0.0.1', '2024-01-15 19:05:37.967966', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (448, '127.0.0.1', '2024-01-15 19:05:37.973360', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (449, '127.0.0.1', '2024-01-15 19:05:37.990946', '/myapp/admin/tag/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (450, '127.0.0.1', '2024-01-15 19:05:40.330098', '/myapp/admin/park/update', 'POST', NULL, '22');
INSERT INTO `b_op_log` VALUES (451, '127.0.0.1', '2024-01-15 19:05:41.864870', '/myapp/admin/asset/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (452, '127.0.0.1', '2024-01-15 19:05:43.585914', '/myapp/admin/asset/update', 'POST', NULL, '21');
INSERT INTO `b_op_log` VALUES (453, '127.0.0.1', '2024-01-15 19:05:45.034777', '/myapp/admin/classification/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (454, '127.0.0.1', '2024-01-15 19:05:46.832680', '/myapp/admin/user/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (455, '127.0.0.1', '2024-01-15 19:05:52.268041', '/myapp/admin/user/delete', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (456, '127.0.0.1', '2024-01-15 19:05:55.981268', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (457, '127.0.0.1', '2024-01-15 19:05:57.432950', '/myapp/admin/user/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (458, '127.0.0.1', '2024-01-15 19:06:00.160367', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (459, '127.0.0.1', '2024-01-15 19:06:00.162365', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (460, '127.0.0.1', '2024-01-15 19:06:00.169365', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (461, '127.0.0.1', '2024-01-15 19:06:06.230301', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (462, '127.0.0.1', '2024-01-15 19:06:06.235300', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (463, '127.0.0.1', '2024-01-15 19:06:06.254304', '/myapp/admin/classification/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (464, '127.0.0.1', '2024-01-15 19:06:06.758804', '/myapp/admin/classification/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (465, '127.0.0.1', '2024-01-15 19:06:06.762973', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (466, '127.0.0.1', '2024-01-15 19:06:06.772698', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (467, '127.0.0.1', '2024-01-15 19:06:17.217612', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (468, '127.0.0.1', '2024-01-15 19:06:17.218612', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (469, '127.0.0.1', '2024-01-15 19:06:17.222612', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (470, '127.0.0.1', '2024-01-15 19:06:18.056891', '/myapp/admin/thing/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (471, '127.0.0.1', '2024-01-15 19:06:18.058910', '/myapp/admin/thing/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (472, '127.0.0.1', '2024-01-15 19:06:18.064103', '/myapp/admin/thing/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (473, '127.0.0.1', '2024-01-15 19:07:33.207918', '/myapp/admin/adminLogin', 'POST', NULL, '29');
INSERT INTO `b_op_log` VALUES (474, '127.0.0.1', '2024-01-15 19:07:33.287490', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (475, '127.0.0.1', '2024-01-15 19:07:33.290490', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (476, '127.0.0.1', '2024-01-15 19:07:33.294489', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (477, '127.0.0.1', '2024-01-15 19:11:25.759705', '/myapp/admin/adminLogin', 'POST', NULL, '30');
INSERT INTO `b_op_log` VALUES (478, '127.0.0.1', '2024-01-15 19:11:25.827931', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (479, '127.0.0.1', '2024-01-15 19:11:25.829930', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (480, '127.0.0.1', '2024-01-15 19:11:25.831930', '/myapp/admin/tag/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (481, '127.0.0.1', '2024-01-15 19:13:37.764564', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (482, '127.0.0.1', '2024-01-15 19:13:37.767565', '/myapp/admin/classification/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (483, '127.0.0.1', '2024-01-15 19:13:37.785790', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (484, '127.0.0.1', '2024-01-15 19:13:38.596683', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (485, '127.0.0.1', '2024-01-15 19:13:38.613887', '/myapp/admin/tag/list', 'GET', NULL, '26');
INSERT INTO `b_op_log` VALUES (486, '127.0.0.1', '2024-01-15 19:13:38.614909', '/myapp/admin/tag/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (487, '127.0.0.1', '2024-01-15 19:13:39.333704', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (488, '127.0.0.1', '2024-01-15 19:13:39.337013', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (489, '127.0.0.1', '2024-01-15 19:13:39.343009', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (490, '127.0.0.1', '2024-01-15 19:13:46.724512', '/myapp/admin/tag/list', 'GET', NULL, '2');
INSERT INTO `b_op_log` VALUES (491, '127.0.0.1', '2024-01-15 19:13:46.727022', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (492, '127.0.0.1', '2024-01-15 19:13:46.734632', '/myapp/admin/tag/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (493, '127.0.0.1', '2024-01-15 19:13:47.442716', '/myapp/admin/tag/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (494, '127.0.0.1', '2024-01-15 19:13:47.449386', '/myapp/admin/tag/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (495, '127.0.0.1', '2024-01-15 19:13:47.457587', '/myapp/admin/tag/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (496, '127.0.0.1', '2024-01-15 19:13:48.265919', '/myapp/admin/asset/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (497, '127.0.0.1', '2024-01-15 19:13:48.731819', '/myapp/admin/classification/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (498, '127.0.0.1', '2024-01-15 19:13:49.259229', '/myapp/admin/user/list', 'GET', NULL, '20');
INSERT INTO `b_op_log` VALUES (499, '127.0.0.1', '2024-01-15 19:13:51.224460', '/myapp/admin/overview/sysInfo', 'GET', NULL, '1030');
INSERT INTO `b_op_log` VALUES (500, '127.0.0.1', '2024-01-15 19:13:53.379660', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (501, '127.0.0.1', '2024-01-15 19:13:53.384185', '/myapp/admin/thing/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (502, '127.0.0.1', '2024-01-15 19:13:53.390180', '/myapp/admin/thing/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (503, '127.0.0.1', '2024-01-15 19:13:54.053331', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (504, '127.0.0.1', '2024-01-15 19:13:54.054882', '/myapp/admin/classification/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (505, '127.0.0.1', '2024-01-15 19:13:54.058022', '/myapp/admin/classification/list', 'GET', NULL, '9');
INSERT INTO `b_op_log` VALUES (506, '127.0.0.1', '2024-01-15 19:13:54.585158', '/myapp/admin/thing/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (507, '127.0.0.1', '2024-01-15 19:13:54.592574', '/myapp/admin/thing/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (508, '127.0.0.1', '2024-01-15 19:13:54.599739', '/myapp/admin/thing/list', 'GET', NULL, '17');
INSERT INTO `b_op_log` VALUES (509, '127.0.0.1', '2024-01-15 19:13:55.142497', '/myapp/admin/asset/list', 'GET', NULL, '22');
INSERT INTO `b_op_log` VALUES (510, '127.0.0.1', '2024-01-15 19:13:55.697500', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (511, '127.0.0.1', '2024-01-15 19:13:56.305444', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (512, '127.0.0.1', '2024-01-15 19:13:56.308074', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (513, '127.0.0.1', '2024-01-15 19:13:56.320311', '/myapp/admin/tag/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (514, '127.0.0.1', '2024-01-15 19:13:56.686072', '/myapp/admin/classification/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (515, '127.0.0.1', '2024-01-15 19:13:56.687952', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (516, '127.0.0.1', '2024-01-15 19:13:56.706898', '/myapp/admin/classification/list', 'GET', NULL, '25');
INSERT INTO `b_op_log` VALUES (517, '127.0.0.1', '2024-01-15 19:14:34.860049', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (518, '127.0.0.1', '2024-01-15 19:14:34.865619', '/myapp/admin/tag/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (519, '127.0.0.1', '2024-01-15 19:14:34.869621', '/myapp/admin/tag/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (520, '127.0.0.1', '2024-01-15 19:24:00.226796', '/myapp/admin/adminLogin', 'POST', NULL, '18');
INSERT INTO `b_op_log` VALUES (521, '127.0.0.1', '2024-01-15 19:24:00.663247', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (522, '127.0.0.1', '2024-01-15 19:24:00.666458', '/myapp/admin/tag/list', 'GET', NULL, '6');
INSERT INTO `b_op_log` VALUES (523, '127.0.0.1', '2024-01-15 19:24:00.667481', '/myapp/admin/tag/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (524, '127.0.0.1', '2024-01-15 19:24:02.990507', '/myapp/admin/repair/list', 'GET', NULL, '1');
INSERT INTO `b_op_log` VALUES (525, '127.0.0.1', '2024-01-15 19:24:02.993015', '/myapp/admin/repair/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (526, '127.0.0.1', '2024-01-15 19:24:03.002552', '/myapp/admin/repair/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (527, '127.0.0.1', '2024-01-15 19:24:03.438522', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (528, '127.0.0.1', '2024-01-15 19:24:03.440522', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (529, '127.0.0.1', '2024-01-15 19:24:03.445012', '/myapp/admin/tag/list', 'GET', NULL, '8');
INSERT INTO `b_op_log` VALUES (530, '127.0.0.1', '2024-01-15 19:24:04.190514', '/myapp/admin/classification/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (531, '127.0.0.1', '2024-01-15 19:24:04.196522', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (532, '127.0.0.1', '2024-01-15 19:24:04.202678', '/myapp/admin/classification/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (533, '127.0.0.1', '2024-01-15 19:24:04.761581', '/myapp/admin/park/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (534, '127.0.0.1', '2024-01-15 19:24:04.763581', '/myapp/admin/park/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (535, '127.0.0.1', '2024-01-15 19:24:04.770714', '/myapp/admin/park/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (536, '127.0.0.1', '2024-01-15 19:24:05.279155', '/myapp/admin/classification/list', 'GET', NULL, '4');
INSERT INTO `b_op_log` VALUES (537, '127.0.0.1', '2024-01-15 19:24:05.281696', '/myapp/admin/classification/list', 'GET', NULL, '7');
INSERT INTO `b_op_log` VALUES (538, '127.0.0.1', '2024-01-15 19:24:05.294418', '/myapp/admin/classification/list', 'GET', NULL, '19');
INSERT INTO `b_op_log` VALUES (539, '127.0.0.1', '2024-01-15 19:24:07.637994', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (540, '127.0.0.1', '2024-01-15 19:24:07.638994', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (541, '127.0.0.1', '2024-01-15 19:24:07.647165', '/myapp/admin/tag/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (542, '127.0.0.1', '2024-01-15 19:24:08.017998', '/myapp/admin/tag/list', 'GET', NULL, '3');
INSERT INTO `b_op_log` VALUES (543, '127.0.0.1', '2024-01-15 19:24:08.018985', '/myapp/admin/tag/list', 'GET', NULL, '5');
INSERT INTO `b_op_log` VALUES (544, '127.0.0.1', '2024-01-15 19:24:08.026257', '/myapp/admin/tag/list', 'GET', NULL, '11');

-- ----------------------------
-- Table structure for b_park
-- ----------------------------
DROP TABLE IF EXISTS `b_park`;
CREATE TABLE `b_park`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `park_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `car_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_park_classification_id_aa908173_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_park_classification_id_aa908173_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_park
-- ----------------------------
INSERT INTO `b_park` VALUES (1, '刘德华', 'A2012', '鲁A29801', 3, '2024-01-15 18:49:04.798767');
INSERT INTO `b_park` VALUES (2, '周杰伦', 'A2013', '京B10998', 4, '2024-01-15 18:50:26.116095');
INSERT INTO `b_park` VALUES (3, '王小兵', 'A2014', '京B10222', 1, '2024-01-15 18:50:42.822764');
INSERT INTO `b_park` VALUES (4, '刘文文', 'A2015', '京B10888', 2, '2024-01-15 18:50:58.915526');
INSERT INTO `b_park` VALUES (5, '李连杰', 'A2016', '京B10666', 3, '2024-01-15 18:51:13.641933');
INSERT INTO `b_park` VALUES (6, '成龙', 'A2017', '京B10616', 4, '2024-01-15 18:51:31.301076');
INSERT INTO `b_park` VALUES (7, '张芳芳', 'A2018', '京B10111', 3, '2024-01-15 18:52:01.087179');

-- ----------------------------
-- Table structure for b_repair
-- ----------------------------
DROP TABLE IF EXISTS `b_repair`;
CREATE TABLE `b_repair`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_repair_classification_id_4b483860_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_repair_classification_id_4b483860_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_repair
-- ----------------------------
INSERT INTO `b_repair` VALUES (1, '刘德华', '18号楼202', '空调坏了，抓紧来修', '0', '2024-01-15 19:00:47.334672', 3);
INSERT INTO `b_repair` VALUES (2, '刘玲玲', '12号楼202', '门锁坏了', '0', '2024-01-15 19:01:43.132674', 1);
INSERT INTO `b_repair` VALUES (3, '王静', '12号楼222', '门口有野狗', '1', '2024-01-15 19:02:04.974049', 3);
INSERT INTO `b_repair` VALUES (4, '李冰冰', '12号楼203', '家中停水了', '0', '2024-01-15 19:02:34.133091', 4);

-- ----------------------------
-- Table structure for b_tag
-- ----------------------------
DROP TABLE IF EXISTS `b_tag`;
CREATE TABLE `b_tag`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_tag
-- ----------------------------

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(130) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (2, '0', '2024-01-15 10:19:57.719573', 1, 'adbdds', '刘先生', '12333333333', '20号楼901');
INSERT INTO `b_thing` VALUES (4, '0', '2024-01-15 18:26:50.747583', 2, 'dddd', '刘德华', '13222221111', '8号楼102');
INSERT INTO `b_thing` VALUES (5, '0', '2024-01-15 18:27:08.901723', 1, '1112', '周杰伦', '18977776666', '18号楼202');
INSERT INTO `b_thing` VALUES (6, '0', '2024-01-15 18:27:39.004432', 3, '单身', '周迅', '18766663333', '12号楼202');
INSERT INTO `b_thing` VALUES (7, '0', '2024-01-15 18:28:23.069509', 4, '', '王晓宁', '17699993333', '17号楼202');

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', '211', NULL, NULL, NULL, '2024-01-14 11:09:32.856832', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', '123', 'addfa', NULL, NULL, '2024-01-14 11:10:42.363134', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (3, 'test', '098f6bcd4621d373cade4e832627b4f6', '3', '0', 'adddf', '', NULL, NULL, NULL, NULL, '2024-01-15 17:41:34.845309', 0, NULL, 0, NULL, NULL);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (19, 'myapp', 'address');
INSERT INTO `django_content_type` VALUES (20, 'myapp', 'asset');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'banner');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (21, 'myapp', 'park');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (22, 'myapp', 'repair');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'tag');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-01-14 11:02:33.721059');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-01-14 11:02:34.013901');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-01-14 11:02:34.077932');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-01-14 11:02:34.084922');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-14 11:02:34.092472');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-01-14 11:02:34.158606');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-01-14 11:02:34.200068');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-01-14 11:02:34.247836');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-01-14 11:02:34.254836');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-01-14 11:02:34.290469');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-01-14 11:02:34.293460');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-01-14 11:02:34.300460');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-01-14 11:02:34.342932');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-01-14 11:02:34.385904');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-01-14 11:02:34.434666');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-01-14 11:02:34.445159');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-01-14 11:02:34.489279');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-01-14 11:02:35.322469');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_auto_20230526_2255', '2024-01-14 11:02:35.418327');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20230527_1411', '2024-01-14 11:02:35.524893');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_thing_raw', '2024-01-14 11:02:35.583434');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20230808_1739', '2024-01-14 11:02:36.099839');
INSERT INTO `django_migrations` VALUES (23, 'myapp', '0006_thing_remark', '2024-01-14 11:02:36.134864');
INSERT INTO `django_migrations` VALUES (24, 'myapp', '0007_auto_20230809_1840', '2024-01-14 11:02:36.449148');
INSERT INTO `django_migrations` VALUES (25, 'myapp', '0008_auto_20230810_1836', '2024-01-14 11:02:36.628378');
INSERT INTO `django_migrations` VALUES (26, 'sessions', '0001_initial', '2024-01-14 11:02:36.674316');
INSERT INTO `django_migrations` VALUES (27, 'myapp', '0009_auto_20240115_1002', '2024-01-15 10:03:20.457570');
INSERT INTO `django_migrations` VALUES (28, 'myapp', '0010_park_create_time', '2024-01-15 10:31:55.043450');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
