# 스프링 평가 _User6

CREATE TABLE `User6` (
	`uid` VARCHAR(10) PRIMARY KEY,
	`name` VARCHAR(10),
	`birth` CHAR(10),
	`gender` CHAR(1) COMMENT '남자:M, 여자:F',
	`age` TINYINT,
	`addr` VARCHAR(10) COMMENT '서울, 대전, 대구...',
	`hp` CHAR(13) COMMENT '010-1234-1111'

);

UPDATE `km_cs_qna` SET `status`='검토중' WHERE `status` IS NULL;