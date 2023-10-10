# 날짜 : 2023/09/14
# 이름 : 이현정
# 내용 : K-market

# 내용 채우기_Notice
INSERT INTO `km_cs_notice`(`cate`,`title`,`content`,`writer`,`hit`,`rdate`)
SELECT `cate`,`title`,`content`,`writer`,`hit`,`rdate` FROM `km_cs_notice`; 


# 내용 채우기_FAQ
INSERT INTO `km_cs_faq`(`cate1`,`cate2`,`title`,`content`,`hit`, `writer`,`rdate`)
SELECT `cate1`,`cate2`,`title`,`content`,`hit`, `writer`,`rdate` FROM `km_cs_faq`; 

# 내용 채우기_QNA
INSERT INTO `km_cs_qna`(`cate1`,`cate2`,`title`,`content`, `writer`,`status`,`reply`,`rdate`)
SELECT `cate1`,`cate2`,`title`,`content`, `writer`,`status`,`reply`,`rdate` FROM `km_cs_qna` WHERE `qnaNo`>=566; 



# LIMIT 조건 

SELECT COUNT(*) FROM `km_cs_notice` ORDER BY `noticeNo` LIMIT 0,10;
SELECT * FROM `km_cs_notice` ORDER BY `noticeNo` DESC LIMIT 0,10 ;

SELECT * FROM `km_cs_faq` WHERE `cate1` = 10;


SELECT DISTINCT `cate1` FROM `km_cs_faq`;
SELECT	DISTINCT `cate2` FROM `km_cs_qna` WHERE `cate1` = 20 ORDER BY `cate2`;

UPDATE `km_cs_qna` SET `cate2` = 1010 WHERE `cate2` = '해외배송';

SELECT * "
FROM `km_cs_qna`
WHERE `cate1`=10 AND `qnaNo`>=566
ORDER BY `qnaNo` DESC
LIMIT 0,10;


#review 
SELECT
	a.`revNo`,
	a.`prodNo`,
	a.`content`,
	a.`uid`,
	a.`rdate`,
	a.`rating`,
	b.`name`
FROM `km_member_review` AS a
JOIN `km_member` AS b
ON a.uid = b.uid
JOIN `km_product` AS c
ON a.prodNo = c.prodNo
WHERE a.prodNo=31 
ORDER BY `revNo` DESC LIMIT 0, 5;


