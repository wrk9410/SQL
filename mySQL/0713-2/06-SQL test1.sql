-- restaurants
-- name " VARCHAR(15)
-- phoneNumber : VARCHAR(14)
-- address : VARCHAR(100)

create TABLE restaurants (
	Id INT primary key auto_increment
    , name varchar(15) NOT NULL
    , phoneNumber varchar(14) NOT NULL UNIQUE
    , adress varchar(100) NOT NULL UNIQUE
);

desc restaurants;

insert into restaurants (name, phoneNumber, adress) Values
	("달리는 커피","051-809-3389","부산광역시 부산진구 서전로 20"), ("멘즈키", "051-914-1853", "부산 부산진구 동성로 49번길 34 우측호")
    , ("소인수분해","0507-1318-2177","부산 부산진구 전포동 662-13");

select * from restaurants;


-- 메뉴 정보 테이블
-- 음식명
-- 가격

create table menus (
	menuID INT primary key auto_increment
    , foodname varchar(20) NOT NULL
    , price int NOT NULL
);
insert into menus (foodname, price) values
	("달커스페셜 샌드위치", 7500), ("[BEST]햄치즈 샌드위치", 5900), ("케이준 샌드위치", 6500), ("핫치킨 샌드위치", 6900);
select * from menus;

ALTER TABLE menus ADD COLUMN restId INT; -- ALTER TABLE (테이블명) : 테이블 구조 변경 명령어 | ADD COLUMN : 컬럼 추가 명령어

UPDATE menus -- UPDATE (테이블명)  : 하나의 열의 값을 수정하는 명령어
SET restId = 2
WHERE menuId <> 1; -- SET (칼럼명) = (변경값) WHERE (칼럼명) (조건식) (조건이 true일 경우 수정할 값)
-- restID = freign key(외래키) : 다른 테이블의 키를 참조하는 키

ALTER TABLE menus ADD CONSTRAINT foreign key (restID) REFERENCES restaurants (id);
-- ADD CONSTRAINT foreign key (참조받을 키 이름) REFERENCES (테이블명) (참조할 키 이름): 외래키 만들 때 사용





/*create TABLE dalcu (
	menuID INT primary key auto_increment
    , foodname varchar(20)
    , price int
);
insert into dalcu (foodname, price) values
	("달커스페셜 샌드위치", 7500), ("[BEST]햄치즈 샌드위치", 5900), ("케이준 샌드위치", 6500), ("핫치킨 샌드위치", 6900);
select * from dalcu;


create TABLE menzuki (
	menuID INT primary key auto_increment
    , foodname varchar(20)
    , price int
);
insert into menzuki (foodname, price) values
	("츠케맨", 8500), ("미소츠케맨", 9000), ("조각차슈추가", 2000), ("계란추가", 1000), ("한모금맥주", 1000);
select * from menzuki;


create TABLE soinsu (
	menuID INT primary key auto_increment
    , foodname varchar(20)
    , price int
);
insert into soinsu (foodname, price) values
	("곱창모듬구이 국내산200g", 16000), ("곱창전골국내산(2인분이상주문가능)", 14000), ("육회추가(추가는 양이 더많음)", 5000);
select * from soinsu;*/
