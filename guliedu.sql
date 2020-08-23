/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : guliedu

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 23/08/2020 22:14:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------
INSERT INTO `auth_group` VALUES (1, 'tf');

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

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
INSERT INTO `auth_permission` VALUES (13, 'Can add content type', 4, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (14, 'Can change content type', 4, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (15, 'Can delete content type', 4, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (16, 'Can view content type', 4, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (17, 'Can add session', 5, 'add_session');
INSERT INTO `auth_permission` VALUES (18, 'Can change session', 5, 'change_session');
INSERT INTO `auth_permission` VALUES (19, 'Can delete session', 5, 'delete_session');
INSERT INTO `auth_permission` VALUES (20, 'Can view session', 5, 'view_session');
INSERT INTO `auth_permission` VALUES (21, 'Can add 轮播图信息', 6, 'add_bannerinfo');
INSERT INTO `auth_permission` VALUES (22, 'Can change 轮播图信息', 6, 'change_bannerinfo');
INSERT INTO `auth_permission` VALUES (23, 'Can delete 轮播图信息', 6, 'delete_bannerinfo');
INSERT INTO `auth_permission` VALUES (24, 'Can view 轮播图信息', 6, 'view_bannerinfo');
INSERT INTO `auth_permission` VALUES (25, 'Can add 邮箱验证码信息', 7, 'add_emailverifycode');
INSERT INTO `auth_permission` VALUES (26, 'Can change 邮箱验证码信息', 7, 'change_emailverifycode');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 邮箱验证码信息', 7, 'delete_emailverifycode');
INSERT INTO `auth_permission` VALUES (28, 'Can view 邮箱验证码信息', 7, 'view_emailverifycode');
INSERT INTO `auth_permission` VALUES (29, 'Can add 用户信息', 8, 'add_userprofile');
INSERT INTO `auth_permission` VALUES (30, 'Can change 用户信息', 8, 'change_userprofile');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 用户信息', 8, 'delete_userprofile');
INSERT INTO `auth_permission` VALUES (32, 'Can view 用户信息', 8, 'view_userprofile');
INSERT INTO `auth_permission` VALUES (33, 'Can add 课程信息', 9, 'add_courseinfo');
INSERT INTO `auth_permission` VALUES (34, 'Can change 课程信息', 9, 'change_courseinfo');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 课程信息', 9, 'delete_courseinfo');
INSERT INTO `auth_permission` VALUES (36, 'Can view 课程信息', 9, 'view_courseinfo');
INSERT INTO `auth_permission` VALUES (37, 'Can add 章节信息', 10, 'add_lessoninfo');
INSERT INTO `auth_permission` VALUES (38, 'Can change 章节信息', 10, 'change_lessoninfo');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 章节信息', 10, 'delete_lessoninfo');
INSERT INTO `auth_permission` VALUES (40, 'Can view 章节信息', 10, 'view_lessoninfo');
INSERT INTO `auth_permission` VALUES (41, 'Can add 视频信息', 11, 'add_videoinfo');
INSERT INTO `auth_permission` VALUES (42, 'Can change 视频信息', 11, 'change_videoinfo');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 视频信息', 11, 'delete_videoinfo');
INSERT INTO `auth_permission` VALUES (44, 'Can view 视频信息', 11, 'view_videoinfo');
INSERT INTO `auth_permission` VALUES (45, 'Can add 资源信息', 12, 'add_sourceinfo');
INSERT INTO `auth_permission` VALUES (46, 'Can change 资源信息', 12, 'change_sourceinfo');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 资源信息', 12, 'delete_sourceinfo');
INSERT INTO `auth_permission` VALUES (48, 'Can view 资源信息', 12, 'view_sourceinfo');
INSERT INTO `auth_permission` VALUES (49, 'Can add 咨询信息', 13, 'add_userask');
INSERT INTO `auth_permission` VALUES (50, 'Can change 咨询信息', 13, 'change_userask');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 咨询信息', 13, 'delete_userask');
INSERT INTO `auth_permission` VALUES (52, 'Can view 咨询信息', 13, 'view_userask');
INSERT INTO `auth_permission` VALUES (53, 'Can add 用户评论课程信息', 14, 'add_usercomment');
INSERT INTO `auth_permission` VALUES (54, 'Can change 用户评论课程信息', 14, 'change_usercomment');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 用户评论课程信息', 14, 'delete_usercomment');
INSERT INTO `auth_permission` VALUES (56, 'Can view 用户评论课程信息', 14, 'view_usercomment');
INSERT INTO `auth_permission` VALUES (57, 'Can add 用户学习课程信息', 15, 'add_usercourse');
INSERT INTO `auth_permission` VALUES (58, 'Can change 用户学习课程信息', 15, 'change_usercourse');
INSERT INTO `auth_permission` VALUES (59, 'Can delete 用户学习课程信息', 15, 'delete_usercourse');
INSERT INTO `auth_permission` VALUES (60, 'Can view 用户学习课程信息', 15, 'view_usercourse');
INSERT INTO `auth_permission` VALUES (61, 'Can add 收藏信息', 16, 'add_userlove');
INSERT INTO `auth_permission` VALUES (62, 'Can change 收藏信息', 16, 'change_userlove');
INSERT INTO `auth_permission` VALUES (63, 'Can delete 收藏信息', 16, 'delete_userlove');
INSERT INTO `auth_permission` VALUES (64, 'Can view 收藏信息', 16, 'view_userlove');
INSERT INTO `auth_permission` VALUES (65, 'Can add 用户消息信息', 17, 'add_usermessage');
INSERT INTO `auth_permission` VALUES (66, 'Can change 用户消息信息', 17, 'change_usermessage');
INSERT INTO `auth_permission` VALUES (67, 'Can delete 用户消息信息', 17, 'delete_usermessage');
INSERT INTO `auth_permission` VALUES (68, 'Can view 用户消息信息', 17, 'view_usermessage');
INSERT INTO `auth_permission` VALUES (69, 'Can add 城市信息', 18, 'add_cityinfo');
INSERT INTO `auth_permission` VALUES (70, 'Can change 城市信息', 18, 'change_cityinfo');
INSERT INTO `auth_permission` VALUES (71, 'Can delete 城市信息', 18, 'delete_cityinfo');
INSERT INTO `auth_permission` VALUES (72, 'Can view 城市信息', 18, 'view_cityinfo');
INSERT INTO `auth_permission` VALUES (73, 'Can add 机构信息', 19, 'add_orginfo');
INSERT INTO `auth_permission` VALUES (74, 'Can change 机构信息', 19, 'change_orginfo');
INSERT INTO `auth_permission` VALUES (75, 'Can delete 机构信息', 19, 'delete_orginfo');
INSERT INTO `auth_permission` VALUES (76, 'Can view 机构信息', 19, 'view_orginfo');
INSERT INTO `auth_permission` VALUES (77, 'Can add 讲师信息', 20, 'add_teacherinfo');
INSERT INTO `auth_permission` VALUES (78, 'Can change 讲师信息', 20, 'change_teacherinfo');
INSERT INTO `auth_permission` VALUES (79, 'Can delete 讲师信息', 20, 'delete_teacherinfo');
INSERT INTO `auth_permission` VALUES (80, 'Can view 讲师信息', 20, 'view_teacherinfo');
INSERT INTO `auth_permission` VALUES (81, 'Can add Bookmark', 21, 'add_bookmark');
INSERT INTO `auth_permission` VALUES (82, 'Can change Bookmark', 21, 'change_bookmark');
INSERT INTO `auth_permission` VALUES (83, 'Can delete Bookmark', 21, 'delete_bookmark');
INSERT INTO `auth_permission` VALUES (84, 'Can view Bookmark', 21, 'view_bookmark');
INSERT INTO `auth_permission` VALUES (85, 'Can add User Setting', 22, 'add_usersettings');
INSERT INTO `auth_permission` VALUES (86, 'Can change User Setting', 22, 'change_usersettings');
INSERT INTO `auth_permission` VALUES (87, 'Can delete User Setting', 22, 'delete_usersettings');
INSERT INTO `auth_permission` VALUES (88, 'Can view User Setting', 22, 'view_usersettings');
INSERT INTO `auth_permission` VALUES (89, 'Can add User Widget', 23, 'add_userwidget');
INSERT INTO `auth_permission` VALUES (90, 'Can change User Widget', 23, 'change_userwidget');
INSERT INTO `auth_permission` VALUES (91, 'Can delete User Widget', 23, 'delete_userwidget');
INSERT INTO `auth_permission` VALUES (92, 'Can view User Widget', 23, 'view_userwidget');
INSERT INTO `auth_permission` VALUES (93, 'Can add log entry', 24, 'add_log');
INSERT INTO `auth_permission` VALUES (94, 'Can change log entry', 24, 'change_log');
INSERT INTO `auth_permission` VALUES (95, 'Can delete log entry', 24, 'delete_log');
INSERT INTO `auth_permission` VALUES (96, 'Can view log entry', 24, 'view_log');
INSERT INTO `auth_permission` VALUES (97, 'Can add revision', 25, 'add_revision');
INSERT INTO `auth_permission` VALUES (98, 'Can change revision', 25, 'change_revision');
INSERT INTO `auth_permission` VALUES (99, 'Can delete revision', 25, 'delete_revision');
INSERT INTO `auth_permission` VALUES (100, 'Can view revision', 25, 'view_revision');
INSERT INTO `auth_permission` VALUES (101, 'Can add version', 26, 'add_version');
INSERT INTO `auth_permission` VALUES (102, 'Can change version', 26, 'change_version');
INSERT INTO `auth_permission` VALUES (103, 'Can delete version', 26, 'delete_version');
INSERT INTO `auth_permission` VALUES (104, 'Can view version', 26, 'view_version');

-- ----------------------------
-- Table structure for courses_courseinfo
-- ----------------------------
DROP TABLE IF EXISTS `courses_courseinfo`;
CREATE TABLE `courses_courseinfo`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `study_time` int(0) NOT NULL,
  `study_num` int(0) NOT NULL,
  `level` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `love_num` int(0) NOT NULL,
  `click_num` int(0) NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_notice` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_need` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `teacher_tell` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `org_info_id` int(0) NOT NULL,
  `teacher_info_id` int(0) NOT NULL,
  `is_banner` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_courseinfo_org_info_id_3b730884_fk_orgs_orginfo_id`(`org_info_id`) USING BTREE,
  INDEX `courses_courseinfo_teacher_info_id_4ea78175_fk_orgs_teac`(`teacher_info_id`) USING BTREE,
  CONSTRAINT `courses_courseinfo_org_info_id_3b730884_fk_orgs_orginfo_id` FOREIGN KEY (`org_info_id`) REFERENCES `orgs_orginfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `courses_courseinfo_teacher_info_id_4ea78175_fk_orgs_teac` FOREIGN KEY (`teacher_info_id`) REFERENCES `orgs_teacherinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_courseinfo
-- ----------------------------
INSERT INTO `courses_courseinfo` VALUES (1, 'course/M8.jpg', '前端三大宝', 0, 0, 'cj', 0, 0, '前端三大宝贝学习', '前端三大宝贝学习，前端三大宝贝学习，前端三大宝贝学习，前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习前端三大宝贝学习。', 'qd', '看美女好好学习', '必须好好看美女', '美不美呀？', '2020-08-22 15:56:00.000000', 1, 1, 0);
INSERT INTO `courses_courseinfo` VALUES (2, 'course/M12.jpg', 'MYSQL教程', 0, 0, 'cj', 0, 0, 'MYSQL教程简介', 'MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程MYSQL教程详情，MYSQL教程。', 'qd', 'MYSQL公告', 'MYSQL须知', '迪丽热巴', '2020-08-23 16:10:00.000000', 1, 2, 0);
INSERT INTO `courses_courseinfo` VALUES (3, 'course/M1.jpg', 'PYTHON3教程', 0, 0, 'cj', 0, 0, 'PYTHON3教程简介', 'PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情，PYTHON3教程详情PYTHON3教程详情，PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情，PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情PYTHON3教程详情/PYTHON3教程详情。', 'qd', '好看不？', '好好看美女哈', '大幂幂', '2020-08-23 16:14:00.000000', 1, 4, 0);
INSERT INTO `courses_courseinfo` VALUES (4, 'course/M2.jpg', 'LINUX教程', 0, 0, 'cj', 0, 0, 'LINUX教程', 'LINUX教程LINUX教程LINUX教程LINUX教程LINUX教程LINUX教程LINUX教程LINUX教程LINUX教程LINUX教程你', 'hd', 'LINUX教程LINUX教程', 'LINUX教程LINUX教程LINUX教程', '热依扎', '2020-08-23 20:31:00.000000', 1, 3, 0);
INSERT INTO `courses_courseinfo` VALUES (5, 'course/M5_SbWKL86.jpg', 'JAVA', 0, 0, 'cj', 0, 0, 'JAVAJAVA', 'JAVAJAVAJAVAJAVAJAVAJAVAJAVAJAVA', 'hd', 'JAVA东方饭店', '士大夫似的 房贷首付JAVA', '大幂幂', '2020-08-23 20:32:00.000000', 5, 2, 0);
INSERT INTO `courses_courseinfo` VALUES (6, 'course/M8_WnfRQj3.jpg', 'HTML', 0, 0, 'cj', 0, 0, 'HTMLHTML', 'HTMLHTMLHTMLSDDFSDF犯得上犯得上发士大夫士大夫士大夫速度', 'qd', 'HTML士大夫第三方', 'HTML电风扇士大夫', '迪丽热巴', '2020-08-23 20:33:00.000000', 4, 4, 0);
INSERT INTO `courses_courseinfo` VALUES (7, 'course/M4.jpg', 'SQLSERVER', 0, 0, 'cj', 0, 0, 'SQLSERVER', 'SQLSERVERSQLSERVER士大夫士大夫士大夫似的', 'hd', '看美女好好学习', '必须好好看美女士大夫士大夫', '大幂幂', '2020-08-23 20:34:00.000000', 4, 4, 1);
INSERT INTO `courses_courseinfo` VALUES (8, 'course/M6.jpg', 'VUE教程', 0, 0, 'cj', 0, 0, 'VUE教程地方', 'VUE教程打发手动阀手动阀手动阀手动阀手动阀撒旦士大夫大师傅士大夫这些都是水水水水水水大师傅似的。', 'qd', '看美女好好学习地方', '好好看美女哈打发打发打发', '迪丽热巴', '2020-08-23 20:35:00.000000', 4, 2, 1);
INSERT INTO `courses_courseinfo` VALUES (9, 'course/M7_wfSSApO.jpg', 'Redis教程', 0, 0, 'cj', 0, 0, 'Redis教程第三方速度', 'Redis教程大师傅但是是的方法烦烦烦烦烦烦烦烦烦烦烦烦烦烦烦地方烦烦烦烦烦烦烦烦烦的是。', 'hd', 'Redis教程地方', 'Redis教程好好学习', '热依扎', '2020-08-23 20:36:00.000000', 4, 3, 1);
INSERT INTO `courses_courseinfo` VALUES (10, 'course/M9_J3g9wgZ.jpg', 'docker教程', 0, 0, 'cj', 0, 0, 'docker教程', 'docker教程docker教程docker教程docker教程docker教程docker教程docker教程docker教程docker教程docker教程docker教程docker教程docker教程docker教程', 'hd', '看美女好好学习', '必须好好看美女', '大幂幂', '2020-08-23 20:37:00.000000', 4, 4, 1);
INSERT INTO `courses_courseinfo` VALUES (11, 'course/M3.jpg', '大数据教程', 0, 0, 'cj', 0, 0, '大数据教程', '大数据教程大数据教程大数据教程大数据教程大数据教程大数据教程大数据教程大数据教程大数据教程大数据教程大数据教程大数据教程大数据教程大数据教程', 'hd', '大数据教程', '必须好好看美女大数据教程', '迪丽热巴', '2020-08-23 20:38:00.000000', 5, 2, 1);

-- ----------------------------
-- Table structure for courses_lessoninfo
-- ----------------------------
DROP TABLE IF EXISTS `courses_lessoninfo`;
CREATE TABLE `courses_lessoninfo`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_info_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_lessoninfo_course_info_id_1f939fb7_fk_courses_c`(`course_info_id`) USING BTREE,
  CONSTRAINT `courses_lessoninfo_course_info_id_1f939fb7_fk_courses_c` FOREIGN KEY (`course_info_id`) REFERENCES `courses_courseinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_lessoninfo
-- ----------------------------
INSERT INTO `courses_lessoninfo` VALUES (1, '第一章：认识一个美女', '2020-08-22 15:58:00.000000', 1);
INSERT INTO `courses_lessoninfo` VALUES (2, '第二章：开始和美女沟通', '2020-08-22 15:58:00.000000', 1);
INSERT INTO `courses_lessoninfo` VALUES (3, '第三章：和美女逛街', '2020-08-22 15:58:00.000000', 1);

-- ----------------------------
-- Table structure for courses_sourceinfo
-- ----------------------------
DROP TABLE IF EXISTS `courses_sourceinfo`;
CREATE TABLE `courses_sourceinfo`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `down_load` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `course_info_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_sourceinfo_course_info_id_72fceca1_fk_courses_c`(`course_info_id`) USING BTREE,
  CONSTRAINT `courses_sourceinfo_course_info_id_72fceca1_fk_courses_c` FOREIGN KEY (`course_info_id`) REFERENCES `courses_courseinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_sourceinfo
-- ----------------------------
INSERT INTO `courses_sourceinfo` VALUES (1, '开发流程', 'source/python网络编程.docx', '2020-08-22 16:01:00.000000', 1);

-- ----------------------------
-- Table structure for courses_videoinfo
-- ----------------------------
DROP TABLE IF EXISTS `courses_videoinfo`;
CREATE TABLE `courses_videoinfo`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `study_time` int(0) NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `lesson_info_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `courses_videoinfo_lesson_info_id_d23561eb_fk_courses_l`(`lesson_info_id`) USING BTREE,
  CONSTRAINT `courses_videoinfo_lesson_info_id_d23561eb_fk_courses_l` FOREIGN KEY (`lesson_info_id`) REFERENCES `courses_lessoninfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses_videoinfo
-- ----------------------------
INSERT INTO `courses_videoinfo` VALUES (1, '01、hello html', 10, 'http://www.atguigu.com', '2020-08-22 15:59:00.000000', 1);
INSERT INTO `courses_videoinfo` VALUES (2, '02、实现一个网页', 15, 'http://www.atguigu.com', '2020-08-22 15:59:00.000000', 1);
INSERT INTO `courses_videoinfo` VALUES (3, '03、上传图片', 12, 'http://www.atguigu.com', '2020-08-22 16:00:00.000000', 1);
INSERT INTO `courses_videoinfo` VALUES (4, '01、美女1', 15, 'http://www.atguigu.com', '2020-08-22 16:00:00.000000', 2);
INSERT INTO `courses_videoinfo` VALUES (5, '01、第三章美女', 22, 'http://www.atguigu.com', '2020-08-22 16:00:00.000000', 3);

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (9, 'courses', 'courseinfo');
INSERT INTO `django_content_type` VALUES (10, 'courses', 'lessoninfo');
INSERT INTO `django_content_type` VALUES (12, 'courses', 'sourceinfo');
INSERT INTO `django_content_type` VALUES (11, 'courses', 'videoinfo');
INSERT INTO `django_content_type` VALUES (13, 'operations', 'userask');
INSERT INTO `django_content_type` VALUES (14, 'operations', 'usercomment');
INSERT INTO `django_content_type` VALUES (15, 'operations', 'usercourse');
INSERT INTO `django_content_type` VALUES (16, 'operations', 'userlove');
INSERT INTO `django_content_type` VALUES (17, 'operations', 'usermessage');
INSERT INTO `django_content_type` VALUES (18, 'orgs', 'cityinfo');
INSERT INTO `django_content_type` VALUES (19, 'orgs', 'orginfo');
INSERT INTO `django_content_type` VALUES (20, 'orgs', 'teacherinfo');
INSERT INTO `django_content_type` VALUES (25, 'reversion', 'revision');
INSERT INTO `django_content_type` VALUES (26, 'reversion', 'version');
INSERT INTO `django_content_type` VALUES (5, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (6, 'users', 'bannerinfo');
INSERT INTO `django_content_type` VALUES (7, 'users', 'emailverifycode');
INSERT INTO `django_content_type` VALUES (8, 'users', 'userprofile');
INSERT INTO `django_content_type` VALUES (21, 'xadmin', 'bookmark');
INSERT INTO `django_content_type` VALUES (24, 'xadmin', 'log');
INSERT INTO `django_content_type` VALUES (22, 'xadmin', 'usersettings');
INSERT INTO `django_content_type` VALUES (23, 'xadmin', 'userwidget');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2020-08-02 15:54:02.883463');
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0002_remove_content_type_name', '2020-08-02 15:54:11.400724');
INSERT INTO `django_migrations` VALUES (3, 'auth', '0001_initial', '2020-08-02 15:54:18.036527');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0002_alter_permission_name_max_length', '2020-08-02 15:54:52.596452');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0003_alter_user_email_max_length', '2020-08-02 15:54:52.836327');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0004_alter_user_username_opts', '2020-08-02 15:54:53.222953');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0005_alter_user_last_login_null', '2020-08-02 15:54:53.661472');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0006_require_contenttypes_0002', '2020-08-02 15:54:53.957055');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0007_alter_validators_add_error_messages', '2020-08-02 15:54:54.668203');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0008_alter_user_username_max_length', '2020-08-02 15:54:55.095592');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0009_alter_user_last_name_max_length', '2020-08-02 15:54:55.579943');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0010_alter_group_name_max_length', '2020-08-02 15:55:03.717389');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0011_update_proxy_permissions', '2020-08-02 15:55:04.150495');
INSERT INTO `django_migrations` VALUES (14, 'users', '0001_initial', '2020-08-02 15:55:21.314312');
INSERT INTO `django_migrations` VALUES (15, 'admin', '0001_initial', '2020-08-02 15:55:58.665168');
INSERT INTO `django_migrations` VALUES (16, 'admin', '0002_logentry_remove_auto_add', '2020-08-02 15:56:13.910518');
INSERT INTO `django_migrations` VALUES (17, 'admin', '0003_logentry_add_action_flag_choices', '2020-08-02 15:56:14.487108');
INSERT INTO `django_migrations` VALUES (18, 'orgs', '0001_initial', '2020-08-02 15:56:21.359698');
INSERT INTO `django_migrations` VALUES (19, 'courses', '0001_initial', '2020-08-02 15:56:45.628354');
INSERT INTO `django_migrations` VALUES (20, 'operations', '0001_initial', '2020-08-02 15:57:33.180446');
INSERT INTO `django_migrations` VALUES (21, 'operations', '0002_auto_20200802_1553', '2020-08-02 15:58:15.416957');
INSERT INTO `django_migrations` VALUES (22, 'sessions', '0001_initial', '2020-08-02 15:58:22.114196');
INSERT INTO `django_migrations` VALUES (23, 'courses', '0002_auto_20200822_0956', '2020-08-22 09:57:10.748295');
INSERT INTO `django_migrations` VALUES (24, 'users', '0002_auto_20200822_0956', '2020-08-22 09:57:11.537099');
INSERT INTO `django_migrations` VALUES (25, 'reversion', '0001_squashed_0004_auto_20160611_1202', '2020-08-22 10:19:53.650118');
INSERT INTO `django_migrations` VALUES (26, 'xadmin', '0001_initial', '2020-08-22 10:20:20.092449');
INSERT INTO `django_migrations` VALUES (27, 'xadmin', '0002_log', '2020-08-22 10:20:46.195746');
INSERT INTO `django_migrations` VALUES (28, 'xadmin', '0003_auto_20160715_0100', '2020-08-22 10:21:10.490022');
INSERT INTO `django_migrations` VALUES (29, 'orgs', '0002_auto_20200822_1304', '2020-08-22 13:04:27.832524');
INSERT INTO `django_migrations` VALUES (30, 'courses', '0003_courseinfo_is_banner', '2020-08-23 20:30:33.574779');

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
INSERT INTO `django_session` VALUES ('7axr9lxsngxr0wgoix7wgoyospfjarcx', 'YTNkZmNjYzcwYjUwZmE3NzI4YmNlMDA4ODYxMDA3NTJlYThmOTBlMjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZmIwZDRiN2YwZTUxNDhhZjYzM2Q1YzUzMzcwYWMyZTFhMWJiYjQ0IiwiTElTVF9RVUVSWSI6W1siY291cnNlcyIsImNvdXJzZWluZm8iXSwiIl19', '2020-09-06 20:39:24.865829');
INSERT INTO `django_session` VALUES ('7cn8dbwjvugpo8zjscor5tqaus4kn7ia', 'NWExOTk1NDZkYmI0YjcxMGFiYjU2MTM0ODE0NTMzODM3NWNmNDQyNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZmIwZDRiN2YwZTUxNDhhZjYzM2Q1YzUzMzcwYWMyZTFhMWJiYjQ0IiwiTElTVF9RVUVSWSI6W1sib3JncyIsIm9yZ2luZm8iXSwiIl19', '2020-09-05 23:02:18.180188');
INSERT INTO `django_session` VALUES ('ffg1jtse9qejyeux6paqj5psh41m2lzh', 'ZTBmMjRhNTUwMTlhYTE0ZTI0ZWEwYWJlZjc5YWU1MGFkNWZiZjEzZjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkZTQwZmY2MjU1MjRiMzhlNTM1OTIzNWJiZGU2ZGZlMGE3NTg0NzFmIiwiTElTVF9RVUVSWSI6W1sib3JncyIsIm9yZ2luZm8iXSwiIl19', '2020-09-05 22:35:13.174607');

-- ----------------------------
-- Table structure for operations_userask
-- ----------------------------
DROP TABLE IF EXISTS `operations_userask`;
CREATE TABLE `operations_userask`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operations_usercomment
-- ----------------------------
DROP TABLE IF EXISTS `operations_usercomment`;
CREATE TABLE `operations_usercomment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `comment_content` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `comment_course_id` int(0) NOT NULL,
  `comment_man_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operations_usercomme_comment_course_id_39dc5cdf_fk_courses_c`(`comment_course_id`) USING BTREE,
  INDEX `operations_usercomme_comment_man_id_c4c79f25_fk_users_use`(`comment_man_id`) USING BTREE,
  CONSTRAINT `operations_usercomme_comment_course_id_39dc5cdf_fk_courses_c` FOREIGN KEY (`comment_course_id`) REFERENCES `courses_courseinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operations_usercomme_comment_man_id_c4c79f25_fk_users_use` FOREIGN KEY (`comment_man_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operations_usercourse
-- ----------------------------
DROP TABLE IF EXISTS `operations_usercourse`;
CREATE TABLE `operations_usercourse`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `add_time` datetime(6) NOT NULL,
  `study_course_id` int(0) NOT NULL,
  `study_man_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `operations_usercourse_study_man_id_study_course_id_ca233d28_uniq`(`study_man_id`, `study_course_id`) USING BTREE,
  INDEX `operations_usercours_study_course_id_ad6771e9_fk_courses_c`(`study_course_id`) USING BTREE,
  CONSTRAINT `operations_usercours_study_course_id_ad6771e9_fk_courses_c` FOREIGN KEY (`study_course_id`) REFERENCES `courses_courseinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `operations_usercours_study_man_id_a1251afb_fk_users_use` FOREIGN KEY (`study_man_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for operations_userlove
-- ----------------------------
DROP TABLE IF EXISTS `operations_userlove`;
CREATE TABLE `operations_userlove`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `love_id` int(0) NOT NULL,
  `love_type` int(0) NOT NULL,
  `love_status` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `love_man_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `operations_userlove_love_man_id_7fb97ad4_fk_users_userprofile_id`(`love_man_id`) USING BTREE,
  CONSTRAINT `operations_userlove_love_man_id_7fb97ad4_fk_users_userprofile_id` FOREIGN KEY (`love_man_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of operations_userlove
-- ----------------------------
INSERT INTO `operations_userlove` VALUES (1, 1, 1, 1, '2020-08-23 17:53:31.585987', 1);

-- ----------------------------
-- Table structure for operations_usermessage
-- ----------------------------
DROP TABLE IF EXISTS `operations_usermessage`;
CREATE TABLE `operations_usermessage`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `message_man` int(0) NOT NULL,
  `message_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message_status` tinyint(1) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orgs_cityinfo
-- ----------------------------
DROP TABLE IF EXISTS `orgs_cityinfo`;
CREATE TABLE `orgs_cityinfo`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orgs_cityinfo
-- ----------------------------
INSERT INTO `orgs_cityinfo` VALUES (1, '北京', '2020-08-22 12:58:00.000000');
INSERT INTO `orgs_cityinfo` VALUES (2, '上海', '2020-08-22 12:58:00.000000');
INSERT INTO `orgs_cityinfo` VALUES (3, '深圳', '2020-08-22 12:58:00.000000');
INSERT INTO `orgs_cityinfo` VALUES (4, '重庆', '2020-08-22 12:58:00.000000');
INSERT INTO `orgs_cityinfo` VALUES (5, '成都', '2020-08-22 12:58:00.000000');
INSERT INTO `orgs_cityinfo` VALUES (6, '武汉', '2020-08-22 12:59:00.000000');
INSERT INTO `orgs_cityinfo` VALUES (7, '杭州', '2020-08-22 12:59:00.000000');
INSERT INTO `orgs_cityinfo` VALUES (8, '广州', '2020-08-22 22:33:00.000000');

-- ----------------------------
-- Table structure for orgs_orginfo
-- ----------------------------
DROP TABLE IF EXISTS `orgs_orginfo`;
CREATE TABLE `orgs_orginfo`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_num` int(0) NOT NULL,
  `study_num` int(0) NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `love_num` int(0) NOT NULL,
  `click_num` int(0) NOT NULL,
  `category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `cityinfo_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `orgs_orginfo_cityinfo_id_b30bafbf_fk_orgs_cityinfo_id`(`cityinfo_id`) USING BTREE,
  CONSTRAINT `orgs_orginfo_cityinfo_id_b30bafbf_fk_orgs_cityinfo_id` FOREIGN KEY (`cityinfo_id`) REFERENCES `orgs_cityinfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orgs_orginfo
-- ----------------------------
INSERT INTO `orgs_orginfo` VALUES (1, 'org/M9.jpg', '清华大学', 0, 0, '北京海淀', '清华大学是全国重点大学，欢迎大家报考。哈哈哈。', '清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。清华大学是全国重点大学，欢迎大家报考。哈哈哈。', 0, 0, 'gx', '2020-08-22 13:07:00.000000', 1);
INSERT INTO `orgs_orginfo` VALUES (2, 'org/M11_tCVVwp5.jpg', '北京大学', 0, 0, '北京海淀北京大学', '北京大学真好啊', '北京大学真好呀呀呀，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好呀呀呀，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好呀呀呀，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好呀呀呀，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好呀呀呀，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫，北京大学真好啊地方士大夫士大夫。', 0, 0, 'gx', '2020-08-22 22:33:00.000000', 1);
INSERT INTO `orgs_orginfo` VALUES (3, 'org/M12.jpg', '北京航天航空大学', 0, 0, '北京海淀北京航天航空大学', '北京航天航空大学简介', '北京航天航空大学简介，北京航天航空大学简介，北京航天航空大学简介多福多寿电风扇犯得上。', 0, 0, 'gx', '2020-08-22 23:25:00.000000', 1);
INSERT INTO `orgs_orginfo` VALUES (4, 'org/M8.jpg', '北京电影学院', 0, 0, '北京海淀北京电影学院', '北京电影学院简介', '北京电影学院简介的事发生的地方士大夫但是似的发射点随风倒，士大夫似的大师傅士大夫士大夫似的发射点似的方发。', 0, 0, 'gx', '2020-08-22 23:26:00.000000', 1);
INSERT INTO `orgs_orginfo` VALUES (5, 'org/M7.jpg', '北京戏曲学院', 0, 0, '北京丰台北京戏曲学院', '北京戏曲学院简介', '北京戏曲学院详情，北京戏曲学院详情，北京戏曲学院详情，北京戏曲学院详情，北京戏曲学院详情，北京戏曲学院详情，北京戏曲学院详情，北京戏曲学院详情，北京戏曲学院详情。', 0, 0, 'gx', '2020-08-22 23:27:00.000000', 1);
INSERT INTO `orgs_orginfo` VALUES (6, 'org/M1.jpg', '清华同方', 0, 0, '北京海淀清华同方', '清华同方简介', '清华同方机构详情。', 0, 0, 'pxjg', '2020-08-22 23:31:00.000000', 1);
INSERT INTO `orgs_orginfo` VALUES (7, 'org/M2.jpg', '清华紫光', 0, 0, '北京海淀清华紫光', '清华紫光简介', '清华紫光详情。', 0, 0, 'pxjg', '2020-08-22 23:32:00.000000', 1);
INSERT INTO `orgs_orginfo` VALUES (8, 'org/M3.jpg', '新东方', 0, 0, '北京房山', '新东方简介', '新东方详情', 0, 0, 'pxjg', '2020-08-22 23:33:00.000000', 1);
INSERT INTO `orgs_orginfo` VALUES (9, 'org/M4.jpg', '上硅谷', 0, 0, '北京丰台', '上硅谷简介', '上硅谷详情。', 0, 0, 'pxjg', '2020-08-22 23:33:00.000000', 1);
INSERT INTO `orgs_orginfo` VALUES (10, 'org/M5.jpg', '黑马程序员', 0, 0, '黑马程序员', '黑马程序员简介', '黑马程序员详情。', 0, 0, 'pxjg', '2020-08-22 23:34:00.000000', 1);
INSERT INTO `orgs_orginfo` VALUES (11, 'org/M6_SWaMuWc.jpg', '马哥教育', 0, 0, '北京朝阳', '马哥教育简介', '马哥教育详情。', 0, 0, 'pxjg', '2020-08-22 23:35:00.000000', 2);
INSERT INTO `orgs_orginfo` VALUES (12, 'org/M13.jpg', '蚊子工作室', 0, 0, '北京房山', '蚊子工作室简介', '蚊子工作室详情', 0, 0, 'gr', '2020-08-23 00:02:00.000000', 1);

-- ----------------------------
-- Table structure for orgs_teacherinfo
-- ----------------------------
DROP TABLE IF EXISTS `orgs_teacherinfo`;
CREATE TABLE `orgs_teacherinfo`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_year` int(0) NOT NULL,
  `work_position` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `work_style` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(0) NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `love_num` int(0) NOT NULL,
  `click_num` int(0) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  `work_company_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `orgs_teacherinfo_work_company_id_b897a136_fk_orgs_orginfo_id`(`work_company_id`) USING BTREE,
  CONSTRAINT `orgs_teacherinfo_work_company_id_b897a136_fk_orgs_orginfo_id` FOREIGN KEY (`work_company_id`) REFERENCES `orgs_orginfo` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orgs_teacherinfo
-- ----------------------------
INSERT INTO `orgs_teacherinfo` VALUES (1, 'teacher/M6.jpg', '韩顺平', 10, '高级讲师', '牛逼的厉害', 40, 'boy', 0, 0, '2020-08-22 13:09:00.000000', 1);
INSERT INTO `orgs_teacherinfo` VALUES (2, 'teacher/M4.jpg', '迪丽热巴', 3, '演员', '漂亮演技好', 30, 'girl', 0, 0, '2020-08-23 16:12:00.000000', 4);
INSERT INTO `orgs_teacherinfo` VALUES (3, 'teacher/M2_Mp8FVXu.jpg', '热依扎', 3, '新疆演员', '非常漂亮', 30, 'girl', 0, 0, '2020-08-23 16:13:00.000000', 1);
INSERT INTO `orgs_teacherinfo` VALUES (4, 'teacher/M1_DZ6Mk6N.jpg', '杨幂', 3, '老板演员', '好看又有戏拍', 35, 'girl', 0, 0, '2020-08-23 16:13:00.000000', 1);

-- ----------------------------
-- Table structure for reversion_revision
-- ----------------------------
DROP TABLE IF EXISTS `reversion_revision`;
CREATE TABLE `reversion_revision`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) NOT NULL,
  `comment` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `reversion_revision_user_id_17095f45_fk_users_userprofile_id`(`user_id`) USING BTREE,
  INDEX `reversion_revision_date_created_96f7c20c`(`date_created`) USING BTREE,
  CONSTRAINT `reversion_revision_user_id_17095f45_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reversion_version
-- ----------------------------
DROP TABLE IF EXISTS `reversion_version`;
CREATE TABLE `reversion_version`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `object_id` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `serialized_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `object_repr` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `revision_id` int(0) NOT NULL,
  `db` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `reversion_version_db_content_type_id_objec_b2c54f65_uniq`(`db`, `content_type_id`, `object_id`, `revision_id`) USING BTREE,
  INDEX `reversion_version_content_type_id_7d0ff25c_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id`(`revision_id`) USING BTREE,
  CONSTRAINT `reversion_version_content_type_id_7d0ff25c_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `reversion_version_revision_id_af9f6a9d_fk_reversion_revision_id` FOREIGN KEY (`revision_id`) REFERENCES `reversion_revision` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_bannerinfo
-- ----------------------------
DROP TABLE IF EXISTS `users_bannerinfo`;
CREATE TABLE `users_bannerinfo`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_bannerinfo
-- ----------------------------
INSERT INTO `users_bannerinfo` VALUES (1, 'banner/M11.jpg', 'http://www.atguigu.com', '2020-08-23 20:24:00.000000');
INSERT INTO `users_bannerinfo` VALUES (2, 'banner/M12.jpg', 'http://www.atguigu.com', '2020-08-23 20:24:00.000000');
INSERT INTO `users_bannerinfo` VALUES (3, 'banner/M7.jpg', 'http://www.atguigu.com', '2020-08-23 20:24:00.000000');
INSERT INTO `users_bannerinfo` VALUES (4, 'banner/M8.jpg', 'http://www.atguigu.com', '2020-08-23 20:24:00.000000');
INSERT INTO `users_bannerinfo` VALUES (5, 'banner/M9.jpg', 'http://www.atguigu.com', '2020-08-23 20:24:00.000000');
INSERT INTO `users_bannerinfo` VALUES (6, 'banner/M3.jpg', 'http://www.atguigu.com', '2020-08-23 20:25:00.000000');

-- ----------------------------
-- Table structure for users_emailverifycode
-- ----------------------------
DROP TABLE IF EXISTS `users_emailverifycode`;
CREATE TABLE `users_emailverifycode`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_type` int(0) NOT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for users_userprofile
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile`;
CREATE TABLE `users_userprofile`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `nick_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `birthday` datetime(6) DEFAULT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `add_time` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile
-- ----------------------------
INSERT INTO `users_userprofile` VALUES (1, 'pbkdf2_sha256$150000$axz1t730OUlC$f+EDKqcvhidqOFkxqZ/t0ODLutkqFcuL3XigJ/Tju10=', '2020-08-23 16:06:56.065946', 1, 'admin', '', '', '692383247@qq.com', 1, 1, '2020-08-22 10:18:16.176844', '', NULL, NULL, 'girl', NULL, NULL, '2020-08-22 10:18:16.176844');
INSERT INTO `users_userprofile` VALUES (2, 'pbkdf2_sha256$150000$ZGFalI7RM3CO$/u7IVrXVvlebLukPfKjhWqiBUzRCnSkmUXmqrGqHMSU=', '2020-08-22 21:00:47.328644', 0, 'tfedu', '', '', 'tfedu@qq.com', 1, 1, '2020-08-22 20:57:00.000000', '', '同方', NULL, 'girl', '北京海淀', NULL, '2020-08-22 20:57:00.000000');

-- ----------------------------
-- Table structure for users_userprofile_groups
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_groups`;
CREATE TABLE `users_userprofile_groups`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(0) NOT NULL,
  `group_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_groups_userprofile_id_group_id_823cf2fc_uniq`(`userprofile_id`, `group_id`) USING BTREE,
  INDEX `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `users_userprofile_gr_userprofile_id_a4496a80_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_groups_group_id_3de53dbf_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile_groups
-- ----------------------------
INSERT INTO `users_userprofile_groups` VALUES (1, 2, 1);

-- ----------------------------
-- Table structure for users_userprofile_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `users_userprofile_user_permissions`;
CREATE TABLE `users_userprofile_user_permissions`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(0) NOT NULL,
  `permission_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_userprofile_user_p_userprofile_id_permissio_d0215190_uniq`(`userprofile_id`, `permission_id`) USING BTREE,
  INDEX `users_userprofile_us_permission_id_393136b6_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `users_userprofile_us_permission_id_393136b6_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `users_userprofile_us_userprofile_id_34544737_fk_users_use` FOREIGN KEY (`userprofile_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users_userprofile_user_permissions
-- ----------------------------
INSERT INTO `users_userprofile_user_permissions` VALUES (1, 2, 1);
INSERT INTO `users_userprofile_user_permissions` VALUES (2, 2, 2);
INSERT INTO `users_userprofile_user_permissions` VALUES (3, 2, 3);
INSERT INTO `users_userprofile_user_permissions` VALUES (4, 2, 4);
INSERT INTO `users_userprofile_user_permissions` VALUES (5, 2, 5);
INSERT INTO `users_userprofile_user_permissions` VALUES (6, 2, 6);
INSERT INTO `users_userprofile_user_permissions` VALUES (7, 2, 7);
INSERT INTO `users_userprofile_user_permissions` VALUES (8, 2, 8);
INSERT INTO `users_userprofile_user_permissions` VALUES (9, 2, 9);
INSERT INTO `users_userprofile_user_permissions` VALUES (10, 2, 10);
INSERT INTO `users_userprofile_user_permissions` VALUES (11, 2, 11);
INSERT INTO `users_userprofile_user_permissions` VALUES (12, 2, 12);
INSERT INTO `users_userprofile_user_permissions` VALUES (13, 2, 13);
INSERT INTO `users_userprofile_user_permissions` VALUES (14, 2, 14);
INSERT INTO `users_userprofile_user_permissions` VALUES (15, 2, 15);
INSERT INTO `users_userprofile_user_permissions` VALUES (16, 2, 16);
INSERT INTO `users_userprofile_user_permissions` VALUES (17, 2, 17);
INSERT INTO `users_userprofile_user_permissions` VALUES (18, 2, 18);
INSERT INTO `users_userprofile_user_permissions` VALUES (19, 2, 19);
INSERT INTO `users_userprofile_user_permissions` VALUES (20, 2, 20);
INSERT INTO `users_userprofile_user_permissions` VALUES (21, 2, 21);
INSERT INTO `users_userprofile_user_permissions` VALUES (22, 2, 22);
INSERT INTO `users_userprofile_user_permissions` VALUES (23, 2, 23);
INSERT INTO `users_userprofile_user_permissions` VALUES (24, 2, 24);
INSERT INTO `users_userprofile_user_permissions` VALUES (25, 2, 25);
INSERT INTO `users_userprofile_user_permissions` VALUES (26, 2, 26);
INSERT INTO `users_userprofile_user_permissions` VALUES (27, 2, 27);
INSERT INTO `users_userprofile_user_permissions` VALUES (28, 2, 28);
INSERT INTO `users_userprofile_user_permissions` VALUES (29, 2, 29);
INSERT INTO `users_userprofile_user_permissions` VALUES (30, 2, 30);
INSERT INTO `users_userprofile_user_permissions` VALUES (31, 2, 31);
INSERT INTO `users_userprofile_user_permissions` VALUES (32, 2, 32);
INSERT INTO `users_userprofile_user_permissions` VALUES (33, 2, 33);
INSERT INTO `users_userprofile_user_permissions` VALUES (34, 2, 34);
INSERT INTO `users_userprofile_user_permissions` VALUES (35, 2, 35);
INSERT INTO `users_userprofile_user_permissions` VALUES (36, 2, 36);
INSERT INTO `users_userprofile_user_permissions` VALUES (37, 2, 37);
INSERT INTO `users_userprofile_user_permissions` VALUES (38, 2, 38);
INSERT INTO `users_userprofile_user_permissions` VALUES (39, 2, 39);
INSERT INTO `users_userprofile_user_permissions` VALUES (40, 2, 40);
INSERT INTO `users_userprofile_user_permissions` VALUES (41, 2, 41);
INSERT INTO `users_userprofile_user_permissions` VALUES (42, 2, 42);
INSERT INTO `users_userprofile_user_permissions` VALUES (43, 2, 43);
INSERT INTO `users_userprofile_user_permissions` VALUES (44, 2, 44);
INSERT INTO `users_userprofile_user_permissions` VALUES (45, 2, 45);
INSERT INTO `users_userprofile_user_permissions` VALUES (46, 2, 46);
INSERT INTO `users_userprofile_user_permissions` VALUES (47, 2, 47);
INSERT INTO `users_userprofile_user_permissions` VALUES (48, 2, 48);
INSERT INTO `users_userprofile_user_permissions` VALUES (49, 2, 49);
INSERT INTO `users_userprofile_user_permissions` VALUES (50, 2, 50);
INSERT INTO `users_userprofile_user_permissions` VALUES (51, 2, 51);
INSERT INTO `users_userprofile_user_permissions` VALUES (52, 2, 52);
INSERT INTO `users_userprofile_user_permissions` VALUES (53, 2, 53);
INSERT INTO `users_userprofile_user_permissions` VALUES (54, 2, 54);
INSERT INTO `users_userprofile_user_permissions` VALUES (55, 2, 55);
INSERT INTO `users_userprofile_user_permissions` VALUES (56, 2, 56);
INSERT INTO `users_userprofile_user_permissions` VALUES (57, 2, 57);
INSERT INTO `users_userprofile_user_permissions` VALUES (58, 2, 58);
INSERT INTO `users_userprofile_user_permissions` VALUES (59, 2, 59);
INSERT INTO `users_userprofile_user_permissions` VALUES (60, 2, 60);
INSERT INTO `users_userprofile_user_permissions` VALUES (61, 2, 61);
INSERT INTO `users_userprofile_user_permissions` VALUES (62, 2, 62);
INSERT INTO `users_userprofile_user_permissions` VALUES (63, 2, 63);
INSERT INTO `users_userprofile_user_permissions` VALUES (64, 2, 64);
INSERT INTO `users_userprofile_user_permissions` VALUES (65, 2, 65);
INSERT INTO `users_userprofile_user_permissions` VALUES (66, 2, 66);
INSERT INTO `users_userprofile_user_permissions` VALUES (67, 2, 67);
INSERT INTO `users_userprofile_user_permissions` VALUES (68, 2, 68);
INSERT INTO `users_userprofile_user_permissions` VALUES (69, 2, 69);
INSERT INTO `users_userprofile_user_permissions` VALUES (70, 2, 70);
INSERT INTO `users_userprofile_user_permissions` VALUES (71, 2, 71);
INSERT INTO `users_userprofile_user_permissions` VALUES (72, 2, 72);
INSERT INTO `users_userprofile_user_permissions` VALUES (73, 2, 73);
INSERT INTO `users_userprofile_user_permissions` VALUES (74, 2, 74);
INSERT INTO `users_userprofile_user_permissions` VALUES (75, 2, 75);
INSERT INTO `users_userprofile_user_permissions` VALUES (76, 2, 76);
INSERT INTO `users_userprofile_user_permissions` VALUES (77, 2, 77);
INSERT INTO `users_userprofile_user_permissions` VALUES (78, 2, 78);
INSERT INTO `users_userprofile_user_permissions` VALUES (79, 2, 79);
INSERT INTO `users_userprofile_user_permissions` VALUES (80, 2, 80);
INSERT INTO `users_userprofile_user_permissions` VALUES (81, 2, 81);
INSERT INTO `users_userprofile_user_permissions` VALUES (82, 2, 82);
INSERT INTO `users_userprofile_user_permissions` VALUES (83, 2, 83);
INSERT INTO `users_userprofile_user_permissions` VALUES (84, 2, 84);
INSERT INTO `users_userprofile_user_permissions` VALUES (85, 2, 85);
INSERT INTO `users_userprofile_user_permissions` VALUES (86, 2, 86);
INSERT INTO `users_userprofile_user_permissions` VALUES (87, 2, 87);
INSERT INTO `users_userprofile_user_permissions` VALUES (88, 2, 88);
INSERT INTO `users_userprofile_user_permissions` VALUES (89, 2, 89);
INSERT INTO `users_userprofile_user_permissions` VALUES (90, 2, 90);
INSERT INTO `users_userprofile_user_permissions` VALUES (91, 2, 91);
INSERT INTO `users_userprofile_user_permissions` VALUES (92, 2, 92);
INSERT INTO `users_userprofile_user_permissions` VALUES (93, 2, 93);
INSERT INTO `users_userprofile_user_permissions` VALUES (94, 2, 94);
INSERT INTO `users_userprofile_user_permissions` VALUES (95, 2, 95);
INSERT INTO `users_userprofile_user_permissions` VALUES (96, 2, 96);
INSERT INTO `users_userprofile_user_permissions` VALUES (97, 2, 97);
INSERT INTO `users_userprofile_user_permissions` VALUES (98, 2, 98);
INSERT INTO `users_userprofile_user_permissions` VALUES (99, 2, 99);
INSERT INTO `users_userprofile_user_permissions` VALUES (100, 2, 100);
INSERT INTO `users_userprofile_user_permissions` VALUES (101, 2, 101);
INSERT INTO `users_userprofile_user_permissions` VALUES (102, 2, 102);
INSERT INTO `users_userprofile_user_permissions` VALUES (103, 2, 103);
INSERT INTO `users_userprofile_user_permissions` VALUES (104, 2, 104);

-- ----------------------------
-- Table structure for xadmin_bookmark
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_bookmark`;
CREATE TABLE `xadmin_bookmark`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `query` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_share` tinyint(1) NOT NULL,
  `content_type_id` int(0) NOT NULL,
  `user_id` int(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_bookmark_content_type_id_60941679_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_bookmark_content_type_id_60941679_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_bookmark_user_id_42d307fc_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for xadmin_log
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_log`;
CREATE TABLE `xadmin_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `ip_addr` char(39) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(0) DEFAULT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id`(`content_type_id`) USING BTREE,
  INDEX `xadmin_log_user_id_bb16a176_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_log_content_type_id_2a6cb852_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `xadmin_log_user_id_bb16a176_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_log
-- ----------------------------
INSERT INTO `xadmin_log` VALUES (1, '2020-08-22 12:58:33.553603', '127.0.0.1', '1', '北京', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (2, '2020-08-22 12:58:39.648077', '127.0.0.1', '2', '上海', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (3, '2020-08-22 12:58:44.416429', '127.0.0.1', '3', '深圳', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (4, '2020-08-22 12:58:54.820140', '127.0.0.1', '4', '重庆', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (5, '2020-08-22 12:58:59.930533', '127.0.0.1', '5', '成都', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (6, '2020-08-22 12:59:03.556950', '127.0.0.1', '6', '武汉', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (7, '2020-08-22 12:59:33.735727', '127.0.0.1', '7', '杭州', 'create', '已添加。', 18, 1);
INSERT INTO `xadmin_log` VALUES (8, '2020-08-22 13:08:43.726247', '127.0.0.1', '1', '清华大学', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (9, '2020-08-22 13:10:47.331159', '127.0.0.1', '1', '韩顺平', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (10, '2020-08-22 15:58:09.267379', '127.0.0.1', '1', '前端三大宝', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (11, '2020-08-22 15:58:42.668691', '127.0.0.1', '1', '第一章：认识一个美女', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (12, '2020-08-22 15:58:55.092993', '127.0.0.1', '2', '第二章：开始和美女沟通', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (13, '2020-08-22 15:59:07.281123', '127.0.0.1', '3', '第三章：和美女逛街', 'create', '已添加。', 10, 1);
INSERT INTO `xadmin_log` VALUES (14, '2020-08-22 15:59:49.396279', '127.0.0.1', '1', '01、hello html', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (15, '2020-08-22 16:00:13.730806', '127.0.0.1', '2', '02、实现一个网页', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (16, '2020-08-22 16:00:31.355009', '127.0.0.1', '3', '03、上传图片', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (17, '2020-08-22 16:00:48.369341', '127.0.0.1', '4', '01、美女1', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (18, '2020-08-22 16:01:19.372334', '127.0.0.1', '5', '01、第三章美女', 'create', '已添加。', 11, 1);
INSERT INTO `xadmin_log` VALUES (19, '2020-08-22 16:02:44.655295', '127.0.0.1', '1', '开发流程', 'create', '已添加。', 12, 1);
INSERT INTO `xadmin_log` VALUES (20, '2020-08-22 20:57:33.052300', '127.0.0.1', '2', 'tfedu', 'create', '已添加。', 8, 1);
INSERT INTO `xadmin_log` VALUES (21, '2020-08-22 20:58:26.114226', '127.0.0.1', '2', 'tfedu', 'change', '修改 email 和 is_staff', 8, 1);
INSERT INTO `xadmin_log` VALUES (22, '2020-08-22 20:59:51.787894', '127.0.0.1', '1', 'tf', 'create', '已添加。', 3, 1);
INSERT INTO `xadmin_log` VALUES (23, '2020-08-22 21:00:28.580541', '127.0.0.1', '2', 'tfedu', 'change', '修改 last_login，groups，user_permissions，nick_name 和 address', 8, 1);
INSERT INTO `xadmin_log` VALUES (24, '2020-08-22 22:33:28.762050', '127.0.0.1', '8', '广州', 'create', '已添加。', 18, 2);
INSERT INTO `xadmin_log` VALUES (25, '2020-08-22 22:35:12.880844', '127.0.0.1', '2', '北京大学', 'create', '已添加。', 19, 2);
INSERT INTO `xadmin_log` VALUES (26, '2020-08-22 23:02:17.460513', '127.0.0.1', '2', '北京大学', 'change', '修改 image', 19, 1);
INSERT INTO `xadmin_log` VALUES (27, '2020-08-22 23:26:14.635019', '127.0.0.1', '3', 'org/M12.jpg', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (28, '2020-08-22 23:27:03.694311', '127.0.0.1', '4', 'org/M8.jpg', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (29, '2020-08-22 23:28:04.325884', '127.0.0.1', '5', 'org/M7.jpg', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (30, '2020-08-22 23:32:27.482192', '127.0.0.1', '6', 'org/M1.jpg', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (31, '2020-08-22 23:32:59.819520', '127.0.0.1', '7', 'org/M2.jpg', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (32, '2020-08-22 23:33:39.667761', '127.0.0.1', '8', 'org/M3.jpg', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (33, '2020-08-22 23:34:32.829463', '127.0.0.1', '9', 'org/M4.jpg', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (34, '2020-08-22 23:35:21.439629', '127.0.0.1', '10', 'org/M5.jpg', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (35, '2020-08-22 23:35:56.444409', '127.0.0.1', '11', 'org/M6.jpg', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (36, '2020-08-23 00:02:22.200672', '127.0.0.1', '2', 'org/M11_tCVVwp5.jpg', 'change', '修改 image 和 category', 19, 1);
INSERT INTO `xadmin_log` VALUES (37, '2020-08-23 00:03:19.857900', '127.0.0.1', '12', 'org/M13.jpg', 'create', '已添加。', 19, 1);
INSERT INTO `xadmin_log` VALUES (38, '2020-08-23 00:14:58.833003', '127.0.0.1', '11', 'org/M6_SWaMuWc.jpg', 'change', '修改 image 和 cityinfo', 19, 1);
INSERT INTO `xadmin_log` VALUES (39, '2020-08-23 16:12:10.606585', '127.0.0.1', '2', 'MYSQL教程', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (40, '2020-08-23 16:13:10.438379', '127.0.0.1', '2', '迪丽热巴', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (41, '2020-08-23 16:13:44.203299', '127.0.0.1', '3', '热依扎', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (42, '2020-08-23 16:14:26.601979', '127.0.0.1', '4', '杨幂', 'create', '已添加。', 20, 1);
INSERT INTO `xadmin_log` VALUES (43, '2020-08-23 16:16:18.633325', '127.0.0.1', '3', 'PYTHON3教程', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (44, '2020-08-23 16:17:47.304407', '127.0.0.1', '2', 'MYSQL教程', 'change', '修改 image 和 org_info', 9, 1);
INSERT INTO `xadmin_log` VALUES (45, '2020-08-23 16:19:37.418415', '127.0.0.1', '3', 'PYTHON3教程', 'change', '修改 image 和 org_info', 9, 1);
INSERT INTO `xadmin_log` VALUES (46, '2020-08-23 16:20:18.297293', '127.0.0.1', '2', 'MYSQL教程', 'change', '修改 image，teacher_tell 和 teacher_info', 9, 1);
INSERT INTO `xadmin_log` VALUES (47, '2020-08-23 16:20:52.650970', '127.0.0.1', '4', '杨幂', 'change', '修改 image 和 work_company', 20, 1);
INSERT INTO `xadmin_log` VALUES (48, '2020-08-23 16:21:17.415784', '127.0.0.1', '3', '热依扎', 'change', '修改 image 和 work_company', 20, 1);
INSERT INTO `xadmin_log` VALUES (49, '2020-08-23 20:24:23.900500', '127.0.0.1', '1', 'banner/M11.jpg', 'create', '已添加。', 6, 1);
INSERT INTO `xadmin_log` VALUES (50, '2020-08-23 20:24:33.024327', '127.0.0.1', '2', 'banner/M12.jpg', 'create', '已添加。', 6, 1);
INSERT INTO `xadmin_log` VALUES (51, '2020-08-23 20:24:43.053755', '127.0.0.1', '3', 'banner/M7.jpg', 'create', '已添加。', 6, 1);
INSERT INTO `xadmin_log` VALUES (52, '2020-08-23 20:24:54.733350', '127.0.0.1', '4', 'banner/M8.jpg', 'create', '已添加。', 6, 1);
INSERT INTO `xadmin_log` VALUES (53, '2020-08-23 20:25:00.301472', '127.0.0.1', '5', 'banner/M9.jpg', 'create', '已添加。', 6, 1);
INSERT INTO `xadmin_log` VALUES (54, '2020-08-23 20:25:09.497017', '127.0.0.1', '6', 'banner/M3.jpg', 'create', '已添加。', 6, 1);
INSERT INTO `xadmin_log` VALUES (55, '2020-08-23 20:32:13.597396', '127.0.0.1', '4', 'LINUX教程', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (56, '2020-08-23 20:33:19.613466', '127.0.0.1', '5', 'JAVA', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (57, '2020-08-23 20:34:03.455249', '127.0.0.1', '6', 'HTML', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (58, '2020-08-23 20:35:22.718275', '127.0.0.1', '7', 'SQLSERVER', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (59, '2020-08-23 20:36:18.549219', '127.0.0.1', '8', 'VUE教程', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (60, '2020-08-23 20:37:21.266369', '127.0.0.1', '9', 'Redis教程', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (61, '2020-08-23 20:38:21.304992', '127.0.0.1', '10', 'docker教程', 'create', '已添加。', 9, 1);
INSERT INTO `xadmin_log` VALUES (62, '2020-08-23 20:39:24.108140', '127.0.0.1', '11', '大数据教程', 'create', '已添加。', 9, 1);

-- ----------------------------
-- Table structure for xadmin_usersettings
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_usersettings`;
CREATE TABLE `xadmin_usersettings`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `key` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_usersettings_user_id_edeabe4a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xadmin_usersettings
-- ----------------------------
INSERT INTO `xadmin_usersettings` VALUES (1, 'dashboard:home:pos', '', 1);
INSERT INTO `xadmin_usersettings` VALUES (2, 'site-theme', '/static/xadmin/css/themes/bootstrap-xadmin.css', 1);
INSERT INTO `xadmin_usersettings` VALUES (3, 'dashboard:home:pos', '', 2);

-- ----------------------------
-- Table structure for xadmin_userwidget
-- ----------------------------
DROP TABLE IF EXISTS `xadmin_userwidget`;
CREATE TABLE `xadmin_userwidget`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `widget_type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id`(`user_id`) USING BTREE,
  CONSTRAINT `xadmin_userwidget_user_id_c159233a_fk_users_userprofile_id` FOREIGN KEY (`user_id`) REFERENCES `users_userprofile` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
