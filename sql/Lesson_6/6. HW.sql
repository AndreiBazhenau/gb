-- 2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей.

-- таблица: лайкнутый пользователь, кол-во лайков у него, его возраст
SELECT target_id, COUNT(id), 
   (SELECT TIMESTAMPDIFF(YEAR, birthday, NOW()) FROM profiles WHERE target_id = profiles.user_id) AS age
FROM likes
GROUP BY target_id
ORDER BY age
LIMIT 10;

-- создаём представление на основе таблицы выше
DROP VIEW IF EXISTS sum_likes_10_youngest;
CREATE VIEW sum_likes_10_youngest AS
SELECT target_id, COUNT(id) as num_like, 
   (SELECT TIMESTAMPDIFF(YEAR, birthday, NOW()) FROM profiles WHERE target_id = profiles.user_id) AS age
FROM likes
GROUP BY target_id
ORDER BY age
LIMIT 10;

-- выводим лайки у 10 самых молодых пользователей
SELECT SUM(num_like) FROM sum_likes_10_youngest;

-- ======================================

SELECT * FROM profiles LIMIT 10;
SELECT * FROM likes LIMIT 10;

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT COUNT(id), (SELECT gender FROM profiles WHERE profiles.user_id = likes.user_id) AS gender
FROM likes
GROUP BY gender;

-- =======================================

-- 4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

SHOW TABLES;
SELECT * FROM users LIMIT 10;
SELECT * FROM likes LIMIT 10;
SELECT * FROM messages LIMIT 10;
SELECT * FROM posts LIMIT 10;


SELECT id,
       (SELECT COUNT(user_id) FROM likes WHERE likes.user_id = users.id) AS num_likes,
       (SELECT COUNT(from_user_id) FROM messages WHERE messages.from_user_id = users.id) AS num_messages,
       (SELECT COUNT(user_id) FROM posts WHERE posts.user_id = users.id) AS num_posts,
       (SELECT num_likes + num_messages + num_posts) AS num_activity
FROM users
ORDER BY num_activity
LIMIT 10;

