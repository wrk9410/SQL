select * from country where Name IN ("South Korea","Japan","China");
/*여러 개의 값을 확인하기 위해서는 IN (확인할 값) | 하나라도 맞을 경우 true*/
/*NOT IN (제외할 값)*/

select * from country where Population between 40000000 AND 50000000;
/*범위 확인은 BETWEEN (최소값) AND (최대값)*/

-- Continent 컬럼 값이 North America, Europe, Asia를 제외한 국가들 중
-- GNP 값이 100 ~ 1000 사이인 국가 목록 조회하기
select * from country where 
Continent not in ("North America", "Europe", "Asia")
AND GNP between 100 and 1000;

-- 국가들 중에 독립연도가 null인 행만 조회
select * from country where IndepYear IS null;
/*null로 (산술,비교 등 모든)연산자 확인 시 결과가 나오지않음*/
/*null을 연산자에 사용하기 위해서는 IS를 붙혀야됨, 부정은 IS NOT*/




