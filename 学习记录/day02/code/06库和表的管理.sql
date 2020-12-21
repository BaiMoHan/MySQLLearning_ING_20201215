CREATE DATABASE IF NOT EXISTS books ;

RENAME DATABASE books TO 新库名;

ALTER DATABASE books 
  CHARACTER SET gbk ;

DROP DATABASE IF EXISTS books ;



CREATE DATABASE IF NOT EXISTS books ;

CREATE TABLE book (
  id INT,
  #编号
  bName VARCHAR (20),
  #图书名
  price DOUBLE,
  #价格
  authorId INT,
  #作者编号
  publishDate DATETIME#出版日期
) ;

DESC book ;

CREATE TABLE IF NOT EXISTS author (
  id INT,
  au_name VARCHAR (20),
  nation VARCHAR (10)
) ;

DESC author ;


ALTER TABLE book 
  CHANGE COLUMN publishDate pubDate DATETIME ;
  
DESC book ;

ALTER TABLE book 
  MODIFY COLUMN pubDate TIMESTAMP ;
  

ALTER TABLE author 
  ADD COLUMN annual DOUBLE ;

ALTER TABLE author DROP COLUMN annual;

ALTER TABLE author 
  RENAME TO book_author ;
  
  
DROP TABLE IF EXISTS book_author ;

SHOW TABLES ;

INSERT INTO author 
VALUES
  (1, '村上春树', '日本'),
  (2, '莫言', '中国'),
  (3, '王小波', '中国'),
  (4, '金庸', '中国') ;
  
  
CREATE TABLE copy LIKE author ;

CREATE TABLE copy2 
SELECT 
  * 
FROM
  author ;
  
  
CREATE TABLE copy3 
SELECT 
  id,
  au_name 
FROM
  author 
WHERE nation = '中国' ;

CREATE TABLE copy4 
SELECT 
  id,
  au_name 
FROM
  author 
WHERE 1 = 2 ;

