SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP DATABASE IF EXISTS `our_app_db`;
CREATE DATABASE `our_app_db`;

USE `our_app_db`;

DROP TABLE IF EXISTS `hello`;
CREATE TABLE `hello` (
  `message` varchar(64) CHARACTER SET ascii NOT NULL COMMENT 'A string =)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Say some hello!';

TRUNCATE `hello`;

INSERT INTO `hello` SET `message` = 'WORLD';
INSERT INTO `hello` SET `message` = 'Dear students';
INSERT INTO `hello` SET `message` = 'GitHub';
