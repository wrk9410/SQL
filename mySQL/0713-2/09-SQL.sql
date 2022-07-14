USE hr;

-- 각 직원들의 이름과 연봉, 평균연봉과의 차(평균연봉 - 연봉)를 조회해보세요.
select AVG(SALARY) from employees; -- 평균 연봉

select SALARY from employees; -- 직원별 연봉

select first_name as "이름", Salary as "연봉",(select AVG(SALARY) from employees) as "평균연봉", SALARY - (select AVG(SALARY) from employees) as "평균연봉과의 차" from employees
order by `평균연봉과의 차` desc;

-- 최고 연봉직원과 최저 연봉직원들의 이름을 조회해보세요
select first_name, SALARY from employees where SALARY in ((select MAX(salary) from employees), (select MIN(salary) from employees)); -- 직원 이름만 조회

-- 평균 연봉보다 높게 받는 직원 조회
select * from employees WHERE Salary > (select AVG(SALARY) from employees);

-- 부서명이 IT로 시작하는 직원들의 수(카운트)를 조회해보세요.
select DEPARTMENT_ID from departments WHERE DEPARTMENT_NAME LIKE ("IT%"); -- IT로 시작하는 부서명들의 부서ID

select COUNT(*) from employees WHERE DEPARTMENT_ID IN (select DEPARTMENT_ID from departments WHERE DEPARTMENT_NAME LIKE ("IT%"));

-- Douglas Grant의 이메일을 'dog@naver.com'으로 변경해보세요.
select * from employees WHERE FIRST_NAME = "Douglas" AND LAST_NAME = "Grant";

UPDATE employees SET EMAIL = "dog@naver.com" WHERE FIRST_NAME = "Douglas" AND LAST_NAME = "Grant";

-- Ellen Abel과 같은 부서에서 근무하는 직원을 연봉 내림차순으로 정렬해서 조회
select * from employees WHERE FIRST_NAME = "Ellen" AND LAST_NAME = "Abel";

select * from employees
where DEPARTMENT_ID = (select DEPARTMENT_ID from employees WHERE FIRST_NAME = "Ellen" AND LAST_NAME = "Abel")
order by SALARY desc;

-- 부서명이 IT로 시작하는 부서에서 근무하는 최고연봉자보다 높은 연봉을 받는 직원 목록을 연봉 오름차순으로 조회
select * from employees where SALARY > (
select SALARY from employees
WHERE DEPARTMENT_ID
IN (select DEPARTMENT_ID from departments WHERE DEPARTMENT_NAME LIKE ("IT%")) limit 1)
order by SALARY ASC;

select * from employees where SALARY > (
select MAX(SALARY) from employees
WHERE DEPARTMENT_ID
IN (select DEPARTMENT_ID from departments WHERE DEPARTMENT_NAME LIKE ("IT%")))
order by SALARY ASC;

-- 각자 자기가 속한 부서의 평균보다 많이 받는 직원
select * from departments;
select COUNT(*) from employees WHERE DEPARTMENT_ID = 30;
select * from employees WHERE DEPARTMENT_ID IN (select DEPARTMENT_ID from employees);

