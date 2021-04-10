--Операторы, фильтрация, сортировка и ограничение

--1.Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.--
UPDATE users SET created_at=NOW() WHERE created_at IS NULL;
UPDATE users SET updated_at_at=NOW() WHERE updated_at IS NULL;

/*2.Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате 20.10.2017 8:10.
Необходимо преобразовать поля к типу DATETIME, сохранив введённые ранее значения.*/

--Создадим две новые колонки, куда переведем данные в нужный формат функцией STR_TO_DATE, а затем удалим старые и переименуем новые.
ALTER TABLE users ADD COLUMN created_at_2 DATETIME, updated_at_2 DATETIME;
UPDATE users
SET created_at_2 = STR_TO_DATE(created_at, '%d.%m.%Y %h:%i'),
    updated_at_2 = STR_TO_DATE(updated_at, '%d.%m.%Y %h:%i');
ALTER TABLE users 
    DROP COLUMN created_at, DROP updated_at, 
    RENAME COLUMN created_at_2 TO created_at, RENAME COLUMN updated_at_2 TO updated_at;
	
/*В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы.
Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех записей.*/

SELECT 'value' FROM storehouses_products ORDER BY IF ('value' > 0, 1, 2), 'value';

/*4. (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае.
Месяцы заданы в виде списка английских названий ('may', 'august')*/

SELECT name FROM users WHERE DATE_FORMAT(birthday_at, '%m') IN ('may', 'august');

-- 5. (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса:
-- SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.
-- 
-- Так как категория с номер id 5 в моей таблице была ранее удалена,
-- вместо нее используется категория с номер id 3 
SELECT * FROM catalogs WHERE id IN (3, 1, 2);

SELECT 
    *
FROM
    catalogs WHERE id IN (3, 1, 2) 
ORDER BY CASE
    WHEN id = 3 THEN 0
    WHEN id = 1 THEN 1
    WHEN id = 2 THEN 2
END;

-- SELECT* FROM catalogs WHERE id IN (3, 1, 2) ORDER BY FIELD(id, 3, 1, 2); // Вариант от GB