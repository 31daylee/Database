#날 짜: 2023/08/02
#이름 : 이현정
#내용 : 게시판 프로젝트 실습하기

CREATE DATABASE `Jboard`;

CREATE TABLE `User`(
	`uid` 		VARCHAR(20) PRIMARY KEY,
	`pass` 		VARCHAR(255),
	`name` 		VARCHAR(20),
	`nick`		VARCHAR(20) UNIQUE,
	`email`		VARCHAR(50) UNIQUE,
	`hp`			CHAR(13) UNIQUE,
	`role`		VARCHAR(20) DEFAULT 'USER',
	`zip`			CHAR(5),
	`addr1`		VARCHAR(255),
	`addr2`		VARCHAR(255),
	`regip`		VARCHAR(100),
	`regDate`	DATETIME,
	`leaveDate`	DATETIME
);

CREATE TABLE `Article`(
	`no`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0,
	`comment`	INT DEFAULT 0,
	`cate`		VARCHAR(20) DEFAULT 'free',
	`title`		VARCHAR(255),
	`content`	TEXT NOT NULL,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`writer`		VARCHAR(20) NOT NULL,
	`regip`		VARCHAR(100) NOT NULL,
	`rdate`		DATETIME NOT NULL,
	FOREIGN KEY(`writer`) REFERENCES `User`(`uid`)
);

CREATE TABLE `File`(
	`fno`			INT AUTO_INCREMENT PRIMARY KEY,
	`ano`			INT NOT NULL,
	`oriName`	VARCHAR(255) NOT NULL,
	`newName`	VARCHAR(255) NOT NULL,
	`download`	INT DEFAULT 0,	
	`rdate`		DATETIME NOT NULL,
	FOREIGN KEY(`ano`) REFERENCES `Article`(`no`)
);

CREATE TABLE `Terms`(
	`terms` 		TEXT NOT NULL,
	`privacy`	TEXT NOT NULL
);


ALTER TABLE `Article` AUTO_INCREMENT=1;

SELECT  
	a.*,
	b.`nick`
FROM `Article` AS a
JOIN `User` AS b 
ON a.writer = b.uid
ORDER BY `no` DESC
LIMIT 0, 10;


#게시물채우기
INSERT INTO `Article`(`title`, `content`,`writer`,`regip`, `rdate`) 
SELECT `title`, `content`,`writer`,`regip`, `rdate` FROM `Article`;


# 전체 게시물 갯수
SELECT COUNT(*) FROM `Article`;

DELETE FROM `Article`; 

