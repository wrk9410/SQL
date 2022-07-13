select * from country;
-- select * from country limit 1 OFFSET 2/*OFFSET (원하는 행): 원하는 행만큼 건너뛸 수 있음*/;
-- select * from country limit 2, 1(OFFSET 숫자);

-- page 나누기(페이징)
select * from country limit 10 offset 0;
select * from country limit 10 offset 10; 
select * from country limit 10 offset 20;