-- 집계 함수
select * FROM employees;

select COUNT(*) from employees; -- COUNT(갯수를 세고자하는 컬럼명), 주로 해당 칼럼의 모든 행의 갯수 확인(*)에 쓰임 | employees의 갯수

-- 전화번호가 515~~로 시작하는 직원을 조회하는 쿼리문
select * from employees where PHONE_NUMBER LIKE ("515%");
-- 전화번호가 515~~로 시작하는 직원의 수를 조회하는 쿼리문
select COUNT(*) from employees where PHONE_NUMBER LIKE ("515%");

-- 합
select SUM(SALARY) from employees; -- SUM(더 하고자하는 컬럼명) | (더 하고자하는 컬럼명)의 총 합
-- 평균
select avg(SALARY) from employees; -- AVG(평균을 구하고자하는 컬럼명) | (평균을 구하고자하는 컬럼명)의 평균
-- 최대
select MAX(SALARY) from employees; -- MAX(최대값 확인을 원하는 컬럼명) 
-- 최소
select MIN(SALARY) from employees; -- MIN(최솟값 확인을 원하는 컬럼명)

-- 최대 연봉과 최소 연봉의 차를 구해봅시다.
select MAX(SALARY) - MIN(SALARY) from employees;

