CREATE TABLE books (
	bookId INT primary key auto_increment -- auto_increment: 키 값을 자동 생성해주는 명령어(증가만 하며, 감소는 안함)
	, title VARCHAR(30)
    , price INT
);

DESC books;

insert into books (title, price) value
	("책1", 2000), ("책2", 3000), ("중복이름", 2500), ("중복이름", 3000);

select * from books;

insert into books (title, price) values ("새로운 이름", 3500);







