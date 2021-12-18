#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (1, 'Id exercitationem vitae commodi aut unde molestiae ratione.', '2015-03-16 23:25:38');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (2, 'Neque autem eligendi praesentium at facilis numquam.', '2015-07-23 19:17:56');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (3, 'Itaque hic nam eius ipsa repellendus.', '2017-03-24 05:56:45');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (4, 'A aliquam alias est ipsam laboriosam sequi.', '2013-07-25 17:53:20');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (5, 'Officia nesciunt velit laudantium molestiae itaque.', '2014-05-20 17:58:57');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (6, 'Repellendus et dolores est sed dolor doloremque itaque nam.', '2019-09-10 00:06:43');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (7, 'Quidem id voluptas odit porro repellendus id doloribus.', '2010-12-26 06:28:48');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (8, 'Voluptatem eum dolorem dolor molestiae eveniet aspernatur.', '2011-05-31 05:05:41');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (9, 'Eius accusantium vitae vel quae vel odio ipsum.', '2014-03-12 06:56:04');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (10, 'Nesciunt veniam commodi modi quo ad eum soluta.', '2013-08-07 22:32:47');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (11, 'Ut voluptatem aliquid dolorum ut blanditiis.', '2010-03-03 20:56:32');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (12, 'Tempora doloribus illo cum deleniti ut.', '2012-08-11 03:35:02');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (13, 'Sit fuga similique nulla pariatur iusto dolorem quibusdam repellat.', '2015-11-11 15:20:58');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (14, 'Qui accusamus sequi necessitatibus cupiditate enim.', '2015-02-27 22:45:55');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (15, 'Voluptatum porro doloremque omnis est.', '2016-05-02 05:03:20');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (16, 'Corrupti ut quo possimus voluptas facilis.', '2017-02-17 17:58:13');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (17, 'Iste ipsam eos velit quaerat.', '2015-01-12 17:33:33');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (18, 'Possimus aut eveniet molestias inventore et et et.', '2019-02-05 10:22:01');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (19, 'Aut et iusto magni quas alias vero aut.', '2010-08-15 14:42:23');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (20, 'Optio eum veniam odio dolorem maiores dolor ea.', '2017-09-22 12:47:03');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (21, 'Consequatur minima sint ut qui sequi.', '2011-11-22 04:48:54');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (22, 'Laudantium animi mollitia perferendis asperiores eos fugiat excepturi qui.', '2017-03-25 02:43:53');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (23, 'Aut ut expedita quisquam aut earum et consectetur voluptatum.', '2015-08-10 19:55:07');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (24, 'Sit voluptatem ducimus expedita dolorum velit.', '2016-01-07 21:58:13');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (25, 'Commodi voluptas molestiae et quisquam.', '2015-10-13 04:14:07');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (26, 'Dolorem ab nam libero veritatis nesciunt.', '2015-10-30 20:13:43');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (27, 'Omnis pariatur accusantium commodi dolores alias.', '2017-02-04 12:09:14');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (28, 'Exercitationem quia voluptatibus cum dicta ea et.', '2016-03-05 03:30:00');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (29, 'Sed sapiente magni dolore expedita similique.', '2010-03-08 16:10:29');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (30, 'Cumque impedit natus veniam perspiciatis optio asperiores.', '2012-10-15 08:46:51');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (31, 'Non iure non impedit mollitia sit.', '2014-12-05 12:21:48');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (32, 'Ea sequi facere ipsum aspernatur ipsam repellat voluptatem.', '2011-11-02 20:33:17');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (33, 'Tempora explicabo ex recusandae sint dolor tempore enim assumenda.', '2012-04-17 13:33:55');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (34, 'Magni ea magni enim.', '2012-03-01 11:19:29');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (35, 'Corrupti aliquid cum id rerum molestiae.', '2017-07-02 05:06:46');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (36, 'Et laboriosam pariatur consequatur et totam.', '2015-05-16 21:30:23');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (37, 'Est amet nostrum aut omnis.', '2013-02-26 21:58:21');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (38, 'Sit velit consequatur praesentium tempora doloribus aut.', '2011-01-11 19:16:59');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (39, 'Qui enim doloremque eum et.', '2018-12-09 21:12:55');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (40, 'Rerum ea ea ab laborum.', '2013-09-05 17:15:53');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (41, 'Sed ducimus optio exercitationem quia.', '2017-08-23 21:31:16');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (42, 'Quia saepe sequi et ipsa exercitationem.', '2011-11-13 22:30:46');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (43, 'Recusandae quaerat perspiciatis reiciendis et ea et.', '2017-09-15 00:45:55');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (44, 'Velit maiores eius saepe illo.', '2011-10-17 21:16:41');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (45, 'Voluptas perspiciatis sed iure aut et.', '2010-08-01 03:38:50');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (46, 'Ad et laborum est.', '2011-10-17 10:46:26');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (47, 'Maiores nobis maxime et aliquid qui.', '2010-12-11 15:10:34');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (48, 'Eos incidunt tenetur quaerat eaque rerum aut.', '2019-05-05 20:30:49');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (49, 'Aliquid et doloribus et animi.', '2011-11-04 09:43:01');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (50, 'Est cupiditate laborum dolorum laborum.', '2019-11-25 09:08:02');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (51, 'Consequatur aut laudantium inventore.', '2019-08-03 23:17:45');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (52, 'Quam ducimus molestias nesciunt necessitatibus excepturi beatae.', '2013-12-01 19:49:58');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (53, 'Maiores corporis dicta tempore culpa.', '2011-04-24 12:26:14');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (54, 'Accusamus neque culpa quo quidem.', '2011-02-20 00:17:24');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (55, 'Ratione soluta eveniet pariatur eos.', '2011-08-07 22:24:29');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (56, 'Fuga impedit non quas qui consequuntur qui.', '2019-04-27 05:17:41');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (57, 'Unde eaque cupiditate similique facilis asperiores eum.', '2019-12-23 19:04:10');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (58, 'Laborum illum et quaerat deserunt perspiciatis.', '2012-11-03 06:43:04');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (59, 'Id accusamus ut nisi.', '2014-06-15 06:51:12');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (60, 'Vero in cumque sapiente quibusdam dolorum et.', '2015-03-20 11:05:54');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (61, 'Iusto ratione voluptate provident eos in est aut minima.', '2019-06-16 14:00:39');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (62, 'Ut magnam saepe quae nemo quia.', '2015-06-27 23:19:29');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (63, 'Iusto ipsam numquam voluptatem repellendus.', '2012-09-28 15:32:19');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (64, 'Ipsa dolore quo commodi.', '2010-10-23 10:06:32');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (65, 'Dolor incidunt ut est et debitis fugiat nisi.', '2014-04-05 23:32:24');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (66, 'Minima rerum eos recusandae iusto iste quae voluptas.', '2015-05-18 10:44:21');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (67, 'Voluptas omnis sint nihil ut.', '2011-08-17 01:41:44');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (68, 'Id aperiam et non et tempora amet.', '2012-07-19 11:58:44');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (69, 'Dolores dolorum culpa eius velit possimus.', '2011-11-05 16:49:14');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (70, 'Amet itaque molestiae culpa ut qui dolorem quos.', '2014-02-05 09:49:27');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (71, 'Sit qui voluptas odit dolor quam quia mollitia.', '2019-07-27 03:56:41');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (72, 'Fuga soluta ea molestiae quo dolorem sed explicabo.', '2019-10-23 09:01:57');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (73, 'Ex facilis quia nam vero.', '2012-12-09 21:06:14');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (74, 'Amet ratione voluptatem blanditiis architecto velit.', '2013-06-28 23:29:08');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (75, 'Dolorem quia autem eaque dolores nobis nulla quidem.', '2016-07-18 16:52:05');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (76, 'Sit tenetur quisquam neque ut ipsam dignissimos.', '2011-09-27 21:37:57');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (77, 'Minima excepturi delectus dolorum dignissimos cumque.', '2018-01-20 12:07:22');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (78, 'Quis corrupti qui hic molestias ut.', '2014-07-26 14:21:05');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (79, 'Velit sequi eligendi autem nostrum quidem dicta.', '2013-09-21 07:30:35');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (80, 'Repellendus repellat nobis quia voluptate quod totam ad.', '2019-12-06 02:22:31');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (81, 'Ullam velit et repudiandae sunt facere sunt distinctio.', '2017-02-26 08:48:49');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (82, 'Assumenda quia eum eligendi quia.', '2010-05-29 19:41:12');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (83, 'Aliquam dolorem expedita nihil ut et.', '2013-12-26 14:22:33');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (84, 'In sit aut nihil voluptas.', '2014-08-29 05:36:00');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (85, 'Fugiat et et fugit blanditiis.', '2013-01-08 01:31:10');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (86, 'Nostrum ex aut dolores.', '2011-01-10 01:03:04');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (87, 'Ducimus officiis distinctio doloremque voluptatem quae sed sit.', '2017-02-13 17:47:31');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (88, 'Et sint facilis architecto.', '2013-07-07 16:31:56');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (89, 'Et iusto ex perferendis rerum magni ipsum.', '2011-05-30 03:33:44');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (90, 'Ratione soluta officia ex itaque.', '2010-03-01 06:58:55');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (91, 'Qui quia sunt autem eum vel.', '2016-10-06 04:07:48');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (92, 'Iure odit occaecati reiciendis deserunt.', '2017-12-22 09:00:10');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (93, 'Quae cupiditate laboriosam numquam dolorem ab culpa suscipit.', '2015-12-20 01:30:35');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (94, 'Debitis numquam animi corporis et qui.', '2011-08-17 09:07:14');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (95, 'Assumenda amet ratione eum voluptas sint temporibus.', '2012-07-21 21:49:48');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (96, 'Sed aut quae nisi commodi nostrum animi.', '2013-07-18 05:38:07');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (97, 'Harum consequatur quasi sint veniam quisquam quos.', '2011-06-19 19:02:41');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (98, 'Nostrum expedita itaque est aut voluptatem sed deserunt.', '2019-05-09 08:08:11');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (99, 'Ea enim laudantium eum non numquam consectetur sed quasi.', '2019-04-08 12:16:57');
INSERT INTO `communities` (`id`, `name`, `created_at`) VALUES (100, 'Voluptatem ab et molestiae laudantium repellendus consequatur.', '2014-10-17 11:17:56');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (1, 1);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (2, 2);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (3, 3);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (4, 4);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (5, 5);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (6, 6);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (7, 7);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (8, 8);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (9, 9);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (10, 10);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (11, 11);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (12, 12);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (13, 13);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (14, 14);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (15, 15);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (16, 16);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (17, 17);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (18, 18);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (19, 19);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (20, 20);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (21, 21);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (22, 22);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (23, 23);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (24, 24);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (25, 25);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (26, 26);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (27, 27);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (28, 28);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (29, 29);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (30, 30);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (31, 31);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (32, 32);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (33, 33);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (34, 34);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (35, 35);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (36, 36);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (37, 37);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (38, 38);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (39, 39);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (40, 40);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (41, 41);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (42, 42);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (43, 43);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (44, 44);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (45, 45);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (46, 46);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (47, 47);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (48, 48);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (49, 49);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (50, 50);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (51, 51);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (52, 52);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (53, 53);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (54, 54);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (55, 55);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (56, 56);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (57, 57);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (58, 58);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (59, 59);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (60, 60);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (61, 61);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (62, 62);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (63, 63);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (64, 64);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (65, 65);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (66, 66);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (67, 67);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (68, 68);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (69, 69);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (70, 70);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (71, 71);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (72, 72);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (73, 73);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (74, 74);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (75, 75);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (76, 76);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (77, 77);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (78, 78);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (79, 79);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (80, 80);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (81, 81);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (82, 82);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (83, 83);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (84, 84);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (85, 85);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (86, 86);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (87, 87);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (88, 88);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (89, 89);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (90, 90);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (91, 91);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (92, 92);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (93, 93);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (94, 94);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (95, 95);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (96, 96);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (97, 97);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (98, 98);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (99, 99);
INSERT INTO `communities_users` (`community_id`, `user_id`) VALUES (100, 100);


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL,
  `friend_id` int(10) unsigned NOT NULL,
  `status_id` int(10) unsigned NOT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `confirmed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (1, 1, 1, '2011-07-24 00:38:46', '2012-11-19 16:37:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (2, 2, 2, '2015-05-09 19:09:08', '2014-02-10 14:02:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (3, 3, 3, '2014-01-16 22:48:15', '2017-07-19 07:57:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (4, 4, 4, '2017-05-31 19:19:38', '2010-09-20 17:20:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (5, 5, 5, '2013-10-20 07:38:20', '2012-11-24 05:42:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (6, 6, 6, '2010-04-25 21:49:00', '2015-11-29 21:54:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (7, 7, 7, '2012-07-06 14:40:07', '2018-01-03 01:19:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (8, 8, 8, '2013-03-29 13:49:00', '2017-01-10 00:44:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (9, 9, 9, '2018-07-29 07:29:16', '2011-04-08 05:12:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (10, 10, 10, '2010-11-12 19:26:31', '2010-11-06 16:37:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (11, 11, 1, '2016-07-29 06:50:45', '2017-12-04 12:31:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (12, 12, 2, '2010-10-04 00:11:20', '2016-02-28 03:40:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (13, 13, 3, '2016-03-13 22:20:42', '2011-05-25 14:38:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (14, 14, 4, '2014-07-30 07:15:20', '2012-09-12 23:47:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (15, 15, 5, '2013-05-26 02:01:53', '2011-02-16 07:57:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (16, 16, 6, '2014-06-11 20:55:07', '2016-08-20 07:55:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (17, 17, 7, '2014-09-10 16:14:21', '2019-10-26 00:04:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (18, 18, 8, '2019-06-22 04:41:22', '2012-03-25 13:11:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (19, 19, 9, '2020-01-26 23:12:41', '2014-05-04 06:52:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (20, 20, 10, '2016-02-16 04:12:00', '2017-01-07 14:12:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (21, 21, 1, '2010-11-12 20:31:30', '2019-12-09 23:59:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (22, 22, 2, '2010-07-28 23:57:26', '2012-11-04 03:59:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (23, 23, 3, '2014-06-20 05:58:29', '2018-08-09 18:27:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (24, 24, 4, '2012-10-30 03:59:03', '2012-05-31 16:07:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (25, 25, 5, '2012-08-28 05:44:19', '2013-06-11 12:50:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (26, 26, 6, '2016-06-12 20:28:59', '2012-07-26 18:33:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (27, 27, 7, '2013-12-14 09:30:17', '2011-12-30 06:51:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (28, 28, 8, '2014-06-10 03:37:00', '2016-09-21 07:24:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (29, 29, 9, '2019-07-12 19:17:35', '2012-04-27 17:12:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (30, 30, 10, '2013-08-03 06:29:03', '2017-06-01 18:01:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (31, 31, 1, '2017-08-23 18:38:31', '2015-02-27 15:06:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (32, 32, 2, '2015-06-16 14:28:52', '2018-09-07 02:07:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (33, 33, 3, '2011-07-29 17:51:32', '2017-09-24 06:09:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (34, 34, 4, '2016-10-30 11:34:44', '2015-07-02 19:54:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (35, 35, 5, '2014-09-10 23:22:04', '2011-09-25 19:37:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (36, 36, 6, '2011-06-30 03:06:36', '2011-12-09 22:57:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (37, 37, 7, '2015-07-23 14:37:27', '2017-12-12 17:17:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (38, 38, 8, '2015-06-18 10:43:55', '2011-07-10 17:24:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (39, 39, 9, '2013-12-08 19:10:23', '2013-03-25 02:12:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (40, 40, 10, '2013-03-11 09:16:37', '2011-10-13 14:17:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (41, 41, 1, '2013-04-04 18:26:46', '2018-03-10 04:23:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (42, 42, 2, '2014-12-23 00:10:36', '2012-03-30 12:07:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (43, 43, 3, '2014-01-06 05:42:52', '2015-10-05 14:58:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (44, 44, 4, '2012-11-02 11:18:10', '2016-06-01 14:24:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (45, 45, 5, '2015-02-18 03:37:55', '2010-04-29 04:01:02');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (46, 46, 6, '2015-07-05 12:42:18', '2012-03-21 15:40:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (47, 47, 7, '2010-08-28 21:52:00', '2019-07-21 20:06:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (48, 48, 8, '2018-03-29 15:17:55', '2018-07-20 11:27:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (49, 49, 9, '2011-11-04 03:46:01', '2018-07-10 02:02:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (50, 50, 10, '2017-05-07 14:16:55', '2018-01-20 01:40:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (51, 51, 1, '2010-07-24 12:41:01', '2011-08-14 14:36:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (52, 52, 2, '2017-02-25 21:55:34', '2019-06-30 14:08:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (53, 53, 3, '2013-12-15 22:07:11', '2018-10-26 20:23:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (54, 54, 4, '2017-01-23 04:30:48', '2018-09-06 16:13:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (55, 55, 5, '2016-03-04 08:55:39', '2017-02-27 23:50:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (56, 56, 6, '2016-02-04 09:26:27', '2017-06-15 15:27:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (57, 57, 7, '2010-03-01 23:32:35', '2018-02-24 04:05:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (58, 58, 8, '2012-12-11 16:09:39', '2010-06-23 08:48:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (59, 59, 9, '2012-02-20 06:05:48', '2019-03-27 19:02:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (60, 60, 10, '2018-06-16 21:01:19', '2010-12-19 23:06:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (61, 61, 1, '2010-05-27 18:38:38', '2011-03-29 21:56:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (62, 62, 2, '2014-06-09 22:43:55', '2016-09-12 17:10:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (63, 63, 3, '2017-06-30 00:40:43', '2019-07-09 06:23:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (64, 64, 4, '2011-05-03 22:11:25', '2013-01-13 10:54:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (65, 65, 5, '2010-12-19 00:29:28', '2017-02-27 14:33:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (66, 66, 6, '2012-04-30 18:16:12', '2011-04-26 07:05:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (67, 67, 7, '2015-06-29 22:21:36', '2017-01-22 05:13:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (68, 68, 8, '2013-08-05 06:57:14', '2013-10-22 16:41:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (69, 69, 9, '2019-06-02 18:35:38', '2020-01-08 17:22:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (70, 70, 10, '2018-02-23 00:22:01', '2017-08-18 23:25:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (71, 71, 1, '2019-04-26 01:26:00', '2012-08-22 21:33:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (72, 72, 2, '2019-11-08 22:41:38', '2012-07-03 11:31:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (73, 73, 3, '2010-04-05 09:46:34', '2014-07-26 22:21:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (74, 74, 4, '2016-04-02 16:54:54', '2011-02-19 15:09:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (75, 75, 5, '2018-06-11 07:54:55', '2017-08-26 23:19:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (76, 76, 6, '2016-11-13 03:06:57', '2011-04-25 20:47:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (77, 77, 7, '2017-06-21 09:47:49', '2019-02-27 23:43:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (78, 78, 8, '2016-08-30 06:12:17', '2013-03-11 14:38:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (79, 79, 9, '2011-05-30 14:44:30', '2013-01-26 19:42:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (80, 80, 10, '2014-03-06 00:56:25', '2010-05-19 23:12:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (81, 81, 1, '2017-08-16 13:35:54', '2013-05-12 21:51:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (82, 82, 2, '2017-11-14 13:24:45', '2018-10-06 02:56:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (83, 83, 3, '2017-11-08 02:16:00', '2012-04-14 13:48:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (84, 84, 4, '2016-05-19 19:59:27', '2019-04-07 22:02:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (85, 85, 5, '2010-07-03 10:17:51', '2010-12-20 11:14:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (86, 86, 6, '2013-02-03 00:07:40', '2018-06-13 01:40:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (87, 87, 7, '2011-10-31 18:31:15', '2019-02-05 18:32:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (88, 88, 8, '2016-01-12 03:15:07', '2013-03-08 06:09:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (89, 89, 9, '2016-05-20 08:53:52', '2012-08-01 20:29:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (90, 90, 10, '2019-09-07 21:39:46', '2016-02-25 23:11:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (91, 91, 1, '2011-12-05 21:28:13', '2019-10-27 09:44:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (92, 92, 2, '2014-03-01 16:58:23', '2018-04-12 22:59:16');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (93, 93, 3, '2018-11-24 02:49:42', '2012-12-26 11:25:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (94, 94, 4, '2011-06-29 02:58:53', '2011-09-07 14:45:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (95, 95, 5, '2012-10-03 06:59:16', '2019-08-20 07:38:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (96, 96, 6, '2016-07-24 20:32:41', '2018-01-04 07:44:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (97, 97, 7, '2015-06-16 17:06:04', '2011-01-13 07:25:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (98, 98, 8, '2010-03-18 09:57:52', '2013-04-28 14:21:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (99, 99, 9, '2011-05-16 13:07:50', '2011-12-05 09:43:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`) VALUES (100, 100, 10, '2015-08-12 21:01:03', '2015-08-26 20:04:22');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`) VALUES (1, 'qui', '2019-11-29 23:04:08');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`) VALUES (2, 'nobis', '2019-12-17 04:41:39');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`) VALUES (3, 'temporibus', '2017-04-19 14:03:50');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`) VALUES (4, 'doloribus', '2020-01-10 19:17:18');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`) VALUES (5, 'sequi', '2014-05-11 01:57:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`) VALUES (6, 'sed', '2013-12-08 16:52:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`) VALUES (7, 'id', '2019-02-19 14:09:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`) VALUES (8, 'illo', '2014-06-21 20:49:56');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`) VALUES (9, 'labore', '2013-04-23 17:14:05');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`) VALUES (10, 'sit', '2011-09-18 17:46:18');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'Quae esse incidunt cumque ut ad.', 2147483647, 'Molestiae animi facere et repellat deleniti odio.', '2016-12-28 16:16:59', '2014-03-11 23:26:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'Rem necessitatibus et est vero voluptate non voluptatem.', 2147483647, 'Voluptates quasi quod quia ut doloremque.', '2014-11-19 22:42:54', '2015-12-02 01:24:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'Vel explicabo quos eum vel voluptatem.', 2147483647, 'Cumque voluptatem totam rerum corporis non similique sequi.', '2012-08-22 14:25:07', '2016-12-25 05:36:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 4, 4, 'Inventore quasi consequatur sit.', 2147483647, 'Aut ut quisquam velit.', '2010-03-03 16:22:01', '2014-03-20 21:24:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'Eum qui vel aut quaerat rem a praesentium recusandae.', 2147483647, 'Corporis inventore debitis temporibus in et.', '2018-06-10 07:30:06', '2012-02-08 07:54:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 1, 6, 'Aspernatur dolores vitae quaerat in accusamus qui.', 2147483647, 'Debitis nostrum laboriosam iste cupiditate officiis.', '2012-10-01 20:31:31', '2011-10-13 16:56:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 2, 7, 'Enim voluptas ut rerum aut doloremque rerum.', 2147483647, 'In quisquam dicta reprehenderit vitae quae rerum quia.', '2019-08-28 17:21:54', '2017-06-24 09:23:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 3, 8, 'Distinctio non quisquam ut aut illo voluptatibus aut possimus.', 1589589324, 'Sequi placeat mollitia quis.', '2013-07-09 03:46:19', '2018-09-18 05:49:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 4, 9, 'Earum quo maiores cupiditate ipsum et.', 2147483647, 'Architecto odit fuga molestiae quam animi recusandae illum nemo.', '2011-03-03 17:34:21', '2017-05-29 07:40:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 5, 10, 'Hic ut numquam quam numquam a saepe laudantium.', 2147483647, 'Accusantium dolore dolorem quae impedit quam.', '2019-12-06 15:39:59', '2011-10-02 06:03:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (11, 1, 11, 'Autem odio omnis error sunt.', 728830644, 'Natus animi ut amet in quis quas vel.', '2015-11-26 03:15:29', '2015-11-20 10:01:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (12, 2, 12, 'Praesentium harum qui voluptatibus voluptatem accusamus dicta.', 2147483647, 'Officiis repudiandae quam adipisci et modi expedita magni.', '2012-11-06 23:16:19', '2012-04-21 23:47:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (13, 3, 13, 'Quis sint error sed dolorem id deserunt eos.', 2147483647, 'Quo excepturi officiis occaecati.', '2014-09-09 18:53:34', '2017-03-28 19:11:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (14, 4, 14, 'Consequuntur et impedit minima animi.', 2147483647, 'Odit iste itaque dolores dicta.', '2015-06-01 14:28:19', '2017-08-21 05:48:58');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (15, 5, 15, 'Est eveniet tenetur recusandae facilis velit commodi qui ipsam.', 2147483647, 'Non quo animi minima est qui recusandae ad.', '2016-09-27 03:56:20', '2017-01-04 13:06:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (16, 1, 16, 'Rerum deserunt voluptas velit ex.', 2147483647, 'Consequatur voluptas quod voluptates ea qui.', '2015-03-04 11:37:09', '2013-11-06 14:03:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (17, 2, 17, 'Accusantium rerum velit reprehenderit aspernatur occaecati quia nesciunt.', 2147483647, 'Quaerat hic similique impedit sint.', '2013-03-12 10:47:46', '2014-08-18 03:30:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (18, 3, 18, 'Rerum neque consequatur ab voluptatem.', 2147483647, 'Excepturi alias qui tempore explicabo enim ipsa.', '2011-02-18 21:02:29', '2011-03-08 12:08:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (19, 4, 19, 'Cumque et voluptatem aliquid.', 659571933, 'Saepe aut exercitationem ut voluptas qui eos.', '2011-05-02 10:03:27', '2017-03-22 02:44:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (20, 5, 20, 'Vel fugiat qui nulla consequatur ipsum.', 2147483647, 'Culpa accusamus adipisci repellat perspiciatis.', '2012-05-02 13:54:57', '2019-05-31 05:19:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (21, 1, 21, 'Nisi aut dolorem facilis ut et velit et.', 2147483647, 'Voluptatem placeat voluptas voluptatem sed provident id sed.', '2011-12-22 01:56:31', '2014-05-21 02:02:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (22, 2, 22, 'Est fuga distinctio sint libero voluptatem repudiandae vel.', 2147483647, 'Qui qui porro voluptatibus ut sit quis deserunt.', '2017-03-05 16:37:05', '2014-01-19 02:49:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (23, 3, 23, 'Similique placeat quod architecto iste earum.', 1939182622, 'Dolore accusantium est ut et et.', '2018-08-22 17:02:22', '2012-12-01 18:09:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (24, 4, 24, 'Occaecati sequi suscipit sed eius repellat.', 2147483647, 'Est minima aut voluptas et.', '2011-03-15 06:03:49', '2017-04-29 00:37:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (25, 5, 25, 'Nobis tempora magni eius vel dolorum totam.', 2147483647, 'Adipisci odit ut fuga delectus earum et animi ut.', '2013-11-01 20:15:03', '2011-03-24 20:03:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (26, 1, 26, 'Nihil repudiandae illum sunt eos voluptate.', 2147483647, 'Sit velit ut quasi minus nam officiis nihil.', '2017-07-08 00:38:48', '2010-11-19 18:00:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (27, 2, 27, 'Distinctio et qui doloribus rerum.', 2147483647, 'Ex excepturi cumque aspernatur aut.', '2017-12-13 20:39:49', '2015-07-13 23:20:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (28, 3, 28, 'Iste tempora asperiores odit distinctio quia aut temporibus.', 2147483647, 'Possimus in est dolorem nesciunt.', '2018-03-03 07:54:35', '2012-11-19 16:55:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (29, 4, 29, 'Cum est est esse amet.', 1255878616, 'Consequatur et aut voluptates.', '2018-04-13 12:18:57', '2011-12-26 01:38:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (30, 5, 30, 'Explicabo voluptas temporibus voluptatem libero similique.', 2147483647, 'Illo non tempore cum autem aut accusamus minus.', '2011-03-27 23:42:37', '2010-08-02 04:19:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (31, 1, 31, 'Officia rerum quibusdam dolore debitis fugit.', 2147483647, 'Ex voluptatem tempore pariatur harum.', '2012-07-21 12:25:08', '2017-02-25 21:32:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (32, 2, 32, 'Ut occaecati saepe sapiente aut quas adipisci quisquam fugiat.', 2147483647, 'Id suscipit quo ipsam dolorem.', '2013-09-06 16:55:31', '2012-07-31 07:27:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (33, 3, 33, 'Ipsum omnis rem fugiat velit exercitationem distinctio accusamus.', 2147483647, 'Voluptates dolorem adipisci et illo.', '2012-09-26 12:30:08', '2013-11-10 21:23:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (34, 4, 34, 'Earum quibusdam maxime doloremque suscipit corporis qui illo.', 2147483647, 'Id quaerat quia voluptatem omnis.', '2010-08-08 07:30:18', '2012-03-03 15:01:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (35, 5, 35, 'Quia iusto ipsum porro iure pariatur veniam.', 2147483647, 'Et accusamus et harum.', '2017-08-22 14:12:43', '2010-05-23 22:13:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (36, 1, 36, 'Ut repellendus voluptatem aut voluptas vel qui qui.', 2147483647, 'Libero ullam officiis aperiam aliquam velit ut impedit.', '2017-08-06 22:13:23', '2014-06-29 04:18:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (37, 2, 37, 'Hic consequatur nam consequatur eos et sint sapiente et.', 2147483647, 'Minima facilis quisquam dolorem veritatis sint repellat et mollitia.', '2011-05-30 23:39:57', '2010-11-29 17:18:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (38, 3, 38, 'Cum maiores esse vitae rem ut molestiae.', 2147483647, 'Et labore aut modi quas beatae.', '2019-08-10 03:38:54', '2011-09-20 07:23:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (39, 4, 39, 'Id nihil nostrum voluptatum repellat commodi.', 2147483647, 'Quia fugiat voluptatem est non ea assumenda iusto.', '2017-08-23 17:10:00', '2015-01-30 19:44:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (40, 5, 40, 'Sapiente non veniam et debitis quis labore autem deserunt.', 2147483647, 'Enim natus nemo sit sit omnis cum.', '2011-06-11 05:33:47', '2010-12-27 13:05:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (41, 1, 41, 'Expedita unde sit velit provident ut temporibus.', 2147483647, 'Omnis qui dolorem ut iusto et facilis sapiente maiores.', '2017-10-17 15:04:12', '2019-05-14 18:32:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (42, 2, 42, 'Consequatur libero ratione ab nam.', 1281759250, 'Harum error odio accusamus nobis.', '2015-04-30 20:50:45', '2019-02-07 10:47:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (43, 3, 43, 'Maiores voluptate est dolore accusantium commodi perspiciatis earum corrupti.', 2147483647, 'Odit quia itaque ipsum officiis.', '2019-09-04 14:54:52', '2015-06-02 07:57:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (44, 4, 44, 'Voluptas atque expedita enim dolorum.', 2147483647, 'Praesentium officia quo odit aliquam rerum mollitia assumenda.', '2015-01-28 02:26:48', '2015-07-10 08:22:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (45, 5, 45, 'Enim enim eaque soluta et autem unde atque quia.', 2147483647, 'Accusamus pariatur exercitationem voluptatem dolores debitis vero ut.', '2019-05-02 08:14:40', '2012-07-10 10:06:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (46, 1, 46, 'Aliquam iste ipsa harum culpa voluptas.', 2147483647, 'Provident vero alias occaecati itaque pariatur at.', '2013-01-08 13:40:42', '2019-05-06 01:13:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (47, 2, 47, 'Vel nulla et atque dolor ipsa quo.', 2147483647, 'Cumque eum molestiae ipsam culpa reiciendis eius et.', '2015-12-29 22:45:21', '2016-10-27 22:00:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (48, 3, 48, 'Et excepturi adipisci et.', 2147483647, 'Corrupti omnis quia sit.', '2016-10-23 16:56:57', '2012-10-26 02:35:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (49, 4, 49, 'Culpa et harum recusandae sint velit.', 1146772649, 'Vel ullam qui aut rerum dolore est quos eum.', '2016-10-26 17:49:15', '2015-11-08 06:42:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (50, 5, 50, 'Omnis officiis reprehenderit ea harum sit enim.', 2147483647, 'Amet est assumenda aut sed id ut.', '2013-01-04 02:10:11', '2011-01-13 06:06:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (51, 1, 51, 'Consectetur quaerat quidem fugiat cumque rerum ratione.', 2147483647, 'Quasi quia dolorem nihil.', '2020-02-05 14:34:01', '2015-07-10 00:14:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (52, 2, 52, 'Rem molestias quo hic minima et.', 2147483647, 'Cumque mollitia debitis fuga laborum et.', '2014-09-07 05:01:36', '2018-11-14 12:39:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (53, 3, 53, 'Velit rem pariatur voluptatem suscipit.', 2147483647, 'Unde pariatur rem aliquam vero sed repudiandae veritatis.', '2013-09-09 19:45:37', '2018-01-30 23:30:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (54, 4, 54, 'Culpa est distinctio ratione et omnis vitae quas.', 2147483647, 'Eos dolores corporis libero veritatis sint.', '2018-03-26 22:27:34', '2017-11-07 09:30:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (55, 5, 55, 'Nemo quae quod exercitationem.', 2147483647, 'Rerum nemo maiores quibusdam qui non omnis aut.', '2017-12-30 22:41:37', '2012-08-26 22:56:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (56, 1, 56, 'Corrupti recusandae esse occaecati debitis aperiam praesentium.', 431118925, 'Veniam vel provident non dolorem.', '2012-04-29 03:57:33', '2012-07-24 07:34:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (57, 2, 57, 'Error eius et sit ea natus.', 2147483647, 'Odit et omnis omnis.', '2014-10-20 06:48:52', '2011-12-18 00:22:39');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (58, 3, 58, 'Ipsum explicabo ea et vero.', 2147483647, 'Porro aspernatur sint velit.', '2015-01-29 23:03:11', '2016-08-07 15:16:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (59, 4, 59, 'Qui quas rerum aut aut et repellat ut consequatur.', 2147483647, 'Occaecati fuga accusamus qui asperiores distinctio sapiente at dolorem.', '2013-04-27 04:26:01', '2015-02-25 08:19:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (60, 5, 60, 'At porro ea nihil quis eveniet et voluptas.', 2147483647, 'Quidem ex dolores rerum error accusamus repudiandae.', '2013-02-03 11:28:45', '2019-10-26 12:49:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (61, 1, 61, 'Tempore aut quo minus cumque necessitatibus.', 2147483647, 'Consequuntur fugiat sint ea qui similique.', '2018-02-17 03:20:23', '2012-12-05 01:15:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (62, 2, 62, 'Nihil non facilis eaque inventore rerum.', 2147483647, 'Rem ut fugiat repellat et perferendis.', '2017-12-04 00:43:06', '2012-06-11 14:59:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (63, 3, 63, 'Dolores aperiam aut enim dolorem voluptates quis et blanditiis.', 2147483647, 'Est tenetur est vero ipsum quia veniam quibusdam.', '2017-01-20 23:31:39', '2011-02-09 20:35:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (64, 4, 64, 'Velit eligendi modi in laborum.', 2118387316, 'Et quia quia dolores laudantium quia occaecati delectus.', '2019-06-14 05:53:15', '2019-07-01 19:25:02');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (65, 5, 65, 'Sed reiciendis harum aspernatur placeat necessitatibus voluptatem explicabo.', 2147483647, 'Molestiae itaque harum quo.', '2018-08-25 12:38:15', '2010-11-13 14:38:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (66, 1, 66, 'Inventore veritatis aperiam porro deserunt delectus.', 2147483647, 'Laborum ut vitae nam ut.', '2017-03-24 14:14:41', '2017-02-20 09:41:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (67, 2, 67, 'Nobis et corrupti quo.', 2147483647, 'Est eum molestiae nulla laborum possimus omnis voluptatibus.', '2013-09-04 21:47:08', '2010-09-25 09:20:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (68, 3, 68, 'Corrupti qui possimus dolorem dolore placeat ratione.', 897975388, 'Ipsum quos quisquam quia quibusdam expedita error.', '2015-12-18 21:26:47', '2016-08-11 07:18:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (69, 4, 69, 'Distinctio ut blanditiis et aperiam illo aut.', 2147483647, 'Illo aliquid quasi maiores consectetur illo dolor voluptatem velit.', '2013-10-15 16:26:10', '2012-12-25 15:47:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (70, 5, 70, 'Non nesciunt voluptatem consequuntur aliquam dolores in qui.', 2147483647, 'Totam quas hic aut hic aut.', '2012-07-26 20:40:08', '2012-08-25 02:01:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (71, 1, 71, 'Dicta dolores aut est.', 2147483647, 'Eum qui vitae id dolore consequuntur dolore.', '2012-11-23 11:34:32', '2010-04-02 23:49:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (72, 2, 72, 'Omnis sit earum veritatis adipisci reprehenderit dolorem.', 1957863649, 'Quae perspiciatis odit aut illo culpa dolorum non.', '2012-02-21 08:53:08', '2017-02-22 05:24:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (73, 3, 73, 'Quia rerum animi voluptates autem quibusdam quis ex consequatur.', 877130242, 'Rem cupiditate vero consequatur corporis est explicabo.', '2017-05-03 00:24:01', '2015-05-24 06:46:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (74, 4, 74, 'Est ut sequi nulla porro.', 2147483647, 'Illo possimus qui dolorum sapiente eum.', '2016-05-01 15:00:29', '2019-06-26 00:32:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (75, 5, 75, 'Est quasi voluptatem quidem laudantium numquam nisi non enim.', 1335945717, 'Molestiae perferendis nesciunt commodi sapiente ab vitae recusandae.', '2012-01-04 19:15:16', '2013-08-26 15:46:03');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (76, 1, 76, 'Tempore est quidem voluptatem cum ab.', 2147483647, 'Sunt vitae explicabo delectus labore eligendi.', '2016-05-07 18:36:05', '2014-03-13 14:21:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (77, 2, 77, 'Est porro maiores iste veniam quia.', 2147483647, 'Et velit reiciendis aliquid nisi.', '2018-08-26 19:28:12', '2018-09-03 18:45:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (78, 3, 78, 'Modi et temporibus sit illo voluptas itaque dolor.', 1103853710, 'Magnam voluptates necessitatibus ut.', '2017-06-05 23:53:03', '2019-11-21 11:09:09');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (79, 4, 79, 'Placeat quam nihil itaque ut repudiandae.', 2147483647, 'Vero voluptate facere quo tenetur tenetur qui est molestiae.', '2011-05-22 11:58:22', '2014-01-05 18:33:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (80, 5, 80, 'Quo exercitationem voluptatem esse tempore ullam debitis consequatur.', 2147483647, 'Voluptatum nihil veritatis ut eum voluptatem cupiditate optio.', '2015-11-06 18:47:14', '2012-10-13 21:55:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (81, 1, 81, 'Consequatur est earum sit nisi sint.', 2147483647, 'Cupiditate ipsum vero cupiditate mollitia dolores reiciendis voluptatem.', '2018-07-06 05:05:47', '2015-01-04 05:53:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (82, 2, 82, 'Ut aliquid dolores illo sit ut at.', 2147483647, 'Occaecati aspernatur consequatur unde alias facere dolor.', '2014-07-04 15:19:19', '2012-04-12 18:00:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (83, 3, 83, 'Est repellat inventore sed consectetur earum dolor culpa.', 2147483647, 'Dolorem facere ut iusto perspiciatis consequatur repudiandae velit.', '2012-04-19 04:41:09', '2011-09-08 23:43:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (84, 4, 84, 'Eaque in dolores tempora facere quasi qui ut velit.', 2147483647, 'Eos sit sint accusantium assumenda quam delectus.', '2019-12-20 19:14:18', '2018-11-23 17:42:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (85, 5, 85, 'Voluptas ducimus ducimus aspernatur corporis repellendus.', 244154479, 'Beatae consectetur eum reprehenderit quas beatae numquam.', '2010-05-08 20:43:32', '2017-06-20 20:22:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (86, 1, 86, 'Nihil atque repudiandae incidunt atque consequatur dolorem laudantium asperiores.', 2147483647, 'Mollitia natus molestias quam est sint.', '2016-02-24 18:37:33', '2017-11-13 09:46:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (87, 2, 87, 'Quas quae reprehenderit cumque eum nostrum modi cum.', 2147483647, 'Consequatur asperiores debitis non vel dicta quidem ut.', '2020-02-16 00:31:56', '2011-04-18 05:57:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (88, 3, 88, 'Et officiis delectus aperiam minus eos voluptas.', 2147483647, 'Voluptas voluptatem dolore et.', '2014-04-21 22:09:09', '2010-07-30 21:24:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (89, 4, 89, 'Dolores tenetur qui nobis eveniet necessitatibus et est.', 1966449959, 'Rerum accusamus voluptatem est fugiat enim nesciunt mollitia.', '2018-08-08 05:18:50', '2019-11-18 11:14:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (90, 5, 90, 'Non saepe assumenda corrupti possimus ut consectetur.', 342370025, 'Earum assumenda recusandae tempore ut.', '2019-11-19 07:03:51', '2014-04-11 16:38:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (91, 1, 91, 'Occaecati ut iure animi totam ullam.', 2147483647, 'Voluptatem culpa reprehenderit assumenda deleniti magnam tempore.', '2012-01-26 19:48:08', '2018-06-22 08:42:49');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (92, 2, 92, 'Quia consequatur minima odit incidunt quia maiores aspernatur.', 2147483647, 'Optio dignissimos quos quo corrupti a.', '2015-08-08 10:35:39', '2019-06-20 00:45:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (93, 3, 93, 'Magni rerum et quis vel.', 1988943071, 'Est pariatur autem sed autem alias et sit.', '2014-05-08 23:19:11', '2012-05-25 00:05:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (94, 4, 94, 'Ut at eos perspiciatis nesciunt cum ea.', 2147483647, 'Pariatur aut neque id eaque vitae omnis quis odio.', '2016-07-16 18:37:05', '2012-04-07 23:35:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (95, 5, 95, 'Sunt repellat consequuntur dicta minima at.', 2147483647, 'Earum asperiores itaque ullam praesentium voluptates quasi repellendus.', '2011-04-22 13:05:10', '2014-01-15 14:02:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (96, 1, 96, 'Natus quibusdam expedita iusto necessitatibus quas.', 2147483647, 'Commodi cumque et similique laudantium doloribus odit.', '2012-01-05 09:22:55', '2012-05-03 05:57:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (97, 2, 97, 'Nihil corporis sunt commodi ea minus voluptas alias.', 2147483647, 'Quidem vel pariatur dicta nihil non aut.', '2019-11-04 06:27:57', '2014-07-17 17:35:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (98, 3, 98, 'Iste dolores ipsam praesentium corporis omnis molestias.', 2147483647, 'Cum sint et iure eos odio.', '2016-07-07 23:32:11', '2010-11-03 13:01:38');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (99, 4, 99, 'Id explicabo deserunt voluptates.', 2147483647, 'Tenetur mollitia et temporibus totam magnam.', '2016-06-21 22:41:37', '2011-06-12 19:47:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (100, 5, 100, 'Officia sed aut expedita saepe vero odio.', 2147483647, 'Voluptatibus dolorem laboriosam temporibus unde voluptas aliquam aliquam.', '2011-11-18 21:51:20', '2013-05-23 11:55:51');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES (1, 'rgb', '2014-08-08 01:22:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES (2, 'avi', '2016-10-28 21:43:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES (3, 'wmd', '2013-12-14 15:07:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES (4, 'gtar', '2010-05-13 01:52:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`) VALUES (5, 'z1', '2015-04-14 16:54:21');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int(10) unsigned NOT NULL,
  `to_user_id` int(10) unsigned NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `is_important` tinyint(1) DEFAULT NULL,
  `is_delivered` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 86, 92, 'Fugit ut eos quam reiciendis aperiam qui. Provident et amet est sed rerum. Qui laboriosam velit eos id.', 0, 1, '2017-03-25 08:02:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 65, 36, 'Earum culpa laborum quibusdam molestias. Aut hic unde totam quae earum omnis doloribus. Quia nihil at ut magnam quis. Quas cupiditate enim et cupiditate.', 1, 1, '2012-07-26 20:53:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 62, 86, 'Deleniti alias similique deleniti. Enim praesentium perspiciatis qui.', 0, 1, '2015-01-21 17:37:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 63, 4, 'Voluptatem molestiae perferendis eligendi enim. Debitis repellendus eum omnis voluptas magnam et. Totam laudantium eum fugit tempora voluptatibus.', 0, 1, '2016-03-26 02:09:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 46, 33, 'Voluptas qui omnis autem cumque quae reiciendis facilis. Perferendis beatae et sunt temporibus ut et qui. Illum eos rerum quibusdam totam voluptates.', 0, 1, '2013-01-05 09:40:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 40, 34, 'Nostrum error vero reprehenderit mollitia ab et dolore mollitia. Quo quia numquam accusamus voluptas nobis iste. Molestias quaerat quod possimus impedit molestiae sunt.', 0, 0, '2018-06-14 20:03:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 93, 68, 'Et in atque quibusdam laboriosam. Assumenda optio debitis et est esse aspernatur incidunt. Debitis blanditiis libero non quidem sunt.', 0, 1, '2014-08-31 02:53:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 47, 49, 'Rerum ullam vitae est aut. Tenetur quia laudantium itaque ratione neque sequi. Voluptatem laboriosam fugiat asperiores. Omnis et voluptatem nesciunt totam.', 1, 0, '2011-03-13 19:17:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 90, 61, 'Corporis quam exercitationem voluptas veritatis. Iure blanditiis harum nisi. Aliquam voluptatum et architecto doloribus error.', 0, 0, '2014-02-18 21:40:17');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 1, 86, 'Quod non quae dignissimos magni ut dolore. Consequatur impedit veritatis aperiam laudantium debitis. Voluptatem saepe explicabo at et saepe. Quia sunt nemo nemo libero ut.', 0, 1, '2018-05-22 06:40:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 70, 5, 'Dolor a et perferendis aut. Ut quo natus ea fugit. Voluptas modi et aperiam enim sint. Et voluptatibus et reiciendis assumenda magnam. Similique saepe est non est minus voluptate.', 1, 0, '2013-12-01 00:50:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 1, 32, 'Debitis ut consequatur sunt fugiat iure in nisi aut. In doloremque delectus id illo. Quo ut laborum nam aut autem.', 0, 1, '2018-03-11 23:00:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 34, 83, 'Aut aliquam illum velit ipsum quos hic suscipit. Quisquam ut delectus cumque aut sed sapiente et. Iure quia modi ea. Et nobis qui dolorem expedita necessitatibus odit. Dolor dolores explicabo nisi voluptatem aliquam ad.', 1, 0, '2011-05-15 12:26:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 10, 11, 'Et eum ut repudiandae architecto enim est natus. Reiciendis beatae ut aut et assumenda eveniet. Rerum expedita quis quis ea.', 0, 1, '2011-11-25 17:41:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 97, 1, 'Fugiat corporis provident eligendi unde deserunt illum iste. Fuga quae nam dolorem voluptatem quas beatae. Dolorem provident sequi qui voluptates sed possimus. Autem assumenda et hic consequatur voluptates expedita laudantium dolorem.', 0, 1, '2017-04-07 02:31:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 65, 4, 'Autem ipsam animi debitis suscipit qui. Numquam pariatur fuga et placeat eos doloribus sint. Quis sed et reiciendis dicta dolorem. Nulla eligendi sit dolor eligendi. Veniam sed consectetur quibusdam velit.', 0, 1, '2011-01-08 23:32:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 16, 5, 'Iste sapiente aut rem incidunt molestias eum labore. Quia saepe minima natus est pariatur ducimus.', 1, 0, '2018-10-29 05:27:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 86, 43, 'Nisi voluptas voluptatem delectus possimus magni. Sed deserunt molestias dignissimos quo ea modi. Consequatur sed labore suscipit a modi. Qui commodi rem voluptatibus debitis blanditiis dolores sunt.', 0, 0, '2010-03-20 01:53:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 33, 45, 'Voluptas iusto necessitatibus dolor exercitationem. Sunt ducimus sint placeat consequatur in atque eaque. Molestias dolorem voluptatem earum ad pariatur incidunt minima.', 1, 1, '2012-08-03 10:03:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 84, 60, 'Optio eaque occaecati omnis illum dicta. Totam nostrum rerum eaque est sit unde omnis. Ex laborum amet maiores labore. Nesciunt aliquid fugit quia impedit iusto eos.', 1, 0, '2018-01-16 10:45:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 54, 71, 'Dolores aut et aut minus ut perferendis sed exercitationem. Dolores veniam quam dolorem quae. Temporibus repellendus ut impedit ut accusantium corrupti.', 1, 1, '2015-02-12 09:03:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 98, 17, 'Autem esse hic aut est placeat ut. Voluptatibus omnis molestiae perspiciatis dolor.', 1, 0, '2015-05-09 13:52:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 32, 6, 'Est itaque dicta quis ad perspiciatis beatae deserunt. Quos maxime omnis atque quibusdam error. Ut voluptatem praesentium animi dolor. Sunt voluptate rerum libero corporis nesciunt.', 0, 1, '2011-10-01 11:13:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 17, 48, 'Et commodi aut nobis sapiente animi. Quod sit quam hic expedita fuga nisi. Molestiae necessitatibus sed magnam illo non doloremque consectetur quidem.', 1, 0, '2015-07-16 02:01:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 1, 15, 'Non nam alias aut est tempore porro aspernatur. Temporibus sapiente omnis eum et sed voluptatem. Delectus veniam explicabo voluptatem voluptatem. Beatae labore quam omnis rerum est suscipit.', 1, 1, '2016-12-19 05:30:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 98, 56, 'Aliquam molestiae quas aut nulla dolorum veritatis ea. Ad quia perferendis voluptatem ipsam. Officia saepe et doloribus aut mollitia unde temporibus. Nihil minima perspiciatis repellendus placeat eum sint nam.', 0, 0, '2010-03-18 02:47:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 77, 52, 'Sit vitae nulla dolore. Perspiciatis blanditiis esse error laborum. Nihil veritatis excepturi laboriosam aut reiciendis.', 0, 1, '2018-04-15 05:52:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 56, 'Qui placeat provident modi officia ea. Debitis magnam dolor voluptates earum.', 0, 0, '2017-06-26 08:45:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 3, 85, 'Nisi voluptatem placeat consequatur repellat quae iusto sit. Consequatur sint velit et non commodi fuga quia. Laborum distinctio officiis quos eum consequatur impedit. Ut est sunt est fugit iusto.', 0, 0, '2012-12-20 18:19:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 2, 55, 'Corrupti sed totam sapiente enim voluptas modi soluta aliquid. Optio placeat ipsa voluptatem qui rerum inventore. Et voluptatem sequi magnam exercitationem.', 1, 0, '2014-07-21 19:55:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 67, 49, 'Alias nihil qui voluptatem et ut rerum ut. Ipsum nostrum voluptates et natus. Excepturi sequi expedita ut debitis est. Adipisci sed doloribus eum velit ut repellendus dolores.', 0, 1, '2016-11-28 12:42:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 22, 44, 'Voluptas aut alias architecto architecto qui necessitatibus. Aut explicabo quos totam mollitia.', 1, 1, '2013-09-01 23:41:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 68, 93, 'Dicta cupiditate quis quibusdam nisi non. Voluptatem aut beatae architecto temporibus. Quos pariatur veniam quod similique.', 1, 1, '2017-01-13 04:09:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 88, 18, 'Earum ea et amet est deleniti. Ea animi harum architecto hic voluptates similique at. Dolorem aspernatur amet amet placeat sed.', 0, 0, '2018-06-10 07:05:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 11, 89, 'Fugiat perspiciatis veniam sunt numquam omnis in iste. Debitis quis vitae nihil impedit esse. Architecto ut quo quia necessitatibus ut sunt.', 1, 0, '2015-04-12 10:55:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 35, 69, 'Ex minima corporis cumque modi dolore. Dicta odit porro autem aut optio quia beatae hic. Ea beatae eaque quia praesentium occaecati.', 1, 0, '2010-04-29 16:56:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 63, 26, 'Cumque omnis et quibusdam porro. Et quibusdam id omnis tenetur eos qui.', 1, 1, '2010-12-09 06:52:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 62, 16, 'Et numquam doloremque asperiores esse voluptas. Veniam a incidunt aliquid. Cumque facere consequatur reprehenderit facilis excepturi aut iure. Velit sunt vel architecto consequatur quasi.', 0, 1, '2012-09-20 17:43:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 15, 37, 'Error totam maxime fugiat aut est sequi ut. Sunt illum dolorum incidunt eum et vel ut. Ut quasi et nam aut vel eaque voluptatem. Illo dolor dignissimos sunt adipisci doloremque similique quia et.', 1, 0, '2017-06-12 16:31:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 1, 84, 'Cum ut quam fuga. Est corrupti quo architecto animi officiis a velit nostrum. Eos dignissimos et et nihil.', 0, 0, '2013-02-25 00:53:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 95, 42, 'Dolore laborum quam et error itaque aliquam libero alias. Architecto explicabo ipsam eos dignissimos eos. Dignissimos aliquam labore eum accusantium error sit sit quasi. Inventore est illum aut eos voluptate.', 0, 0, '2014-12-26 19:25:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 11, 28, 'Dignissimos libero nihil voluptatem unde delectus molestiae hic. Sit sed accusantium excepturi et facilis at. Ab dolorem autem iusto possimus sunt. Et voluptatum illum necessitatibus laborum consequatur quo.', 1, 1, '2018-11-12 20:34:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 25, 86, 'Nam qui laborum molestiae tempore. Rem neque deleniti placeat consequatur sunt tempore. Cupiditate omnis minima qui voluptate aut voluptates.', 0, 1, '2011-08-16 20:09:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 33, 8, 'Totam sunt magni et voluptas enim. Soluta aut eligendi velit similique enim. Aut itaque veritatis aperiam qui.', 0, 1, '2019-05-24 02:15:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 91, 75, 'Deserunt qui labore et veritatis ullam asperiores ducimus labore. Beatae et provident sint nesciunt.', 0, 1, '2019-07-19 00:04:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 99, 11, 'Consequuntur eaque in et nisi non ad ut inventore. Itaque dolore omnis quia non eligendi voluptatum. Voluptatum delectus nostrum aut ut nisi dolores.', 1, 1, '2019-08-20 19:00:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 100, 1, 'Sit ipsum velit laudantium aut earum ipsa ut. Quis qui nisi magni. Consequatur minus magni recusandae voluptas ducimus cumque eligendi voluptate. Consequatur quis dolores quaerat et. Quod et doloribus vel asperiores officia voluptatibus.', 1, 1, '2010-05-13 07:46:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 36, 3, 'Molestiae voluptas sed quisquam nobis. Debitis doloremque quos dolore reprehenderit qui eveniet nobis. Dolores quis vero ab ut est.', 0, 0, '2020-01-31 05:21:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 34, 55, 'Veritatis nisi reprehenderit aut aliquid ut alias. Quia eius et accusamus dolores. Quia nihil aut a magni repellendus esse nemo. Consequatur iste vero enim veniam et dicta quam.', 0, 0, '2012-01-27 06:22:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 19, 79, 'Excepturi cupiditate corporis dolores et. Voluptates quaerat perferendis assumenda sequi. Corrupti a nostrum ut voluptatibus rerum eaque porro. Quia in inventore aut id qui et deserunt.', 0, 0, '2011-06-08 21:08:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 45, 36, 'Quisquam illum odit animi consectetur pariatur corporis est. Quisquam sequi delectus asperiores ab. Dolore aliquam sunt tempore officia temporibus quasi ullam. Mollitia sed maiores praesentium eos non eos ipsa. Cumque tenetur provident assumenda voluptatem.', 0, 0, '2014-01-10 11:12:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 81, 64, 'Sed laudantium ipsum ut. Odio sed laborum ratione ut eum. Quasi eaque beatae quisquam autem reiciendis.', 0, 0, '2012-01-06 20:42:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 3, 29, 'Voluptatem aliquam sequi quas iure fugit quo totam. Aut accusantium temporibus quas vel. Ipsa esse officiis minima sequi optio.', 0, 0, '2017-09-07 16:13:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 40, 77, 'Iusto dolorem eum aliquam aperiam quia velit corrupti. Et neque maiores est repudiandae ea dolor. Quidem est omnis quasi qui corporis et eos.', 1, 0, '2010-07-14 10:18:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 22, 52, 'Neque sit tempora et quisquam non temporibus aliquid eos. Et omnis magnam enim cumque quas aliquid laudantium. Sed dolor dolorem tenetur.', 1, 1, '2016-08-11 23:05:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 69, 14, 'Quae accusamus ducimus iusto. Tenetur sequi est aut. Ullam qui nam non ut eveniet.', 1, 1, '2013-06-25 20:53:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 67, 8, 'Quia et fugiat quidem dolor natus. Consequuntur rem nesciunt qui eaque eaque unde et. Eius est tempore quisquam perspiciatis in.', 0, 1, '2012-07-16 01:32:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 80, 4, 'Ut ipsum consequatur omnis occaecati. Quos natus voluptates repudiandae repudiandae error sint possimus. Est enim consectetur rerum fugit porro. Consequatur aspernatur veritatis amet illo.', 0, 1, '2020-01-13 15:46:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 66, 50, 'Vel necessitatibus qui ea suscipit quod quasi voluptatem. Aut facere sunt qui similique doloremque dolores sed.', 1, 0, '2018-01-01 03:18:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 52, 69, 'Aut eius rerum ipsum voluptatum. Magnam praesentium sint consequatur aut natus.', 1, 1, '2019-02-06 08:41:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 34, 22, 'Totam non sunt ex illum hic dolorem ut. Sequi similique iure sequi doloremque.', 1, 0, '2016-04-28 22:33:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 85, 28, 'Blanditiis recusandae error aut. Laudantium sed a quibusdam labore neque consectetur. Laboriosam consequatur sunt omnis rerum eos. Nam deserunt quibusdam pariatur qui eum vel ea.', 1, 1, '2011-02-18 08:05:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 9, 47, 'Porro tempore iusto nam qui. Aut et aperiam nisi at ratione nostrum tempore. Totam asperiores nisi veniam non.', 1, 1, '2013-01-30 12:08:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 84, 32, 'Recusandae amet magni atque aut sunt ullam a. Ipsam iusto dicta aliquid pariatur qui. Voluptatem ea et voluptas consequatur cum. Esse pariatur in dignissimos molestias.', 0, 1, '2011-01-10 02:03:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 62, 84, 'Repellat omnis est sunt quidem modi quod repellendus fugiat. Voluptas error quam ipsa necessitatibus corporis quam et quis.', 0, 1, '2015-11-28 00:18:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 28, 40, 'Rem sunt quasi ullam et aut ad. Nihil est beatae id eos iusto a adipisci. Ab nam earum nisi quia illum minima libero.', 0, 0, '2013-12-24 15:52:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 32, 90, 'Provident maiores eos optio perferendis dolor. Ipsum error adipisci quo aut voluptatum id et. Officia id culpa consequuntur a id.', 0, 1, '2019-04-06 12:13:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 36, 35, 'Quia sint at rem quos excepturi laudantium eum. Eum sint repellendus alias voluptatem nostrum ut quidem. Voluptatem quaerat est quia perferendis animi dolor ea.', 1, 1, '2014-01-05 08:55:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 53, 53, 'Vel qui aut ducimus ut est dolorem. Ut animi quasi unde dolore. Quod eligendi laudantium culpa laudantium deserunt.', 1, 1, '2013-11-12 14:38:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 26, 95, 'A vitae vero repellat voluptatem doloremque voluptas enim. Ad facilis aspernatur aut commodi iusto qui voluptatem. Voluptatum consequatur quos laborum.', 0, 0, '2019-12-27 09:47:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 52, 26, 'Accusamus illum qui asperiores harum ut. A nisi odio fuga ipsum ratione ut occaecati. Sint quasi ad corporis dolor tempore unde odit corrupti.', 1, 1, '2016-04-14 02:58:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 65, 16, 'Sint aperiam rerum inventore voluptas impedit ea recusandae. Vel aut modi et dignissimos. Temporibus occaecati debitis odio nihil fugit deserunt unde. Facilis harum ducimus blanditiis quia laudantium eaque nemo.', 0, 1, '2016-12-16 23:25:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 85, 57, 'Eum architecto aut consequatur fuga enim molestias itaque totam. Eius in animi aliquam provident itaque nostrum rerum. Labore nihil esse fuga sit architecto nihil. Animi esse hic doloremque enim.', 1, 0, '2011-08-09 07:57:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 100, 40, 'Non voluptas beatae exercitationem. Aperiam est tempora iure inventore sint aut reprehenderit. Eaque non beatae aut et. Impedit itaque ut reiciendis dolorem.', 1, 1, '2017-04-30 03:51:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 41, 95, 'Eveniet sunt mollitia in non aut. Illum minus excepturi reiciendis voluptate voluptatem ab. Ea delectus dolor quisquam ea voluptatem optio vitae consequatur. Voluptatum ut numquam et sunt iure itaque reiciendis.', 0, 1, '2019-01-15 23:56:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 46, 74, 'Sapiente temporibus aspernatur facere repellat quae est. Quia ipsa consequatur et consectetur quod eius. Aut reprehenderit aut omnis minus suscipit aliquid magni. Nihil nihil voluptatibus quidem velit est similique unde.', 1, 0, '2015-11-13 05:41:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 34, 37, 'Vitae nemo odit illum repellat aut omnis. Necessitatibus laboriosam veritatis dicta et aut dolor vel. Sit labore nihil amet rerum porro et. Sed ab eligendi deleniti et velit tempora enim autem.', 0, 0, '2019-07-17 08:33:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 24, 59, 'Ipsa in repellendus modi magnam alias aspernatur voluptatibus velit. Architecto deleniti eveniet ut harum qui totam ut. Modi temporibus odit quidem voluptas.', 1, 1, '2019-03-25 13:39:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 81, 40, 'Voluptatum iusto dolor quaerat vel est culpa quia. Incidunt sequi qui quia esse voluptate saepe. Sunt nisi cupiditate est nihil nemo nihil. Excepturi praesentium quaerat vero facere.', 0, 0, '2013-03-03 21:49:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 68, 63, 'Qui tempore id nostrum nemo facere qui aspernatur omnis. Itaque sed praesentium fugit nihil quis doloribus. Est eaque deserunt omnis quia porro. Rerum molestiae soluta ea quia unde necessitatibus. Qui consequatur nam architecto vitae omnis.', 1, 1, '2016-04-22 02:12:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 75, 61, 'Vel architecto vitae repudiandae necessitatibus impedit magni. Similique vel error excepturi vero aliquam. Neque optio quis nesciunt adipisci quaerat dolores.', 0, 0, '2013-04-16 12:57:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 86, 82, 'Modi cum possimus officiis et. Ut et omnis ut minus in eaque qui.', 1, 0, '2014-09-12 07:34:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 40, 88, 'Mollitia ut et dicta. Doloribus aut commodi illum. Ea beatae distinctio tenetur officiis quia. Suscipit commodi sequi ut dolores.', 0, 1, '2016-06-01 20:38:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 65, 78, 'Fugiat voluptatem qui ea quia sint qui quia sint. Inventore est doloribus vel voluptas animi soluta. Amet odit qui aut quasi aut odit. Reiciendis ab eligendi et debitis quis vitae.', 1, 0, '2014-09-07 04:05:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 30, 39, 'Hic cumque magnam voluptas at quis voluptatem. Quo quos in doloribus ex. Delectus fugiat placeat quaerat corporis ut. Nihil sed ut soluta sequi.', 1, 1, '2011-05-03 21:51:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 92, 5, 'Perferendis consequatur dolorem nemo qui quia. Est similique saepe sequi impedit quis omnis dolorum. Eveniet labore aperiam et modi.', 0, 1, '2016-08-20 06:33:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 71, 54, 'Reiciendis officia harum et. Et minima nemo deleniti rerum libero. Repellat ratione mollitia saepe.', 1, 1, '2012-08-11 04:58:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 57, 57, 'Aut quia sunt nihil dolorem. Qui et consequatur rerum possimus similique.', 1, 0, '2014-09-21 08:14:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 15, 88, 'Et repellat accusamus illum omnis quidem perspiciatis iure et. Et accusamus eum sed cumque. Sint voluptatem quidem deleniti qui nobis corporis. Nostrum ad sed deserunt dolor quo dolorem.', 0, 1, '2018-02-27 01:02:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 73, 75, 'Esse et dignissimos expedita omnis rerum commodi. Est quibusdam rem dicta velit. Aut unde ea numquam omnis quas ipsa.', 1, 1, '2018-01-24 07:22:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 53, 35, 'Dolores voluptatum blanditiis ut ratione et totam voluptatem. Qui aut laudantium nam non. Qui non atque fugit fugit est est occaecati. Animi molestiae velit asperiores est. Facere saepe id sed amet qui cum.', 0, 1, '2016-11-27 08:15:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 36, 90, 'Consequuntur quo in impedit deserunt vel id non ipsam. Illum culpa non et ut consequuntur error dicta. Aliquam pariatur voluptatem et voluptatum eligendi ab nihil harum.', 0, 1, '2010-08-14 20:06:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 80, 70, 'Ducimus eos et ea est. Est commodi suscipit harum. Qui esse odit quo ut dolorem non perferendis placeat.', 1, 0, '2011-10-10 14:50:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 73, 45, 'Odit qui eos deserunt dolore odit. Voluptatem rerum suscipit nulla ullam corporis. Qui vel in dolorum vero.', 0, 1, '2012-03-01 21:15:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 97, 10, 'Magni aperiam quia enim. Magnam explicabo eum a est eius sint. Omnis eveniet rem rerum adipisci quam. Quia blanditiis odio at ut debitis fugiat quod.', 1, 1, '2016-12-19 09:25:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 93, 'Suscipit facilis ut deserunt ad nobis doloribus et. Placeat aut eveniet consequatur earum aliquam dolore omnis sunt. Laudantium eos voluptatem expedita nemo.', 0, 0, '2015-08-23 05:52:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 20, 48, 'Voluptas id sunt in. Et reiciendis harum consectetur minima similique nisi quam. Iste repellendus aut error est autem impedit. Amet eum quidem voluptatem voluptatem.', 1, 0, '2012-10-07 06:55:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 65, 49, 'Provident vel molestias provident velit placeat et necessitatibus. Quisquam eos repellendus rem repudiandae minima. Vel et odit soluta perspiciatis.', 1, 0, '2014-03-29 05:14:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 53, 10, 'Ipsum eveniet numquam officia qui. Sapiente est eum beatae.', 0, 0, '2013-12-15 13:13:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 21, 82, 'Quod omnis magni ipsum perspiciatis et necessitatibus aliquam. Accusamus et vel pariatur modi quidem ullam nostrum. Temporibus saepe aliquid hic ut eveniet architecto.', 0, 0, '2011-03-02 19:07:08');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL,
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_id` int(10) unsigned NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (1, '', '1985-07-20', 'Aldenville', 'Norfolk Island', 16, '2010-05-17 10:10:32', '2013-03-30 19:59:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (2, '', '2000-06-13', 'New Jean', 'Saint Lucia', 96, '2011-03-03 09:39:25', '2010-06-16 07:04:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (3, '', '2005-04-13', 'Lake Savanna', 'Puerto Rico', 21, '2013-01-01 20:51:48', '2013-01-04 02:06:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (4, '', '1970-03-28', 'Doylefurt', 'British Virgin Islands', 28, '2012-07-23 10:32:12', '2019-05-10 06:09:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (5, '', '1989-03-14', 'Alberthafurt', 'France', 10, '2019-12-22 12:05:23', '2019-01-05 23:05:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (6, '', '1982-06-16', 'East Cordelia', 'Togo', 89, '2012-04-15 13:54:51', '2013-08-26 13:27:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (7, '', '1992-10-23', 'Annamariefurt', 'Kazakhstan', 62, '2019-08-12 00:35:05', '2020-02-20 02:34:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (8, '', '2008-09-11', 'North Bruce', 'Oman', 3, '2014-06-08 03:43:22', '2012-01-20 12:36:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (9, '', '1990-07-05', 'Lake Alivia', 'Haiti', 45, '2010-09-30 02:32:03', '2010-07-13 13:08:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (10, '', '1983-01-26', 'North Ethelmouth', 'Thailand', 72, '2011-09-26 17:45:35', '2013-08-15 20:50:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (11, '', '1999-02-05', 'West Wayneview', 'Italy', 6, '2015-02-12 21:04:53', '2016-08-24 07:30:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (12, '', '1982-01-27', 'Port Clinton', 'Togo', 33, '2015-09-01 17:55:40', '2018-06-25 01:49:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (13, '', '1998-05-01', 'West Bentown', 'Portugal', 93, '2015-09-04 16:04:25', '2011-10-23 08:07:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (14, '', '1992-07-23', 'New Marcuston', 'Macao', 46, '2010-08-11 07:52:36', '2016-11-02 00:13:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (15, '', '1990-11-18', 'New Shemar', 'Tonga', 33, '2014-05-15 12:09:41', '2013-09-08 14:44:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (16, '', '1993-06-20', 'Piperville', 'Burkina Faso', 40, '2013-10-20 08:07:49', '2013-09-15 05:33:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (17, '', '1975-02-27', 'Crooksville', 'Dominican Republic', 98, '2015-07-09 03:56:01', '2016-12-02 20:55:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (18, '', '1987-08-22', 'Jaquanfurt', 'Venezuela', 3, '2012-05-18 16:05:54', '2011-02-01 20:07:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (19, '', '2017-07-02', 'New Euna', 'Mongolia', 56, '2015-12-29 14:54:34', '2019-03-02 01:22:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (20, '', '1998-05-01', 'East Beau', 'Gabon', 51, '2019-08-04 10:52:21', '2017-04-23 01:50:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (21, '', '1995-08-11', 'East Mikebury', 'Martinique', 81, '2016-04-04 18:22:37', '2017-08-22 10:56:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (22, '', '1996-11-30', 'New Fionatown', 'Zimbabwe', 68, '2013-04-14 07:45:44', '2018-08-02 08:00:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (23, '', '2017-07-25', 'Mateoshire', 'Malaysia', 76, '2013-06-01 20:03:49', '2013-05-28 01:21:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (24, '', '1971-08-26', 'Serenaview', 'Cambodia', 11, '2017-01-23 13:16:36', '2011-05-06 19:55:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (25, '', '1994-07-31', 'Lake Zorashire', 'Saint Lucia', 39, '2019-08-30 20:23:44', '2018-09-15 02:00:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (26, '', '1995-08-31', 'South Peterville', 'Palestinian Territory', 9, '2012-05-17 08:20:54', '2017-04-27 10:52:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (27, '', '1991-01-22', 'Lake Dominiqueside', 'Tokelau', 100, '2015-06-17 00:18:30', '2014-10-06 16:25:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (28, '', '1994-11-08', 'South Kaleyborough', 'Guatemala', 87, '2012-07-05 23:18:16', '2015-12-15 23:25:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (29, '', '1998-01-20', 'North Marlinmouth', 'Ukraine', 78, '2017-11-20 20:02:45', '2016-04-09 15:21:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (30, '', '1983-07-13', 'Hayesfurt', 'Finland', 91, '2014-10-15 23:12:29', '2015-02-06 20:15:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (31, '', '2019-02-06', 'Lake Terryfurt', 'Denmark', 4, '2012-05-13 06:33:57', '2016-09-15 01:38:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (32, '', '2008-02-17', 'Alishaside', 'Panama', 33, '2010-07-02 22:52:11', '2014-10-30 09:25:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (33, '', '1992-01-24', 'Lake Aidan', 'Kyrgyz Republic', 86, '2016-09-06 08:35:24', '2015-04-20 12:09:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (34, '', '2012-03-03', 'Missouritown', 'Saint Barthelemy', 5, '2016-10-08 02:14:47', '2012-12-24 01:11:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (35, '', '1972-05-09', 'Richardburgh', 'Bermuda', 34, '2010-09-10 08:51:03', '2016-10-18 13:07:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (36, '', '2010-03-15', 'Ernserville', 'Finland', 42, '2019-05-15 19:15:35', '2016-04-28 00:08:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (37, '', '1989-12-04', 'New Winonahaven', 'Svalbard & Jan Mayen Islands', 68, '2012-05-18 11:28:55', '2019-04-08 14:55:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (38, '', '2012-12-16', 'Fridaville', 'Liechtenstein', 65, '2019-08-10 13:52:30', '2019-12-24 20:58:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (39, '', '2004-12-30', 'Justynfort', 'Niger', 34, '2013-06-13 11:29:54', '2016-09-14 06:19:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (40, '', '2003-03-29', 'New Percyview', 'United States of America', 11, '2019-09-08 09:45:07', '2019-12-13 03:38:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (41, '', '1972-05-25', 'East Keshaun', 'Kazakhstan', 68, '2010-08-26 03:31:44', '2016-06-07 13:59:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (42, '', '1996-03-11', 'West Linneaport', 'Anguilla', 18, '2012-01-29 11:20:02', '2015-03-17 18:17:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (43, '', '2018-12-14', 'Sabinaside', 'Kenya', 68, '2019-09-15 12:57:26', '2018-08-13 17:51:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (44, '', '1978-06-27', 'Port Dortha', 'Guatemala', 98, '2017-08-21 01:35:24', '2019-12-23 10:32:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (45, '', '1981-03-27', 'West Carmelville', 'Ukraine', 72, '2013-04-02 22:20:32', '2019-09-09 13:40:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (46, '', '2010-11-24', 'Julietberg', 'Malaysia', 12, '2019-09-14 18:38:40', '2015-08-31 19:35:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (47, '', '1990-04-26', 'Port Jerroldshire', 'Cambodia', 62, '2013-07-19 01:05:05', '2019-06-02 12:47:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (48, '', '1987-05-29', 'West Lee', 'Gibraltar', 37, '2016-03-23 01:37:01', '2013-11-12 20:33:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (49, '', '1975-02-14', 'Jasenmouth', 'Isle of Man', 38, '2017-08-25 19:10:16', '2018-12-29 08:45:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (50, '', '2004-09-19', 'East Irwinfort', 'Macao', 12, '2019-06-10 01:36:11', '2013-04-30 00:51:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (51, '', '1980-11-02', 'Modestaport', 'Nicaragua', 61, '2018-10-20 10:09:43', '2019-04-22 18:44:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (52, '', '2013-07-31', 'Filibertobury', 'Holy See (Vatican City State)', 87, '2017-11-21 08:26:52', '2019-07-08 23:18:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (53, '', '1991-04-21', 'Amberton', 'Niue', 15, '2010-04-26 17:39:32', '2019-07-23 13:35:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (54, '', '1995-03-07', 'Goyettemouth', 'Ecuador', 57, '2010-06-20 14:32:35', '2010-07-02 09:07:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (55, '', '2006-03-21', 'Sylviashire', 'Brunei Darussalam', 51, '2015-07-25 22:23:13', '2015-12-15 14:04:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (56, '', '1973-12-21', 'Noelborough', 'Barbados', 82, '2017-10-31 13:20:31', '2017-06-11 12:57:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (57, '', '2006-11-18', 'South Oleta', 'Slovakia (Slovak Republic)', 68, '2016-03-23 21:35:04', '2012-01-21 21:56:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (58, '', '2012-11-26', 'Rueckerside', 'Liberia', 60, '2013-05-02 20:34:35', '2010-06-18 20:54:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (59, '', '2009-08-23', 'New Carrollmouth', 'Comoros', 29, '2015-06-20 05:41:46', '2011-10-23 20:35:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (60, '', '1987-05-25', 'Connburgh', 'Honduras', 17, '2016-06-19 13:47:57', '2013-04-26 22:00:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (61, '', '1996-10-18', 'Port Wyman', 'Micronesia', 61, '2012-09-01 07:06:02', '2012-04-02 11:24:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (62, '', '1989-04-04', 'North Meredithmouth', 'Mauritania', 79, '2014-03-30 12:40:12', '2011-06-03 07:50:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (63, '', '1970-06-18', 'South Reinholdberg', 'Oman', 78, '2012-12-23 20:48:43', '2015-05-03 21:29:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (64, '', '2019-12-31', 'Port Inesborough', 'Afghanistan', 2, '2012-11-04 14:05:31', '2010-06-28 11:08:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (65, '', '2018-02-06', 'Olsonstad', 'Gambia', 4, '2011-07-09 07:37:45', '2017-08-22 07:32:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (66, '', '1980-10-06', 'Ziemannview', 'Chad', 18, '2014-08-01 23:58:56', '2010-10-03 21:17:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (67, '', '1991-03-25', 'West Billieburgh', 'Malawi', 3, '2020-01-19 22:11:31', '2013-04-20 14:40:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (68, '', '1994-11-12', 'North Colleen', 'Guyana', 92, '2017-01-14 07:17:32', '2015-11-03 22:42:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (69, '', '1988-11-23', 'Cheyennehaven', 'Vietnam', 41, '2017-09-25 19:14:48', '2011-04-26 09:54:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (70, '', '1975-10-28', 'Norberthaven', 'Hungary', 72, '2018-02-23 18:12:40', '2010-10-28 08:57:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (71, '', '1993-03-16', 'Reingerfort', 'Saint Lucia', 85, '2013-09-13 10:37:48', '2016-06-27 13:21:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (72, '', '1993-01-07', 'Lake Lacey', 'Greenland', 5, '2019-03-27 07:37:22', '2013-11-24 19:15:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (73, '', '2010-07-29', 'Julietburgh', 'Paraguay', 7, '2012-10-10 01:36:32', '2016-07-30 06:40:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (74, '', '1975-12-27', 'South Victorburgh', 'Bosnia and Herzegovina', 62, '2019-06-18 03:56:15', '2017-04-22 02:10:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (75, '', '1996-11-07', 'Colemouth', 'Jordan', 67, '2016-10-26 13:02:15', '2013-09-06 03:48:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (76, '', '2018-07-13', 'Amyfurt', 'Martinique', 46, '2014-02-08 00:10:57', '2017-10-31 18:03:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (77, '', '2005-10-28', 'Terrellborough', 'Moldova', 43, '2010-09-18 09:38:24', '2016-09-24 08:22:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (78, '', '1997-04-26', 'East Augustborough', 'Wallis and Futuna', 94, '2013-03-14 14:10:19', '2014-07-24 03:02:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (79, '', '2013-08-24', 'Port Jettie', 'Turkey', 84, '2011-02-22 05:25:47', '2017-06-22 03:20:36');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (80, '', '1976-08-05', 'Schoenville', 'Cambodia', 8, '2011-08-16 22:45:45', '2013-10-17 13:18:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (81, '', '2003-12-04', 'Port Johnathanbury', 'Swaziland', 92, '2011-07-17 01:28:13', '2020-02-21 04:03:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (82, '', '2008-01-04', 'Gaylordland', 'Senegal', 100, '2010-04-12 22:46:55', '2013-07-17 22:35:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (83, '', '2014-04-04', 'Donavonhaven', 'Sri Lanka', 72, '2012-02-02 00:35:12', '2018-10-05 10:11:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (84, '', '2000-06-23', 'Wilfordhaven', 'Trinidad and Tobago', 98, '2013-09-05 15:22:24', '2012-02-16 11:14:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (85, '', '1977-06-13', 'Beershire', 'Croatia', 9, '2015-05-26 00:53:17', '2014-09-25 08:49:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (86, '', '2001-09-17', 'Aniyahville', 'Netherlands Antilles', 75, '2018-09-07 14:55:26', '2018-01-12 06:29:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (87, '', '2013-06-23', 'West Justontown', 'United Kingdom', 22, '2011-08-28 01:22:03', '2013-09-15 21:48:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (88, '', '2001-04-10', 'North Thurman', 'Lesotho', 44, '2018-08-26 20:39:01', '2010-03-27 08:34:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (89, '', '1985-07-06', 'Marcelinaberg', 'British Virgin Islands', 19, '2012-09-10 15:32:11', '2018-03-26 02:45:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (90, '', '2008-04-27', 'East Fletcher', 'Nauru', 46, '2010-09-23 02:46:59', '2018-09-10 04:10:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (91, '', '2002-07-12', 'Kuvalisstad', 'Senegal', 32, '2016-06-05 01:16:17', '2011-06-12 14:36:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (92, '', '1978-09-23', 'North Hadley', 'Martinique', 6, '2015-11-19 10:55:16', '2010-03-01 01:37:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (93, '', '2019-02-09', 'Busterport', 'Korea', 2, '2011-07-21 22:19:29', '2010-10-27 23:46:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (94, '', '2002-01-30', 'Chanelview', 'Angola', 34, '2019-08-10 23:42:35', '2015-04-01 15:22:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (95, '', '1976-10-16', 'Leilaniland', 'Germany', 26, '2010-12-07 17:58:26', '2015-06-25 18:58:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (96, '', '2000-10-17', 'Romaineport', 'Pakistan', 51, '2018-10-01 19:45:19', '2013-03-13 20:03:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (97, '', '1973-06-08', 'Okunevaberg', 'Niger', 9, '2010-07-19 05:03:11', '2019-02-17 01:17:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (98, '', '2018-04-13', 'North Avis', 'Dominica', 51, '2014-05-26 22:21:20', '2018-06-01 01:57:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (99, '', '2001-01-27', 'Lebsackburgh', 'Mali', 72, '2014-06-22 15:49:09', '2019-03-01 00:12:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `photo_id`, `created_at`, `updated_at`) VALUES (100, '', '1994-08-09', 'Port Malindachester', 'Monaco', 47, '2014-03-20 03:59:18', '2018-05-13 22:43:09');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Liana', 'Morar', 'ureichert@example.com', '417.873.3875', '2016-02-12 08:44:44', '2019-10-31 06:47:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Walter', 'Graham', 'roob.griffin@example.net', '+07(7)4910479517', '2015-03-02 23:36:03', '2015-05-15 16:11:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Dovie', 'Raynor', 'ansley30@example.org', '687.603.5781', '2017-01-21 14:35:13', '2014-10-14 15:04:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Maud', 'Terry', 'vhegmann@example.org', '568-560-5418', '2016-05-29 08:18:00', '2016-10-20 22:11:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Casper', 'Goldner', 'lenny.lind@example.com', '922.127.5950x36633', '2014-07-09 16:59:53', '2019-09-12 19:38:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Quinton', 'Torphy', 'glesch@example.net', '1-317-155-1185x065', '2012-02-09 00:52:28', '2010-07-04 15:42:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Hobart', 'Hansen', 'josiane.bergnaum@example.org', '1-278-639-1590x30297', '2010-12-13 17:45:00', '2018-09-19 09:34:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Linwood', 'Wolff', 'qbatz@example.com', '142.733.0317x8246', '2017-08-12 02:40:49', '2012-07-15 05:00:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Matt', 'Heathcote', 'weimann.jazlyn@example.org', '(864)977-2099', '2010-12-01 22:43:26', '2010-08-08 06:23:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Vickie', 'Bashirian', 'ntorp@example.org', '352.974.7643', '2012-02-26 11:15:22', '2020-01-23 15:26:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Alexanne', 'Bartoletti', 'csmitham@example.net', '890-206-2506x0210', '2010-05-29 21:13:31', '2012-02-11 18:28:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Darron', 'Shanahan', 'powlowski.antone@example.com', '+59(4)5850442190', '2017-09-08 10:44:46', '2018-05-10 01:53:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Chadrick', 'Funk', 'presley.halvorson@example.com', '(629)739-6893', '2011-03-28 14:52:04', '2016-09-22 01:11:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Okey', 'Wehner', 'stoltenberg.alanis@example.net', '206-019-2866', '2015-04-28 10:58:58', '2019-05-01 04:53:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Julianne', 'Gerhold', 'ugreen@example.net', '1-849-956-9209', '2019-03-07 05:03:11', '2018-09-27 19:39:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Kelley', 'Hayes', 'hschinner@example.net', '432.516.9222', '2012-11-07 06:45:45', '2011-09-01 22:38:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Eulah', 'Crist', 'estel91@example.org', '040-744-0532x08568', '2016-05-29 23:22:15', '2015-12-24 18:10:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Jaren', 'Monahan', 'erika.denesik@example.org', '(445)668-3461', '2011-05-01 13:37:59', '2017-08-21 03:46:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Alvera', 'Kilback', 'dovie27@example.org', '291.357.5962x657', '2010-10-06 06:35:03', '2014-11-04 01:54:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Tony', 'Hills', 'ayost@example.com', '(738)089-9213x589', '2014-11-05 12:54:44', '2011-04-01 19:36:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Zola', 'Corwin', 'sydney.daniel@example.com', '01722355712', '2018-10-30 09:33:25', '2011-02-15 13:49:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Name', 'Bernhard', 'clint.lindgren@example.com', '758-732-4131x7410', '2018-03-05 00:11:00', '2015-09-26 09:53:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Danika', 'Hilpert', 'scarlett.stroman@example.org', '706-528-3656', '2014-01-24 02:45:19', '2010-07-05 15:09:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Hilbert', 'Boyle', 'marisol61@example.org', '704.602.0124x506', '2012-03-26 23:20:02', '2019-05-16 00:31:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Rae', 'Schuppe', 'cassandre.tillman@example.net', '(245)034-3093', '2012-09-01 03:11:58', '2013-06-29 16:38:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Miller', 'Lockman', 'michelle.hoppe@example.com', '+03(9)5894063270', '2014-05-22 12:41:26', '2014-10-01 12:32:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Marilie', 'Stamm', 'kyla.grimes@example.org', '416-445-4294', '2010-03-20 17:09:45', '2014-05-13 17:20:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Montana', 'Wiegand', 'smorissette@example.com', '622.799.8026x1857', '2018-11-22 12:14:25', '2013-08-17 02:26:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Grace', 'Fritsch', 'alessandra47@example.org', '(391)805-3820x052', '2019-06-13 19:22:09', '2016-09-16 07:00:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Colt', 'Prosacco', 'vboyle@example.org', '054.373.6693x700', '2016-04-19 13:52:25', '2018-10-23 01:45:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Veronica', 'Cronin', 'zwindler@example.net', '(281)034-2138x07288', '2018-10-05 05:22:26', '2016-11-16 10:46:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Cleo', 'Ritchie', 'libbie.heller@example.net', '(809)708-0166x68102', '2019-08-05 10:16:21', '2014-04-09 00:03:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Adelia', 'VonRueden', 'abbey60@example.org', '828-367-8667', '2011-10-13 19:51:14', '2011-08-28 23:47:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Krystina', 'Bechtelar', 'cassin.damaris@example.org', '(900)236-9220x6403', '2017-02-19 15:19:12', '2017-06-25 14:15:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Christina', 'Beer', 'nhahn@example.com', '(545)786-0019x770', '2013-01-28 08:10:00', '2010-04-03 00:16:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Tina', 'Brekke', 'xsteuber@example.org', '827.169.2873x861', '2016-11-18 01:52:50', '2017-06-23 18:07:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Haylie', 'Greenfelder', 'walter.jace@example.org', '04135025671', '2016-08-04 19:14:46', '2015-02-16 15:03:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Jalon', 'Rempel', 'dibbert.jazmyn@example.org', '1-228-799-3031', '2014-08-03 11:16:57', '2012-12-04 09:16:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Filomena', 'Runolfsdottir', 'peyton91@example.org', '1-295-899-2084x426', '2017-03-22 04:49:37', '2010-10-22 13:58:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Zella', 'Wisozk', 'hwehner@example.org', '(956)988-5049x20883', '2019-03-02 01:42:14', '2011-10-28 04:54:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Janessa', 'Leffler', 'doyle.ariane@example.net', '842.880.9527x897', '2013-01-16 01:11:44', '2015-12-22 15:20:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Gretchen', 'Bailey', 'kunze.claudine@example.net', '219.921.0671x81807', '2018-12-01 01:27:34', '2014-02-27 03:33:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Eda', 'Cartwright', 'jacobs.marjory@example.org', '+71(6)9521132314', '2018-08-20 13:42:45', '2018-01-22 20:20:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Aron', 'Strosin', 'gussie.harber@example.net', '354-317-6111x48895', '2016-09-27 13:22:51', '2017-12-14 01:19:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Rudolph', 'Bruen', 'block.d\'angelo@example.com', '657.976.2509', '2017-12-23 18:58:22', '2014-01-25 20:46:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Adelle', 'Price', 'hane.ivory@example.com', '(888)547-0704', '2012-10-02 23:13:13', '2013-01-17 20:19:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Alice', 'Baumbach', 'dylan53@example.net', '431-638-2574x5946', '2014-06-19 06:23:31', '2014-02-18 01:18:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Orion', 'Braun', 'krajcik.kendrick@example.net', '(854)861-5777x60679', '2014-08-28 07:27:29', '2016-02-18 01:33:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Wilfredo', 'Lebsack', 'dillon.muller@example.net', '041-582-5655x642', '2015-10-17 09:52:11', '2018-03-15 21:14:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Declan', 'Luettgen', 'vjohnston@example.net', '(290)079-9305', '2018-08-12 12:48:23', '2017-09-07 05:21:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Duncan', 'Kuhic', 'zwiza@example.net', '1-156-704-7598x3411', '2018-05-05 23:21:54', '2013-09-25 18:35:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Cecile', 'McClure', 'janelle19@example.org', '1-100-244-7398x49788', '2013-05-29 01:18:18', '2011-01-08 01:47:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Emely', 'Gulgowski', 'nicolas.carolyne@example.net', '06176170041', '2019-01-27 22:11:54', '2019-11-06 05:58:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Eloise', 'Breitenberg', 'addison.lemke@example.org', '865-101-3339x788', '2011-06-08 16:06:54', '2020-01-02 02:17:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Hubert', 'Dickens', 'larue42@example.com', '663-570-3244x17072', '2016-12-23 12:41:19', '2010-09-14 07:38:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Ryan', 'Monahan', 'juliet18@example.org', '843.630.6821x6785', '2012-01-13 12:21:12', '2014-08-30 09:44:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Sylvester', 'Hagenes', 'emilia.sanford@example.org', '1-777-535-8609x2784', '2014-12-13 22:45:17', '2017-08-09 22:28:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Cierra', 'Kohler', 'abergstrom@example.com', '(451)605-5401x45537', '2019-10-09 21:04:34', '2014-04-06 11:35:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Carli', 'Little', 'augustine53@example.com', '(714)762-3935', '2010-07-02 01:27:58', '2013-12-07 04:55:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Jaquan', 'Emmerich', 'forest01@example.net', '660.867.6614x80930', '2013-09-27 09:58:36', '2012-10-18 04:31:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Flo', 'Barrows', 'ogleason@example.net', '(827)803-3335', '2016-11-21 11:44:21', '2013-01-28 23:07:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Madilyn', 'Becker', 'cicero63@example.net', '1-212-561-9327', '2017-06-25 06:04:44', '2010-07-09 09:54:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Royce', 'Langworth', 'pierre.mclaughlin@example.org', '08461631636', '2010-10-06 19:17:31', '2011-03-18 09:07:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Manuel', 'Champlin', 'bechtelar.randal@example.com', '(668)958-8946x91110', '2014-09-20 05:24:44', '2013-08-16 06:00:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'May', 'Corwin', 'kirlin.amelia@example.org', '1-040-091-0333x99352', '2011-10-12 04:21:45', '2013-03-12 03:54:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Erika', 'Dach', 'paucek.talia@example.net', '01916809635', '2013-01-02 00:57:24', '2019-08-25 16:27:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Jayden', 'Hand', 'bins.sarah@example.net', '231-411-1962', '2013-04-28 01:53:17', '2013-08-07 23:40:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Betty', 'Heathcote', 'donna.jacobs@example.net', '759-822-9404x3845', '2010-09-23 07:21:49', '2010-09-17 19:37:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Buddy', 'Hegmann', 'wintheiser.alyce@example.org', '246-485-5998x87712', '2011-09-12 03:57:37', '2011-03-24 06:45:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Alvina', 'Baumbach', 'tpollich@example.net', '(026)809-7370x0156', '2014-10-16 06:26:14', '2018-03-13 21:09:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Melany', 'Medhurst', 'tweimann@example.org', '1-650-527-1085x9736', '2017-02-24 23:21:53', '2018-12-19 13:27:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Maximillia', 'Schmidt', 'lmarks@example.com', '1-243-304-9985', '2013-01-24 11:01:08', '2017-05-31 17:21:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Hattie', 'Huels', 'yrolfson@example.com', '(406)307-5986x0069', '2013-03-26 17:42:18', '2019-09-06 18:00:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Rashad', 'Volkman', 'tgislason@example.com', '+75(1)1208898590', '2013-10-16 19:05:55', '2016-04-02 07:08:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'Obie', 'Bogan', 'irma.legros@example.org', '08950676088', '2011-12-10 13:23:32', '2010-11-07 00:15:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Rowland', 'Lynch', 'patsy88@example.com', '(217)569-3789x2333', '2011-05-25 15:15:36', '2015-07-27 12:59:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Laura', 'Berge', 'alexandro81@example.com', '1-573-254-7546x24351', '2019-08-22 03:55:01', '2016-04-30 14:34:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Edd', 'Goodwin', 'ahmad26@example.org', '1-728-352-5664x38078', '2011-05-13 22:31:02', '2018-05-28 17:37:10');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Caleb', 'Abshire', 'karson51@example.com', '896.324.2325', '2011-07-29 12:59:44', '2011-04-15 19:04:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Sallie', 'Dickinson', 'ggislason@example.com', '178-765-1041x04269', '2011-06-29 04:44:13', '2011-01-12 13:35:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Ezra', 'Mante', 'afton.bernier@example.org', '1-138-715-4879x5819', '2018-08-24 16:56:40', '2011-06-14 09:01:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Althea', 'Stanton', 'ratke.jena@example.net', '07981506033', '2016-01-10 12:23:20', '2011-01-04 05:36:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Augusta', 'Cremin', 'alexandrine.stracke@example.org', '(182)819-5186', '2016-07-11 03:12:28', '2010-11-24 14:11:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Edwina', 'Walsh', 'janiya.thompson@example.net', '02469890820', '2010-06-12 09:26:48', '2012-10-08 04:59:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Eleanore', 'Sawayn', 'halle.borer@example.net', '479-297-2462', '2010-03-22 14:38:41', '2014-07-16 11:59:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Frank', 'Fadel', 'kristofer.purdy@example.net', '076.614.0564', '2010-04-18 02:00:53', '2015-11-03 01:48:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Edgardo', 'Dickens', 'alexandro.thiel@example.net', '550.860.8806x2038', '2018-12-14 14:47:02', '2017-09-04 03:15:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Kareem', 'Brakus', 'malachi94@example.org', '493-519-9891x157', '2017-03-12 08:12:21', '2016-08-15 20:16:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Phyllis', 'Grimes', 'icole@example.org', '1-643-004-5725', '2016-06-23 12:59:06', '2016-02-28 06:08:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Letitia', 'Metz', 'drice@example.net', '1-464-540-6544', '2019-01-04 01:52:00', '2019-02-21 16:48:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Aliza', 'Bogisich', 'mkovacek@example.net', '504-801-1586x26949', '2010-02-27 03:16:54', '2011-03-09 03:07:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Alize', 'Jacobs', 'miller.jacobi@example.net', '295.985.5118x999', '2012-02-15 18:13:25', '2013-03-11 00:16:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Heloise', 'Wiegand', 'camilla22@example.com', '396.781.7823x804', '2011-12-29 17:02:13', '2016-04-02 15:28:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Claire', 'Friesen', 'kosinski@example.org', '943.636.0139x6005', '2020-02-24 13:30:08', '2015-07-14 22:47:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Noemi', 'Crooks', 'keeling.audrey@example.net', '1-938-759-3219x678', '2017-09-07 19:05:02', '2016-10-30 10:19:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Mariam', 'Larson', 'michele.jerde@example.com', '248.263.3616', '2019-09-27 08:42:51', '2015-11-07 10:21:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Hermann', 'Collins', 'qgislason@example.net', '393-851-6284', '2016-11-04 21:49:29', '2011-03-11 15:43:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Kevin', 'Ruecker', 'trisha.carter@example.org', '992-735-4117', '2017-07-22 06:40:21', '2017-03-29 10:32:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Candelario', 'Heathcote', 'marcelle.brown@example.com', '03433189276', '2014-12-27 07:08:10', '2010-05-29 10:14:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Annabel', 'Krajcik', 'donnelly.letitia@example.net', '067-097-3978x40210', '2011-11-10 19:39:20', '2019-07-27 18:11:36');


