# Practica_4
Practica 4: Blog de salud
![3  Editar](https://user-images.githubusercontent.com/65795550/82718800-c5629b00-9c72-11ea-94dc-9059c9d269b6.JPG)
![3 1  Actualizado](https://user-images.githubusercontent.com/65795550/82718802-c693c800-9c72-11ea-87a5-a67bdecaee73.JPG)
![4 Eliminar](https://user-images.githubusercontent.com/65795550/82718803-c693c800-9c72-11ea-9db9-9b75b8e0c51d.JPG)
![5  Login](https://user-images.githubusercontent.com/65795550/82718804-c72c5e80-9c72-11ea-81d3-ff966dee2d74.JPG)
![5 1  Logeado](https://user-images.githubusercontent.com/65795550/82718805-c7c4f500-9c72-11ea-89e9-b0c4278260a0.JPG)
![1  Index](https://user-images.githubusercontent.com/65795550/82718806-c85d8b80-9c72-11ea-8f67-1931743ff422.JPG)
![2  Nueva entrada](https://user-images.githubusercontent.com/65795550/82718807-c85d8b80-9c72-11ea-8171-53421111497e.JPG)
![2 1 nuevo introducido](https://user-images.githubusercontent.com/65795550/82718808-c8f62200-9c72-11ea-8afa-90759aaaa1b0.JPG)
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
