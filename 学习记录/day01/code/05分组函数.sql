SELECT 
  SUM(salary) AS 工资之和 
FROM
  employees ;
  
SELECT 
  AVG(salary) AS 平均工资 
FROM
  employees ;

SELECT 
  MIN(salary) AS 最低工资 
FROM
  employees ;

SELECT 
  MAX(salary) AS 最大工资 
FROM
  employees ;

SELECT 
  COUNT(salary) AS 非空个数 
FROM
  employees ;
  
SELECT 
  SUM(salary) 和,
  AVG(salary) 平均,
  MAX(salary) 最高,
  MIN(salary) 最低,
  COUNT(salary) 个数 
FROM
  employees ;
  

SELECT 
  SUM(salary) 和,
  ROUND(AVG(salary), 2) 平均,
  MAX(salary) 最高,
  MIN(salary) 最低,
  COUNT(salary) 个数 
FROM
  employees ;
  

SELECT 
  MAX(last_name),
  MIN(last_name) 
FROM
  employees ;
  
SELECT 
  MAX(hiredate),
  MIN(hiredate) 
FROM
  employees ;
  
SELECT 
  COUNT(commission_pct) 
FROM
  employees ;
  
SELECT 
  COUNT(hiredate) 
FROM
  employees ;
  
  
SELECT 
  SUM(commission_pct),
  AVG(commission_pct),
  SUM(commission_pct) / 35,
  SUM(commission_pct) / 107 
FROM
  employees ;


SELECT 
  MAX(commission_pct),
  MIN(commission_pct) 
FROM
  employees ;
  
SELECT 
  SUM(DISTINCT salary),
  SUM(salary) 
FROM
  employees ;
  
SELECT 
  COUNT(DISTINCT salary),
  COUNT(salary) 
FROM
  employees ;
  
SELECT 
  COUNT(*) 
FROM
  employees ;
  

SELECT 
  COUNT(1) 
FROM
  employees ;



SELECT 
  COUNT(2) 
FROM
  employees ;
  

SELECT 
  COUNT('hello') 
FROM
  employees ;

SELECT 
  AVG(salary),
  employee_id 
FROM
  employees ;
  


