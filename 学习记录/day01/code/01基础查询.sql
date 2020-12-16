# 进阶1：基础查询
SELECT 
  last_name 
FROM
  employees ;

SELECT last_name,salary,email FROM employees ;

SELECT `first_name`,
`last_name`,
`email`
FROM
employees;
SELECT * FROM employees;
SELECT 
	`first_name`,
	`last_name`,
	`email`
FROM
	employees ;
	
SELECT 100 ;
 SELECT 100 ;
 SELECT 'john';
 
 SELECT 100%97;
 SELECT VERSION();
 SELECT 100%97 AS res;
 
 SELECT department_id FROM employees;
 SELECT DISTINCT department_id FROM employees;
 
 SELECT last_name+first_name AS 姓名
 FROM
 employees;
SELECT 100+90;
SELECT '123'+90;
SELECT 'hello'+90;

SELECT CONCAT('a','b','c') AS 结果;
DESC departments;
SELECT 
  * 
FROM
  departments ;

SELECT 
  IFNULL(commission_pct, 0) AS 奖金率,
  commission_pct 
FROM
  employees ;

SELECT
	CONCAT(`first_name`,',',`last_name`,',',`job_id`,',',IFNULL(commission_pct,0)) AS out_put
FROM
	employees ;

