
SELECT DISTINCT communities_users.user_id, users.first_name, users.last_name,
  COUNT(communities_users.user_id) OVER() / (SELECT COUNT(*) FROM communities) AS average, -- среднее количество пользователей в группах
  FIRST_VALUE(CONCAT_WS(' ', users.first_name, users.last_name)) OVER w_2 AS the_youngest, -- самый молодой пользователь в группе
  LAST_VALUE(CONCAT_WS(' ', users.first_name, users.last_name)) OVER w_2 AS the_oldest,  -- самый старший пользователь в группе
  COUNT(*) OVER w_1 AS amount,  -- общее количество пользователей в группе
  COUNT(users.id) OVER(), -- всего пользователей в системе
  COUNT(*) OVER w_1 / COUNT(users.id) OVER() * 100 AS "%%"  -- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе)
FROM communities_users
INNER JOIN users
ON communities_users.user_id = users.id
INNER JOIN communities_users
ON communities_users.community.id = communities.id
WINDOW w_1 AS (PARTITION BY communities_users.community_id),
w_2 AS (PARTITION BY communities.id ORDER BY ages.age);



WITH t1 as (
  SELECT 
    с.name as community_name,
    с.id as community_id,
    u.id as user_id,
    DATEDIFF(CURRENT_DATE, birthday) as user_age
  FROM communities с 
  INNER JOIN communities_users cu ON (
    cu.community_id = с.id
  )
  INNER JOIN users u ON (
    cu.user_id = u.id 
  )
  INNER JOIN profiles p ON (
    p.user_id = u.id 
  )
)
SELECT 
  COUNT(user_id) OVER() / (SELECT COUNT(*) FROM communities) AS average -- среднее количество пользователей в группах
FROM t1
WINDOW w AS (PARTITION BY community_id);

