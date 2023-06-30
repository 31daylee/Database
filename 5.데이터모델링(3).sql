#날짜 : 2023/06/26
#이름 : 이현정
#내용 : 5.데이터모델링(3)



INSERT `Student` (`stdNo`,`stdName`,`stdHp`,`stdYear`) VALUES ('20201016','김유신','010-1234-1001',3);
INSERT `Student` VALUES ('20201126','김춘추','010-1234-1002',3,'경상남도 경주시');
INSERT `Student` VALUES ('20210216','장보고','010-1234-1003',2,'전라남도 완도시');
INSERT `Student` VALUES ('20210326','강감찬','010-1234-1004',2,'서울시 영등포구');
INSERT `Student` VALUES ('20220416','이순신','010-1234-1005',1,'부산시 부산진구');
INSERT `Student` VALUES ('20220521','송상현','010-1234-1006',1,'부산시 동래구');

INSERT `Lecture` VALUES (159,'인지행동심리학',3,40,'본304');
INSERT `Lecture` VALUES (167,'운영체제론',3,25,'본B05');
INSERT `Lecture` VALUES (234,'중급 영문법',3,20,'본201');
INSERT `Lecture` VALUES (239,'세법개론',3,40,'본204');
INSERT `Lecture` VALUES (248,'빅데이터 개론',3,20,'본B01');
INSERT `Lecture` VALUES (253,'컴퓨팅사고와 코딩',2,10,'본B02');
INSERT `Lecture` VALUES (349,'사회복지 마케팅',2,50,'본301');


INSERT `Register` (`regStdNo`,`regLecNo`)VALUES ('20201126',234);
INSERT `Register` (`regStdNo`,`regLecNo`)VALUES ('20201016',248);
INSERT `Register` (`regStdNo`,`regLecNo`)VALUES ('20201016',253);
INSERT `Register` (`regStdNo`,`regLecNo`)VALUES ('20201126',239);
INSERT `Register` (`regStdNo`,`regLecNo`)VALUES ('20210216',349);
INSERT `Register` (`regStdNo`,`regLecNo`)VALUES ('20210326',349);
INSERT `Register` (`regStdNo`,`regLecNo`)VALUES ('20201016',167);
INSERT `Register` (`regStdNo`,`regLecNo`)VALUES ('20220416',349);
