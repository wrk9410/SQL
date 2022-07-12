select * from country; /* * = 보고싶은 행, country = 무엇을 볼 것인지 | 전부 다 볼 때는 * */

select * from city;

select 
Name,Population 
from country; /*문장의 끝을 ;으로 지정하기에 여러줄로 나누어져도 상관없음*/

desc country; /*desc: 테이블의 구조 확인*/

-- country 테이블 Code열과 GNP열을 조회해보세요
select Code, GNP from country; /*Code,GNP = 열(가로), country = 행(세로)*/

select * from country where Name = "South Korea"; /*특정한 값을 가지는 행만을 볼 때?*/

-- 국가명이 'Japan' 조회
select * from country where Name = "Japan";
-- 국가명이 'China' 조회
select * from country where Name = "China";



-- Continent 값이 "Asia"인 행 조회하기
select * from country where Continent = "Asia";



select * from country where Name = "South Korea" OR Name = "Japan" OR Name = "China";
-- SQL에서의 ||는 OR문자로 씀. (MySQL은 둘 다 가능)

-- Population(인구) 컬럼 값이 40,000,000 이상인 국가를 조회
select * from country where Population >= 40000000;
--  Population(인구) 컬럼 값이 40,000,000 이상이고 50,000,000 이하인 국가를 조회
select * from country where Population >= 40000000 AND Population <= 50000000;

-- Continent "Asia"를 제외한 국가 목록 조회
select * from country where Continent <> "Asia";