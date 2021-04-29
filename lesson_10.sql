/*Проанализировать какие запросы могут выполняться наиболее
часто в процессе работы приложения и добавить необходимые индексы.*/

-- для таблицы users можно в дополнение к индексу по первичному ключу, который создается автоматически, можно создать составной индекс по столбцам first_name и last_name
CREATE INDEX ind_users_name ON users(first_name, last_name);

-- для таблицы profiles можно в дополнение к индексам, которые создаются автоматически, можно создать индекс по столбцу birthday
CREATE INDEX ind_profiles_birthday ON profiles(birthday);

-- для таблицы communities можно в дополнение к индексам, которые создаются автоматически можно создать индекс по столбцу name
CREATE INDEX ind_communities_name ON communities(name);

-- В таблице communities_usres уже создан автоматически составной индекс по полям community_id И user_id. Эта комбинция является первичным ключом.

-- для таблицы friendship можно в дополнение к индексам, которые создаются автоматически можно создать индексы по столбцам requsted_at и confirmed_at
CREATE INDEX ind_friendship_requsted_at ON friendship(requsted_at);
CREATE INDEX ind_friendship_confirmed_at ON friendship(confirmed_at_at);

-- для таблицы media можно в дополнение к индексам, которые создаются автоматически можно создать индексы по столбцам name и size
CREATE INDEX ind_media_name ON media(name);
CREATE INDEX ind_media_size ON media(size);


-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100
WITH age AS (
    SELECT DATEDIFF(CURRENT_DATE, birthday) FROM profiles
    WHERE user_id IN (SELECT user_id FROM communities_users)
    )
SELECT DISTINCT community_users.user_id, users.first_name, users.last_name
  AVG(COUNT(*)) OVER w AS average, -- среднее количество пользователей в группах
  MIN(age) OVER w AS min_age,  -- самый молодой пользователь в группе
  MAX(age) OVER w AS max_age,  -- самый старший пользователь в группе
  COUNT(*) OVER w AS amount,  -- общее количество пользователей в группе
  COUNT(profiles.user_id) OVER(), -- всего пользователей в системе
  COUNT(*) OVER w AS amount / COUNT(profiles.user_id) OVER() * 100 AS "%%"  -- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе)
FROM communities_users
INNER JOIN users
ON communities_users.user_id = users.id
WINDOW w AS (PARTITION BY communities_users.community_id);