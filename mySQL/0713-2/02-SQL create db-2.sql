-- 학생
-- 이름 : 가변길이문자열(10자)
-- 학점 : 실수

create table students (
	name VARCHAR(10)
    , age BIGINT
    , score double
);

insert into students (name, age, score) values ("길동", 20, 3.3);
insert into students (name, age, score) values ("둘리", 20.5, 3); -- INT에 Double이 들어갈 경우 반올림함
insert into students (name, age, score) values ("길동", 21, 2.6);

select * from students;

DELETE FROM students WHERE name = '둘리'; -- 둘리를 삭제




