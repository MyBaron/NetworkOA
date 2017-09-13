/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : networkoa

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2017-08-28 20:21:01
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('1', '蓝汝琪', '249790774', '123456', '5');
INSERT INTO `administrator` VALUES ('2', '测试员', '123456', '123456', '2');
INSERT INTO `administrator` VALUES ('3', '谢雅婷', '13286953018', 'sieyating998', '5');
INSERT INTO `administrator` VALUES ('4', '李启熔', '14081016', '14081016**', '2');
INSERT INTO `administrator` VALUES ('5', '黄元军', '14053024', 'myself5566', '2');
INSERT INTO `administrator` VALUES ('6', '超级无敌小辉辉', '2333', '23323323', '2');
INSERT INTO `administrator` VALUES ('7', '白二方', '15085223', '15085223', '2');

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
-- Records of assistant
-- ----------------------------
INSERT INTO `assistant` VALUES ('1', '蓝汝琪', '软件工程', '14栋1030', '12-11', '130-0559-1859', '15053030', '1');
INSERT INTO `assistant` VALUES ('2', '谢雅婷', '商务英语', '7栋203', '10-23', '132-8695-3018', '16022047', '1');
INSERT INTO `assistant` VALUES ('3', '梁秀锋', '金融工程', '15栋907', '06-07', '137-5151-3436', '14085205', '1');
INSERT INTO `assistant` VALUES ('4', '郑谢辉', '计算机科学与技术', '13栋210', '03-09', '18-12862-8114', '14052010', '1');
INSERT INTO `assistant` VALUES ('5', '李嘉琪', '物流管理', '18栋917', '12-13', '139-2214-3361', '15035081', '1');
INSERT INTO `assistant` VALUES ('6', '白二方', '金融工程', '15栋317', '02-11', '177-2770-7492', '15085223', '1');
INSERT INTO `assistant` VALUES ('7', '文迎君', '金融工程', '15栋317', '10-14', '135-3935-3328', '15085193', '1');
INSERT INTO `assistant` VALUES ('8', '刘倩', '汉语言文学', '16栋916', '08-19', '136-1303-9422', '15011187', '1');
INSERT INTO `assistant` VALUES ('9', '蔡泽嘉', '电子商务', '20栋630', '03-30', '180-2594-7535', '16033138', '1');
INSERT INTO `assistant` VALUES ('10', '刘剑影', '会计学', '19栋0813', '07-17', '137-1981-8622', '16122156', '1');
INSERT INTO `assistant` VALUES ('11', '杨子芳', '会计学', '19栋815', '10-22', '180-2703-4085', '16122645', '1');
INSERT INTO `assistant` VALUES ('12', '丁林昌', '计算机科学与技术', '20栋1022', '01-26', '183-1679-7600', '16052062', '1');
INSERT INTO `assistant` VALUES ('13', '冯辉成', '工商管理', '20栋0522', '02-10', '135-4992-9321', '16031174', '1');
INSERT INTO `assistant` VALUES ('14', '黄元军', '软件工程', '', '', '', '', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of associatelog
-- ----------------------------
INSERT INTO `associatelog` VALUES ('1', '1', '测试', '2017-05-15 22:09:36', '0');
INSERT INTO `associatelog` VALUES ('2', '1', '工作日志', '2017-06-02 12:34:43', '0');
INSERT INTO `associatelog` VALUES ('3', '1', '更改数据测试', '2017-05-15 16:33:11', '0');
INSERT INTO `associatelog` VALUES ('4', '1', '修改数据', '2017-05-15 15:33:39', '0');
INSERT INTO `associatelog` VALUES ('5', '1', '艺设老师电脑需要抬回来，报告简老师', '2017-05-15 16:58:59', '1');
INSERT INTO `associatelog` VALUES ('6', '1', '存入数据', '2017-05-15 21:08:15', '0');
INSERT INTO `associatelog` VALUES ('7', '2', '测试Controller层', '2017-05-15 17:50:23', '1');
INSERT INTO `associatelog` VALUES ('8', '2', '前端存入数据', '2017-06-02 12:32:46', '0');
INSERT INTO `associatelog` VALUES ('9', '2', '测试修改数据 ', '2017-05-15 22:13:15', '0');
INSERT INTO `associatelog` VALUES ('10', '1', '没反应？ OK》', '2017-05-15 22:26:25', '1');
INSERT INTO `associatelog` VALUES ('11', '3', 'ok 终于成功 next step！！！！ \r\n感觉还行 不错', '2017-06-04 13:46:40', '0');
INSERT INTO `associatelog` VALUES ('12', '3', 'ok 终于成功 next step！！！！', '2017-05-15 22:20:13', '1');
INSERT INTO `associatelog` VALUES ('13', '3', '不是接力棒？？？？', '2017-05-15 22:23:24', '1');
INSERT INTO `associatelog` VALUES ('14', '3', 'test  修改test', '2017-05-15 22:27:05', '0');
INSERT INTO `associatelog` VALUES ('15', '1', '还是改为交接先。', '2017-05-15 22:27:00', '1');
INSERT INTO `associatelog` VALUES ('16', '1', '等全部做完，再想一套好听的名字', '2017-05-15 22:27:17', '1');
INSERT INTO `associatelog` VALUES ('17', '3', 'ok 测试无误', '2017-06-01 20:25:26', '0');
INSERT INTO `associatelog` VALUES ('18', '3', '请明早的助理去外语系办公室布电话线', '2017-05-15 22:28:17', '0');
INSERT INTO `associatelog` VALUES ('19', '3', 'time to sleep I need to shutdown my laptop', '2017-06-02 00:13:19', '1');
INSERT INTO `associatelog` VALUES ('20', '3', '睡觉了 明天再找信息给你', '2017-06-02 00:14:19', '1');
INSERT INTO `associatelog` VALUES ('21', '3', '现任助理名单已全部编辑完成，需找前两届助理资料完成历届助理名单', '2017-06-04 13:43:45', '1');
INSERT INTO `associatelog` VALUES ('22', '3', '完成签到表  ！', '2017-06-13 18:16:47', '0');
INSERT INTO `associatelog` VALUES ('23', '1', '<script type=\"text/javascript\">alert(1)；</script>', '2017-06-05 18:35:00', '0');
INSERT INTO `associatelog` VALUES ('24', '1', '<script type=\"text/javascript\">alert(1);</script>', '2017-06-05 18:35:56', '0');
INSERT INTO `associatelog` VALUES ('25', '1', '<script type=\"text/javascript\">alert(1);</script>', '2017-06-05 18:35:34', '0');
INSERT INTO `associatelog` VALUES ('26', '1', '</th><script type=\"text/javascript\">alert(1);</script>', '2017-06-05 18:37:55', '0');
INSERT INTO `associatelog` VALUES ('27', '1', '</th><script type=\"text/javascript\">alert(1);</script><th>', '2017-06-05 18:39:04', '0');
INSERT INTO `associatelog` VALUES ('28', '1', '</tbody></tr></th><script type=\"text/javascript\">alert(1);</script><!--', '2017-06-05 18:40:43', '0');
INSERT INTO `associatelog` VALUES ('29', '2', 'khkhkhkj', '2017-06-08 18:46:13', '1');
INSERT INTO `associatelog` VALUES ('30', '7', '行政单1025ip问题尚未解决，请下班助理查看', '2017-06-13 18:17:38', '1');

-- ----------------------------
-- Table structure for dd
-- ----------------------------
DROP TABLE IF EXISTS `dd`;
CREATE TABLE `dd` (
  `ddd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dd
-- ----------------------------
INSERT INTO `dd` VALUES ('sdf');

-- ----------------------------
-- Table structure for location
-- ----------------------------
DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `up_id` int(11) DEFAULT NULL,
  `text` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of location
-- ----------------------------
INSERT INTO `location` VALUES ('1', null, '网络中心A206');
INSERT INTO `location` VALUES ('2', '1', '1号柜');
INSERT INTO `location` VALUES ('3', null, 'a504');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sign
-- ----------------------------
INSERT INTO `sign` VALUES ('6', '蓝汝琪', '1', '2017-06-04', '3:30', '6:00', '2017-06-05 15:59:19', '2.5', '蓝汝琪');
INSERT INTO `sign` VALUES ('7', '蓝汝琪', '1', '2017-06-03', '2:00', '4:00', '2017-06-05 01:52:11', '2.0', '蓝汝琪');
INSERT INTO `sign` VALUES ('8', '蓝汝琪', '1', '2017-06-05', '4:00', '6:00', '2017-06-05 01:52:16', '2.0', '蓝汝琪');
INSERT INTO `sign` VALUES ('9', '谢雅婷', '2', '2017-06-06', '4:00', '6:00', '2017-06-05 11:05:50', '2.0', '蓝汝琪');
INSERT INTO `sign` VALUES ('10', '蓝汝琪', '1', '2017-06-05', '8:00', '21:00', '2017-06-05 12:18:35', '13.0', '蓝汝琪');
INSERT INTO `sign` VALUES ('11', '蓝汝琪', '1', '2017-06-05', '8:00', '12:00', '2017-06-05 15:29:38', '4.0', '测试员');
INSERT INTO `sign` VALUES ('12', '蓝汝琪', '1', '2017-06-05', '14:00', '18:00', '2017-06-05 15:29:55', '4.0', '测试员');
INSERT INTO `sign` VALUES ('13', '谢雅婷', '2', '2017-06-05', '14:30', '18:00', '2017-06-05 17:50:54', '3.5', '谢雅婷');
INSERT INTO `sign` VALUES ('14', '梁秀锋', '3', '2017-06-05', '8:00', '21:00', '2017-06-05 17:51:48', '13.0', '谢雅婷');
INSERT INTO `sign` VALUES ('15', '谢雅婷', '2', '2017-06-05', '8:00', '11:30', '2017-06-05 17:57:22', '3.5', '谢雅婷');
INSERT INTO `sign` VALUES ('16', '谢雅婷', '2', '2017-06-05', '21:00', '22:00', '2017-06-05 23:11:37', '1.0', '谢雅婷');
INSERT INTO `sign` VALUES ('17', '蓝汝琪', '1', '2017-06-07', '8:00', '10:00', '2017-06-07 14:08:04', '2.0', '蓝汝琪');
INSERT INTO `sign` VALUES ('18', '蓝汝琪', '1', '2017-06-07', '8:00', '19:00', '2017-06-07 18:46:14', '11.0', '蓝汝琪');
INSERT INTO `sign` VALUES ('19', '蓝汝琪', '1', '2017-06-07', '8:00', '21:00', '2017-06-07 21:37:55', '13.0', '蓝汝琪');
INSERT INTO `sign` VALUES ('20', '蓝汝琪', '1', '2017-06-09', '8:00', '9:00', '2017-06-09 23:19:08', '1.0', '蓝汝琪');
INSERT INTO `sign` VALUES ('21', '蓝汝琪', '1', '2017-06-10', '8:00', '12:00', '2017-06-10 16:48:47', '4.0', '蓝汝琪');
INSERT INTO `sign` VALUES ('22', '蓝汝琪', '1', '2017-06-13', '15:00', '16:00', '2017-06-13 17:07:28', '1.0', '蓝汝琪');
INSERT INTO `sign` VALUES ('23', '白二方', '6', '2017-06-13', '14:30', '18:00', '2017-06-13 18:03:19', '3.5', '白二方');
INSERT INTO `sign` VALUES ('24', '白二方', '6', '2017-06-13', '8:00', '22:00', '2017-06-13 23:47:59', '14.0', '测试员');
INSERT INTO `sign` VALUES ('25', '蓝汝琪', '1', '2017-07-20', '8:00', '22:00', '2017-07-20 17:53:59', '14.0', '测试员');

-- ----------------------------
-- Table structure for te_repair
-- ----------------------------
DROP TABLE IF EXISTS `te_repair`;
CREATE TABLE `te_repair` (
  `te_repair_id` int(5) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `te_repair_name` varchar(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `te_repair_address` varchar(100) DEFAULT NULL,
  `te_repair_time` datetime DEFAULT NULL,
  `te_repair_phone` varchar(20) DEFAULT NULL,
  `te_repair_type` varchar(20) DEFAULT NULL,
  `te_repair_question` varchar(255) DEFAULT NULL,
  `te_repair_message` varchar(200) DEFAULT NULL,
  `is_deal` int(3) DEFAULT '0' COMMENT '0 未处理 1 正在处理 2 处理完成',
  `appraise` int(3) DEFAULT '0' COMMENT '评价 1 非常满意 2 满意 3 一般 0 未评价',
  `suggest` varchar(200) DEFAULT NULL,
  `sign_user` varchar(20) DEFAULT NULL,
  `principal` varchar(20) DEFAULT NULL COMMENT '负责人',
  `information` varchar(1000) DEFAULT NULL,
  `summarize` varchar(500) DEFAULT NULL,
  `assistant` varchar(20) DEFAULT NULL,
  `assistant_id` int(4) DEFAULT NULL,
  `finished_time` timestamp NULL DEFAULT NULL,
  `bill_id` varchar(100) DEFAULT '' COMMENT '表单ID，可根据该id获取到表单，非必须',
  PRIMARY KEY (`te_repair_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of te_repair
-- ----------------------------
INSERT INTO `te_repair` VALUES ('00001', '小明', '0', '实验楼2a206', '2017-06-06 18:55:00', '133333333', '电脑问题', '电脑黑屏了', '维修前打老师电话', '1', '0', null, null, '蓝汝琪', '重新插内存条', '', '', null, null, '');
INSERT INTO `te_repair` VALUES ('00002', '小李', '0', '实验楼2a206', '2017-06-10 14:12:00', '122222222', '打印机', '无法连接打印机', '    下午6点到', '2', '0', null, null, '蓝汝琪', '1.重装驱动个失败', '就是缺少驱动或者驱动有问题', '蓝汝琪', '1', '2017-06-11 02:03:21', '');
INSERT INTO `te_repair` VALUES ('00003', '李四', '0', 'b403', '2017-06-07 09:00:00', '123456122', '其他', '布置网线', '3台电脑', '2', '1', '完善登录系统', '小明', '蓝汝琪', '1拉网线', '申请了一个交换机', '蓝汝琪', '1', '2017-06-11 02:03:21', '');
INSERT INTO `te_repair` VALUES ('00004', '测试员', '0', 'c205', '2017-06-11 15:18:22', '1452655325', '其他', '安装office', '去前打电话噢', '2', '1', '测试', '开心', null, null, null, null, null, null, '');
INSERT INTO `te_repair` VALUES ('00005', '测试一下', '0', 'a207', '2017-06-11 16:00:18', '1300559185', '电脑问题', '电脑一直重启', '', '0', '0', null, null, null, null, null, null, null, null, '');
INSERT INTO `te_repair` VALUES ('00006', '小明同学', '0', '', '2017-06-11 16:15:44', '', '电脑问题', '无法上网', '', '0', '0', null, null, null, null, null, null, null, null, '');
INSERT INTO `te_repair` VALUES ('00007', '  小明同学', '0', 'B207', '2017-06-11 16:17:56', '    ', '电脑问题', null, '    ', '1', '0', null, null, '蓝汝琪', null, null, null, null, null, '');
INSERT INTO `te_repair` VALUES ('00008', '蓝汝琪', '0', '美国', '2017-08-19 16:35:31', '13030303030', '电脑问题', '电脑冒烟', '带灭火器', '0', '0', null, null, null, null, null, null, null, null, '12343124');
INSERT INTO `te_repair` VALUES ('00009', '蓝蓝', '0', '美国', '2017-08-21 23:16:25', '1212221', '电脑问题', '冒烟', '就', '0', '0', null, null, null, null, null, null, null, null, '1503328584911java.util.Random@5475608cjava.util.Random@5475608c');
INSERT INTO `te_repair` VALUES ('00010', '蓝蓝', '0', '美国', '2017-08-21 23:43:47', '1212221', '电脑问题', '冒烟', '就', '0', '0', null, null, null, null, null, null, null, null, '1503330227135java.util.Random@333c732cjava.util.Random@333c732c');
INSERT INTO `te_repair` VALUES ('00011', '汝琪', '0', '宇宙', '2017-08-22 18:53:30', '1245154', '电脑问题', '不知', '地方', '0', '0', null, null, null, null, null, null, null, null, '1503399210134java.util.Random@35b66506java.util.Random@35b66506');

-- ----------------------------
-- Table structure for toollist
-- ----------------------------
DROP TABLE IF EXISTS `toollist`;
CREATE TABLE `toollist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(100) DEFAULT NULL,
  `sum` int(11) NOT NULL,
  `remark` varchar(150) DEFAULT NULL,
  `make_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `re_sum` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toollist
-- ----------------------------

-- ----------------------------
-- Table structure for toollistold
-- ----------------------------
DROP TABLE IF EXISTS `toollistold`;
CREATE TABLE `toollistold` (
  `tool_id` int(11) NOT NULL AUTO_INCREMENT,
  `tool_name` varchar(20) DEFAULT NULL,
  `tool_sum` int(11) DEFAULT '1',
  `tool_principal` varchar(20) DEFAULT NULL,
  `tool_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`tool_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of toollistold
-- ----------------------------
INSERT INTO `toollistold` VALUES ('1', '工具包', '4', '简老师', '2017-05-16 11:50:51');
INSERT INTO `toollistold` VALUES ('2', '苹果机', '2', '简老师', '2017-06-01 21:20:40');

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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worklog
-- ----------------------------
INSERT INTO `worklog` VALUES ('1', '1', '1.什么都没做', '2017-05-14 23:40:25');
INSERT INTO `worklog` VALUES ('2', '1', '好晕', '2017-05-15 00:38:48');
INSERT INTO `worklog` VALUES ('3', '1', '很绝望', '2017-05-15 00:39:04');
INSERT INTO `worklog` VALUES ('4', '1', '很绝望', '2017-05-15 00:39:04');
INSERT INTO `worklog` VALUES ('5', '1', '很绝望', '2017-05-15 00:39:09');
INSERT INTO `worklog` VALUES ('6', '1', 'OK', '2017-05-15 01:24:16');
INSERT INTO `worklog` VALUES ('7', '1', '完成输入数据', '2017-05-15 11:55:01');
INSERT INTO `worklog` VALUES ('8', '1', '<p>写工作日志吧，少年~\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '2017-05-15 12:33:45');
INSERT INTO `worklog` VALUES ('9', '1', '<p>哇，为什么标签不识别啊，我疯了噢</p><p>你妹 &nbsp; &nbsp;</p>', '2017-05-15 12:34:36');
INSERT INTO `worklog` VALUES ('10', '1', '<p>谢雅婷，傻逼 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '2017-05-15 13:46:39');
INSERT INTO `worklog` VALUES ('11', '1', '<p>dd</p>', '2017-05-15 13:50:29');
INSERT INTO `worklog` VALUES ('12', '2', '<p>同步在线测试！~ &nbsp;</p>', '2017-05-15 13:57:55');
INSERT INTO `worklog` VALUES ('13', '3', '<p><span style=\"text-decoration: underline;\"><em><strong>test</strong></em></span></p>', '2017-05-15 14:02:11');
INSERT INTO `worklog` VALUES ('14', '1', '<p>谢雅婷</p><p>&nbsp;1.测试功能 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p><p>&nbsp;2.压力测试</p>', '2017-05-15 14:21:51');
INSERT INTO `worklog` VALUES ('15', '3', '<p>写工作日志吧，少年~\r\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p>楼上这玩意不能自己删？</p>', '2017-05-15 22:05:17');
INSERT INTO `worklog` VALUES ('16', '1', '<p>不能自己删噢~可以不显示他<br/></p>', '2017-05-15 22:09:13');
INSERT INTO `worklog` VALUES ('17', '3', '<p>手机点击交接就是返回首页啊</p>', '2017-05-15 22:11:36');
INSERT INTO `worklog` VALUES ('18', '1', '<p>??????<br/></p>', '2017-06-01 21:02:19');
INSERT INTO `worklog` VALUES ('19', '2', '<p>?????<br/></p>', '2017-06-01 21:05:54');
INSERT INTO `worklog` VALUES ('20', '2', '<p>还是有乱码？？？ &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', '2017-06-01 21:20:18');
INSERT INTO `worklog` VALUES ('21', '2', '<p>&nbsp; &nbsp; &nbsp; &nbsp; 啊啊啊啊啊</p>', '2017-06-02 00:01:21');
INSERT INTO `worklog` VALUES ('22', '3', '<p>加油吧 老衲要睡觉了&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', '2017-06-02 00:12:00');
INSERT INTO `worklog` VALUES ('23', '1', '<p>&nbsp; 今天完善一下各个模块的细节！～</p>', '2017-06-02 10:26:30');
INSERT INTO `worklog` VALUES ('24', '1', '<p>1.编写助理名单模块。&nbsp;&nbsp;</p>', '2017-06-03 15:40:54');
INSERT INTO `worklog` VALUES ('25', '3', '<p>try again</p>', '2017-06-03 21:25:38');
INSERT INTO `worklog` VALUES ('26', '4', '<p>启熔来巡山啦</p>', '2017-06-04 13:26:48');
INSERT INTO `worklog` VALUES ('27', '3', '<p>welcome &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <br/></p>', '2017-06-04 13:41:38');
INSERT INTO `worklog` VALUES ('28', '5', '<p>今天天气不错啊！ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>', '2017-06-04 14:40:25');
INSERT INTO `worklog` VALUES ('29', '3', '<p>热炸&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <br/></p>', '2017-06-05 17:54:41');
INSERT INTO `worklog` VALUES ('37', '1', '<p>&lt;script type=&quot;text/javascript&quot;&gt;console.log(&quot;!!!&quot;);&lt;/script&gt;</p>', '2017-06-05 18:23:38');
INSERT INTO `worklog` VALUES ('38', '1', '<p>&lt;script type=&quot;text/javascript&quot;&gt;console.log(&quot;!!!&quot;);&lt;/script&gt;</p>', '2017-06-05 18:23:56');
INSERT INTO `worklog` VALUES ('39', '3', '<p>？？？？</p>', '2017-06-06 23:39:28');
INSERT INTO `worklog` VALUES ('40', '3', '<p>？？？？？？？ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <br/></p>', '2017-06-06 23:39:52');
INSERT INTO `worklog` VALUES ('41', '3', '<p>123</p>', '2017-06-06 23:40:18');
INSERT INTO `worklog` VALUES ('42', '1', '<p>史蒂芬孙</p>', '2017-06-06 23:40:35');
INSERT INTO `worklog` VALUES ('43', '3', '<p>1111111&nbsp; &nbsp;&nbsp; <br/></p>', '2017-06-06 23:42:37');
INSERT INTO `worklog` VALUES ('44', '3', '<p>1111111&nbsp; &nbsp;&nbsp; <br/></p>', '2017-06-06 23:43:05');
INSERT INTO `worklog` VALUES ('45', '3', '<p>123 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <br/></p>', '2017-06-06 23:43:17');
INSERT INTO `worklog` VALUES ('46', '3', '<p>11111 &nbsp; &nbsp; &nbsp;&nbsp; <br/></p>', '2017-06-06 23:43:37');
INSERT INTO `worklog` VALUES ('47', '3', '<p>1223&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <br/></p>', '2017-06-06 23:44:23');
INSERT INTO `worklog` VALUES ('48', '3', '<p>test</p>', '2017-06-06 23:46:49');
INSERT INTO `worklog` VALUES ('49', '3', '<p>test</p>', '2017-06-06 23:47:10');
INSERT INTO `worklog` VALUES ('50', '3', '<p>test&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <br/></p>', '2017-06-06 23:47:34');
INSERT INTO `worklog` VALUES ('51', '3', '<p>test123</p>', '2017-06-06 23:48:58');
INSERT INTO `worklog` VALUES ('52', '1', '<p>到底怎么了<br/></p>', '2017-06-06 23:49:43');
INSERT INTO `worklog` VALUES ('53', '1', '<p>工作日志显示错误已经修复 &nbsp;</p>', '2017-06-07 01:12:33');
INSERT INTO `worklog` VALUES ('57', '7', '<p><br/></p><ol class=\" list-paddingleft-2\" style=\"list-style-type: decimal;\"><li><p>刘倩去f203调试设备 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></li><li><p>刘剑影去f403调试设备</p></li><li><p>二方去中文系重装系统，已完成待签名</p></li><li><p>二方去经贸，经贸系b307处理打印机连接不了的问题，已完成<br/></p></li></ol>', '2017-06-13 18:15:10');
SET FOREIGN_KEY_CHECKS=1;
