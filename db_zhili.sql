/*
Navicat MySQL Data Transfer

Source Server         : OMES
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : db_zhili

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2017-12-20 17:16:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `fa_company`
-- ----------------------------
DROP TABLE IF EXISTS `fa_company`;
CREATE TABLE `fa_company` (
  `company_id` varchar(38) collate utf8_bin NOT NULL,
  `company_name` varchar(100) collate utf8_bin default NULL,
  `company_createtime` date default NULL,
  `company_updatetime` date default NULL,
  `company_creater` varchar(50) collate utf8_bin default NULL,
  `company_updater` varchar(50) collate utf8_bin default NULL,
  `company_creater_id` varchar(38) collate utf8_bin default NULL,
  `company_update_id` varchar(38) collate utf8_bin default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fa_company
-- ----------------------------
INSERT INTO `fa_company` VALUES ('aseeeeee', '深圳普信科技公司', '2017-12-20', null, 'admin', null, null, null);
INSERT INTO `fa_company` VALUES ('abccccccc', '北京锐科金融有限公司', '2017-12-20', null, 'admin', null, null, null);

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
  `menu_link` varchar(200) collate utf8_bin default NULL COMMENT '菜单是否启用',
  PRIMARY KEY  (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fa_menu
-- ----------------------------
INSERT INTO `fa_menu` VALUES ('001', '当前信息', '0', '1', '2017-12-05', null, 'admin', null, null, 'fa-current.html');
INSERT INTO `fa_menu` VALUES ('002', '角色管理', '0', '1', '2017-12-05', null, 'admin', null, null, 'fa-roles.html');
INSERT INTO `fa_menu` VALUES ('003', '用户管理', '0', '1', '2017-12-05', null, 'admin', null, null, 'fa-users.html');
INSERT INTO `fa_menu` VALUES ('004', '机构管理', '0', '1', '2017-12-05', null, 'admin', null, null, 'fa-company.html');
INSERT INTO `fa_menu` VALUES ('005', '权限管理', '0', '1', '2017-12-05', null, 'admin', null, null, 'fa-authority.html');
INSERT INTO `fa_menu` VALUES ('006', '资料录入', '0', '1', '2017-12-05', null, 'admin', null, null, 'fa-addinfo.html');
INSERT INTO `fa_menu` VALUES ('007', '征信报告', '0', '1', '2017-12-05', null, 'admin', null, null, 'fa-simplyreport.html');
INSERT INTO `fa_menu` VALUES ('008', '精准报告', '0', '1', '2017-12-05', null, 'admin', null, null, 'fa-detailreport.html');
INSERT INTO `fa_menu` VALUES ('009', '设置', '0', '1', '2017-12-05', null, 'admin', null, null, 'page-user.html');
INSERT INTO `fa_menu` VALUES ('010', '个人信息', '0', '1', '2017-12-05', null, 'admin', null, null, 'page-user.html');

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
  `role_updater` varchar(100) collate utf8_bin default NULL,
  PRIMARY KEY  (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fa_role
-- ----------------------------
INSERT INTO `fa_role` VALUES ('001', 'admin', '2017-12-20', '2017-12-20', '001', null, 'admin', null);
INSERT INTO `fa_role` VALUES ('002', 'company', '2017-12-20', '2017-12-20', '001', null, 'admin', null);
INSERT INTO `fa_role` VALUES ('003', 'assessor', '2017-12-20', '2017-12-20', null, null, 'admin', null);
INSERT INTO `fa_role` VALUES ('004', 'employ', '2017-12-20', null, null, null, 'admin', null);

-- ----------------------------
-- Table structure for `fa_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `fa_role_menu`;
CREATE TABLE `fa_role_menu` (
  `role_menu_id` varchar(38) collate utf8_bin NOT NULL,
  `role_id` varchar(38) collate utf8_bin default NULL,
  `menu_id` varchar(38) collate utf8_bin default NULL,
  `insert_time` date default NULL,
  PRIMARY KEY  (`role_menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fa_role_menu
-- ----------------------------
INSERT INTO `fa_role_menu` VALUES ('absdasd', '001', '001', '2017-12-20');
INSERT INTO `fa_role_menu` VALUES ('asdasda', '001', '006', '2017-12-20');
INSERT INTO `fa_role_menu` VALUES ('asdzxcxx', '001', '008', '2017-12-20');
INSERT INTO `fa_role_menu` VALUES ('dsafasds', '001', '005', '2017-12-20');
INSERT INTO `fa_role_menu` VALUES ('erwefdsf', '001', '004', '2017-12-20');
INSERT INTO `fa_role_menu` VALUES ('qwcxccc', '003', '002', '2017-12-20');
INSERT INTO `fa_role_menu` VALUES ('qwqeqw', '002', '001', '2017-12-20');
INSERT INTO `fa_role_menu` VALUES ('sdafsaxx', '001', '007', '2017-12-20');
INSERT INTO `fa_role_menu` VALUES ('sdfasdfd', '001', '002', '2017-12-20');
INSERT INTO `fa_role_menu` VALUES ('sdfsadfc', '001', '003', '2017-12-20');
INSERT INTO `fa_role_menu` VALUES ('wqcxzcz', '004', '003', '2017-12-20');

-- ----------------------------
-- Table structure for `fa_user`
-- ----------------------------
DROP TABLE IF EXISTS `fa_user`;
CREATE TABLE `fa_user` (
  `user_id` varchar(38) collate utf8_bin NOT NULL,
  `user_account` varchar(50) collate utf8_bin default NULL,
  `user_name` varchar(50) collate utf8_bin default NULL,
  `user_password` varchar(50) collate utf8_bin default NULL,
  `user_phone` varchar(20) collate utf8_bin default NULL,
  `user_delete` int(11) default NULL,
  `user_createtime` date default NULL,
  `user_updatetime` date default NULL,
  `user_operator` varchar(50) collate utf8_bin default NULL,
  `user_role_id` varchar(50) collate utf8_bin default NULL,
  `user_company_name` varchar(50) collate utf8_bin default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of fa_user
-- ----------------------------
INSERT INTO `fa_user` VALUES ('00001', 'huangwanping', '黄万平', '1', '13713963498', null, '2017-12-20', null, null, '001', '深圳普信科技公司');
INSERT INTO `fa_user` VALUES ('00002', 'denglianggen', '邓亮跟', '1', '18999999999', null, '2017-12-20', null, null, '002', '北京锐科金融有限公司');
