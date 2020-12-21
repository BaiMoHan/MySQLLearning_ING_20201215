INSERT INTO beauty (
  id,
  NAME,
  sex,
  borndate,
  phone,
  photo,
  boyfriend_id
) VALUE (
  13,
  '唐艺昕',
  '女',
  '1990-4-23',
  '1898888888',
  NULL,
  2
) ;


SELECT 
  * 
FROM
  beauty ;

INSERT INTO beauty (
  id,
  NAME,
  sex,
  borndate,
  phone,
  boyfriend_id
) VALUE (
  14,
  '金星',
  '女',
  '1990-4-23',
  '1838888888',
  2
) ;

SELECT 
  * 
FROM
  beauty ;


INSERT INTO beauty (
  id,
  NAME,
  borndate,
  phone
) VALUE (
  15,
  '娜扎',
  '1990-4-23',
  '1898888888'
) ;

SELECT 
  * 
FROM
  beauty ;
  
INSERT INTO beauty (NAME, sex, id, phone) VALUE (
  '金克斯',
  '女',
  16,
  '1868888888'
) ;


INSERT INTO beauty 
VALUES
  (
    18,
    '孙尚香',
    '男',
    NULL,
    '219218311',
    NULL,
    NULL
  ) ;


INSERT INTO beauty SET id = 19,
NAME = '嫦娥',
phone = '1319321341' ;


INSERT INTO beauty (
  id,
  NAME,
  sex,
  borndate,
  phone,
  photo,
  boyfriend_id
) VALUE (
  23,
  '唐一昕',
  '女',
  '1990-4-23',
  '1898888888',
  NULL,
  2
),
(
  24,
  '唐二昕',
  '女',
  '1990-4-23',
  '1898888888',
  NULL,
  2
),
(
  25,
  '唐三昕',
  '女',
  '1990-4-23',
  '1898888888',
  NULL,
  2
) ;

SELECT 
  * 
FROM
  beauty ;


INSERT INTO beauty (id, NAME, phone) 
SELECT 
  26,
  '宋茜',
  '11213123' ;
 
INSERT INTO beauty (id, NAME, phone) 
SELECT 
  id,
  boyName,
  '1234567' 
FROM
  boys 
WHERE id < 3 ;

UPDATE 
  beauty 
SET
  phone = '13888888888' 
WHERE NAME LIKE '唐%' ;

UPDATE 
  boys 
SET
  boyName = '张飞',
  usercp = 10 
WHERE id = 2 ;



UPDATE 
  boys d 
  INNER JOIN beauty b 
    ON d.id = b.`boyfriend_id` SET b.`phone` = '1149233324' 
WHERE d.boyName = '张无忌' ;

UPDATE 
  boys bo 
  RIGHT JOIN beauty b 
    ON bo.`id` = b.`boyfriend_id` SET b.`boyfriend_id` = 2 
WHERE bo.`id` IS NULL ;


DELETE 
FROM
  beauty 
WHERE phone LIKE '%9' ;

DELETE 
  b 
FROM
  beauty b 
  INNER JOIN boys bo 
    ON b.`boyfriend_id` = bo.`id` 
WHERE bo.`boyName` = '张无忌' ;


DELETE 
  b,
  bo 
FROM
  beauty b 
  INNER JOIN boys bo 
    ON b.`boyfriend_id` = bo.`id` 
WHERE bo.`boyName` = '黄晓明' ;


TRUNCATE TABLE boys;


DELETE 
FROM
  boys ;
  
INSERT INTO boys (boyName, usercp) 
VALUES
  ('张飞', 100),
  ('刘备', 100),
  ('关云长', 100) ;
  
TRUNCATE 
TABLE
  boys ;
  
INSERT INTO boys (boyName, usercp) 
VALUES
  ('张飞', 100),
  ('刘备', 100),
  ('关云长', 100) ;
  
  


