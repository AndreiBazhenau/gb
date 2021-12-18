-- 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые
-- разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо
-- отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value.
-- Однако, нулевые запасы должны выводиться в конце, после всех записей.

create database store;

show databases;

use store;

DROP TABLE IF EXISTS storehouses;
CREATE TABLE storehouses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Склады';

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

show tables;

select * from storehouses;
select * from storehouses_products;

# from filldb
# TABLE STRUCTURE FOR: storehouses
#

DROP TABLE IF EXISTS `storehouses`;

CREATE TABLE `storehouses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Название',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Склады';

INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'ex', '2019-12-31 03:25:45', '2019-06-02 15:08:40');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'quia', '2012-08-15 02:19:52', '2011-02-06 11:12:38');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'modi', '2015-04-01 23:09:13', '2014-02-23 14:27:33');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'odio', '2011-10-09 17:15:53', '2013-07-03 20:13:52');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'et', '2018-01-22 21:49:49', '2012-09-02 23:19:32');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'laudantium', '2012-01-03 13:34:00', '2019-10-18 08:47:17');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'qui', '2018-10-02 13:48:07', '2014-11-20 06:40:03');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'nostrum', '2012-11-01 22:52:41', '2015-01-06 21:49:54');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'nobis', '2010-03-13 20:06:41', '2018-02-04 23:11:40');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'minima', '2018-01-04 01:17:45', '2011-04-02 13:17:56');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'aperiam', '2019-06-10 17:59:06', '2011-01-10 00:44:40');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'molestiae', '2012-12-03 17:10:43', '2017-04-04 18:51:55');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'dolores', '2014-04-14 05:03:00', '2017-10-30 10:00:15');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'libero', '2018-07-04 07:09:55', '2019-07-31 01:12:04');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'vel', '2017-08-16 09:33:38', '2014-03-24 18:52:21');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'labore', '2019-04-07 17:30:38', '2018-10-03 02:51:56');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'at', '2015-08-03 22:47:11', '2017-02-03 12:40:41');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'inventore', '2014-02-26 05:10:31', '2018-01-06 20:15:05');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'voluptatem', '2014-08-15 03:32:05', '2015-09-25 04:29:43');
INSERT INTO `storehouses` (`id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'nemo', '2019-12-16 16:30:54', '2016-03-02 07:09:18');


# from filldb
# TABLE STRUCTURE FOR: storehouses_products
#

DROP TABLE IF EXISTS `storehouses_products`;

CREATE TABLE `storehouses_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `storehouse_id` int(10) unsigned DEFAULT NULL,
  `product_id` int(10) unsigned DEFAULT NULL,
  `value` int(10) unsigned DEFAULT NULL COMMENT 'Запас товарной позиции на складе',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Запасы на складе';

INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('1', 1, 7, 3, '2014-08-26 02:40:52', '2016-08-08 11:12:12');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('2', 2, 1, 5, '2014-08-05 14:46:22', '2017-02-27 20:47:32');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('3', 3, 7, 5, '2010-06-03 09:01:49', '2017-09-26 16:13:47');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('4', 4, 7, 1, '2015-09-21 11:18:58', '2012-04-13 07:14:30');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('5', 5, 5, 3, '2018-11-06 21:45:31', '2016-03-02 10:28:03');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('6', 6, 5, 1, '2018-08-06 00:50:47', '2019-04-17 08:04:17');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('7', 7, 9, 0, '2014-02-08 11:04:38', '2018-09-01 05:50:12');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('8', 8, 2, 1, '2010-10-31 05:34:01', '2017-01-22 18:17:53');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('9', 9, 7, 1, '2019-03-07 08:25:46', '2013-11-12 05:56:45');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('10', 10, 4, 5, '2012-04-26 11:19:33', '2018-03-08 22:13:17');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('11', 11, 4, 1, '2011-06-27 01:33:14', '2010-12-03 06:05:44');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('12', 12, 2, 5, '2012-03-21 04:01:25', '2013-09-14 17:59:46');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('13', 13, 1, 0, '2019-08-31 19:12:27', '2010-10-15 02:45:49');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('14', 14, 5, 3, '2011-01-19 01:45:58', '2013-12-15 19:44:20');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('15', 15, 2, 1, '2012-08-19 18:31:23', '2018-09-29 08:30:31');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('16', 16, 1, 5, '2011-06-30 06:13:32', '2015-12-06 21:12:33');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('17', 17, 6, 4, '2014-04-03 07:15:32', '2013-09-23 04:24:23');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('18', 18, 2, 3, '2017-09-08 02:42:30', '2017-07-09 13:14:01');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('19', 19, 7, 3, '2013-05-27 08:20:54', '2016-10-12 16:53:00');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('20', 20, 5, 1, '2010-05-04 11:35:23', '2012-09-09 15:29:45');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('21', 1, 4, 4, '2014-11-29 20:26:19', '2013-06-30 01:15:29');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('22', 2, 4, 0, '2018-08-25 04:00:00', '2019-08-20 08:20:35');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('23', 3, 8, 1, '2014-02-20 23:19:59', '2018-03-21 07:47:39');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('24', 4, 5, 3, '2014-05-16 10:32:26', '2014-06-18 05:32:58');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('25', 5, 7, 3, '2017-09-11 18:30:19', '2016-10-21 05:58:54');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('26', 6, 9, 4, '2015-02-04 00:12:34', '2017-11-24 04:51:51');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('27', 7, 6, 0, '2012-02-03 23:45:54', '2015-05-17 12:10:52');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('28', 8, 5, 2, '2015-01-09 02:22:13', '2014-01-15 05:11:58');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('29', 9, 1, 3, '2015-06-13 19:01:17', '2016-10-10 02:45:09');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('30', 10, 8, 4, '2012-03-21 14:43:22', '2014-09-24 18:30:59');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('31', 11, 8, 1, '2013-01-11 10:57:42', '2012-12-05 04:52:37');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('32', 12, 9, 1, '2014-11-04 07:55:48', '2012-12-02 20:31:38');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('33', 13, 9, 0, '2015-09-29 08:36:23', '2018-10-20 00:55:44');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('34', 14, 3, 3, '2012-12-17 09:44:55', '2019-12-17 03:54:39');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('35', 15, 1, 3, '2013-07-24 00:12:33', '2018-06-22 01:17:01');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('36', 16, 1, 0, '2011-02-05 08:16:55', '2019-03-09 00:44:16');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('37', 17, 8, 1, '2015-10-21 20:01:17', '2014-10-17 02:02:00');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('38', 18, 8, 3, '2013-08-12 15:45:08', '2012-08-01 21:41:12');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('39', 19, 6, 2, '2012-09-29 10:32:25', '2010-08-21 14:29:10');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('40', 20, 8, 0, '2011-11-22 14:16:23', '2019-03-24 18:23:39');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('41', 1, 4, 0, '2018-12-26 07:15:20', '2016-07-01 08:07:30');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('42', 2, 6, 1, '2010-07-06 02:36:15', '2015-04-28 20:58:47');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('43', 3, 7, 5, '2013-04-02 11:11:24', '2013-07-31 22:52:45');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('44', 4, 9, 4, '2019-06-27 03:02:02', '2015-02-22 08:57:34');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('45', 5, 2, 4, '2020-01-15 07:51:48', '2019-03-03 08:37:56');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('46', 6, 2, 3, '2015-11-30 14:51:03', '2015-05-04 03:05:36');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('47', 7, 7, 3, '2014-11-08 22:44:41', '2015-06-26 21:14:37');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('48', 8, 7, 1, '2017-07-13 08:16:23', '2012-04-07 18:50:46');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('49', 9, 6, 4, '2019-02-14 08:00:22', '2014-05-27 06:00:39');
INSERT INTO `storehouses_products` (`id`, `storehouse_id`, `product_id`, `value`, `created_at`, `updated_at`) VALUES ('50', 10, 2, 2, '2016-10-21 23:54:21', '2019-04-19 16:15:19');


-- сортировка по возростанию с отсеиванием нулевых значений в конец
select * from storehouses_products order by if(value = 0, 1, 0), value;

