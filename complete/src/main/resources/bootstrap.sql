

--
-- Setup a new MySQL user for PCI demo app:
--

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'secret';

GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

CREATE USER 'admin'@'%' IDENTIFIED BY 'secret';

-- Set privileges:
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;

-- Setup sample db:
CREATE DATABASE `EMP` DEFAULT CHARACTER SET utf8;

USE EMP;

DROP TABLE person;


CREATE TABLE person (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(128) DEFAULT NULL,
  `last_name` VARCHAR(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index2` (`last_name`) USING BTREE,
  KEY `index3` (`first_name`) USING BTREE
) ENGINE=INNODB DEFAULT CHARSET=UTF8;
 
insert into person (id, first_name, last_name) values (10001, "John", "Field");

SELECT * FROM person;

DELETE FROM person WHERE id > 0;

