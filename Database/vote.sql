/*
MySQL Data Transfer
Source Host: localhost
Source Database: vote
Target Host: localhost
Target Database: vote

*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(5) NOT NULL auto_increment,
  `bookid` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `id` (`id`,`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `ID_topik` int(50) NOT NULL auto_increment,
  `nama` varchar(255) collate latin1_general_ci NOT NULL,
  `email` varchar(255) collate latin1_general_ci NOT NULL,
  `topik` varchar(255) collate latin1_general_ci NOT NULL,
  `isi` text collate latin1_general_ci NOT NULL,
  `ID_replay` int(50) NOT NULL default '0',
  `tanggal` varchar(100) collate latin1_general_ci NOT NULL,
  PRIMARY KEY  (`ID_topik`)
) ENGINE=MyISAM AUTO_INCREMENT=162 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Table structure for newvote
-- ----------------------------
DROP TABLE IF EXISTS `newvote`;
CREATE TABLE `newvote` (
  `bookid` varchar(100) NOT NULL,
  `user` varchar(60) NOT NULL,
  `category` varchar(100) NOT NULL,
  `type` varchar(125) NOT NULL,
  `web` varchar(225) NOT NULL,
  `trust` varchar(100) default NULL,
  `object` varchar(100) default NULL,
  `complete` varchar(100) default NULL,
  `well` varchar(100) default NULL,
  `mess` longtext,
  `hitsCount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for rank
-- ----------------------------
DROP TABLE IF EXISTS `rank`;
CREATE TABLE `rank` (
  `id` int(5) NOT NULL auto_increment,
  `bookid` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `id` (`id`,`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `user` varchar(60) NOT NULL,
  `college` varchar(50) NOT NULL,
  `address` longtext NOT NULL,
  `best` varchar(100) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `lang` varchar(100) NOT NULL,
  `loc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(5) NOT NULL auto_increment,
  `bookid` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `id` (`id`,`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for url
-- ----------------------------
DROP TABLE IF EXISTS `url`;
CREATE TABLE `url` (
  `id` int(5) NOT NULL auto_increment,
  `bookid` varchar(225) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `id` (`bookid`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user` varchar(50) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `sport` varchar(100) NOT NULL,
  `age` varchar(20) NOT NULL,
  `telephone` varchar(30) NOT NULL,
  `password2` varchar(50) NOT NULL,
  `email2` varchar(50) NOT NULL,
  `comments` varchar(255) NOT NULL,
  `agree` varchar(20) NOT NULL,
  PRIMARY KEY  (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for vote
-- ----------------------------
DROP TABLE IF EXISTS `vote`;
CREATE TABLE `vote` (
  `bookid` varchar(100) NOT NULL,
  `user` varchar(60) NOT NULL,
  `trust` varchar(100) NOT NULL,
  `object` varchar(100) NOT NULL,
  `complete` varchar(100) NOT NULL,
  `well` varchar(100) NOT NULL,
  `mess` longtext,
  `hitsCount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `category` VALUES ('9', 'Java');
INSERT INTO `category` VALUES ('10', 'C#');
INSERT INTO `category` VALUES ('11', 'Joomla');
INSERT INTO `forum` VALUES ('159', 'Amar', 'mani503034@gmail.com', 'Java', 'Its so Nice', '0', 'Saturday, 29 July 2011  17:16');
INSERT INTO `forum` VALUES ('161', 'Mehala', 'manivannanprog@gmail.com', 'Re : Java ', 'Hi ', '0', 'Saturday, 29 July 2011  17:41');
INSERT INTO `forum` VALUES ('158', 'Manimaddy', 'mani503034@gmail.com', 'Dotnet', 'Its Good', '0', 'Sunday, 14 May 2011  12:31');
INSERT INTO `rank` VALUES ('9', 'J2EE');
INSERT INTO `rank` VALUES ('10', 'Dotnet');
INSERT INTO `rank` VALUES ('11', 'PHP');
INSERT INTO `review` VALUES ('Thala', 'RGCE', 'Kodambakkam', 'Pramodh', 'Hello', 'Tamil', 'Chennai');
INSERT INTO `type` VALUES ('9', 'JSP');
INSERT INTO `type` VALUES ('10', 'Asp.net');
INSERT INTO `type` VALUES ('11', 'Drupal');
INSERT INTO `url` VALUES ('10', 'Dotnet1');
INSERT INTO `url` VALUES ('9', 'Java12');
INSERT INTO `url` VALUES ('11', 'PHP1');
INSERT INTO `user` VALUES ('Manivannanmaddy', 'Mani', 'vannan', '1988-11-11', 'option1', '23', '9840615017', 'rajammal', 'manivannanprog@gmail.com', ' Thanks', 'on');
INSERT INTO `user` VALUES ('Thala', 'Ajith', 'kumar', '1972-05-01', 'option1', '38', '9898989898', 'godfather', 'mani@gmail.com', ' Hi Thala', 'on');
INSERT INTO `vote` VALUES ('Java12', 'Manivannanmaddy', 'Good', 'Good', 'Good', 'Good', 'Its good', '12');
INSERT INTO `vote` VALUES ('Dotnet1', 'Manivannanmaddy', 'very Good', 'Excellent', 'Good', 'very Good', 'Hi', '1');
INSERT INTO `vote` VALUES ('Dotnet1', 'billa', 'very Good', 'Excellent', 'Excellent', 'very Good', 'Hi', '2');
INSERT INTO `vote` VALUES ('Dotnet', 'Manivannanmaddy', 'very Good', 'Good', 'Very Good', 'Excellent', 'Hi', '1');
INSERT INTO `vote` VALUES ('Dotnet1', 'Thala', 'Excellent', 'Very Good', 'Excellent', 'very Good', 'Hi its to good', '4');
INSERT INTO `vote` VALUES ('PHP1', 'Manivannanmaddy', 'Excellent', 'Very Good', 'Excellent', 'Good', 'Its so good to study.', '1');
