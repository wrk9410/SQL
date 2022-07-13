USE hr;

-- hr 부서(departments) 테이블 모든 행과 열 조회
select * from departments;

-- 부서명이 'IT%'로 시작하는 부서들 조회
select * from departments where department_Name LIKE 'IT%';

-- 60, 210, 230
-- 직원 테이블
select * from employees where department_ID IN 
		(select DEPARTMENT_ID from departments where department_Name LIKE 'IT%');
        -- Sub Querry : 쿼리 안에 들어간 쿼리 | Querry = 실행하는 한 줄의 명령어


-- 연봉 내림차순 정렬.
-- 연봉 상위 10명을 오름차순으로 조회
select * from ( -- (2).상위 10명 내림차순을 하나의 테이블로 지정
	select * from employees order by SALARY desc limit 10 -- (1).상위 10명을 내림차순으로 서브쿼리했음
) AS A -- (3).상위 10명 내림차순 테이블의 별명을 지정
order by SALARY ASC; -- (4).상위 10명 내림차순 테이블을 오름차순으로 정렬


-- David Austin의 연봉과 같은 연봉을 받는 직원들 조회
SELECT * FROM employees WHERE FIRST_NAME = 'David' AND LAST_NAME = 'Austin';

SELECT * FROM employees WHERE SALARY = (
	SELECT SALARY FROM employees WHERE FIRST_NAME = 'David' AND LAST_NAME = 'Austin'
);

        
        
        
        
        
        
        