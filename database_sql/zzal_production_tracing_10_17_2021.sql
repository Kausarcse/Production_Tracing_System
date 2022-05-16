/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : zzal_production_tracing

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2021-10-17 11:17:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `adding_process_route_for_po`
-- ----------------------------
DROP TABLE IF EXISTS `adding_process_route_for_po`;
CREATE TABLE `adding_process_route_for_po` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `po_id` varchar(15) DEFAULT NULL,
  `po_number` varchar(100) DEFAULT NULL,
  `po_details_id` varchar(100) DEFAULT '',
  `process_id` varchar(20) DEFAULT NULL,
  `process_name` varchar(250) DEFAULT NULL,
  `process_serial_no` int(11) DEFAULT NULL,
  `process_or_reprocess` varchar(30) DEFAULT NULL,
  `checking_field` varchar(250) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=901 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adding_process_route_for_po
-- ----------------------------
INSERT INTO `adding_process_route_for_po` VALUES ('1', 'po_1', '56641', 'pod_1', 'proc_1', 'Corrugation', '1', 'process', '1', 'admin', 'admin', '2021-10-04 15:56:23');
INSERT INTO `adding_process_route_for_po` VALUES ('2', 'po_1', '56641', 'pod_1', 'proc_2', 'Printing & Slotting', '2', 'process', '1', 'admin', 'admin', '2021-10-04 15:56:23');
INSERT INTO `adding_process_route_for_po` VALUES ('3', 'po_1', '56641', 'pod_1', 'proc_3', 'Cutting Creasing ', '3', 'process', '1', 'admin', 'admin', '2021-10-04 15:56:23');
INSERT INTO `adding_process_route_for_po` VALUES ('4', 'po_1', '56641', 'pod_1', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', 'admin', 'admin', '2021-10-04 15:56:23');
INSERT INTO `adding_process_route_for_po` VALUES ('5', 'po_1', '56641', 'pod_1', 'proc_7', 'Delivery', '5', 'process', '1', 'admin', 'admin', '2021-10-04 15:56:23');
INSERT INTO `adding_process_route_for_po` VALUES ('6', 'po_2', '29494', 'pod_2', 'proc_1', 'Corrugation', '1', 'process', '1', 'admin', 'admin', '2021-10-05 00:57:48');
INSERT INTO `adding_process_route_for_po` VALUES ('7', 'po_2', '29494', 'pod_2', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', 'admin', 'admin', '2021-10-05 00:57:48');
INSERT INTO `adding_process_route_for_po` VALUES ('8', 'po_2', '29494', 'pod_2', 'proc_7', 'Delivery', '3', 'process', '1', 'admin', 'admin', '2021-10-05 00:57:48');
INSERT INTO `adding_process_route_for_po` VALUES ('9', 'po_3', '57813', 'pod_3', 'proc_1', 'Corrugation', '1', 'process', '1', 'admin', 'admin', '2021-10-05 14:21:47');
INSERT INTO `adding_process_route_for_po` VALUES ('10', 'po_3', '57813', 'pod_3', 'proc_2', 'Printing & Slotting', '2', 'process', '1', 'admin', 'admin', '2021-10-05 14:21:47');
INSERT INTO `adding_process_route_for_po` VALUES ('11', 'po_3', '57813', 'pod_3', 'proc_3', 'Cutting Creasing ', '3', 'process', '1', 'admin', 'admin', '2021-10-05 14:21:47');
INSERT INTO `adding_process_route_for_po` VALUES ('12', 'po_3', '57813', 'pod_3', 'proc_4', 'Die Cutting ', '4', 'process', '1', 'admin', 'admin', '2021-10-05 14:21:47');
INSERT INTO `adding_process_route_for_po` VALUES ('13', 'po_3', '57813', 'pod_3', 'proc_5', 'Manual Slotting ', '5', 'process', '1', 'admin', 'admin', '2021-10-05 14:21:47');
INSERT INTO `adding_process_route_for_po` VALUES ('14', 'po_3', '57813', 'pod_3', 'proc_6', 'Folding & Gluing ', '6', 'process', '1', 'admin', 'admin', '2021-10-05 14:21:47');
INSERT INTO `adding_process_route_for_po` VALUES ('15', 'po_3', '57813', 'pod_3', 'proc_7', 'Delivery', '7', 'process', '1', 'admin', 'admin', '2021-10-05 14:21:47');
INSERT INTO `adding_process_route_for_po` VALUES ('16', 'po_3', '57813', 'pod_4', 'proc_1', 'Corrugation', '1', 'process', '1', 'admin', 'admin', '2021-10-05 14:43:59');
INSERT INTO `adding_process_route_for_po` VALUES ('17', 'po_3', '57813', 'pod_4', 'proc_2', 'Printing & Slotting', '2', 'process', '1', 'admin', 'admin', '2021-10-05 14:43:59');
INSERT INTO `adding_process_route_for_po` VALUES ('18', 'po_3', '57813', 'pod_4', 'proc_3', 'Cutting Creasing ', '3', 'process', '1', 'admin', 'admin', '2021-10-05 14:43:59');
INSERT INTO `adding_process_route_for_po` VALUES ('19', 'po_3', '57813', 'pod_4', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', 'admin', 'admin', '2021-10-05 14:43:59');
INSERT INTO `adding_process_route_for_po` VALUES ('20', 'po_3', '57813', 'pod_4', 'proc_7', 'Delivery', '5', 'process', '1', 'admin', 'admin', '2021-10-05 14:43:59');
INSERT INTO `adding_process_route_for_po` VALUES ('21', 'po_4', '58747', 'pod_5', 'proc_1', 'Corrugation', '1', 'process', '1', 'admin', 'admin', '2021-10-05 17:11:29');
INSERT INTO `adding_process_route_for_po` VALUES ('22', 'po_4', '58747', 'pod_5', 'proc_2', 'Printing & Slotting', '2', 'process', '1', 'admin', 'admin', '2021-10-05 17:11:29');
INSERT INTO `adding_process_route_for_po` VALUES ('23', 'po_4', '58747', 'pod_5', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', 'admin', 'admin', '2021-10-05 17:11:29');
INSERT INTO `adding_process_route_for_po` VALUES ('24', 'po_4', '58747', 'pod_5', 'proc_7', 'Delivery', '4', 'process', '1', 'admin', 'admin', '2021-10-05 17:11:29');
INSERT INTO `adding_process_route_for_po` VALUES ('25', 'po_5', '42495', 'pod_6', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 10:00:32');
INSERT INTO `adding_process_route_for_po` VALUES ('26', 'po_5', '42495', 'pod_6', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 10:00:32');
INSERT INTO `adding_process_route_for_po` VALUES ('27', 'po_5', '42495', 'pod_6', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 10:00:32');
INSERT INTO `adding_process_route_for_po` VALUES ('28', 'po_5', '42495', 'pod_6', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-06 10:00:32');
INSERT INTO `adding_process_route_for_po` VALUES ('29', 'po_5', '42495', 'pod_7', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 10:00:42');
INSERT INTO `adding_process_route_for_po` VALUES ('30', 'po_5', '42495', 'pod_7', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 10:00:42');
INSERT INTO `adding_process_route_for_po` VALUES ('31', 'po_5', '42495', 'pod_7', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 10:00:42');
INSERT INTO `adding_process_route_for_po` VALUES ('32', 'po_5', '42495', 'pod_7', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-06 10:00:42');
INSERT INTO `adding_process_route_for_po` VALUES ('33', 'po_5', '42495', 'pod_8', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 10:00:47');
INSERT INTO `adding_process_route_for_po` VALUES ('34', 'po_5', '42495', 'pod_8', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 10:00:47');
INSERT INTO `adding_process_route_for_po` VALUES ('35', 'po_5', '42495', 'pod_8', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 10:00:47');
INSERT INTO `adding_process_route_for_po` VALUES ('36', 'po_5', '42495', 'pod_8', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-06 10:00:47');
INSERT INTO `adding_process_route_for_po` VALUES ('37', 'po_5', '42495', 'pod_9', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 10:00:51');
INSERT INTO `adding_process_route_for_po` VALUES ('38', 'po_5', '42495', 'pod_9', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 10:00:51');
INSERT INTO `adding_process_route_for_po` VALUES ('39', 'po_5', '42495', 'pod_9', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 10:00:51');
INSERT INTO `adding_process_route_for_po` VALUES ('40', 'po_5', '42495', 'pod_9', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-06 10:00:51');
INSERT INTO `adding_process_route_for_po` VALUES ('41', 'po_6', 'EF/AC-21/3938', 'pod_10', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 10:17:56');
INSERT INTO `adding_process_route_for_po` VALUES ('42', 'po_6', 'EF/AC-21/3938', 'pod_10', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 10:17:56');
INSERT INTO `adding_process_route_for_po` VALUES ('43', 'po_6', 'EF/AC-21/3938', 'pod_10', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 10:17:56');
INSERT INTO `adding_process_route_for_po` VALUES ('44', 'po_6', 'EF/AC-21/3938', 'pod_10', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-06 10:17:56');
INSERT INTO `adding_process_route_for_po` VALUES ('45', 'po_6', 'EF/AC-21/3938', 'pod_11', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 10:18:02');
INSERT INTO `adding_process_route_for_po` VALUES ('46', 'po_6', 'EF/AC-21/3938', 'pod_11', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 10:18:02');
INSERT INTO `adding_process_route_for_po` VALUES ('47', 'po_6', 'EF/AC-21/3938', 'pod_11', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 10:18:02');
INSERT INTO `adding_process_route_for_po` VALUES ('48', 'po_6', 'EF/AC-21/3938', 'pod_11', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-06 10:18:02');
INSERT INTO `adding_process_route_for_po` VALUES ('49', 'po_7', '42028', 'pod_12', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 10:58:21');
INSERT INTO `adding_process_route_for_po` VALUES ('50', 'po_7', '42028', 'pod_12', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 10:58:21');
INSERT INTO `adding_process_route_for_po` VALUES ('51', 'po_7', '42028', 'pod_12', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-06 10:58:21');
INSERT INTO `adding_process_route_for_po` VALUES ('52', 'po_7', '42028', 'pod_12', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 10:58:21');
INSERT INTO `adding_process_route_for_po` VALUES ('53', 'po_7', '42028', 'pod_12', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 10:58:21');
INSERT INTO `adding_process_route_for_po` VALUES ('54', 'po_7', '42028', 'pod_13', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 10:58:26');
INSERT INTO `adding_process_route_for_po` VALUES ('55', 'po_7', '42028', 'pod_13', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 10:58:26');
INSERT INTO `adding_process_route_for_po` VALUES ('56', 'po_7', '42028', 'pod_13', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-06 10:58:26');
INSERT INTO `adding_process_route_for_po` VALUES ('57', 'po_7', '42028', 'pod_13', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 10:58:26');
INSERT INTO `adding_process_route_for_po` VALUES ('58', 'po_7', '42028', 'pod_13', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 10:58:26');
INSERT INTO `adding_process_route_for_po` VALUES ('59', 'po_8', '42820', 'pod_14', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 11:06:47');
INSERT INTO `adding_process_route_for_po` VALUES ('60', 'po_8', '42820', 'pod_14', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 11:06:47');
INSERT INTO `adding_process_route_for_po` VALUES ('61', 'po_8', '42820', 'pod_14', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-06 11:06:47');
INSERT INTO `adding_process_route_for_po` VALUES ('62', 'po_8', '42820', 'pod_14', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 11:06:47');
INSERT INTO `adding_process_route_for_po` VALUES ('63', 'po_8', '42820', 'pod_14', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 11:06:47');
INSERT INTO `adding_process_route_for_po` VALUES ('64', 'po_8', '42820', 'pod_15', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 11:06:51');
INSERT INTO `adding_process_route_for_po` VALUES ('65', 'po_8', '42820', 'pod_15', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 11:06:51');
INSERT INTO `adding_process_route_for_po` VALUES ('66', 'po_8', '42820', 'pod_15', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-06 11:06:51');
INSERT INTO `adding_process_route_for_po` VALUES ('67', 'po_8', '42820', 'pod_15', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 11:06:51');
INSERT INTO `adding_process_route_for_po` VALUES ('68', 'po_8', '42820', 'pod_15', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 11:06:51');
INSERT INTO `adding_process_route_for_po` VALUES ('69', 'po_8', '42820', 'pod_16', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 11:06:55');
INSERT INTO `adding_process_route_for_po` VALUES ('70', 'po_8', '42820', 'pod_16', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 11:06:55');
INSERT INTO `adding_process_route_for_po` VALUES ('71', 'po_8', '42820', 'pod_16', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-06 11:06:55');
INSERT INTO `adding_process_route_for_po` VALUES ('72', 'po_8', '42820', 'pod_16', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 11:06:55');
INSERT INTO `adding_process_route_for_po` VALUES ('73', 'po_8', '42820', 'pod_16', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 11:06:55');
INSERT INTO `adding_process_route_for_po` VALUES ('74', 'po_9', '42049', 'pod_17', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 11:16:31');
INSERT INTO `adding_process_route_for_po` VALUES ('75', 'po_9', '42049', 'pod_17', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 11:16:31');
INSERT INTO `adding_process_route_for_po` VALUES ('76', 'po_9', '42049', 'pod_17', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-06 11:16:31');
INSERT INTO `adding_process_route_for_po` VALUES ('77', 'po_9', '42049', 'pod_17', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 11:16:31');
INSERT INTO `adding_process_route_for_po` VALUES ('78', 'po_9', '42049', 'pod_17', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 11:16:31');
INSERT INTO `adding_process_route_for_po` VALUES ('79', 'po_9', '42049', 'pod_18', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 11:16:36');
INSERT INTO `adding_process_route_for_po` VALUES ('80', 'po_9', '42049', 'pod_18', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 11:16:36');
INSERT INTO `adding_process_route_for_po` VALUES ('81', 'po_9', '42049', 'pod_18', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-06 11:16:36');
INSERT INTO `adding_process_route_for_po` VALUES ('82', 'po_9', '42049', 'pod_18', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 11:16:36');
INSERT INTO `adding_process_route_for_po` VALUES ('83', 'po_9', '42049', 'pod_18', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 11:16:36');
INSERT INTO `adding_process_route_for_po` VALUES ('84', 'po_9', '42049', 'pod_19', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 11:16:39');
INSERT INTO `adding_process_route_for_po` VALUES ('85', 'po_9', '42049', 'pod_19', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 11:16:39');
INSERT INTO `adding_process_route_for_po` VALUES ('86', 'po_9', '42049', 'pod_19', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-06 11:16:39');
INSERT INTO `adding_process_route_for_po` VALUES ('87', 'po_9', '42049', 'pod_19', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 11:16:39');
INSERT INTO `adding_process_route_for_po` VALUES ('88', 'po_9', '42049', 'pod_19', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 11:16:39');
INSERT INTO `adding_process_route_for_po` VALUES ('89', 'po_10', '42633', 'pod_20', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 11:25:34');
INSERT INTO `adding_process_route_for_po` VALUES ('90', 'po_10', '42633', 'pod_20', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 11:25:34');
INSERT INTO `adding_process_route_for_po` VALUES ('91', 'po_10', '42633', 'pod_20', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-06 11:25:34');
INSERT INTO `adding_process_route_for_po` VALUES ('92', 'po_10', '42633', 'pod_20', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 11:25:34');
INSERT INTO `adding_process_route_for_po` VALUES ('93', 'po_10', '42633', 'pod_20', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 11:25:34');
INSERT INTO `adding_process_route_for_po` VALUES ('94', 'po_10', '42633', 'pod_21', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 11:25:40');
INSERT INTO `adding_process_route_for_po` VALUES ('95', 'po_10', '42633', 'pod_21', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 11:25:40');
INSERT INTO `adding_process_route_for_po` VALUES ('96', 'po_10', '42633', 'pod_21', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-06 11:25:40');
INSERT INTO `adding_process_route_for_po` VALUES ('97', 'po_10', '42633', 'pod_21', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 11:25:40');
INSERT INTO `adding_process_route_for_po` VALUES ('98', 'po_10', '42633', 'pod_21', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 11:25:40');
INSERT INTO `adding_process_route_for_po` VALUES ('99', 'po_10', '42633', 'pod_22', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 11:25:43');
INSERT INTO `adding_process_route_for_po` VALUES ('100', 'po_10', '42633', 'pod_22', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 11:25:43');
INSERT INTO `adding_process_route_for_po` VALUES ('101', 'po_10', '42633', 'pod_22', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-06 11:25:43');
INSERT INTO `adding_process_route_for_po` VALUES ('102', 'po_10', '42633', 'pod_22', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 11:25:43');
INSERT INTO `adding_process_route_for_po` VALUES ('103', 'po_10', '42633', 'pod_22', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 11:25:43');
INSERT INTO `adding_process_route_for_po` VALUES ('104', 'po_11', '42083', 'pod_23', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 12:21:25');
INSERT INTO `adding_process_route_for_po` VALUES ('105', 'po_11', '42083', 'pod_23', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 12:21:25');
INSERT INTO `adding_process_route_for_po` VALUES ('106', 'po_11', '42083', 'pod_23', 'proc_3', 'Cutting Creasing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 12:21:25');
INSERT INTO `adding_process_route_for_po` VALUES ('107', 'po_11', '42083', 'pod_23', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 12:21:25');
INSERT INTO `adding_process_route_for_po` VALUES ('108', 'po_11', '42083', 'pod_23', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 12:21:25');
INSERT INTO `adding_process_route_for_po` VALUES ('109', 'po_11', '42083', 'pod_24', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 12:21:29');
INSERT INTO `adding_process_route_for_po` VALUES ('110', 'po_11', '42083', 'pod_24', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 12:21:29');
INSERT INTO `adding_process_route_for_po` VALUES ('111', 'po_11', '42083', 'pod_24', 'proc_3', 'Cutting Creasing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 12:21:29');
INSERT INTO `adding_process_route_for_po` VALUES ('112', 'po_11', '42083', 'pod_24', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 12:21:29');
INSERT INTO `adding_process_route_for_po` VALUES ('113', 'po_11', '42083', 'pod_24', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 12:21:29');
INSERT INTO `adding_process_route_for_po` VALUES ('114', 'po_11', '42083', 'pod_25', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 12:21:34');
INSERT INTO `adding_process_route_for_po` VALUES ('115', 'po_11', '42083', 'pod_25', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 12:21:34');
INSERT INTO `adding_process_route_for_po` VALUES ('116', 'po_11', '42083', 'pod_25', 'proc_3', 'Cutting Creasing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 12:21:34');
INSERT INTO `adding_process_route_for_po` VALUES ('117', 'po_11', '42083', 'pod_25', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 12:21:34');
INSERT INTO `adding_process_route_for_po` VALUES ('118', 'po_11', '42083', 'pod_25', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 12:21:34');
INSERT INTO `adding_process_route_for_po` VALUES ('119', 'po_11', '42083', 'pod_26', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 12:21:38');
INSERT INTO `adding_process_route_for_po` VALUES ('120', 'po_11', '42083', 'pod_26', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 12:21:38');
INSERT INTO `adding_process_route_for_po` VALUES ('121', 'po_11', '42083', 'pod_26', 'proc_3', 'Cutting Creasing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 12:21:38');
INSERT INTO `adding_process_route_for_po` VALUES ('122', 'po_11', '42083', 'pod_26', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 12:21:38');
INSERT INTO `adding_process_route_for_po` VALUES ('123', 'po_11', '42083', 'pod_26', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 12:21:38');
INSERT INTO `adding_process_route_for_po` VALUES ('124', 'po_11', '42083', 'pod_27', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 12:21:42');
INSERT INTO `adding_process_route_for_po` VALUES ('125', 'po_11', '42083', 'pod_27', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 12:21:42');
INSERT INTO `adding_process_route_for_po` VALUES ('126', 'po_11', '42083', 'pod_27', 'proc_3', 'Cutting Creasing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 12:21:42');
INSERT INTO `adding_process_route_for_po` VALUES ('127', 'po_11', '42083', 'pod_27', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-06 12:21:42');
INSERT INTO `adding_process_route_for_po` VALUES ('128', 'po_11', '42083', 'pod_27', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-06 12:21:42');
INSERT INTO `adding_process_route_for_po` VALUES ('129', 'po_12', '42761', 'pod_28', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 13:06:26');
INSERT INTO `adding_process_route_for_po` VALUES ('130', 'po_12', '42761', 'pod_28', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 13:06:26');
INSERT INTO `adding_process_route_for_po` VALUES ('131', 'po_12', '42761', 'pod_28', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-06 13:06:26');
INSERT INTO `adding_process_route_for_po` VALUES ('132', 'po_12', '42761', 'pod_29', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 13:06:31');
INSERT INTO `adding_process_route_for_po` VALUES ('133', 'po_12', '42761', 'pod_29', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 13:06:31');
INSERT INTO `adding_process_route_for_po` VALUES ('134', 'po_12', '42761', 'pod_29', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-06 13:06:31');
INSERT INTO `adding_process_route_for_po` VALUES ('135', 'po_12', '42761', 'pod_30', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 13:06:35');
INSERT INTO `adding_process_route_for_po` VALUES ('136', 'po_12', '42761', 'pod_30', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-06 13:06:35');
INSERT INTO `adding_process_route_for_po` VALUES ('137', 'po_12', '42761', 'pod_30', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-06 13:06:35');
INSERT INTO `adding_process_route_for_po` VALUES ('138', 'po_13', '59278', 'pod_31', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 14:33:17');
INSERT INTO `adding_process_route_for_po` VALUES ('139', 'po_13', '59278', 'pod_31', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 14:33:17');
INSERT INTO `adding_process_route_for_po` VALUES ('140', 'po_13', '59278', 'pod_31', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 14:33:17');
INSERT INTO `adding_process_route_for_po` VALUES ('141', 'po_13', '59278', 'pod_31', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-06 14:33:17');
INSERT INTO `adding_process_route_for_po` VALUES ('142', 'po_13', '59278', 'pod_32', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 14:33:26');
INSERT INTO `adding_process_route_for_po` VALUES ('143', 'po_13', '59278', 'pod_32', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 14:33:26');
INSERT INTO `adding_process_route_for_po` VALUES ('144', 'po_13', '59278', 'pod_32', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 14:33:26');
INSERT INTO `adding_process_route_for_po` VALUES ('145', 'po_13', '59278', 'pod_32', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-06 14:33:26');
INSERT INTO `adding_process_route_for_po` VALUES ('146', 'po_13', '59278', 'pod_33', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 14:33:30');
INSERT INTO `adding_process_route_for_po` VALUES ('147', 'po_13', '59278', 'pod_33', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 14:33:30');
INSERT INTO `adding_process_route_for_po` VALUES ('148', 'po_13', '59278', 'pod_33', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 14:33:30');
INSERT INTO `adding_process_route_for_po` VALUES ('149', 'po_13', '59278', 'pod_33', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-06 14:33:30');
INSERT INTO `adding_process_route_for_po` VALUES ('150', 'po_13', '59278', 'pod_34', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-06 14:33:34');
INSERT INTO `adding_process_route_for_po` VALUES ('151', 'po_13', '59278', 'pod_34', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-06 14:33:34');
INSERT INTO `adding_process_route_for_po` VALUES ('152', 'po_13', '59278', 'pod_34', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-06 14:33:34');
INSERT INTO `adding_process_route_for_po` VALUES ('153', 'po_13', '59278', 'pod_34', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-06 14:33:34');
INSERT INTO `adding_process_route_for_po` VALUES ('154', 'po_14', '59291', 'Select PO Details', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 09:19:20');
INSERT INTO `adding_process_route_for_po` VALUES ('155', 'po_14', '59291', 'Select PO Details', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 09:19:20');
INSERT INTO `adding_process_route_for_po` VALUES ('156', 'po_14', '59291', 'Select PO Details', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 09:19:20');
INSERT INTO `adding_process_route_for_po` VALUES ('157', 'po_14', '59291', 'Select PO Details', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 09:19:20');
INSERT INTO `adding_process_route_for_po` VALUES ('158', 'po_14', '59291', 'pod_35', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 09:32:21');
INSERT INTO `adding_process_route_for_po` VALUES ('159', 'po_14', '59291', 'pod_35', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 09:32:21');
INSERT INTO `adding_process_route_for_po` VALUES ('160', 'po_14', '59291', 'pod_35', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 09:32:21');
INSERT INTO `adding_process_route_for_po` VALUES ('161', 'po_14', '59291', 'pod_35', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 09:32:21');
INSERT INTO `adding_process_route_for_po` VALUES ('162', 'po_15', '21/2139', 'pod_36', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 10:27:14');
INSERT INTO `adding_process_route_for_po` VALUES ('163', 'po_15', '21/2139', 'pod_36', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 10:27:14');
INSERT INTO `adding_process_route_for_po` VALUES ('164', 'po_15', '21/2139', 'pod_36', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 10:27:14');
INSERT INTO `adding_process_route_for_po` VALUES ('165', 'po_15', '21/2139', 'pod_36', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 10:27:14');
INSERT INTO `adding_process_route_for_po` VALUES ('166', 'po_16', '59221', 'pod_37', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 10:39:34');
INSERT INTO `adding_process_route_for_po` VALUES ('167', 'po_16', '59221', 'pod_37', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 10:39:34');
INSERT INTO `adding_process_route_for_po` VALUES ('168', 'po_16', '59221', 'pod_37', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 10:39:34');
INSERT INTO `adding_process_route_for_po` VALUES ('169', 'po_16', '59221', 'pod_37', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 10:39:34');
INSERT INTO `adding_process_route_for_po` VALUES ('170', 'po_17', '59295', 'pod_38', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 10:46:22');
INSERT INTO `adding_process_route_for_po` VALUES ('171', 'po_17', '59295', 'pod_38', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 10:46:22');
INSERT INTO `adding_process_route_for_po` VALUES ('172', 'po_17', '59295', 'pod_38', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 10:46:22');
INSERT INTO `adding_process_route_for_po` VALUES ('173', 'po_17', '59295', 'pod_38', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 10:46:22');
INSERT INTO `adding_process_route_for_po` VALUES ('174', 'po_17', '59295', 'pod_38', 'proc_7', 'Delivery', '7', 'process', '1', '9047', 'masum', '2021-10-07 10:46:22');
INSERT INTO `adding_process_route_for_po` VALUES ('175', 'po_18', '41605/809/620', 'pod_39', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 16:18:16');
INSERT INTO `adding_process_route_for_po` VALUES ('176', 'po_18', '41605/809/620', 'pod_39', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-07 16:18:16');
INSERT INTO `adding_process_route_for_po` VALUES ('177', 'po_18', '41605/809/620', 'pod_39', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-07 16:18:16');
INSERT INTO `adding_process_route_for_po` VALUES ('178', 'po_18', '41605/809/620', 'pod_40', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 16:18:23');
INSERT INTO `adding_process_route_for_po` VALUES ('179', 'po_18', '41605/809/620', 'pod_40', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-07 16:18:23');
INSERT INTO `adding_process_route_for_po` VALUES ('180', 'po_18', '41605/809/620', 'pod_40', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-07 16:18:23');
INSERT INTO `adding_process_route_for_po` VALUES ('181', 'po_18', '41605/809/620', 'pod_41', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 16:18:27');
INSERT INTO `adding_process_route_for_po` VALUES ('182', 'po_18', '41605/809/620', 'pod_41', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-07 16:18:27');
INSERT INTO `adding_process_route_for_po` VALUES ('183', 'po_18', '41605/809/620', 'pod_41', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-07 16:18:27');
INSERT INTO `adding_process_route_for_po` VALUES ('184', 'po_18', '41605/809/620', 'pod_42', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 16:18:31');
INSERT INTO `adding_process_route_for_po` VALUES ('185', 'po_18', '41605/809/620', 'pod_42', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-07 16:18:31');
INSERT INTO `adding_process_route_for_po` VALUES ('186', 'po_18', '41605/809/620', 'pod_42', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-07 16:18:31');
INSERT INTO `adding_process_route_for_po` VALUES ('187', 'po_19', '41605/809/620', 'pod_43', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 16:36:54');
INSERT INTO `adding_process_route_for_po` VALUES ('188', 'po_19', '41605/809/620', 'pod_43', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 16:36:54');
INSERT INTO `adding_process_route_for_po` VALUES ('189', 'po_19', '41605/809/620', 'pod_43', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 16:36:54');
INSERT INTO `adding_process_route_for_po` VALUES ('190', 'po_19', '41605/809/620', 'pod_43', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 16:36:54');
INSERT INTO `adding_process_route_for_po` VALUES ('191', 'po_19', '41605/809/620', 'pod_44', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 16:36:58');
INSERT INTO `adding_process_route_for_po` VALUES ('192', 'po_19', '41605/809/620', 'pod_44', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 16:36:58');
INSERT INTO `adding_process_route_for_po` VALUES ('193', 'po_19', '41605/809/620', 'pod_44', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 16:36:58');
INSERT INTO `adding_process_route_for_po` VALUES ('194', 'po_19', '41605/809/620', 'pod_44', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 16:36:58');
INSERT INTO `adding_process_route_for_po` VALUES ('195', 'po_19', '41605/809/620', 'pod_45', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 16:37:03');
INSERT INTO `adding_process_route_for_po` VALUES ('196', 'po_19', '41605/809/620', 'pod_45', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 16:37:03');
INSERT INTO `adding_process_route_for_po` VALUES ('197', 'po_19', '41605/809/620', 'pod_45', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 16:37:03');
INSERT INTO `adding_process_route_for_po` VALUES ('198', 'po_19', '41605/809/620', 'pod_45', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 16:37:03');
INSERT INTO `adding_process_route_for_po` VALUES ('199', 'po_19', '41605/809/620', 'pod_46', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 16:37:08');
INSERT INTO `adding_process_route_for_po` VALUES ('200', 'po_19', '41605/809/620', 'pod_46', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 16:37:08');
INSERT INTO `adding_process_route_for_po` VALUES ('201', 'po_19', '41605/809/620', 'pod_46', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 16:37:08');
INSERT INTO `adding_process_route_for_po` VALUES ('202', 'po_19', '41605/809/620', 'pod_46', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 16:37:08');
INSERT INTO `adding_process_route_for_po` VALUES ('203', 'po_19', '41605/809/620', 'pod_47', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 16:37:13');
INSERT INTO `adding_process_route_for_po` VALUES ('204', 'po_19', '41605/809/620', 'pod_47', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 16:37:13');
INSERT INTO `adding_process_route_for_po` VALUES ('205', 'po_19', '41605/809/620', 'pod_47', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 16:37:13');
INSERT INTO `adding_process_route_for_po` VALUES ('206', 'po_19', '41605/809/620', 'pod_47', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 16:37:13');
INSERT INTO `adding_process_route_for_po` VALUES ('207', 'po_19', '41605/809/620', 'pod_48', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 16:37:17');
INSERT INTO `adding_process_route_for_po` VALUES ('208', 'po_19', '41605/809/620', 'pod_48', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 16:37:17');
INSERT INTO `adding_process_route_for_po` VALUES ('209', 'po_19', '41605/809/620', 'pod_48', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 16:37:17');
INSERT INTO `adding_process_route_for_po` VALUES ('210', 'po_19', '41605/809/620', 'pod_48', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 16:37:17');
INSERT INTO `adding_process_route_for_po` VALUES ('211', 'po_20', '1M993010', 'pod_49', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 17:57:45');
INSERT INTO `adding_process_route_for_po` VALUES ('212', 'po_20', '1M993010', 'pod_49', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 17:57:45');
INSERT INTO `adding_process_route_for_po` VALUES ('213', 'po_20', '1M993010', 'pod_49', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 17:57:45');
INSERT INTO `adding_process_route_for_po` VALUES ('214', 'po_20', '1M993010', 'pod_49', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 17:57:45');
INSERT INTO `adding_process_route_for_po` VALUES ('215', 'po_20', '1M993010', 'pod_50', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 17:57:49');
INSERT INTO `adding_process_route_for_po` VALUES ('216', 'po_20', '1M993010', 'pod_50', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 17:57:49');
INSERT INTO `adding_process_route_for_po` VALUES ('217', 'po_20', '1M993010', 'pod_50', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 17:57:49');
INSERT INTO `adding_process_route_for_po` VALUES ('218', 'po_20', '1M993010', 'pod_50', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 17:57:49');
INSERT INTO `adding_process_route_for_po` VALUES ('219', 'po_20', '1M993010', 'pod_51', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 17:57:53');
INSERT INTO `adding_process_route_for_po` VALUES ('220', 'po_20', '1M993010', 'pod_51', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 17:57:53');
INSERT INTO `adding_process_route_for_po` VALUES ('221', 'po_20', '1M993010', 'pod_51', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 17:57:53');
INSERT INTO `adding_process_route_for_po` VALUES ('222', 'po_20', '1M993010', 'pod_51', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 17:57:53');
INSERT INTO `adding_process_route_for_po` VALUES ('223', 'po_20', '1M993010', 'pod_52', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 17:57:57');
INSERT INTO `adding_process_route_for_po` VALUES ('224', 'po_20', '1M993010', 'pod_52', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 17:57:57');
INSERT INTO `adding_process_route_for_po` VALUES ('225', 'po_20', '1M993010', 'pod_52', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 17:57:57');
INSERT INTO `adding_process_route_for_po` VALUES ('226', 'po_20', '1M993010', 'pod_52', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 17:57:57');
INSERT INTO `adding_process_route_for_po` VALUES ('227', 'po_20', '1M993010', 'pod_53', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 17:58:01');
INSERT INTO `adding_process_route_for_po` VALUES ('228', 'po_20', '1M993010', 'pod_53', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 17:58:01');
INSERT INTO `adding_process_route_for_po` VALUES ('229', 'po_20', '1M993010', 'pod_53', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 17:58:01');
INSERT INTO `adding_process_route_for_po` VALUES ('230', 'po_20', '1M993010', 'pod_53', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 17:58:01');
INSERT INTO `adding_process_route_for_po` VALUES ('231', 'po_20', '1M993010', 'pod_54', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 17:58:05');
INSERT INTO `adding_process_route_for_po` VALUES ('232', 'po_20', '1M993010', 'pod_54', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 17:58:05');
INSERT INTO `adding_process_route_for_po` VALUES ('233', 'po_20', '1M993010', 'pod_54', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 17:58:05');
INSERT INTO `adding_process_route_for_po` VALUES ('234', 'po_20', '1M993010', 'pod_54', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 17:58:05');
INSERT INTO `adding_process_route_for_po` VALUES ('235', 'po_20', '1M993010', 'pod_55', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-07 17:58:09');
INSERT INTO `adding_process_route_for_po` VALUES ('236', 'po_20', '1M993010', 'pod_55', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-07 17:58:09');
INSERT INTO `adding_process_route_for_po` VALUES ('237', 'po_20', '1M993010', 'pod_55', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-07 17:58:09');
INSERT INTO `adding_process_route_for_po` VALUES ('238', 'po_20', '1M993010', 'pod_55', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-07 17:58:09');
INSERT INTO `adding_process_route_for_po` VALUES ('239', 'po_21', 'PE22', 'pod_56', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 10:21:52');
INSERT INTO `adding_process_route_for_po` VALUES ('240', 'po_21', 'PE22', 'pod_56', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-09 10:21:52');
INSERT INTO `adding_process_route_for_po` VALUES ('241', 'po_21', 'PE22', 'pod_56', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-09 10:21:52');
INSERT INTO `adding_process_route_for_po` VALUES ('242', 'po_21', 'PE22', 'pod_56', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-09 10:21:52');
INSERT INTO `adding_process_route_for_po` VALUES ('243', 'po_21', 'PE22', 'pod_56', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-09 10:21:52');
INSERT INTO `adding_process_route_for_po` VALUES ('244', 'po_21', 'PE22', 'pod_57', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 10:22:00');
INSERT INTO `adding_process_route_for_po` VALUES ('245', 'po_21', 'PE22', 'pod_57', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-09 10:22:00');
INSERT INTO `adding_process_route_for_po` VALUES ('246', 'po_21', 'PE22', 'pod_57', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-09 10:22:00');
INSERT INTO `adding_process_route_for_po` VALUES ('247', 'po_21', 'PE22', 'pod_57', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-09 10:22:00');
INSERT INTO `adding_process_route_for_po` VALUES ('248', 'po_21', 'PE22', 'pod_57', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-09 10:22:00');
INSERT INTO `adding_process_route_for_po` VALUES ('249', 'po_21', 'PE22', 'pod_59', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 10:22:07');
INSERT INTO `adding_process_route_for_po` VALUES ('250', 'po_21', 'PE22', 'pod_59', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-09 10:22:07');
INSERT INTO `adding_process_route_for_po` VALUES ('251', 'po_21', 'PE22', 'pod_59', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-09 10:22:07');
INSERT INTO `adding_process_route_for_po` VALUES ('252', 'po_21', 'PE22', 'pod_59', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-09 10:22:07');
INSERT INTO `adding_process_route_for_po` VALUES ('253', 'po_21', 'PE22', 'pod_59', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-09 10:22:07');
INSERT INTO `adding_process_route_for_po` VALUES ('254', 'po_22', '41861', 'pod_60', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 11:27:03');
INSERT INTO `adding_process_route_for_po` VALUES ('255', 'po_22', '41861', 'pod_60', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 11:27:03');
INSERT INTO `adding_process_route_for_po` VALUES ('256', 'po_22', '41861', 'pod_60', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 11:27:03');
INSERT INTO `adding_process_route_for_po` VALUES ('257', 'po_22', '41861', 'pod_60', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 11:27:03');
INSERT INTO `adding_process_route_for_po` VALUES ('258', 'po_23', '59394', 'pod_66', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 11:34:37');
INSERT INTO `adding_process_route_for_po` VALUES ('259', 'po_23', '59394', 'pod_66', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 11:34:37');
INSERT INTO `adding_process_route_for_po` VALUES ('260', 'po_23', '59394', 'pod_66', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 11:34:37');
INSERT INTO `adding_process_route_for_po` VALUES ('261', 'po_23', '59394', 'pod_66', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 11:34:37');
INSERT INTO `adding_process_route_for_po` VALUES ('262', 'po_23', '59394', 'pod_67', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 11:34:41');
INSERT INTO `adding_process_route_for_po` VALUES ('263', 'po_23', '59394', 'pod_67', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 11:34:41');
INSERT INTO `adding_process_route_for_po` VALUES ('264', 'po_23', '59394', 'pod_67', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 11:34:41');
INSERT INTO `adding_process_route_for_po` VALUES ('265', 'po_23', '59394', 'pod_67', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 11:34:41');
INSERT INTO `adding_process_route_for_po` VALUES ('266', 'po_22', '41861', 'pod_61', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 11:39:26');
INSERT INTO `adding_process_route_for_po` VALUES ('267', 'po_22', '41861', 'pod_61', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 11:39:26');
INSERT INTO `adding_process_route_for_po` VALUES ('268', 'po_22', '41861', 'pod_61', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 11:39:26');
INSERT INTO `adding_process_route_for_po` VALUES ('269', 'po_22', '41861', 'pod_61', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 11:39:26');
INSERT INTO `adding_process_route_for_po` VALUES ('270', 'po_22', '41861', 'pod_62', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 11:39:31');
INSERT INTO `adding_process_route_for_po` VALUES ('271', 'po_22', '41861', 'pod_62', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 11:39:31');
INSERT INTO `adding_process_route_for_po` VALUES ('272', 'po_22', '41861', 'pod_62', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 11:39:31');
INSERT INTO `adding_process_route_for_po` VALUES ('273', 'po_22', '41861', 'pod_62', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 11:39:31');
INSERT INTO `adding_process_route_for_po` VALUES ('274', 'po_22', '41861', 'pod_63', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 11:39:36');
INSERT INTO `adding_process_route_for_po` VALUES ('275', 'po_22', '41861', 'pod_63', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 11:39:36');
INSERT INTO `adding_process_route_for_po` VALUES ('276', 'po_22', '41861', 'pod_63', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 11:39:36');
INSERT INTO `adding_process_route_for_po` VALUES ('277', 'po_22', '41861', 'pod_63', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 11:39:36');
INSERT INTO `adding_process_route_for_po` VALUES ('278', 'po_22', '41861', 'pod_64', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 11:39:40');
INSERT INTO `adding_process_route_for_po` VALUES ('279', 'po_22', '41861', 'pod_64', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 11:39:40');
INSERT INTO `adding_process_route_for_po` VALUES ('280', 'po_22', '41861', 'pod_64', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 11:39:40');
INSERT INTO `adding_process_route_for_po` VALUES ('281', 'po_22', '41861', 'pod_64', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 11:39:40');
INSERT INTO `adding_process_route_for_po` VALUES ('282', 'po_22', '41861', 'pod_65', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 11:39:46');
INSERT INTO `adding_process_route_for_po` VALUES ('283', 'po_22', '41861', 'pod_65', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 11:39:46');
INSERT INTO `adding_process_route_for_po` VALUES ('284', 'po_22', '41861', 'pod_65', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 11:39:46');
INSERT INTO `adding_process_route_for_po` VALUES ('285', 'po_22', '41861', 'pod_65', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 11:39:46');
INSERT INTO `adding_process_route_for_po` VALUES ('286', 'po_24', '59399', 'pod_68', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 12:18:22');
INSERT INTO `adding_process_route_for_po` VALUES ('287', 'po_24', '59399', 'pod_68', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 12:18:22');
INSERT INTO `adding_process_route_for_po` VALUES ('288', 'po_24', '59399', 'pod_68', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 12:18:22');
INSERT INTO `adding_process_route_for_po` VALUES ('289', 'po_24', '59399', 'pod_68', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 12:18:22');
INSERT INTO `adding_process_route_for_po` VALUES ('298', 'po_24', '59399', 'pod_71', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 12:18:39');
INSERT INTO `adding_process_route_for_po` VALUES ('299', 'po_24', '59399', 'pod_71', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 12:18:39');
INSERT INTO `adding_process_route_for_po` VALUES ('300', 'po_24', '59399', 'pod_71', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 12:18:39');
INSERT INTO `adding_process_route_for_po` VALUES ('301', 'po_24', '59399', 'pod_71', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 12:18:39');
INSERT INTO `adding_process_route_for_po` VALUES ('306', 'po_24', '59399', 'pod_73', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 12:18:48');
INSERT INTO `adding_process_route_for_po` VALUES ('307', 'po_24', '59399', 'pod_73', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 12:18:48');
INSERT INTO `adding_process_route_for_po` VALUES ('308', 'po_24', '59399', 'pod_73', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 12:18:48');
INSERT INTO `adding_process_route_for_po` VALUES ('309', 'po_24', '59399', 'pod_73', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 12:18:48');
INSERT INTO `adding_process_route_for_po` VALUES ('314', 'po_23', '59394', 'pod_75', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 14:54:50');
INSERT INTO `adding_process_route_for_po` VALUES ('315', 'po_23', '59394', 'pod_75', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 14:54:50');
INSERT INTO `adding_process_route_for_po` VALUES ('316', 'po_23', '59394', 'pod_75', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 14:54:50');
INSERT INTO `adding_process_route_for_po` VALUES ('317', 'po_23', '59394', 'pod_75', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 14:54:50');
INSERT INTO `adding_process_route_for_po` VALUES ('318', 'po_23', '59394', 'pod_76', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 14:54:55');
INSERT INTO `adding_process_route_for_po` VALUES ('319', 'po_23', '59394', 'pod_76', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 14:54:55');
INSERT INTO `adding_process_route_for_po` VALUES ('320', 'po_23', '59394', 'pod_76', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 14:54:55');
INSERT INTO `adding_process_route_for_po` VALUES ('321', 'po_23', '59394', 'pod_76', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 14:54:55');
INSERT INTO `adding_process_route_for_po` VALUES ('322', 'po_25', '59364, 59354, 59345', 'pod_77', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 15:14:53');
INSERT INTO `adding_process_route_for_po` VALUES ('323', 'po_25', '59364, 59354, 59345', 'pod_77', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 15:14:53');
INSERT INTO `adding_process_route_for_po` VALUES ('324', 'po_25', '59364, 59354, 59345', 'pod_77', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 15:14:53');
INSERT INTO `adding_process_route_for_po` VALUES ('325', 'po_25', '59364, 59354, 59345', 'pod_77', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 15:14:53');
INSERT INTO `adding_process_route_for_po` VALUES ('326', 'po_27', '59380', 'pod_78', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 17:01:38');
INSERT INTO `adding_process_route_for_po` VALUES ('327', 'po_27', '59380', 'pod_78', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 17:01:38');
INSERT INTO `adding_process_route_for_po` VALUES ('328', 'po_27', '59380', 'pod_78', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 17:01:38');
INSERT INTO `adding_process_route_for_po` VALUES ('329', 'po_27', '59380', 'pod_78', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 17:01:38');
INSERT INTO `adding_process_route_for_po` VALUES ('330', 'po_28', '59368', 'pod_79', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 17:06:18');
INSERT INTO `adding_process_route_for_po` VALUES ('331', 'po_28', '59368', 'pod_79', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 17:06:18');
INSERT INTO `adding_process_route_for_po` VALUES ('332', 'po_28', '59368', 'pod_79', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 17:06:18');
INSERT INTO `adding_process_route_for_po` VALUES ('333', 'po_28', '59368', 'pod_79', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 17:06:18');
INSERT INTO `adding_process_route_for_po` VALUES ('334', 'po_29', '59373', 'pod_80', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 17:10:10');
INSERT INTO `adding_process_route_for_po` VALUES ('335', 'po_29', '59373', 'pod_80', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 17:10:10');
INSERT INTO `adding_process_route_for_po` VALUES ('336', 'po_29', '59373', 'pod_80', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 17:10:10');
INSERT INTO `adding_process_route_for_po` VALUES ('337', 'po_29', '59373', 'pod_80', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 17:10:10');
INSERT INTO `adding_process_route_for_po` VALUES ('338', 'po_26', '59421', 'pod_81', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 17:19:11');
INSERT INTO `adding_process_route_for_po` VALUES ('339', 'po_26', '59421', 'pod_81', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 17:19:11');
INSERT INTO `adding_process_route_for_po` VALUES ('340', 'po_26', '59421', 'pod_81', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 17:19:11');
INSERT INTO `adding_process_route_for_po` VALUES ('341', 'po_26', '59421', 'pod_81', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 17:19:11');
INSERT INTO `adding_process_route_for_po` VALUES ('342', 'po_30', '42556', 'pod_82', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 17:27:18');
INSERT INTO `adding_process_route_for_po` VALUES ('343', 'po_30', '42556', 'pod_82', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 17:27:18');
INSERT INTO `adding_process_route_for_po` VALUES ('344', 'po_30', '42556', 'pod_82', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 17:27:18');
INSERT INTO `adding_process_route_for_po` VALUES ('345', 'po_30', '42556', 'pod_82', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 17:27:18');
INSERT INTO `adding_process_route_for_po` VALUES ('346', 'po_30', '42556', 'pod_83', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 17:27:22');
INSERT INTO `adding_process_route_for_po` VALUES ('347', 'po_30', '42556', 'pod_83', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 17:27:22');
INSERT INTO `adding_process_route_for_po` VALUES ('348', 'po_30', '42556', 'pod_83', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 17:27:22');
INSERT INTO `adding_process_route_for_po` VALUES ('349', 'po_30', '42556', 'pod_83', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 17:27:22');
INSERT INTO `adding_process_route_for_po` VALUES ('350', 'po_31', '59307', 'pod_84', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 17:36:56');
INSERT INTO `adding_process_route_for_po` VALUES ('351', 'po_31', '59307', 'pod_84', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-09 17:36:56');
INSERT INTO `adding_process_route_for_po` VALUES ('352', 'po_31', '59307', 'pod_84', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-09 17:36:56');
INSERT INTO `adding_process_route_for_po` VALUES ('353', 'po_31', '59307', 'pod_84', 'proc_2', 'Printing & Slotting', '4', 'process', '1', '9047', 'masum', '2021-10-09 17:36:56');
INSERT INTO `adding_process_route_for_po` VALUES ('354', 'po_31', '59307', 'pod_84', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-09 17:36:56');
INSERT INTO `adding_process_route_for_po` VALUES ('355', 'po_31', '59307', 'pod_84', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-09 17:36:56');
INSERT INTO `adding_process_route_for_po` VALUES ('356', 'po_34', '1N095711', 'pod_86', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 18:00:53');
INSERT INTO `adding_process_route_for_po` VALUES ('357', 'po_34', '1N095711', 'pod_86', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 18:00:53');
INSERT INTO `adding_process_route_for_po` VALUES ('358', 'po_34', '1N095711', 'pod_86', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 18:00:53');
INSERT INTO `adding_process_route_for_po` VALUES ('359', 'po_34', '1N095711', 'pod_86', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 18:00:53');
INSERT INTO `adding_process_route_for_po` VALUES ('360', 'po_33', '6N094510', 'pod_85', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-09 18:01:22');
INSERT INTO `adding_process_route_for_po` VALUES ('361', 'po_33', '6N094510', 'pod_85', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-09 18:01:22');
INSERT INTO `adding_process_route_for_po` VALUES ('362', 'po_33', '6N094510', 'pod_85', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-09 18:01:22');
INSERT INTO `adding_process_route_for_po` VALUES ('363', 'po_33', '6N094510', 'pod_85', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-09 18:01:22');
INSERT INTO `adding_process_route_for_po` VALUES ('364', 'po_37', '41605, 41809, 41620, 39262, 39848', 'pod_96', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 10:39:33');
INSERT INTO `adding_process_route_for_po` VALUES ('365', 'po_37', '41605, 41809, 41620, 39262, 39848', 'pod_96', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-10 10:39:33');
INSERT INTO `adding_process_route_for_po` VALUES ('366', 'po_37', '41605, 41809, 41620, 39262, 39848', 'pod_96', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-10 10:39:33');
INSERT INTO `adding_process_route_for_po` VALUES ('367', 'po_37', '41605, 41809, 41620, 39262, 39848', 'pod_97', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 10:39:37');
INSERT INTO `adding_process_route_for_po` VALUES ('368', 'po_37', '41605, 41809, 41620, 39262, 39848', 'pod_97', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-10 10:39:37');
INSERT INTO `adding_process_route_for_po` VALUES ('369', 'po_37', '41605, 41809, 41620, 39262, 39848', 'pod_97', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-10 10:39:37');
INSERT INTO `adding_process_route_for_po` VALUES ('370', 'po_37', '41605, 41809, 41620, 39262, 39848', 'pod_98', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 10:39:42');
INSERT INTO `adding_process_route_for_po` VALUES ('371', 'po_37', '41605, 41809, 41620, 39262, 39848', 'pod_98', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-10 10:39:42');
INSERT INTO `adding_process_route_for_po` VALUES ('372', 'po_37', '41605, 41809, 41620, 39262, 39848', 'pod_98', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-10 10:39:42');
INSERT INTO `adding_process_route_for_po` VALUES ('373', 'po_37', '41605, 41809, 41620, 39262, 39848', 'pod_99', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 10:39:46');
INSERT INTO `adding_process_route_for_po` VALUES ('374', 'po_37', '41605, 41809, 41620, 39262, 39848', 'pod_99', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-10 10:39:46');
INSERT INTO `adding_process_route_for_po` VALUES ('375', 'po_37', '41605, 41809, 41620, 39262, 39848', 'pod_99', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-10 10:39:46');
INSERT INTO `adding_process_route_for_po` VALUES ('376', 'po_36', '41620', 'pod_90', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 10:44:23');
INSERT INTO `adding_process_route_for_po` VALUES ('377', 'po_36', '41620', 'pod_90', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-10 10:44:23');
INSERT INTO `adding_process_route_for_po` VALUES ('378', 'po_36', '41620', 'pod_90', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-10 10:44:23');
INSERT INTO `adding_process_route_for_po` VALUES ('379', 'po_36', '41620', 'pod_91', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 10:44:27');
INSERT INTO `adding_process_route_for_po` VALUES ('380', 'po_36', '41620', 'pod_91', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-10 10:44:27');
INSERT INTO `adding_process_route_for_po` VALUES ('381', 'po_36', '41620', 'pod_91', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-10 10:44:27');
INSERT INTO `adding_process_route_for_po` VALUES ('382', 'po_36', '41620', 'pod_92', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 10:44:30');
INSERT INTO `adding_process_route_for_po` VALUES ('383', 'po_36', '41620', 'pod_92', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-10 10:44:30');
INSERT INTO `adding_process_route_for_po` VALUES ('384', 'po_36', '41620', 'pod_92', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-10 10:44:30');
INSERT INTO `adding_process_route_for_po` VALUES ('385', 'po_36', '41620', 'pod_93', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 10:44:34');
INSERT INTO `adding_process_route_for_po` VALUES ('386', 'po_36', '41620', 'pod_93', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-10 10:44:34');
INSERT INTO `adding_process_route_for_po` VALUES ('387', 'po_36', '41620', 'pod_93', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-10 10:44:34');
INSERT INTO `adding_process_route_for_po` VALUES ('388', 'po_36', '41620', 'pod_94', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 10:44:37');
INSERT INTO `adding_process_route_for_po` VALUES ('389', 'po_36', '41620', 'pod_94', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-10 10:44:37');
INSERT INTO `adding_process_route_for_po` VALUES ('390', 'po_36', '41620', 'pod_94', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-10 10:44:37');
INSERT INTO `adding_process_route_for_po` VALUES ('391', 'po_36', '41620', 'pod_95', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 10:44:41');
INSERT INTO `adding_process_route_for_po` VALUES ('392', 'po_36', '41620', 'pod_95', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-10 10:44:41');
INSERT INTO `adding_process_route_for_po` VALUES ('393', 'po_36', '41620', 'pod_95', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-10 10:44:41');
INSERT INTO `adding_process_route_for_po` VALUES ('394', 'po_24', '59399', 'pod_69', 'proc_1', 'Corrugation', '1', 'process', '1', 'admin', 'admin', '2021-10-10 12:53:42');
INSERT INTO `adding_process_route_for_po` VALUES ('395', 'po_24', '59399', 'pod_69', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', 'admin', 'admin', '2021-10-10 12:53:42');
INSERT INTO `adding_process_route_for_po` VALUES ('396', 'po_24', '59399', 'pod_69', 'proc_5', 'Manual Slotting ', '3', 'process', '1', 'admin', 'admin', '2021-10-10 12:53:42');
INSERT INTO `adding_process_route_for_po` VALUES ('397', 'po_24', '59399', 'pod_69', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', 'admin', 'admin', '2021-10-10 12:53:42');
INSERT INTO `adding_process_route_for_po` VALUES ('398', 'po_24', '59399', 'pod_69', 'proc_7', 'Delivery', '5', 'process', '1', 'admin', 'admin', '2021-10-10 12:53:42');
INSERT INTO `adding_process_route_for_po` VALUES ('399', 'po_24', '59399', 'pod_74', 'proc_1', 'Corrugation', '1', 'process', '1', 'admin', 'admin', '2021-10-10 12:56:55');
INSERT INTO `adding_process_route_for_po` VALUES ('400', 'po_24', '59399', 'pod_74', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', 'admin', 'admin', '2021-10-10 12:56:55');
INSERT INTO `adding_process_route_for_po` VALUES ('401', 'po_24', '59399', 'pod_74', 'proc_5', 'Manual Slotting ', '3', 'process', '1', 'admin', 'admin', '2021-10-10 12:56:55');
INSERT INTO `adding_process_route_for_po` VALUES ('402', 'po_24', '59399', 'pod_74', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', 'admin', 'admin', '2021-10-10 12:56:55');
INSERT INTO `adding_process_route_for_po` VALUES ('403', 'po_24', '59399', 'pod_74', 'proc_7', 'Delivery', '5', 'process', '1', 'admin', 'admin', '2021-10-10 12:56:55');
INSERT INTO `adding_process_route_for_po` VALUES ('404', 'po_24', '59399', 'pod_72', 'proc_1', 'Corrugation', '1', 'process', '1', 'admin', 'admin', '2021-10-10 12:57:32');
INSERT INTO `adding_process_route_for_po` VALUES ('405', 'po_24', '59399', 'pod_72', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', 'admin', 'admin', '2021-10-10 12:57:32');
INSERT INTO `adding_process_route_for_po` VALUES ('406', 'po_24', '59399', 'pod_72', 'proc_5', 'Manual Slotting ', '3', 'process', '1', 'admin', 'admin', '2021-10-10 12:57:32');
INSERT INTO `adding_process_route_for_po` VALUES ('407', 'po_24', '59399', 'pod_72', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', 'admin', 'admin', '2021-10-10 12:57:32');
INSERT INTO `adding_process_route_for_po` VALUES ('408', 'po_24', '59399', 'pod_72', 'proc_7', 'Delivery', '5', 'process', '1', 'admin', 'admin', '2021-10-10 12:57:32');
INSERT INTO `adding_process_route_for_po` VALUES ('409', 'po_24', '59399', 'pod_70', 'proc_1', 'Corrugation', '1', 'process', '1', 'admin', 'admin', '2021-10-10 12:58:12');
INSERT INTO `adding_process_route_for_po` VALUES ('410', 'po_24', '59399', 'pod_70', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', 'admin', 'admin', '2021-10-10 12:58:12');
INSERT INTO `adding_process_route_for_po` VALUES ('411', 'po_24', '59399', 'pod_70', 'proc_5', 'Manual Slotting ', '3', 'process', '1', 'admin', 'admin', '2021-10-10 12:58:12');
INSERT INTO `adding_process_route_for_po` VALUES ('412', 'po_24', '59399', 'pod_70', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', 'admin', 'admin', '2021-10-10 12:58:12');
INSERT INTO `adding_process_route_for_po` VALUES ('413', 'po_24', '59399', 'pod_70', 'proc_7', 'Delivery', '5', 'process', '1', 'admin', 'admin', '2021-10-10 12:58:12');
INSERT INTO `adding_process_route_for_po` VALUES ('414', 'po_39', '59407', 'pod_100', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 14:51:01');
INSERT INTO `adding_process_route_for_po` VALUES ('415', 'po_39', '59407', 'pod_100', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-10 14:51:01');
INSERT INTO `adding_process_route_for_po` VALUES ('416', 'po_39', '59407', 'pod_100', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-10 14:51:01');
INSERT INTO `adding_process_route_for_po` VALUES ('417', 'po_39', '59407', 'pod_100', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-10 14:51:01');
INSERT INTO `adding_process_route_for_po` VALUES ('418', 'po_40', '59322', 'pod_101', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 16:34:56');
INSERT INTO `adding_process_route_for_po` VALUES ('419', 'po_40', '59322', 'pod_101', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-10 16:34:56');
INSERT INTO `adding_process_route_for_po` VALUES ('420', 'po_40', '59322', 'pod_101', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-10 16:34:56');
INSERT INTO `adding_process_route_for_po` VALUES ('421', 'po_40', '59322', 'pod_101', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-10 16:34:56');
INSERT INTO `adding_process_route_for_po` VALUES ('422', 'po_40', '59322', 'pod_101', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-10 16:34:56');
INSERT INTO `adding_process_route_for_po` VALUES ('423', 'po_40', '59322', 'pod_101', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-10 16:34:56');
INSERT INTO `adding_process_route_for_po` VALUES ('424', 'po_40', '59322', 'pod_102', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 16:36:35');
INSERT INTO `adding_process_route_for_po` VALUES ('425', 'po_40', '59322', 'pod_102', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-10 16:36:35');
INSERT INTO `adding_process_route_for_po` VALUES ('426', 'po_40', '59322', 'pod_102', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-10 16:36:35');
INSERT INTO `adding_process_route_for_po` VALUES ('427', 'po_40', '59322', 'pod_102', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-10 16:36:35');
INSERT INTO `adding_process_route_for_po` VALUES ('428', 'po_40', '59322', 'pod_103', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 16:37:10');
INSERT INTO `adding_process_route_for_po` VALUES ('429', 'po_40', '59322', 'pod_103', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-10 16:37:10');
INSERT INTO `adding_process_route_for_po` VALUES ('430', 'po_40', '59322', 'pod_103', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-10 16:37:10');
INSERT INTO `adding_process_route_for_po` VALUES ('431', 'po_40', '59322', 'pod_103', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-10 16:37:10');
INSERT INTO `adding_process_route_for_po` VALUES ('432', 'po_40', '59322', 'pod_104', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 16:37:16');
INSERT INTO `adding_process_route_for_po` VALUES ('433', 'po_40', '59322', 'pod_104', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-10 16:37:16');
INSERT INTO `adding_process_route_for_po` VALUES ('434', 'po_40', '59322', 'pod_104', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-10 16:37:16');
INSERT INTO `adding_process_route_for_po` VALUES ('435', 'po_40', '59322', 'pod_104', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-10 16:37:16');
INSERT INTO `adding_process_route_for_po` VALUES ('436', 'po_40', '59322', 'pod_105', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 16:37:21');
INSERT INTO `adding_process_route_for_po` VALUES ('437', 'po_40', '59322', 'pod_105', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-10 16:37:21');
INSERT INTO `adding_process_route_for_po` VALUES ('438', 'po_40', '59322', 'pod_105', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-10 16:37:21');
INSERT INTO `adding_process_route_for_po` VALUES ('439', 'po_40', '59322', 'pod_105', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-10 16:37:21');
INSERT INTO `adding_process_route_for_po` VALUES ('440', 'po_40', '59322', 'pod_106', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 16:37:26');
INSERT INTO `adding_process_route_for_po` VALUES ('441', 'po_40', '59322', 'pod_106', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-10 16:37:26');
INSERT INTO `adding_process_route_for_po` VALUES ('442', 'po_40', '59322', 'pod_106', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-10 16:37:26');
INSERT INTO `adding_process_route_for_po` VALUES ('443', 'po_40', '59322', 'pod_106', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-10 16:37:26');
INSERT INTO `adding_process_route_for_po` VALUES ('444', 'po_38', '42629', 'pod_107', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 16:49:51');
INSERT INTO `adding_process_route_for_po` VALUES ('445', 'po_38', '42629', 'pod_107', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-10 16:49:51');
INSERT INTO `adding_process_route_for_po` VALUES ('446', 'po_38', '42629', 'pod_107', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-10 16:49:51');
INSERT INTO `adding_process_route_for_po` VALUES ('447', 'po_38', '42629', 'pod_108', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 16:49:55');
INSERT INTO `adding_process_route_for_po` VALUES ('448', 'po_38', '42629', 'pod_108', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-10 16:49:55');
INSERT INTO `adding_process_route_for_po` VALUES ('449', 'po_38', '42629', 'pod_108', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-10 16:49:55');
INSERT INTO `adding_process_route_for_po` VALUES ('450', 'po_41', '2223', 'pod_109', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 17:44:29');
INSERT INTO `adding_process_route_for_po` VALUES ('451', 'po_41', '2223', 'pod_109', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-10 17:44:29');
INSERT INTO `adding_process_route_for_po` VALUES ('452', 'po_41', '2223', 'pod_109', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-10 17:44:29');
INSERT INTO `adding_process_route_for_po` VALUES ('453', 'po_41', '2223', 'pod_109', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-10 17:44:29');
INSERT INTO `adding_process_route_for_po` VALUES ('454', 'po_41', '2223', 'pod_110', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-10 17:44:33');
INSERT INTO `adding_process_route_for_po` VALUES ('455', 'po_41', '2223', 'pod_110', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-10 17:44:33');
INSERT INTO `adding_process_route_for_po` VALUES ('456', 'po_41', '2223', 'pod_110', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-10 17:44:33');
INSERT INTO `adding_process_route_for_po` VALUES ('457', 'po_41', '2223', 'pod_110', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-10 17:44:33');
INSERT INTO `adding_process_route_for_po` VALUES ('458', 'po_42', '43055', 'pod_111', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 09:08:54');
INSERT INTO `adding_process_route_for_po` VALUES ('459', 'po_42', '43055', 'pod_111', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 09:08:54');
INSERT INTO `adding_process_route_for_po` VALUES ('460', 'po_42', '43055', 'pod_111', 'proc_4', 'Die Cutting ', '3', 'process', '1', '9047', 'masum', '2021-10-11 09:08:54');
INSERT INTO `adding_process_route_for_po` VALUES ('461', 'po_42', '43055', 'pod_111', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-11 09:08:54');
INSERT INTO `adding_process_route_for_po` VALUES ('462', 'po_42', '43055', 'pod_111', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-11 09:08:54');
INSERT INTO `adding_process_route_for_po` VALUES ('463', 'po_43', '43102', 'pod_112', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 10:49:33');
INSERT INTO `adding_process_route_for_po` VALUES ('464', 'po_43', '43102', 'pod_112', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 10:49:33');
INSERT INTO `adding_process_route_for_po` VALUES ('465', 'po_43', '43102', 'pod_112', 'proc_4', 'Die Cutting ', '3', 'process', '1', '9047', 'masum', '2021-10-11 10:49:33');
INSERT INTO `adding_process_route_for_po` VALUES ('466', 'po_43', '43102', 'pod_112', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-11 10:49:33');
INSERT INTO `adding_process_route_for_po` VALUES ('467', 'po_43', '43102', 'pod_112', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-11 10:49:33');
INSERT INTO `adding_process_route_for_po` VALUES ('468', 'po_45', '59246', 'pod_113', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 11:58:38');
INSERT INTO `adding_process_route_for_po` VALUES ('469', 'po_45', '59246', 'pod_113', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 11:58:38');
INSERT INTO `adding_process_route_for_po` VALUES ('470', 'po_45', '59246', 'pod_113', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 11:58:38');
INSERT INTO `adding_process_route_for_po` VALUES ('471', 'po_45', '59246', 'pod_113', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 11:58:38');
INSERT INTO `adding_process_route_for_po` VALUES ('472', 'po_44', '59254, 59246', 'pod_114', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 11:59:15');
INSERT INTO `adding_process_route_for_po` VALUES ('473', 'po_44', '59254, 59246', 'pod_114', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 11:59:15');
INSERT INTO `adding_process_route_for_po` VALUES ('474', 'po_44', '59254, 59246', 'pod_114', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 11:59:15');
INSERT INTO `adding_process_route_for_po` VALUES ('475', 'po_44', '59254, 59246', 'pod_114', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 11:59:15');
INSERT INTO `adding_process_route_for_po` VALUES ('476', 'po_46', '43102, 43055', 'Select PO Details', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 12:23:11');
INSERT INTO `adding_process_route_for_po` VALUES ('477', 'po_46', '43102, 43055', 'Select PO Details', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-11 12:23:11');
INSERT INTO `adding_process_route_for_po` VALUES ('478', 'po_46', '43102, 43055', 'Select PO Details', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-11 12:23:11');
INSERT INTO `adding_process_route_for_po` VALUES ('479', 'po_46', '43102, 43055', 'pod_115', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 12:24:07');
INSERT INTO `adding_process_route_for_po` VALUES ('480', 'po_46', '43102, 43055', 'pod_115', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-11 12:24:07');
INSERT INTO `adding_process_route_for_po` VALUES ('481', 'po_46', '43102, 43055', 'pod_115', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-11 12:24:07');
INSERT INTO `adding_process_route_for_po` VALUES ('482', 'po_47', '43102, 43055.', 'pod_116', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 12:27:25');
INSERT INTO `adding_process_route_for_po` VALUES ('483', 'po_47', '43102, 43055.', 'pod_116', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-11 12:27:25');
INSERT INTO `adding_process_route_for_po` VALUES ('484', 'po_47', '43102, 43055.', 'pod_116', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-11 12:27:25');
INSERT INTO `adding_process_route_for_po` VALUES ('485', 'po_48', '2517', 'pod_117', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 12:52:03');
INSERT INTO `adding_process_route_for_po` VALUES ('486', 'po_48', '2517', 'pod_117', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 12:52:03');
INSERT INTO `adding_process_route_for_po` VALUES ('487', 'po_48', '2517', 'pod_117', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 12:52:03');
INSERT INTO `adding_process_route_for_po` VALUES ('488', 'po_48', '2517', 'pod_117', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 12:52:03');
INSERT INTO `adding_process_route_for_po` VALUES ('489', 'po_49', '42892', 'Select PO Details', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 14:16:13');
INSERT INTO `adding_process_route_for_po` VALUES ('490', 'po_49', '42892', 'Select PO Details', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 14:16:13');
INSERT INTO `adding_process_route_for_po` VALUES ('491', 'po_49', '42892', 'Select PO Details', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 14:16:13');
INSERT INTO `adding_process_route_for_po` VALUES ('492', 'po_49', '42892', 'Select PO Details', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 14:16:13');
INSERT INTO `adding_process_route_for_po` VALUES ('493', 'po_52', '59549', 'pod_127', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-11 14:30:28');
INSERT INTO `adding_process_route_for_po` VALUES ('494', 'po_52', '59549', 'pod_127', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 14:30:28');
INSERT INTO `adding_process_route_for_po` VALUES ('495', 'po_52', '59549', 'pod_127', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 14:30:28');
INSERT INTO `adding_process_route_for_po` VALUES ('496', 'po_49', '42892', 'pod_118', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 14:40:28');
INSERT INTO `adding_process_route_for_po` VALUES ('497', 'po_49', '42892', 'pod_118', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 14:40:28');
INSERT INTO `adding_process_route_for_po` VALUES ('498', 'po_49', '42892', 'pod_118', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 14:40:28');
INSERT INTO `adding_process_route_for_po` VALUES ('499', 'po_49', '42892', 'pod_118', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 14:40:28');
INSERT INTO `adding_process_route_for_po` VALUES ('500', 'po_49', '42892', 'pod_119', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 14:40:32');
INSERT INTO `adding_process_route_for_po` VALUES ('501', 'po_49', '42892', 'pod_119', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 14:40:32');
INSERT INTO `adding_process_route_for_po` VALUES ('502', 'po_49', '42892', 'pod_119', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 14:40:32');
INSERT INTO `adding_process_route_for_po` VALUES ('503', 'po_49', '42892', 'pod_119', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 14:40:32');
INSERT INTO `adding_process_route_for_po` VALUES ('504', 'po_49', '42892', 'pod_120', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 14:40:36');
INSERT INTO `adding_process_route_for_po` VALUES ('505', 'po_49', '42892', 'pod_120', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 14:40:36');
INSERT INTO `adding_process_route_for_po` VALUES ('506', 'po_49', '42892', 'pod_120', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 14:40:36');
INSERT INTO `adding_process_route_for_po` VALUES ('507', 'po_49', '42892', 'pod_120', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 14:40:36');
INSERT INTO `adding_process_route_for_po` VALUES ('512', 'po_49', '42892', 'pod_122', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 14:40:45');
INSERT INTO `adding_process_route_for_po` VALUES ('513', 'po_49', '42892', 'pod_122', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 14:40:45');
INSERT INTO `adding_process_route_for_po` VALUES ('514', 'po_49', '42892', 'pod_122', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 14:40:45');
INSERT INTO `adding_process_route_for_po` VALUES ('515', 'po_49', '42892', 'pod_122', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 14:40:45');
INSERT INTO `adding_process_route_for_po` VALUES ('520', 'po_49', '42892', 'pod_124', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 14:40:53');
INSERT INTO `adding_process_route_for_po` VALUES ('521', 'po_49', '42892', 'pod_124', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 14:40:53');
INSERT INTO `adding_process_route_for_po` VALUES ('522', 'po_49', '42892', 'pod_124', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 14:40:53');
INSERT INTO `adding_process_route_for_po` VALUES ('523', 'po_49', '42892', 'pod_124', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 14:40:53');
INSERT INTO `adding_process_route_for_po` VALUES ('524', 'po_50', '42892, 42889', 'pod_125', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 14:41:20');
INSERT INTO `adding_process_route_for_po` VALUES ('525', 'po_50', '42892, 42889', 'pod_125', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 14:41:20');
INSERT INTO `adding_process_route_for_po` VALUES ('526', 'po_50', '42892, 42889', 'pod_125', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 14:41:20');
INSERT INTO `adding_process_route_for_po` VALUES ('527', 'po_50', '42892, 42889', 'pod_125', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 14:41:20');
INSERT INTO `adding_process_route_for_po` VALUES ('528', 'po_51', '42889', 'pod_126', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 14:41:42');
INSERT INTO `adding_process_route_for_po` VALUES ('529', 'po_51', '42889', 'pod_126', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 14:41:42');
INSERT INTO `adding_process_route_for_po` VALUES ('530', 'po_51', '42889', 'pod_126', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 14:41:42');
INSERT INTO `adding_process_route_for_po` VALUES ('531', 'po_51', '42889', 'pod_126', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 14:41:42');
INSERT INTO `adding_process_route_for_po` VALUES ('532', 'po_53', '59491', 'pod_128', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 15:08:41');
INSERT INTO `adding_process_route_for_po` VALUES ('533', 'po_53', '59491', 'pod_128', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 15:08:41');
INSERT INTO `adding_process_route_for_po` VALUES ('534', 'po_53', '59491', 'pod_128', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 15:08:41');
INSERT INTO `adding_process_route_for_po` VALUES ('535', 'po_53', '59491', 'pod_128', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 15:08:41');
INSERT INTO `adding_process_route_for_po` VALUES ('536', 'po_53', '59491', 'pod_129', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-11 15:08:45');
INSERT INTO `adding_process_route_for_po` VALUES ('537', 'po_53', '59491', 'pod_129', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-11 15:08:45');
INSERT INTO `adding_process_route_for_po` VALUES ('538', 'po_53', '59491', 'pod_129', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-11 15:08:45');
INSERT INTO `adding_process_route_for_po` VALUES ('539', 'po_53', '59491', 'pod_129', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-11 15:08:45');
INSERT INTO `adding_process_route_for_po` VALUES ('540', 'po_54', '59555, 59550, 59477, 59460', 'pod_130', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-12 12:07:10');
INSERT INTO `adding_process_route_for_po` VALUES ('541', 'po_54', '59555, 59550, 59477, 59460', 'pod_130', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-12 12:07:10');
INSERT INTO `adding_process_route_for_po` VALUES ('542', 'po_54', '59555, 59550, 59477, 59460', 'pod_130', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-12 12:07:10');
INSERT INTO `adding_process_route_for_po` VALUES ('543', 'po_54', '59555, 59550, 59477, 59460', 'pod_130', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-12 12:07:10');
INSERT INTO `adding_process_route_for_po` VALUES ('544', 'po_55', '59521, 59525, 59510, 59517, 59492, 59497, 59502, 59506, 59533, 59529', 'pod_131', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-12 12:12:37');
INSERT INTO `adding_process_route_for_po` VALUES ('545', 'po_55', '59521, 59525, 59510, 59517, 59492, 59497, 59502, 59506, 59533, 59529', 'pod_131', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-12 12:12:37');
INSERT INTO `adding_process_route_for_po` VALUES ('546', 'po_55', '59521, 59525, 59510, 59517, 59492, 59497, 59502, 59506, 59533, 59529', 'pod_131', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-12 12:12:37');
INSERT INTO `adding_process_route_for_po` VALUES ('547', 'po_55', '59521, 59525, 59510, 59517, 59492, 59497, 59502, 59506, 59533, 59529', 'pod_131', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-12 12:12:37');
INSERT INTO `adding_process_route_for_po` VALUES ('548', 'po_56', '43105', 'pod_132', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-12 17:04:36');
INSERT INTO `adding_process_route_for_po` VALUES ('549', 'po_56', '43105', 'pod_132', 'proc_6', 'Folding & Gluing ', '2', 'process', '1', '9047', 'masum', '2021-10-12 17:04:36');
INSERT INTO `adding_process_route_for_po` VALUES ('550', 'po_56', '43105', 'pod_132', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-12 17:04:36');
INSERT INTO `adding_process_route_for_po` VALUES ('551', 'po_58', '59585', 'pod_133', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-13 09:37:52');
INSERT INTO `adding_process_route_for_po` VALUES ('552', 'po_58', '59585', 'pod_133', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-13 09:37:52');
INSERT INTO `adding_process_route_for_po` VALUES ('553', 'po_58', '59585', 'pod_133', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-13 09:37:52');
INSERT INTO `adding_process_route_for_po` VALUES ('554', 'po_58', '59585', 'pod_133', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-13 09:37:52');
INSERT INTO `adding_process_route_for_po` VALUES ('555', 'po_58', '59585', 'pod_133', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-13 09:37:52');
INSERT INTO `adding_process_route_for_po` VALUES ('556', 'po_60', '59608', 'pod_136', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:28:23');
INSERT INTO `adding_process_route_for_po` VALUES ('557', 'po_60', '59608', 'pod_136', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:28:23');
INSERT INTO `adding_process_route_for_po` VALUES ('558', 'po_60', '59608', 'pod_136', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:28:23');
INSERT INTO `adding_process_route_for_po` VALUES ('559', 'po_60', '59608', 'pod_136', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-13 16:28:23');
INSERT INTO `adding_process_route_for_po` VALUES ('560', 'po_60', '59608', 'pod_137', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:28:27');
INSERT INTO `adding_process_route_for_po` VALUES ('561', 'po_60', '59608', 'pod_137', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:28:28');
INSERT INTO `adding_process_route_for_po` VALUES ('562', 'po_60', '59608', 'pod_137', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:28:28');
INSERT INTO `adding_process_route_for_po` VALUES ('563', 'po_60', '59608', 'pod_137', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-13 16:28:28');
INSERT INTO `adding_process_route_for_po` VALUES ('564', 'po_60', '59608', 'pod_138', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:28:31');
INSERT INTO `adding_process_route_for_po` VALUES ('565', 'po_60', '59608', 'pod_138', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:28:31');
INSERT INTO `adding_process_route_for_po` VALUES ('566', 'po_60', '59608', 'pod_138', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:28:31');
INSERT INTO `adding_process_route_for_po` VALUES ('567', 'po_60', '59608', 'pod_138', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-13 16:28:31');
INSERT INTO `adding_process_route_for_po` VALUES ('568', 'po_60', '59608', 'pod_139', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:28:34');
INSERT INTO `adding_process_route_for_po` VALUES ('569', 'po_60', '59608', 'pod_139', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:28:34');
INSERT INTO `adding_process_route_for_po` VALUES ('570', 'po_60', '59608', 'pod_139', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:28:34');
INSERT INTO `adding_process_route_for_po` VALUES ('571', 'po_60', '59608', 'pod_139', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-13 16:28:34');
INSERT INTO `adding_process_route_for_po` VALUES ('572', 'po_59', '533-32-1012, 533-31-1008', 'pod_134', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:37:24');
INSERT INTO `adding_process_route_for_po` VALUES ('573', 'po_59', '533-32-1012, 533-31-1008', 'pod_134', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:37:24');
INSERT INTO `adding_process_route_for_po` VALUES ('574', 'po_59', '533-32-1012, 533-31-1008', 'pod_134', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:37:24');
INSERT INTO `adding_process_route_for_po` VALUES ('575', 'po_59', '533-32-1012, 533-31-1008', 'pod_134', 'proc_4', 'Die Cutting ', '4', 'process', '1', '9047', 'masum', '2021-10-13 16:37:24');
INSERT INTO `adding_process_route_for_po` VALUES ('576', 'po_59', '533-32-1012, 533-31-1008', 'pod_134', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-13 16:37:24');
INSERT INTO `adding_process_route_for_po` VALUES ('577', 'po_59', '533-32-1012, 533-31-1008', 'pod_134', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-13 16:37:24');
INSERT INTO `adding_process_route_for_po` VALUES ('578', 'po_59', '533-32-1012, 533-31-1008', 'pod_135', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:38:11');
INSERT INTO `adding_process_route_for_po` VALUES ('579', 'po_59', '533-32-1012, 533-31-1008', 'pod_135', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:38:11');
INSERT INTO `adding_process_route_for_po` VALUES ('580', 'po_59', '533-32-1012, 533-31-1008', 'pod_135', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:38:11');
INSERT INTO `adding_process_route_for_po` VALUES ('581', 'po_59', '533-32-1012, 533-31-1008', 'pod_135', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-13 16:38:11');
INSERT INTO `adding_process_route_for_po` VALUES ('582', 'po_59', '533-32-1012, 533-31-1008', 'pod_135', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-13 16:38:11');
INSERT INTO `adding_process_route_for_po` VALUES ('583', 'po_35', '41620', 'pod_87', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:46:30');
INSERT INTO `adding_process_route_for_po` VALUES ('584', 'po_35', '41620', 'pod_87', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:46:30');
INSERT INTO `adding_process_route_for_po` VALUES ('585', 'po_35', '41620', 'pod_87', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:46:30');
INSERT INTO `adding_process_route_for_po` VALUES ('586', 'po_35', '41620', 'pod_88', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:46:35');
INSERT INTO `adding_process_route_for_po` VALUES ('587', 'po_35', '41620', 'pod_88', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:46:35');
INSERT INTO `adding_process_route_for_po` VALUES ('588', 'po_35', '41620', 'pod_88', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:46:35');
INSERT INTO `adding_process_route_for_po` VALUES ('589', 'po_35', '41620', 'pod_89', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:46:39');
INSERT INTO `adding_process_route_for_po` VALUES ('590', 'po_35', '41620', 'pod_89', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:46:39');
INSERT INTO `adding_process_route_for_po` VALUES ('591', 'po_35', '41620', 'pod_89', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:46:39');
INSERT INTO `adding_process_route_for_po` VALUES ('592', 'po_61', '41620 - 1 DALA', 'pod_140', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:55:51');
INSERT INTO `adding_process_route_for_po` VALUES ('593', 'po_61', '41620 - 1 DALA', 'pod_140', 'proc_5', 'Manual Slotting ', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:55:51');
INSERT INTO `adding_process_route_for_po` VALUES ('594', 'po_61', '41620 - 1 DALA', 'pod_140', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:55:51');
INSERT INTO `adding_process_route_for_po` VALUES ('595', 'po_61', '41620 - 1 DALA', 'pod_140', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-13 16:55:51');
INSERT INTO `adding_process_route_for_po` VALUES ('596', 'po_61', '41620 - 1 DALA', 'pod_140', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-13 16:55:51');
INSERT INTO `adding_process_route_for_po` VALUES ('597', 'po_61', '41620 - 1 DALA', 'pod_141', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:55:55');
INSERT INTO `adding_process_route_for_po` VALUES ('598', 'po_61', '41620 - 1 DALA', 'pod_141', 'proc_5', 'Manual Slotting ', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:55:55');
INSERT INTO `adding_process_route_for_po` VALUES ('599', 'po_61', '41620 - 1 DALA', 'pod_141', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:55:55');
INSERT INTO `adding_process_route_for_po` VALUES ('600', 'po_61', '41620 - 1 DALA', 'pod_141', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-13 16:55:55');
INSERT INTO `adding_process_route_for_po` VALUES ('601', 'po_61', '41620 - 1 DALA', 'pod_141', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-13 16:55:55');
INSERT INTO `adding_process_route_for_po` VALUES ('602', 'po_61', '41620 - 1 DALA', 'pod_142', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:55:59');
INSERT INTO `adding_process_route_for_po` VALUES ('603', 'po_61', '41620 - 1 DALA', 'pod_142', 'proc_5', 'Manual Slotting ', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:55:59');
INSERT INTO `adding_process_route_for_po` VALUES ('604', 'po_61', '41620 - 1 DALA', 'pod_142', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:55:59');
INSERT INTO `adding_process_route_for_po` VALUES ('605', 'po_61', '41620 - 1 DALA', 'pod_142', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-13 16:55:59');
INSERT INTO `adding_process_route_for_po` VALUES ('606', 'po_61', '41620 - 1 DALA', 'pod_142', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-13 16:55:59');
INSERT INTO `adding_process_route_for_po` VALUES ('607', 'po_61', '41620 - 1 DALA', 'pod_143', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:56:03');
INSERT INTO `adding_process_route_for_po` VALUES ('608', 'po_61', '41620 - 1 DALA', 'pod_143', 'proc_5', 'Manual Slotting ', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:56:03');
INSERT INTO `adding_process_route_for_po` VALUES ('609', 'po_61', '41620 - 1 DALA', 'pod_143', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:56:03');
INSERT INTO `adding_process_route_for_po` VALUES ('610', 'po_61', '41620 - 1 DALA', 'pod_143', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-13 16:56:03');
INSERT INTO `adding_process_route_for_po` VALUES ('611', 'po_61', '41620 - 1 DALA', 'pod_143', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-13 16:56:03');
INSERT INTO `adding_process_route_for_po` VALUES ('612', 'po_61', '41620 - 1 DALA', 'pod_144', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:56:07');
INSERT INTO `adding_process_route_for_po` VALUES ('613', 'po_61', '41620 - 1 DALA', 'pod_144', 'proc_5', 'Manual Slotting ', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:56:07');
INSERT INTO `adding_process_route_for_po` VALUES ('614', 'po_61', '41620 - 1 DALA', 'pod_144', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:56:07');
INSERT INTO `adding_process_route_for_po` VALUES ('615', 'po_61', '41620 - 1 DALA', 'pod_144', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-13 16:56:07');
INSERT INTO `adding_process_route_for_po` VALUES ('616', 'po_61', '41620 - 1 DALA', 'pod_144', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-13 16:56:07');
INSERT INTO `adding_process_route_for_po` VALUES ('617', 'po_61', '41620 - 1 DALA', 'pod_145', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 16:56:11');
INSERT INTO `adding_process_route_for_po` VALUES ('618', 'po_61', '41620 - 1 DALA', 'pod_145', 'proc_5', 'Manual Slotting ', '2', 'process', '1', '9047', 'masum', '2021-10-13 16:56:11');
INSERT INTO `adding_process_route_for_po` VALUES ('619', 'po_61', '41620 - 1 DALA', 'pod_145', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-13 16:56:11');
INSERT INTO `adding_process_route_for_po` VALUES ('620', 'po_61', '41620 - 1 DALA', 'pod_145', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-13 16:56:11');
INSERT INTO `adding_process_route_for_po` VALUES ('621', 'po_61', '41620 - 1 DALA', 'pod_145', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-13 16:56:11');
INSERT INTO `adding_process_route_for_po` VALUES ('622', 'po_62', '54-210913-2', 'pod_146', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-13 17:50:43');
INSERT INTO `adding_process_route_for_po` VALUES ('623', 'po_62', '54-210913-2', 'pod_146', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-13 17:50:43');
INSERT INTO `adding_process_route_for_po` VALUES ('624', 'po_62', '54-210913-2', 'pod_146', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-13 17:50:43');
INSERT INTO `adding_process_route_for_po` VALUES ('625', 'po_62', '54-210913-2', 'pod_146', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-13 17:50:43');
INSERT INTO `adding_process_route_for_po` VALUES ('626', 'po_49', '42892', 'pod_123', 'proc_1', 'Corrugation', '1', 'process', '1', '5467', 'monwar', '2021-10-14 09:36:17');
INSERT INTO `adding_process_route_for_po` VALUES ('627', 'po_49', '42892', 'pod_123', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '5467', 'monwar', '2021-10-14 09:36:17');
INSERT INTO `adding_process_route_for_po` VALUES ('628', 'po_49', '42892', 'pod_123', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '5467', 'monwar', '2021-10-14 09:36:17');
INSERT INTO `adding_process_route_for_po` VALUES ('629', 'po_49', '42892', 'pod_123', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '5467', 'monwar', '2021-10-14 09:36:17');
INSERT INTO `adding_process_route_for_po` VALUES ('630', 'po_49', '42892', 'pod_123', 'proc_7', 'Delivery', '5', 'process', '1', '5467', 'monwar', '2021-10-14 09:36:17');
INSERT INTO `adding_process_route_for_po` VALUES ('631', 'po_49', '42892', 'pod_121', 'proc_1', 'Corrugation', '1', 'process', '1', '5467', 'monwar', '2021-10-14 09:37:10');
INSERT INTO `adding_process_route_for_po` VALUES ('632', 'po_49', '42892', 'pod_121', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '5467', 'monwar', '2021-10-14 09:37:10');
INSERT INTO `adding_process_route_for_po` VALUES ('633', 'po_49', '42892', 'pod_121', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '5467', 'monwar', '2021-10-14 09:37:10');
INSERT INTO `adding_process_route_for_po` VALUES ('634', 'po_49', '42892', 'pod_121', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '5467', 'monwar', '2021-10-14 09:37:10');
INSERT INTO `adding_process_route_for_po` VALUES ('635', 'po_49', '42892', 'pod_121', 'proc_7', 'Delivery', '5', 'process', '1', '5467', 'monwar', '2021-10-14 09:37:10');
INSERT INTO `adding_process_route_for_po` VALUES ('636', 'po_63', '42893', 'pod_147', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 10:08:46');
INSERT INTO `adding_process_route_for_po` VALUES ('637', 'po_63', '42893', 'pod_147', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-14 10:08:46');
INSERT INTO `adding_process_route_for_po` VALUES ('638', 'po_63', '42893', 'pod_147', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-14 10:08:46');
INSERT INTO `adding_process_route_for_po` VALUES ('639', 'po_63', '42893', 'pod_147', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-14 10:08:46');
INSERT INTO `adding_process_route_for_po` VALUES ('640', 'po_63', '42893', 'pod_148', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 10:08:51');
INSERT INTO `adding_process_route_for_po` VALUES ('641', 'po_63', '42893', 'pod_148', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-14 10:08:51');
INSERT INTO `adding_process_route_for_po` VALUES ('642', 'po_63', '42893', 'pod_148', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-14 10:08:51');
INSERT INTO `adding_process_route_for_po` VALUES ('643', 'po_63', '42893', 'pod_148', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-14 10:08:51');
INSERT INTO `adding_process_route_for_po` VALUES ('644', 'po_64', '43345', 'pod_149', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-14 11:46:39');
INSERT INTO `adding_process_route_for_po` VALUES ('645', 'po_64', '43345', 'pod_149', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-14 11:46:39');
INSERT INTO `adding_process_route_for_po` VALUES ('646', 'po_65', '43060', 'pod_150', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 15:21:11');
INSERT INTO `adding_process_route_for_po` VALUES ('647', 'po_65', '43060', 'pod_150', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-14 15:21:11');
INSERT INTO `adding_process_route_for_po` VALUES ('648', 'po_65', '43060', 'pod_150', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-14 15:21:11');
INSERT INTO `adding_process_route_for_po` VALUES ('649', 'po_65', '43060', 'pod_150', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-14 15:21:11');
INSERT INTO `adding_process_route_for_po` VALUES ('650', 'po_66', '59614, 59626, 59620', 'pod_151', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 16:53:45');
INSERT INTO `adding_process_route_for_po` VALUES ('651', 'po_66', '59614, 59626, 59620', 'pod_151', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-14 16:53:45');
INSERT INTO `adding_process_route_for_po` VALUES ('652', 'po_66', '59614, 59626, 59620', 'pod_151', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-14 16:53:45');
INSERT INTO `adding_process_route_for_po` VALUES ('653', 'po_66', '59614, 59626, 59620', 'pod_151', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-14 16:53:45');
INSERT INTO `adding_process_route_for_po` VALUES ('654', 'po_67', '59656, 59543', 'pod_152', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 16:59:24');
INSERT INTO `adding_process_route_for_po` VALUES ('655', 'po_67', '59656, 59543', 'pod_152', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-14 16:59:24');
INSERT INTO `adding_process_route_for_po` VALUES ('656', 'po_67', '59656, 59543', 'pod_152', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-14 16:59:24');
INSERT INTO `adding_process_route_for_po` VALUES ('657', 'po_67', '59656, 59543', 'pod_152', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-14 16:59:24');
INSERT INTO `adding_process_route_for_po` VALUES ('658', 'po_68', '13593', 'pod_153', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 17:12:27');
INSERT INTO `adding_process_route_for_po` VALUES ('659', 'po_68', '13593', 'pod_153', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-14 17:12:27');
INSERT INTO `adding_process_route_for_po` VALUES ('660', 'po_68', '13593', 'pod_153', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-14 17:12:27');
INSERT INTO `adding_process_route_for_po` VALUES ('661', 'po_68', '13593', 'pod_153', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-14 17:12:27');
INSERT INTO `adding_process_route_for_po` VALUES ('662', 'po_69', '59608', 'pod_154', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 17:16:37');
INSERT INTO `adding_process_route_for_po` VALUES ('663', 'po_69', '59608', 'pod_154', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-14 17:16:37');
INSERT INTO `adding_process_route_for_po` VALUES ('664', 'po_69', '59608', 'pod_154', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-14 17:16:37');
INSERT INTO `adding_process_route_for_po` VALUES ('665', 'po_69', '59608', 'pod_154', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-14 17:16:37');
INSERT INTO `adding_process_route_for_po` VALUES ('666', 'po_70', '41866', 'pod_155', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 17:44:57');
INSERT INTO `adding_process_route_for_po` VALUES ('667', 'po_70', '41866', 'pod_155', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-14 17:44:57');
INSERT INTO `adding_process_route_for_po` VALUES ('668', 'po_70', '41866', 'pod_155', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-14 17:44:57');
INSERT INTO `adding_process_route_for_po` VALUES ('669', 'po_70', '41866', 'pod_155', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-14 17:44:57');
INSERT INTO `adding_process_route_for_po` VALUES ('670', 'po_70', '41866', 'pod_155', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-14 17:44:57');
INSERT INTO `adding_process_route_for_po` VALUES ('671', 'po_70', '41866', 'pod_155', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-14 17:44:57');
INSERT INTO `adding_process_route_for_po` VALUES ('672', 'po_70', '41866', 'pod_156', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 17:45:01');
INSERT INTO `adding_process_route_for_po` VALUES ('673', 'po_70', '41866', 'pod_156', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-14 17:45:01');
INSERT INTO `adding_process_route_for_po` VALUES ('674', 'po_70', '41866', 'pod_156', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-14 17:45:01');
INSERT INTO `adding_process_route_for_po` VALUES ('675', 'po_70', '41866', 'pod_156', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-14 17:45:01');
INSERT INTO `adding_process_route_for_po` VALUES ('676', 'po_70', '41866', 'pod_156', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-14 17:45:01');
INSERT INTO `adding_process_route_for_po` VALUES ('677', 'po_70', '41866', 'pod_156', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-14 17:45:01');
INSERT INTO `adding_process_route_for_po` VALUES ('678', 'po_70', '41866', 'pod_157', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 17:45:05');
INSERT INTO `adding_process_route_for_po` VALUES ('679', 'po_70', '41866', 'pod_157', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-14 17:45:05');
INSERT INTO `adding_process_route_for_po` VALUES ('680', 'po_70', '41866', 'pod_157', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-14 17:45:05');
INSERT INTO `adding_process_route_for_po` VALUES ('681', 'po_70', '41866', 'pod_157', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-14 17:45:05');
INSERT INTO `adding_process_route_for_po` VALUES ('682', 'po_70', '41866', 'pod_157', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-14 17:45:05');
INSERT INTO `adding_process_route_for_po` VALUES ('683', 'po_70', '41866', 'pod_157', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-14 17:45:05');
INSERT INTO `adding_process_route_for_po` VALUES ('684', 'po_70', '41866', 'pod_158', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 17:45:09');
INSERT INTO `adding_process_route_for_po` VALUES ('685', 'po_70', '41866', 'pod_158', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-14 17:45:09');
INSERT INTO `adding_process_route_for_po` VALUES ('686', 'po_70', '41866', 'pod_158', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-14 17:45:09');
INSERT INTO `adding_process_route_for_po` VALUES ('687', 'po_70', '41866', 'pod_158', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-14 17:45:09');
INSERT INTO `adding_process_route_for_po` VALUES ('688', 'po_70', '41866', 'pod_158', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-14 17:45:09');
INSERT INTO `adding_process_route_for_po` VALUES ('689', 'po_70', '41866', 'pod_158', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-14 17:45:09');
INSERT INTO `adding_process_route_for_po` VALUES ('690', 'po_70', '41866', 'pod_159', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 17:45:13');
INSERT INTO `adding_process_route_for_po` VALUES ('691', 'po_70', '41866', 'pod_159', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-14 17:45:13');
INSERT INTO `adding_process_route_for_po` VALUES ('692', 'po_70', '41866', 'pod_159', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-14 17:45:13');
INSERT INTO `adding_process_route_for_po` VALUES ('693', 'po_70', '41866', 'pod_159', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-14 17:45:13');
INSERT INTO `adding_process_route_for_po` VALUES ('694', 'po_70', '41866', 'pod_159', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-14 17:45:13');
INSERT INTO `adding_process_route_for_po` VALUES ('695', 'po_70', '41866', 'pod_159', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-14 17:45:13');
INSERT INTO `adding_process_route_for_po` VALUES ('696', 'po_70', '41866', 'pod_160', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 17:45:26');
INSERT INTO `adding_process_route_for_po` VALUES ('697', 'po_70', '41866', 'pod_160', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-14 17:45:26');
INSERT INTO `adding_process_route_for_po` VALUES ('698', 'po_70', '41866', 'pod_160', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-14 17:45:26');
INSERT INTO `adding_process_route_for_po` VALUES ('699', 'po_70', '41866', 'pod_160', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-14 17:45:26');
INSERT INTO `adding_process_route_for_po` VALUES ('700', 'po_70', '41866', 'pod_160', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-14 17:45:26');
INSERT INTO `adding_process_route_for_po` VALUES ('701', 'po_70', '41866', 'pod_160', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-14 17:45:26');
INSERT INTO `adding_process_route_for_po` VALUES ('702', 'po_70', '41866', 'pod_161', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 17:45:30');
INSERT INTO `adding_process_route_for_po` VALUES ('703', 'po_70', '41866', 'pod_161', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-14 17:45:30');
INSERT INTO `adding_process_route_for_po` VALUES ('704', 'po_70', '41866', 'pod_161', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-14 17:45:30');
INSERT INTO `adding_process_route_for_po` VALUES ('705', 'po_70', '41866', 'pod_161', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-14 17:45:30');
INSERT INTO `adding_process_route_for_po` VALUES ('706', 'po_70', '41866', 'pod_161', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-14 17:45:30');
INSERT INTO `adding_process_route_for_po` VALUES ('707', 'po_70', '41866', 'pod_161', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-14 17:45:30');
INSERT INTO `adding_process_route_for_po` VALUES ('708', 'po_70', '41866', 'pod_162', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-14 17:45:33');
INSERT INTO `adding_process_route_for_po` VALUES ('709', 'po_70', '41866', 'pod_162', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-14 17:45:33');
INSERT INTO `adding_process_route_for_po` VALUES ('710', 'po_70', '41866', 'pod_162', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-14 17:45:33');
INSERT INTO `adding_process_route_for_po` VALUES ('711', 'po_70', '41866', 'pod_162', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-14 17:45:33');
INSERT INTO `adding_process_route_for_po` VALUES ('712', 'po_70', '41866', 'pod_162', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-14 17:45:33');
INSERT INTO `adding_process_route_for_po` VALUES ('713', 'po_70', '41866', 'pod_162', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-14 17:45:33');
INSERT INTO `adding_process_route_for_po` VALUES ('714', 'po_71', '43195', 'pod_163', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 09:41:37');
INSERT INTO `adding_process_route_for_po` VALUES ('715', 'po_71', '43195', 'pod_163', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-16 09:41:37');
INSERT INTO `adding_process_route_for_po` VALUES ('716', 'po_71', '43195', 'pod_163', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-16 09:41:37');
INSERT INTO `adding_process_route_for_po` VALUES ('717', 'po_71', '43195', 'pod_163', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-16 09:41:37');
INSERT INTO `adding_process_route_for_po` VALUES ('718', 'po_71', '43195', 'pod_164', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 09:41:49');
INSERT INTO `adding_process_route_for_po` VALUES ('719', 'po_71', '43195', 'pod_164', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-16 09:41:49');
INSERT INTO `adding_process_route_for_po` VALUES ('720', 'po_71', '43195', 'pod_164', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-16 09:41:49');
INSERT INTO `adding_process_route_for_po` VALUES ('721', 'po_71', '43195', 'pod_164', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-16 09:41:49');
INSERT INTO `adding_process_route_for_po` VALUES ('722', 'po_72', '43193', 'pod_165', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 10:03:28');
INSERT INTO `adding_process_route_for_po` VALUES ('723', 'po_72', '43193', 'pod_165', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 10:03:28');
INSERT INTO `adding_process_route_for_po` VALUES ('724', 'po_72', '43193', 'pod_165', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-16 10:03:28');
INSERT INTO `adding_process_route_for_po` VALUES ('725', 'po_72', '43193', 'pod_165', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-16 10:03:28');
INSERT INTO `adding_process_route_for_po` VALUES ('726', 'po_72', '43193', 'pod_165', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-16 10:03:28');
INSERT INTO `adding_process_route_for_po` VALUES ('727', 'po_72', '43193', 'pod_167', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 10:03:53');
INSERT INTO `adding_process_route_for_po` VALUES ('728', 'po_72', '43193', 'pod_167', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 10:03:53');
INSERT INTO `adding_process_route_for_po` VALUES ('729', 'po_72', '43193', 'pod_167', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-16 10:03:53');
INSERT INTO `adding_process_route_for_po` VALUES ('730', 'po_72', '43193', 'pod_167', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-16 10:03:53');
INSERT INTO `adding_process_route_for_po` VALUES ('731', 'po_72', '43193', 'pod_167', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-16 10:03:53');
INSERT INTO `adding_process_route_for_po` VALUES ('732', 'po_72', '43193', 'pod_168', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 10:04:08');
INSERT INTO `adding_process_route_for_po` VALUES ('733', 'po_72', '43193', 'pod_168', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 10:04:08');
INSERT INTO `adding_process_route_for_po` VALUES ('734', 'po_72', '43193', 'pod_168', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-16 10:04:08');
INSERT INTO `adding_process_route_for_po` VALUES ('735', 'po_72', '43193', 'pod_168', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-16 10:04:08');
INSERT INTO `adding_process_route_for_po` VALUES ('736', 'po_72', '43193', 'pod_168', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-16 10:04:08');
INSERT INTO `adding_process_route_for_po` VALUES ('737', 'po_72', '43193', 'pod_169', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 10:04:17');
INSERT INTO `adding_process_route_for_po` VALUES ('738', 'po_72', '43193', 'pod_169', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 10:04:17');
INSERT INTO `adding_process_route_for_po` VALUES ('739', 'po_72', '43193', 'pod_169', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-16 10:04:17');
INSERT INTO `adding_process_route_for_po` VALUES ('740', 'po_72', '43193', 'pod_169', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-16 10:04:17');
INSERT INTO `adding_process_route_for_po` VALUES ('741', 'po_72', '43193', 'pod_169', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-16 10:04:17');
INSERT INTO `adding_process_route_for_po` VALUES ('742', 'po_72', '43193', 'pod_170', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 10:04:26');
INSERT INTO `adding_process_route_for_po` VALUES ('743', 'po_72', '43193', 'pod_170', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 10:04:26');
INSERT INTO `adding_process_route_for_po` VALUES ('744', 'po_72', '43193', 'pod_170', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-16 10:04:26');
INSERT INTO `adding_process_route_for_po` VALUES ('745', 'po_72', '43193', 'pod_170', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-16 10:04:26');
INSERT INTO `adding_process_route_for_po` VALUES ('746', 'po_72', '43193', 'pod_170', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-16 10:04:26');
INSERT INTO `adding_process_route_for_po` VALUES ('747', 'po_72', '43193', 'pod_171', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 10:04:37');
INSERT INTO `adding_process_route_for_po` VALUES ('748', 'po_72', '43193', 'pod_171', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 10:04:37');
INSERT INTO `adding_process_route_for_po` VALUES ('749', 'po_72', '43193', 'pod_171', 'proc_5', 'Manual Slotting ', '3', 'process', '1', '9047', 'masum', '2021-10-16 10:04:37');
INSERT INTO `adding_process_route_for_po` VALUES ('750', 'po_72', '43193', 'pod_171', 'proc_6', 'Folding & Gluing ', '4', 'process', '1', '9047', 'masum', '2021-10-16 10:04:37');
INSERT INTO `adding_process_route_for_po` VALUES ('751', 'po_72', '43193', 'pod_171', 'proc_7', 'Delivery', '5', 'process', '1', '9047', 'masum', '2021-10-16 10:04:37');
INSERT INTO `adding_process_route_for_po` VALUES ('752', 'po_72', '43193', 'pod_166', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 10:04:59');
INSERT INTO `adding_process_route_for_po` VALUES ('753', 'po_72', '43193', 'pod_166', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-16 10:04:59');
INSERT INTO `adding_process_route_for_po` VALUES ('754', 'po_72', '43193', 'pod_166', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-16 10:04:59');
INSERT INTO `adding_process_route_for_po` VALUES ('755', 'po_72', '43193', 'pod_166', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-16 10:04:59');
INSERT INTO `adding_process_route_for_po` VALUES ('756', 'po_72', '43193', 'pod_172', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 10:05:03');
INSERT INTO `adding_process_route_for_po` VALUES ('757', 'po_72', '43193', 'pod_172', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-16 10:05:03');
INSERT INTO `adding_process_route_for_po` VALUES ('758', 'po_72', '43193', 'pod_172', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-16 10:05:03');
INSERT INTO `adding_process_route_for_po` VALUES ('759', 'po_72', '43193', 'pod_172', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-16 10:05:03');
INSERT INTO `adding_process_route_for_po` VALUES ('760', 'po_73', '21/2109', 'pod_173', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 10:20:18');
INSERT INTO `adding_process_route_for_po` VALUES ('761', 'po_73', '21/2109', 'pod_173', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-16 10:20:18');
INSERT INTO `adding_process_route_for_po` VALUES ('762', 'po_73', '21/2109', 'pod_173', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-16 10:20:18');
INSERT INTO `adding_process_route_for_po` VALUES ('763', 'po_73', '21/2109', 'pod_173', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-16 10:20:18');
INSERT INTO `adding_process_route_for_po` VALUES ('764', 'po_74', '21/2129', 'pod_174', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 12:59:41');
INSERT INTO `adding_process_route_for_po` VALUES ('765', 'po_74', '21/2129', 'pod_174', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-16 12:59:41');
INSERT INTO `adding_process_route_for_po` VALUES ('766', 'po_74', '21/2129', 'pod_174', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-16 12:59:41');
INSERT INTO `adding_process_route_for_po` VALUES ('767', 'po_74', '21/2129', 'pod_174', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-16 12:59:41');
INSERT INTO `adding_process_route_for_po` VALUES ('768', 'po_75', '21/5587', 'pod_175', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 13:08:27');
INSERT INTO `adding_process_route_for_po` VALUES ('769', 'po_75', '21/5587', 'pod_175', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-16 13:08:27');
INSERT INTO `adding_process_route_for_po` VALUES ('770', 'po_75', '21/5587', 'pod_175', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-16 13:08:27');
INSERT INTO `adding_process_route_for_po` VALUES ('771', 'po_75', '21/5587', 'pod_175', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-16 13:08:27');
INSERT INTO `adding_process_route_for_po` VALUES ('772', 'po_76', '312H034A', 'pod_176', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 14:33:46');
INSERT INTO `adding_process_route_for_po` VALUES ('773', 'po_76', '312H034A', 'pod_176', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-16 14:33:46');
INSERT INTO `adding_process_route_for_po` VALUES ('774', 'po_76', '312H034A', 'pod_176', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-16 14:33:46');
INSERT INTO `adding_process_route_for_po` VALUES ('775', 'po_76', '312H034A', 'pod_176', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-16 14:33:46');
INSERT INTO `adding_process_route_for_po` VALUES ('776', 'po_76', '312H034A', 'pod_177', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 14:33:50');
INSERT INTO `adding_process_route_for_po` VALUES ('777', 'po_76', '312H034A', 'pod_177', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-16 14:33:50');
INSERT INTO `adding_process_route_for_po` VALUES ('778', 'po_76', '312H034A', 'pod_177', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-16 14:33:50');
INSERT INTO `adding_process_route_for_po` VALUES ('779', 'po_76', '312H034A', 'pod_177', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-16 14:33:50');
INSERT INTO `adding_process_route_for_po` VALUES ('780', 'po_77', '312H034A.', 'pod_178', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 14:38:42');
INSERT INTO `adding_process_route_for_po` VALUES ('781', 'po_77', '312H034A.', 'pod_178', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 14:38:42');
INSERT INTO `adding_process_route_for_po` VALUES ('782', 'po_77', '312H034A.', 'pod_178', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-16 14:38:42');
INSERT INTO `adding_process_route_for_po` VALUES ('783', 'po_77', '312H034A.', 'pod_179', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 14:38:46');
INSERT INTO `adding_process_route_for_po` VALUES ('784', 'po_77', '312H034A.', 'pod_179', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 14:38:46');
INSERT INTO `adding_process_route_for_po` VALUES ('785', 'po_77', '312H034A.', 'pod_179', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-16 14:38:46');
INSERT INTO `adding_process_route_for_po` VALUES ('786', 'po_78', '21/7031', 'pod_180', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 16:43:14');
INSERT INTO `adding_process_route_for_po` VALUES ('787', 'po_78', '21/7031', 'pod_180', 'proc_2', 'Printing & Slotting', '2', 'process', '1', '9047', 'masum', '2021-10-16 16:43:14');
INSERT INTO `adding_process_route_for_po` VALUES ('788', 'po_78', '21/7031', 'pod_180', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-16 16:43:14');
INSERT INTO `adding_process_route_for_po` VALUES ('789', 'po_78', '21/7031', 'pod_180', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-16 16:43:14');
INSERT INTO `adding_process_route_for_po` VALUES ('790', 'po_79', '59662', 'pod_181', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 16:51:17');
INSERT INTO `adding_process_route_for_po` VALUES ('791', 'po_79', '59662', 'pod_181', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 16:51:17');
INSERT INTO `adding_process_route_for_po` VALUES ('792', 'po_79', '59662', 'pod_181', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 16:51:17');
INSERT INTO `adding_process_route_for_po` VALUES ('793', 'po_79', '59662', 'pod_181', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 16:51:17');
INSERT INTO `adding_process_route_for_po` VALUES ('794', 'po_79', '59662', 'pod_181', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 16:51:17');
INSERT INTO `adding_process_route_for_po` VALUES ('795', 'po_79', '59662', 'pod_181', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 16:51:17');
INSERT INTO `adding_process_route_for_po` VALUES ('796', 'po_79', '59662', 'pod_182', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 16:51:21');
INSERT INTO `adding_process_route_for_po` VALUES ('797', 'po_79', '59662', 'pod_182', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 16:51:21');
INSERT INTO `adding_process_route_for_po` VALUES ('798', 'po_79', '59662', 'pod_182', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 16:51:21');
INSERT INTO `adding_process_route_for_po` VALUES ('799', 'po_79', '59662', 'pod_182', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 16:51:21');
INSERT INTO `adding_process_route_for_po` VALUES ('800', 'po_79', '59662', 'pod_182', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 16:51:21');
INSERT INTO `adding_process_route_for_po` VALUES ('801', 'po_79', '59662', 'pod_182', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 16:51:21');
INSERT INTO `adding_process_route_for_po` VALUES ('802', 'po_79', '59662', 'pod_183', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 16:51:24');
INSERT INTO `adding_process_route_for_po` VALUES ('803', 'po_79', '59662', 'pod_183', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 16:51:24');
INSERT INTO `adding_process_route_for_po` VALUES ('804', 'po_79', '59662', 'pod_183', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 16:51:24');
INSERT INTO `adding_process_route_for_po` VALUES ('805', 'po_79', '59662', 'pod_183', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 16:51:24');
INSERT INTO `adding_process_route_for_po` VALUES ('806', 'po_79', '59662', 'pod_183', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 16:51:24');
INSERT INTO `adding_process_route_for_po` VALUES ('807', 'po_79', '59662', 'pod_183', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 16:51:24');
INSERT INTO `adding_process_route_for_po` VALUES ('808', 'po_80', '59642', 'pod_184', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:00:25');
INSERT INTO `adding_process_route_for_po` VALUES ('809', 'po_80', '59642', 'pod_184', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:00:25');
INSERT INTO `adding_process_route_for_po` VALUES ('810', 'po_80', '59642', 'pod_184', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:00:25');
INSERT INTO `adding_process_route_for_po` VALUES ('811', 'po_80', '59642', 'pod_184', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 17:00:25');
INSERT INTO `adding_process_route_for_po` VALUES ('812', 'po_80', '59642', 'pod_184', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 17:00:25');
INSERT INTO `adding_process_route_for_po` VALUES ('813', 'po_80', '59642', 'pod_184', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 17:00:25');
INSERT INTO `adding_process_route_for_po` VALUES ('814', 'po_80', '59642', 'pod_185', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:00:29');
INSERT INTO `adding_process_route_for_po` VALUES ('815', 'po_80', '59642', 'pod_185', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:00:29');
INSERT INTO `adding_process_route_for_po` VALUES ('816', 'po_80', '59642', 'pod_185', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:00:29');
INSERT INTO `adding_process_route_for_po` VALUES ('817', 'po_80', '59642', 'pod_185', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 17:00:29');
INSERT INTO `adding_process_route_for_po` VALUES ('818', 'po_80', '59642', 'pod_185', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 17:00:29');
INSERT INTO `adding_process_route_for_po` VALUES ('819', 'po_80', '59642', 'pod_185', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 17:00:29');
INSERT INTO `adding_process_route_for_po` VALUES ('820', 'po_80', '59642', 'pod_186', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:00:33');
INSERT INTO `adding_process_route_for_po` VALUES ('821', 'po_80', '59642', 'pod_186', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:00:33');
INSERT INTO `adding_process_route_for_po` VALUES ('822', 'po_80', '59642', 'pod_186', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:00:33');
INSERT INTO `adding_process_route_for_po` VALUES ('823', 'po_80', '59642', 'pod_186', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 17:00:33');
INSERT INTO `adding_process_route_for_po` VALUES ('824', 'po_80', '59642', 'pod_186', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 17:00:33');
INSERT INTO `adding_process_route_for_po` VALUES ('825', 'po_80', '59642', 'pod_186', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 17:00:33');
INSERT INTO `adding_process_route_for_po` VALUES ('826', 'po_80', '59642', 'pod_187', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:00:38');
INSERT INTO `adding_process_route_for_po` VALUES ('827', 'po_80', '59642', 'pod_187', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:00:38');
INSERT INTO `adding_process_route_for_po` VALUES ('828', 'po_80', '59642', 'pod_187', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:00:38');
INSERT INTO `adding_process_route_for_po` VALUES ('829', 'po_80', '59642', 'pod_187', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 17:00:38');
INSERT INTO `adding_process_route_for_po` VALUES ('830', 'po_80', '59642', 'pod_187', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 17:00:38');
INSERT INTO `adding_process_route_for_po` VALUES ('831', 'po_80', '59642', 'pod_187', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 17:00:38');
INSERT INTO `adding_process_route_for_po` VALUES ('832', 'po_80', '59642', 'pod_188', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:00:42');
INSERT INTO `adding_process_route_for_po` VALUES ('833', 'po_80', '59642', 'pod_188', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:00:42');
INSERT INTO `adding_process_route_for_po` VALUES ('834', 'po_80', '59642', 'pod_188', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:00:42');
INSERT INTO `adding_process_route_for_po` VALUES ('835', 'po_80', '59642', 'pod_188', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 17:00:42');
INSERT INTO `adding_process_route_for_po` VALUES ('836', 'po_80', '59642', 'pod_188', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 17:00:42');
INSERT INTO `adding_process_route_for_po` VALUES ('837', 'po_80', '59642', 'pod_188', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 17:00:42');
INSERT INTO `adding_process_route_for_po` VALUES ('838', 'po_80', '59642', 'pod_189', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:00:47');
INSERT INTO `adding_process_route_for_po` VALUES ('839', 'po_80', '59642', 'pod_189', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:00:47');
INSERT INTO `adding_process_route_for_po` VALUES ('840', 'po_80', '59642', 'pod_189', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:00:47');
INSERT INTO `adding_process_route_for_po` VALUES ('841', 'po_80', '59642', 'pod_189', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 17:00:47');
INSERT INTO `adding_process_route_for_po` VALUES ('842', 'po_80', '59642', 'pod_189', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 17:00:47');
INSERT INTO `adding_process_route_for_po` VALUES ('843', 'po_80', '59642', 'pod_189', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 17:00:47');
INSERT INTO `adding_process_route_for_po` VALUES ('844', 'po_80', '59642', 'pod_190', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:00:51');
INSERT INTO `adding_process_route_for_po` VALUES ('845', 'po_80', '59642', 'pod_190', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:00:51');
INSERT INTO `adding_process_route_for_po` VALUES ('846', 'po_80', '59642', 'pod_190', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:00:51');
INSERT INTO `adding_process_route_for_po` VALUES ('847', 'po_80', '59642', 'pod_190', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 17:00:51');
INSERT INTO `adding_process_route_for_po` VALUES ('848', 'po_80', '59642', 'pod_190', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 17:00:51');
INSERT INTO `adding_process_route_for_po` VALUES ('849', 'po_80', '59642', 'pod_190', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 17:00:51');
INSERT INTO `adding_process_route_for_po` VALUES ('850', 'po_80', '59642', 'pod_191', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:00:55');
INSERT INTO `adding_process_route_for_po` VALUES ('851', 'po_80', '59642', 'pod_191', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:00:55');
INSERT INTO `adding_process_route_for_po` VALUES ('852', 'po_80', '59642', 'pod_191', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:00:55');
INSERT INTO `adding_process_route_for_po` VALUES ('853', 'po_80', '59642', 'pod_191', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 17:00:55');
INSERT INTO `adding_process_route_for_po` VALUES ('854', 'po_80', '59642', 'pod_191', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 17:00:55');
INSERT INTO `adding_process_route_for_po` VALUES ('855', 'po_80', '59642', 'pod_191', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 17:00:55');
INSERT INTO `adding_process_route_for_po` VALUES ('856', 'po_80', '59642', 'pod_192', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:00:59');
INSERT INTO `adding_process_route_for_po` VALUES ('857', 'po_80', '59642', 'pod_192', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:00:59');
INSERT INTO `adding_process_route_for_po` VALUES ('858', 'po_80', '59642', 'pod_192', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:00:59');
INSERT INTO `adding_process_route_for_po` VALUES ('859', 'po_80', '59642', 'pod_192', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 17:00:59');
INSERT INTO `adding_process_route_for_po` VALUES ('860', 'po_80', '59642', 'pod_192', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 17:00:59');
INSERT INTO `adding_process_route_for_po` VALUES ('861', 'po_80', '59642', 'pod_192', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 17:00:59');
INSERT INTO `adding_process_route_for_po` VALUES ('862', 'po_80', '59642', 'pod_193', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:02:42');
INSERT INTO `adding_process_route_for_po` VALUES ('863', 'po_80', '59642', 'pod_193', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:02:42');
INSERT INTO `adding_process_route_for_po` VALUES ('864', 'po_80', '59642', 'pod_193', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:02:42');
INSERT INTO `adding_process_route_for_po` VALUES ('865', 'po_80', '59642', 'pod_193', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 17:02:42');
INSERT INTO `adding_process_route_for_po` VALUES ('866', 'po_80', '59642', 'pod_193', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 17:02:42');
INSERT INTO `adding_process_route_for_po` VALUES ('867', 'po_80', '59642', 'pod_193', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 17:02:42');
INSERT INTO `adding_process_route_for_po` VALUES ('868', 'po_80', '59642', 'pod_194', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:02:48');
INSERT INTO `adding_process_route_for_po` VALUES ('869', 'po_80', '59642', 'pod_194', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:02:48');
INSERT INTO `adding_process_route_for_po` VALUES ('870', 'po_80', '59642', 'pod_194', 'proc_2', 'Printing & Slotting', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:02:48');
INSERT INTO `adding_process_route_for_po` VALUES ('871', 'po_80', '59642', 'pod_194', 'proc_5', 'Manual Slotting ', '4', 'process', '1', '9047', 'masum', '2021-10-16 17:02:48');
INSERT INTO `adding_process_route_for_po` VALUES ('872', 'po_80', '59642', 'pod_194', 'proc_6', 'Folding & Gluing ', '5', 'process', '1', '9047', 'masum', '2021-10-16 17:02:48');
INSERT INTO `adding_process_route_for_po` VALUES ('873', 'po_80', '59642', 'pod_194', 'proc_7', 'Delivery', '6', 'process', '1', '9047', 'masum', '2021-10-16 17:02:48');
INSERT INTO `adding_process_route_for_po` VALUES ('874', 'po_81', '41624', 'pod_195', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:22:48');
INSERT INTO `adding_process_route_for_po` VALUES ('875', 'po_81', '41624', 'pod_195', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:22:48');
INSERT INTO `adding_process_route_for_po` VALUES ('876', 'po_81', '41624', 'pod_195', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:22:48');
INSERT INTO `adding_process_route_for_po` VALUES ('877', 'po_81', '41624', 'pod_196', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:22:52');
INSERT INTO `adding_process_route_for_po` VALUES ('878', 'po_81', '41624', 'pod_196', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:22:52');
INSERT INTO `adding_process_route_for_po` VALUES ('879', 'po_81', '41624', 'pod_196', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:22:52');
INSERT INTO `adding_process_route_for_po` VALUES ('880', 'po_82', '43336, 43407', 'pod_197', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-16 17:34:00');
INSERT INTO `adding_process_route_for_po` VALUES ('881', 'po_82', '43336, 43407', 'pod_197', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-16 17:34:00');
INSERT INTO `adding_process_route_for_po` VALUES ('882', 'po_82', '43336, 43407', 'pod_197', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-16 17:34:00');
INSERT INTO `adding_process_route_for_po` VALUES ('883', 'po_82', '43336, 43407', 'pod_197', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-16 17:34:00');
INSERT INTO `adding_process_route_for_po` VALUES ('884', 'po_85', '43195.', 'pod_198', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-17 09:37:07');
INSERT INTO `adding_process_route_for_po` VALUES ('885', 'po_85', '43195.', 'pod_198', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-17 09:37:07');
INSERT INTO `adding_process_route_for_po` VALUES ('886', 'po_85', '43195.', 'pod_198', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-17 09:37:07');
INSERT INTO `adding_process_route_for_po` VALUES ('887', 'po_86', '43193,', 'pod_199', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-17 09:44:14');
INSERT INTO `adding_process_route_for_po` VALUES ('888', 'po_86', '43193,', 'pod_199', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-17 09:44:14');
INSERT INTO `adding_process_route_for_po` VALUES ('889', 'po_86', '43193,', 'pod_199', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-17 09:44:14');
INSERT INTO `adding_process_route_for_po` VALUES ('890', 'po_86', '43193,', 'pod_199', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-17 09:44:14');
INSERT INTO `adding_process_route_for_po` VALUES ('891', 'po_86', '43193,', 'pod_200', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-17 09:44:17');
INSERT INTO `adding_process_route_for_po` VALUES ('892', 'po_86', '43193,', 'pod_200', 'proc_4', 'Die Cutting ', '2', 'process', '1', '9047', 'masum', '2021-10-17 09:44:17');
INSERT INTO `adding_process_route_for_po` VALUES ('893', 'po_86', '43193,', 'pod_200', 'proc_6', 'Folding & Gluing ', '3', 'process', '1', '9047', 'masum', '2021-10-17 09:44:17');
INSERT INTO `adding_process_route_for_po` VALUES ('894', 'po_86', '43193,', 'pod_200', 'proc_7', 'Delivery', '4', 'process', '1', '9047', 'masum', '2021-10-17 09:44:17');
INSERT INTO `adding_process_route_for_po` VALUES ('895', 'po_87', '13354, 13355, 13529', 'pod_201', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-17 10:12:35');
INSERT INTO `adding_process_route_for_po` VALUES ('896', 'po_87', '13354, 13355, 13529', 'pod_201', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-17 10:12:35');
INSERT INTO `adding_process_route_for_po` VALUES ('897', 'po_87', '13354, 13355, 13529', 'pod_201', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-17 10:12:35');
INSERT INTO `adding_process_route_for_po` VALUES ('898', 'po_87', '13354, 13355, 13529', 'pod_202', 'proc_1', 'Corrugation', '1', 'process', '1', '9047', 'masum', '2021-10-17 10:12:39');
INSERT INTO `adding_process_route_for_po` VALUES ('899', 'po_87', '13354, 13355, 13529', 'pod_202', 'proc_3', 'Cutting Creasing ', '2', 'process', '1', '9047', 'masum', '2021-10-17 10:12:39');
INSERT INTO `adding_process_route_for_po` VALUES ('900', 'po_87', '13354, 13355, 13529', 'pod_202', 'proc_7', 'Delivery', '3', 'process', '1', '9047', 'masum', '2021-10-17 10:12:39');

-- ----------------------------
-- Table structure for `buyer`
-- ----------------------------
DROP TABLE IF EXISTS `buyer`;
CREATE TABLE `buyer` (
  `row_id` int(10) DEFAULT NULL,
  `buyer_id` varchar(10) NOT NULL,
  `buyer_name` varchar(100) DEFAULT NULL,
  `buyer_address` varchar(250) DEFAULT NULL,
  `country_of_origin` varchar(100) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`buyer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buyer
-- ----------------------------
INSERT INTO `buyer` VALUES ('1', 'cust_1', 'Saget', 'NTTML', 'Bangladesh', 'admin', 'admin', '2021-09-19 11:17:32');
INSERT INTO `buyer` VALUES ('10', 'cust_10', 'Walmart', 'NTTML', 'Bangladesh', 'admin', 'admin', '2021-10-05 17:04:05');
INSERT INTO `buyer` VALUES ('11', 'cust_11', 'Max Fashion', 'ZZFL', 'Bangladesh', '9047', 'masum', '2021-10-06 09:40:40');
INSERT INTO `buyer` VALUES ('12', 'cust_12', 'Tommy Hilfiger', 'Ever Fashion', 'Bangladesh', '9047', 'masum', '2021-10-06 10:10:17');
INSERT INTO `buyer` VALUES ('13', 'cust_13', 'Williams Sonoma', 'ZZFL', 'Bangladesh', '9047', 'masum', '2021-10-06 10:21:57');
INSERT INTO `buyer` VALUES ('14', 'cust_14', 'BBK', 'ZZFL', 'Bangladesh', '9047', 'masum', '2021-10-06 11:33:47');
INSERT INTO `buyer` VALUES ('15', 'cust_15', 'H&M', 'ZZFL', 'Bangladesh', '9047', 'masum', '2021-10-06 12:57:53');
INSERT INTO `buyer` VALUES ('16', 'cust_16', 'Bonprix', 'NTTML', 'Bangladesh', '9047', 'masum', '2021-10-07 09:14:39');
INSERT INTO `buyer` VALUES ('17', 'cust_17', 'George Courey', 'NTTML', 'Bangladesh', '9047', 'masum', '2021-10-07 10:29:20');
INSERT INTO `buyer` VALUES ('18', 'cust_18', 'Kadoya', 'NTTML', 'Bangladesh', '9047', 'masum', '2021-10-07 10:41:48');
INSERT INTO `buyer` VALUES ('19', 'cust_19', 'Carrefour', 'ZZFL', 'Bangladesh', '9047', 'masum', '2021-10-07 16:00:41');
INSERT INTO `buyer` VALUES ('2', 'cust_2', 'Club Jummana', 'NTTML', 'Bangladesh', 'admin', 'admin', '2021-09-19 16:37:24');
INSERT INTO `buyer` VALUES ('20', 'cust_20', 'Oshkosh', 'NFFL', 'Bangladesh', '9047', 'masum', '2021-10-07 17:10:30');
INSERT INTO `buyer` VALUES ('21', 'cust_21', 'Lahalle', 'Joy Auto Garments ', 'Bangladesh', '9047', 'masum', '2021-10-09 10:13:55');
INSERT INTO `buyer` VALUES ('22', 'cust_22', 'Argos', 'ZZFL', 'Bangladesh', '9047', 'masum', '2021-10-09 11:14:41');
INSERT INTO `buyer` VALUES ('23', 'cust_23', 'Horizonte', 'NTTML', 'Bangladesh', '9047', 'masum', '2021-10-09 16:56:45');
INSERT INTO `buyer` VALUES ('24', 'cust_24', 'Elis', 'NTTML', 'Bangladesh', '9047', 'masum', '2021-10-09 17:32:29');
INSERT INTO `buyer` VALUES ('25', 'cust_25', 'SAZA', 'ZZFL', 'Bangladesh', '9047', 'masum', '2021-10-10 11:30:02');
INSERT INTO `buyer` VALUES ('26', 'cust_26', 'ZARA', 'ZZFL', 'Bangladesh', '9047', 'masum', '2021-10-10 11:30:55');
INSERT INTO `buyer` VALUES ('27', 'cust_27', 'Heritage', 'NTTML', 'Bangladesh', '9047', 'masum', '2021-10-10 14:42:34');
INSERT INTO `buyer` VALUES ('28', 'cust_28', 'Nice denim mills Ltd.', 'SAAD Group', 'Bangladesh', '9047', 'masum', '2021-10-10 17:37:09');
INSERT INTO `buyer` VALUES ('29', 'cust_29', 'JYSK', 'NTTML', 'Bangladesh', '9047', 'masum', '2021-10-11 11:42:50');
INSERT INTO `buyer` VALUES ('3', 'cust_3', 'IKEA', 'NTTML', 'Bangladesh', 'admin', 'admin', '2021-09-20 15:39:26');
INSERT INTO `buyer` VALUES ('30', 'cust_30', 'Nice spun', 'Noman Group', 'Bangladesh', '9047', 'masum', '2021-10-11 12:48:34');
INSERT INTO `buyer` VALUES ('31', 'cust_31', 'Witt Group', 'NTTML', 'Bangladesh', '9047', 'masum', '2021-10-12 12:10:41');
INSERT INTO `buyer` VALUES ('32', 'cust_32', 'NVI Honeys', 'SS Sweater', 'Bangladesh', '9047', 'masum', '2021-10-13 09:43:28');
INSERT INTO `buyer` VALUES ('33', 'cust_33', 'Nice Synthetic Yarn mills Ltd.', 'Noman Group', 'Bangladesh', '9047', 'masum', '2021-10-13 17:43:00');
INSERT INTO `buyer` VALUES ('34', 'cust_34', 'ZASA', 'ZZFL', 'Bangladesh', '9047', 'masum', '2021-10-14 11:43:25');
INSERT INTO `buyer` VALUES ('35', 'cust_35', 'My Pillow', 'ZZFL', 'Bangladesh', '9047', 'masum', '2021-10-14 15:18:18');
INSERT INTO `buyer` VALUES ('36', 'cust_36', 'Rusta', 'Mom Tex', 'Bangladesh', '9047', 'masum', '2021-10-14 17:09:46');
INSERT INTO `buyer` VALUES ('37', 'cust_37', 'Sainsburrys', 'ZZFL.', 'Bangladesh', '9047', 'masum', '2021-10-14 17:27:47');
INSERT INTO `buyer` VALUES ('38', 'cust_38', 'Costco Taiwan', 'Ever Fashion', 'Bangladesh', '9047', 'masum', '2021-10-16 13:05:05');
INSERT INTO `buyer` VALUES ('39', 'cust_39', 'GU', 'Snowtex Outwear Ltd.', 'Bangladesh', '9047', 'masum', '2021-10-16 14:18:37');
INSERT INTO `buyer` VALUES ('4', 'cust_4', 'Standard Textile', 'NTTML', 'Bangladesh', 'admin', 'admin', '2021-09-23 12:10:32');
INSERT INTO `buyer` VALUES ('40', 'cust_40', 'Laredoute', 'Momtex', 'Bangladesh', '9047', 'masum', '2021-10-17 09:59:32');
INSERT INTO `buyer` VALUES ('41', 'cust_41', 'Nitori', 'ZZFL', 'Bangladesh', '9047', 'masum', '2021-10-17 10:43:13');
INSERT INTO `buyer` VALUES ('5', 'cust_5', 'Zeeman', 'NTTML', 'Bangladesh', 'admin', 'admin', '2021-09-23 12:11:32');
INSERT INTO `buyer` VALUES ('6', 'cust_6', 'Manley', 'NTTML', 'Bangladesh', 'admin', 'admin', '2021-09-23 12:12:09');
INSERT INTO `buyer` VALUES ('7', 'cust_7', 'Elshatex', 'NTTML', 'Bangladesh', 'admin', 'admin', '2021-09-23 12:12:59');
INSERT INTO `buyer` VALUES ('8', 'cust_8', 'Madabal', 'NTTML', 'Bangladesh', 'admin', 'admin', '2021-09-23 12:13:35');
INSERT INTO `buyer` VALUES ('9', 'cust_9', 'AM International', 'NTTML', 'Bangladesh', 'admin', 'admin', '2021-09-23 12:14:37');

-- ----------------------------
-- Table structure for `country`
-- ----------------------------
DROP TABLE IF EXISTS `country`;
CREATE TABLE `country` (
  `country_id` int(11) DEFAULT NULL,
  `iso` char(2) DEFAULT NULL,
  `name_of_country` varchar(80) DEFAULT NULL,
  `short_code` char(3) DEFAULT NULL,
  `number_code` smallint(6) DEFAULT NULL,
  `phone_code` int(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO `country` VALUES ('1', 'AF', 'Afghanistan', 'AFG', '4', '93');
INSERT INTO `country` VALUES ('2', 'AL', 'Albania', 'ALB', '8', '355');
INSERT INTO `country` VALUES ('3', 'DZ', 'Algeria', 'DZA', '12', '213');
INSERT INTO `country` VALUES ('4', 'AS', 'American Samoa', 'ASM', '16', '1684');
INSERT INTO `country` VALUES ('5', 'AD', 'Andorra', 'AND', '20', '376');
INSERT INTO `country` VALUES ('6', 'AO', 'Angola', 'AGO', '24', '244');
INSERT INTO `country` VALUES ('7', 'AI', 'Anguilla', 'AIA', '660', '1264');
INSERT INTO `country` VALUES ('8', 'AQ', 'Antarctica', null, null, '0');
INSERT INTO `country` VALUES ('9', 'AG', 'Antigua and Barbuda', 'ATG', '28', '1268');
INSERT INTO `country` VALUES ('10', 'AR', 'Argentina', 'ARG', '32', '54');
INSERT INTO `country` VALUES ('11', 'AM', 'Armenia', 'ARM', '51', '374');
INSERT INTO `country` VALUES ('12', 'AW', 'Aruba', 'ABW', '533', '297');
INSERT INTO `country` VALUES ('13', 'AU', 'Australia', 'AUS', '36', '61');
INSERT INTO `country` VALUES ('14', 'AT', 'Austria', 'AUT', '40', '43');
INSERT INTO `country` VALUES ('15', 'AZ', 'Azerbaijan', 'AZE', '31', '994');
INSERT INTO `country` VALUES ('16', 'BS', 'Bahamas', 'BHS', '44', '1242');
INSERT INTO `country` VALUES ('17', 'BH', 'Bahrain', 'BHR', '48', '973');
INSERT INTO `country` VALUES ('18', 'BD', 'Bangladesh', 'BGD', '50', '880');
INSERT INTO `country` VALUES ('19', 'BB', 'Barbados', 'BRB', '52', '1246');
INSERT INTO `country` VALUES ('20', 'BY', 'Belarus', 'BLR', '112', '375');
INSERT INTO `country` VALUES ('21', 'BE', 'Belgium', 'BEL', '56', '32');
INSERT INTO `country` VALUES ('22', 'BZ', 'Belize', 'BLZ', '84', '501');
INSERT INTO `country` VALUES ('23', 'BJ', 'Benin', 'BEN', '204', '229');
INSERT INTO `country` VALUES ('24', 'BM', 'Bermuda', 'BMU', '60', '1441');
INSERT INTO `country` VALUES ('25', 'BT', 'Bhutan', 'BTN', '64', '975');
INSERT INTO `country` VALUES ('26', 'BO', 'Bolivia', 'BOL', '68', '591');
INSERT INTO `country` VALUES ('27', 'BA', 'Bosnia and Herzegovina', 'BIH', '70', '387');
INSERT INTO `country` VALUES ('28', 'BW', 'Botswana', 'BWA', '72', '267');
INSERT INTO `country` VALUES ('29', 'BV', 'Bouvet Island', null, null, '0');
INSERT INTO `country` VALUES ('30', 'BR', 'Brazil', 'BRA', '76', '55');
INSERT INTO `country` VALUES ('31', 'IO', 'British Indian Ocean Territory', null, null, '246');
INSERT INTO `country` VALUES ('32', 'BN', 'Brunei Darussalam', 'BRN', '96', '673');
INSERT INTO `country` VALUES ('33', 'BG', 'Bulgaria', 'BGR', '100', '359');
INSERT INTO `country` VALUES ('34', 'BF', 'Burkina Faso', 'BFA', '854', '226');
INSERT INTO `country` VALUES ('35', 'BI', 'Burundi', 'BDI', '108', '257');
INSERT INTO `country` VALUES ('36', 'KH', 'Cambodia', 'KHM', '116', '855');
INSERT INTO `country` VALUES ('37', 'CM', 'Cameroon', 'CMR', '120', '237');
INSERT INTO `country` VALUES ('38', 'CA', 'Canada', 'CAN', '124', '1');
INSERT INTO `country` VALUES ('39', 'CV', 'Cape Verde', 'CPV', '132', '238');
INSERT INTO `country` VALUES ('40', 'KY', 'Cayman Islands', 'CYM', '136', '1345');
INSERT INTO `country` VALUES ('41', 'CF', 'Central African Republic', 'CAF', '140', '236');
INSERT INTO `country` VALUES ('42', 'TD', 'Chad', 'TCD', '148', '235');
INSERT INTO `country` VALUES ('43', 'CL', 'Chile', 'CHL', '152', '56');
INSERT INTO `country` VALUES ('44', 'CN', 'China', 'CHN', '156', '86');
INSERT INTO `country` VALUES ('45', 'CX', 'Christmas Island', null, null, '61');
INSERT INTO `country` VALUES ('46', 'CC', 'Cocos (Keeling) Islands', null, null, '672');
INSERT INTO `country` VALUES ('47', 'CO', 'Colombia', 'COL', '170', '57');
INSERT INTO `country` VALUES ('48', 'KM', 'Comoros', 'COM', '174', '269');
INSERT INTO `country` VALUES ('49', 'CG', 'Congo', 'COG', '178', '242');
INSERT INTO `country` VALUES ('50', 'CD', 'Congo, the Democratic Republic of the', 'COD', '180', '242');
INSERT INTO `country` VALUES ('51', 'CK', 'Cook Islands', 'COK', '184', '682');
INSERT INTO `country` VALUES ('52', 'CR', 'Costa Rica', 'CRI', '188', '506');
INSERT INTO `country` VALUES ('53', 'CI', 'Cote D\'Ivoire', 'CIV', '384', '225');
INSERT INTO `country` VALUES ('54', 'HR', 'Croatia', 'HRV', '191', '385');
INSERT INTO `country` VALUES ('55', 'CU', 'Cuba', 'CUB', '192', '53');
INSERT INTO `country` VALUES ('56', 'CY', 'Cyprus', 'CYP', '196', '357');
INSERT INTO `country` VALUES ('57', 'CZ', 'Czech Republic', 'CZE', '203', '420');
INSERT INTO `country` VALUES ('58', 'DK', 'Denmark', 'DNK', '208', '45');
INSERT INTO `country` VALUES ('59', 'DJ', 'Djibouti', 'DJI', '262', '253');
INSERT INTO `country` VALUES ('60', 'DM', 'Dominica', 'DMA', '212', '1767');
INSERT INTO `country` VALUES ('61', 'DO', 'Dominican Republic', 'DOM', '214', '1809');
INSERT INTO `country` VALUES ('62', 'EC', 'Ecuador', 'ECU', '218', '593');
INSERT INTO `country` VALUES ('63', 'EG', 'Egypt', 'EGY', '818', '20');
INSERT INTO `country` VALUES ('64', 'SV', 'El Salvador', 'SLV', '222', '503');
INSERT INTO `country` VALUES ('65', 'GQ', 'Equatorial Guinea', 'GNQ', '226', '240');
INSERT INTO `country` VALUES ('66', 'ER', 'Eritrea', 'ERI', '232', '291');
INSERT INTO `country` VALUES ('67', 'EE', 'Estonia', 'EST', '233', '372');
INSERT INTO `country` VALUES ('68', 'ET', 'Ethiopia', 'ETH', '231', '251');
INSERT INTO `country` VALUES ('69', 'FK', 'Falkland Islands (Malvinas)', 'FLK', '238', '500');
INSERT INTO `country` VALUES ('70', 'FO', 'Faroe Islands', 'FRO', '234', '298');
INSERT INTO `country` VALUES ('71', 'FJ', 'Fiji', 'FJI', '242', '679');
INSERT INTO `country` VALUES ('72', 'FI', 'Finland', 'FIN', '246', '358');
INSERT INTO `country` VALUES ('73', 'FR', 'France', 'FRA', '250', '33');
INSERT INTO `country` VALUES ('74', 'GF', 'French Guiana', 'GUF', '254', '594');
INSERT INTO `country` VALUES ('75', 'PF', 'French Polynesia', 'PYF', '258', '689');
INSERT INTO `country` VALUES ('76', 'TF', 'French Southern Territories', null, null, '0');
INSERT INTO `country` VALUES ('77', 'GA', 'Gabon', 'GAB', '266', '241');
INSERT INTO `country` VALUES ('78', 'GM', 'Gambia', 'GMB', '270', '220');
INSERT INTO `country` VALUES ('79', 'GE', 'Georgia', 'GEO', '268', '995');
INSERT INTO `country` VALUES ('80', 'DE', 'Germany', 'DEU', '276', '49');
INSERT INTO `country` VALUES ('81', 'GH', 'Ghana', 'GHA', '288', '233');
INSERT INTO `country` VALUES ('82', 'GI', 'Gibraltar', 'GIB', '292', '350');
INSERT INTO `country` VALUES ('83', 'GR', 'Greece', 'GRC', '300', '30');
INSERT INTO `country` VALUES ('84', 'GL', 'Greenland', 'GRL', '304', '299');
INSERT INTO `country` VALUES ('85', 'GD', 'Grenada', 'GRD', '308', '1473');
INSERT INTO `country` VALUES ('86', 'GP', 'Guadeloupe', 'GLP', '312', '590');
INSERT INTO `country` VALUES ('87', 'GU', 'Guam', 'GUM', '316', '1671');
INSERT INTO `country` VALUES ('88', 'GT', 'Guatemala', 'GTM', '320', '502');
INSERT INTO `country` VALUES ('89', 'GN', 'Guinea', 'GIN', '324', '224');
INSERT INTO `country` VALUES ('90', 'GW', 'Guinea-Bissau', 'GNB', '624', '245');
INSERT INTO `country` VALUES ('91', 'GY', 'Guyana', 'GUY', '328', '592');
INSERT INTO `country` VALUES ('92', 'HT', 'Haiti', 'HTI', '332', '509');
INSERT INTO `country` VALUES ('93', 'HM', 'Heard Island and Mcdonald Islands', null, null, '0');
INSERT INTO `country` VALUES ('94', 'VA', 'Holy See (Vatican City State)', 'VAT', '336', '39');
INSERT INTO `country` VALUES ('95', 'HN', 'Honduras', 'HND', '340', '504');
INSERT INTO `country` VALUES ('96', 'HK', 'Hong Kong', 'HKG', '344', '852');
INSERT INTO `country` VALUES ('97', 'HU', 'Hungary', 'HUN', '348', '36');
INSERT INTO `country` VALUES ('98', 'IS', 'Iceland', 'ISL', '352', '354');
INSERT INTO `country` VALUES ('99', 'IN', 'India', 'IND', '356', '91');
INSERT INTO `country` VALUES ('100', 'ID', 'Indonesia', 'IDN', '360', '62');
INSERT INTO `country` VALUES ('101', 'IR', 'Iran, Islamic Republic of', 'IRN', '364', '98');
INSERT INTO `country` VALUES ('102', 'IQ', 'Iraq', 'IRQ', '368', '964');
INSERT INTO `country` VALUES ('103', 'IE', 'Ireland', 'IRL', '372', '353');
INSERT INTO `country` VALUES ('104', 'IL', 'Israel', 'ISR', '376', '972');
INSERT INTO `country` VALUES ('105', 'IT', 'Italy', 'ITA', '380', '39');
INSERT INTO `country` VALUES ('106', 'JM', 'Jamaica', 'JAM', '388', '1876');
INSERT INTO `country` VALUES ('107', 'JP', 'Japan', 'JPN', '392', '81');
INSERT INTO `country` VALUES ('108', 'JO', 'Jordan', 'JOR', '400', '962');
INSERT INTO `country` VALUES ('109', 'KZ', 'Kazakhstan', 'KAZ', '398', '7');
INSERT INTO `country` VALUES ('110', 'KE', 'Kenya', 'KEN', '404', '254');
INSERT INTO `country` VALUES ('111', 'KI', 'Kiribati', 'KIR', '296', '686');
INSERT INTO `country` VALUES ('112', 'KP', 'Korea, Democratic People\'s Republic of', 'PRK', '408', '850');
INSERT INTO `country` VALUES ('113', 'KR', 'Korea, Republic of', 'KOR', '410', '82');
INSERT INTO `country` VALUES ('114', 'KW', 'Kuwait', 'KWT', '414', '965');
INSERT INTO `country` VALUES ('115', 'KG', 'Kyrgyzstan', 'KGZ', '417', '996');
INSERT INTO `country` VALUES ('116', 'LA', 'Lao People\'s Democratic Republic', 'LAO', '418', '856');
INSERT INTO `country` VALUES ('117', 'LV', 'Latvia', 'LVA', '428', '371');
INSERT INTO `country` VALUES ('118', 'LB', 'Lebanon', 'LBN', '422', '961');
INSERT INTO `country` VALUES ('119', 'LS', 'Lesotho', 'LSO', '426', '266');
INSERT INTO `country` VALUES ('120', 'LR', 'Liberia', 'LBR', '430', '231');
INSERT INTO `country` VALUES ('121', 'LY', 'Libyan Arab Jamahiriya', 'LBY', '434', '218');
INSERT INTO `country` VALUES ('122', 'LI', 'Liechtenstein', 'LIE', '438', '423');
INSERT INTO `country` VALUES ('123', 'LT', 'Lithuania', 'LTU', '440', '370');
INSERT INTO `country` VALUES ('124', 'LU', 'Luxembourg', 'LUX', '442', '352');
INSERT INTO `country` VALUES ('125', 'MO', 'Macao', 'MAC', '446', '853');
INSERT INTO `country` VALUES ('126', 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '389');
INSERT INTO `country` VALUES ('127', 'MG', 'Madagascar', 'MDG', '450', '261');
INSERT INTO `country` VALUES ('128', 'MW', 'Malawi', 'MWI', '454', '265');
INSERT INTO `country` VALUES ('129', 'MY', 'Malaysia', 'MYS', '458', '60');
INSERT INTO `country` VALUES ('130', 'MV', 'Maldives', 'MDV', '462', '960');
INSERT INTO `country` VALUES ('131', 'ML', 'Mali', 'MLI', '466', '223');
INSERT INTO `country` VALUES ('132', 'MT', 'Malta', 'MLT', '470', '356');
INSERT INTO `country` VALUES ('133', 'MH', 'Marshall Islands', 'MHL', '584', '692');
INSERT INTO `country` VALUES ('134', 'MQ', 'Martinique', 'MTQ', '474', '596');
INSERT INTO `country` VALUES ('135', 'MR', 'Mauritania', 'MRT', '478', '222');
INSERT INTO `country` VALUES ('136', 'MU', 'Mauritius', 'MUS', '480', '230');
INSERT INTO `country` VALUES ('137', 'YT', 'Mayotte', null, null, '269');
INSERT INTO `country` VALUES ('138', 'MX', 'Mexico', 'MEX', '484', '52');
INSERT INTO `country` VALUES ('139', 'FM', 'Micronesia, Federated States of', 'FSM', '583', '691');
INSERT INTO `country` VALUES ('140', 'MD', 'Moldova, Republic of', 'MDA', '498', '373');
INSERT INTO `country` VALUES ('141', 'MC', 'Monaco', 'MCO', '492', '377');
INSERT INTO `country` VALUES ('142', 'MN', 'Mongolia', 'MNG', '496', '976');
INSERT INTO `country` VALUES ('143', 'MS', 'Montserrat', 'MSR', '500', '1664');
INSERT INTO `country` VALUES ('144', 'MA', 'Morocco', 'MAR', '504', '212');
INSERT INTO `country` VALUES ('145', 'MZ', 'Mozambique', 'MOZ', '508', '258');
INSERT INTO `country` VALUES ('146', 'MM', 'Myanmar', 'MMR', '104', '95');
INSERT INTO `country` VALUES ('147', 'NA', 'Namibia', 'NAM', '516', '264');
INSERT INTO `country` VALUES ('148', 'NR', 'Nauru', 'NRU', '520', '674');
INSERT INTO `country` VALUES ('149', 'NP', 'Nepal', 'NPL', '524', '977');
INSERT INTO `country` VALUES ('150', 'NL', 'Netherlands', 'NLD', '528', '31');
INSERT INTO `country` VALUES ('151', 'AN', 'Netherlands Antilles', 'ANT', '530', '599');
INSERT INTO `country` VALUES ('152', 'NC', 'New Caledonia', 'NCL', '540', '687');
INSERT INTO `country` VALUES ('153', 'NZ', 'New Zealand', 'NZL', '554', '64');
INSERT INTO `country` VALUES ('154', 'NI', 'Nicaragua', 'NIC', '558', '505');
INSERT INTO `country` VALUES ('155', 'NE', 'Niger', 'NER', '562', '227');
INSERT INTO `country` VALUES ('156', 'NG', 'Nigeria', 'NGA', '566', '234');
INSERT INTO `country` VALUES ('157', 'NU', 'Niue', 'NIU', '570', '683');
INSERT INTO `country` VALUES ('158', 'NF', 'Norfolk Island', 'NFK', '574', '672');
INSERT INTO `country` VALUES ('159', 'MP', 'Northern Mariana Islands', 'MNP', '580', '1670');
INSERT INTO `country` VALUES ('160', 'NO', 'Norway', 'NOR', '578', '47');
INSERT INTO `country` VALUES ('161', 'OM', 'Oman', 'OMN', '512', '968');
INSERT INTO `country` VALUES ('162', 'PK', 'Pakistan', 'PAK', '586', '92');
INSERT INTO `country` VALUES ('163', 'PW', 'Palau', 'PLW', '585', '680');
INSERT INTO `country` VALUES ('164', 'PS', 'Palestinian Territory, Occupied', null, null, '970');
INSERT INTO `country` VALUES ('165', 'PA', 'Panama', 'PAN', '591', '507');
INSERT INTO `country` VALUES ('166', 'PG', 'Papua New Guinea', 'PNG', '598', '675');
INSERT INTO `country` VALUES ('167', 'PY', 'Paraguay', 'PRY', '600', '595');
INSERT INTO `country` VALUES ('168', 'PE', 'Peru', 'PER', '604', '51');
INSERT INTO `country` VALUES ('169', 'PH', 'Philippines', 'PHL', '608', '63');
INSERT INTO `country` VALUES ('170', 'PN', 'Pitcairn', 'PCN', '612', '0');
INSERT INTO `country` VALUES ('171', 'PL', 'Poland', 'POL', '616', '48');
INSERT INTO `country` VALUES ('172', 'PT', 'Portugal', 'PRT', '620', '351');
INSERT INTO `country` VALUES ('173', 'PR', 'Puerto Rico', 'PRI', '630', '1787');
INSERT INTO `country` VALUES ('174', 'QA', 'Qatar', 'QAT', '634', '974');
INSERT INTO `country` VALUES ('175', 'RE', 'Reunion', 'REU', '638', '262');
INSERT INTO `country` VALUES ('176', 'RO', 'Romania', 'ROM', '642', '40');
INSERT INTO `country` VALUES ('177', 'RU', 'Russian Federation', 'RUS', '643', '70');
INSERT INTO `country` VALUES ('178', 'RW', 'Rwanda', 'RWA', '646', '250');
INSERT INTO `country` VALUES ('179', 'SH', 'Saint Helena', 'SHN', '654', '290');
INSERT INTO `country` VALUES ('180', 'KN', 'Saint Kitts and Nevis', 'KNA', '659', '1869');
INSERT INTO `country` VALUES ('181', 'LC', 'Saint Lucia', 'LCA', '662', '1758');
INSERT INTO `country` VALUES ('182', 'PM', 'Saint Pierre and Miquelon', 'SPM', '666', '508');
INSERT INTO `country` VALUES ('183', 'VC', 'Saint Vincent and the Grenadines', 'VCT', '670', '1784');
INSERT INTO `country` VALUES ('184', 'WS', 'Samoa', 'WSM', '882', '684');
INSERT INTO `country` VALUES ('185', 'SM', 'San Marino', 'SMR', '674', '378');
INSERT INTO `country` VALUES ('186', 'ST', 'Sao Tome and Principe', 'STP', '678', '239');
INSERT INTO `country` VALUES ('187', 'SA', 'Saudi Arabia', 'SAU', '682', '966');
INSERT INTO `country` VALUES ('188', 'SN', 'Senegal', 'SEN', '686', '221');
INSERT INTO `country` VALUES ('189', 'CS', 'Serbia and Montenegro', null, null, '381');
INSERT INTO `country` VALUES ('190', 'SC', 'Seychelles', 'SYC', '690', '248');
INSERT INTO `country` VALUES ('191', 'SL', 'Sierra Leone', 'SLE', '694', '232');
INSERT INTO `country` VALUES ('192', 'SG', 'Singapore', 'SGP', '702', '65');
INSERT INTO `country` VALUES ('193', 'SK', 'Slovakia', 'SVK', '703', '421');
INSERT INTO `country` VALUES ('194', 'SI', 'Slovenia', 'SVN', '705', '386');
INSERT INTO `country` VALUES ('195', 'SB', 'Solomon Islands', 'SLB', '90', '677');
INSERT INTO `country` VALUES ('196', 'SO', 'Somalia', 'SOM', '706', '252');
INSERT INTO `country` VALUES ('197', 'ZA', 'South Africa', 'ZAF', '710', '27');
INSERT INTO `country` VALUES ('198', 'GS', 'South Georgia and the South Sandwich Islands', null, null, '0');
INSERT INTO `country` VALUES ('199', 'ES', 'Spain', 'ESP', '724', '34');
INSERT INTO `country` VALUES ('200', 'LK', 'Sri Lanka', 'LKA', '144', '94');
INSERT INTO `country` VALUES ('201', 'SD', 'Sudan', 'SDN', '736', '249');
INSERT INTO `country` VALUES ('202', 'SR', 'Suriname', 'SUR', '740', '597');
INSERT INTO `country` VALUES ('203', 'SJ', 'Svalbard and Jan Mayen', 'SJM', '744', '47');
INSERT INTO `country` VALUES ('204', 'SZ', 'Swaziland', 'SWZ', '748', '268');
INSERT INTO `country` VALUES ('205', 'SE', 'Sweden', 'SWE', '752', '46');
INSERT INTO `country` VALUES ('206', 'CH', 'Switzerland', 'CHE', '756', '41');
INSERT INTO `country` VALUES ('207', 'SY', 'Syrian Arab Republic', 'SYR', '760', '963');
INSERT INTO `country` VALUES ('208', 'TW', 'Taiwan, Province of China', 'TWN', '158', '886');
INSERT INTO `country` VALUES ('209', 'TJ', 'Tajikistan', 'TJK', '762', '992');
INSERT INTO `country` VALUES ('210', 'TZ', 'Tanzania, United Republic of', 'TZA', '834', '255');
INSERT INTO `country` VALUES ('211', 'TH', 'Thailand', 'THA', '764', '66');
INSERT INTO `country` VALUES ('212', 'TL', 'Timor-Leste', null, null, '670');
INSERT INTO `country` VALUES ('213', 'TG', 'Togo', 'TGO', '768', '228');
INSERT INTO `country` VALUES ('214', 'TK', 'Tokelau', 'TKL', '772', '690');
INSERT INTO `country` VALUES ('215', 'TO', 'Tonga', 'TON', '776', '676');
INSERT INTO `country` VALUES ('216', 'TT', 'Trinidad and Tobago', 'TTO', '780', '1868');
INSERT INTO `country` VALUES ('217', 'TN', 'Tunisia', 'TUN', '788', '216');
INSERT INTO `country` VALUES ('218', 'TR', 'Turkey', 'TUR', '792', '90');
INSERT INTO `country` VALUES ('219', 'TM', 'Turkmenistan', 'TKM', '795', '7370');
INSERT INTO `country` VALUES ('220', 'TC', 'Turks and Caicos Islands', 'TCA', '796', '1649');
INSERT INTO `country` VALUES ('221', 'TV', 'Tuvalu', 'TUV', '798', '688');
INSERT INTO `country` VALUES ('222', 'UG', 'Uganda', 'UGA', '800', '256');
INSERT INTO `country` VALUES ('223', 'UA', 'Ukraine', 'UKR', '804', '380');
INSERT INTO `country` VALUES ('224', 'AE', 'United Arab Emirates', 'ARE', '784', '971');
INSERT INTO `country` VALUES ('225', 'GB', 'United Kingdom', 'GBR', '826', '44');
INSERT INTO `country` VALUES ('226', 'US', 'United States', 'USA', '840', '1');
INSERT INTO `country` VALUES ('227', 'UM', 'United States Minor Outlying Islands', null, null, '1');
INSERT INTO `country` VALUES ('228', 'UY', 'Uruguay', 'URY', '858', '598');
INSERT INTO `country` VALUES ('229', 'UZ', 'Uzbekistan', 'UZB', '860', '998');
INSERT INTO `country` VALUES ('230', 'VU', 'Vanuatu', 'VUT', '548', '678');
INSERT INTO `country` VALUES ('231', 'VE', 'Venezuela', 'VEN', '862', '58');
INSERT INTO `country` VALUES ('232', 'VN', 'Viet Nam', 'VNM', '704', '84');
INSERT INTO `country` VALUES ('233', 'VG', 'Virgin Islands, British', 'VGB', '92', '1284');
INSERT INTO `country` VALUES ('234', 'VI', 'Virgin Islands, U.s.', 'VIR', '850', '1340');
INSERT INTO `country` VALUES ('235', 'WF', 'Wallis and Futuna', 'WLF', '876', '681');
INSERT INTO `country` VALUES ('236', 'EH', 'Western Sahara', 'ESH', '732', '212');
INSERT INTO `country` VALUES ('237', 'YE', 'Yemen', 'YEM', '887', '967');
INSERT INTO `country` VALUES ('238', 'ZM', 'Zambia', 'ZMB', '894', '260');
INSERT INTO `country` VALUES ('239', 'ZW', 'Zimbabwe', 'ZWE', '716', '263');

-- ----------------------------
-- Table structure for `customer`
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `row_id` int(10) DEFAULT NULL,
  `customer_id` varchar(10) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_address` varchar(250) DEFAULT NULL,
  `country_of_origin` varchar(100) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT '',
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES ('1', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'Mirzapur, Vawal , Gazipur, Dhaka', 'Bangladesh', 'admin', 'admin', '2021-09-19 11:15:01');
INSERT INTO `customer` VALUES ('10', 'cust_10', 'mom Tex', 'South Kongshirdi, panchaona, narsingdi', 'Bangladesh', '9047', 'masum', '2021-10-14 17:09:27');
INSERT INTO `customer` VALUES ('11', 'cust_11', 'Snowtex Outwear Ltd.', 'Lakuripara, Dhulivita, Dhamrai, Dhaka', 'Bangladesh', '9047', 'masum', '2021-10-16 14:17:58');
INSERT INTO `customer` VALUES ('2', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'Pagar , Tonggi , Gazipur, Dhaka', 'Bangladesh', 'admin', 'admin', '2021-09-23 12:18:19');
INSERT INTO `customer` VALUES ('3', 'cust_3', 'Zaber & Zubair Fabrics Ltd.- Fashion', 'Pagar, Tonggi, Gazipur, Dhaka', 'Bangladesh', 'admin', 'admin', '2021-09-23 12:19:52');
INSERT INTO `customer` VALUES ('4', 'cust_4', 'Ever Fashion', 'Tongi, Gazipur 1710, Bangladesh', 'Bangladesh', '9047', 'masum', '2021-10-06 10:09:21');
INSERT INTO `customer` VALUES ('5', 'cust_5', 'Noman Fashion Fabrics ltd.', 'Pagar, Tongi, Gazipur, Dhaka', 'Bangladesh', '9047', 'masum', '2021-10-07 17:09:59');
INSERT INTO `customer` VALUES ('6', 'cust_6', 'Joy Auto Garments Ltd.', 'Fatullah, Narayanganj, Dhaka', 'Bangladesh', '9047', 'masum', '2021-10-09 10:13:10');
INSERT INTO `customer` VALUES ('7', 'cust_7', 'SAAD Group', 'Mawna, Sreepur, Gazipur', 'Bangladesh', '9047', 'masum', '2021-10-10 17:36:22');
INSERT INTO `customer` VALUES ('8', 'cust_8', 'Noman group', 'Chakpara, Mawna, Sreepur, Gazipur', 'Bangladesh', '9047', 'masum', '2021-10-11 12:48:10');
INSERT INTO `customer` VALUES ('9', 'cust_9', 'SS Sweater', 'Choity Complex 27, Gazipur', 'Bangladesh', '9047', 'masum', '2021-10-13 09:42:31');

-- ----------------------------
-- Table structure for `department_info`
-- ----------------------------
DROP TABLE IF EXISTS `department_info`;
CREATE TABLE `department_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(100) DEFAULT NULL,
  `department_name` varchar(100) DEFAULT NULL,
  `section_name` varchar(100) DEFAULT NULL,
  `contact_person_name` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_info
-- ----------------------------
INSERT INTO `department_info` VALUES ('3', 'Zaber & Zubair Accessories Ltd.', 'INDUSTRIAL ENGINEERING', 'IE', 'FARUK', '01709994729', 'farukeee1935@gmail.com', 'admin', 'admin', '2021-09-19 12:47:27');
INSERT INTO `department_info` VALUES ('5', 'Zaber & Zubair Accessories Ltd.', 'CARTON', 'Corrugation', 'Faruk', '01709994729', 'farukeee1935@gmail.com', 'admin', 'admin', '2021-09-19 16:27:27');
INSERT INTO `department_info` VALUES ('6', 'MC, BAZAR, SREEPUR,GAZIPUR,DHAKA', 'Head Of Operation', 'Head Of Operation', 'Monwar Jahid', '01701212548', 'jahid@znzal.com', 'admin', 'admin', '2021-10-05 18:12:19');
INSERT INTO `department_info` VALUES ('7', 'Zaber & Zubair Accessories Ltd.', 'Planing', 'Carton', 'Babor Molla', '01313009406', 'babor.molla@znzal.com', 'admin', 'admin', '2021-10-13 17:00:16');

-- ----------------------------
-- Table structure for `designation_info`
-- ----------------------------
DROP TABLE IF EXISTS `designation_info`;
CREATE TABLE `designation_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `designation` varchar(255) DEFAULT NULL,
  `short_form` varchar(100) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of designation_info
-- ----------------------------
INSERT INTO `designation_info` VALUES ('1', 'Officer', 'Officer', null, null, null);
INSERT INTO `designation_info` VALUES ('3', 'Junior Officer', 'Jr. Officer', null, null, null);
INSERT INTO `designation_info` VALUES ('4', 'Senior Officer', 'Sr. Officer', null, null, null);
INSERT INTO `designation_info` VALUES ('22', 'Programmer', 'Programmer', null, null, null);
INSERT INTO `designation_info` VALUES ('23', 'Junior Programmer', 'Jr. Programmer', null, null, null);
INSERT INTO `designation_info` VALUES ('5', 'Executive', 'Executive', null, null, null);
INSERT INTO `designation_info` VALUES ('7', 'Junior Executive', 'Jr. Executive', null, null, null);
INSERT INTO `designation_info` VALUES ('8', 'Senior Executive', 'Sr. Executive', null, null, null);
INSERT INTO `designation_info` VALUES ('9', 'General Manager', 'GM', null, null, null);
INSERT INTO `designation_info` VALUES ('24', 'Assistant Programmer', 'Asst. Programmer', null, null, null);
INSERT INTO `designation_info` VALUES ('25', 'Senior Programmer', 'Sr. Programmer', null, null, null);
INSERT INTO `designation_info` VALUES ('10', 'Assistant General Manager', 'AGM', null, null, null);
INSERT INTO `designation_info` VALUES ('11', 'Deputy General Manager', 'DGM', null, null, null);
INSERT INTO `designation_info` VALUES ('12', 'Manager', 'Manager', null, null, null);
INSERT INTO `designation_info` VALUES ('19', 'Junior Application Developer', 'Jr. App. Developer', null, null, null);
INSERT INTO `designation_info` VALUES ('13', 'Assistant Manager', 'Asst. Manager', null, null, null);
INSERT INTO `designation_info` VALUES ('14', 'Deputy Manager', 'Dept. Manager', null, null, null);
INSERT INTO `designation_info` VALUES ('15', 'Senior Manager', 'Sr. Manager', null, null, null);
INSERT INTO `designation_info` VALUES ('2', 'Assistant Officer', 'Asst. Officer', null, null, null);
INSERT INTO `designation_info` VALUES ('20', 'Assistant Application Developer', 'Asst. App. Developer', null, null, null);
INSERT INTO `designation_info` VALUES ('16', 'Head of Department', 'Head of Dept.', null, null, null);
INSERT INTO `designation_info` VALUES ('17', 'Application Implementer', 'App. Implementer', '', '', '0000-00-00 00:00:00');
INSERT INTO `designation_info` VALUES ('18', 'Application Developer', 'App. Developer', null, null, null);
INSERT INTO `designation_info` VALUES ('21', 'Senior Application Developer', 'Sr. App. Developer', null, null, null);
INSERT INTO `designation_info` VALUES ('6', 'Assistant Executive', 'Asst. Executive', null, null, null);
INSERT INTO `designation_info` VALUES ('27', 'Junior Engineer', 'Jr. Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('26', 'Engineer', 'Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('28', 'Assistant Engineer', 'Asst. Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('29', 'Senior Engineer', 'Sr. Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('30', 'System & Network Engineer', 'System & Network Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('31', 'Junior System & Network Engineer', 'Jr. System Network Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('32', 'Assistant System & Network Engineer', 'Asst. System & Network Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('33', 'Senior System & Network Engineer', 'Sr. System & Network Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('34', 'Functional Co-ordinator', 'Functional Co-ordinator', null, null, null);
INSERT INTO `designation_info` VALUES ('35', 'Senior Functional Co-ordinator', 'Sr. Functional Co-ordinator', null, null, null);
INSERT INTO `designation_info` VALUES ('36', 'Data Co-ordinator', 'Data Co-ordinator', null, null, null);
INSERT INTO `designation_info` VALUES ('37', 'Senior Data Co-ordinator', 'Sr. Data Co-ordinator', null, null, null);
INSERT INTO `designation_info` VALUES ('38', 'NOC Engineer', 'NOC Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('39', 'Chief Information Officer', 'CIO', null, null, null);
INSERT INTO `designation_info` VALUES ('40', 'Chief Technical Officer', 'CTO', null, null, null);
INSERT INTO `designation_info` VALUES ('41', 'Database Administrator', 'DBA', null, null, null);
INSERT INTO `designation_info` VALUES ('42', 'System Administrator', 'System Admin', null, null, null);
INSERT INTO `designation_info` VALUES ('43', 'System Analyst', 'System Analyst', null, null, null);
INSERT INTO `designation_info` VALUES ('44', 'Team Leader', 'Team Leader', null, null, null);
INSERT INTO `designation_info` VALUES ('45', 'Project Manager', 'PM', null, null, null);
INSERT INTO `designation_info` VALUES ('46', 'Junior NOC Engineer', 'Jr. NOC Engineer', null, null, null);
INSERT INTO `designation_info` VALUES ('47', 'Electrical Engineer', 'ELec. Engr.', null, null, null);
INSERT INTO `designation_info` VALUES ('48', 'Assistant Manufacturing Engineer', 'Asst. Manufacturing Engr.', null, null, null);
INSERT INTO `designation_info` VALUES ('49', 'Senior Operator ', 'Senior Operator ', null, null, null);
INSERT INTO `designation_info` VALUES ('50', 'Operator', 'Operator', null, null, null);
INSERT INTO `designation_info` VALUES ('51', 'Assistant Operator', 'Assistant Operator', null, null, null);
INSERT INTO `designation_info` VALUES ('52', 'Junior Operator', 'Junior Operator', null, null, null);
INSERT INTO `designation_info` VALUES ('53', 'Finishing Supervisor', 'Finishing Supervisor', null, null, null);
INSERT INTO `designation_info` VALUES ('54', 'Factory Manager ', 'Factory Manager ', null, null, null);
INSERT INTO `designation_info` VALUES ('55', 'Production Manager', 'Production Manager', null, null, null);
INSERT INTO `designation_info` VALUES ('56', 'Super Visor', 'Super Visor', null, null, null);
INSERT INTO `designation_info` VALUES ('57', 'Incharge', 'Incharge', null, null, null);

-- ----------------------------
-- Table structure for `division_info`
-- ----------------------------
DROP TABLE IF EXISTS `division_info`;
CREATE TABLE `division_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `division_name` varchar(50) DEFAULT NULL,
  `division_full_name` varchar(100) DEFAULT NULL,
  `division_address` varchar(250) DEFAULT NULL,
  `division_location` varchar(100) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of division_info
-- ----------------------------
INSERT INTO `division_info` VALUES ('1', 'MHO', 'Motijheel Head Office', 'Motijeel, Dhaka', 'Head Office', null, null, null);
INSERT INTO `division_info` VALUES ('2', 'GHO', 'Gulshan Head Office', 'Gulshan, Dhaka', 'Head Office', null, null, null);
INSERT INTO `division_info` VALUES ('3', 'YSML', 'Yesmin Spinning Mills Ltd', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('4', 'ZSML', 'Zaber Spinning Mills Ltd', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('5', 'NSML', 'Noman Spinning Mills Ltd.', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('6', 'TSML', 'Talha Spinning Mills Ltd.', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('7', 'ISML', 'Ismail Spinning Mills Ltd.', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('10', 'SCML', 'Sufia Cotton Mills Ltd.', 'Sreepur, Gazipur', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('11', 'SCMLW', 'Sufia Cotton Mills Ltd. (Weaving)', 'Sreepur, Gazipur', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('12', 'NDML', 'Nice Denim Mills Ltd.', 'Sreepur, Gazipur', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('13', 'NDMLW', 'Nice Denim Mills Ltd (Washing)', 'Sreepur, Gazipur', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('14', 'NWML', 'Noman Weaving Mills Ltd(Shed-1)', 'Sreepur, Gazipur', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('15', 'NWML2', 'Noman Weaving Mills Ltd.(Shed-2)', 'Sreepur, Gazipur', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('16', 'NDSD', 'Nice Denim Solid Dyeing', 'Sreepur, Gazipur', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('17', 'NTTML', 'Noman Terry Towel Mills Ltd', 'Mirzapur, Gazipur', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('18', 'TFL', 'Talha Fabrics Ltd', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('8', 'ZZFL', 'Zaber & Zubair Fabrics Ltd', 'Pagar, Tongi', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('20', 'SSTML', 'Saad Saan Textile Mills Ltd.', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('21', 'TTPL', 'Talha Texpro Ltd.', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('9', 'NHTML', 'Noman Home Textile Mills Ltd.', 'Sreepur, Gazipur', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('23', 'NCTL', 'Noman Composite Textile Ltd', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('24', 'ZTML', 'Zarba Textile Mills Ltd.', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('25', 'ZTML-R', 'Zarba Textile Mills Ltd.(Rotor)', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('26', 'ITML', 'Ismail Textile Mills Ltd.', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('27', 'NTML', 'Noman Textile Mills Ltd.', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('28', 'IAAFL', 'Ismail Anzuman Ara Fabrics Ltd.', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('29', 'NFFL', 'Noman Fashion Fabrics Ltd', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('30', 'NFL1', 'Noman Fabrics Ltd-1', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('31', 'NFL2', 'Noman Fabrics Ltd-2', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('32', 'SFL1', 'Sufia Fabrics Ltd-1', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('33', 'SFL2', 'Sufia Fabrics Ltd-2', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('34', 'SFL3', 'Sufia Fabrics Ltd-3', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('35', 'AFL1', 'Artex Fabrics Ltd-1', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('36', 'AFL2', 'Artex Fabrics Ltd-2', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('37', 'MTML', 'Marium Textile Mills Ltd', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('22', 'ZuSML', 'Zubair Spinning Mills Ltd.', '', 'Factory', null, null, null);
INSERT INTO `division_info` VALUES ('19', 'SSAL', 'Saad Saan Apparels Ltd.', '', 'Factory', null, null, null);

-- ----------------------------
-- Table structure for `po_creation`
-- ----------------------------
DROP TABLE IF EXISTS `po_creation`;
CREATE TABLE `po_creation` (
  `row_id` int(10) DEFAULT NULL,
  `po_creation_date` varchar(30) DEFAULT '',
  `po_id` varchar(15) NOT NULL,
  `po_number` varchar(100) DEFAULT NULL,
  `customer_id` varchar(50) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `buyer_id` varchar(50) DEFAULT NULL,
  `buyer_name` varchar(100) DEFAULT NULL,
  `po_order_received_date` varchar(50) DEFAULT NULL,
  `product_delivery_date` varchar(50) DEFAULT NULL,
  `responsible_person` varchar(100) DEFAULT NULL,
  `product_category` varchar(50) DEFAULT NULL,
  `order_type` varchar(50) DEFAULT NULL,
  `po_quantity` double DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT '',
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`po_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of po_creation
-- ----------------------------
INSERT INTO `po_creation` VALUES ('10', '06-10-2021', 'po_10', '42633', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_13', 'Williams Sonoma', '01-10-2021', '20-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '114', '9047', 'masum', '2021-10-06 11:19:44');
INSERT INTO `po_creation` VALUES ('11', '06-10-2021', 'po_11', '42083', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_14', 'BBK', '27-09-2021', '07-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '738', '9047', 'masum', '2021-10-06 12:11:36');
INSERT INTO `po_creation` VALUES ('12', '06-10-2021', 'po_12', '42761', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_15', 'H&M', '05-10-2021', '10-10-2021', 'Jahanggir (APM)', 'STIFFENER', 'Intenal', '55000', '9047', 'masum', '2021-10-06 12:59:09');
INSERT INTO `po_creation` VALUES ('13', '06-10-2021', 'po_13', '59278', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_5', 'Zeeman', '06-10-2021', '09-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '3847', '9047', 'masum', '2021-10-06 14:22:47');
INSERT INTO `po_creation` VALUES ('14', '07-10-2021', 'po_14', '59291', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_16', 'Bonprix', '06-10-2021', '08-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '911', '9047', 'masum', '2021-10-07 09:16:21');
INSERT INTO `po_creation` VALUES ('15', '07-10-2021', 'po_15', '21/2139', 'cust_4', 'Ever Fashion', 'cust_12', 'Tommy Hilfiger', '05-10-2021', '11-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'External', '1093', '9047', 'masum', '2021-10-07 10:20:21');
INSERT INTO `po_creation` VALUES ('16', '07-10-2021', 'po_16', '59221', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_17', 'George Courey', '05-10-2021', '10-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '117', '9047', 'masum', '2021-10-07 10:30:45');
INSERT INTO `po_creation` VALUES ('17', '07-10-2021', 'po_17', '59295', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_18', 'Kadoya', '06-10-2021', '09-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '638', '9047', 'masum', '2021-10-07 10:43:35');
INSERT INTO `po_creation` VALUES ('18', '07-10-2021', 'po_18', '41605/809/620', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_19', 'Carrefour', '28-09-2021', '09-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '13100', '9047', 'masum', '2021-10-07 16:04:10');
INSERT INTO `po_creation` VALUES ('19', '07-10-2021', 'po_19', '41605/809/620', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_19', 'Carrefour', '28-09-2021', '09-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '11880', '9047', 'masum', '2021-10-07 16:21:36');
INSERT INTO `po_creation` VALUES ('20', '07-10-2021', 'po_20', '1M993010', 'cust_5', 'Noman Fashion Fabrics ltd.', 'cust_20', 'Oshkosh', '07-10-2021', '09-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '13545', '9047', 'masum', '2021-10-07 17:39:19');
INSERT INTO `po_creation` VALUES ('21', '09-10-2021', 'po_21', 'PE22', 'cust_6', 'Joy Auto Garments Ltd.', 'cust_21', 'Lahalle', '07-10-2021', '09-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'External', '1400', '9047', 'masum', '2021-10-09 10:15:16');
INSERT INTO `po_creation` VALUES ('22', '09-10-2021', 'po_22', '41861', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_22', 'Argos', '25-09-2021', '25-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '3990', '9047', 'masum', '2021-10-09 11:16:18');
INSERT INTO `po_creation` VALUES ('23', '09-10-2021', 'po_23', '59394', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_3', 'IKEA', '09-10-2021', '10-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '10000', '9047', 'masum', '2021-10-09 11:32:10');
INSERT INTO `po_creation` VALUES ('24', '09-10-2021', 'po_24', '59399', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_4', 'Standard Textile', '09-10-2021', '12-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '564', '9047', 'masum', '2021-10-09 12:08:36');
INSERT INTO `po_creation` VALUES ('25', '09-10-2021', 'po_25', '59364, 59354, 59345', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_16', 'Bonprix', '07-10-2021', '10-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '2323', '9047', 'masum', '2021-10-09 15:12:32');
INSERT INTO `po_creation` VALUES ('26', '09-10-2021', 'po_26', '59421', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_18', 'Kadoya', '09-10-2021', '11-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '671', '', '', '2021-10-09 16:40:46');
INSERT INTO `po_creation` VALUES ('27', '09-10-2021', 'po_27', '59380', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_23', 'Horizonte', '08-10-2021', '11-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '1826', '9047', 'masum', '2021-10-09 16:58:02');
INSERT INTO `po_creation` VALUES ('28', '09-10-2021', 'po_28', '59368', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_23', 'Horizonte', '08-10-2021', '11-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '1823', '9047', 'masum', '2021-10-09 17:03:29');
INSERT INTO `po_creation` VALUES ('29', '09-10-2021', 'po_29', '59373', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_23', 'Horizonte', '08-10-2021', '12-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '7273', '9047', 'masum', '2021-10-09 17:08:50');
INSERT INTO `po_creation` VALUES ('30', '09-10-2021', 'po_30', '42556', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_3', 'IKEA', '09-10-2021', '12-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '10810', '9047', 'masum', '2021-10-09 17:24:45');
INSERT INTO `po_creation` VALUES ('31', '09-10-2021', 'po_31', '59307', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_24', 'Elis', '06-10-2021', '10-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '43', '9047', 'masum', '2021-10-09 17:33:07');
INSERT INTO `po_creation` VALUES ('32', '09-10-2021', 'po_32', '1M993010', 'cust_5', 'Noman Fashion Fabrics ltd.', 'cust_20', 'Oshkosh', '08-10-2021', '10-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '999', '9047', 'masum', '2021-10-09 17:45:40');
INSERT INTO `po_creation` VALUES ('33', '09-10-2021', 'po_33', '6N094510', 'cust_5', 'Noman Fashion Fabrics ltd.', 'cust_20', 'Oshkosh', '09-10-2021', '10-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '999', '9047', 'masum', '2021-10-09 17:56:26');
INSERT INTO `po_creation` VALUES ('34', '09-10-2021', 'po_34', '1N095711', 'cust_5', 'Noman Fashion Fabrics ltd.', 'cust_20', 'Oshkosh', '09-10-2021', '10-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '200', '9047', 'masum', '2021-10-09 17:59:12');
INSERT INTO `po_creation` VALUES ('35', '10-10-2021', 'po_35', '41620', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_19', 'Carrefour', '02-10-2021', '11-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '1482', '9047', 'masum', '2021-10-10 10:08:33');
INSERT INTO `po_creation` VALUES ('36', '10-10-2021', 'po_36', '41620', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_19', 'Carrefour', '02-10-2021', '12-10-2021', 'Jahanggir (APM)', 'STIFFENER', 'Intenal', '38300', '9047', 'masum', '2021-10-10 10:21:30');
INSERT INTO `po_creation` VALUES ('37', '10-10-2021', 'po_37', '41605, 41809, 41620, 39262, 39848', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_19', 'Carrefour', '02-10-2021', '11-10-2021', 'Jahanggir (APM)', 'STIFFENER', 'Intenal', '45860', '9047', 'masum', '2021-10-10 10:31:39');
INSERT INTO `po_creation` VALUES ('38', '10-10-2021', 'po_38', '42629', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_26', 'ZARA', '05-10-2021', '12-10-2021', 'Jahanggir (APM)', 'STIFFENER', 'Intenal', '10650', '9047', 'masum', '2021-10-10 11:32:20');
INSERT INTO `po_creation` VALUES ('39', '10-10-2021', 'po_39', '59407', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_27', 'Heritage', '09-10-2021', '13-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '1685', '9047', 'masum', '2021-10-10 14:43:40');
INSERT INTO `po_creation` VALUES ('4', '05-10-2021', 'po_4', '58747', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_10', 'Walmart', '04-10-2021', '07-10-2021', 'Pavel', 'CARTON', 'Intenal', '14524', 'admin', 'admin', '2021-10-05 17:06:57');
INSERT INTO `po_creation` VALUES ('40', '10-10-2021', 'po_40', '59322', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_7', 'Elshatex', '07-10-2021', '13-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '1196', '9047', 'masum', '2021-10-10 14:55:29');
INSERT INTO `po_creation` VALUES ('41', '10-10-2021', 'po_41', '2223', 'cust_7', 'SAAD Group', 'cust_28', 'Nice denim mills Ltd.', '09-09-2021', '11-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'External', '1000', '9047', 'masum', '2021-10-10 17:38:49');
INSERT INTO `po_creation` VALUES ('42', '11-10-2021', 'po_42', '43055', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_15', 'H&M', '09-10-2021', '15-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '4000', '9047', 'masum', '2021-10-11 09:07:23');
INSERT INTO `po_creation` VALUES ('43', '11-10-2021', 'po_43', '43102', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_15', 'H&M', '11-10-2021', '13-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '5000', '9047', 'masum', '2021-10-11 10:47:58');
INSERT INTO `po_creation` VALUES ('44', '11-10-2021', 'po_44', '59254, 59246', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_29', 'JYSK', '05-10-2021', '12-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '2835', '9047', 'masum', '2021-10-11 11:50:12');
INSERT INTO `po_creation` VALUES ('45', '11-10-2021', 'po_45', '59246', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_29', 'JYSK', '05-10-2021', '12-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '1320', '9047', 'masum', '2021-10-11 11:51:50');
INSERT INTO `po_creation` VALUES ('46', '11-10-2021', 'po_46', '43102, 43055', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_15', 'H&M', '11-10-2021', '13-10-2021', 'Jahanggir (APM)', 'STIFFENER', 'Intenal', '11000', '9047', 'masum', '2021-10-11 12:05:08');
INSERT INTO `po_creation` VALUES ('47', '11-10-2021', 'po_47', '43102, 43055.', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_15', 'H&M', '11-10-2021', '13-10-2021', 'Jahanggir (APM)', 'STIFFENER', 'Intenal', '11000', '9047', 'masum', '2021-10-11 12:26:06');
INSERT INTO `po_creation` VALUES ('48', '11-10-2021', 'po_48', '2517', 'cust_8', 'Noman group', 'cust_30', 'Nice spun', '04-10-2021', '13-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '2500', '9047', 'masum', '2021-10-11 12:50:09');
INSERT INTO `po_creation` VALUES ('49', '11-10-2021', 'po_49', '42892', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_3', 'IKEA', '09-10-2021', '15-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '2643', '9047', 'masum', '2021-10-11 14:02:11');
INSERT INTO `po_creation` VALUES ('5', '06-10-2021', 'po_5', '42495', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_11', 'Max Fashion', '30-09-2021', '08-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '927', '9047', 'masum', '2021-10-06 09:45:17');
INSERT INTO `po_creation` VALUES ('50', '11-10-2021', 'po_50', '42892, 42889', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_3', 'IKEA', '09-10-2021', '15-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '590', '9047', 'masum', '2021-10-11 14:03:52');
INSERT INTO `po_creation` VALUES ('51', '11-10-2021', 'po_51', '42889', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_3', 'IKEA', '09-10-2021', '15-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '125', '9047', 'masum', '2021-10-11 14:04:42');
INSERT INTO `po_creation` VALUES ('52', '11-10-2021', 'po_52', '59549', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_3', 'IKEA', '11-10-2021', '12-10-2021', 'Jahanggir (APM)', 'PLATE', 'Intenal', '200', '9047', 'masum', '2021-10-11 14:19:43');
INSERT INTO `po_creation` VALUES ('53', '11-10-2021', 'po_53', '59491', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_3', 'IKEA', '10-10-2021', '14-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '4000', '9047', 'masum', '2021-10-11 15:02:12');
INSERT INTO `po_creation` VALUES ('54', '12-10-2021', 'po_54', '59555, 59550, 59477, 59460', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_16', 'Bonprix', '11-10-2021', '15-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '1167', '9047', 'masum', '2021-10-12 12:05:38');
INSERT INTO `po_creation` VALUES ('55', '12-10-2021', 'po_55', '59521, 59525, 59510, 59517, 59492, 59497, 59502, 59506, 59533, 59529', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_31', 'Witt Group', '11-10-2021', '15-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '865', '9047', 'masum', '2021-10-12 12:11:20');
INSERT INTO `po_creation` VALUES ('56', '12-10-2021', 'po_56', '43105', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_3', 'IKEA', '11-10-2021', '15-10-2021', 'Jahanggir (APM)', 'PLATE', 'Intenal', '750', '', '', '2021-10-12 16:59:27');
INSERT INTO `po_creation` VALUES ('57', '12-10-2021', 'po_57', '12345', 'cust_4', 'Ever Fashion', 'cust_9', 'AM International', '12-10-2021', '12-10-2021', 'Sazedul Karim Pavel', 'PLATE', 'Intenal', '200', '9047', 'masum', '2021-10-12 17:22:37');
INSERT INTO `po_creation` VALUES ('58', '13-10-2021', 'po_58', '59585', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_7', 'Elshatex', '12-10-2021', '16-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '45', '9047', 'masum', '2021-10-13 09:09:00');
INSERT INTO `po_creation` VALUES ('59', '13-10-2021', 'po_59', '533-32-1012, 533-31-1008', 'cust_9', 'SS Sweater', 'cust_32', 'NVI Honeys', '12-10-2021', '14-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'External', '880', '9047', 'masum', '2021-10-13 09:50:09');
INSERT INTO `po_creation` VALUES ('6', '06-10-2021', 'po_6', 'EF/AC-21/3938', 'cust_4', 'Ever Fashion', 'cust_12', 'Tommy Hilfiger', '05-10-2021', '09-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'External', '684', '9047', 'masum', '2021-10-06 10:12:35');
INSERT INTO `po_creation` VALUES ('60', '13-10-2021', 'po_60', '59608', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_3', 'IKEA', '13-10-2021', '15-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '6000', '9047', 'masum', '2021-10-13 16:22:27');
INSERT INTO `po_creation` VALUES ('61', '13-10-2021', 'po_61', '41620 - 1 DALA', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_19', 'Carrefour', '07-10-2021', '16-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '920', '9047', 'masum', '2021-10-13 16:50:34');
INSERT INTO `po_creation` VALUES ('62', '13-10-2021', 'po_62', '54-210913-2', 'cust_8', 'Noman group', 'cust_33', 'Nice Synthetic Yarn mills Ltd.', '13-09-2021', '14-10-2021', 'Babor Molla', 'CARTON', 'Intenal', '56000', '9047', 'masum', '2021-10-13 17:47:40');
INSERT INTO `po_creation` VALUES ('63', '14-10-2021', 'po_63', '42893', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_3', 'IKEA', '13-10-2021', '18-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '10695', '9047', 'masum', '2021-10-14 10:05:19');
INSERT INTO `po_creation` VALUES ('64', '14-10-2021', 'po_64', '43345', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_34', 'ZASA', '14-10-2021', '15-10-2021', 'Jahanggir (APM)', 'STIFFENER', 'Intenal', '10000', '9047', 'masum', '2021-10-14 11:44:46');
INSERT INTO `po_creation` VALUES ('65', '14-10-2021', 'po_65', '43060', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_35', 'My Pillow', '09-10-2021', '20-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '1512', '9047', 'masum', '2021-10-14 15:19:06');
INSERT INTO `po_creation` VALUES ('66', '14-10-2021', 'po_66', '59614, 59626, 59620', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_16', 'Bonprix', '13-10-2021', '15-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '1254', '9047', 'masum', '2021-10-14 16:52:20');
INSERT INTO `po_creation` VALUES ('67', '14-10-2021', 'po_67', '59656, 59543', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_31', 'Witt Group', '14-10-2021', '16-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '150', '9047', 'masum', '2021-10-14 16:56:43');
INSERT INTO `po_creation` VALUES ('68', '14-10-2021', 'po_68', '13593', 'cust_10', 'mom Tex', 'cust_36', 'Rusta', '12-10-2021', '21-10-2021', 'Jahanggir (APM)', 'PLATTE', 'External', '110', '9047', 'masum', '2021-10-14 17:10:46');
INSERT INTO `po_creation` VALUES ('69', '14-10-2021', 'po_69', '59608', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_3', 'IKEA', '12-10-2021', '21-10-2021', 'Jahanggir (APM)', 'PLATTE', 'Intenal', '500', '9047', 'masum', '2021-10-14 17:14:38');
INSERT INTO `po_creation` VALUES ('7', '06-10-2021', 'po_7', '42028', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_13', 'Williams Sonoma', '18-09-2021', '07-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '910', '9047', 'masum', '2021-10-06 10:52:23');
INSERT INTO `po_creation` VALUES ('70', '14-10-2021', 'po_70', '41866', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_37', 'Sainsburrys', '22-09-2021', '15-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '3081', '9047', 'masum', '2021-10-14 17:29:21');
INSERT INTO `po_creation` VALUES ('71', '16-10-2021', 'po_71', '43195', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_3', 'IKEA', '14-10-2021', '18-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '11536', '9047', 'masum', '2021-10-16 09:37:33');
INSERT INTO `po_creation` VALUES ('72', '16-10-2021', 'po_72', '43193', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_3', 'IKEA', '14-10-2021', '22-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '3560', '9047', 'masum', '2021-10-16 09:46:46');
INSERT INTO `po_creation` VALUES ('73', '16-10-2021', 'po_73', '21/2109', 'cust_4', 'Ever Fashion', 'cust_12', 'Tommy Hilfiger', '10-10-2021', '18-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'External', '8200', '9047', 'masum', '2021-10-16 10:18:10');
INSERT INTO `po_creation` VALUES ('74', '16-10-2021', 'po_74', '21/2129', 'cust_4', 'Ever Fashion', 'cust_12', 'Tommy Hilfiger', '16-10-2021', '17-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'External', '24727', '9047', 'masum', '2021-10-16 12:57:40');
INSERT INTO `po_creation` VALUES ('75', '16-10-2021', 'po_75', '21/5587', 'cust_4', 'Ever Fashion', 'cust_38', 'Costco Taiwan', '12-10-2021', '16-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'External', '245', '9047', 'masum', '2021-10-16 13:05:56');
INSERT INTO `po_creation` VALUES ('76', '16-10-2021', 'po_76', '312H034A', 'cust_11', 'Snowtex Outwear Ltd.', 'cust_39', 'GU', '16-10-2021', '17-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'External', '3843', '9047', 'masum', '2021-10-16 14:20:02');
INSERT INTO `po_creation` VALUES ('77', '16-10-2021', 'po_77', '312H034A.', 'cust_11', 'Snowtex Outwear Ltd.', 'cust_39', 'GU', '16-10-2021', '17-10-2021', 'Sazedul Karim Pavel', 'Top Bottom', 'External', '7686', '9047', 'masum', '2021-10-16 14:36:19');
INSERT INTO `po_creation` VALUES ('78', '16-10-2021', 'po_78', '21/7031', 'cust_4', 'Ever Fashion', 'cust_38', 'Costco Taiwan', '16-10-2021', '20-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'External', '133', '9047', 'masum', '2021-10-16 16:41:31');
INSERT INTO `po_creation` VALUES ('79', '16-10-2021', 'po_79', '59662', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_7', 'Elshatex', '14-10-2021', '18-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '506', '9047', 'masum', '2021-10-16 16:48:42');
INSERT INTO `po_creation` VALUES ('8', '06-10-2021', 'po_8', '42820', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_13', 'Williams Sonoma', '04-10-2021', '10-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '176', '9047', 'masum', '2021-10-06 11:01:38');
INSERT INTO `po_creation` VALUES ('80', '16-10-2021', 'po_80', '59642', 'cust_1', 'Noman Terry Towal Mils Ltd.', 'cust_7', 'Elshatex', '13-10-2021', '18-10-2021', 'Sazedul Karim Pavel', 'CARTON', 'Intenal', '780', '9047', 'masum', '2021-10-16 16:53:27');
INSERT INTO `po_creation` VALUES ('81', '16-10-2021', 'po_81', '41624', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_19', 'Carrefour', '16-10-2021', '19-10-2021', 'Jahanggir (APM)', 'STIFFENER', 'Intenal', '7300', '9047', 'masum', '2021-10-16 17:19:36');
INSERT INTO `po_creation` VALUES ('82', '16-10-2021', 'po_82', '43336, 43407', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_3', 'IKEA', '15-10-2021', '22-10-2021', 'Jahanggir (APM)', 'PLATTE', 'Intenal', '750', '9047', 'masum', '2021-10-16 17:32:07');
INSERT INTO `po_creation` VALUES ('83', '15-10-2021', 'po_83', '43336, 43407', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_3', 'IKEA', '15-10-2021', '22-10-2021', 'Jahanggir (APM)', 'Top Bottom', 'Intenal', '1100', '9047', 'masum', '2021-10-16 17:35:28');
INSERT INTO `po_creation` VALUES ('84', '17-10-2021', 'po_84', '43195', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_3', 'IKEA', '15-10-2021', '19-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '8000', '9047', 'masum', '2021-10-17 09:34:45');
INSERT INTO `po_creation` VALUES ('85', '17-10-2021', 'po_85', '43195.', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_3', 'IKEA', '15-10-2021', '19-10-2021', 'Jahanggir (APM)', 'Top Bottom', 'Intenal', '8000', '9047', 'masum', '2021-10-17 09:35:40');
INSERT INTO `po_creation` VALUES ('86', '17-10-2021', 'po_86', '43193,', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_3', 'IKEA', '15-10-2021', '19-10-2021', 'Jahanggir (APM)', 'Top Bottom', 'Intenal', '575', '9047', 'masum', '2021-10-17 09:40:08');
INSERT INTO `po_creation` VALUES ('87', '17-10-2021', 'po_87', '13354, 13355, 13529', 'cust_10', 'mom Tex', 'cust_40', 'Laredoute', '12-10-2021', '18-10-2021', 'Jahanggir (APM)', 'STIFFENER', 'External', '39417', '9047', 'masum', '2021-10-17 10:01:23');
INSERT INTO `po_creation` VALUES ('88', '17-10-2021', 'po_88', '43351', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_41', 'Nitori', '14-10-2021', '18-10-2021', 'Jahanggir (APM)', 'STIFFENER', 'Intenal', '17950', '9047', 'masum', '2021-10-17 10:45:49');
INSERT INTO `po_creation` VALUES ('9', '06-10-2021', 'po_9', '42049', 'cust_2', 'Zaber & Zubair Fabrics Ltd- Home', 'cust_13', 'Williams Sonoma', '18-09-2021', '07-10-2021', 'Jahanggir (APM)', 'CARTON', 'Intenal', '340', '9047', 'masum', '2021-10-06 11:11:49');

-- ----------------------------
-- Table structure for `po_details`
-- ----------------------------
DROP TABLE IF EXISTS `po_details`;
CREATE TABLE `po_details` (
  `row_id` int(10) NOT NULL AUTO_INCREMENT,
  `po_details_id` varchar(50) DEFAULT NULL,
  `po_id` varchar(15) NOT NULL,
  `po_number` varchar(100) NOT NULL DEFAULT '',
  `measurement_of_carton_length` double DEFAULT NULL,
  `measurement_of_carton_width` double DEFAULT NULL,
  `measurement_of_cartoon_height` double DEFAULT NULL,
  `measurement_of_cartoon_ply` double DEFAULT NULL,
  `paper_type_linear` varchar(30) DEFAULT NULL,
  `paper_type_medium` varchar(30) DEFAULT '',
  `paper_type_medium_1` varchar(30) DEFAULT NULL,
  `paper_type_medium_2` varchar(30) DEFAULT NULL,
  `paper_type_linear_1` varchar(30) DEFAULT NULL,
  `flute_type` varchar(30) DEFAULT '',
  `printing_status` varchar(20) DEFAULT NULL,
  `dye_cutting` varchar(30) DEFAULT NULL,
  `carton_quantity` double DEFAULT NULL,
  `ratio` double DEFAULT NULL,
  `cutting_ratio` double DEFAULT NULL,
  `board_quantity` double DEFAULT NULL,
  `cutter_size` double DEFAULT NULL,
  `roll_size` double DEFAULT NULL,
  `required_time` varchar(50) DEFAULT NULL,
  `score_or_creez_size` double DEFAULT NULL,
  `score_or_creez_size_1` double DEFAULT NULL,
  `score_or_creez_size_2` double DEFAULT NULL,
  `slotting_size` double DEFAULT NULL,
  `slotting_size_1` double DEFAULT NULL,
  `slotting_size_2` double DEFAULT NULL,
  `slotting_size_3` double DEFAULT NULL,
  `layout` varchar(30) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` varchar(50) DEFAULT '',
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of po_details
-- ----------------------------
INSERT INTO `po_details` VALUES ('24', 'pod_1', 'po_1', '56641', '44', '25', '37', '5', '190', '150', '160', '150', '170', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '1500', '2', '0', '750', '1420', '50', null, '125', '368', '125', '438', '248', '438', '248', null, 'admin', 'admin', '2021-10-04 15:54:45');
INSERT INTO `po_details` VALUES ('25', 'pod_2', 'po_2', '29494', '13.5', '20', '0', '3', '205', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '5000', '4', '4', '1250', '200', '24', null, '0', '0', '0', '0', '0', '0', '0', null, 'admin', 'admin', '2021-10-05 00:57:09');
INSERT INTO `po_details` VALUES ('26', 'pod_3', 'po_3', '57813', '66', '37', '40', '5', '190', '150', '120', '150', '170', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '5000', '2', '0', '2500', '2100', '62', null, '185', '398', '185', '658', '368', '658', '368', null, 'admin', 'admin', '2021-10-05 14:21:08');
INSERT INTO `po_details` VALUES ('27', 'pod_4', 'po_3', '57813', '68', '42', '40', '3', '190', '160', '', '', '170', 'B Flute,', 'Printed', 'Die Cutting', '2000', '2', '0', '1000', '2240', '66', null, '210', '398', '210', '678', '418', '678', '418', null, 'admin', 'admin', '2021-10-05 14:28:55');
INSERT INTO `po_details` VALUES ('28', 'pod_5', 'po_4', '58747', '35.56', '26.67', '21.59', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '14524', '3', '0', '4841.333333333333', '1284.6000000000001', '58', null, '133.35000000000002', '213.9', '133.35000000000002', '353.6', '264.70000000000005', '353.6', '264.70000000000005', null, 'admin', 'admin', '2021-10-05 17:10:21');
INSERT INTO `po_details` VALUES ('29', 'pod_6', 'po_5', '42495', '64', '31', '20', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '279', '3', '0', '93', '1940', '62', null, '155', '198', '155', '638', '308', '638', '308', null, '9047', 'masum', '2021-10-06 09:49:32');
INSERT INTO `po_details` VALUES ('30', 'pod_7', 'po_5', '42495', '64', '31', '24', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '241', '3', '0', '80.33333333333333', '1940', '66', null, '155', '238', '155', '638', '308', '638', '308', null, '9047', 'masum', '2021-10-06 09:52:28');
INSERT INTO `po_details` VALUES ('31', 'pod_8', 'po_5', '42495', '64', '31', '25', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '253', '3', '0', '84.33333333333333', '1940', '68', null, '155', '248', '155', '638', '308', '638', '308', null, '9047', 'masum', '2021-10-06 09:54:13');
INSERT INTO `po_details` VALUES ('32', 'pod_9', 'po_5', '42495', '48', '31', '24', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '154', '3', '0', '51.333333333333336', '1620', '66', null, '155', '238', '155', '478', '308', '478', '308', null, '9047', 'masum', '2021-10-06 09:56:17');
INSERT INTO `po_details` VALUES ('33', 'pod_10', 'po_6', 'EF/AC-21/3938', '60', '40', '32', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '456', '2', '0', '228', '2040', '58', null, '200', '318', '200', '598', '398', '598', '398', null, '9047', 'masum', '2021-10-06 10:16:03');
INSERT INTO `po_details` VALUES ('34', 'pod_11', 'po_6', 'EF/AC-21/3938', '60', '40', '35', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '228', '2', '0', '114', '2040', '60', null, '200', '348', '200', '598', '398', '598', '398', null, '9047', 'masum', '2021-10-06 10:16:55');
INSERT INTO `po_details` VALUES ('35', 'pod_12', 'po_7', '42028', '31', '26', '28', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '240', '3', '0', '80', '1180', '66', null, '130', '278', '130', '308', '258', '308', '258', null, '9047', 'masum', '2021-10-06 10:54:34');
INSERT INTO `po_details` VALUES ('36', 'pod_13', 'po_7', '42028', '31', '26', '20', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '670', '3', '0', '223.33333333333334', '1180', '56', null, '130', '198', '130', '308', '258', '308', '258', null, '9047', 'masum', '2021-10-06 10:56:36');
INSERT INTO `po_details` VALUES ('37', 'pod_14', 'po_8', '42820', '50', '31', '24', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '72', '3', '0', '24', '1660', '66', null, '155', '238', '155', '498', '308', '498', '308', null, '9047', 'masum', '2021-10-06 11:03:46');
INSERT INTO `po_details` VALUES ('38', 'pod_15', 'po_8', '42820', '50', '31', '28', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '48', '2', '0', '24', '1660', '48', null, '155', '278', '155', '498', '308', '498', '308', null, '9047', 'masum', '2021-10-06 11:05:05');
INSERT INTO `po_details` VALUES ('39', 'pod_16', 'po_8', '42820', '50', '31', '32', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '56', '2', '0', '28', '1660', '52', null, '155', '318', '155', '498', '308', '498', '308', null, '9047', 'masum', '2021-10-06 11:05:55');
INSERT INTO `po_details` VALUES ('40', 'pod_17', 'po_9', '42049', '50', '31', '19', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '120', '3', '0', '40', '1660', '60', null, '155', '188', '155', '498', '308', '498', '308', null, '9047', 'masum', '2021-10-06 11:13:08');
INSERT INTO `po_details` VALUES ('41', 'pod_18', 'po_9', '42049', '50', '31', '22', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '155', '3', '0', '51.666666666666664', '1660', '64', null, '155', '218', '155', '498', '308', '498', '308', null, '9047', 'masum', '2021-10-06 11:14:13');
INSERT INTO `po_details` VALUES ('42', 'pod_19', 'po_9', '42049', '50', '31', '26', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '65', '2', '0', '32.5', '1660', '46', null, '155', '258', '155', '498', '308', '498', '308', null, '9047', 'masum', '2021-10-06 11:15:53');
INSERT INTO `po_details` VALUES ('43', 'pod_20', 'po_10', '42633', '31', '26', '24', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '38', '3', '0', '12.666666666666666', '1180', '60', null, '130', '238', '130', '308', '258', '308', '258', null, '9047', 'masum', '2021-10-06 11:22:59');
INSERT INTO `po_details` VALUES ('44', 'pod_21', 'po_10', '42633', '31', '26', '31', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '38', '2', '0', '19', '1180', '46', null, '130', '308', '130', '308', '258', '308', '258', null, '9047', 'masum', '2021-10-06 11:23:50');
INSERT INTO `po_details` VALUES ('45', 'pod_22', 'po_10', '42633', '31', '26', '35', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', '', 'Non Die Cutting', '38', '2', '0', '19', '1180', '50', null, '130', '348', '130', '308', '258', '308', '258', null, '9047', 'masum', '2021-10-06 11:24:29');
INSERT INTO `po_details` VALUES ('46', 'pod_23', 'po_11', '42083', '37', '28', '39', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '215', '2', '0', '107.5', '1340', '54', null, '140', '388', '140', '368', '278', '368', '278', null, '9047', 'masum', '2021-10-06 12:14:45');
INSERT INTO `po_details` VALUES ('47', 'pod_24', 'po_11', '42083', '37', '28', '44', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', '', 'Non Die Cutting', '158', '2', '0', '79', '1340', '58', null, '140', '438', '140', '368', '278', '368', '278', null, '9047', 'masum', '2021-10-06 12:15:45');
INSERT INTO `po_details` VALUES ('48', 'pod_25', 'po_11', '42083', '37', '28', '52', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '135', '2', '0', '67.5', '1340', '64', null, '140', '518', '140', '368', '278', '368', '278', null, '9047', 'masum', '2021-10-06 12:17:50');
INSERT INTO `po_details` VALUES ('49', 'pod_26', 'po_11', '42083', '37', '28', '47', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '125', '2', '0', '62.5', '1340', '60', null, '140', '468', '140', '368', '278', '368', '278', null, '9047', 'masum', '2021-10-06 12:18:52');
INSERT INTO `po_details` VALUES ('50', 'pod_27', 'po_11', '42083', '37', '28', '56', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '105', '2', '0', '52.5', '1340', '68', null, '140', '558', '140', '368', '278', '368', '278', null, '9047', 'masum', '2021-10-06 12:19:36');
INSERT INTO `po_details` VALUES ('51', 'pod_28', 'po_12', '42761', '19', '26', '0', '3', '180', '160', '', '', '190', 'C Flute,', 'Non Printed', 'Non Die Cutting', '10000', '4', '1', '2500', '260', '32', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-06 13:03:32');
INSERT INTO `po_details` VALUES ('52', 'pod_29', 'po_12', '42761', '25', '33', '0', '3', '180', '160', '', '', '190', 'C Flute,', 'Non Printed', 'Non Die Cutting', '10000', '4', '1', '2500', '330', '42', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-06 13:04:15');
INSERT INTO `po_details` VALUES ('53', 'pod_30', 'po_12', '42761', '14', '32', '0', '3', '180', '160', '', '', '190', 'C Flute,', 'Non Printed', 'Non Die Cutting', '35000', '4', '1', '8750', '320', '24', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-06 13:05:14');
INSERT INTO `po_details` VALUES ('54', 'pod_31', 'po_13', '59278', '44', '34', '33', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '529', '2', '0', '264.5', '1600', '54', null, '170', '328', '170', '438', '338', '438', '338', null, '9047', 'masum', '2021-10-06 14:24:49');
INSERT INTO `po_details` VALUES ('55', 'pod_32', 'po_13', '59278', '44', '27', '30', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '417', '2', '0', '208.5', '1460', '46', null, '135', '298', '135', '438', '268', '438', '268', null, '9047', 'masum', '2021-10-06 14:28:08');
INSERT INTO `po_details` VALUES ('56', 'pod_33', 'po_13', '59278', '44', '25', '37', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '1244', '2', '0', '622', '1420', '50', null, '125', '368', '125', '438', '248', '438', '248', null, '9047', 'masum', '2021-10-06 14:30:16');
INSERT INTO `po_details` VALUES ('57', 'pod_34', 'po_13', '59278', '52', '26', '33', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '1657', '2', '0', '828.5', '1600', '48', null, '130', '328', '130', '518', '258', '518', '258', null, '9047', 'masum', '2021-10-06 14:31:30');
INSERT INTO `po_details` VALUES ('58', 'pod_35', 'po_14', '59291', '39', '29', '39', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '911', '2', '0', '455.5', '1400', '56', null, '145', '388', '145', '388', '288', '388', '288', null, '9047', 'masum', '2021-10-07 09:18:02');
INSERT INTO `po_details` VALUES ('59', 'pod_36', 'po_15', '21/2139', '54.61', '33.02', '34.29', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '1093', '2', '0', '546.5', '1792.6', '54', null, '165.10000000000002', '340.9', '165.10000000000002', '544.1', '328.20000000000005', '544.1', '328.20000000000005', null, '9047', 'masum', '2021-10-07 10:25:59');
INSERT INTO `po_details` VALUES ('60', 'pod_37', 'po_16', '59221', '55.88', '43.18', '38.1', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '117', '2', '0', '58.5', '2021.2', '66', null, '215.9', '379', '215.9', '556.8000000000001', '429.8', '556.8000000000001', '429.8', null, '9047', 'masum', '2021-10-07 10:33:15');
INSERT INTO `po_details` VALUES ('61', 'pod_38', 'po_17', '59295', '47', '46', '43', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '638', '1', '0', '638', '1900', '36', null, '230', '428', '230', '468', '458', '468', '458', null, '9047', 'masum', '2021-10-07 10:45:03');
INSERT INTO `po_details` VALUES ('62', 'pod_39', 'po_18', '41605/809/620', '93.98', '132.08', '0', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Die Cutting', '150', '1', '0', '0', '4561.2', '54', null, '660.4000000000001', '-2', '660.4000000000001', '937.8000000000001', '1318.8000000000002', '937.8000000000001', '1318.8000000000002', null, '9047', 'masum', '2021-10-07 16:09:56');
INSERT INTO `po_details` VALUES ('63', 'pod_40', 'po_18', '41605/809/620', '93.98', '121.92', '0', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Die Cutting', '10000', '0', '0', '0', '4358', '0', null, '0', '0', '0', '937.8000000000001', '1217.2', '937.8000000000001', '1217.2', null, '9047', 'masum', '2021-10-07 16:12:26');
INSERT INTO `po_details` VALUES ('64', 'pod_41', 'po_18', '41605/809/620', '93.98', '111.76', '0', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Die Cutting', '1600', '0', '0', '0', '4154.8', '0', null, '0', '0', '0', '937.8000000000001', '1115.6000000000001', '937.8000000000001', '1115.6000000000001', null, '9047', 'masum', '2021-10-07 16:14:05');
INSERT INTO `po_details` VALUES ('65', 'pod_42', 'po_18', '41605/809/620', '93.98', '106.68', '0', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Die Cutting', '1350', '0', '0', '0', '4053.2000000000007', '0', null, '0', '0', '0', '937.8000000000001', '1064.8000000000002', '937.8000000000001', '1064.8000000000002', null, '9047', 'masum', '2021-10-07 16:15:18');
INSERT INTO `po_details` VALUES ('66', 'pod_43', 'po_19', '41605/809/620', '41', '27', '32.5', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '5400', '2', '0', '2700', '1400', '48', null, '135', '323', '135', '408', '268', '408', '268', null, '9047', 'masum', '2021-10-07 16:23:40');
INSERT INTO `po_details` VALUES ('67', 'pod_44', 'po_19', '41605/809/620', '37', '27', '32.5', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '4420', '2', '0', '2210', '1320', '48', null, '135', '323', '135', '368', '268', '368', '268', null, '9047', 'masum', '2021-10-07 16:24:45');
INSERT INTO `po_details` VALUES ('68', 'pod_45', 'po_19', '41605/809/620', '29', '27', '32.5', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '1000', '2', '0', '500', '1160', '48', null, '135', '323', '135', '288', '268', '288', '268', null, '9047', 'masum', '2021-10-07 16:25:49');
INSERT INTO `po_details` VALUES ('69', 'pod_46', 'po_19', '41605/809/620', '28', '23', '32.5', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '920', '3', '0', '306.6666666666667', '1060', '68', null, '115', '323', '115', '278', '228', '278', '228', null, '9047', 'masum', '2021-10-07 16:26:44');
INSERT INTO `po_details` VALUES ('70', 'pod_47', 'po_19', '41605/809/620', '48', '27', '32.5', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '75', '2', '0', '37.5', '1540', '48', null, '135', '323', '135', '478', '268', '478', '268', null, '9047', 'masum', '2021-10-07 16:27:42');
INSERT INTO `po_details` VALUES ('71', 'pod_48', 'po_19', '41605/809/620', '44', '27', '32.5', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '65', '2', '0', '32.5', '1460', '48', null, '135', '323', '135', '438', '268', '438', '268', null, '9047', 'masum', '2021-10-07 16:28:52');
INSERT INTO `po_details` VALUES ('72', 'pod_49', 'po_20', '1M993010', '40.64', '34.29', '15.24', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '9824', '3', '0', '3274.6666666666665', '1538.6000000000001', '60', null, '171.45', '150.4', '171.45', '404.4', '340.9', '404.4', '340.9', null, '9047', 'masum', '2021-10-07 17:40:50');
INSERT INTO `po_details` VALUES ('73', 'pod_50', 'po_20', '1M993010', '58.42', '30.48', '7.62', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '583', '4', '0', '145.75', '2275.2000000000003', '62', null, '152.4', '74.2', '152.4', '810.8', '302.8', '302.8', '302.8', null, 'admin', 'admin', '2021-10-09 17:00:21');
INSERT INTO `po_details` VALUES ('74', 'pod_51', 'po_20', '1M993010', '58.42', '34.29', '10.16', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '430', '3', '0', '430', '1894.2000000000003', '54', null, '171.45', '99.6', '171.45', '582.2', '340.9', '340.9', '340.9', null, 'admin', 'admin', '2021-10-09 17:01:20');
INSERT INTO `po_details` VALUES ('75', 'pod_52', 'po_20', '1M993010', '58.42', '38.1', '13.97', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '432', '3', '0', '144', '1970.4', '64', null, '190.5', '137.70000000000002', '190.5', '582.2', '379', '582.2', '379', null, '9047', 'masum', '2021-10-07 17:44:57');
INSERT INTO `po_details` VALUES ('76', 'pod_53', 'po_20', '1M993010', '58.42', '44.45', '30.48', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '45', '2', '0', '22.5', '2097.4', '60', null, '222.25', '302.8', '222.25', '582.2', '442.5', '582.2', '442.5', null, '9047', 'masum', '2021-10-07 17:46:24');
INSERT INTO `po_details` VALUES ('77', 'pod_54', 'po_20', '1M993010', '59.69', '38.1', '33.02', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '731', '2', '0', '365.5', '1995.7999999999997', '58', null, '190.5', '328.20000000000005', '190.5', '594.9', '379', '594.9', '379', null, '9047', 'masum', '2021-10-07 17:47:39');
INSERT INTO `po_details` VALUES ('78', 'pod_55', 'po_20', '1M993010', '59.69', '38.1', '16.51', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '300', '3', '0', '100', '1995.7999999999997', '66', null, '190.5', '163.10000000000002', '190.5', '594.9', '379', '594.9', '379', null, '9047', 'masum', '2021-10-07 17:50:26');
INSERT INTO `po_details` VALUES ('79', 'pod_56', 'po_21', 'PE22', '54.5', '36', '30', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Printed', 'Die Cutting', '500', '2', '0', '250', '1850', '54', null, '180', '298', '180', '543', '358', '543', '358', null, '9047', 'masum', '2021-10-09 10:17:55');
INSERT INTO `po_details` VALUES ('80', 'pod_57', 'po_21', 'PE22', '54.5', '36', '20', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Printed', 'Die Cutting', '600', '3', '0', '200', '1850', '68', null, '180', '198', '180', '543', '358', '543', '358', null, '9047', 'masum', '2021-10-09 10:18:38');
INSERT INTO `po_details` VALUES ('81', 'pod_58', 'po_21', 'PE22', '30', '36', '30', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Printed', 'Die Cutting', '300', '2', '0', '150', '1360', '54', null, '180', '298', '180', '298', '358', '298', '358', null, '9047', 'masum', '2021-10-09 10:19:14');
INSERT INTO `po_details` VALUES ('82', 'pod_59', 'po_21', 'PE22', '30', '36', '20', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Printed', 'Die Cutting', '300', '3', '0', '100', '1360', '68', null, '180', '198', '180', '298', '358', '298', '358', null, '9047', 'masum', '2021-10-09 10:21:09');
INSERT INTO `po_details` VALUES ('83', 'pod_60', 'po_22', '41861', '57', '29', '20', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '1500', '3', '0', '500', '1760', '60', null, '145', '198', '145', '568', '288', '568', '288', null, '9047', 'masum', '2021-10-09 11:18:24');
INSERT INTO `po_details` VALUES ('84', 'pod_61', 'po_22', '41861', '57', '29', '21', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '1100', '3', '0', '366.6666666666667', '1760', '60', null, '145', '208', '145', '568', '288', '568', '288', null, '9047', 'masum', '2021-10-09 11:19:42');
INSERT INTO `po_details` VALUES ('85', 'pod_62', 'po_22', '41861', '57', '29', '23', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '50', '3', '0', '16.666666666666668', '1760', '64', null, '145', '228', '145', '568', '288', '568', '288', null, '9047', 'masum', '2021-10-09 11:20:27');
INSERT INTO `po_details` VALUES ('86', 'pod_63', 'po_22', '41861', '34', '22', '32', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '130', '3', '0', '43.333333333333336', '1160', '66', null, '110', '318', '110', '338', '218', '338', '218', null, '9047', 'masum', '2021-10-09 11:21:37');
INSERT INTO `po_details` VALUES ('87', 'pod_64', 'po_22', '41861', '32', '30', '32', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '950', '2', '0', '475', '1280', '50', null, '150', '318', '150', '318', '298', '318', '298', null, '9047', 'masum', '2021-10-09 11:23:00');
INSERT INTO `po_details` VALUES ('88', 'pod_65', 'po_22', '41861', '29', '17', '28', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '260', '3', '0', '86.66666666666667', '960', '54', null, '85', '278', '85', '288', '168', '288', '168', null, '9047', 'masum', '2021-10-09 11:24:10');
INSERT INTO `po_details` VALUES ('89', 'pod_66', 'po_23', '59394', '75', '37', '21.5', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '3000', '2', '0', '1500', '2280', '48', null, '185', '213', '185', '748', '368', '748', '368', null, '9047', 'masum', '2021-10-09 11:33:12');
INSERT INTO `po_details` VALUES ('90', 'pod_67', 'po_23', '59394', '75', '37', '29', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '2000', '2', '0', '1000', '2280', '54', null, '185', '288', '185', '748', '368', '748', '368', null, '9047', 'masum', '2021-10-09 11:34:05');
INSERT INTO `po_details` VALUES ('91', 'pod_68', 'po_24', '59399', '60', '40', '45', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '142', '1', '0', '142', '2040', '36', null, '200', '448', '200', '598', '398', '598', '398', null, '9047', 'masum', '2021-10-09 12:10:37');
INSERT INTO `po_details` VALUES ('92', 'pod_69', 'po_24', '59399', '60', '40', '44', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '57', '2', '0', '28.5', '2040', '68', null, '200', '438', '200', '598', '398', '598', '398', null, '9047', 'masum', '2021-10-09 12:11:45');
INSERT INTO `po_details` VALUES ('93', 'pod_70', 'po_24', '59399', '60', '40', '40', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '18', '2', '0', '9', '2040', '64', null, '200', '398', '200', '598', '398', '598', '398', null, '9047', 'masum', '2021-10-09 12:12:47');
INSERT INTO `po_details` VALUES ('94', 'pod_71', 'po_24', '59399', '60', '40', '55', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '122', '1', '0', '122', '2040', '40', null, '200', '548', '200', '598', '398', '598', '398', null, '9047', 'masum', '2021-10-09 12:13:44');
INSERT INTO `po_details` VALUES ('95', 'pod_72', 'po_24', '59399', '60', '40', '46', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '21', '1', '0', '21', '2040', '36', null, '200', '458', '200', '598', '398', '598', '398', null, '9047', 'masum', '2021-10-09 12:14:40');
INSERT INTO `po_details` VALUES ('96', 'pod_73', 'po_24', '59399', '60', '40', '50', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '120', '1', '0', '120', '2040', '38', null, '200', '498', '200', '598', '398', '598', '398', null, '9047', 'masum', '2021-10-09 12:15:49');
INSERT INTO `po_details` VALUES ('97', 'pod_74', 'po_24', '59399', '60', '40', '53', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '84', '1', '0', '84', '2040', '38', null, '200', '528', '200', '598', '398', '598', '398', null, '9047', 'masum', '2021-10-09 12:16:47');
INSERT INTO `po_details` VALUES ('98', 'pod_75', 'po_23', '59394', '56', '37', '29', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '3000', '2', '0', '1500', '1900', '54', null, '185', '288', '185', '558', '368', '558', '368', null, '9047', 'masum', '2021-10-09 14:52:02');
INSERT INTO `po_details` VALUES ('99', 'pod_76', 'po_23', '59394', '57.5', '36.5', '28.4', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '2000', '2', '0', '1000', '1920', '52', null, '182.5', '282', '182.5', '573', '363', '573', '363', null, '9047', 'masum', '2021-10-09 14:53:50');
INSERT INTO `po_details` VALUES ('100', 'pod_77', 'po_25', '59364, 59354, 59345', '39', '29', '39', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '2323', '2', '0', '1161.5', '1400', '56', null, '145', '388', '145', '388', '288', '388', '288', null, '9047', 'masum', '2021-10-09 15:14:07');
INSERT INTO `po_details` VALUES ('101', 'pod_78', 'po_27', '59380', '52', '27', '27', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '1826', '3', '0', '608.6666666666666', '1620', '66', null, '135', '268', '135', '518', '268', '518', '268', null, '9047', 'masum', '2021-10-09 17:01:02');
INSERT INTO `po_details` VALUES ('102', 'pod_79', 'po_28', '59368', '32', '18', '20', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '1823', '4', '0', '455.75', '1040', '62', null, '90', '198', '90', '318', '178', '318', '178', null, '9047', 'masum', '2021-10-09 17:05:48');
INSERT INTO `po_details` VALUES ('103', 'pod_80', 'po_29', '59373', '47', '27', '16', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '7273', '3', '0', '2424.3333333333335', '1520', '52', null, '135', '158', '135', '468', '268', '468', '268', null, '9047', 'masum', '2021-10-09 17:09:46');
INSERT INTO `po_details` VALUES ('104', 'pod_81', 'po_26', '59421', '61', '41', '30', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '671', '2', '0', '335.5', '2080', '58', null, '205', '298', '205', '608', '408', '608', '408', null, '9047', 'masum', '2021-10-09 17:18:32');
INSERT INTO `po_details` VALUES ('105', 'pod_82', 'po_30', '42556', '38', '28.5', '28.5', '3', '190', '160', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '7152', '2', '0', '3576', '1370', '46', null, '142.5', '283', '142.5', '378', '283', '378', '283', null, '9047', 'masum', '2021-10-09 17:25:55');
INSERT INTO `po_details` VALUES ('106', 'pod_83', 'po_30', '42556', '38', '28', '30', '3', '190', '160', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '3140', '2', '0', '1570', '1360', '48', null, '140', '298', '140', '378', '278', '378', '278', null, '9047', 'masum', '2021-10-09 17:26:51');
INSERT INTO `po_details` VALUES ('107', 'pod_84', 'po_31', '59307', '59.7', '39.7', '39.9', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '43', '2', '0', '21.5', '2028', '64', null, '198.5', '397', '198.5', '595', '395', '595', '395', null, '9047', 'masum', '2021-10-09 17:34:26');
INSERT INTO `po_details` VALUES ('108', 'pod_85', 'po_33', '6N094510', '59.69', '38.1', '33.02', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '999', '2', '0', '499.5', '1995.7999999999997', '58', null, '190.5', '328.20000000000005', '190.5', '594.9', '379', '594.9', '379', null, '9047', 'masum', '2021-10-09 17:57:16');
INSERT INTO `po_details` VALUES ('109', 'pod_86', 'po_34', '1N095711', '59.69', '38.1', '16.51', '5', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '200', '3', '0', '66.66666666666667', '1995.7999999999997', '66', null, '190.5', '163.10000000000002', '190.5', '594.9', '379', '594.9', '379', null, '9047', 'masum', '2021-10-09 18:00:16');
INSERT INTO `po_details` VALUES ('110', 'pod_87', 'po_35', '41620', '72.39', '132.08', '0', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Die Cutting', '230', '0', '0', '0', '4129.400000000001', '0', null, '0', '0', '0', '721.9', '1318.8000000000002', '721.9', '1318.8000000000002', null, '9047', 'masum', '2021-10-10 10:12:13');
INSERT INTO `po_details` VALUES ('111', 'pod_88', 'po_35', '41620', '72.39', '121.92', '0', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Die Cutting', '200', '0', '0', '0', '3926.2', '0', null, '0', '0', '0', '721.9', '1217.2', '721.9', '1217.2', null, '9047', 'masum', '2021-10-10 10:13:30');
INSERT INTO `po_details` VALUES ('112', 'pod_89', 'po_35', '41620', '64.77', '91.44', '0', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Die Cutting', '132', '0', '0', '0', '3164.2', '0', null, '0', '0', '0', '645.6999999999999', '912.4', '645.6999999999999', '912.4', null, '9047', 'masum', '2021-10-10 10:14:51');
INSERT INTO `po_details` VALUES ('113', 'pod_90', 'po_36', '41620', '31', '51', '0', '3', '190', '150', '', '', '190', 'B Flute,', '', 'Non Die Cutting', '300', '4', '1', '75', '510', '52', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-10 10:23:21');
INSERT INTO `po_details` VALUES ('114', 'pod_91', 'po_36', '41620', '31', '52', '0', '3', '190', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '300', '4', '1', '75', '520', '52', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-10 10:24:46');
INSERT INTO `po_details` VALUES ('115', 'pod_92', 'po_36', '41620', '31', '53', '0', '3', '190', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '380', '4', '1', '95', '530', '52', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-10 10:25:23');
INSERT INTO `po_details` VALUES ('116', 'pod_93', 'po_36', '41620', '31', '54', '0', '3', '190', '', '', '150', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '260', '4', '1', '65', '540', '52', null, '0', '0', '0', '0', '0', '0', '0', null, 'admin', 'talhagroup', '2021-10-16 11:53:26');
INSERT INTO `po_details` VALUES ('117', 'pod_94', 'po_36', '41620', '11', '24', '0', '3', '190', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '200', '4', '1', '50', '240', '20', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-10 10:27:04');
INSERT INTO `po_details` VALUES ('118', 'pod_95', 'po_36', '41620', '10.5', '27', '0', '3', '190', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '5000', '4', '1', '1250', '270', '18', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-10 10:27:47');
INSERT INTO `po_details` VALUES ('119', 'pod_96', 'po_37', '41605, 41809, 41620, 39262, 39848', '31', '51', '0', '3', '150', '150', '', '', '150', 'B Flute,', 'Non Printed', 'Non Die Cutting', '8360', '4', '1', '2090', '510', '52', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-10 10:34:26');
INSERT INTO `po_details` VALUES ('120', 'pod_97', 'po_37', '41605, 41809, 41620, 39262, 39848', '31', '52', '0', '3', '150', '150', '', '', '150', 'B Flute,', 'Non Printed', 'Non Die Cutting', '15100', '4', '1', '3775', '520', '52', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-10 10:35:06');
INSERT INTO `po_details` VALUES ('121', 'pod_98', 'po_37', '41605, 41809, 41620, 39262, 39848', '31', '54', '0', '3', '150', '150', '', '', '150', 'B Flute,', 'Non Printed', 'Non Die Cutting', '16600', '4', '1', '4150', '540', '52', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-10 10:35:55');
INSERT INTO `po_details` VALUES ('122', 'pod_99', 'po_37', '41605, 41809, 41620, 39262, 39848', '31', '55', '0', '3', '150', '150', '', '', '150', 'B Flute,', 'Non Printed', 'Non Die Cutting', '5800', '4', '1', '1450', '550', '52', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-10 10:36:30');
INSERT INTO `po_details` VALUES ('123', 'pod_100', 'po_39', '59407', '57.15', '41.91', '33.02', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '1685', '2', '0', '842.5', '2021.2', '60', null, '209.54999999999998', '328.20000000000005', '209.54999999999998', '569.5', '417.09999999999997', '569.5', '417.09999999999997', null, '9047', 'masum', '2021-10-10 14:45:16');
INSERT INTO `po_details` VALUES ('124', 'pod_101', 'po_40', '59322', '50', '45', '40', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '70', '1', '0', '70', '1940', '36', null, '225', '398', '225', '498', '448', '498', '448', null, '9047', 'masum', '2021-10-10 14:57:17');
INSERT INTO `po_details` VALUES ('125', 'pod_102', 'po_40', '59322', '47', '38', '50', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '337', '1', '0', '337', '1740', '36', null, '190', '498', '190', '468', '378', '468', '378', null, '9047', 'masum', '2021-10-10 15:13:56');
INSERT INTO `po_details` VALUES ('126', 'pod_103', 'po_40', '59322', '50', '46', '40', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '142', '1', '0', '142', '1960', '36', null, '230', '398', '230', '498', '458', '498', '458', null, '9047', 'masum', '2021-10-10 15:14:44');
INSERT INTO `po_details` VALUES ('127', 'pod_104', 'po_40', '59322', '50', '35', '54', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '225', '1', '0', '225', '1740', '36', null, '175', '538', '175', '498', '348', '498', '348', null, '9047', 'masum', '2021-10-10 15:15:42');
INSERT INTO `po_details` VALUES ('128', 'pod_105', 'po_40', '59322', '50', '38', '56', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '211', '1', '0', '211', '1800', '38', null, '190', '558', '190', '498', '378', '498', '378', null, '9047', 'masum', '2021-10-10 15:16:36');
INSERT INTO `po_details` VALUES ('129', 'pod_106', 'po_40', '59322', '47', '38', '54', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '211', '1', '0', '211', '1740', '38', null, '190', '538', '190', '468', '378', '468', '378', null, '9047', 'masum', '2021-10-10 15:17:15');
INSERT INTO `po_details` VALUES ('130', 'pod_107', 'po_38', '42629', '25', '27', '0', '3', '190', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '4880', '4', '1', '1220', '270', '42', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-10 16:48:15');
INSERT INTO `po_details` VALUES ('131', 'pod_108', 'po_38', '42629', '12', '23', '0', '0', '190', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '5770', '4', '1', '1442.5', '230', '20', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-10 16:49:01');
INSERT INTO `po_details` VALUES ('132', 'pod_109', 'po_41', '2223', '50.8', '38.1', '30.48', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '500', '2', '0', '250', '1818', '56', null, '190.5', '302.8', '190.5', '506', '379', '506', '379', null, '9047', 'masum', '2021-10-10 17:42:53');
INSERT INTO `po_details` VALUES ('133', 'pod_110', 'po_41', '2223', '60.96', '48.26', '30.48', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '500', '2', '0', '250', '2224.4', '64', null, '241.29999999999998', '302.8', '241.29999999999998', '607.6', '480.59999999999997', '607.6', '480.59999999999997', null, '9047', 'masum', '2021-10-10 17:44:05');
INSERT INTO `po_details` VALUES ('134', 'pod_111', 'po_42', '43055', '54', '35', '29.5', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Die Cutting', '4000', '2', '0', '2000', '1820', '52', null, '175', '293', '175', '538', '348', '538', '348', null, '9047', 'masum', '2021-10-11 09:08:24');
INSERT INTO `po_details` VALUES ('135', 'pod_112', 'po_43', '43102', '54', '35', '29.5', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Die Cutting', '5000', '2', '0', '2500', '1820', '52', null, '175', '293', '175', '538', '348', '538', '348', null, '9047', 'masum', '2021-10-11 10:48:53');
INSERT INTO `po_details` VALUES ('136', 'pod_113', 'po_45', '59246', '24', '23', '28', '3', '190', '160', '', '', '190', 'C Flute,', 'Non Printed', 'Non Die Cutting', '1320', '3', '0', '440', '980', '62', null, '115', '278', '115', '238', '228', '238', '228', null, '9047', 'masum', '2021-10-11 11:55:57');
INSERT INTO `po_details` VALUES ('137', 'pod_114', 'po_44', '59254, 59246', '26', '24', '30', '3', '190', '160', '', '', '190', 'C Flute,', 'Non Printed', 'Non Die Cutting', '2835', '3', '0', '945', '1040', '66', null, '120', '298', '120', '258', '238', '258', '238', null, '9047', 'masum', '2021-10-11 11:57:23');
INSERT INTO `po_details` VALUES ('138', 'pod_115', 'po_46', '43102, 43055', '34', '28', '0', '2', '150', ' 150', '', '', '', 'B Flute,', 'Non Printed', 'Non Die Cutting', '11000', '4', '1', '2750', '280', '56', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-11 12:22:04');
INSERT INTO `po_details` VALUES ('139', 'pod_116', 'po_47', '43102, 43055.', '34', '28', '0', '2', '150', '150', '', '', '', 'B Flute,', 'Non Printed', 'Die Cutting', '11000', '4', '1', '2750', '280', '56', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-11 12:27:01');
INSERT INTO `po_details` VALUES ('140', 'pod_117', 'po_48', '2517', '60.96', '58.42', '33.02', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '2500', '1', '0', '2500', '2427.6', '38', null, '292.1', '328.20000000000005', '292.1', '607.6', '582.2', '607.6', '582.2', null, '9047', 'masum', '2021-10-11 12:51:37');
INSERT INTO `po_details` VALUES ('141', 'pod_118', 'po_49', '42892', '28.5', '19', '30', '3', '190', '160', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '318', '3', '0', '106', '990', '60', null, '95', '298', '95', '283', '188', '283', '188', null, '9047', 'masum', '2021-10-11 14:06:08');
INSERT INTO `po_details` VALUES ('142', 'pod_119', 'po_49', '42892', '28.5', '19', '28.5', '3', '190', '160', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '340', '3', '0', '113.33333333333333', '990', '58', null, '95', '283', '95', '283', '188', '283', '188', null, '9047', 'masum', '2021-10-11 14:07:15');
INSERT INTO `po_details` VALUES ('143', 'pod_120', 'po_49', '42892', '28.5', '19', '26.2', '3', '190', '160', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '270', '3', '0', '90', '990', '56', null, '95', '260', '95', '283', '188', '283', '188', null, '9047', 'masum', '2021-10-11 14:08:06');
INSERT INTO `po_details` VALUES ('144', 'pod_121', 'po_49', '42892', '38', '19', '22.5', '3', '190', '160', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '295', '4', '0', '73.75', '1180', '68', null, '95', '223', '95', '378', '188', '378', '188', null, '9047', 'masum', '2021-10-11 14:09:03');
INSERT INTO `po_details` VALUES ('145', 'pod_122', 'po_49', '42892', '38', '28.5', '14', '3', '190', '160', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '150', '3', '0', '50', '1370', '52', null, '142.5', '138', '142.5', '378', '283', '378', '283', null, '9047', 'masum', '2021-10-11 14:09:56');
INSERT INTO `po_details` VALUES ('146', 'pod_123', 'po_49', '42892', '38', '28.5', '23', '3', '190', '160', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '135', '3', '0', '45', '1370', '62', null, '142.5', '228', '142.5', '378', '283', '378', '283', null, '9047', 'masum', '2021-10-11 14:10:53');
INSERT INTO `po_details` VALUES ('147', 'pod_124', 'po_49', '42892', '38', '28.5', '26.2', '3', '190', '160', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '1135', '3', '0', '378.3333333333333', '1370', '66', null, '142.5', '260', '142.5', '378', '283', '378', '283', null, '9047', 'masum', '2021-10-11 14:12:02');
INSERT INTO `po_details` VALUES ('148', 'pod_125', 'po_50', '42892, 42889', '37.75', '37.75', '22.75', '3', '190', '160', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '590', '2', '0', '295', '1550', '50', null, '188.75', '225.5', '188.75', '375.5', '375.5', '375.5', '375.5', null, '9047', 'masum', '2021-10-11 14:13:28');
INSERT INTO `po_details` VALUES ('149', 'pod_126', 'po_51', '42889', '38', '28', '30', '3', '190', '160', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '125', '2', '0', '62.5', '1360', '48', null, '140', '298', '140', '378', '278', '378', '278', null, '9047', 'masum', '2021-10-11 14:14:43');
INSERT INTO `po_details` VALUES ('150', 'pod_127', 'po_52', '59549', '118', '76', '0', '0', '190', '160', '', '', '190', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '200', '1', '1', '200', '760', '48', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-11 14:22:49');
INSERT INTO `po_details` VALUES ('151', 'pod_128', 'po_53', '59491', '58.7', '24.7', '14.9', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '2000', '4', '0', '500', '1708', '64', null, '123.5', '147', '123.5', '585', '245', '585', '245', null, '9047', 'masum', '2021-10-11 15:05:25');
INSERT INTO `po_details` VALUES ('152', 'pod_129', 'po_53', '59491', '56.2', '37.2', '21.9', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '2000', '2', '0', '1000', '1908', '48', null, '186', '217', '186', '560', '370', '560', '370', null, '9047', 'masum', '2021-10-11 15:08:17');
INSERT INTO `po_details` VALUES ('153', 'pod_130', 'po_54', '59555, 59550, 59477, 59460', '39', '29', '39', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '1167', '2', '0', '583.5', '1400', '56', null, '145', '388', '145', '388', '288', '388', '288', null, '9047', 'masum', '2021-10-12 12:06:39');
INSERT INTO `po_details` VALUES ('154', 'pod_131', 'po_55', '59521, 59525, 59510, 59517, 59492, 59497, 59502, 59506, 59533, 59529', '39', '29', '39', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '865', '2', '0', '432.5', '1400', '56', null, '145', '388', '145', '388', '288', '388', '288', null, '9047', 'masum', '2021-10-12 12:12:15');
INSERT INTO `po_details` VALUES ('155', 'pod_132', 'po_56', '43105', '114', '76', '0', '5', '190', '160', '', '', '190', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '250', '1', '1', '250', '760', '48', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-12 17:02:08');
INSERT INTO `po_details` VALUES ('156', 'pod_133', 'po_58', '59585', '36', '36', '50', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '45', '1', '0', '45', '1480', '36', null, '180', '498', '180', '358', '358', '358', '358', null, '9047', 'masum', '2021-10-13 09:23:22');
INSERT INTO `po_details` VALUES ('157', 'pod_134', 'po_59', '533-32-1012, 533-31-1008', '54', '34', '36', '7', '190', '120', '120', '120', '150', 'B Flute,C Flute,', 'Printed', 'Die Cutting', '120', '2', '0', '60', '1800', '56', null, '170', '358', '170', '538', '338', '538', '338', null, '9047', 'masum', '2021-10-13 09:52:50');
INSERT INTO `po_details` VALUES ('158', 'pod_135', 'po_59', '533-32-1012, 533-31-1008', '57', '46', '35.5', '7', '190', '120', '120', '120', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '760', '2', '0', '380', '2100', '66', null, '230', '353', '230', '568', '458', '568', '458', null, '9047', 'masum', '2021-10-13 09:57:13');
INSERT INTO `po_details` VALUES ('159', 'pod_136', 'po_60', '59608', '38', '29', '29', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '1000', '2', '0', '500', '1380', '48', null, '145', '288', '145', '378', '288', '378', '288', null, '9047', 'masum', '2021-10-13 16:24:06');
INSERT INTO `po_details` VALUES ('160', 'pod_137', 'po_60', '59608', '57.7', '36.7', '28.8', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '2000', '2', '0', '1000', '1928', '54', null, '183.5', '286', '183.5', '575', '365', '575', '365', null, '9047', 'masum', '2021-10-13 16:25:21');
INSERT INTO `po_details` VALUES ('161', 'pod_138', 'po_60', '59608', '56.2', '37.2', '29.4', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '2000', '2', '0', '1000', '1908', '54', null, '186', '292', '186', '560', '370', '560', '370', null, '9047', 'masum', '2021-10-13 16:26:15');
INSERT INTO `po_details` VALUES ('162', 'pod_139', 'po_60', '59608', '58', '37', '22', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '1000', '2', '0', '500', '1940', '48', null, '185', '218', '185', '578', '368', '578', '368', null, '9047', 'masum', '2021-10-13 16:27:44');
INSERT INTO `po_details` VALUES ('163', 'pod_140', 'po_61', '41620 - 1 DALA', '50', '13', '30', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '70', '3', '0', '23.333333333333332', '1300', '52', null, '65', '298', '65', '498', '128', '498', '128', null, '9047', 'masum', '2021-10-13 16:51:26');
INSERT INTO `po_details` VALUES ('164', 'pod_141', 'po_61', '41620 - 1 DALA', '46', '13', '30', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '155', '3', '0', '51.666666666666664', '1220', '52', null, '65', '298', '65', '458', '128', '458', '128', null, '9047', 'masum', '2021-10-13 16:52:20');
INSERT INTO `po_details` VALUES ('165', 'pod_142', 'po_61', '41620 - 1 DALA', '42', '13', '30', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '380', '3', '0', '126.66666666666667', '1140', '52', null, '65', '298', '65', '418', '128', '418', '128', null, '9047', 'masum', '2021-10-13 16:53:04');
INSERT INTO `po_details` VALUES ('166', 'pod_143', 'po_61', '41620 - 1 DALA', '40', '13', '30', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '120', '3', '0', '40', '1100', '52', null, '65', '298', '65', '398', '128', '398', '128', null, '9047', 'masum', '2021-10-13 16:53:43');
INSERT INTO `po_details` VALUES ('167', 'pod_144', 'po_61', '41620 - 1 DALA', '35', '13', '30', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '65', '3', '0', '21.666666666666668', '1000', '52', null, '65', '298', '65', '348', '128', '348', '128', null, '9047', 'masum', '2021-10-13 16:54:26');
INSERT INTO `po_details` VALUES ('168', 'pod_145', 'po_61', '41620 - 1 DALA', '22', '13', '26', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '130', '4', '0', '32.5', '740', '64', null, '65', '258', '65', '218', '128', '218', '128', null, '9047', 'masum', '2021-10-13 16:55:05');
INSERT INTO `po_details` VALUES ('169', 'pod_146', 'po_62', '54-210913-2', '78.4', '39', '22.2', '5', '150', '120', '120', '120', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '5000', '2', '0', '2500', '2388', '50', null, '195', '220', '195', '782', '388', '782', '388', null, '9047', 'masum', '2021-10-13 17:50:16');
INSERT INTO `po_details` VALUES ('170', 'pod_147', 'po_63', '42893', '38', '28.5', '28.5', '3', '190', '', '', '160', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '5917', '2', '0', '2958.5', '1370', '46', null, '142.5', '283', '142.5', '378', '283', '378', '283', null, '9047', 'masum', '2021-10-14 10:07:10');
INSERT INTO `po_details` VALUES ('171', 'pod_148', 'po_63', '42893', '38', '28', '30', '3', '190', '', '', '160', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '4778', '2', '0', '2389', '1360', '48', null, '140', '298', '140', '378', '278', '378', '278', null, '9047', 'masum', '2021-10-14 10:07:51');
INSERT INTO `po_details` VALUES ('172', 'pod_149', 'po_64', '43345', '20.95', '26', '0', '3', '190', '150', '', '', '190', '', 'Non Printed', 'Non Die Cutting', '10000', '4', '1', '2500', '260', '36', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-14 11:46:15');
INSERT INTO `po_details` VALUES ('173', 'pod_150', 'po_65', '43060', '31.75', '24.13', '19.05', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '1512', '3', '0', '504', '1157.6', '52', null, '120.64999999999999', '188.5', '120.64999999999999', '315.5', '239.29999999999998', '315.5', '239.29999999999998', null, '9047', 'masum', '2021-10-14 15:20:22');
INSERT INTO `po_details` VALUES ('174', 'pod_151', 'po_66', '59614, 59626, 59620', '39', '29', '39', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '1254', '2', '0', '627', '1400', '56', null, '145', '388', '145', '388', '288', '388', '288', null, '9047', 'masum', '2021-10-14 16:53:17');
INSERT INTO `po_details` VALUES ('175', 'pod_152', 'po_67', '59656, 59543', '39', '29', '39', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '150', '2', '0', '75', '1400', '56', null, '145', '388', '145', '388', '288', '388', '288', null, '9047', 'masum', '2021-10-14 16:57:27');
INSERT INTO `po_details` VALUES ('176', 'pod_153', 'po_68', '13593', '104', '73', '0', '9', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '110', '0', '0', '0', '3580', '0', null, '0', '0', '0', '1038', '728', '1038', '728', null, '9047', 'masum', '2021-10-14 17:12:05');
INSERT INTO `po_details` VALUES ('177', 'pod_154', 'po_69', '59608', '114', '76', '0', '9', '190', '150', '150', '150', '190', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '500', '0', '0', '0', '3840', '0', null, '0', '0', '0', '1138', '758', '1138', '758', null, '9047', 'masum', '2021-10-14 17:16:11');
INSERT INTO `po_details` VALUES ('178', 'pod_155', 'po_70', '41866', '31', '29', '9', '3', '190', '150', '', '', '190', 'B Flute,', '', 'Non Die Cutting', '330', '4', '0', '82.5', '1240', '62', null, '145', '88', '145', '308', '288', '308', '288', null, '9047', 'masum', '2021-10-14 17:31:30');
INSERT INTO `po_details` VALUES ('179', 'pod_156', 'po_70', '41866', '31', '29', '10', '3', '190', '150', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '410', '4', '0', '102.5', '1240', '64', null, '145', '98', '145', '308', '288', '308', '288', null, '9047', 'masum', '2021-10-14 17:35:45');
INSERT INTO `po_details` VALUES ('180', 'pod_157', 'po_70', '41866', '31', '29', '11', '3', '190', '150', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '355', '4', '0', '88.75', '1240', '64', null, '145', '108', '145', '308', '288', '308', '288', null, '9047', 'masum', '2021-10-14 17:36:27');
INSERT INTO `po_details` VALUES ('181', 'pod_158', 'po_70', '41866', '28', '16', '11.5', '3', '190', '150', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '255', '4', '0', '63.75', '920', '44', null, '80', '113', '80', '278', '158', '278', '158', null, '9047', 'masum', '2021-10-14 17:37:28');
INSERT INTO `po_details` VALUES ('182', 'pod_159', 'po_70', '41866', '31', '15', '13', '3', '190', '150', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '304', '4', '0', '76', '960', '46', null, '75', '128', '75', '308', '148', '308', '148', null, '9047', 'masum', '2021-10-14 17:38:20');
INSERT INTO `po_details` VALUES ('183', 'pod_160', 'po_70', '41866', '31', '15', '15', '3', '190', '150', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '560', '4', '0', '140', '960', '48', null, '75', '148', '75', '308', '148', '308', '148', null, '9047', 'masum', '2021-10-14 17:38:39');
INSERT INTO `po_details` VALUES ('184', 'pod_161', 'po_70', '41866', '31', '15', '16', '3', '190', '150', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '412', '4', '0', '0', '960', '50', null, '75', '158', '75', '308', '148', '148', '148', null, 'admin', 'talhagroup', '2021-10-14 18:07:29');
INSERT INTO `po_details` VALUES ('185', 'pod_162', 'po_70', '41866', '16', '15', '12', '3', '190', '150', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '455', '4', '0', '113.75', '960', '44', null, '75', '118', '75', '308', '148', '308', '148', null, '9047', 'masum', '2021-10-14 17:41:06');
INSERT INTO `po_details` VALUES ('186', 'pod_163', 'po_71', '43195', '38', '28.5', '28.5', '3', '190', '', '', '160', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '7186', '2', '0', '3593', '1370', '46', null, '142.5', '283', '142.5', '378', '283', '378', '283', null, '9047', 'masum', '2021-10-16 09:39:56');
INSERT INTO `po_details` VALUES ('187', 'pod_164', 'po_71', '43195', '38', '28', '30', '3', '190', '', '', '160', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '4350', '2', '0', '2175', '1360', '48', null, '140', '298', '140', '378', '278', '378', '278', null, '9047', 'masum', '2021-10-16 09:40:45');
INSERT INTO `po_details` VALUES ('188', 'pod_165', 'po_72', '43193', '28.5', '19', '30', '3', '190', '', '', '160', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '295', '3', '0', '98.33333333333333', '990', '60', null, '95', '298', '95', '283', '188', '283', '188', null, '9047', 'masum', '2021-10-16 09:48:58');
INSERT INTO `po_details` VALUES ('189', 'pod_166', 'po_72', '43193', '28.5', '19', '28.5', '3', '190', '', '', '160', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '580', '3', '0', '193.33333333333334', '990', '58', null, '95', '283', '95', '283', '188', '283', '188', null, '9047', 'masum', '2021-10-16 09:49:41');
INSERT INTO `po_details` VALUES ('190', 'pod_167', 'po_72', '43193', '28.5', '19', '26.2', '3', '190', '', '', '160', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '200', '3', '0', '66.66666666666667', '990', '56', null, '95', '260', '95', '283', '188', '283', '188', null, '9047', 'masum', '2021-10-16 09:50:00');
INSERT INTO `po_details` VALUES ('191', 'pod_168', 'po_72', '43193', '38', '19', '22.5', '3', '190', '', '', '160', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '245', '4', '0', '61.25', '990', '68', null, '95', '223', '95', '283', '188', '283', '188', null, '9047', 'masum', '2021-10-16 09:50:36');
INSERT INTO `po_details` VALUES ('192', 'pod_169', 'po_72', '43193', '38', '28.5', '14', '3', '190', '', '', '160', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '125', '3', '0', '41.666666666666664', '1370', '52', null, '142.5', '138', '142.5', '378', '283', '378', '283', null, '9047', 'masum', '2021-10-16 09:51:05');
INSERT INTO `po_details` VALUES ('193', 'pod_170', 'po_72', '43193', '37.75', '37.75', '22.75', '3', '190', '', '', '160', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '220', '2', '0', '110', '1550', '50', null, '188.75', '225.5', '188.75', '375.5', '375.5', '375.5', '375.5', null, '9047', 'masum', '2021-10-16 09:52:05');
INSERT INTO `po_details` VALUES ('194', 'pod_171', 'po_72', '43193', '38', '28.5', '23', '3', '190', '', '', '160', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '260', '3', '0', '86.66666666666667', '1370', '62', null, '142.5', '228', '142.5', '378', '283', '378', '283', null, '9047', 'masum', '2021-10-16 09:52:42');
INSERT INTO `po_details` VALUES ('195', 'pod_172', 'po_72', '43193', '38', '28.5', '26.2', '3', '190', '', '', '160', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '1635', '3', '0', '545', '1370', '66', null, '142.5', '260', '142.5', '378', '283', '378', '283', null, '9047', 'masum', '2021-10-16 09:53:12');
INSERT INTO `po_details` VALUES ('196', 'pod_173', 'po_73', '21/2109', '44.45', '38.1', '10.16', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '8200', '3', '0', '2733.3333333333335', '1691.0000000000002', '58', null, '190.5', '99.6', '190.5', '442.5', '379', '442.5', '379', null, '9047', 'masum', '2021-10-16 10:19:52');
INSERT INTO `po_details` VALUES ('197', 'pod_174', 'po_74', '21/2129', '44.45', '38.1', '7.62', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '2500', '3', '0', '833.3333333333334', '1691.0000000000002', '56', null, '190.5', '74.2', '190.5', '442.5', '379', '442.5', '379', null, '9047', 'masum', '2021-10-16 12:59:10');
INSERT INTO `po_details` VALUES ('198', 'pod_175', 'po_75', '21/5587', '60.96', '52.07', '30.48', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '245', '2', '0', '122.5', '2300.6', '66', null, '260.35', '302.8', '260.35', '607.6', '518.7', '607.6', '518.7', null, '9047', 'masum', '2021-10-16 13:07:06');
INSERT INTO `po_details` VALUES ('199', 'pod_176', 'po_76', '312H034A', '76', '59', '14', '5', '190', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '319', '2', '0', '159.5', '2740', '60', null, '295', '138', '295', '758', '588', '758', '588', null, '9047', 'masum', '2021-10-16 14:32:31');
INSERT INTO `po_details` VALUES ('200', 'pod_177', 'po_76', '312H034A', '80', '68', '14', '5', '190', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '3524', '2', '0', '1762', '3000', '66', null, '340', '138', '340', '798', '678', '798', '678', null, '9047', 'masum', '2021-10-16 14:33:14');
INSERT INTO `po_details` VALUES ('201', 'pod_178', 'po_77', '312H034A.', '74', '57', '0', '3', '120', '120', '', '', '120', 'B Flute,', 'Non Printed', 'Non Die Cutting', '638', '2', '1', '319', '570', '60', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-16 14:37:40');
INSERT INTO `po_details` VALUES ('202', 'pod_179', 'po_77', '312H034A.', '78', '66', '0', '3', '120', '120', '', '', '120', 'B Flute,', 'Non Printed', 'Non Die Cutting', '7048', '2', '1', '3524', '660', '64', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-16 14:38:05');
INSERT INTO `po_details` VALUES ('203', 'pod_180', 'po_78', '21/7031', '60.96', '52.07', '30.48', '3', '190', '160', '', '', '190', 'C Flute,', 'Printed', 'Non Die Cutting', '133', '2', '0', '66.5', '2300.6', '66', null, '260.35', '302.8', '260.35', '607.6', '518.7', '607.6', '518.7', null, '9047', 'masum', '2021-10-16 16:42:45');
INSERT INTO `po_details` VALUES ('204', 'pod_181', 'po_79', '59662', '52', '32', '35', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '85', '2', '0', '42.5', '1720', '54', null, '160', '348', '160', '518', '318', '518', '318', null, '9047', 'masum', '2021-10-16 16:49:26');
INSERT INTO `po_details` VALUES ('205', 'pod_182', 'po_79', '59662', '50', '35', '56', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '85', '1', '0', '42.5', '1740', '38', null, '175', '558', '175', '498', '348', '498', '348', null, '9047', 'masum', '2021-10-16 16:49:58');
INSERT INTO `po_details` VALUES ('206', 'pod_183', 'po_79', '59662', '51', '39', '42', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '336', '2', '0', '168', '1840', '66', null, '195', '418', '195', '508', '388', '508', '388', null, '9047', 'masum', '2021-10-16 16:50:22');
INSERT INTO `po_details` VALUES ('207', 'pod_184', 'po_80', '59642', '62', '31', '30', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '126', '2', '0', '63', '1900', '50', null, '155', '298', '155', '618', '308', '618', '308', null, '9047', 'masum', '2021-10-16 16:54:17');
INSERT INTO `po_details` VALUES ('208', 'pod_185', 'po_80', '59642', '62', '31', '32', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '126', '2', '0', '63', '1900', '52', null, '155', '318', '155', '618', '308', '618', '308', null, '9047', 'masum', '2021-10-16 16:54:44');
INSERT INTO `po_details` VALUES ('209', 'pod_186', 'po_80', '59642', '51', '45', '47', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '20', '1', '0', '20', '1960', '38', null, '225', '468', '225', '508', '448', '508', '448', null, '9047', 'masum', '2021-10-16 16:55:11');
INSERT INTO `po_details` VALUES ('210', 'pod_187', 'po_80', '59642', '71', '34', '50', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '40', '2', '0', '20', '2140', '68', null, '170', '498', '170', '708', '338', '708', '338', null, '9047', 'masum', '2021-10-16 16:55:38');
INSERT INTO `po_details` VALUES ('211', 'pod_188', 'po_80', '59642', '47', '36', '52', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '85', '1', '0', '85', '1700', '36', null, '180', '518', '180', '468', '358', '468', '358', null, '9047', 'masum', '2021-10-16 16:56:05');
INSERT INTO `po_details` VALUES ('212', 'pod_189', 'po_80', '59642', '51', '36', '42', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '85', '2', '0', '85', '1700', '64', null, '180', '418', '180', '468', '358', '468', '358', null, '9047', 'masum', '2021-10-16 16:56:35');
INSERT INTO `po_details` VALUES ('213', 'pod_190', 'po_80', '59642', '71', '34', '47', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '40', '2', '0', '20', '2140', '66', null, '170', '468', '170', '708', '338', '708', '338', null, '9047', 'masum', '2021-10-16 16:57:10');
INSERT INTO `po_details` VALUES ('214', 'pod_191', 'po_80', '59642', '60', '40', '40', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '80', '1', '0', '80', '2040', '42', null, '300', '398', '300', '598', '398', '598', '398', null, '9047', 'masum', '2021-10-16 16:57:48');
INSERT INTO `po_details` VALUES ('215', 'pod_192', 'po_80', '59642', '47', '36', '47', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '42', '2', '0', '21', '1700', '68', null, '180', '468', '180', '468', '358', '468', '358', null, '9047', 'masum', '2021-10-16 16:58:10');
INSERT INTO `po_details` VALUES ('216', 'pod_193', 'po_80', '59642', '51', '44', '43', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '76', '1', '0', '76', '1940', '36', null, '220', '428', '220', '508', '438', '508', '438', null, '9047', 'masum', '2021-10-16 16:58:55');
INSERT INTO `po_details` VALUES ('217', 'pod_194', 'po_80', '59642', '71', '34', '55', '5', '150', '150', '150', '150', '150', 'B Flute,C Flute,', 'Printed', 'Non Die Cutting', '60', '1', '0', '60', '2140', '36', null, '170', '548', '170', '708', '338', '708', '338', null, '9047', 'masum', '2021-10-16 16:59:22');
INSERT INTO `po_details` VALUES ('218', 'pod_195', 'po_81', '41624', '51', '31', '0', '0', '150', '150', '', '', '150', 'B Flute,', 'Non Printed', 'Non Die Cutting', '4000', '3', '1', '1333.3333333333333', '310', '62', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-16 17:20:49');
INSERT INTO `po_details` VALUES ('219', 'pod_196', 'po_81', '41624', '52', '31', '0', '0', '150', '150', '', '', '150', 'B Flute,', 'Non Printed', 'Non Die Cutting', '3300', '3', '1', '1100', '310', '64', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-16 17:21:10');
INSERT INTO `po_details` VALUES ('220', 'pod_197', 'po_82', '43336, 43407', '114', '76', '0', '5', '190', '160', '150', '160', '190', 'B Flute,C Flute,', 'Non Printed', 'Non Die Cutting', '750', '0', '0', '0', '3840', '0', null, '0', '0', '0', '1138', '758', '1138', '758', null, '9047', 'masum', '2021-10-16 17:33:33');
INSERT INTO `po_details` VALUES ('221', 'pod_198', 'po_85', '43195.', '27.5', '36.5', '0', '3', '190', '160', '', '', '190', 'B Flute,', 'Printed', 'Non Die Cutting', '8000', '4', '1', '2000', '365', '46', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-17 09:36:34');
INSERT INTO `po_details` VALUES ('222', 'pod_199', 'po_86', '43193,', '99.06', '106.68', '0', '3', '190', '160', '', '', '190', 'B Flute,', 'Non Printed', 'Die Cutting', '125', '1', '1', '125', '1066.8000000000002', '42', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-17 09:42:18');
INSERT INTO `po_details` VALUES ('223', 'pod_200', 'po_86', '43193,', '119.38', '68.58', '0', '3', '190', '160', '', '', '190', 'B Flute,', 'Non Printed', 'Die Cutting', '450', '1', '1', '450', '685.8', '50', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-17 09:43:15');
INSERT INTO `po_details` VALUES ('224', 'pod_201', 'po_87', '13354, 13355, 13529', '13', '18.25', '0', '3', '190', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '22987', '4', '1', '5746.75', '182.5', '22', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-17 10:06:00');
INSERT INTO `po_details` VALUES ('225', 'pod_202', 'po_87', '13354, 13355, 13529', '26.25', '27.75', '0', '3', '190', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '16430', '4', '1', '4107.5', '277.5', '44', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-17 10:12:14');
INSERT INTO `po_details` VALUES ('226', 'pod_203', 'po_88', '43351', '50', '21.5', '0', '3', '180', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '3200', '3', '1', '1066.6666666666667', '215', '62', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-17 11:04:00');
INSERT INTO `po_details` VALUES ('227', 'pod_204', 'po_88', '43351', '47', '21.5', '0', '3', '180', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '2700', '3', '1', '900', '215', '58', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-17 11:05:24');
INSERT INTO `po_details` VALUES ('228', 'pod_205', 'po_88', '43351', '56.3', '21.5', '0', '3', '180', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '1800', '3', '1', '600', '215', '70', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-17 11:06:55');
INSERT INTO `po_details` VALUES ('229', 'pod_206', 'po_88', '43351', '63.3', '21.5', '0', '3', '180', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '250', '2', '1', '125', '215', '52', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-17 11:08:30');
INSERT INTO `po_details` VALUES ('230', 'pod_207', 'po_88', '43351', '27.75', '21.5', '0', '3', '180', '150', '', '', '190', 'B Flute,', 'Non Printed', 'Non Die Cutting', '5200', '4', '1', '1300', '215', '46', null, '0', '0', '0', '0', '0', '0', '0', null, '9047', 'masum', '2021-10-17 11:10:11');

-- ----------------------------
-- Table structure for `process_name`
-- ----------------------------
DROP TABLE IF EXISTS `process_name`;
CREATE TABLE `process_name` (
  `row_id` int(10) DEFAULT NULL,
  `process_id` varchar(15) NOT NULL,
  `process_name` varchar(100) DEFAULT NULL,
  `process_route` varchar(400) DEFAULT NULL,
  `description_of_process` varchar(250) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of process_name
-- ----------------------------
INSERT INTO `process_name` VALUES ('1', 'proc_1', 'Corrugation', null, 'Board Making', 'iftekhar', 'iftekhar', '2021-06-14 21:11:21');
INSERT INTO `process_name` VALUES ('2', 'proc_2', 'Printing & Slotting', null, 'Flexo & Screen and Non Print', 'iftekhar', 'iftekhar', '2021-09-26 16:10:33');
INSERT INTO `process_name` VALUES ('3', 'proc_3', 'Cutting Creasing ', null, 'For Stiffiner', 'iftekhar', 'iftekhar', '2021-09-26 16:10:51');
INSERT INTO `process_name` VALUES ('4', 'proc_4', 'Die Cutting ', null, '	\r\nFor Complex Board', 'iftekhar', 'iftekhar', '2021-09-26 16:11:07');
INSERT INTO `process_name` VALUES ('5', 'proc_5', 'Manual Slotting ', null, 'Slotting', 'iftekhar', 'iftekhar', '2021-09-26 16:11:34');
INSERT INTO `process_name` VALUES ('6', 'proc_6', 'Folding & Gluing ', null, 'Pasting & Binding', 'iftekhar', 'iftekhar', '2021-09-26 16:11:52');
INSERT INTO `process_name` VALUES ('7', 'proc_7', 'Delivery', null, 'Delivery to Customer', 'iftekhar', 'iftekhar', '2021-09-26 16:12:13');

-- ----------------------------
-- Table structure for `travel_card_details`
-- ----------------------------
DROP TABLE IF EXISTS `travel_card_details`;
CREATE TABLE `travel_card_details` (
  `row_id` int(10) NOT NULL AUTO_INCREMENT,
  `travel_card_creation_date` varchar(15) NOT NULL,
  `travel_card_id` varchar(15) NOT NULL,
  `po_id` varchar(100) DEFAULT NULL,
  `po_details_id` varchar(30) DEFAULT NULL,
  `liner_consumption_calc` double DEFAULT NULL,
  `media_consumption_calc` double DEFAULT NULL,
  `sqm_consumption_calc` double DEFAULT NULL,
  `total_consumption` double DEFAULT NULL,
  `process_id` varchar(30) DEFAULT NULL,
  `process_name` varchar(50) DEFAULT NULL,
  `before_process_quantity` varchar(30) DEFAULT NULL,
  `process_quantity` varchar(30) DEFAULT NULL,
  `actual_ratio` double DEFAULT NULL,
  `actual_roll_size` double DEFAULT NULL,
  `process_wastage` varchar(30) DEFAULT NULL,
  `current_state` varchar(30) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_card_details
-- ----------------------------
INSERT INTO `travel_card_details` VALUES ('5', '05-10-2021', 'ZZALTC_5', 'po_4', 'pod_5', '3481.59', '2088.96', '9162.09', '5570.55', 'proc_1', 'Corrugation', '', '14524', '3', '58', null, null, '200035', 'mijan', '2021-10-12 12:00:54');
INSERT INTO `travel_card_details` VALUES ('8', '06-10-2021', 'ZZALTC_8', 'po_5', 'pod_8', '107.38', '163.19', '282.58', '270.57', 'proc_7', 'Delivery', '253', '253', '3', '68', null, null, '3534', 'mahfuz', '2021-10-12 17:44:42');
INSERT INTO `travel_card_details` VALUES ('9', '06-10-2021', 'ZZALTC_9', 'po_5', 'pod_9', '52.98', '80.51', '139.41', '133.48', 'proc_7', 'Delivery', '154', '154', '3', '66', null, null, '3534', 'mahfuz', '2021-10-12 17:44:07');
INSERT INTO `travel_card_details` VALUES ('10', '06-10-2021', 'ZZALTC_10', 'po_6', 'pod_10', '260.38', '156.23', '685.21', '416.61', 'proc_1', 'Corrugation', '', '456', '2', '62', null, null, '5455', 'rejaulnc', '2021-10-06 19:13:10');
INSERT INTO `travel_card_details` VALUES ('11', '06-10-2021', 'ZZALTC_11', 'po_6', 'pod_11', '134.68', '80.81', '354.42', '215.49', 'proc_1', 'Corrugation', '', '228', '2', '62', null, null, '5455', 'rejaulnc', '2021-10-06 19:11:45');
INSERT INTO `travel_card_details` VALUES ('12', '06-10-2021', 'ZZALTC_12', 'po_7', 'pod_12', '47.48', '91.39', '158.25', '138.87', 'proc_7', 'Delivery', '240', '240', '3', '66', null, null, '3534', 'mahfuz', '2021-10-13 16:26:55');
INSERT INTO `travel_card_details` VALUES ('13', '06-10-2021', 'ZZALTC_13', 'po_7', 'pod_13', '112.45', '216.48', '374.85', '328.93', 'proc_1', 'Corrugation', '', '670', '3', '56', null, null, '306020', 'rejowan', '2021-10-10 11:40:45');
INSERT INTO `travel_card_details` VALUES ('14', '06-10-2021', 'ZZALTC_14', 'po_8', 'pod_14', '20.04', '38.57', '66.79', '58.61', 'proc_7', 'Delivery', '72', '72', '3', '66', null, null, '3534', 'mahfuz', '2021-10-16 17:37:56');
INSERT INTO `travel_card_details` VALUES ('15', '06-10-2021', 'ZZALTC_15', 'po_8', 'pod_15', '14.57', '28.05', '48.57', '42.62', 'proc_7', 'Delivery', '48', '48', '2', '48', null, null, '3534', 'mahfuz', '2021-10-16 17:27:17');
INSERT INTO `travel_card_details` VALUES ('16', '06-10-2021', 'ZZALTC_16', 'po_8', 'pod_16', '18.42', '35.45', '61.39', '53.87', 'proc_7', 'Delivery', '56', '56', '2', '52', null, null, '3534', 'mahfuz', '2021-10-16 17:27:02');
INSERT INTO `travel_card_details` VALUES ('17', '06-10-2021', 'ZZALTC_17', 'po_9', 'pod_17', '30.36', '58.44', '101.19', '88.8', 'proc_7', 'Delivery', '120', '120', '3', '60', null, null, '3534', 'mahfuz', '2021-10-13 16:28:12');
INSERT INTO `travel_card_details` VALUES ('18', '06-10-2021', 'ZZALTC_18', 'po_9', 'pod_18', '41.83', '80.52', '139.42', '122.34', 'proc_7', 'Delivery', '155', '155', '3', '64', null, null, '3534', 'mahfuz', '2021-10-13 16:29:10');
INSERT INTO `travel_card_details` VALUES ('19', '06-10-2021', 'ZZALTC_19', 'po_9', 'pod_19', '18.91', '36.4', '63.04', '55.31', 'proc_7', 'Delivery', '65', '65', '2', '46', null, null, '3534', 'mahfuz', '2021-10-13 16:28:42');
INSERT INTO `travel_card_details` VALUES ('23', '', 'ZZALTC_20', 'po_11', 'pod_23', '59.27', '114.1', '197.58', '173.38', 'proc_3', 'Cutting Creasing ', '215', '38', '2', '54', null, null, '4205', 'golam', '2021-10-16 15:35:39');
INSERT INTO `travel_card_details` VALUES ('24', '', 'ZZALTC_21', 'po_11', 'pod_24', '46.79', '90.06', '155.95', '136.85', 'proc_1', 'Corrugation', '', '158', '2', '66', null, null, '5455', 'rejaulnc', '2021-10-07 15:29:56');
INSERT INTO `travel_card_details` VALUES ('25', '', 'ZZALTC_22', 'po_11', 'pod_25', '44.11', '84.91', '147.04', '129.02', 'proc_1', 'Corrugation', '', '135', '2', '64', null, null, '5989', 'shahin', '2021-10-07 10:21:35');
INSERT INTO `travel_card_details` VALUES ('26', '', 'ZZALTC_23', 'po_11', 'pod_26', '38.29', '73.71', '127.64', '112', 'proc_1', 'Corrugation', '', '125', '2', '64', null, null, '5989', 'shahin', '2021-10-07 10:22:39');
INSERT INTO `travel_card_details` VALUES ('27', '', 'ZZALTC_24', 'po_11', 'pod_27', '36.45', '70.17', '121.51', '106.62', 'proc_1', 'Corrugation', '', '105', '2', '68', null, null, '306020', 'rejowan', '2021-10-12 13:55:26');
INSERT INTO `travel_card_details` VALUES ('28', '', 'ZZALTC_25', 'po_12', 'pod_28', '205.25', '122.57', '528.32', '327.82', 'proc_1', 'Corrugation', '', '10000', '4', '32', null, null, '306020', 'rejowan', '2021-10-12 14:00:43');
INSERT INTO `travel_card_details` VALUES ('29', '', 'ZZALTC_26', 'po_12', 'pod_29', '341.92', '204.19', '880.11', '546.11', 'proc_1', 'Corrugation', '', '10000', '4', '42', null, null, '306020', 'rejowan', '2021-10-12 14:01:13');
INSERT INTO `travel_card_details` VALUES ('30', '', 'ZZALTC_27', 'po_12', 'pod_30', '663.12', '396', '1706.88', '1059.12', 'proc_7', 'Delivery', '35000', '35000', '4', '24', null, null, '3534', 'mahfuz', '2021-10-10 12:38:55');
INSERT INTO `travel_card_details` VALUES ('31', '06-10-2021', 'ZZALTC_28', 'po_13', 'pod_31', '174.14', '335.22', '580.46', '509.35', 'proc_7', 'Delivery', '296', '85', '2', '54', null, null, '3534', 'mahfuz', '2021-10-10 16:20:33');
INSERT INTO `travel_card_details` VALUES ('32', '06-10-2021', 'ZZALTC_29', 'po_13', 'pod_32', '106.7', '205.4', '355.67', '312.1', 'proc_1', 'Corrugation', '', '417', '2', '46', null, null, '306020', 'rejowan', '2021-10-12 14:02:35');
INSERT INTO `travel_card_details` VALUES ('33', '06-10-2021', 'ZZALTC_30', 'po_13', 'pod_33', '336.51', '647.79', '1121.71', '984.3', 'proc_2', 'Printing & Slotting', '1244', '2480', '2', '50', null, null, '297', 'subash', '2021-10-10 12:54:16');
INSERT INTO `travel_card_details` VALUES ('34', '06-10-2021', 'ZZALTC_31', 'po_13', 'pod_34', '484.85', '933.34', '1616.17', '1418.19', 'proc_1', 'Corrugation', '', '1657', '2', '48', null, null, '306020', 'rejowan', '2021-10-12 14:03:34');
INSERT INTO `travel_card_details` VALUES ('35', '', 'ZZALTC_32', 'po_14', 'pod_35', '272.12', '523.83', '907.06', '795.95', 'proc_7', 'Delivery', '911', '1551', '2', '56', null, null, '3534', 'mahfuz', '2021-10-12 15:09:10');
INSERT INTO `travel_card_details` VALUES ('36', '', 'ZZALTC_33', 'po_15', 'pod_36', '510.6', '306.36', '1343.7', '816.97', 'proc_1', 'Corrugation', '', '1093', '2', '54', null, null, '306020', 'rejowan', '2021-10-12 14:06:11');
INSERT INTO `travel_card_details` VALUES ('37', '', 'ZZALTC_34', 'po_16', 'pod_37', '59.47', '114.47', '198.22', '173.94', 'proc_7', 'Delivery', '234', '117', '2', '66', null, null, '3534', 'mahfuz', '2021-10-13 17:02:49');
INSERT INTO `travel_card_details` VALUES ('38', '07-10-2021', 'ZZALTC_35', 'po_17', 'pod_38', '332.53', '640.12', '1108.44', '972.65', 'proc_7', 'Delivery', '36', '36', '1', '36', null, null, '3534', 'mahfuz', '2021-10-13 17:04:55');
INSERT INTO `travel_card_details` VALUES ('39', '07-10-2021', 'ZZALTC_36', 'po_18', 'pod_39', '0', '0', '0', '0', 'proc_1', 'Corrugation', '', '150', '1', '52', null, null, '5455', 'rejaulnc', '2021-10-13 17:44:10');
INSERT INTO `travel_card_details` VALUES ('40', '07-10-2021', 'ZZALTC_37', 'po_18', 'pod_40', '0', '0', '0', '0', 'proc_4', 'Die Cutting ', '10000', '10002', '0', '0', null, null, '306186', 'akther', '2021-10-11 10:40:22');
INSERT INTO `travel_card_details` VALUES ('41', '07-10-2021', 'ZZALTC_38', 'po_18', 'pod_41', '0', '0', '0', '0', 'proc_4', 'Die Cutting ', '1600', '1600', '0', '0', null, null, '306186', 'akther', '2021-10-16 16:06:55');
INSERT INTO `travel_card_details` VALUES ('42', '07-10-2021', 'ZZALTC_39', 'po_18', 'pod_42', '0', '0', '0', '0', 'proc_4', 'Die Cutting ', '1350', '1325', '0', '0', null, null, '306186', 'akther', '2021-10-13 17:34:03');
INSERT INTO `travel_card_details` VALUES ('43', '07-10-2021', 'ZZALTC_40', 'po_19', 'pod_43', '1382.57', '2661.45', '4608.58', '4044.03', 'proc_1', 'Corrugation', '', '5400', '2', '48', null, null, '306020', 'rejowan', '2021-10-12 14:13:31');
INSERT INTO `travel_card_details` VALUES ('44', '07-10-2021', 'ZZALTC_41', 'po_19', 'pod_44', '1067', '2053.97', '3556.65', '3120.96', 'proc_7', 'Delivery', '4425', '695', '2', '48', null, null, '3534', 'mahfuz', '2021-10-16 17:37:34');
INSERT INTO `travel_card_details` VALUES ('45', '07-10-2021', 'ZZALTC_42', 'po_19', 'pod_45', '212.14', '408.37', '707.14', '620.51', 'proc_7', 'Delivery', '1000', '1000', '2', '48', null, null, '3534', 'mahfuz', '2021-10-16 12:54:26');
INSERT INTO `travel_card_details` VALUES ('46', '07-10-2021', 'ZZALTC_43', 'po_19', 'pod_46', '168.44', '324.24', '561.46', '492.68', 'proc_1', 'Corrugation', '', '1840', '3', '54', null, null, '5455', 'rejaulnc', '2021-10-12 12:33:28');
INSERT INTO `travel_card_details` VALUES ('47', '07-10-2021', 'ZZALTC_44', 'po_19', 'pod_47', '21.12', '40.66', '70.41', '61.78', 'proc_1', 'Corrugation', '', '75', '2', '48', null, null, '306020', 'rejowan', '2021-10-12 14:17:18');
INSERT INTO `travel_card_details` VALUES ('48', '07-10-2021', 'ZZALTC_45', 'po_19', 'pod_48', '17.36', '33.41', '57.85', '50.76', 'proc_1', 'Corrugation', '', '65', '2', '48', null, null, '306020', 'rejowan', '2021-10-12 14:17:58');
INSERT INTO `travel_card_details` VALUES ('49', '', 'ZZALTC_46', 'po_5', 'pod_6', '107.97', '164.08', '284.13', '272.05', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-07 17:04:21');
INSERT INTO `travel_card_details` VALUES ('50', '', 'ZZALTC_47', 'po_5', 'pod_7', '99.28', '150.88', '261.26', '250.16', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-07 17:04:28');
INSERT INTO `travel_card_details` VALUES ('51', '07-10-2021', 'ZZALTC_48', 'po_20', 'pod_49', '2917.84', '4434.35', '7678.52', '7352.19', 'proc_1', 'Corrugation', '', '9824', '3', '60', null, null, '306020', 'rejowan', '2021-10-12 14:21:39');
INSERT INTO `travel_card_details` VALUES ('52', '07-10-2021', 'ZZALTC_49', 'po_20', 'pod_50', '198.44', '301.58', '522.22', '500.03', 'proc_1', 'Corrugation', '', '583', '4', '62', null, null, '306020', 'rejowan', '2021-10-12 14:22:44');
INSERT INTO `travel_card_details` VALUES ('53', '07-10-2021', 'ZZALTC_50', 'po_20', 'pod_51', '3270.43', '4970.19', '8606.4', '8240.62', 'proc_1', 'Corrugation', '', '430', '3', '54', null, null, '306020', 'rejowan', '2021-10-12 14:23:19');
INSERT INTO `travel_card_details` VALUES ('54', '07-10-2021', 'ZZALTC_51', 'po_20', 'pod_52', '175.27', '266.37', '461.24', '441.64', 'proc_1', 'Corrugation', '', '432', '3', '64', null, null, '306020', 'rejowan', '2021-10-12 14:33:32');
INSERT INTO `travel_card_details` VALUES ('55', '07-10-2021', 'ZZALTC_52', 'po_20', 'pod_53', '27.33', '41.53', '71.92', '68.86', 'proc_1', 'Corrugation', '', '45', '2', '60', null, null, '306020', 'rejowan', '2021-10-12 14:34:02');
INSERT INTO `travel_card_details` VALUES ('56', '07-10-2021', 'ZZALTC_53', 'po_20', 'pod_54', '408.37', '620.61', '1074.65', '1028.98', 'proc_1', 'Corrugation', '', '731', '2', '58', null, null, '306020', 'rejowan', '2021-10-12 14:34:45');
INSERT INTO `travel_card_details` VALUES ('57', '07-10-2021', 'ZZALTC_54', 'po_20', 'pod_55', '127.14', '193.22', '334.58', '320.36', 'proc_7', 'Delivery', '300', '300', '3', '66', null, null, '3534', 'mahfuz', '2021-10-13 16:27:34');
INSERT INTO `travel_card_details` VALUES ('58', '09-10-2021', 'ZZALTC_55', 'po_21', 'pod_56', '241.06', '366.35', '634.37', '607.4', 'proc_1', 'Corrugation', '', '500', '2', '54', null, null, '200035', 'mijan', '2021-10-12 14:37:32');
INSERT INTO `travel_card_details` VALUES ('59', '09-10-2021', 'ZZALTC_56', 'po_21', 'pod_57', '242.84', '369.06', '639.06', '611.9', 'proc_1', 'Corrugation', '', '600', '3', '68', null, null, '200035', 'mijan', '2021-10-12 14:38:00');
INSERT INTO `travel_card_details` VALUES ('60', '09-10-2021', 'ZZALTC_57', 'po_21', 'pod_59', '89.26', '135.65', '234.9', '224.92', 'proc_1', 'Corrugation', '', '300', '3', '68', null, null, '200035', 'mijan', '2021-10-12 14:38:48');
INSERT INTO `travel_card_details` VALUES ('61', '09-10-2021', 'ZZALTC_58', 'po_23', 'pod_66', '1584.47', '950.68', '4169.66', '2535.16', 'proc_1', 'Corrugation', '', '3000', '2', '48', null, null, '200035', 'mijan', '2021-10-12 14:40:21');
INSERT INTO `travel_card_details` VALUES ('62', '09-10-2021', 'ZZALTC_59', 'po_23', 'pod_67', '1188.35', '713.01', '3127.25', '1901.37', 'proc_1', 'Corrugation', '', '2000', '2', '54', null, null, '200035', 'mijan', '2021-10-12 14:41:04');
INSERT INTO `travel_card_details` VALUES ('63', '09-10-2021', 'ZZALTC_60', 'po_22', 'pod_60', '402.34', '774.5', '1341.12', '1176.83', 'proc_1', 'Corrugation', '', '1500', '3', '60', null, null, '200035', 'mijan', '2021-10-12 14:42:37');
INSERT INTO `travel_card_details` VALUES ('64', '09-10-2021', 'ZZALTC_61', 'po_22', 'pod_61', '295.05', '567.96', '983.49', '863.01', 'proc_1', 'Corrugation', '', '1100', '3', '60', null, null, '200035', 'mijan', '2021-10-12 14:43:11');
INSERT INTO `travel_card_details` VALUES ('65', '09-10-2021', 'ZZALTC_62', 'po_22', 'pod_62', '14.31', '27.54', '47.68', '41.84', 'proc_1', 'Corrugation', '', '50', '3', '64', null, null, '200035', 'mijan', '2021-10-12 14:43:41');
INSERT INTO `travel_card_details` VALUES ('66', '09-10-2021', 'ZZALTC_63', 'po_22', 'pod_63', '25.28', '48.66', '84.27', '73.94', 'proc_1', 'Corrugation', '', '130', '3', '66', null, null, '200035', 'mijan', '2021-10-12 14:44:46');
INSERT INTO `travel_card_details` VALUES ('67', '09-10-2021', 'ZZALTC_64', 'po_22', 'pod_64', '231.65', '445.92', '772.16', '677.57', 'proc_1', 'Corrugation', '', '950', '2', '50', null, null, '200035', 'mijan', '2021-10-12 14:45:17');
INSERT INTO `travel_card_details` VALUES ('68', '09-10-2021', 'ZZALTC_65', 'po_22', 'pod_65', '34.24', '65.9', '114.12', '100.14', 'proc_7', 'Delivery', '260', '260', '3', '54', null, null, '3534', 'mahfuz', '2021-10-12 15:41:25');
INSERT INTO `travel_card_details` VALUES ('69', '09-10-2021', 'ZZALTC_66', 'po_24', 'pod_68', '79.47', '152.97', '264.88', '232.44', 'proc_7', 'Delivery', '284', '142', '1', '36', null, null, '3534', 'mahfuz', '2021-10-13 17:02:25');
INSERT INTO `travel_card_details` VALUES ('70', '09-10-2021', 'ZZALTC_67', 'po_24', 'pod_69', '30.13', '57.99', '100.42', '88.12', 'proc_7', 'Delivery', '57', '57', '2', '68', null, null, '3534', 'mahfuz', '2021-10-12 17:00:10');
INSERT INTO `travel_card_details` VALUES ('71', '09-10-2021', 'ZZALTC_68', 'po_24', 'pod_70', '8.95', '17.24', '29.85', '26.19', 'proc_7', 'Delivery', '18', '18', '2', '64', null, null, '3534', 'mahfuz', '2021-10-12 16:59:36');
INSERT INTO `travel_card_details` VALUES ('72', '09-10-2021', 'ZZALTC_69', 'po_24', 'pod_71', '75.86', '146.03', '252.86', '221.89', 'proc_7', 'Delivery', '122', '122', '1', '40', null, null, '3534', 'mahfuz', '2021-10-15 16:42:37');
INSERT INTO `travel_card_details` VALUES ('73', '09-10-2021', 'ZZALTC_70', 'po_24', 'pod_72', '11.75', '22.62', '39.17', '34.37', 'proc_7', 'Delivery', '21', '21', '1', '36', null, null, '3534', 'mahfuz', '2021-10-12 17:00:43');
INSERT INTO `travel_card_details` VALUES ('74', '09-10-2021', 'ZZALTC_71', 'po_24', 'pod_73', '70.88', '136.45', '236.28', '207.34', 'proc_7', 'Delivery', '240', '120', '1', '38', null, null, '3534', 'mahfuz', '2021-10-13 17:01:53');
INSERT INTO `travel_card_details` VALUES ('75', '09-10-2021', 'ZZALTC_72', 'po_24', 'pod_74', '49.62', '95.52', '165.4', '145.14', 'proc_1', 'Corrugation', '', '84', '1', '38', null, null, '200035', 'mijan', '2021-10-12 14:51:30');
INSERT INTO `travel_card_details` VALUES ('76', '', 'ZZALTC_73', 'po_23', 'pod_75', '1485.44', '891.27', '3909.06', '2376.71', 'proc_1', 'Corrugation', '', '3000', '2', '54', null, null, '200035', 'mijan', '2021-10-12 14:53:08');
INSERT INTO `travel_card_details` VALUES ('77', '', 'ZZALTC_74', 'po_23', 'pod_76', '963.66', '578.19', '2535.94', '1541.85', 'proc_1', 'Corrugation', '', '2000', '2', '52', null, null, '200035', 'mijan', '2021-10-12 14:55:00');
INSERT INTO `travel_card_details` VALUES ('78', '', 'ZZALTC_75', 'po_25', 'pod_77', '693.89', '1335.74', '2312.96', '2029.63', 'proc_1', 'Corrugation', '', '2323', '2', '56', null, null, '200035', 'mijan', '2021-10-12 14:56:09');
INSERT INTO `travel_card_details` VALUES ('79', '09-10-2021', 'ZZALTC_76', 'po_27', 'pod_78', '628.14', '376.88', '1653', '1005.02', 'proc_1', 'Corrugation', '', '1826', '3', '66', null, null, '200035', 'mijan', '2021-10-16 11:13:17');
INSERT INTO `travel_card_details` VALUES ('80', '09-10-2021', 'ZZALTC_77', 'po_28', 'pod_79', '283.64', '170.18', '746.42', '453.83', 'proc_1', 'Corrugation', '', '1823', '4', '62', null, null, '200035', 'mijan', '2021-10-16 11:14:29');
INSERT INTO `travel_card_details` VALUES ('81', '09-10-2021', 'ZZALTC_78', 'po_29', 'pod_80', '1849.51', '1109.71', '4867.13', '2959.22', 'proc_1', 'Corrugation', '', '7273', '3', '52', null, null, '200035', 'mijan', '2021-10-16 11:15:25');
INSERT INTO `travel_card_details` VALUES ('82', '09-10-2021', 'ZZALTC_79', 'po_26', 'pod_81', '390.66', '593.7', '1028.06', '984.37', 'proc_1', 'Corrugation', '', '671', '2', '58', null, null, '200035', 'mijan', '2021-10-16 11:17:53');
INSERT INTO `travel_card_details` VALUES ('83', '09-10-2021', 'ZZALTC_80', 'po_30', 'pod_82', '2175.17', '1305.1', '5724.13', '3480.27', 'proc_7', 'Delivery', '7159', '8514', '2', '46', null, null, '3534', 'mahfuz', '2021-10-16 12:57:47');
INSERT INTO `travel_card_details` VALUES ('84', '09-10-2021', 'ZZALTC_81', 'po_30', 'pod_83', '989.23', '593.54', '2603.24', '1582.77', 'proc_1', 'Corrugation', '', '3140', '2', '48', null, null, '200035', 'mijan', '2021-10-12 18:22:10');
INSERT INTO `travel_card_details` VALUES ('85', '09-10-2021', 'ZZALTC_82', 'po_31', 'pod_84', '21.26', '40.93', '70.88', '62.2', 'proc_1', 'Corrugation', '', '0', '2', '64', null, null, '200035', 'mijan', '2021-10-16 11:21:23');
INSERT INTO `travel_card_details` VALUES ('86', '09-10-2021', 'ZZALTC_83', 'po_34', 'pod_86', '84.76', '128.81', '223.05', '213.57', 'proc_1', 'Corrugation', '', '200', '3', '66', null, null, '200035', 'mijan', '2021-10-16 11:23:54');
INSERT INTO `travel_card_details` VALUES ('87', '09-10-2021', 'ZZALTC_84', 'po_33', 'pod_85', '558.08', '848.14', '1468.64', '1406.22', 'proc_1', 'Corrugation', '', '999', '2', '58', null, null, '200035', 'mijan', '2021-10-16 11:25:04');
INSERT INTO `travel_card_details` VALUES ('88', '10-10-2021', 'ZZALTC_85', 'po_37', 'pod_96', '443.47', '306.21', '1407.84', '749.68', 'proc_1', 'Corrugation', '', '8360', '4', '52', null, null, '200035', 'mijan', '2021-10-16 11:26:52');
INSERT INTO `travel_card_details` VALUES ('89', '10-10-2021', 'ZZALTC_86', 'po_37', 'pod_97', '816.71', '563.92', '2592.73', '1380.63', 'proc_1', 'Corrugation', '', '15100', '4', '52', null, null, '200035', 'mijan', '2021-10-16 11:27:59');
INSERT INTO `travel_card_details` VALUES ('90', '10-10-2021', 'ZZALTC_87', 'po_37', 'pod_98', '932.37', '643.78', '2959.91', '1576.15', 'proc_1', 'Corrugation', '', '33200', '4', '52', null, null, '200035', 'mijan', '2021-10-16 11:28:34');
INSERT INTO `travel_card_details` VALUES ('91', '10-10-2021', 'ZZALTC_88', 'po_37', 'pod_99', '331.8', '229.1', '1053.34', '560.9', 'proc_1', 'Corrugation', '', '5800', '4', '52', null, null, '200035', 'mijan', '2021-10-16 11:29:42');
INSERT INTO `travel_card_details` VALUES ('92', '', 'ZZALTC_89', 'po_36', 'pod_90', '20.16', '10.99', '50.52', '31.15', 'proc_1', 'Corrugation', '', '300', '4', '52', null, null, '200035', 'mijan', '2021-10-16 11:31:45');
INSERT INTO `travel_card_details` VALUES ('93', '', 'ZZALTC_90', 'po_36', 'pod_91', '20.55', '11.2', '51.51', '31.76', 'proc_1', 'Corrugation', '', '300', '4', '52', null, null, '200035', 'mijan', '2021-10-16 11:34:11');
INSERT INTO `travel_card_details` VALUES ('94', '', 'ZZALTC_91', 'po_36', 'pod_92', '26.53', '14.46', '66.5', '41', 'proc_1', 'Corrugation', '', '380', '4', '52', null, null, '200035', 'mijan', '2021-10-16 11:35:10');
INSERT INTO `travel_card_details` VALUES ('95', '', 'ZZALTC_92', 'po_36', 'pod_93', '18.5', '10.08', '46.36', '28.58', 'proc_1', 'Corrugation', '', '260', '4', '52', null, null, '306020', 'rejowan', '2021-10-16 12:01:24');
INSERT INTO `travel_card_details` VALUES ('96', '', 'ZZALTC_93', 'po_36', 'pod_94', '2.43', '1.33', '6.1', '3.76', 'proc_1', 'Corrugation', '', '200', '4', '20', null, null, '306020', 'rejowan', '2021-10-16 12:00:37');
INSERT INTO `travel_card_details` VALUES ('97', '', 'ZZALTC_94', 'po_36', 'pod_95', '61.57', '33.56', '154.31', '95.13', 'proc_1', 'Corrugation', '', '5000', '4', '18', null, null, '306020', 'rejowan', '2021-10-16 12:02:40');
INSERT INTO `travel_card_details` VALUES ('98', '10-10-2021', 'ZZALTC_95', 'po_39', 'pod_100', '778.55', '1498.7', '2595.16', '2277.25', 'proc_1', 'Corrugation', '', '1685', '2', '60', null, null, '306020', 'rejowan', '2021-10-13 06:05:06');
INSERT INTO `travel_card_details` VALUES ('99', '10-10-2021', 'ZZALTC_96', 'po_40', 'pod_101', '37.25', '71.71', '124.18', '108.96', 'proc_1', 'Corrugation', '', '70', '1', '36', null, null, '200035', 'mijan', '2021-10-12 17:22:59');
INSERT INTO `travel_card_details` VALUES ('100', '10-10-2021', 'ZZALTC_97', 'po_40', 'pod_102', '160.86', '309.65', '536.19', '470.5', 'proc_1', 'Corrugation', '', '337', '1', '36', null, null, '306020', 'rejowan', '2021-10-16 12:08:25');
INSERT INTO `travel_card_details` VALUES ('101', '10-10-2021', 'ZZALTC_98', 'po_40', 'pod_103', '76.35', '146.97', '254.5', '223.32', 'proc_1', 'Corrugation', '', '142', '1', '36', null, null, '306020', 'rejowan', '2021-10-16 12:09:21');
INSERT INTO `travel_card_details` VALUES ('102', '10-10-2021', 'ZZALTC_99', 'po_40', 'pod_104', '107.4', '206.74', '357.99', '314.13', 'proc_1', 'Corrugation', '', '225', '1', '36', null, null, '306020', 'rejowan', '2021-10-16 12:10:17');
INSERT INTO `travel_card_details` VALUES ('103', '10-10-2021', 'ZZALTC_100', 'po_40', 'pod_105', '109.97', '211.7', '366.58', '321.68', 'proc_1', 'Corrugation', '', '211', '1', '38', null, null, '306020', 'rejowan', '2021-10-16 12:11:26');
INSERT INTO `travel_card_details` VALUES ('104', '10-10-2021', 'ZZALTC_101', 'po_40', 'pod_106', '106.31', '204.64', '354.36', '310.95', 'proc_1', 'Corrugation', '', '211', '1', '38', null, null, '306020', 'rejowan', '2021-10-16 12:12:22');
INSERT INTO `travel_card_details` VALUES ('105', '10-10-2021', 'ZZALTC_102', 'po_38', 'pod_107', '140.21', '76.43', '351.4', '216.64', 'proc_1', 'Corrugation', '', '4880', '4', '42', null, null, '306020', 'rejowan', '2021-10-13 06:46:38');
INSERT INTO `travel_card_details` VALUES ('106', '10-10-2021', 'ZZALTC_103', 'po_38', 'pod_108', '67.25', '36.66', '168.54', '103.91', 'proc_1', 'Corrugation', '', '5770', '4', '20', null, null, '306020', 'rejowan', '2021-10-13 06:47:14');
INSERT INTO `travel_card_details` VALUES ('107', '10-10-2021', 'ZZALTC_104', 'po_41', 'pod_109', '193.94', '373.34', '646.48', '567.29', 'proc_1', 'Corrugation', '', '500', '2', '56', null, null, '306020', 'rejowan', '2021-10-16 12:16:16');
INSERT INTO `travel_card_details` VALUES ('108', '10-10-2021', 'ZZALTC_105', 'po_41', 'pod_110', '271.2', '522.06', '904', '793.26', 'proc_1', 'Corrugation', '', '500', '2', '64', null, null, '306020', 'rejowan', '2021-10-16 12:18:06');
INSERT INTO `travel_card_details` VALUES ('109', '11-10-2021', 'ZZALTC_106', 'po_42', 'pod_111', '1826.93', '1096.16', '4807.71', '2923.09', 'proc_1', 'Corrugation', '', '4000', '2', '52', null, null, '306020', 'rejowan', '2021-10-16 12:20:53');
INSERT INTO `travel_card_details` VALUES ('110', '11-10-2021', 'ZZALTC_107', 'po_43', 'pod_112', '2283.66', '1370.2', '6009.64', '3653.86', 'proc_1', 'Corrugation', '', '5000', '2', '52', null, null, '306020', 'rejowan', '2021-10-16 12:23:41');
INSERT INTO `travel_card_details` VALUES ('111', '11-10-2021', 'ZZALTC_108', 'po_45', 'pod_113', '258.04', '154.82', '679.05', '412.86', 'proc_1', 'Corrugation', '', '1320', '3', '62', null, null, '200035', 'mijan', '2021-10-12 19:06:54');
INSERT INTO `travel_card_details` VALUES ('112', '11-10-2021', 'ZZALTC_109', 'po_44', 'pod_114', '626.08', '375.65', '1647.57', '1001.72', 'proc_1', 'Corrugation', '', '2835', '3', '66', null, null, '200035', 'mijan', '2021-10-12 19:09:46');
INSERT INTO `travel_card_details` VALUES ('113', '11-10-2021', 'ZZALTC_110', 'po_47', 'pod_116', '0', '238.22', '1095.25', '0', 'proc_7', 'Delivery', '11000', '11000', '4', '56', null, null, '3534', 'mahfuz', '2021-10-13 17:29:01');
INSERT INTO `travel_card_details` VALUES ('114', '11-10-2021', 'ZZALTC_111', 'po_48', 'pod_117', '1757.34', '3382.88', '5857.8', '5140.22', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-11 12:52:21');
INSERT INTO `travel_card_details` VALUES ('115', '11-10-2021', 'ZZALTC_112', 'po_49', '', '0', '0', '0', '0', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-11 14:16:48');
INSERT INTO `travel_card_details` VALUES ('116', '11-10-2021', 'ZZALTC_113', 'po_52', 'pod_127', '73.94', '42.99', '185.32', '116.94', 'proc_7', 'Delivery', '200', '200', '1', '48', null, null, '3534', 'mahfuz', '2021-10-16 17:27:51');
INSERT INTO `travel_card_details` VALUES ('117', '11-10-2021', 'ZZALTC_114', 'po_49', 'pod_118', '60.77', '36.46', '159.93', '97.24', 'proc_1', 'Corrugation', '', '318', '3', '60', null, null, '306020', 'rejowan', '2021-10-16 12:32:54');
INSERT INTO `travel_card_details` VALUES ('118', '11-10-2021', 'ZZALTC_115', 'po_49', 'pod_119', '62.81', '37.69', '165.29', '100.5', 'proc_1', 'Corrugation', '', '340', '3', '58', null, null, '200035', 'mijan', '2021-10-14 15:25:11');
INSERT INTO `travel_card_details` VALUES ('119', '11-10-2021', 'ZZALTC_116', 'po_49', 'pod_120', '48.16', '28.9', '126.74', '77.06', 'proc_1', 'Corrugation', '', '270', '3', '56', null, null, '306020', 'rejowan', '2021-10-16 12:34:18');
INSERT INTO `travel_card_details` VALUES ('120', '11-10-2021', 'ZZALTC_117', 'po_49', 'pod_121', '57.12', '34.27', '150.31', '91.39', 'proc_1', 'Corrugation', '', '590', '4', '68', null, null, '200035', 'mijan', '2021-10-14 15:28:40');
INSERT INTO `travel_card_details` VALUES ('121', '11-10-2021', 'ZZALTC_118', 'po_49', 'pod_122', '34.38', '20.63', '90.47', '55.01', 'proc_1', 'Corrugation', '', '150', '3', '52', null, null, '306020', 'rejowan', '2021-10-16 12:37:09');
INSERT INTO `travel_card_details` VALUES ('122', '11-10-2021', 'ZZALTC_119', 'po_49', 'pod_123', '36.89', '22.14', '97.09', '59.03', 'proc_1', 'Corrugation', '', '135', '3', '62', null, null, '200035', 'mijan', '2021-10-14 15:32:16');
INSERT INTO `travel_card_details` VALUES ('123', '11-10-2021', 'ZZALTC_120', 'po_49', 'pod_124', '330.18', '198.11', '868.91', '528.29', 'proc_1', 'Corrugation', '', '1135', '3', '66', null, null, '200035', 'mijan', '2021-10-16 12:39:49');
INSERT INTO `travel_card_details` VALUES ('124', '11-10-2021', 'ZZALTC_121', 'po_50', 'pod_125', '220.67', '132.4', '580.71', '353.07', 'proc_1', 'Corrugation', '', '590', '2', '50', null, null, '200035', 'mijan', '2021-10-16 12:41:34');
INSERT INTO `travel_card_details` VALUES ('125', '11-10-2021', 'ZZALTC_122', 'po_51', 'pod_126', '39.38', '23.63', '103.63', '63.01', 'proc_1', 'Corrugation', '', '125', '2', '52', null, null, '5455', 'rejaulnc', '2021-10-13 17:42:06');
INSERT INTO `travel_card_details` VALUES ('126', '11-10-2021', 'ZZALTC_123', 'po_53', 'pod_128', '527.54', '316.52', '1388.26', '844.06', 'proc_7', 'Delivery', '2000', '2000', '4', '64', null, null, '3534', 'mahfuz', '2021-10-14 10:25:40');
INSERT INTO `travel_card_details` VALUES ('127', '11-10-2021', 'ZZALTC_124', 'po_53', 'pod_129', '883.97', '530.38', '2326.23', '1414.35', 'proc_7', 'Delivery', '2000', '4000', '2', '48', null, null, '3534', 'mahfuz', '2021-10-13 16:18:01');
INSERT INTO `travel_card_details` VALUES ('128', '12-10-2021', 'ZZALTC_125', 'po_54', 'pod_130', '348.59', '671.03', '1161.96', '1019.62', 'proc_7', 'Delivery', '226', '226', '2', '56', null, null, '', '', '2021-10-14 14:30:54');
INSERT INTO `travel_card_details` VALUES ('129', '12-10-2021', 'ZZALTC_126', 'po_55', 'pod_131', '258.38', '497.38', '861.26', '755.76', 'proc_1', 'Corrugation', '', '865', '2', '56', null, null, '306020', 'rejowan', '2021-10-14 07:13:19');
INSERT INTO `travel_card_details` VALUES ('130', '12-10-2021', 'ZZALTC_127', 'po_56', 'pod_132', '92.43', '53.74', '231.65', '146.17', 'proc_6', 'Folding & Gluing ', '250', '250', '1', '48', null, null, '304064', 'monarul', '2021-10-12 21:19:25');
INSERT INTO `travel_card_details` VALUES ('131', '13-10-2021', 'ZZALTC_128', 'po_58', 'pod_133', '18.27', '35.17', '60.9', '53.44', 'proc_7', 'Delivery', '45', '45', '1', '36', null, null, '3534', 'mahfuz', '2021-10-17 11:09:37');
INSERT INTO `travel_card_details` VALUES ('132', '13-10-2021', 'ZZALTC_129', 'po_60', 'pod_136', '319.67', '191.8', '841.25', '511.48', 'proc_7', 'Delivery', '940', '940', '2', '48', null, null, '3534', 'mahfuz', '2021-10-17 11:15:31');
INSERT INTO `travel_card_details` VALUES ('133', '13-10-2021', 'ZZALTC_130', 'po_60', 'pod_137', '1004.89', '602.93', '2644.44', '1607.82', 'proc_1', 'Corrugation', '', '2000', '2', '54', null, null, '200035', 'mijan', '2021-10-14 15:03:18');
INSERT INTO `travel_card_details` VALUES ('134', '13-10-2021', 'ZZALTC_131', 'po_60', 'pod_138', '994.46', '596.68', '2617.01', '1591.14', 'proc_7', 'Delivery', '2000', '2000', '2', '54', null, null, '3534', 'mahfuz', '2021-10-14 10:53:33');
INSERT INTO `travel_card_details` VALUES ('135', '13-10-2021', 'ZZALTC_132', 'po_60', 'pod_139', '449.4', '269.64', '1182.62', '719.04', 'proc_6', 'Folding & Gluing ', '1000', '1026', '2', '48', null, null, '302770', 'sujon', '2021-10-15 21:44:31');
INSERT INTO `travel_card_details` VALUES ('136', '13-10-2021', 'ZZALTC_133', 'po_59', 'pod_134', '52.23', '70.97', '153.62', '123.2', 'proc_6', 'Folding & Gluing ', '120', '120', '2', '56', null, null, '305059', 'rejaul', '2021-10-16 12:55:12');
INSERT INTO `travel_card_details` VALUES ('137', '13-10-2021', 'ZZALTC_134', 'po_59', 'pod_135', '454.84', '618.05', '1337.77', '1072.89', 'proc_2', 'Printing & Slotting', '760', '760', '2', '66', null, null, '361', 'polash', '2021-10-16 12:42:06');
INSERT INTO `travel_card_details` VALUES ('138', '13-10-2021', 'ZZALTC_135', 'po_35', 'pod_87', '0', '0', '0', '0', 'proc_4', 'Die Cutting ', '230', '231', '0', '0', null, null, '306186', 'akther', '2021-10-14 16:12:18');
INSERT INTO `travel_card_details` VALUES ('139', '13-10-2021', 'ZZALTC_136', 'po_35', 'pod_88', '0', '0', '0', '0', 'proc_4', 'Die Cutting ', '200', '156', '0', '0', null, null, '306186', 'akther', '2021-10-14 09:36:05');
INSERT INTO `travel_card_details` VALUES ('140', '13-10-2021', 'ZZALTC_137', 'po_35', 'pod_89', '0', '0', '0', '0', 'proc_4', 'Die Cutting ', '132', '132', '0', '0', null, null, '306186', 'akther', '2021-10-14 09:34:27');
INSERT INTO `travel_card_details` VALUES ('141', '13-10-2021', 'ZZALTC_138', 'po_61', 'pod_140', '12.02', '23.14', '40.06', '35.16', 'proc_7', 'Delivery', '70', '70', '3', '52', null, null, '3534', 'mahfuz', '2021-10-14 18:35:52');
INSERT INTO `travel_card_details` VALUES ('142', '13-10-2021', 'ZZALTC_139', 'po_61', 'pod_141', '24.98', '48.08', '83.25', '73.06', 'proc_7', 'Delivery', '155', '155', '3', '52', null, null, '3534', 'mahfuz', '2021-10-14 18:34:38');
INSERT INTO `travel_card_details` VALUES ('143', '13-10-2021', 'ZZALTC_140', 'po_61', 'pod_142', '57.22', '110.14', '190.72', '167.36', 'proc_7', 'Delivery', '380', '380', '3', '52', null, null, '3534', 'mahfuz', '2021-10-14 18:35:05');
INSERT INTO `travel_card_details` VALUES ('144', '13-10-2021', 'ZZALTC_141', 'po_61', 'pod_143', '17.43', '33.56', '58.12', '51', 'proc_7', 'Delivery', '120', '120', '3', '52', null, null, '3534', 'mahfuz', '2021-10-14 18:34:16');
INSERT INTO `travel_card_details` VALUES ('145', '13-10-2021', 'ZZALTC_142', 'po_61', 'pod_144', '8.59', '16.53', '28.62', '25.11', 'proc_7', 'Delivery', '65', '65', '3', '52', null, null, '3534', 'mahfuz', '2021-10-14 18:35:29');
INSERT INTO `travel_card_details` VALUES ('146', '13-10-2021', 'ZZALTC_143', 'po_61', 'pod_145', '11.73', '22.58', '39.1', '34.31', 'proc_7', 'Delivery', '130', '130', '4', '64', null, null, '3534', 'mahfuz', '2021-10-16 12:57:07');
INSERT INTO `travel_card_details` VALUES ('147', '13-10-2021', 'ZZALTC_144', 'po_62', 'pod_146', '2274.57', '3502.84', '7581.9', '5777.41', 'proc_2', 'Printing & Slotting', '5000', '5000', '2', '50', null, null, '300817', 'monir', '2021-10-14 11:57:09');
INSERT INTO `travel_card_details` VALUES ('148', '14-10-2021', 'ZZALTC_145', 'po_63', 'pod_147', '1799.56', '1079.74', '4735.69', '2879.3', 'proc_7', 'Delivery', '5917', '5917', '2', '46', null, null, '3534', 'mahfuz', '2021-10-17 11:10:38');
INSERT INTO `travel_card_details` VALUES ('149', '14-10-2021', 'ZZALTC_146', 'po_63', 'pod_148', '1505.27', '903.16', '3961.23', '2408.43', 'proc_7', 'Delivery', '4706', '4044', '2', '48', null, null, '3534', 'mahfuz', '2021-10-14 17:33:02');
INSERT INTO `travel_card_details` VALUES ('150', '14-10-2021', 'ZZALTC_147', 'po_64', 'pod_149', '237.15', '129.27', '594.36', '366.42', 'proc_7', 'Delivery', '10000', '10000', '4', '36', null, null, '3534', 'mahfuz', '2021-10-14 17:30:30');
INSERT INTO `travel_card_details` VALUES ('151', '14-10-2021', 'ZZALTC_148', 'po_65', 'pod_150', '231.18', '445.02', '770.59', '676.2', 'proc_6', 'Folding & Gluing ', '1512', '1512', '3', '52', null, null, '304064', 'monarul', '2021-10-14 16:03:54');
INSERT INTO `travel_card_details` VALUES ('152', '14-10-2021', 'ZZALTC_149', 'po_66', 'pod_151', '374.57', '721.06', '1248.58', '1095.63', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-14 16:54:05');
INSERT INTO `travel_card_details` VALUES ('153', '14-10-2021', 'ZZALTC_150', 'po_68', 'pod_153', '0', '0', '0', '0', 'proc_6', 'Folding & Gluing ', '110', '110', '0', '0', null, null, '304064', 'monarul', '2021-10-14 17:37:50');
INSERT INTO `travel_card_details` VALUES ('154', '14-10-2021', 'ZZALTC_151', 'po_69', 'pod_154', '0', '0', '0', '0', 'proc_7', 'Delivery', '500', '600', '0', '0', null, null, '3534', 'mahfuz', '2021-10-15 16:45:14');
INSERT INTO `travel_card_details` VALUES ('155', '14-10-2021', 'ZZALTC_152', 'po_67', 'pod_152', '44.81', '86.25', '149.35', '131.06', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-14 17:20:32');
INSERT INTO `travel_card_details` VALUES ('156', '14-10-2021', 'ZZALTC_153', 'po_70', 'pod_155', '61.22', '34.44', '161.1', '95.65', 'proc_2', 'Printing & Slotting', '330', '660', '4', '62', null, null, '297', 'subash', '2021-10-16 21:57:05');
INSERT INTO `travel_card_details` VALUES ('157', '14-10-2021', 'ZZALTC_154', 'po_70', 'pod_156', '78.51', '44.16', '206.61', '122.68', 'proc_2', 'Printing & Slotting', '410', '410', '4', '64', null, null, '297', 'subash', '2021-10-16 21:57:29');
INSERT INTO `travel_card_details` VALUES ('158', '14-10-2021', 'ZZALTC_155', 'po_70', 'pod_157', '67.98', '38.24', '178.9', '106.22', 'proc_2', 'Printing & Slotting', '355', '355', '4', '64', null, null, '297', 'subash', '2021-10-16 21:58:08');
INSERT INTO `travel_card_details` VALUES ('159', '14-10-2021', 'ZZALTC_156', 'po_70', 'pod_158', '24.91', '14.01', '65.55', '38.92', 'proc_2', 'Printing & Slotting', '255', '255', '4', '44', null, null, '297', 'subash', '2021-10-16 21:56:31');
INSERT INTO `travel_card_details` VALUES ('160', '14-10-2021', 'ZZALTC_157', 'po_70', 'pod_159', '32.39', '18.22', '85.25', '50.62', 'proc_5', 'Manual Slotting ', '304', '304', '4', '46', null, null, '2408', 'rakib', '2021-10-17 09:45:23');
INSERT INTO `travel_card_details` VALUES ('161', '14-10-2021', 'ZZALTC_158', 'po_70', 'pod_160', '62.27', '35.03', '163.86', '97.29', 'proc_2', 'Printing & Slotting', '560', '1680', '4', '48', null, null, '297', 'subash', '2021-10-16 21:55:27');
INSERT INTO `travel_card_details` VALUES ('162', '14-10-2021', 'ZZALTC_159', 'po_70', 'pod_162', '46.38', '26.09', '122.04', '72.46', 'proc_2', 'Printing & Slotting', '455', '455', '4', '44', null, null, '297', 'subash', '2021-10-16 21:56:04');
INSERT INTO `travel_card_details` VALUES ('163', '14-10-2021', 'ZZALTC_160', 'po_70', 'pod_161', '0', '0', '0', '0', 'proc_6', 'Folding & Gluing ', '412', '412', '4', '50', null, null, '305059', 'rejaul', '2021-10-17 11:07:24');
INSERT INTO `travel_card_details` VALUES ('164', '16-10-2021', 'ZZALTC_161', 'po_71', 'pod_163', '2185.51', '1311.31', '5751.34', '3496.82', 'proc_7', 'Delivery', '7186', '7160', '2', '46', null, null, '3534', 'mahfuz', '2021-10-17 11:12:07');
INSERT INTO `travel_card_details` VALUES ('165', '16-10-2021', 'ZZALTC_162', 'po_71', 'pod_164', '1370.43', '822.26', '3606.39', '2192.69', 'proc_1', 'Corrugation', '', '4350', '2', '48', null, null, '200035', 'mijan', '2021-10-17 09:48:09');
INSERT INTO `travel_card_details` VALUES ('166', '16-10-2021', 'ZZALTC_163', 'po_72', 'pod_165', '56.38', '33.83', '148.36', '90.2', 'proc_1', 'Corrugation', '', '295', '3', '62', null, null, '5989', 'shahin', '2021-10-17 10:29:27');
INSERT INTO `travel_card_details` VALUES ('167', '16-10-2021', 'ZZALTC_164', 'po_72', 'pod_166', '107.15', '64.29', '281.97', '171.44', 'proc_1', 'Corrugation', '', '820', '3', '62', null, null, '5989', 'shahin', '2021-10-17 10:31:11');
INSERT INTO `travel_card_details` VALUES ('168', '16-10-2021', 'ZZALTC_165', 'po_72', 'pod_167', '35.67', '21.4', '93.88', '57.08', 'proc_1', 'Corrugation', '', '200', '3', '62', null, null, '5989', 'shahin', '2021-10-17 10:31:53');
INSERT INTO `travel_card_details` VALUES ('169', '16-10-2021', 'ZZALTC_166', 'po_72', 'pod_168', '39.8', '23.88', '104.73', '63.68', 'proc_1', 'Corrugation', '', '245', '3', '52', null, null, '5989', 'shahin', '2021-10-17 09:38:26');
INSERT INTO `travel_card_details` VALUES ('170', '16-10-2021', 'ZZALTC_167', 'po_72', 'pod_169', '28.65', '17.19', '75.4', '45.84', 'proc_1', 'Corrugation', '', '125', '3', '52', null, null, '5989', 'shahin', '2021-10-17 09:38:58');
INSERT INTO `travel_card_details` VALUES ('171', '16-10-2021', 'ZZALTC_168', 'po_72', 'pod_170', '82.28', '49.37', '216.53', '131.65', 'proc_1', 'Corrugation', '', '220', '2', '52', null, null, '5989', 'shahin', '2021-10-17 09:39:27');
INSERT INTO `travel_card_details` VALUES ('172', '16-10-2021', 'ZZALTC_169', 'po_72', 'pod_171', '71.05', '42.63', '186.98', '113.68', 'proc_1', 'Corrugation', '', '260', '3', '62', null, null, '5989', 'shahin', '2021-10-17 10:29:06');
INSERT INTO `travel_card_details` VALUES ('173', '16-10-2021', 'ZZALTC_170', 'po_72', 'pod_172', '475.64', '285.38', '1251.68', '761.02', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 10:06:05');
INSERT INTO `travel_card_details` VALUES ('174', '16-10-2021', 'ZZALTC_171', 'po_73', 'pod_173', '2587.51', '1552.5', '6809.23', '4140.01', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 10:20:38');
INSERT INTO `travel_card_details` VALUES ('175', '16-10-2021', 'ZZALTC_172', 'po_74', 'pod_174', '761.67', '457', '2004.4', '1218.67', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 12:59:59');
INSERT INTO `travel_card_details` VALUES ('176', '16-10-2021', 'ZZALTC_173', 'po_75', 'pod_175', '179.53', '107.72', '472.45', '287.25', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 13:08:44');
INSERT INTO `travel_card_details` VALUES ('177', '16-10-2021', 'ZZALTC_174', 'po_76', 'pod_176', '226.45', '384.63', '666.03', '611.09', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 14:34:03');
INSERT INTO `travel_card_details` VALUES ('178', '16-10-2021', 'ZZALTC_175', 'po_76', 'pod_177', '3012.89', '5117.49', '8861.45', '8130.38', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 14:34:08');
INSERT INTO `travel_card_details` VALUES ('179', '16-10-2021', 'ZZALTC_176', 'po_77', 'pod_178', '69.83', '48.22', '277.11', '118.05', 'proc_3', 'Cutting Creasing ', '638', '638', '2', '60', null, null, '6065', 'aslam', '2021-10-17 06:18:06');
INSERT INTO `travel_card_details` VALUES ('180', '16-10-2021', 'ZZALTC_177', 'po_77', 'pod_179', '952.78', '657.87', '3780.89', '1610.66', 'proc_1', 'Corrugation', '', '7048', '2', '56', null, null, '5455', 'rejaulnc', '2021-10-16 18:17:34');
INSERT INTO `travel_card_details` VALUES ('181', '16-10-2021', 'ZZALTC_178', 'po_78', 'pod_180', '97.46', '58.48', '256.47', '155.94', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 16:43:40');
INSERT INTO `travel_card_details` VALUES ('182', '16-10-2021', 'ZZALTC_179', 'po_79', 'pod_181', '30.08', '57.9', '100.26', '87.98', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 16:51:39');
INSERT INTO `travel_card_details` VALUES ('183', '16-10-2021', 'ZZALTC_180', 'po_79', 'pod_182', '21.41', '41.22', '71.38', '62.63', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 16:51:44');
INSERT INTO `travel_card_details` VALUES ('184', '16-10-2021', 'ZZALTC_181', 'po_79', 'pod_183', '155.46', '299.27', '518.21', '454.73', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 16:51:50');
INSERT INTO `travel_card_details` VALUES ('185', '16-10-2021', 'ZZALTC_182', 'po_80', 'pod_184', '45.61', '87.79', '152.02', '133.4', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:01:14');
INSERT INTO `travel_card_details` VALUES ('186', '16-10-2021', 'ZZALTC_183', 'po_80', 'pod_185', '47.43', '91.3', '158.1', '138.73', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:01:19');
INSERT INTO `travel_card_details` VALUES ('187', '16-10-2021', 'ZZALTC_184', 'po_80', 'pod_186', '11.35', '21.85', '37.84', '33.2', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:01:25');
INSERT INTO `travel_card_details` VALUES ('188', '16-10-2021', 'ZZALTC_185', 'po_80', 'pod_187', '22.18', '42.69', '73.92', '64.87', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:01:30');
INSERT INTO `travel_card_details` VALUES ('189', '16-10-2021', 'ZZALTC_186', 'po_80', 'pod_188', '39.64', '76.31', '132.13', '115.94', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:01:36');
INSERT INTO `travel_card_details` VALUES ('190', '16-10-2021', 'ZZALTC_187', 'po_80', 'pod_189', '70.47', '135.65', '234.9', '206.12', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:01:41');
INSERT INTO `travel_card_details` VALUES ('191', '16-10-2021', 'ZZALTC_188', 'po_80', 'pod_190', '21.52', '41.44', '71.75', '62.96', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:01:48');
INSERT INTO `travel_card_details` VALUES ('192', '16-10-2021', 'ZZALTC_189', 'po_80', 'pod_191', '52.23', '100.54', '174.1', '152.77', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:01:53');
INSERT INTO `travel_card_details` VALUES ('193', '16-10-2021', 'ZZALTC_190', 'po_80', 'pod_192', '18.5', '35.61', '61.66', '54.11', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:01:59');
INSERT INTO `travel_card_details` VALUES ('194', '16-10-2021', 'ZZALTC_191', 'po_80', 'pod_193', '40.45', '77.86', '134.82', '118.3', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:03:07');
INSERT INTO `travel_card_details` VALUES ('195', '16-10-2021', 'ZZALTC_192', 'po_80', 'pod_194', '35.22', '67.8', '117.41', '103.03', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:03:11');
INSERT INTO `travel_card_details` VALUES ('196', '16-10-2021', 'ZZALTC_193', 'po_81', 'pod_195', '205.04', '141.57', '650.92', '346.61', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:23:14');
INSERT INTO `travel_card_details` VALUES ('197', '16-10-2021', 'ZZALTC_194', 'po_81', 'pod_196', '174.61', '120.57', '554.33', '295.18', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:23:20');
INSERT INTO `travel_card_details` VALUES ('198', '16-10-2021', 'ZZALTC_195', 'po_82', 'pod_197', '0', '0', '0', '0', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-16 17:34:16');
INSERT INTO `travel_card_details` VALUES ('199', '17-10-2021', 'ZZALTC_196', 'po_85', 'pod_198', '340.32', '197.88', '852.93', '538.2', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-17 09:37:36');
INSERT INTO `travel_card_details` VALUES ('200', '17-10-2021', 'ZZALTC_197', 'po_86', 'pod_199', '56.76', '33', '142.26', '89.76', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-17 09:44:54');
INSERT INTO `travel_card_details` VALUES ('201', '17-10-2021', 'ZZALTC_198', 'po_86', 'pod_200', '156.38', '90.93', '391.93', '247.31', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-17 09:45:00');
INSERT INTO `travel_card_details` VALUES ('202', '17-10-2021', 'ZZALTC_199', 'po_87', 'pod_201', '233.84', '127.47', '586.06', '361.31', null, null, null, null, null, null, null, null, '9047', 'masum', '2021-10-17 10:12:58');
INSERT INTO `travel_card_details` VALUES ('203', '17-10-2021', 'ZZALTC_200', 'po_87', 'pod_202', '508.28', '277.07', '1273.88', '785.34', 'proc_3', 'Cutting Creasing ', '16430', '16430', '4', '44', null, null, '6065', 'aslam', '2021-10-17 10:41:10');

-- ----------------------------
-- Table structure for `travel_card_details_for_transactions`
-- ----------------------------
DROP TABLE IF EXISTS `travel_card_details_for_transactions`;
CREATE TABLE `travel_card_details_for_transactions` (
  `row_id` int(10) NOT NULL AUTO_INCREMENT,
  `travel_card_creation_date` varchar(15) NOT NULL,
  `travel_card_id` varchar(15) NOT NULL,
  `po_id` varchar(100) DEFAULT NULL,
  `po_details_id` varchar(30) DEFAULT NULL,
  `liner_consumption_calc` double DEFAULT NULL,
  `media_consumption_calc` double DEFAULT NULL,
  `sqm_consumption_calc` double DEFAULT NULL,
  `total_consumption` double DEFAULT NULL,
  `process_id` varchar(30) DEFAULT NULL,
  `process_name` varchar(50) DEFAULT NULL,
  `before_process_quantity` varchar(30) DEFAULT NULL,
  `process_quantity` varchar(30) DEFAULT NULL,
  `actual_ratio` double DEFAULT NULL,
  `actual_roll_size` double DEFAULT NULL,
  `actual_used_linear` double DEFAULT NULL,
  `actual_used_medium` double DEFAULT NULL,
  `process_wastage` varchar(30) DEFAULT NULL,
  `current_state` varchar(30) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of travel_card_details_for_transactions
-- ----------------------------
INSERT INTO `travel_card_details_for_transactions` VALUES ('1', '07-10-2021', 'ZZALTC_35', 'po_17', 'pod_38', '332.53', '640.12', '1108.44', '972.65', 'proc_1', 'Corrugation', '', '638', '1', '38', '0', '0', '', null, '5989', 'shahin', '2021-10-07 13:26:30');
INSERT INTO `travel_card_details_for_transactions` VALUES ('2', '07-10-2021', 'ZZALTC_5', 'po_4', 'pod_5', '3481.59', '2088.96', '9162.09', '5570.55', 'proc_1', 'Corrugation', '', '14524', '3', '58', '3520', '2123', '', null, '5989', 'shahin', '2021-10-07 13:59:35');
INSERT INTO `travel_card_details_for_transactions` VALUES ('3', '07-10-2021', 'ZZALTC_5', 'po_4', 'pod_5', '3481.59', '2088.96', '9162.09', '5570.55', 'proc_2', 'Printing & Slotting', '14524', '12396', '3', '58', '3520', '2123', '', null, '300817', 'monir', '2021-10-07 14:00:39');
INSERT INTO `travel_card_details_for_transactions` VALUES ('4', '07-10-2021', 'ZZALTC_33', 'po_15', 'pod_36', '510.6', '306.36', '1343.7', '816.97', 'proc_1', 'Corrugation', '', '1093', '2', '54', '553', '343', '', null, '5455', 'rejaulnc', '2021-10-07 14:31:19');
INSERT INTO `travel_card_details_for_transactions` VALUES ('5', '07-10-2021', 'ZZALTC_5', 'po_4', 'pod_5', '3481.59', '2088.96', '9162.09', '5570.55', 'proc_6', 'Folding & Gluing ', '12396', '7900', '3', '58', '3520', '2123', '', null, '302770', 'sujon', '2021-10-07 14:48:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('6', '07-10-2021', 'ZZALTC_31', 'po_13', 'pod_34', '484.85', '933.34', '1616.17', '1418.19', 'proc_1', 'Corrugation', '', '1657', '2', '48', '521', '1100', '', null, '5989', 'shahin', '2021-10-07 14:50:55');
INSERT INTO `travel_card_details_for_transactions` VALUES ('7', '07-10-2021', 'ZZALTC_31', 'po_13', 'pod_34', '484.85', '933.34', '1616.17', '1418.19', 'proc_2', 'Printing & Slotting', '1657', '1657', '2', '48', '521', '1100', '', null, '300817', 'monir', '2021-10-07 14:51:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('8', '07-10-2021', 'ZZALTC_20', 'po_11', 'pod_23', '59.27', '114.1', '197.58', '173.38', 'proc_1', 'Corrugation', '', '215', '2', '54', '0', '0', '', null, '5989', 'shahin', '2021-10-07 14:53:18');
INSERT INTO `travel_card_details_for_transactions` VALUES ('9', '07-10-2021', 'ZZALTC_28', 'po_13', 'pod_31', '174.14', '335.22', '580.46', '509.35', 'proc_1', 'Corrugation', '', '529', '2', '54', '0', '0', '', null, '5989', 'shahin', '2021-10-07 14:54:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('10', '07-10-2021', 'ZZALTC_29', 'po_13', 'pod_32', '106.7', '205.4', '355.67', '312.1', 'proc_1', 'Corrugation', '', '417', '2', '46', '118', '226', '', null, '5989', 'shahin', '2021-10-07 14:55:07');
INSERT INTO `travel_card_details_for_transactions` VALUES ('11', '07-10-2021', 'ZZALTC_30', 'po_13', 'pod_33', '336.51', '647.79', '1121.71', '984.3', 'proc_1', 'Corrugation', '', '1244', '2', '50', '0', '0', '', null, '5989', 'shahin', '2021-10-07 14:55:40');
INSERT INTO `travel_card_details_for_transactions` VALUES ('12', '07-10-2021', 'ZZALTC_32', 'po_14', 'pod_35', '272.12', '523.83', '907.06', '795.95', 'proc_1', 'Corrugation', '', '911', '2', '56', '0', '0', '', null, '5989', 'shahin', '2021-10-07 14:56:01');
INSERT INTO `travel_card_details_for_transactions` VALUES ('13', '07-10-2021', 'ZZALTC_30', 'po_13', 'pod_33', '336.51', '647.79', '1121.71', '984.3', 'proc_2', 'Printing & Slotting', '1244', '1244', '2', '50', '0', '0', '', null, '301982', 'jakir', '2021-10-07 15:07:41');
INSERT INTO `travel_card_details_for_transactions` VALUES ('14', '07-10-2021', 'ZZALTC_9', 'po_5', 'pod_9', '52.98', '80.51', '139.41', '133.48', 'proc_1', 'Corrugation', '', '154', '3', '66', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-07 15:16:49');
INSERT INTO `travel_card_details_for_transactions` VALUES ('15', '07-10-2021', 'ZZALTC_29', 'po_13', 'pod_32', '106.7', '205.4', '355.67', '312.1', 'proc_2', 'Printing & Slotting', '417', '417', '2', '46', '118', '226', '', null, '301982', 'jakir', '2021-10-07 15:24:34');
INSERT INTO `travel_card_details_for_transactions` VALUES ('16', '07-10-2021', 'ZZALTC_21', 'po_11', 'pod_24', '46.79', '90.06', '155.95', '136.85', 'proc_1', 'Corrugation', '', '158', '2', '66', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-07 15:29:56');
INSERT INTO `travel_card_details_for_transactions` VALUES ('17', '07-10-2021', 'ZZALTC_24', 'po_11', 'pod_27', '36.45', '70.17', '121.51', '106.62', 'proc_1', 'Corrugation', '', '105', '2', '66', '45', '76', '', null, '5455', 'rejaulnc', '2021-10-07 15:30:45');
INSERT INTO `travel_card_details_for_transactions` VALUES ('18', '07-10-2021', 'ZZALTC_28', 'po_13', 'pod_31', '174.14', '335.22', '580.46', '509.35', 'proc_2', 'Printing & Slotting', '529', '529', '2', '54', '0', '0', '', null, '301982', 'jakir', '2021-10-07 15:51:21');
INSERT INTO `travel_card_details_for_transactions` VALUES ('19', '07-10-2021', 'ZZALTC_32', 'po_14', 'pod_35', '272.12', '523.83', '907.06', '795.95', 'proc_2', 'Printing & Slotting', '911', '911', '2', '56', '0', '0', '', null, '301982', 'jakir', '2021-10-07 17:35:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('20', '07-10-2021', 'ZZALTC_20', 'po_11', 'pod_23', '59.27', '114.1', '197.58', '173.38', 'proc_2', 'Printing & Slotting', '215', '215', '2', '54', '0', '0', '', null, '301982', 'jakir', '2021-10-07 18:37:31');
INSERT INTO `travel_card_details_for_transactions` VALUES ('21', '07-10-2021', 'ZZALTC_33', 'po_15', 'pod_36', '510.6', '306.36', '1343.7', '816.97', 'proc_2', 'Printing & Slotting', '1093', '1093', '2', '54', '553', '343', '', null, '301982', 'jakir', '2021-10-07 19:35:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('22', '09-10-2021', 'ZZALTC_44', 'po_19', 'pod_47', '21.12', '40.66', '70.41', '61.78', 'proc_1', 'Corrugation', '', '75', '2', '38', '23', '45', '', null, '5455', 'rejaulnc', '2021-10-09 07:35:32');
INSERT INTO `travel_card_details_for_transactions` VALUES ('23', '09-10-2021', 'ZZALTC_45', 'po_19', 'pod_48', '17.36', '33.41', '57.85', '50.76', 'proc_1', 'Corrugation', '', '65', '2', '38', '21', '39', '', null, '5455', 'rejaulnc', '2021-10-09 07:36:15');
INSERT INTO `travel_card_details_for_transactions` VALUES ('24', '09-10-2021', 'ZZALTC_40', 'po_19', 'pod_43', '1382.57', '2661.45', '4608.58', '4044.03', 'proc_1', 'Corrugation', '', '5400', '2', '38', '1450', '2760', '', null, '5455', 'rejaulnc', '2021-10-09 09:28:47');
INSERT INTO `travel_card_details_for_transactions` VALUES ('25', '09-10-2021', 'ZZALTC_41', 'po_19', 'pod_44', '1067', '2053.97', '3556.65', '3120.96', 'proc_1', 'Corrugation', '', '4420', '2', '38', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-09 10:10:50');
INSERT INTO `travel_card_details_for_transactions` VALUES ('26', '09-10-2021', 'ZZALTC_40', 'po_19', 'pod_43', '1382.57', '2661.45', '4608.58', '4044.03', 'proc_2', 'Printing & Slotting', '5400', '5395', '2', '48', '1450', '2760', '', null, '301982', 'jakir', '2021-10-09 10:13:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('27', '09-10-2021', 'ZZALTC_42', 'po_19', 'pod_45', '212.14', '408.37', '707.14', '620.51', 'proc_1', 'Corrugation', '', '1000', '2', '38', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-09 10:24:10');
INSERT INTO `travel_card_details_for_transactions` VALUES ('28', '09-10-2021', 'ZZALTC_37', 'po_18', 'pod_40', '0', '0', '0', '0', 'proc_1', 'Corrugation', '', '10000', '1', '0', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-09 10:25:28');
INSERT INTO `travel_card_details_for_transactions` VALUES ('29', '09-10-2021', 'ZZALTC_55', 'po_21', 'pod_56', '241.06', '366.35', '634.37', '607.4', 'proc_1', 'Corrugation', '', '500', '2', '54', '259', '395', '', null, '5455', 'rejaulnc', '2021-10-09 10:29:50');
INSERT INTO `travel_card_details_for_transactions` VALUES ('30', '09-10-2021', 'ZZALTC_56', 'po_21', 'pod_57', '242.84', '369.06', '639.06', '611.9', 'proc_1', 'Corrugation', '', '600', '3', '68', '267', '388', '', null, '5455', 'rejaulnc', '2021-10-09 10:30:26');
INSERT INTO `travel_card_details_for_transactions` VALUES ('31', '09-10-2021', 'ZZALTC_57', 'po_21', 'pod_59', '89.26', '135.65', '234.9', '224.92', 'proc_1', 'Corrugation', '', '300', '3', '68', '105', '142', '', null, '5455', 'rejaulnc', '2021-10-09 10:31:00');
INSERT INTO `travel_card_details_for_transactions` VALUES ('32', '09-10-2021', 'ZZALTC_41', 'po_19', 'pod_44', '1067', '2053.97', '3556.65', '3120.96', 'proc_2', 'Printing & Slotting', '4420', '4420', '2', '48', '0', '0', '', null, '301982', 'jakir', '2021-10-09 10:41:01');
INSERT INTO `travel_card_details_for_transactions` VALUES ('33', '09-10-2021', 'ZZALTC_42', 'po_19', 'pod_45', '212.14', '408.37', '707.14', '620.51', 'proc_2', 'Printing & Slotting', '1000', '1000', '2', '48', '0', '0', '', null, '301982', 'jakir', '2021-10-09 11:07:10');
INSERT INTO `travel_card_details_for_transactions` VALUES ('34', '09-10-2021', 'ZZALTC_55', 'po_21', 'pod_56', '241.06', '366.35', '634.37', '607.4', 'proc_4', 'Die Cutting ', '500', '500', '2', '54', '259', '395', '', null, '306186', 'akther', '2021-10-09 12:30:03');
INSERT INTO `travel_card_details_for_transactions` VALUES ('35', '09-10-2021', 'ZZALTC_48', 'po_20', 'pod_49', '2917.84', '4434.35', '7678.52', '7352.19', 'proc_1', 'Corrugation', '', '9824', '3', '60', '3052', '4512', '', null, '5455', 'rejaulnc', '2021-10-09 12:35:11');
INSERT INTO `travel_card_details_for_transactions` VALUES ('36', '09-10-2021', 'ZZALTC_52', 'po_20', 'pod_53', '27.33', '41.53', '71.92', '68.86', 'proc_1', 'Corrugation', '', '45', '2', '60', '30', '45', '', null, '5455', 'rejaulnc', '2021-10-09 12:35:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('37', '09-10-2021', 'ZZALTC_48', 'po_20', 'pod_49', '2917.84', '4434.35', '7678.52', '7352.19', 'proc_2', 'Printing & Slotting', '9824', '9824', '3', '60', '3052', '4512', '', null, '301982', 'jakir', '2021-10-09 13:41:48');
INSERT INTO `travel_card_details_for_transactions` VALUES ('38', '09-10-2021', 'ZZALTC_40', 'po_19', 'pod_43', '1382.57', '2661.45', '4608.58', '4044.03', 'proc_6', 'Folding & Gluing ', '5395', '5370', '2', '48', '1450', '2760', '', null, '302770', 'sujon', '2021-10-09 13:45:32');
INSERT INTO `travel_card_details_for_transactions` VALUES ('39', '09-10-2021', 'ZZALTC_48', 'po_20', 'pod_49', '2917.84', '4434.35', '7678.52', '7352.19', 'proc_6', 'Folding & Gluing ', '9824', '9824', '3', '60', '3052', '4512', '', null, '302770', 'sujon', '2021-10-09 13:48:08');
INSERT INTO `travel_card_details_for_transactions` VALUES ('40', '09-10-2021', 'ZZALTC_35', 'po_17', 'pod_38', '332.53', '640.12', '1108.44', '972.65', 'proc_2', 'Printing & Slotting', '638', '638', '1', '36', '0', '0', '', null, '297', 'subash', '2021-10-09 13:52:02');
INSERT INTO `travel_card_details_for_transactions` VALUES ('41', '09-10-2021', 'ZZALTC_59', 'po_23', 'pod_67', '1188.35', '713.01', '3127.25', '1901.37', 'proc_1', 'Corrugation', '', '2000', '2', '54', '1216', '734', '', null, '5989', 'shahin', '2021-10-09 14:35:09');
INSERT INTO `travel_card_details_for_transactions` VALUES ('42', '09-10-2021', 'ZZALTC_28', 'po_13', 'pod_31', '174.14', '335.22', '580.46', '509.35', 'proc_6', 'Folding & Gluing ', '529', '296', '2', '54', '0', '0', '', null, '304064', 'monarul', '2021-10-09 15:02:07');
INSERT INTO `travel_card_details_for_transactions` VALUES ('43', '09-10-2021', 'ZZALTC_48', 'po_20', 'pod_49', '2917.84', '4434.35', '7678.52', '7352.19', 'proc_7', 'Delivery', '5660', '12260', '3', '60', '3052', '4512', '', null, '3534', 'mahfuz', '2021-10-09 15:07:13');
INSERT INTO `travel_card_details_for_transactions` VALUES ('44', '09-10-2021', 'ZZALTC_30', 'po_13', 'pod_33', '336.51', '647.79', '1121.71', '984.3', 'proc_6', 'Folding & Gluing ', '1228', '503', '2', '50', '0', '0', '', null, '304064', 'monarul', '2021-10-09 15:08:54');
INSERT INTO `travel_card_details_for_transactions` VALUES ('45', '09-10-2021', 'ZZALTC_58', 'po_23', 'pod_66', '1584.47', '950.68', '4169.66', '2535.16', 'proc_1', 'Corrugation', '', '3000', '2', '48', '1625', '1022', '', null, '5989', 'shahin', '2021-10-09 16:04:46');
INSERT INTO `travel_card_details_for_transactions` VALUES ('46', '09-10-2021', 'ZZALTC_56', 'po_21', 'pod_57', '242.84', '369.06', '639.06', '611.9', 'proc_4', 'Die Cutting ', '600', '1800', '3', '68', '267', '388', '', null, '306186', 'akther', '2021-10-09 16:22:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('47', '09-10-2021', 'ZZALTC_59', 'po_23', 'pod_67', '1188.35', '713.01', '3127.25', '1901.37', 'proc_2', 'Printing & Slotting', '2000', '2000', '2', '54', '1216', '734', '', null, '300817', 'monir', '2021-10-09 17:17:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('48', '09-10-2021', 'ZZALTC_59', 'po_23', 'pod_67', '1188.35', '713.01', '3127.25', '1901.37', 'proc_6', 'Folding & Gluing ', '2000', '2000', '2', '54', '1216', '734', '', null, '304064', 'monarul', '2021-10-09 17:19:37');
INSERT INTO `travel_card_details_for_transactions` VALUES ('49', '09-10-2021', 'ZZALTC_49', 'po_20', 'pod_50', '198.44', '301.58', '522.22', '500.03', 'proc_1', 'Corrugation', '', '583', '4', '64', '215', '325', '', null, '5989', 'shahin', '2021-10-09 17:23:28');
INSERT INTO `travel_card_details_for_transactions` VALUES ('50', '09-10-2021', 'ZZALTC_51', 'po_20', 'pod_52', '175.27', '266.37', '461.24', '441.64', 'proc_1', 'Corrugation', '', '432', '3', '64', '188', '272', '', null, '5989', 'shahin', '2021-10-09 17:24:08');
INSERT INTO `travel_card_details_for_transactions` VALUES ('51', '09-10-2021', 'ZZALTC_31', 'po_13', 'pod_34', '484.85', '933.34', '1616.17', '1418.19', 'proc_6', 'Folding & Gluing ', '3284', '620', '2', '48', '521', '1100', '', null, '304064', 'monarul', '2021-10-09 17:34:51');
INSERT INTO `travel_card_details_for_transactions` VALUES ('52', '09-10-2021', 'ZZALTC_29', 'po_13', 'pod_32', '106.7', '205.4', '355.67', '312.1', 'proc_6', 'Folding & Gluing ', '834', '417', '2', '46', '118', '226', '', null, '304064', 'monarul', '2021-10-09 17:36:08');
INSERT INTO `travel_card_details_for_transactions` VALUES ('53', '09-10-2021', 'ZZALTC_57', 'po_21', 'pod_59', '89.26', '135.65', '234.9', '224.92', 'proc_4', 'Die Cutting ', '300', '300', '3', '68', '105', '142', '', null, '306186', 'akther', '2021-10-09 17:38:16');
INSERT INTO `travel_card_details_for_transactions` VALUES ('54', '09-10-2021', 'ZZALTC_59', 'po_23', 'pod_67', '1188.35', '713.01', '3127.25', '1901.37', 'proc_7', 'Delivery', '2000', '2000', '2', '54', '1216', '734', '', null, '3534', 'mahfuz', '2021-10-09 17:41:50');
INSERT INTO `travel_card_details_for_transactions` VALUES ('55', '09-10-2021', 'ZZALTC_58', 'po_23', 'pod_66', '1584.47', '950.68', '4169.66', '2535.16', 'proc_2', 'Printing & Slotting', '3000', '3000', '2', '48', '1625', '1022', '', null, '300817', 'monir', '2021-10-09 17:44:22');
INSERT INTO `travel_card_details_for_transactions` VALUES ('56', '09-10-2021', 'ZZALTC_55', 'po_21', 'pod_56', '241.06', '366.35', '634.37', '607.4', 'proc_2', 'Printing & Slotting', '500', '500', '2', '54', '259', '395', '', null, '361', 'polash', '2021-10-09 18:36:20');
INSERT INTO `travel_card_details_for_transactions` VALUES ('57', '09-10-2021', 'ZZALTC_56', 'po_21', 'pod_57', '242.84', '369.06', '639.06', '611.9', 'proc_2', 'Printing & Slotting', '1800', '600', '3', '68', '267', '388', '', null, '361', 'polash', '2021-10-09 18:38:38');
INSERT INTO `travel_card_details_for_transactions` VALUES ('58', '09-10-2021', 'ZZALTC_55', 'po_21', 'pod_56', '241.06', '366.35', '634.37', '607.4', 'proc_6', 'Folding & Gluing ', '500', '500', '2', '54', '259', '395', '', null, '304064', 'monarul', '2021-10-09 18:43:29');
INSERT INTO `travel_card_details_for_transactions` VALUES ('59', '09-10-2021', 'ZZALTC_51', 'po_20', 'pod_52', '175.27', '266.37', '461.24', '441.64', 'proc_2', 'Printing & Slotting', '432', '432', '3', '64', '188', '272', '', null, '300817', 'monir', '2021-10-09 18:43:33');
INSERT INTO `travel_card_details_for_transactions` VALUES ('60', '09-10-2021', 'ZZALTC_41', 'po_19', 'pod_44', '1067', '2053.97', '3556.65', '3120.96', 'proc_6', 'Folding & Gluing ', '4420', '4425', '2', '48', '0', '0', '', null, '305059', 'rejaul', '2021-10-09 19:25:41');
INSERT INTO `travel_card_details_for_transactions` VALUES ('61', '09-10-2021', 'ZZALTC_42', 'po_19', 'pod_45', '212.14', '408.37', '707.14', '620.51', 'proc_6', 'Folding & Gluing ', '1000', '1000', '2', '48', '0', '0', '', null, '305059', 'rejaul', '2021-10-09 20:49:27');
INSERT INTO `travel_card_details_for_transactions` VALUES ('62', '09-10-2021', 'ZZALTC_51', 'po_20', 'pod_52', '175.27', '266.37', '461.24', '441.64', 'proc_6', 'Folding & Gluing ', '432', '427', '3', '64', '188', '272', '', null, '305059', 'rejaul', '2021-10-09 21:12:36');
INSERT INTO `travel_card_details_for_transactions` VALUES ('63', '09-10-2021', 'ZZALTC_57', 'po_21', 'pod_59', '89.26', '135.65', '234.9', '224.92', 'proc_2', 'Printing & Slotting', '300', '300', '3', '68', '105', '142', '', null, '361', 'polash', '2021-10-09 21:14:55');
INSERT INTO `travel_card_details_for_transactions` VALUES ('64', '09-10-2021', 'ZZALTC_32', 'po_14', 'pod_35', '272.12', '523.83', '907.06', '795.95', 'proc_6', 'Folding & Gluing ', '2733', '911', '2', '56', '0', '0', '', null, '305059', 'rejaul', '2021-10-09 21:38:11');
INSERT INTO `travel_card_details_for_transactions` VALUES ('65', '09-10-2021', 'ZZALTC_56', 'po_21', 'pod_57', '242.84', '369.06', '639.06', '611.9', 'proc_6', 'Folding & Gluing ', '600', '600', '3', '68', '267', '388', '', null, '304064', 'monarul', '2021-10-09 21:39:32');
INSERT INTO `travel_card_details_for_transactions` VALUES ('66', '09-10-2021', 'ZZALTC_58', 'po_23', 'pod_66', '1584.47', '950.68', '4169.66', '2535.16', 'proc_6', 'Folding & Gluing ', '3000', '3050', '2', '48', '1625', '1022', '', null, '304064', 'monarul', '2021-10-09 21:47:00');
INSERT INTO `travel_card_details_for_transactions` VALUES ('67', '10-10-2021', 'ZZALTC_30', 'po_13', 'pod_33', '336.51', '647.79', '1121.71', '984.3', '', '', '71', '71', '2', '50', '0', '0', '', null, '3603', 'asinur', '2021-10-10 06:55:40');
INSERT INTO `travel_card_details_for_transactions` VALUES ('68', '10-10-2021', 'ZZALTC_53', 'po_20', 'pod_54', '408.37', '620.61', '1074.65', '1028.98', 'proc_1', 'Corrugation', '', '731', '2', '58', '430', '655', '', null, '5455', 'rejaulnc', '2021-10-10 07:20:40');
INSERT INTO `travel_card_details_for_transactions` VALUES ('69', '10-10-2021', 'ZZALTC_84', 'po_33', 'pod_85', '558.08', '848.14', '1468.64', '1406.22', 'proc_1', 'Corrugation', '', '999', '2', '58', '575', '876', '', null, '5455', 'rejaulnc', '2021-10-10 07:21:31');
INSERT INTO `travel_card_details_for_transactions` VALUES ('70', '10-10-2021', 'ZZALTC_50', 'po_20', 'pod_51', '3270.43', '4970.19', '8606.4', '8240.62', 'proc_1', 'Corrugation', '', '430', '3', '54', '3320', '5045', '', null, '5455', 'rejaulnc', '2021-10-10 07:50:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('71', '10-10-2021', 'ZZALTC_13', 'po_7', 'pod_13', '112.45', '216.48', '374.85', '328.93', 'proc_1', 'Corrugation', '', '670', '3', '56', '113', '287', '', null, '5455', 'rejaulnc', '2021-10-10 07:52:22');
INSERT INTO `travel_card_details_for_transactions` VALUES ('72', '10-10-2021', 'ZZALTC_61', 'po_22', 'pod_61', '295.05', '567.96', '983.49', '863.01', 'proc_1', 'Corrugation', '', '1100', '3', '60', '305', '585', '', null, '5455', 'rejaulnc', '2021-10-10 09:23:24');
INSERT INTO `travel_card_details_for_transactions` VALUES ('73', '10-10-2021', 'ZZALTC_60', 'po_22', 'pod_60', '402.34', '774.5', '1341.12', '1176.83', 'proc_1', 'Corrugation', '', '1500', '3', '60', '426', '786', '', null, '5455', 'rejaulnc', '2021-10-10 09:25:33');
INSERT INTO `travel_card_details_for_transactions` VALUES ('74', '10-10-2021', 'ZZALTC_84', 'po_33', 'pod_85', '558.08', '848.14', '1468.64', '1406.22', 'proc_2', 'Printing & Slotting', '999', '999', '2', '58', '575', '876', '', null, '301982', 'jakir', '2021-10-10 10:18:28');
INSERT INTO `travel_card_details_for_transactions` VALUES ('75', '10-10-2021', 'ZZALTC_53', 'po_20', 'pod_54', '408.37', '620.61', '1074.65', '1028.98', 'proc_2', 'Printing & Slotting', '731', '731', '2', '58', '430', '655', '', null, '301982', 'jakir', '2021-10-10 10:21:33');
INSERT INTO `travel_card_details_for_transactions` VALUES ('76', '10-10-2021', 'ZZALTC_84', 'po_33', 'pod_85', '558.08', '848.14', '1468.64', '1406.22', 'proc_6', 'Folding & Gluing ', '999', '999', '2', '58', '575', '876', '', null, '302770', 'sujon', '2021-10-10 10:24:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('77', '10-10-2021', 'ZZALTC_61', 'po_22', 'pod_61', '295.05', '567.96', '983.49', '863.01', 'proc_2', 'Printing & Slotting', '2200', '1100', '3', '60', '305', '585', '', null, '301982', 'jakir', '2021-10-10 10:26:46');
INSERT INTO `travel_card_details_for_transactions` VALUES ('78', '10-10-2021', 'ZZALTC_57', 'po_21', 'pod_59', '89.26', '135.65', '234.9', '224.92', 'proc_6', 'Folding & Gluing ', '300', '300', '3', '68', '105', '142', '', null, '302863', 'kamal', '2021-10-10 10:41:32');
INSERT INTO `travel_card_details_for_transactions` VALUES ('79', '10-10-2021', 'ZZALTC_61', 'po_22', 'pod_61', '295.05', '567.96', '983.49', '863.01', 'proc_6', 'Folding & Gluing ', '1100', '1100', '3', '60', '305', '585', '', null, '302770', 'sujon', '2021-10-10 10:50:21');
INSERT INTO `travel_card_details_for_transactions` VALUES ('80', '10-10-2021', 'ZZALTC_60', 'po_22', 'pod_60', '402.34', '774.5', '1341.12', '1176.83', 'proc_2', 'Printing & Slotting', '3000', '1500', '3', '60', '426', '786', '', null, '301982', 'jakir', '2021-10-10 10:51:28');
INSERT INTO `travel_card_details_for_transactions` VALUES ('81', '10-10-2021', 'ZZALTC_64', 'po_22', 'pod_64', '231.65', '445.92', '772.16', '677.57', 'proc_1', 'Corrugation', '', '950', '2', '50', '246', '469', '', null, '5455', 'rejaulnc', '2021-10-10 11:21:27');
INSERT INTO `travel_card_details_for_transactions` VALUES ('82', '10-10-2021', 'ZZALTC_62', 'po_22', 'pod_62', '14.31', '27.54', '47.68', '41.84', 'proc_1', 'Corrugation', '', '50', '2', '50', '18', '35', '', null, '5455', 'rejaulnc', '2021-10-10 11:22:35');
INSERT INTO `travel_card_details_for_transactions` VALUES ('83', '10-10-2021', 'ZZALTC_63', 'po_22', 'pod_63', '25.28', '48.66', '84.27', '73.94', 'proc_1', 'Corrugation', '', '130', '2', '50', '29', '53', '', null, '5455', 'rejaulnc', '2021-10-10 11:23:34');
INSERT INTO `travel_card_details_for_transactions` VALUES ('84', '10-10-2021', 'ZZALTC_60', 'po_22', 'pod_60', '402.34', '774.5', '1341.12', '1176.83', 'proc_6', 'Folding & Gluing ', '1500', '1500', '3', '60', '426', '786', '', null, '302770', 'sujon', '2021-10-10 11:47:07');
INSERT INTO `travel_card_details_for_transactions` VALUES ('85', '10-10-2021', 'ZZALTC_39', 'po_18', 'pod_42', '0', '0', '0', '0', 'proc_1', 'Corrugation', '', '1350', '0', '0', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-10 11:55:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('86', '10-10-2021', 'ZZALTC_32', 'po_14', 'pod_35', '272.12', '523.83', '907.06', '795.95', 'proc_7', 'Delivery', '911', '1551', '2', '56', '0', '0', '', null, '3534', 'mahfuz', '2021-10-10 12:04:22');
INSERT INTO `travel_card_details_for_transactions` VALUES ('87', '10-10-2021', 'ZZALTC_53', 'po_20', 'pod_54', '408.37', '620.61', '1074.65', '1028.98', 'proc_6', 'Folding & Gluing ', '731', '731', '2', '58', '430', '655', '', null, '302863', 'kamal', '2021-10-10 12:09:59');
INSERT INTO `travel_card_details_for_transactions` VALUES ('88', '10-10-2021', 'ZZALTC_61', 'po_22', 'pod_61', '295.05', '567.96', '983.49', '863.01', 'proc_7', 'Delivery', '1100', '1100', '3', '60', '305', '585', '', null, '3534', 'mahfuz', '2021-10-10 12:16:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('89', '10-10-2021', 'ZZALTC_25', 'po_12', 'pod_28', '205.25', '122.57', '528.32', '327.82', 'proc_1', 'Corrugation', '', '10000', '4', '32', '228', '135', '', null, '5455', 'rejaulnc', '2021-10-10 12:28:21');
INSERT INTO `travel_card_details_for_transactions` VALUES ('90', '10-10-2021', 'ZZALTC_26', 'po_12', 'pod_29', '341.92', '204.19', '880.11', '546.11', 'proc_1', 'Corrugation', '', '10000', '4', '42', '352', '216', '', null, '5455', 'rejaulnc', '2021-10-10 12:29:04');
INSERT INTO `travel_card_details_for_transactions` VALUES ('91', '10-10-2021', 'ZZALTC_27', 'po_12', 'pod_30', '663.12', '396', '1706.88', '1059.12', 'proc_1', 'Corrugation', '', '35000', '4', '24', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-10 12:29:32');
INSERT INTO `travel_card_details_for_transactions` VALUES ('92', '10-10-2021', 'ZZALTC_25', 'po_12', 'pod_28', '205.25', '122.57', '528.32', '327.82', 'proc_3', 'Cutting Creasing ', '10000', '10000', '4', '32', '228', '135', '', null, '3603', 'asinur', '2021-10-10 12:32:19');
INSERT INTO `travel_card_details_for_transactions` VALUES ('93', '10-10-2021', 'ZZALTC_26', 'po_12', 'pod_29', '341.92', '204.19', '880.11', '546.11', 'proc_3', 'Cutting Creasing ', '10000', '10000', '4', '42', '352', '216', '', null, '3603', 'asinur', '2021-10-10 12:33:31');
INSERT INTO `travel_card_details_for_transactions` VALUES ('94', '10-10-2021', 'ZZALTC_64', 'po_22', 'pod_64', '231.65', '445.92', '772.16', '677.57', 'proc_2', 'Printing & Slotting', '950', '950', '2', '50', '246', '469', '', null, '301982', 'jakir', '2021-10-10 12:33:36');
INSERT INTO `travel_card_details_for_transactions` VALUES ('95', '10-10-2021', 'ZZALTC_27', 'po_12', 'pod_30', '663.12', '396', '1706.88', '1059.12', 'proc_3', 'Cutting Creasing ', '35000', '35000', '4', '24', '0', '0', '', null, '3603', 'asinur', '2021-10-10 12:34:44');
INSERT INTO `travel_card_details_for_transactions` VALUES ('96', '10-10-2021', 'ZZALTC_25', 'po_12', 'pod_28', '205.25', '122.57', '528.32', '327.82', 'proc_7', 'Delivery', '10000', '10000', '4', '32', '228', '135', '', null, '3534', 'mahfuz', '2021-10-10 12:38:00');
INSERT INTO `travel_card_details_for_transactions` VALUES ('97', '10-10-2021', 'ZZALTC_26', 'po_12', 'pod_29', '341.92', '204.19', '880.11', '546.11', 'proc_7', 'Delivery', '10000', '10000', '4', '42', '352', '216', '', null, '3534', 'mahfuz', '2021-10-10 12:38:29');
INSERT INTO `travel_card_details_for_transactions` VALUES ('98', '10-10-2021', 'ZZALTC_27', 'po_12', 'pod_30', '663.12', '396', '1706.88', '1059.12', 'proc_7', 'Delivery', '35000', '35000', '4', '24', '0', '0', '', null, '3534', 'mahfuz', '2021-10-10 12:38:55');
INSERT INTO `travel_card_details_for_transactions` VALUES ('99', '10-10-2021', 'ZZALTC_58', 'po_23', 'pod_66', '1584.47', '950.68', '4169.66', '2535.16', 'proc_7', 'Delivery', '2980', '3000', '2', '48', '1625', '1022', '', null, '3534', 'mahfuz', '2021-10-10 12:42:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('100', '10-10-2021', 'ZZALTC_64', 'po_22', 'pod_64', '231.65', '445.92', '772.16', '677.57', 'proc_6', 'Folding & Gluing ', '950', '950', '2', '50', '246', '469', '', null, '302770', 'sujon', '2021-10-10 12:46:18');
INSERT INTO `travel_card_details_for_transactions` VALUES ('101', '10-10-2021', 'ZZALTC_82', 'po_31', 'pod_84', '21.26', '40.93', '70.88', '62.2', 'proc_2', 'Printing & Slotting', '43', '86', '2', '64', '30', '55', '', null, '297', 'subash', '2021-10-10 12:51:33');
INSERT INTO `travel_card_details_for_transactions` VALUES ('102', '10-10-2021', 'ZZALTC_78', 'po_29', 'pod_80', '1849.51', '1109.71', '4867.13', '2959.22', 'proc_1', 'Corrugation', '', '7273', '3', '52', '1900', '1150', '', null, '5455', 'rejaulnc', '2021-10-10 13:53:24');
INSERT INTO `travel_card_details_for_transactions` VALUES ('103', '10-10-2021', 'ZZALTC_68', 'po_24', 'pod_70', '8.95', '17.24', '29.85', '26.19', 'proc_1', 'Corrugation', '', '18', '2', '64', '0', '0', '', null, '5989', 'shahin', '2021-10-10 14:07:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('104', '10-10-2021', 'ZZALTC_67', 'po_24', 'pod_69', '30.13', '57.99', '100.42', '88.12', 'proc_1', 'Corrugation', '', '57', '2', '68', '0', '0', '', null, '5989', 'shahin', '2021-10-10 14:08:24');
INSERT INTO `travel_card_details_for_transactions` VALUES ('105', '10-10-2021', 'ZZALTC_72', 'po_24', 'pod_74', '49.62', '95.52', '165.4', '145.14', 'proc_1', 'Corrugation', '', '84', '1', '38', '53', '102', '', null, '5989', 'shahin', '2021-10-10 14:08:49');
INSERT INTO `travel_card_details_for_transactions` VALUES ('106', '10-10-2021', 'ZZALTC_70', 'po_24', 'pod_72', '11.75', '22.62', '39.17', '34.37', 'proc_1', 'Corrugation', '', '21', '1', '36', '0', '0', '', null, '5989', 'shahin', '2021-10-10 14:09:12');
INSERT INTO `travel_card_details_for_transactions` VALUES ('107', '10-10-2021', 'ZZALTC_82', 'po_31', 'pod_84', '21.26', '40.93', '70.88', '62.2', 'proc_6', 'Folding & Gluing ', '86', '43', '2', '64', '30', '55', '', null, '302863', 'kamal', '2021-10-10 15:32:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('108', '10-10-2021', 'ZZALTC_49', 'po_20', 'pod_50', '198.44', '301.58', '522.22', '500.03', 'proc_2', 'Printing & Slotting', '583', '583', '4', '62', '215', '325', '', null, '301982', 'jakir', '2021-10-10 15:33:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('109', '10-10-2021', 'ZZALTC_49', 'po_20', 'pod_50', '198.44', '301.58', '522.22', '500.03', 'proc_6', 'Folding & Gluing ', '583', '583', '4', '62', '215', '325', '', null, '305059', 'rejaul', '2021-10-10 15:36:15');
INSERT INTO `travel_card_details_for_transactions` VALUES ('110', '10-10-2021', 'ZZALTC_28', 'po_13', 'pod_31', '174.14', '335.22', '580.46', '509.35', 'proc_7', 'Delivery', '296', '85', '2', '54', '0', '0', '', null, '3534', 'mahfuz', '2021-10-10 16:20:33');
INSERT INTO `travel_card_details_for_transactions` VALUES ('111', '10-10-2021', 'ZZALTC_82', 'po_31', 'pod_84', '21.26', '40.93', '70.88', '62.2', 'proc_7', 'Delivery', '43', '43', '2', '64', '30', '55', '', null, '3534', 'mahfuz', '2021-10-10 16:25:02');
INSERT INTO `travel_card_details_for_transactions` VALUES ('112', '10-10-2021', 'ZZALTC_33', 'po_15', 'pod_36', '510.6', '306.36', '1343.7', '816.97', 'proc_6', 'Folding & Gluing ', '3329', '1093', '2', '54', '553', '343', '', null, '305059', 'rejaul', '2021-10-10 16:35:13');
INSERT INTO `travel_card_details_for_transactions` VALUES ('113', '10-10-2021', 'ZZALTC_33', 'po_15', 'pod_36', '510.6', '306.36', '1343.7', '816.97', 'proc_7', 'Delivery', '1093', '1093', '2', '54', '553', '343', '', null, '3534', 'mahfuz', '2021-10-10 17:16:05');
INSERT INTO `travel_card_details_for_transactions` VALUES ('114', '10-10-2021', 'ZZALTC_74', 'po_23', 'pod_76', '963.66', '578.19', '2535.94', '1541.85', 'proc_1', 'Corrugation', '', '2000', '2', '54', '983', '594', '', null, '5989', 'shahin', '2021-10-10 17:33:29');
INSERT INTO `travel_card_details_for_transactions` VALUES ('115', '10-10-2021', 'ZZALTC_53', 'po_20', 'pod_54', '408.37', '620.61', '1074.65', '1028.98', 'proc_7', 'Delivery', '731', '731', '2', '58', '430', '655', '', null, '3534', 'mahfuz', '2021-10-10 17:37:07');
INSERT INTO `travel_card_details_for_transactions` VALUES ('116', '10-10-2021', 'ZZALTC_50', 'po_20', 'pod_51', '3270.43', '4970.19', '8606.4', '8240.62', 'proc_2', 'Printing & Slotting', '860', '430', '3', '54', '3320', '5045', '', null, '300817', 'monir', '2021-10-10 17:46:23');
INSERT INTO `travel_card_details_for_transactions` VALUES ('117', '10-10-2021', 'ZZALTC_50', 'po_20', 'pod_51', '3270.43', '4970.19', '8606.4', '8240.62', 'proc_6', 'Folding & Gluing ', '430', '430', '3', '54', '3320', '5045', '', null, '305059', 'rejaul', '2021-10-10 17:48:40');
INSERT INTO `travel_card_details_for_transactions` VALUES ('118', '10-10-2021', 'ZZALTC_60', 'po_22', 'pod_60', '402.34', '774.5', '1341.12', '1176.83', 'proc_7', 'Delivery', '1500', '1500', '3', '60', '426', '786', '', null, '3534', 'mahfuz', '2021-10-10 17:51:00');
INSERT INTO `travel_card_details_for_transactions` VALUES ('119', '10-10-2021', 'ZZALTC_78', 'po_29', 'pod_80', '1849.51', '1109.71', '4867.13', '2959.22', 'proc_2', 'Printing & Slotting', '7273', '8050', '3', '52', '1900', '1150', '', null, '300817', 'monir', '2021-10-10 18:03:21');
INSERT INTO `travel_card_details_for_transactions` VALUES ('120', '10-10-2021', 'ZZALTC_57', 'po_21', 'pod_59', '89.26', '135.65', '234.9', '224.92', 'proc_7', 'Delivery', '300', '300', '3', '68', '105', '142', '', null, '3534', 'mahfuz', '2021-10-10 18:03:26');
INSERT INTO `travel_card_details_for_transactions` VALUES ('121', '10-10-2021', 'ZZALTC_55', 'po_21', 'pod_56', '241.06', '366.35', '634.37', '607.4', 'proc_7', 'Delivery', '500', '500', '2', '54', '259', '395', '', null, '3534', 'mahfuz', '2021-10-10 18:03:50');
INSERT INTO `travel_card_details_for_transactions` VALUES ('122', '10-10-2021', 'ZZALTC_56', 'po_21', 'pod_57', '242.84', '369.06', '639.06', '611.9', 'proc_7', 'Delivery', '600', '600', '3', '68', '267', '388', '', null, '3534', 'mahfuz', '2021-10-10 18:04:28');
INSERT INTO `travel_card_details_for_transactions` VALUES ('123', '10-10-2021', 'ZZALTC_73', 'po_23', 'pod_75', '1485.44', '891.27', '3909.06', '2376.71', 'proc_1', 'Corrugation', '', '3000', '2', '54', '1512', '953', '', null, '5989', 'shahin', '2021-10-10 19:44:49');
INSERT INTO `travel_card_details_for_transactions` VALUES ('124', '10-10-2021', 'ZZALTC_74', 'po_23', 'pod_76', '963.66', '578.19', '2535.94', '1541.85', 'proc_2', 'Printing & Slotting', '2000', '2000', '2', '52', '983', '594', '', null, '300817', 'monir', '2021-10-10 21:21:06');
INSERT INTO `travel_card_details_for_transactions` VALUES ('125', '10-10-2021', 'ZZALTC_75', 'po_25', 'pod_77', '693.89', '1335.74', '2312.96', '2029.63', 'proc_1', 'Corrugation', '', '2323', '2', '56', '714', '1368', '', null, '5989', 'shahin', '2021-10-10 21:31:28');
INSERT INTO `travel_card_details_for_transactions` VALUES ('126', '11-10-2021', 'ZZALTC_79', 'po_26', 'pod_81', '390.66', '593.7', '1028.06', '984.37', 'proc_1', 'Corrugation', '', '671', '2', '58', '406', '604', '', null, '5455', 'rejaulnc', '2021-10-11 07:11:41');
INSERT INTO `travel_card_details_for_transactions` VALUES ('127', '11-10-2021', 'ZZALTC_70', 'po_24', 'pod_72', '11.75', '22.62', '39.17', '34.37', 'proc_3', 'Cutting Creasing ', '21', '21', '1', '36', '0', '0', '', null, '304387', 'rabiul', '2021-10-11 07:45:07');
INSERT INTO `travel_card_details_for_transactions` VALUES ('128', '11-10-2021', 'ZZALTC_73', 'po_23', 'pod_75', '1485.44', '891.27', '3909.06', '2376.71', 'proc_2', 'Printing & Slotting', '3000', '3000', '2', '54', '1512', '953', '', null, '301982', 'jakir', '2021-10-11 07:45:53');
INSERT INTO `travel_card_details_for_transactions` VALUES ('129', '11-10-2021', 'ZZALTC_68', 'po_24', 'pod_70', '8.95', '17.24', '29.85', '26.19', 'proc_3', 'Cutting Creasing ', '18', '18', '2', '64', '0', '0', '', null, '304387', 'rabiul', '2021-10-11 07:46:19');
INSERT INTO `travel_card_details_for_transactions` VALUES ('130', '11-10-2021', 'ZZALTC_74', 'po_23', 'pod_76', '963.66', '578.19', '2535.94', '1541.85', 'proc_6', 'Folding & Gluing ', '2000', '3200', '2', '52', '983', '594', '', null, '302863', 'kamal', '2021-10-11 07:46:30');
INSERT INTO `travel_card_details_for_transactions` VALUES ('131', '11-10-2021', 'ZZALTC_67', 'po_24', 'pod_69', '30.13', '57.99', '100.42', '88.12', 'proc_3', 'Cutting Creasing ', '57', '57', '2', '68', '0', '0', '', null, '304387', 'rabiul', '2021-10-11 07:47:19');
INSERT INTO `travel_card_details_for_transactions` VALUES ('132', '11-10-2021', 'ZZALTC_85', 'po_37', 'pod_96', '443.47', '306.21', '1407.84', '749.68', 'proc_1', 'Corrugation', '', '8360', '2', '42', '458', '325', '', null, '5455', 'rejaulnc', '2021-10-11 09:45:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('133', '11-10-2021', 'ZZALTC_86', 'po_37', 'pod_97', '816.71', '563.92', '2592.73', '1380.63', 'proc_1', 'Corrugation', '', '15100', '2', '42', '834', '588', '', null, '5455', 'rejaulnc', '2021-10-11 09:47:06');
INSERT INTO `travel_card_details_for_transactions` VALUES ('134', '11-10-2021', 'ZZALTC_74', 'po_23', 'pod_76', '963.66', '578.19', '2535.94', '1541.85', 'proc_7', 'Delivery', '3200', '855', '2', '52', '983', '594', '', null, '3534', 'mahfuz', '2021-10-11 10:17:56');
INSERT INTO `travel_card_details_for_transactions` VALUES ('135', '11-10-2021', 'ZZALTC_37', 'po_18', 'pod_40', '0', '0', '0', '0', 'proc_4', 'Die Cutting ', '10000', '10002', '0', '0', '0', '0', '', null, '306186', 'akther', '2021-10-11 10:40:22');
INSERT INTO `travel_card_details_for_transactions` VALUES ('136', '11-10-2021', 'ZZALTC_51', 'po_20', 'pod_52', '175.27', '266.37', '461.24', '441.64', 'proc_7', 'Delivery', '427', '427', '3', '64', '188', '272', '', null, '3534', 'mahfuz', '2021-10-11 10:46:17');
INSERT INTO `travel_card_details_for_transactions` VALUES ('137', '11-10-2021', 'ZZALTC_49', 'po_20', 'pod_50', '198.44', '301.58', '522.22', '500.03', 'proc_7', 'Delivery', '583', '583', '4', '62', '215', '325', '', null, '3534', 'mahfuz', '2021-10-11 10:47:12');
INSERT INTO `travel_card_details_for_transactions` VALUES ('138', '11-10-2021', 'ZZALTC_50', 'po_20', 'pod_51', '3270.43', '4970.19', '8606.4', '8240.62', 'proc_7', 'Delivery', '430', '430', '3', '54', '3320', '5045', '', null, '3534', 'mahfuz', '2021-10-11 10:47:47');
INSERT INTO `travel_card_details_for_transactions` VALUES ('139', '11-10-2021', 'ZZALTC_84', 'po_33', 'pod_85', '558.08', '848.14', '1468.64', '1406.22', 'proc_7', 'Delivery', '999', '999', '2', '58', '575', '876', '', null, '3534', 'mahfuz', '2021-10-11 10:48:11');
INSERT INTO `travel_card_details_for_transactions` VALUES ('140', '11-10-2021', 'ZZALTC_106', 'po_42', 'pod_111', '1826.93', '1096.16', '4807.71', '2923.09', 'proc_1', 'Corrugation', '', '4000', '2', '54', '1850', '1126', '', null, '5455', 'rejaulnc', '2021-10-11 11:37:05');
INSERT INTO `travel_card_details_for_transactions` VALUES ('141', '11-10-2021', 'ZZALTC_106', 'po_42', 'pod_111', '1826.93', '1096.16', '4807.71', '2923.09', 'proc_2', 'Printing & Slotting', '4000', '4000', '2', '52', '1850', '1126', '', null, '301982', 'jakir', '2021-10-11 11:41:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('142', '11-10-2021', 'ZZALTC_85', 'po_37', 'pod_96', '443.47', '306.21', '1407.84', '749.68', 'proc_3', 'Cutting Creasing ', '8360', '8400', '4', '52', '458', '325', '', null, '304387', 'rabiul', '2021-10-11 11:47:36');
INSERT INTO `travel_card_details_for_transactions` VALUES ('143', '11-10-2021', 'ZZALTC_73', 'po_23', 'pod_75', '1485.44', '891.27', '3909.06', '2376.71', 'proc_6', 'Folding & Gluing ', '3000', '3000', '2', '54', '1512', '953', '', null, '302863', 'kamal', '2021-10-11 12:35:22');
INSERT INTO `travel_card_details_for_transactions` VALUES ('144', '11-10-2021', 'ZZALTC_52', 'po_20', 'pod_53', '27.33', '41.53', '71.92', '68.86', 'proc_2', 'Printing & Slotting', '45', '45', '2', '60', '30', '45', '', null, '301982', 'jakir', '2021-10-11 12:38:11');
INSERT INTO `travel_card_details_for_transactions` VALUES ('145', '11-10-2021', 'ZZALTC_52', 'po_20', 'pod_53', '27.33', '41.53', '71.92', '68.86', 'proc_6', 'Folding & Gluing ', '45', '45', '2', '60', '30', '45', '', null, '302863', 'kamal', '2021-10-11 12:39:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('146', '11-10-2021', 'ZZALTC_73', 'po_23', 'pod_75', '1485.44', '891.27', '3909.06', '2376.71', 'proc_7', 'Delivery', '2965', '3000', '2', '54', '1512', '953', '', null, '3534', 'mahfuz', '2021-10-11 12:44:04');
INSERT INTO `travel_card_details_for_transactions` VALUES ('147', '11-10-2021', 'ZZALTC_107', 'po_43', 'pod_112', '2283.66', '1370.2', '6009.64', '3653.86', 'proc_1', 'Corrugation', '', '5000', '2', '52', '2315', '1406', '', null, '5455', 'rejaulnc', '2021-10-11 13:17:21');
INSERT INTO `travel_card_details_for_transactions` VALUES ('148', '11-10-2021', 'ZZALTC_107', 'po_43', 'pod_112', '2283.66', '1370.2', '6009.64', '3653.86', 'proc_2', 'Printing & Slotting', '5000', '5606', '2', '52', '2315', '1406', '', null, '301982', 'jakir', '2021-10-11 13:22:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('149', '11-10-2021', 'ZZALTC_78', 'po_29', 'pod_80', '1849.51', '1109.71', '4867.13', '2959.22', 'proc_6', 'Folding & Gluing ', '4050', '6766', '3', '52', '1900', '1150', '', null, '302863', 'kamal', '2021-10-11 13:38:01');
INSERT INTO `travel_card_details_for_transactions` VALUES ('150', '11-10-2021', 'ZZALTC_75', 'po_25', 'pod_77', '693.89', '1335.74', '2312.96', '2029.63', 'proc_2', 'Printing & Slotting', '2323', '2187', '2', '56', '714', '1368', '', null, '297', 'subash', '2021-10-11 13:41:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('151', '11-10-2021', 'ZZALTC_86', 'po_37', 'pod_97', '816.71', '563.92', '2592.73', '1380.63', 'proc_3', 'Cutting Creasing ', '15100', '15100', '4', '52', '834', '588', '', null, '3603', 'asinur', '2021-10-11 13:42:28');
INSERT INTO `travel_card_details_for_transactions` VALUES ('152', '11-10-2021', 'ZZALTC_75', 'po_25', 'pod_77', '693.89', '1335.74', '2312.96', '2029.63', 'proc_6', 'Folding & Gluing ', '2005', '2291', '2', '56', '714', '1368', '', null, '302863', 'kamal', '2021-10-11 13:45:10');
INSERT INTO `travel_card_details_for_transactions` VALUES ('153', '11-10-2021', 'ZZALTC_96', 'po_40', 'pod_101', '37.25', '71.71', '124.18', '108.96', 'proc_1', 'Corrugation', '', '70', '1', '38', '40', '68', '', null, '5989', 'shahin', '2021-10-11 14:20:03');
INSERT INTO `travel_card_details_for_transactions` VALUES ('154', '11-10-2021', 'ZZALTC_97', 'po_40', 'pod_102', '160.86', '309.65', '536.19', '470.5', 'proc_1', 'Corrugation', '', '337', '1', '38', '168', '325', '', null, '5989', 'shahin', '2021-10-11 14:20:32');
INSERT INTO `travel_card_details_for_transactions` VALUES ('155', '11-10-2021', 'ZZALTC_71', 'po_24', 'pod_73', '70.88', '136.45', '236.28', '207.34', 'proc_1', 'Corrugation', '', '120', '1', '38', '0', '0', '', null, '5989', 'shahin', '2021-10-11 14:27:08');
INSERT INTO `travel_card_details_for_transactions` VALUES ('156', '11-10-2021', 'ZZALTC_66', 'po_24', 'pod_68', '79.47', '152.97', '264.88', '232.44', 'proc_1', 'Corrugation', '', '142', '1', '38', '0', '0', '', null, '5989', 'shahin', '2021-10-11 14:39:31');
INSERT INTO `travel_card_details_for_transactions` VALUES ('157', '11-10-2021', 'ZZALTC_98', 'po_40', 'pod_103', '76.35', '146.97', '254.5', '223.32', 'proc_1', 'Corrugation', '', '142', '1', '38', '85', '162', '', null, '5989', 'shahin', '2021-10-11 14:40:50');
INSERT INTO `travel_card_details_for_transactions` VALUES ('158', '11-10-2021', 'ZZALTC_100', 'po_40', 'pod_105', '109.97', '211.7', '366.58', '321.68', 'proc_1', 'Corrugation', '', '211', '1', '38', '116', '215', '', null, '5989', 'shahin', '2021-10-11 14:45:32');
INSERT INTO `travel_card_details_for_transactions` VALUES ('159', '11-10-2021', 'ZZALTC_99', 'po_40', 'pod_104', '107.4', '206.74', '357.99', '314.13', 'proc_1', 'Corrugation', '', '225', '1', '38', '114', '218', '', null, '5989', 'shahin', '2021-10-11 14:46:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('160', '11-10-2021', 'ZZALTC_101', 'po_40', 'pod_106', '106.31', '204.64', '354.36', '310.95', 'proc_1', 'Corrugation', '', '211', '1', '38', '110', '213', '', null, '5989', 'shahin', '2021-10-11 14:53:01');
INSERT INTO `travel_card_details_for_transactions` VALUES ('161', '11-10-2021', 'ZZALTC_64', 'po_22', 'pod_64', '231.65', '445.92', '772.16', '677.57', 'proc_7', 'Delivery', '950', '950', '2', '50', '246', '469', '', null, '3534', 'mahfuz', '2021-10-11 14:56:47');
INSERT INTO `travel_card_details_for_transactions` VALUES ('162', '11-10-2021', 'ZZALTC_34', 'po_16', 'pod_37', '59.47', '114.47', '198.22', '173.94', 'proc_1', 'Corrugation', '', '117', '2', '38', '0', '0', '', null, '5989', 'shahin', '2021-10-11 14:57:54');
INSERT INTO `travel_card_details_for_transactions` VALUES ('163', '11-10-2021', 'ZZALTC_85', 'po_37', 'pod_96', '443.47', '306.21', '1407.84', '749.68', 'proc_7', 'Delivery', '8400', '17300', '4', '52', '458', '325', '', null, '3534', 'mahfuz', '2021-10-11 14:57:55');
INSERT INTO `travel_card_details_for_transactions` VALUES ('164', '11-10-2021', 'ZZALTC_76', 'po_27', 'pod_78', '628.14', '376.88', '1653', '1005.02', 'proc_1', 'Corrugation', '', '1826', '2', '42.36220472440945', '645', '388', '', null, '5989', 'shahin', '2021-10-11 15:57:04');
INSERT INTO `travel_card_details_for_transactions` VALUES ('165', '11-10-2021', 'ZZALTC_109', 'po_44', 'pod_114', '626.08', '375.65', '1647.57', '1001.72', 'proc_1', 'Corrugation', '', '2835', '2', '42', '2123.15', '806.96', '', null, '5989', 'shahin', '2021-10-11 16:15:29');
INSERT INTO `travel_card_details_for_transactions` VALUES ('166', '11-10-2021', 'ZZALTC_76', 'po_27', 'pod_78', '628.14', '376.88', '1653', '1005.02', 'proc_2', 'Printing & Slotting', '1826', '2092', '3', '66', '645', '388', '', null, '300817', 'monir', '2021-10-11 17:15:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('167', '11-10-2021', 'ZZALTC_79', 'po_26', 'pod_81', '390.66', '593.7', '1028.06', '984.37', 'proc_2', 'Printing & Slotting', '671', '636', '2', '58', '406', '604', '', null, '361', 'polash', '2021-10-11 17:31:17');
INSERT INTO `travel_card_details_for_transactions` VALUES ('168', '11-10-2021', 'ZZALTC_105', 'po_41', 'pod_110', '271.2', '522.06', '904', '793.26', 'proc_1', 'Corrugation', '', '500', '2', '64', '288', '536', '', null, '5989', 'shahin', '2021-10-11 17:34:14');
INSERT INTO `travel_card_details_for_transactions` VALUES ('169', '11-10-2021', 'ZZALTC_76', 'po_27', 'pod_78', '628.14', '376.88', '1653', '1005.02', 'proc_6', 'Folding & Gluing ', '1826', '1772', '3', '66', '645', '388', '', null, '305059', 'rejaul', '2021-10-11 17:45:28');
INSERT INTO `travel_card_details_for_transactions` VALUES ('170', '11-10-2021', 'ZZALTC_39', 'po_18', 'pod_42', '0', '0', '0', '0', 'proc_4', 'Die Cutting ', '1350', '1325', '0', '0', '0', '0', '', null, '306186', 'akther', '2021-10-11 17:50:19');
INSERT INTO `travel_card_details_for_transactions` VALUES ('171', '11-10-2021', 'ZZALTC_108', 'po_45', 'pod_113', '258.04', '154.82', '679.05', '412.86', 'proc_1', 'Corrugation', '', '1320', '2', '42', '1036.368', '394.96', '', null, '5989', 'shahin', '2021-10-11 18:23:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('172', '11-10-2021', 'ZZALTC_109', 'po_44', 'pod_114', '626.08', '375.65', '1647.57', '1001.72', 'proc_2', 'Printing & Slotting', '2835', '2835', '3', '66', '2123.15', '806.96', '', null, '300817', 'monir', '2021-10-11 18:30:04');
INSERT INTO `travel_card_details_for_transactions` VALUES ('173', '11-10-2021', 'ZZALTC_79', 'po_26', 'pod_81', '390.66', '593.7', '1028.06', '984.37', 'proc_6', 'Folding & Gluing ', '636', '634', '2', '58', '406', '604', '', null, '304064', 'monarul', '2021-10-11 18:35:06');
INSERT INTO `travel_card_details_for_transactions` VALUES ('174', '11-10-2021', 'ZZALTC_29', 'po_13', 'pod_32', '106.7', '205.4', '355.67', '312.1', 'proc_7', 'Delivery', '417', '417', '2', '46', '118', '226', '', null, '3534', 'mahfuz', '2021-10-11 18:46:18');
INSERT INTO `travel_card_details_for_transactions` VALUES ('175', '11-10-2021', 'ZZALTC_96', 'po_40', 'pod_101', '37.25', '71.71', '124.18', '108.96', 'proc_3', 'Cutting Creasing ', '70', '70', '1', '36', '40', '68', '', null, '4205', 'golam', '2021-10-11 18:47:08');
INSERT INTO `travel_card_details_for_transactions` VALUES ('176', '11-10-2021', 'ZZALTC_72', 'po_24', 'pod_74', '49.62', '95.52', '165.4', '145.14', 'proc_3', 'Cutting Creasing ', '84', '84', '1', '38', '53', '102', '', null, '4205', 'golam', '2021-10-11 19:05:00');
INSERT INTO `travel_card_details_for_transactions` VALUES ('177', '11-10-2021', 'ZZALTC_81', 'po_30', 'pod_83', '989.23', '593.54', '2603.24', '1582.77', 'proc_1', 'Corrugation', '', '3140', '2', '48', '955.84', '620.04', '', null, '5989', 'shahin', '2021-10-11 19:28:08');
INSERT INTO `travel_card_details_for_transactions` VALUES ('178', '11-10-2021', 'ZZALTC_109', 'po_44', 'pod_114', '626.08', '375.65', '1647.57', '1001.72', 'proc_6', 'Folding & Gluing ', '2835', '2835', '3', '66', '2123.15', '806.96', '', null, '305059', 'rejaul', '2021-10-11 19:28:56');
INSERT INTO `travel_card_details_for_transactions` VALUES ('179', '11-10-2021', 'ZZALTC_106', 'po_42', 'pod_111', '1826.93', '1096.16', '4807.71', '2923.09', 'proc_4', 'Die Cutting ', '4000', '4000', '2', '52', '1850', '1126', '', null, '306186', 'akther', '2021-10-11 19:38:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('180', '11-10-2021', 'ZZALTC_106', 'po_42', 'pod_111', '1826.93', '1096.16', '4807.71', '2923.09', 'proc_6', 'Folding & Gluing ', '1800', '4000', '2', '52', '1850', '1126', '', null, '304064', 'monarul', '2021-10-11 21:10:56');
INSERT INTO `travel_card_details_for_transactions` VALUES ('181', '11-10-2021', 'ZZALTC_96', 'po_40', 'pod_101', '37.25', '71.71', '124.18', '108.96', 'proc_2', 'Printing & Slotting', '70', '70', '1', '36', '40', '68', '', null, '361', 'polash', '2021-10-11 21:15:13');
INSERT INTO `travel_card_details_for_transactions` VALUES ('182', '11-10-2021', 'ZZALTC_80', 'po_30', 'pod_82', '2175.17', '1305.1', '5724.13', '3480.27', 'proc_1', 'Corrugation', '', '7152', '2', '48', '0', '0', '', null, '5989', 'shahin', '2021-10-11 21:43:28');
INSERT INTO `travel_card_details_for_transactions` VALUES ('183', '11-10-2021', 'ZZALTC_67', 'po_24', 'pod_69', '30.13', '57.99', '100.42', '88.12', '', '', '57', '57', '2', '68', '0', '0', '', null, '361', 'polash', '2021-10-11 21:44:41');
INSERT INTO `travel_card_details_for_transactions` VALUES ('184', '12-10-2021', 'ZZALTC_65', 'po_22', 'pod_65', '34.24', '65.9', '114.12', '100.14', 'proc_1', 'Corrugation', '', '260', '3', '54', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-12 06:10:54');
INSERT INTO `travel_card_details_for_transactions` VALUES ('185', '12-10-2021', 'ZZALTC_43', 'po_19', 'pod_46', '168.44', '324.24', '561.46', '492.68', 'proc_1', 'Corrugation', '', '1840', '3', '54', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-12 07:00:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('186', '12-10-2021', 'ZZALTC_104', 'po_41', 'pod_109', '193.94', '373.34', '646.48', '567.29', 'proc_1', 'Corrugation', '', '500', '2', '56', '203', '388', '', null, '5455', 'rejaulnc', '2021-10-12 07:26:53');
INSERT INTO `travel_card_details_for_transactions` VALUES ('187', '12-10-2021', 'ZZALTC_95', 'po_39', 'pod_100', '778.55', '1498.7', '2595.16', '2277.25', 'proc_1', 'Corrugation', '', '1685', '2', '60', '947', '1609', '', null, '5455', 'rejaulnc', '2021-10-12 08:57:18');
INSERT INTO `travel_card_details_for_transactions` VALUES ('188', '12-10-2021', 'ZZALTC_109', 'po_44', 'pod_114', '626.08', '375.65', '1647.57', '1001.72', 'proc_7', 'Delivery', '2835', '2835', '3', '66', '2123.15', '806.96', '', null, '3534', 'mahfuz', '2021-10-12 09:09:39');
INSERT INTO `travel_card_details_for_transactions` VALUES ('189', '12-10-2021', 'ZZALTC_76', 'po_27', 'pod_78', '628.14', '376.88', '1653', '1005.02', 'proc_7', 'Delivery', '1772', '1006', '3', '66', '645', '388', '', null, '3534', 'mahfuz', '2021-10-12 09:26:13');
INSERT INTO `travel_card_details_for_transactions` VALUES ('190', '12-10-2021', 'ZZALTC_54', 'po_20', 'pod_55', '127.14', '193.22', '334.58', '320.36', 'proc_1', 'Corrugation', '', '300', '2', '46', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-12 09:41:18');
INSERT INTO `travel_card_details_for_transactions` VALUES ('191', '12-10-2021', 'ZZALTC_83', 'po_34', 'pod_86', '84.76', '128.81', '223.05', '213.57', 'proc_1', 'Corrugation', '', '200', '2', '46', '95', '142', '', null, '5455', 'rejaulnc', '2021-10-12 09:42:23');
INSERT INTO `travel_card_details_for_transactions` VALUES ('192', '12-10-2021', 'ZZALTC_80', 'po_30', 'pod_82', '2175.17', '1305.1', '5724.13', '3480.27', 'proc_2', 'Printing & Slotting', '7152', '7050', '2', '46', '0', '0', '', null, '301982', 'jakir', '2021-10-12 09:45:56');
INSERT INTO `travel_card_details_for_transactions` VALUES ('193', '12-10-2021', 'ZZALTC_80', 'po_30', 'pod_82', '2175.17', '1305.1', '5724.13', '3480.27', 'proc_6', 'Folding & Gluing ', '7000', '7159', '2', '46', '0', '0', '', null, '302770', 'sujon', '2021-10-12 09:54:16');
INSERT INTO `travel_card_details_for_transactions` VALUES ('194', '12-10-2021', 'ZZALTC_102', 'po_38', 'pod_107', '140.21', '76.43', '351.4', '216.64', 'proc_1', 'Corrugation', '', '4880', '3', '38', '188', '90', '', null, '5455', 'rejaulnc', '2021-10-12 09:55:00');
INSERT INTO `travel_card_details_for_transactions` VALUES ('195', '12-10-2021', 'ZZALTC_103', 'po_38', 'pod_108', '67.25', '36.66', '168.54', '103.91', 'proc_1', 'Corrugation', '', '5770', '4', '38', '90', '43', '', null, '5455', 'rejaulnc', '2021-10-12 09:56:28');
INSERT INTO `travel_card_details_for_transactions` VALUES ('196', '12-10-2021', 'ZZALTC_94', 'po_36', 'pod_95', '61.57', '33.56', '154.31', '95.13', 'proc_1', 'Corrugation', '', '5000', '3', '38', '74', '42', '', null, '5455', 'rejaulnc', '2021-10-12 10:08:49');
INSERT INTO `travel_card_details_for_transactions` VALUES ('197', '12-10-2021', 'ZZALTC_43', 'po_19', 'pod_46', '168.44', '324.24', '561.46', '492.68', 'proc_2', 'Printing & Slotting', '920', '920', '3', '68', '0', '0', '', null, '297', 'subash', '2021-10-12 10:27:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('198', '12-10-2021', 'ZZALTC_87', 'po_37', 'pod_98', '932.37', '643.78', '2959.91', '1576.15', 'proc_1', 'Corrugation', '', '33200', '2', '46', '956', '668', '', null, '5455', 'rejaulnc', '2021-10-12 10:52:04');
INSERT INTO `travel_card_details_for_transactions` VALUES ('199', '12-10-2021', 'ZZALTC_88', 'po_37', 'pod_99', '331.8', '229.1', '1053.34', '560.9', 'proc_1', 'Corrugation', '', '5800', '2', '46', '351', '245', '', null, '5455', 'rejaulnc', '2021-10-12 10:53:12');
INSERT INTO `travel_card_details_for_transactions` VALUES ('200', '12-10-2021', 'ZZALTC_81', 'po_30', 'pod_83', '989.23', '593.54', '2603.24', '1582.77', 'proc_2', 'Printing & Slotting', '3140', '3140', '2', '48', '955.84', '620.04', '', null, '301982', 'jakir', '2021-10-12 10:58:48');
INSERT INTO `travel_card_details_for_transactions` VALUES ('201', '12-10-2021', 'ZZALTC_12', 'po_7', 'pod_12', '47.48', '91.39', '158.25', '138.87', 'proc_1', 'Corrugation', '', '240', '3', '66', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-12 11:05:10');
INSERT INTO `travel_card_details_for_transactions` VALUES ('202', '12-10-2021', 'ZZALTC_102', 'po_38', 'pod_107', '140.21', '76.43', '351.4', '216.64', 'proc_3', 'Cutting Creasing ', '4880', '4880', '4', '42', '188', '90', '', null, '3603', 'asinur', '2021-10-12 11:28:33');
INSERT INTO `travel_card_details_for_transactions` VALUES ('203', '12-10-2021', 'ZZALTC_81', 'po_30', 'pod_83', '989.23', '593.54', '2603.24', '1582.77', 'proc_6', 'Folding & Gluing ', '3140', '3140', '2', '48', '955.84', '620.04', '', null, '302770', 'sujon', '2021-10-12 11:32:39');
INSERT INTO `travel_card_details_for_transactions` VALUES ('204', '12-10-2021', 'ZZALTC_79', 'po_26', 'pod_81', '390.66', '593.7', '1028.06', '984.37', 'proc_7', 'Delivery', '634', '473', '2', '58', '406', '604', '', null, '3534', 'mahfuz', '2021-10-12 11:46:26');
INSERT INTO `travel_card_details_for_transactions` VALUES ('205', '12-10-2021', 'ZZALTC_78', 'po_29', 'pod_80', '1849.51', '1109.71', '4867.13', '2959.22', 'proc_7', 'Delivery', '6766', '6882', '3', '52', '1900', '1150', '', null, '3534', 'mahfuz', '2021-10-12 11:49:48');
INSERT INTO `travel_card_details_for_transactions` VALUES ('206', '12-10-2021', 'ZZALTC_77', 'po_28', 'pod_79', '283.64', '170.18', '746.42', '453.83', 'proc_1', 'Corrugation', '', '1823', '3', '44.645669291338585', '300', '189', '', null, '5455', 'rejaulnc', '2021-10-12 11:52:56');
INSERT INTO `travel_card_details_for_transactions` VALUES ('207', '12-10-2021', 'ZZALTC_124', 'po_53', 'pod_129', '883.97', '530.38', '2326.23', '1414.35', 'proc_1', 'Corrugation', '', '2000', '2', '48', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-12 12:03:56');
INSERT INTO `travel_card_details_for_transactions` VALUES ('208', '12-10-2021', 'ZZALTC_103', 'po_38', 'pod_108', '67.25', '36.66', '168.54', '103.91', 'proc_3', 'Cutting Creasing ', '5770', '5770', '4', '20', '90', '43', '', null, '304387', 'rabiul', '2021-10-12 12:10:24');
INSERT INTO `travel_card_details_for_transactions` VALUES ('209', '12-10-2021', 'ZZALTC_12', 'po_7', 'pod_12', '47.48', '91.39', '158.25', '138.87', 'proc_3', 'Cutting Creasing ', '240', '240', '3', '66', '0', '0', '', null, '3603', 'asinur', '2021-10-12 12:13:05');
INSERT INTO `travel_card_details_for_transactions` VALUES ('210', '12-10-2021', 'ZZALTC_94', 'po_36', 'pod_95', '61.57', '33.56', '154.31', '95.13', 'proc_3', 'Cutting Creasing ', '5000', '5000', '4', '18', '74', '42', '', null, '304387', 'rabiul', '2021-10-12 12:26:54');
INSERT INTO `travel_card_details_for_transactions` VALUES ('211', '12-10-2021', 'ZZALTC_81', 'po_30', 'pod_83', '989.23', '593.54', '2603.24', '1582.77', 'proc_7', 'Delivery', '3140', '2682', '2', '48', '955.84', '620.04', '', null, '3534', 'mahfuz', '2021-10-12 12:51:04');
INSERT INTO `travel_card_details_for_transactions` VALUES ('212', '12-10-2021', 'ZZALTC_95', 'po_39', 'pod_100', '778.55', '1498.7', '2595.16', '2277.25', 'proc_2', 'Printing & Slotting', '1685', '1685', '2', '60', '947', '1609', '', null, '301982', 'jakir', '2021-10-12 13:19:59');
INSERT INTO `travel_card_details_for_transactions` VALUES ('213', '12-10-2021', 'ZZALTC_101', 'po_40', 'pod_106', '106.31', '204.64', '354.36', '310.95', 'proc_2', 'Printing & Slotting', '211', '211', '1', '38', '110', '213', '', null, '297', 'subash', '2021-10-12 13:29:29');
INSERT INTO `travel_card_details_for_transactions` VALUES ('214', '12-10-2021', 'ZZALTC_98', 'po_40', 'pod_103', '76.35', '146.97', '254.5', '223.32', 'proc_2', 'Printing & Slotting', '142', '142', '1', '36', '85', '162', '', null, '297', 'subash', '2021-10-12 13:30:36');
INSERT INTO `travel_card_details_for_transactions` VALUES ('215', '12-10-2021', 'ZZALTC_97', 'po_40', 'pod_102', '160.86', '309.65', '536.19', '470.5', 'proc_2', 'Printing & Slotting', '337', '337', '1', '36', '168', '325', '', null, '297', 'subash', '2021-10-12 13:31:26');
INSERT INTO `travel_card_details_for_transactions` VALUES ('216', '12-10-2021', 'ZZALTC_100', 'po_40', 'pod_105', '109.97', '211.7', '366.58', '321.68', 'proc_2', 'Printing & Slotting', '211', '211', '1', '38', '116', '215', '', null, '297', 'subash', '2021-10-12 13:32:20');
INSERT INTO `travel_card_details_for_transactions` VALUES ('217', '12-10-2021', 'ZZALTC_65', 'po_22', 'pod_65', '34.24', '65.9', '114.12', '100.14', 'proc_2', 'Printing & Slotting', '260', '260', '3', '54', '0', '0', '', null, '301982', 'jakir', '2021-10-12 13:47:40');
INSERT INTO `travel_card_details_for_transactions` VALUES ('218', '12-10-2021', 'ZZALTC_65', 'po_22', 'pod_65', '34.24', '65.9', '114.12', '100.14', 'proc_6', 'Folding & Gluing ', '260', '260', '3', '54', '0', '0', '', null, '302770', 'sujon', '2021-10-12 13:49:17');
INSERT INTO `travel_card_details_for_transactions` VALUES ('219', '12-10-2021', 'ZZALTC_87', 'po_37', 'pod_98', '932.37', '643.78', '2959.91', '1576.15', 'proc_3', 'Cutting Creasing ', '33200', '16600', '4', '52', '956', '668', '', null, '3603', 'asinur', '2021-10-12 13:50:36');
INSERT INTO `travel_card_details_for_transactions` VALUES ('220', '12-10-2021', 'ZZALTC_66', 'po_24', 'pod_68', '79.47', '152.97', '264.88', '232.44', 'proc_2', 'Printing & Slotting', '142', '142', '1', '36', '0', '0', '', null, '300817', 'monir', '2021-10-12 14:15:23');
INSERT INTO `travel_card_details_for_transactions` VALUES ('221', '12-10-2021', 'ZZALTC_71', 'po_24', 'pod_73', '70.88', '136.45', '236.28', '207.34', 'proc_2', 'Printing & Slotting', '120', '120', '1', '38', '0', '0', '', null, '300817', 'monir', '2021-10-12 14:23:08');
INSERT INTO `travel_card_details_for_transactions` VALUES ('222', '12-10-2021', 'ZZALTC_95', 'po_39', 'pod_100', '778.55', '1498.7', '2595.16', '2277.25', 'proc_6', 'Folding & Gluing ', '1685', '1670', '2', '60', '947', '1609', '', null, '305059', 'rejaul', '2021-10-12 15:10:45');
INSERT INTO `travel_card_details_for_transactions` VALUES ('223', '12-10-2021', 'ZZALTC_95', 'po_39', 'pod_100', '778.55', '1498.7', '2595.16', '2277.25', 'proc_7', 'Delivery', '1670', '1675', '2', '60', '947', '1609', '', null, '3534', 'mahfuz', '2021-10-12 15:22:47');
INSERT INTO `travel_card_details_for_transactions` VALUES ('224', '12-10-2021', 'ZZALTC_102', 'po_38', 'pod_107', '140.21', '76.43', '351.4', '216.64', 'proc_7', 'Delivery', '4880', '4880', '4', '42', '188', '90', '', null, '3534', 'mahfuz', '2021-10-12 15:34:23');
INSERT INTO `travel_card_details_for_transactions` VALUES ('225', '12-10-2021', 'ZZALTC_65', 'po_22', 'pod_65', '34.24', '65.9', '114.12', '100.14', 'proc_7', 'Delivery', '260', '260', '3', '54', '0', '0', '', null, '3534', 'mahfuz', '2021-10-12 15:41:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('226', '12-10-2021', 'ZZALTC_8', 'po_5', 'pod_8', '107.38', '163.19', '282.58', '270.57', 'proc_1', 'Corrugation', '', '253', '3', '68', '0', '0', '', null, '5989', 'shahin', '2021-10-12 15:44:38');
INSERT INTO `travel_card_details_for_transactions` VALUES ('227', '12-10-2021', 'ZZALTC_94', 'po_36', 'pod_95', '61.57', '33.56', '154.31', '95.13', 'proc_7', 'Delivery', '5000', '5000', '4', '18', '74', '42', '', null, '3534', 'mahfuz', '2021-10-12 15:54:54');
INSERT INTO `travel_card_details_for_transactions` VALUES ('228', '12-10-2021', 'ZZALTC_103', 'po_38', 'pod_108', '67.25', '36.66', '168.54', '103.91', 'proc_7', 'Delivery', '5770', '5770', '4', '20', '90', '43', '', null, '3534', 'mahfuz', '2021-10-12 16:01:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('229', '12-10-2021', 'ZZALTC_70', 'po_24', 'pod_72', '11.75', '22.62', '39.17', '34.37', 'proc_5', 'Manual Slotting ', '21', '21', '1', '36', '0', '0', '', null, '2408', 'rakib', '2021-10-12 16:41:23');
INSERT INTO `travel_card_details_for_transactions` VALUES ('230', '12-10-2021', 'ZZALTC_68', 'po_24', 'pod_70', '8.95', '17.24', '29.85', '26.19', 'proc_5', 'Manual Slotting ', '18', '18', '2', '64', '0', '0', '', null, '2408', 'rakib', '2021-10-12 16:42:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('231', '12-10-2021', 'ZZALTC_67', 'po_24', 'pod_69', '30.13', '57.99', '100.42', '88.12', 'proc_5', 'Manual Slotting ', '57', '57', '2', '68', '0', '0', '', null, '2408', 'rakib', '2021-10-12 16:45:14');
INSERT INTO `travel_card_details_for_transactions` VALUES ('232', '12-10-2021', 'ZZALTC_77', 'po_28', 'pod_79', '283.64', '170.18', '746.42', '453.83', 'proc_2', 'Printing & Slotting', '1823', '1823', '4', '62', '300', '189', '', null, '300817', 'monir', '2021-10-12 16:48:29');
INSERT INTO `travel_card_details_for_transactions` VALUES ('233', '12-10-2021', 'ZZALTC_70', 'po_24', 'pod_72', '11.75', '22.62', '39.17', '34.37', 'proc_6', 'Folding & Gluing ', '21', '21', '1', '36', '0', '0', '', null, '304064', 'monarul', '2021-10-12 16:49:33');
INSERT INTO `travel_card_details_for_transactions` VALUES ('234', '12-10-2021', 'ZZALTC_68', 'po_24', 'pod_70', '8.95', '17.24', '29.85', '26.19', 'proc_6', 'Folding & Gluing ', '18', '18', '2', '64', '0', '0', '', null, '304064', 'monarul', '2021-10-12 16:49:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('235', '12-10-2021', 'ZZALTC_67', 'po_24', 'pod_69', '30.13', '57.99', '100.42', '88.12', 'proc_6', 'Folding & Gluing ', '57', '57', '2', '68', '0', '0', '', null, '304064', 'monarul', '2021-10-12 16:50:21');
INSERT INTO `travel_card_details_for_transactions` VALUES ('236', '12-10-2021', 'ZZALTC_8', 'po_5', 'pod_8', '107.38', '163.19', '282.58', '270.57', 'proc_2', 'Printing & Slotting', '253', '506', '3', '68', '0', '0', '', null, '301982', 'jakir', '2021-10-12 16:53:24');
INSERT INTO `travel_card_details_for_transactions` VALUES ('237', '12-10-2021', 'ZZALTC_9', 'po_5', 'pod_9', '52.98', '80.51', '139.41', '133.48', 'proc_2', 'Printing & Slotting', '154', '308', '3', '66', '0', '0', '', null, '301982', 'jakir', '2021-10-12 16:54:44');
INSERT INTO `travel_card_details_for_transactions` VALUES ('238', '12-10-2021', 'ZZALTC_68', 'po_24', 'pod_70', '8.95', '17.24', '29.85', '26.19', 'proc_7', 'Delivery', '18', '18', '2', '64', '0', '0', '', null, '3534', 'mahfuz', '2021-10-12 16:59:36');
INSERT INTO `travel_card_details_for_transactions` VALUES ('239', '12-10-2021', 'ZZALTC_67', 'po_24', 'pod_69', '30.13', '57.99', '100.42', '88.12', 'proc_7', 'Delivery', '57', '57', '2', '68', '0', '0', '', null, '3534', 'mahfuz', '2021-10-12 17:00:10');
INSERT INTO `travel_card_details_for_transactions` VALUES ('240', '12-10-2021', 'ZZALTC_70', 'po_24', 'pod_72', '11.75', '22.62', '39.17', '34.37', 'proc_7', 'Delivery', '21', '21', '1', '36', '0', '0', '', null, '3534', 'mahfuz', '2021-10-12 17:00:43');
INSERT INTO `travel_card_details_for_transactions` VALUES ('241', '12-10-2021', 'ZZALTC_12', 'po_7', 'pod_12', '47.48', '91.39', '158.25', '138.87', 'proc_5', 'Manual Slotting ', '240', '240', '3', '66', '0', '0', '', null, '2408', 'rakib', '2021-10-12 17:16:24');
INSERT INTO `travel_card_details_for_transactions` VALUES ('242', '12-10-2021', 'ZZALTC_124', 'po_53', 'pod_129', '883.97', '530.38', '2326.23', '1414.35', 'proc_2', 'Printing & Slotting', '2000', '2000', '2', '48', '0', '0', '', null, '300817', 'monir', '2021-10-12 17:16:26');
INSERT INTO `travel_card_details_for_transactions` VALUES ('243', '12-10-2021', 'ZZALTC_8', 'po_5', 'pod_8', '107.38', '163.19', '282.58', '270.57', 'proc_6', 'Folding & Gluing ', '506', '253', '3', '68', '0', '0', '', null, '302863', 'kamal', '2021-10-12 17:41:54');
INSERT INTO `travel_card_details_for_transactions` VALUES ('244', '12-10-2021', 'ZZALTC_9', 'po_5', 'pod_9', '52.98', '80.51', '139.41', '133.48', 'proc_6', 'Folding & Gluing ', '308', '154', '3', '66', '0', '0', '', null, '302863', 'kamal', '2021-10-12 17:42:20');
INSERT INTO `travel_card_details_for_transactions` VALUES ('245', '12-10-2021', 'ZZALTC_9', 'po_5', 'pod_9', '52.98', '80.51', '139.41', '133.48', 'proc_7', 'Delivery', '154', '154', '3', '66', '0', '0', '', null, '3534', 'mahfuz', '2021-10-12 17:44:07');
INSERT INTO `travel_card_details_for_transactions` VALUES ('246', '12-10-2021', 'ZZALTC_8', 'po_5', 'pod_8', '107.38', '163.19', '282.58', '270.57', 'proc_7', 'Delivery', '253', '253', '3', '68', '0', '0', '', null, '3534', 'mahfuz', '2021-10-12 17:44:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('247', '12-10-2021', 'ZZALTC_80', 'po_30', 'pod_82', '2175.17', '1305.1', '5724.13', '3480.27', 'proc_7', 'Delivery', '7050', '8514', '2', '46', '0', '0', '', null, '3534', 'mahfuz', '2021-10-12 17:45:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('248', '12-10-2021', 'ZZALTC_77', 'po_28', 'pod_79', '283.64', '170.18', '746.42', '453.83', 'proc_6', 'Folding & Gluing ', '1673', '1815', '4', '62', '300', '189', '', null, '305059', 'rejaul', '2021-10-12 17:53:16');
INSERT INTO `travel_card_details_for_transactions` VALUES ('249', '12-10-2021', 'ZZALTC_107', 'po_43', 'pod_112', '2283.66', '1370.2', '6009.64', '3653.86', 'proc_4', 'Die Cutting ', '5606', '5010', '2', '52', '2315', '1406', '', null, '306186', 'akther', '2021-10-12 18:10:27');
INSERT INTO `travel_card_details_for_transactions` VALUES ('250', '12-10-2021', 'ZZALTC_104', 'po_41', 'pod_109', '193.94', '373.34', '646.48', '567.29', 'proc_2', 'Printing & Slotting', '500', '500', '2', '56', '203', '388', '', null, '300817', 'monir', '2021-10-12 18:12:13');
INSERT INTO `travel_card_details_for_transactions` VALUES ('251', '12-10-2021', 'ZZALTC_106', 'po_42', 'pod_111', '1826.93', '1096.16', '4807.71', '2923.09', 'proc_7', 'Delivery', '4000', '4000', '2', '52', '1850', '1126', '', null, '3534', 'mahfuz', '2021-10-12 18:13:31');
INSERT INTO `travel_card_details_for_transactions` VALUES ('252', '12-10-2021', 'ZZALTC_107', 'po_43', 'pod_112', '2283.66', '1370.2', '6009.64', '3653.86', 'proc_6', 'Folding & Gluing ', '3040', '5180', '2', '52', '2315', '1406', '', null, '305059', 'rejaul', '2021-10-12 18:14:32');
INSERT INTO `travel_card_details_for_transactions` VALUES ('253', '12-10-2021', 'ZZALTC_127', 'po_56', 'pod_132', '92.43', '53.74', '231.65', '146.17', 'proc_1', 'Corrugation', '', '250', '1', '48', '0', '0', '', null, '5989', 'shahin', '2021-10-12 18:49:45');
INSERT INTO `travel_card_details_for_transactions` VALUES ('254', '12-10-2021', 'ZZALTC_110', 'po_47', 'pod_116', '0', '238.22', '1095.25', '0', 'proc_1', 'Corrugation', '', '11000', '4', '48', '0', '0', '', null, '5989', 'shahin', '2021-10-12 18:51:48');
INSERT INTO `travel_card_details_for_transactions` VALUES ('255', '12-10-2021', 'ZZALTC_105', 'po_41', 'pod_110', '271.2', '522.06', '904', '793.26', 'proc_2', 'Printing & Slotting', '500', '500', '2', '64', '288', '536', '', null, '300817', 'monir', '2021-10-12 18:58:02');
INSERT INTO `travel_card_details_for_transactions` VALUES ('256', '12-10-2021', 'ZZALTC_124', 'po_53', 'pod_129', '883.97', '530.38', '2326.23', '1414.35', 'proc_6', 'Folding & Gluing ', '2000', '2000', '2', '48', '0', '0', '', null, '305059', 'rejaul', '2021-10-12 19:06:10');
INSERT INTO `travel_card_details_for_transactions` VALUES ('257', '12-10-2021', 'ZZALTC_83', 'po_34', 'pod_86', '84.76', '128.81', '223.05', '213.57', 'proc_2', 'Printing & Slotting', '200', '200', '3', '66', '95', '142', '', null, '300817', 'monir', '2021-10-12 19:16:00');
INSERT INTO `travel_card_details_for_transactions` VALUES ('258', '12-10-2021', 'ZZALTC_104', 'po_41', 'pod_109', '193.94', '373.34', '646.48', '567.29', 'proc_6', 'Folding & Gluing ', '500', '500', '2', '56', '203', '388', '', null, '305059', 'rejaul', '2021-10-12 19:30:24');
INSERT INTO `travel_card_details_for_transactions` VALUES ('259', '12-10-2021', 'ZZALTC_54', 'po_20', 'pod_55', '127.14', '193.22', '334.58', '320.36', 'proc_2', 'Printing & Slotting', '300', '300', '3', '66', '0', '0', '', null, '300817', 'monir', '2021-10-12 19:31:39');
INSERT INTO `travel_card_details_for_transactions` VALUES ('260', '12-10-2021', 'ZZALTC_12', 'po_7', 'pod_12', '47.48', '91.39', '158.25', '138.87', 'proc_6', 'Folding & Gluing ', '240', '240', '3', '66', '0', '0', '', null, '305059', 'rejaul', '2021-10-12 19:44:38');
INSERT INTO `travel_card_details_for_transactions` VALUES ('261', '12-10-2021', 'ZZALTC_54', 'po_20', 'pod_55', '127.14', '193.22', '334.58', '320.36', 'proc_6', 'Folding & Gluing ', '300', '300', '3', '66', '0', '0', '', null, '305059', 'rejaul', '2021-10-12 20:51:37');
INSERT INTO `travel_card_details_for_transactions` VALUES ('262', '12-10-2021', 'ZZALTC_83', 'po_34', 'pod_86', '84.76', '128.81', '223.05', '213.57', 'proc_6', 'Folding & Gluing ', '200', '200', '3', '66', '95', '142', '', null, '305059', 'rejaul', '2021-10-12 21:02:05');
INSERT INTO `travel_card_details_for_transactions` VALUES ('263', '12-10-2021', 'ZZALTC_127', 'po_56', 'pod_132', '92.43', '53.74', '231.65', '146.17', 'proc_6', 'Folding & Gluing ', '250', '250', '1', '48', '0', '0', '', null, '304064', 'monarul', '2021-10-12 21:19:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('264', '12-10-2021', 'ZZALTC_34', 'po_16', 'pod_37', '59.47', '114.47', '198.22', '173.94', 'proc_2', 'Printing & Slotting', '117', '117', '2', '66', '0', '0', '', null, '361', 'polash', '2021-10-12 21:27:36');
INSERT INTO `travel_card_details_for_transactions` VALUES ('265', '12-10-2021', 'ZZALTC_34', 'po_16', 'pod_37', '59.47', '114.47', '198.22', '173.94', 'proc_6', 'Folding & Gluing ', '117', '234', '2', '66', '0', '0', '', null, '305059', 'rejaul', '2021-10-12 21:29:15');
INSERT INTO `travel_card_details_for_transactions` VALUES ('266', '13-10-2021', 'ZZALTC_71', 'po_24', 'pod_73', '70.88', '136.45', '236.28', '207.34', 'proc_6', 'Folding & Gluing ', '120', '240', '1', '38', '0', '0', '', null, '302863', 'kamal', '2021-10-13 07:25:31');
INSERT INTO `travel_card_details_for_transactions` VALUES ('267', '13-10-2021', 'ZZALTC_125', 'po_54', 'pod_130', '348.59', '671.03', '1161.96', '1019.62', 'proc_1', 'Corrugation', '', '1167', '2', '56', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 07:29:57');
INSERT INTO `travel_card_details_for_transactions` VALUES ('268', '13-10-2021', 'ZZALTC_126', 'po_55', 'pod_131', '258.38', '497.38', '861.26', '755.76', 'proc_1', 'Corrugation', '', '865', '2', '56', '272', '509', '', null, '5455', 'rejaulnc', '2021-10-13 07:30:55');
INSERT INTO `travel_card_details_for_transactions` VALUES ('269', '13-10-2021', 'ZZALTC_66', 'po_24', 'pod_68', '79.47', '152.97', '264.88', '232.44', 'proc_6', 'Folding & Gluing ', '142', '284', '1', '36', '0', '0', '', null, '302863', 'kamal', '2021-10-13 07:31:57');
INSERT INTO `travel_card_details_for_transactions` VALUES ('270', '13-10-2021', 'ZZALTC_100', 'po_40', 'pod_105', '109.97', '211.7', '366.58', '321.68', 'proc_6', 'Folding & Gluing ', '211', '211', '1', '38', '116', '215', '', null, '302863', 'kamal', '2021-10-13 07:43:15');
INSERT INTO `travel_card_details_for_transactions` VALUES ('271', '13-10-2021', 'ZZALTC_97', 'po_40', 'pod_102', '160.86', '309.65', '536.19', '470.5', 'proc_6', 'Folding & Gluing ', '337', '674', '1', '36', '168', '325', '', null, '302863', 'kamal', '2021-10-13 07:59:19');
INSERT INTO `travel_card_details_for_transactions` VALUES ('272', '13-10-2021', 'ZZALTC_126', 'po_55', 'pod_131', '258.38', '497.38', '861.26', '755.76', 'proc_2', 'Printing & Slotting', '865', '865', '2', '56', '272', '509', '', null, '301982', 'jakir', '2021-10-13 08:09:37');
INSERT INTO `travel_card_details_for_transactions` VALUES ('273', '13-10-2021', 'ZZALTC_98', 'po_40', 'pod_103', '76.35', '146.97', '254.5', '223.32', 'proc_6', 'Folding & Gluing ', '142', '142', '1', '36', '85', '162', '', null, '302770', 'sujon', '2021-10-13 08:55:37');
INSERT INTO `travel_card_details_for_transactions` VALUES ('274', '13-10-2021', 'ZZALTC_126', 'po_55', 'pod_131', '258.38', '497.38', '861.26', '755.76', 'proc_6', 'Folding & Gluing ', '865', '865', '2', '56', '272', '509', '', null, '302770', 'sujon', '2021-10-13 09:14:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('275', '13-10-2021', 'ZZALTC_99', 'po_40', 'pod_104', '107.4', '206.74', '357.99', '314.13', 'proc_2', 'Printing & Slotting', '225', '225', '1', '36', '114', '218', '', null, '361', 'polash', '2021-10-13 09:37:31');
INSERT INTO `travel_card_details_for_transactions` VALUES ('276', '13-10-2021', 'ZZALTC_99', 'po_40', 'pod_104', '107.4', '206.74', '357.99', '314.13', 'proc_6', 'Folding & Gluing ', '225', '225', '1', '36', '114', '218', '', null, '302863', 'kamal', '2021-10-13 09:38:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('277', '13-10-2021', 'ZZALTC_98', 'po_40', 'pod_103', '76.35', '146.97', '254.5', '223.32', 'proc_7', 'Delivery', '142', '142', '1', '36', '85', '162', '', null, '3534', 'mahfuz', '2021-10-13 09:39:51');
INSERT INTO `travel_card_details_for_transactions` VALUES ('278', '13-10-2021', 'ZZALTC_100', 'po_40', 'pod_105', '109.97', '211.7', '366.58', '321.68', 'proc_7', 'Delivery', '211', '211', '1', '38', '116', '215', '', null, '3534', 'mahfuz', '2021-10-13 09:40:13');
INSERT INTO `travel_card_details_for_transactions` VALUES ('279', '13-10-2021', 'ZZALTC_99', 'po_40', 'pod_104', '107.4', '206.74', '357.99', '314.13', 'proc_7', 'Delivery', '225', '225', '1', '36', '114', '218', '', null, '3534', 'mahfuz', '2021-10-13 09:44:12');
INSERT INTO `travel_card_details_for_transactions` VALUES ('280', '13-10-2021', 'ZZALTC_18', 'po_9', 'pod_18', '41.83', '80.52', '139.42', '122.34', 'proc_1', 'Corrugation', '', '155', '3', '64', '0', '0', '', null, '5989', 'shahin', '2021-10-13 15:58:04');
INSERT INTO `travel_card_details_for_transactions` VALUES ('281', '13-10-2021', 'ZZALTC_17', 'po_9', 'pod_17', '30.36', '58.44', '101.19', '88.8', 'proc_1', 'Corrugation', '', '120', '3', '60', '0', '0', '', null, '5989', 'shahin', '2021-10-13 15:58:39');
INSERT INTO `travel_card_details_for_transactions` VALUES ('282', '13-10-2021', 'ZZALTC_19', 'po_9', 'pod_19', '18.91', '36.4', '63.04', '55.31', 'proc_1', 'Corrugation', '', '65', '2', '46', '0', '0', '', null, '5989', 'shahin', '2021-10-13 15:59:07');
INSERT INTO `travel_card_details_for_transactions` VALUES ('283', '13-10-2021', 'ZZALTC_19', 'po_9', 'pod_19', '18.91', '36.4', '63.04', '55.31', 'proc_3', 'Cutting Creasing ', '65', '130', '2', '46', '0', '0', '', null, '6065', 'aslam', '2021-10-13 16:00:18');
INSERT INTO `travel_card_details_for_transactions` VALUES ('284', '13-10-2021', 'ZZALTC_17', 'po_9', 'pod_17', '30.36', '58.44', '101.19', '88.8', 'proc_3', 'Cutting Creasing ', '120', '240', '3', '60', '0', '0', '', null, '6065', 'aslam', '2021-10-13 16:00:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('285', '13-10-2021', 'ZZALTC_18', 'po_9', 'pod_18', '41.83', '80.52', '139.42', '122.34', 'proc_3', 'Cutting Creasing ', '155', '310', '3', '64', '0', '0', '', null, '6065', 'aslam', '2021-10-13 16:01:00');
INSERT INTO `travel_card_details_for_transactions` VALUES ('286', '13-10-2021', 'ZZALTC_114', 'po_49', 'pod_118', '60.77', '36.46', '159.93', '97.24', 'proc_1', 'Corrugation', '', '318', '3', '60', '68', '42', '', null, '5989', 'shahin', '2021-10-13 16:07:03');
INSERT INTO `travel_card_details_for_transactions` VALUES ('287', '13-10-2021', 'ZZALTC_115', 'po_49', 'pod_119', '62.81', '37.69', '165.29', '100.5', 'proc_1', 'Corrugation', '', '340', '3', '58', '63.89', '41.45', '', null, '5989', 'shahin', '2021-10-13 16:07:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('288', '13-10-2021', 'ZZALTC_116', 'po_49', 'pod_120', '48.16', '28.9', '126.74', '77.06', 'proc_1', 'Corrugation', '', '270', '3', '56', '56', '33', '', null, '5989', 'shahin', '2021-10-13 16:08:15');
INSERT INTO `travel_card_details_for_transactions` VALUES ('289', '13-10-2021', 'ZZALTC_117', 'po_49', 'pod_121', '57.12', '34.27', '150.31', '91.39', 'proc_1', 'Corrugation', '', '590', '4', '68', '77.97', '50.58', '', null, '5989', 'shahin', '2021-10-13 16:08:47');
INSERT INTO `travel_card_details_for_transactions` VALUES ('290', '13-10-2021', 'ZZALTC_119', 'po_49', 'pod_123', '36.89', '22.14', '97.09', '59.03', 'proc_1', 'Corrugation', '', '135', '3', '62', '37.43', '24.28', '', null, '5989', 'shahin', '2021-10-13 16:09:59');
INSERT INTO `travel_card_details_for_transactions` VALUES ('291', '13-10-2021', 'ZZALTC_17', 'po_9', 'pod_17', '30.36', '58.44', '101.19', '88.8', 'proc_5', 'Manual Slotting ', '240', '120', '3', '60', '0', '0', '', null, '2408', 'rakib', '2021-10-13 16:12:31');
INSERT INTO `travel_card_details_for_transactions` VALUES ('292', '13-10-2021', 'ZZALTC_18', 'po_9', 'pod_18', '41.83', '80.52', '139.42', '122.34', 'proc_5', 'Manual Slotting ', '310', '155', '3', '64', '0', '0', '', null, '2408', 'rakib', '2021-10-13 16:12:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('293', '13-10-2021', 'ZZALTC_19', 'po_9', 'pod_19', '18.91', '36.4', '63.04', '55.31', 'proc_5', 'Manual Slotting ', '130', '65', '2', '46', '0', '0', '', null, '2408', 'rakib', '2021-10-13 16:13:18');
INSERT INTO `travel_card_details_for_transactions` VALUES ('294', '13-10-2021', 'ZZALTC_19', 'po_9', 'pod_19', '18.91', '36.4', '63.04', '55.31', 'proc_6', 'Folding & Gluing ', '65', '65', '2', '46', '0', '0', '', null, '302863', 'kamal', '2021-10-13 16:13:56');
INSERT INTO `travel_card_details_for_transactions` VALUES ('295', '13-10-2021', 'ZZALTC_18', 'po_9', 'pod_18', '41.83', '80.52', '139.42', '122.34', 'proc_6', 'Folding & Gluing ', '155', '155', '3', '64', '0', '0', '', null, '302863', 'kamal', '2021-10-13 16:14:18');
INSERT INTO `travel_card_details_for_transactions` VALUES ('296', '13-10-2021', 'ZZALTC_17', 'po_9', 'pod_17', '30.36', '58.44', '101.19', '88.8', 'proc_6', 'Folding & Gluing ', '120', '120', '3', '60', '0', '0', '', null, '302863', 'kamal', '2021-10-13 16:14:40');
INSERT INTO `travel_card_details_for_transactions` VALUES ('297', '13-10-2021', 'ZZALTC_124', 'po_53', 'pod_129', '883.97', '530.38', '2326.23', '1414.35', 'proc_7', 'Delivery', '2000', '4000', '2', '48', '0', '0', '', null, '3534', 'mahfuz', '2021-10-13 16:18:00');
INSERT INTO `travel_card_details_for_transactions` VALUES ('298', '13-10-2021', 'ZZALTC_123', 'po_53', 'pod_128', '527.54', '316.52', '1388.26', '844.06', 'proc_1', 'Corrugation', '', '2000', '3', '46.417322834645674', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 16:22:08');
INSERT INTO `travel_card_details_for_transactions` VALUES ('299', '13-10-2021', 'ZZALTC_12', 'po_7', 'pod_12', '47.48', '91.39', '158.25', '138.87', 'proc_7', 'Delivery', '240', '240', '3', '66', '0', '0', '', null, '3534', 'mahfuz', '2021-10-13 16:26:55');
INSERT INTO `travel_card_details_for_transactions` VALUES ('300', '13-10-2021', 'ZZALTC_54', 'po_20', 'pod_55', '127.14', '193.22', '334.58', '320.36', 'proc_7', 'Delivery', '300', '300', '3', '66', '0', '0', '', null, '3534', 'mahfuz', '2021-10-13 16:27:34');
INSERT INTO `travel_card_details_for_transactions` VALUES ('301', '13-10-2021', 'ZZALTC_17', 'po_9', 'pod_17', '30.36', '58.44', '101.19', '88.8', 'proc_7', 'Delivery', '120', '120', '3', '60', '0', '0', '', null, '3534', 'mahfuz', '2021-10-13 16:28:12');
INSERT INTO `travel_card_details_for_transactions` VALUES ('302', '13-10-2021', 'ZZALTC_19', 'po_9', 'pod_19', '18.91', '36.4', '63.04', '55.31', 'proc_7', 'Delivery', '65', '65', '2', '46', '0', '0', '', null, '3534', 'mahfuz', '2021-10-13 16:28:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('303', '13-10-2021', 'ZZALTC_18', 'po_9', 'pod_18', '41.83', '80.52', '139.42', '122.34', 'proc_7', 'Delivery', '155', '155', '3', '64', '0', '0', '', null, '3534', 'mahfuz', '2021-10-13 16:29:10');
INSERT INTO `travel_card_details_for_transactions` VALUES ('304', '13-10-2021', 'ZZALTC_107', 'po_43', 'pod_112', '2283.66', '1370.2', '6009.64', '3653.86', 'proc_7', 'Delivery', '5180', '5000', '2', '52', '2315', '1406', '', null, '3534', 'mahfuz', '2021-10-13 16:29:51');
INSERT INTO `travel_card_details_for_transactions` VALUES ('305', '13-10-2021', 'ZZALTC_105', 'po_41', 'pod_110', '271.2', '522.06', '904', '793.26', 'proc_6', 'Folding & Gluing ', '500', '500', '2', '64', '288', '536', '', null, '302863', 'kamal', '2021-10-13 16:43:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('306', '13-10-2021', 'ZZALTC_35', 'po_17', 'pod_38', '332.53', '640.12', '1108.44', '972.65', 'proc_6', 'Folding & Gluing ', '638', '36', '1', '36', '0', '0', '', null, '302863', 'kamal', '2021-10-13 16:43:55');
INSERT INTO `travel_card_details_for_transactions` VALUES ('307', '13-10-2021', 'ZZALTC_123', 'po_53', 'pod_128', '527.54', '316.52', '1388.26', '844.06', 'proc_2', 'Printing & Slotting', '2000', '2000', '4', '64', '0', '0', '', null, '300817', 'monir', '2021-10-13 16:47:01');
INSERT INTO `travel_card_details_for_transactions` VALUES ('308', '13-10-2021', 'ZZALTC_101', 'po_40', 'pod_106', '106.31', '204.64', '354.36', '310.95', 'proc_6', 'Folding & Gluing ', '211', '211', '1', '38', '110', '213', '', null, '302863', 'kamal', '2021-10-13 16:52:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('309', '13-10-2021', 'ZZALTC_104', 'po_41', 'pod_109', '193.94', '373.34', '646.48', '567.29', 'proc_7', 'Delivery', '500', '500', '2', '56', '203', '388', '', null, '3534', 'mahfuz', '2021-10-13 17:00:30');
INSERT INTO `travel_card_details_for_transactions` VALUES ('310', '13-10-2021', 'ZZALTC_71', 'po_24', 'pod_73', '70.88', '136.45', '236.28', '207.34', 'proc_7', 'Delivery', '240', '120', '1', '38', '0', '0', '', null, '3534', 'mahfuz', '2021-10-13 17:01:53');
INSERT INTO `travel_card_details_for_transactions` VALUES ('311', '13-10-2021', 'ZZALTC_66', 'po_24', 'pod_68', '79.47', '152.97', '264.88', '232.44', 'proc_7', 'Delivery', '284', '142', '1', '36', '0', '0', '', null, '3534', 'mahfuz', '2021-10-13 17:02:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('312', '13-10-2021', 'ZZALTC_34', 'po_16', 'pod_37', '59.47', '114.47', '198.22', '173.94', 'proc_7', 'Delivery', '234', '117', '2', '66', '0', '0', '', null, '3534', 'mahfuz', '2021-10-13 17:02:49');
INSERT INTO `travel_card_details_for_transactions` VALUES ('313', '13-10-2021', 'ZZALTC_101', 'po_40', 'pod_106', '106.31', '204.64', '354.36', '310.95', 'proc_7', 'Delivery', '211', '211', '1', '38', '110', '213', '', null, '3534', 'mahfuz', '2021-10-13 17:03:19');
INSERT INTO `travel_card_details_for_transactions` VALUES ('314', '13-10-2021', 'ZZALTC_97', 'po_40', 'pod_102', '160.86', '309.65', '536.19', '470.5', 'proc_7', 'Delivery', '674', '337', '1', '36', '168', '325', '', null, '3534', 'mahfuz', '2021-10-13 17:03:46');
INSERT INTO `travel_card_details_for_transactions` VALUES ('315', '13-10-2021', 'ZZALTC_105', 'po_41', 'pod_110', '271.2', '522.06', '904', '793.26', 'proc_7', 'Delivery', '500', '500', '2', '64', '288', '536', '', null, '3534', 'mahfuz', '2021-10-13 17:04:06');
INSERT INTO `travel_card_details_for_transactions` VALUES ('316', '13-10-2021', 'ZZALTC_35', 'po_17', 'pod_38', '332.53', '640.12', '1108.44', '972.65', 'proc_7', 'Delivery', '36', '36', '1', '36', '0', '0', '', null, '3534', 'mahfuz', '2021-10-13 17:04:55');
INSERT INTO `travel_card_details_for_transactions` VALUES ('317', '13-10-2021', 'ZZALTC_110', 'po_47', 'pod_116', '0', '238.22', '1095.25', '0', 'proc_4', 'Die Cutting ', '11000', '11000', '4', '56', '0', '0', '', null, '306186', 'akther', '2021-10-13 17:10:17');
INSERT INTO `travel_card_details_for_transactions` VALUES ('318', '13-10-2021', 'ZZALTC_83', 'po_34', 'pod_86', '84.76', '128.81', '223.05', '213.57', 'proc_7', 'Delivery', '200', '200', '3', '66', '95', '142', '', null, '3534', 'mahfuz', '2021-10-13 17:22:21');
INSERT INTO `travel_card_details_for_transactions` VALUES ('319', '13-10-2021', 'ZZALTC_134', 'po_59', 'pod_135', '454.84', '618.05', '1337.77', '1072.89', 'proc_1', 'Corrugation', '', '760', '2', '66', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:26:11');
INSERT INTO `travel_card_details_for_transactions` VALUES ('320', '13-10-2021', 'ZZALTC_133', 'po_59', 'pod_134', '52.23', '70.97', '153.62', '123.2', 'proc_1', 'Corrugation', '', '120', '2', '56', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:26:38');
INSERT INTO `travel_card_details_for_transactions` VALUES ('321', '13-10-2021', 'ZZALTC_138', 'po_61', 'pod_140', '12.02', '23.14', '40.06', '35.16', 'proc_1', 'Corrugation', '', '70', '3', '48', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:27:47');
INSERT INTO `travel_card_details_for_transactions` VALUES ('322', '13-10-2021', 'ZZALTC_139', 'po_61', 'pod_141', '24.98', '48.08', '83.25', '73.06', 'proc_1', 'Corrugation', '', '155', '3', '48', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:28:28');
INSERT INTO `travel_card_details_for_transactions` VALUES ('323', '13-10-2021', 'ZZALTC_140', 'po_61', 'pod_142', '57.22', '110.14', '190.72', '167.36', 'proc_1', 'Corrugation', '', '380', '3', '48', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:28:51');
INSERT INTO `travel_card_details_for_transactions` VALUES ('324', '13-10-2021', 'ZZALTC_110', 'po_47', 'pod_116', '0', '238.22', '1095.25', '0', 'proc_7', 'Delivery', '11000', '11000', '4', '56', '0', '0', '', null, '3534', 'mahfuz', '2021-10-13 17:29:01');
INSERT INTO `travel_card_details_for_transactions` VALUES ('325', '13-10-2021', 'ZZALTC_141', 'po_61', 'pod_143', '17.43', '33.56', '58.12', '51', 'proc_1', 'Corrugation', '', '120', '3', '48', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:29:19');
INSERT INTO `travel_card_details_for_transactions` VALUES ('326', '13-10-2021', 'ZZALTC_142', 'po_61', 'pod_144', '8.59', '16.53', '28.62', '25.11', 'proc_1', 'Corrugation', '', '65', '3', '48', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:29:44');
INSERT INTO `travel_card_details_for_transactions` VALUES ('327', '13-10-2021', 'ZZALTC_143', 'po_61', 'pod_145', '11.73', '22.58', '39.1', '34.31', 'proc_1', 'Corrugation', '', '130', '4', '48', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:30:13');
INSERT INTO `travel_card_details_for_transactions` VALUES ('328', '13-10-2021', 'ZZALTC_135', 'po_35', 'pod_87', '0', '0', '0', '0', 'proc_1', 'Corrugation', '', '230', '0', '52', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:31:10');
INSERT INTO `travel_card_details_for_transactions` VALUES ('329', '13-10-2021', 'ZZALTC_137', 'po_35', 'pod_89', '0', '0', '0', '0', 'proc_1', 'Corrugation', '', '132', '0', '36', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:31:48');
INSERT INTO `travel_card_details_for_transactions` VALUES ('330', '13-10-2021', 'ZZALTC_136', 'po_35', 'pod_88', '0', '0', '0', '0', 'proc_1', 'Corrugation', '', '200', '0', '48', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:32:19');
INSERT INTO `travel_card_details_for_transactions` VALUES ('331', '13-10-2021', 'ZZALTC_125', 'po_54', 'pod_130', '348.59', '671.03', '1161.96', '1019.62', 'proc_2', 'Printing & Slotting', '1167', '1167', '2', '56', '0', '0', '', null, '361', 'polash', '2021-10-13 17:33:20');
INSERT INTO `travel_card_details_for_transactions` VALUES ('332', '13-10-2021', 'ZZALTC_93', 'po_36', 'pod_94', '2.43', '1.33', '6.1', '3.76', 'proc_1', 'Corrugation', '', '200', '4', '50', '4', '3', '', null, '5455', 'rejaulnc', '2021-10-13 17:35:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('333', '13-10-2021', 'ZZALTC_92', 'po_36', 'pod_93', '18.5', '10.08', '46.36', '28.58', 'proc_1', 'Corrugation', '', '260', '4', '50', '22', '13', '', null, '5455', 'rejaulnc', '2021-10-13 17:36:08');
INSERT INTO `travel_card_details_for_transactions` VALUES ('334', '13-10-2021', 'ZZALTC_91', 'po_36', 'pod_92', '26.53', '14.46', '66.5', '41', 'proc_1', 'Corrugation', '', '380', '4', '50', '32', '19', '', null, '5455', 'rejaulnc', '2021-10-13 17:36:36');
INSERT INTO `travel_card_details_for_transactions` VALUES ('335', '13-10-2021', 'ZZALTC_90', 'po_36', 'pod_91', '20.55', '11.2', '51.51', '31.76', 'proc_1', 'Corrugation', '', '300', '4', '50', '24', '15', '', null, '5455', 'rejaulnc', '2021-10-13 17:37:02');
INSERT INTO `travel_card_details_for_transactions` VALUES ('336', '13-10-2021', 'ZZALTC_89', 'po_36', 'pod_90', '20.16', '10.99', '50.52', '31.15', 'proc_1', 'Corrugation', '', '300', '4', '50', '23', '14', '', null, '5455', 'rejaulnc', '2021-10-13 17:37:36');
INSERT INTO `travel_card_details_for_transactions` VALUES ('337', '13-10-2021', 'ZZALTC_93', 'po_36', 'pod_94', '2.43', '1.33', '6.1', '3.76', 'proc_3', 'Cutting Creasing ', '200', '200', '4', '20', '4', '3', '', null, '3603', 'asinur', '2021-10-13 17:40:26');
INSERT INTO `travel_card_details_for_transactions` VALUES ('338', '13-10-2021', 'ZZALTC_120', 'po_49', 'pod_124', '330.18', '198.11', '868.91', '528.29', 'proc_1', 'Corrugation', '', '1135', '2', '52', '345', '216', '', null, '5455', 'rejaulnc', '2021-10-13 17:40:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('339', '13-10-2021', 'ZZALTC_92', 'po_36', 'pod_93', '18.5', '10.08', '46.36', '28.58', 'proc_3', 'Cutting Creasing ', '260', '260', '4', '52', '22', '13', '', null, '3603', 'asinur', '2021-10-13 17:40:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('340', '13-10-2021', 'ZZALTC_91', 'po_36', 'pod_92', '26.53', '14.46', '66.5', '41', 'proc_3', 'Cutting Creasing ', '380', '380', '4', '52', '32', '19', '', null, '3603', 'asinur', '2021-10-13 17:41:37');
INSERT INTO `travel_card_details_for_transactions` VALUES ('341', '13-10-2021', 'ZZALTC_121', 'po_50', 'pod_125', '220.67', '132.4', '580.71', '353.07', 'proc_1', 'Corrugation', '', '590', '2', '52', '233', '146', '', null, '5455', 'rejaulnc', '2021-10-13 17:41:41');
INSERT INTO `travel_card_details_for_transactions` VALUES ('342', '13-10-2021', 'ZZALTC_90', 'po_36', 'pod_91', '20.55', '11.2', '51.51', '31.76', 'proc_3', 'Cutting Creasing ', '300', '300', '4', '52', '24', '15', '', null, '3603', 'asinur', '2021-10-13 17:42:00');
INSERT INTO `travel_card_details_for_transactions` VALUES ('343', '13-10-2021', 'ZZALTC_122', 'po_51', 'pod_126', '39.38', '23.63', '103.63', '63.01', 'proc_1', 'Corrugation', '', '125', '2', '52', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:42:06');
INSERT INTO `travel_card_details_for_transactions` VALUES ('344', '13-10-2021', 'ZZALTC_89', 'po_36', 'pod_90', '20.16', '10.99', '50.52', '31.15', 'proc_3', 'Cutting Creasing ', '300', '300', '4', '52', '23', '14', '', null, '3603', 'asinur', '2021-10-13 17:42:17');
INSERT INTO `travel_card_details_for_transactions` VALUES ('345', '13-10-2021', 'ZZALTC_118', 'po_49', 'pod_122', '34.38', '20.63', '90.47', '55.01', 'proc_1', 'Corrugation', '', '150', '3', '52', '44', '29', '', null, '5455', 'rejaulnc', '2021-10-13 17:43:00');
INSERT INTO `travel_card_details_for_transactions` VALUES ('346', '13-10-2021', 'ZZALTC_38', 'po_18', 'pod_41', '0', '0', '0', '0', 'proc_1', 'Corrugation', '', '1600', '1', '48', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:43:32');
INSERT INTO `travel_card_details_for_transactions` VALUES ('347', '13-10-2021', 'ZZALTC_36', 'po_18', 'pod_39', '0', '0', '0', '0', 'proc_1', 'Corrugation', '', '150', '1', '52', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-13 17:44:10');
INSERT INTO `travel_card_details_for_transactions` VALUES ('348', '13-10-2021', 'ZZALTC_138', 'po_61', 'pod_140', '12.02', '23.14', '40.06', '35.16', 'proc_5', 'Manual Slotting ', '70', '70', '3', '52', '0', '0', '', null, '2408', 'rakib', '2021-10-13 17:53:51');
INSERT INTO `travel_card_details_for_transactions` VALUES ('349', '13-10-2021', 'ZZALTC_139', 'po_61', 'pod_141', '24.98', '48.08', '83.25', '73.06', 'proc_5', 'Manual Slotting ', '155', '155', '3', '52', '0', '0', '', null, '2408', 'rakib', '2021-10-13 17:55:32');
INSERT INTO `travel_card_details_for_transactions` VALUES ('350', '13-10-2021', 'ZZALTC_140', 'po_61', 'pod_142', '57.22', '110.14', '190.72', '167.36', 'proc_5', 'Manual Slotting ', '380', '380', '3', '52', '0', '0', '', null, '2408', 'rakib', '2021-10-13 17:56:46');
INSERT INTO `travel_card_details_for_transactions` VALUES ('351', '13-10-2021', 'ZZALTC_141', 'po_61', 'pod_143', '17.43', '33.56', '58.12', '51', 'proc_5', 'Manual Slotting ', '120', '120', '3', '52', '0', '0', '', null, '2408', 'rakib', '2021-10-13 17:58:04');
INSERT INTO `travel_card_details_for_transactions` VALUES ('352', '13-10-2021', 'ZZALTC_142', 'po_61', 'pod_144', '8.59', '16.53', '28.62', '25.11', 'proc_5', 'Manual Slotting ', '65', '65', '3', '52', '0', '0', '', null, '2408', 'rakib', '2021-10-13 17:59:16');
INSERT INTO `travel_card_details_for_transactions` VALUES ('353', '13-10-2021', 'ZZALTC_93', 'po_36', 'pod_94', '2.43', '1.33', '6.1', '3.76', 'proc_7', 'Delivery', '200', '200', '4', '20', '4', '3', '', null, '3534', 'mahfuz', '2021-10-13 18:00:22');
INSERT INTO `travel_card_details_for_transactions` VALUES ('354', '13-10-2021', 'ZZALTC_143', 'po_61', 'pod_145', '11.73', '22.58', '39.1', '34.31', 'proc_5', 'Manual Slotting ', '130', '130', '4', '64', '0', '0', '', null, '2408', 'rakib', '2021-10-13 18:00:29');
INSERT INTO `travel_card_details_for_transactions` VALUES ('355', '13-10-2021', 'ZZALTC_130', 'po_60', 'pod_137', '1004.89', '602.93', '2644.44', '1607.82', 'proc_1', 'Corrugation', '', '2000', '2', '56', '1015', '612', '', null, '5989', 'shahin', '2021-10-13 18:00:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('356', '13-10-2021', 'ZZALTC_92', 'po_36', 'pod_93', '18.5', '10.08', '46.36', '28.58', 'proc_7', 'Delivery', '260', '520', '4', '52', '22', '13', '', null, '3534', 'mahfuz', '2021-10-13 18:00:54');
INSERT INTO `travel_card_details_for_transactions` VALUES ('357', '13-10-2021', 'ZZALTC_131', 'po_60', 'pod_138', '994.46', '596.68', '2617.01', '1591.14', 'proc_1', 'Corrugation', '', '2000', '2', '56', '0', '0', '', null, '5989', 'shahin', '2021-10-13 18:01:29');
INSERT INTO `travel_card_details_for_transactions` VALUES ('358', '13-10-2021', 'ZZALTC_91', 'po_36', 'pod_92', '26.53', '14.46', '66.5', '41', 'proc_7', 'Delivery', '380', '380', '4', '52', '32', '19', '', null, '3534', 'mahfuz', '2021-10-13 18:01:57');
INSERT INTO `travel_card_details_for_transactions` VALUES ('359', '13-10-2021', 'ZZALTC_90', 'po_36', 'pod_91', '20.55', '11.2', '51.51', '31.76', 'proc_7', 'Delivery', '300', '300', '4', '52', '24', '15', '', null, '3534', 'mahfuz', '2021-10-13 18:02:54');
INSERT INTO `travel_card_details_for_transactions` VALUES ('360', '13-10-2021', 'ZZALTC_89', 'po_36', 'pod_90', '20.16', '10.99', '50.52', '31.15', 'proc_7', 'Delivery', '300', '300', '4', '52', '23', '14', '', null, '3534', 'mahfuz', '2021-10-13 18:03:16');
INSERT INTO `travel_card_details_for_transactions` VALUES ('361', '13-10-2021', 'ZZALTC_130', 'po_60', 'pod_137', '1004.89', '602.93', '2644.44', '1607.82', 'proc_2', 'Printing & Slotting', '2000', '2000', '2', '54', '1015', '612', '', null, '300817', 'monir', '2021-10-13 18:19:22');
INSERT INTO `travel_card_details_for_transactions` VALUES ('362', '13-10-2021', 'ZZALTC_129', 'po_60', 'pod_136', '319.67', '191.8', '841.25', '511.48', 'proc_1', 'Corrugation', '', '1000', '2', '48', '0', '0', '', null, '5989', 'shahin', '2021-10-13 18:27:48');
INSERT INTO `travel_card_details_for_transactions` VALUES ('363', '13-10-2021', 'ZZALTC_132', 'po_60', 'pod_139', '449.4', '269.64', '1182.62', '719.04', 'proc_1', 'Corrugation', '', '1000', '2', '48', '0', '0', '', null, '5989', 'shahin', '2021-10-13 18:28:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('364', '13-10-2021', 'ZZALTC_138', 'po_61', 'pod_140', '12.02', '23.14', '40.06', '35.16', 'proc_2', 'Printing & Slotting', '70', '70', '3', '52', '0', '0', '', null, '361', 'polash', '2021-10-13 18:46:07');
INSERT INTO `travel_card_details_for_transactions` VALUES ('365', '13-10-2021', 'ZZALTC_139', 'po_61', 'pod_141', '24.98', '48.08', '83.25', '73.06', 'proc_2', 'Printing & Slotting', '155', '155', '3', '52', '0', '0', '', null, '361', 'polash', '2021-10-13 18:48:57');
INSERT INTO `travel_card_details_for_transactions` VALUES ('366', '13-10-2021', 'ZZALTC_140', 'po_61', 'pod_142', '57.22', '110.14', '190.72', '167.36', 'proc_2', 'Printing & Slotting', '380', '380', '3', '52', '0', '0', '', null, '361', 'polash', '2021-10-13 18:49:46');
INSERT INTO `travel_card_details_for_transactions` VALUES ('367', '13-10-2021', 'ZZALTC_141', 'po_61', 'pod_143', '17.43', '33.56', '58.12', '51', 'proc_2', 'Printing & Slotting', '120', '120', '3', '52', '0', '0', '', null, '361', 'polash', '2021-10-13 18:50:29');
INSERT INTO `travel_card_details_for_transactions` VALUES ('368', '13-10-2021', 'ZZALTC_142', 'po_61', 'pod_144', '8.59', '16.53', '28.62', '25.11', 'proc_2', 'Printing & Slotting', '65', '65', '3', '52', '0', '0', '', null, '361', 'polash', '2021-10-13 18:51:11');
INSERT INTO `travel_card_details_for_transactions` VALUES ('369', '13-10-2021', 'ZZALTC_143', 'po_61', 'pod_145', '11.73', '22.58', '39.1', '34.31', 'proc_2', 'Printing & Slotting', '130', '130', '4', '64', '0', '0', '', null, '361', 'polash', '2021-10-13 18:51:50');
INSERT INTO `travel_card_details_for_transactions` VALUES ('370', '13-10-2021', 'ZZALTC_123', 'po_53', 'pod_128', '527.54', '316.52', '1388.26', '844.06', 'proc_6', 'Folding & Gluing ', '2000', '2000', '4', '64', '0', '0', '', null, '305059', 'rejaul', '2021-10-13 19:09:21');
INSERT INTO `travel_card_details_for_transactions` VALUES ('371', '13-10-2021', 'ZZALTC_69', 'po_24', 'pod_71', '75.86', '146.03', '252.86', '221.89', 'proc_1', 'Corrugation', '', '122', '1', '42', '0', '0', '', null, '5989', 'shahin', '2021-10-13 19:14:42');
INSERT INTO `travel_card_details_for_transactions` VALUES ('372', '13-10-2021', 'ZZALTC_131', 'po_60', 'pod_138', '994.46', '596.68', '2617.01', '1591.14', 'proc_2', 'Printing & Slotting', '2000', '2000', '2', '54', '0', '0', '', null, '300817', 'monir', '2021-10-13 19:19:04');
INSERT INTO `travel_card_details_for_transactions` VALUES ('373', '13-10-2021', 'ZZALTC_130', 'po_60', 'pod_137', '1004.89', '602.93', '2644.44', '1607.82', 'proc_6', 'Folding & Gluing ', '2000', '2000', '2', '54', '1015', '612', '', null, '305059', 'rejaul', '2021-10-13 19:36:09');
INSERT INTO `travel_card_details_for_transactions` VALUES ('374', '13-10-2021', 'ZZALTC_125', 'po_54', 'pod_130', '348.59', '671.03', '1161.96', '1019.62', 'proc_6', 'Folding & Gluing ', '1167', '226', '2', '56', '0', '0', '', null, '304064', 'monarul', '2021-10-13 20:47:56');
INSERT INTO `travel_card_details_for_transactions` VALUES ('375', '13-10-2021', 'ZZALTC_143', 'po_61', 'pod_145', '11.73', '22.58', '39.1', '34.31', 'proc_6', 'Folding & Gluing ', '130', '130', '4', '64', '0', '0', '', null, '304064', 'monarul', '2021-10-13 21:00:49');
INSERT INTO `travel_card_details_for_transactions` VALUES ('376', '13-10-2021', 'ZZALTC_138', 'po_61', 'pod_140', '12.02', '23.14', '40.06', '35.16', 'proc_6', 'Folding & Gluing ', '70', '70', '3', '52', '0', '0', '', null, '304064', 'monarul', '2021-10-13 21:05:36');
INSERT INTO `travel_card_details_for_transactions` VALUES ('377', '13-10-2021', 'ZZALTC_141', 'po_61', 'pod_143', '17.43', '33.56', '58.12', '51', 'proc_6', 'Folding & Gluing ', '120', '120', '3', '52', '0', '0', '', null, '304064', 'monarul', '2021-10-13 21:06:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('378', '13-10-2021', 'ZZALTC_142', 'po_61', 'pod_144', '8.59', '16.53', '28.62', '25.11', 'proc_6', 'Folding & Gluing ', '65', '65', '3', '52', '0', '0', '', null, '304064', 'monarul', '2021-10-13 21:08:00');
INSERT INTO `travel_card_details_for_transactions` VALUES ('379', '13-10-2021', 'ZZALTC_131', 'po_60', 'pod_138', '994.46', '596.68', '2617.01', '1591.14', 'proc_6', 'Folding & Gluing ', '2000', '2000', '2', '54', '0', '0', '', null, '305059', 'rejaul', '2021-10-13 21:16:02');
INSERT INTO `travel_card_details_for_transactions` VALUES ('380', '13-10-2021', 'ZZALTC_139', 'po_61', 'pod_141', '24.98', '48.08', '83.25', '73.06', 'proc_6', 'Folding & Gluing ', '155', '155', '3', '52', '0', '0', '', null, '304064', 'monarul', '2021-10-13 21:35:27');
INSERT INTO `travel_card_details_for_transactions` VALUES ('381', '13-10-2021', 'ZZALTC_140', 'po_61', 'pod_142', '57.22', '110.14', '190.72', '167.36', 'proc_6', 'Folding & Gluing ', '380', '380', '3', '52', '0', '0', '', null, '304064', 'monarul', '2021-10-13 21:47:23');
INSERT INTO `travel_card_details_for_transactions` VALUES ('382', '13-10-2021', 'ZZALTC_144', 'po_62', 'pod_146', '2274.57', '3502.84', '7581.9', '5777.41', 'proc_1', 'Corrugation', '', '5000', '2', '50', '0', '0', '', null, '5989', 'shahin', '2021-10-13 23:23:47');
INSERT INTO `travel_card_details_for_transactions` VALUES ('383', '14-10-2021', 'ZZALTC_144', 'po_62', 'pod_146', '2274.57', '3502.84', '7581.9', '5777.41', 'proc_2', 'Printing & Slotting', '5000', '5000', '2', '50', '0', '0', '', null, '301982', 'jakir', '2021-10-14 07:02:45');
INSERT INTO `travel_card_details_for_transactions` VALUES ('384', '14-10-2021', 'ZZALTC_144', 'po_62', 'pod_146', '2274.57', '3502.84', '7581.9', '5777.41', 'proc_6', 'Folding & Gluing ', '2265', '2770', '2', '50', '0', '0', '', null, '302770', 'sujon', '2021-10-14 09:08:19');
INSERT INTO `travel_card_details_for_transactions` VALUES ('385', '14-10-2021', 'ZZALTC_135', 'po_35', 'pod_87', '0', '0', '0', '0', 'proc_4', 'Die Cutting ', '230', '231', '0', '0', '0', '0', '', null, '306186', 'akther', '2021-10-14 09:33:09');
INSERT INTO `travel_card_details_for_transactions` VALUES ('386', '14-10-2021', 'ZZALTC_137', 'po_35', 'pod_89', '0', '0', '0', '0', 'proc_4', 'Die Cutting ', '132', '132', '0', '0', '0', '0', '', null, '306186', 'akther', '2021-10-14 09:34:27');
INSERT INTO `travel_card_details_for_transactions` VALUES ('387', '14-10-2021', 'ZZALTC_136', 'po_35', 'pod_88', '0', '0', '0', '0', 'proc_4', 'Die Cutting ', '200', '156', '0', '0', '0', '0', '', null, '306186', 'akther', '2021-10-14 09:36:06');
INSERT INTO `travel_card_details_for_transactions` VALUES ('388', '14-10-2021', 'ZZALTC_117', 'po_49', 'pod_121', '57.12', '34.27', '150.31', '91.39', 'proc_3', 'Cutting Creasing ', '590', '590', '4', '68', '77.97', '50.58', '', null, '4205', 'golam', '2021-10-14 10:08:05');
INSERT INTO `travel_card_details_for_transactions` VALUES ('389', '14-10-2021', 'ZZALTC_119', 'po_49', 'pod_123', '36.89', '22.14', '97.09', '59.03', 'proc_3', 'Cutting Creasing ', '135', '135', '3', '62', '37.43', '24.28', '', null, '4205', 'golam', '2021-10-14 10:08:21');
INSERT INTO `travel_card_details_for_transactions` VALUES ('390', '14-10-2021', 'ZZALTC_119', 'po_49', 'pod_123', '36.89', '22.14', '97.09', '59.03', 'proc_5', 'Manual Slotting ', '135', '135', '3', '62', '37.43', '24.28', '', null, '2408', 'rakib', '2021-10-14 10:10:31');
INSERT INTO `travel_card_details_for_transactions` VALUES ('391', '14-10-2021', 'ZZALTC_117', 'po_49', 'pod_121', '57.12', '34.27', '150.31', '91.39', 'proc_5', 'Manual Slotting ', '590', '590', '4', '68', '77.97', '50.58', '', null, '2408', 'rakib', '2021-10-14 10:10:48');
INSERT INTO `travel_card_details_for_transactions` VALUES ('392', '14-10-2021', 'ZZALTC_123', 'po_53', 'pod_128', '527.54', '316.52', '1388.26', '844.06', 'proc_7', 'Delivery', '2000', '2000', '4', '64', '0', '0', '', null, '3534', 'mahfuz', '2021-10-14 10:25:40');
INSERT INTO `travel_card_details_for_transactions` VALUES ('393', '14-10-2021', 'ZZALTC_119', 'po_49', 'pod_123', '36.89', '22.14', '97.09', '59.03', 'proc_6', 'Folding & Gluing ', '135', '135', '3', '62', '37.43', '24.28', '', null, '302863', 'kamal', '2021-10-14 10:30:57');
INSERT INTO `travel_card_details_for_transactions` VALUES ('394', '14-10-2021', 'ZZALTC_117', 'po_49', 'pod_121', '57.12', '34.27', '150.31', '91.39', 'proc_6', 'Folding & Gluing ', '590', '320', '4', '68', '77.97', '50.58', '', null, '302863', 'kamal', '2021-10-14 10:35:39');
INSERT INTO `travel_card_details_for_transactions` VALUES ('395', '14-10-2021', 'ZZALTC_146', 'po_63', 'pod_148', '1505.27', '903.16', '3961.23', '2408.43', 'proc_1', 'Corrugation', '', '4778', '2', '48', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-14 10:51:02');
INSERT INTO `travel_card_details_for_transactions` VALUES ('396', '14-10-2021', 'ZZALTC_145', 'po_63', 'pod_147', '1799.56', '1079.74', '4735.69', '2879.3', 'proc_1', 'Corrugation', '', '5917', '2', '46', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-14 10:51:32');
INSERT INTO `travel_card_details_for_transactions` VALUES ('397', '14-10-2021', 'ZZALTC_131', 'po_60', 'pod_138', '994.46', '596.68', '2617.01', '1591.14', 'proc_7', 'Delivery', '2000', '2000', '2', '54', '0', '0', '', null, '3534', 'mahfuz', '2021-10-14 10:53:33');
INSERT INTO `travel_card_details_for_transactions` VALUES ('398', '14-10-2021', 'ZZALTC_130', 'po_60', 'pod_137', '1004.89', '602.93', '2644.44', '1607.82', 'proc_7', 'Delivery', '2000', '2000', '2', '54', '1015', '612', '', null, '3534', 'mahfuz', '2021-10-14 10:54:24');
INSERT INTO `travel_card_details_for_transactions` VALUES ('399', '14-10-2021', 'ZZALTC_146', 'po_63', 'pod_148', '1505.27', '903.16', '3961.23', '2408.43', 'proc_2', 'Printing & Slotting', '4778', '4778', '2', '48', '0', '0', '', null, '301982', 'jakir', '2021-10-14 10:55:43');
INSERT INTO `travel_card_details_for_transactions` VALUES ('400', '14-10-2021', 'ZZALTC_146', 'po_63', 'pod_148', '1505.27', '903.16', '3961.23', '2408.43', 'proc_6', 'Folding & Gluing ', '4778', '4706', '2', '48', '0', '0', '', null, '302770', 'sujon', '2021-10-14 10:58:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('401', '14-10-2021', 'ZZALTC_117', 'po_49', 'pod_121', '57.12', '34.27', '150.31', '91.39', 'proc_7', 'Delivery', '320', '295', '4', '68', '77.97', '50.58', '', null, '3534', 'mahfuz', '2021-10-14 11:11:44');
INSERT INTO `travel_card_details_for_transactions` VALUES ('402', '14-10-2021', 'ZZALTC_119', 'po_49', 'pod_123', '36.89', '22.14', '97.09', '59.03', 'proc_7', 'Delivery', '135', '135', '3', '62', '37.43', '24.28', '', null, '3534', 'mahfuz', '2021-10-14 11:12:08');
INSERT INTO `travel_card_details_for_transactions` VALUES ('403', '14-10-2021', 'ZZALTC_69', 'po_24', 'pod_71', '75.86', '146.03', '252.86', '221.89', 'proc_2', 'Printing & Slotting', '122', '122', '1', '40', '0', '0', '', null, '297', 'subash', '2021-10-14 11:15:04');
INSERT INTO `travel_card_details_for_transactions` VALUES ('404', '14-10-2021', 'ZZALTC_145', 'po_63', 'pod_147', '1799.56', '1079.74', '4735.69', '2879.3', 'proc_2', 'Printing & Slotting', '5917', '5917', '2', '46', '0', '0', '', null, '301982', 'jakir', '2021-10-14 11:51:57');
INSERT INTO `travel_card_details_for_transactions` VALUES ('405', '14-10-2021', 'ZZALTC_116', 'po_49', 'pod_120', '48.16', '28.9', '126.74', '77.06', 'proc_2', 'Printing & Slotting', '270', '270', '3', '56', '56', '33', '', null, '301982', 'jakir', '2021-10-14 11:53:27');
INSERT INTO `travel_card_details_for_transactions` VALUES ('406', '14-10-2021', 'ZZALTC_115', 'po_49', 'pod_119', '62.81', '37.69', '165.29', '100.5', 'proc_2', 'Printing & Slotting', '340', '340', '3', '58', '63.89', '41.45', '', null, '300817', 'monir', '2021-10-14 11:58:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('407', '14-10-2021', 'ZZALTC_114', 'po_49', 'pod_118', '60.77', '36.46', '159.93', '97.24', 'proc_2', 'Printing & Slotting', '318', '318', '3', '60', '68', '42', '', null, '301982', 'jakir', '2021-10-14 12:36:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('408', '14-10-2021', 'ZZALTC_145', 'po_63', 'pod_147', '1799.56', '1079.74', '4735.69', '2879.3', 'proc_6', 'Folding & Gluing ', '5917', '5917', '2', '46', '0', '0', '', null, '302863', 'kamal', '2021-10-14 12:55:53');
INSERT INTO `travel_card_details_for_transactions` VALUES ('409', '14-10-2021', 'ZZALTC_120', 'po_49', 'pod_124', '330.18', '198.11', '868.91', '528.29', 'proc_2', 'Printing & Slotting', '1135', '1135', '3', '66', '345', '216', '', null, '301982', 'jakir', '2021-10-14 13:09:24');
INSERT INTO `travel_card_details_for_transactions` VALUES ('410', '14-10-2021', 'ZZALTC_116', 'po_49', 'pod_120', '48.16', '28.9', '126.74', '77.06', 'proc_6', 'Folding & Gluing ', '270', '270', '3', '56', '56', '33', '', null, '302863', 'kamal', '2021-10-14 13:15:43');
INSERT INTO `travel_card_details_for_transactions` VALUES ('411', '14-10-2021', 'ZZALTC_115', 'po_49', 'pod_119', '62.81', '37.69', '165.29', '100.5', 'proc_6', 'Folding & Gluing ', '340', '340', '3', '58', '63.89', '41.45', '', null, '302863', 'kamal', '2021-10-14 13:28:27');
INSERT INTO `travel_card_details_for_transactions` VALUES ('412', '14-10-2021', 'ZZALTC_121', 'po_50', 'pod_125', '220.67', '132.4', '580.71', '353.07', 'proc_2', 'Printing & Slotting', '590', '590', '2', '50', '233', '146', '', null, '301982', 'jakir', '2021-10-14 13:38:35');
INSERT INTO `travel_card_details_for_transactions` VALUES ('413', '14-10-2021', 'ZZALTC_120', 'po_49', 'pod_124', '330.18', '198.11', '868.91', '528.29', 'proc_6', 'Folding & Gluing ', '1135', '1135', '3', '66', '345', '216', '', null, '302770', 'sujon', '2021-10-14 13:40:22');
INSERT INTO `travel_card_details_for_transactions` VALUES ('414', '14-10-2021', 'ZZALTC_114', 'po_49', 'pod_118', '60.77', '36.46', '159.93', '97.24', 'proc_6', 'Folding & Gluing ', '318', '318', '3', '60', '68', '42', '', null, '302863', 'kamal', '2021-10-14 13:48:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('415', '14-10-2021', 'ZZALTC_125', 'po_54', 'pod_130', '348.59', '671.03', '1161.96', '1019.62', 'proc_7', 'Delivery', '226', '226', '2', '56', '0', '0', '', null, '', '', '2021-10-14 14:30:54');
INSERT INTO `travel_card_details_for_transactions` VALUES ('416', '14-10-2021', 'ZZALTC_128', 'po_58', 'pod_133', '18.27', '35.17', '60.9', '53.44', 'proc_3', 'Cutting Creasing ', '45', '45', '1', '36', '0', '0', '', null, '4205', 'golam', '2021-10-14 14:41:43');
INSERT INTO `travel_card_details_for_transactions` VALUES ('417', '14-10-2021', 'ZZALTC_128', 'po_58', 'pod_133', '18.27', '35.17', '60.9', '53.44', 'proc_2', 'Printing & Slotting', '45', '45', '1', '36', '0', '0', '', null, '301982', 'jakir', '2021-10-14 14:55:54');
INSERT INTO `travel_card_details_for_transactions` VALUES ('418', '14-10-2021', 'ZZALTC_128', 'po_58', 'pod_133', '18.27', '35.17', '60.9', '53.44', 'proc_5', 'Manual Slotting ', '45', '45', '1', '36', '0', '0', '', null, '2408', 'rakib', '2021-10-14 14:56:57');
INSERT INTO `travel_card_details_for_transactions` VALUES ('419', '14-10-2021', 'ZZALTC_148', 'po_65', 'pod_150', '231.18', '445.02', '770.59', '676.2', 'proc_1', 'Corrugation', '', '1512', '3', '52', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-14 15:37:01');
INSERT INTO `travel_card_details_for_transactions` VALUES ('420', '14-10-2021', 'ZZALTC_148', 'po_65', 'pod_150', '231.18', '445.02', '770.59', '676.2', 'proc_2', 'Printing & Slotting', '1512', '1512', '3', '52', '0', '0', '', null, '361', 'polash', '2021-10-14 15:50:12');
INSERT INTO `travel_card_details_for_transactions` VALUES ('421', '14-10-2021', 'ZZALTC_148', 'po_65', 'pod_150', '231.18', '445.02', '770.59', '676.2', 'proc_6', 'Folding & Gluing ', '1512', '1512', '3', '52', '0', '0', '', null, '305059', 'rejaul', '2021-10-14 15:53:40');
INSERT INTO `travel_card_details_for_transactions` VALUES ('422', '14-10-2021', 'ZZALTC_121', 'po_50', 'pod_125', '220.67', '132.4', '580.71', '353.07', 'proc_6', 'Folding & Gluing ', '590', '590', '2', '50', '233', '146', '', null, '305059', 'rejaul', '2021-10-14 16:05:12');
INSERT INTO `travel_card_details_for_transactions` VALUES ('423', '14-10-2021', 'ZZALTC_147', 'po_64', 'pod_149', '237.15', '129.27', '594.36', '366.42', 'proc_3', 'Cutting Creasing ', '10000', '10000', '4', '36', '0', '0', '', null, '4205', 'golam', '2021-10-14 17:05:47');
INSERT INTO `travel_card_details_for_transactions` VALUES ('424', '14-10-2021', 'ZZALTC_150', 'po_68', 'pod_153', '0', '0', '0', '0', 'proc_1', 'Corrugation', '', '110', '0', '44', '0', '0', '', null, '5989', 'shahin', '2021-10-14 17:27:09');
INSERT INTO `travel_card_details_for_transactions` VALUES ('425', '14-10-2021', 'ZZALTC_151', 'po_69', 'pod_154', '0', '0', '0', '0', 'proc_1', 'Corrugation', '', '500', '0', '48', '0', '0', '', null, '5989', 'shahin', '2021-10-14 17:27:59');
INSERT INTO `travel_card_details_for_transactions` VALUES ('426', '14-10-2021', 'ZZALTC_116', 'po_49', 'pod_120', '48.16', '28.9', '126.74', '77.06', 'proc_7', 'Delivery', '270', '270', '3', '56', '56', '33', '', null, '3534', 'mahfuz', '2021-10-14 17:29:39');
INSERT INTO `travel_card_details_for_transactions` VALUES ('427', '14-10-2021', 'ZZALTC_114', 'po_49', 'pod_118', '60.77', '36.46', '159.93', '97.24', 'proc_7', 'Delivery', '318', '318', '3', '60', '68', '42', '', null, '3534', 'mahfuz', '2021-10-14 17:30:05');
INSERT INTO `travel_card_details_for_transactions` VALUES ('428', '14-10-2021', 'ZZALTC_147', 'po_64', 'pod_149', '237.15', '129.27', '594.36', '366.42', 'proc_7', 'Delivery', '10000', '10000', '4', '36', '0', '0', '', null, '3534', 'mahfuz', '2021-10-14 17:30:30');
INSERT INTO `travel_card_details_for_transactions` VALUES ('429', '14-10-2021', 'ZZALTC_146', 'po_63', 'pod_148', '1505.27', '903.16', '3961.23', '2408.43', 'proc_7', 'Delivery', '4706', '4044', '2', '48', '0', '0', '', null, '3534', 'mahfuz', '2021-10-14 17:33:02');
INSERT INTO `travel_card_details_for_transactions` VALUES ('430', '14-10-2021', 'ZZALTC_120', 'po_49', 'pod_124', '330.18', '198.11', '868.91', '528.29', 'proc_7', 'Delivery', '1135', '1135', '3', '66', '345', '216', '', null, '3534', 'mahfuz', '2021-10-14 17:33:55');
INSERT INTO `travel_card_details_for_transactions` VALUES ('431', '14-10-2021', 'ZZALTC_150', 'po_68', 'pod_153', '0', '0', '0', '0', 'proc_3', 'Cutting Creasing ', '110', '110', '0', '0', '0', '0', '', null, '4205', 'golam', '2021-10-14 17:35:38');
INSERT INTO `travel_card_details_for_transactions` VALUES ('432', '14-10-2021', 'ZZALTC_145', 'po_63', 'pod_147', '1799.56', '1079.74', '4735.69', '2879.3', 'proc_7', 'Delivery', '5897', '5917', '2', '46', '0', '0', '', null, '3534', 'mahfuz', '2021-10-14 17:35:43');
INSERT INTO `travel_card_details_for_transactions` VALUES ('433', '14-10-2021', 'ZZALTC_151', 'po_69', 'pod_154', '0', '0', '0', '0', 'proc_3', 'Cutting Creasing ', '500', '500', '0', '0', '0', '0', '', null, '4205', 'golam', '2021-10-14 17:36:06');
INSERT INTO `travel_card_details_for_transactions` VALUES ('434', '14-10-2021', 'ZZALTC_150', 'po_68', 'pod_153', '0', '0', '0', '0', 'proc_6', 'Folding & Gluing ', '110', '110', '0', '0', '0', '0', '', null, '304064', 'monarul', '2021-10-14 17:37:50');
INSERT INTO `travel_card_details_for_transactions` VALUES ('435', '14-10-2021', 'ZZALTC_141', 'po_61', 'pod_143', '17.43', '33.56', '58.12', '51', 'proc_7', 'Delivery', '120', '120', '3', '52', '0', '0', '', null, '3534', 'mahfuz', '2021-10-14 18:34:16');
INSERT INTO `travel_card_details_for_transactions` VALUES ('436', '14-10-2021', 'ZZALTC_139', 'po_61', 'pod_141', '24.98', '48.08', '83.25', '73.06', 'proc_7', 'Delivery', '155', '155', '3', '52', '0', '0', '', null, '3534', 'mahfuz', '2021-10-14 18:34:38');
INSERT INTO `travel_card_details_for_transactions` VALUES ('437', '14-10-2021', 'ZZALTC_140', 'po_61', 'pod_142', '57.22', '110.14', '190.72', '167.36', 'proc_7', 'Delivery', '380', '380', '3', '52', '0', '0', '', null, '3534', 'mahfuz', '2021-10-14 18:35:05');
INSERT INTO `travel_card_details_for_transactions` VALUES ('438', '14-10-2021', 'ZZALTC_142', 'po_61', 'pod_144', '8.59', '16.53', '28.62', '25.11', 'proc_7', 'Delivery', '65', '65', '3', '52', '0', '0', '', null, '3534', 'mahfuz', '2021-10-14 18:35:29');
INSERT INTO `travel_card_details_for_transactions` VALUES ('439', '14-10-2021', 'ZZALTC_138', 'po_61', 'pod_140', '12.02', '23.14', '40.06', '35.16', 'proc_7', 'Delivery', '70', '70', '3', '52', '0', '0', '', null, '3534', 'mahfuz', '2021-10-14 18:35:52');
INSERT INTO `travel_card_details_for_transactions` VALUES ('440', '14-10-2021', 'ZZALTC_132', 'po_60', 'pod_139', '449.4', '269.64', '1182.62', '719.04', 'proc_2', 'Printing & Slotting', '1000', '1000', '2', '48', '0', '0', '', null, '300817', 'monir', '2021-10-14 19:32:09');
INSERT INTO `travel_card_details_for_transactions` VALUES ('441', '14-10-2021', 'ZZALTC_151', 'po_69', 'pod_154', '0', '0', '0', '0', 'proc_6', 'Folding & Gluing ', '500', '500', '0', '0', '0', '0', '', null, '304064', 'monarul', '2021-10-14 21:26:13');
INSERT INTO `travel_card_details_for_transactions` VALUES ('442', '15-10-2021', 'ZZALTC_69', 'po_24', 'pod_71', '75.86', '146.03', '252.86', '221.89', 'proc_6', 'Folding & Gluing ', '122', '122', '1', '40', '0', '0', '', null, '304064', 'monarul', '2021-10-15 09:51:46');
INSERT INTO `travel_card_details_for_transactions` VALUES ('443', '15-10-2021', 'ZZALTC_132', 'po_60', 'pod_139', '449.4', '269.64', '1182.62', '719.04', 'proc_6', 'Folding & Gluing ', '1000', '1026', '2', '48', '0', '0', '', null, '305059', 'rejaul', '2021-10-15 12:48:21');
INSERT INTO `travel_card_details_for_transactions` VALUES ('444', '15-10-2021', 'ZZALTC_151', 'po_69', 'pod_154', '0', '0', '0', '0', 'proc_7', 'Delivery', '500', '600', '0', '0', '0', '0', '', null, '3534', 'mahfuz', '2021-10-15 16:36:53');
INSERT INTO `travel_card_details_for_transactions` VALUES ('445', '15-10-2021', 'ZZALTC_69', 'po_24', 'pod_71', '75.86', '146.03', '252.86', '221.89', 'proc_7', 'Delivery', '122', '122', '1', '40', '0', '0', '', null, '3534', 'mahfuz', '2021-10-15 16:42:37');
INSERT INTO `travel_card_details_for_transactions` VALUES ('446', '16-10-2021', 'ZZALTC_82', 'po_31', 'pod_84', '21.26', '40.93', '70.88', '62.2', 'proc_1', 'Corrugation', '', '0', '2', '64', '30', '55', '0', null, '200035', 'mijan', '2021-10-16 11:21:23');
INSERT INTO `travel_card_details_for_transactions` VALUES ('447', '16-10-2021', 'ZZALTC_133', 'po_59', 'pod_134', '52.23', '70.97', '153.62', '123.2', 'proc_3', 'Cutting Creasing ', '120', '120', '2', '56', '0', '0', '', null, '4205', 'golam', '2021-10-16 12:34:40');
INSERT INTO `travel_card_details_for_transactions` VALUES ('448', '16-10-2021', 'ZZALTC_134', 'po_59', 'pod_135', '454.84', '618.05', '1337.77', '1072.89', 'proc_3', 'Cutting Creasing ', '760', '760', '2', '66', '0', '0', '', null, '4205', 'golam', '2021-10-16 12:36:12');
INSERT INTO `travel_card_details_for_transactions` VALUES ('449', '16-10-2021', 'ZZALTC_133', 'po_59', 'pod_134', '52.23', '70.97', '153.62', '123.2', 'proc_2', 'Printing & Slotting', '120', '120', '2', '56', '0', '0', '', null, '361', 'polash', '2021-10-16 12:41:48');
INSERT INTO `travel_card_details_for_transactions` VALUES ('450', '16-10-2021', 'ZZALTC_134', 'po_59', 'pod_135', '454.84', '618.05', '1337.77', '1072.89', 'proc_2', 'Printing & Slotting', '760', '760', '2', '66', '0', '0', '', null, '361', 'polash', '2021-10-16 12:42:06');
INSERT INTO `travel_card_details_for_transactions` VALUES ('451', '16-10-2021', 'ZZALTC_133', 'po_59', 'pod_134', '52.23', '70.97', '153.62', '123.2', 'proc_4', 'Die Cutting ', '120', '120', '2', '56', '0', '0', '', null, '306186', 'akther', '2021-10-16 12:54:12');
INSERT INTO `travel_card_details_for_transactions` VALUES ('452', '16-10-2021', 'ZZALTC_42', 'po_19', 'pod_45', '212.14', '408.37', '707.14', '620.51', 'proc_7', 'Delivery', '1000', '1000', '2', '48', '0', '0', '', null, '3534', 'mahfuz', '2021-10-16 12:54:26');
INSERT INTO `travel_card_details_for_transactions` VALUES ('453', '16-10-2021', 'ZZALTC_133', 'po_59', 'pod_134', '52.23', '70.97', '153.62', '123.2', 'proc_6', 'Folding & Gluing ', '120', '120', '2', '56', '0', '0', '', null, '305059', 'rejaul', '2021-10-16 12:55:12');
INSERT INTO `travel_card_details_for_transactions` VALUES ('454', '16-10-2021', 'ZZALTC_143', 'po_61', 'pod_145', '11.73', '22.58', '39.1', '34.31', 'proc_7', 'Delivery', '130', '130', '4', '64', '0', '0', '', null, '3534', 'mahfuz', '2021-10-16 12:57:07');
INSERT INTO `travel_card_details_for_transactions` VALUES ('455', '16-10-2021', 'ZZALTC_20', 'po_11', 'pod_23', '59.27', '114.1', '197.58', '173.38', 'proc_3', 'Cutting Creasing ', '215', '38', '2', '54', '0', '0', '', null, '4205', 'golam', '2021-10-16 15:35:39');
INSERT INTO `travel_card_details_for_transactions` VALUES ('456', '16-10-2021', 'ZZALTC_14', 'po_8', 'pod_14', '20.04', '38.57', '66.79', '58.61', 'proc_1', 'Corrugation', '', '72', '3', '66', '0', '0', '', null, '9047', 'masum', '2021-10-16 15:45:04');
INSERT INTO `travel_card_details_for_transactions` VALUES ('457', '16-10-2021', 'ZZALTC_14', 'po_8', 'pod_14', '20.04', '38.57', '66.79', '58.61', 'proc_3', 'Cutting Creasing ', '72', '72', '3', '66', '0', '0', '', null, '9047', 'masum', '2021-10-16 15:45:16');
INSERT INTO `travel_card_details_for_transactions` VALUES ('458', '16-10-2021', 'ZZALTC_14', 'po_8', 'pod_14', '20.04', '38.57', '66.79', '58.61', 'proc_5', 'Manual Slotting ', '72', '72', '3', '66', '0', '0', '', null, '9047', 'masum', '2021-10-16 15:45:25');
INSERT INTO `travel_card_details_for_transactions` VALUES ('459', '16-10-2021', 'ZZALTC_113', 'po_52', 'pod_127', '73.94', '42.99', '185.32', '116.94', 'proc_3', 'Cutting Creasing ', '200', '200', '1', '48', '0', '0', '', null, '9047', 'masum', '2021-10-16 15:47:17');
INSERT INTO `travel_card_details_for_transactions` VALUES ('460', '16-10-2021', 'ZZALTC_113', 'po_52', 'pod_127', '73.94', '42.99', '185.32', '116.94', 'proc_6', 'Folding & Gluing ', '200', '200', '1', '48', '0', '0', '', null, '9047', 'masum', '2021-10-16 15:47:26');
INSERT INTO `travel_card_details_for_transactions` VALUES ('461', '16-10-2021', 'ZZALTC_15', 'po_8', 'pod_15', '14.57', '28.05', '48.57', '42.62', 'proc_1', 'Corrugation', '', '48', '2', '48', '0', '0', '', null, '9047', 'masum', '2021-10-16 15:50:01');
INSERT INTO `travel_card_details_for_transactions` VALUES ('462', '16-10-2021', 'ZZALTC_15', 'po_8', 'pod_15', '14.57', '28.05', '48.57', '42.62', 'proc_3', 'Cutting Creasing ', '48', '48', '2', '48', '0', '0', '', null, '9047', 'masum', '2021-10-16 15:50:12');
INSERT INTO `travel_card_details_for_transactions` VALUES ('463', '16-10-2021', 'ZZALTC_15', 'po_8', 'pod_15', '14.57', '28.05', '48.57', '42.62', 'proc_5', 'Manual Slotting ', '48', '48', '2', '48', '0', '0', '', null, '9047', 'masum', '2021-10-16 15:50:20');
INSERT INTO `travel_card_details_for_transactions` VALUES ('464', '16-10-2021', 'ZZALTC_15', 'po_8', 'pod_15', '14.57', '28.05', '48.57', '42.62', 'proc_6', 'Folding & Gluing ', '48', '48', '2', '48', '0', '0', '', null, '9047', 'masum', '2021-10-16 15:50:30');
INSERT INTO `travel_card_details_for_transactions` VALUES ('465', '16-10-2021', 'ZZALTC_16', 'po_8', 'pod_16', '18.42', '35.45', '61.39', '53.87', 'proc_1', 'Corrugation', '', '56', '2', '52', '0', '0', '', null, '9047', 'masum', '2021-10-16 15:51:48');
INSERT INTO `travel_card_details_for_transactions` VALUES ('466', '16-10-2021', 'ZZALTC_16', 'po_8', 'pod_16', '18.42', '35.45', '61.39', '53.87', 'proc_3', 'Cutting Creasing ', '56', '56', '2', '52', '0', '0', '', null, '9047', 'masum', '2021-10-16 15:51:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('467', '16-10-2021', 'ZZALTC_16', 'po_8', 'pod_16', '18.42', '35.45', '61.39', '53.87', 'proc_5', 'Manual Slotting ', '56', '56', '2', '52', '0', '0', '', null, '9047', 'masum', '2021-10-16 15:52:05');
INSERT INTO `travel_card_details_for_transactions` VALUES ('468', '16-10-2021', 'ZZALTC_16', 'po_8', 'pod_16', '18.42', '35.45', '61.39', '53.87', 'proc_6', 'Folding & Gluing ', '56', '56', '2', '52', '0', '0', '', null, '9047', 'masum', '2021-10-16 15:52:13');
INSERT INTO `travel_card_details_for_transactions` VALUES ('469', '16-10-2021', 'ZZALTC_155', 'po_70', 'pod_157', '67.98', '38.24', '178.9', '106.22', 'proc_1', 'Corrugation', '', '355', '4', '66', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-16 15:59:35');
INSERT INTO `travel_card_details_for_transactions` VALUES ('470', '16-10-2021', 'ZZALTC_154', 'po_70', 'pod_156', '78.51', '44.16', '206.61', '122.68', 'proc_1', 'Corrugation', '', '410', '4', '66', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-16 16:00:27');
INSERT INTO `travel_card_details_for_transactions` VALUES ('471', '16-10-2021', 'ZZALTC_153', 'po_70', 'pod_155', '61.22', '34.44', '161.1', '95.65', 'proc_1', 'Corrugation', '', '330', '4', '66', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-16 16:01:07');
INSERT INTO `travel_card_details_for_transactions` VALUES ('472', '16-10-2021', 'ZZALTC_38', 'po_18', 'pod_41', '0', '0', '0', '0', 'proc_4', 'Die Cutting ', '1600', '1600', '0', '0', '0', '0', '', null, '306186', 'akther', '2021-10-16 16:06:55');
INSERT INTO `travel_card_details_for_transactions` VALUES ('473', '16-10-2021', 'ZZALTC_156', 'po_70', 'pod_158', '24.91', '14.01', '65.55', '38.92', 'proc_1', 'Corrugation', '', '255', '4', '52', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-16 16:28:45');
INSERT INTO `travel_card_details_for_transactions` VALUES ('474', '16-10-2021', 'ZZALTC_160', 'po_70', 'pod_161', '0', '0', '0', '0', 'proc_1', 'Corrugation', '', '412', '4', '52', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-16 16:29:37');
INSERT INTO `travel_card_details_for_transactions` VALUES ('475', '16-10-2021', 'ZZALTC_158', 'po_70', 'pod_160', '62.27', '35.03', '163.86', '97.29', 'proc_1', 'Corrugation', '', '560', '4', '52', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-16 16:30:20');
INSERT INTO `travel_card_details_for_transactions` VALUES ('476', '16-10-2021', 'ZZALTC_157', 'po_70', 'pod_159', '32.39', '18.22', '85.25', '50.62', 'proc_1', 'Corrugation', '', '304', '4', '52', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-16 16:30:53');
INSERT INTO `travel_card_details_for_transactions` VALUES ('477', '16-10-2021', 'ZZALTC_159', 'po_70', 'pod_162', '46.38', '26.09', '122.04', '72.46', 'proc_1', 'Corrugation', '', '455', '4', '52', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-16 16:31:31');
INSERT INTO `travel_card_details_for_transactions` VALUES ('478', '16-10-2021', 'ZZALTC_176', 'po_77', 'pod_178', '69.83', '48.22', '277.11', '118.05', 'proc_1', 'Corrugation', '', '638', '2', '56', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-16 17:17:23');
INSERT INTO `travel_card_details_for_transactions` VALUES ('479', '16-10-2021', 'ZZALTC_16', 'po_8', 'pod_16', '18.42', '35.45', '61.39', '53.87', 'proc_7', 'Delivery', '56', '56', '2', '52', '0', '0', '', null, '3534', 'mahfuz', '2021-10-16 17:27:02');
INSERT INTO `travel_card_details_for_transactions` VALUES ('480', '16-10-2021', 'ZZALTC_15', 'po_8', 'pod_15', '14.57', '28.05', '48.57', '42.62', 'proc_7', 'Delivery', '48', '48', '2', '48', '0', '0', '', null, '3534', 'mahfuz', '2021-10-16 17:27:17');
INSERT INTO `travel_card_details_for_transactions` VALUES ('481', '16-10-2021', 'ZZALTC_113', 'po_52', 'pod_127', '73.94', '42.99', '185.32', '116.94', 'proc_7', 'Delivery', '200', '200', '1', '48', '0', '0', '', null, '3534', 'mahfuz', '2021-10-16 17:27:51');
INSERT INTO `travel_card_details_for_transactions` VALUES ('482', '16-10-2021', 'ZZALTC_14', 'po_8', 'pod_14', '20.04', '38.57', '66.79', '58.61', 'proc_6', 'Folding & Gluing ', '72', '72', '3', '66', '0', '0', '', null, '302863', 'kamal', '2021-10-16 17:34:46');
INSERT INTO `travel_card_details_for_transactions` VALUES ('483', '16-10-2021', 'ZZALTC_41', 'po_19', 'pod_44', '1067', '2053.97', '3556.65', '3120.96', 'proc_7', 'Delivery', '4425', '695', '2', '48', '0', '0', '', null, '3534', 'mahfuz', '2021-10-16 17:37:34');
INSERT INTO `travel_card_details_for_transactions` VALUES ('484', '16-10-2021', 'ZZALTC_14', 'po_8', 'pod_14', '20.04', '38.57', '66.79', '58.61', 'proc_7', 'Delivery', '72', '72', '3', '66', '0', '0', '', null, '3534', 'mahfuz', '2021-10-16 17:37:56');
INSERT INTO `travel_card_details_for_transactions` VALUES ('485', '16-10-2021', 'ZZALTC_177', 'po_77', 'pod_179', '952.78', '657.87', '3780.89', '1610.66', 'proc_1', 'Corrugation', '', '7048', '2', '56', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-16 18:17:34');
INSERT INTO `travel_card_details_for_transactions` VALUES ('486', '16-10-2021', 'ZZALTC_162', 'po_71', 'pod_164', '1370.43', '822.26', '3606.39', '2192.69', 'proc_1', 'Corrugation', '', '4350', '2', '50', '1788.6', '835.18', '', null, '5455', 'rejaulnc', '2021-10-16 19:30:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('487', '16-10-2021', 'ZZALTC_155', 'po_70', 'pod_157', '67.98', '38.24', '178.9', '106.22', 'proc_3', 'Cutting Creasing ', '355', '355', '4', '64', '0', '0', '', null, '3603', 'asinur', '2021-10-16 21:26:10');
INSERT INTO `travel_card_details_for_transactions` VALUES ('488', '16-10-2021', 'ZZALTC_154', 'po_70', 'pod_156', '78.51', '44.16', '206.61', '122.68', 'proc_3', 'Cutting Creasing ', '410', '410', '4', '64', '0', '0', '', null, '3603', 'asinur', '2021-10-16 21:27:36');
INSERT INTO `travel_card_details_for_transactions` VALUES ('489', '16-10-2021', 'ZZALTC_153', 'po_70', 'pod_155', '61.22', '34.44', '161.1', '95.65', 'proc_3', 'Cutting Creasing ', '330', '330', '4', '62', '0', '0', '', null, '3603', 'asinur', '2021-10-16 21:29:13');
INSERT INTO `travel_card_details_for_transactions` VALUES ('490', '16-10-2021', 'ZZALTC_156', 'po_70', 'pod_158', '24.91', '14.01', '65.55', '38.92', 'proc_3', 'Cutting Creasing ', '255', '255', '4', '44', '0', '0', '', null, '3603', 'asinur', '2021-10-16 21:30:38');
INSERT INTO `travel_card_details_for_transactions` VALUES ('491', '16-10-2021', 'ZZALTC_159', 'po_70', 'pod_162', '46.38', '26.09', '122.04', '72.46', 'proc_3', 'Cutting Creasing ', '455', '455', '4', '44', '0', '0', '', null, '3603', 'asinur', '2021-10-16 21:32:24');
INSERT INTO `travel_card_details_for_transactions` VALUES ('492', '16-10-2021', 'ZZALTC_158', 'po_70', 'pod_160', '62.27', '35.03', '163.86', '97.29', 'proc_3', 'Cutting Creasing ', '560', '560', '4', '48', '0', '0', '', null, '3603', 'asinur', '2021-10-16 21:33:30');
INSERT INTO `travel_card_details_for_transactions` VALUES ('493', '16-10-2021', 'ZZALTC_160', 'po_70', 'pod_161', '0', '0', '0', '0', 'proc_3', 'Cutting Creasing ', '412', '412', '4', '50', '0', '0', '', null, '3603', 'asinur', '2021-10-16 21:34:27');
INSERT INTO `travel_card_details_for_transactions` VALUES ('494', '16-10-2021', 'ZZALTC_157', 'po_70', 'pod_159', '32.39', '18.22', '85.25', '50.62', 'proc_3', 'Cutting Creasing ', '304', '304', '4', '46', '0', '0', '', null, '3603', 'asinur', '2021-10-16 21:35:36');
INSERT INTO `travel_card_details_for_transactions` VALUES ('495', '16-10-2021', 'ZZALTC_161', 'po_71', 'pod_163', '2185.51', '1311.31', '5751.34', '3496.82', 'proc_1', 'Corrugation', '', '7186', '2', '50', '0', '0', '', null, '5455', 'rejaulnc', '2021-10-16 21:38:35');
INSERT INTO `travel_card_details_for_transactions` VALUES ('496', '16-10-2021', 'ZZALTC_162', 'po_71', 'pod_164', '1370.43', '822.26', '3606.39', '2192.69', 'proc_2', 'Printing & Slotting', '4350', '4350', '2', '48', '1788.6', '835.18', '', null, '301982', 'jakir', '2021-10-16 21:41:21');
INSERT INTO `travel_card_details_for_transactions` VALUES ('497', '16-10-2021', 'ZZALTC_158', 'po_70', 'pod_160', '62.27', '35.03', '163.86', '97.29', 'proc_2', 'Printing & Slotting', '560', '1680', '4', '48', '0', '0', '', null, '297', 'subash', '2021-10-16 21:54:56');
INSERT INTO `travel_card_details_for_transactions` VALUES ('498', '16-10-2021', 'ZZALTC_159', 'po_70', 'pod_162', '46.38', '26.09', '122.04', '72.46', 'proc_2', 'Printing & Slotting', '455', '455', '4', '44', '0', '0', '', null, '297', 'subash', '2021-10-16 21:56:04');
INSERT INTO `travel_card_details_for_transactions` VALUES ('499', '16-10-2021', 'ZZALTC_162', 'po_71', 'pod_164', '1370.43', '822.26', '3606.39', '2192.69', 'proc_6', 'Folding & Gluing ', '4350', '4335', '2', '48', '1788.6', '835.18', '', null, '302770', 'sujon', '2021-10-16 21:56:09');
INSERT INTO `travel_card_details_for_transactions` VALUES ('500', '16-10-2021', 'ZZALTC_156', 'po_70', 'pod_158', '24.91', '14.01', '65.55', '38.92', 'proc_2', 'Printing & Slotting', '255', '255', '4', '44', '0', '0', '', null, '297', 'subash', '2021-10-16 21:56:31');
INSERT INTO `travel_card_details_for_transactions` VALUES ('501', '16-10-2021', 'ZZALTC_153', 'po_70', 'pod_155', '61.22', '34.44', '161.1', '95.65', 'proc_2', 'Printing & Slotting', '330', '660', '4', '62', '0', '0', '', null, '297', 'subash', '2021-10-16 21:56:55');
INSERT INTO `travel_card_details_for_transactions` VALUES ('502', '16-10-2021', 'ZZALTC_154', 'po_70', 'pod_156', '78.51', '44.16', '206.61', '122.68', 'proc_2', 'Printing & Slotting', '410', '410', '4', '64', '0', '0', '', null, '297', 'subash', '2021-10-16 21:57:29');
INSERT INTO `travel_card_details_for_transactions` VALUES ('503', '16-10-2021', 'ZZALTC_155', 'po_70', 'pod_157', '67.98', '38.24', '178.9', '106.22', 'proc_2', 'Printing & Slotting', '355', '355', '4', '64', '0', '0', '', null, '297', 'subash', '2021-10-16 21:58:08');
INSERT INTO `travel_card_details_for_transactions` VALUES ('504', '17-10-2021', 'ZZALTC_176', 'po_77', 'pod_178', '69.83', '48.22', '277.11', '118.05', 'proc_3', 'Cutting Creasing ', '638', '638', '2', '60', '0', '0', '', null, '6065', 'aslam', '2021-10-17 06:18:06');
INSERT INTO `travel_card_details_for_transactions` VALUES ('505', '17-10-2021', 'ZZALTC_129', 'po_60', 'pod_136', '319.67', '191.8', '841.25', '511.48', 'proc_2', 'Printing & Slotting', '1000', '950', '2', '48', '0', '0', '', null, '300817', 'monir', '2021-10-17 07:01:06');
INSERT INTO `travel_card_details_for_transactions` VALUES ('506', '17-10-2021', 'ZZALTC_157', 'po_70', 'pod_159', '32.39', '18.22', '85.25', '50.62', 'proc_2', 'Printing & Slotting', '304', '304', '4', '46', '0', '0', '', null, '361', 'polash', '2021-10-17 07:02:16');
INSERT INTO `travel_card_details_for_transactions` VALUES ('507', '17-10-2021', 'ZZALTC_129', 'po_60', 'pod_136', '319.67', '191.8', '841.25', '511.48', 'proc_6', 'Folding & Gluing ', '950', '940', '2', '48', '0', '0', '', null, '304064', 'monarul', '2021-10-17 07:07:48');
INSERT INTO `travel_card_details_for_transactions` VALUES ('508', '17-10-2021', 'ZZALTC_160', 'po_70', 'pod_161', '0', '0', '0', '0', 'proc_2', 'Printing & Slotting', '412', '412', '4', '50', '0', '0', '', null, '361', 'polash', '2021-10-17 07:51:50');
INSERT INTO `travel_card_details_for_transactions` VALUES ('509', '17-10-2021', 'ZZALTC_166', 'po_72', 'pod_168', '39.8', '23.88', '104.73', '63.68', 'proc_1', 'Corrugation', '', '245', '3', '52', '0', '0', '', null, '5989', 'shahin', '2021-10-17 09:38:26');
INSERT INTO `travel_card_details_for_transactions` VALUES ('510', '17-10-2021', 'ZZALTC_160', 'po_70', 'pod_161', '0', '0', '0', '0', 'proc_5', 'Manual Slotting ', '412', '412', '4', '50', '0', '0', '', null, '2408', 'rakib', '2021-10-17 09:38:37');
INSERT INTO `travel_card_details_for_transactions` VALUES ('511', '17-10-2021', 'ZZALTC_167', 'po_72', 'pod_169', '28.65', '17.19', '75.4', '45.84', 'proc_1', 'Corrugation', '', '125', '3', '52', '0', '0', '', null, '5989', 'shahin', '2021-10-17 09:38:58');
INSERT INTO `travel_card_details_for_transactions` VALUES ('512', '17-10-2021', 'ZZALTC_168', 'po_72', 'pod_170', '82.28', '49.37', '216.53', '131.65', 'proc_1', 'Corrugation', '', '220', '2', '52', '0', '0', '', null, '5989', 'shahin', '2021-10-17 09:39:27');
INSERT INTO `travel_card_details_for_transactions` VALUES ('513', '17-10-2021', 'ZZALTC_157', 'po_70', 'pod_159', '32.39', '18.22', '85.25', '50.62', 'proc_5', 'Manual Slotting ', '304', '304', '4', '46', '0', '0', '', null, '2408', 'rakib', '2021-10-17 09:45:23');
INSERT INTO `travel_card_details_for_transactions` VALUES ('514', '17-10-2021', 'ZZALTC_161', 'po_71', 'pod_163', '2185.51', '1311.31', '5751.34', '3496.82', 'proc_2', 'Printing & Slotting', '7186', '7186', '2', '46', '0', '0', '', null, '300817', 'monir', '2021-10-17 10:12:44');
INSERT INTO `travel_card_details_for_transactions` VALUES ('515', '17-10-2021', 'ZZALTC_161', 'po_71', 'pod_163', '2185.51', '1311.31', '5751.34', '3496.82', 'proc_6', 'Folding & Gluing ', '7186', '7186', '2', '46', '0', '0', '', null, '305059', 'rejaul', '2021-10-17 10:17:15');
INSERT INTO `travel_card_details_for_transactions` VALUES ('516', '17-10-2021', 'ZZALTC_200', 'po_87', 'pod_202', '508.28', '277.07', '1273.88', '785.34', 'proc_1', 'Corrugation', '', '16430', '4', '56', '0', '0', '', null, '5989', 'shahin', '2021-10-17 10:26:49');
INSERT INTO `travel_card_details_for_transactions` VALUES ('517', '17-10-2021', 'ZZALTC_169', 'po_72', 'pod_171', '71.05', '42.63', '186.98', '113.68', 'proc_1', 'Corrugation', '', '260', '3', '62', '0', '0', '', null, '5989', 'shahin', '2021-10-17 10:29:06');
INSERT INTO `travel_card_details_for_transactions` VALUES ('518', '17-10-2021', 'ZZALTC_163', 'po_72', 'pod_165', '56.38', '33.83', '148.36', '90.2', 'proc_1', 'Corrugation', '', '295', '3', '62', '0', '0', '', null, '5989', 'shahin', '2021-10-17 10:29:27');
INSERT INTO `travel_card_details_for_transactions` VALUES ('519', '17-10-2021', 'ZZALTC_164', 'po_72', 'pod_166', '107.15', '64.29', '281.97', '171.44', 'proc_1', 'Corrugation', '', '820', '3', '62', '0', '0', '', null, '5989', 'shahin', '2021-10-17 10:29:54');
INSERT INTO `travel_card_details_for_transactions` VALUES ('520', '17-10-2021', 'ZZALTC_165', 'po_72', 'pod_167', '35.67', '21.4', '93.88', '57.08', 'proc_1', 'Corrugation', '', '200', '3', '62', '0', '0', '', null, '5989', 'shahin', '2021-10-17 10:31:53');
INSERT INTO `travel_card_details_for_transactions` VALUES ('521', '17-10-2021', 'ZZALTC_128', 'po_58', 'pod_133', '18.27', '35.17', '60.9', '53.44', 'proc_6', 'Folding & Gluing ', '45', '45', '1', '36', '0', '0', '', null, '305059', 'rejaul', '2021-10-17 10:35:00');
INSERT INTO `travel_card_details_for_transactions` VALUES ('522', '17-10-2021', 'ZZALTC_200', 'po_87', 'pod_202', '508.28', '277.07', '1273.88', '785.34', 'proc_3', 'Cutting Creasing ', '16430', '16430', '4', '44', '0', '0', '', null, '6065', 'aslam', '2021-10-17 10:41:10');
INSERT INTO `travel_card_details_for_transactions` VALUES ('523', '17-10-2021', 'ZZALTC_160', 'po_70', 'pod_161', '0', '0', '0', '0', 'proc_6', 'Folding & Gluing ', '412', '412', '4', '50', '0', '0', '', null, '305059', 'rejaul', '2021-10-17 11:07:24');
INSERT INTO `travel_card_details_for_transactions` VALUES ('524', '17-10-2021', 'ZZALTC_128', 'po_58', 'pod_133', '18.27', '35.17', '60.9', '53.44', 'proc_7', 'Delivery', '45', '45', '1', '36', '0', '0', '', null, '3534', 'mahfuz', '2021-10-17 11:09:37');
INSERT INTO `travel_card_details_for_transactions` VALUES ('525', '17-10-2021', 'ZZALTC_161', 'po_71', 'pod_163', '2185.51', '1311.31', '5751.34', '3496.82', 'proc_7', 'Delivery', '7186', '7160', '2', '46', '0', '0', '', null, '3534', 'mahfuz', '2021-10-17 11:12:07');
INSERT INTO `travel_card_details_for_transactions` VALUES ('526', '17-10-2021', 'ZZALTC_129', 'po_60', 'pod_136', '319.67', '191.8', '841.25', '511.48', 'proc_7', 'Delivery', '940', '940', '2', '48', '0', '0', '', null, '3534', 'mahfuz', '2021-10-17 11:15:31');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `employee_name` varchar(100) DEFAULT NULL,
  `user_id` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `confirm_password` varchar(50) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `user_access` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_no` varchar(15) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `designation` varchar(30) DEFAULT NULL,
  `profile_picture` varchar(130) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('15', 'iftekhar', 'iftekhar', 'iftekhar', '12345', '12345', 'Admin', 'N/A', 'Active', 'abcd@gmail.com', '11111111', 'ICT', 'Application Developer', 'default.png', 'iftekhar', 'iftekhar', '2021-02-23 15:53:17');
INSERT INTO `user_info` VALUES ('26', 'Md. Jiash Hasnat', 'Md.Jiash Hasnat', '004143', 'covid19zz', 'covid19zz', 'Admin', 'N/A', 'Active', 'ftslab@znzfab.com', '01985982850', 'Lab & QC', 'Engineer', 'default.png', 'iftekhar', 'iftekhar', '2021-03-07 23:44:07');
INSERT INTO `user_info` VALUES ('27', 'Md. Saiful Islam', null, 'Saiful Lab', '4321', '4321', 'User', 'N/A', 'Active', 'md.saiful@znzfab.com', '01701212563', 'Marketing', 'Manager', 'default.png', 'qc', 'qc', '2020-12-01 09:55:55');
INSERT INTO `user_info` VALUES ('28', 'Md. Saiful Islam', null, 'Saiful Lab', '4321', '4321', 'User', 'N/A', 'Active', 'md.saiful@znzfab.com', '01701212563', 'ICT', 'Manager', 'default.png', 'qc', 'qc', '2020-12-01 09:58:41');
INSERT INTO `user_info` VALUES ('30', 'talhagroup', 'Mr. Admin', 'admin', 'talhagroup', 'talhagroup', 'Super Admin', 'N/A', 'Active', 'qc@gmail.com', '100000000', '', 'Deputy Manager', 'default.png', 'admin', 'admin', '2021-10-14 11:55:53');
INSERT INTO `user_info` VALUES ('32', 'abc', 'Mr.QC', 'abc123', '12345', '12345', 'User', 'N/A', 'Active', 'abc@gmail.com', '11111111', 'ICT', 'Engineer', 'default.png', 'iftekhar', 'iftekhar', '2021-02-23 15:51:47');
INSERT INTO `user_info` VALUES ('34', 'dto', 'data entry operator', 'dto_1', '12345', '12345', 'User', 'proc_1', 'Active', 'dto@dto.com', '34543523232', 'ICT', 'Data Co-ordinator', 'default.png', 'iftekhar', 'iftekhar', '2021-03-07 23:43:56');
INSERT INTO `user_info` VALUES ('35', 'dto', 'data entry operator', 'dto_1', '12345', '12345', 'User', 'proc_1', 'Active', 'dto@dto.com', '34543523232', 'ICT', 'Data Co-ordinator', 'default.png', 'iftekhar', 'iftekhar', '2021-03-07 23:43:56');
INSERT INTO `user_info` VALUES ('36', 'Data Entry OP', 'Mr. Haris', '090', '1234', '1234', 'Sub_User', 'N/A', 'Active', 'jiash09@live.com', '0', 'Marketing', 'Assistant Officer', 'default.png', 'qc', 'qc', '2021-03-10 17:51:42');
INSERT INTO `user_info` VALUES ('37', 'test', 'test', '1234', '12345', '12345', 'User', 'proc_1', 'Active', 'test', '000020202', 'Marketing', 'Application Implementer', 'default.png', 'qc', 'qc', '2021-08-30 10:47:34');
INSERT INTO `user_info` VALUES ('38', 'aaa', 'aaa', '123', '12345', '12345', 'Admin', 'N/A', 'Active', 'aaa@gmail.com', '000020202', 'Marketing', 'Deputy Manager', 'default.png', 'qc', 'qc', '2021-08-30 10:48:09');
INSERT INTO `user_info` VALUES ('39', 'user', 'corrugation user', '111', '111', '111', 'User', 'proc_1', 'Active', 'abcd@gmail.com', '34543523232', 'Marketing', 'Assistant General Manager', 'default.png', 'qc', 'qc', '2021-09-04 11:20:16');
INSERT INTO `user_info` VALUES ('40', 'Faruk', 'Md Akash Islam', '300221', 'faruk', 'faruk', 'Admin', 'N/A', 'Active', 'farukeee1935@gmail.com', '01709994729', 'CARTON', 'Officer', 'default.png', 'admin', 'admin', '2021-09-19 12:20:19');
INSERT INTO `user_info` VALUES ('41', 'Cutting ', 'Cutting Creasing', '8035', 'faruk', 'faruk', 'User', 'proc_5', 'Active', 'farukeee1935@gmail.com', '01709994729', 'INDUSTRIAL ENGINEERING', 'Application Developer', 'default.png', 'admin', 'admin', '2021-09-19 12:55:19');
INSERT INTO `user_info` VALUES ('42', 'Corrugation', 'Ming Wei Corrugation', '300221', 'faruk', 'faruk', 'User', 'proc_1', 'Active', 'farukeee1935@gmail.com', '01709994729', 'CARTON', 'Data Co-ordinator', 'default.png', 'admin', 'admin', '2021-09-19 16:28:35');
INSERT INTO `user_info` VALUES ('43', 'Printing', 'Flexo Printing', '300221', 'faruk', 'faruk', 'User', 'proc_3', 'Active', 'farukeee1935@gmail.com', '01709994729', 'CARTON', 'Data Co-ordinator', 'default.png', 'admin', 'admin', '2021-09-19 16:30:48');
INSERT INTO `user_info` VALUES ('44', 'Auto Folder', 'Auto Gluing Machine', '300221', 'faruk', 'faruk', 'User', 'proc_8', 'Active', 'farukeee1935@gmail.com', '01709994729', 'CARTON', 'Data Co-ordinator', 'default.png', 'admin', 'admin', '2021-09-19 16:32:22');
INSERT INTO `user_info` VALUES ('45', 'Finishing ', 'Hriday', '300221', 'faruk', 'faruk', 'User', 'proc_9', 'Active', 'farukeee1935@gmail.com', '01709994729', 'CARTON', 'Data Co-ordinator', 'default.png', 'admin', 'admin', '2021-09-19 16:33:50');
INSERT INTO `user_info` VALUES ('46', 'Gluer', 'Auto Gluing Machine', '300221', 'faruk', 'faruk', 'User', 'proc_8', 'Active', '01709994729', '01709994729', 'CARTON', 'Data Co-ordinator', 'default.png', 'admin', 'admin', '2021-09-19 17:33:57');
INSERT INTO `user_info` VALUES ('47', 'test2', 'test2', '8042', '123456', '123456', 'User', 'proc_2', 'Active', '', '01894949949', 'INDUSTRIAL ENGINEERING', 'Senior Operator ', 'default.png', 'admin', 'admin', '2021-09-20 12:47:46');
INSERT INTO `user_info` VALUES ('48', 'Shahin', 'Md. Shahin Islam', '5989', 'zzal', 'zzal', 'User', 'proc_1', 'Active', '', '01764773781', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 12:51:07');
INSERT INTO `user_info` VALUES ('49', 'Rejaul', 'Md. Rejaul Islam', '5455', 'zzal', 'zzal', 'User', 'proc_1', 'Active', '', '01734419469', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 12:53:38');
INSERT INTO `user_info` VALUES ('52', 'rejaul', 'Md. Rejaul Islam', '305059', 'zzal', 'zzal', 'User', 'proc_8', 'Active', '', '01770896098', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 13:59:14');
INSERT INTO `user_info` VALUES ('53', 'sujon', 'Md.Sujon Islam', '302770', 'zzal', 'zzal', 'User', 'proc_8', 'Active', '', '01849439999', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 14:00:27');
INSERT INTO `user_info` VALUES ('54', 'akther', 'Md. Akther Islam', '306186', 'zzal', 'zzal', 'User', 'proc_2', 'Active', '', '01705687309', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 14:03:17');
INSERT INTO `user_info` VALUES ('55', 'hriday', 'Md. Hriday Islam', '305647', 'zzal', 'zzal', 'User', 'proc_9', 'Active', '', '01737608061', 'CARTON', 'Finishing Supervisor', 'default.png', 'admin', 'admin', '2021-09-20 14:05:40');
INSERT INTO `user_info` VALUES ('56', 'polash', 'Md. Polash Islam', '361', 'zzal', 'zzal', 'User', 'proc_4', 'Active', '', '01723907435', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 14:11:19');
INSERT INTO `user_info` VALUES ('57', 'subash', 'Sree Subash Ray', '297', 'zzal', 'zzal', 'User', 'proc_4', 'Active', '', '01815394217', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 14:14:51');
INSERT INTO `user_info` VALUES ('58', 'monarul', 'Md. Monaru Islaml', '304064', 'zzal', 'zzal', 'User', 'proc_6', 'Active', '', '01739451237', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 14:19:55');
INSERT INTO `user_info` VALUES ('59', 'kamal', 'Md. Kamal Islam', '302863', 'zzal', 'zzal', 'User', 'proc_6', 'Active', '', '01796815228', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 14:21:42');
INSERT INTO `user_info` VALUES ('60', 'golam', 'Md. Golam Hossain', '4205', 'zzal', 'zzal', 'User', 'proc_5', 'Active', '', '01741537943', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 14:28:59');
INSERT INTO `user_info` VALUES ('61', 'rabiul', 'Md. Rabiul Islam', '304387', 'zzal', 'zzal', 'User', 'proc_5', 'Active', '', '01924000294', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 14:32:16');
INSERT INTO `user_info` VALUES ('62', 'aslam', 'Md. Aslam Islam', '6065', 'zzal', 'zzal', 'User', 'proc_5', 'Active', '', '01745784227', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 14:34:36');
INSERT INTO `user_info` VALUES ('63', 'delivery', 'Md. Rajib Islam ', '12345', 'zzal', 'zzal', 'User', 'proc_10', 'Active', '', '01770794854', 'CARTON', 'Assistant Officer', 'default.png', 'admin', 'admin', '2021-09-20 14:37:57');
INSERT INTO `user_info` VALUES ('64', 'asinur', 'Md. Asinur Hossain', '3603', 'zzal', 'zzal', 'User', 'proc_11', 'Active', '', '01935278390', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 14:45:51');
INSERT INTO `user_info` VALUES ('65', 'hridaytest', 'Hriday Test', '3782', '123456', '123456', 'User', 'proc_5', 'Active', '', '01802892934', 'INDUSTRIAL ENGINEERING', 'System Administrator', 'default.png', 'admin', 'admin', '2021-09-20 16:36:45');
INSERT INTO `user_info` VALUES ('66', 'shahin', 'Md. Shahin Islam', '5989', 'zzal', 'zzal', 'User', 'proc_1', 'Active', '', '01764773781', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 16:42:34');
INSERT INTO `user_info` VALUES ('67', 'rejaulnc', 'Md. Rejaul Islam', '5455', 'zzal', 'zzal', 'User', 'proc_1', 'Active', '', '01734419469', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 16:50:18');
INSERT INTO `user_info` VALUES ('68', 'monir', 'Md. Monir Islam', '300817', 'zzal', 'zzal', 'User', 'proc_3', 'Active', '', '01735207342', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 17:09:04');
INSERT INTO `user_info` VALUES ('69', 'jakir', 'Md. Jakir Hosen', '301982', 'zzal', 'zzal', 'User', 'proc_3', 'Active', '', '01735207342', 'CARTON', 'Operator', 'default.png', 'admin', 'admin', '2021-09-20 17:10:10');

-- ----------------------------
-- Table structure for `user_login`
-- ----------------------------
DROP TABLE IF EXISTS `user_login`;
CREATE TABLE `user_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `employee_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact_no` varchar(25) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `user_access` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `profile_picture` varchar(100) DEFAULT NULL,
  `recording_person_id` varchar(30) DEFAULT NULL,
  `recording_person_name` varchar(50) DEFAULT NULL,
  `recording_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_login
-- ----------------------------
INSERT INTO `user_login` VALUES ('69', 'iftekhar', 'iftekhar', '', '', '', '', '12345', 'abcd@gmail.com', '11111111', 'ICT', 'Application Developer', 'Admin', 'N/A', 'Active', 'default.png', 'iftekhar', 'iftekhar', '2021-02-23 15:53:17');
INSERT INTO `user_login` VALUES ('84', 'admin', 'talhagroup', 'Mr. Admin', '', '', '', 'talhagroup', 'qc@gmail.com', '100000000', '', 'Deputy Manager', 'Super Admin', 'N/A', 'Active', 'default.png', 'admin', 'admin', '2021-10-14 11:55:53');
INSERT INTO `user_login` VALUES ('134', '361', 'polash', 'Md. Polash Islam', null, null, null, 'polash@', '', '01723907435', 'CARTON', 'Operator', 'User', 'proc_2', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 14:54:30');
INSERT INTO `user_login` VALUES ('135', '297', 'subash', 'Sree Subash Ray', null, null, null, 'subash@', '', '01815394217', 'CARTON', 'Operator', 'User', 'proc_2', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 14:56:23');
INSERT INTO `user_login` VALUES ('132', '301982', 'jakir', 'Md. Jakir Hosen', null, null, null, 'jakir@', '', '01733755360', 'CARTON', 'Operator', 'User', 'proc_2', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 14:49:23');
INSERT INTO `user_login` VALUES ('131', '300817', 'monir', 'Md. Monir Islam', null, null, null, 'monir@', '', '01735207342', 'CARTON', 'Operator', 'User', 'proc_2', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 14:46:28');
INSERT INTO `user_login` VALUES ('136', '4205', 'golam', 'Md. Golam Islam', null, null, null, 'golam@', '', '01741537943', 'CARTON', 'Operator', 'User', 'proc_3', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 14:58:34');
INSERT INTO `user_login` VALUES ('137', '3603', 'asinur', 'Md. Asinur Hossain', null, null, null, 'asinur@', '', '01935278390', 'CARTON', 'Operator', 'User', 'proc_3', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 15:00:10');
INSERT INTO `user_login` VALUES ('154', '304387', 'rabiul', 'Md. Rabiul Islam', null, null, null, 'rabiul@', '', '01924000294', 'CARTON', 'Junior Operator', 'User', 'proc_3', 'Active', 'default.png', 'admin', 'admin', '2021-10-07 10:44:03');
INSERT INTO `user_login` VALUES ('139', '6065', 'aslam', 'Md. Aslam Islam', null, null, null, 'aslam@', '', '01745784227', 'CARTON', 'Operator', 'User', 'proc_3', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 15:08:30');
INSERT INTO `user_login` VALUES ('140', '305059', 'rejaul', 'Md. Rejaul Islam', null, null, null, 'rejaul@', '', '01770896098', 'CARTON', 'Operator', 'User', 'proc_6', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 15:15:09');
INSERT INTO `user_login` VALUES ('141', '302770', 'sujon', 'Md.Sujon Islam', null, null, null, 'sujon@', '', '01849439999', 'CARTON', 'Operator', 'User', 'proc_6', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 15:16:46');
INSERT INTO `user_login` VALUES ('142', '304064', 'monarul', 'Md.Monarul Islam', null, null, null, 'monarul@', '', '01739451237', 'CARTON', 'Operator', 'User', 'proc_6', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 15:18:52');
INSERT INTO `user_login` VALUES ('143', '302863', 'kamal', 'Md.Kamal Islam', null, null, null, 'kamal@', '', '01796815228', 'CARTON', 'Operator', 'User', 'proc_6', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 15:20:24');
INSERT INTO `user_login` VALUES ('144', '306186', 'akther', 'Md. Akther Islam', null, null, null, 'akther@', '', '01705687309', 'CARTON', 'Operator', 'User', 'proc_4', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 15:23:40');
INSERT INTO `user_login` VALUES ('145', '2408', 'rakib', 'Md. Rakib Islam', null, null, null, 'rakib@', '', '01729709269', 'CARTON', 'Operator', 'User', 'proc_5', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 15:25:34');
INSERT INTO `user_login` VALUES ('149', '306020', 'rejowan', 'Md. Rejowan Islam', null, null, null, 'rejowan@', '', '01761830775', 'CARTON', 'Junior Operator', 'User', 'proc_1', 'Active', 'default.png', 'admin', 'admin', '2021-10-04 17:11:39');
INSERT INTO `user_login` VALUES ('148', '200035', 'mijan', 'Md. Mijanur Islam', null, null, null, 'mijanur@', '', '01913201003', 'CARTON', 'Officer', 'User', 'proc_1', 'Active', 'default.png', 'admin', 'admin', '2021-10-04 17:10:04');
INSERT INTO `user_login` VALUES ('129', '5989', 'shahin', 'Md. Shahin Islam', null, null, null, 'shahin@', '', '01764773781', 'CARTON', 'Operator', 'User', 'proc_1', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 14:22:36');
INSERT INTO `user_login` VALUES ('130', '5455', 'rejaulnc', 'Md. Rejaul Islam', null, null, null, 'rejaulnc@', '', '01734419469', 'CARTON', 'Operator', 'User', 'proc_1', 'Active', 'default.png', 'admin', 'admin', '2021-10-02 14:37:52');
INSERT INTO `user_login` VALUES ('150', '3534', 'mahfuz', 'Mahfuz Alam Rajib', null, null, null, 'rajib1234', 'mahfuz@znzal.com', '01770794854', 'CARTON', 'Incharge', 'User', 'proc_7', 'Active', 'default.png', 'admin', 'admin', '2021-10-05 10:27:12');
INSERT INTO `user_login` VALUES ('151', '5467', 'monwar', 'Monwar Jahid', null, null, null, 'du081312023', 'jahid@znzal.com', '01701212548', 'Head Of Operation', 'General Manager', 'Super Admin', 'N/A', 'Active', 'default.png', 'admin', 'admin', '2021-10-05 18:13:51');
INSERT INTO `user_login` VALUES ('152', '9047', 'masum', 'Masum Billah', null, null, null, 'masum1234', 'masum@znzal.com', '01919424720', 'CARTON', 'Junior Officer', 'Restricted_User', 'N/A', 'Active', 'default.png', 'admin', 'admin', '2021-10-05 21:00:12');
INSERT INTO `user_login` VALUES ('153', '8035', 'faruk', 'Md. Faruk Hossain', null, null, null, 'farukrimu@', 'faruk@znzal.com', '01709994729', 'INDUSTRIAL ENGINEERING', 'Officer', 'Admin', 'N/A', 'Active', 'default.png', 'admin', 'admin', '2021-10-05 21:02:00');
INSERT INTO `user_login` VALUES ('155', '8463', 'babor', 'Babor Molla', null, null, null, 'babor', 'babor.molla@znzal.com', '01313009406', 'Planing', 'Assistant Manager', 'Admin', 'N/A', 'Active', 'default.png', 'admin', 'admin', '2021-10-13 17:01:25');

-- ----------------------------
-- Table structure for `user_type`
-- ----------------------------
DROP TABLE IF EXISTS `user_type`;
CREATE TABLE `user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `short_name` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_type
-- ----------------------------
INSERT INTO `user_type` VALUES ('1', 'Super Admin', 'super_admin');
INSERT INTO `user_type` VALUES ('2', 'Admin', 'admin');
INSERT INTO `user_type` VALUES ('3', 'Senior Officer LC & PI', 'senior_officer_lc_pi');
INSERT INTO `user_type` VALUES ('4', 'Senior Officer B2B', 'senior_officer_b2b');
INSERT INTO `user_type` VALUES ('5', 'Assistant Manager ', 'assistant_manager');
INSERT INTO `user_type` VALUES ('6', 'Assistant Manager Banking', 'assistant_manager_banking');
INSERT INTO `user_type` VALUES ('7', 'Officer', 'officer');
INSERT INTO `user_type` VALUES ('8', 'Assistant Officer BTMA', 'assistant_officer_btma');
INSERT INTO `user_type` VALUES ('9', 'Assistant Officer B2B', 'assistant_officer_b2b');
INSERT INTO `user_type` VALUES ('10', 'Manager', 'manager');
INSERT INTO `user_type` VALUES ('11', 'Sub User', 'sub_user');
