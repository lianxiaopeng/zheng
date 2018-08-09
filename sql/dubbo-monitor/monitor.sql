/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost:3306
 Source Schema         : monitor

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 09/08/2018 10:07:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cap_capital_account
-- ----------------------------
DROP TABLE IF EXISTS `cap_capital_account`;
CREATE TABLE `cap_capital_account`  (
  `CAPITAL_ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BALANCE_AMOUNT` decimal(10, 0) NULL DEFAULT NULL,
  `USER_ID` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`CAPITAL_ACCOUNT_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cap_capital_account
-- ----------------------------
INSERT INTO `cap_capital_account` VALUES (1, 10000, 1000);
INSERT INTO `cap_capital_account` VALUES (2, 10000, 2000);

-- ----------------------------
-- Table structure for cap_trade_order
-- ----------------------------
DROP TABLE IF EXISTS `cap_trade_order`;
CREATE TABLE `cap_trade_order`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SELF_USER_ID` bigint(11) NULL DEFAULT NULL,
  `OPPOSITE_USER_ID` bigint(11) NULL DEFAULT NULL,
  `MERCHANT_ORDER_NO` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AMOUNT` decimal(10, 0) NULL DEFAULT NULL,
  `STATUS` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for dubbo_invoke
-- ----------------------------
DROP TABLE IF EXISTS `dubbo_invoke`;
CREATE TABLE `dubbo_invoke`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `invoke_date` date NOT NULL,
  `service` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `consumer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `invoke_time` bigint(20) NULL DEFAULT NULL,
  `success` int(11) NULL DEFAULT NULL,
  `failure` int(11) NULL DEFAULT NULL,
  `elapsed` int(11) NULL DEFAULT NULL,
  `concurrent` int(11) NULL DEFAULT NULL,
  `max_elapsed` int(11) NULL DEFAULT NULL,
  `max_concurrent` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_service`(`service`) USING BTREE,
  INDEX `index_method`(`method`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
