/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : networkoa

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-06-07 23:52:12
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for assistant
-- ----------------------------
DROP TABLE IF EXISTS `assistant`;
CREATE TABLE `assistant` (
  `assistant_id` int(11) NOT NULL AUTO_INCREMENT,
  `assistant_name` varchar(20) NOT NULL,
  `assistant_profession` varchar(20) DEFAULT NULL,
  `assistant_grade` varchar(10) DEFAULT NULL,
  `assistant_birthday` varchar(40) DEFAULT NULL,
  `assistant_phone` varchar(30) DEFAULT NULL,
  `assistant_number` varchar(30) DEFAULT NULL,
  `assistant_working` int(11) DEFAULT '1',
  PRIMARY KEY (`assistant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dd
-- ----------------------------
DROP TABLE IF EXISTS `dd`;
CREATE TABLE `dd` (
  `ddd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for sign
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign` (
  `sign_id` int(11) NOT NULL AUTO_INCREMENT,
  `myname` varchar(20) NOT NULL,
  `assistant_id` int(11) NOT NULL,
  `sign_time` date DEFAULT NULL,
  `sign_begin` varchar(10) DEFAULT NULL,
  `sign_end` varchar(10) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `longtime` double(3,1) unsigned zerofill NOT NULL,
  `account_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
SET FOREIGN_KEY_CHECKS=1;
