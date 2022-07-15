SELECT * FROM my_db.pktest;

INSERT INTO pktest (myCol1, myCol2) VALUE ('1', '1');
INSERT INTO pktest (myCol1, myCol2) VALUE ('1', '2');
INSERT INTO pktest (myCol1, myCol2) VALUE ('2', '2');
INSERT INTO pktest (myCol1, myCol2) VALUE ('1', '1'); -- 중복값은 들어가지지 않아 불가

