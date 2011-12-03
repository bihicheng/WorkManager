SET NAMES 'utf8';
CREATE DATABASE IF NOT EXISTS ci DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE ci;
DROP TABLE IF EXISTS user;
CREATE TABLE user (
    uid mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL UNIQUE,
    type enum('1'),
    PRIMARY KEY (uid)
) ENGINE = MYISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
