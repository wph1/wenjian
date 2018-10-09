/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 50622
Source Host           : 59.110.228.223:3306
Source Database       : geekcattle

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2018-09-26 14:32:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `binding`
-- ----------------------------
DROP TABLE IF EXISTS `binding`;
CREATE TABLE `binding` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `node` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `subnet` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of binding
-- ----------------------------

-- ----------------------------
-- Table structure for `rips`
-- ----------------------------
DROP TABLE IF EXISTS `rips`;
CREATE TABLE `rips` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `net` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `domain_prefix` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gateway` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `start_ip` int(11) NOT NULL,
  `end_ip` int(11) NOT NULL,
  `global_period` int(11) NOT NULL,
  `domain_period` int(11) NOT NULL,
  `virtual_period` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of rips
-- ----------------------------

-- ----------------------------
-- Table structure for `switches`
-- ----------------------------
DROP TABLE IF EXISTS `switches`;
CREATE TABLE `switches` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of switches
-- ----------------------------

-- ----------------------------
-- Table structure for `vips`
-- ----------------------------
DROP TABLE IF EXISTS `vips`;
CREATE TABLE `vips` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `rip_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `start_ip` int(11) NOT NULL,
  `end_ip` int(11) NOT NULL,
  `vip_time` int(11) NOT NULL,
  `vdomain_time` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ID` (`rip_id`),
  CONSTRAINT `FK_ID` FOREIGN KEY (`rip_id`) REFERENCES `rips` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of vips
-- ----------------------------
INSERT INTO `vips` VALUES ('34c9d892169a4873835884611405e946', '5d5140e67aee435a8aed02814ed1f033', '1684300801', '1684301050', '1200', '1200', '2017-05-09 16:05:34');
