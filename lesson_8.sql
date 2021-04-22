/*Пусть задан некоторый пользователь.
Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользоваетелем. По-прежнему делаем это для пользователя с id=1.*/

WITH M AS (
SELECT to_user_id AS friend_id FROM messages WHERE from_user_id = 1
UNION ALL
SELECT from_user_id  FROM messages WHERE to_user_id = 1
)
SELECT users.first_name, users.last_name, COUNT(*) as amount FROM M
JOIN users U
ON U.id = M.friend_id
GROUP BY friend_id
ORDER BY amount DESC
LIMIT 1;

/*Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.
(Для варианта реализации лайков в отедльных таблицах. Считаем только непосредственно лайки профиля)*/
WITH the_youngest AS
(
SELECT id FROM users U
  JOIN profiles P
  ON P.user_id = U.id
ORDER BY P.birthday
LIMIT 10
)
SELECT COUNT(LP.user_id)
FROM likes_profile LP
RIGHT JOIN the_youngest
ON LP.user_id IN (the_youngest);

-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT IF(
	(SELECT COUNT(id) FROM `profiles`
    JOIN likes_profile USING(user_id)
	WHERE gender='M')
	) 
	> 
	(SELECT COUNT(id) FROM `profiles`
    JOIN likes_profile USING(user_id)
	WHERE gender='F')
	), 
   'male', 'female');
   
-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
SELECT U.id, U.first_name, U.last_name, M.user_id, LP.from_user_id, MES.from_user_id, P.user_id, COUNT(*) as actions 
FROM users U
JOIN media M
JOIN likes_profile LP
JOIN messages MES
JOIN posts P
ON U.id = M.user_id = LP.from_user_id = MES.from_user_id = P.user_id
GROUP BY id
ORDER BY actions
LIMIT 10;