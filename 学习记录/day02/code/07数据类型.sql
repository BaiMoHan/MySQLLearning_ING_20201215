CREATE TABLE tab_int (t1 INT) ;

DESC tab_int;

INSERT INTO tab_int 
VALUES
  (- 123456) ;

DROP TABLE IF EXISTS tab_int;

CREATE TABLE tab_int (t1 INT, t2 INT UNSIGNED) ;


INSERT INTO tab_int 
VALUES
  (- 123456, - 123456) ;
 
INSERT INTO tab_int 
VALUES
  (2147483648, 4294967296) ;


SELECT 
  * 
FROM
  tab_int ;
  

CREATE TABLE tab_int (
  t1 INT (7) ZEROFILL,
  t2 INT (7) ZEROFILL UNSIGNED
) ;

INSERT INTO tab_int 
VALUES
  (- 123, 123) ;


CREATE TABLE tab_float (
  f1 FLOAT (5, 2),
  f2 DOUBLE (5, 2),
  f3 DECIMAL (5, 2)
) ;

INSERT INTO tab_float 
VALUES
  (123.45, 123.45, 123.45) ;
  
INSERT INTO tab_float 
VALUES
  (123.456, 123.456,123.456) ;
  
CREATE TABLE tab_char(
	c1 ENUM('a','b','c')
) ;

INSERT INTO tab_char VALUE('a');
INSERT INTO tab_char VALUE('b');
INSERT INTO tab_char VALUE('c');
INSERT INTO tab_char VALUE('m');
INSERT INTO tab_char VALUE('A');

SELECT 
  * 
FROM
  tab_char ;

CREATE TABLE tab_set (s1 SET ('a', 'b', 'c', 'd')) 


INSERT INTO tab_set VALUE ('a') ;

INSERT INTO tab_set VALUE ('b,c') ;

INSERT INTO tab_set VALUE ('A,c,d') ;


SELECT 
  * 
FROM
  tab_set ;


CREATE TABLE tab_date(
	t1 DATETIME,
	t2 TIMESTAMP
);


INSERT INTO tab_date 
VALUES
  (NOW(), NOW()) ;

SELECT 
  * 
FROM
  tab_date ;

SHOW VARIABLES LIKE 'time_zone' ;


SET time_zone='+9:00';




