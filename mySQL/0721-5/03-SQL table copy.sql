CREATE TABLE persons_copy LIKE persons; -- 1.붙여넣을 테이블 생성

INSERT INTO persons_copy (firstName, lastName, age, email)
SELECT firstName, lastName, age, email FROM persons; -- 2.복사할 테이블 선택 후 복사 > 붙여넣기

SELECT * FROM persons_copy; -- 3.정상 복사되었는지 확인
-- 제약사항(PK, UNIQE 등)도 같이 복사함
-- --------------------------------------------------------------------------------------------------

CREATE TABLE persons_copy2
SELECT * FROM persons; -- 이렇게 만든 테이블의 경우 제약사항(PK, UNIQE 등)은 가져오지 않음

DESC persons;
DESC persons_copy;
DESC persons_copy2;

-- -----------

CREATE TEMPORARY TABLE mytable ( -- 임시 테이블 생성(TEMPORARY): 접속을 끊으면 사라짐
	myNum int
    , myStr VARCHAR(100)
);

SELECT * FROM MYTABLE;
INSERT INTO mytable VALUES (1, 'a');