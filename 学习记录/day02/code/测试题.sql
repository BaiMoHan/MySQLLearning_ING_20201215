/*
��֪�� stuinfo
id ѧ��
name ����
email ���� john@126.com
gradeId �꼶���
sex �Ա� �� Ů
age ����


��֪�� grade
id �꼶���
gradeName �꼶����
*/
#һ����ѯ ����ѧԱ��������û��� ��ע�������� @ǰ����ַ���
SELECT SUBSTR(email,1,INSTR(emial,'@')-1) �û���
FROM stuinfo;


#������ѯ������Ů���ĸ���
SELECT COUNT(*) ����,sex
FROM stuinfo
GROUP BY sex;


#������ѯ����>18�������ѧ�����������꼶����
SELECT name,gradeName
FROM stuinfo s
INNER JOIN grade g
ON s.gradeId=g.id
where age>18;


#�ġ���ѯ�ĸ��꼶��ѧ����С����>20��
SELECT MIN(age),gradeId
FROM stuinfo
GROUP BY gradeId
HAVING MIN(age)>20;


#�塢��˵����ѯ������漰�������еĹؼ��֣��Լ�ִ���Ⱥ�˳��
SELECT ��ѯ�б�						��
FROM ��								��
�������� JOIN ��2					��
ON ��������							��
WHERE ɸѡ����						��
GROUP BY ��������					��
HAVING BY ������ɸѡ����			��
ORDER BY �����б�					��
LIMIT ƫ��,����Ŀ					��

















