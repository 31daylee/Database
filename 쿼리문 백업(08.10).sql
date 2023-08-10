-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.33 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- userdb 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `userdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `userdb`;

-- 테이블 userdb.child 구조 내보내기
CREATE TABLE IF NOT EXISTS `child` (
  `cid` varchar(10) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `hp` char(13) DEFAULT NULL,
  `pid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `hp` (`hp`),
  KEY `pid` (`pid`),
  CONSTRAINT `child_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.child:~4 rows (대략적) 내보내기
INSERT INTO `child` (`cid`, `name`, `hp`, `pid`) VALUES
	('c101', '홍길남', '010-1234-2001', 'p101'),
	('c102', '임철수', '010-1234-2002', 'p102'),
	('c103', '이방원', '010-1234-2003', 'p103'),
	('c104', '홍길여', '010-1234-2004', 'p101');

-- 테이블 userdb.department 구조 내보내기
CREATE TABLE IF NOT EXISTS `department` (
  `depNo` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `tel` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.department:~7 rows (대략적) 내보내기
INSERT INTO `department` (`depNo`, `name`, `tel`) VALUES
	(101, '영업1부', '051-512-1001'),
	(102, '영업2부', '051-512-1002'),
	(103, '영업3부', '051-512-1003'),
	(104, '영업4부', '051-512-1004'),
	(105, '영업5부', '051-512-1005'),
	(106, '영업지원부', '051-512-1006'),
	(107, '인사부', '051-512-1007');

-- 테이블 userdb.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `uid` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `hp` char(13) NOT NULL,
  `pos` varchar(10) NOT NULL DEFAULT '사원',
  `dep` int DEFAULT NULL,
  `rdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.member:~12 rows (대략적) 내보내기
INSERT INTO `member` (`uid`, `name`, `hp`, `pos`, `dep`, `rdate`) VALUES
	('a109', '허군', '010-1234-1009', '부장', 104, '2023-06-16 16:39:48'),
	('a101', '박혁거세', '010-1234-1001', '부장', 101, '2023-06-16 16:39:48'),
	('a102', '김유신', '010-1234-1002', '차장', 101, '2023-06-16 16:39:48'),
	('a103', '김춘추', '010-1234-1003', '사원', 101, '2023-06-16 16:39:48'),
	('a104', '장보고', '010-1234-1004', '대리', 102, '2023-06-16 16:39:48'),
	('a105', '강감찬', '010-1234-1005', '과장', 102, '2023-06-16 16:39:48'),
	('a106', '이성계', '010-1234-1006', '차장', 103, '2023-06-16 16:39:48'),
	('a107', '정철', '010-1234-1007', '차장', 103, '2023-06-16 16:39:48'),
	('a108', '이순신', '010-1234-1008', '부장', 104, '2023-06-16 16:39:48'),
	('a110', '정약용', '010-1234-1010', '사원', 105, '2023-06-16 16:39:48'),
	('a111', '박지원', '010-1234-1011', '사원', 105, '2023-06-16 16:39:48'),
	('b101', '을지문덕', '010-5555-1234', '사장', 107, '2023-06-19 14:47:54');

-- 테이블 userdb.parent 구조 내보내기
CREATE TABLE IF NOT EXISTS `parent` (
  `pid` varchar(10) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `hp` char(13) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  UNIQUE KEY `hp` (`hp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.parent:~3 rows (대략적) 내보내기
INSERT INTO `parent` (`pid`, `name`, `hp`) VALUES
	('p101', '홍길동', '010-1234-1001'),
	('p102', '임꺽정', '010-1234-1002'),
	('p103', '이성계', '010-1234-1003');

-- 테이블 userdb.sales 구조 내보내기
CREATE TABLE IF NOT EXISTS `sales` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(10) NOT NULL,
  `year` year NOT NULL,
  `month` int NOT NULL,
  `sale` int NOT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.sales:~30 rows (대략적) 내보내기
INSERT INTO `sales` (`seq`, `uid`, `year`, `month`, `sale`) VALUES
	(1, 'a101', '2018', 1, 98100),
	(2, 'a102', '2018', 1, 136000),
	(3, 'a103', '2018', 1, 80100),
	(4, 'a104', '2018', 1, 78000),
	(5, 'a105', '2018', 1, 93000),
	(6, 'a101', '2018', 2, 23500),
	(7, 'a102', '2018', 2, 126000),
	(8, 'a103', '2018', 2, 18500),
	(9, 'a105', '2018', 2, 19000),
	(10, 'a106', '2018', 2, 53000),
	(11, 'a101', '2019', 1, 24000),
	(12, 'a102', '2019', 1, 109000),
	(13, 'a103', '2019', 1, 101000),
	(14, 'a104', '2019', 1, 53500),
	(15, 'a107', '2019', 1, 24000),
	(16, 'a102', '2019', 2, 160000),
	(17, 'a103', '2019', 2, 101000),
	(18, 'a104', '2019', 2, 43000),
	(19, 'a105', '2019', 2, 24000),
	(20, 'a106', '2019', 2, 109000),
	(21, 'a102', '2020', 1, 201000),
	(22, 'a104', '2020', 1, 63000),
	(23, 'a105', '2020', 1, 74000),
	(24, 'a106', '2020', 1, 122000),
	(25, 'a107', '2020', 1, 111000),
	(26, 'a102', '2020', 2, 120000),
	(27, 'a103', '2020', 2, 93000),
	(28, 'a104', '2020', 2, 84000),
	(29, 'a105', '2020', 2, 180000),
	(30, 'a106', '2020', 2, 76000);

-- 테이블 userdb.sales2 구조 내보내기
CREATE TABLE IF NOT EXISTS `sales2` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(10) NOT NULL,
  `year` year NOT NULL,
  `month` int NOT NULL,
  `sale` int NOT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.sales2:~30 rows (대략적) 내보내기
INSERT INTO `sales2` (`seq`, `uid`, `year`, `month`, `sale`) VALUES
	(1, 'a101', '2021', 1, 98100),
	(2, 'a102', '2021', 1, 136000),
	(3, 'a103', '2021', 1, 80100),
	(4, 'a104', '2021', 1, 78000),
	(5, 'a105', '2021', 1, 93000),
	(6, 'a101', '2021', 2, 23500),
	(7, 'a102', '2021', 2, 126000),
	(8, 'a103', '2021', 2, 18500),
	(9, 'a105', '2021', 2, 19000),
	(10, 'a106', '2021', 2, 53000),
	(11, 'a101', '2022', 1, 24000),
	(12, 'a102', '2022', 1, 109000),
	(13, 'a103', '2022', 1, 101000),
	(14, 'a104', '2022', 1, 53500),
	(15, 'a107', '2022', 1, 24000),
	(16, 'a102', '2022', 2, 160000),
	(17, 'a103', '2022', 2, 101000),
	(18, 'a104', '2022', 2, 43000),
	(19, 'a105', '2022', 2, 24000),
	(20, 'a106', '2022', 2, 109000),
	(21, 'a102', '2023', 1, 201000),
	(22, 'a104', '2023', 1, 63000),
	(23, 'a105', '2023', 1, 74000),
	(24, 'a106', '2023', 1, 122000),
	(25, 'a107', '2023', 1, 111000),
	(26, 'a102', '2023', 2, 120000),
	(27, 'a103', '2023', 2, 93000),
	(28, 'a104', '2023', 2, 84000),
	(29, 'a105', '2023', 2, 180000),
	(30, 'a106', '2023', 2, 76000);

-- 테이블 userdb.tblproduct 구조 내보내기
CREATE TABLE IF NOT EXISTS `tblproduct` (
  `prdCode` int DEFAULT NULL,
  `prdName` varchar(10) DEFAULT NULL,
  `prdPrice` int DEFAULT NULL,
  `prdAmount` int DEFAULT NULL,
  `prdCompany` varchar(10) DEFAULT NULL,
  `prdMakeDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.tblproduct:~6 rows (대략적) 내보내기
INSERT INTO `tblproduct` (`prdCode`, `prdName`, `prdPrice`, `prdAmount`, `prdCompany`, `prdMakeDate`) VALUES
	(1, '냉장고', 800, 10, 'LG', '2022-01-06'),
	(2, '노트북', 1200, 20, '삼성', '2022-01-06'),
	(3, 'TV', 1400, 6, 'LG', '2022-01-06'),
	(4, '세탁기', 1000, 8, 'LG', '2022-01-06'),
	(5, '컴퓨터', 1100, 0, '삼성', '2021-01-01'),
	(6, '휴대폰', 900, 102, '삼성', '2022-01-06');

-- 테이블 userdb.tbluser 구조 내보내기
CREATE TABLE IF NOT EXISTS `tbluser` (
  `userId` varchar(10) DEFAULT NULL,
  `userName` varchar(10) DEFAULT NULL,
  `userHp` char(13) DEFAULT NULL,
  `userAge` tinyint DEFAULT NULL,
  `userAddr` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.tbluser:~4 rows (대략적) 내보내기
INSERT INTO `tbluser` (`userId`, `userName`, `userHp`, `userAge`, `userAddr`) VALUES
	('p101', '김유신', '010-1234-1001', 25, '서울시 중구'),
	('p102', '김춘추', '010-1234-1002', 23, '부산시 금정구'),
	('p104', '강감찬', NULL, 42, '경남 창원시'),
	('p105', '이순신', '010-1234-1005', 50, '경남 김해시');

-- 테이블 userdb.user1 구조 내보내기
CREATE TABLE IF NOT EXISTS `user1` (
  `uid` varchar(10) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `hp` char(13) DEFAULT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.user1:~3 rows (대략적) 내보내기
INSERT INTO `user1` (`uid`, `name`, `hp`, `age`) VALUES
	('j101', '김유신', '010-1234-1001', 23),
	('j111', '홍길동', '010-1234-5555', 55),
	('b105', '벨라리', '010-5555-6666', 56);

-- 테이블 userdb.user2 구조 내보내기
CREATE TABLE IF NOT EXISTS `user2` (
  `uid` varchar(10) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `hp` char(13) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.user2:~4 rows (대략적) 내보내기
INSERT INTO `user2` (`uid`, `name`, `hp`, `age`) VALUES
	('A101', '김유순', '010-1234-1111', 25),
	('A102', '김춘추', '010-1234-2222', 23),
	('B101', '김유신', '010-1234-7777', 25),
	('j111', '홍길동', '010-1234-5555', 50);

-- 테이블 userdb.user3 구조 내보내기
CREATE TABLE IF NOT EXISTS `user3` (
  `uid` varchar(10) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `hp` char(13) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `hp` (`hp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.user3:~6 rows (대략적) 내보내기
INSERT INTO `user3` (`uid`, `name`, `hp`, `age`) VALUES
	('A101', '김유신', '010-1234-5555', 25),
	('A102', '김춘추', '010-1234-2222', 23),
	('A103', '장보고', '010-1234-3333', 32),
	('b105', '홍지연', '010-5555-6666', 55),
	('j101', '홍연지', '010-1111-1111', 21),
	('P101', '김신유', '010-1234-1010', 27);

-- 테이블 userdb.user4 구조 내보내기
CREATE TABLE IF NOT EXISTS `user4` (
  `seq` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT NULL,
  `gender` tinyint DEFAULT NULL,
  `age` int DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.user4:~4 rows (대략적) 내보내기
INSERT INTO `user4` (`seq`, `name`, `gender`, `age`, `addr`) VALUES
	(1, '김유신', 1, 25, '부산시'),
	(4, '강감찬', 1, 42, '서울시'),
	(5, '신사임당', 2, 47, '강릉시'),
	(8, '김유순', 2, 50, '창원시');

-- 테이블 userdb.user5 구조 내보내기
CREATE TABLE IF NOT EXISTS `user5` (
  `uid` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `birth` char(10) DEFAULT '0000-00-00',
  `age` tinyint DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `hp` char(13) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.user5:~0 rows (대략적) 내보내기

-- 테이블 userdb.user6 구조 내보내기
CREATE TABLE IF NOT EXISTS `user6` (
  `name` varchar(10) NOT NULL,
  `birth` char(10) DEFAULT '0000-00-00',
  `age` tinyint DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `hp` char(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.user6:~5 rows (대략적) 내보내기
INSERT INTO `user6` (`name`, `birth`, `age`, `address`, `hp`) VALUES
	('김유신', '0000-00-00', 25, '김해시', NULL),
	('김춘추', '0000-00-00', 23, '경주시', NULL),
	('장보고', '0000-00-00', 32, '완도시', NULL),
	('강감찬', '0000-00-00', 42, '서울시', NULL),
	('신사임당', '0000-00-00', 47, '강릉시', NULL);

-- 테이블 userdb.user7 구조 내보내기
CREATE TABLE IF NOT EXISTS `user7` (
  `uid` varchar(10) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `hp` char(13) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `hp` (`hp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 userdb.user7:~3 rows (대략적) 내보내기
INSERT INTO `user7` (`uid`, `name`, `hp`, `age`) VALUES
	('b105', '홍길동', '010-5555-6666', 50),
	('b155', '김신유', '010-1234-7777', 22),
	('j203', '유관순', '010-1234-2225', 30);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
