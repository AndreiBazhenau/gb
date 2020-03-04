show databases;

use vk;

show tables;

select * from users;


-- 1. Пусть в таблице users поля created_at и updated_at оказались незаполненными.
--    Заполните их текущими датой и временем.

update users set updated_at = NOW();
update users set created_at = NOW();


-- 2. Таблица users была неудачно спроектирована. Записи created_at и updated_at были
-- заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10".
-- Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.

desc users;
alter table users modify column created_at datetime;
alter table users modify column updated_at datetime;

-- Агрегация данных
-- 1. Подсчитайте средний возраст пользователей в таблице users

-- количество пользователей
select count(*) from users;

select * from profiles;

-- создаём колонлу с возрастом
Alter table profiles add column age int after updated_at;

-- записываем в неё возроста
update profiles set age = TIMESTAMPDIFF(YEAR, birthday, NOW());

-- считаем средний возраст
select AVG(age) from profiles;


-- нерабочий вариант - создаёт временную колонку, из которой не вычислить средний возраст
-- SELECT
--  *,
--  TIMESTAMPDIFF(YEAR, birthday, NOW()) AS age
-- FROM
--  profiles;

-- 2. Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
--  Следует учесть, что необходимы дни недели текущего года, а не года рождения.

-- создаём колонлу с днём недели
Alter table profiles add column week_day int after age;

-- создаём колонку с числом и месяцем
alter table profiles add column num_mon varchar(10);

-- записываем день и месяц
update profiles set num_mon = datepart(year, birthday );

select * from profiles;

-- select *, weekday(birthday) as day from profiles;
-- записываем день недели
update profiles set week_day = weekday(now(year));
update profiles set week_day = weekday(year(year));