-- 실행 : ctrl + Enter
-- 한 줄 실행 : ctrl + shift + Enter
SHOW DATABASES; /*대-소문자 가리지 않음*/

USE world;

SHOW tables;
select 3 % 2; /*산술연산가능*/

select "Hello World" /*+ "concat??"*/; /*문자열 합연산불가*/

select 10 <= 11; /*SQL에서의 관계연산자는 true = 1, false = 0 | != 도 되지만 <>를 주로 사용*/
