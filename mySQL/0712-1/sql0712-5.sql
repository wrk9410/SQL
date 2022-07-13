select * from country
where Name LIKE/* (칼럼) LIKE (%포함기준%)*/ "%Korea%";

select * from country
where name Like "%k%";

select * from country
where name Like "%k";

select * from country
where name Like "k%";
/*%(기준 끝) : (기준)으로 끝나는 것, (기준 시작)% : (기준)으로 시작하는 것*/

-- 국가명이 'A'로 시작하고 'A'로 끝나는 국가 조회
select * from country
where name like "A%A";

-- 국가명이 'A'로 시작하고 'A'로 끝나며 6자인 국가 조회
select * from country
where name like "A____A" /*글자 길이 : 기준단어와 _의 총 개수*/;

-- 국가명이 ~ria로 끝나는 국가 조회
select * from country
where name like "%ria";

-- Region 컬럼이 North로 시작하는 국가 조회
select * from country
where Region like "North%";

-- Region 컬럼에 A로 시작해서 a로 끝나는 명칭을 포함하지 않는 국가
select * from country
where Region not like "%A%a" && Region not like "a%a%";
