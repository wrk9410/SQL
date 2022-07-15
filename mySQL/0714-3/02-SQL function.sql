select * FROM employees;

select RTRIM('a        '); -- 우측 공백 삭제
select LTRIM('    a    '); -- 좌측 공백 삭제
select  TRIM('    a    '); -- 모든 공백 삭제

SELECT LOWER('ABCDE');
SELECT UPPER('abcde');

SELECT REVERSE('qwer');

SELECT CONCAT('문자열', '결합', '함수');
SELECT CONCAT("결합", NULL,"값이 있으면?"); -- CONCAT에서 더 하는 문자열에 NULL이 있을 경우 NULL 출력

SELECT CHAR_LENGTH('문자열길이');

SELECT REPLACE('원본 문자열에서 변환합니다.', '변환','REPLACE'); -- (변경할 문자열), (변경할 단어), (변경될 단어)
SELECT REPLACE(1234, '1', '5'); -- 정수를 넣더라도 문자열로 변경됨

SELECT SUBSTRING('employees', 5); -- 문자열, 자를 위치
SELECT SUBSTRING('employees', 5, 2); -- 문자열, 자를 위치, 개수
SELECT SUBSTRING('employees', -3); -- 음수일 때 우측에서부터 출력
SELECT SUBSTRING('employees', -5, 2); --

SELECT LPAD("123", 5, "0"); -- (기준 문자열), (만들 길이), (우측부터 빈 칸에 채울 것)
SELECT RPAD("456", 5, "*"); -- 위와 똑같지만 좌측부터 빈 칸 채움
SELECT REPEAT("반복결합", 3); -- (반복할 문자열), (반복횟수)

SELECT LOCATE('D', 'ABCDEFG'); -- (찾는 문자열), (찾을 기준 문자열)
SELECT LOCATE('위치', '문자열의 위치를 찾는 SQL의 문자 순서는 1부터임'); -- 문자열이 길 경우 시작지점을 찾아줌
SELECT LOCATE('A','ABABAB',2); -- 2번째,로 어디부터 찾기 시작할지 설정 가능
-- "515.123.4567"
-- .을 기준으로 각각 잘라보셈
SELECT LOCATE (".","515.123.4567");
SELECT SUBSTRING("515.123.4567", (SELECT LOCATE (".","515.123.4567")));

SELECT SUBSTRING("515.123.4567", 1, 3);
SELECT SUBSTRING("515.123.4567", 5, 3);
SELECT SUBSTRING("515.123.4567", -4, 4);


-- 직원 테이블 전화번호 앞자리 3자리로 그룹별 개수 확인
SELECT SUBSTRING(PHONE_NUMBER, 1, 3), COUNT(*) FROM employees
group by SUBSTRING(PHONE_NUMBER, 1, 3);

--
SELECT RAND(); -- 0 ~ 1.0까지의 랜덤 수
SELECT ROUND(123.123, 2); -- (기준 소수점), (노출할 소수점 개수)
SELECT FLOOR(1.555); -- 소수점 없애기(음수일 경우 1자리 수가 1커짐)
SELECT CEIL(1.222); -- 소수점 있을 경우 반올림(음수일 경우 소수점 삭제)

SELECT ABS(-55); -- 절대값?
SELECT POW(2, 8); -- (제곱기준), (제곱숫자)

SELECT PI(); -- 원주율

-- 주사위 1 ~ 6 사이의 난수(정수) 생성
SELECT CEIL(RAND() * 6);
