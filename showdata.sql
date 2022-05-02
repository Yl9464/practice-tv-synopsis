CREATE DATABASE tvSynopsis;

CREATE USER 'tvSynopsis'@'localhost' IDENTIFIED WITH mysql_native_password BY 'tv_syn0psis';
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

CREATE TABLE episodes (
id INT auto_increment,
seasonNum INT,
episodeNum INT,
episodeTitle VARCHAR (255),
directorId INT,
synopsis LONGTEXT,
createdAt DATETIME DEFAULT NOW(),
updatedAt DATETIME DEFAULT NOW(),
deletedAt DATETIME,
PRIMARY KEY (id),
FOREIGN KEY (directorId) REFERENCES directors(id)
);


INSERT INTO showDetails (showTitle, developers, stars) VALUES ('Kim''s Convenience', 'Ins Choi and Kevin White', 'Paul Sun-Hyung Lee, Jean Yoon, Andrea Bang, Simu Liu, Andrew Phung, and Nicole Power');

INSERT INTO directors (directorName) VALUES ('Gary Campbell');
INSERT INTO directors (directorName) VALUES ('Siobhan Devine');
INSERT INTO directors (directorName) VALUES ('James Genn');
INSERT INTO directors (directorName) VALUES ('Renuka Jeyapalan');
INSERT INTO directors (directorName) VALUES ('Weyni Mengesha');
INSERT INTO directors (directorName) VALUES ('Kaeden Michlick');
INSERT INTO directors (directorName) VALUES ('Peter Wellington');
INSERT INTO directors (directorName) VALUES ('Dawn Wilkinson');
INSERT INTO directors (directorName) VALUES ('Aleysa Young');

INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (1, 1, 'Gay Discount', 6, 'After being accused of homophobia, Appa decides to offer a store discount to gay customers during Toronto Pride Week — but he doesn''t seem to be very good at determining who qualifies for it. Meanwhile, Umma tries to find a "cool Christian Korean boyfriend" for Janet.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (1, 2, 'Janet''s Photos', 6, 'When Janet''s photos start getting attention from admirers, Appa tries to prove he''s a better photographer. Meanwhile, Jung decides to apply for a promotion at the car rental agency, to the dismay of Kimchee and Eomma, though for different reasons.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (1, 3, 'Ddongjeem & Eomma''s Picture', 7, 'Jung draws the wrong kind of attention from his boss when he gives Kimchee a ddong chim (Korean "wedgie") at work. Mr. Kim commissions Janet''s friend, Gerald, to take his photo instead of asking Janet.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (1, 4, 'Frank and Nayoung', 8, 'Mr. Kim is frustrated with Frank (Derek McGrath), a repairman who talks too much, while Janet''s cousin Nayoung (Soo-Ram Kim) visits from Korea, challenging Janet''s sense of what it means to be "Korean." Jung and Shannon get tickets to a Toronto Raptors game, but Jung starts to wonder if Shannon thinks it''s a date.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (1, 5, 'Wingman', 3, 'Mr. Chin asks Mr. Kim to be his wingman on a date, which is fine until Mrs. Kim tags along. Janet asks Jung to help her fix a dripping pipe at the store, but the repair is interrupted by an intruder. A police officer (Michael Xavier) helps Jung resolve a misunderstanding and Jung recognizes him as his childhood friend Alex, who becomes reacquainted with Janet.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (1, 6, 'Rude Kid', 3, 'Mr. Kim scolds Janet''s professor''s 5 year-old kid, when he misbehaves in the store, with unexpected consequences for Janet; Jung discovers Kimchee is making extra money by moonlighting for a carsharing company, illicitly using Handy Car Rental cars, and has to decide whether to let Terence get fired when Shannon wrongly suspects him as the culprit.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (1, 7, 'Hapkido', 8, 'Janet takes a Hapkido class but Mr. Kim thinks he knows more than her teacher (Tommy Chang). Jung runs into Grace Lee (Eileen Li), an old flame; they both discover that their meeting was not accidental but part of a plan by their mothers to get them back together.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (1, 8, 'Service', 3, 'Mr. and Mrs. Kim''s relationship is tested when Mr.Kim offers the attractive new female pastor (Amanda Brugel) some free items from the store. Janet dates Jung''s friend, Alex, and Jung pretends to be cool with it.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (1, 9, 'Best Before', 3, 'Mr. Kim tries to prove that "best before" dates mean nothing when Janet objects to his selling expired ravioli; Mrs. Kim''s serving up her homemade galbijjim at the church bazaar when a surprise visit by Jung forces her to admit that she''s embarrassed by his troubled past.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (1, 10, 'Janet''s New Job', 8, 'Janet is sick of working for free and finds a job at Handy Car Rental putting Jung in a difficult position when she notices that Jung and Shannon are attracted to each other; Appa hires Gerald to work in the store but Gerald is nervous and clumsy whenver Appa is around, which is all the time.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (1, 11, 'Handyman', 8, 'Mr. Kim fixes a broken toilet for Kimchee; Jung hides out with Shannon; when Edwin Carter (Kevin Bundy), an old acquaintance of Eomma''s drops by, Janet believes there''s more to his relationship with Mrs. Kim.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (1, 12, 'Appa''s Lump', 7, 'Mr. Kim finds a lump on his back and goes in for a biopsy; Janet wins an award at school; Shannon brings Jung to a work event which may also be a date, when he learns of Mr. Kim''s surgery and must decide whether or not to ditch Shannon and go to hospital.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (1, 13, 'Family Singing Contest', 7, 'Janet signs a lease with Gerald and Semira but doesn''t know how to break the news to her parents. Mrs Kim really wants her family to beat the Parks at the church''s family singing festival, but Jung is reluctant to join them while Janet hopes entering the contest will put Eomma in a good mood to receive her news; Mr. Kim gets attention for his new SUV. Jung is surprised to learn that Shannon has a new boyfriend, Alejandro, (Marco Grazzini), whom she brings to the church festival, resulting in Jung realising he may have feelings for her.');


INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (2, 1, 'Janet''s Roomate', 7, 'Appa and Umma encourage Janet to stay home when her plans to move in with Gerald and Semira hit a snag. Kimchee tells Jung to make a move on Shannon, but her relationship with Alejandro shows no sign of ending.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (2, 2, 'Business Award', 7, 'An award comes between Appa and Umma. Shannon begins biking to work. Janet and Gerald have their first argument as roommates.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (2, 3, 'House Guest', 7, 'Pastor Nina stays with the Kims while her apartment is being renovated. After a night with Janet and her college friends, Jung is worried he might not be that bright.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (2, 4, 'Cardboard Jun', 8, 'Appa is ambivalent when Umma brings home a lifesized cardboard cutout of Jung made by Handy Car Rental as a promotion. Janet''s cousin Nayoung returns.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (2, 5, 'Date Night', 9, 'Appa is pressured to make his date night with Umma more special. Jung looks online to replace Kimchee''s sneakers.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (2, 6, 'Resting Place', 7, 'A money-saving scheme comes back to haunt Appa when Umma discovers that he sold her burial plot 20 years ago; Janet''s bedroom habits make Gerald uncomfortable; Jung does damage control after losing a play wrestling match to Kimchee.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (2, 7, 'Sneak Attack', 1, 'Appa wants in on Umma''s side business, while Janet assumes a new identity accidentally on purpose when she tries to get into a film festival after party. When Umma offers the store''s old freezer to Jung and Kimchee, Jung is reluctant to accept it while Kimchee and Janet fight over who will get the freezer for their respective apartment.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (2, 8, 'Silent Auction', 8, 'Umma has her heart set on a coat at the auction; Jung accuses Shannon of acting unprofessional; Janet''s big payday gets foiled.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (2, 9, 'New TV', 4, 'Appa buys a new TV and Umma donates the old one to a newly arrived refugee family; a photography lecturer notices Janet; Kimchee worries about Jung stealing his girlfriend.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (2, 10, 'Janet''s Boyfriend', 4, 'Janet tries to keep her relationship with Raj Mehta (Ishan Dave) from Appa and Umma; Jung and Kimchee can''t agree about their house party.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (2, 11, 'Goode Neighbours', 2, 'Appa and Umma meet their new neighbour; Jung starts a new work romance; Janet doesn''t like how sweet Gerald''s new girlfriend is.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (2, 12, 'Appa''s First Text', 7, 'Appa inherits Janet''s smartphone; Umma discovers a pest in the store; Kimchee tries to help Janet with her F.O.M.O.; Jung tries to reconnect with a girl.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES (2, 13, 'Handy Graduation', 7, 'Umma wants the family to celebrate Jung getting his GED; Shannon organizes a party to celebrate Jung''s achievement but is conflicted when their feelings for each other surface. Janet gets tired of being the good one and feels unappreciated when Umma and Appa celebrate Jung''s achievement while ignoring hers. Jung struggles to tell Shannon that he''s taking a job elsewhere.');
