SELECT 
  * 
FROM
  employees 
WHERE salary > 12000 ;

SELECT 
  last_name,
  department_id 
FROM
  employees 
WHERE department_id != 90 ;

SELECT
	last_name,
	salary,
	commission_pct
FROM
	employees
WHERE
	salary>=10000
AND
	salary<=20000;
	
SELECT
	*
FROM
	employees
WHERE
	department_id<90
OR
	department_id>110
OR
	salary>15000;
	
	
SELECT
	*
FROM
	employees
WHERE
	last_name LIKE '%a%';



SELECT
	last_name,
	salary
FROM
	employees
WHERE
	last_name LIKE'__n_l%';
	
	
SELECT
	last_name
FROM
	employees
WHERE
	last_name LIKE '_\_%';
	
	
SELECT
	last_name
FROM
	employees
WHERE
	last_name LIKE '_$_%' ESCAPE '$';
	
	
SELECT
	*
FROM
	employees
WHERE
	employee_id>=100
AND
	employee_id<=150;
	
	
SELECT
	*
FROM
	employees
WHERE
	employee_id BETWEEN 100 AND 150;
	
SELECT
	last_name,
	job_id
FROM
	employees
WHERE
	job_id='IT_PROG'
OR
	job_id='AD_VP'
OR
	job_id='AD_PRES';
	
	
SELECT
	last_name,
	job_id
FROM
	employees
WHERE
	job_id IN ('IT_PROG','AD_VP','AD_PRES');
	
	
SELECT
	last_name,
	commission_pct
FROM
	employees
WHERE
	commission_pct IS NULL;
	
SELECT
	last_name,
	commission_pct
FROM
	employees
WHERE
	commission_pct IS NOT NULL;
	
SELECT
	last_name,
	commission_pct
FROM
	employees
WHERE
	commission_pct <=> NULL;


SELECT
	last_name,
	salary
FROM
	employees
WHERE
	salary <=> 12000;
	
	
SELECT 
	salary,
	last_name
FROM
	employees
WHERE
	commission_pct IS NULL
AND
	salary<12000;
	
SELECT
	*
FROM
	employees
WHERE
	job_id <> 'IT'
OR
	salary <12000;
	
DESC departments;

SELECT
DISTINCT
	location_id
FROM
	departments;
	
	


