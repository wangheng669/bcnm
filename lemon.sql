/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : lemon

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 15/04/2018 14:03:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公司名称',
  `join_tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '加盟专线',
  `company_tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '24小时专线',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '公司地址',
  `records` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '备案号',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '关键字',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '描述',
  `create_time` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES (1, '山东泰盈餐饮管理有限公司', '4001533001', '13705311728', '山东省济南市历下区鲁商盛景广场B座801室', '鲁ICP备11028001号', '百草柠檬', '百草柠檬', 1521597963, 1523757967);

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `create_time` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (4, 'admin', 'f9e2679ac9189b0018fb73eb4d1e52ed', 1522118427, 1523772079);

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `banner_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '缩略图',
  `banner_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '链接',
  `create_time` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (9, '/public/uploads/20180412\\8f79024b47cd558439f22e8016e48a89.png', 'http://www.baidu.com', 1523503220, 1523503220);
INSERT INTO `banner` VALUES (8, '/public/uploads/20180412\\f0c0db35522963cb7892e0bbf4e6b417.png', 'http://www.baidu.com', 1523503152, 1523503152);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '分类名称',
  `create_time` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '冰爽奶昔', 1521530825, 1521530825);
INSERT INTO `category` VALUES (2, '魅力柠檬', 1521530852, 1521530852);
INSERT INTO `category` VALUES (3, '果然遇到茶', 1521530866, 1521530866);
INSERT INTO `category` VALUES (4, '鲜活果汁', 1521530876, 1521530876);
INSERT INTO `category` VALUES (5, '奶香鲜茶', 1521530889, 1521530889);

-- ----------------------------
-- Table structure for column
-- ----------------------------
DROP TABLE IF EXISTS `column`;
CREATE TABLE `column`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `column_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '栏目名称',
  `column_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '栏目链接',
  `create_time` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of column
-- ----------------------------
INSERT INTO `column` VALUES (9, '关于百草', '/about', 1521526182, 1523505174);
INSERT INTO `column` VALUES (10, '联系百草', '/contact', 1521609248, 1521619443);
INSERT INTO `column` VALUES (3, '加盟优势', '/advantage', 1521524371, 1521619448);
INSERT INTO `column` VALUES (4, '产品展示', '/product', 1521524377, 1521619455);
INSERT INTO `column` VALUES (5, '利润分析', '/analyze', 1521524387, 1521619462);
INSERT INTO `column` VALUES (6, '加盟流程', '/flow', 1521524399, 1521619470);
INSERT INTO `column` VALUES (7, '新闻中心', '/news', 1521524405, 1521619475);

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '名字',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '联系电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '联系地址',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '留言内容',
  `create_time` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for join
-- ----------------------------
DROP TABLE IF EXISTS `join`;
CREATE TABLE `join`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '联系人',
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '电话',
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '信息备注',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '邮箱',
  `create_time` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of join
-- ----------------------------
INSERT INTO `join` VALUES (2, '王恒', '13573172302', '哈哈哈哈哈', '2658803113@qq.com', 1521604575, 1521604575);
INSERT INTO `join` VALUES (3, '王恒', '13573172302', '哈哈哈', '2658803113@qq.com', 1521619989, 1521619989);
INSERT INTO `join` VALUES (8, '王恒', '13573172302', '哈哈哈哈和', '2658803113@qq.com', 1523504118, 1523504118);
INSERT INTO `join` VALUES (7, '王恒', '13573172302', '哈哈哈哈', '2658803113@qq.com', 1523352811, 1523352811);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `new_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '新闻标题',
  `new_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '新闻描述',
  `new_content` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '新闻内容',
  `new_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '新闻图片',
  `create_time` int(10) UNSIGNED NOT NULL COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (10, '测试', '测试测试测试测试测试', '&lt;p&gt;测试测试测试测试测试测试测试&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/public/Ueditor/php/upload/image/20180412/1523511390.jpg&quot; title=&quot;1523511390.jpg&quot; alt=&quot;tx2.jpg&quot;/&gt;&lt;/p&gt;', '/public/uploads/20180412\\51f422c2fbfe8b087299bebe44653198.jpg', 1523511392, 1523511392);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(10) UNSIGNED NOT NULL COMMENT '所属分类',
  `product_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '产品图片',
  `product_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '产品名称',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `update_time` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (4, 1, '/public//uploads/20180412\\62c88292e7a4a635005b61d3e5fd9631.jpg', '黄金波霸奶茶', 1521535185, 1523503797);
INSERT INTO `product` VALUES (5, 2, '/public//uploads/20180412\\fab94cb8f2c5bb3dd01eb408a90c7087.png', '哈哈哈哈', 1521617246, 1523503810);
INSERT INTO `product` VALUES (6, 3, '/public//uploads/20180412\\9ff9419a1126c0782f84460ef75c7c1c.jpg', '鲜芋奶茶', 1521679914, 1523503823);
INSERT INTO `product` VALUES (7, 4, '/public//uploads/20180412\\96d7ea3d3c4403502dff11177fc87ed9.jpg', '霸气芒椰', 1521679940, 1523503831);
INSERT INTO `product` VALUES (8, 5, '/public//uploads/20180412\\d416e9edc0cf08898eaa6f16253e3624.jpg', '蓝色夏威夷', 1521680819, 1523503842);

SET FOREIGN_KEY_CHECKS = 1;
