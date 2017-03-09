/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : order

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-03-09 08:20:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `_customer`
-- ----------------------------
DROP TABLE IF EXISTS `_customer`;
CREATE TABLE `_customer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `_name` (`_name`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _customer
-- ----------------------------
INSERT INTO `_customer` VALUES ('2', '贵州华盛农业开发有限公司');
INSERT INTO `_customer` VALUES ('1', '贵州贵品建设有限公司');

-- ----------------------------
-- Table structure for `_order`
-- ----------------------------
DROP TABLE IF EXISTS `_order`;
CREATE TABLE `_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `_customer_id` bigint(20) NOT NULL,
  `_content` longtext,
  PRIMARY KEY (`id`),
  KEY `_customer_id` (`_customer_id`),
  CONSTRAINT `_customer_id` FOREIGN KEY (`_customer_id`) REFERENCES `_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of _order
-- ----------------------------
INSERT INTO `_order` VALUES ('3', '1', '联系客户，加上了QQ');
INSERT INTO `_order` VALUES ('4', '2', '没联系上客户');
