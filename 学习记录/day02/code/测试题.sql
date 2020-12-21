/*
已知表 stuinfo
id 学号
name 姓名
email 邮箱 john@126.com
gradeId 年级编号
sex 性别 男 女
age 年龄


已知表 grade
id 年级编号
gradeName 年级名称
*/
#一、查询 所有学员的邮箱的用户名 （注：邮箱中 @前面的字符）
SELECT SUBSTR(email,1,INSTR(emial,'@')-1) 用户名
FROM stuinfo;


#二、查询男生和女生的个数
SELECT COUNT(*) 个数,sex
FROM stuinfo
GROUP BY sex;


#三、查询年龄>18岁的所有学生的姓名和年级名称
SELECT name,gradeName
FROM stuinfo s
INNER JOIN grade g
ON s.gradeId=g.id
where age>18;


#四、查询哪个年级的学生最小年龄>20岁
SELECT MIN(age),gradeId
FROM stuinfo
GROUP BY gradeId
HAVING MIN(age)>20;


#五、试说出查询语句中涉及到的所有的关键字，以及执行先后顺序
SELECT 查询列表						⑦
FROM 表								①
连接类型 JOIN 表2					②
ON 连接条件							③
WHERE 筛选条件						④
GROUP BY 分组条件					⑤
HAVING BY 分组后的筛选条件			⑥
ORDER BY 排序列表					⑧
LIMIT 偏移,条数目					⑨

















