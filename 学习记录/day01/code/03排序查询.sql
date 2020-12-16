SELECT 
  * 
FROM
  employees ;

SELECT 
  * 
FROM
  employees 
ORDER BY salary DESC ;

SELECT 
  * 
FROM
  employees 
ORDER BY salary ASC ;

SELECT 
  * 
FROM
  employees 
ORDER BY salary ;

SELECT 
  * 
FROM
  employees 
WHERE department_id >= 90 
ORDER BY hiredate ASC ;

SELECT 
  *,
  salary * 12 * (1+ IFNULL(commission_pct, 0)) 年薪 
FROM
  employees 
ORDER BY salary * 12 * (1+ IFNULL(commission_pct, 0)) DESC ;

	
SELECT * FROM employees
WHERE
	department_id>=90
ORDER BY
	hiredate ASC;
SELECT *,salary*12*(1+IFNULL(commission_pct,0)) 年薪
FROM
	employees
ORDER BY
	年薪 DESC;
	
SELECT LENGTH(last_name) 字节长度,last_name,salary
FROM employees
ORDER BY LENGTH(last_name) DESC;

SELECT *
FROM employees
ORDER BY salary ASC,employee_id DESC;




