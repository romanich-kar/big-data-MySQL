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
   COUNT(user_id) OVER() / (SELECT COUNT(*) FROM communities) AS average, -- среднее количество пользователей в группах
   MIN(user_age) OVER w AS the_youngest, -- самый молодой пользователь в группе
   MAX(user_age) OVER w AS the_oldest, -- самый старший пользователь в группе
   COUNT(user_id) OVER w AS amount, -- общее количество пользователей в группе
   COUNT(user_id) OVER() AS Total, -- общее количество пользователей в группе
   COUNT(user_id) OVER w / COUNT(user_id) OVER()*100 AS '%%'  -- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе)
FROM t1
WINDOW w AS (PARTITION BY community_id);
