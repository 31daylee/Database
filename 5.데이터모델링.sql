#날짜 : 2023/06/26
#이름 : 이현정
#내용 : 5.데이터모델링

INSERT INTO `Department` VALUES (101,'영업1부','051-512-1001');
INSERT INTO `Department` VALUES (102,'영업2부','051-512-1002');
INSERT INTO `Department` VALUES (103,'영업3부','051-512-1003');
INSERT INTO `Department` VALUES (104,'영업4부','051-512-1004');
INSERT INTO `Department` VALUES (105,'영업5부','051-512-1005');
INSERT INTO `Department` VALUES (106,'영업지원부','051-512-1006');
INSERT INTO `Department` VALUES (107,'인사부','051-512-1007');

INSERT INTO `Member` VALUES ('a101','박혁거세','010-1234-1001','부장',101,'2023-06-16 16:39:48');
INSERT INTO `Member` VALUES ('a102','김유신','010-1234-1002','차장',101,'2023-06-16 16:39:48');
INSERT INTO `Member` VALUES ('a103','김춘추','010-1234-1003','사원',101,'2023-06-16 16:39:48');
INSERT INTO `Member` VALUES ('a104','장보고','010-1234-1004','대리',102,'2023-06-16 16:39:48');
INSERT INTO `Member` VALUES ('a105','강감찬','010-1234-1005','과장',102,'2023-06-16 16:39:48');
INSERT INTO `Member` VALUES ('a106','이성계','010-1234-1006','차장',103,'2023-06-16 16:39:48');
INSERT INTO `Member` VALUES ('a107','정철','010-1234-1007','차장',103,'2023-06-16 16:39:48');
INSERT INTO `Member` VALUES ('a108','이순신','010-1234-1008','부장',104,'2023-06-16 16:39:48');
INSERT INTO `Member` VALUES ('a109','허균','010-1234-1009','부장',104,'2023-06-16 16:39:48');
INSERT INTO `Member` VALUES ('a110','정약용','010-1234-1010','사원',105,'2023-06-16 16:39:48');
INSERT INTO `Member` VALUES ('a111','박지원','010-1234-1011','사원',105,'2023-06-16 16:39:48');

INSERT INTO `Sales` VALUES (1, 'a101', 2018, 1, 98100);
INSERT INTO `Sales` VALUES (2, 'a102', 2018, 1, 136000);
INSERT INTO `Sales` VALUES (3, 'a103', 2018, 1, 80100);
INSERT INTO `Sales` VALUES (4, 'a104', 2018, 1, 78000);
INSERT INTO `Sales` VALUES (5, 'a105', 2018, 1, 93000);

INSERT INTO `Sales` VALUES (6, 'a101', 2018, 2, 23500);
INSERT INTO `Sales` VALUES (7, 'a102', 2018, 2, 126000);
INSERT INTO `Sales` VALUES (8, 'a103', 2018, 2, 18500);
INSERT INTO `Sales` VALUES (9, 'a105', 2018, 2, 19000);
INSERT INTO `Sales` VALUES (10, 'a106', 2018, 2, 53000);

INSERT INTO `Sales` VALUES (11, 'a101', 2019, 1, 24000);
INSERT INTO `Sales` VALUES (12, 'a102', 2019, 1, 109000);
INSERT INTO `Sales` VALUES (13, 'a103', 2019, 1, 101000);
INSERT INTO `Sales` VALUES (14, 'a104', 2019, 1, 53500);
INSERT INTO `Sales` VALUES (15, 'a107', 2019, 1, 24000);

INSERT INTO `Sales` VALUES (16, 'a102', 2019, 2, 160000);
INSERT INTO `Sales` VALUES (17, 'a103', 2019, 2, 101000);
INSERT INTO `Sales` VALUES (18, 'a104', 2019, 2, 43000);
INSERT INTO `Sales` VALUES (19, 'a105', 2019, 2, 24000);
INSERT INTO `Sales` VALUES (20, 'a106', 2019, 2, 109000);

INSERT INTO `Sales` VALUES (21, 'a102', 2020, 1, 201000);
INSERT INTO `Sales` VALUES (22, 'a104', 2020, 1, 63000);
INSERT INTO `Sales` VALUES (23, 'a105', 2020, 1, 74000);
INSERT INTO `Sales` VALUES (24, 'a106', 2020, 1, 122000);
INSERT INTO `Sales` VALUES (25, 'a107', 2020, 1, 111000);

INSERT INTO `Sales` VALUES (26, 'a102', 2020, 2, 120000);
INSERT INTO `Sales` VALUES (27, 'a103', 2020, 2, 93000);
INSERT INTO `Sales` VALUES (28, 'a104', 2020, 2, 84000);
INSERT INTO `Sales` VALUES (29, 'a105', 2020, 2, 180000);erd2
INSERT INTO `Sales` VALUES (30, 'a106', 2020, 2, 76000);