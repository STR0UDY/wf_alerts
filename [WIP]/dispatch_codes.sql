/*
 Navicat Premium Data Transfer

 Source Server         : _Local
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : wildfire

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 07/04/2020 18:23:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dispatch_codes
-- ----------------------------
DROP TABLE IF EXISTS `dispatch_codes`;
CREATE TABLE `dispatch_codes`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `display_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  `priority` int(0) NULL DEFAULT 1,
  `is_important` tinyint(0) NULL DEFAULT 0,
  `is_police` tinyint(0) NULL DEFAULT 0,
  `is_ems` tinyint(0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dispatch_codes
-- ----------------------------
INSERT INTO `dispatch_codes` VALUES (1, '10-10', '10-10', 'Fight in progress', 1, 0, 1, 0);

SET FOREIGN_KEY_CHECKS = 1;
