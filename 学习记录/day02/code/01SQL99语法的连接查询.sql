SHOW DATABASES ;
USE myemployees ;

SELECT 
  last_name,
  department_name 
FROM
  employees e 
  INNER JOIN departments d 
    ON e.`department_id` = d.`department_id` ;
    
    

SELECT 
  last_name,
  department_name 
FROM
  departments d 
  INNER JOIN employees e 
    ON e.`department_id` = d.`department_id` ;
    
SELECT 
  last_name,
  job_title 
FROM
  employees e 
  INNER JOIN jobs j 
    ON e.`job_id` = j.`job_id` 
WHERE e.`last_name` LIKE '%e%' ;

SELECT 
  city,
  COUNT(*) 部门个数 
FROM
  departments d 
  INNER JOIN locations l 
    ON d.`location_id` = l.`location_id` 
GROUP BY city ;


SELECT 
  city,
  COUNT(*) 部门个数 
FROM
  departments d 
  INNER JOIN locations l 
    ON d.`location_id` = l.`location_id` 
GROUP BY city 
HAVING 部门个数 > 3 ;


SELECT 
  COUNT(*),
  department_name 
FROM
  employees e 
  INNER JOIN departments d 
    ON e.`department_id` = d.`department_id` 
GROUP BY department_name 
HAVING COUNT(*) > 3 
ORDER BY COUNT(*) DESC;

SELECT 
  last_name,
  department_name,
  job_title 
FROM
  employees e 
  INNER JOIN departments d 
    ON e.`department_id` = d.`department_id` 
  INNER JOIN jobs j 
    ON e.`job_id` = j.`job_id` 
ORDER BY department_name DESC ;


SELECT 
  salary,
  grade_level 
FROM
  employees e 
  JOIN job_grades j 
    ON e.`salary` BETWEEN j.`lowest_sal` 
    AND j.`highest_sal` ;


SELECT 
  COUNT(*),
  grade_level 
FROM
  employees e 
  JOIN job_grades j 
    ON e.`salary` BETWEEN j.`lowest_sal` 
    AND j.`highest_sal` 
GROUP BY grade_level 
HAVING COUNT(*) > 20 
ORDER BY grade_level DESC ;


SELECT 
  e.last_name,
  m.last_name 
FROM
  employees e 
  JOIN employees m 
    ON e.`manager_id` = m.`employee_id` 
WHERE e.`last_name` LIKE '%k%' ;


USE girls;

SELECT 
  * 
FROM
  beauty ;
  
  
SELECT 
  * 
FROM
  boys ;
  

SELECT 
  b.`name`,
  bo.* 
FROM
  beauty b 
  LEFT OUTER JOIN boys bo 
    ON b.`boyfriend_id` = bo.`id` 
WHERE bo.`id` IS NULL ;

UPDATE 
  boys 
SET
  usercp = NULL 
WHERE id = 3 ;

SELECT 
  b.`name`,
  bo.* 
FROM
  boys bo 
  RIGHT OUTER JOIN beauty b 
    ON b.`boyfriend_id` = bo.`id` 
WHERE bo.`id` IS NULL ;

    
SELECT 
  b.*,
  bo.* 
FROM
  boys bo 
  LEFT OUTER JOIN beauty b 
    ON b.`boyfriend_id` = bo.`id` ;

USE myemployees;


SELECT 
  d.*,
  e.employee_id 
FROM
  departments d 
  LEFT OUTER JOIN employees e 
    ON d.`department_id` = e.`department_id` 
WHERE e.`employee_id` IS NULL ;

SELECT 
  d.*,
  e.employee_id 
FROM
  employees e 
  RIGHT OUTER JOIN departments d 
    ON d.`department_id` = e.`department_id` 
WHERE e.`employee_id` IS NULL ;

SELECT employee_id
FROM employees;

USE girls;


# 全外 
SELECT 
  b.*,
  bo.* 
FROM
  beauty b FULL 
  OUTER JOIN boys bo 
    ON b.`boyfriend_id` = bo.id ;
    
SELECT 
  b.*,
  bo.* 
FROM
  beauty b 
  CROSS JOIN boys bo ;

SELECT 
  * 
FROM
  beauty ;

