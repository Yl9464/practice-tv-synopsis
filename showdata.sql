CREATE DATABASE tvSynopsis

CREAT USER 'tvSynopsis'@'localhose' IDENTIFIED WITH mysql_native_password BY 'tv_syn0psis'
GRANT ALL ON tvSynopsis.* TO 'tvSynopsis'@'localhost'

USE tvSynopsis

CREATE TABLE showDetails (
id INT auto_increment,
showTitle VARCHAR(255),
developers VARCHAR(255),
stars VARCHAR(255),
createdAt DATETIME DEFAULT NOW(),
updatedAt DATETIME DEFAULT NOW(),
deletedAt DATETIME,
PRIMARY KEY (id)
)

CREATE TABLE seasons (
id INT auto_increment,
seasonNum INT,
episodeNum INT,
episodeTitle VARCHAR (255),
episodeDirector VARCAHR(255),
synopsis MEDIUMTEXT,
createdAt DATETIME DEFAULT NOW(),
updatedAt DATETIME DEFAULT NOW(),
deletedAt DATETIME,
PRIMARY KEY (id)

)

