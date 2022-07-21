/*
	부서 -- (employees.department_id -참-조-> departments.department_id)
    직책 -- (employees.job_id -참-조-> job.job_id)
    매니저 -- (departments.MANAGER_ID -참-조-> employees.employee_id)

	1. 모든 부서의 부서명과 관리자의 이름 조회
    2. 부서명이 IT로 시작하는 부서에서 근무하는 직원들의 이름과 부서명 조회
    3. 모든 직원들의 이름과 직책(JOB_TITLE) 조회
    4. 직원의 해당 직책의 jobs테이블에 책정된 최대 연봉(MAX_SALARY) 이상의 연봉을 받는 직원이름, 현재연봉, 최대연봉 조회
    5. 부서의 (COUNTRY_ID)가 'US'인 부서에서 근무하는 직원명과 부서명 조회
*/
USE hr;

SELECT * from employees;
SELECT * from jobs;
SELECT * from departments;
SELECT * from countries;
SELECT * from LOCATIONS;

-- 1. 모든 부서의 부서명과 관리자의 이름 조회
SELECT first_name, last_name from employees
WHERE employee_id in (SELECT manager_id from departments);

SELECT department_name, CONCAT(First_name, ' ', last_name) AS Manager_name
from employees AS A
INNER JOIN departments AS B -- INNER: 붙을 게 있는 것들만 출력시킴(NULL 미출력)
ON A.employee_id = B.manager_id;

-- 2. 부서명이 IT로 시작하는 부서에서 근무하는 직원들의 이름과 부서명 조회
SELECT CONCAT(First_name, ' ', Last_name) AS Full_name, department_name
from employees AS A
INNER JOIN departments AS B
ON A.department_id = B.department_id -- ON: 둘을 어떻게 붙힐 것인지에 대한 조건
WHERE department_name LIKE "IT%";

-- 3. 모든 직원들의 이름과 직책(JOB_TITLE) 조회
SELECT CONCAT(First_name, ' ', last_name) AS Full_name, Job_title from employees AS A
INNER JOIN jobs AS B
ON A.job_id = B.job_id;

-- 4. 직원의 해당 직책의 jobs테이블에 책정된 최대 연봉(MAX_SALARY) 이상의 연봉을 받는 직원이름, 현재연봉, 최대연봉 조회
SELECT CONCAT(First_name, ' ', last_name) AS Full_name, SALARY, MAX_SALARY from employees AS A
INNER JOIN jobs AS B
ON A.job_id = B.job_id AND A.salary >= B.MAX_SALARY;

-- 5. 부서의 (COUNTRY_ID)가 'US'인 부서에서 근무하는 직원명과 부서명 조회
SELECT * FROM locations A
LEFT JOIN departments B ON A.LOCATION_ID = B.LOCATION_ID
LEFT JOIN employees C ON B.Department_ID = C.Department_ID
WHERE COUNTRY_ID = 'US';


