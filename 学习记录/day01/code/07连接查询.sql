USE girls ;

SELECT 
  * 
FROM
  beauty ;

SELECT 
  * 
FROM
  boys ;

SELECT 
  `name`,
  boyName 
FROM
  beauty,
  boys ;


SELECT 
  `name`,
  boyName 
FROM
  beauty,
  boys 
WHERE beauty.boyfriend_id = boys.id ;

USE myemployees;

SELECT 
  last_name,
  department_name 
FROM
  employees,
  departments 
WHERE employees.`department_id` = departments.`department_id` ;


SELECT 
  last_name,
  jobs.`job_id`,
  job_title 
FROM
  employees,
  jobs 
WHERE employees.`job_id` = jobs.`job_id` ;


SELECT 
  last_name,
  e.`job_id`,
  job_title 
FROM
  employees AS e,
  jobs j 
WHERE e.`job_id` = j.`job_id` ;

SELECT 
  last_name,
  department_name,
  commission_pct 
FROM
  employees e,
  departments d 
WHERE e.`department_id` = d.`department_id` 
  AND e.`commission_pct` IS NOT NULL ;
  
  
SELECT 
  department_name,
  city 
FROM
  departments d,
  locations l 
WHERE d.`location_id` = l.`location_id` 
  AND city LIKE '_o%' ;
  
SELECT 
  COUNT(*) 个数,
  city 
FROM
  departments d,
  locations l 
WHERE d.`location_id` = l.`location_id` 
GROUP BY city ;


SELECT 
  department_name,
  e.manager_id,
  MIN(salary) 
FROM
  departments d,
  employees e 
WHERE d.`department_id` = e.`department_id` 
  AND commission_pct IS NOT NULL 
GROUP BY department_name,
  d.manager_id ;
 

SELECT 
  job_title,
  COUNT(*) 
FROM
  employees e,
  jobs j 
WHERE e.`job_id` = j.`job_id` 
GROUP BY job_title 
ORDER BY COUNT(*) DESC ;


SELECT 
  last_name,
  department_name,
  city 
FROM
  departments d,
  employees e,
  locations l 
WHERE e.`department_id` = d.`department_id` 
  AND d.`location_id` = l.`location_id` 
  AND city LIKE 's%' 
ORDER BY department_name DESC ;



CREATE TABLE job_grades
(grade_level VARCHAR(3),
 lowest_sal  INT,
 highest_sal INT);

INSERT INTO job_grades
VALUES ('A', 1000, 2999);

INSERT INTO job_grades
VALUES ('B', 3000, 5999);

INSERT INTO job_grades
VALUES('C', 6000, 9999);

INSERT INTO job_grades
VALUES('D', 10000, 14999);

INSERT INTO job_grades
VALUES('E', 15000, 24999);

INSERT INTO job_grades
VALUES('F', 25000, 40000);

SELECT 
  * 
FROM
  job_grades ;
  
  
SELECT 
  salary,
  grade_level 
FROM
  employees e,
  job_grades g 
WHERE salary BETWEEN g.`lowest_sal` 
  AND g.`highest_sal` ;
  
  
SELECT 
  salary,
  grade_level 
FROM
  employees e,
  job_grades g 
WHERE salary BETWEEN g.`lowest_sal` 
  AND g.`highest_sal` 
  AND grade_level = 'A' ;
  
SELECT 
  e.employee_id,
  e.last_name,
  m.employee_id,
  m.last_name 
FROM
  employees e,
  employees m 
WHERE e.`manager_id` = m.`employee_id` ;

