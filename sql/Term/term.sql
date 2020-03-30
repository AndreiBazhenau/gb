SHOW DATABASES;

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
 firts_prformace_russia DATE
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
 editor_id INT UNSIGNED
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