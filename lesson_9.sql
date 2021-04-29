/* Практическое задание по теме “Транзакции, переменные, представления” */
-- В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных. Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
START TRANSACTION; 
INSERT INTO sample.users SELECT * FROM shop.users WHERE id = 1;
DELETE FROM users WHERE id = 1 LIMIT 1;
COMMIT;

-- Создайте представление, которое выводит название name товарной позиции из таблицы products и соответствующее название каталога name из таблицы catalogs.
CREATE OR REPLACE VIEW name_cat (name, catalog_name)
AS (SELECT name FROM products),
   (SELECT name FROM catalogs
     INNER JOIN products
     ON catalog.id = products.catalog_id)
ORDER BY catalog_name;
 
 -- (по желанию) Пусть имеется любая таблица (назову ее sample) с календарным полем created_at. Создайте запрос, который удаляет устаревшие записи из таблицы, оставляя только 5 самых свежих записей.
 
START TRANSACTION;
CREATE TEMPORARY TABLE the_last_five (
  id INT
);

INSERT INTO the_last_five
SELECT id
FROM sample
ORDER BY created_at DESC
LIMIT 5;

DELETE FROM sample
WHERE id NOT IN (SELECT id FROM the_last_five);

DROP TEMPORARY TABLE limited;

COMMIT;


-- Практическое задание по теме “Администрирование MySQL” (эта тема изучается по вашему желанию)
-- 1. Создайте двух пользователей которые имеют доступ к базе данных shop.
-- Первому пользователю должны быть доступны только запросы на чтение данных,
-- второму пользователю shop — любые операции в пределах базы данных shop.

-- создаем первого пользователя
DROP USER IF EXISTS 'shop_read'@'localhost';
CREATE USER 'shop_read'@'localhost' IDENTIFIED WITH sha256_password BY 'password';
GRANT SELECT ON shop.* TO 'shop_read'@'localhost';

-- создаем второго пользователя
DROP USER IF EXISTS 'shop_all'@'localhost';
CREATE USER 'shop_all'@'localhost' IDENTIFIED WITH sha256_password BY 'password_2';
GRANT ALL ON shop.* TO 'shop'@'localhost';
GRANT GRANT OPTION ON shop_online.* TO 'shop'@'localhost';


/*2. (по желанию) Пусть имеется таблица accounts содержащая три столбца id, name, password, содержащие первичный ключ, имя пользователя и его пароль. Создайте представление username таблицы accounts, предоставляющий доступ к столбцам id и name. Создайте пользователя user_read, который бы не имел доступа к таблице accounts, однако, мог бы извлекать записи из представления username.*/
CREATE OR REPLACE VIEW username (id, name)
AS SELECT id, name FROM accounts;

-- Создаем пользователя
DROP USER IF EXISTS 'reader'@'localhost';
CREATE USER 'reader'@'localhost' IDENTIFIED WITH sha256_password BY 'password';
GRANT SELECT ON *.username TO 'reader'@'localhost';

-- для проверки праввыходим из клиента и заходим как пользователь reader
<mysql> exit
<> mysql -u reader -p
SELECT * FROM username;


-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"

/*1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".*/

DROP PROCEDURE IF EXISTS hello;
DELIMITER //
CREATE PROCEDURE hello()
BEGIN
	CASE 
		WHEN CURTIME() BETWEEN '06:00:00' AND '12:00:00' THEN
			SELECT 'Доброе утро';
		WHEN CURTIME() BETWEEN '12:00:00' AND '18:00:00' THEN
			SELECT 'Добрый день';
		WHEN CURTIME() BETWEEN '18:00:00' AND '00:00:00' THEN
			SELECT 'Добрый вечер';
		ELSE
			SELECT 'Доброй ночи';
	END CASE;
END //
DELIMITER ;

CALL hello();

/*В таблице products есть два текстовых поля: name с названием товара и description с его описанием. Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены. При попытке присвоить полям NULL-значение необходимо отменить операцию.*/

DROP TRIGGER IF EXISTS products_insert;
DELIMITER //
CREATE TRIGGER products_insert BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF((NEW.name) IS NULL AND (NEW.description) IS NULL) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'At least one field should be not null';
    ELSE INSERT INTO products  ('name', 'description') VALUES (NEW.name, NEW.description)
	END IF;
END //
DELIMITER ;

/*(по желанию) Напишите хранимую функцию для вычисления произвольного числа Фибоначчи. Числами Фибоначчи называется последовательность в которой число равно сумме двух предыдущих чисел. Вызов функции FIBONACCI(10) должен возвращать число 55.*/


DROP FUNCTION IF EXISTS fib();
DELIMITER //
CREATE FUNCTION fib(n INT) RETURNS INT NOT DETERMINISTIC
BEGIN
  IF(n >= 1)
  RETURN SELECT (POW((1 + SQRT(5)/2, n) + POW((1 - SQRT(5)/2, n))/SQRT(5);
  ELSE RETURN SELECT 0;
END IF;
END //
DELIMITER ;
              
SELECT fib(10);