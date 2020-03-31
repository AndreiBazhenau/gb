-- Данная база данных преднаначена для хранения информации о фильмах (как документальных,
-- так и художественных), актёрах, режисёрах, сценаристах и всех остальных людей,
-- задействованных в съёмках. Также в БД храниться информация о пользователях системы,
-- реализована система хранения отзывов и оценок фильмов. Рассчитываются рейтинги фильмов.
-- БД организована по принципу подобия сайта kinopoisk.ru


SHOW DATABASES;
DROP DATABASE IF EXISTS kinopoisk;
CREATE DATABASE kinopoisk;
USE kinopoisk;
SHOW TABLES;


-- 1. main table with movies
DROP TABLE IF EXISTS movie;
CREATE TABLE movie (
 id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 moto VARCHAR(255),
 year YEAR(4),
 duration TIME,
 budget INT UNSIGNED,
 grosses_usa INT UNSIGNED,
 grossses_all INT UNSIGNED,
 first_performance DATE,
 firts_prformace_russia DATE,
 tv_show SET('0', '1')
);
DESC movie;
SELECT * FROM movie;


-- 2. style or ganre of movie
DROP TABLE IF EXISTS style;
CREATE TABLE style (
 movie_id INT UNSIGNED NOT NULL,
 style_id INT UNSIGNED NOT NULL
);
DESC style;
SELECT * FROM style;


-- 3. actors, directors and others who made a movie
DROP TABLE IF EXISTS cast;
CREATE TABLE cast (
 id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 f_name VARCHAR(255) NOT NULL,
 birthdate DATE,
 birth_place VARCHAR(255),
 death_date DATE,
 sex CHAR(1)
);
DESC cast;
SELECT * FROM cast;


-- 4. connection between movie and staff
DROP TABLE IF EXISTS staff;
CREATE TABLE staff (
 movie_id INT UNSIGNED NOT NULL,
 star_id INT UNSIGNED,
 actor_id INT UNSIGNED,
 director_id INT UNSIGNED,
 composer_id INT UNSIGNED,
 art_director_id INT UNSIGNED,
 editor_id INT UNSIGNED,
 cameraman_id INT UNSIGNED
);
DESC staff;
SELECT * FROM staff;


-- 5. users
DROP TABLE IF EXISTS users;
CREATE TABLE users (
 user_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
 email VARCHAR(120) NOT NULL UNIQUE,
 name VARCHAR(255) DEFAULT 'User',
 f_name VARCHAR(255),
 birthday DATE
);
DESC users;
SELECT * FROM users;


-- 6. reviews and marks
DROP TABLE IF EXISTS review;
CREATE TABLE review (
 movie_id INT UNSIGNED NOT NULL PRIMARY KEY,
 user_id INT UNSIGNED NOT NULL,
 mark TINYINT UNSIGNED,
 review_title VARCHAR(255),
 review_text TEXT
);
DESC review;
SELECT * FROM review;


-- 7. movie rating  ПЕРЕСЧИТЫВАЕТСЯ по триггеру раз в день
DROP TABLE IF EXISTS rating;
CREATE TABLE rating (
 movie_id INT UNSIGNED NOT NULL PRIMARY KEY,
 kinopoisk_rating FLOAT(2) UNSIGNED,
 imdb_rating FLOAT(2) UNSIGNED
);
DESC rating;
SELECT * FROM rating;

-- 8. TV show & episods
DROP TABLE IF EXISTS tv_show;
CREATE TABLE tv_show (
 movie_id INT UNSIGNED NOT NULL PRIMARY KEY,
 number_seasons INT UNSIGNED,
 number_episods INT UNSIGNED
);
DESC tv_show;
SELECT * FROM tv_show;


-- 9. Sumilar movies. Table for recommendations
DROP TABLE IF EXISTS movie_like;
CREATE TABLE movie_like (
 movie_id_1 INT UNSIGNED NOT NULL PRIMARY KEY,
 movie_id_2 INT UNSIGNED NOT NULL
);
DESC movie_like;
SELECT * FROM movie_like;

-- 10. Media content & links
DROP TABLE IF EXISTS media;
CREATE TABLE media (
 movie_id INT UNSIGNED NOT NULL PRIMARY KEY,
 poster_link VARCHAR(255),
 trailer_link VARCHAR(255),
 picture_link VARCHAR(255)
);

-- 11. Awards list
DROP TABLE IF EXISTS award_list;
CREATE TABLE award_list (
 award_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
 award_name VARCHAR(255)
);
DESC award_list;
SELECT * FROM award_list;


-- 12. Awarded movies
DROP TABLE IF EXISTS awards;
CREATE TABLE awards (
 movie_id INT UNSIGNED NOT NULL PRIMARY KEY,
 award_id INT UNSIGNED
);
DESC awards;
SELECT * FROM awards;



