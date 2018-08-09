/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50528
 Source Host           : localhost:3306
 Source Schema         : zheng

 Target Server Type    : MySQL
 Target Server Version : 50528
 File Encoding         : 65001

 Date: 09/08/2018 10:05:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cms_article
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article`  (
  `article_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '文章编号',
  `topic_id` int(11) NULL DEFAULT NULL COMMENT '所属专题',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '文章标题',
  `author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章原作者',
  `fromurl` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '转载来源网址',
  `image` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封面图',
  `keywords` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关键字',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '简介',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '类型(1:普通,2:热门...)',
  `allowcomments` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否允许评论(0:不允许,1:允许)',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态(-1:不通过,0未审核,1:通过)',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '发布人id',
  `readnumber` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '阅读数量',
  `top` int(11) NOT NULL DEFAULT 0 COMMENT '置顶等级',
  `system_id` int(11) NULL DEFAULT NULL COMMENT '所属系统',
  `ctime` bigint(20) UNSIGNED NOT NULL COMMENT '创建时间',
  `orders` bigint(20) UNSIGNED NOT NULL COMMENT '排序',
  PRIMARY KEY (`article_id`) USING BTREE,
  INDEX `cms_article_orders`(`orders`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES (3, 0, '中国经济标题1', '1', '1', '1', '1', '1', 1, 1, 0, '资讯内容', 1, 0, 0, 1, 1489827019528, 1489827019528);
INSERT INTO `cms_article` VALUES (4, 0, '中国经济标题2', '2', '2', '2', '2', '2', 1, 1, -1, '资讯内容', 1, 0, 0, 1, 1489827340870, 1489827340870);
INSERT INTO `cms_article` VALUES (5, 0, '中国经济标题3', '3', '3', '3', '3', '3', 1, 1, 1, '资讯内容', 1, 0, 0, 1, 1489827581414, 1489827581414);
INSERT INTO `cms_article` VALUES (8, 1, '日本从地球消失，我们倍(喜)感(大)心(普)痛(奔)', 'shuzheng', '网络', '', '日本消失,日本地震', '日本从地震中消失', 1, 1, 1, '好悲(gao)伤(xing)啊', 1, 12, 0, 1, 1489845594355, 1489845594355);
INSERT INTO `cms_article` VALUES (9, 0, '中国经济标题4', '4', '4', '4', '4', '4', 1, 1, 1, '资讯内容', 1, 0, 0, 1, 1490460546198, 1490460546198);
INSERT INTO `cms_article` VALUES (10, 0, '中国经济标题5', '5', '5', '5', '5', '5', 1, 1, 1, '资讯内容', 1, 0, 0, 1, 1490460567137, 1490460567137);
INSERT INTO `cms_article` VALUES (11, 0, '中国经济标题6', '6', '6', '6', '6', '6', 1, 1, 1, '资讯内容', 1, 0, 0, 1, 1490460575304, 1490460575304);
INSERT INTO `cms_article` VALUES (12, 0, '中国经济标题7', '7', '7', '7', '7', '7', 1, 1, 1, '资讯内容', 1, 0, 0, 1, 1490460582004, 1490460582004);
INSERT INTO `cms_article` VALUES (13, 0, '中国经济标题8', '8', '8', '8', '8', '8', 1, 1, 1, '资讯内容', 1, 0, 0, 1, 1490460588840, 1490460588840);
INSERT INTO `cms_article` VALUES (14, 0, '中国经济标题9', '9', '9', '9', '9', '9', 1, 1, 1, '资讯内容', 1, 0, 0, 1, 1490460596394, 1490460596394);
INSERT INTO `cms_article` VALUES (15, 0, '中国经济标题10', '10', '10', '10', '10', '10', 1, 1, 1, '资讯内容', 1, 0, 0, 1, 1490460612370, 1490460612370);
INSERT INTO `cms_article` VALUES (16, 0, '中国经济标题11', '11', '11', '11', '11', '11', 1, 1, 1, '资讯内容', 1, 0, 0, 1, 1490460782767, 1490460782767);
INSERT INTO `cms_article` VALUES (17, 0, '中国经济标题12', '12', '12', '12', '12', '12', 1, 1, 1, '资讯内容', 1, 0, 0, 1, 1490460792501, 1490460792501);
INSERT INTO `cms_article` VALUES (18, 0, '中国经济标题13', '13', '13', '13', '13', '13', 1, 1, 1, '资讯内容', 1, 0, 0, 1, 1490460800634, 1490460800634);
INSERT INTO `cms_article` VALUES (19, 0, '人为什么谈恋爱？', 'test', 'test', 'test', 'test', 'test', 1, 1, 1, '人为什么谈恋爱？', 1, 0, 0, 2, 1490460800635, 1490460800635);
INSERT INTO `cms_article` VALUES (20, 0, 'java开发笔记', 'test', 'test', 'test', 'test', 'test', 1, 1, 1, '好记性不如烂笔头', 1, 0, 0, 3, 1490460800636, 1490460800636);

-- ----------------------------
-- Table structure for cms_article_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_category`;
CREATE TABLE `cms_article_category`  (
  `article_category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `article_id` int(10) UNSIGNED NOT NULL COMMENT '文章编号',
  `category_id` int(10) UNSIGNED NOT NULL COMMENT '类目编号',
  PRIMARY KEY (`article_category_id`) USING BTREE,
  INDEX `cms_article_category_article_id`(`article_id`) USING BTREE,
  INDEX `cms_article_category_category_id`(`category_id`) USING BTREE,
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`category_id`) REFERENCES `cms_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`article_id`) REFERENCES `cms_article` (`article_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章类目关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_article_category
-- ----------------------------
INSERT INTO `cms_article_category` VALUES (1, 3, 6);
INSERT INTO `cms_article_category` VALUES (2, 4, 6);
INSERT INTO `cms_article_category` VALUES (3, 5, 6);
INSERT INTO `cms_article_category` VALUES (4, 9, 6);
INSERT INTO `cms_article_category` VALUES (5, 10, 6);
INSERT INTO `cms_article_category` VALUES (6, 11, 6);
INSERT INTO `cms_article_category` VALUES (7, 12, 6);
INSERT INTO `cms_article_category` VALUES (8, 12, 6);
INSERT INTO `cms_article_category` VALUES (9, 13, 6);
INSERT INTO `cms_article_category` VALUES (10, 14, 6);
INSERT INTO `cms_article_category` VALUES (11, 15, 6);
INSERT INTO `cms_article_category` VALUES (12, 16, 6);
INSERT INTO `cms_article_category` VALUES (13, 17, 6);
INSERT INTO `cms_article_category` VALUES (14, 18, 6);
INSERT INTO `cms_article_category` VALUES (15, 8, 7);
INSERT INTO `cms_article_category` VALUES (16, 19, 8);
INSERT INTO `cms_article_category` VALUES (17, 20, 9);

-- ----------------------------
-- Table structure for cms_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_tag`;
CREATE TABLE `cms_article_tag`  (
  `article_tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `article_id` int(10) UNSIGNED NOT NULL COMMENT '文章编号',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT '标签编号',
  PRIMARY KEY (`article_tag_id`) USING BTREE,
  INDEX `cms_article_tag_article_id`(`article_id`) USING BTREE,
  INDEX `cms_article_tag_tag_id`(`tag_id`) USING BTREE,
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`article_id`) REFERENCES `cms_article` (`article_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`tag_id`) REFERENCES `cms_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文章标签关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_article_tag
-- ----------------------------
INSERT INTO `cms_article_tag` VALUES (1, 19, 4);
INSERT INTO `cms_article_tag` VALUES (2, 20, 5);

-- ----------------------------
-- Table structure for cms_category
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category`  (
  `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '类目编号',
  `pid` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '上级编号',
  `level` tinyint(4) NOT NULL COMMENT '层级',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `type` tinyint(3) NOT NULL DEFAULT 1 COMMENT '类型(1:普通,2:热门...)',
  `alias` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '别名',
  `system_id` int(11) NULL DEFAULT NULL COMMENT '所属系统',
  `ctime` bigint(20) UNSIGNED NOT NULL COMMENT '创建时间',
  `orders` bigint(255) UNSIGNED NOT NULL COMMENT '排序',
  PRIMARY KEY (`category_id`) USING BTREE,
  INDEX `cms_category_orders`(`orders`) USING BTREE,
  INDEX `cms_category_pid`(`pid`) USING BTREE,
  INDEX `cms_category_alias`(`alias`) USING BTREE,
  INDEX `cms_category_level`(`level`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '类目表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES (5, NULL, 1, '经济', '经济类目', '', 1, 'economic', 1, 1489590733919, 1489590733919);
INSERT INTO `cms_category` VALUES (6, 5, 2, '中国经济', '中国经济类目', '', 1, 'chinaeconomic', 1, 1489590768989, 1489590768989);
INSERT INTO `cms_category` VALUES (7, 5, 2, '日本经济', '日本经济类目', '', 1, 'japaneconomic', 1, 1491636586316, 1491636586316);
INSERT INTO `cms_category` VALUES (8, NULL, 1, '人类', '人类问题', '', 1, 'people', 2, 1491636586317, 1491636586317);
INSERT INTO `cms_category` VALUES (9, NULL, 1, '技术', '技术博文', NULL, 1, 'technic', 3, 1491636586318, 1491636586318);

-- ----------------------------
-- Table structure for cms_category_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_category_tag`;
CREATE TABLE `cms_category_tag`  (
  `category_tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `category_id` int(10) UNSIGNED NOT NULL COMMENT '类目编号',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT '标签编号',
  PRIMARY KEY (`category_tag_id`) USING BTREE,
  INDEX `cms_category_tag_tag_id`(`tag_id`) USING BTREE,
  INDEX `cms_category_tag_category_id`(`category_id`) USING BTREE,
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`category_id`) REFERENCES `cms_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`tag_id`) REFERENCES `cms_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '类目标签关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for cms_comment
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment`  (
  `comment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '回复楼中楼编号回复楼中楼编号',
  `article_id` int(10) UNSIGNED NOT NULL COMMENT '文章编号',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户编号',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '评论内容',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态(-1:不通过,0:未审核,1:通过)',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论人ip地址',
  `agent` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论人终端信息',
  `system_id` int(11) NULL DEFAULT NULL COMMENT '所属系统',
  `ctime` bigint(20) NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `cms_comment_article_id`(`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_comment
-- ----------------------------
INSERT INTO `cms_comment` VALUES (1, NULL, 8, 1, '1', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 1, 1490535749413);
INSERT INTO `cms_comment` VALUES (2, NULL, 8, 1, '2', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 1, 1490536186447);
INSERT INTO `cms_comment` VALUES (3, NULL, 8, 1, '3', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 1, 1490536192205);
INSERT INTO `cms_comment` VALUES (4, NULL, 8, 1, '4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 1, 1490536460544);
INSERT INTO `cms_comment` VALUES (5, NULL, 8, 1, '5', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 1, 1490536462182);
INSERT INTO `cms_comment` VALUES (6, NULL, 8, 1, '6', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 1, 1490536463614);
INSERT INTO `cms_comment` VALUES (7, NULL, 8, 1, '7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 1, 1490536464870);
INSERT INTO `cms_comment` VALUES (8, NULL, 8, 1, '8', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 1, 1490536465926);
INSERT INTO `cms_comment` VALUES (9, NULL, 8, 1, '9', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 1, 1490536466853);
INSERT INTO `cms_comment` VALUES (10, NULL, 8, 1, '10', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 1, 1490536467821);
INSERT INTO `cms_comment` VALUES (11, NULL, 19, 1, '1', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 2, 1491737900448);
INSERT INTO `cms_comment` VALUES (12, NULL, 19, 1, '3', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 2, 1491737902517);
INSERT INTO `cms_comment` VALUES (13, NULL, 19, 1, '4', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 2, 1491737903420);
INSERT INTO `cms_comment` VALUES (14, NULL, 19, 1, '5', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 2, 1491737904428);
INSERT INTO `cms_comment` VALUES (15, NULL, 19, 1, '6', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 2, 1491737905236);
INSERT INTO `cms_comment` VALUES (16, NULL, 19, 1, '7', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/57.0.2987.98 Safari/537.36', 2, 1491737905980);

-- ----------------------------
-- Table structure for cms_menu
-- ----------------------------
DROP TABLE IF EXISTS `cms_menu`;
CREATE TABLE `cms_menu`  (
  `menu_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` int(11) NULL DEFAULT NULL COMMENT '父菜单',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '链接',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '打开方式',
  `orders` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_menu
-- ----------------------------
INSERT INTO `cms_menu` VALUES (1, NULL, '首页', '/', '_self', 1489847080380);
INSERT INTO `cms_menu` VALUES (2, NULL, '问答', '/qa', '_self', 1489847186644);
INSERT INTO `cms_menu` VALUES (3, NULL, '博客', '/blog', '_self', 1489847186645);
INSERT INTO `cms_menu` VALUES (4, NULL, '资讯', '/news', '_self', 1489847080381);
INSERT INTO `cms_menu` VALUES (5, NULL, '专题', '/topic/list', '_self', 1489847186646);
INSERT INTO `cms_menu` VALUES (6, NULL, '关于', '/page/about', '_self', 1489847186647);

-- ----------------------------
-- Table structure for cms_page
-- ----------------------------
DROP TABLE IF EXISTS `cms_page`;
CREATE TABLE `cms_page`  (
  `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编码',
  `pid` int(10) NULL DEFAULT NULL COMMENT '父页面',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `alias` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '别名',
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '页面内容',
  `keywords` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关键字',
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `ctime` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `orders` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`page_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '页面' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_page
-- ----------------------------
INSERT INTO `cms_page` VALUES (1, NULL, '关于', 'about', '作者：张恕征', '单页关键字', '单页描述', 1489839705049, 1489839705049);

-- ----------------------------
-- Table structure for cms_setting
-- ----------------------------
DROP TABLE IF EXISTS `cms_setting`;
CREATE TABLE `cms_setting`  (
  `setting_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `setting_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`setting_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '网站配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_setting
-- ----------------------------
INSERT INTO `cms_setting` VALUES (1, 'copyright', '© 2017 Zhang Shuzheng');

-- ----------------------------
-- Table structure for cms_system
-- ----------------------------
DROP TABLE IF EXISTS `cms_system`;
CREATE TABLE `cms_system`  (
  `system_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '系统名称',
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '别名',
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `ctime` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `orders` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`system_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_system
-- ----------------------------
INSERT INTO `cms_system` VALUES (1, '资讯', 'news', '资讯', 1, 1);
INSERT INTO `cms_system` VALUES (2, '问答', 'qa', '问答', 2, 2);
INSERT INTO `cms_system` VALUES (3, '博客', 'blog', '博客', 3, 3);

-- ----------------------------
-- Table structure for cms_tag
-- ----------------------------
DROP TABLE IF EXISTS `cms_tag`;
CREATE TABLE `cms_tag`  (
  `tag_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '标签编号',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '类型(1:普通,2:热门...)',
  `alias` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '别名',
  `system_id` int(11) NULL DEFAULT NULL COMMENT '所属系统',
  `ctime` bigint(20) UNSIGNED NOT NULL COMMENT '创建时间',
  `orders` bigint(20) UNSIGNED NOT NULL COMMENT '排序',
  PRIMARY KEY (`tag_id`) USING BTREE,
  INDEX `cms_tag_orders`(`orders`) USING BTREE,
  INDEX `cms_tag_alias`(`alias`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '标签表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_tag
-- ----------------------------
INSERT INTO `cms_tag` VALUES (1, 'JAVA', 'java标签', '', 1, 'java', 1, 1489585694864, 1489585694864);
INSERT INTO `cms_tag` VALUES (2, 'Android', 'android标签', '', 1, 'android', 1, 1489585720382, 1489585720382);
INSERT INTO `cms_tag` VALUES (3, 'zheng', 'zheng标签', '', 2, 'zheng', 1, 1489585815042, 1489585815042);
INSERT INTO `cms_tag` VALUES (4, '谈恋爱', '谈恋爱标签', '', 1, 'love', 2, 1489585815043, 1489585815043);
INSERT INTO `cms_tag` VALUES (5, 'java', 'java标签', '', 1, 'java', 3, 1489585815044, 1489585815044);

-- ----------------------------
-- Table structure for cms_topic
-- ----------------------------
DROP TABLE IF EXISTS `cms_topic`;
CREATE TABLE `cms_topic`  (
  `topic_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '描述',
  `url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '链接',
  `ctime` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`topic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '专题' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of cms_topic
-- ----------------------------
INSERT INTO `cms_topic` VALUES (1, '日本地震专题', '日本经历灭国性地震，彻底沉入海底', '/topic/1', 1489843484448);

-- ----------------------------
-- Table structure for pay_in_order
-- ----------------------------
DROP TABLE IF EXISTS `pay_in_order`;
CREATE TABLE `pay_in_order`  (
  `pay_in_order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pay_vendor_id` int(10) NULL DEFAULT NULL,
  `pay_mch_id` int(10) NULL DEFAULT NULL,
  `amount` decimal(10, 0) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `ctime` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`pay_in_order_id`) USING BTREE,
  INDEX `FK_Reference_32`(`pay_vendor_id`) USING BTREE,
  INDEX `FK_Reference_38`(`pay_mch_id`) USING BTREE,
  CONSTRAINT `FK_Reference_32` FOREIGN KEY (`pay_vendor_id`) REFERENCES `pay_vendor` (`pay_vendor_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_38` FOREIGN KEY (`pay_mch_id`) REFERENCES `pay_mch` (`pay_mch_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收入订单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pay_in_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `pay_in_order_detail`;
CREATE TABLE `pay_in_order_detail`  (
  `pay_in_order_detail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pay_in_order_id` int(10) NULL DEFAULT NULL,
  `product_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `product_price` decimal(10, 0) NULL DEFAULT NULL,
  `product_count` int(10) NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pay_in_order_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '收入订单明细表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pay_mch
-- ----------------------------
DROP TABLE IF EXISTS `pay_mch`;
CREATE TABLE `pay_mch`  (
  `pay_mch_id` int(10) NOT NULL AUTO_INCREMENT,
  `mch_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `reqKey` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `resKey` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pay_mch_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支付中心商户管理表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pay_out_order
-- ----------------------------
DROP TABLE IF EXISTS `pay_out_order`;
CREATE TABLE `pay_out_order`  (
  `pay_out_order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pay_mch_id` int(10) NULL DEFAULT NULL,
  `pay_vendor_id` int(10) NULL DEFAULT NULL,
  `amount` decimal(10, 0) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `ctime` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`pay_out_order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支出订单表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pay_out_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `pay_out_order_detail`;
CREATE TABLE `pay_out_order_detail`  (
  `pay_out_order_detail_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pay_out_order_id` int(10) NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pay_out_order_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支出订单明细表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pay_pay
-- ----------------------------
DROP TABLE IF EXISTS `pay_pay`;
CREATE TABLE `pay_pay`  (
  `pay_pay_id` int(10) NOT NULL AUTO_INCREMENT,
  `pay_type_id` int(10) NULL DEFAULT NULL,
  `param` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pay_pay_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '支付参数配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pay_type
-- ----------------------------
DROP TABLE IF EXISTS `pay_type`;
CREATE TABLE `pay_type`  (
  `pay_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `pay_vendor_id` int(10) NULL DEFAULT NULL,
  `pay_mch_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`pay_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商户支持支付类型表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pay_vendor
-- ----------------------------
DROP TABLE IF EXISTS `pay_vendor`;
CREATE TABLE `pay_vendor`  (
  `pay_vendor_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `appid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `appsecret` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `config` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pay_vendor_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '第三方支付标识表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for pay_vest
-- ----------------------------
DROP TABLE IF EXISTS `pay_vest`;
CREATE TABLE `pay_vest`  (
  `pay_vest_id` int(10) NOT NULL AUTO_INCREMENT,
  `pay_type_id` int(10) NULL DEFAULT NULL,
  `prefix` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `param` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`pay_vest_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '马甲支付参数配置表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ucenter_oauth
-- ----------------------------
DROP TABLE IF EXISTS `ucenter_oauth`;
CREATE TABLE `ucenter_oauth`  (
  `oauth_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '认证方式名称',
  PRIMARY KEY (`oauth_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '认证方式表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ucenter_oauth
-- ----------------------------
INSERT INTO `ucenter_oauth` VALUES (1, '手机');
INSERT INTO `ucenter_oauth` VALUES (2, '微信');
INSERT INTO `ucenter_oauth` VALUES (3, 'QQ');
INSERT INTO `ucenter_oauth` VALUES (4, '微博');

-- ----------------------------
-- Table structure for ucenter_user
-- ----------------------------
DROP TABLE IF EXISTS `ucenter_user`;
CREATE TABLE `ucenter_user`  (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码(MD5(密码+盐))',
  `salt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '盐',
  `nickname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `sex` tinyint(4) NULL DEFAULT 0 COMMENT '性别(0:未知,1:男,2:女)',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `create_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '注册IP地址',
  `last_login_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后登录时间',
  `last_login_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最后登录IP地址',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ucenter_user_details
-- ----------------------------
DROP TABLE IF EXISTS `ucenter_user_details`;
CREATE TABLE `ucenter_user_details`  (
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '编号',
  `signature` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  `real_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `birthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '出生日期',
  `question` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '帐号安全问题',
  `answer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '帐号安全答案',
  PRIMARY KEY (`user_id`) USING BTREE,
  CONSTRAINT `FK_Reference_41` FOREIGN KEY (`user_id`) REFERENCES `ucenter_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户详情表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ucenter_user_log
-- ----------------------------
DROP TABLE IF EXISTS `ucenter_user_log`;
CREATE TABLE `ucenter_user_log`  (
  `user_log_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '用户编号',
  `content` varbinary(100) NULL DEFAULT NULL COMMENT '内容',
  `ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作IP地址',
  `agent` varbinary(200) NULL DEFAULT NULL COMMENT '操作环境',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  PRIMARY KEY (`user_log_id`) USING BTREE,
  INDEX `FK_Reference_44`(`user_id`) USING BTREE,
  CONSTRAINT `FK_Reference_44` FOREIGN KEY (`user_id`) REFERENCES `ucenter_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户操作日志表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for ucenter_user_oauth
-- ----------------------------
DROP TABLE IF EXISTS `ucenter_user_oauth`;
CREATE TABLE `ucenter_user_oauth`  (
  `user_oauth_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '帐号编号',
  `oauth_id` int(10) UNSIGNED NOT NULL COMMENT '认证方式编号',
  `open_id` varbinary(50) NOT NULL COMMENT '第三方ID',
  `status` tinyint(4) UNSIGNED NULL DEFAULT NULL COMMENT '绑定状态(0:解绑,1:绑定)',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`user_oauth_id`) USING BTREE,
  INDEX `FK_Reference_42`(`user_id`) USING BTREE,
  INDEX `FK_Reference_43`(`oauth_id`) USING BTREE,
  CONSTRAINT `FK_Reference_42` FOREIGN KEY (`user_id`) REFERENCES `ucenter_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_Reference_43` FOREIGN KEY (`oauth_id`) REFERENCES `ucenter_oauth` (`oauth_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户认证方式表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for upms_log
-- ----------------------------
DROP TABLE IF EXISTS `upms_log`;
CREATE TABLE `upms_log`  (
  `log_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作描述',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作用户',
  `start_time` bigint(20) NULL DEFAULT NULL COMMENT '操作时间',
  `spend_time` int(11) NULL DEFAULT NULL COMMENT '消耗时间',
  `base_path` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '根路径',
  `uri` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'URI',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'URL',
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求类型',
  `parameter` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `user_agent` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户标识',
  `ip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `result` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `permissions` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限值',
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `log_id`(`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 933 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of upms_log
-- ----------------------------
INSERT INTO `upms_log` VALUES (779, '登录', '', 1531216154157, 51, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (780, '登录', 'admin', 1531216281109, 195, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'POST', '{username=[admin],backurl=[],password=[123456],rememberMe=[false]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.zhangshuzheng.cn:1111\",\"message\":\"success\"}', NULL);
INSERT INTO `upms_log` VALUES (781, '后台首页', 'admin', 1531216281683, 96, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (782, '系统首页', 'admin', 1531216287646, 18, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/index', 'http://upms.zhangshuzheng.cn:1111/manage/system/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/system/index.jsp\"', 'upms:system:read');
INSERT INTO `upms_log` VALUES (783, '组织首页', 'admin', 1531216289379, 19, 'http://upms.zhangshuzheng.cn:1111', '/manage/organization/index', 'http://upms.zhangshuzheng.cn:1111/manage/organization/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/organization/index.jsp\"', 'upms:organization:read');
INSERT INTO `upms_log` VALUES (784, '系统列表', 'admin', 1531216289499, 36, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/list', 'http://upms.zhangshuzheng.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.zhangshuzheng.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"zheng-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29A176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://cms.zhangshuzheng.cn:2222\",\"ctime\":2,\"description\":\"内容管理系统（门户、博客、论坛、问答等）\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"zheng-cms-admin\",\"orders\":2,\"status\":1,\"systemId\":2,\"theme\":\"#455EC5\",\"title\":\"内容管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-pay.png\",\"basepath\":\"http://pay.zhangshuzheng.cn:3331\",\"ctime\":3,\"description\":\"支付管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"zheng-pay-admin\",\"orders\":3,\"status\":1,\"systemId\":3,\"theme\":\"#F06292\",\"title\":\"支付管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-ucenter.png\",\"basepath\":\"http://ucenter.zhangshuzheng.cn:4441\",\"ctime\":4,\"description\":\"用户管理系统\",\"icon\":\"zmdi zmdi-account\",\"name\":\"zheng-ucenter-home\",\"orders\":4,\"status\":1,\"systemId\":4,\"theme\":\"#6539B4\",\"title\":\"用户管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-oss.png\",\"basepath\":\"http://oss.zhangshuzheng.cn:7771\",\"ctime\":5,\"description\":\"存储管理系统\",\"icon\":\"zmdi zmdi-cloud\",\"name\":\"zheng-oss-web\",\"orders\":5,\"status\":1,\"systemId\":5,\"theme\":\"#0B8DE5\",\"title\":\"存储管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES (785, '组织列表', 'admin', 1531216290353, 43, 'http://upms.zhangshuzheng.cn:1111', '/manage/organization/list', 'http://upms.zhangshuzheng.cn:1111/manage/organization/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"ctime\":1,\"description\":\"北京总部\",\"name\":\"总部\",\"organizationId\":1},{\"ctime\":1488122466236,\"description\":\"河北石家庄\",\"name\":\"河北分部\",\"organizationId\":4},{\"ctime\":1488122480265,\"description\":\"河南郑州\",\"name\":\"河南分部\",\"organizationId\":5},{\"ctime\":1488122493265,\"description\":\"湖北武汉\",\"name\":\"湖北分部\",\"organizationId\":6},{\"ctime\":1488122502752,\"description\":\"湖南长沙\",\"name\":\"湖南分部\",\"organizationId\":7}]}', 'upms:organization:read');
INSERT INTO `upms_log` VALUES (786, '用户首页', 'admin', 1531216295371, 26, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/index', 'http://upms.zhangshuzheng.cn:1111/manage/user/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES (787, '用户列表', 'admin', 1531216296420, 24, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":2,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (788, '会话首页', 'admin', 1531216304856, 16, 'http://upms.zhangshuzheng.cn:1111', '/manage/session/index', 'http://upms.zhangshuzheng.cn:1111/manage/session/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/session/index.jsp\"', 'upms:session:read');
INSERT INTO `upms_log` VALUES (789, '会话列表', 'admin', 1531216305649, 23, 'http://upms.zhangshuzheng.cn:1111', '/manage/session/list', 'http://upms.zhangshuzheng.cn:1111/manage/session/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":1,\"rows\":[{\"attributeKeys\":[\"org.apache.shiro.subject.support.DefaultSubjectContext_AUTHENTICATED_SESSION_KEY\",\"zheng.upms.type\",\"org.apache.shiro.subject.support.DefaultSubjectContext_PRINCIPALS_SESSION_KEY\"],\"status\":\"on_line\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"valid\":true}]}', 'upms:session:read');
INSERT INTO `upms_log` VALUES (790, '日志首页', 'admin', 1531216306560, 19, 'http://upms.zhangshuzheng.cn:1111', '/manage/log/index', 'http://upms.zhangshuzheng.cn:1111/manage/log/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/log/index.jsp\"', 'upms:log:read');
INSERT INTO `upms_log` VALUES (791, '日志列表', 'admin', 1531216307243, 57, 'http://upms.zhangshuzheng.cn:1111', '/manage/log/list', 'http://upms.zhangshuzheng.cn:1111/manage/log/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":12,\"rows\":[{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"登录\",\"ip\":\"127.0.0.1\",\"logId\":779,\"method\":\"GET\",\"spendTime\":51,\"startTime\":1531216154157,\"uri\":\"/sso/login\",\"url\":\"http://upms.zhangshuzheng.cn:1111/sso/login\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"登录\",\"ip\":\"127.0.0.1\",\"logId\":780,\"method\":\"POST\",\"spendTime\":195,\"startTime\":1531216281109,\"uri\":\"/sso/login\",\"url\":\"http://upms.zhangshuzheng.cn:1111/sso/login\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"后台首页\",\"ip\":\"127.0.0.1\",\"logId\":781,\"method\":\"GET\",\"spendTime\":96,\"startTime\":1531216281683,\"uri\":\"/manage/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"系统首页\",\"ip\":\"127.0.0.1\",\"logId\":782,\"method\":\"GET\",\"permissions\":\"upms:system:read\",\"spendTime\":18,\"startTime\":1531216287646,\"uri\":\"/manage/system/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/system/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"组织首页\",\"ip\":\"127.0.0.1\",\"logId\":783,\"method\":\"GET\",\"permissions\":\"upms:organization:read\",\"spendTime\":19,\"startTime\":1531216289379,\"uri\":\"/manage/organization/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/organization/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"系统列表\",\"ip\":\"127.0.0.1\",\"logId\":784,\"method\":\"GET\",\"permissions\":\"upms:system:read\",\"spendTime\":36,\"startTime\":1531216289499,\"uri\":\"/manage/system/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/system/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"组织列表\",\"ip\":\"127.0.0.1\",\"logId\":785,\"method\":\"GET\",\"permissions\":\"upms:organization:read\",\"spendTime\":43,\"startTime\":1531216290353,\"uri\":\"/manage/organization/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/organization/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"用户首页\",\"ip\":\"127.0.0.1\",\"logId\":786,\"method\":\"GET\",\"permissions\":\"upms:user:read\",\"spendTime\":26,\"startTime\":1531216295371,\"uri\":\"/manage/user/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/user/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"用户列表\",\"ip\":\"127.0.0.1\",\"logId\":787,\"method\":\"GET\",\"permissions\":\"upms:user:read\",\"spendTime\":24,\"startTime\":1531216296420,\"uri\":\"/manage/user/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/user/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"会话首页\",\"ip\":\"127.0.0.1\",\"logId\":788,\"method\":\"GET\",\"permissions\":\"upms:session:read\",\"spendTime\":16,\"startTime\":1531216304856,\"uri\":\"/manage/session/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/session/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"}]}', 'upms:log:read');
INSERT INTO `upms_log` VALUES (792, '后台首页', 'admin', 1531217043557, 43, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (793, '系统首页', 'admin', 1531217046693, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/index', 'http://upms.zhangshuzheng.cn:1111/manage/system/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/system/index.jsp\"', 'upms:system:read');
INSERT INTO `upms_log` VALUES (794, '系统列表', 'admin', 1531217047142, 16, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/list', 'http://upms.zhangshuzheng.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.zhangshuzheng.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"zheng-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29A176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://cms.zhangshuzheng.cn:2222\",\"ctime\":2,\"description\":\"内容管理系统（门户、博客、论坛、问答等）\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"zheng-cms-admin\",\"orders\":2,\"status\":1,\"systemId\":2,\"theme\":\"#455EC5\",\"title\":\"内容管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-pay.png\",\"basepath\":\"http://pay.zhangshuzheng.cn:3331\",\"ctime\":3,\"description\":\"支付管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"zheng-pay-admin\",\"orders\":3,\"status\":1,\"systemId\":3,\"theme\":\"#F06292\",\"title\":\"支付管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-ucenter.png\",\"basepath\":\"http://ucenter.zhangshuzheng.cn:4441\",\"ctime\":4,\"description\":\"用户管理系统\",\"icon\":\"zmdi zmdi-account\",\"name\":\"zheng-ucenter-home\",\"orders\":4,\"status\":1,\"systemId\":4,\"theme\":\"#6539B4\",\"title\":\"用户管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-oss.png\",\"basepath\":\"http://oss.zhangshuzheng.cn:7771\",\"ctime\":5,\"description\":\"存储管理系统\",\"icon\":\"zmdi zmdi-cloud\",\"name\":\"zheng-oss-web\",\"orders\":5,\"status\":1,\"systemId\":5,\"theme\":\"#0B8DE5\",\"title\":\"存储管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES (795, '组织首页', 'admin', 1531217047784, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/organization/index', 'http://upms.zhangshuzheng.cn:1111/manage/organization/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/organization/index.jsp\"', 'upms:organization:read');
INSERT INTO `upms_log` VALUES (796, '组织列表', 'admin', 1531217048082, 14, 'http://upms.zhangshuzheng.cn:1111', '/manage/organization/list', 'http://upms.zhangshuzheng.cn:1111/manage/organization/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"ctime\":1,\"description\":\"北京总部\",\"name\":\"总部\",\"organizationId\":1},{\"ctime\":1488122466236,\"description\":\"河北石家庄\",\"name\":\"河北分部\",\"organizationId\":4},{\"ctime\":1488122480265,\"description\":\"河南郑州\",\"name\":\"河南分部\",\"organizationId\":5},{\"ctime\":1488122493265,\"description\":\"湖北武汉\",\"name\":\"湖北分部\",\"organizationId\":6},{\"ctime\":1488122502752,\"description\":\"湖南长沙\",\"name\":\"湖南分部\",\"organizationId\":7}]}', 'upms:organization:read');
INSERT INTO `upms_log` VALUES (797, '用户首页', 'admin', 1531217097544, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/index', 'http://upms.zhangshuzheng.cn:1111/manage/user/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES (798, '用户列表', 'admin', 1531217098382, 34, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":2,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (799, '权限首页', 'admin', 1531217099123, 18, 'http://upms.zhangshuzheng.cn:1111', '/manage/permission/index', 'http://upms.zhangshuzheng.cn:1111/manage/permission/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/permission/index.jsp\"', 'upms:permission:read');
INSERT INTO `upms_log` VALUES (800, '权限列表', 'admin', 1531217099863, 48, 'http://upms.zhangshuzheng.cn:1111', '/manage/permission/list', 'http://upms.zhangshuzheng.cn:1111/manage/permission/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":69,\"rows\":[{\"ctime\":1,\"icon\":\"zmdi zmdi-accounts-list\",\"name\":\"系统组织管理\",\"orders\":1,\"permissionId\":1,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":2,\"icon\":\"\",\"name\":\"系统管理\",\"orders\":2,\"permissionId\":2,\"permissionValue\":\"upms:system:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/system/index\"},{\"ctime\":3,\"icon\":\"\",\"name\":\"组织管理\",\"orders\":3,\"permissionId\":3,\"permissionValue\":\"upms:organization:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/organization/index\"},{\"ctime\":4,\"icon\":\"zmdi zmdi-accounts\",\"name\":\"角色用户管理\",\"orders\":4,\"permissionId\":4,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":6,\"icon\":\"\",\"name\":\"角色管理\",\"orders\":6,\"permissionId\":5,\"permissionValue\":\"upms:role:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/role/index\"},{\"ctime\":5,\"icon\":\"\",\"name\":\"用户管理\",\"orders\":5,\"permissionId\":6,\"permissionValue\":\"upms:user:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/user/index\"},{\"ctime\":7,\"icon\":\"zmdi zmdi-lock-outline\",\"name\":\"权限资源管理\",\"orders\":7,\"permissionId\":7,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":12,\"icon\":\"zmdi zmdi-more\",\"name\":\"其他数据管理\",\"orders\":12,\"permissionId\":12,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":14,\"icon\":\"\",\"name\":\"会话管理\",\"orders\":14,\"permissionId\":14,\"permissionValue\":\"upms:session:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/session/index\"},{\"ctime\":15,\"icon\":\"\",\"name\":\"日志记录\",\"orders\":15,\"permissionId\":15,\"permissionValue\":\"upms:log:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/log/index\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES (801, '修改权限', 'admin', 1531217101602, 17, 'http://upms.zhangshuzheng.cn:1111', '/manage/permission/update/1', 'http://upms.zhangshuzheng.cn:1111/manage/permission/update/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/permission/update.jsp\"', 'upms:permission:update');
INSERT INTO `upms_log` VALUES (802, '权限列表', 'admin', 1531217102153, 61, 'http://upms.zhangshuzheng.cn:1111', '/manage/permission/list', 'http://upms.zhangshuzheng.cn:1111/manage/permission/list', 'GET', 'systemId=1&type=0&limit=10000', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":32,\"rows\":[{\"ctime\":1,\"icon\":\"zmdi zmdi-accounts-list\",\"name\":\"系统组织管理\",\"orders\":1,\"permissionId\":1,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":2,\"icon\":\"\",\"name\":\"系统管理\",\"orders\":2,\"permissionId\":2,\"permissionValue\":\"upms:system:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/system/index\"},{\"ctime\":3,\"icon\":\"\",\"name\":\"组织管理\",\"orders\":3,\"permissionId\":3,\"permissionValue\":\"upms:organization:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/organization/index\"},{\"ctime\":4,\"icon\":\"zmdi zmdi-accounts\",\"name\":\"角色用户管理\",\"orders\":4,\"permissionId\":4,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":6,\"icon\":\"\",\"name\":\"角色管理\",\"orders\":6,\"permissionId\":5,\"permissionValue\":\"upms:role:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/role/index\"},{\"ctime\":5,\"icon\":\"\",\"name\":\"用户管理\",\"orders\":5,\"permissionId\":6,\"permissionValue\":\"upms:user:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/user/index\"},{\"ctime\":7,\"icon\":\"zmdi zmdi-lock-outline\",\"name\":\"权限资源管理\",\"orders\":7,\"permissionId\":7,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":12,\"icon\":\"zmdi zmdi-more\",\"name\":\"其他数据管理\",\"orders\":12,\"permissionId\":12,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":14,\"icon\":\"\",\"name\":\"会话管理\",\"orders\":14,\"permissionId\":14,\"permissionValue\":\"upms:session:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/session/index\"},{\"ctime\":15,\"icon\":\"\",\"name\":\"日志记录\",\"orders\":15,\"permissionId\":15,\"permissionValue\":\"upms:log:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/log/index\"},{\"ctime\":24,\"icon\":\"zmdi zmdi-plus\",\"name\":\"新增系统\",\"orders\":24,\"permissionId\":24,\"permissionValue\":\"upms:system:create\",\"pid\":2,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/system/create\"},{\"ctime\":25,\"icon\":\"zmdi zmdi-edit\",\"name\":\"编辑系统\",\"orders\":25,\"permissionId\":25,\"permissionValue\":\"upms:system:update\",\"pid\":2,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/system/update\"},{\"ctime\":26,\"icon\":\"zmdi zmdi-close\",\"name\":\"删除系统\",\"orders\":26,\"permissionId\":26,\"permissionValue\":\"upms:system:delete\",\"pid\":2,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/system/delete\"},{\"ctime\":27,\"icon\":\"zmdi zmdi-plus\",\"name\":\"新增组织\",\"orders\":27,\"permissionId\":27,\"permissionValue\":\"upms:organization:create\",\"pid\":3,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/organization/create\"},{\"ctime\":28,\"icon\":\"zmdi zmdi-edit\",\"name\":\"编辑组织\",\"orders\":28,\"permissionId\":28,\"permissionValue\":\"upms:organization:update\",\"pid\":3,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/organization/update\"},{\"ctime\":29,\"icon\":\"zmdi zmdi-close\",\"name\":\"删除组织\",\"orders\":29,\"permissionId\":29,\"permissionValue\":\"upms:organization:delete\",\"pid\":3,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/organization/delete\"},{\"ctime\":30,\"icon\":\"zmdi zmdi-plus\",\"name\":\"新增用户\",\"orders\":30,\"permissionId\":30,\"permissionValue\":\"upms:user:create\",\"pid\":6,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/user/create\"},{\"ctime\":31,\"icon\":\"zmdi zmdi-edit\",\"name\":\"编辑用户\",\"orders\":31,\"permissionId\":31,\"permissionValue\":\"upms:user:update\",\"pid\":6,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/user/update\"},{\"ctime\":32,\"icon\":\"zmdi zmdi-close\",\"name\":\"删除用户\",\"orders\":32,\"permissionId\":32,\"permissionValue\":\"upms:user:delete\",\"pid\":6,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/user/delete\"},{\"ctime\":33,\"icon\":\"zmdi zmdi-plus\",\"name\":\"新增角色\",\"orders\":33,\"permissionId\":33,\"permissionValue\":\"upms:role:create\",\"pid\":5,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/role/create\"},{\"ctime\":34,\"icon\":\"zmdi zmdi-edit\",\"name\":\"编辑角色\",\"orders\":34,\"permissionId\":34,\"permissionValue\":\"upms:role:update\",\"pid\":5,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/role/update\"},{\"ctime\":35,\"icon\":\"zmdi zmdi-close\",\"name\":\"删除角色\",\"orders\":35,\"permissionId\":35,\"permissionValue\":\"upms:role:delete\",\"pid\":5,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/role/delete\"},{\"ctime\":36,\"icon\":\"zmdi zmdi-plus\",\"name\":\"新增权限\",\"orders\":36,\"permissionId\":36,\"permissionValue\":\"upms:permission:create\",\"pid\":39,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/permission/create\"},{\"ctime\":37,\"icon\":\"zmdi zmdi-edit\",\"name\":\"编辑权限\",\"orders\":37,\"permissionId\":37,\"permissionValue\":\"upms:permission:update\",\"pid\":39,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/permission/update\"},{\"ctime\":38,\"icon\":\"zmdi zmdi-close\",\"name\":\"删除权限\",\"orders\":38,\"permissionId\":38,\"permissionValue\":\"upms:permission:delete\",\"pid\":39,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/permission/delete\"},{\"ctime\":39,\"name\":\"权限管理\",\"orders\":39,\"permissionId\":39,\"permissionValue\":\"upms:permission:read\",\"pid\":7,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/permission/index\"},{\"ctime\":1488091928257,\"icon\":\"zmdi zmdi-key\",\"name\":\"角色权限\",\"orders\":1488091928257,\"permissionId\":46,\"permissionValue\":\"upms:role:permission\",\"pid\":5,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/role/permission\"},{\"ctime\":1488120011165,\"icon\":\"zmdi zmdi-accounts-list\",\"name\":\"用户组织\",\"orders\":1488120011165,\"permissionId\":48,\"permissionValue\":\"upms:user:organization\",\"pid\":6,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/user/organization\"},{\"ctime\":1488120554175,\"icon\":\"zmdi zmdi-accounts\",\"name\":\"用户角色\",\"orders\":1488120554175,\"permissionId\":50,\"permissionValue\":\"upms:user:role\",\"pid\":6,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/user/role\"},{\"ctime\":1488092013302,\"icon\":\"zmdi zmdi-key\",\"name\":\"用户权限\",\"orders\":1488092013302,\"permissionId\":51,\"permissionValue\":\"upms:user:permission\",\"pid\":6,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/user/permission\"},{\"ctime\":1488379514715,\"icon\":\"zmdi zmdi-run\",\"name\":\"强制退出\",\"orders\":1488379514715,\"permissionId\":53,\"permissionValue\":\"upms:session:forceout\",\"pid\":14,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/session/forceout\"},{\"ctime\":1489503867909,\"icon\":\"zmdi zmdi-close\",\"name\":\"删除权限\",\"orders\":1489503867909,\"permissionId\":57,\"permissionValue\":\"upms:log:delete\",\"pid\":15,\"status\":1,\"systemId\":1,\"type\":3,\"uri\":\"/manage/log/delete\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES (803, '会话首页', 'admin', 1531217109511, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/session/index', 'http://upms.zhangshuzheng.cn:1111/manage/session/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/session/index.jsp\"', 'upms:session:read');
INSERT INTO `upms_log` VALUES (804, '会话列表', 'admin', 1531217109890, 2, 'http://upms.zhangshuzheng.cn:1111', '/manage/session/list', 'http://upms.zhangshuzheng.cn:1111/manage/session/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":1,\"rows\":[{\"attributeKeys\":[\"org.apache.shiro.subject.support.DefaultSubjectContext_AUTHENTICATED_SESSION_KEY\",\"org.apache.shiro.subject.support.DefaultSubjectContext_PRINCIPALS_SESSION_KEY\",\"zheng.upms.type\"],\"status\":\"on_line\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"valid\":true}]}', 'upms:session:read');
INSERT INTO `upms_log` VALUES (805, '退出登录', '', 1531272237681, 1, 'http://upms.zhangshuzheng.cn:1111', '/sso/logout', 'http://upms.zhangshuzheng.cn:1111/sso/logout', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"redirect:http://upms.zhangshuzheng.cn:1111/manage/index\"', NULL);
INSERT INTO `upms_log` VALUES (806, '登录', '', 1531272237866, 1, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (807, '登录', 'admin', 1531272240165, 38, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'POST', '{username=[admin],backurl=[],password=[123456],rememberMe=[false]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.zhangshuzheng.cn:1111\",\"message\":\"success\"}', NULL);
INSERT INTO `upms_log` VALUES (808, '后台首页', 'admin', 1531272240293, 57, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (809, '退出登录', '', 1531272322238, 21, 'http://upms.zhangshuzheng.cn:1111', '/sso/logout', 'http://upms.zhangshuzheng.cn:1111/sso/logout', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"redirect:http://upms.zhangshuzheng.cn:1111/manage/index\"', NULL);
INSERT INTO `upms_log` VALUES (810, '登录', '', 1531272322300, 0, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (811, '登录', 'admin', 1531272327041, 33, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'POST', '{username=[admin],backurl=[],password=[123456],rememberMe=[false]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.zhangshuzheng.cn:1111\",\"message\":\"success\"}', NULL);
INSERT INTO `upms_log` VALUES (812, '后台首页', 'admin', 1531272327159, 48, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (813, '系统首页', 'admin', 1531272404133, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/index', 'http://upms.zhangshuzheng.cn:1111/manage/system/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/system/index.jsp\"', 'upms:system:read');
INSERT INTO `upms_log` VALUES (814, '系统列表', 'admin', 1531272404992, 18, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/list', 'http://upms.zhangshuzheng.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.zhangshuzheng.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"zheng-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29A176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://cms.zhangshuzheng.cn:2222\",\"ctime\":2,\"description\":\"内容管理系统（门户、博客、论坛、问答等）\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"zheng-cms-admin\",\"orders\":2,\"status\":1,\"systemId\":2,\"theme\":\"#455EC5\",\"title\":\"内容管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-pay.png\",\"basepath\":\"http://pay.zhangshuzheng.cn:3331\",\"ctime\":3,\"description\":\"支付管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"zheng-pay-admin\",\"orders\":3,\"status\":1,\"systemId\":3,\"theme\":\"#F06292\",\"title\":\"支付管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-ucenter.png\",\"basepath\":\"http://ucenter.zhangshuzheng.cn:4441\",\"ctime\":4,\"description\":\"用户管理系统\",\"icon\":\"zmdi zmdi-account\",\"name\":\"zheng-ucenter-home\",\"orders\":4,\"status\":1,\"systemId\":4,\"theme\":\"#6539B4\",\"title\":\"用户管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-oss.png\",\"basepath\":\"http://oss.zhangshuzheng.cn:7771\",\"ctime\":5,\"description\":\"存储管理系统\",\"icon\":\"zmdi zmdi-cloud\",\"name\":\"zheng-oss-web\",\"orders\":5,\"status\":1,\"systemId\":5,\"theme\":\"#0B8DE5\",\"title\":\"存储管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES (815, '登录', 'admin', 1531272568843, 2, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"redirect:/\"', NULL);
INSERT INTO `upms_log` VALUES (816, '登录', '', 1531277515532, 0, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (817, '登录', '', 1531277516192, 0, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (818, '登录', 'admin', 1531277517618, 55, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'POST', '{username=[admin],backurl=[],password=[123456],rememberMe=[false]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.zhangshuzheng.cn:1111\",\"message\":\"success\"}', NULL);
INSERT INTO `upms_log` VALUES (819, '后台首页', 'admin', 1531277517765, 56, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (820, '用户首页', 'admin', 1531277521078, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/index', 'http://upms.zhangshuzheng.cn:1111/manage/user/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES (821, '用户列表', 'admin', 1531277522249, 17, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":2,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (822, '修改用户', 'admin', 1531277536306, 14, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/update/1', 'http://upms.zhangshuzheng.cn:1111/manage/user/update/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/update.jsp\"', 'upms:user:update');
INSERT INTO `upms_log` VALUES (823, '用户角色', 'admin', 1531277540082, 55534, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/role/1', 'http://upms.zhangshuzheng.cn:1111/manage/user/role/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/role.jsp\"', 'upms:user:role');
INSERT INTO `upms_log` VALUES (824, '用户角色', 'admin', 1531277611898, 28533, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/role/1', 'http://upms.zhangshuzheng.cn:1111/manage/user/role/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/role.jsp\"', 'upms:user:role');
INSERT INTO `upms_log` VALUES (825, '用户角色', 'admin', 1531278367250, 3933, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/role/1', 'http://upms.zhangshuzheng.cn:1111/manage/user/role/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/role.jsp\"', 'upms:user:role');
INSERT INTO `upms_log` VALUES (826, '用户角色', 'admin', 1531278538031, 57, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/role/1', 'http://upms.zhangshuzheng.cn:1111/manage/user/role/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/role.jsp\"', 'upms:user:role');
INSERT INTO `upms_log` VALUES (827, '后台首页', 'admin', 1531279647466, 77, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (828, '登录', '', 1531291033357, 78, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (829, '登录', 'admin', 1531291036690, 226, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'POST', '{username=[admin],backurl=[],password=[123456],rememberMe=[false]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.zhangshuzheng.cn:1111\",\"message\":\"success\"}', NULL);
INSERT INTO `upms_log` VALUES (830, '后台首页', 'admin', 1531291037280, 149, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (831, '系统首页', 'admin', 1531291052185, 29, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/index', 'http://upms.zhangshuzheng.cn:1111/manage/system/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/system/index.jsp\"', 'upms:system:read');
INSERT INTO `upms_log` VALUES (832, '系统列表', 'admin', 1531291055857, 47, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/list', 'http://upms.zhangshuzheng.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.zhangshuzheng.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"zheng-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29A176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://cms.zhangshuzheng.cn:2222\",\"ctime\":2,\"description\":\"内容管理系统（门户、博客、论坛、问答等）\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"zheng-cms-admin\",\"orders\":2,\"status\":1,\"systemId\":2,\"theme\":\"#455EC5\",\"title\":\"内容管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-pay.png\",\"basepath\":\"http://pay.zhangshuzheng.cn:3331\",\"ctime\":3,\"description\":\"支付管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"zheng-pay-admin\",\"orders\":3,\"status\":1,\"systemId\":3,\"theme\":\"#F06292\",\"title\":\"支付管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-ucenter.png\",\"basepath\":\"http://ucenter.zhangshuzheng.cn:4441\",\"ctime\":4,\"description\":\"用户管理系统\",\"icon\":\"zmdi zmdi-account\",\"name\":\"zheng-ucenter-home\",\"orders\":4,\"status\":1,\"systemId\":4,\"theme\":\"#6539B4\",\"title\":\"用户管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-oss.png\",\"basepath\":\"http://oss.zhangshuzheng.cn:7771\",\"ctime\":5,\"description\":\"存储管理系统\",\"icon\":\"zmdi zmdi-cloud\",\"name\":\"zheng-oss-web\",\"orders\":5,\"status\":1,\"systemId\":5,\"theme\":\"#0B8DE5\",\"title\":\"存储管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES (833, '登录', '', 1531296037254, 19, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (834, '登录', 'admin', 1531296040390, 252, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'POST', '{username=[admin],backurl=[],password=[123456],rememberMe=[false]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.zhangshuzheng.cn:1111\",\"message\":\"success\"}', NULL);
INSERT INTO `upms_log` VALUES (835, '后台首页', 'admin', 1531296041233, 148, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (836, '用户首页', 'admin', 1531296044103, 23, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/index', 'http://upms.zhangshuzheng.cn:1111/manage/user/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES (837, '用户列表', 'admin', 1531296045868, 36, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":2,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (838, '修改用户', 'admin', 1531296047538, 18, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/update/1', 'http://upms.zhangshuzheng.cn:1111/manage/user/update/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/update.jsp\"', 'upms:user:update');
INSERT INTO `upms_log` VALUES (839, '登录', '', 1531300767732, 0, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (840, '登录', 'admin', 1531300769934, 156, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'POST', '{username=[admin],backurl=[],password=[123456],rememberMe=[false]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.zhangshuzheng.cn:1111\",\"message\":\"success\"}', NULL);
INSERT INTO `upms_log` VALUES (841, '后台首页', 'admin', 1531300770204, 103, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (842, '系统首页', 'admin', 1531300772914, 28, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/index', 'http://upms.zhangshuzheng.cn:1111/manage/system/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/system/index.jsp\"', 'upms:system:read');
INSERT INTO `upms_log` VALUES (843, '系统列表', 'admin', 1531300774101, 41, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/list', 'http://upms.zhangshuzheng.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.zhangshuzheng.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"zheng-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29A176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://cms.zhangshuzheng.cn:2222\",\"ctime\":2,\"description\":\"内容管理系统（门户、博客、论坛、问答等）\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"zheng-cms-admin\",\"orders\":2,\"status\":1,\"systemId\":2,\"theme\":\"#455EC5\",\"title\":\"内容管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-pay.png\",\"basepath\":\"http://pay.zhangshuzheng.cn:3331\",\"ctime\":3,\"description\":\"支付管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"zheng-pay-admin\",\"orders\":3,\"status\":1,\"systemId\":3,\"theme\":\"#F06292\",\"title\":\"支付管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-ucenter.png\",\"basepath\":\"http://ucenter.zhangshuzheng.cn:4441\",\"ctime\":4,\"description\":\"用户管理系统\",\"icon\":\"zmdi zmdi-account\",\"name\":\"zheng-ucenter-home\",\"orders\":4,\"status\":1,\"systemId\":4,\"theme\":\"#6539B4\",\"title\":\"用户管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-oss.png\",\"basepath\":\"http://oss.zhangshuzheng.cn:7771\",\"ctime\":5,\"description\":\"存储管理系统\",\"icon\":\"zmdi zmdi-cloud\",\"name\":\"zheng-oss-web\",\"orders\":5,\"status\":1,\"systemId\":5,\"theme\":\"#0B8DE5\",\"title\":\"存储管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES (844, '组织首页', 'admin', 1531300774379, 22, 'http://upms.zhangshuzheng.cn:1111', '/manage/organization/index', 'http://upms.zhangshuzheng.cn:1111/manage/organization/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/organization/index.jsp\"', 'upms:organization:read');
INSERT INTO `upms_log` VALUES (845, '组织列表', 'admin', 1531300775268, 46, 'http://upms.zhangshuzheng.cn:1111', '/manage/organization/list', 'http://upms.zhangshuzheng.cn:1111/manage/organization/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"ctime\":1,\"description\":\"北京总部\",\"name\":\"总部\",\"organizationId\":1},{\"ctime\":1488122466236,\"description\":\"河北石家庄\",\"name\":\"河北分部\",\"organizationId\":4},{\"ctime\":1488122480265,\"description\":\"河南郑州\",\"name\":\"河南分部\",\"organizationId\":5},{\"ctime\":1488122493265,\"description\":\"湖北武汉\",\"name\":\"湖北分部\",\"organizationId\":6},{\"ctime\":1488122502752,\"description\":\"湖南长沙\",\"name\":\"湖南分部\",\"organizationId\":7}]}', 'upms:organization:read');
INSERT INTO `upms_log` VALUES (846, '用户首页', 'admin', 1531300791400, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/index', 'http://upms.zhangshuzheng.cn:1111/manage/user/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES (847, '用户列表', 'admin', 1531300792360, 39, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":2,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (848, '修改用户', 'admin', 1531300793630, 11, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/update/1', 'http://upms.zhangshuzheng.cn:1111/manage/user/update/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/update.jsp\"', 'upms:user:update');
INSERT INTO `upms_log` VALUES (849, '后台首页', 'admin', 1531300883516, 49, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (850, '角色首页', 'admin', 1531300885851, 25, 'http://upms.zhangshuzheng.cn:1111', '/manage/role/index', 'http://upms.zhangshuzheng.cn:1111/manage/role/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/role/index.jsp\"', 'upms:role:read');
INSERT INTO `upms_log` VALUES (851, '角色列表', 'admin', 1531300886769, 73, 'http://upms.zhangshuzheng.cn:1111', '/manage/role/list', 'http://upms.zhangshuzheng.cn:1111/manage/role/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":2,\"rows\":[{\"ctime\":1,\"description\":\"拥有所有权限\",\"name\":\"super\",\"orders\":1,\"roleId\":1,\"title\":\"超级管理员\"},{\"ctime\":1487471013117,\"description\":\"拥有除权限管理系统外的所有权限\",\"name\":\"admin\",\"orders\":1487471013117,\"roleId\":2,\"title\":\"管理员\"}]}', 'upms:role:read');
INSERT INTO `upms_log` VALUES (852, '权限首页', 'admin', 1531300886904, 25, 'http://upms.zhangshuzheng.cn:1111', '/manage/permission/index', 'http://upms.zhangshuzheng.cn:1111/manage/permission/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/permission/index.jsp\"', 'upms:permission:read');
INSERT INTO `upms_log` VALUES (853, '权限列表', 'admin', 1531300887669, 73, 'http://upms.zhangshuzheng.cn:1111', '/manage/permission/list', 'http://upms.zhangshuzheng.cn:1111/manage/permission/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":69,\"rows\":[{\"ctime\":1,\"icon\":\"zmdi zmdi-accounts-list\",\"name\":\"系统组织管理\",\"orders\":1,\"permissionId\":1,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":2,\"icon\":\"\",\"name\":\"系统管理\",\"orders\":2,\"permissionId\":2,\"permissionValue\":\"upms:system:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/system/index\"},{\"ctime\":3,\"icon\":\"\",\"name\":\"组织管理\",\"orders\":3,\"permissionId\":3,\"permissionValue\":\"upms:organization:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/organization/index\"},{\"ctime\":4,\"icon\":\"zmdi zmdi-accounts\",\"name\":\"角色用户管理\",\"orders\":4,\"permissionId\":4,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":6,\"icon\":\"\",\"name\":\"角色管理\",\"orders\":6,\"permissionId\":5,\"permissionValue\":\"upms:role:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/role/index\"},{\"ctime\":5,\"icon\":\"\",\"name\":\"用户管理\",\"orders\":5,\"permissionId\":6,\"permissionValue\":\"upms:user:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/user/index\"},{\"ctime\":7,\"icon\":\"zmdi zmdi-lock-outline\",\"name\":\"权限资源管理\",\"orders\":7,\"permissionId\":7,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":12,\"icon\":\"zmdi zmdi-more\",\"name\":\"其他数据管理\",\"orders\":12,\"permissionId\":12,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":14,\"icon\":\"\",\"name\":\"会话管理\",\"orders\":14,\"permissionId\":14,\"permissionValue\":\"upms:session:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/session/index\"},{\"ctime\":15,\"icon\":\"\",\"name\":\"日志记录\",\"orders\":15,\"permissionId\":15,\"permissionValue\":\"upms:log:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/log/index\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES (854, '用户首页', 'admin', 1531300888031, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/index', 'http://upms.zhangshuzheng.cn:1111/manage/user/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES (855, '用户列表', 'admin', 1531300888545, 24, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":2,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (856, '系统首页', 'admin', 1531300890033, 1, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/index', 'http://upms.zhangshuzheng.cn:1111/manage/system/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/system/index.jsp\"', 'upms:system:read');
INSERT INTO `upms_log` VALUES (857, '系统列表', 'admin', 1531300890346, 15, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/list', 'http://upms.zhangshuzheng.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.zhangshuzheng.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"zheng-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29A176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://cms.zhangshuzheng.cn:2222\",\"ctime\":2,\"description\":\"内容管理系统（门户、博客、论坛、问答等）\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"zheng-cms-admin\",\"orders\":2,\"status\":1,\"systemId\":2,\"theme\":\"#455EC5\",\"title\":\"内容管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-pay.png\",\"basepath\":\"http://pay.zhangshuzheng.cn:3331\",\"ctime\":3,\"description\":\"支付管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"zheng-pay-admin\",\"orders\":3,\"status\":1,\"systemId\":3,\"theme\":\"#F06292\",\"title\":\"支付管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-ucenter.png\",\"basepath\":\"http://ucenter.zhangshuzheng.cn:4441\",\"ctime\":4,\"description\":\"用户管理系统\",\"icon\":\"zmdi zmdi-account\",\"name\":\"zheng-ucenter-home\",\"orders\":4,\"status\":1,\"systemId\":4,\"theme\":\"#6539B4\",\"title\":\"用户管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-oss.png\",\"basepath\":\"http://oss.zhangshuzheng.cn:7771\",\"ctime\":5,\"description\":\"存储管理系统\",\"icon\":\"zmdi zmdi-cloud\",\"name\":\"zheng-oss-web\",\"orders\":5,\"status\":1,\"systemId\":5,\"theme\":\"#0B8DE5\",\"title\":\"存储管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES (858, '后台首页', 'admin', 1531300891036, 40, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (859, '后台首页', 'admin', 1531300919205, 41, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (860, '后台首页', 'admin', 1531301450860, 39, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (861, '后台首页', 'admin', 1531301460506, 40, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (862, '系统首页', 'admin', 1531301465105, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/index', 'http://upms.zhangshuzheng.cn:1111/manage/system/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/system/index.jsp\"', 'upms:system:read');
INSERT INTO `upms_log` VALUES (863, '系统列表', 'admin', 1531301465635, 15, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/list', 'http://upms.zhangshuzheng.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.zhangshuzheng.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"zheng-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29A176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://cms.zhangshuzheng.cn:2222\",\"ctime\":2,\"description\":\"内容管理系统（门户、博客、论坛、问答等）\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"zheng-cms-admin\",\"orders\":2,\"status\":1,\"systemId\":2,\"theme\":\"#455EC5\",\"title\":\"内容管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-pay.png\",\"basepath\":\"http://pay.zhangshuzheng.cn:3331\",\"ctime\":3,\"description\":\"支付管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"zheng-pay-admin\",\"orders\":3,\"status\":1,\"systemId\":3,\"theme\":\"#F06292\",\"title\":\"支付管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-ucenter.png\",\"basepath\":\"http://ucenter.zhangshuzheng.cn:4441\",\"ctime\":4,\"description\":\"用户管理系统\",\"icon\":\"zmdi zmdi-account\",\"name\":\"zheng-ucenter-home\",\"orders\":4,\"status\":1,\"systemId\":4,\"theme\":\"#6539B4\",\"title\":\"用户管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-oss.png\",\"basepath\":\"http://oss.zhangshuzheng.cn:7771\",\"ctime\":5,\"description\":\"存储管理系统\",\"icon\":\"zmdi zmdi-cloud\",\"name\":\"zheng-oss-web\",\"orders\":5,\"status\":1,\"systemId\":5,\"theme\":\"#0B8DE5\",\"title\":\"存储管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES (864, '修改系统', 'admin', 1531301468584, 10, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/update/1', 'http://upms.zhangshuzheng.cn:1111/manage/system/update/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/system/update.jsp\"', 'upms:system:update');
INSERT INTO `upms_log` VALUES (865, '用户首页', 'admin', 1531301473174, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/index', 'http://upms.zhangshuzheng.cn:1111/manage/user/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES (866, '用户列表', 'admin', 1531301473634, 16, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":2,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (867, '修改用户', 'admin', 1531301476107, 9, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/update/1', 'http://upms.zhangshuzheng.cn:1111/manage/user/update/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/update.jsp\"', 'upms:user:update');
INSERT INTO `upms_log` VALUES (868, '登录', '', 1531308283700, 1, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (869, '登录', 'admin', 1531308285346, 41, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'POST', '{username=[admin],backurl=[],password=[123456],rememberMe=[false]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.zhangshuzheng.cn:1111\",\"message\":\"success\"}', NULL);
INSERT INTO `upms_log` VALUES (870, '后台首页', 'admin', 1531308285503, 64, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (871, '系统首页', 'admin', 1531308288468, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/index', 'http://upms.zhangshuzheng.cn:1111/manage/system/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/system/index.jsp\"', 'upms:system:read');
INSERT INTO `upms_log` VALUES (872, '系统列表', 'admin', 1531308289291, 18, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/list', 'http://upms.zhangshuzheng.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.zhangshuzheng.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"zheng-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29A176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://cms.zhangshuzheng.cn:2222\",\"ctime\":2,\"description\":\"内容管理系统（门户、博客、论坛、问答等）\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"zheng-cms-admin\",\"orders\":2,\"status\":1,\"systemId\":2,\"theme\":\"#455EC5\",\"title\":\"内容管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-pay.png\",\"basepath\":\"http://pay.zhangshuzheng.cn:3331\",\"ctime\":3,\"description\":\"支付管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"zheng-pay-admin\",\"orders\":3,\"status\":1,\"systemId\":3,\"theme\":\"#F06292\",\"title\":\"支付管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-ucenter.png\",\"basepath\":\"http://ucenter.zhangshuzheng.cn:4441\",\"ctime\":4,\"description\":\"用户管理系统\",\"icon\":\"zmdi zmdi-account\",\"name\":\"zheng-ucenter-home\",\"orders\":4,\"status\":1,\"systemId\":4,\"theme\":\"#6539B4\",\"title\":\"用户管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-oss.png\",\"basepath\":\"http://oss.zhangshuzheng.cn:7771\",\"ctime\":5,\"description\":\"存储管理系统\",\"icon\":\"zmdi zmdi-cloud\",\"name\":\"zheng-oss-web\",\"orders\":5,\"status\":1,\"systemId\":5,\"theme\":\"#0B8DE5\",\"title\":\"存储管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES (873, '修改系统', 'admin', 1531308290791, 9, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/update/1', 'http://upms.zhangshuzheng.cn:1111/manage/system/update/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/system/update.jsp\"', 'upms:system:update');
INSERT INTO `upms_log` VALUES (874, '修改系统', 'admin', 1531308602093, 7, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/update/1', 'http://upms.zhangshuzheng.cn:1111/manage/system/update/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/system/update.jsp\"', 'upms:system:update');
INSERT INTO `upms_log` VALUES (875, '登录', '', 1531464942448, 24, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (876, '登录', 'admin', 1531464949161, 273, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'POST', '{username=[admin],backurl=[],password=[123456],rememberMe=[false]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.zhangshuzheng.cn:1111\",\"message\":\"success\"}', NULL);
INSERT INTO `upms_log` VALUES (877, '后台首页', 'admin', 1531464949682, 140, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (878, '用户首页', 'admin', 1531464975798, 27, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/index', 'http://upms.zhangshuzheng.cn:1111/manage/user/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES (879, '用户列表', 'admin', 1531464977794, 42, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":2,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (880, '新增用户', 'admin', 1531464980653, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/create', 'http://upms.zhangshuzheng.cn:1111/manage/user/create', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/create.jsp\"', 'upms:user:create');
INSERT INTO `upms_log` VALUES (881, '新增用户', 'admin', 1531465082853, 47, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/create', 'http://upms.zhangshuzheng.cn:1111/manage/user/create', 'POST', '{sex=[1],phone=[],username=[22],email=[],locked=[0],realname=[22],avatar=[22],password=[2211111111]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":1,\"message\":\"success\"}', 'upms:user:create');
INSERT INTO `upms_log` VALUES (882, '用户列表', 'admin', 1531465083020, 52, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":3,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"},{\"avatar\":\"22\",\"ctime\":1531465082871,\"email\":\"\",\"locked\":0,\"password\":\"815A5E1142432CB63E75638A37F8F5F0\",\"phone\":\"\",\"realname\":\"22\",\"salt\":\"eacfefcd868640b095ec515a39666cff\",\"sex\":1,\"userId\":3,\"username\":\"22\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (883, '新增用户', 'admin', 1531465145296, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/create', 'http://upms.zhangshuzheng.cn:1111/manage/user/create', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/create.jsp\"', 'upms:user:create');
INSERT INTO `upms_log` VALUES (884, '新增用户', 'admin', 1531465630254, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/create', 'http://upms.zhangshuzheng.cn:1111/manage/user/create', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/create.jsp\"', 'upms:user:create');
INSERT INTO `upms_log` VALUES (885, '新增用户', 'admin', 1531465635950, 56468, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/create', 'http://upms.zhangshuzheng.cn:1111/manage/user/create', 'POST', '{sex=[1],phone=[],username=[231],email=[],locked=[0],realname=[],avatar=[],password=[21321321]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":1,\"message\":\"success\"}', 'upms:user:create');
INSERT INTO `upms_log` VALUES (886, '用户列表', 'admin', 1531465692571, 16, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":4,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"},{\"avatar\":\"22\",\"ctime\":1531465082871,\"email\":\"\",\"locked\":0,\"password\":\"815A5E1142432CB63E75638A37F8F5F0\",\"phone\":\"\",\"realname\":\"22\",\"salt\":\"eacfefcd868640b095ec515a39666cff\",\"sex\":1,\"userId\":3,\"username\":\"22\"},{\"avatar\":\"\",\"ctime\":1531465635951,\"email\":\"\",\"locked\":0,\"password\":\"9D249F44148DC60FE53432D03C2144D4\",\"phone\":\"\",\"realname\":\"\",\"salt\":\"dd1a08fda1a646f084d1e94b8b538f3d\",\"sex\":1,\"userId\":4,\"username\":\"231\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (887, '新增用户', 'admin', 1531465719798, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/create', 'http://upms.zhangshuzheng.cn:1111/manage/user/create', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/create.jsp\"', 'upms:user:create');
INSERT INTO `upms_log` VALUES (888, '新增用户', 'admin', 1531465723410, 30057, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/create', 'http://upms.zhangshuzheng.cn:1111/manage/user/create', 'POST', '{sex=[1],phone=[],username=[321],email=[],locked=[0],realname=[],avatar=[],password=[213213]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":0,\"data\":\"帐号名已存在！\",\"message\":\"failed\"}', 'upms:user:create');
INSERT INTO `upms_log` VALUES (889, '新增用户', 'admin', 1531466201273, 30034, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/create', 'http://upms.zhangshuzheng.cn:1111/manage/user/create', 'POST', '{sex=[1],phone=[],username=[321],email=[],locked=[0],realname=[],avatar=[],password=[213213]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":0,\"data\":\"帐号名已存在！\",\"message\":\"failed\"}', 'upms:user:create');
INSERT INTO `upms_log` VALUES (890, '新增用户', 'admin', 1531466201273, 30034, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/create', 'http://upms.zhangshuzheng.cn:1111/manage/user/create', 'POST', '{sex=[1],phone=[],username=[321],email=[],locked=[0],realname=[],avatar=[],password=[213213]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":0,\"data\":\"帐号名已存在！\",\"message\":\"failed\"}', 'upms:user:create');
INSERT INTO `upms_log` VALUES (891, '登录', '', 1531469551672, 1, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (892, '登录', 'admin', 1531469553740, 107, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'POST', '{username=[admin],backurl=[],password=[123456],rememberMe=[false]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.zhangshuzheng.cn:1111\",\"message\":\"success\"}', NULL);
INSERT INTO `upms_log` VALUES (893, '后台首页', 'admin', 1531469553960, 82, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (894, '用户首页', 'admin', 1531469558018, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/index', 'http://upms.zhangshuzheng.cn:1111/manage/user/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES (895, '用户列表', 'admin', 1531469559044, 38, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"},{\"avatar\":\"22\",\"ctime\":1531465082871,\"email\":\"\",\"locked\":0,\"password\":\"815A5E1142432CB63E75638A37F8F5F0\",\"phone\":\"\",\"realname\":\"22\",\"salt\":\"eacfefcd868640b095ec515a39666cff\",\"sex\":1,\"userId\":3,\"username\":\"22\"},{\"avatar\":\"\",\"ctime\":1531465635951,\"email\":\"\",\"locked\":0,\"password\":\"9D249F44148DC60FE53432D03C2144D4\",\"phone\":\"\",\"realname\":\"\",\"salt\":\"dd1a08fda1a646f084d1e94b8b538f3d\",\"sex\":1,\"userId\":4,\"username\":\"231\"},{\"avatar\":\"\",\"ctime\":1531465723411,\"email\":\"\",\"locked\":0,\"password\":\"F191BD3975BE178A6AAF816112EB9CAD\",\"phone\":\"\",\"realname\":\"\",\"salt\":\"62fc4634f5a245bd9f029ca60a90ad5e\",\"sex\":1,\"userId\":5,\"username\":\"321\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (896, '新增用户', 'admin', 1531469560613, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/create', 'http://upms.zhangshuzheng.cn:1111/manage/user/create', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/create.jsp\"', 'upms:user:create');
INSERT INTO `upms_log` VALUES (897, '用户首页', 'admin', 1531469669260, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/index', 'http://upms.zhangshuzheng.cn:1111/manage/user/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES (898, '用户列表', 'admin', 1531469670038, 14, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"},{\"avatar\":\"22\",\"ctime\":1531465082871,\"email\":\"\",\"locked\":0,\"password\":\"815A5E1142432CB63E75638A37F8F5F0\",\"phone\":\"\",\"realname\":\"22\",\"salt\":\"eacfefcd868640b095ec515a39666cff\",\"sex\":1,\"userId\":3,\"username\":\"22\"},{\"avatar\":\"\",\"ctime\":1531465635951,\"email\":\"\",\"locked\":0,\"password\":\"9D249F44148DC60FE53432D03C2144D4\",\"phone\":\"\",\"realname\":\"\",\"salt\":\"dd1a08fda1a646f084d1e94b8b538f3d\",\"sex\":1,\"userId\":4,\"username\":\"231\"},{\"avatar\":\"\",\"ctime\":1531465723411,\"email\":\"\",\"locked\":0,\"password\":\"F191BD3975BE178A6AAF816112EB9CAD\",\"phone\":\"\",\"realname\":\"\",\"salt\":\"62fc4634f5a245bd9f029ca60a90ad5e\",\"sex\":1,\"userId\":5,\"username\":\"321\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (899, '新增用户', 'admin', 1531469710559, 0, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/create', 'http://upms.zhangshuzheng.cn:1111/manage/user/create', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/create.jsp\"', 'upms:user:create');
INSERT INTO `upms_log` VALUES (900, '登录', '', 1533718309773, 25, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/sso/login.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (901, '登录', 'admin', 1533718314551, 206, 'http://upms.zhangshuzheng.cn:1111', '/sso/login', 'http://upms.zhangshuzheng.cn:1111/sso/login', 'POST', '{username=[admin],backurl=[],password=[123456],rememberMe=[false]}', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"code\":1,\"data\":\"http://upms.zhangshuzheng.cn:1111\",\"message\":\"success\"}', NULL);
INSERT INTO `upms_log` VALUES (902, '后台首页', 'admin', 1533718315105, 181, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (903, '系统首页', 'admin', 1533718323099, 22, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/index', 'http://upms.zhangshuzheng.cn:1111/manage/system/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/system/index.jsp\"', 'upms:system:read');
INSERT INTO `upms_log` VALUES (904, '用户首页', 'admin', 1533718326212, 110, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/index', 'http://upms.zhangshuzheng.cn:1111/manage/user/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES (905, '系统列表', 'admin', 1533718327009, 53, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/list', 'http://upms.zhangshuzheng.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.zhangshuzheng.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"zheng-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29A176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://cms.zhangshuzheng.cn:2222\",\"ctime\":2,\"description\":\"内容管理系统（门户、博客、论坛、问答等）\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"zheng-cms-admin\",\"orders\":2,\"status\":1,\"systemId\":2,\"theme\":\"#455EC5\",\"title\":\"内容管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-pay.png\",\"basepath\":\"http://pay.zhangshuzheng.cn:3331\",\"ctime\":3,\"description\":\"支付管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"zheng-pay-admin\",\"orders\":3,\"status\":1,\"systemId\":3,\"theme\":\"#F06292\",\"title\":\"支付管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-ucenter.png\",\"basepath\":\"http://ucenter.zhangshuzheng.cn:4441\",\"ctime\":4,\"description\":\"用户管理系统\",\"icon\":\"zmdi zmdi-account\",\"name\":\"zheng-ucenter-home\",\"orders\":4,\"status\":1,\"systemId\":4,\"theme\":\"#6539B4\",\"title\":\"用户管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-oss.png\",\"basepath\":\"http://oss.zhangshuzheng.cn:7771\",\"ctime\":5,\"description\":\"存储管理系统\",\"icon\":\"zmdi zmdi-cloud\",\"name\":\"zheng-oss-web\",\"orders\":5,\"status\":1,\"systemId\":5,\"theme\":\"#0B8DE5\",\"title\":\"存储管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES (906, '用户列表', 'admin', 1533718327771, 59, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"},{\"avatar\":\"22\",\"ctime\":1531465082871,\"email\":\"\",\"locked\":0,\"password\":\"815A5E1142432CB63E75638A37F8F5F0\",\"phone\":\"\",\"realname\":\"22\",\"salt\":\"eacfefcd868640b095ec515a39666cff\",\"sex\":1,\"userId\":3,\"username\":\"22\"},{\"avatar\":\"\",\"ctime\":1531465635951,\"email\":\"\",\"locked\":0,\"password\":\"9D249F44148DC60FE53432D03C2144D4\",\"phone\":\"\",\"realname\":\"\",\"salt\":\"dd1a08fda1a646f084d1e94b8b538f3d\",\"sex\":1,\"userId\":4,\"username\":\"231\"},{\"avatar\":\"\",\"ctime\":1531465723411,\"email\":\"\",\"locked\":0,\"password\":\"F191BD3975BE178A6AAF816112EB9CAD\",\"phone\":\"\",\"realname\":\"\",\"salt\":\"62fc4634f5a245bd9f029ca60a90ad5e\",\"sex\":1,\"userId\":5,\"username\":\"321\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (907, '权限首页', 'admin', 1533718539416, 20, 'http://upms.zhangshuzheng.cn:1111', '/manage/permission/index', 'http://upms.zhangshuzheng.cn:1111/manage/permission/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/permission/index.jsp\"', 'upms:permission:read');
INSERT INTO `upms_log` VALUES (908, '权限列表', 'admin', 1533718540400, 45, 'http://upms.zhangshuzheng.cn:1111', '/manage/permission/list', 'http://upms.zhangshuzheng.cn:1111/manage/permission/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":69,\"rows\":[{\"ctime\":1,\"icon\":\"zmdi zmdi-accounts-list\",\"name\":\"系统组织管理\",\"orders\":1,\"permissionId\":1,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":2,\"icon\":\"\",\"name\":\"系统管理\",\"orders\":2,\"permissionId\":2,\"permissionValue\":\"upms:system:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/system/index\"},{\"ctime\":3,\"icon\":\"\",\"name\":\"组织管理\",\"orders\":3,\"permissionId\":3,\"permissionValue\":\"upms:organization:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/organization/index\"},{\"ctime\":4,\"icon\":\"zmdi zmdi-accounts\",\"name\":\"角色用户管理\",\"orders\":4,\"permissionId\":4,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":6,\"icon\":\"\",\"name\":\"角色管理\",\"orders\":6,\"permissionId\":5,\"permissionValue\":\"upms:role:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/role/index\"},{\"ctime\":5,\"icon\":\"\",\"name\":\"用户管理\",\"orders\":5,\"permissionId\":6,\"permissionValue\":\"upms:user:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/user/index\"},{\"ctime\":7,\"icon\":\"zmdi zmdi-lock-outline\",\"name\":\"权限资源管理\",\"orders\":7,\"permissionId\":7,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":12,\"icon\":\"zmdi zmdi-more\",\"name\":\"其他数据管理\",\"orders\":12,\"permissionId\":12,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":14,\"icon\":\"\",\"name\":\"会话管理\",\"orders\":14,\"permissionId\":14,\"permissionValue\":\"upms:session:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/session/index\"},{\"ctime\":15,\"icon\":\"\",\"name\":\"日志记录\",\"orders\":15,\"permissionId\":15,\"permissionValue\":\"upms:log:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/log/index\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES (909, '组织首页', 'admin', 1533718556325, 20, 'http://upms.zhangshuzheng.cn:1111', '/manage/organization/index', 'http://upms.zhangshuzheng.cn:1111/manage/organization/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/organization/index.jsp\"', 'upms:organization:read');
INSERT INTO `upms_log` VALUES (910, '组织列表', 'admin', 1533718557381, 30, 'http://upms.zhangshuzheng.cn:1111', '/manage/organization/list', 'http://upms.zhangshuzheng.cn:1111/manage/organization/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"ctime\":1,\"description\":\"北京总部\",\"name\":\"总部\",\"organizationId\":1},{\"ctime\":1488122466236,\"description\":\"河北石家庄\",\"name\":\"河北分部\",\"organizationId\":4},{\"ctime\":1488122480265,\"description\":\"河南郑州\",\"name\":\"河南分部\",\"organizationId\":5},{\"ctime\":1488122493265,\"description\":\"湖北武汉\",\"name\":\"湖北分部\",\"organizationId\":6},{\"ctime\":1488122502752,\"description\":\"湖南长沙\",\"name\":\"湖南分部\",\"organizationId\":7}]}', 'upms:organization:read');
INSERT INTO `upms_log` VALUES (911, '修改用户', 'admin', 1533718560765, 11, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/update/1', 'http://upms.zhangshuzheng.cn:1111/manage/user/update/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/update.jsp\"', 'upms:user:update');
INSERT INTO `upms_log` VALUES (912, '会话首页', 'admin', 1533718568567, 14, 'http://upms.zhangshuzheng.cn:1111', '/manage/session/index', 'http://upms.zhangshuzheng.cn:1111/manage/session/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/session/index.jsp\"', 'upms:session:read');
INSERT INTO `upms_log` VALUES (913, '会话列表', 'admin', 1533718569357, 23, 'http://upms.zhangshuzheng.cn:1111', '/manage/session/list', 'http://upms.zhangshuzheng.cn:1111/manage/session/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":1,\"rows\":[{\"attributeKeys\":[\"org.apache.shiro.subject.support.DefaultSubjectContext_AUTHENTICATED_SESSION_KEY\",\"org.apache.shiro.subject.support.DefaultSubjectContext_PRINCIPALS_SESSION_KEY\",\"zheng.upms.type\"],\"status\":\"on_line\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"valid\":true}]}', 'upms:session:read');
INSERT INTO `upms_log` VALUES (914, '日志首页', 'admin', 1533718570334, 29, 'http://upms.zhangshuzheng.cn:1111', '/manage/log/index', 'http://upms.zhangshuzheng.cn:1111/manage/log/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/log/index.jsp\"', 'upms:log:read');
INSERT INTO `upms_log` VALUES (915, '日志列表', 'admin', 1533718570831, 66, 'http://upms.zhangshuzheng.cn:1111', '/manage/log/list', 'http://upms.zhangshuzheng.cn:1111/manage/log/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":136,\"rows\":[{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"登录\",\"ip\":\"127.0.0.1\",\"logId\":779,\"method\":\"GET\",\"spendTime\":51,\"startTime\":1531216154157,\"uri\":\"/sso/login\",\"url\":\"http://upms.zhangshuzheng.cn:1111/sso/login\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"登录\",\"ip\":\"127.0.0.1\",\"logId\":780,\"method\":\"POST\",\"spendTime\":195,\"startTime\":1531216281109,\"uri\":\"/sso/login\",\"url\":\"http://upms.zhangshuzheng.cn:1111/sso/login\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"后台首页\",\"ip\":\"127.0.0.1\",\"logId\":781,\"method\":\"GET\",\"spendTime\":96,\"startTime\":1531216281683,\"uri\":\"/manage/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"系统首页\",\"ip\":\"127.0.0.1\",\"logId\":782,\"method\":\"GET\",\"permissions\":\"upms:system:read\",\"spendTime\":18,\"startTime\":1531216287646,\"uri\":\"/manage/system/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/system/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"组织首页\",\"ip\":\"127.0.0.1\",\"logId\":783,\"method\":\"GET\",\"permissions\":\"upms:organization:read\",\"spendTime\":19,\"startTime\":1531216289379,\"uri\":\"/manage/organization/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/organization/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"系统列表\",\"ip\":\"127.0.0.1\",\"logId\":784,\"method\":\"GET\",\"permissions\":\"upms:system:read\",\"spendTime\":36,\"startTime\":1531216289499,\"uri\":\"/manage/system/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/system/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"组织列表\",\"ip\":\"127.0.0.1\",\"logId\":785,\"method\":\"GET\",\"permissions\":\"upms:organization:read\",\"spendTime\":43,\"startTime\":1531216290353,\"uri\":\"/manage/organization/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/organization/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"用户首页\",\"ip\":\"127.0.0.1\",\"logId\":786,\"method\":\"GET\",\"permissions\":\"upms:user:read\",\"spendTime\":26,\"startTime\":1531216295371,\"uri\":\"/manage/user/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/user/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"用户列表\",\"ip\":\"127.0.0.1\",\"logId\":787,\"method\":\"GET\",\"permissions\":\"upms:user:read\",\"spendTime\":24,\"startTime\":1531216296420,\"uri\":\"/manage/user/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/user/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"会话首页\",\"ip\":\"127.0.0.1\",\"logId\":788,\"method\":\"GET\",\"permissions\":\"upms:session:read\",\"spendTime\":16,\"startTime\":1531216304856,\"uri\":\"/manage/session/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/session/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"}]}', 'upms:log:read');
INSERT INTO `upms_log` VALUES (916, '后台首页', 'admin', 1533718851223, 133, 'http://upms.zhangshuzheng.cn:1111', '/manage/index', 'http://upms.zhangshuzheng.cn:1111/manage/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/index.jsp\"', NULL);
INSERT INTO `upms_log` VALUES (917, '系统首页', 'admin', 1533719036468, 20, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/index', 'http://upms.zhangshuzheng.cn:1111/manage/system/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/system/index.jsp\"', 'upms:system:read');
INSERT INTO `upms_log` VALUES (918, '组织首页', 'admin', 1533719036887, 24, 'http://upms.zhangshuzheng.cn:1111', '/manage/organization/index', 'http://upms.zhangshuzheng.cn:1111/manage/organization/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/organization/index.jsp\"', 'upms:organization:read');
INSERT INTO `upms_log` VALUES (919, '组织列表', 'admin', 1533719040171, -78, 'http://upms.zhangshuzheng.cn:1111', '/manage/organization/list', 'http://upms.zhangshuzheng.cn:1111/manage/organization/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"ctime\":1,\"description\":\"北京总部\",\"name\":\"总部\",\"organizationId\":1},{\"ctime\":1488122466236,\"description\":\"河北石家庄\",\"name\":\"河北分部\",\"organizationId\":4},{\"ctime\":1488122480265,\"description\":\"河南郑州\",\"name\":\"河南分部\",\"organizationId\":5},{\"ctime\":1488122493265,\"description\":\"湖北武汉\",\"name\":\"湖北分部\",\"organizationId\":6},{\"ctime\":1488122502752,\"description\":\"湖南长沙\",\"name\":\"湖南分部\",\"organizationId\":7}]}', 'upms:organization:read');
INSERT INTO `upms_log` VALUES (920, '系统列表', 'admin', 1533719040171, 87, 'http://upms.zhangshuzheng.cn:1111', '/manage/system/list', 'http://upms.zhangshuzheng.cn:1111/manage/system/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"banner\":\"/resources/zheng-admin/images/zheng-upms.png\",\"basepath\":\"http://upms.zhangshuzheng.cn:1111\",\"ctime\":1,\"description\":\"用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）\",\"icon\":\"zmdi zmdi-shield-security\",\"name\":\"zheng-upms-server\",\"orders\":1,\"status\":1,\"systemId\":1,\"theme\":\"#29A176\",\"title\":\"权限管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-cms.png\",\"basepath\":\"http://cms.zhangshuzheng.cn:2222\",\"ctime\":2,\"description\":\"内容管理系统（门户、博客、论坛、问答等）\",\"icon\":\"zmdi zmdi-wikipedia\",\"name\":\"zheng-cms-admin\",\"orders\":2,\"status\":1,\"systemId\":2,\"theme\":\"#455EC5\",\"title\":\"内容管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-pay.png\",\"basepath\":\"http://pay.zhangshuzheng.cn:3331\",\"ctime\":3,\"description\":\"支付管理系统\",\"icon\":\"zmdi zmdi-paypal-alt\",\"name\":\"zheng-pay-admin\",\"orders\":3,\"status\":1,\"systemId\":3,\"theme\":\"#F06292\",\"title\":\"支付管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-ucenter.png\",\"basepath\":\"http://ucenter.zhangshuzheng.cn:4441\",\"ctime\":4,\"description\":\"用户管理系统\",\"icon\":\"zmdi zmdi-account\",\"name\":\"zheng-ucenter-home\",\"orders\":4,\"status\":1,\"systemId\":4,\"theme\":\"#6539B4\",\"title\":\"用户管理系统\"},{\"banner\":\"/resources/zheng-admin/images/zheng-oss.png\",\"basepath\":\"http://oss.zhangshuzheng.cn:7771\",\"ctime\":5,\"description\":\"存储管理系统\",\"icon\":\"zmdi zmdi-cloud\",\"name\":\"zheng-oss-web\",\"orders\":5,\"status\":1,\"systemId\":5,\"theme\":\"#0B8DE5\",\"title\":\"存储管理系统\"}]}', 'upms:system:read');
INSERT INTO `upms_log` VALUES (921, '权限首页', 'admin', 1533719040489, 28, 'http://upms.zhangshuzheng.cn:1111', '/manage/permission/index', 'http://upms.zhangshuzheng.cn:1111/manage/permission/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/permission/index.jsp\"', 'upms:permission:read');
INSERT INTO `upms_log` VALUES (922, '权限列表', 'admin', 1533719041644, 53, 'http://upms.zhangshuzheng.cn:1111', '/manage/permission/list', 'http://upms.zhangshuzheng.cn:1111/manage/permission/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":69,\"rows\":[{\"ctime\":1,\"icon\":\"zmdi zmdi-accounts-list\",\"name\":\"系统组织管理\",\"orders\":1,\"permissionId\":1,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":2,\"icon\":\"\",\"name\":\"系统管理\",\"orders\":2,\"permissionId\":2,\"permissionValue\":\"upms:system:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/system/index\"},{\"ctime\":3,\"icon\":\"\",\"name\":\"组织管理\",\"orders\":3,\"permissionId\":3,\"permissionValue\":\"upms:organization:read\",\"pid\":1,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/organization/index\"},{\"ctime\":4,\"icon\":\"zmdi zmdi-accounts\",\"name\":\"角色用户管理\",\"orders\":4,\"permissionId\":4,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":6,\"icon\":\"\",\"name\":\"角色管理\",\"orders\":6,\"permissionId\":5,\"permissionValue\":\"upms:role:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/role/index\"},{\"ctime\":5,\"icon\":\"\",\"name\":\"用户管理\",\"orders\":5,\"permissionId\":6,\"permissionValue\":\"upms:user:read\",\"pid\":4,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/user/index\"},{\"ctime\":7,\"icon\":\"zmdi zmdi-lock-outline\",\"name\":\"权限资源管理\",\"orders\":7,\"permissionId\":7,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":12,\"icon\":\"zmdi zmdi-more\",\"name\":\"其他数据管理\",\"orders\":12,\"permissionId\":12,\"permissionValue\":\"\",\"pid\":0,\"status\":1,\"systemId\":1,\"type\":1,\"uri\":\"\"},{\"ctime\":14,\"icon\":\"\",\"name\":\"会话管理\",\"orders\":14,\"permissionId\":14,\"permissionValue\":\"upms:session:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/session/index\"},{\"ctime\":15,\"icon\":\"\",\"name\":\"日志记录\",\"orders\":15,\"permissionId\":15,\"permissionValue\":\"upms:log:read\",\"pid\":12,\"status\":1,\"systemId\":1,\"type\":2,\"uri\":\"/manage/log/index\"}]}', 'upms:permission:read');
INSERT INTO `upms_log` VALUES (923, '用户首页', 'admin', 1533719042650, 24, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/index', 'http://upms.zhangshuzheng.cn:1111/manage/user/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/index.jsp\"', 'upms:user:read');
INSERT INTO `upms_log` VALUES (924, '用户列表', 'admin', 1533719043524, 36, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/list', 'http://upms.zhangshuzheng.cn:1111/manage/user/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":5,\"rows\":[{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"3038D9CB63B3152A79B8153FB06C02F7\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"66f1b370c660445a8657bf8bf1794486\",\"sex\":1,\"userId\":1,\"username\":\"admin\"},{\"avatar\":\"/resources/zheng-admin/images/avatar.jpg\",\"ctime\":1493394720495,\"email\":\"469741414@qq.com\",\"locked\":0,\"password\":\"285C9762F5F9046F5893F752DFAF3476\",\"phone\":\"\",\"realname\":\"张恕征\",\"salt\":\"d2d0d03310444ad388a8b290b0fe8564\",\"sex\":1,\"userId\":2,\"username\":\"test\"},{\"avatar\":\"22\",\"ctime\":1531465082871,\"email\":\"\",\"locked\":0,\"password\":\"815A5E1142432CB63E75638A37F8F5F0\",\"phone\":\"\",\"realname\":\"22\",\"salt\":\"eacfefcd868640b095ec515a39666cff\",\"sex\":1,\"userId\":3,\"username\":\"22\"},{\"avatar\":\"\",\"ctime\":1531465635951,\"email\":\"\",\"locked\":0,\"password\":\"9D249F44148DC60FE53432D03C2144D4\",\"phone\":\"\",\"realname\":\"\",\"salt\":\"dd1a08fda1a646f084d1e94b8b538f3d\",\"sex\":1,\"userId\":4,\"username\":\"231\"},{\"avatar\":\"\",\"ctime\":1531465723411,\"email\":\"\",\"locked\":0,\"password\":\"F191BD3975BE178A6AAF816112EB9CAD\",\"phone\":\"\",\"realname\":\"\",\"salt\":\"62fc4634f5a245bd9f029ca60a90ad5e\",\"sex\":1,\"userId\":5,\"username\":\"321\"}]}', 'upms:user:read');
INSERT INTO `upms_log` VALUES (925, '修改用户', 'admin', 1533719062281, 12, 'http://upms.zhangshuzheng.cn:1111', '/manage/user/update/1', 'http://upms.zhangshuzheng.cn:1111/manage/user/update/1', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/user/update.jsp\"', 'upms:user:update');
INSERT INTO `upms_log` VALUES (926, '会话首页', 'admin', 1533719070409, 16, 'http://upms.zhangshuzheng.cn:1111', '/manage/session/index', 'http://upms.zhangshuzheng.cn:1111/manage/session/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/session/index.jsp\"', 'upms:session:read');
INSERT INTO `upms_log` VALUES (927, '会话列表', 'admin', 1533719071338, 13, 'http://upms.zhangshuzheng.cn:1111', '/manage/session/list', 'http://upms.zhangshuzheng.cn:1111/manage/session/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":1,\"rows\":[{\"attributeKeys\":[\"org.apache.shiro.subject.support.DefaultSubjectContext_AUTHENTICATED_SESSION_KEY\",\"zheng.upms.type\",\"org.apache.shiro.subject.support.DefaultSubjectContext_PRINCIPALS_SESSION_KEY\"],\"status\":\"on_line\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"valid\":true}]}', 'upms:session:read');
INSERT INTO `upms_log` VALUES (928, '日志首页', 'admin', 1533719071650, 18, 'http://upms.zhangshuzheng.cn:1111', '/manage/log/index', 'http://upms.zhangshuzheng.cn:1111/manage/log/index', 'GET', NULL, 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '\"/manage/log/index.jsp\"', 'upms:log:read');
INSERT INTO `upms_log` VALUES (929, '日志列表', 'admin', 1533719072653, 35, 'http://upms.zhangshuzheng.cn:1111', '/manage/log/list', 'http://upms.zhangshuzheng.cn:1111/manage/log/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":150,\"rows\":[{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"登录\",\"ip\":\"127.0.0.1\",\"logId\":779,\"method\":\"GET\",\"spendTime\":51,\"startTime\":1531216154157,\"uri\":\"/sso/login\",\"url\":\"http://upms.zhangshuzheng.cn:1111/sso/login\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"登录\",\"ip\":\"127.0.0.1\",\"logId\":780,\"method\":\"POST\",\"spendTime\":195,\"startTime\":1531216281109,\"uri\":\"/sso/login\",\"url\":\"http://upms.zhangshuzheng.cn:1111/sso/login\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"后台首页\",\"ip\":\"127.0.0.1\",\"logId\":781,\"method\":\"GET\",\"spendTime\":96,\"startTime\":1531216281683,\"uri\":\"/manage/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"系统首页\",\"ip\":\"127.0.0.1\",\"logId\":782,\"method\":\"GET\",\"permissions\":\"upms:system:read\",\"spendTime\":18,\"startTime\":1531216287646,\"uri\":\"/manage/system/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/system/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"组织首页\",\"ip\":\"127.0.0.1\",\"logId\":783,\"method\":\"GET\",\"permissions\":\"upms:organization:read\",\"spendTime\":19,\"startTime\":1531216289379,\"uri\":\"/manage/organization/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/organization/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"系统列表\",\"ip\":\"127.0.0.1\",\"logId\":784,\"method\":\"GET\",\"permissions\":\"upms:system:read\",\"spendTime\":36,\"startTime\":1531216289499,\"uri\":\"/manage/system/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/system/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"组织列表\",\"ip\":\"127.0.0.1\",\"logId\":785,\"method\":\"GET\",\"permissions\":\"upms:organization:read\",\"spendTime\":43,\"startTime\":1531216290353,\"uri\":\"/manage/organization/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/organization/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"用户首页\",\"ip\":\"127.0.0.1\",\"logId\":786,\"method\":\"GET\",\"permissions\":\"upms:user:read\",\"spendTime\":26,\"startTime\":1531216295371,\"uri\":\"/manage/user/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/user/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"用户列表\",\"ip\":\"127.0.0.1\",\"logId\":787,\"method\":\"GET\",\"permissions\":\"upms:user:read\",\"spendTime\":24,\"startTime\":1531216296420,\"uri\":\"/manage/user/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/user/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"会话首页\",\"ip\":\"127.0.0.1\",\"logId\":788,\"method\":\"GET\",\"permissions\":\"upms:session:read\",\"spendTime\":16,\"startTime\":1531216304856,\"uri\":\"/manage/session/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/session/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"}]}', 'upms:log:read');
INSERT INTO `upms_log` VALUES (930, '日志列表', 'admin', 1533719083669, 19, 'http://upms.zhangshuzheng.cn:1111', '/manage/log/list', 'http://upms.zhangshuzheng.cn:1111/manage/log/list', 'GET', 'order=asc&offset=20&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":151,\"rows\":[{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"权限首页\",\"ip\":\"127.0.0.1\",\"logId\":799,\"method\":\"GET\",\"permissions\":\"upms:permission:read\",\"spendTime\":18,\"startTime\":1531217099123,\"uri\":\"/manage/permission/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/permission/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"权限列表\",\"ip\":\"127.0.0.1\",\"logId\":800,\"method\":\"GET\",\"permissions\":\"upms:permission:read\",\"spendTime\":48,\"startTime\":1531217099863,\"uri\":\"/manage/permission/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/permission/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"修改权限\",\"ip\":\"127.0.0.1\",\"logId\":801,\"method\":\"GET\",\"permissions\":\"upms:permission:update\",\"spendTime\":17,\"startTime\":1531217101602,\"uri\":\"/manage/permission/update/1\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/permission/update/1\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"权限列表\",\"ip\":\"127.0.0.1\",\"logId\":802,\"method\":\"GET\",\"permissions\":\"upms:permission:read\",\"spendTime\":61,\"startTime\":1531217102153,\"uri\":\"/manage/permission/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/permission/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"会话首页\",\"ip\":\"127.0.0.1\",\"logId\":803,\"method\":\"GET\",\"permissions\":\"upms:session:read\",\"spendTime\":0,\"startTime\":1531217109511,\"uri\":\"/manage/session/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/session/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"会话列表\",\"ip\":\"127.0.0.1\",\"logId\":804,\"method\":\"GET\",\"permissions\":\"upms:session:read\",\"spendTime\":2,\"startTime\":1531217109890,\"uri\":\"/manage/session/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/session/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"退出登录\",\"ip\":\"127.0.0.1\",\"logId\":805,\"method\":\"GET\",\"spendTime\":1,\"startTime\":1531272237681,\"uri\":\"/sso/logout\",\"url\":\"http://upms.zhangshuzheng.cn:1111/sso/logout\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"登录\",\"ip\":\"127.0.0.1\",\"logId\":806,\"method\":\"GET\",\"spendTime\":1,\"startTime\":1531272237866,\"uri\":\"/sso/login\",\"url\":\"http://upms.zhangshuzheng.cn:1111/sso/login\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"登录\",\"ip\":\"127.0.0.1\",\"logId\":807,\"method\":\"POST\",\"spendTime\":38,\"startTime\":1531272240165,\"uri\":\"/sso/login\",\"url\":\"http://upms.zhangshuzheng.cn:1111/sso/login\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"后台首页\",\"ip\":\"127.0.0.1\",\"logId\":808,\"method\":\"GET\",\"spendTime\":57,\"startTime\":1531272240293,\"uri\":\"/manage/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"}]}', 'upms:log:read');
INSERT INTO `upms_log` VALUES (931, '日志列表', 'admin', 1533719084552, 30, 'http://upms.zhangshuzheng.cn:1111', '/manage/log/list', 'http://upms.zhangshuzheng.cn:1111/manage/log/list', 'GET', 'order=asc&offset=150&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":152,\"rows\":[{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"日志列表\",\"ip\":\"127.0.0.1\",\"logId\":929,\"method\":\"GET\",\"permissions\":\"upms:log:read\",\"spendTime\":35,\"startTime\":1533719072653,\"uri\":\"/manage/log/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/log/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"日志列表\",\"ip\":\"127.0.0.1\",\"logId\":930,\"method\":\"GET\",\"permissions\":\"upms:log:read\",\"spendTime\":19,\"startTime\":1533719083669,\"uri\":\"/manage/log/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/log/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"}]}', 'upms:log:read');
INSERT INTO `upms_log` VALUES (932, '日志列表', 'admin', 1533719086310, 29, 'http://upms.zhangshuzheng.cn:1111', '/manage/log/list', 'http://upms.zhangshuzheng.cn:1111/manage/log/list', 'GET', 'order=asc&offset=0&limit=10', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36', '127.0.0.1', '{\"total\":153,\"rows\":[{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"登录\",\"ip\":\"127.0.0.1\",\"logId\":779,\"method\":\"GET\",\"spendTime\":51,\"startTime\":1531216154157,\"uri\":\"/sso/login\",\"url\":\"http://upms.zhangshuzheng.cn:1111/sso/login\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"登录\",\"ip\":\"127.0.0.1\",\"logId\":780,\"method\":\"POST\",\"spendTime\":195,\"startTime\":1531216281109,\"uri\":\"/sso/login\",\"url\":\"http://upms.zhangshuzheng.cn:1111/sso/login\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"后台首页\",\"ip\":\"127.0.0.1\",\"logId\":781,\"method\":\"GET\",\"spendTime\":96,\"startTime\":1531216281683,\"uri\":\"/manage/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"系统首页\",\"ip\":\"127.0.0.1\",\"logId\":782,\"method\":\"GET\",\"permissions\":\"upms:system:read\",\"spendTime\":18,\"startTime\":1531216287646,\"uri\":\"/manage/system/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/system/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"组织首页\",\"ip\":\"127.0.0.1\",\"logId\":783,\"method\":\"GET\",\"permissions\":\"upms:organization:read\",\"spendTime\":19,\"startTime\":1531216289379,\"uri\":\"/manage/organization/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/organization/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"系统列表\",\"ip\":\"127.0.0.1\",\"logId\":784,\"method\":\"GET\",\"permissions\":\"upms:system:read\",\"spendTime\":36,\"startTime\":1531216289499,\"uri\":\"/manage/system/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/system/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"组织列表\",\"ip\":\"127.0.0.1\",\"logId\":785,\"method\":\"GET\",\"permissions\":\"upms:organization:read\",\"spendTime\":43,\"startTime\":1531216290353,\"uri\":\"/manage/organization/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/organization/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"用户首页\",\"ip\":\"127.0.0.1\",\"logId\":786,\"method\":\"GET\",\"permissions\":\"upms:user:read\",\"spendTime\":26,\"startTime\":1531216295371,\"uri\":\"/manage/user/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/user/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"用户列表\",\"ip\":\"127.0.0.1\",\"logId\":787,\"method\":\"GET\",\"permissions\":\"upms:user:read\",\"spendTime\":24,\"startTime\":1531216296420,\"uri\":\"/manage/user/list\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/user/list\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"},{\"basePath\":\"http://upms.zhangshuzheng.cn:1111\",\"description\":\"会话首页\",\"ip\":\"127.0.0.1\",\"logId\":788,\"method\":\"GET\",\"permissions\":\"upms:session:read\",\"spendTime\":16,\"startTime\":1531216304856,\"uri\":\"/manage/session/index\",\"url\":\"http://upms.zhangshuzheng.cn:1111/manage/session/index\",\"userAgent\":\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.79 Safari/537.36\",\"username\":\"admin\"}]}', 'upms:log:read');

-- ----------------------------
-- Table structure for upms_organization
-- ----------------------------
DROP TABLE IF EXISTS `upms_organization`;
CREATE TABLE `upms_organization`  (
  `organization_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `pid` int(10) NULL DEFAULT NULL COMMENT '所属上级',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织名称',
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组织描述',
  `ctime` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`organization_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '组织' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of upms_organization
-- ----------------------------
INSERT INTO `upms_organization` VALUES (1, NULL, '总部', '北京总部', 1);
INSERT INTO `upms_organization` VALUES (4, NULL, '河北分部', '河北石家庄', 1488122466236);
INSERT INTO `upms_organization` VALUES (5, NULL, '河南分部', '河南郑州', 1488122480265);
INSERT INTO `upms_organization` VALUES (6, NULL, '湖北分部', '湖北武汉', 1488122493265);
INSERT INTO `upms_organization` VALUES (7, NULL, '湖南分部', '湖南长沙', 1488122502752);

-- ----------------------------
-- Table structure for upms_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_permission`;
CREATE TABLE `upms_permission`  (
  `permission_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `system_id` int(10) UNSIGNED NOT NULL COMMENT '所属系统',
  `pid` int(10) NULL DEFAULT NULL COMMENT '所属上级',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '类型(1:目录,2:菜单,3:按钮)',
  `permission_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限值',
  `uri` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路径',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态(0:禁止,1:正常)',
  `ctime` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `orders` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 86 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of upms_permission
-- ----------------------------
INSERT INTO `upms_permission` VALUES (1, 1, 0, '系统组织管理', 1, '', '', 'zmdi zmdi-accounts-list', 1, 1, 1);
INSERT INTO `upms_permission` VALUES (2, 1, 1, '系统管理', 2, 'upms:system:read', '/manage/system/index', '', 1, 2, 2);
INSERT INTO `upms_permission` VALUES (3, 1, 1, '组织管理', 2, 'upms:organization:read', '/manage/organization/index', '', 1, 3, 3);
INSERT INTO `upms_permission` VALUES (4, 1, 0, '角色用户管理', 1, '', '', 'zmdi zmdi-accounts', 1, 4, 4);
INSERT INTO `upms_permission` VALUES (5, 1, 4, '角色管理', 2, 'upms:role:read', '/manage/role/index', '', 1, 6, 6);
INSERT INTO `upms_permission` VALUES (6, 1, 4, '用户管理', 2, 'upms:user:read', '/manage/user/index', '', 1, 5, 5);
INSERT INTO `upms_permission` VALUES (7, 1, 0, '权限资源管理', 1, '', '', 'zmdi zmdi-lock-outline', 1, 7, 7);
INSERT INTO `upms_permission` VALUES (12, 1, 0, '其他数据管理', 1, '', '', 'zmdi zmdi-more', 1, 12, 12);
INSERT INTO `upms_permission` VALUES (14, 1, 12, '会话管理', 2, 'upms:session:read', '/manage/session/index', '', 1, 14, 14);
INSERT INTO `upms_permission` VALUES (15, 1, 12, '日志记录', 2, 'upms:log:read', '/manage/log/index', '', 1, 15, 15);
INSERT INTO `upms_permission` VALUES (17, 2, 0, '标签类目管理', 1, NULL, NULL, 'zmdi zmdi-menu', 1, 17, 17);
INSERT INTO `upms_permission` VALUES (18, 2, 17, '标签管理', 2, 'cms:tag:read', '/manage/tag/index', NULL, 1, 18, 18);
INSERT INTO `upms_permission` VALUES (19, 2, 17, '类目管理', 2, 'cms:category:read', '/manage/category/index', NULL, 1, 19, 19);
INSERT INTO `upms_permission` VALUES (20, 2, 0, '文章评论管理', 1, NULL, NULL, 'zmdi zmdi-collection-text', 1, 20, 20);
INSERT INTO `upms_permission` VALUES (21, 2, 20, '文章管理', 2, 'cms:article:read', '/manage/article/index', NULL, 1, 21, 21);
INSERT INTO `upms_permission` VALUES (22, 2, 20, '回收管理', 2, 'cms:article:read', '/manage/article/recycle', NULL, 1, 22, 22);
INSERT INTO `upms_permission` VALUES (24, 1, 2, '新增系统', 3, 'upms:system:create', '/manage/system/create', 'zmdi zmdi-plus', 1, 24, 24);
INSERT INTO `upms_permission` VALUES (25, 1, 2, '编辑系统', 3, 'upms:system:update', '/manage/system/update', 'zmdi zmdi-edit', 1, 25, 25);
INSERT INTO `upms_permission` VALUES (26, 1, 2, '删除系统', 3, 'upms:system:delete', '/manage/system/delete', 'zmdi zmdi-close', 1, 26, 26);
INSERT INTO `upms_permission` VALUES (27, 1, 3, '新增组织', 3, 'upms:organization:create', '/manage/organization/create', 'zmdi zmdi-plus', 1, 27, 27);
INSERT INTO `upms_permission` VALUES (28, 1, 3, '编辑组织', 3, 'upms:organization:update', '/manage/organization/update', 'zmdi zmdi-edit', 1, 28, 28);
INSERT INTO `upms_permission` VALUES (29, 1, 3, '删除组织', 3, 'upms:organization:delete', '/manage/organization/delete', 'zmdi zmdi-close', 1, 29, 29);
INSERT INTO `upms_permission` VALUES (30, 1, 6, '新增用户', 3, 'upms:user:create', '/manage/user/create', 'zmdi zmdi-plus', 1, 30, 30);
INSERT INTO `upms_permission` VALUES (31, 1, 6, '编辑用户', 3, 'upms:user:update', '/manage/user/update', 'zmdi zmdi-edit', 1, 31, 31);
INSERT INTO `upms_permission` VALUES (32, 1, 6, '删除用户', 3, 'upms:user:delete', '/manage/user/delete', 'zmdi zmdi-close', 1, 32, 32);
INSERT INTO `upms_permission` VALUES (33, 1, 5, '新增角色', 3, 'upms:role:create', '/manage/role/create', 'zmdi zmdi-plus', 1, 33, 33);
INSERT INTO `upms_permission` VALUES (34, 1, 5, '编辑角色', 3, 'upms:role:update', '/manage/role/update', 'zmdi zmdi-edit', 1, 34, 34);
INSERT INTO `upms_permission` VALUES (35, 1, 5, '删除角色', 3, 'upms:role:delete', '/manage/role/delete', 'zmdi zmdi-close', 1, 35, 35);
INSERT INTO `upms_permission` VALUES (36, 1, 39, '新增权限', 3, 'upms:permission:create', '/manage/permission/create', 'zmdi zmdi-plus', 1, 36, 36);
INSERT INTO `upms_permission` VALUES (37, 1, 39, '编辑权限', 3, 'upms:permission:update', '/manage/permission/update', 'zmdi zmdi-edit', 1, 37, 37);
INSERT INTO `upms_permission` VALUES (38, 1, 39, '删除权限', 3, 'upms:permission:delete', '/manage/permission/delete', 'zmdi zmdi-close', 1, 38, 38);
INSERT INTO `upms_permission` VALUES (39, 1, 7, '权限管理', 2, 'upms:permission:read', '/manage/permission/index', NULL, 1, 39, 39);
INSERT INTO `upms_permission` VALUES (46, 1, 5, '角色权限', 3, 'upms:role:permission', '/manage/role/permission', 'zmdi zmdi-key', 1, 1488091928257, 1488091928257);
INSERT INTO `upms_permission` VALUES (48, 1, 6, '用户组织', 3, 'upms:user:organization', '/manage/user/organization', 'zmdi zmdi-accounts-list', 1, 1488120011165, 1488120011165);
INSERT INTO `upms_permission` VALUES (50, 1, 6, '用户角色', 3, 'upms:user:role', '/manage/user/role', 'zmdi zmdi-accounts', 1, 1488120554175, 1488120554175);
INSERT INTO `upms_permission` VALUES (51, 1, 6, '用户权限', 3, 'upms:user:permission', '/manage/user/permission', 'zmdi zmdi-key', 1, 1488092013302, 1488092013302);
INSERT INTO `upms_permission` VALUES (53, 1, 14, '强制退出', 3, 'upms:session:forceout', '/manage/session/forceout', 'zmdi zmdi-run', 1, 1488379514715, 1488379514715);
INSERT INTO `upms_permission` VALUES (54, 2, 18, '新增标签', 3, 'cms:tag:create', '/manage/tag/create', 'zmdi zmdi-plus', 1, 1489417315159, 1489417315159);
INSERT INTO `upms_permission` VALUES (55, 2, 18, '编辑标签', 3, 'cms:tag:update', 'zmdi zmdi-edit', 'zmdi zmdi-widgets', 1, 1489417344931, 1489417344931);
INSERT INTO `upms_permission` VALUES (56, 2, 18, '删除标签', 3, 'cms:tag:delete', '/manage/tag/delete', 'zmdi zmdi-close', 1, 1489417372114, 1489417372114);
INSERT INTO `upms_permission` VALUES (57, 1, 15, '删除权限', 3, 'upms:log:delete', '/manage/log/delete', 'zmdi zmdi-close', 1, 1489503867909, 1489503867909);
INSERT INTO `upms_permission` VALUES (58, 2, 19, '编辑类目', 3, 'cms:category:update', '/manage/category/update', 'zmdi zmdi-edit', 1, 1489586600462, 1489586600462);
INSERT INTO `upms_permission` VALUES (59, 2, 19, '删除类目', 3, 'cms:category:delete', '/manage/category/delete', 'zmdi zmdi-close', 1, 1489586633059, 1489586633059);
INSERT INTO `upms_permission` VALUES (60, 2, 19, '新增类目', 3, 'cms:category:create', '/manage/category/create', 'zmdi zmdi-plus', 1, 1489590342089, 1489590342089);
INSERT INTO `upms_permission` VALUES (61, 2, 0, '其他数据管理', 1, '', '', 'zmdi zmdi-more', 1, 1489835455359, 1489835455359);
INSERT INTO `upms_permission` VALUES (62, 2, 20, '评论管理', 2, 'cms:comment:read', '/manage/comment/index', '', 1, 1489591408224, 1489591408224);
INSERT INTO `upms_permission` VALUES (63, 2, 62, '删除评论', 3, 'cms:comment:delete', '/manage/comment/delete', 'zmdi zmdi-close', 1, 1489591449614, 1489591449614);
INSERT INTO `upms_permission` VALUES (64, 2, 79, '单页管理', 2, 'cms:page:read', '/manage/page/index', '', 1, 1489591332779, 1489591332779);
INSERT INTO `upms_permission` VALUES (65, 2, 64, '新增单页', 3, 'cms:page:create', '/manage/page/create', 'zmdi zmdi-plus', 1, 1489591614473, 1489591614473);
INSERT INTO `upms_permission` VALUES (66, 2, 64, '编辑单页', 3, 'cms:page:update', '/manage/page/update', 'zmdi zmdi-edit', 1, 1489591653000, 1489591653000);
INSERT INTO `upms_permission` VALUES (67, 2, 64, '删除单页', 3, 'cms:page:delete', '/manage/page/delete', 'zmdi zmdi-close', 1, 1489591683552, 1489591683552);
INSERT INTO `upms_permission` VALUES (68, 2, 61, '菜单管理', 2, 'cms:menu:read', '/manage/menu/index', 'zmdi zmdi-widgets', 1, 1489591746846, 1489591746846);
INSERT INTO `upms_permission` VALUES (69, 2, 68, '新增菜单', 3, 'cms:menu:create', '/manage/menu/create', 'zmdi zmdi-plus', 1, 1489591791747, 1489591791747);
INSERT INTO `upms_permission` VALUES (70, 2, 68, '编辑菜单', 3, 'cms:menu:update', '/manage/menu/update', 'zmdi zmdi-edit', 1, 1489591831878, 1489591831878);
INSERT INTO `upms_permission` VALUES (71, 2, 68, '删除菜单', 3, 'cms:menu:delete', '/manage/menu/delete', 'zmdi zmdi-close', 1, 1489591865454, 1489591865454);
INSERT INTO `upms_permission` VALUES (72, 2, 61, '系统设置', 2, 'cms:setting:read', '/manage/setting/index', 'zmdi zmdi-widgets', 1, 1489591981165, 1489591981165);
INSERT INTO `upms_permission` VALUES (73, 2, 72, '新增设置', 3, 'cms:setting:create', '/manage/setting/create', 'zmdi zmdi-plus', 1, 1489592024762, 1489592024762);
INSERT INTO `upms_permission` VALUES (74, 2, 72, '编辑设置', 3, 'cms:setting:update', '/manage/setting/update', 'zmdi zmdi-edit', 1, 1489592052582, 1489592052582);
INSERT INTO `upms_permission` VALUES (75, 2, 72, '删除设置', 3, 'cms:setting:delete', '/manage/setting/delete', 'zmdi zmdi-close', 1, 1489592081426, 1489592081426);
INSERT INTO `upms_permission` VALUES (76, 2, 21, '新增文章', 3, 'cms:article:create', '/manage/article/create', 'zmdi zmdi-plus', 1, 1489820150404, 1489820150404);
INSERT INTO `upms_permission` VALUES (77, 2, 21, '编辑文章', 3, 'cms:article:update', '/manage/article/update', 'zmdi zmdi-edit', 1, 1489820178269, 1489820178269);
INSERT INTO `upms_permission` VALUES (78, 2, 21, '删除文章', 3, 'cms:article:delete', '/manage/article/delete', 'zmdi zmdi-close', 1, 1489820207607, 1489820207607);
INSERT INTO `upms_permission` VALUES (79, 2, 0, '单页专题管理', 1, '', '', 'zmdi zmdi-view-web', 1, 1489835320327, 1489835320327);
INSERT INTO `upms_permission` VALUES (80, 2, 79, '专题管理', 2, 'cms:topic:read', '/manage/topic/index', 'zmdi zmdi-widgets', 1, 1489591507566, 1489591507566);
INSERT INTO `upms_permission` VALUES (81, 2, 80, '新增专题', 3, 'cms:topic:create', '/manage/topic/create', 'zmdi zmdi-plus', 1, 1489843327028, 1489843327028);
INSERT INTO `upms_permission` VALUES (82, 2, 80, '编辑专题', 3, 'cms:topic:update', '/manage/topic/update', 'zmdi zmdi-edit', 1, 1489843351513, 1489843351513);
INSERT INTO `upms_permission` VALUES (83, 2, 80, '删除专题', 3, 'cms:topic:delete', '/manage/topic/delete', 'zmdi zmdi-close', 1, 1489843379953, 1489843379953);
INSERT INTO `upms_permission` VALUES (84, 2, 68, '上移菜单', 3, 'cms:menu:up', '/manage/menu/up', 'zmdi zmdi-long-arrow-up', 1, 1489846486548, 1489846486548);
INSERT INTO `upms_permission` VALUES (85, 2, 68, '下移菜单', 3, 'cms:menu:down', '/manage/menu/down', 'zmdi zmdi-long-arrow-down', 1, 1489846578051, 1489846578051);

-- ----------------------------
-- Table structure for upms_role
-- ----------------------------
DROP TABLE IF EXISTS `upms_role`;
CREATE TABLE `upms_role`  (
  `role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色标题',
  `description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `ctime` bigint(20) NOT NULL COMMENT '创建时间',
  `orders` bigint(20) NOT NULL COMMENT '排序',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of upms_role
-- ----------------------------
INSERT INTO `upms_role` VALUES (1, 'super', '超级管理员', '拥有所有权限', 1, 1);
INSERT INTO `upms_role` VALUES (2, 'admin', '管理员', '拥有除权限管理系统外的所有权限', 1487471013117, 1487471013117);

-- ----------------------------
-- Table structure for upms_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_role_permission`;
CREATE TABLE `upms_role_permission`  (
  `role_permission_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '角色编号',
  `permission_id` int(10) UNSIGNED NOT NULL COMMENT '权限编号',
  PRIMARY KEY (`role_permission_id`) USING BTREE,
  INDEX `FK_Reference_23`(`role_id`) USING BTREE,
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`role_id`) REFERENCES `upms_role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 126 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色权限关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of upms_role_permission
-- ----------------------------
INSERT INTO `upms_role_permission` VALUES (1, 1, 1);
INSERT INTO `upms_role_permission` VALUES (2, 1, 2);
INSERT INTO `upms_role_permission` VALUES (3, 1, 3);
INSERT INTO `upms_role_permission` VALUES (4, 1, 4);
INSERT INTO `upms_role_permission` VALUES (5, 1, 5);
INSERT INTO `upms_role_permission` VALUES (6, 1, 6);
INSERT INTO `upms_role_permission` VALUES (7, 1, 7);
INSERT INTO `upms_role_permission` VALUES (8, 1, 39);
INSERT INTO `upms_role_permission` VALUES (12, 1, 12);
INSERT INTO `upms_role_permission` VALUES (14, 1, 14);
INSERT INTO `upms_role_permission` VALUES (15, 1, 15);
INSERT INTO `upms_role_permission` VALUES (17, 1, 17);
INSERT INTO `upms_role_permission` VALUES (19, 1, 19);
INSERT INTO `upms_role_permission` VALUES (20, 1, 20);
INSERT INTO `upms_role_permission` VALUES (21, 1, 21);
INSERT INTO `upms_role_permission` VALUES (24, 1, 24);
INSERT INTO `upms_role_permission` VALUES (27, 1, 27);
INSERT INTO `upms_role_permission` VALUES (28, 1, 28);
INSERT INTO `upms_role_permission` VALUES (29, 1, 29);
INSERT INTO `upms_role_permission` VALUES (30, 1, 30);
INSERT INTO `upms_role_permission` VALUES (31, 1, 31);
INSERT INTO `upms_role_permission` VALUES (32, 1, 32);
INSERT INTO `upms_role_permission` VALUES (33, 1, 33);
INSERT INTO `upms_role_permission` VALUES (34, 1, 34);
INSERT INTO `upms_role_permission` VALUES (35, 1, 35);
INSERT INTO `upms_role_permission` VALUES (36, 1, 36);
INSERT INTO `upms_role_permission` VALUES (37, 1, 37);
INSERT INTO `upms_role_permission` VALUES (38, 1, 38);
INSERT INTO `upms_role_permission` VALUES (39, 1, 46);
INSERT INTO `upms_role_permission` VALUES (40, 1, 51);
INSERT INTO `upms_role_permission` VALUES (44, 1, 48);
INSERT INTO `upms_role_permission` VALUES (45, 1, 50);
INSERT INTO `upms_role_permission` VALUES (47, 1, 53);
INSERT INTO `upms_role_permission` VALUES (48, 1, 18);
INSERT INTO `upms_role_permission` VALUES (49, 1, 54);
INSERT INTO `upms_role_permission` VALUES (50, 1, 54);
INSERT INTO `upms_role_permission` VALUES (51, 1, 55);
INSERT INTO `upms_role_permission` VALUES (52, 1, 54);
INSERT INTO `upms_role_permission` VALUES (53, 1, 55);
INSERT INTO `upms_role_permission` VALUES (54, 1, 56);
INSERT INTO `upms_role_permission` VALUES (55, 1, 57);
INSERT INTO `upms_role_permission` VALUES (56, 1, 58);
INSERT INTO `upms_role_permission` VALUES (57, 1, 58);
INSERT INTO `upms_role_permission` VALUES (58, 1, 59);
INSERT INTO `upms_role_permission` VALUES (59, 1, 60);
INSERT INTO `upms_role_permission` VALUES (60, 1, 61);
INSERT INTO `upms_role_permission` VALUES (61, 1, 62);
INSERT INTO `upms_role_permission` VALUES (62, 1, 62);
INSERT INTO `upms_role_permission` VALUES (63, 1, 63);
INSERT INTO `upms_role_permission` VALUES (64, 1, 62);
INSERT INTO `upms_role_permission` VALUES (65, 1, 63);
INSERT INTO `upms_role_permission` VALUES (66, 1, 64);
INSERT INTO `upms_role_permission` VALUES (67, 1, 62);
INSERT INTO `upms_role_permission` VALUES (68, 1, 63);
INSERT INTO `upms_role_permission` VALUES (69, 1, 64);
INSERT INTO `upms_role_permission` VALUES (70, 1, 65);
INSERT INTO `upms_role_permission` VALUES (71, 1, 62);
INSERT INTO `upms_role_permission` VALUES (72, 1, 63);
INSERT INTO `upms_role_permission` VALUES (73, 1, 64);
INSERT INTO `upms_role_permission` VALUES (74, 1, 65);
INSERT INTO `upms_role_permission` VALUES (75, 1, 66);
INSERT INTO `upms_role_permission` VALUES (76, 1, 62);
INSERT INTO `upms_role_permission` VALUES (77, 1, 63);
INSERT INTO `upms_role_permission` VALUES (78, 1, 64);
INSERT INTO `upms_role_permission` VALUES (79, 1, 65);
INSERT INTO `upms_role_permission` VALUES (80, 1, 66);
INSERT INTO `upms_role_permission` VALUES (81, 1, 67);
INSERT INTO `upms_role_permission` VALUES (82, 1, 68);
INSERT INTO `upms_role_permission` VALUES (83, 1, 69);
INSERT INTO `upms_role_permission` VALUES (84, 1, 69);
INSERT INTO `upms_role_permission` VALUES (85, 1, 70);
INSERT INTO `upms_role_permission` VALUES (86, 1, 69);
INSERT INTO `upms_role_permission` VALUES (87, 1, 70);
INSERT INTO `upms_role_permission` VALUES (88, 1, 71);
INSERT INTO `upms_role_permission` VALUES (89, 1, 72);
INSERT INTO `upms_role_permission` VALUES (90, 1, 72);
INSERT INTO `upms_role_permission` VALUES (91, 1, 73);
INSERT INTO `upms_role_permission` VALUES (92, 1, 72);
INSERT INTO `upms_role_permission` VALUES (93, 1, 73);
INSERT INTO `upms_role_permission` VALUES (94, 1, 74);
INSERT INTO `upms_role_permission` VALUES (95, 1, 72);
INSERT INTO `upms_role_permission` VALUES (96, 1, 73);
INSERT INTO `upms_role_permission` VALUES (97, 1, 74);
INSERT INTO `upms_role_permission` VALUES (98, 1, 75);
INSERT INTO `upms_role_permission` VALUES (99, 1, 76);
INSERT INTO `upms_role_permission` VALUES (100, 1, 76);
INSERT INTO `upms_role_permission` VALUES (101, 1, 77);
INSERT INTO `upms_role_permission` VALUES (102, 1, 76);
INSERT INTO `upms_role_permission` VALUES (103, 1, 77);
INSERT INTO `upms_role_permission` VALUES (105, 1, 79);
INSERT INTO `upms_role_permission` VALUES (106, 1, 80);
INSERT INTO `upms_role_permission` VALUES (107, 1, 81);
INSERT INTO `upms_role_permission` VALUES (108, 1, 81);
INSERT INTO `upms_role_permission` VALUES (109, 1, 82);
INSERT INTO `upms_role_permission` VALUES (110, 1, 81);
INSERT INTO `upms_role_permission` VALUES (111, 1, 82);
INSERT INTO `upms_role_permission` VALUES (112, 1, 83);
INSERT INTO `upms_role_permission` VALUES (113, 1, 84);
INSERT INTO `upms_role_permission` VALUES (114, 1, 84);
INSERT INTO `upms_role_permission` VALUES (115, 1, 85);
INSERT INTO `upms_role_permission` VALUES (121, 1, 78);
INSERT INTO `upms_role_permission` VALUES (122, 1, 78);
INSERT INTO `upms_role_permission` VALUES (124, 1, 25);
INSERT INTO `upms_role_permission` VALUES (125, 1, 26);

-- ----------------------------
-- Table structure for upms_system
-- ----------------------------
DROP TABLE IF EXISTS `upms_system`;
CREATE TABLE `upms_system`  (
  `system_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `banner` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '背景',
  `theme` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '主题',
  `basepath` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '根目录',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态(-1:黑名单,1:正常)',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统名称',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统标题',
  `description` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '系统描述',
  `ctime` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `orders` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`system_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of upms_system
-- ----------------------------
INSERT INTO `upms_system` VALUES (1, 'zmdi zmdi-shield-security', '/resources/zheng-admin/images/zheng-upms.png', '#29A176', 'http://upms.zhangshuzheng.cn:1111', 1, 'zheng-upms-server', '权限管理系统', '用户权限管理系统（RBAC细粒度用户权限、统一后台、单点登录、会话管理）', 1, 1);
INSERT INTO `upms_system` VALUES (2, 'zmdi zmdi-wikipedia', '/resources/zheng-admin/images/zheng-cms.png', '#455EC5', 'http://cms.zhangshuzheng.cn:2222', 1, 'zheng-cms-admin', '内容管理系统', '内容管理系统（门户、博客、论坛、问答等）', 2, 2);
INSERT INTO `upms_system` VALUES (3, 'zmdi zmdi-paypal-alt', '/resources/zheng-admin/images/zheng-pay.png', '#F06292', 'http://pay.zhangshuzheng.cn:3331', 1, 'zheng-pay-admin', '支付管理系统', '支付管理系统', 3, 3);
INSERT INTO `upms_system` VALUES (4, 'zmdi zmdi-account', '/resources/zheng-admin/images/zheng-ucenter.png', '#6539B4', 'http://ucenter.zhangshuzheng.cn:4441', 1, 'zheng-ucenter-home', '用户管理系统', '用户管理系统', 4, 4);
INSERT INTO `upms_system` VALUES (5, 'zmdi zmdi-cloud', '/resources/zheng-admin/images/zheng-oss.png', '#0B8DE5', 'http://oss.zhangshuzheng.cn:7771', 1, 'zheng-oss-web', '存储管理系统', '存储管理系统', 5, 5);

-- ----------------------------
-- Table structure for upms_user
-- ----------------------------
DROP TABLE IF EXISTS `upms_user`;
CREATE TABLE `upms_user`  (
  `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '帐号',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码MD5(密码+盐)',
  `salt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '盐',
  `realname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `sex` tinyint(4) NULL DEFAULT NULL COMMENT '性别',
  `locked` tinyint(4) NULL DEFAULT NULL COMMENT '状态(0:正常,1:锁定)',
  `ctime` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of upms_user
-- ----------------------------
INSERT INTO `upms_user` VALUES (1, 'admin', '3038D9CB63B3152A79B8153FB06C02F7', '66f1b370c660445a8657bf8bf1794486', '张恕征', '/resources/zheng-admin/images/avatar.jpg', '', '469741414@qq.com', 1, 0, 1);
INSERT INTO `upms_user` VALUES (2, 'test', '285C9762F5F9046F5893F752DFAF3476', 'd2d0d03310444ad388a8b290b0fe8564', '张恕征', '/resources/zheng-admin/images/avatar.jpg', '', '469741414@qq.com', 1, 0, 1493394720495);
INSERT INTO `upms_user` VALUES (3, '22', '815A5E1142432CB63E75638A37F8F5F0', 'eacfefcd868640b095ec515a39666cff', '22', '22', '', '', 1, 0, 1531465082871);
INSERT INTO `upms_user` VALUES (4, '231', '9D249F44148DC60FE53432D03C2144D4', 'dd1a08fda1a646f084d1e94b8b538f3d', '', '', '', '', 1, 0, 1531465635951);
INSERT INTO `upms_user` VALUES (5, '321', 'F191BD3975BE178A6AAF816112EB9CAD', '62fc4634f5a245bd9f029ca60a90ad5e', '', '', '', '', 1, 0, 1531465723411);

-- ----------------------------
-- Table structure for upms_user_organization
-- ----------------------------
DROP TABLE IF EXISTS `upms_user_organization`;
CREATE TABLE `upms_user_organization`  (
  `user_organization_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户编号',
  `organization_id` int(10) UNSIGNED NOT NULL COMMENT '组织编号',
  PRIMARY KEY (`user_organization_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户组织关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of upms_user_organization
-- ----------------------------
INSERT INTO `upms_user_organization` VALUES (19, 1, 1);
INSERT INTO `upms_user_organization` VALUES (20, 1, 4);
INSERT INTO `upms_user_organization` VALUES (21, 1, 5);
INSERT INTO `upms_user_organization` VALUES (22, 1, 6);
INSERT INTO `upms_user_organization` VALUES (23, 1, 7);

-- ----------------------------
-- Table structure for upms_user_permission
-- ----------------------------
DROP TABLE IF EXISTS `upms_user_permission`;
CREATE TABLE `upms_user_permission`  (
  `user_permission_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户编号',
  `permission_id` int(10) UNSIGNED NOT NULL COMMENT '权限编号',
  `type` tinyint(4) NOT NULL COMMENT '权限类型(-1:减权限,1:增权限)',
  PRIMARY KEY (`user_permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户权限关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of upms_user_permission
-- ----------------------------
INSERT INTO `upms_user_permission` VALUES (3, 1, 22, -1);
INSERT INTO `upms_user_permission` VALUES (4, 1, 22, 1);
INSERT INTO `upms_user_permission` VALUES (5, 2, 24, -1);
INSERT INTO `upms_user_permission` VALUES (6, 2, 26, -1);
INSERT INTO `upms_user_permission` VALUES (7, 2, 27, -1);
INSERT INTO `upms_user_permission` VALUES (8, 2, 29, -1);
INSERT INTO `upms_user_permission` VALUES (9, 2, 32, -1);
INSERT INTO `upms_user_permission` VALUES (10, 2, 51, -1);
INSERT INTO `upms_user_permission` VALUES (11, 2, 48, -1);
INSERT INTO `upms_user_permission` VALUES (12, 2, 50, -1);
INSERT INTO `upms_user_permission` VALUES (13, 2, 35, -1);
INSERT INTO `upms_user_permission` VALUES (14, 2, 46, -1);
INSERT INTO `upms_user_permission` VALUES (15, 2, 37, -1);
INSERT INTO `upms_user_permission` VALUES (16, 2, 38, -1);
INSERT INTO `upms_user_permission` VALUES (17, 2, 57, -1);
INSERT INTO `upms_user_permission` VALUES (18, 2, 56, -1);
INSERT INTO `upms_user_permission` VALUES (19, 2, 59, -1);
INSERT INTO `upms_user_permission` VALUES (20, 2, 78, -1);
INSERT INTO `upms_user_permission` VALUES (21, 2, 67, -1);
INSERT INTO `upms_user_permission` VALUES (22, 2, 83, -1);
INSERT INTO `upms_user_permission` VALUES (23, 2, 71, -1);
INSERT INTO `upms_user_permission` VALUES (24, 2, 75, -1);

-- ----------------------------
-- Table structure for upms_user_role
-- ----------------------------
DROP TABLE IF EXISTS `upms_user_role`;
CREATE TABLE `upms_user_role`  (
  `user_role_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '用户编号',
  `role_id` int(10) NULL DEFAULT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户角色关联表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of upms_user_role
-- ----------------------------
INSERT INTO `upms_user_role` VALUES (4, 1, 1);
INSERT INTO `upms_user_role` VALUES (5, 1, 2);
INSERT INTO `upms_user_role` VALUES (6, 2, 1);
INSERT INTO `upms_user_role` VALUES (7, 2, 2);

SET FOREIGN_KEY_CHECKS = 1;
