DROP TABLE IF EXISTS `wj_act_login`;
CREATE TABLE `wj_act_login` (
  `uid` VARCHAR(255) NOT NULL,
  `days` INT(10) DEFAULT '0',
  `state` VARCHAR(255) NOT NULL,
  `dt` DATETIME NOT NULL,
  PRIMARY KEY (`uid`));
