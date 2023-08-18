#날짜 : 2023/06/16
#이름 : 이현정
#내용 : 2.테이블 제약조건 실습

#실습 2-1
CREATE TABLE `User2` (
	`uid`		VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10),
	`hp` 		CHAR(13),
	`age`		INT
	);




#실습 2-2
INSERT INTO `User2` VALUES ('A101','김유신','010-1234-1111',25);
INSERT INTO `User2` VALUES ('A102','김춘추','010-1234-2222',23);
INSERT INTO `User2` VALUES ('A103','장보고','010-1234-3333',32);
INSERT INTO `User2` (`uid`,`name`,`hp`,`age`)
							VALUES ('B101','김유신','010-1234-1111',25);



#실습 2-3
CREATE TABLE `User3` (
	`uid`		VARCHAR(10) PRIMARY KEY,
	`name`	VARCHAR(10),
	`hp` 		CHAR(13) UNIQUE,
	`age`		INT
	);

#실습 2-4
INSERT INTO `User3` VALUES ('A101','김유신','010-1234-1111',25);
INSERT INTO `User3` VALUES ('A102','김춘추','010-1234-2222',23);
INSERT INTO `User3` VALUES ('A103','장보고','010-1234-3333',32);
INSERT INTO `User3` (`uid`,`name`,`hp`,`age`)
							VALUES ('B101','홍길동','010-1234-2211',25);
INSERT INTO `User3` SET 
							`uid` = 'P101', 
							`name` = '홍길동', 
							`hp` = '010-1234-1010',
							`age` = 27;


#실습 2-5
CREATE TABLE `Parent` (
`pid` 	VARCHAR(10) PRIMARY KEY,
`name` 	VARCHAR(10),
`hp` 		CHAR(13) UNIQUE
);


CREATE TABLE `Child` (
`cid` 	VARCHAR(10) PRIMARY KEY,
`name` 	VARCHAR(10),farmstory
`hp` 		CHAR(13) UNIQUE,
`pid`		VARCHAR(10),
FOREIGN KEY(`pid`) REFERENCES `Parent` (`pid`)
);




#실습 2-6
INSERT INTO `Parent` VALUES ('p101','홍길동','010-1234-1001');
INSERT INTO `Parent` VALUES ('p102','임꺽정','010-1234-1002');
INSERT INTO `Parent` VALUES ('p103','이성계','010-1234-1003');


INSERT INTO `Child` VALUES ('c101','홍길남','010-1234-2001','p101');
INSERT INTO `Child` VALUES ('c102','임철수','010-1234-2002','p102');
INSERT INTO `Child` VALUES ('c103','이방원','010-1234-2003','p103');
INSERT INTO `Child` VALUES ('c104','홍길여','010-1234-2004','p101');

#실습 2-7
CREATE TABLE `User4`(
`seq` 	INT AUTO_INCREMENT PRIMARY KEY,
`name` 	VARCHAR(10),
`gender` TINYINT,
`age` 	INT,
`addr` 	VARCHAR(255)
);



#실습 2-8
INSERT INTO `User4` VALUES (1,'김유신',1,25,'김해시');
INSERT INTO `User4` VALUES (2,'김춘추',1,23,'경주시');
INSERT INTO `User4` VALUES (3,'장보고',1,32,'완도시');
INSERT INTO `User4` VALUES (4,'강감찬',1,42,'서울시');
INSERT INTO `User4` VALUES (5,'신사임당',2, 47,'강릉시');
INSERT INTO `User4` (`seq`,`gender`,`addr`)
							VALUES (6,1,'부산시');
							
							
							
#실습 2-9
CREATE TABLE `User5`(
	`name` 	VARCHAR(10) NOT NULL,
	`gender` TINYINT,
	`age` 	INT DEFAULT 1,
	`addr` 	VARCHAR(10)
);



#실습 2-10
INSERT INTO `User5` VALUES ('김유신',1,25,'김해시');
INSERT INTO `User5` VALUES ('김춘추',1,23,'경주시');
INSERT INTO `User5` VALUES ('장보고',1,32,'완도시');
INSERT INTO `User5` VALUES ('강감찬',1,42,'서울시');
INSERT INTO `User5` VALUES ('신사임당',2, 47,'강릉시');
#INSERT INTO `User4` (`seq`,`gender`,`addr`)
#							VALUES (6,1,'부산시');
							
							
#실습 2-11
ALTER TABLE `User5` ADD `hp` VARCHAR(20);
ALTER TABLE `User5` ADD `birth`CHAR(10) DEFAULT '0000-00-00' AFTER `name`;


#실습 2-12
ALTER TABLE `User5` MODIFY `hp` CHAR(13);
ALTER TABLE `User5` MODIFY `age`TINYINT;


#실습 2-13
ALTER TABLE `User5` CHANGE COLUMN `addr` `address` VARCHAR(100);


#실습 2-14
ALTER TABLE `User5` DROP `gender`;


#실습 2-15
CREATE table `User6` LIKE `User5`;

#실습 2-16
INSERT INTO `User6` SELECT * FROM `User5`;
