SELECT 
  LENGTH('tom') ;
 
SELECT 
  LENGTH('你好') ;

SELECT 
  CONCAT(last_name, ',', first_name) 
FROM
  employees ;
  
SELECT 
  UPPER('tim') ;
  
SELECT 
  LOWER('MATH') ;
  
SELECT 
  CONCAT(UPPER(last_name), LOWER(first_name)) 姓名 
FROM
  employees ;
  
SELECT 
  SUBSTR('helloworld', 4) out_put ;

SELECT 
  SUBSTR('helloword', 1, 3) output ;

SELECT 
  CONCAT(
    UPPER(SUBSTR(last_name, 1, 1)),
    '_',
    LOWER(SUBSTR(last_name, 2))
  ) 
FROM
  employees ;
 
SELECT 
  INSTR('hellowordlrdlrdl', 'rdl') AS output ;
  
SELECT 
  LENGTH(
    TRIM('           hellowordl    ')
  ) AS output ;
 

SELECT TRIM('a' FROM 'aaaaaaaahellowordaaaaaaaaa') AS output;

SELECT 
  LPAD('helloword', 20, '*') AS output ;
  
 
SELECT 
  RPAD('hello', 10, '*') AS output ;
  
SELECT 
  REPLACE(
    'hello word word word',
    'word',
    'world'
  ) ;

SELECT 
  ROUND(1.65) ;
  
SELECT 
  ROUND(- 1.55) ;
  
SELECT 
  ROUND(1.785, 2) ;
 
SELECT 
  CEIL(1.48) ;

SELECT 
  CEIL(1.0001) ;
  
SELECT 
  FLOOR(1.99) ;

SELECT 
  FLOOR(- 9.01) ;
  
SELECT 
  TRUNCATE(1.65, 1) ;
  
SELECT 
  MOD(10, 3) ;
  
SELECT 
  MOD(- 10, - 3) ;
  
SELECT 
  NOW() ;
 
SELECT 
  CURDATE() ;

SELECT 
  CURTIME() ;
  
SELECT 
  YEAR(NOW()) ;
  
SELECT 
  YEAR('1998-01-02') ;
  
SELECT 
  MONTH(NOW()) ;
  
SELECT 
  MONTHNAME(NOW()) ;
  
SELECT 
  STR_TO_DATE('2020-3-4', '%Y-%c-%d') AS output ;
  
SELECT 
  * 
FROM
  employees 
WHERE hiredate = '1992-4-3' ;

SELECT 
  * 
FROM
  employees 
WHERE hiredate = STR_TO_DATE('4-3 1992', '%c-%d %Y') ;

SELECT 
  DATE_FORMAT(NOW(), '%y年%m月%d日') AS output ;
  
SELECT 
  last_name,
  DATE_FORMAT(hiredate, '%m月 /%d日 %y年') 入职日期 
FROM
  employees 
WHERE commission_pct IS NOT NULL ;


SELECT 
  VERSION() ;
  
SELECT 
  DATABASE() ;
  
SELECT 
  USER() ;
  
SELECT 
  IF(10 > 5, '大', '小') ;
  
SELECT 
  last_name,
  commission_pct,
  IF(
    commission_pct IS NULL,
    '没奖金，呵呵',
    '有奖金，嘻嘻'
  ) 备注 
FROM
  employees ;
  
SELECT 
  salary 原始工资,
  department_id,
  CASE
    department_id 
    WHEN 30 
    THEN salary * 1.1 
    WHEN 40 
    THEN salary * 1.2 
    WHEN 50 
    THEN salary * 1.3 
    ELSE salary 
  END AS 新工资 
FROM
  employees ;
  
  
SELECT 
  salary,
  CASE
    WHEN salary > 20000 
    THEN 'A' 
    WHEN salary > 15000 
    THEN 'B' 
    WHEN salary > 10000 
    THEN 'C' 
    ELSE 'D' 
  END AS '工资级别' 
FROM
  employees ;

