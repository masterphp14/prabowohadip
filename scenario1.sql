-- Adminer 4.2.5 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `even_odd_number`;
CREATE TABLE `even_odd_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number_evens` int(11) NOT NULL DEFAULT '0',
  `number_odds` int(11) NOT NULL DEFAULT '0',
  `total` int(11) NOT NULL DEFAULT '0',
  `name_total` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `nominal_amount`;
CREATE TABLE `nominal_amount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nominal` double NOT NULL,
  `additonal_number` int(11) NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `prime_number`;
CREATE TABLE `prime_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numbers` int(11) NOT NULL,
  `name_numbers` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- 2017-10-28 15:33:58
