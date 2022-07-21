SELECT * FROM menus AS A -- menus = A (기준)
RIGHT JOIN restaurants AS B -- restaurants = B
ON A.restID = B.id; -- 조건식

SELECT * FROM restaurants AS A
LEFT OUTER JOIN menus AS B ON A.id = B.restID;

SELECT * FROM restaurants AS A
INNER JOIN menus AS B ON A.id = B.restID;