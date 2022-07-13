select * from country;

-- 인구가 가장 많은 1개의 국가 조회하기
select * from
country order by Population DESC
LIMIT 1; /*LIMIT (제한개수): 개수로만 제한을 두고 싶을 경우*/

-- 면적 순 탑 5
select * from country
order by SurfaceArea DESC
LIMIT 5;

-- Continent가 "Asia"인 국가들 중 면적이 좁은 순으로 10개 국가
select * from country
where Continent = "Asia"
order by SurfaceArea ASC
LIMIT 10;

-- Region이 "~Africa"로 끝나는 국가들 중 독립년도(IndepYear)가 가장 최근인 10개 국가
select * from country
where Region like "%Africa"
order by IndepYear DESC
LIMIT 10;

-- 면적당 인구비율(SurfaceArea / Population) 최상위 10개 국가 조회
select *, Population / SurfaceArea as "인구밀도" from country
order by Population / SurfaceArea DESC
limit 10;

-- (GNPOld - GNP) 변화량 최상위 10개 국가
select * , GNPOld - GNP as "GNP 변화량" from country
order by GNPOld - GNP DESC
limit 10;