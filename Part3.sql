-- В этой части приведен код характерных выборок, хранимых процедур и триггеров.

-- Выборка соискателей, у которых есть хотя бы одно резюме
SELECT first_name, last_name
FROM emploees
WHERE id IN (SELECT emploee_id FROM cv)
ORDER BY last_name;

-- Количество вакансий у каждого из работодателей
SELECT e.name, COUNT(v.id)
FROM emploers e
LEFT JOIN vacancies v
ON e.id = v.emploer_id
GROUP BY e.id
ORDER BY e.name;

-- Выборка 10 наболее активных соискателей
SELECT user_id, SUM(actions) as actions FROM 
	(SELECT emploee_id, COUNT(*) as actions FROM cv
	GROUP BY emploee_id
	UNION
	SELECT emploee_id, COUNT(*) FROM responses_emploees
	GROUP BY emploee_id
	UNION
	SELECT emploee_id, COUNT(*) FROM messages
	GROUP BY emploee_id
    ) AS activities
GROUP BY id
ORDER BY actions DESC
LIMIT 10;

--Выборка топ 10 вакансий по зарплате
SELECT e.name, v.description, v.salary
FROM emploers e
INNER JOIN vacancies v
ON e.id = v.emploer_id
ORDER BY salary DESC
LIMIT 10;

-- Запрос, который выводит медианную предлагаемую зарплату в вакансиях и медианную желаемую зарплату в резюме
SELECT TOP(1) PERCENTILE_CONT(0.5)
       WITHIN GROUP (ORDER BY salary)
       OVER() AS median_salary
FROM vacancies
UNION
SELECT TOP(1) PERCENTILE_CONT(0.5)
       WITHIN GROUP (ORDER BY salary)
       OVER()
FROM cv;

-- Процедура, которая выводит количество новых резюме и новых вакансий за последние сутки
DROP PROCEDURE IF EXISTS statistics;
DELIMITER //
CREATE PROCEDURE statistics
  BEGIN
    SELECT COUNT(id) FROM cv WHERE created_at BETWEEN DATE_SUB(CURRENT_DATE, 1 DAY) AND CURRENT_DATE() AS cv;
    SELECT COUNT(id) FROM vacancies WHERE created_at BETWEEN DATE_SUB(CURRENT_DATE, 1 DAY) AND CURRENT_DATE() AS vacancies;
  END //
DELIMITER ;

-- Процедура, которая вычисляет какой процент соискателей работы получила отклик от работодателей
DROP PROCEDURE IF EXISTS invintations;
DELIMITER //
CREATE PROCEDURE invintations
  BEGIN
    SET @x = SELECT DISTINCT COUNT(emploee_id) FROM responses_emploers;
    SET @Y = SELECT COUNT(id) FROM emploees;
    SELECT @X/@y*100 AS 'succesfull emploees (%)';
  END //
DELIMITER ;

-- Триггер, который проверяет размер файлов в таблице фото и не дает заносить туда файлы больше 10 Мб
DROP TRIGGER IF EXISTS photo_insert;
DELIMITER //
CREATE TRIGGER photo_insert BEFORE INSERT ON photo
FOR EACH ROW
BEGIN
	IF (NEW.size) > 10485760 THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Uploaded file is to big';
    ELSE INSERT INTO photo ('size') VALUES (NEW.size)
	END IF;
END //
DELIMITER ;
