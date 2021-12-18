-- 1. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы
-- приложения и добавить необходимые индексы.

SHOW DATABASES;
USE vk;
SHOW TABLES;
SELECT * FROM users;
CREATE INDEX users_email_phone_idx ON users(email, phone);
SHOW INDEX FROM users;
SELECT * FROM profiles;
CREATE INDEX profiles_user_id_birthday_idx ON profiles(user_id, birthday);
SHOW INDEX FROM profiles;
SELECT * FROM messages;
CREATE INDEX messages_to_user_id_from_user_id_idx ON messages(to_user_id, from_user_id);
SHOW INDEX FROM messages;


-- ==============================================================================

-- вывод всех групп и всех пользователей
SELECT * FROM communities JOIN communities_users ON communities.id = communities_users.community_id
                 JOIN profiles ON communities_users.user_id = profiles.user_id;

-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый пожилой пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100
        
SELECT COUNT(user_id) FROM communities_users;
SELECT DISTINCT name,
     COUNT(communities_users.user_id) OVER() / (SELECT COUNT(*) FROM communities) AS avg_num_user_in_group,
     FIRST_VALUE(profiles.user_id) OVER(PARTITION BY name ORDER BY profiles.birthday DESC) AS yungest_user_id,
     FIRST_VALUE(profiles.user_id) OVER(PARTITION BY name ORDER BY profiles.birthday) AS oldest_user_id,
     COUNT(communities_users.user_id) OVER(PARTITION BY name) AS sum_user_in_group,
     COUNT(*) OVER() AS sum_users,
     COUNT(communities_users.user_id) OVER(PARTITION BY name) / COUNT(*) OVER() * 100 AS 'users by group, %'
FROM communities JOIN communities_users ON communities.id = communities_users.community_id
                 JOIN profiles ON communities_users.user_id = profiles.user_id;
