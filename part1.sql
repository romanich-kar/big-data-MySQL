/*За основу для построения базы данных принят ресурс Headhunter.ru. База данных будет использоваться для хранения данных работодателей и соискателей, их откликов и сообщений.
В первой части работы идет создание БД и входящих в нее таблиц, задание ограничений, создание индексов и представлений.*/

-- Создаем базу данных.

CREATE DATABASE IF NOT EXISTS hh;
USE hh;

-- Создаем таблицы и связи между ними.
DROP TABLE IF EXISTS emploees;
CREATE TABLE emploees (
  id int(11) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  first_name varchar(100) NOT NULL COMMENT 'Имя пользователя',
  last_name varchar(100) NOT NULL COMMENT 'Фамилия пользователя',
  patronymic varchar(100) COMMENT DEFAULT NULL 'Отчество пользователя',
  photo_id int(11) UNSIGNED COMMENT 'Внешний ключ, id фотографии пользователя',
  email varchar(120) NOT NULL UNIQUE KEY COMMENT 'Почта',
  phone varchar(100) NOT NULL UNIQUE KEY COMMENT 'Телефон',
  `password` varchar(100) NOT NULL COMMENT 'Пароль',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Таблица соискатели';
CREATE INDEX ind_emploees_name ON emploees(first_name, last_name); -- создаем составной индекс для полей Имя пользователя и Фамилия пользователя

DROP TABLE IF EXISTS `profiles`;
CREATE TABLE `profiles` (
  emploee_id int(11) unsigned NOT NULL PRIMARY KEY COMMENT 'Ссылка на соискателя, внешний ключ',
  gender char(1) NOT NULL COMMENT 'Пол',
  birthday date DEFAULT NULL COMMENT 'Дата рождения',
  city varchar(120) DEFAULT NULL COMMENT 'Город проживания',
  country varchar(120) DEFAULT NULL COMMENT 'Страна проживания',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Таблица Профили';
ALTER TABLE `profiles` ADD CONSTRAINT fk_profiles_epmploees FOREIGN KEY (emploee_id) REFERENCES emploees (id); -- добавляем внешний ключ для поля emploee_id
CREATE INDEX ind_profiles_location ON `profiles`(city, country); -- создаем составной индекс для полей Город проживания и Страна проживания

DROP TABLE IF EXISTS photo;
CREATE TABLE photo (
  id int(11) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  emploee_id int(11) unsigned NOT NULL COMMENT 'Ссылка на соискателя, который загрузил фото. Внешний ключ',
  filename varchar(255) NOT NULL COMMENT 'Путь к файлу',
  size int(11) NOT NULL COMMENT 'Размер файла',
  metadata longtext DEFAULT NULL COMMENT 'Метаданные файла',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Таблица Фото';
ALTER TABLE photo ADD CONSTRAINT fk_photo_epmploees FOREIGN KEY (emploee_id) REFERENCES emploees (id); -- добавляем внешний ключ для поля emploee_id
ALTER TABLE emploees ADD CONSTRAINT fk_emploees_photo FOREIGN KEY (photo_id) REFERENCES photo (id); -- добавляем внешний ключ для поля photo_id в таблицу emploees
CREATE INDEX ind_photo_filename ON photo(filename); -- создаем индекс для поля filename

DROP TABLE IF EXISTS emploers;
CREATE TABLE emploers (
  id int(11) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name varchar(255) NOT NULL COMMENT 'Название компании',
  logo_id int(11) UNSIGNED COMMENT 'Внешний ключ, id логотипа компании',
  city varchar(120) DEFAULT NULL COMMENT 'Город расположения компании',
  country varchar(120) DEFAULT NULL COMMENT 'Страна расположения компании',
  adress text DEFAULT NULL COMMENT 'Адрес компании',
  email varchar(120) NOT NULL UNIQUE KEY COMMENT 'Почта компании',
  phone varchar(100) NOT NULL UNIQUE KEY COMMENT 'Телефон компании',
  branch_id smallint(5) unsigned DEFAULT NULL COMMENT 'Отрасль компании, внешний ключ',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Таблица Работодатели';
CREATE INDEX ind_emploers_name ON emploers(name); -- создаем индекс для поля name
CREATE INDEX ind_emploers_location ON emploers(city, country); -- создаем составной индекс для полей Город расположения компании и Страна расположения компании

DROP TABLE IF EXISTS logo;
CREATE TABLE logo (
  id int(11) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  emploer_id int(11) unsigned NOT NULL COMMENT 'Ссылка на работодателя, который загрузил логотип компании. Внешний ключ',
  filename varchar(255) NOT NULL COMMENT 'Путь к файлу',
  size int(11) NOT NULL COMMENT 'Размер файла',
  metadata longtext DEFAULT NULL COMMENT 'Метаданные файла',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Таблица Логотипы';
CREATE INDEX ind_logo_filename ON logo(filename); -- создаем индекс для поля filename
    
DROP TABLE IF EXISTS branches;
CREATE TABLE branches (
  id smallint(5) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name varchar(150) NOT NULL COMMENT 'Название отрасли',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Таблица Отрасли';
  ALTER TABLE emploers ADD CONSTRAINT fk_emploers_branches FOREIGN KEY (branch_id) REFERENCES branches (id); -- добавляем внешний ключ для поля branch_id в таблицу emploers
  
DROP TABLE IF EXISTS work_expirience;
CREATE TABLE  work_expirience (
  id tinyint(2) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name varchar(100) NOT NULL COMMENT 'Требуемый опыт работы',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Таблица Опыт работы';

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  id tinyint(2) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name varchar(150) NOT NULL COMMENT 'Вид графика работы',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Таблица График работы';

DROP TABLE IF EXISTS employment_type;
CREATE TABLE  employment_type (
  id tinyint(2) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  name varchar(100) NOT NULL COMMENT 'Тип занятости',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Таблица Тип занятости';

DROP TABLE IF EXISTS cv;
CREATE TABLE cv (
  id int(11) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  emploee_id int(11) unsigned NOT NULL COMMENT 'Ссылка на соискателя, внешний ключ',
  photo_id int(11) UNSIGNED DEFAULT NULL COMMENT 'Внешний ключ, id фотографии пользователя',
  description text DEFAULT NULL COMMENT 'Текст резюме',
  city varchar(120) DEFAULT NULL COMMENT 'Город поиска работы',
  country varchar(120) DEFAULT NULL COMMENT 'Страна поиска работы',
  salary varchar (100) DEFAULT NULL COMMENT 'Желаемая зарплата'
  branch_id smallint(5) unsigned DEFAULT NULL COMMENT 'id отрасли компании, внешний ключ',
  work_expirience_id tinyint(2) unsigned DEFAULT NULL COMMENT 'id опыта работы, внешний ключ', 
  schedule_id tinyint(2) unsigned DEFAULT NULL COMMENT 'id графика работы, внешний ключ', 
  employment_type_id tinyint(2) unsigned DEFAULT NULL COMMENT 'id типа занятости, внешний ключ',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Таблица Резюме';
ALTER TABLE cv ADD CONSTRAINT fk_cv_photo FOREIGN KEY (photo_id) REFERENCES photo (id); -- добавляем внешний ключ для поля photo_id
ALTER TABLE cv ADD CONSTRAINT fk_cv_branches FOREIGN KEY (branch_id) REFERENCES branches (id); -- добавляем внешний ключ для поля branch_id
ALTER TABLE cv ADD CONSTRAINT fk_cv_work_expirience FOREIGN KEY (work_expirience_id) REFERENCES work_expirience (id); -- добавляем внешний ключ для поля work_expirience_id
ALTER TABLE cv ADD CONSTRAINT fk_cv_schedule FOREIGN KEY (schedule_id) REFERENCES `schedule` (id); -- добавляем внешний ключ для поля schedule_id
ALTER TABLE cv ADD CONSTRAINT fk_cv_employment_type FOREIGN KEY (employment_type_id) REFERENCES employment_type (id); -- добавляем внешний ключ для поля schedule_id
CREATE INDEX ind_cv_location ON cv(city, country); -- создаем составной индекс для полей Город поиска работы и Страна поиска работы
CREATE INDEX ind_cv_salary ON cv(salary); -- создаем индекс для поля зарплата

DROP TABLE IF EXISTS vacancies;
CREATE TABLE vacancies (
  id int(11) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  emploer_id int(11) unsigned NOT NULL COMMENT 'Ссылка на работодателя, внешний ключ',
  logo_id int(11) UNSIGNED DEFAULT NULL COMMENT 'Внешний ключ, id логотипа компании',
  name varchar(255) NOT NULL COMMENT 'Название вакансии',
  description text DEFAULT NULL COMMENT 'Описание вакансии',
  city varchar(120) DEFAULT NULL COMMENT 'Город, где открыта вакансия',
  country varchar(120) DEFAULT NULL COMMENT 'Страна, где открыта вакансия',
  salary varchar (100) DEFAULT NULL COMMENT 'Предлагаемая зарплата'
  branch_id smallint(5) unsigned DEFAULT NULL COMMENT 'id отрасли компании, внешний ключ',
  work_expirience_id tinyint(2) unsigned DEFAULT NULL COMMENT 'id опыта работы, внешний ключ', 
  schedule_id tinyint(2) unsigned DEFAULT NULL COMMENT 'id графика работы, внешний ключ', 
  employment_type_id tinyint(2) unsigned DEFAULT NULL COMMENT 'id типа занятости, внешний ключ',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Таблица Вакансии';
ALTER TABLE vacancies ADD CONSTRAINT fk_vacancies_logo FOREIGN KEY (logo_id) REFERENCES logo (id); -- добавляем внешний ключ для поля logo_id
ALTER TABLE vacancies ADD CONSTRAINT fk_vacancies_branches FOREIGN KEY (branch_id) REFERENCES branches (id); -- добавляем внешний ключ для поля branch_id
ALTER TABLE vacancies ADD CONSTRAINT fk_vacancies_work_expirience FOREIGN KEY (work_expirience_id) REFERENCES work_expirience (id); -- добавляем внешний ключ для поля work_expirience_id
ALTER TABLE vacancies ADD CONSTRAINT fk_vacancies_schedule FOREIGN KEY (schedule_id) REFERENCES `schedule` (id); -- добавляем внешний ключ для поля schedule_id
ALTER TABLE vacancies ADD CONSTRAINT fk_vacancies_employment_type FOREIGN KEY (employment_type_id) REFERENCES employment_type (id); -- добавляем внешний ключ для поля employment_type_id
CREATE INDEX ind_vacancies_location ON vacancies(city, country); -- создаем составной индекс для полей Город, где открыта вакансия и Страна, где открыта вакансия
CREATE INDEX ind_vacancies_salary ON vacancies(salary); -- создаем индекс для поля зарплата
    
DROP TABLE IF EXISTS responses_emploees;
CREATE TABLE responses_emploees (
  emploee_id int(11) unsigned NOT NULL COMMENT 'Ссылка на соискателя, внешний ключ',
  emploer_id int(11) unsigned NOT NULL COMMENT 'Ссылка на работодателя, внешний ключ',
  vacancy_id int(11) unsigned NOT NULL COMMENT 'Ссылка на вакансию, внешний ключ',
  responsed_at datetime DEFAULT current_timestamp() COMMENT 'Время отклика на вакансию',
  PRIMARY KEY (emploee_id, emploer_id, vacancy_id)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Таблица Отклики соискателей';
ALTER TABLE responses_emploees ADD CONSTRAINT fk_responses_emploees_emploees FOREIGN KEY (emploee_id) REFERENCES emploees (id); -- добавляем внешний ключ для поля emploee_id
ALTER TABLE responses_emploees ADD CONSTRAINT fk_responses_emploees_emploers FOREIGN KEY (emploer_id) REFERENCES emploers (id); -- добавляем внешний ключ для поля emploers_id
ALTER TABLE responses_emploees ADD CONSTRAINT fk_responses_emploees_vacancy FOREIGN KEY (vacancy_id) REFERENCES vacancies (id); -- добавляем внешний ключ для поля vacancy_id 
  
DROP TABLE IF EXISTS responses_emploers;
CREATE TABLE responses_emploers (
  emploee_id int(11) unsigned NOT NULL COMMENT 'Ссылка на соискателя, внешний ключ',
  emploer_id int(11) unsigned NOT NULL COMMENT 'Ссылка на работодателя, внешний ключ',
  cv_id int(11) unsigned NOT NULL COMMENT 'Ссылка на резюме, внешний ключ',
  responsed_at datetime DEFAULT current_timestamp() COMMENT 'Время отклика на резюме',
  PRIMARY KEY (emploee_id, emploer_id, cv_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Таблица Отклики работодателей';
ALTER TABLE responses_emploers ADD CONSTRAINT fk_responses_emploers_emploees FOREIGN KEY (emploee_id) REFERENCES emploees (id); -- добавляем внешний ключ для поля emploee_id
ALTER TABLE responses_emploers ADD CONSTRAINT fk_responses_emploers_emploers FOREIGN KEY (emploer_id) REFERENCES emploers (id); -- добавляем внешний ключ для поля emploers_id
ALTER TABLE responses_emploers ADD CONSTRAINT fk_responses_emploers_vacancy FOREIGN KEY (cv_id) REFERENCES cv (id); -- добавляем внешний ключ для поля cv_id 

DROP TABLE IF EXISTS messages;
CREATE TABLE messages (
  id int(11) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'Идентификатор строки',
  emploee_id int(11) unsigned NOT NULL COMMENT 'Ссылка на соискателя, внешний ключ',
  emploer_id int(11) unsigned NOT NULL COMMENT 'Ссылка на работодателя, внешний ключ',
  content text NOT NULL COMMENT 'Текст сообщения',
  created_at datetime DEFAULT current_timestamp() COMMENT 'Время создания строки'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Сообщения';
  ALTER TABLE messages ADD CONSTRAINT fk_messages_emploees FOREIGN KEY (emploee_id) REFERENCES emploees (id); -- добавляем внешний ключ для поля emploee_id
  ALTER TABLE messages ADD CONSTRAINT fk_messages_emploers FOREIGN KEY (emploer_id) REFERENCES emploers (id); -- добавляем внешний ключ для поля emploer_id
  CREATE INDEX ind_messages_created_at ON messages(created_at); -- создем индекс для поля created_at
  
-- создадим несколько представлений для стандартных выборок:
-- представление для просмотра данных соискателей
CREATE OR REPLACE VIEW users AS 
  SELECT (e.first_name, e.last_name, e.photo_id, p.gender, p.birthday, p.city, p.country) 
    FROM emploees e
       LEFT JOIN `profiles` p
       ON emploees.id = profiles.emploee_id
    ORDER BY (e.last_name, e.first_name);
     
-- представление для просмотра данных работодателей
CREATE OR REPLACE VIEW emploer AS
  SELECT (name, logo_id, city, country, phone, email, branch_id)
  FROM emploers
  ORDER BY name;
    
-- представление для просмотра суммарного предложения и спроса по зарплатам
CREATE OR REPLACE VIEW salary AS
  SELECT SUM(salary) AS offer
  FROM vacancies
  UNION
  SELECT SUM(salary) AS demand
  FROM cv;
  
  -- Создадим пользователя и наделим его правами просмотра приведенных выше представлений
DROP USER IF EXISTS 'reader'@'localhost';
CREATE USER 'reader'@'localhost' IDENTIFIED WITH sha256_password BY 'password';
GRANT SELECT ON hh.users, hh.emploer, hh.salary TO 'reader'@'localhost';