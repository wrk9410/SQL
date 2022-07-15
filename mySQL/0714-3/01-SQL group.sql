use hr;

-- 부서별(그룹) 직원들의 인원 수
select DEPARTMENT_ID, COUNT(*) FROM employees
	GROUP BY DEPARTMENT_ID; -- GROUP BY (기준컬럼): (기준컬럼)을 기준으로 새로운 그룹을 만들어서 출력
    
-- 부서별 최고 연봉, 최저 연봉, 평균 연봉, 연봉 합

select DEPARTMENT_ID, max(SALARY), min(SALARY), avg(SALARY), sum(SALARY)
from employees
group by DEPARTMENT_ID;

select JOB_ID, LAST_NAME FROM employees GROUP BY JOB_ID;
-- GROUP BY로 중복 제거도 가능
SELECT DISTINCT JOB_ID, LAST_NAME FROM employees;
-- DISTINCT도 중복 제거 가능

-- GROUP BY와 DISTINCT의 차이점
--  1.GROUP BY: 기준 컬럼을 1개씩만 남기고 나머지는 삭제
-- 	2.DISTINCT: 기준 컬럼의 갯수만 세고 삭제하지않음

-- 직원 테이블 LAST_NAME을 중복 제거하고 조회
select distinct LAST_NAME FROM employees;

-- 직원 테이블 LAST_NAME 그룹 별로 인원 수 조회
select LAST_NAME, COUNT(*) FROM employees group by LAST_NAME;

-- 같은 LAST_NAME 그룹의 카운터가 2이상 그룹들만 조회
select LAST_NAME, COUNT(*)
FROM employees
group by LAST_NAME /*WHERE LAST_NAME*/; -- 그룹은 WHERE이 불가 > GROUP BY 사용

select LAST_NAME, COUNT(*)
FROM employees
group by LAST_NAME
having COUNT(*) > 1; -- 그룹에서는 WHERE 대신 HAVING 사용

-- 위의 성을 가지는 직원 목록 조회
select * FROM employees WHERE LAST_NAME
IN ( select LAST_NAME FROM employees
group by LAST_NAME
having COUNT(*) > 1);

-- 5번째로 적게 받는 직원들 목록
SELECT SALARY FROM employees group by SALARY ORDER BY SALARY limit 5;
select * FROM employees WHERE SALARY = ( SELECT MAX(SALARY) FROM employees group by SALARY ORDER BY SALARY limit 5);

select * FROM employees
WHERE SALARY = (select distinct SALARY FROM employees order by SALARY limit 1 OFFSET 4);

-- 상위 연봉 50명(같은 연봉에 대해서는 FIRST_NAME이 ASC)에 대해서 부서별로 몇 명씩 있는지
select * FROM employees order by SALARY DESC limit 50;
select DEPARTMENT_ID FROM employees WHERE DEPARTMENT_ID IN (select * FROM employees order by SALARY DESC limit 50) group by DEPARTMENT_ID;

select DEPARTMENT_ID, COUNT(*) FROM
(select * FROM employees order by SALARY DESC, FRIST_NAME ASC limit 50) group by DEPARTMENT_ID;












