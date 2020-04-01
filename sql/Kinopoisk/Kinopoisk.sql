-- Данная база данных преднаначена для хранения информации о фильмах (как документальных,
-- так и художественных), актёрах, режисёрах, сценаристах и все[ остальных людей,
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
 duration SMALLINT UNSIGNED,
 budget INT UNSIGNED,
 grosses_usa INT UNSIGNED,
 grossses_all INT UNSIGNED,
 first_performance DATE,
 firts_prformace_russia DATE,
 tv_show SET('0', '1') NOT NULL
);
DESC movie;
SELECT * FROM movie;



-- 2. genre list
DROP TABLE IF EXISTS genre_list;
CREATE TABLE genre_list (
 genre_id INT UNSIGNED NOT NULL,
 genre VARCHAR(255) NOT NULL
);
DESC genre_list;
SELECT * FROM genre_list;

INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('1', 'Comedy');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('2', 'Horror');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('3', 'Sci-Fi');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('4', 'Western');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('5', 'Melodrama');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('6', 'Musical');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('7', 'Action');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('8', 'Adventure');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('9', 'Fantasy');
INSERT INTO `genre_list` (`genre_id`, `genre`) VALUES ('10', 'Thriller');


-- 3. genre of the movie
DROP TABLE IF EXISTS genre;
CREATE TABLE genre (
 movie_id INT UNSIGNED NOT NULL,
 genre_id INT UNSIGNED NOT NULL
);
DESC genre;
SELECT * FROM genre;

-- =================================================================
SELECT name, year, genre
FROM movie JOIN genre ON movie.id = genre.movie_id
           JOIN genre_list ON genre.genre_id = genre_list.genre_id
WHERE name = 'Molestias cupiditate ipsum voluptas in.';
-- =================================================================


-- 4. role types
DROP TABLE IF EXISTS roles;
CREATE TABLE roles (
 role_id INT UNSIGNED NOT NULL,
 role VARCHAR(255) NOT NULL
);
DESC roles;
SELECT * FROM roles;

INSERT INTO `roles` (`role_id`, `role`) VALUES ('1', 'star');
INSERT INTO `roles` (`role_id`, `role`) VALUES ('2', 'actor');
INSERT INTO `roles` (`role_id`, `role`) VALUES ('3', 'director');
INSERT INTO `roles` (`role_id`, `role`) VALUES ('4', 'art director');
INSERT INTO `roles` (`role_id`, `role`) VALUES ('5', 'composer');
INSERT INTO `roles` (`role_id`, `role`) VALUES ('6', 'editor');
INSERT INTO `roles` (`role_id`, `role`) VALUES ('7', 'cameraman');


-- 5. staff
DROP TABLE IF EXISTS staff;
CREATE TABLE staff (
 staff_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(255) NOT NULL,
 f_name VARCHAR(255) NOT NULL,
 birthdate DATE,
 birth_place VARCHAR(255),
 death_date DATE,
 sex CHAR(1)
);
DESC staff;
SELECT * FROM staff;


-- 6. links between staff, movies and roles
DROP TABLE IF EXISTS movie_staff;
CREATE TABLE movie_staff (
 staff_id INT UNSIGNED NOT NULL,
 movie_id INT UNSIGNED NOT NULL,
 role_id INT UNSIGNED NOT NULL
);
DESC movie_staff;
SELECT * FROM movie_staff;


-- =================================================================

-- Запрос имени фильма, годы выхода, жанра
SELECT name, year, genre
FROM movie JOIN genre ON movie.id = genre.movie_id
           JOIN genre_list ON genre.genre_id = genre_list.genre_id
WHERE name = 'Molestias cupiditate ipsum voluptas in.';
-- =================================================================

-- Запрос всех людей, принимавших участие в съёмках фильма
-- Фильм намеренно может относиться одновременно к нескольким жанрам
SELECT movie.name, year, genre, staff.name, f_name, role
FROM movie JOIN genre ON movie.id = genre.movie_id
           JOIN genre_list ON genre.genre_id = genre_list.genre_id
           JOIN movie_staff ON movie.id = movie_staff.movie_id
           JOIN staff ON movie_staff.staff_id = staff.staff_id
           JOIN roles ON movie_staff.role_id = roles.role_id
WHERE movie.name = 'Atque est doloribus aut in eveniet rerum debitis vel.';



-- 'Molestias cupiditate ipsum voluptas in.'
SELECT name, genre
FROM movie
WHER name = 'Atque est doloribus aut in eveniet rerum debitis vel.';

-- 7. users
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


-- 8. reviews and marks
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


-- 9. movie rating  ПЕРЕСЧИТЫВАЕТСЯ по триггеру раз в день
DROP TABLE IF EXISTS rating;
CREATE TABLE rating (
 movie_id INT UNSIGNED NOT NULL PRIMARY KEY,
 kinopoisk_rating FLOAT(2) UNSIGNED,
 imdb_rating FLOAT(2) UNSIGNED
);
DESC rating;
SELECT * FROM rating;

-- 10. TV show & episods
DROP TABLE IF EXISTS tv_show;
CREATE TABLE tv_show (
 movie_id INT UNSIGNED NOT NULL PRIMARY KEY,
 number_seasons INT UNSIGNED,
 number_episods INT UNSIGNED
);
DESC tv_show;
SELECT * FROM tv_show;


-- 11. Media content & links
DROP TABLE IF EXISTS media;
CREATE TABLE media (
 movie_id INT UNSIGNED NOT NULL PRIMARY KEY,
 poster_link VARCHAR(255),
 trailer_link VARCHAR(255),
 picture_link VARCHAR(255)
);

-- 12. Awards list
DROP TABLE IF EXISTS award_list;
CREATE TABLE award_list (
 award_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
 award_name VARCHAR(255)
);
DESC award_list;
SELECT * FROM award_list;

INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('1', 'Oscar');
INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('2', 'Golden Globes');
INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('3', 'BAFTA Awards');
INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('4', 'C?sar Awards');
INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('5', 'Screen Actors Guild');
INSERT INTO `award_list` (`award_id`, `award_name`) VALUES ('6', 'Ника');

-- 13. Awarded movies
DROP TABLE IF EXISTS awards;
CREATE TABLE awards (
 movie_id INT UNSIGNED NOT NULL PRIMARY KEY,
 award_id INT UNSIGNED
);
DESC awards;
SELECT * FROM awards;


-- Sumilar movies. Table for recommendations
-- DROP TABLE IF EXISTS movie_like;
-- CREATE TABLE movie_like (
--  movie_id_1 INT UNSIGNED NOT NULL PRIMARY KEY,
--  movie_id_2 INT UNSIGNED NOT NULL
-- );
-- DESC movie_like;
-- SELECT * FROM movie_like;
-- https://ru.stackoverflow.com/questions/180018/mysql-как-хранить-ключевые-слова-теги-к-посту-блога

