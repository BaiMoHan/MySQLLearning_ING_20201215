#1. 下面的语句是否可以执行成功 √
SELECT last_name , job_id , salary AS sal
FROM employees;
#2. 下面的语句是否可以执行成功 √
SELECT * FROM employees;
#3. 找出下面语句中的错误  
/*
1. 中文逗号
2. 中文引号
*/
SELECT employee_id , last_name，
salary * 12 “ANNUAL SALARY”
FROM employees;

#4. 显示表departments的结构，并查询其中的全部数据
DESC departments;

SELECT * FROM departments;

#5. 显示出表employees中的全部job_id（不能重复）
SELECT job_id FROM employees;

#6. 显示出表employees的全部列，各个列之间用逗号连接，列头显示成OUT_PUT
SELECT
	CONCAT(`first_name`,',',`last_name`,',',`email`,',',`phone_number`,',',`job_id`,',',`salary`,',',IFNULL(`commission_pct`,0),',',
	IFNULL(`manager_id`,0),',',`department_id`,',',`hiredate`) AS out_put
FROM employees;

