-- Практическое задание по теме “Оптимизация запросов”
-- 1. Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах
-- users, catalogs и products в таблицу logs помещается время и дата создания записи,
-- название таблицы, идентификатор первичного ключа и содержимое поля name.

USE shop;

DROP TABLE IF EXISTS logs;

CREATE TABLE logs (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  created_at DATETIME DEFAULT NOW(),
  table_name VARCHAR(255),
  primary_key INT UNSIGNED,
  name VARCHAR(255)
) COMMENT = 'Таблица logs типа Archive' ENGINE = Archive;


DELIMITER //

DROP TRIGGER IF EXISTS users_log //
CREATE TRIGGER users_log AFTER INSERT ON users
 FOR EACH ROW
  BEGIN
	INSERT INTO logs(table_name, primary_key, name) VALUES ('users', new.id, new.name);
  END//

DROP TRIGGER IF EXISTS catalogs_log //
CREATE TRIGGER catalogs_log AFTER INSERT ON catalogs
 FOR EACH ROW
  BEGIN
	INSERT INTO logs(table_name, primary_key, name) VALUES ('catalogs', new.id, new.name);
  END//

DROP TRIGGER IF EXISTS products_log //
CREATE TRIGGER products_log AFTER INSERT ON products
 FOR EACH ROW
  BEGIN
	INSERT INTO logs(table_name, primary_key, name) VALUES ('products', new.id, new.name);
  END//

DELIMITER ;

SHOW TRIGGERS;

SELECT * FROM users;
INSERT INTO users(name, birthday_at) VALUES ('Михаил', '1995-11-15');

SELECT * FROM catalogs;
INSERT INTO catalogs(name) VALUES ('Внешние жёсткие диски');

SELECT * FROM products;
INSERT INTO products(name, description, price, catalog_id) VALUES ('Western Digital', 'Внешний жёсткий диск WD', 5000, 6);

SELECT * FROM logs;

-- ==============================================================================

-- Практическое задание по теме “NoSQL”
-- 1. В базе данных Redis подберите коллекцию для подсчета посещений с определенных IP-адресов.

(base) alex@alexpc:~$ redis-cli
127.0.0.1:6379> get test
"It's working!"
127.0.0.1:6379> ttl test
(integer) -1
127.0.0.1:6379> type test
string
127.0.0.1:6379> set 127.0.0.1 0
OK
127.0.0.1:6379> mset 127.0.0.1 0 10.10.10.1 0 192.168.0.1 0
OK
127.0.0.1:6379> type 127.0.0.1
string
127.0.0.1:6379> get 10.10.10.1
"0"
127.0.0.1:6379> incr 10.10.10.1
(integer) 1
127.0.0.1:6379> incr 10.10.10.1
(integer) 2
127.0.0.1:6379> incr 127.0.0.1
(integer) 1
127.0.0.1:6379> incr 127.0.0.1
(integer) 2
127.0.0.1:6379> incr 127.0.0.1
(integer) 3
127.0.0.1:6379> incr 127.0.0.1
(integer) 4
127.0.0.1:6379> mget 127.0.0.1 10.10.10.1 192.168.0.1
1) "4"
2) "2"
3) "0"
127.0.0.1:6379>


-- 2. При помощи базы данных Redis решите задачу поиска имени пользователя по электронному адресу и наоборот, поиск электронного адреса пользователя по его имени.

(base) alex@alexpc:~$ redis-cli
127.0.0.1:6379> SET 'Ivan Petrov' ivan@petrov.com
OK
127.0.0.1:6379> SET ivan@petrov.com 'Ivan Petrov'
OK
127.0.0.1:6379> GET 'Ivan Petrov'
"ivan@petrov.com"
127.0.0.1:6379> GET ivan@petrov.com
"Ivan Petrov"
127.0.0.1:6379>


-- 3. Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.

-- категории (type) и количество товарных позиций включены в конкретный продукт

show dbs
use shop

db.product.insert({
 name: 'Intel Core i3-8100',
 description: 'Процессор для настольных персональных компьютеров, основанных на платформе Intel.',
 price: 7890,
 type: 'Процессоры',
 orders : {
   order_id : 123,
   user_id : 15,
   ordered_amount : 2
  },
 left_amount : 10,
 discount : {
  current_discount: 0.9,
  discount_start : '01.03.2020',
  discount_end : '01.05.2020'
 }
})

db.product.insert({
 product_id: 1,
 name: 'AMD FX-8320E',
 description: 'Процессор для настольных персональных компьютеров, основанных на платформе AMD.',
 price: 4780,
 type: 'Процессоры',
 orders : {
   order_id : 124,
   user_id : 12,
   ordered_amount : 1
  },
 left_amount : 20,
 discount : {
  current_discount: 0,
 }
})

db.product.insert({
 product_id: 2,
 name: 'ASUS ROG MAXIMUS X HERO',
 description: 'Материнская плата ASUS ROG MAXIMUS X HERO, Z370, Socket 1151-V2, DDR4, ATX',
 price: 19310,
 type: 'Материнские платы',
 orders : {
   order_id : 125,
   user_id : 16,
   ordered_amount : 1
  },
 left_amount : 14,
 discount : {
  current_discount: 0.1,
  discount_start : '01.02.2020',
  discount_end : '01.04.2020'
 }
})

db.product.insert({
 product_id: 3,
 name: 'NVIDIA GeForce 1080Ti',
 description: 'Видеокарта NVIDIA GeForce 1080Ti',
 price: 30150,
 type: 'Видеокарты',
 orders : {
   order_id : 126,
   user_id : 30,
   ordered_amount : 1
  },
 left_amount : 17,
 discount : {
  current_discount: 0
 }
})

db.user.insert({
 login : 'petya',
 email : 'petya@mail.ru',
 orders : {
   order: {order_id : 124, product_id : 3, status: 'active'},
   order: {order_id : 120, product_id : 2, status: 'complete'}
 }
})

db.user.insert({
 login : 'vasya',
 email : 'vasya@mail.ru',
 orders : {
   order: {order_id : 126, product_id : 1, status: 'active'},
   order: {order_id : 10, product_id : 3, status: 'canceled'}
 }
})

db.product.find()
db.user.find()

