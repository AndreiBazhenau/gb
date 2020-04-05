-- Первичный расчёт рейтинга фильмов
DELIMITER //
CREATE PROCEDURE proc_rating()
BEGIN
	DECLARE i INT DEFAULT 1;
    WHILE i < 101 DO
        INSERT INTO rating (movie_id, kinopoisk_rating, imdb_rating)
               VALUES (i, (SELECT DISTINCT movie_id, AVG(mark) OVER(PARTITION BY movie_id) FROM review;));
               
        SET i = i + 1;
    END WHILE;

END//
DELIMITER ;

SELECT * FROM review;


DROP TABLE IF EXISTS rating;
DELIMITER //
INSERT INTO rating (movie_id, kinopoisk_rating)
  ((SELECT movie.id FROM movie //), 1);
DELIMITER ;







-- Триггер для расчёта средней оценки фильма


