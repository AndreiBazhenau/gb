-- 1.	Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.

SELECT * FROM users;

SELECT * FROM orders;

SELECT * FROM orders_products;


-- заполняем id заказов
INSERT INTO orders
       (user_id, created_at, updated_at)
VALUES
       (2, NOW(), NOW()),
       (3, NOW(), NOW()),
       (4, NOW(), NOW());

-- заполняем заказанные товары
INSERT INTO orders_products
       (order_id, product_id, total, created_at, updated_at)
VALUES
       (1, 2, 5, NOW(), NOW()),
       (2, 3, 10, NOW(), NOW()),
       (3, 6, 15, NOW(), NOW()),
       (4, 5, 20, NOW(), NOW());

-- простой запрос, где указывается имя и id заказанного товара
SELECT name, product_id
FROM users JOIN orders ON (users.id = orders.user_id)
JOIN orders_products ON (orders.id = orders_products.order_id);

-- запрос с указанием имени и названия заказанного товара
SELECT users.name, products.name
FROM users JOIN orders ON (users.id = orders.user_id)
JOIN orders_products ON (orders.id = orders_products.order_id)
JOIN products ON (orders_products.product_id = products.id);

-- ============================================================================

-- 2. Выведите список товаров products и разделов catalogs, который соответствует товару.
SELECT products.name, catalogs.name, orders.id, users.name
FROM products JOIN catalogs ON (catalog_id = catalogs.id)
JOIN orders_products ON (products.id = orders_products.product_id)
JOIN orders ON (orders_products.id = orders.id)
JOIN users ON (orders.user_id = users.id);

