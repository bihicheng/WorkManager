SET NAMES 'utf8';
CREATE DATABASE IF NOT EXISTS hc_star_fans DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE hc_star_fans;
DROP TABLE IF EXISTS stars;
CREATE TABLE stars (
    uid mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
    star_name varchar(255) NOT NULL UNIQUE,
    type enum('1'),
    PRIMARY KEY (uid)
) ENGINE = MYISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS fans;
CREATE TABLE fans (
    id tinyint(6) unsigned NOT NULL AUTO_INCREMENT,
    star_id mediumint(8) unsigned NOT NULL,
    fans_phone varchar(255) NOT NULL UNIQUE,
    PRIMARY KEY (id)
) ENGINE = MYISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS prize_recode;
CREATE TABLE prize_recode (
    id tinyint(6) unsigned NOT NULL AUTO_INCREMENT,
    star_id mediumint(8) unsigned NOT NULL,
    fans_phone varchar(255) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = MYISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
DROP TABLE IF EXISTS recode_count;
CREATE TABLE recode_count (
    id tinyint(6) unsigned NOT NULL AUTO_INCREMENT,
    every_recode_count mediumint(8) unsigned NOT NULL,
    PRIMARY KEY (id)
) ENGINE = MYISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
DROP TABLE IF EXISTS log;
CREATE TABLE log (
    id tinyint(6) unsigned NOT NULL AUTO_INCREMENT,
    star_id  mediumint(8) unsigned NOT NULL,
    prized_phone varchar(255) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = MYISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
DROP TABLE IF EXISTS fans_backup;
CREATE TABLE fans_backup (
    id tinyint(6) unsigned NOT NULL AUTO_INCREMENT,
    star_id mediumint(8) unsigned NOT NULL,
    fans_phone varchar(255) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = MYISAM DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;



/*INSERT INTO `fans` (`star_id`, `fans_phone`) VALUES (123, '18621067646);*/
INSERT INTO `stars` (`star_name`) VALUES
('迈克-理查兹'),
('文森特-孔帕尼'),
('帕勃罗-萨巴莱塔'),
('乔莱昂-莱斯科特'),    
('詹姆斯-米尔纳'),
('亚当-约翰逊'),
('埃尔丁-哲科'),
('亚历山大-科拉罗夫'),
('斯蒂凡-萨维奇'),
('塞尔吉奥-阿圭罗'),
('加里斯-巴里'),
('萨米尔-纳斯里'),
('欧文-哈格里夫斯'),
('大卫-席尔瓦'),
('盖尔-克利希'),
('乔-哈特'),
('科洛-图雷'),
('尼格尔-德容'),
('亚亚-图雷'),
('马里奥-巴洛特利');

INSERT INTO `fans` (`star_id`, `fans_phone`) VALUES
('1', '18621156875'),
('5', '15996201589'),
('6', '18796926000'),
('6', '15450032520'),
('7', '13651799122'),
('7', '13524278419'),
('7', '13761862300'),
('7', '13585629911'),
('7', '18602118851'),
('7', '15107197064'),
('14', '13761099552'),
('14', '13671849464'),
('14', '13801784225'),
('14', '15801796978'),
('14', '13916830716'),
('14', '13681711105'),
('14', '13735427254'),
('14', '18621698380'),
('12', '13774450845'),
('12', '13916904380'),
('12', '15618412751'),
('12', '13916984777'),
('12', '13917164677'),
('12', '13817244759'),
('7', '13761871737'),
('14', '13755291825'),
('14', '13934611315'),
('12', '13816709424'),
('12', '13636359108'),
('12', '13820484392'),
('7', '13991373304'),
('20', '13818094811'),
('20', '15000873600'),
('20', '15921426650'),
('20', '13601708446'),
('20', '13916656913'),
('20', '13651627480'),
('20', '15900758546'),
('20', '15900417561'),
('20', '15121100315'),
('20', '13601655845'),
('20', '13917914231'),
('20', '13888992242'),
('20', '13761778679'),
('20', '13816085661'),
('20', '13818864190'),
('20', '15316766538'),
('20', '13681852304'),
('7', '13661446484'),
('7', '13501943252'),
('7', '13720722027'),
('7', '15802109908'),
('4', '13774206027'),
('6', '15950432528'),
('6', '13862332571'),
('15', '13585911594'),
('15', '13651799522'),
('20', '13661773617');
/*
INSERT INTO `star_fans` (`uid`, `star_name`, `fans_phone`) VALUES
(173, '黃圩鎮', 4),
(163, '黃圩鎮', 4),
(1763, '黃圩鎮', 4),
(1463, '黃圩鎮', 4),
(146, '黃圩鎮', 4),
(147631, '黃圩鎮', 4),
(147632, '黃圩鎮', 4),
(147633, '黃圩鎮', 4),
(147634, '黃圩鎮', 4),
(147635, '黃圩鎮', 4),
(147636, '黃圩鎮', 4),
(147637, '黃圩鎮', 4),
(114763, '黃圩鎮', 4),
(214763, '黃圩鎮', 4),
(314763, '黃圩鎮', 4),
(414763, '黃圩鎮', 4),
(514763, '黃圩鎮', 4),
(61476, '黃圩鎮', 4),
(714763, '黃圩鎮', 4),
(814763, '黃圩鎮', 4),
(914763, '黃圩鎮', 4),
(1014763, '黃圩鎮', 4),
(1114763, '黃圩鎮', 4),
(141763, '黃圩鎮', 4),
(143763, '黃圩鎮', 4),
(145763, '黃圩鎮', 4),
(147563, '黃圩鎮', 4),
(148763, '黃圩鎮', 4),
(147063, '黃圩鎮', 4),
(1471164, '萬盈鎮', 4);

UPDATE `star_fans` SET `star_name`='bihicheng', `fans_phone`='18621067649' WHERE `uid` = 11111;

DELETE FROM `star_fans` WHERE `uid` = 11111;

SELECT `uid`, `star_name`, `fans_phone` FROM `star_fans`;

#INSERT INTO `star_fans` (`star_name`, `fans_phone`) VALUES(11111, 'starname', 'fansphone');

#ALTER DATABASE db_name DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

#INSERT INTO `pre_common_district` (`id`, `name`, `level`, `upid`) VALUES (14763, '黃圩鎮', 4, 2103),(14764, '萬盈鎮', 4, 2104);

ALTER TABLE logtest CHANGE title title VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci;

ALTER TABLE logtest DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

ALTER TABLE logtest CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci;

ALTER DATABASE db_name DEFAULT CHARACTER SET character_name [COLLATE ...];

查看数据库编码：

SHOW CREATE DATABASE db_name;

查看表编码：

SHOW CREATE TABLE tbl_name;

查看字段编码：

SHOW FULL COLUMNS FROM tbl_name;

INSERT INTO `stars` (`star_name`,`type`) VALUES ('test1', 1);

#insert into star_fans set `star_name`='2222', `fans_phone` = '1234561' ;
*/
