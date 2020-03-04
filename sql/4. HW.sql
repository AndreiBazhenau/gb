show tables;

SELECT * FROM users limit 10;

UPDATE users set updated_at = CURRENT_TIMESTAMP where created_at > updated_at;

SELECT * from profiles limit 10;

CREATE temporary table gender (gender char(1));
insert into gender values ('m'), ('f');
UPDATE profiles set gender = (SELECT gender from gender order by rand() limit 1);

update profiles set updated_at = CURRENT_TIMESTAMP where created_at > updated_at;

show tables;

select * from messages limit 10;

update messages set
  from_user_id = floor(1 + (rand() * 100)),
  to_user_id  = floor(1 + (rand() * 100));
 
SELECT count(*) from media;

select * from media_types;

truncate media_types;

insert into media_types (name) values
  ('photo'),
  ('video'),
  ('audio');
 
select * from media limit 10;

update media set media_type_id = FLOOR(1 + (RAND() * 3) );

update media set user_id = floor(1 + (rand() * 100));

update media set filename = floor(1 + (rand() * 10000000));
update media set filename = concat('https://dropbox/vk/file_', filename);

update media set metadata = CONCAT('{"owner":"',
  (select concat(first_name, ' ', last_name) from users where id = user_id),
  '"}');

desc media;

alter table media modify column metadata JSON;

select * from media_types;

select * from profiles limit 10;

alter table profiles modify column photo_id int;

update profiles set photo_id = (
  select id from media
    where media.user_id = profiles.user_id AND media_type_id = 1 LIMIT 1
 );

update profiles set photo_id = NULL WHERE photo_id  = 0;

select * from friendship limit 10;

UPDATE friendship SET
  user_id = FLOOR(1 + (RAND() * 100)),
  friend_id = FLOOR(1 + (RAND() * 100))
;

desc friendship;

select * from friendship_statuses;

truncate friendship_statuses;

INSERT into friendship_statuses (name)
  values ('Requested'), ('Confirmed'), ('Rejected');
  
 update friendship set status_id = floor(1 + (rand() * 3));
 
select * from communities;

delete from communities where id > 20;

select * from communities_users limit 10;

select * from communities_users;

UPDATE communities_users SET
  community_id = FLOOR(1 + (RAND() * 20)),
  user_id = FLOOR(1 + (RAND() * 100))
;

-- добавление новых таблиц
desc messages;

alter table messages add column read_at datetime;

alter table messages add column edited_at datetime;

desc profiles;

alter table profiles add column status_message varchar(255) after photo_id;

alter table communities add column media_id INT unsigned after name;
alter table communities add column motto varchar(255) after media_id;
alter table communities add column info TEXT after motto;

desc communities;

CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
  media_id INT UNSIGNED, 
  user_id INT UNSIGNED not null,
  head VARCHAR(255), 
  body MEDIUMTEXT, 
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP, 
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
); 

-- заполнение БД из fillDB происходило в отдельном окне и сохранено в другом скрипте
-- после заполнения таблицы из filldb приводитм в порядок даты
UPDATE posts SET updated_at = CURRENT_TIMESTAMP WHERE created_at > updated_at;