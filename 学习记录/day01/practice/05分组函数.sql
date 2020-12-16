#1. 查询公司员工工资的最大值，最小值，平均值，总和
SELECT 
  MAX(salary) 最大工资,
  MIN(salary) 最低工资,
  ROUND(AVG(salary), 2) 平均工资,
  SUM(salary) 总和 
FROM
  employees ;

#2. 查询员工表中的最大入职时间和最小入职时间的相差天数 （DIFFRENCE）
SELECT 
  DATEDIFF(MAX(hiredate), MIN(hiredate)) 
FROM
  employees ;

#3. 查询部门编号为90的员工个数 
SELECT 
  COUNT(*) 个数 
FROM
  employees 
WHERE department_id = 90 ;

