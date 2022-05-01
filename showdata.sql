CREATE DATABASE tvSynopsis;

CREATE USER 'tvSynopsis'@'localhose' IDENTIFIED WITH mysql_native_password BY 'tv_syn0psis';
GRANT ALL ON tvSynopsis.* TO 'tvSynopsis'@'localhost';

USE tvSynopsis;
CREATE TABLE showDetails (
id INT auto_increment,
showTitle VARCHAR(255),
developers VARCHAR (255),
stars VARCHAR (255),
createdAt DATETIME DEFAULT NOW(),
updatedAt DATETIME DEFAULT NOW(),
deletedAt DATETIME,
PRIMARY KEY (id)
);


USE tvSynopsis;
INSERT INTO showDetails (showTitle, developers, stars) VALUES ('Kim\'s Convenience', 'Ins Choi and Kevin White', 'Paul Sun-Hyung Lee, Jean Yoon, Andrea Bang, Simu Liu, Andrew Phung, and Nicole Power');
