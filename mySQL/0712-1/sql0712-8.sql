-- 세션(Session) 변수(Variable)
SET @myVar := 10;

SELECT @myVar * 10 + 5; /* 연결이 끊기면(로그아웃) 변수도 사라짐 | 연결이 되어있을 때까지는 계속 유지 */