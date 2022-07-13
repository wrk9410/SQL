DROP DATABASE my_db;

CREATE DATABASE my_db;

USE my_db;

create TABLE students (
	number INT PRIMARY KEY -- (key명) (keytype) PRIMARY KEY AUTO_INNREMENT
    -- PRIMARY KEY(주요 키): 고유한 값인 key로 쓰기 위해 따로 설정하는 것
    -- P.K의 특징
-- 		- null 값을 허용하지 않음(NOT NULL)
-- 		- key 값이 고유하기에 중복이 불가함
-- 		- TABLE을 만들 경우는 P.K가 필수(특별한 상황 제외)
	, name VARCHAR(10)
    , age int
    , score DOUBLE
);

DESC students;

insert into students (number, name, age, score) values (1234, '길동', 20, 3.3);
insert into students (number, name, age, score) values (1235, '둘리', 30, 4.4);
insert into students (number, name, age, score) values (1236, '길동', 20, 3.3);

select * from students;