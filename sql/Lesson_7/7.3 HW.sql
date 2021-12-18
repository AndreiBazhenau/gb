flights
+----+-----------+---------+
| id | from_city | to_city |
+----+-----------+---------+
|  1 | moscow    | omsk    |
|  2 | novgorod  | kazan   |
|  3 | irkutsk   | moscow  |
|  4 | omsk      | irkutsk |
|  5 | moscow    | kazan   |
+----+-----------+---------+

cities
+----------+------------------+
| label    | name             |
+----------+------------------+
| moscow   | Москва           |
| novgorod | Новгород         |
| irkutsk  | Иркутск          |
| omsk     | Омск             |
| kazan    | Казань           |
+----------+------------------+

3.	(по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.


CREATE DATABASE flights;

DROP TABLE IF EXISTS flights;
CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  from_city VARCHAR(255),
  to_city VARCHAR(255)
) COMMENT = 'Рейсы';

INSERT INTO flights (from_city, to_city) VALUES
  ('moscow', 'omsk'),
  ('novgorod', 'kazan'),
  ('irkutsk', 'moscow'),
  ('omsk', 'irkutsk'),
  ('moscow', 'kazan');
  
SELECT * FROM flights;

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  label VARCHAR(255),
  name VARCHAR(255)
) COMMENT = 'Города';

INSERT INTO cities (label, name) VALUES
  ('moscow', 'Москва'),
  ('novgorod', 'Новгород'),
  ('irkutsk', 'Иркутск'),
  ('omsk', 'Омск'),
  ('kazan', 'Казань');
 
 SELECT * FROM cities;

SELECT flights.id, cities.name AS FROM_CITY
FROM flights JOIN cities ON (flights.from_city = cities.label);