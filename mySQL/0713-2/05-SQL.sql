CREATE TABLE persons (
	personId INT primary key auto_increment
	, firstName varchar(10) NOT NULL -- NOT NULL : 무조건적으로 적어야 되는 것들에 설정
    , lastName varchar(10) NOT NULL
    , age INT NOT NULL
    , email varchar(50) NOT NULL UNIQUE -- UNIQUE : 중복안되게 설정하는 것
);

insert into persons (firstName, lastName, age, email)
	Values ("길동", "홍", 20, "길동@길동.net");
    
insert into persons (firstName, lastName, age, email)
	Values ("길동", "고", 42, "kildong@길동.net");

select * from persons;


-- 테이블 이름
-- 각 열 (이름, 타입, 제약)
-- key 열을 하나 이상
