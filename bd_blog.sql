/*
Navicat MySQL Data Transfer

Source Server         : base emergentes
Source Server Version : 100408
Source Host           : localhost:3306
Source Database       : bd_blog

Target Server Type    : MYSQL
Target Server Version : 100408
File Encoding         : 65001

Date: 2020-05-22 21:13:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id_post` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `contenido` varchar(255) DEFAULT NULL,
  `id_usuario` int(255) DEFAULT NULL,
  PRIMARY KEY (`id_post`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', '2020-05-10', 'Modelo computacional que uso el mundo en cuarentena', 'Autoedicion y editores de la pagina web usan el Lorem Ipsum', '1');
INSERT INTO `post` VALUES ('2', '2020-05-08', 'Como adelgazar mejorando tu sistema digestivo', 'Es  un hecho establecido hace demaciado tiempo que un lector se distraera con el contenido del tesxto de un sitio mientras mira su diseño. El punto de usar Lorem Isum es que tiene una', '2');

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
INSERT INTO `usuarios` VALUES ('1', 'admi', 'admi');
INSERT INTO `usuarios` VALUES ('2', 'usuario1', 'usuario1');
INSERT INTO `usuarios` VALUES ('3', 'usuario2', 'usuario2');
SET FOREIGN_KEY_CHECKS=1;
