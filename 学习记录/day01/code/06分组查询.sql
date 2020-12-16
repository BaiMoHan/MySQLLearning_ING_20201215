SELECT 
  AVG(salary) 
FROM
  employees ;
  
SELECT 
  MAX(salary),
  job_id 
FROM
  employees 
GROUP BY job_id ;


SELECT 
  COUNT(*),
  location_id 
FROM
  departments 
GROUP BY location_id ;


SELECT 
  AVG(salary),
  department_id 
FROM
  employees 
WHERE email LIKE '%a%' 
GROUP BY department_id ;

SELECT 
  MAX(salary),
  manager_id 
FROM
  employees 
WHERE commission_pct IS NOT NULL 
GROUP BY manager_id ;


SELECT 
  COUNT(*),
  department_id 
FROM
  employees 
GROUP BY department_id 
HAVING COUNT(*) > 2 ;


SELECT 
  MAX(salary),
  job_id 
FROM
  employees 
WHERE commission_pct IS NOT NULL 
GROUP BY job_id 
HAVING MAX(salary) > 12000 ;


SELECT 
  MIN(salary),
  manager_id 
FROM
  employees 
WHERE manager_id > 102 
GROUP BY manager_id 
HAVING MIN(salary) > 5000 ;


SELECT 
  COUNT(*),
  LENGTH(last_name) len_name 
FROM
  employees 
GROUP BY LENGTH(last_name) 
HAVING COUNT(*) > 5 ;


SELECT 
  AVG(salary),
  department_id,
  job_id 
FROM
  employees 
GROUP BY department_id,
  job_id ;
  
SELECT 
  AVG(salary),
  department_id,
  job_id 
FROM
  employees 
WHERE department_id IS NOT NULL 
GROUP BY department_id,
  job_id 
HAVING AVG(salary) > 10000 
ORDER BY AVG(salary) DESC ;



