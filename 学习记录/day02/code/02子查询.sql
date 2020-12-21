SELECT 
  salary 
FROM
  employees 
WHERE last_name = 'Abel' ;


SELECT 
  * 
FROM
  employees 
WHERE salary > 
  (SELECT 
    salary 
  FROM
    employees 
  WHERE last_name = 'Abel') ;
  
 
SELECT 
  job_id 
FROM
  employees 
WHERE employee_id = 141 ;

SELECT 
  salary
FROM
  employees 
WHERE employee_id = 143 ;


SELECT 
  last_name,
  job_id,
  salary 
FROM
  employees 
WHERE job_id = 
  (SELECT 
    job_id 
  FROM
    employees 
  WHERE employee_id = 141) 
  AND salary > 
  (SELECT 
    salary 
  FROM
    employees 
  WHERE employee_id = 143) ;
  
  
SELECT 
  MIN(salary) 
FROM
  employees ;
  
SELECT 
  last_name,
  job_id,
  salary 
FROM
  employees 
WHERE salary = 
  (SELECT 
    MIN(salary) 
  FROM
    employees) ;
    

 
    
SELECT 
  MIN(salary),
  department_id 
FROM
  employees 
GROUP BY department_id ;

SELECT 
  MIN(salary),
  department_id 
FROM
  employees 
GROUP BY department_id 
HAVING MIN(salary) > 
  (SELECT 
    MIN(salary) 
  FROM
    employees 
  WHERE department_id = 50) ;
  

SELECT DISTINCT
  department_id 
FROM
  departments 
WHERE location_id IN (1400, 1700) ;


SELECT 
  last_name 
FROM
  employees 
WHERE department_id IN 
  (SELECT DISTINCT 
    department_id 
  FROM
    departments 
  WHERE location_id IN (1400, 1700)) ;
  
  
SELECT DISTINCT 
  salary 
FROM
  employees 
WHERE job_id = 'IT_PROG' ;


SELECT 
  employee_id,
  last_name,
  job_id,
  salary 
FROM
  employees 
WHERE salary < ANY 
  (SELECT DISTINCT 
    salary 
  FROM
    employees 
  WHERE job_id = 'IT_PROG') 
  AND job_id <> 'IT_PROG' ;
  
  
SELECT 
  employee_id,
  last_name,
  job_id,
  salary 
FROM
  employees 
WHERE salary < ALL 
  (SELECT DISTINCT 
    salary 
  FROM
    employees 
  WHERE job_id = 'IT_PROG') 
  AND job_id <> 'IT_PROG' ;


SELECT 
  MIN(employee_id) 
FROM
  employees ;
  
SELECT 
  MAX(salary) 
FROM
  employees ;
  
SELECT 
  * 
FROM
  employees 
WHERE employee_id = 
  (SELECT 
    MIN(employee_id) 
  FROM
    employees) 
  AND salary = 
  (SELECT 
    MAX(salary) 
  FROM
    employees) ;
    
SELECT 
  * 
FROM
  employees 
WHERE (employee_id, salary) = 
  (SELECT 
    MIN(employee_id),
    MAX(salary) 
  FROM
    employees) ;
    
SELECT 
  d.*,
  (SELECT 
    COUNT(*) 
  FROM
    employees e 
  WHERE e.department_id = d.`department_id`) 
FROM
  departments d ;

SELECT 
  (SELECT 
    department_name 
  FROM
    departments d 
    INNER JOIN employees e 
      ON d.department_id = e.department_id 
  WHERE e.employee_id = 102) 部门名 ;

SELECT 
  AVG(salary) ag,
  department_id 
FROM
  employees 
GROUP BY department_id ;


SELECT 
  ag_dep.*,
  g.`grade_level` 
FROM
  (SELECT 
    AVG(salary) ag,
    department_id 
  FROM
    employees 
  GROUP BY department_id) ag_dep 
  INNER JOIN job_grades g 
    ON ag_dep.ag BETWEEN lowest_sal 
    AND highest_sal ;


SELECT 
  EXISTS 
  (SELECT 
    employee_id 
  FROM
    employees) ;
    
    
SELECT 
  department_name 
FROM
  departments d 
WHERE EXISTS 
  (SELECT 
    * 
  FROM
    employees e 
  WHERE e.`department_id` = d.`department_id`) ;
  
SELECT 
  department_name 
FROM
  departments d 
WHERE d.`department_id` IN 
  (SELECT 
    department_id 
  FROM
    employees e) ;
    
    
SELECT 
  bo.* 
FROM
  boys bo 
WHERE bo.id NOT IN 
  (SELECT 
    boyfriend_id 
  FROM
    beauty) ;

SELECT 
  bo.* 
FROM
  boys bo 
WHERE NOT EXISTS 
  (SELECT 
    boyfriend_id 
  FROM
    beauty b 
  WHERE bo.`id` = b.`boyfriend_id`) ;

