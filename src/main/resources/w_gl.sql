/*
 Navicat Premium Data Transfer

 Source Server         : mysql80
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : w_gl

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 23/09/2022 17:11:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_dept
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept`  (
  `dept_id` int NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES (11, '测试部', 2, '0', '0', 'Enzo', '2018-03-16 11:33:00', 'wwwljt', '2022-09-21 19:19:38');
INSERT INTO `tbl_dept` VALUES (12, '财务部门', 2, '0', '0', 'Enzo', '2018-03-16 11:33:00', 'wwwljt', '2022-09-15 20:50:39');
INSERT INTO `tbl_dept` VALUES (13, '运维部门', 3, '0', '0', 'Enzo', '2018-03-16 11:33:00', 'feng', '2022-07-15 17:19:51');
INSERT INTO `tbl_dept` VALUES (182, 'qy152', 4, '0', '0', 'admin', '2022-07-08 12:01:23', 'feng', '2022-07-15 17:19:54');
INSERT INTO `tbl_dept` VALUES (198, '学习部', 1, '1', '0', 'wwwljt', '2022-09-15 21:11:48', 'wwwljt', '2022-09-22 11:22:07');
INSERT INTO `tbl_dept` VALUES (199, '实施部门', 2, '0', '0', 'wwwljt', '2022-09-15 21:14:16', 'wwwljt', '2022-09-15 21:14:16');
INSERT INTO `tbl_dept` VALUES (200, '实施部门', 1, '0', '1', 'wwwljt', '2022-09-16 08:37:08', 'wwwljt', '2022-09-16 17:08:29');
INSERT INTO `tbl_dept` VALUES (201, '试试', 1, '0', '1', 'wwwljt', '2022-09-16 18:22:45', 'wwwljt', '2022-09-17 14:12:30');

-- ----------------------------
-- Table structure for tbl_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dictionary`;
CREATE TABLE `tbl_dictionary`  (
  `dictionary_id` int NOT NULL AUTO_INCREMENT,
  `type_id` int NOT NULL COMMENT '字典类型,关联字典类型表',
  `dictionary_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '字典名,展示时使用，保存的时候使用主键值',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` date NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dictionary_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dictionary
-- ----------------------------
INSERT INTO `tbl_dictionary` VALUES (1, 1, 'FPA前15题', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (2, 1, 'FPA后15题', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (3, 2, 'SAS正向题', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (4, 2, 'SAS反向题', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (5, 3, 'SDS正向题', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary` VALUES (6, 3, 'SDS反向题', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_dictionary_type
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dictionary_type`;
CREATE TABLE `tbl_dictionary_type`  (
  `type_id` int NOT NULL AUTO_INCREMENT COMMENT '类型ID，自增',
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '类型名称，非空，唯一',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_dictionary_type
-- ----------------------------
INSERT INTO `tbl_dictionary_type` VALUES (1, 'FPA题目类型', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary_type` VALUES (2, 'SAS题目类型', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tbl_dictionary_type` VALUES (3, 'SDS题目类型', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_log
-- ----------------------------
DROP TABLE IF EXISTS `tbl_log`;
CREATE TABLE `tbl_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `login_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录名',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类名',
  `method_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '方法名',
  `params` varchar(9000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4013 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_log
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_menu`;
CREATE TABLE `tbl_menu`  (
  `menu_id` int NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` int NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1053 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_menu
-- ----------------------------
INSERT INTO `tbl_menu` VALUES (1, '性格测试', 0, 1, '#', 'M', '0', '', 'layui-icon layui-icon-user', 'Enzo', '2018-03-16 11:33:00', 'admin', '2022-09-22 11:22:35', 'FPA性格测试');
INSERT INTO `tbl_menu` VALUES (3, '系统管理', 0, 4, '#', 'M', '0', '', 'layui-icon layui-icon-app', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '系统管理目录');
INSERT INTO `tbl_menu` VALUES (5, '日志监控', 0, 5, '#', 'M', '0', '', 'layui-icon layui-icon-log', '', '2021-01-21 17:46:05', NULL, NULL, '日志监控');
INSERT INTO `tbl_menu` VALUES (100, '用户管理', 3, 4, 'system/user.html', 'C', '0', 'system:user:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `tbl_menu` VALUES (101, '角色管理', 3, 2, 'system/tblrole.html', 'C', '0', 'system:role:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `tbl_menu` VALUES (102, '菜单管理', 3, 3, 'system/menu.html', 'C', '0', 'system:menu:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `tbl_menu` VALUES (103, '部门管理', 3, 1, 'system/tbldept.html', 'C', '0', 'system:dept:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `tbl_menu` VALUES (109, '题目管理', 1, 1, 'fpa/questionFpa.html', 'C', '0', 'character:question:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `tbl_menu` VALUES (110, '测试计划', 1, 2, 'fpa/testResultFpa.html', 'C', '0', 'character:testPlan:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `tbl_menu` VALUES (111, '测试结果', 1, 3, 'fpa/testResultFpa.html', 'C', '0', 'character:tester:view', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2022-07-17 17:16:16', '数据监控菜单');
INSERT INTO `tbl_menu` VALUES (1000, '用户查询', 100, 1, '#', 'F', '0', 'system:user:list', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1001, '用户新增', 100, 2, '#', 'F', '0', 'system:user:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1002, '用户修改', 100, 3, '#', 'F', '0', 'system:user:edit', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2021-12-18 15:15:21', '用户修改');
INSERT INTO `tbl_menu` VALUES (1003, '用户删除', 100, 4, '#', 'F', '0', 'system:user:remove', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1004, '用户导出', 100, 5, '#', 'F', '0', 'system:user:export', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1005, '重置密码', 100, 6, '#', 'F', '0', 'system:user:resetPwd', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1006, '角色查询', 101, 1, '#', 'F', '0', 'system:role:list', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1007, '角色新增', 101, 2, '#', 'F', '0', 'system:role:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1008, '角色修改', 101, 3, '#', 'F', '0', 'system:role:edit', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1009, '角色删除', 101, 4, '#', 'F', '0', 'system:role:remove', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1010, '角色导出', 101, 5, '#', 'F', '0', 'system:role:export', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1011, '菜单查询', 102, 1, '#', 'F', '0', 'system:menu:list', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1012, '菜单新增', 102, 2, '#', 'F', '0', 'system:menu:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1013, '菜单修改', 102, 3, '#', 'F', '0', 'system:menu:edit', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1014, '菜单删除', 102, 4, '#', 'F', '0', 'system:menu:remove', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1015, '部门查询', 103, 1, '#', 'F', '0', 'system:dept:list', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1016, '部门新增', 103, 2, '#', 'F', '0', 'system:dept:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1017, '部门修改', 103, 3, '#', 'F', '0', 'system:dept:edit', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1018, '部门删除', 103, 4, '#', 'F', '0', 'system:dept:remove', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1025, '操作日志', 5, 1, 'log/log.html', 'C', '0', 'character:log:view', '#', 'Enzo', '2021-01-21 17:48:22', 'admin', '2021-01-27 09:42:08', '登陆日志');
INSERT INTO `tbl_menu` VALUES (1026, '报表统计', 1, 4, 'fpa/reportFormStatistics.html', 'C', '0', 'bbtj', NULL, 'admin', '2021-07-16 09:50:12', NULL, '2022-07-17 17:16:28', '统计图');
INSERT INTO `tbl_menu` VALUES (1029, '试题新增', 109, 2, '#', 'F', '0', 'character:question:add', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1030, '试题删除', 109, 3, '#', 'F', '0', 'character:question:delete', '#', 'Enzo', '2018-03-16 11:33:00', 'Enzo', '2018-03-16 11:33:00', '');
INSERT INTO `tbl_menu` VALUES (1033, '焦虑测试', 0, 3, '', 'M', '0', '', 'layui-icon layui-icon-friends', '', '2022-06-30 11:10:47', NULL, NULL, 'sas测试');
INSERT INTO `tbl_menu` VALUES (1034, '题目管理', 1033, 1, 'sas/topicManagement.html', 'C', '0', 'view:question:sas', NULL, '', '2022-06-30 11:15:03', NULL, '2022-07-15 17:25:24', '');
INSERT INTO `tbl_menu` VALUES (1035, '抑郁测试', 0, 2, '', 'M', '0', '', 'layui-icon layui-icon-dialogue ', '', '2022-06-30 11:34:03', NULL, NULL, 'sds抑郁测试');
INSERT INTO `tbl_menu` VALUES (1036, '题目管理', 1035, 1, 'sds/tblquestion.html', 'C', '0', 'view:question:sds', NULL, '', '2022-06-30 11:35:23', NULL, '2022-07-17 16:56:52', '');
INSERT INTO `tbl_menu` VALUES (1038, '测试计划', 1033, 2, 'sas/testPlanSas.html', 'C', '0', '1', NULL, '', '2022-07-15 17:24:52', NULL, NULL, '测试计划');
INSERT INTO `tbl_menu` VALUES (1039, '测试结果', 1033, 3, 'sas/testerSas.html', 'C', '0', '1', NULL, '', '2022-07-15 19:32:56', NULL, NULL, '');
INSERT INTO `tbl_menu` VALUES (1040, '报表统计', 1033, 4, 'sas/reportStatistics.html', 'C', '0', '1', NULL, '', '2022-07-15 19:41:27', NULL, NULL, '');
INSERT INTO `tbl_menu` VALUES (1041, '测试计划', 1035, 2, 'sds/tbltestplan.html', 'C', '0', '1', NULL, '', '2022-07-17 16:56:46', NULL, NULL, '');
INSERT INTO `tbl_menu` VALUES (1042, '测试结果', 1035, 3, 'sds/tbltestresult.html', 'C', '0', '1', NULL, '', '2022-07-17 16:57:34', NULL, NULL, '');
INSERT INTO `tbl_menu` VALUES (1043, '报表统计', 1035, 4, 'sds/tblstatistics.html', 'C', '0', '1', NULL, '', '2022-07-17 16:58:08', NULL, NULL, '');
INSERT INTO `tbl_menu` VALUES (1044, 'www', 0, 1, 'ljt', 'M', NULL, 'w', 'layui-icon layui-icon-diamond', 'wwwljt', '2022-09-19 13:39:02', 'wwwljt', '2022-09-22 18:45:19', 'www');
INSERT INTO `tbl_menu` VALUES (1052, 'ljt', 1044, 0, 'www', 'M', '0', 'l', NULL, 'wwwljt', '2022-09-22 18:41:59', 'wwwljt', '2022-09-22 18:45:13', 'l');

-- ----------------------------
-- Table structure for tbl_question_fpa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_question_fpa`;
CREATE TABLE `tbl_question_fpa`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '问题编号',
  `question` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `option_a` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `option_b` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `option_c` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `option_d` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `type` int NULL DEFAULT 0 COMMENT '预留字段',
  `status` int NULL DEFAULT 0 COMMENT '状态',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `flag` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '问题表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_question_fpa
-- ----------------------------
INSERT INTO `tbl_question_fpa` VALUES (1, '我的人生观是', 'A人生的体验越多越好，所以想法很多，有可能就应该多尝试。', 'B深度比宽度更重要，目标要谨慎，一旦确定就坚持到底。', 'C人生必须有所成。', 'D没必要太辛苦，好好活着就行。', 1, 0, '2021-11-23 11:13:13', 'zhangsan', '2021-12-01 16:08:34', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (2, '如果野外旅行，在下山返回的路线上，我更在乎：', 'A要好玩有趣，不愿重复，所以宁愿走新路线。', 'B要安全稳妥，担心危险，所以宁愿走原路线。', 'C要挑战自我，喜欢冒险，所以宁愿走新路线。', 'D要方便省心，害怕麻烦，所以宁愿走原路线。', 1, 0, '2021-11-23 11:13:13', 'admin', '2021-11-23 11:13:13', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (3, '在表达一件事情上，别人认为我：', 'A总是给人感受到强烈印象。', 'B总是表述极其准确。', 'C总能围绕最终目的。', 'D总能让大家很舒服。', 1, 0, '2021-11-23 11:13:13', 'admin', '2021-11-23 11:13:13', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (4, '在生命多数时候，我其实更希望：', 'A刺激。', 'B安全。', 'C挑战。', 'D稳定。', 1, 0, '2021-11-23 11:13:13', 'admin', '2021-11-23 11:13:13', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (5, '我认为自己在情感上的基本特点是：', 'A情绪多变，情绪波动大。', 'B外表抑制强，但内心起伏大，一旦挫伤难以平复。', 'C感情不拖泥带水，较直接。', 'D天性四平八稳。', 1, 0, '2021-11-23 11:13:13', 'admin', '2021-11-23 11:13:13', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (6, '我认为自己除了工作以外，在人生的控制欲上，我：', 'A谈不上控制欲，却有强烈地感染带动他人的欲望，但自控能力不强。', 'B用规则来保持我的自控和对他人的要求。', 'C内心有控制欲，希望别人服从我。', 'D从不愿去管别人，也不愿别人来管我。', 1, 0, '2021-11-23 11:13:13', 'admin', '2021-11-23 11:13:13', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (7, '当与情人交往时，我倾向于：', 'A在一起时就要尽情地欢乐，爱意常会溢于言表。', 'B体贴入微关怀细腻，于对方的需求和变化极其敏感。', 'C帮助对方成长是我最大的责任。', 'D迁就顺从的陪伴者和绝佳的聆听着。', 1, 0, '2021-11-23 11:13:13', 'admin', '2021-11-23 11:13:13', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (8, '在人际交往时，我：', 'A心态开放，可快速建立起人际关系。', 'B非常审慎缓慢地深入，一旦认为是朋友便会长久。', 'C希望在人际关系中占据主导地位。', 'D顺其自然，不温不火，相对被动。', 1, 0, '2021-11-23 11:13:14', 'admin', '2021-11-23 11:13:14', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (9, '我认为自己的为人：', 'A可爱而生机。', 'B深沉而内敛。', 'C果断而自信。', 'D平静而和气。', 1, 0, '2021-11-23 11:13:14', 'admin', '2021-11-23 11:13:14', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (10, '我完成任务的方式是：', 'A常赶在最后期限前的一刻完成。', 'B自己精确地做，不麻烦别人。', 'C最快速做完，再找下一个任务。', 'D该怎么做就怎么做，需要时从他人处得到帮忙。', 1, 0, '2021-11-23 11:13:14', 'admin', '2021-11-23 11:13:14', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (11, '如果有人深深惹恼我，我：', 'A内心手上，当时认为不可能原谅，但最终常会原谅对方。', 'B如此之深的愤怒无法忘记，同时未来避开那个家伙。', 'C每个人都要为他的错误付出相应的代价，内心期望有机会要狠狠的回应。', 'D尽量不摊牌，因为还不到那个地步。', 1, 0, '2021-11-23 11:13:14', 'admin', '2021-11-23 11:13:14', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (12, '在人际关系中，我最在意的是：', 'A欢迎。', 'B理解。', 'C尊敬。', 'D接纳。', 1, 0, '2021-11-23 11:13:14', 'admin', '2021-11-23 11:13:14', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (13, '在工作上，我表现出更多的是：', 'A热忱，有很多想法且很多灵性。', 'B完美精准且承诺可靠。', 'C坚强而有推动力。', 'D有耐心且适应性强。', 1, 0, '2021-11-23 11:13:14', 'admin', '2021-11-23 11:13:14', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (14, '我过往的老师最有可能对我的评价是：', 'A善于表达和抒发情感。', 'B严格保护自己的私密，有时会显得孤独或不合群。', 'C动作敏捷独立，且喜欢自己做事情。', 'D反应度偏低，比较温和。', 1, 0, '2021-11-23 11:13:14', 'admin', '2021-11-23 11:13:14', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (15, '朋友对我的评价最有可能的是：', 'A喜欢对朋友倾诉事情，是开心果。', 'B能提出很多问题，且需要许多精细的解说。', 'C解决问题的高手。', 'D总能多听少说。', 1, 0, '2021-11-23 11:13:14', 'admin', '2021-11-23 11:13:14', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (16, '在帮助他人的问题上，我倾向于：', 'A我不主动，但若他来找我，那我一定帮。', 'B值得帮助的人就帮。', 'C无关者何必帮，但我若承诺，必完成。', 'D虽无英雄打虎胆，常有自告奋勇心。', 2, 0, '2021-11-23 11:13:14', 'admin', '2021-11-23 11:13:14', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (17, '面对他人对自己的赞美，我的本能反应是：', 'A没有赞美也无所谓，得到了也不至于欣喜。', 'B我无须那些没用的赞美，宁可他们欣赏我的能力。', 'C有点怀疑对方是否认真或立即回避很多人的关注。', 'D能得到赞美，总归是一件令人愉悦的事。', 2, 0, '2021-11-23 11:13:15', 'admin', '2021-11-23 11:13:15', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (18, '面对生活的现状，我更倾向于：', 'A外面怎样与我无关，我觉得自己这样还行。', 'B这个世界如果我不进步，别人就会进步，所以我需要不停地前进。', 'C在所有的问题未发生前，就该尽量想好所有的可能性。', 'D每天的生活，只要开心快乐最重要。', 2, 0, '2021-11-23 11:13:15', 'admin', '2021-11-23 11:13:15', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (19, '对于规则，我内心的态度是：', 'A不愿违反规则，但可能因为松散而无法达到规则要求。', 'B打破规则，希望由自己来制定规则，而不是遵守规则。', 'C严格遵守规则，且竭尽全力做到规则内的最好。', 'D不喜欢被规则束缚，不按规则出牌，会觉得新鲜有趣。', 2, 0, '2021-11-23 11:13:15', 'admin', '2021-11-23 11:13:15', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (20, '我认为自己做事上：', 'A慢条斯理，按部就班，能与周围协调一致。', 'B目标明确，集中精力为实现目标而努力，善于抓住核心。', 'C慎重小心，为做好预防及善后，会尽心操劳。', 'D丰富跃动，灵活反应。', 2, 0, '2021-11-23 11:13:15', 'admin', '2021-11-23 11:13:15', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (21, '在面对压力时，我比较倾向于选用：', 'A眼不见为净。', 'B压力越大，抵抗力越大。', 'C在自己的内心慢慢地咀嚼消化压力。', 'D本能地回避压力，避不掉就用各种方法发泄出去。', 2, 0, '2021-11-23 11:13:15', 'admin', '2021-11-23 11:13:15', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (22, '当结束一段刻骨铭心的感情时，我会：', 'A日子总要过，时间会冲淡一切。', 'B虽然受伤，但一旦下定决心，就会努力把过去的影子甩掉。', 'C深陷悲伤，在相当长的时间里难以自拔，也不愿再接受新的人。', 'D痛不欲生，需要找朋友倾诉，寻求化解之道。', 2, 0, '2021-11-23 11:13:15', 'admin', '2021-11-23 11:13:15', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (23, '面对他人的痛苦倾诉，我回顾自己大多数时候本能上倾?', 'A静静地听，认同对方的感受。', 'B作出判断，痛苦没用，要帮助对方解决问题。', 'C给予分析，帮助他分析，安抚他的情绪。', 'D发表自己的评论意见，与对方的情绪共起落。', 2, 0, '2021-11-23 11:13:15', 'admin', '2021-11-23 11:13:15', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (24, '我在以下哪个群体中较感满足？', 'A能心平气和，只要大家达成一致。', 'B能简单扼要有结果地彼此展开充分的辩论。', 'C能就一件事有规则、有条理、有步骤、有章法地详细讨论。', 'D能随意无拘束地、开心地自由谈话。', 2, 0, '2021-11-23 11:13:15', 'admin', '2021-11-23 11:13:15', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (25, '我觉得工作：', 'A最好没有压力，让我做我熟悉的工作就不错。', 'B是达成人生目标和成就最重要的途径。', 'C要么不做，要做就做到最好。', 'D如果能将乐趣融合在工作中就太棒了，如果是不喜欢的工作就实在没劲。', 2, 0, '2021-11-23 11:13:15', 'admin', '2021-11-23 11:13:15', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (26, '如果我是领导，我内心更希望在部属的心目中，我是：', 'A可以亲近的和善于为他们着想的。', 'B有很强的能力和富有领导力的。', 'C公平公正且足以信赖的。', 'D被他们喜欢并且觉得富有感召力的。', 2, 0, '2021-11-23 11:13:16', 'admin', '2021-11-23 11:13:16', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (27, '我希望得到的认同方式是：', 'A有无认同都不要影响我。', 'B精英的认同最重要。', 'C我认同的人或我在乎的人认同即可。', 'D希望大家都能认同我。', 2, 0, '2021-11-23 11:13:16', 'admin', '2021-11-23 11:13:16', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (28, '当我还是个孩子时，我：', 'A不太会积极尝试新事物，通常比较喜欢旧有的和熟悉的。', 'B是孩子王，大家经常听我的决定。', 'C害羞见生人，有意识地回避。', 'D调皮可爱，在大部分的情况下是多动且热心的。', 2, 0, '2021-11-23 11:13:16', 'admin', '2021-11-23 11:13:16', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (29, '如果我是父母，我也许是：', 'A不愿干涉子女或易被说动的。', 'B严厉的或直接给予方向指点的。', 'C用行动代替语言来表示关爱或高要求的。', 'D愿意陪孩子一起玩，孩子的朋友们所喜欢和欢迎的。', 2, 0, '2021-11-23 11:13:16', 'admin', '2021-11-23 11:13:16', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (30, '以下有四组格言，哪组里符合我感觉的数目最多？', 'A最深刻的真理是最简单和最平凡的。', 'B走自己的路，让人家去说吧。', 'C一个不注意小事的人，永远不会成就大事。', 'D与其在死的时候握着一大把钱，还不如活时活得丰富多彩。', 2, 0, '2021-11-23 11:13:16', 'admin', '2021-11-23 11:13:16', 'admin', 0);
INSERT INTO `tbl_question_fpa` VALUES (31, 'dsff', 'sdfs', 'sdfsf', 'sdfs', 'fsdfsd', 1, 0, '2022-07-15 14:27:44', 'feng', '2022-07-15 14:27:51', 'feng', 1);
INSERT INTO `tbl_question_fpa` VALUES (32, 'dsf', 'asdad', 'sadasd', 'asdad', 'asdasd', 1, 0, '2022-07-15 16:57:40', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_fpa` VALUES (33, '的萨芬', '是否三十四', '暗室逢灯', '阿发发发', '飒飒水水', 1, 1, '2022-07-17 16:59:42', 'feng', '2022-07-17 16:59:50', 'feng', 1);
INSERT INTO `tbl_question_fpa` VALUES (34, '撒法大使', '萨芬撒旦', '撒大苏打', '啊实打实大苏打的', '萨达萨达是我的', 1, 0, '2022-07-20 14:36:37', 'feng', NULL, NULL, 1);

-- ----------------------------
-- Table structure for tbl_question_sas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_question_sas`;
CREATE TABLE `tbl_question_sas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_a` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_b` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_c` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_d` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `flag` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '问题表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_question_sas
-- ----------------------------
INSERT INTO `tbl_question_sas` VALUES (1, '我觉得比平常容易紧张或着急', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 0, NULL, '2022-07-15 16:50:19', 'feng', '2022-09-22 20:49:38', 'CM', 0);
INSERT INTO `tbl_question_sas` VALUES (2, '我无缘无故地感到害怕', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', '2022-07-22 20:48:20', 'feng', 0);
INSERT INTO `tbl_question_sas` VALUES (3, '我容易心里烦乱或觉得惊恐', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', '2022-07-22 20:48:24', 'feng', 0);
INSERT INTO `tbl_question_sas` VALUES (4, '我觉得我可能将要发疯', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (5, '我觉得一切都很好，也不会发生什么不幸', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 2, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (6, '我手脚发抖打颤', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (7, '我因为头痛、颈痛和背痛而苦恼', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (8, '我感觉容易衰弱和疲乏', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (9, ' 我得心平气和，并且容易安静坐着', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 2, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (10, '我觉得心跳得很快', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (11, '我因为一阵阵头晕而苦恼', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (12, '我有晕倒发作，或觉得要晕倒似的', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (13, '我吸气呼气都感到很容易', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 2, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (14, '我的手脚麻木和刺痛', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (15, '我因为胃痛和消化不良而苦恼', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (16, '我常常要小便', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (17, '我的手脚常常是干燥温暖的', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (18, '我脸红发热', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (19, '我容易入睡并且一夜睡得很好', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 2, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (20, '我做恶梦', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 1, '2022-07-15 16:50:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sas` VALUES (31, 'dffgg', 'dfgsdfgs', 'dsfsdf', 'sdfsdf', 'sdfsdf', 1, 1, '2022-07-15 16:59:12', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (32, 'dsfsdsd', 'fsd', 'sdfsdf', 'sdfsdf', 'sfdfsssssss', 2, 1, '2022-07-15 17:01:51', 'feng', '2022-07-15 17:06:27', 'feng', 1);
INSERT INTO `tbl_question_sas` VALUES (33, 'gnhgvfgh', 'gfdhfgdh', 'hdfhgdf', 'gdfgdfg', 'dfgdfg', 1, 1, '2022-07-15 17:13:15', 'feng', NULL, NULL, 1);
INSERT INTO `tbl_question_sas` VALUES (34, '撒顶顶顶', '大撒大撒', '撒的飒飒水水', '飒飒水水', '水水水水水', 1, 1, '2022-07-17 17:08:39', 'feng', '2022-07-17 17:08:45', 'feng', 1);

-- ----------------------------
-- Table structure for tbl_question_sds
-- ----------------------------
DROP TABLE IF EXISTS `tbl_question_sds`;
CREATE TABLE `tbl_question_sds`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_a` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_b` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_c` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `option_d` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` int NULL DEFAULT NULL,
  `status` int NULL DEFAULT 0,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `flag` int NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '问题表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_question_sds
-- ----------------------------
INSERT INTO `tbl_question_sds` VALUES (1, '我觉得闷闷不乐，情绪低沉', 'A没有或很少有', 'B有时候有sdfsd', 'C大部分时间有', 'D绝大部分时间有', 1, 0, '2022-07-15 21:08:19', 'feng', '2022-09-14 18:20:44', 'wwwljt', 1);
INSERT INTO `tbl_question_sds` VALUES (2, '我觉得一天之中早晨最好dfgdfg', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 0, '2022-07-15 21:08:19', 'feng', '2022-09-14 13:29:51', 'wwwljt', 1);
INSERT INTO `tbl_question_sds` VALUES (3, '我一阵阵地哭出来或是想哭', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 2, 0, '2022-07-15 21:08:19', 'feng', '2022-09-14 13:29:42', 'wwwljt', 1);
INSERT INTO `tbl_question_sds` VALUES (4, '我晚上睡眠不好', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 0, '2022-07-15 21:08:19', 'feng', '2022-09-14 13:20:57', 'wwwljt', 0);
INSERT INTO `tbl_question_sds` VALUES (5, '吃得跟平常一样多', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 2, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (6, '我与异性接触时和以往样感到愉快', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 2, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (7, '我发觉我的体重在下降', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (8, '我有便秘的苦恼', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (9, ' 我心跳比平时快', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 0, '2022-07-15 21:08:19', 'feng', '2022-07-17 15:39:53', 'feng', 0);
INSERT INTO `tbl_question_sds` VALUES (10, '我无缘无故感到疲乏', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (11, '我的头脑和平时一样清楚', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 2, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (12, '我觉得经常做的事情并没有困难', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 2, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (13, '我坐立不安，难以保持平静', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (14, '我对将来抱有希望', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (15, '我比平常容易生气激动', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (16, '我觉得做出决定是容易的231', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 2, 0, '2022-07-15 21:08:19', 'feng', '2022-09-14 18:53:35', 'wwwljt', 0);
INSERT INTO `tbl_question_sds` VALUES (17, '我觉得自己是个有用的人，有人需要我', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 2, 1, '2022-07-15 21:08:19', 'feng', '2022-09-15 10:28:20', 'wwwljt', 0);
INSERT INTO `tbl_question_sds` VALUES (18, '我的生活过得很有意思', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 2, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (19, '我认为如果我死了别人会生活得好些', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 1, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (20, '平常感兴趣的事我仍然感兴趣', 'A没有或很少有', 'B有时候有', 'C大部分时间有', 'D绝大部分时间有', 2, 0, '2022-07-15 21:08:19', 'feng', NULL, NULL, 0);
INSERT INTO `tbl_question_sds` VALUES (40, 'sfdga', 'sadfas', 'sdfasdf', 'sdf', 'sdf', 2, 0, '2022-09-14 20:10:33', 'wwwljt', '2022-09-14 20:11:56', 'wwwljt', 0);

-- ----------------------------
-- Table structure for tbl_result_div
-- ----------------------------
DROP TABLE IF EXISTS `tbl_result_div`;
CREATE TABLE `tbl_result_div`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `div1` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `div2` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `div3` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_result_div
-- ----------------------------
INSERT INTO `tbl_result_div` VALUES (1, '<p style=\"font-size: 30px;color: #41464B;\">您的性格是黄色性格</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">行动迅速 死不认错</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">善于忠告 控制欲强</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">不感情用事 咄咄逼人</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">坚持不懈 容易发怒</p>', '<p style=\"font-size: 30px\">【性格优势】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">不达目标，誓不罢休。不停地给自己设定目标以推动前进。把生命当成竞赛。行动迅速，活力充沛。意志坚强。自信、不情绪化，而且非常有活力。坦率，直截了当，一针见血。强烈的进取心，居安思危。独立性强。有强烈的求胜欲。不畏强权并敢于冒险。不易气馁，不在乎外界的评价，坚持自己所选择的道路和方向。危难时刻挺身而出。讲究速度和效率。敢于接受挑战并渴望成功。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">以务实的方式主导会谈。喜欢主导整个事情进行的方式。能够直接抓住问题的本质。说话用字简明扼要，不喜欢拐弯抹角。不受情绪干扰和控制。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">给予解决问题的方法，而非纠缠在过去。迅速提出忠告和方向。直言不讳地提出建议。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">动作干净利落，讲求效率。能够承担长期高强度的压力。强烈的目标趋向，善于设定目标。高瞻远瞩，有全局观念。善于委派工作。坚持不懈，促成活动。掌握重点执行。行事作风明快。天生的领导者和富有组织能力。竞争越强，精力越旺，愈挫愈勇。寻求实际的解决方法。以结果和完成任务为导向，并且高效率。善于快速决策并处理所遇到的一切问题。富有责任感。</p>\r\n                ', '<p style=\"font-size: 30px\">【性格过当】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">自己永远是对的，死不认错。趾高气扬，霸道。只关注自己的感受，不体贴别人的心情和想法。以自我为中心，自私倾向。霸道。脾气暴躁，容易发怒。缺少同情心。傲慢自大，目中无人。经常紧绷自己的情绪。在情绪不佳或有压力的时候，经常会不可理喻与独断专行。不喜欢受群体所规范约束,打破既定规则且自己不遵守规则。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">喜欢争辩和冲突。铁石心肠，对情绪表现冷淡。粗线条，简单粗暴。毫无敏感，无力洞察他人内心和理解他人所想。抗拒批评，严酷且自以为是的审判者。缺乏亲密分享的能力。缺乏耐心，是非常糟糕的倾听者。态度尖锐严厉，批判性强。容易让他人的工作或生活步调紧张。不习惯赞美别人。说话有时咄咄逼人。控制欲强。不太能体谅他人，对行事模式不同的人缺少包容度。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">大多时候仅保持理性的友谊。讨厌与犹豫不决、能力弱的人互动。试图控制和影响大家的活动，希望他人服从自己而非配合别人。除了工作内容，很少交谈其它话题。情感上习惯与人保持一定的距离。很少对人流露出直接诚挚的关怀。需要你的时候才找你。为别人做主。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">生活在无尽的工作当中而不是人群中。数量远比质量重要。目标没有完成时，容易发怒且迁怒于人。寻求更多的权力，有极强的控制欲。拒绝为自己和他人放松。完成工作第一，人的事情第二。为了自己的面子，不妥协且毫不认错。对于竞争结果过分关注而忽略过程中的乐趣。武断，刚愎自用且一意孤行。很难慢下来，缺少生命乐趣的工作狂。未明察就急于改变，急于求成。</p>\r\n                ');
INSERT INTO `tbl_result_div` VALUES (2, ' <p style=\"font-size: 30px;color: #41464B;\">您的性格是红色性格</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">积极乐观 情绪波动大起大落</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">真诚主动 开玩笑不分场合</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">善于表达 疏于兑现承诺</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">富有感染力 这山望着那山高</p>', '<p style=\"font-size: 30px\">【性格优势】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">高度乐观的积极心态。喜欢自己，也容易接纳别人。把生命当作值得享受的经验。喜欢新鲜、变化和刺激。经常开心，追求快乐。情感丰富而外露。自由自在，不受拘束。喜欢开玩笑和调侃。别出心裁，与众不同。表现力强。容易受到人们的喜欢和欢迎。生动活泼，好奇心强。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">才思敏捷，善于表达。喜欢通过肢体上的接触传达亲密情感。容易与人攀谈。发生冲突时，能直接表白。人越多越亢奋。演讲和舞台表演的高手。乐于表达自己的看法。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">真诚主动，热情洋溢。喜欢交友，善于与陌生人互动。擅长搞笑，是带来乐趣的伙伴。容易原谅自己和别人，不记仇。富有个人魅力。乐于助人。有错就认，很快道歉。喜欢接受别人的肯定和不吝赞美。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">工作主动，寻找新任务。富有感染力，能够吸引他人参与。激发团队的热情合作心和进取心，重视团队合作的感觉。令人愉悦的工作伙伴。完成短期目标时，极富爆发力。信任他人。善于赞美和鼓励，是天生的激励者。不喜欢太多的规定束缚，富有创意。工作以活泼化、丰富化的方式进行。反应快，闪电般开始。</p>', '<p style=\"font-size: 30px\">【性格过当】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">情绪波动大起大落。变化无常，随意性强。鲁莽冲动，轻信他人，容易上当受骗。虚荣心强，不肯吃苦，贪图享受。喜欢走捷径，虎头蛇尾，不能坚持。粗心大意，杂乱无章。不肯承担责任，期待有别人为自己的人生负责。缺乏自控，毫无纪律。容易原谅自己，不吸取教训。不稳定和散漫。拒绝长大。借放纵来麻痹自己的痛苦和烦恼，而不去认真思考生命的本质。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">说话少经大脑思考，脱口而出。对于严肃和敏感的事情也会开玩笑。炫耀自己，夺人话题。注意力分散，不能专注倾听，插话。吹牛不打草稿，疏于兑现承诺。忘记别人说过什么，自己讲过的话也经常重复。口无遮拦，不保守秘密。不可靠，光说不练。夸大吹嘘自己的成功。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">缺少分寸，过度的玩笑和热情。只想当主角。谈论自己感兴趣的话题，对和自己无关的话题心不在焉。插嘴打断别人谈话。健忘多变。经常会忘记老朋友。有极强的依赖性，脆弱而不能独立。好心办坏事。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">跳槽频率高，这山望着那山高。没有规划，随意性强。没有焦点，把精力分散在太多的不同方向。过高估计了自己的能力。觉得没有必要为未来做准备。不肯花更大的精力和幕后工作的勤奋代价，来获取更高的殊荣。不切实际地希望所有的工作都要有趣味。很难全神贯注，经常性地走神。异想天开，难以预料。</p>');
INSERT INTO `tbl_result_div` VALUES (3, ' <p style=\"font-size: 30px;color: #41464B;\">您的性格是蓝色性格</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">思想深邃 情感脆弱</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">默默关怀他人 喜好批判和挑剔</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">敏感而细腻 不主动与人沟通</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">计划性强 患得患失</p>', '<p style=\"font-size: 30px\">【性格优势】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">严肃的生活哲学。思想深邃，独立思考而不盲目从众。沉默寡言，老成持重。注重承诺，可靠安全。谨慎而深藏不露。坚守原则，责任心强。遵守规则，井井有条。深沉有目标的理想主义。敏感细腻。高标准，追求完美。谦和稳健。善于分析，富有条理。待人忠诚，富有自我牺牲精神。深思熟虑，三思而后行。坚韧执着。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">享受敏感而有深度的交流。设身处地地体会他人。能记住谈话时共鸣的感情和思想。喜欢小群体交流的思想碰撞。关注谈话的细节。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">默默地为他人付出以表示关切和爱。对友谊忠诚不渝。真诚关怀朋友的境遇，善于体贴他人。能够记得特殊的日子。遭遇难关时，极力给予鼓舞安慰。很少向他人表达内心的看法。经常扮演解决分析问题的角色。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">强调制度、程序、规范、细节和流程。做事之前首先计划且严格按照计划去执行。喜欢探究及根据事实行事。尽忠职守，追求卓越。高度自律。喜欢用表格、数字的管理来验证效果。注重承诺。一丝不苟地执行工作。</p>', '<p style=\"font-size: 30px\">【性格过当】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">高度负面的情绪化。猜忌心重，不信任他人。太在意别人的看法和评价，容易被负面评价中伤。容易沮丧，悲观消极。陷于低落的情绪无法自拔。情感脆弱抑郁，有自怜倾向。杞人忧天，庸人自扰。最容易的抑郁症患者。当别人轻易成功时，会因自己的努力付出却不如他人而心生嫉妒。过于阴沉的面孔，让人感觉压抑，不易接近。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">不知不觉地说教和上纲上线。原则性强，不易妥协。强烈期待别人具有敏感度和深度能够理解自己。以为别人能够读懂自己的心思。不太主动与人沟通。不喜欢制造困扰麻烦给别人，也讨厌别人制造困扰麻烦给自己。要真诚开放心胸与人互动会比较难。习惯以防卫的状态面对别人。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">过度敏感，有时很难相处。强烈的不安全感。远离人群。喜好批判和挑剔。吝于宽恕。经常怀疑别人的话，不容易相信他人。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">对自己和他人常寄予过高而且不切实际的期望。过度计划和过度绸缪。患得患失，行动缓慢。较真，挑剔他人及自己的表现。专注于小细节，因小失大。吝啬表扬，强烈的形式主义。容易被不理想的成绩击垮斗志。墨守成规，死板教条不懂变通。为了维护原则缺乏妥协精神。</p>');
INSERT INTO `tbl_result_div` VALUES (4, '<p style=\"font-size: 30px;color: #41464B;\">您的性格是绿色性格</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">温柔祥和 拒绝改变</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">为他人考虑 胆小被动</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">心平气和 没有主见</p>\r\n                    <p style=\"font-size: 20px;color: #41464B;margin: 20px\">善于协调 缺乏创意</p>', '<p style=\"font-size: 30px\">【性格优势】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">爱静不爱动，有温柔祥和的吸引力和宁静愉悦的气质。和善的天性，做人厚道。追求人际关系的和谐。奉行中庸之道，为人稳定低调。遇事以不变应万变，镇定自若。知足常乐，心态轻松。追求平淡的幸福生活。有松弛感，能融入所有的环境和场合。从不发火，温和、谦和、平和三和一体。做人懂得“得饶人处且饶人”。追求简单随意的生活方式。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">以柔克刚，不战而屈人之兵。避免冲突，注重双赢。心平气和且慢条斯理。善于接纳他意见。最佳的倾听者，极具耐心。擅长让别人感觉舒适。有自然和不经意的冷幽默。松弛大度，不急不徐。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">从无攻击性。富有同情和关心。宽恕他人对自己的伤害。能接纳所有不同性格的人。和善的天性及圆滑的手腕。对友情的要求不严苛。处处为别人考虑，不吝付出。与之相处轻松自然又没有压力。最佳的垃圾宣泄处，鼓励他们的朋友多谈自己。从不尝试去改变他人。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">高超的协调人际关系的能力。善于从容地面对压力。巧妙地化解冲突。能超脱游离政治斗争之外，没有敌人。缓步前进以取得思考空间。注重人本管理。推崇一种员工都积极参与的工作环境。尊重员工的独立性，从而博得人心和凝聚力。善于为别人着想。以团体为导向。创造稳定性。用自然低调的行事手法处理事务。</p>', '<p style=\"font-size: 30px\">【性格过当】</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为个体</p>\r\n                    <p style=\"text-align: left\">按照惯性来做事，拒绝改变，对于外界变化置若罔闻。懒洋洋的作风，原谅自己的不思进取。懦弱胆小，纵容别人欺压自己。期待事情会自动解决，完全守望被动。得过且过。无原则地妥协，而无法促使他们采取负责任的解决态度。逃避问题与冲突。太在意别人反应，不敢表达自己的立场和原则。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">沟通特点</p>\r\n                    <p style=\"text-align: left\">一拳打在棉花上，毫无反应。没有主见，把压力和负担通通转嫁到他人身上。不会拒绝他人，给自己和他人都带来无穷麻烦。行动迟钝，慢慢腾腾。避免承担责任。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">作为朋友</p>\r\n                    <p style=\"text-align: left\">不负责任的和稀泥。姑息养奸的态度。压抑自己的感受以迁就别人。期待让人人满意，对自己的内心不忠诚。没有自我，迷失人生的方向。缺乏激情。漠不关心，惰于参与任何活动。</p>\r\n                    <p style=\"font-size: 15px;font-weight: bold;margin: 5px\">对待工作和事业</p>\r\n                    <p style=\"text-align: left\">安于现状，不思进取。乐于平庸，缺乏创意。害怕冒风险，缺乏自信。拖拖拉拉。缺少目标。缺乏自觉性。懒惰而不进取。宁愿做旁观者不肯做参与者。</p>');

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role`  (
  `role_id` int NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES (1, '管理员', 'admin', 1, '0', '0', 'Enzo', '2018-03-16 11:33:00', 'wwwljt', '2022-09-22 18:28:54', '管理员');
INSERT INTO `tbl_role` VALUES (2, '普通角色', 'common', 2, '1', '0', 'Enzo', '2018-03-16 11:33:00', 'wwwljt', '2022-09-19 14:43:42', '普通角色');
INSERT INTO `tbl_role` VALUES (3, '测试人员', 'test', 3, '0', '0', 'admin', '2021-12-18 15:18:14', 'wwwljt', '2022-09-22 18:29:10', '测试使用');
INSERT INTO `tbl_role` VALUES (11, '超级管理员', 'super', 0, '0', '0', 'wwwljt', '2022-09-17 19:05:01', 'wwwljt', '2022-09-22 18:42:39', 'www');

-- ----------------------------
-- Table structure for tbl_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role_menu`;
CREATE TABLE `tbl_role_menu`  (
  `role_id` int NOT NULL COMMENT '角色ID',
  `menu_id` int NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_role_menu
-- ----------------------------
INSERT INTO `tbl_role_menu` VALUES (1, 1);
INSERT INTO `tbl_role_menu` VALUES (1, 3);
INSERT INTO `tbl_role_menu` VALUES (1, 5);
INSERT INTO `tbl_role_menu` VALUES (1, 100);
INSERT INTO `tbl_role_menu` VALUES (1, 101);
INSERT INTO `tbl_role_menu` VALUES (1, 102);
INSERT INTO `tbl_role_menu` VALUES (1, 103);
INSERT INTO `tbl_role_menu` VALUES (1, 109);
INSERT INTO `tbl_role_menu` VALUES (1, 110);
INSERT INTO `tbl_role_menu` VALUES (1, 111);
INSERT INTO `tbl_role_menu` VALUES (1, 1000);
INSERT INTO `tbl_role_menu` VALUES (1, 1001);
INSERT INTO `tbl_role_menu` VALUES (1, 1002);
INSERT INTO `tbl_role_menu` VALUES (1, 1003);
INSERT INTO `tbl_role_menu` VALUES (1, 1004);
INSERT INTO `tbl_role_menu` VALUES (1, 1005);
INSERT INTO `tbl_role_menu` VALUES (1, 1006);
INSERT INTO `tbl_role_menu` VALUES (1, 1007);
INSERT INTO `tbl_role_menu` VALUES (1, 1008);
INSERT INTO `tbl_role_menu` VALUES (1, 1009);
INSERT INTO `tbl_role_menu` VALUES (1, 1010);
INSERT INTO `tbl_role_menu` VALUES (1, 1011);
INSERT INTO `tbl_role_menu` VALUES (1, 1012);
INSERT INTO `tbl_role_menu` VALUES (1, 1013);
INSERT INTO `tbl_role_menu` VALUES (1, 1014);
INSERT INTO `tbl_role_menu` VALUES (1, 1015);
INSERT INTO `tbl_role_menu` VALUES (1, 1016);
INSERT INTO `tbl_role_menu` VALUES (1, 1017);
INSERT INTO `tbl_role_menu` VALUES (1, 1018);
INSERT INTO `tbl_role_menu` VALUES (1, 1025);
INSERT INTO `tbl_role_menu` VALUES (1, 1026);
INSERT INTO `tbl_role_menu` VALUES (1, 1029);
INSERT INTO `tbl_role_menu` VALUES (1, 1030);
INSERT INTO `tbl_role_menu` VALUES (1, 1033);
INSERT INTO `tbl_role_menu` VALUES (1, 1034);
INSERT INTO `tbl_role_menu` VALUES (1, 1035);
INSERT INTO `tbl_role_menu` VALUES (1, 1036);
INSERT INTO `tbl_role_menu` VALUES (1, 1037);
INSERT INTO `tbl_role_menu` VALUES (1, 1038);
INSERT INTO `tbl_role_menu` VALUES (1, 1039);
INSERT INTO `tbl_role_menu` VALUES (1, 1040);
INSERT INTO `tbl_role_menu` VALUES (1, 1041);
INSERT INTO `tbl_role_menu` VALUES (1, 1042);
INSERT INTO `tbl_role_menu` VALUES (1, 1043);
INSERT INTO `tbl_role_menu` VALUES (2, 1);
INSERT INTO `tbl_role_menu` VALUES (2, 109);
INSERT INTO `tbl_role_menu` VALUES (2, 110);
INSERT INTO `tbl_role_menu` VALUES (2, 111);
INSERT INTO `tbl_role_menu` VALUES (2, 1026);
INSERT INTO `tbl_role_menu` VALUES (2, 1029);
INSERT INTO `tbl_role_menu` VALUES (2, 1030);
INSERT INTO `tbl_role_menu` VALUES (2, 1033);
INSERT INTO `tbl_role_menu` VALUES (2, 1034);
INSERT INTO `tbl_role_menu` VALUES (2, 1035);
INSERT INTO `tbl_role_menu` VALUES (2, 1036);
INSERT INTO `tbl_role_menu` VALUES (2, 1037);
INSERT INTO `tbl_role_menu` VALUES (2, 1038);
INSERT INTO `tbl_role_menu` VALUES (2, 1039);
INSERT INTO `tbl_role_menu` VALUES (2, 1040);
INSERT INTO `tbl_role_menu` VALUES (2, 1041);
INSERT INTO `tbl_role_menu` VALUES (2, 1042);
INSERT INTO `tbl_role_menu` VALUES (2, 1043);
INSERT INTO `tbl_role_menu` VALUES (3, 1);
INSERT INTO `tbl_role_menu` VALUES (3, 5);
INSERT INTO `tbl_role_menu` VALUES (3, 109);
INSERT INTO `tbl_role_menu` VALUES (3, 110);
INSERT INTO `tbl_role_menu` VALUES (3, 111);
INSERT INTO `tbl_role_menu` VALUES (3, 1025);
INSERT INTO `tbl_role_menu` VALUES (3, 1026);
INSERT INTO `tbl_role_menu` VALUES (3, 1029);
INSERT INTO `tbl_role_menu` VALUES (3, 1030);
INSERT INTO `tbl_role_menu` VALUES (3, 1033);
INSERT INTO `tbl_role_menu` VALUES (3, 1034);
INSERT INTO `tbl_role_menu` VALUES (3, 1035);
INSERT INTO `tbl_role_menu` VALUES (3, 1036);
INSERT INTO `tbl_role_menu` VALUES (3, 1037);
INSERT INTO `tbl_role_menu` VALUES (3, 1038);
INSERT INTO `tbl_role_menu` VALUES (3, 1039);
INSERT INTO `tbl_role_menu` VALUES (3, 1040);
INSERT INTO `tbl_role_menu` VALUES (3, 1041);
INSERT INTO `tbl_role_menu` VALUES (3, 1042);
INSERT INTO `tbl_role_menu` VALUES (3, 1043);
INSERT INTO `tbl_role_menu` VALUES (11, 1);
INSERT INTO `tbl_role_menu` VALUES (11, 3);
INSERT INTO `tbl_role_menu` VALUES (11, 5);
INSERT INTO `tbl_role_menu` VALUES (11, 100);
INSERT INTO `tbl_role_menu` VALUES (11, 101);
INSERT INTO `tbl_role_menu` VALUES (11, 102);
INSERT INTO `tbl_role_menu` VALUES (11, 103);
INSERT INTO `tbl_role_menu` VALUES (11, 109);
INSERT INTO `tbl_role_menu` VALUES (11, 110);
INSERT INTO `tbl_role_menu` VALUES (11, 111);
INSERT INTO `tbl_role_menu` VALUES (11, 1000);
INSERT INTO `tbl_role_menu` VALUES (11, 1001);
INSERT INTO `tbl_role_menu` VALUES (11, 1002);
INSERT INTO `tbl_role_menu` VALUES (11, 1003);
INSERT INTO `tbl_role_menu` VALUES (11, 1004);
INSERT INTO `tbl_role_menu` VALUES (11, 1005);
INSERT INTO `tbl_role_menu` VALUES (11, 1006);
INSERT INTO `tbl_role_menu` VALUES (11, 1007);
INSERT INTO `tbl_role_menu` VALUES (11, 1008);
INSERT INTO `tbl_role_menu` VALUES (11, 1009);
INSERT INTO `tbl_role_menu` VALUES (11, 1010);
INSERT INTO `tbl_role_menu` VALUES (11, 1011);
INSERT INTO `tbl_role_menu` VALUES (11, 1012);
INSERT INTO `tbl_role_menu` VALUES (11, 1013);
INSERT INTO `tbl_role_menu` VALUES (11, 1014);
INSERT INTO `tbl_role_menu` VALUES (11, 1015);
INSERT INTO `tbl_role_menu` VALUES (11, 1016);
INSERT INTO `tbl_role_menu` VALUES (11, 1017);
INSERT INTO `tbl_role_menu` VALUES (11, 1018);
INSERT INTO `tbl_role_menu` VALUES (11, 1025);
INSERT INTO `tbl_role_menu` VALUES (11, 1026);
INSERT INTO `tbl_role_menu` VALUES (11, 1029);
INSERT INTO `tbl_role_menu` VALUES (11, 1030);
INSERT INTO `tbl_role_menu` VALUES (11, 1033);
INSERT INTO `tbl_role_menu` VALUES (11, 1034);
INSERT INTO `tbl_role_menu` VALUES (11, 1035);
INSERT INTO `tbl_role_menu` VALUES (11, 1036);
INSERT INTO `tbl_role_menu` VALUES (11, 1037);
INSERT INTO `tbl_role_menu` VALUES (11, 1038);
INSERT INTO `tbl_role_menu` VALUES (11, 1039);
INSERT INTO `tbl_role_menu` VALUES (11, 1040);
INSERT INTO `tbl_role_menu` VALUES (11, 1041);
INSERT INTO `tbl_role_menu` VALUES (11, 1042);
INSERT INTO `tbl_role_menu` VALUES (11, 1043);
INSERT INTO `tbl_role_menu` VALUES (11, 1044);
INSERT INTO `tbl_role_menu` VALUES (11, 1052);

-- ----------------------------
-- Table structure for tbl_test_plan_fpa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_plan_fpa`;
CREATE TABLE `tbl_test_plan_fpa`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '测试计划id',
  `test_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '测试名称',
  `test_code` int NOT NULL COMMENT '测试代码(随机生成)',
  `test_begin` datetime NOT NULL COMMENT '开始时间',
  `test_end` datetime NOT NULL COMMENT '结束时间',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '测试计划fpa' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_test_plan_fpa
-- ----------------------------
INSERT INTO `tbl_test_plan_fpa` VALUES (1, 'qy154fpa测试', 123458, '2022-06-29 09:47:14', '2022-06-29 09:45:28', NULL, NULL, NULL, NULL, NULL, 'fpa');
INSERT INTO `tbl_test_plan_fpa` VALUES (3, '手动阀手动阀', 854643, '2022-07-15 15:00:56', '2022-07-17 15:00:56', '2022-07-15 15:00:59', 'feng', '2022-07-15 15:16:43', 'feng', '三十分网球', 'fpa');
INSERT INTO `tbl_test_plan_fpa` VALUES (6, 'dsfsdf', 573726, '2022-07-15 18:13:04', '2022-07-17 18:13:04', '2022-07-15 18:13:06', 'feng', NULL, NULL, 'dsfsdf', 'sas');
INSERT INTO `tbl_test_plan_fpa` VALUES (8, 'dfsd', 460652, '2022-07-22 15:49:46', '2022-07-24 15:49:56', '2022-07-22 15:50:02', 'feng', NULL, NULL, '', 'fpa');

-- ----------------------------
-- Table structure for tbl_test_plan_sas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_plan_sas`;
CREATE TABLE `tbl_test_plan_sas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `test_code` int NULL DEFAULT NULL,
  `test_begin` timestamp NULL DEFAULT NULL,
  `test_end` timestamp NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '测试计划fpa' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_test_plan_sas
-- ----------------------------
INSERT INTO `tbl_test_plan_sas` VALUES (1, '157测试', 123456, '2022-06-29 09:45:39', '2022-05-18 09:06:20', NULL, NULL, '2022-09-22 20:55:36', 'CM', 'dssdf', 'sas');
INSERT INTO `tbl_test_plan_sas` VALUES (6, 'sdfsdfsdf', 860526, '2022-07-15 18:31:23', '2022-07-17 18:31:23', '2022-07-15 18:31:26', 'feng', NULL, NULL, 'sdfsdfsdf', 'sas');
INSERT INTO `tbl_test_plan_sas` VALUES (7, 'hjfdhgjhhgfgds', 893376, '2022-07-15 18:31:31', '2022-07-17 18:31:31', '2022-07-15 18:31:35', 'feng', '2022-07-15 18:38:50', 'feng', 'fd', 'sas');

-- ----------------------------
-- Table structure for tbl_test_plan_sds
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_plan_sds`;
CREATE TABLE `tbl_test_plan_sds`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `test_code` int NULL DEFAULT NULL,
  `test_begin` timestamp NULL DEFAULT NULL,
  `test_end` timestamp NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_by` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'sds',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '测试计划fpa' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_test_plan_sds
-- ----------------------------
INSERT INTO `tbl_test_plan_sds` VALUES (1, 'qy153sds测试', 123457, '2022-09-14 09:06:28', '2022-10-01 09:06:31', '2022-09-14 18:12:42', 'wwwljt', '2022-09-14 19:38:19', 'wwwljt', 'testdf', 'sds');
INSERT INTO `tbl_test_plan_sds` VALUES (2, 'qy153sds测试', 123457, '2022-06-30 09:06:28', '2022-06-30 09:06:31', '2022-09-14 18:12:42', 'wwwljt', '2022-09-14 18:12:47', 'wwwljt', 'test', 'sds');
INSERT INTO `tbl_test_plan_sds` VALUES (3, 'qy153sds测试', 123457, '2022-06-30 09:06:28', '2022-06-30 09:06:31', '2022-09-14 18:12:42', 'wwwljt', '2022-09-14 18:12:47', 'wwwljt', 'test', 'sds');
INSERT INTO `tbl_test_plan_sds` VALUES (7, 'w_test', NULL, '2022-09-14 19:48:20', '2022-09-14 19:48:20', '2022-09-14 19:48:26', 'wwwljt', '2022-09-14 19:48:26', 'wwwljt', 'www', 'sds');
INSERT INTO `tbl_test_plan_sds` VALUES (8, 'www_test', NULL, '2022-09-14 19:59:51', '2022-09-14 19:59:51', '2022-09-14 20:00:02', 'wwwljt', '2022-09-14 20:00:02', 'wwwljt', 'www', 'sds');

-- ----------------------------
-- Table structure for tbl_test_result_fpa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_result_fpa`;
CREATE TABLE `tbl_test_result_fpa`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键自增',
  `tester_id` int NULL DEFAULT NULL COMMENT '测试人员id',
  `question_id` int NULL DEFAULT NULL COMMENT '测试题id',
  `answer` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '题目答案',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 995 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_test_result_fpa
-- ----------------------------
INSERT INTO `tbl_test_result_fpa` VALUES (61, 3, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (62, 3, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (63, 3, 3, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (64, 3, 4, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (65, 3, 5, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (66, 3, 6, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (67, 3, 7, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (68, 3, 8, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (69, 3, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (70, 3, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (71, 3, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (72, 3, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (73, 3, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (74, 3, 14, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (75, 3, 15, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (76, 3, 16, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (77, 3, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (78, 3, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (79, 3, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (80, 3, 20, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (81, 3, 21, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (82, 3, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (83, 3, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (84, 3, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (85, 3, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (86, 3, 26, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (87, 3, 27, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (88, 3, 28, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (89, 3, 29, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (90, 3, 30, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (91, 4, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (92, 4, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (93, 4, 3, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (94, 4, 4, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (95, 4, 5, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (96, 4, 6, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (97, 4, 7, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (98, 4, 8, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (99, 4, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (100, 4, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (101, 4, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (102, 4, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (103, 4, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (104, 4, 14, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (105, 4, 15, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (106, 4, 16, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (107, 4, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (108, 4, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (109, 4, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (110, 4, 20, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (111, 4, 21, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (112, 4, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (113, 4, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (114, 4, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (115, 4, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (116, 4, 26, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (117, 4, 27, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (118, 4, 28, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (119, 4, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (120, 4, 30, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (121, 6, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (122, 6, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (123, 6, 3, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (124, 6, 4, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (125, 6, 5, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (126, 6, 6, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (127, 6, 7, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (128, 6, 8, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (129, 6, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (130, 6, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (131, 6, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (132, 6, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (133, 6, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (134, 6, 14, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (135, 6, 15, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (136, 6, 16, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (137, 6, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (138, 6, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (139, 6, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (140, 6, 20, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (141, 6, 21, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (142, 6, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (143, 6, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (144, 6, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (145, 6, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (146, 6, 26, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (147, 6, 27, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (148, 6, 28, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (149, 6, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (150, 6, 30, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (151, 6, 32, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (152, 7, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (153, 7, 2, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (154, 7, 3, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (155, 7, 4, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (156, 7, 5, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (157, 7, 6, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (158, 7, 7, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (159, 7, 8, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (160, 7, 9, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (161, 7, 10, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (162, 7, 11, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (163, 7, 12, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (164, 7, 13, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (165, 7, 14, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (166, 7, 15, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (167, 7, 16, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (168, 7, 17, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (169, 7, 18, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (170, 7, 19, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (171, 7, 20, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (172, 7, 21, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (173, 7, 22, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (174, 7, 23, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (175, 7, 24, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (176, 7, 25, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (177, 7, 26, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (178, 7, 27, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (179, 7, 28, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (180, 7, 29, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (181, 7, 30, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (182, 7, 32, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (183, 8, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (184, 8, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (185, 8, 3, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (186, 8, 4, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (187, 8, 5, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (188, 8, 6, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (189, 8, 7, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (190, 8, 8, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (191, 8, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (192, 8, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (193, 8, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (194, 8, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (195, 8, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (196, 8, 14, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (197, 8, 15, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (198, 8, 16, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (199, 8, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (200, 8, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (201, 8, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (202, 8, 20, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (203, 8, 21, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (204, 8, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (205, 8, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (206, 8, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (207, 8, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (208, 8, 26, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (209, 8, 27, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (210, 8, 28, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (211, 8, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (212, 8, 30, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (213, 8, 32, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (214, 9, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (215, 9, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (216, 9, 3, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (217, 9, 4, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (218, 9, 5, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (219, 9, 6, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (220, 9, 7, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (221, 9, 8, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (222, 9, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (223, 9, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (224, 9, 11, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (225, 9, 12, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (226, 9, 13, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (227, 9, 14, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (228, 9, 15, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (229, 9, 16, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (230, 9, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (231, 9, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (232, 9, 19, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (233, 9, 20, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (234, 9, 21, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (235, 9, 22, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (236, 9, 23, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (237, 9, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (238, 9, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (239, 9, 26, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (240, 9, 27, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (241, 9, 28, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (242, 9, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (243, 9, 30, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (244, 9, 32, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (245, 10, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (246, 10, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (247, 10, 3, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (248, 10, 4, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (249, 10, 5, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (250, 10, 6, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (251, 10, 7, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (252, 10, 8, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (253, 10, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (254, 10, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (255, 10, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (256, 10, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (257, 10, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (258, 10, 14, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (259, 10, 15, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (260, 10, 16, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (261, 10, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (262, 10, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (263, 10, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (264, 10, 20, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (265, 10, 21, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (266, 10, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (267, 10, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (268, 10, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (269, 10, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (270, 10, 26, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (271, 10, 27, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (272, 10, 28, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (273, 10, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (274, 10, 30, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (275, 11, 1, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (276, 11, 2, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (277, 11, 3, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (278, 11, 4, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (279, 11, 5, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (280, 11, 6, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (281, 11, 7, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (282, 11, 8, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (283, 11, 9, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (284, 11, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (285, 11, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (286, 11, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (287, 11, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (288, 11, 14, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (289, 11, 15, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (290, 11, 16, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (291, 11, 17, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (292, 11, 18, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (293, 11, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (294, 11, 20, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (295, 11, 21, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (296, 11, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (297, 11, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (298, 11, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (299, 11, 25, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (300, 11, 26, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (301, 11, 27, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (302, 11, 28, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (303, 11, 29, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (304, 11, 30, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (305, 12, 1, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (306, 12, 2, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (307, 12, 3, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (308, 12, 4, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (309, 12, 5, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (310, 12, 6, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (311, 12, 7, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (312, 12, 8, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (313, 12, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (314, 12, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (315, 12, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (316, 12, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (317, 12, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (318, 12, 14, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (319, 12, 15, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (320, 12, 16, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (321, 12, 17, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (322, 12, 18, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (323, 12, 19, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (324, 12, 20, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (325, 12, 21, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (326, 12, 22, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (327, 12, 23, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (328, 12, 24, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (329, 12, 25, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (330, 12, 26, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (331, 12, 27, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (332, 12, 28, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (333, 12, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (334, 12, 30, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (335, 13, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (336, 13, 2, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (337, 13, 3, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (338, 13, 4, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (339, 13, 5, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (340, 13, 6, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (341, 13, 7, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (342, 13, 8, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (343, 13, 9, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (344, 13, 10, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (345, 13, 11, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (346, 13, 12, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (347, 13, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (348, 13, 14, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (349, 13, 15, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (350, 13, 16, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (351, 13, 17, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (352, 13, 18, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (353, 13, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (354, 13, 20, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (355, 13, 21, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (356, 13, 22, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (357, 13, 23, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (358, 13, 24, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (359, 13, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (360, 13, 26, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (361, 13, 27, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (362, 13, 28, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (363, 13, 29, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (364, 13, 30, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (365, 14, 1, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (366, 14, 2, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (367, 14, 3, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (368, 14, 4, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (369, 14, 5, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (370, 14, 6, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (371, 14, 7, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (372, 14, 8, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (373, 14, 9, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (374, 14, 10, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (375, 14, 11, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (376, 14, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (377, 14, 13, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (378, 14, 14, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (379, 14, 15, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (380, 14, 16, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (381, 14, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (382, 14, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (383, 14, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (384, 14, 20, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (385, 14, 21, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (386, 14, 22, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (387, 14, 23, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (388, 14, 24, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (389, 14, 25, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (390, 14, 26, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (391, 14, 27, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (392, 14, 28, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (393, 14, 29, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (394, 14, 30, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (395, 15, 1, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (396, 15, 2, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (397, 15, 3, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (398, 15, 4, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (399, 15, 5, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (400, 15, 6, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (401, 15, 7, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (402, 15, 8, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (403, 15, 9, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (404, 15, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (405, 15, 11, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (406, 15, 12, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (407, 15, 13, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (408, 15, 14, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (409, 15, 15, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (410, 15, 16, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (411, 15, 17, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (412, 15, 18, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (413, 15, 19, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (414, 15, 20, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (415, 15, 21, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (416, 15, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (417, 15, 23, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (418, 15, 24, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (419, 15, 25, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (420, 15, 26, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (421, 15, 27, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (422, 15, 28, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (423, 15, 29, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (424, 15, 30, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (425, 16, 1, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (426, 16, 2, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (427, 16, 3, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (428, 16, 4, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (429, 16, 5, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (430, 16, 6, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (431, 16, 7, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (432, 16, 8, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (433, 16, 9, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (434, 16, 10, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (435, 16, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (436, 16, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (437, 16, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (438, 16, 14, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (439, 16, 15, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (440, 16, 16, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (441, 16, 17, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (442, 16, 18, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (443, 16, 19, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (444, 16, 20, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (445, 16, 21, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (446, 16, 22, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (447, 16, 23, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (448, 16, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (449, 16, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (450, 16, 26, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (451, 16, 27, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (452, 16, 28, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (453, 16, 29, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (454, 16, 30, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (455, 17, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (456, 17, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (457, 17, 3, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (458, 17, 4, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (459, 17, 5, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (460, 17, 6, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (461, 17, 7, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (462, 17, 8, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (463, 17, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (464, 17, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (465, 17, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (466, 17, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (467, 17, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (468, 17, 14, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (469, 17, 15, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (470, 17, 16, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (471, 17, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (472, 17, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (473, 17, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (474, 17, 20, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (475, 17, 21, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (476, 17, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (477, 17, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (478, 17, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (479, 17, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (480, 17, 26, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (481, 17, 27, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (482, 17, 28, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (483, 17, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (484, 17, 30, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (485, 18, 1, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (486, 18, 2, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (487, 18, 3, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (488, 18, 4, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (489, 18, 5, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (490, 18, 6, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (491, 18, 7, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (492, 18, 8, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (493, 18, 9, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (494, 18, 10, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (495, 18, 11, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (496, 18, 12, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (497, 18, 13, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (498, 18, 14, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (499, 18, 15, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (500, 18, 16, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (501, 18, 17, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (502, 18, 18, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (503, 18, 19, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (504, 18, 20, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (505, 18, 21, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (506, 18, 22, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (507, 18, 23, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (508, 18, 24, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (509, 18, 25, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (510, 18, 26, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (511, 18, 27, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (512, 18, 28, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (513, 18, 29, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (514, 18, 30, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (515, 19, 1, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (516, 19, 2, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (517, 19, 3, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (518, 19, 4, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (519, 19, 5, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (520, 19, 6, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (521, 19, 7, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (522, 19, 8, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (523, 19, 9, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (524, 19, 10, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (525, 19, 11, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (526, 19, 12, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (527, 19, 13, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (528, 19, 14, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (529, 19, 15, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (530, 19, 16, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (531, 19, 17, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (532, 19, 18, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (533, 19, 19, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (534, 19, 20, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (535, 19, 21, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (536, 19, 22, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (537, 19, 23, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (538, 19, 24, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (539, 19, 25, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (540, 19, 26, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (541, 19, 27, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (542, 19, 28, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (543, 19, 29, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (544, 19, 30, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (545, 20, 1, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (546, 20, 2, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (547, 20, 3, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (548, 20, 4, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (549, 20, 5, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (550, 20, 6, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (551, 20, 7, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (552, 20, 8, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (553, 20, 9, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (554, 20, 10, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (555, 20, 11, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (556, 20, 12, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (557, 20, 13, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (558, 20, 14, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (559, 20, 15, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (560, 20, 16, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (561, 20, 17, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (562, 20, 18, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (563, 20, 19, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (564, 20, 20, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (565, 20, 21, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (566, 20, 22, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (567, 20, 23, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (568, 20, 24, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (569, 20, 25, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (570, 20, 26, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (571, 20, 27, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (572, 20, 28, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (573, 20, 29, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (574, 20, 30, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (575, 21, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (576, 21, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (577, 21, 3, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (578, 21, 4, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (579, 21, 5, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (580, 21, 6, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (581, 21, 7, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (582, 21, 8, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (583, 21, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (584, 21, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (585, 21, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (586, 21, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (587, 21, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (588, 21, 14, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (589, 21, 15, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (590, 21, 16, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (591, 21, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (592, 21, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (593, 21, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (594, 21, 20, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (595, 21, 21, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (596, 21, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (597, 21, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (598, 21, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (599, 21, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (600, 21, 26, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (601, 21, 27, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (602, 21, 28, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (603, 21, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (604, 21, 30, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (605, 22, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (606, 22, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (607, 22, 3, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (608, 22, 4, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (609, 22, 5, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (610, 22, 6, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (611, 22, 7, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (612, 22, 8, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (613, 22, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (614, 22, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (615, 22, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (616, 22, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (617, 22, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (618, 22, 14, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (619, 22, 15, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (620, 22, 16, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (621, 22, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (622, 22, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (623, 22, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (624, 22, 20, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (625, 22, 21, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (626, 22, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (627, 22, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (628, 22, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (629, 22, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (630, 22, 26, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (631, 22, 27, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (632, 22, 28, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (633, 22, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (634, 22, 30, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (635, 23, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (636, 23, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (637, 23, 3, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (638, 23, 4, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (639, 23, 5, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (640, 23, 6, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (641, 23, 7, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (642, 23, 8, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (643, 23, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (644, 23, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (645, 23, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (646, 23, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (647, 23, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (648, 23, 14, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (649, 23, 15, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (650, 23, 16, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (651, 23, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (652, 23, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (653, 23, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (654, 23, 20, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (655, 23, 21, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (656, 23, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (657, 23, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (658, 23, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (659, 23, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (660, 23, 26, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (661, 23, 27, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (662, 23, 28, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (663, 23, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (664, 23, 30, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (665, 24, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (666, 24, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (667, 24, 3, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (668, 24, 4, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (669, 24, 5, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (670, 24, 6, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (671, 24, 7, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (672, 24, 8, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (673, 24, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (674, 24, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (675, 24, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (676, 24, 12, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (677, 24, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (678, 24, 14, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (679, 24, 15, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (680, 24, 16, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (681, 24, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (682, 24, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (683, 24, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (684, 24, 20, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (685, 24, 21, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (686, 24, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (687, 24, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (688, 24, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (689, 24, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (690, 24, 26, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (691, 24, 27, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (692, 24, 28, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (693, 24, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (694, 24, 30, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (695, 25, 1, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (696, 25, 2, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (697, 25, 3, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (698, 25, 4, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (699, 25, 5, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (700, 25, 6, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (701, 25, 7, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (702, 25, 8, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (703, 25, 9, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (704, 25, 10, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (705, 25, 11, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (706, 25, 12, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (707, 25, 13, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (708, 25, 14, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (709, 25, 15, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (710, 25, 16, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (711, 25, 17, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (712, 25, 18, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (713, 25, 19, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (714, 25, 20, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (715, 25, 21, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (716, 25, 22, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (717, 25, 23, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (718, 25, 24, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (719, 25, 25, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (720, 25, 26, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (721, 25, 27, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (722, 25, 28, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (723, 25, 29, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (724, 25, 30, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (725, 26, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (726, 26, 2, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (727, 26, 3, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (728, 26, 4, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (729, 26, 5, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (730, 26, 6, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (731, 26, 7, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (732, 26, 8, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (733, 26, 9, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (734, 26, 10, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (735, 26, 11, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (736, 26, 12, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (737, 26, 13, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (738, 26, 14, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (739, 26, 15, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (740, 26, 16, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (741, 26, 17, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (742, 26, 18, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (743, 26, 19, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (744, 26, 20, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (745, 26, 21, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (746, 26, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (747, 26, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (748, 26, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (749, 26, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (750, 26, 26, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (751, 26, 27, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (752, 26, 28, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (753, 26, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (754, 26, 30, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (755, 27, 1, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (756, 27, 2, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (757, 27, 3, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (758, 27, 4, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (759, 27, 5, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (760, 27, 6, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (761, 27, 7, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (762, 27, 8, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (763, 27, 9, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (764, 27, 10, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (765, 27, 11, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (766, 27, 12, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (767, 27, 13, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (768, 27, 14, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (769, 27, 15, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (770, 27, 16, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (771, 27, 17, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (772, 27, 18, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (773, 27, 19, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (774, 27, 20, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (775, 27, 21, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (776, 27, 22, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (777, 27, 23, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (778, 27, 24, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (779, 27, 25, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (780, 27, 26, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (781, 27, 27, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (782, 27, 28, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (783, 27, 29, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (784, 27, 30, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (785, 28, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (786, 28, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (787, 28, 3, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (788, 28, 4, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (789, 28, 5, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (790, 28, 6, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (791, 28, 7, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (792, 28, 8, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (793, 28, 9, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (794, 28, 10, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (795, 28, 11, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (796, 28, 12, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (797, 28, 13, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (798, 28, 14, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (799, 28, 15, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (800, 28, 16, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (801, 28, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (802, 28, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (803, 28, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (804, 28, 20, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (805, 28, 21, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (806, 28, 22, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (807, 28, 23, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (808, 28, 24, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (809, 28, 25, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (810, 28, 26, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (811, 28, 27, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (812, 28, 28, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (813, 28, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (814, 28, 30, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (815, 29, 1, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (816, 29, 2, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (817, 29, 3, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (818, 29, 4, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (819, 29, 5, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (820, 29, 6, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (821, 29, 7, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (822, 29, 8, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (823, 29, 9, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (824, 29, 10, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (825, 29, 11, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (826, 29, 12, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (827, 29, 13, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (828, 29, 14, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (829, 29, 15, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (830, 29, 16, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (831, 29, 17, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (832, 29, 18, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (833, 29, 19, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (834, 29, 20, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (835, 29, 21, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (836, 29, 22, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (837, 29, 23, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (838, 29, 24, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (839, 29, 25, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (840, 29, 26, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (841, 29, 27, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (842, 29, 28, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (843, 29, 29, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (844, 29, 30, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (845, 30, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (846, 30, 2, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (847, 30, 3, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (848, 30, 4, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (849, 30, 5, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (850, 30, 6, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (851, 30, 7, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (852, 30, 8, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (853, 30, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (854, 30, 10, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (855, 30, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (856, 30, 12, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (857, 30, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (858, 30, 14, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (859, 30, 15, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (860, 30, 16, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (861, 30, 17, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (862, 30, 18, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (863, 30, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (864, 30, 20, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (865, 30, 21, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (866, 30, 22, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (867, 30, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (868, 30, 24, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (869, 30, 25, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (870, 30, 26, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (871, 30, 27, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (872, 30, 28, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (873, 30, 29, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (874, 30, 30, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (875, 31, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (876, 31, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (877, 31, 3, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (878, 31, 4, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (879, 31, 5, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (880, 31, 6, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (881, 31, 7, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (882, 31, 8, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (883, 31, 9, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (884, 31, 10, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (885, 31, 11, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (886, 31, 12, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (887, 31, 13, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (888, 31, 14, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (889, 31, 15, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (890, 31, 16, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (891, 31, 17, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (892, 31, 18, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (893, 31, 19, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (894, 31, 20, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (895, 31, 21, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (896, 31, 22, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (897, 31, 23, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (898, 31, 24, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (899, 31, 25, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (900, 31, 26, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (901, 31, 27, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (902, 31, 28, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (903, 31, 29, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (904, 31, 30, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (965, 34, 1, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (966, 34, 2, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (967, 34, 3, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (968, 34, 4, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (969, 34, 5, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (970, 34, 6, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (971, 34, 7, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (972, 34, 8, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (973, 34, 9, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (974, 34, 10, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (975, 34, 11, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (976, 34, 12, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (977, 34, 13, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (978, 34, 14, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (979, 34, 15, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (980, 34, 16, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (981, 34, 17, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (982, 34, 18, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (983, 34, 19, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (984, 34, 20, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (985, 34, 21, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (986, 34, 22, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (987, 34, 23, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (988, 34, 24, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (989, 34, 25, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (990, 34, 26, 'A');
INSERT INTO `tbl_test_result_fpa` VALUES (991, 34, 27, 'C');
INSERT INTO `tbl_test_result_fpa` VALUES (992, 34, 28, 'B');
INSERT INTO `tbl_test_result_fpa` VALUES (993, 34, 29, 'D');
INSERT INTO `tbl_test_result_fpa` VALUES (994, 34, 30, 'D');

-- ----------------------------
-- Table structure for tbl_test_result_sas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_result_sas`;
CREATE TABLE `tbl_test_result_sas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tester_id` int NULL DEFAULT NULL,
  `question_id` int NULL DEFAULT NULL,
  `answer` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 953 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_test_result_sas
-- ----------------------------
INSERT INTO `tbl_test_result_sas` VALUES (1, 215, 1, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (2, 215, 2, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (3, 215, 3, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (4, 215, 4, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (5, 215, 5, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (6, 215, 6, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (7, 215, 7, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (8, 215, 8, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (9, 215, 9, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (10, 215, 10, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (11, 215, 11, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (12, 215, 12, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (13, 215, 13, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (14, 215, 14, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (15, 215, 15, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (16, 215, 16, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (17, 215, 17, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (18, 215, 18, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (19, 215, 19, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (20, 215, 20, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (21, 215, 21, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (22, 215, 22, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (23, 215, 23, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (24, 215, 24, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (25, 215, 25, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (26, 215, 26, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (27, 215, 27, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (28, 215, 28, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (29, 215, 29, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (30, 215, 30, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (31, 216, 1, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (32, 216, 2, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (33, 216, 3, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (34, 216, 4, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (35, 216, 5, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (36, 216, 6, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (37, 216, 7, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (38, 216, 8, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (39, 216, 9, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (40, 216, 10, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (41, 216, 11, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (42, 216, 12, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (43, 216, 13, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (44, 216, 14, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (45, 216, 15, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (46, 216, 16, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (47, 216, 17, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (48, 216, 18, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (49, 216, 19, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (50, 216, 20, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (51, 216, 21, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (52, 216, 22, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (53, 216, 23, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (54, 216, 24, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (55, 216, 25, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (56, 216, 26, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (57, 216, 27, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (58, 216, 28, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (59, 216, 29, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (60, 216, 30, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (61, 217, 1, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (62, 217, 2, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (63, 217, 3, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (64, 217, 4, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (65, 217, 5, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (66, 217, 6, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (67, 217, 7, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (68, 217, 8, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (69, 217, 9, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (70, 217, 10, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (71, 217, 11, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (72, 217, 12, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (73, 217, 13, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (74, 217, 14, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (75, 217, 15, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (76, 217, 16, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (77, 217, 17, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (78, 217, 18, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (79, 217, 19, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (80, 217, 20, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (81, 217, 21, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (82, 217, 22, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (83, 217, 23, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (84, 217, 24, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (85, 217, 25, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (86, 217, 26, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (87, 217, 27, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (88, 217, 28, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (89, 217, 29, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (90, 217, 30, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (91, 222, 1, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (92, 222, 2, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (93, 222, 3, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (94, 222, 4, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (95, 222, 5, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (96, 222, 6, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (97, 222, 7, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (98, 222, 8, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (99, 222, 9, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (100, 222, 10, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (101, 222, 11, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (102, 222, 12, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (103, 222, 13, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (104, 222, 14, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (105, 222, 15, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (106, 222, 16, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (107, 222, 17, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (108, 222, 18, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (109, 222, 19, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (110, 222, 20, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (111, 222, 21, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (112, 222, 22, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (113, 222, 23, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (114, 222, 24, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (115, 222, 25, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (116, 222, 26, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (117, 222, 27, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (118, 222, 28, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (119, 222, 29, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (120, 222, 30, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (121, 223, 1, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (122, 223, 2, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (123, 223, 3, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (124, 223, 4, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (125, 223, 5, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (126, 223, 6, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (127, 223, 7, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (128, 223, 8, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (129, 223, 9, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (130, 223, 10, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (131, 223, 11, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (132, 223, 12, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (133, 223, 13, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (134, 223, 14, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (135, 223, 15, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (136, 223, 16, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (137, 223, 17, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (138, 223, 18, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (139, 223, 19, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (140, 223, 20, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (141, 223, 21, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (142, 223, 22, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (143, 223, 23, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (144, 223, 24, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (145, 223, 25, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (146, 223, 26, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (147, 223, 27, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (148, 223, 28, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (149, 223, 29, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (150, 223, 30, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (151, 227, 1, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (152, 227, 2, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (153, 227, 3, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (154, 227, 4, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (155, 227, 5, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (156, 227, 6, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (157, 227, 7, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (158, 227, 8, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (159, 227, 9, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (160, 227, 10, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (161, 227, 11, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (162, 227, 12, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (163, 227, 13, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (164, 227, 14, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (165, 227, 15, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (166, 227, 16, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (167, 227, 17, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (168, 227, 18, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (169, 227, 19, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (170, 227, 20, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (171, 227, 21, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (172, 227, 22, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (173, 227, 23, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (174, 227, 24, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (175, 227, 25, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (176, 227, 26, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (177, 227, 27, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (178, 227, 28, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (179, 227, 29, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (180, 227, 30, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (211, 221, 1, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (212, 221, 2, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (213, 221, 3, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (214, 221, 4, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (215, 221, 5, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (216, 221, 6, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (217, 221, 7, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (218, 221, 8, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (219, 221, 9, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (220, 221, 10, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (221, 221, 11, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (222, 221, 12, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (223, 221, 13, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (224, 221, 14, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (225, 221, 15, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (226, 221, 16, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (227, 221, 17, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (228, 221, 18, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (229, 221, 19, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (230, 221, 20, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (231, 221, 21, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (232, 221, 22, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (233, 221, 23, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (234, 221, 24, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (235, 221, 25, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (236, 221, 26, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (237, 221, 27, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (238, 221, 28, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (239, 221, 29, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (240, 221, 30, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (271, 225, 1, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (272, 225, 2, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (273, 225, 3, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (274, 225, 4, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (275, 225, 5, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (276, 225, 6, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (277, 225, 7, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (278, 225, 8, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (279, 225, 9, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (280, 225, 10, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (281, 225, 11, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (282, 225, 12, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (283, 225, 13, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (284, 225, 14, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (285, 225, 15, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (286, 225, 16, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (287, 225, 17, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (288, 225, 18, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (289, 225, 19, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (290, 225, 20, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (291, 225, 21, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (292, 225, 22, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (293, 225, 23, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (294, 225, 24, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (295, 225, 25, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (296, 225, 26, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (297, 225, 27, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (298, 225, 28, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (299, 225, 29, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (300, 225, 30, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (301, 224, 1, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (302, 224, 2, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (303, 224, 3, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (304, 224, 4, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (305, 224, 5, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (306, 224, 6, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (307, 224, 7, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (308, 224, 8, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (309, 224, 9, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (310, 224, 10, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (311, 224, 11, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (312, 224, 12, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (313, 224, 13, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (314, 224, 14, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (315, 224, 15, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (316, 224, 16, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (317, 224, 17, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (318, 224, 18, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (319, 224, 19, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (320, 224, 20, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (321, 224, 21, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (322, 224, 22, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (323, 224, 23, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (324, 224, 24, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (325, 224, 25, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (326, 224, 26, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (327, 224, 27, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (328, 224, 28, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (329, 224, 29, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (330, 224, 30, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (361, 232, 1, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (362, 232, 2, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (363, 232, 3, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (364, 232, 4, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (365, 232, 5, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (366, 232, 6, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (367, 232, 7, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (368, 232, 8, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (369, 232, 9, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (370, 232, 10, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (371, 232, 11, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (372, 232, 12, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (373, 232, 13, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (374, 232, 14, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (375, 232, 15, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (376, 232, 16, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (377, 232, 17, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (378, 232, 18, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (379, 232, 19, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (380, 232, 20, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (381, 232, 21, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (382, 232, 22, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (383, 232, 23, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (384, 232, 24, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (385, 232, 25, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (386, 232, 26, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (387, 232, 27, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (388, 232, 28, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (389, 232, 29, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (390, 232, 30, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (391, 218, 1, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (392, 218, 2, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (393, 218, 3, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (394, 218, 4, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (395, 218, 5, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (396, 218, 6, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (397, 218, 7, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (398, 218, 8, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (399, 218, 9, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (400, 218, 10, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (401, 218, 11, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (402, 218, 12, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (403, 218, 13, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (404, 218, 14, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (405, 218, 15, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (406, 218, 16, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (407, 218, 17, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (408, 218, 18, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (409, 218, 19, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (410, 218, 20, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (411, 218, 21, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (412, 218, 22, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (413, 218, 23, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (414, 218, 24, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (415, 218, 25, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (416, 218, 26, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (417, 218, 27, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (418, 218, 28, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (419, 218, 29, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (420, 218, 30, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (421, 220, 1, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (422, 220, 2, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (423, 220, 3, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (424, 220, 4, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (425, 220, 5, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (426, 220, 6, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (427, 220, 7, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (428, 220, 8, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (429, 220, 9, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (430, 220, 10, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (431, 220, 11, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (432, 220, 12, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (433, 220, 13, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (434, 220, 14, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (435, 220, 15, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (436, 220, 16, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (437, 220, 17, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (438, 220, 18, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (439, 220, 19, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (440, 220, 20, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (441, 220, 21, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (442, 220, 22, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (443, 220, 23, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (444, 220, 24, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (445, 220, 25, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (446, 220, 26, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (447, 220, 27, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (448, 220, 28, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (449, 220, 29, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (450, 220, 30, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (451, 226, 1, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (452, 226, 2, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (453, 226, 3, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (454, 226, 4, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (455, 226, 5, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (456, 226, 6, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (457, 226, 7, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (458, 226, 8, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (459, 226, 9, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (460, 226, 10, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (461, 226, 11, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (462, 226, 12, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (463, 226, 13, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (464, 226, 14, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (465, 226, 15, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (466, 226, 16, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (467, 226, 17, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (468, 226, 18, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (469, 226, 19, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (470, 226, 20, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (471, 226, 21, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (472, 226, 22, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (473, 226, 23, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (474, 226, 24, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (475, 226, 25, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (476, 226, 26, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (477, 226, 27, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (478, 226, 28, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (479, 226, 29, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (480, 226, 30, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (571, 263, 1, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (572, 263, 2, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (573, 263, 3, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (574, 263, 4, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (575, 263, 5, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (576, 263, 6, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (577, 263, 7, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (578, 263, 8, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (579, 263, 9, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (580, 263, 10, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (581, 263, 11, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (582, 263, 12, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (583, 263, 13, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (584, 263, 14, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (585, 263, 15, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (586, 263, 16, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (587, 263, 17, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (588, 263, 18, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (589, 263, 19, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (590, 263, 20, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (591, 263, 21, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (592, 263, 22, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (593, 263, 23, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (594, 263, 24, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (595, 263, 25, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (596, 263, 26, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (597, 263, 27, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (598, 263, 28, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (599, 263, 29, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (600, 263, 30, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (691, 268, 1, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (692, 268, 2, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (693, 268, 3, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (694, 268, 4, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (695, 268, 5, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (696, 268, 6, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (697, 268, 7, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (698, 268, 8, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (699, 268, 9, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (700, 268, 10, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (701, 268, 11, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (702, 268, 12, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (703, 268, 13, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (704, 268, 14, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (705, 268, 15, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (706, 268, 16, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (707, 268, 17, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (708, 268, 18, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (709, 268, 19, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (710, 268, 20, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (711, 268, 21, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (712, 268, 22, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (713, 268, 23, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (714, 268, 24, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (715, 268, 25, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (716, 268, 26, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (717, 268, 27, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (718, 268, 28, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (719, 268, 29, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (720, 268, 30, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (721, 269, 1, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (722, 269, 2, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (723, 269, 3, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (724, 269, 4, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (725, 269, 5, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (726, 269, 6, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (727, 269, 7, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (728, 269, 8, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (729, 269, 9, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (730, 269, 10, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (731, 269, 11, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (732, 269, 12, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (733, 269, 13, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (734, 269, 14, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (735, 269, 15, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (736, 269, 16, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (737, 269, 17, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (738, 269, 18, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (739, 269, 19, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (740, 269, 20, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (741, 269, 21, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (742, 269, 22, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (743, 269, 23, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (744, 269, 24, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (745, 269, 25, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (746, 269, 26, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (747, 269, 27, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (748, 269, 28, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (749, 269, 29, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (750, 269, 30, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (751, 269, 49, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (752, 270, 1, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (753, 270, 2, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (754, 270, 3, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (755, 270, 4, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (756, 270, 5, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (757, 270, 6, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (758, 270, 7, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (759, 270, 8, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (760, 270, 9, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (761, 270, 10, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (762, 270, 11, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (763, 270, 12, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (764, 270, 13, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (765, 270, 14, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (766, 270, 15, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (767, 270, 16, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (768, 270, 17, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (769, 270, 18, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (770, 270, 19, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (771, 270, 20, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (772, 270, 21, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (773, 270, 22, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (774, 270, 23, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (775, 270, 24, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (776, 270, 25, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (777, 270, 26, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (778, 270, 27, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (779, 270, 28, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (780, 270, 29, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (781, 270, 30, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (782, 270, 49, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (783, 272, 1, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (784, 272, 2, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (785, 272, 3, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (786, 272, 4, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (787, 272, 5, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (788, 272, 6, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (789, 272, 7, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (790, 272, 8, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (791, 272, 9, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (792, 272, 10, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (793, 272, 11, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (794, 272, 12, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (795, 272, 13, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (796, 272, 14, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (797, 272, 15, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (798, 272, 16, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (799, 272, 17, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (800, 272, 18, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (801, 272, 19, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (802, 272, 20, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (803, 272, 21, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (804, 272, 22, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (805, 272, 23, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (806, 272, 24, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (807, 272, 25, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (808, 272, 26, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (809, 272, 27, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (810, 272, 28, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (811, 272, 29, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (812, 272, 30, 'B');
INSERT INTO `tbl_test_result_sas` VALUES (813, 304, 1, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (814, 304, 2, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (815, 304, 3, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (816, 304, 4, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (817, 304, 5, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (818, 304, 6, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (819, 304, 7, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (820, 304, 8, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (821, 304, 9, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (822, 304, 10, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (823, 304, 11, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (824, 304, 12, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (825, 304, 13, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (826, 304, 14, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (827, 304, 15, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (828, 304, 16, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (829, 304, 17, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (830, 304, 18, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (831, 304, 19, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (832, 304, 20, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (833, 305, 1, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (834, 305, 2, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (835, 305, 3, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (836, 305, 4, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (837, 305, 5, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (838, 305, 6, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (839, 305, 7, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (840, 305, 8, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (841, 305, 9, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (842, 305, 10, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (843, 305, 11, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (844, 305, 12, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (845, 305, 13, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (846, 305, 14, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (847, 305, 15, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (848, 305, 16, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (849, 305, 17, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (850, 305, 18, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (851, 305, 19, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (852, 305, 20, 'D');
INSERT INTO `tbl_test_result_sas` VALUES (853, 306, 1, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (854, 306, 2, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (855, 306, 3, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (856, 306, 4, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (857, 306, 5, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (858, 306, 6, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (859, 306, 7, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (860, 306, 8, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (861, 306, 9, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (862, 306, 10, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (863, 306, 11, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (864, 306, 12, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (865, 306, 13, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (866, 306, 14, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (867, 306, 15, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (868, 306, 16, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (869, 306, 17, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (870, 306, 18, 'C');
INSERT INTO `tbl_test_result_sas` VALUES (871, 306, 19, 'A');
INSERT INTO `tbl_test_result_sas` VALUES (872, 306, 20, 'C');

-- ----------------------------
-- Table structure for tbl_test_result_sds
-- ----------------------------
DROP TABLE IF EXISTS `tbl_test_result_sds`;
CREATE TABLE `tbl_test_result_sds`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `tester_id` int NULL DEFAULT NULL,
  `question_id` int NULL DEFAULT NULL,
  `answer` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1585 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_test_result_sds
-- ----------------------------
INSERT INTO `tbl_test_result_sds` VALUES (1, 215, 1, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (2, 215, 2, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (3, 215, 3, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (4, 215, 4, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (5, 215, 5, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (6, 215, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (7, 215, 7, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (8, 215, 8, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (9, 215, 9, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (10, 215, 10, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (11, 215, 11, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (12, 215, 12, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (13, 215, 13, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (14, 215, 14, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (15, 215, 15, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (16, 215, 16, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (17, 215, 17, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (18, 215, 18, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (19, 215, 19, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (20, 215, 20, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (21, 215, 21, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (22, 215, 22, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (23, 215, 23, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (24, 215, 24, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (25, 215, 25, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (26, 215, 26, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (27, 215, 27, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (28, 215, 28, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (29, 215, 29, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (30, 215, 30, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (31, 216, 1, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (32, 216, 2, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (33, 216, 3, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (34, 216, 4, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (35, 216, 5, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (36, 216, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (37, 216, 7, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (38, 216, 8, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (39, 216, 9, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (40, 216, 10, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (41, 216, 11, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (42, 216, 12, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (43, 216, 13, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (44, 216, 14, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (45, 216, 15, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (46, 216, 16, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (47, 216, 17, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (48, 216, 18, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (49, 216, 19, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (50, 216, 20, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (51, 216, 21, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (52, 216, 22, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (53, 216, 23, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (54, 216, 24, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (55, 216, 25, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (56, 216, 26, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (57, 216, 27, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (58, 216, 28, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (59, 216, 29, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (60, 216, 30, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (61, 217, 1, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (62, 217, 2, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (63, 217, 3, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (64, 217, 4, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (65, 217, 5, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (66, 217, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (67, 217, 7, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (68, 217, 8, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (69, 217, 9, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (70, 217, 10, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (71, 217, 11, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (72, 217, 12, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (73, 217, 13, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (74, 217, 14, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (75, 217, 15, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (76, 217, 16, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (77, 217, 17, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (78, 217, 18, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (79, 217, 19, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (80, 217, 20, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (81, 217, 21, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (82, 217, 22, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (83, 217, 23, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (84, 217, 24, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (85, 217, 25, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (86, 217, 26, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (87, 217, 27, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (88, 217, 28, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (89, 217, 29, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (90, 217, 30, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (91, 222, 1, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (92, 222, 2, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (93, 222, 3, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (94, 222, 4, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (95, 222, 5, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (96, 222, 6, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (97, 222, 7, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (98, 222, 8, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (99, 222, 9, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (100, 222, 10, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (101, 222, 11, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (102, 222, 12, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (103, 222, 13, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (104, 222, 14, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (105, 222, 15, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (106, 222, 16, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (107, 222, 17, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (108, 222, 18, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (109, 222, 19, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (110, 222, 20, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (111, 222, 21, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (112, 222, 22, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (113, 222, 23, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (114, 222, 24, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (115, 222, 25, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (116, 222, 26, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (117, 222, 27, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (118, 222, 28, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (119, 222, 29, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (120, 222, 30, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (121, 223, 1, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (122, 223, 2, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (123, 223, 3, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (124, 223, 4, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (125, 223, 5, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (126, 223, 6, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (127, 223, 7, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (128, 223, 8, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (129, 223, 9, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (130, 223, 10, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (131, 223, 11, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (132, 223, 12, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (133, 223, 13, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (134, 223, 14, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (135, 223, 15, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (136, 223, 16, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (137, 223, 17, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (138, 223, 18, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (139, 223, 19, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (140, 223, 20, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (141, 223, 21, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (142, 223, 22, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (143, 223, 23, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (144, 223, 24, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (145, 223, 25, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (146, 223, 26, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (147, 223, 27, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (148, 223, 28, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (149, 223, 29, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (150, 223, 30, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (151, 227, 1, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (152, 227, 2, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (153, 227, 3, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (154, 227, 4, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (155, 227, 5, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (156, 227, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (157, 227, 7, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (158, 227, 8, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (159, 227, 9, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (160, 227, 10, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (161, 227, 11, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (162, 227, 12, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (163, 227, 13, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (164, 227, 14, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (165, 227, 15, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (166, 227, 16, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (167, 227, 17, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (168, 227, 18, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (169, 227, 19, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (170, 227, 20, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (171, 227, 21, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (172, 227, 22, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (173, 227, 23, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (174, 227, 24, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (175, 227, 25, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (176, 227, 26, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (177, 227, 27, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (178, 227, 28, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (179, 227, 29, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (180, 227, 30, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (211, 221, 1, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (212, 221, 2, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (213, 221, 3, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (214, 221, 4, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (215, 221, 5, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (216, 221, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (217, 221, 7, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (218, 221, 8, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (219, 221, 9, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (220, 221, 10, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (221, 221, 11, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (222, 221, 12, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (223, 221, 13, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (224, 221, 14, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (225, 221, 15, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (226, 221, 16, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (227, 221, 17, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (228, 221, 18, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (229, 221, 19, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (230, 221, 20, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (231, 221, 21, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (232, 221, 22, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (233, 221, 23, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (234, 221, 24, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (235, 221, 25, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (236, 221, 26, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (237, 221, 27, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (238, 221, 28, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (239, 221, 29, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (240, 221, 30, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (271, 225, 1, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (272, 225, 2, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (273, 225, 3, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (274, 225, 4, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (275, 225, 5, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (276, 225, 6, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (277, 225, 7, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (278, 225, 8, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (279, 225, 9, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (280, 225, 10, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (281, 225, 11, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (282, 225, 12, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (283, 225, 13, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (284, 225, 14, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (285, 225, 15, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (286, 225, 16, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (287, 225, 17, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (288, 225, 18, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (289, 225, 19, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (290, 225, 20, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (291, 225, 21, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (292, 225, 22, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (293, 225, 23, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (294, 225, 24, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (295, 225, 25, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (296, 225, 26, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (297, 225, 27, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (298, 225, 28, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (299, 225, 29, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (300, 225, 30, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (301, 224, 1, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (302, 224, 2, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (303, 224, 3, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (304, 224, 4, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (305, 224, 5, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (306, 224, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (307, 224, 7, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (308, 224, 8, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (309, 224, 9, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (310, 224, 10, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (311, 224, 11, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (312, 224, 12, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (313, 224, 13, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (314, 224, 14, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (315, 224, 15, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (316, 224, 16, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (317, 224, 17, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (318, 224, 18, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (319, 224, 19, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (320, 224, 20, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (321, 224, 21, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (322, 224, 22, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (323, 224, 23, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (324, 224, 24, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (325, 224, 25, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (326, 224, 26, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (327, 224, 27, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (328, 224, 28, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (329, 224, 29, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (330, 224, 30, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (331, 219, 1, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (332, 219, 2, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (333, 219, 3, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (334, 219, 4, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (335, 219, 5, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (336, 219, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (337, 219, 7, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (338, 219, 8, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (339, 219, 9, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (340, 219, 10, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (341, 219, 11, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (342, 219, 12, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (343, 219, 13, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (344, 219, 14, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (345, 219, 15, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (346, 219, 16, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (347, 219, 17, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (348, 219, 18, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (349, 219, 19, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (350, 219, 20, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (351, 219, 21, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (352, 219, 22, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (353, 219, 23, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (354, 219, 24, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (355, 219, 25, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (356, 219, 26, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (357, 219, 27, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (358, 219, 28, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (359, 219, 29, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (360, 219, 30, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (361, 232, 1, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (362, 232, 2, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (363, 232, 3, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (364, 232, 4, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (365, 232, 5, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (366, 232, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (367, 232, 7, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (368, 232, 8, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (369, 232, 9, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (370, 232, 10, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (371, 232, 11, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (372, 232, 12, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (373, 232, 13, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (374, 232, 14, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (375, 232, 15, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (376, 232, 16, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (377, 232, 17, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (378, 232, 18, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (379, 232, 19, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (380, 232, 20, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (381, 232, 21, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (382, 232, 22, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (383, 232, 23, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (384, 232, 24, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (385, 232, 25, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (386, 232, 26, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (387, 232, 27, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (388, 232, 28, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (389, 232, 29, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (390, 232, 30, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (391, 218, 1, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (392, 218, 2, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (393, 218, 3, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (394, 218, 4, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (395, 218, 5, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (396, 218, 6, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (397, 218, 7, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (398, 218, 8, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (399, 218, 9, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (400, 218, 10, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (401, 218, 11, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (402, 218, 12, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (403, 218, 13, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (404, 218, 14, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (405, 218, 15, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (406, 218, 16, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (407, 218, 17, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (408, 218, 18, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (409, 218, 19, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (410, 218, 20, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (411, 218, 21, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (412, 218, 22, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (413, 218, 23, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (414, 218, 24, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (415, 218, 25, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (416, 218, 26, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (417, 218, 27, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (418, 218, 28, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (419, 218, 29, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (420, 218, 30, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (421, 220, 1, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (422, 220, 2, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (423, 220, 3, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (424, 220, 4, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (425, 220, 5, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (426, 220, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (427, 220, 7, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (428, 220, 8, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (429, 220, 9, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (430, 220, 10, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (431, 220, 11, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (432, 220, 12, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (433, 220, 13, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (434, 220, 14, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (435, 220, 15, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (436, 220, 16, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (437, 220, 17, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (438, 220, 18, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (439, 220, 19, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (440, 220, 20, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (441, 220, 21, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (442, 220, 22, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (443, 220, 23, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (444, 220, 24, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (445, 220, 25, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (446, 220, 26, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (447, 220, 27, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (448, 220, 28, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (449, 220, 29, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (450, 220, 30, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (451, 226, 1, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (452, 226, 2, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (453, 226, 3, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (454, 226, 4, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (455, 226, 5, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (456, 226, 6, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (457, 226, 7, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (458, 226, 8, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (459, 226, 9, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (460, 226, 10, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (461, 226, 11, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (462, 226, 12, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (463, 226, 13, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (464, 226, 14, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (465, 226, 15, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (466, 226, 16, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (467, 226, 17, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (468, 226, 18, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (469, 226, 19, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (470, 226, 20, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (471, 226, 21, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (472, 226, 22, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (473, 226, 23, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (474, 226, 24, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (475, 226, 25, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (476, 226, 26, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (477, 226, 27, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (478, 226, 28, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (479, 226, 29, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (480, 226, 30, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (571, 263, 1, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (572, 263, 2, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (573, 263, 3, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (574, 263, 4, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (575, 263, 5, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (576, 263, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (577, 263, 7, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (578, 263, 8, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (579, 263, 9, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (580, 263, 10, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (581, 263, 11, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (582, 263, 12, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (583, 263, 13, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (584, 263, 14, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (585, 263, 15, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (586, 263, 16, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (587, 263, 17, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (588, 263, 18, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (589, 263, 19, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (590, 263, 20, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (591, 263, 21, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (592, 263, 22, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (593, 263, 23, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (594, 263, 24, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (595, 263, 25, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (596, 263, 26, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (597, 263, 27, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (598, 263, 28, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (599, 263, 29, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (600, 263, 30, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (691, 268, 1, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (692, 268, 2, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (693, 268, 3, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (694, 268, 4, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (695, 268, 5, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (696, 268, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (697, 268, 7, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (698, 268, 8, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (699, 268, 9, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (700, 268, 10, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (701, 268, 11, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (702, 268, 12, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (703, 268, 13, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (704, 268, 14, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (705, 268, 15, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (706, 268, 16, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (707, 268, 17, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (708, 268, 18, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (709, 268, 19, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (710, 268, 20, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (711, 268, 21, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (712, 268, 22, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (713, 268, 23, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (714, 268, 24, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (715, 268, 25, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (716, 268, 26, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (717, 268, 27, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (718, 268, 28, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (719, 268, 29, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (720, 268, 30, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (721, 269, 1, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (722, 269, 2, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (723, 269, 3, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (724, 269, 4, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (725, 269, 5, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (726, 269, 6, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (727, 269, 7, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (728, 269, 8, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (729, 269, 9, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (730, 269, 10, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (731, 269, 11, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (732, 269, 12, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (733, 269, 13, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (734, 269, 14, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (735, 269, 15, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (736, 269, 16, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (737, 269, 17, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (738, 269, 18, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (739, 269, 19, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (740, 269, 20, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (741, 269, 21, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (742, 269, 22, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (743, 269, 23, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (744, 269, 24, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (745, 269, 25, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (746, 269, 26, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (747, 269, 27, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (748, 269, 28, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (749, 269, 29, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (750, 269, 30, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (751, 269, 49, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (752, 270, 1, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (753, 270, 2, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (754, 270, 3, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (755, 270, 4, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (756, 270, 5, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (757, 270, 6, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (758, 270, 7, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (759, 270, 8, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (760, 270, 9, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (761, 270, 10, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (762, 270, 11, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (763, 270, 12, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (764, 270, 13, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (765, 270, 14, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (766, 270, 15, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (767, 270, 16, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (768, 270, 17, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (769, 270, 18, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (770, 270, 19, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (771, 270, 20, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (772, 270, 21, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (773, 270, 22, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (774, 270, 23, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (775, 270, 24, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (776, 270, 25, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (777, 270, 26, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (778, 270, 27, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (779, 270, 28, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (780, 270, 29, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (781, 270, 30, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (782, 270, 49, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (783, 272, 1, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (784, 272, 2, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (785, 272, 3, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (786, 272, 4, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (787, 272, 5, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (788, 272, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (789, 272, 7, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (790, 272, 8, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (791, 272, 9, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (792, 272, 10, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (793, 272, 11, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (794, 272, 12, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (795, 272, 13, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (796, 272, 14, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (797, 272, 15, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (798, 272, 16, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (799, 272, 17, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (800, 272, 18, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (801, 272, 19, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (802, 272, 20, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (803, 272, 21, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (804, 272, 22, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (805, 272, 23, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (806, 272, 24, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (807, 272, 25, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (808, 272, 26, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (809, 272, 27, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (810, 272, 28, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (811, 272, 29, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (812, 272, 30, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (1425, 294, 1, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1426, 294, 2, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1427, 294, 3, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1428, 294, 4, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1429, 294, 5, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1430, 294, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1431, 294, 7, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1432, 294, 8, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1433, 294, 9, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1434, 294, 10, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1435, 294, 11, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1436, 294, 12, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1437, 294, 13, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1438, 294, 14, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1439, 294, 15, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1440, 294, 16, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1441, 294, 17, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1442, 294, 18, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1443, 294, 19, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1444, 294, 20, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1445, 295, 1, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (1446, 295, 2, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (1447, 295, 3, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (1448, 295, 4, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (1449, 295, 5, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (1450, 295, 6, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (1451, 295, 7, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (1452, 295, 8, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (1453, 295, 9, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (1454, 295, 10, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (1455, 295, 11, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (1456, 295, 12, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (1457, 295, 13, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (1458, 295, 14, 'B');
INSERT INTO `tbl_test_result_sds` VALUES (1459, 295, 15, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1460, 295, 16, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1461, 295, 17, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1462, 295, 18, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1463, 295, 19, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1464, 295, 20, 'C');
INSERT INTO `tbl_test_result_sds` VALUES (1465, 296, 1, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1466, 296, 2, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1467, 296, 3, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1468, 296, 4, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1469, 296, 5, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1470, 296, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1471, 296, 7, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1472, 296, 8, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1473, 296, 9, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1474, 296, 10, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1475, 296, 11, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1476, 296, 12, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1477, 296, 13, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1478, 296, 14, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1479, 296, 15, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1480, 296, 16, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1481, 296, 17, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1482, 296, 18, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1483, 296, 19, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1484, 296, 20, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1485, 297, 1, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (1486, 297, 2, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1487, 297, 3, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (1488, 297, 4, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (1489, 297, 5, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1490, 297, 6, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1491, 297, 7, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (1492, 297, 8, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (1493, 297, 9, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (1494, 297, 10, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (1495, 297, 11, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1496, 297, 12, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1497, 297, 13, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (1498, 297, 14, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1499, 297, 15, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (1500, 297, 16, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1501, 297, 17, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1502, 297, 18, 'A');
INSERT INTO `tbl_test_result_sds` VALUES (1503, 297, 19, 'D');
INSERT INTO `tbl_test_result_sds` VALUES (1504, 297, 20, 'A');

-- ----------------------------
-- Table structure for tbl_tester_fpa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tester_fpa`;
CREATE TABLE `tbl_tester_fpa`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '测试者姓名',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '手机号',
  `create_time` datetime NULL DEFAULT NULL COMMENT '测试时间',
  `test_plan_id` int NULL DEFAULT NULL COMMENT '测试计划id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tbl_tester_phone_uindex`(`phone` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '性格测试者' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_tester_fpa
-- ----------------------------
INSERT INTO `tbl_tester_fpa` VALUES (3, '测试者', '18533335557', '2022-07-07 13:00:13', 1);
INSERT INTO `tbl_tester_fpa` VALUES (4, '呵呵呵', '18533335578', '2022-07-15 15:05:54', 1);
INSERT INTO `tbl_tester_fpa` VALUES (6, '李健', '18533336666', '2022-07-15 17:41:38', 1);
INSERT INTO `tbl_tester_fpa` VALUES (7, '李四', '18533339999', '2022-07-15 18:46:56', 1);
INSERT INTO `tbl_tester_fpa` VALUES (8, '胡歌', '18533335156', '2022-07-15 18:55:59', 1);
INSERT INTO `tbl_tester_fpa` VALUES (9, '彭于晏', '18533335551', '2022-07-15 19:03:05', 1);
INSERT INTO `tbl_tester_fpa` VALUES (10, '夏旭博', '18533336667', '2022-07-18 19:52:19', 1);
INSERT INTO `tbl_tester_fpa` VALUES (11, '张大帅', '18533335151', '2022-07-19 17:47:53', 1);
INSERT INTO `tbl_tester_fpa` VALUES (12, '牛牛', '18533335255', '2022-07-19 17:48:44', 3);
INSERT INTO `tbl_tester_fpa` VALUES (13, '张风阳', '18533335566', '2022-07-19 18:45:45', 1);
INSERT INTO `tbl_tester_fpa` VALUES (14, '张冰', '18533335559', '2022-07-19 18:46:27', 1);
INSERT INTO `tbl_tester_fpa` VALUES (15, '张先生', '18533335598', '2022-07-19 18:48:20', 1);
INSERT INTO `tbl_tester_fpa` VALUES (16, '孙悟空', '18534335555', '2022-07-19 18:49:01', 1);
INSERT INTO `tbl_tester_fpa` VALUES (17, '红孩儿', '18533337555', '2022-07-19 18:49:34', 1);
INSERT INTO `tbl_tester_fpa` VALUES (18, '猪八戒', '18533335355', '2022-07-19 18:50:34', 1);
INSERT INTO `tbl_tester_fpa` VALUES (19, '浏览', '18533337100', '2022-07-19 18:51:09', 1);
INSERT INTO `tbl_tester_fpa` VALUES (20, '贫困', '18533335101', '2022-07-19 18:51:48', 3);
INSERT INTO `tbl_tester_fpa` VALUES (21, '欧锦', '18533335105', '2022-07-19 18:57:36', 1);
INSERT INTO `tbl_tester_fpa` VALUES (22, '核酸', '18533335549', '2022-07-19 19:53:04', 1);
INSERT INTO `tbl_tester_fpa` VALUES (23, '湖人队', '18533335512', '2022-07-19 19:55:57', 1);
INSERT INTO `tbl_tester_fpa` VALUES (24, '拜拜', '18533335501', '2022-07-21 15:27:37', 1);
INSERT INTO `tbl_tester_fpa` VALUES (25, '白球额', '18533335502', '2022-07-21 15:29:25', 1);
INSERT INTO `tbl_tester_fpa` VALUES (26, '掰掰', '18533335503', '2022-07-21 15:30:48', 1);
INSERT INTO `tbl_tester_fpa` VALUES (27, '白色', '18533335504', '2022-07-21 15:31:13', 1);
INSERT INTO `tbl_tester_fpa` VALUES (28, '百米和', '18533335506', '2022-07-21 15:31:45', 1);
INSERT INTO `tbl_tester_fpa` VALUES (29, '后课', '18533335536', '2022-07-22 08:59:34', 1);
INSERT INTO `tbl_tester_fpa` VALUES (30, '核酸', '18533335357', '2022-07-22 09:00:51', 1);
INSERT INTO `tbl_tester_fpa` VALUES (31, '测试者', '18533665361', '2022-07-22 10:25:27', 1);
INSERT INTO `tbl_tester_fpa` VALUES (34, '放假多久', '18725863694', '2022-07-22 15:50:36', 8);

-- ----------------------------
-- Table structure for tbl_tester_sas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tester_sas`;
CREATE TABLE `tbl_tester_sas`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `phone` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `test_plan_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 311 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '性格测试者' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_tester_sas
-- ----------------------------
INSERT INTO `tbl_tester_sas` VALUES (215, '张无忌', '12345678901', '2021-12-01 11:16:29', 11);
INSERT INTO `tbl_tester_sas` VALUES (216, '张燕豪', '18625637463', '2021-12-01 15:03:05', 11);
INSERT INTO `tbl_tester_sas` VALUES (217, '张三丰', '12332112332', '2021-12-01 15:06:48', 11);
INSERT INTO `tbl_tester_sas` VALUES (218, '高杰领', '18238733106', '2021-12-01 16:50:00', 11);
INSERT INTO `tbl_tester_sas` VALUES (220, '王龙飞', '15093132818', '2021-12-01 16:50:58', 11);
INSERT INTO `tbl_tester_sas` VALUES (221, '陈聪', '15539589952', '2021-12-01 16:51:03', 11);
INSERT INTO `tbl_tester_sas` VALUES (222, '张三', '12666965495', '2021-12-01 16:51:08', 11);
INSERT INTO `tbl_tester_sas` VALUES (223, '秀儿', '15745248620', '2021-12-01 16:51:09', 11);
INSERT INTO `tbl_tester_sas` VALUES (224, '王昊', '13233835373', '2021-12-01 16:51:13', 11);
INSERT INTO `tbl_tester_sas` VALUES (225, '邵鑫尧', '13015500648', '2021-12-01 16:51:17', 11);
INSERT INTO `tbl_tester_sas` VALUES (226, '张亚洲', '18837256932', '2021-12-01 16:51:21', 11);
INSERT INTO `tbl_tester_sas` VALUES (227, '蒋拥辉', '13148285237', '2021-12-01 16:51:50', 11);
INSERT INTO `tbl_tester_sas` VALUES (232, '夏洛特', '18888811188', '2021-12-01 16:55:17', 11);
INSERT INTO `tbl_tester_sas` VALUES (263, '张三', '12566743243', '2021-12-06 11:06:18', 11);
INSERT INTO `tbl_tester_sas` VALUES (268, '张散发', '13465777886', '2021-12-09 08:59:49', 11);
INSERT INTO `tbl_tester_sas` VALUES (269, '张天师', '18538062907', '2021-12-18 15:29:05', 11);
INSERT INTO `tbl_tester_sas` VALUES (270, '哈哈哈', '18538062902', '2021-12-21 15:31:06', 11);
INSERT INTO `tbl_tester_sas` VALUES (273, '测哈', '18533335558', '2022-07-15 21:35:37', 1);
INSERT INTO `tbl_tester_sas` VALUES (274, '测者', '18533335577', '2022-07-15 21:38:12', 1);
INSERT INTO `tbl_tester_sas` VALUES (294, '试者', '18533335552', '2022-07-15 21:45:34', 1);
INSERT INTO `tbl_tester_sas` VALUES (295, '测测', '18533335559', '2022-07-15 21:48:36', 1);
INSERT INTO `tbl_tester_sas` VALUES (296, '夏夏', '18533335571', '2022-07-18 19:54:58', 1);
INSERT INTO `tbl_tester_sas` VALUES (297, '张柏', '18533335455', '2022-07-19 17:50:54', 6);
INSERT INTO `tbl_tester_sas` VALUES (298, '哦哦', '18533335102', '2022-07-19 18:53:45', 1);
INSERT INTO `tbl_tester_sas` VALUES (299, '焦虑', '18533335987', '2022-07-19 18:54:34', 1);
INSERT INTO `tbl_tester_sas` VALUES (300, '皮额', '18533335635', '2022-07-19 18:56:27', 1);
INSERT INTO `tbl_tester_sas` VALUES (301, '欧式', '18533335105', '2022-07-19 18:59:56', 6);
INSERT INTO `tbl_tester_sas` VALUES (302, '韩庚', '18533331234', '2022-07-19 19:17:15', 6);
INSERT INTO `tbl_tester_sas` VALUES (303, '后台', '18533331478', '2022-07-19 19:31:45', 6);
INSERT INTO `tbl_tester_sas` VALUES (304, '华贵', '18533335536', '2022-07-19 19:43:58', 6);
INSERT INTO `tbl_tester_sas` VALUES (305, '国际化', '18533335456', '2022-07-19 19:45:59', 6);

-- ----------------------------
-- Table structure for tbl_tester_sds
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tester_sds`;
CREATE TABLE `tbl_tester_sds`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `phone` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `test_plan_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 302 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '性格测试者' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_tester_sds
-- ----------------------------
INSERT INTO `tbl_tester_sds` VALUES (215, '张无忌', '12345678901', '2021-12-01 11:16:29', 1);
INSERT INTO `tbl_tester_sds` VALUES (216, '张燕豪', '18625637463', '2021-12-01 15:03:05', 2);
INSERT INTO `tbl_tester_sds` VALUES (217, '张三丰', '12332112332', '2021-12-01 15:06:48', 3);
INSERT INTO `tbl_tester_sds` VALUES (218, '高杰领', '18238733106', '2021-12-01 16:50:00', 7);
INSERT INTO `tbl_tester_sds` VALUES (219, '余华龙', '13693666085', '2021-12-01 16:50:56', 8);
INSERT INTO `tbl_tester_sds` VALUES (220, '王龙飞', '15093132818', '2021-12-01 16:50:58', 1);
INSERT INTO `tbl_tester_sds` VALUES (221, '陈聪', '15539589952', '2021-12-01 16:51:03', 2);
INSERT INTO `tbl_tester_sds` VALUES (222, '张三', '12666965495', '2021-12-01 16:51:08', 3);
INSERT INTO `tbl_tester_sds` VALUES (223, '秀儿', '15745248620', '2021-12-01 16:51:09', 7);
INSERT INTO `tbl_tester_sds` VALUES (224, '王昊', '13233835373', '2021-12-01 16:51:13', 8);
INSERT INTO `tbl_tester_sds` VALUES (225, '邵鑫尧', '13015500648', '2021-12-01 16:51:17', 1);
INSERT INTO `tbl_tester_sds` VALUES (226, '张亚洲', '18837256932', '2021-12-01 16:51:21', 2);
INSERT INTO `tbl_tester_sds` VALUES (227, '蒋拥辉', '13148285237', '2021-12-01 16:51:50', 3);
INSERT INTO `tbl_tester_sds` VALUES (232, '夏洛特', '18888811188', '2021-12-01 16:55:17', 7);
INSERT INTO `tbl_tester_sds` VALUES (263, '张三', '12566743243', '2021-12-06 11:06:18', 8);
INSERT INTO `tbl_tester_sds` VALUES (268, '张散发', '13465777886', '2021-12-09 08:59:49', 1);
INSERT INTO `tbl_tester_sds` VALUES (269, '张天师', '18538062907', '2021-12-18 15:29:05', 2);
INSERT INTO `tbl_tester_sds` VALUES (270, '哈哈哈', '18538062902', '2021-12-21 15:31:06', 3);
INSERT INTO `tbl_tester_sds` VALUES (272, '哈哈', '19876542345', '2021-12-24 15:49:22', 7);
INSERT INTO `tbl_tester_sds` VALUES (273, '下下下', '18533335553', '2022-07-18 20:33:31', 8);
INSERT INTO `tbl_tester_sds` VALUES (274, '下辖', '18533335511', '2022-07-18 20:38:38', 1);
INSERT INTO `tbl_tester_sds` VALUES (294, '下下', '18533335545', '2022-07-18 20:50:53', 2);
INSERT INTO `tbl_tester_sds` VALUES (295, '张名扬', '18533335255', '2022-07-19 17:49:49', 3);
INSERT INTO `tbl_tester_sds` VALUES (296, '阿发', '18533331111', '2022-07-19 18:52:55', 7);
INSERT INTO `tbl_tester_sds` VALUES (297, '或返工', '18533333258', '2022-07-19 19:48:22', 8);

-- ----------------------------
-- Table structure for tbl_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role`  (
  `user_id` int NOT NULL COMMENT '用户ID',
  `role_id` int NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------
INSERT INTO `tbl_user_role` VALUES (1, 1);
INSERT INTO `tbl_user_role` VALUES (2, 1);
INSERT INTO `tbl_user_role` VALUES (22, 1);
INSERT INTO `tbl_user_role` VALUES (25, 1);
INSERT INTO `tbl_user_role` VALUES (26, 1);
INSERT INTO `tbl_user_role` VALUES (27, 1);

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `userid` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `deptid` int NULL DEFAULT NULL COMMENT '部门',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '真实姓名',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '电话',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '性别(1男 0女)',
  `avatar` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '头像',
  `password` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '盐值',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '1' COMMENT '状态（1正常 2停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT '0' COMMENT '删除标记（1正常 2删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人',
  `create_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改人',
  `update_time` date NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '备注',
  `role_id` int NULL DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 12, 'feng', '1831892412@qq.com', '18595979457', '0', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/c93d8559dd9d4d3a9cd8570c80ce3488wl.png', 'bd3e2844a7f72e53858b018f4f2d51e7', 'bMcpscmUDfVpMtlNFlILm2==', '1', '0', 'feng', '2022-06-26', 'CM', '2022-09-22', 'feng', 2);
INSERT INTO `userinfo` VALUES (2, 12, 'aaaa', '1831892412@qq.com', '18595979459', '1', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/c93d8559dd9d4d3a9cd8570c80ce3488wl.png', '5f47003071c39c633490f84404692bfc', 'CZ84anycKPoExbwusSpwzk==', '1', '0', 'feng', '2022-06-26', 'aaaa', '2022-09-22', 'feng', 2);
INSERT INTO `userinfo` VALUES (3, 13, 'jingsen', 'sdfsdfsdf@123.com', '18999922200', '1', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/c93d8559dd9d4d3a9cd8570c80ce3488wl.png', 'c6acc465fdcf33f84088af8d826a6857', 'c6acc465fdcf33f84088af8d826a6857', '1', '0', '冯宗辉', '2022-06-27', 'wwwljt', '2022-09-20', '123123', 1);
INSERT INTO `userinfo` VALUES (4, 11, 'wang', '123123@qq.com', '18999922200', '0', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/3de7bf5b177f4b9e9e302b736a952151R0abff6a6f1ed7239f52330423d1ac1d9.jpg', '4c71c103329f5067c56e465a9cd8b91d', 'RuYL4LgAQmIsOEeEsntYQw==', '1', '0', '冯宗辉', '2022-06-28', '冯宗辉', '2022-07-05', '领导', 1);
INSERT INTO `userinfo` VALUES (5, 13, 'zzz', '123123@qq.com', '18999922200', '1', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/c93d8559dd9d4d3a9cd8570c80ce3488wl.png', '2ad8de3956ab46a0784acb355d25f198', 'UZRDq6F6nk3N7vFUux4CiC==', '1', '0', '冯宗辉', '2022-06-28', 'wwwljt', '2022-09-22', '露从今夜白 月是故乡明', 2);
INSERT INTO `userinfo` VALUES (7, 13, 'wwww', '12312312@qq.com', '18930922030', '1', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/c93d8559dd9d4d3a9cd8570c80ce3488wl.png', '402db092e1a50dd82c0b2a79c934b431', '9VIGOpaQFo/+t4Jja9dcsw==', '1', '0', '冯宗辉', '2022-06-29', 'wwwljt', '2022-09-21', '', 1);
INSERT INTO `userinfo` VALUES (8, 11, 'zhangsdf', '1234567891@QQ.com', '15624353456', '1', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/c93d8559dd9d4d3a9cd8570c80ce3488wl.png', '3989c9b595fa25f64cb3f96be1e92f8b', 'c6rNoUfnroSoBbJUBAVT0w==', '1', '0', '冯宗辉', '2022-06-30', 'wwwljt', '2022-09-21', '', 1);
INSERT INTO `userinfo` VALUES (9, 12, 'zhangsansdfsadf', '1234567890@qq.com', '13412345677', '1', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/c93d8559dd9d4d3a9cd8570c80ce3488wl.png', 'bbe998b527225d7fd3938dd3fb311612', 'MHZnhiMlGOUdCwbNwRkO7w==', '1', '0', '冯宗辉', '2022-06-30', 'wwwljt', '2022-09-21', '', 1);
INSERT INTO `userinfo` VALUES (10, 13, 'zzzzdfg', '1234561234@qq.com', '15623455432', '1', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/c93d8559dd9d4d3a9cd8570c80ce3488wl.png', '128e7d204493a18fac01a8796075ebd4', '4Ue/yCbgB0S1giK64TrtDQ==', '1', '0', '冯宗辉', '2022-06-30', 'wwwljt', '2022-09-21', '', 1);
INSERT INTO `userinfo` VALUES (11, 11, 'yesen', '2513361178@qq.com', '18625671433', '1', 'https://fmcspace.oss-cn-hangzhou.aliyuncs.com/002.webp', '414ff26da6dc3f85b534372f6b664ec2', 'ikZiBY8sJeA8ibWdD5EDgA==', '1', '0', '冯宗辉', '2022-07-05', '冯宗辉', '2022-07-08', '', 1);
INSERT INTO `userinfo` VALUES (12, 12, 'ccdfr', '2456378@qq.com', '13566778877', '1', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/98a0a964c17e42baad5332783547ce13w_logo.jpg', '60792b382cf44de622195f378259432b', '60792b382cf44de622195f378259432b', '1', '0', '冯宗辉', '2022-07-06', 'wwwljt', '2022-09-20', '123123', 1);
INSERT INTO `userinfo` VALUES (13, 13, 'asdd', '1831892412@qq.com', '18595979459', '1', 'https://fmcspace.oss-cn-hangzhou.aliyuncs.com/002.webp', '10d8449d5671ea34c5740fa00057bd1f', 'c2NqRknGinbYr0nSVRi69w==', '1', '0', '冯宗辉', '2022-07-06', '冯宗辉', '2022-07-06', '123123', 1);
INSERT INTO `userinfo` VALUES (14, 11, 'yaaa', '1831892123@qq.com', '18595979438', '1', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/98a0a964c17e42baad5332783547ce13w_logo.jpg', '95b32f05fde8630fe739b4ef9c48a563', 'FOZKQqtTb8BBMpZN2b/t7w==', '1', '0', '冯宗辉', '2022-07-08', '冯宗辉', '2022-07-08', '123123', 1);
INSERT INTO `userinfo` VALUES (15, 12, 'liubei', '1831892123@qq.com', '18595979438', '1', 'https://fmcspace.oss-cn-hangzhou.aliyuncs.com/002.webp', '0420b1472bc56f1482346c9bd2199e5f', 'L3VeIquySP3vuvRJcfz2cA==', '1', '0', '冯宗辉', '2022-07-08', '冯宗辉', '2022-07-08', '213', 2);
INSERT INTO `userinfo` VALUES (16, 13, 'lllll', '1831892412@qq.com', '18595979459', '1', 'https://fmcspace.oss-cn-hangzhou.aliyuncs.com/002.webp', '331ffe84fbb009f7d2ca34a879af573f', 'j1CtfHPOxsvUtJeqDjH8vQ==', '1', '0', '冯宗辉', '2022-07-08', '冯宗辉', '2022-07-08', '阿斯达', 11);
INSERT INTO `userinfo` VALUES (17, 182, 'zonghui', '283899346@qq.com', '18595979450', '1', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/3de7bf5b177f4b9e9e302b736a952151R0abff6a6f1ed7239f52330423d1ac1d9.jpg', '64d29cdc11cd8093883cc73e56d17393', 'xaa05iGjCPmzHhs4s38Vnw==', '1', '0', '冯宗辉', '2022-07-09', '冯宗辉', '2022-07-09', '', 11);
INSERT INTO `userinfo` VALUES (22, 11, '房梦琛', '2415037323@qq.com', '18336771773', '1', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/98a0a964c17e42baad5332783547ce13w_logo.jpg', '0545be887f979a39e33e5f7401d834a2', 'ixHHGY5bsyHJg/pgKUN09Q==', '1', '0', 'feng', '2022-07-15', '房梦琛', '2022-07-22', '', 1);
INSERT INTO `userinfo` VALUES (26, 11, '房梦琛2', '2415037323@qq.com', '18336771773', '1', 'https://fmcspace.oss-cn-hangzhou.aliyuncs.com/002.webp', '9fc80add138e1e6cb2ce3313741557c1', 'HvgxpjKK2QxvJny+eAe1ig==', '0', '0', 'feng', '2022-07-19', 'feng', '2022-07-19', '', 1);
INSERT INTO `userinfo` VALUES (27, 11, 'admin', '2415037323@qq.com', '18336771773', '1', 'https://fmcspace.oss-cn-hangzhou.aliyuncs.com/002.webp', 'b0298481404a6c7281824f2aebfbe629', 'erUPgbOhOkjrWjqOFcxPZg==', '1', '0', 'feng', '2022-07-22', NULL, NULL, '超级管理员', 1);
INSERT INTO `userinfo` VALUES (28, 11, 'www', '4832234858@8q.com', '18238711506', '1', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/21/4b7d8be01f064720947cb5778b5455f3R0abff6a6f1ed7239f52330423d1ac1d9.jpg', '111525f194d7ed3192c17981bd6c3a3b', '6ZonClRUE8VvzvtQCqVwtQ==', '1', '0', 'www', '2022-09-06', 'zzzz', '2022-09-22', '超级管理员', 1);
INSERT INTO `userinfo` VALUES (35, 11, 'wwwljt', '123s45545691@qq.com', '18595879456', '0', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/c93d8559dd9d4d3a9cd8570c80ce3488wl.png', 'a225226786d6a0110f83b97e4a1c37a6', 'aHtx7gamPzcWm93GA8JrFB==', '1', '0', 'wwwljt', NULL, 'wwwljt', '2022-09-22', '', 11);
INSERT INTO `userinfo` VALUES (36, 11, 'test', '123123@qq.com', '18238755585', '1', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/c93d8559dd9d4d3a9cd8570c80ce3488wl.png', 'c146757229c1a4267be68d9d51a183c2', 'y0dYVwSHCWkyPxC2FD224q==', '1', '0', 'wwwljt', NULL, 'wwwljt', '2022-09-22', 'sdfa', 11);
INSERT INTO `userinfo` VALUES (37, 11, 'tests', '1234561234@qq.com', '18595979457', '0', 'https://w-aaa.oss-cn-hangzhou.aliyuncs.com/2022/09/09/c93d8559dd9d4d3a9cd8570c80ce3488wl.png', '3e8d8544aea8f1be0cd94d205890fca4', '4pkI2f1zmQwSRV6gzYTr2t==', '1', '0', 'www', NULL, 'www', '2022-09-22', '123123', 2);

-- ----------------------------
-- View structure for view_test_plan
-- ----------------------------
DROP VIEW IF EXISTS `view_test_plan`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_test_plan` AS select `tbl_test_plan_fpa`.`id` AS `id`,`tbl_test_plan_fpa`.`test_name` AS `test_name`,`tbl_test_plan_fpa`.`test_code` AS `test_code`,`tbl_test_plan_fpa`.`test_begin` AS `test_begin`,`tbl_test_plan_fpa`.`test_end` AS `test_end`,`tbl_test_plan_fpa`.`create_time` AS `create_time`,`tbl_test_plan_fpa`.`create_by` AS `create_by`,`tbl_test_plan_fpa`.`update_time` AS `update_time`,`tbl_test_plan_fpa`.`update_by` AS `update_by`,`tbl_test_plan_fpa`.`remark` AS `remark`,'fpa' AS `type` from `tbl_test_plan_fpa` union select `tbl_test_plan_sas`.`id` AS `id`,`tbl_test_plan_sas`.`test_name` AS `test_name`,`tbl_test_plan_sas`.`test_code` AS `test_code`,`tbl_test_plan_sas`.`test_begin` AS `test_begin`,`tbl_test_plan_sas`.`test_end` AS `test_end`,`tbl_test_plan_sas`.`create_time` AS `create_time`,`tbl_test_plan_sas`.`create_by` AS `create_by`,`tbl_test_plan_sas`.`update_time` AS `update_time`,`tbl_test_plan_sas`.`update_by` AS `update_by`,`tbl_test_plan_sas`.`remark` AS `remark`,'sas' AS `type` from `tbl_test_plan_sas` union select `tbl_test_plan_sds`.`id` AS `id`,`tbl_test_plan_sds`.`test_name` AS `test_name`,`tbl_test_plan_sds`.`test_code` AS `test_code`,`tbl_test_plan_sds`.`test_begin` AS `test_begin`,`tbl_test_plan_sds`.`test_end` AS `test_end`,`tbl_test_plan_sds`.`create_time` AS `create_time`,`tbl_test_plan_sds`.`create_by` AS `create_by`,`tbl_test_plan_sds`.`update_time` AS `update_time`,`tbl_test_plan_sds`.`update_by` AS `update_by`,`tbl_test_plan_sds`.`remark` AS `remark`,'sds' AS `type` from `tbl_test_plan_sds`;

-- ----------------------------
-- View structure for view_test_result_fpa
-- ----------------------------
DROP VIEW IF EXISTS `view_test_result_fpa`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_test_result_fpa` AS select `xxx`.`tester_id` AS `tester_id`,`xxx`.`red_count` AS `red_count`,`xxx`.`blue_count` AS `blue_count`,`xxx`.`yellow_count` AS `yellow_count`,`xxx`.`green_count` AS `green_count`,`tt`.`phone` AS `phone`,`tt`.`name` AS `name`,`tt`.`create_time` AS `create_time`,`tt`.`test_plan_id` AS `test_plan_id` from ((select `temp_count`.`tester_id` AS `tester_id`,ifnull(sum((case when (((`temp_count`.`type` = 1) and (`temp_count`.`answer` = 'A')) or ((`temp_count`.`type` = 2) and (`temp_count`.`answer` = 'D'))) then `temp_count`.`result_count` end)),0) AS `red_count`,ifnull(sum((case when (((`temp_count`.`type` = 1) and (`temp_count`.`answer` = 'B')) or ((`temp_count`.`type` = 2) and (`temp_count`.`answer` = 'C'))) then `temp_count`.`result_count` end)),0) AS `blue_count`,ifnull(sum((case when (((`temp_count`.`type` = 1) and (`temp_count`.`answer` = 'C')) or ((`temp_count`.`type` = 2) and (`temp_count`.`answer` = 'B'))) then `temp_count`.`result_count` end)),0) AS `yellow_count`,ifnull(sum((case when (((`temp_count`.`type` = 1) and (`temp_count`.`answer` = 'D')) or ((`temp_count`.`type` = 2) and (`temp_count`.`answer` = 'A'))) then `temp_count`.`result_count` end)),0) AS `green_count` from (select `tq`.`type` AS `type`,`ttr`.`tester_id` AS `tester_id`,`ttr`.`answer` AS `answer`,count(`ttr`.`id`) AS `result_count` from (`tbl_test_result_fpa` `ttr` left join `tbl_question_fpa` `tq` on((`ttr`.`question_id` = `tq`.`id`))) group by `tq`.`type`,`ttr`.`tester_id`,`ttr`.`answer`) `temp_count` group by `temp_count`.`tester_id`) `xxx` left join `tbl_tester_fpa` `tt` on((`xxx`.`tester_id` = `tt`.`id`)));

-- ----------------------------
-- View structure for view_test_result_sas
-- ----------------------------
DROP VIEW IF EXISTS `view_test_result_sas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_test_result_sas` AS select `usertest`.`id` AS `id`,`usertest`.`name` AS `name`,`usertest`.`phone` AS `phone`,`usertest`.`create_time` AS `create_time`,`xxx`.`forward` AS `forward`,`xxx`.`inversion` AS `inversion`,`usertest`.`test_plan_id` AS `test_plan_id` from ((select `aaa`.`tester_id` AS `tester_id`,sum((((`aaa`.`Forward_countA` + (`aaa`.`Forward_countB` * 2)) + (`aaa`.`Forward_countC` * 3)) + (`aaa`.`Forward_countD` * 4))) AS `forward`,sum(((((`aaa`.`inversion_countA` * 4) + (`aaa`.`inversion_countB` * 3)) + (`aaa`.`inversion_countC` * 2)) + `aaa`.`inversion_countD`)) AS `inversion` from (select `temp_count`.`tester_id` AS `tester_id`,ifnull(sum((case when ((`temp_count`.`type` = '1') and (`temp_count`.`answer` = 'A')) then `temp_count`.`result_count` end)),0) AS `Forward_countA`,ifnull(sum((case when ((`temp_count`.`type` = '1') and (`temp_count`.`answer` = 'B')) then `temp_count`.`result_count` end)),0) AS `Forward_countB`,ifnull(sum((case when ((`temp_count`.`type` = '1') and (`temp_count`.`answer` = 'C')) then `temp_count`.`result_count` end)),0) AS `Forward_countC`,ifnull(sum((case when ((`temp_count`.`type` = '1') and (`temp_count`.`answer` = 'D')) then `temp_count`.`result_count` end)),0) AS `Forward_countD`,ifnull(sum((case when ((`temp_count`.`type` = '2') and (`temp_count`.`answer` = 'A')) then `temp_count`.`result_count` end)),0) AS `inversion_countA`,ifnull(sum((case when ((`temp_count`.`type` = '2') and (`temp_count`.`answer` = 'B')) then `temp_count`.`result_count` end)),0) AS `inversion_countB`,ifnull(sum((case when ((`temp_count`.`type` = '2') and (`temp_count`.`answer` = 'C')) then `temp_count`.`result_count` end)),0) AS `inversion_countC`,ifnull(sum((case when ((`temp_count`.`type` = '2') and (`temp_count`.`answer` = 'D')) then `temp_count`.`result_count` end)),0) AS `inversion_countD` from (select `sds`.`type` AS `type`,`ansds`.`tester_id` AS `tester_id`,`ansds`.`answer` AS `answer`,count(`ansds`.`id`) AS `result_count` from (`tbl_test_result_sas` `ansds` left join `tbl_question_sas` `sds` on((`ansds`.`question_id` = `sds`.`id`))) group by `sds`.`type`,`ansds`.`tester_id`,`ansds`.`answer`) `temp_count` group by `temp_count`.`tester_id`) `aaa` group by `aaa`.`tester_id`) `xxx` left join `tbl_tester_sas` `usertest` on((`xxx`.`tester_id` = `usertest`.`id`)));

-- ----------------------------
-- View structure for view_test_result_sds
-- ----------------------------
DROP VIEW IF EXISTS `view_test_result_sds`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `view_test_result_sds` AS select `usertest`.`id` AS `id`,`usertest`.`name` AS `name`,`usertest`.`phone` AS `phone`,`usertest`.`create_time` AS `create_time`,`xxx`.`forward` AS `forward`,`xxx`.`inversion` AS `inversion`,`usertest`.`test_plan_id` AS `test_plan_id` from ((select `aaa`.`tester_id` AS `tester_id`,sum((((`aaa`.`Forward_countA` + (`aaa`.`Forward_countB` * 2)) + (`aaa`.`Forward_countC` * 3)) + (`aaa`.`Forward_countD` * 4))) AS `forward`,sum(((((`aaa`.`inversion_countA` * 4) + (`aaa`.`inversion_countB` * 3)) + (`aaa`.`inversion_countC` * 2)) + `aaa`.`inversion_countD`)) AS `inversion` from (select `temp_count`.`tester_id` AS `tester_id`,ifnull(sum((case when ((`temp_count`.`type` = '1') and (`temp_count`.`answer` = 'A')) then `temp_count`.`result_count` end)),0) AS `Forward_countA`,ifnull(sum((case when ((`temp_count`.`type` = '1') and (`temp_count`.`answer` = 'B')) then `temp_count`.`result_count` end)),0) AS `Forward_countB`,ifnull(sum((case when ((`temp_count`.`type` = '1') and (`temp_count`.`answer` = 'C')) then `temp_count`.`result_count` end)),0) AS `Forward_countC`,ifnull(sum((case when ((`temp_count`.`type` = '1') and (`temp_count`.`answer` = 'D')) then `temp_count`.`result_count` end)),0) AS `Forward_countD`,ifnull(sum((case when ((`temp_count`.`type` = '2') and (`temp_count`.`answer` = 'A')) then `temp_count`.`result_count` end)),0) AS `inversion_countA`,ifnull(sum((case when ((`temp_count`.`type` = '2') and (`temp_count`.`answer` = 'B')) then `temp_count`.`result_count` end)),0) AS `inversion_countB`,ifnull(sum((case when ((`temp_count`.`type` = '2') and (`temp_count`.`answer` = 'C')) then `temp_count`.`result_count` end)),0) AS `inversion_countC`,ifnull(sum((case when ((`temp_count`.`type` = '2') and (`temp_count`.`answer` = 'D')) then `temp_count`.`result_count` end)),0) AS `inversion_countD` from (select `sds`.`type` AS `type`,`ansds`.`tester_id` AS `tester_id`,`ansds`.`answer` AS `answer`,count(`ansds`.`id`) AS `result_count` from (`tbl_test_result_sds` `ansds` left join `tbl_question_sds` `sds` on((`ansds`.`question_id` = `sds`.`id`))) group by `sds`.`type`,`ansds`.`tester_id`,`ansds`.`answer`) `temp_count` group by `temp_count`.`tester_id`) `aaa` group by `aaa`.`tester_id`) `xxx` left join `tbl_tester_sds` `usertest` on((`xxx`.`tester_id` = `usertest`.`id`)));

SET FOREIGN_KEY_CHECKS = 1;
