select Code AS "코드", Name AS "이름", Population AS "인구" from country;
/*(칼럼) AS "별명" : 칼럼(행)의 이름을 바꿔서 출력 시켜줌*/

-- 위의 조회 + SurfaceArea(별명 면적) 칼럼을 추가로 조회
select Code AS "코드", Name AS "이름", Population AS "인구",SurfaceArea AS "면적" from country;
/*적은 순서대로 별명 설정 후 출력 시킴*/

-- SurfaceArea가 50,000이하이면서 Population이 10,000,000 이상인 국가의 인구밀도를 조회하세요.
select Code AS "코드", Name AS "이름", Population AS "인구",SurfaceArea AS "면적"
	, ROUND(Population / SurfaceArea, 1) AS "인구밀도" /*ROUND (값, 반올림 할 자리수)*/
from country
where SurfaceArea <= 50000 AND Population >= 10000000;

-- 인구 밀도 조회
select Code AS "코드", Name AS "이름", Population AS "인구",SurfaceArea AS "면적"
	, ROUND(Population / SurfaceArea, 1) AS "인구밀도" /*ROUND (값, 반올림 할 자리수)*/
from country
ORDER BY 인구밀도/*select가 끝나서 별명으로도 가능*/ DESC /*ASC: 오름차순 정렬(기본값이기에 생략가능) */
/*ORDER BY (칼럼(행)) : 칼럼 기준의 오름차순으로 정렬출력 | 별명이 있을 경우 별명으로도 가능*/;

-- 아시아 대륙 국가들의 인구순으로(내림차순) 조회
select *
	from country
	where Continent = "Asia"
	order by Population DESC;
    
-- LifeExpectancy 오름차순으로 조회

select *
	from country
    where LifeExpectancy is not null
    order by LifeExpectancy; /*NULL의 경우 오름차순일 때는 가장 상단에 올라옴*/
    
-- 국가의 이름과 인구와 GNP, GNPOld 조회 후 (GNPOld - GNP 차이를 구하여 "변화량") 조회

select Name as "이름", Population as "인구", GNP, GNPOld, GNP - GNPOld as "GNP 변화량"
	from country
    where GNP is not NULL AND GNPOld is not NULL
    order by `GNP 변화량`/*칼럼, 객체명 등 별명에 띄어쓰기가 있을 경우 `(~)을 사용하여 해결*/ DESC;
    
-- 대륙 순으로 정렬해서 조회
select * from country order by Continent, Population;
/*두 가지 이상의 정렬 기준을 위해서는 order by (기준1), (기준2)과 같이 설정 가능*/

-- GovernmentForm 오름차순, GNP 내림차순 정렬 조회
select * from country order by GovernmentForm ASC, GNP DESC;
    



