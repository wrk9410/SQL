-- hr 데이터 베이스 사용하기 명령어 작성
USE hr;

-- hr 데이터 베이스의 테이블 목록 보기
SHOW TABLES;

-- employees(직원) 테이블의 구조를 조회해보세요.
DESC hr.employees;

-- employees(직원) 테이블의 모든 행의 모든 열을 조회해보세요.
select * from employees;

-- 직원 테이블의 First_Name(이름) 열의 값이 "John"인 직원 조회
select * from employees where FIRST_NAME = "John";

-- 직원 테이블의 Last_Name(성) 열의 값이 'John을 포함하는 값'인 직원 조회
select * from employees where LAST_NAME LIKE "%John%";

-- 직원 테이블의 First_Name(이름) 열의 값이 6글자인 직원 조회
select * from employees where FIRST_NAME LIKE "______";
SELECT * FROM employees WHERE char_length(First_Name) = 6; /* char_length(기준 컬럼) = (보고싶은 글자 수) */

-- 직원 테이블 Salary(연봉) 열의 값이 10000 ~ 15000인 직원 조회
select * from employees where SALARY between 10000 AND 15000;

-- 직원  테이블의 이름, 성, 연봉 컬럼과 연봉의 6%를 연산하여 'tax'라는 별명의 컬럼으로 조회하세요.
select FIRST_NAME as "이름", Last_Name as "성", Salary as "연봉", ROUND(Salary * 0.06, 2) as "tax" from hr.employees;
/* round([연산식], [소수점 갯수]) */
