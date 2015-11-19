DROP DATABASE IF EXISTS TEST;
CREATE DATABASE TEST;
USE TEST;
DROP TABLE IF EXISTS `test`.`user`;

CREATE TABLE USER (
	`id` INT(8) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(25) NOT NULL DEFAULT '0',
	`age` INT(3) NOT NULL DEFAULT '0',
	`isAdmin` TINYINT(1) NOT NULL DEFAULT '0',
	`createdDate` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(1, 'Anton', 24, true, '2012-01-21 12:15:58');
INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(2, 'Дима', 30, false, '2015-02-22 12:15:58');
INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(3, 'вася', 19, false, '2010-12-25 12:15:58');
INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(4, 'Олег', 40, false, '2011-11-25 12:15:58');
INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(5, 'Java', 30, true, '2013-10-25 12:15:58');
INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(6, 'Spring', 30, true, '2015-09-25 12:15:58');
INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(7, 'Hibernate', 50, true, '2015-05-19 12:15:58');
INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(8, 'JPA', 25, true, '1990-07-10 12:15:58');
INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(9, 'DAO', 27, true, '1991-09-05 12:15:58');
INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(10, 'Petr', 20, false, '2001-04-06 12:15:58');
INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(11, 'Валера', 29, false, '2002-04-21 12:15:58');
INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(12, 'Alex2', 24, false, '2003-10-28 12:15:58');
INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(13, 'Boss', 35, false, '2004-08-30 12:15:58');
INSERT INTO USER(id, name, age, isAdmin, createdDate) VALUES(14, 'girl', 18, false, '2005-08-25 12:15:58');

