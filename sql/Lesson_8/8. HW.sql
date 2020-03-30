DESC profiles;

ALTER TABLE profiles MODIFY COLUMN photo_id INT(10) UNSIGNED;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE,
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;
      

DESC messages;

ALTER TABLE messages
  ADD CONSTRAINT message_from_user_id_fk
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_to_user_id_fk
    FOREIGN KEY (to_user_id) REFERENCES users(id);


-- ==============
-- 2. Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей

     
SELECT (SELECT IF(likes.target_type_id = 2, 1, 0))
      FROM profiles JOIN likes ON profiles.user_id = likes.user_id
      ORDER BY profiles.birthday DESC
      LIMIT 10;

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?
 
SELECT gender, COUNT(likes.user_id)
FROM profiles JOIN likes ON profiles.user_id = likes.user_id
GROUP BY gender;



-- 4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети

SELECT users.id, (COUNT(likes.user_id) + COUNT(messages.from_user_id) + COUNT(posts.user_id)) AS activity
FROM users JOIN likes ON users.id = likes.user_id
           JOIN messages ON users.id = messages.from_user_id
           JOIN posts ON users.id = posts.user_id
GROUP BY users.id
ORDER BY activity
LIMIT 10;
