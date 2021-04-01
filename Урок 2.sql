1. Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
[client]
user=root
password=********

2. Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
<mysql>
DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example;
DROP TABLE IF EXISTS users; 
CREATE TABLE users (
id INT NOT NULL UNSIGNED PRIMARY KEY,
name VARCHAR (100)
)

3. Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
<mysql> \q;
<C:\users\Roman> mysqldump example > example.sql
<C:\users\Roman> ls la
<C:\users\Roman> mysql
<mysql>
--SHOW DATABASES;
DROP DATABASE IF EXISTS sample;
CREATE DATABASE sample;
<mysql> \q;
<C:\users\Roman> mysql sample < example.sql

4. Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql. Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.

<C:\users\Roman> mysql
<mysql>
--SHOW DATABASES;
--USE mysql;
--SHOW TABLES;
--DESCRIBE help_keyword;
--DROP DATABASE IF EXISTS help;
--CREATE DATABASE help;
<mysql> \q;
<C:\users\Roman> mysqldump mysql help_keyword LIMIT 100 > help.sql