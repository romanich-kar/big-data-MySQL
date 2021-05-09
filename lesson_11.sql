/*Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.*/

CREATE TABLE logs (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
name_of_table VARCHAR(100) NOT NULL,
row_id INT UNSIGNED NOT NULL,
row_name VARCHAR(255) NOT NULL
) ENGINE=Archive;

DELIMITER //
CREATE TRIGGER users_insert ON users
FOR EACH ROW
  BEGIN
    INSERT INTO logs VALUES (NULL, DEFAULT, 'users', NEW.id, NEW.name);
  END//
  
  -- (По желанию) Создайте SQL-запрос, который помещает в таблицу users миллион пользователей
DELIMITER //
CREATE PROCEDURE users_million  
  BEGIN
    SET @n = 1;
    REPEAT
      BEGIN
      INSERT INTO users('id', 'name') VALUES (@n, CONCAT_WS('-', 'User', @n));
      SET @n = @n + 1;
      UNTIL @n <= 1000000;
    END REPEAT;
  END //
  DELIMITER ;
  
-- Практическое задание по теме NoSQL
-- 1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.
  
-- Для этого надо использовать хэш-данные: ключ - имя пользователя, значение - ip-адрес.
HSET user_name 127.1.2.3.1
  
-- 2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.

-- Создадим две хэш таблицы, первая с поиском email по имени, вторая - наоборот.
HSET user_name email
HSET email user_name
HGET user_name 'example@mail.ru' -- поиск имени по почте
HGET email 'user_name' -- поиск почты по имени

-- 3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.
shop.catalogs.insertMany( [
      { _id: 1, name: "Процессоры"},
      { _id: 2, name: "Материнские платы"},
      { _id: 3 ,name: "Видеокарты"}
   ] );
shop.products.insert({
    name: "Intel Core i7-9700",
    description: "Процессор для настольных персональных компьютеров, основанных на платформе Intel.",
    price: 9990.00,
    catalog: 1
});
shop.products.insert({
    name: "Материнская плата ASUS PRIME A320M-K",
    description: "Материнская плата на основе чипсета AMD A320",
    price: 4000.00,
    catalog: 2
});
shop.products.insert({
    name: "Видеокарта GIGABYTE GeForce GTX 1050 Ti",
    description: " Видеокарты серии GeForce GTX 10 созданы на основе архитектуры Pascal и обеспечивают увеличение производительности до 3 раз по сравнению с видеокартами предыдущего поколения, а также они поддерживают новые игровые технологии.",
    price: 23000.00,
    catalog: 3
});