CREATE DATABASE my_db;

SHOW DATABASES;

USE my_db;

SHOW TABLES;

-- 사람 테이블
-- 열1 이름 문자열
-- 열2 나이 정수

CREATE TABLE persons (
	name VARCHAR(10), -- VARCHAR(길이): 문자열타입 | 타입을 적을 경우 "길이"도 같이 적어야 됨
    age INT
); -- 테이블 이름은 고유해야되기에 다시 한 번 실행 시 실행불가

DESC persons; -- persons의 구조 확인

SELECT * FROM persons;

INSERT INTO persons (name, age) VALUES ("홍길동", 22); -- 값 넣기: INSERT INTO 테이블(칼럼1, 칼럼2) VALUES (값1, 값2);
-- "브루스 리", 30살 추가
insert INTO persons (name, age) values ("브루스 리", 30);
-- "스티븐 킹", 40살 추가
insert INTO persons (name, age) values ("스티븐 킹", 40);
-- "철수", 20살
-- "철수", 30살
-- "철수", 40살
insert INTO persons (name, age) values ('철수', 20), ('철수', 30), ('철수', 40); -- 여러줄 한 번에 추가

DELETE FROM persons; -- Tables 전체 행 삭제 : DELETE FROM (테이블명);

DROP TABLE persons; -- Tables 삭제 : DROP TABLE (테이블명);

-- 책 테이블
-- 제목 : 문자열
-- 가격 : 정수

CREATE TABLE books (
	title VARCHAR(25), -- 등록하는 data의 title 칼럼이 글자수를 초과하면 실행 불가
    price INT
);

insert INTO books (title, price) values ("파워자바", 25000), ("하늘과 바람과 별과 시", 15000), ("꽃을 보듯 너를 본다", 12000);

SELECT * FROM books;



-- SQL에서의 문자열 타입
-- CHAR(5) -- CHAR는 고정된 길이값을 가지고 있음 | 고정된 길이값보다 적을 경우는 공백이 발생함
-- VARCHAR(5) -- VARCHAR는 길이값을 원하는대로 설정할 수 있음 | 고정된 길이값보다 적어도 공백 발생 없음

CREATE TABLE testChar (
	fixLength CHAR(5)
    , varLength VARCHAR(5)
);

INSERT INTO testChar(fixLength, varLength) VALUES ("A", "A");

select char_length(fixLength), char_length(varLength) from testChar;

-- SELECT RTRIM("A                                 "); << 오른쪽 공백 제거
-- SELECT LTRIM("                                 A"); << 왼쪽 공백 제거





