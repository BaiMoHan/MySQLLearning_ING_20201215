#1.	查询工资最低的员工信息: last_name, salary
SELECT 
  MIN(salary) 
FROM
  employees ;
  
SELECT 
  last_name,
  salary 
FROM
  employees 
WHERE salary = 
  (SELECT 
    MIN(salary) 
  FROM
    employees) ;


#2.	查询平均工资最低的部门信息
SELECT 
  AVG(salary),
  department_id 
FROM
  employees 
GROUP BY department_id ;

SELECT 
  MIN(ag)
FROM
  (SELECT 
    AVG(salary) ag,
    department_id 
  FROM
    employees 
  GROUP BY department_id) ag_dep ;
  
SELECT 
  AVG(salary),
  department_id 
FROM
  employees 
GROUP BY department_id 
HAVING AVG(salary) = 
  (SELECT 
    MIN(ag) 
  FROM
    (SELECT 
      AVG(salary) ag,
      department_id 
    FROM
      employees 
    GROUP BY department_id) ag_dep) ;
    
SELECT 
  d.* 
FROM
  departments d 
WHERE d.`department_id` = 
  (SELECT 
    department_id 
  FROM
    employees 
  GROUP BY department_id 
  HAVING AVG(salary) = 
    (SELECT 
      MIN(ag) 
    FROM
      (SELECT 
        AVG(salary) ag,
        department_id 
      FROM
        employees 
      GROUP BY department_id) ag_dep)) ;
      
SELECT department_id
FROM employees
GROUP BY department_id
ORDER BY AVG(salary)
LIMIT 1;

SELECT 
  * 
FROM
  departments 
WHERE department_id = 
  (SELECT 
    department_id 
  FROM
    employees 
  GROUP BY department_id 
  ORDER BY AVG(salary) 
  LIMIT 1) ;

#3.	查询平均工资最低的部门信息和该部门的平均工资
SELECT AVG(salary),department_id
FROM employees
GROUP BY department_id
ORDER BY AVG(salary)
LIMIT 1;


SELECT 
  * 
FROM
  departments d 
  INNER JOIN 
    (SELECT 
      AVG(salary),
      department_id 
    FROM
      employees 
    GROUP BY department_id 
    ORDER BY AVG(salary)
    LIMIT 1) ag_dep 
    ON d.`department_id` = ag_dep.department_id ;
    

#4.	查询平均工资最高的 job 信息
SELECT 
  AVG(salary),
  job_id 
FROM
  employees 
GROUP BY job_id 
ORDER BY AVG(salary) DESC 
LIMIT 1 ;

SELECT 
  * 
FROM
  jobs 
WHERE job_id = 
  (SELECT 
    job_id 
  FROM
    employees 
  GROUP BY job_id 
  ORDER BY AVG(salary) DESC 
  LIMIT 1) ;



#5.	查询平均工资高于公司平均工资的部门有哪些?
SELECT 
  AVG(salary) 
FROM
  employees ;
  
SELECT 
  AVG(salary) 
FROM
  employees 
GROUP BY department_id ;

SELECT 
  AVG(salary),
  department_id 
FROM
  employees 
GROUP BY department_id 
HAVING AVG(salary) > 
  (SELECT 
    AVG(salary) 
  FROM
    employees) ;

#6.	查询出公司中所有 manager 的详细信息.
SELECT DISTINCT 
  manager_id 
FROM
  employees ;
  
SELECT 
  * 
FROM
  employees 
WHERE employee_id = ANY 
  (SELECT DISTINCT 
    manager_id 
  FROM
    employees) ;


#7.	各个部门中 最高工资中最低的那个部门的 最低工资是多少
SELECT 
  MAX(salary),
  department_id 
FROM
  employees 
GROUP BY department_id 
ORDER BY MAX(salary) 
LIMIT 1 ;

SELECT 
  MIN(salary) 
FROM
  employees 
WHERE department_id = 
  (SELECT 
    department_id 
  FROM
    employees 
  GROUP BY department_id 
  ORDER BY MAX(salary) 
  LIMIT 1) ;

#8.	查询平均工资最高的部门的 manager 的详细信息: last_name, department_id, email,salary 
SELECT 
  AVG(salary),
  department_id 
FROM
  employees 
GROUP BY department_id 
ORDER BY AVG(salary) DESC 
LIMIT 1 ;

SELECT 
  manager_id 
FROM
  departments 
WHERE department_id = 
  (SELECT 
    department_id 
  FROM
    employees 
  GROUP BY department_id 
  ORDER BY AVG(salary) DESC 
  LIMIT 1) ;
  
SELECT 
  last_name,
  d.department_id,
  email,
  salary 
FROM
  employees e 
  INNER JOIN departments d 
    ON d.`manager_id` = e.`employee_id` 
WHERE d.`department_id` = 
  (SELECT 
    department_id 
  FROM
    employees 
  GROUP BY department_id 
  ORDER BY AVG(salary) DESC 
  LIMIT 1) ;

