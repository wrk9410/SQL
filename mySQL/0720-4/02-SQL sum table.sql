SELECT 1, 2, 3
UNION -- 테이블들끼리의 합이 가능, 중복값은 저장이 되지않음
SELECT 4, 5, 6
UNION
SELECT 7, 8, 9
UNION ALL -- 중복값 상관없이 적용 가능
SELECT 1, 2, 3;