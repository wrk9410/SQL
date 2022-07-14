SELECT * FROM employees;

DESC employees;

-- MySQL 날짜 : DATE
-- 시간 : TIME
-- 날짜 시간 : DATETIME / TIMESTAMP

SELECT CURRENT_DATE();
SELECT CURRENT_TIME();
SELECT CURRENT_TIMESTAMP();

SELECT DATE '2022-07-14';
SELECT TIME '12:05:33';

-- HIRE_DATE가 1987년 6월
SELECT * FROM employees
WHERE HIRE_DATE BETWEEN '1987/06/01' AND '1987/06/30';

SELECT ADDDATE('1987-06-01', 40); -- 날짜 합연산 함수 | (기준날짜, 더할 날짜)
SELECT SUBDATE('1987-06-01', 1); -- 날짜 빼기 함수 | (기준날짜, 뺄 날짜)
SELECT DATE_ADD('1987-06-01', INTERVAL 40 DAY); -- 날짜 간격 함수 | (기준날짜, INTERVAL 확인할간격 DAY)
SELECT DATE_SUB('1987-06-01', INTERVAL 1 MONTH); -- 날짜 간격 함수(이전 날짜)
SELECT '1987-06-01' + INTERVAL 1 YEAR; -- INTERVAL 사용 시 날짜 합연산 가능
SELECT '1987-06-01' + INTERVAL 1 DAY; -- 정수형태로만 넣지 않으면 됨
SELECT '1987-06-01' + '40'; -- #문자열로 더할 시 연도만 빠져나와서 더함

SELECT DAYOFWEEK('2022-07-14'); -- 요일확인 | 일요일: 1, 월요일: 2 ... 토요일: 7

SELECT EXTRACT(YEAR FROM '2022-07-14'); -- EXTRACT: 년도, 월, 일만 빼오기
SELECT EXTRACT(MONTH FROM '2022-07-14');
SELECT EXTRACT(DAY FROM '2022-07-14');

SELECT DATEDIFF('2022-06-13', '2022-06-01'); -- 2 날짜 간의 간격 구하는 함수 | 1날짜 - 2날짜

SELECT STR_TO_DATE('2021-06-13', "%Y-%m-%d"); -- 문자열 > DATE | (문/자/열, %Y/%m/%d) 구별하는 특수문자도 똑같이 해야됨
SELECT DATE_FORMAT(DATE '2021-06-13', '%Y-%m-%d'); -- DATE > 문자열 | (DATE, %Y-%M-%D) 대소문자로 표현이 달라짐

-- 17일에 고용된 직원 목록
SELECT * FROM employees
WHERE EXTRACT(DAY FROM HIRE_DATE) = 17;

SELECT * FROM employees
WHERE HIRE_DATE LIKE '%-17';

-- job_history 각 행별로 일한 기간(일) 조회
SELECT * FROM job_history;

SELECT START_DATE, END_DATE, DATEDIFF(END_DATE, START_DATE) AS "기간"  FROM job_history;

-- 자료형 숫자, 문자열, 날짜 형변환
SELECT CAST(59 AS TIME);
SELECT CAST('10' AS DOUBLE) + 5.5;

SELECT CONVERT(10, TIME);
SELECT CONVERT('10', DOUBLE) + 5.5;




