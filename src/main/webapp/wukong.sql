/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : wukong

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-07-24 16:54:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '-1',
  `content` longtext,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `picpath` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '21421', '2', '2414', '2018-07-20 13:32:59', 'e6db2988-ba68-4a4b-b692-6b0b7b98d88aKoala.jpg');
INSERT INTO `article` VALUES ('2', '我为什么这么帅', '2', '为什么', '2018-07-20 14:04:31', '699c3e8b-cc2c-4d60-89ce-fd29a384e0b2Koala.jpg');
INSERT INTO `article` VALUES ('3', '没毛病，老铁', '2', '我是管理员 想怎么搞怎么搞', '2018-07-20 14:05:27', '');
INSERT INTO `article` VALUES ('4', '13513', '2', '534342', '2018-07-24 14:11:25', 'undefined');
INSERT INTO `article` VALUES ('5', '24524', '2', '354343', '2018-07-24 14:39:00', 'undefined');
INSERT INTO `article` VALUES ('6', '242354', '2', '354354', '2018-07-24 14:41:23', 'undefined');
INSERT INTO `article` VALUES ('7', '37524', '2', '3545', '2018-07-24 14:41:51', 'undefined');
INSERT INTO `article` VALUES ('8', '15162', '5', '15616', '2018-07-24 15:05:32', 'undefined');
INSERT INTO `article` VALUES ('9', '这是一个提问', '5', '这是一个提问', '2018-07-24 16:38:58', '4f656802-5444-40ad-a5b2-161c1f0f1584Koala.jpg');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '-1',
  `articleid` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('1', '2', '1');
INSERT INTO `collection` VALUES ('2', '2', '2');
INSERT INTO `collection` VALUES ('3', '2', '2');
INSERT INTO `collection` VALUES ('5', '2', '3');
INSERT INTO `collection` VALUES ('6', '4', '3');
INSERT INTO `collection` VALUES ('7', '5', '3');

-- ----------------------------
-- Table structure for commentinfo
-- ----------------------------
DROP TABLE IF EXISTS `commentinfo`;
CREATE TABLE `commentinfo` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '-1',
  `content` longtext,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `chtml` longtext,
  `articleid` int(11) NOT NULL DEFAULT '-1',
  `fabulous` int(11) DEFAULT '0',
  `tread` int(11) DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commentinfo
-- ----------------------------
INSERT INTO `commentinfo` VALUES ('1', '2', '## h3', '2018-07-20 16:13:41', '<h2 id=\"h2-h3\"><a name=\"h3\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>h3</h2>', '1', '0', '0');
INSERT INTO `commentinfo` VALUES ('2', '4', '王五测试回答', '2018-07-23 13:41:10', '<p>王五测试回答</p>\r\n', '3', '0', '0');
INSERT INTO `commentinfo` VALUES ('3', '2', '张三的测试回答', '2018-07-23 13:50:20', '<p>张三的测试回答</p>\r\n', '3', '0', '0');
INSERT INTO `commentinfo` VALUES ('4', '5', '李四的测试回答', '2018-07-23 13:51:01', '<p>李四的测试回答</p>\r\n', '3', '0', '0');
INSERT INTO `commentinfo` VALUES ('5', '2', 'aflkjaga', '2018-07-24 14:11:47', '<p>aflkjaga</p>\r\n', '4', '0', '0');
INSERT INTO `commentinfo` VALUES ('6', '5', '[object HTMLTextAreaElement]', '2018-07-24 15:20:16', '[object HTMLTextAreaElement]', '1', '0', '0');
INSERT INTO `commentinfo` VALUES ('7', '5', '[object HTMLTextAreaElement]', '2018-07-24 15:40:23', '[object HTMLTextAreaElement]', '8', '0', '0');
INSERT INTO `commentinfo` VALUES ('8', '5', '[object HTMLTextAreaElement]', '2018-07-24 15:41:15', '[object HTMLTextAreaElement]', '8', '0', '0');
INSERT INTO `commentinfo` VALUES ('9', '5', '[object HTMLTextAreaElement]', '2018-07-24 15:46:20', '[object HTMLTextAreaElement]', '8', '0', '0');
INSERT INTO `commentinfo` VALUES ('10', '5', '[object HTMLTextAreaElement]', '2018-07-24 15:47:32', '[object HTMLTextAreaElement]', '8', '0', '0');
INSERT INTO `commentinfo` VALUES ('11', '5', '[object HTMLTextAreaElement]', '2018-07-24 15:48:10', '[object HTMLTextAreaElement]', '8', '0', '0');
INSERT INTO `commentinfo` VALUES ('12', '5', '321421', '2018-07-24 15:48:26', '<p>321421</p>\n', '8', '0', '0');
INSERT INTO `commentinfo` VALUES ('13', '5', '312142', '2018-07-24 15:49:50', '<p>312142</p>\n', '7', '0', '0');
INSERT INTO `commentinfo` VALUES ('14', '5', '312142', '2018-07-24 15:50:32', '<p>312142</p>\n', '7', '0', '0');
INSERT INTO `commentinfo` VALUES ('15', '5', '4214', '2018-07-24 15:53:25', '<p>4214</p>\n', '7', '0', '0');
INSERT INTO `commentinfo` VALUES ('16', '5', '42114221', '2018-07-24 15:53:50', '<p>42114221</p>\n', '7', '0', '0');
INSERT INTO `commentinfo` VALUES ('17', '5', '123456', '2018-07-24 15:54:49', '<p>123456</p>\n', '7', '0', '0');
INSERT INTO `commentinfo` VALUES ('18', '5', '421421', '2018-07-24 15:57:44', '<p>421421</p>\n', '7', '0', '0');
INSERT INTO `commentinfo` VALUES ('19', '5', '4214312', '2018-07-24 15:58:15', '<p>4214312</p>\n', '7', '0', '0');
INSERT INTO `commentinfo` VALUES ('20', '5', '### h3', '2018-07-24 16:39:42', '<h3 id=\"h3-h3\"><a name=\"h3\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>h3</h3>', '9', '0', '0');

-- ----------------------------
-- Table structure for follower
-- ----------------------------
DROP TABLE IF EXISTS `follower`;
CREATE TABLE `follower` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `followid` int(11) NOT NULL DEFAULT '-1',
  `followedid` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of follower
-- ----------------------------
INSERT INTO `follower` VALUES ('12', '5', '4');
INSERT INTO `follower` VALUES ('17', '2', '4');

-- ----------------------------
-- Table structure for likeorunlike
-- ----------------------------
DROP TABLE IF EXISTS `likeorunlike`;
CREATE TABLE `likeorunlike` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `commentid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `islike` int(11) NOT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of likeorunlike
-- ----------------------------
INSERT INTO `likeorunlike` VALUES ('35', '1', '2', '1');
INSERT INTO `likeorunlike` VALUES ('37', '3', '2', '0');
INSERT INTO `likeorunlike` VALUES ('39', '2', '2', '0');
INSERT INTO `likeorunlike` VALUES ('41', '1', '5', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `pwd` varchar(50) NOT NULL DEFAULT '',
  `picpath` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `introduction` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'zhangsan 12', '123456', '9e69b392-f8e8-49eb-85ae-24a9e61ae138Jellyfish.jpg', '1151');
INSERT INTO `user` VALUES ('2', 'zhangsanzhang', '123456', 'default.jpg', '23');
INSERT INTO `user` VALUES ('3', 'lisi', '123456', 'default.jpg', '');
INSERT INTO `user` VALUES ('4', 'wangwu', '123456', 'default.jpg', '');
INSERT INTO `user` VALUES ('5', 'lisi1', '123456', '1ffa4796-5b14-473a-a174-be738f929146Penguins.jpg', '我是lisi修改 321');
INSERT INTO `user` VALUES ('6', 'lisi', '123456', 'default.jpg', '');
