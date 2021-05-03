DROP DATABASE IF EXISTS `exo1`;

CREATE DATABASE `exo1`; 

USE `exo1`;

CREATE TABLE `client` (
  `cli_num` int(11) NOT NULL,
  `cli_nom` varchar(50) NOT NULL,
  `cli_adresse` varchar(50) NOT NULL,
  `cli_tel` varchar(30) NOT NULL,
  PRIMARY KEY (`cli_num`),
  KEY `cli_nom` (`cli_nom`)
) ;

CREATE TABLE `commande` (
  `com_num` int(11) NOT NULL,
  `cli_num` int(11) NOT NULL,
  `com_date` datetime NOT NULL,
  `com_obs` varchar(50) NOT NULL,
  PRIMARY KEY (`com_num`),
  KEY `cli_num` (`cli_num`)
) ;

CREATE TABLE `est_compose` (
  `com_num` int(11) NOT NULL,
  `pro_num` int(11) NOT NULL,
  `est_qte` int(11) NOT NULL,
  KEY `com_num` (`com_num`),
  KEY `pro_num` (`pro_num`)
) ;

CREATE TABLE `produit` (
  `pro_num` int(11) NOT NULL,
  `pro_libelle` varchar(50) NOT NULL,
  `pro_description` varchar(50) NOT NULL,
  PRIMARY KEY (`pro_num`)
) ;

ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`cli_num`) REFERENCES `client` (`cli_num`);

ALTER TABLE `est_compose`
  ADD CONSTRAINT `est_compose_ibfk_1` FOREIGN KEY (`com_num`) REFERENCES `commande` (`com_num`),
  ADD CONSTRAINT `est_compose_ibfk_2` FOREIGN KEY (`pro_num`) REFERENCES `produit` (`pro_num`);