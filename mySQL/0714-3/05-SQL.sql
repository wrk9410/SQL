USE MY_DB;

DESC books;

ALTER TABLE books CHANGE COLUMN title title VARCHAR(30) NOT NULL; -- CHANGE COLUMN (컬럼명) (변수명 자료형): 컬럼 수정

insert into books (title) values ('디폴트값확인');

select * from books;

create TABLE myPractice

