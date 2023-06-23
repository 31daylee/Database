#날짜 : 2023/06/23
#이름 : 이현정
#내용 : SQL 연습문제 4

#실습 4-1
CREATE DATABASE `BookStore`;
CREATE USER 'admin4'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `BookStore`.* TO 'admin4'@'%';
FLUSH PRIVILEGES; 



#실습 4-2
CREATE TABLE `Customer` (
	`custId` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(10) NOT NULL,
	`address` VARCHAR(20) DEFAULT NULL,
	`phone` CHAR(13) DEFAULT NULL 
);

CREATE TABLE `Book` (
	`bookId` INT NOT NULL PRIMARY KEY,
	`BookName` VARCHAR(20) NOT NULL,
	`publisher` VARCHAR(20) not NULL,
	`price` INT DEFAULT NULL 
);

CREATE TABLE `Order` (
	`orderId` INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	`custId` INT NOT NULL,
	`bookId` INT not NULL,
	`salePrice` INT not NULL, 
	`orderDate` DATE not NULL 
);



#실습 4-3

INSERT `Customer` VALUES (1,'박지성','영국 맨체스타','000-5000-0001'); 
INSERT `Customer` VALUES (2,'김연아','대한민국 서울','000-6000-0001'); 
INSERT `Customer` VALUES (3,'장미란','대한민국 강원도','000-7000-0001'); 
INSERT `Customer` VALUES (4,'추신수','미국 클리블랜드','000-8000-0001'); 
INSERT `Customer`(`custId`,`name`,`address`) VALUES (5,'박세리','대한민국 대전'); 

INSERT `Book` VALUES (1,'축구의 역사','굿스포츠',7000); 
INSERT `Book` VALUES (2,'축구아는 여자','나무수',13000); 
INSERT `Book` VALUES (3,'축구의 이해','대한미디어',22000); 
INSERT `Book` VALUES (4,'골프 바이블','대한미디어',35000); 
INSERT `Book` VALUES (5,'피겨 교본','굿스포츠',8000); 
INSERT `Book` VALUES (6,'역도 단계별기술','굿스포츠',6000); 
INSERT `Book` VALUES (7,'야구의 추억','이상미디어',20000); 
INSERT `Book` VALUES (8,'야구를 부탁해','이상미디어',13000); 
INSERT `Book` VALUES (9,'올림픽 이야기','삼성당',7500); 
INSERT `Book` VALUES (10,'Olympic Champions','Pearson',13000); 

INSERT `Order` VALUES (1, 1, 1, 6000, '2014-07-01');
INSERT `Order` VALUES (2, 1, 3, 21000, '2014-07-03');
INSERT `Order` VALUES (3, 2, 5, 8000, '2014-07-03');
INSERT `Order` VALUES (4, 3, 6, 6000, '2014-07-04');
INSERT `Order` VALUES (5, 4, 7, 20000, '2014-07-05');
INSERT `Order` VALUES (6, 1, 2, 12000, '2014-07-07');
INSERT `Order` VALUES (7, 4, 8, 13000, '2014-07-07');
INSERT `Order` VALUES (8, 3, 10, 12000, '2014-07-08');
INSERT `Order` VALUES (9, 2, 10, 7000, '2014-07-09');
INSERT `Order` VALUES (10, 3, 8, 13000, '2014-07-10');







#실습 4-4
SELECT `custId`,`name`,`address` FROM `Customer`; 


#실습 4-5
SELECT `bookName`,`price` FROM `Book`; 


#실습 4-6
SELECT `price`,`bookName` FROM `Book` ; 


#실습 4-7
SELECT `bookId`,`bookName`,`publisher`,`price` FROM `Book`; 




#실습 4-8
SELECT `publisher` FROM `Book`; 



#실습 4-9 (중복제거)
SELECT DISTINCT `publisher` FROM `Book`; 
SELECT `publisher` FROM `Book` GROUP BY `publisher`;

#실습 4-10
SELECT * FROM `Book` WHERE `price` >= 20000;


#실습 4-11
SELECT * FROM `Book` WHERE `price` < 20000;




#실습 4-12
SELECT * FROM `Book` WHERE `price` >= 10000 AND `price` <= 20000;
SELECT * FROM `Book` WHERE `price` BETWEEN 10000 AND 20000;

#실습 4-13
SELECT `bookId`,`bookName`, `price` FROM `Book` WHERE `price` >= 15000 AND  `price` <=30000;



#실습 4-14
SELECT * FROM `Book` WHERE `bookId` IN(2,3,5);


#실습 4-15
SELECT * FROM `Book` WHERE `bookId` NOT IN (1,3,5,7,9);
SELECT * FROM `Book` WHERE `bookId` % 2 =0;
SELECT * FROM `Book` WHERE MOD(bookId, 2) =0;


#실습 4-16
SELECT * FROM `Customer` WHERE `name` LIKE '박%';

#실습 4-17
SELECT * FROM `Customer` WHERE `address` LIKE '대한민국%';



#실습 4-18
SELECT * FROM `Customer` WHERE `phone` IS NOT NULL;



#실습 4-19
SELECT * FROM `Book` WHERE `publisher` IN('굿스포츠','대한미디어');




#실습 4-20
SELECT `publisher` FROM `Book` WHERE `bookName` IN('축구의 역사');



#실습 4-21
SELECT `publisher` FROM `Book` WHERE `bookName` LIKE '%축구%';



#실습 4-22
SELECT * FROM `Book` WHERE `bookName` LIKE '_구%';


#실습 4-23
SELECT * FROM `Book` WHERE `bookName` LIKE '%축구%' AND `price` >=20000;



#실습 4-24
SELECT * FROM `Book` order BY `bookName`;



#실습 4-25
SELECT * FROM `Book` order BY `price`, `bookName`;


#실습 4-26
SELECT * FROM `Book` order BY `price` DESC, `publisher`;


#실습 4-27
SELECT * FROM `Book` order BY `price` DESC LIMIT 3;




#실습 4-28
SELECT * FROM `Book` order BY `price` LIMIT 3;


#실습 4-29
SELECT SUM(`salePrice`) AS `총판매액` FROM `Order`;



#실습 4-30
SELECT 
	SUM(`salePrice`) AS `총판매액`, 
	AVG(`salePrice`) AS `평균값`, 
	MIN(`salePrice`) AS `최저가`,
	MAX(`salePrice`) AS `최고가` 
FROM `Order`;


#실습 4-31 //인덱스 : PK 로 지정한 칼람명으로 조회하기 
SELECT COUNT(`orderId`) AS `판매건수` FROM `Order`;


#실습 4-32(*)
SELECT `bookId`
REPLACE (`bookName`, '야구', '농구' ) AS `bookName`,`publisher`,`price` FROM `Book`;
SELECT * FROM `Book`;



#실습 4-33(*)
SELECT `custId`, 
COUNT(custId) AS `수량` 
FROM `Order`
WHERE `salePrice` > 8000 AND `bookId`>= 2 
GROUP BY `custId`;

#실습 4-33(강사님버전)
SELECT 
	`custId`,
	COUNT(custId) AS `수량` 
FROM `Order` 
WHERE `salePrice` >= 8000 
GROUP BY `custId` 
HAVING `수량` >= 2;


#실습 4-34
SELECT * 
FROM 
	`Customer` AS a
JOIN `Order` AS b
ON a.custId = b.custId;


SELECT * FROM `Customer` AS a
JOIN `Order` AS b USING(`custId`);


SELECT * FROM `Customer` a, `Order` b 
	WHERE a.custId = b.custId;





#실습 4-35
SELECT * FROM `Customer` AS a
JOIN `Order` AS b
ON a.custId = b.custId;




#실습 4-36
SELECT 
	`name`,
	`salePrice`
FROM `Customer` AS a 
JOIN `Order` AS b
ON a.custId = b.custId;


#실습 4-37
SELECT 
	`name`,
	SUM(salePrice) 
FROM `Order` AS a
JOIN `Customer` AS b ON a.custId = b.custId 
group BY `name`
order BY `name`;
#= group by a.`custId`;




#실습 4-38
SELECT 
	`name`,
	`bookName`
FROM `Order` AS a
JOIN `Customer` AS b ON a.custId = b.custId 
JOIN `Book` AS c ON a.bookId = c.bookId ;



#실습 4-39
SELECT 
	`name`,
	`bookName`
FROM `Order` AS a
JOIN `Customer` AS b ON a.custId = b.custId 
JOIN `Book` AS c ON a.bookId = c.bookId WHERE `price` =20000;



#실습 4-40
SELECT 
	`name`,
	`salePrice`
FROM `Customer` AS a
LEFT JOIN `Order` AS b ON a.custId = b.custId;




#실습 4-41
SELECT 
	SUM(salePrice) AS `총매출`
FROM `Order` AS a
JOIN `Customer` AS b ON a.custId = b.custId 
WHERE `name` = '김연아';

SELECT 
	SUM(salePrice) AS `총매출` 
FROM `Order` 
WHERE `custId` = (SELECT `custId` FROM `Customer` WHERE `name` = '김연아');



#실습 4-42
SELECT
	`bookName`
FROM `Book`
order BY  `price` DESC LIMIT 1;

SELECT
	`bookName`
FROM `Book` 
WHERE `price` = (SELECT MAX(`price`) FROM `Book`);



#실습 4-43
SELECT
		`name`
FROM `Customer`
WHERE `custId` IN(5);


SELECT `name` FROM `Customer` AS a
LEFT JOIN `Order` AS b ON a.custId = b.custId
WHERE `orderId` IS NULL;



SELECT `name` FROM `Customer` 
	WHERE `custId` NOT IN(SELECT DISTINCT `custId` FROM `Order`);



#실습 4-44
INSERT `Book`(`bookId`,`bookName`,`publisher`) VALUES (11,'스포츠의학','한술의학서적'); 
SELECT * FROM `Book`;




#실습 4-45
UPDATE `Customer` SET `address`= '대한민국 부산' where `custId` = 5;
SELECT * FROM `Customer`;

#실습 4-46
DELETE FROM `Customer` WHERE `custId` = 5;
SELECT * FROM `Customer`;