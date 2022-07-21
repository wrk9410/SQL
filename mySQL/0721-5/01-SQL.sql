SELECT * FROM new_view
WHERE employee_id = 100;

SELECT COUNT(*) FROM new_view; -- Views: SELECT문을 줄이는, 보는 목적으로 생성

SELECT * FROM new_view A
LEFT JOIN locations B ON A.LOCATION_ID = B.LOCATION_ID;

