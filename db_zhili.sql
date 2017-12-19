/*
Navicat MySQL Data Transfer

Source Server         : OMES
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : db_zhili

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2017-12-19 15:57:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fa_menu`
-- ----------------------------
DROP TABLE IF EXISTS `fa_menu`;
CREATE TABLE `fa_menu` (
  `menu_id` varchar(32) collate utf8_bin NOT NULL COMMENT '导航、菜单表',
  `menu_name` varchar(60) collate utf8_bin default NULL COMMENT '菜单主键',
  `menu_parent_id` varchar(32) collate utf8_bin default NULL COMMENT '菜单名称',
  `menu_type` int(11) default NULL COMMENT '菜单父ID',
  `menu_create_time` date default NULL COMMENT '菜单类型',
  `menu_update_time` date default NULL COMMENT '菜单创建时间',
  `menu_creater` varchar(50) collate utf8_bin default NULL COMMENT '菜单更新时间',
  `menu_jurisdiction` int(11) default NULL COMMENT '菜单创建人',
  `menu_invoke` int(11) default NULL COMMENT '菜单是否需要权限',
  `menu_link` varchar(200) collate utf8_bin default NULL COMMENT '菜单是否启用'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fa_menu
-- ----------------------------
INSERT INTO `fa_menu` VALUES ('1', 'Home', '0', '1', '2017-12-05', null, null, null, null, 'index.html');
INSERT INTO `fa_menu` VALUES ('2', 'About Us', '0', '1', '2017-12-05', null, null, null, null, 'about-us.html');
INSERT INTO `fa_menu` VALUES ('3', 'Services', '0', '1', '2017-12-05', null, null, null, null, 'services.html');
INSERT INTO `fa_menu` VALUES ('4', 'Portfolio', '0', '1', '2017-12-05', null, null, null, null, 'portfolio.html');
INSERT INTO `fa_menu` VALUES ('5', 'Pages', '0', '1', '2017-12-05', null, null, null, null, null);
INSERT INTO `fa_menu` VALUES ('6', 'Blog Single', '5', '1', '2017-12-05', null, null, null, null, 'blog-item.html');
INSERT INTO `fa_menu` VALUES ('7', 'Pricing', '5', '1', '2017-12-05', null, null, null, null, 'Pricing');
INSERT INTO `fa_menu` VALUES ('8', '404', '5', '1', '2017-12-05', null, null, null, null, '404.html');
INSERT INTO `fa_menu` VALUES ('9', 'Shortcodes', '5', '1', '2017-12-05', null, null, null, null, 'shortcodes.html');
INSERT INTO `fa_menu` VALUES ('10', 'Blog', '0', '1', '2017-12-05', null, null, null, null, 'blog.html');
INSERT INTO `fa_menu` VALUES ('11', 'Contact', '0', '1', '2017-12-05', null, null, null, null, 'contact-us.html');

-- ----------------------------
-- Table structure for `fa_post`
-- ----------------------------
DROP TABLE IF EXISTS `fa_post`;
CREATE TABLE `fa_post` (
  `post_id` varchar(38) collate utf8_bin NOT NULL,
  `post_name` varchar(100) collate utf8_bin default NULL,
  `post_createtime` date default NULL,
  `post_updatetime` date default NULL,
  `post_creater` varchar(50) collate utf8_bin default NULL,
  `post_updater` varchar(50) collate utf8_bin default NULL,
  `post_creater_id` varchar(38) collate utf8_bin default NULL,
  `post_update_id` varchar(38) collate utf8_bin default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fa_post
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_post_role`
-- ----------------------------
DROP TABLE IF EXISTS `fa_post_role`;
CREATE TABLE `fa_post_role` (
  `post_role_jd` varchar(38) collate utf8_bin default NULL,
  `post_id` varchar(38) collate utf8_bin default NULL,
  `role_id` varchar(38) collate utf8_bin default NULL,
  `cratetime` date default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fa_post_role
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_post_user`
-- ----------------------------
DROP TABLE IF EXISTS `fa_post_user`;
CREATE TABLE `fa_post_user` (
  `post_user_id` varchar(38) collate utf8_bin default NULL,
  `post_id` varchar(38) collate utf8_bin default NULL,
  `user_id` varchar(38) collate utf8_bin default NULL,
  `createtime` date default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fa_post_user
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_role`
-- ----------------------------
DROP TABLE IF EXISTS `fa_role`;
CREATE TABLE `fa_role` (
  `role_id` varchar(38) collate utf8_bin NOT NULL,
  `role_name` varchar(100) collate utf8_bin default NULL,
  `role_createtime` date default NULL,
  `role_update` date default NULL,
  `role_create_id` varchar(38) collate utf8_bin default NULL,
  `role_update_id` varchar(38) collate utf8_bin default NULL,
  `role_creater` varchar(100) collate utf8_bin default NULL,
  `role_updater` varchar(100) collate utf8_bin default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fa_role
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `fa_role_menu`;
CREATE TABLE `fa_role_menu` (
  `role_menu_id` varchar(38) collate utf8_bin NOT NULL,
  `role_id` varchar(38) collate utf8_bin default NULL,
  `menu_id` varchar(38) collate utf8_bin default NULL,
  `insert_time` date default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fa_role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `fa_user`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user` (
  `user_id` varchar(38) collate utf8_bin NOT NULL,
  `user_account` varchar(50) collate utf8_bin default NULL,
  `user_name` varchar(50) collate utf8_bin default NULL,
  `user_pawd` varchar(50) collate utf8_bin default NULL,
  `user_phone` varchar(20) collate utf8_bin default NULL,
  `user_delete` int(11) default NULL,
  `user_createtime` date default NULL,
  `user_updatetime` date default NULL,
  `user_operator` varchar(50) collate utf8_bin default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fa_user
-- ----------------------------
