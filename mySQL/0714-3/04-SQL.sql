USE HR;
USE WORLD;
-- LifeExpectancy가 NULL일 경우 0.0으로 설정
SELECT Name
	, CASE WHEN LifeExpectancy IS NULL THEN 0.0
		ELSE LifeExpectancy
        END AS LIFE
FROM country;

-- 직원 이름(이름 + 성) 결합시킨 full Name 컬럼
SELECT CONCAT(LAST_NAME," ",FIRST_NAME) AS 'full Name' FROM employees;

-- 전화번호가 011로 시작하는 경우 '개인전화', 그 외의 경우 '내선 번호', 별명은 '분류' 조회
SELECT CONCAT(LAST_NAME," ",FIRST_NAME) AS 'full Name', PHONE_NUMBER
	, CASE WHEN PHONE_NUMBER LIKE '011%' THEN '개인전화' -- 조건이 참일 경우 실행
    ELSE '내선 번호' -- 조건이 거짓일 경우 실행
    END AS '분류'
FROM employees;

--

SELECT CASE WHEN 10 > 5 THEN '왼쪽이 오른쪽보다 큽니다'
			ELSE '왼쪽이 오른쪽보다 작거나 같습니다'
			END;
-- CASE WHEN (조건식) THEN (참일 경우 실행) ELSE (거짓일 경우 실행) END<어디서 끝났는지 알려주어야 함>;

SELECT CASE WHEN 10 > 5 THEN "왼쪽"
			WHEN 10 = 5 THEN "같음"
			WHEN 10 < 5 THEN "오른쪽"
            END AS '비교';

--            

SELECT IFNULL(NULL, '대체값'); -- IFNULL(왼쪽, 오른쪽): 왼쪽의 값이 NULL일 경우 오른쪽 값으로 대체

-- 값이 3개. 1번째 값이 NULL이면 2번째값, 2번째 값도 널이면 3번째 값
SELECT IFNULL(IFNULL("첫번째 값", "두번째 값"), "세번째 값");
SELECT COALESCE("첫번째 값", "두번째 값", "세번째 값"); -- 위 아래의 2개 동일함

SELECT NULLIF('A', 'B'); -- NULLIF: 2개가 같으면 NULL, 다르면 첫번째 값















