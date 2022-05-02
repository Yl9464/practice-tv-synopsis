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
seasonNum VARCHAR(255),
episodeNum VARCHAR(255),
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

INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (1, 1)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (1, 2)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (1, 3)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (1, 4)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (1, 5)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (1, 6)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (1, 7)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (1, 8)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (1, 9)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (1, 10)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (1, 11)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (1, 12)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 13)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 1)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 2)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 3)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 4)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 5)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 6)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 7)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 8)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 9)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 10)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 11)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 12)
INSERT INTO episodeSeasonNums (seasonNum, EpisodeNum) VALUES (2, 13)

INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('1', '1', 'Gay Discount', 6, 'After being accused of homophobia, Appa decides to offer a store discount to gay customers during Toronto Pride Week — but he doesn''t seem to be very good at determining who qualifies for it. Meanwhile, Umma tries to find a "cool Christian Korean boyfriend" for Janet.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('1', '2', 'Janet''s Photos', 6, 'When Janet''s photos start getting attention from admirers, Appa tries to prove he''s a better photographer. Meanwhile, Jung decides to apply for a promotion at the car rental agency, to the dismay of Kimchee and Eomma, though for different reasons.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('1', '3', 'Ddongjeem & Eomma''s Picture', 7, 'Jung draws the wrong kind of attention from his boss when he gives Kimchee a ddong chim (Korean "wedgie") at work. Mr. Kim commissions Janet''s friend, Gerald, to take his photo instead of asking Janet.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('1', '4', 'Frank and Nayoung', 8, 'Mr. Kim is frustrated with Frank (Derek McGrath), a repairman who talks too much, while Janet''s cousin Nayoung (Soo-Ram Kim) visits from Korea, challenging Janet''s sense of what it means to be "Korean." Jung and Shannon get tickets to a Toronto Raptors game, but Jung starts to wonder if Shannon thinks it''s a date.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('1', '5', 'Wingman', 3, 'Mr. Chin asks Mr. Kim to be his wingman on a date, which is fine until Mrs. Kim tags along. Janet asks Jung to help her fix a dripping pipe at the store, but the repair is interrupted by an intruder. A police officer (Michael Xavier) helps Jung resolve a misunderstanding and Jung recognizes him as his childhood friend Alex, who becomes reacquainted with Janet.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('1', '6', 'Rude Kid', 3, 'Mr. Kim scolds Janet''s professor''s 5 year-old kid, when he misbehaves in the store, with unexpected consequences for Janet; Jung discovers Kimchee is making extra money by moonlighting for a carsharing company, illicitly using Handy Car Rental cars, and has to decide whether to let Terence get fired when Shannon wrongly suspects him as the culprit.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('1', '7', 'Hapkido', 8, 'Janet takes a Hapkido class but Mr. Kim thinks he knows more than her teacher (Tommy Chang). Jung runs into Grace Lee (Eileen Li), an old flame; they both discover that their meeting was not accidental but part of a plan by their mothers to get them back together.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('1', '8', 'Service', 3, 'Mr. and Mrs. Kim''s relationship is tested when Mr.Kim offers the attractive new female pastor (Amanda Brugel) some free items from the store. Janet dates Jung''s friend, Alex, and Jung pretends to be cool with it.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('1', '9', 'Best Before', 3, 'Mr. Kim tries to prove that "best before" dates mean nothing when Janet objects to his selling expired ravioli; Mrs. Kim''s serving up her homemade galbijjim at the church bazaar when a surprise visit by Jung forces her to admit that she''s embarrassed by his troubled past.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('1', '10', 'Janet''s New Job', 8, 'Janet is sick of working for free and finds a job at Handy Car Rental putting Jung in a difficult position when she notices that Jung and Shannon are attracted to each other; Appa hires Gerald to work in the store but Gerald is nervous and clumsy whenver Appa is around, which is all the time.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('1', '11', 'Handyman', 8, 'Mr. Kim fixes a broken toilet for Kimchee; Jung hides out with Shannon; when Edwin Carter (Kevin Bundy), an old acquaintance of Eomma''s drops by, Janet believes there''s more to his relationship with Mrs. Kim.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('1', '12', 'Appa''s Lump', 7, 'Mr. Kim finds a lump on his back and goes in for a biopsy; Janet wins an award at school; Shannon brings Jung to a work event which may also be a date, when he learns of Mr. Kim''s surgery and must decide whether or not to ditch Shannon and go to hospital.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('1', '13', 'Family Singing Contest', 7, 'Janet signs a lease with Gerald and Semira but doesn''t know how to break the news to her parents. Mrs Kim really wants her family to beat the Parks at the church''s family singing festival, but Jung is reluctant to join them while Janet hopes entering the contest will put Eomma in a good mood to receive her news; Mr. Kim gets attention for his new SUV. Jung is surprised to learn that Shannon has a new boyfriend, Alejandro, (Marco Grazzini), whom she brings to the church festival, resulting in Jung realising he may have feelings for her.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('2', '1', 'Janet''s Roomate', 7, 'Appa and Umma encourage Janet to stay home when her plans to move in with Gerald and Semira hit a snag. Kimchee tells Jung to make a move on Shannon, but her relationship with Alejandro shows no sign of ending.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('2', '2', 'Business Award', 7, 'An award comes between Appa and Umma. Shannon begins biking to work. Janet and Gerald have their first argument as roommates.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('2', '3', 'House Guest', 7, 'Pastor Nina stays with the Kims while her apartment is being renovated. After a night with Janet and her college friends, Jung is worried he might not be that bright.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('2', '4', 'Cardboard Jun', 8, 'Appa is ambivalent when Umma brings home a lifesized cardboard cutout of Jung made by Handy Car Rental as a promotion. Janet''s cousin Nayoung returns.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('2', '5', 'Date Night', 9, 'Appa is pressured to make his date night with Umma more special. Jung looks online to replace Kimchee''s sneakers.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('2', '6', 'Resting Place', 7, 'A money-saving scheme comes back to haunt Appa when Umma discovers that he sold her burial plot 20 years ago; Janet''s bedroom habits make Gerald uncomfortable; Jung does damage control after losing a play wrestling match to Kimchee.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('2', '7', 'Sneak Attack', 1, 'Appa wants in on Umma''s side business, while Janet assumes a new identity accidentally on purpose when she tries to get into a film festival after party. When Umma offers the store''s old freezer to Jung and Kimchee, Jung is reluctant to accept it while Kimchee and Janet fight over who will get the freezer for their respective apartment.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('2', '8', 'Silent Auction', 8, 'Umma has her heart set on a coat at the auction; Jung accuses Shannon of acting unprofessional; Janet''s big payday gets foiled.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('2', '9', 'New TV', 4, 'Appa buys a new TV and Umma donates the old one to a newly arrived refugee family; a photography lecturer notices Janet; Kimchee worries about Jung stealing his girlfriend.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('2', '10', 'Janet''s Boyfriend', 4, 'Janet tries to keep her relationship with Raj Mehta (Ishan Dave) from Appa and Umma; Jung and Kimchee can''t agree about their house party.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('2', '11', 'Good Neighbours', 2, 'Appa and Umma meet their new neighbour; Jung starts a new work romance; Janet doesn''t like how sweet Gerald''s new girlfriend is.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('2', '12', 'Appa''s First Text', 7, 'Appa inherits Janet''s smartphone; Umma discovers a pest in the store; Kimchee tries to help Janet with her F.O.M.O.; Jung tries to reconnect with a girl.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('2', '13', 'Handy Graduation', 7, 'Umma wants the family to celebrate Jung getting his GED; Shannon organizes a party to celebrate Jung''s achievement but is conflicted when their feelings for each other surface. Janet gets tired of being the good one and feels unappreciated when Umma and Appa celebrate Jung''s achievement while ignoring hers. Jung struggles to tell Shannon that he''s taking a job elsewhere.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('3', '1', 'New Appa-liance', 7, 'Umma finally convinces Appa to get a new dishwasher, but Appa tries to exploit a store''s price matching policy; Janet changes her name to make herself more unique; Jung treads carefully with Shannon in trying to get his job back at the new, merged Handy.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('3', '2', 'Cutie Pie', 7, 'Appa gets a glowing online review about the store, later found to be from a flirtatious customer, making Umma jealous; Gerald''s girlfriend Chelsea (Gabriella Sundar Singh) starts making herself at home in the apartment as their third roommate, just as Gerald wants to break off the relationship; With Kimchee as his direct superior, Jung is having trouble finding his place at Handy, so much so that he pitches the creation of a new back manager position to Shannon.');    
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('3', '3', 'Open Kimunication', 7, 'When Appa and Umma look to settle an argument, they unwittingly end up in Pastor Nina''s couples'' therapy session. Jung learns more about Shannon''s boyfriend than he bargained for when he helps Alejandro move a hutch. Janet meets one of her photography idols, asking for her contact information in hopes that she''ll be her mentor. However, once Gerald finds out wanting to reach out to her as well, Janet becomes devious.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('3', '4', 'Thy Neighbour''s Wifi', 4, 'When the Kim''s Wi-Fi starts acting up, Appa schemes to steal the Wi-Fi password for the CrashFit next door; Jung shows interest in Shannon''s friend Katie, making Shannon jealous; Janet is recruited by Umma and Pastor Nina to read some Bible passages in front of the congregation, but is caught in a dilemma where her passage is deemed misogynistic by Gerald''s friends. Pastor Nina is a guest as the Kim''s host a viewing party for friends of various Korean TV shows.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('3', '5', 'Army Spoon', 7, 'Gerald is so moved by Appa''s story about his Korean army spoon that he chooses to photograph him for an upcoming exhibition, including an embellished version of the story. Janet feels that she insulted a waitress at Chelsea''s supper club but things go from bad to worse when she returns to apologize. Jung tries to persuade Kimchee and Shannon to join him for skydiving. Umma is surprised by Kimchee listing her as his emergency contact, but gets even more surprised when she finds out how many of her own family members have not chosen her as their emergency contact.');    
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('3', '6', 'The Kim Cup', 2, 'While cleaning out the basement, Appa and Jung compete for the family ping-pong tournament, the "Kim Cup"; Umma feels ignored by Janet and bonds with Chelsea, bewildering Janet; a mix-up regarding a gift basket delivered to Handy causes trouble for Shannon.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('3', '7', 'Appannon Delight', 4, 'Appa and Umma discover Gerald''s waterbed. Appa lectures Janet about borrowing his drill. Kimchee struggles to prepare a presentation for work but resents Jung''s offer to help. Jung accidentally runs over Kimchee''s foot, making things worse after he suspects Kimchee is faking the injury. Appa gets Pastor Nina to divulge if her T-Ball team won.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('3', '8', 'To Him It May Concern', 5, 'Umma takes over sign-making duties for the store after Appa''s embarrassing spelling mistake. With Kimchee''s mother coming for a visit, Kimchee tries to hide all evidence of his friendship with Jung, whom his mother despises. Janet gets Gerald on a shortlist for a photography scholarship, which requires a letter of recommendation. Appa volunteers to write one but Janet intercedes.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('3', '9', 'Blabber Talker', 4, 'Mr. Kim and Mr. Mehta discuss using formal salutations in addressing each other. Mr. Kim joins Facebook. Mr. Mehta hires Janet to take his son Raj''s engagement photos, not realizing that they have a past. Appa and Umma look forward to their Cuban vacation until they accidentally invite the Lees to join them. Appa and Umma hire Mrs. Ada to do housecleaning, then suspect her of gossiping about them. The Handy staff do impressions of one another but Jung goes too far when the regional manager comes to visit .');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('3', '10', 'Elephant in the Room', 2, 'Kimchee has a crush on the courier, Gwen (Jenny Raven), and gets bombarded with conflicting advice from both Shannon and Jung about what to do, especially after seeing Terence confirming a date with her. Janet retaliates when Umma throws out her childhood keepsakes, while Mr. Kim takes Mr. Mehta''s advice to use the situation to his advantage.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('3', '11', 'Appanticitis', 4, 'Mr. Kim invents a new type of clothing. Appa tries to give Umma advice about her annoying habit, but regrets it. Janet takes Gerald to the emergency room when his appendix flares up, not expecting the ER doctor to be her ex, Raj. Jung auditions for the Astounding Trek reality show with Kimchee, but doesn''t want him to know that he''s also auditioning with Shannon. Umma''s new look is not well received.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('3', '12', 'Hit n'' Fun', 7, 'In the church parking lot, Umma backs into Pastor Nina''s new car and tries to avoid taking responsibility. After Appa fails to object to Jimmy''s sexist jokes, Umma and Appa argue over gender roles and Appa agrees to make the Nanaimo bars for the church''s bake sale. Janet tries to turn the tables on Gerald after she finds out he and Chelsea have been making fun of her, and ends up getting far closer to Chelsea than she''d wanted. Jung tries to get Shannon''s birthday card back when he realizes he wrote "love, Jung" on it, but ends up implicating Kimchee.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('3', '13', 'Lord of the Ring', 7, 'Umma loses her ring; Appa holds off telling her he''s found it. Janet and Jung join a yoga class taught by her crush, Nathan. Kimchee and Shannon argue over who gets to keep a barbecue they won. Raj breaks up with his fiancee in hopes of getting back together with Janet, but he may be too late.');
---
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('4', '1', 'The Trollop', 7, 'Janet and Raj deal with the aftermath of Raj''s broken engagement. Mr.Kim tries to return an expensive dress. Mr.Mehta suspects Raj broke up with his fiancee because of another woman. Shannon gets in trouble when she imitates an accent.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('4', '2', 'Couch Surfing', 7, 'When a water pipe bursts in their apartment, Jung goes to stay with Janet and Kimchee stays with the Kims. Janet gets defensive when Jung accuses her of being "emotionally unavailable" and her housemates agree. Kimchee becomes the fall guy for Appa''s mistakes.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('4', '3', 'The Help', 4, 'Janet is offended when a rich patron assumes Umma is a food server at her school''s art show. Shannon finally breaks up with Alejandro and wants to avoid the rebound.');    
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('4', '4', 'Happy Ummaversary', 4, 'Janet hosts a surprise family dinner for Umma, the family''s first dinner together in 15 years. Shannon wants to keep her relationship with Jung a secret.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('4', '5', 'Thinkin'' ''Bout Inkin''', 7, 'Janet wants to get a tattoo. Umma gossips about Pastor Nina. Jung and Shannon exchange five-week-iversary gifts.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('4', '6', 'Soccer Dad', 4, 'Appa takes it upon himself to coach Jung''s beer league soccer team; Shannon plans a birthday party for Stacie, whether she wants one or not; Janet teaches herself how to cook when Umma refuses to make a dish for her housemates.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('4', '7', 'Beacon of Truth', 2, 'Appa''s feelings are hurt when Janet tells him she lied about a high school trip. Umma is tasked with telling Mrs. Mehta she''s been thrown out of the book club. Appa lets slip a secret about Janet, and Janet decides to tell the truth, though Umma wishes she wouldn''t. Shannon gets annoyed when Jung acts like a boyfriend at work.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('4', '8', 'Chammo!', 4, 'Shannon tries to befriend Janet by hiring her to photograph her cats, but Janet views it as a business relationship; Umma asks Jung to pick up Appa to the dentist and is disappointed when things go wrong; Kimchee feels threatened by Terence and tries to prove which one of them can eat the spiciest food.');    
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('4', '9', 'Which Witch is Which', 7, 'Umma is upset when she learns Janet drew her as a witch when she was 6; Jung and Shannon have different ideas about what kind of dancing is sexy; Appa tries to do a good deed when he finds a $100 bill on the sidewalk.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('4', '10', 'In the Bedroom', 4, 'Appa and Umma try a different sleeping arrangement; Jung want Janet to help him break into modelling; Terence is obsessed with a jigsaw puzzle.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('4', '11', 'Birds of a Feather', 7, 'Jung becomes emotionally attached to a bird he''s trying to nurse back to health; Janet is annoyed when Chelsea steals her holiday idea and tries to manipulate Gerald to insist on an alternative; Appa is invited to give a business lecture but becomes jealous when he''s bumped in favour of Jimmy.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('4', '12', 'Knife Strife', 2, 'Umma finds a knife that may have been a murder weapon; Janet reconsiders her relationship with Nathan; Kimchee tries to fit in at a meeting of trash-talking managers.');
INSERT INTO episodes (seasonNum, episodeNum, episodeTitle, directorId, synopsis) VALUES ('4', '13', 'Bon Voyage', 7, 'Appa gets annoyed when he learns Umma has made plans for her life after his death. Janet gets an internship in Africa and realizes she''ll miss Gerald, who is planning his trip to Korea with Chelsea. Shannon needs a roommate and Jung thinks she wants him to move in.');
    