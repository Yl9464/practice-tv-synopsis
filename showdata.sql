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

CREATE TABLE directors(
id INT auto_increment,
directorName VARCHAR(255),
createdAt DATETIME DEFAULT NOW(),
updatedAt DATETIME DEFAULT NOW(),
deletedAt DATETIME,
PRIMARY KEY (id)
);


INSERT INTO showDetails (showTitle, developers, stars) VALUES ('Kim\'s Convenience', 'Ins Choi and Kevin White', 'Paul Sun-Hyung Lee, Jean Yoon, Andrea Bang, Simu Liu, Andrew Phung, and Nicole Power');

INSERT INTO directors (directorName) VALUES ('Gary Campbell');
INSERT INTO directors (directorName) VALUES ('Siobhan Devine');
INSERT INTO directors (directorName) VALUES ('James Genn');
INSERT INTO directors (directorName) VALUES ('Renuka Jeyapalan');
INSERT INTO directors (directorName) VALUES ('Weyni Mengesha');
INSERT INTO directors (directorName) VALUES ('Kaeden Michlick');
INSERT INTO directors (directorName) VALUES ('Peter Wellington');
INSERT INTO directors (directorName) VALUES ('Dawn Wilkinson');
INSERT INTO directors (directorName) VALUES ('Aleysa Young');


