-- SELECT CONCAT("asdf", "zzz"); -- CONCAT: 문자열 합하는 함수
SELECT hello("니이름");

CALL usp_countBooks;

CALL usp_findbytitle('책1', @count); -- @count: 세션변수 만듬 > 만든 세션변수에 값을 집어넣음

SELECT @count; -- 값을 넣은 세션변수를 출력

CALL usp_selectTable('persons');

CALL usp_loop(10);


