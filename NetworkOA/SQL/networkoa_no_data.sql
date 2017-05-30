/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : networkoa

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-05-30 13:37:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `administrator_id` int(11) NOT NULL AUTO_INCREMENT,
  `administrator_name` varchar(20) NOT NULL,
  `administrator_account` varchar(20) NOT NULL,
  `administrator_password` varchar(20) NOT NULL,
  `administrator_right` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`administrator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for associatelog
-- ----------------------------
DROP TABLE IF EXISTS `associatelog`;
CREATE TABLE `associatelog` (
  `associate_id` int(11) NOT NULL AUTO_INCREMENT,
  `administrator_id` int(11) DEFAULT NULL,
  `associate_text` varchar(400) DEFAULT NULL,
  `associate_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `associate_open` int(11) DEFAULT '1',
  PRIMARY KEY (`associate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for toollist
-- ----------------------------
DROP TABLE IF EXISTS `toollist`;
CREATE TABLE `toollist` (
  `tool_id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_name` varchar(20) DEFAULT NULL,
  `tool_sum` int(11) DEFAULT '1',
  `tool_principal` varchar(20) DEFAULT NULL,
  `tool_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tool_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for worklog
-- ----------------------------
DROP TABLE IF EXISTS `worklog`;
CREATE TABLE `worklog` (
  `work_id` int(11) NOT NULL AUTO_INCREMENT,
  `administrator_id` int(11) DEFAULT NULL,
  `work_text` varchar(400) DEFAULT NULL,
  `work_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`work_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;
