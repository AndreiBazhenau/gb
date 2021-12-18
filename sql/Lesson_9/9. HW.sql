-- Практическое задание по теме “Транзакции, переменные, представления”

-- 1.	В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.

USE shop;
USE sample;
SHOW tables;
SELECT * FROM users;


START TRANSACTION;
INSERT INTO sample.users (id, name) SELECT id, name FROM shop.users WHERE id = 1;
DELETE FROM shop.users WHERE id = 1;
COMMIT;

-- 2. Создайте представление, которое выводит название name товарной позиции из таблицы
-- products и соответствующее название каталога name из таблицы catalogs.

USE shop;
SHOW tables;
SELECT * FROM products;
SELECT * FROM catalogs;

CREATE VIEW name_name
AS SELECT products.name AS prod_name, catalogs.name AS cat_name
FROM products JOIN catalogs ON products.catalog_id = catalogs.id;

SELECT * FROM name_name;


-- ================================================================================

-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"

-- 1.	Создайте хранимую функцию hello(), которая будет возвращать приветствие,
-- в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна возвращать
-- фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать фразу "Добрый день",
-- с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".

DROP FUNCTION IF EXISTS hello;

DELIMITER //
CREATE FUNCTION hello()
RETURNS VARCHAR(255) DETERMINISTIC
BEGIN
	IF  6 > HOUR(NOW()) AND HOUR(NOW()) <=11  THEN RETURN 'Доброе утро';
    ELSEIF  12 >= HOUR(NOW()) AND HOUR(NOW()) <=18  THEN RETURN 'Добрый день';
    ELSEIF  18 >= HOUR(NOW()) AND HOUR(NOW()) <=23  THEN RETURN 'Добрый вечер';
    ELSEIF  0  >= HOUR(NOW()) AND HOUR(NOW()) <=6   THEN RETURN 'Доброй ночи';
	ELSE RETURN 'Непонятное время суток';
	END IF;
    
END//

DELIMITER ;


SELECT hello();



-- 2. В таблице products есть два текстовых поля: name с названием товара и
-- description с его описанием. Допустимо присутствие обоих полей или одно из них.
-- Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема.
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены.
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.

SELECT * FROM products;

SHOW TRIGGERS;

DELIMITER //

DROP TRIGGER IF EXISTS null_exclude//

CREATE TRIGGER null_exclude BEFORE UPDATE ON products
FOR EACH ROW
BEGIN
	IF (NEW.name IS NULL) AND (NEW.description IS NULL) THEN
	   SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Name and Description can not be NULL simultaniously';
	END IF;
END//

DELIMITER ;


-- Проверка
SELECT * FROM products;

INSERT INTO products (name, description, price, catalog_id)
	VALUE
    ('Intel Core i9-9135', 'Процессор на платформе Intel.', 15000.00, 1),
	('Intel Core i5-5400', 'Процессор на платформе Intel.', 8000.00, 1);

INSERT INTO products (price, catalog_id)
	VALUE
    (9890.00, 1),
	(15700.00, 1);