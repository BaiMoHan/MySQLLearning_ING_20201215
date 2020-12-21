SELECT 
  * 
FROM
  employees 
LIMIT 0, 5 ;


SELECT 
  * 
FROM
  employees 
LIMIT 5 ;


SELECT 
  * 
FROM
  employees 
LIMIT 10, 15 ;



SELECT 
  * 
FROM
  employees 
WHERE commission_pct IS NOT NULL 
ORDER BY salary DESC 
LIMIT 10 ;




