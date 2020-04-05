DROP TABLE IF EXISTS media;
CREATE TABLE media (
 movie_id INT UNSIGNED NOT NULL PRIMARY KEY,
 poster_link VARCHAR(255),
 trailer_link VARCHAR(255),
 picture_link VARCHAR(255)
);


DELIMITER //
DROP PROCEDURE IF EXISTS proc_links //
CREATE PROCEDURE proc_links ()
BEGIN
	DECLARE i INT DEFAULT 1;
    WHILE i < 101 DO
        INSERT INTO media (movie_id, poster_link, trailer_link, picture_link)
               VALUES (i, CONCAT('http://kinopoisk.ru/', i), 'http://kinopoisk.ru/', 'http://kinopoisk.ru/');
        SET i = i + 1;
    END WHILE;
END//
DELIMITER ;

CALL proc_links();

SELECT * FROM media;




