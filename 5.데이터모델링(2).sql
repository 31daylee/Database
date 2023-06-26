#날짜 : 2023/06/26
#이름 : 이현정
#내용 : 5.데이터모델링(2)



INSERT `Customer` VALUES (1,'박지성','영국 맨체스타','000-5000-0001'); 
INSERT `Customer` VALUES (2,'김연아','대한민국 서울','000-6000-0001'); 
INSERT `Customer` VALUES (3,'장미란','대한민국 강원도','000-7000-0001'); 
INSERT `Customer` VALUES (4,'추신수','미국 클리블랜드','000-8000-0001'); 
INSERT `Customer`(`custId`,`name`,`address`) VALUES (5,'박세리','대한민국 대전'); 


INSERT INTO `Publisher` VALUES('굿스포츠','051-153-1234');
INSERT INTO `Publisher` VALUES('나무수','051-153-1235');
INSERT INTO `Publisher` VALUES('대한미디어','051-153-1236');
INSERT INTO `Publisher` VALUES('이상미디어','051-153-1237');
INSERT INTO `Publisher` VALUES('삼성당','051-153-1238');
INSERT INTO `Publisher` VALUES('Pearson','051-153-1239');


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