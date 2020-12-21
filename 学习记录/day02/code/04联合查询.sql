SELECT 
  * 
FROM
  employees 
WHERE email LIKE '%a%' 
  OR department_id > 90 ;
  
 
SELECT 
  * 
FROM
  employees 
WHERE email LIKE '%a%' 
UNION
SELECT 
  * 
FROM
  employees 
WHERE department_id > 90 ;


SELECT 
  id,
  cname csex 
FROM
  t_ca 
WHERE csex = '男' 
UNION
SELECT 
  t_id,
  tName,
  tGender 
FROM
  t_ua 
WHERE tGender = 'male' ;


SELECT 
  id,
  cname csex 
FROM
  t_ca 
WHERE csex = '男' 
UNION ALL
SELECT 
  t_id,
  tName,
  tGender 
FROM
  t_ua 
WHERE tGender = 'male' ;







