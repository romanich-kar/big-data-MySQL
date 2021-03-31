CREATE DATABASE IF NOT EXISTS vk;
USE vk;
#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'quod', '1987-07-07 03:33:19', '2002-09-14 19:59:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'qui', '1975-05-18 00:06:47', '2002-05-17 15:16:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'consectetur', '1970-09-04 06:46:47', '2003-06-04 16:05:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'vero', '2019-02-18 22:21:59', '2018-05-31 00:48:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'culpa', '1981-08-15 15:32:33', '1976-11-10 02:44:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'aspernatur', '1996-09-21 00:59:36', '2002-08-13 09:35:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'eveniet', '1997-02-09 00:40:55', '1973-03-31 06:58:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'atque', '1994-03-20 07:35:25', '1970-04-16 05:46:30');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'et', '2003-02-28 10:58:53', '1988-06-13 19:07:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'est', '2012-05-12 14:45:23', '1980-07-17 06:50:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'non', '2016-05-06 17:32:19', '1999-06-01 12:38:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'vel', '1977-01-06 15:48:22', '2007-05-11 08:44:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'necessitatibus', '2013-06-06 02:15:29', '2010-02-12 22:40:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'inventore', '1981-04-24 20:12:46', '2008-08-11 00:00:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'dolorum', '2000-07-03 15:55:03', '2021-03-10 08:43:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'officiis', '2003-06-10 16:20:57', '2019-08-27 17:47:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'sequi', '2015-10-11 13:22:14', '2006-01-22 23:55:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'dicta', '1988-11-16 10:36:57', '1986-04-07 13:07:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'deleniti', '2014-10-27 01:58:11', '1994-11-20 22:41:50');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'sed', '1992-03-01 20:11:57', '1993-04-12 17:30:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'ad', '2008-04-13 03:28:31', '1976-11-25 20:09:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'ut', '1989-06-08 06:20:54', '1980-11-05 03:12:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'labore', '2007-03-10 20:48:03', '1986-01-20 15:17:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'natus', '2014-03-24 11:20:11', '1994-11-17 19:07:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'dolore', '2016-12-06 20:16:18', '1972-06-07 21:12:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'asperiores', '2002-08-10 15:21:15', '1981-05-25 22:34:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'ea', '2011-06-10 07:27:40', '1985-08-04 16:53:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'dolor', '2002-01-14 04:20:38', '2002-11-04 13:57:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'molestias', '2020-01-24 16:35:07', '1971-08-18 09:44:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'dignissimos', '1997-04-27 16:53:21', '1990-07-21 12:20:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'sint', '1976-07-19 22:22:20', '1984-06-16 08:29:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'blanditiis', '1998-07-28 01:16:11', '1980-05-07 12:24:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'quia', '2014-07-26 14:29:24', '1992-04-13 12:02:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'voluptatibus', '2020-04-24 23:20:18', '1999-05-08 06:52:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'deserunt', '2003-09-19 23:10:34', '2000-05-09 19:19:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'provident', '1994-10-06 06:29:10', '1971-05-12 01:49:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'aut', '2018-09-03 00:15:58', '2020-12-28 16:02:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'fuga', '2000-12-05 22:04:25', '1974-05-23 08:58:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'error', '2005-10-28 06:32:09', '1978-01-01 16:32:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'odit', '1994-03-20 06:23:45', '1998-11-30 05:14:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'expedita', '1992-04-05 08:53:03', '2020-10-09 21:33:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'cumque', '2020-11-26 21:21:38', '2016-10-29 10:35:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'pariatur', '2015-01-27 13:37:04', '2016-03-24 05:43:13');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'quasi', '1970-02-18 16:15:27', '1977-03-13 06:11:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'illo', '1974-01-09 17:46:28', '1989-08-10 09:10:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'eum', '1973-02-24 03:28:39', '2012-09-11 04:55:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'laudantium', '1996-01-21 10:50:53', '2018-03-17 03:49:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'suscipit', '1977-11-25 05:52:21', '1983-12-14 18:34:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'consequatur', '2014-02-25 08:09:08', '1974-06-28 21:15:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'perspiciatis', '1977-06-23 18:07:50', '1978-12-28 18:23:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'debitis', '2005-06-19 08:15:03', '2013-08-13 04:15:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'ducimus', '1995-08-01 14:26:33', '1991-08-30 16:19:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'omnis', '2003-11-03 13:36:46', '1977-08-26 18:01:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'autem', '1977-03-23 11:51:11', '2006-12-02 11:51:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'saepe', '1982-02-16 03:35:46', '1979-12-25 16:00:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'nam', '1974-03-22 05:45:26', '2010-12-20 20:36:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'quibusdam', '1974-10-22 15:34:26', '1990-01-21 21:19:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'numquam', '1989-01-20 19:55:05', '2004-01-31 09:17:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'fugit', '1980-08-13 17:40:11', '2002-01-05 03:17:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'distinctio', '2020-04-14 11:31:52', '1979-11-17 05:23:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'laboriosam', '1988-11-30 15:01:33', '2001-12-27 11:15:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'quisquam', '1993-12-01 17:41:38', '2013-02-28 20:46:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'reiciendis', '2017-04-02 11:50:46', '1978-06-14 23:40:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'ullam', '1983-02-13 15:32:14', '2016-12-23 15:17:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'architecto', '1987-04-22 03:02:15', '1993-09-30 15:13:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'cupiditate', '1974-06-29 14:06:50', '1995-09-05 11:39:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'rerum', '2001-09-03 16:25:18', '2012-03-01 16:03:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'ab', '1994-12-08 13:41:06', '2013-10-29 07:13:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'commodi', '1971-08-15 01:02:46', '2016-07-01 12:01:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'quidem', '2015-08-28 02:48:35', '2003-08-17 14:42:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'explicabo', '1989-11-21 02:37:40', '2021-01-16 23:54:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'dolores', '2018-12-02 17:25:36', '2000-08-19 10:53:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'sit', '1976-06-12 18:12:21', '1982-03-18 14:34:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'mollitia', '2016-01-09 14:31:22', '1972-10-05 01:53:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'quaerat', '2016-02-10 03:10:23', '1991-06-15 06:39:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'voluptate', '1995-04-29 18:21:37', '2000-04-21 04:10:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'ipsam', '2013-08-06 03:07:40', '2013-05-01 23:04:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'eos', '2003-12-14 02:41:47', '2020-09-18 12:22:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'molestiae', '1980-08-23 19:25:48', '2021-02-16 02:05:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'sapiente', '1994-02-21 15:53:21', '1998-06-16 05:05:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'nobis', '1997-06-05 11:19:34', '1993-12-05 01:10:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'iusto', '2018-04-02 07:53:20', '2009-12-04 08:03:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'nemo', '2007-07-26 18:16:13', '2010-07-24 23:04:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'porro', '1972-08-08 03:03:20', '2011-05-21 10:32:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'exercitationem', '1988-10-23 11:24:56', '1972-04-30 01:26:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'quo', '1996-10-04 04:28:11', '2002-02-02 10:21:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'sunt', '1995-12-25 00:10:02', '1976-06-09 17:43:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'veritatis', '1971-11-13 18:03:07', '2021-01-17 19:15:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'quos', '2002-04-03 09:27:14', '1991-08-02 16:54:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'a', '1977-04-08 17:58:00', '1973-03-09 07:47:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'repellendus', '1978-10-12 17:51:20', '1976-04-28 01:50:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'accusantium', '2016-03-29 04:26:32', '1971-10-31 16:48:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'voluptatem', '1980-07-29 03:57:43', '2000-02-07 12:51:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'rem', '1973-02-02 06:30:15', '2006-12-18 14:43:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'at', '1988-11-13 15:10:12', '2021-01-05 11:38:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'tenetur', '2009-01-08 08:27:30', '2001-03-28 17:57:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'voluptas', '2017-06-12 18:01:13', '1979-09-17 10:22:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'incidunt', '2010-09-27 01:15:06', '2003-05-06 22:41:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'facere', '1989-03-07 03:16:29', '2018-08-26 16:23:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'veniam', '1993-06-22 02:27:24', '1986-05-28 11:42:09');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 1, '2006-07-01 19:33:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1971-03-20 08:05:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '1997-02-13 08:08:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '1985-07-25 15:09:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '2017-09-06 08:23:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '1980-07-09 15:55:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 7, '1974-09-19 10:18:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 8, '1984-12-19 12:26:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2006-12-20 00:23:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 10, '1991-01-20 13:49:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 11, '2012-07-30 14:11:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 12, '2002-09-22 01:00:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 13, '2005-07-29 10:53:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 14, '1991-06-08 02:45:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (15, 15, '1997-09-16 06:24:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 16, '2002-01-03 00:45:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 17, '1982-10-02 21:13:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 18, '2013-08-23 06:23:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 19, '1970-12-31 16:11:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 20, '2011-02-01 22:13:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 21, '1974-01-18 05:32:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 22, '2016-03-03 23:33:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 23, '2019-11-04 05:07:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 24, '1988-06-22 11:45:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 25, '2004-12-02 12:24:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 26, '1972-04-02 02:45:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 27, '2017-05-23 04:34:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 28, '1994-07-04 17:49:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 29, '1992-07-02 01:36:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 30, '2001-02-16 13:26:57');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (31, 31, '2013-03-10 01:36:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (32, 32, '2011-03-19 05:03:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (33, 33, '1977-02-16 09:53:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (34, 34, '2010-04-16 20:22:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (35, 35, '2000-04-13 07:18:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (36, 36, '1990-09-12 22:33:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (37, 37, '1995-01-07 19:27:39');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (38, 38, '1979-05-28 15:44:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (39, 39, '2014-04-13 17:30:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (40, 40, '1980-12-06 17:16:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (41, 41, '1982-06-16 10:45:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (42, 42, '2012-09-24 10:43:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (43, 43, '2019-03-19 10:30:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (44, 44, '1999-05-28 00:49:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (45, 45, '2019-01-26 02:56:51');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (46, 46, '1970-05-05 10:31:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (47, 47, '1995-03-05 23:46:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (48, 48, '1980-05-19 08:34:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (49, 49, '1999-04-24 01:09:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (50, 50, '1983-07-08 14:05:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (51, 51, '1993-11-28 13:50:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (52, 52, '1985-01-23 12:23:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (53, 53, '1975-01-09 20:32:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (54, 54, '2013-01-22 01:12:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (55, 55, '1993-03-28 19:34:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (56, 56, '2005-03-29 03:57:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (57, 57, '1999-01-29 08:09:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (58, 58, '2011-01-08 21:57:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (59, 59, '1977-05-01 10:49:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (60, 60, '1988-11-10 18:51:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (61, 61, '2011-10-04 22:10:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (62, 62, '1984-06-16 07:47:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (63, 63, '2015-06-22 13:38:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (64, 64, '2012-03-01 13:07:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (65, 65, '1989-08-12 20:22:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (66, 66, '1995-02-02 12:55:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (67, 67, '2012-12-28 06:55:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (68, 68, '2015-02-28 09:05:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (69, 69, '1971-10-03 21:06:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (70, 70, '2002-01-30 22:44:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (71, 71, '1977-12-07 15:06:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (72, 72, '1980-06-11 00:19:09');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (73, 73, '2000-08-03 07:58:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (74, 74, '1991-06-06 11:04:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (75, 75, '2013-11-18 05:10:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (76, 76, '1973-11-21 03:07:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (77, 77, '2019-01-20 07:02:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (78, 78, '2007-12-20 14:02:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (79, 79, '2013-10-26 15:56:10');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (80, 80, '1975-03-23 16:35:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (81, 81, '1987-07-11 22:35:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (82, 82, '1997-07-02 08:13:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (83, 83, '1970-03-13 13:37:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (84, 84, '2010-02-23 20:27:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (85, 85, '1998-09-25 14:29:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (86, 86, '1972-08-27 07:26:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (87, 87, '1971-06-18 01:12:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (88, 88, '1973-11-23 19:16:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (89, 89, '1971-09-07 15:01:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (90, 90, '2007-03-07 21:51:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (91, 91, '2011-04-02 19:36:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (92, 92, '1974-11-20 16:33:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (93, 93, '1986-12-23 17:42:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (94, 94, '1978-04-29 13:15:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (95, 95, '2021-03-27 08:42:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (96, 96, '1972-01-07 07:03:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (97, 97, '1998-01-08 19:29:45');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (98, 98, '1983-10-11 17:16:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (99, 99, '1970-04-04 09:48:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (100, 100, '2012-07-24 11:52:57');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `friendship_status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '1986-03-21 17:55:59', '2004-09-22 14:07:31', '2014-04-01 12:48:38', '2000-02-02 21:34:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 2, 2, '1990-02-15 07:08:20', '2008-02-24 22:25:07', '1974-03-28 16:46:03', '1997-09-08 22:29:04');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 3, 3, '1991-12-23 17:43:01', '1981-08-11 06:14:59', '2020-02-02 16:01:10', '2013-02-22 07:40:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 1, '2010-03-23 19:01:54', '1988-03-10 08:11:22', '2017-07-06 04:18:05', '2015-10-13 15:24:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 5, 2, '1973-01-14 14:32:00', '1997-03-10 10:05:11', '1994-06-28 03:50:56', '2010-07-11 19:47:39');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 3, '2016-07-24 19:19:03', '2014-02-17 04:19:01', '2002-11-13 13:25:44', '1997-11-04 19:07:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 7, 1, '2012-01-13 20:52:15', '1999-10-12 18:01:34', '2014-10-16 04:38:43', '2000-08-02 07:24:46');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 2, '1997-05-03 03:55:02', '2012-04-24 19:04:27', '2008-03-27 01:20:56', '1985-06-12 15:51:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 3, '1990-07-27 23:31:42', '1989-01-23 17:18:39', '2013-06-25 00:09:04', '2018-07-25 19:00:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (10, 10, 1, '2008-06-01 06:50:44', '2010-11-12 06:13:40', '1983-07-05 07:08:28', '1983-10-03 18:28:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (11, 11, 2, '2015-09-11 10:27:46', '1996-03-26 12:56:08', '2008-05-09 03:36:11', '1988-10-24 03:12:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (12, 12, 3, '1986-02-12 01:34:55', '2005-01-31 07:03:23', '1983-01-15 22:21:29', '1989-08-28 10:37:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (13, 13, 1, '2004-10-02 09:49:44', '1984-11-01 17:46:41', '2000-05-06 08:28:51', '1999-02-06 02:54:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (14, 14, 2, '2018-12-03 13:44:51', '1990-12-07 22:27:31', '2017-01-25 01:15:44', '2006-08-26 21:45:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (15, 15, 3, '2014-08-06 04:06:38', '1988-12-30 03:02:14', '1976-04-16 17:49:52', '1984-11-11 12:28:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (16, 16, 1, '1988-05-29 18:47:38', '1998-02-12 03:27:13', '2003-03-11 02:26:31', '2014-11-20 20:38:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (17, 17, 2, '1991-01-05 11:23:03', '2007-04-12 12:28:27', '1981-07-09 12:26:14', '2006-08-01 03:13:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (18, 18, 3, '2020-07-25 13:05:07', '2006-08-20 01:58:30', '1984-11-11 20:18:37', '2012-09-04 21:31:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (19, 19, 1, '1992-05-15 14:39:55', '2003-11-05 21:24:13', '1978-09-20 15:39:10', '1974-01-09 10:16:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (20, 20, 2, '2008-01-01 23:10:40', '2006-11-17 19:57:27', '2010-06-16 06:12:26', '2000-12-23 03:00:36');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (21, 21, 3, '2001-07-09 03:07:29', '2015-06-06 17:09:16', '1980-12-02 13:25:58', '2007-09-11 11:23:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (22, 22, 1, '1982-03-28 03:08:13', '2019-01-07 07:05:56', '1989-09-09 14:04:25', '1987-05-07 21:43:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (23, 23, 2, '2020-06-19 14:49:15', '2011-07-15 00:03:48', '2008-11-09 00:48:36', '1989-01-15 18:02:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (24, 24, 3, '1977-10-22 12:48:01', '2018-06-01 02:33:19', '1982-01-11 09:39:30', '1985-01-01 01:51:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (25, 25, 1, '1978-03-18 13:04:05', '2018-09-10 22:15:39', '2007-10-20 06:40:24', '1974-02-16 01:03:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (26, 26, 2, '1973-11-23 23:07:28', '1976-09-25 12:15:13', '1974-11-04 04:07:19', '1975-02-01 20:53:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (27, 27, 3, '1994-10-15 19:52:14', '1977-12-02 14:00:05', '2007-12-16 14:12:26', '2001-01-02 16:20:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (28, 28, 1, '1979-12-07 15:23:27', '1994-07-21 14:14:49', '1988-08-08 04:49:24', '2011-07-19 21:21:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (29, 29, 2, '1984-02-03 06:15:27', '2004-01-01 12:09:09', '1987-07-18 14:03:41', '2015-02-27 12:00:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (30, 30, 3, '2002-03-03 00:55:15', '1995-05-21 18:38:18', '1991-09-08 08:04:36', '2005-11-11 23:09:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (31, 31, 1, '1972-06-25 12:30:51', '1996-05-05 20:33:43', '2005-02-25 09:36:57', '2014-02-10 00:49:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (32, 32, 2, '1970-05-28 19:16:56', '2017-09-17 21:52:23', '2012-10-24 20:43:33', '1998-04-07 13:03:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (33, 33, 3, '2001-01-08 12:10:42', '2001-12-13 23:07:03', '2006-11-07 10:56:43', '1992-08-08 16:35:53');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (34, 34, 1, '1989-08-28 10:06:13', '1973-01-01 09:14:18', '1997-11-17 08:56:13', '1983-09-14 07:35:51');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (35, 35, 2, '1976-04-02 02:22:02', '1991-10-24 23:19:05', '2020-03-13 13:26:42', '2015-10-30 22:09:41');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (36, 36, 3, '1982-06-22 11:47:03', '2017-12-13 01:19:41', '1990-01-11 11:48:29', '2015-09-03 20:37:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (37, 37, 1, '1995-10-13 20:04:07', '1992-11-21 09:35:00', '2000-09-23 23:05:21', '1970-06-08 09:06:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (38, 38, 2, '1973-12-12 17:59:18', '2018-11-23 14:34:14', '1989-03-21 22:16:29', '2003-09-03 12:32:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (39, 39, 3, '1977-06-18 15:55:13', '2008-03-08 15:32:20', '2020-01-27 16:23:58', '2001-11-25 05:20:10');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (40, 40, 1, '1985-04-13 20:16:01', '1991-07-27 01:58:57', '2013-10-12 09:11:14', '1982-06-09 13:36:38');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (41, 41, 2, '2017-03-20 19:56:25', '2008-07-20 22:17:46', '1992-03-30 14:55:25', '2005-04-13 18:56:15');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (42, 42, 3, '2004-03-21 07:55:32', '1988-07-20 05:25:52', '1996-05-26 01:50:14', '2001-11-25 14:53:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (43, 43, 1, '1997-07-24 11:29:24', '1973-09-02 05:43:56', '2011-12-27 02:18:23', '2018-07-26 13:00:13');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (44, 44, 2, '2013-09-06 16:07:04', '1989-04-22 03:50:06', '1994-09-13 05:07:48', '1976-11-08 00:08:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (45, 45, 3, '1982-02-13 11:54:01', '2010-04-09 09:26:00', '1978-03-28 13:22:10', '1992-11-06 11:08:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (46, 46, 1, '1972-08-10 16:13:35', '2012-12-13 02:01:23', '1987-08-08 01:20:42', '1986-05-20 12:40:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (47, 47, 2, '2000-01-25 17:10:02', '2010-10-23 18:52:57', '1991-09-08 09:59:48', '2010-07-18 23:33:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (48, 48, 3, '1997-12-09 23:18:20', '2019-10-27 22:55:44', '2001-01-15 21:18:42', '1983-06-01 23:56:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (49, 49, 1, '1995-08-18 03:08:26', '1978-07-17 06:43:55', '1997-10-20 16:02:56', '1994-06-04 12:24:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (50, 50, 2, '2011-04-09 18:07:24', '2011-04-18 17:43:02', '2004-05-13 08:14:12', '1981-05-15 19:25:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (51, 51, 3, '2015-11-27 06:30:25', '2006-01-22 07:39:16', '1982-11-18 03:05:43', '1995-11-30 08:59:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (52, 52, 1, '2017-01-19 20:42:16', '2001-05-06 15:48:21', '1998-11-07 05:50:08', '2016-01-21 07:12:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (53, 53, 2, '2017-05-22 02:22:46', '2002-04-30 21:46:52', '1989-07-07 13:42:22', '1994-01-07 14:56:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (54, 54, 3, '1994-09-22 10:02:07', '1979-09-02 06:45:37', '1985-11-19 18:38:29', '1977-07-10 14:54:45');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (55, 55, 1, '1998-09-13 09:39:19', '1988-05-16 16:20:35', '2013-11-27 21:09:35', '2019-05-27 15:37:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (56, 56, 2, '1971-08-30 18:17:39', '1985-08-02 16:36:10', '2014-10-14 12:03:03', '1989-02-28 14:35:35');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (57, 57, 3, '2018-06-30 22:05:57', '2008-06-19 19:42:14', '1999-10-01 07:37:26', '1973-11-16 18:50:34');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (58, 58, 1, '1986-05-26 14:35:27', '2002-06-27 02:08:46', '1975-09-04 04:15:09', '1970-04-22 09:44:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (59, 59, 2, '1997-11-26 12:20:34', '1975-09-15 01:45:19', '2018-07-28 15:31:10', '1979-01-11 20:10:52');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (60, 60, 3, '1972-01-10 11:56:25', '1991-01-12 21:00:43', '2006-01-02 17:40:58', '1977-12-04 06:41:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (61, 61, 1, '2006-11-29 08:07:47', '2002-07-16 17:31:17', '1983-09-09 03:12:46', '1981-04-19 05:05:09');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (62, 62, 2, '1990-11-15 11:20:15', '2004-11-23 23:50:56', '2012-10-18 14:41:34', '2019-01-09 06:09:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (63, 63, 3, '1988-12-06 06:14:15', '2017-06-28 09:07:17', '1996-09-18 03:11:12', '1987-10-30 06:14:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (64, 64, 1, '2018-06-22 06:54:05', '1983-11-23 15:32:38', '1996-08-15 07:14:23', '2019-10-09 13:09:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (65, 65, 2, '2001-11-19 22:49:44', '1979-11-20 04:19:37', '2005-10-23 22:45:50', '2003-12-23 13:58:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (66, 66, 3, '2007-07-03 11:57:40', '1997-01-06 07:38:43', '1993-02-20 12:07:44', '2007-09-19 12:57:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (67, 67, 1, '2012-11-15 23:24:02', '1989-05-11 21:07:25', '2001-10-05 08:54:21', '1970-01-03 07:27:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (68, 68, 2, '1994-10-21 13:16:27', '1984-11-16 10:31:34', '1995-07-21 15:54:14', '1972-02-19 14:53:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (69, 69, 3, '2009-09-14 04:46:22', '2020-08-14 13:22:05', '2003-04-23 15:27:54', '1990-07-28 07:43:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (70, 70, 1, '1974-06-20 15:30:00', '2001-10-13 21:01:20', '1973-07-31 12:57:08', '2016-03-05 17:24:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (71, 71, 2, '2010-03-21 11:07:50', '1988-07-14 17:18:35', '1982-12-01 14:30:03', '2000-12-03 14:48:20');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (72, 72, 3, '1990-08-20 05:26:19', '1999-02-05 01:54:47', '2001-03-12 17:40:01', '2000-02-14 20:05:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (73, 73, 1, '2013-10-12 05:35:43', '1987-02-06 20:13:53', '1970-10-25 03:37:18', '2005-10-22 21:19:22');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (74, 74, 2, '1970-01-30 18:03:16', '2002-12-24 22:48:58', '1980-10-25 20:44:53', '2017-04-18 06:15:48');
INSERT INTO `friendship` (`user_id`, `friend_id`, `friendship_status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (75, 75, 3, '1995-04-25 19:06:29', '2009-01-03 18:09:15', '1980-05-03 05:39:10', '1996-07-10 01:34:21');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'friend', '1999-06-12 12:28:29', '1995-09-24 11:20:11');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'not_friend', '2010-05-13 15:09:38', '2010-03-23 13:36:39');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'friendship_requested', '1979-09-06 02:06:25', '2008-09-05 19:31:11');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'dolor', 4430987, NULL, 1, '1985-07-19 18:45:01', '2002-02-06 19:49:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'repudiandae', 85851, NULL, 2, '1992-04-10 20:08:23', '1980-07-23 03:03:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'et', 11540302, NULL, 3, '2007-03-03 03:56:35', '2005-06-30 09:47:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'deleniti', 383608, NULL, 1, '2002-12-02 16:49:02', '2002-07-13 10:01:04');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'ratione', 37, NULL, 2, '2011-12-25 13:43:19', '2008-07-09 14:07:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'excepturi', 8564, NULL, 3, '1978-09-07 08:09:43', '1977-02-26 12:17:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'sunt', 0, NULL, 1, '2009-05-01 12:25:51', '1997-09-22 15:58:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'a', 677965669, NULL, 2, '2014-11-23 17:57:56', '1986-08-14 15:45:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'omnis', 9447532, NULL, 3, '1994-09-21 23:56:25', '2004-04-13 12:26:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'est', 9016, NULL, 1, '1985-06-03 23:53:57', '2009-08-27 14:15:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'voluptas', 906216131, NULL, 2, '1980-12-25 17:28:24', '2011-06-16 06:04:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'mollitia', 211, NULL, 3, '1995-04-17 22:07:40', '2009-09-07 05:34:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'aspernatur', 0, NULL, 1, '1982-11-13 15:52:55', '1982-05-06 22:01:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'qui', 0, NULL, 2, '1996-07-24 13:10:34', '1972-01-24 09:01:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'provident', 7, NULL, 3, '2010-05-03 14:13:09', '2018-11-29 05:41:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'repellendus', 1484287, NULL, 1, '2010-05-05 03:53:55', '1999-07-30 23:28:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'accusantium', 9171, NULL, 2, '2009-11-20 23:48:18', '1974-06-01 23:08:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'officiis', 0, NULL, 3, '1994-11-29 23:42:43', '1975-06-09 02:04:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'repellat', 851264428, NULL, 1, '2000-01-21 00:10:16', '1972-02-24 15:28:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'eius', 449016, NULL, 2, '1979-05-15 14:43:29', '1990-02-01 01:32:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'non', 82358003, NULL, 3, '2014-09-23 00:58:41', '1970-04-06 18:24:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'dolorum', 335, NULL, 1, '2015-03-21 10:27:02', '2007-07-08 05:35:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'voluptas', 0, NULL, 2, '1970-04-20 21:25:34', '1991-03-24 15:53:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'asperiores', 8, NULL, 3, '1985-05-19 17:12:08', '1983-03-12 01:30:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'et', 8993, NULL, 1, '2019-12-21 09:31:26', '1970-04-04 08:25:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'et', 400, NULL, 2, '1980-08-21 15:03:25', '2017-12-14 01:29:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'dolorem', 94176, NULL, 3, '2009-01-29 15:54:29', '2019-09-15 05:02:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'ipsa', 253, NULL, 1, '1998-06-04 07:12:58', '1981-06-23 14:10:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'sunt', 0, NULL, 2, '1989-03-16 10:12:48', '1971-09-06 12:41:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'ut', 189, NULL, 3, '2004-02-22 00:18:20', '1999-07-14 15:40:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'nobis', 8, NULL, 1, '1990-04-10 02:27:10', '2000-12-17 15:51:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'adipisci', 2379464, NULL, 2, '1976-12-26 23:58:42', '2016-02-15 23:17:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'velit', 4, NULL, 3, '2009-11-13 04:38:18', '1987-03-20 06:14:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'velit', 17, NULL, 1, '2004-09-13 08:11:26', '1989-02-18 00:24:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'quod', 17, NULL, 2, '1979-05-15 12:51:01', '2007-11-10 20:29:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'animi', 6, NULL, 3, '2019-09-26 02:52:24', '1999-08-05 02:16:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'sed', 34084859, NULL, 1, '1979-09-27 14:20:11', '1992-03-25 06:42:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'qui', 9316326, NULL, 2, '1988-10-12 18:00:57', '1975-07-02 18:16:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'perspiciatis', 35043639, NULL, 3, '2018-03-29 01:01:38', '1989-09-16 19:54:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'eveniet', 29321, NULL, 1, '2020-08-02 07:48:24', '1972-12-20 05:57:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'molestias', 652896497, NULL, 2, '1997-03-04 14:48:08', '1990-10-16 17:21:30');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'voluptatem', 515149, NULL, 3, '2016-12-19 19:32:49', '1970-01-09 09:40:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'cupiditate', 0, NULL, 1, '1984-02-10 13:54:59', '2016-05-23 17:45:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'sed', 516566363, NULL, 2, '1981-12-13 10:16:13', '2017-06-16 04:29:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'minus', 450341154, NULL, 3, '1985-05-28 11:42:45', '2018-12-09 07:51:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'dolore', 0, NULL, 1, '2005-08-14 07:06:16', '1986-02-26 07:25:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'sunt', 6752, NULL, 2, '1999-09-18 22:19:06', '2014-11-25 08:19:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'et', 560180602, NULL, 3, '1974-10-03 13:07:27', '2018-08-05 19:42:23');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'nobis', 0, NULL, 1, '1999-03-06 11:10:56', '1983-12-05 07:54:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'et', 66064, NULL, 2, '1986-08-10 04:06:10', '1982-07-21 13:22:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'veritatis', 8473, NULL, 3, '2000-09-09 19:16:32', '1975-04-09 04:08:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'optio', 49666, NULL, 1, '1994-02-07 21:34:24', '1994-10-28 15:26:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'in', 61665637, NULL, 2, '2011-06-21 21:58:21', '2008-05-26 05:33:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'et', 66829, NULL, 3, '2014-02-27 04:54:12', '2017-02-13 21:12:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'eligendi', 3710598, NULL, 1, '1974-12-07 08:19:17', '1974-09-11 11:15:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'quod', 251490463, NULL, 2, '1984-02-05 09:47:37', '2011-10-27 08:37:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'nisi', 43037, NULL, 3, '1997-06-30 00:22:08', '2014-07-24 19:53:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'ipsam', 44749407, NULL, 1, '2018-10-13 04:53:37', '1989-08-20 00:11:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'ratione', 5, NULL, 2, '2008-09-04 13:21:40', '1983-12-20 02:45:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'est', 0, NULL, 3, '2020-11-04 10:29:57', '2004-06-08 07:11:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'vel', 37891458, NULL, 1, '1977-11-01 21:14:57', '1976-07-19 14:31:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'natus', 866308965, NULL, 2, '1974-09-26 11:29:53', '1993-10-30 09:05:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'enim', 2, NULL, 3, '1989-10-08 21:47:29', '1988-08-17 12:19:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'ad', 93059967, NULL, 1, '2016-11-25 13:13:26', '1972-08-11 19:17:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'consectetur', 1, NULL, 2, '2014-07-26 15:33:11', '1999-09-16 13:23:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'ipsum', 7, NULL, 3, '2018-09-28 10:52:18', '1996-09-25 19:27:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'non', 88, NULL, 1, '1978-12-10 01:53:13', '2018-02-10 18:39:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'molestiae', 32, NULL, 2, '1992-10-26 13:34:12', '1972-03-24 10:32:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'eos', 48307, NULL, 3, '2018-04-29 11:52:01', '1980-01-16 00:13:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'consequatur', 858611333, NULL, 1, '2012-12-06 21:12:33', '1973-12-04 06:54:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'rerum', 31501, NULL, 2, '1990-03-21 04:51:32', '2007-03-09 14:09:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'non', 85, NULL, 3, '1990-03-26 17:09:06', '1986-02-25 06:33:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'atque', 9233021, NULL, 1, '2005-06-09 03:09:29', '1979-12-21 00:19:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'praesentium', 71, NULL, 2, '2012-07-06 20:16:30', '1993-12-04 02:14:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'aspernatur', 712, NULL, 3, '2015-02-14 22:01:02', '1974-03-27 16:14:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'nulla', 0, NULL, 1, '2020-12-11 14:27:33', '1998-07-19 20:11:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'et', 796, NULL, 2, '1992-02-07 13:41:53', '1995-06-17 15:42:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'quia', 5, NULL, 3, '2005-09-14 15:45:42', '1992-09-30 05:10:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'placeat', 409752, NULL, 1, '1983-10-13 05:15:33', '2019-10-08 10:09:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'quasi', 51961, NULL, 2, '1970-08-16 18:47:59', '1992-01-07 12:27:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'et', 400419, NULL, 3, '1984-02-28 00:19:47', '2015-04-25 07:13:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'suscipit', 6, NULL, 1, '2013-01-01 14:15:43', '1970-09-26 21:41:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'rerum', 7, NULL, 2, '1980-04-11 23:59:12', '2005-12-07 10:33:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'repudiandae', 5813, NULL, 3, '1984-07-31 21:24:56', '1977-09-15 15:55:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'placeat', 457, NULL, 1, '1993-02-15 01:15:45', '1987-06-02 10:26:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'sed', 38, NULL, 2, '2016-05-24 05:49:20', '2014-03-23 19:40:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'ducimus', 73, NULL, 3, '1977-12-30 19:16:31', '1988-01-08 19:21:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'qui', 82, NULL, 1, '2012-03-08 16:30:56', '1994-03-02 15:27:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'corporis', 57332, NULL, 2, '1972-03-16 10:11:52', '1973-12-19 07:56:32');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'sit', 74, NULL, 3, '1990-09-06 06:07:00', '1983-08-15 10:03:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'aut', 0, NULL, 1, '2017-05-08 03:03:01', '1979-10-06 08:10:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'dignissimos', 84197037, NULL, 2, '2008-06-30 23:07:18', '1978-05-16 22:01:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'unde', 0, NULL, 3, '1979-04-03 01:46:32', '2010-11-07 10:27:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'et', 18361249, NULL, 1, '1979-08-20 15:50:26', '1973-04-24 02:53:46');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'et', 603, NULL, 2, '1974-11-17 03:09:01', '1983-04-22 03:05:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'sunt', 10, NULL, 3, '1998-08-05 04:02:01', '2006-05-31 20:31:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'consequatur', 6, NULL, 1, '1970-12-27 10:00:01', '2014-09-17 14:10:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'id', 7480854, NULL, 2, '1990-08-10 13:22:43', '2017-03-16 10:31:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'et', 1, NULL, 3, '2014-07-19 15:21:04', '2004-09-06 19:56:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'debitis', 0, NULL, 1, '1970-08-17 02:09:23', '2014-12-25 10:49:53');


#
# TABLE STRUCTURE FOR: media_likes
#

DROP TABLE IF EXISTS `media_likes`;

CREATE TABLE `media_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который поставил лайк',
  `media_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на медиа файл',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (1, 1, 1);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (2, 2, 2);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (3, 3, 3);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (4, 4, 4);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (5, 5, 5);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (6, 6, 6);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (7, 7, 7);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (8, 8, 8);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (9, 9, 9);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (10, 10, 10);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (11, 11, 11);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (12, 12, 12);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (13, 13, 13);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (14, 14, 14);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (15, 15, 15);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (16, 16, 16);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (17, 17, 17);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (18, 18, 18);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (19, 19, 19);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (20, 20, 20);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (21, 21, 21);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (22, 22, 22);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (23, 23, 23);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (24, 24, 24);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (25, 25, 25);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (26, 26, 26);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (27, 27, 27);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (28, 28, 28);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (29, 29, 29);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (30, 30, 30);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (31, 31, 31);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (32, 32, 32);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (33, 33, 33);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (34, 34, 34);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (35, 35, 35);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (36, 36, 36);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (37, 37, 37);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (38, 38, 38);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (39, 39, 39);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (40, 40, 40);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (41, 41, 41);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (42, 42, 42);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (43, 43, 43);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (44, 44, 44);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (45, 45, 45);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (46, 46, 46);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (47, 47, 47);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (48, 48, 48);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (49, 49, 49);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (50, 50, 50);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (51, 51, 51);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (52, 52, 52);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (53, 53, 53);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (54, 54, 54);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (55, 55, 55);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (56, 56, 56);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (57, 57, 57);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (58, 58, 58);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (59, 59, 59);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (60, 60, 60);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (61, 61, 61);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (62, 62, 62);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (63, 63, 63);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (64, 64, 64);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (65, 65, 65);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (66, 66, 66);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (67, 67, 67);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (68, 68, 68);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (69, 69, 69);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (70, 70, 70);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (71, 71, 71);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (72, 72, 72);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (73, 73, 73);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (74, 74, 74);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (75, 75, 75);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (76, 76, 76);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (77, 77, 77);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (78, 78, 78);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (79, 79, 79);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (80, 80, 80);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (81, 81, 81);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (82, 82, 82);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (83, 83, 83);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (84, 84, 84);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (85, 85, 85);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (86, 86, 86);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (87, 87, 87);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (88, 88, 88);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (89, 89, 89);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (90, 90, 90);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (91, 91, 91);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (92, 92, 92);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (93, 93, 93);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (94, 94, 94);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (95, 95, 95);


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'video', '2018-03-19 16:32:36', '2019-02-12 02:38:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'audio', '1989-05-26 04:56:29', '1994-10-29 09:13:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'picture', '1976-08-06 04:40:12', '2013-10-25 05:37:21');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 1, 1, 'Esse blanditiis qui sit aut saepe et aut. Rem ipsam totam dolorem omnis. Numquam saepe ducimus laboriosam eius qui nisi.', 1, 0, '1997-11-04 12:33:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 2, 2, 'Possimus temporibus quas corporis. Sapiente amet natus incidunt possimus vel sed placeat. Et et aperiam molestiae recusandae eum sit repellendus dolorum. Aut illo quia dicta id. Unde dignissimos et inventore laborum.', 0, 1, '1987-12-20 22:58:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 3, 'Officiis voluptas excepturi laboriosam nisi. Ut eos quia ratione odit maiores. Repellendus sint quae et minima molestiae quod veritatis.', 1, 1, '2011-10-07 07:02:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 4, 4, 'Minus molestiae ipsum eos recusandae voluptatem ex animi. Aut ratione illo quis quibusdam ut quos. Rerum repellat voluptate eius dolorem optio nostrum.', 0, 1, '2005-05-03 18:33:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 5, 5, 'Vero dolores iure sint vitae ipsa a nulla. Harum sit aut et dolorem doloribus. Occaecati magnam officiis impedit ipsa nam autem aut.', 1, 0, '1979-01-29 04:03:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 6, 6, 'Dicta fugit dolorum ratione voluptates distinctio qui ducimus. Qui ea fuga nam enim animi unde quia consequatur. Quos quia dignissimos sit.', 1, 1, '1979-09-14 16:17:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 7, 7, 'Tempora velit odit quasi deserunt minima. Aut autem et quibusdam fugit optio. At necessitatibus hic consequatur eos aliquam soluta sint.', 0, 1, '1975-04-26 22:08:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 8, 8, 'Est nesciunt repellendus delectus dignissimos autem exercitationem est. Aut et ipsum aliquid ut et ipsum suscipit distinctio. Ab et enim accusantium asperiores est sit.', 1, 0, '2019-02-19 06:04:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 9, 9, 'Atque omnis omnis enim quisquam mollitia. Occaecati quam facilis aut voluptatem. Consequatur aut magni facere itaque blanditiis voluptatibus corrupti molestias. Blanditiis similique et pariatur dolor animi fuga harum. Ratione quo exercitationem ut esse.', 0, 1, '2019-04-29 23:50:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 10, 10, 'Veritatis unde facere minus vel earum. Ea omnis et soluta dolorum dicta praesentium. Non doloribus sunt adipisci asperiores dolore id.', 0, 0, '2021-02-26 15:09:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 11, 11, 'Et aut quia voluptatem. Aut soluta ut laudantium ex tempore sed autem. Rerum omnis quae commodi repudiandae.', 1, 0, '2015-10-01 04:03:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 12, 12, 'Voluptatem nostrum fugit consequatur autem et. Consequatur alias saepe rerum fugit nesciunt aut. Autem quibusdam et quia cupiditate id.', 0, 0, '2004-03-19 19:49:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 13, 13, 'Excepturi rem adipisci qui dolor omnis ut atque. Sunt quaerat nostrum minus libero in explicabo. Illum repellat asperiores itaque ullam at sed. Inventore minima molestiae minima dolores voluptatum.', 1, 0, '1974-05-19 17:51:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 14, 14, 'Sapiente quia assumenda facilis iste voluptatem itaque. Voluptatibus praesentium adipisci esse voluptatum consequatur velit. Non et ut quo officiis excepturi dolorum. Dolore rem esse molestiae natus amet voluptatum ullam. Corrupti unde rem voluptatem voluptatum dolore.', 1, 0, '1995-01-11 23:31:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 15, 15, 'Explicabo quae qui non ullam consequatur. Minima illo est quo nemo enim ut minima. Et cum quam impedit eius. Quia iure aliquam sint id.', 0, 0, '1998-05-08 20:46:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 16, 16, 'Ullam similique repudiandae qui ut sit. Expedita voluptates laborum iure laborum exercitationem veniam. Maxime esse sit doloremque qui sit. Et iure eius nemo quae architecto consequatur.', 0, 1, '1975-02-21 11:57:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 17, 17, 'Cumque dolorem rerum omnis. Fuga quae quia perferendis qui. Maiores dicta quasi optio aliquid dicta veniam voluptatum. Praesentium aut maiores sint aperiam est. Architecto id dolores in similique quo non fugit.', 0, 0, '1982-11-17 05:46:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 18, 18, 'Incidunt eius recusandae voluptatibus ut. Dolorum quibusdam facilis sint saepe sint. Incidunt iste autem eos placeat voluptas et.', 0, 0, '2012-10-22 22:47:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 19, 19, 'Temporibus at delectus incidunt odit officiis. Aut sint aliquid excepturi. Vero sunt voluptas inventore et maiores esse explicabo. Ratione non nostrum molestias sunt ad. Officiis odio placeat vero enim suscipit nobis non.', 1, 0, '2012-12-14 02:46:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 20, 20, 'Optio sit velit officia placeat et nemo dolorem consequatur. Et voluptatem deleniti quae sit minima nemo facere. Illo tempora quam et excepturi. Officia natus expedita natus minima.', 0, 0, '1997-02-07 18:35:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 21, 21, 'Provident perferendis dolorem commodi in omnis enim temporibus. Dicta consequatur praesentium vel quisquam similique ipsam. Natus illum explicabo ut voluptatem rerum consequuntur quia. Reprehenderit harum qui et aut.', 1, 0, '1970-11-10 15:35:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 22, 22, 'Aut reprehenderit est cupiditate aut velit omnis esse ipsam. Aliquid eaque qui autem tempore sapiente. Vel perferendis non enim vero nobis ducimus. Adipisci ut voluptas impedit ullam placeat nihil in.', 0, 1, '2018-07-20 19:28:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 23, 23, 'Culpa atque earum perferendis at dolores qui qui. Suscipit soluta ipsum et minima provident ipsa cumque. Molestiae officiis repellendus amet mollitia ullam atque sit eum.', 0, 0, '1990-10-26 09:21:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 24, 24, 'Rerum est consequatur odit non dolor et quas. Vitae voluptates perspiciatis dignissimos et beatae qui. Voluptatem cum modi eaque sint unde. Esse consequatur provident omnis eveniet iure et.', 0, 1, '1992-05-14 22:33:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 25, 25, 'Culpa eos aut error fugit numquam dolorem. Quia quia et a nam quasi ut alias. Veniam iure ipsam placeat.', 0, 1, '1988-01-27 10:05:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 26, 26, 'Asperiores deleniti tempore ea et accusantium. Id et modi dicta aut. Quas non ea possimus et ipsa quam.', 1, 1, '2013-08-28 15:31:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 27, 27, 'Doloribus est expedita distinctio temporibus quidem necessitatibus occaecati. Autem exercitationem libero voluptatem ab repellendus quam omnis nesciunt. Atque laudantium magnam asperiores vero.', 1, 1, '1992-06-20 02:19:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 28, 28, 'Aut ratione ut qui reprehenderit. Cum nesciunt odit ut mollitia. Perferendis sint cumque iusto repellendus repudiandae expedita.', 1, 1, '2019-02-20 17:31:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 29, 29, 'Blanditiis sunt autem cumque voluptatem inventore deleniti. Ipsam qui et dolorem alias.', 1, 1, '1975-01-01 03:05:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 30, 30, 'Eligendi placeat sapiente unde voluptatem et laboriosam et. Delectus facilis et nulla et corrupti. Aspernatur enim atque iste doloribus voluptatibus placeat cupiditate. Voluptatibus dolores sint doloremque adipisci.', 0, 0, '2006-04-24 14:38:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 31, 31, 'Voluptatem eius asperiores ea ea. Aut qui non et quibusdam natus nostrum doloribus dignissimos. Veritatis aut porro asperiores impedit sit omnis. Nemo asperiores dolores voluptas officiis doloribus quas.', 0, 0, '2006-12-01 19:50:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 32, 32, 'Explicabo eligendi est est culpa eligendi recusandae. Enim et autem nesciunt minima id eaque earum officiis. Laudantium unde reiciendis saepe illum molestiae quia aut.', 0, 1, '1981-01-25 07:04:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 33, 33, 'Similique architecto debitis ipsa nemo nulla. Quod voluptatibus vel ipsam dolorem. Magnam ducimus sunt voluptatem sed est.', 1, 0, '2003-11-19 13:38:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 34, 34, 'Porro aperiam est maxime quo voluptatem. Suscipit minus molestiae cum eos laudantium.', 1, 1, '1989-07-07 14:06:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 35, 35, 'Veritatis et facilis explicabo quaerat et labore ut. Quia aut et eos quia doloribus quaerat. Voluptatem quos laborum dolores sunt voluptas dicta ut. Aut et ratione aut nulla aspernatur adipisci autem enim.', 1, 0, '1974-06-24 17:56:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 36, 36, 'Molestiae dolorem dolorem et. Est quibusdam maiores reiciendis commodi sint quia quasi. Quis magni veniam tempora occaecati enim debitis ipsa necessitatibus. Omnis quas suscipit id qui.', 0, 1, '2017-08-12 20:12:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 37, 37, 'Laborum perspiciatis porro porro sint saepe exercitationem. Esse expedita aut reiciendis. Soluta architecto aut recusandae aut deserunt nemo quaerat.', 1, 0, '2003-12-19 13:40:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 38, 38, 'Voluptas nemo et porro dolor assumenda. Dolorem et temporibus aut doloribus maiores culpa earum molestiae. Aut est veniam voluptatem dolores.', 1, 0, '1990-11-07 14:10:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 39, 39, 'Dolores voluptatem neque maxime commodi quos modi ea tempora. Voluptas et quia facere qui quia.', 1, 1, '1978-09-30 16:14:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 40, 40, 'Fugit laborum laborum cupiditate molestiae quia in. Ut est minima molestias molestiae in tempora ipsa. Mollitia laborum illo ad maiores dolores quam. Aut rerum sit possimus quibusdam sed quod.', 1, 0, '2002-07-06 21:41:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 41, 41, 'Non at necessitatibus magni ut. Cumque sit fuga cupiditate officiis sint ad. Deserunt similique ducimus accusamus ut molestiae.', 0, 1, '1992-09-28 21:37:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 42, 42, 'Laborum quae voluptatem cumque rem est dicta. Nemo sed occaecati facilis. Voluptates dolor sit molestias ex sint est dicta. Molestiae a dolorum enim assumenda optio et.', 0, 1, '2016-08-31 19:08:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 43, 43, 'Aut sapiente optio ut possimus et. Et labore recusandae voluptates eos veniam sunt. Quaerat voluptas sunt natus natus et ut id.', 1, 0, '2000-09-05 17:32:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 44, 44, 'Et quae autem reiciendis ex. Natus eveniet laboriosam velit cum. Nulla labore modi porro omnis quam voluptas enim sint. Expedita occaecati veniam omnis esse nihil.', 0, 0, '2005-06-16 04:06:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 45, 45, 'Eum quis facilis doloremque dolorem soluta occaecati labore. Vitae vel labore eos. Id velit occaecati nihil vel deleniti quod voluptatem.', 1, 1, '1983-11-21 05:38:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 46, 46, 'Laboriosam excepturi ut modi quia. Tempore velit quas aliquam est omnis. Eveniet et aliquam nemo dolorum harum mollitia. Et blanditiis ea veritatis voluptates voluptas.', 1, 1, '1981-03-17 06:25:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 47, 47, 'Aut et ut debitis facere. Totam voluptas dolorum vel quo laboriosam. Qui animi vitae consectetur recusandae debitis optio reprehenderit laudantium. Qui similique mollitia rerum placeat aut.', 0, 1, '2001-02-25 06:18:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 48, 48, 'Nam sit repellat repellendus velit ipsa fugit est. Magnam sunt consequatur est quo.', 1, 0, '1998-02-15 13:25:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 49, 49, 'Officiis nihil suscipit est blanditiis aperiam omnis quae. Ipsam aspernatur quis praesentium consequatur culpa ipsam cum. Sunt non nam harum. Veniam et assumenda quasi quisquam et deleniti.', 1, 1, '1971-11-02 02:08:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 50, 50, 'Et non velit temporibus soluta veritatis occaecati. Praesentium labore quis omnis cupiditate et laborum facilis. Sed voluptas velit nisi quo.', 0, 0, '2006-03-23 20:52:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 51, 51, 'Quaerat expedita ad et harum. Exercitationem non atque magnam quod quia perspiciatis id veritatis. Omnis quae rerum culpa accusantium quia est beatae.', 0, 0, '1990-03-28 17:52:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 52, 52, 'Et nostrum quis error sequi eos aspernatur perferendis cumque. Porro commodi aliquam accusantium cupiditate. Eveniet quia consequatur ea a ut. Nostrum numquam facilis cumque placeat.', 1, 0, '1994-02-14 05:58:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 53, 53, 'Et quidem et qui vero veritatis voluptas. Sapiente iusto provident aut praesentium. Eum incidunt voluptate repellat quasi soluta officia. Eos maxime quibusdam nihil neque esse dolor.', 0, 1, '2013-08-10 05:38:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 54, 54, 'Et quo quam aut magnam molestiae impedit. Ducimus id inventore sint soluta. Et veniam corrupti corrupti est.', 0, 1, '2000-03-17 19:53:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 55, 55, 'Et est a facilis ex est aliquam dolores odio. Et quisquam quae rerum. Laboriosam quo aut id incidunt.', 0, 1, '2012-01-23 15:25:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 56, 56, 'Nobis nihil quis qui praesentium in adipisci. Ea quia ratione et sit ullam quaerat libero. Voluptas molestias voluptatem inventore maiores eligendi nostrum sit.', 1, 0, '1990-06-09 04:34:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 57, 57, 'Et laborum consequuntur ad eius ipsum quia perspiciatis. Accusamus voluptate et doloribus. Tempora consequuntur omnis esse velit aut non reprehenderit.', 0, 0, '2002-06-12 14:20:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 58, 58, 'Omnis quis ab illum excepturi iusto voluptatem. Laboriosam laboriosam voluptate expedita id beatae quis sapiente. Recusandae qui ducimus et earum impedit quaerat. Id a consequuntur iusto nesciunt et beatae eaque.', 1, 0, '2020-07-30 10:19:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 59, 59, 'Ut facere dolores inventore est distinctio consectetur et sed. Similique dolor voluptate nisi qui beatae id quia libero. Voluptatum laboriosam aut in aut sit voluptatem.', 1, 0, '1977-12-30 07:32:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 60, 60, 'Deleniti voluptates temporibus quia vel optio magnam. Sunt vel et et unde commodi. Esse expedita culpa officiis fugiat. Fugiat natus modi mollitia quisquam iusto.', 0, 1, '1994-06-22 19:19:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 61, 61, 'Perspiciatis enim voluptas consequatur doloremque. Cum tempora ut deserunt incidunt aut et.', 0, 1, '1984-12-26 18:32:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 62, 62, 'Animi qui aliquid eos exercitationem molestiae omnis consequatur non. Omnis autem atque iusto ad minus doloribus enim. Optio quo perspiciatis quia dicta. Quas sit ab quod iste.', 1, 0, '1979-05-30 17:51:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 63, 63, 'Autem velit sit laboriosam earum quae. Qui at aut qui similique. Quasi eos et placeat repellat fugit. Et quod sed ea et velit laborum nisi.', 0, 0, '1993-12-06 08:48:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 64, 64, 'Alias hic qui error omnis rerum aspernatur inventore. Non nam qui excepturi pariatur eligendi cupiditate et. Culpa iusto quaerat odit earum.', 0, 0, '2015-08-20 11:32:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 65, 65, 'Et cupiditate sequi mollitia similique atque. Architecto dolore omnis et magnam. Tempora ex quo ut eius. Dolorem aliquid non unde nam iste explicabo.', 1, 1, '2018-01-02 21:23:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 66, 66, 'Facilis et suscipit blanditiis quaerat et ut. Debitis repellat ipsum maxime eius.', 0, 1, '1972-01-20 02:00:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 67, 67, 'Distinctio eius modi temporibus itaque dicta. Et debitis expedita nobis sit facere ipsam. Odit voluptatibus impedit illo omnis.', 1, 1, '1989-06-02 11:45:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 68, 68, 'Sit rerum esse nemo modi corporis omnis esse. Animi amet consequatur autem. Ut ut debitis cupiditate suscipit.', 1, 0, '1977-04-29 13:42:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 69, 69, 'Error corrupti quas ipsa est et voluptas magni. Vero eos atque rerum recusandae doloremque. Ullam explicabo ut consequatur.', 0, 1, '1992-04-20 08:04:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 70, 70, 'Debitis ex adipisci magnam veniam expedita doloribus. Ut natus eum error aspernatur debitis. Voluptate vel facilis illum. Mollitia dolorem sed animi at nihil voluptatem assumenda.', 0, 0, '1994-09-22 22:53:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 71, 71, 'Autem error laudantium dicta laboriosam dignissimos voluptatem debitis. Tenetur earum ratione praesentium aperiam vel. Reprehenderit voluptas enim soluta et.', 1, 0, '2013-12-30 01:52:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 72, 72, 'Doloremque unde sint dolorum eos nobis eos voluptate. Sapiente ut voluptatibus modi architecto quo qui. Et quia quia unde voluptas dolorem provident minima.', 1, 0, '2010-11-13 12:23:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 73, 73, 'Enim fugit vero aut sed. Distinctio dolores ut expedita quis et cumque. Et libero voluptate expedita voluptatem et dicta consequatur. Sunt et eaque voluptatibus asperiores voluptas voluptate aperiam.', 0, 0, '1976-12-25 12:34:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 74, 74, 'Voluptas officiis hic nostrum eveniet ut deleniti. Consequuntur fugiat dolores ut cupiditate voluptates quaerat voluptatum. Dolores sequi voluptatibus quod natus laboriosam deleniti ut. Mollitia ipsum voluptas iusto in suscipit et.', 0, 0, '1998-07-07 12:34:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 75, 75, 'Est quibusdam exercitationem cupiditate voluptates autem. Praesentium atque ratione voluptatem sed id tempore. Earum laborum et aut at vel ratione tempora. Necessitatibus commodi delectus veritatis nesciunt. Quasi sit sint id voluptatum eum.', 0, 0, '2008-05-27 23:25:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 76, 76, 'Omnis est ut qui. Porro aperiam in sed veritatis atque. Aut dolor ut nam. Atque eos expedita esse perferendis repellat officia nihil.', 1, 0, '1994-09-11 17:43:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 77, 77, 'Necessitatibus placeat nostrum est molestias. Qui ipsa dolores qui veniam eum atque. Eius vel laboriosam et.', 0, 1, '1984-05-26 14:03:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 78, 78, 'Deserunt dolores sunt autem quibusdam esse est commodi. Doloremque suscipit quaerat ut dolores deleniti. Ut deleniti est cum eum delectus.', 0, 1, '1973-12-14 11:09:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 79, 79, 'Quia iste qui omnis. Autem est sit harum facere dolore exercitationem. Voluptas ullam sit est ut quo perferendis.', 1, 0, '2004-08-18 07:37:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 80, 80, 'Saepe voluptate amet dolorem aliquid accusantium et deserunt sed. Rerum eveniet dolorem ipsum expedita atque voluptatem veritatis est. Tempore officiis qui modi sit veritatis enim velit. Optio molestiae et ut hic.', 1, 1, '1985-11-06 08:08:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 81, 81, 'Natus corporis laudantium sed voluptates consequatur vel iure. Neque est quis alias iusto. Autem ipsum voluptas veritatis quos. Quia expedita eos eos aperiam.', 0, 0, '1989-06-26 22:25:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 82, 82, 'Dolor repellendus et voluptas eos eos quasi. Magnam voluptatem voluptate distinctio perferendis corrupti aut. Facere blanditiis illo ut maiores quidem. Illum quia omnis amet.', 1, 1, '2009-09-15 08:00:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 83, 83, 'Ut quia ut alias nisi et. Assumenda adipisci mollitia delectus. Ipsam voluptas minus consectetur non dignissimos aut aut. Dolorum hic sunt est dolore.', 0, 1, '1992-06-16 05:16:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 84, 84, 'Doloribus et voluptas quia sit. Qui sit et cum rem culpa repudiandae. Sapiente in et nobis nostrum. Id veniam aut quis. Dolores sunt quaerat fugiat voluptatibus consequuntur libero.', 1, 0, '1986-07-16 16:12:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 85, 85, 'Alias iure labore temporibus eum saepe mollitia minus. Sit cum quaerat et omnis cum consequatur.', 1, 0, '2004-01-14 08:44:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 86, 86, 'Dolor cum numquam voluptatem aut. Id architecto facere quasi. Ut eveniet quos est animi. Ipsum dolor explicabo sapiente sit quam itaque repellendus.', 1, 0, '2008-10-04 22:09:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 87, 87, 'Tempora sit animi rerum aut vero dolores beatae molestias. Libero voluptatem qui enim ea temporibus dicta qui. Reiciendis qui neque totam numquam est autem. Hic mollitia doloremque nulla unde et et. Architecto voluptas mollitia et.', 1, 0, '1976-12-28 17:43:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 88, 88, 'Ea in sit porro molestiae. Esse possimus delectus minus commodi dolorem. Doloribus esse velit fugiat est commodi impedit ut error. Enim totam sint quod enim nam ut provident.', 0, 0, '2015-09-06 19:01:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 89, 89, 'Laudantium non libero dolore molestiae ut quae ex. Quasi saepe quod aut atque hic. Et consequatur sed neque et illo cupiditate dolorem. Nam dolor quis esse sunt voluptatem dolor. Sit officiis est in numquam illum praesentium dolore.', 1, 1, '2014-11-09 19:31:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 90, 90, 'Aut voluptatem iste odit omnis quasi earum et. Quae excepturi amet nostrum autem veritatis amet dignissimos. Numquam sed pariatur inventore ratione.', 1, 1, '1983-02-25 07:47:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 91, 91, 'Optio in in aut et rem. Perferendis consequatur dolores quia in non. Libero autem molestiae cumque tenetur.', 0, 0, '1975-01-06 06:11:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 92, 92, 'Deleniti molestiae aut placeat sed accusantium laudantium. Nemo voluptas doloremque quis enim excepturi eveniet consequatur. Aut aliquid fugit dolores sit voluptatum culpa labore enim.', 0, 0, '2010-09-12 09:48:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 93, 93, 'Mollitia velit exercitationem occaecati ea sit provident. Sed dolorem illo eligendi consequatur. Aut error voluptas cum odio dolorem molestias.', 1, 1, '1996-12-25 11:29:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 94, 94, 'Et ea quidem voluptate quo consectetur et optio. Optio voluptas dignissimos minus ut. Ut autem quos iure in. Ut dolorem sint et et harum modi.', 1, 0, '2015-09-25 17:58:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 95, 95, 'Totam magnam ut dolorem quia doloribus quam. Et eos qui voluptas rerum laborum aut sit. Velit dolorem ipsum aliquam.', 0, 0, '1971-10-06 19:37:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 96, 96, 'Ea rerum temporibus possimus illum consequuntur eaque. Totam modi et consequatur deleniti aperiam temporibus et. Voluptatem et et dolores modi impedit natus animi.', 1, 0, '1979-11-14 16:30:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 97, 97, 'Iusto voluptates et et est ullam dolorem. Nihil id assumenda ipsum enim suscipit. Autem facilis est iste et laborum. Quia non odit aut commodi.', 1, 0, '2005-07-15 22:10:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 98, 98, 'Tenetur consequuntur rerum enim adipisci ratione fuga. Sapiente iure et exercitationem et qui. Tempore in in natus aut hic ut tempora. Dolores et corporis et ex aperiam repellat explicabo magnam. Natus laudantium perspiciatis est nam quasi ut.', 1, 1, '2002-10-31 22:04:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 99, 99, 'Modi at veritatis at et neque libero blanditiis. Sed recusandae voluptatum iure dicta neque voluptatem deleniti animi. Voluptatibus quidem ut omnis molestias nihil perferendis. Similique ipsa ipsam quaerat sunt pariatur.', 1, 0, '2019-10-25 06:29:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 100, 100, 'Id quas eum aut. Quibusdam quia sit ex eaque a accusantium. Blanditiis similique vel ut distinctio ipsam tempore.', 0, 0, '2017-12-12 15:42:49');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'M', '1999-10-21', 'Hagenesshire', 'Isle of Man', '1978-12-06 12:53:58', '1974-04-16 23:23:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'M', '2007-04-16', 'Wildermanmouth', 'Guam', '2012-02-10 09:25:09', '1977-12-18 17:50:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'M', '1970-09-11', 'Nicolashaven', 'Malaysia', '2020-09-02 18:57:27', '1979-06-02 23:57:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'P', '1984-03-03', 'Koepphaven', 'French Southern Territories', '1988-03-17 15:31:51', '2007-01-24 19:38:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'P', '1973-07-11', 'Lelandview', 'Brunei Darussalam', '1977-05-20 06:05:16', '1971-03-18 00:22:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'D', '1993-04-12', 'North Freemanhaven', 'Malta', '2008-06-17 15:09:35', '1971-09-28 20:46:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'D', '1996-06-27', 'Halborough', 'Suriname', '2009-12-21 22:25:17', '2014-04-20 03:21:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'D', '1988-05-21', 'Lake Aida', 'Singapore', '1996-07-12 04:59:41', '2004-09-26 07:01:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'P', '1998-05-05', 'East Bryceland', 'Mali', '2010-03-13 14:47:29', '2009-12-25 02:13:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'M', '2013-01-21', 'Isabellemouth', 'Hong Kong', '1992-05-10 19:04:19', '2014-08-28 10:34:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, 'D', '1982-11-15', 'Wunschfort', 'Serbia', '1984-01-20 13:13:59', '1985-08-08 06:32:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, 'M', '2013-11-26', 'East Guiseppebury', 'Wallis and Futuna', '1974-02-01 19:27:53', '2007-12-14 21:03:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, 'M', '1994-09-28', 'Baumbachton', 'Cote d\'Ivoire', '1998-04-19 03:13:50', '2003-05-12 07:28:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, 'M', '1981-07-20', 'North Angus', 'Finland', '1992-04-10 11:21:58', '2010-04-18 18:09:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, 'M', '1975-01-27', 'New Antonina', 'Sao Tome and Principe', '1998-11-12 12:33:49', '1989-03-05 05:14:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, 'D', '2007-09-11', 'Port Flossiechester', 'Antigua and Barbuda', '2021-03-13 11:01:05', '1976-01-05 15:27:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, 'P', '1971-10-08', 'Yasmeenville', 'Benin', '2010-08-06 01:37:15', '2000-07-12 15:58:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, 'M', '1982-02-20', 'Danielaville', 'Denmark', '2005-11-15 03:51:13', '2011-11-24 13:53:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, 'D', '2004-10-08', 'Port Mikel', 'Equatorial Guinea', '1999-06-11 10:22:10', '2007-10-04 14:13:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, 'M', '1977-10-16', 'North Evelinemouth', 'Macedonia', '2008-06-09 17:51:49', '1980-05-23 18:51:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, 'M', '2008-04-16', 'Burdettemouth', 'Singapore', '1982-01-11 12:05:35', '2003-08-15 18:37:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, 'M', '1971-02-10', 'New Carrie', 'Austria', '1996-03-30 03:56:49', '1995-07-06 05:10:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, 'M', '1996-06-30', 'Grahamborough', 'Costa Rica', '1993-03-27 14:40:33', '1983-04-23 12:11:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, 'P', '1997-08-07', 'Maudeborough', 'Bosnia and Herzegovina', '2015-01-05 13:32:01', '2005-06-09 20:18:20');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, 'M', '2019-01-24', 'Port Jay', 'Senegal', '1984-11-03 14:19:52', '1980-08-30 09:05:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, 'P', '2011-10-20', 'Christiansenville', 'Algeria', '2001-06-03 01:50:32', '1980-02-21 14:24:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, 'D', '1995-12-13', 'Lake Bart', 'Peru', '1982-11-09 11:11:50', '1998-07-11 09:09:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, 'P', '2009-02-06', 'Floyfurt', 'Croatia', '1978-03-29 09:07:59', '1992-07-23 03:32:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, 'M', '2002-09-03', 'West Anabury', 'Maldives', '2000-02-16 19:25:42', '1982-09-27 04:37:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, 'D', '2004-08-12', 'South Ned', 'South Africa', '1990-03-17 22:43:21', '2007-02-09 14:18:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, 'D', '2019-07-17', 'Harbershire', 'Sierra Leone', '2011-11-10 01:50:36', '2006-04-30 19:28:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, 'M', '2005-03-25', 'Shaniatown', 'Sweden', '1976-12-01 07:54:37', '1983-07-27 16:59:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, 'M', '2014-04-01', 'Botsfordmouth', 'New Zealand', '2002-12-28 09:58:07', '2020-01-17 16:01:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, 'M', '2011-02-06', 'Lake Brodyburgh', 'Israel', '2010-04-02 03:27:00', '1983-11-20 23:05:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, 'M', '1974-11-05', 'Port Marcelina', 'Benin', '2010-09-26 10:18:06', '2010-02-25 23:42:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, 'D', '1992-12-14', 'Auerfort', 'Moldova', '1996-03-16 23:31:16', '1985-07-04 16:55:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, 'D', '1970-03-27', 'Brigittestad', 'Ecuador', '2010-02-12 04:37:22', '1982-11-16 02:33:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, 'P', '2004-11-29', 'New Adriannafort', 'Montenegro', '1988-06-10 16:54:38', '1980-09-05 02:07:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, 'P', '1998-07-08', 'Thompsonfort', 'Switzerland', '2014-03-05 21:35:12', '1984-11-09 05:41:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, 'D', '1971-10-27', 'Brooklynmouth', 'Panama', '1984-04-19 08:20:57', '2018-10-08 00:01:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, 'D', '2012-06-06', 'Schuppetown', 'Cameroon', '1998-05-15 13:55:00', '1987-09-19 06:30:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, 'P', '1984-10-30', 'New Ryannville', 'Uruguay', '1973-06-10 23:36:12', '1995-06-18 16:57:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, 'P', '1988-05-11', 'Kailynchester', 'Uganda', '2003-08-07 19:01:04', '1986-10-23 18:26:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, 'M', '2020-01-14', 'Blickberg', 'Macao', '2016-01-05 07:20:35', '1998-03-31 00:13:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, 'P', '2016-09-16', 'South Derickton', 'Iceland', '1972-11-18 11:59:26', '2005-09-21 12:55:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, 'M', '1997-01-30', 'Lake Kennedyville', 'Turkey', '2007-11-11 07:47:46', '2006-03-30 01:04:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, 'M', '1994-03-08', 'West Kaylee', 'Pakistan', '1972-09-04 20:16:56', '1974-01-21 08:49:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, 'M', '1996-01-13', 'Conroyberg', 'Solomon Islands', '2015-07-25 04:04:24', '2000-03-27 13:03:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, 'D', '2008-03-18', 'Vinceport', 'United States of America', '2011-09-11 21:58:27', '1980-05-09 03:54:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, 'D', '2008-08-26', 'East Colbyborough', 'Belarus', '2011-03-22 10:19:33', '2004-06-23 15:31:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, 'P', '2010-03-16', 'Lake Isidro', 'Rwanda', '2019-08-05 07:39:00', '1989-04-08 13:11:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, 'M', '2017-11-21', 'New Danniestad', 'United States of America', '2014-06-01 15:19:10', '1983-01-05 11:04:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, 'D', '2014-02-14', 'East Daphneburgh', 'Norfolk Island', '1989-12-14 20:04:48', '2014-12-21 04:41:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, 'D', '1997-11-20', 'Stephaniamouth', 'Qatar', '1998-07-04 09:35:18', '2019-06-04 22:45:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, 'M', '1991-03-26', 'East Laisha', 'Thailand', '2013-08-07 02:46:52', '2018-08-03 16:09:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, 'M', '2020-05-17', 'Port Raina', 'Thailand', '1975-06-29 11:27:13', '1980-08-21 05:35:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, 'D', '2020-02-21', 'Aidaton', 'Korea', '2009-01-20 01:53:12', '1986-12-13 11:43:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, 'M', '2015-03-26', 'South Rozella', 'Switzerland', '1990-10-24 20:15:48', '1992-08-28 16:33:42');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, 'D', '1994-07-08', 'Lake Bernitafurt', 'Timor-Leste', '1974-09-04 01:41:37', '1986-06-30 10:12:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, 'D', '1999-05-29', 'Martineshire', 'Poland', '1973-02-05 08:15:24', '1993-02-12 06:56:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, 'M', '1996-04-09', 'Port Emilia', 'San Marino', '1988-01-08 08:47:12', '1995-01-25 16:28:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, 'P', '1973-07-31', 'Lake Kaileemouth', 'Iceland', '2013-04-16 22:35:16', '2011-05-22 13:44:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, 'M', '2018-12-22', 'Port Jillianview', 'Canada', '2005-05-16 16:12:55', '2000-06-03 22:48:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, 'P', '2016-08-10', 'Simside', 'Netherlands Antilles', '1990-04-14 00:44:43', '2012-10-19 16:45:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, 'D', '2001-02-23', 'Naderfort', 'Malaysia', '2014-08-18 02:37:51', '1973-12-28 00:29:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, 'D', '1988-03-21', 'Tracemouth', 'United States Minor Outlying Islands', '1982-03-12 10:43:37', '1995-05-16 13:26:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, 'D', '1980-03-06', 'South Shanie', 'Burkina Faso', '2006-03-30 08:38:53', '1997-10-25 11:00:38');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, 'M', '1980-01-26', 'Rutherfordton', 'French Southern Territories', '1996-02-02 23:21:28', '2014-12-16 12:34:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, 'P', '1989-11-10', 'West Jeffereymouth', 'Gabon', '1993-03-11 08:14:58', '2016-10-28 01:30:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, 'M', '1991-12-31', 'Botsfordborough', 'Micronesia', '1983-07-05 02:12:52', '2004-07-06 14:05:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, 'P', '1989-08-30', 'Wilfridton', 'Bermuda', '1993-07-08 20:57:11', '2004-10-29 09:02:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, 'M', '1977-07-16', 'Camronville', 'Saint Vincent and the Grenadines', '1989-06-28 11:16:54', '1978-01-02 02:39:56');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, 'D', '1977-06-02', 'South Mariano', 'Kuwait', '1970-09-17 05:01:48', '1975-07-05 14:02:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, 'D', '1997-05-10', 'Elliotmouth', 'Israel', '1973-08-11 11:53:19', '1978-01-24 06:18:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, 'D', '1996-06-20', 'Brekkeview', 'Malaysia', '2006-09-02 10:14:07', '2015-01-22 08:05:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, 'P', '2013-03-15', 'North Winnifred', 'Puerto Rico', '2006-04-03 12:01:56', '1981-12-27 07:33:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, 'D', '1992-12-01', 'North Della', 'Estonia', '1999-01-10 17:27:38', '2006-09-04 14:01:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, 'D', '1997-11-04', 'Alexzanderburgh', 'Jordan', '1998-07-10 23:12:33', '2019-06-14 00:50:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, 'M', '2002-06-13', 'Fionaport', 'Zambia', '1988-02-19 06:50:26', '2006-03-09 00:06:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, 'M', '2020-08-10', 'Rathberg', 'Mongolia', '2002-07-06 19:29:13', '1975-11-27 23:04:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, 'D', '1976-08-28', 'Alisonmouth', 'Iran', '2012-02-05 07:53:51', '2009-09-01 21:38:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, 'M', '2006-11-03', 'East Kaelyn', 'Kyrgyz Republic', '1971-12-04 23:03:08', '1985-12-21 03:48:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, 'M', '2000-09-13', 'Kaylieton', 'Saint Martin', '2007-02-08 23:54:30', '2004-08-09 09:14:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, 'M', '1981-04-29', 'Hettingershire', 'Western Sahara', '1988-06-29 06:57:39', '1986-10-21 01:32:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, 'P', '2012-10-15', 'McClureland', 'Micronesia', '2011-03-25 21:28:37', '2014-09-17 03:31:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, 'M', '1973-04-19', 'Kleintown', 'Russian Federation', '2014-02-22 11:57:52', '1975-04-27 15:47:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, 'M', '2002-11-07', 'New Deionland', 'Greece', '1980-05-28 04:54:13', '1997-12-01 06:21:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, 'P', '1986-08-04', 'East Odell', 'Namibia', '1986-05-08 15:05:12', '2018-09-27 07:52:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, 'D', '2011-02-19', 'South Stanhaven', 'Guinea', '2006-12-30 18:25:06', '1971-01-27 00:21:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, 'P', '1989-10-10', 'New Estevan', 'Comoros', '1978-08-02 13:22:40', '2016-06-17 12:33:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, 'P', '1974-04-23', 'Luciofurt', 'Lithuania', '1980-05-31 11:45:42', '1978-12-21 20:58:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, 'M', '1974-05-12', 'Lake Lavina', 'India', '2011-03-11 03:06:10', '2003-07-07 03:59:23');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, 'D', '1988-06-21', 'Littelland', 'Slovakia (Slovak Republic)', '1977-10-29 19:33:54', '1987-07-02 09:52:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, 'D', '2013-02-14', 'Lake Jacquelynside', 'American Samoa', '2001-04-07 07:49:58', '1991-07-31 01:11:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, 'M', '2018-02-02', 'Luisaberg', 'Aruba', '1988-01-22 08:01:33', '2003-02-18 04:40:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, 'D', '1985-01-28', 'Cullenborough', 'Bolivia', '1992-02-04 17:57:41', '2005-07-07 21:56:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, 'M', '1996-04-14', 'West Beatricechester', 'Cuba', '1982-06-23 15:29:55', '1989-04-19 18:45:33');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, 'M', '2019-07-11', 'Smithland', 'United States of America', '1995-06-04 15:24:05', '2017-04-29 17:57:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, 'D', '1989-07-16', 'South Rogelio', 'Slovenia', '1996-12-18 23:12:55', '1988-10-17 22:20:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, 'P', '2007-01-10', 'New Austenmouth', 'Syrian Arab Republic', '1989-03-08 17:33:00', '2021-03-21 20:13:39');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Ibrahim', 'Will', 'schaefer.weldon@example.net', '959.381.1522', '2004-01-19 16:22:32', '2019-04-17 04:57:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Dereck', 'Trantow', 'stark.zack@example.net', '(587)569-3422', '1975-04-26 21:29:59', '2010-10-01 18:24:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Chelsea', 'Conroy', 'carter.moriah@example.org', '750-044-7255', '1978-08-18 22:43:04', '2011-04-04 19:35:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Joyce', 'Parker', 'eunice01@example.net', '080-371-1907', '2017-02-01 14:55:19', '1995-09-01 12:18:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Damion', 'Little', 'slittle@example.net', '533.504.1997x45990', '1984-01-23 13:59:43', '1998-11-09 13:09:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Haylie', 'Keeling', 'wendell18@example.org', '155-399-0389', '2007-01-15 07:52:03', '1998-10-11 08:27:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Maeve', 'Kutch', 'anais.runolfsdottir@example.net', '213.362.5882x453', '1972-01-09 15:11:08', '2016-05-11 02:50:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Layla', 'Williamson', 'dahlia69@example.net', '(727)099-0308x94032', '1982-03-29 05:27:08', '1982-03-17 16:41:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Ellie', 'Hansen', 'wyman.dewitt@example.org', '+65(8)9436935856', '2006-08-03 01:18:00', '2015-12-30 17:52:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Taurean', 'Murazik', 'carissa58@example.com', '05107479227', '1984-07-02 04:50:23', '1976-12-25 17:58:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (11, 'Myles', 'Kohler', 'nfahey@example.com', '775.553.5699', '2009-03-18 19:13:33', '2012-07-01 15:35:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (12, 'Kendall', 'Christiansen', 'dameon.schowalter@example.com', '707-334-6990x450', '2013-10-19 13:15:05', '1995-07-15 16:34:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (13, 'Vivianne', 'Stehr', 'ramiro.kessler@example.org', '03742863816', '1974-01-22 04:11:06', '2004-01-31 03:21:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (14, 'Zoe', 'Gerlach', 'lavina70@example.com', '(965)858-4828x68581', '2003-12-25 19:18:22', '1992-01-10 02:40:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (15, 'Ima', 'Hansen', 'hugh90@example.com', '943-152-1375x197', '2015-07-01 12:18:07', '1987-04-21 10:45:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (16, 'Connor', 'Wyman', 'hintz.vernie@example.net', '371-531-1197x2580', '1988-05-25 15:28:02', '1982-10-15 10:26:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (17, 'Mallie', 'Murazik', 'tiffany25@example.net', '519-051-6217x52246', '1991-04-12 23:33:18', '1996-02-29 18:56:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (18, 'Melvin', 'Marvin', 'orath@example.com', '801-838-2637x012', '1996-08-31 22:28:16', '1999-07-14 16:30:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (19, 'Heather', 'Volkman', 'noemie47@example.com', '154.972.8456x83885', '1982-11-28 19:03:21', '1989-02-21 03:39:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (20, 'Kaycee', 'Rodriguez', 'karine.satterfield@example.net', '00776805131', '1988-01-23 03:21:53', '1986-09-09 20:49:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (21, 'Enrico', 'Kozey', 'dthompson@example.net', '05049641560', '2010-01-26 23:03:48', '1990-05-30 05:57:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (22, 'Pansy', 'Okuneva', 'leora.orn@example.org', '+68(6)8097117568', '1986-05-28 03:14:34', '1970-02-27 10:19:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (23, 'Ocie', 'Windler', 'fahey.marta@example.net', '1-171-037-5875', '1985-04-08 04:12:54', '2001-07-06 17:30:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (24, 'Bonita', 'Kilback', 'america.okuneva@example.org', '974.235.1596', '1986-06-21 23:46:03', '2007-04-24 04:54:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (25, 'Ezra', 'Aufderhar', 'sawayn.lester@example.net', '+59(7)4132216369', '1995-12-11 19:58:12', '1974-09-21 07:20:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (26, 'Trever', 'Sipes', 'erna19@example.net', '1-721-442-6175x36721', '2020-06-15 23:24:17', '1976-09-12 01:26:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (27, 'Martine', 'Turcotte', 'jstanton@example.net', '975-224-2025x4962', '2005-06-08 16:17:45', '1988-09-09 18:48:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (28, 'Leif', 'Rohan', 'carmine58@example.org', '703-257-6592x507', '2006-10-01 16:50:39', '2006-06-24 02:42:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (29, 'Estella', 'Sporer', 'ndaugherty@example.net', '039.828.6275x5794', '2008-01-22 08:57:48', '1991-02-09 11:03:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (30, 'Hermann', 'Graham', 'dejah57@example.org', '(958)655-7412', '2013-11-06 10:45:45', '1998-08-15 17:25:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (31, 'Henriette', 'Fritsch', 'davon.kuhlman@example.net', '388-245-5441', '2003-06-28 22:07:40', '2010-01-21 05:18:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (32, 'Constantin', 'Huel', 'pablo74@example.org', '564-631-1440x81577', '1980-05-18 01:25:54', '1996-11-20 07:07:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (33, 'Twila', 'Russel', 'herman.simeon@example.net', '(325)441-8520x0158', '1978-01-13 15:18:50', '1974-07-12 09:29:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (34, 'Lawrence', 'Macejkovic', 'tdietrich@example.org', '00989626184', '2016-05-02 02:42:08', '1974-11-29 15:05:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (35, 'Ricardo', 'Bednar', 'orlo79@example.com', '1-987-575-0590', '2003-06-11 16:21:00', '1997-11-02 10:35:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (36, 'Ursula', 'Metz', 'wbeahan@example.org', '409-044-9358', '2015-04-22 19:58:09', '1973-11-10 07:11:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (37, 'Margarete', 'Flatley', 'bethany.mertz@example.com', '433-914-9082', '1972-12-19 10:52:46', '1986-11-12 00:30:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (38, 'Lazaro', 'Kunde', 'idach@example.org', '00065841964', '2020-04-11 12:01:42', '1979-11-08 23:39:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (39, 'Roger', 'Nolan', 'cole.rau@example.org', '1-502-006-1047x79832', '2000-11-13 06:01:28', '2020-01-12 14:26:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (40, 'Melvin', 'O\'Connell', 'bhermann@example.net', '+31(8)6914649242', '1994-05-05 10:23:32', '1996-06-21 22:32:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (41, 'Marlen', 'Bashirian', 'elmo32@example.net', '(402)404-4159x08657', '2005-11-24 01:31:35', '1985-12-27 23:29:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (42, 'Kirstin', 'Kessler', 'otorphy@example.org', '+23(8)3950136429', '2014-07-07 07:03:54', '2004-10-10 23:36:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (43, 'Eldon', 'O\'Conner', 'bcarroll@example.org', '1-570-376-2624x15577', '2011-03-15 02:20:08', '2008-05-22 21:52:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (44, 'Noble', 'Dibbert', 'timothy23@example.com', '(771)284-2638x2370', '1974-06-03 16:52:19', '1981-05-08 03:09:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (45, 'Khalid', 'Koepp', 'mraz.madison@example.net', '+96(0)5019684088', '1976-08-30 07:05:24', '1999-10-18 12:41:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (46, 'Tara', 'Bartell', 'johnston.rose@example.net', '1-657-902-2922x683', '2012-10-31 05:06:47', '2004-01-17 22:29:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (47, 'Anibal', 'Thiel', 'cristal42@example.com', '911-053-1278x564', '1977-11-15 03:39:16', '1978-07-28 19:29:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (48, 'Cortney', 'Rohan', 'osauer@example.org', '1-520-945-6710', '2016-10-25 00:29:18', '2003-09-11 07:47:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (49, 'Thomas', 'Roberts', 'fbergnaum@example.net', '(533)301-5948x3651', '2012-10-14 14:14:25', '2018-09-18 08:32:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (50, 'Ruth', 'Littel', 'brock.mcclure@example.net', '+08(9)3679798969', '2001-11-19 08:47:20', '2017-12-07 02:45:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (51, 'Shanny', 'Kub', 'ryundt@example.com', '595.154.4322x74657', '2015-10-20 13:35:24', '2016-08-07 13:21:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (52, 'Garland', 'Krajcik', 'sydnee.kuphal@example.org', '1-581-593-6659x21095', '2016-11-28 17:07:33', '1988-09-03 18:05:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (53, 'Casey', 'Steuber', 'bkautzer@example.com', '486.110.4617x6869', '1994-12-12 13:32:08', '1977-08-15 20:42:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (54, 'Christelle', 'Rath', 'legros.jennie@example.net', '(441)673-5727', '2012-03-19 03:21:44', '2015-09-07 13:04:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (55, 'Stacy', 'Nolan', 'vallie46@example.com', '1-311-742-9370x38466', '1995-11-25 08:48:18', '2009-01-10 18:38:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (56, 'Juwan', 'Kunde', 'qwisoky@example.com', '02339516349', '1972-09-07 22:44:08', '2009-03-03 06:07:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (57, 'Avery', 'Connelly', 'gregorio.boyer@example.net', '+49(8)3529708829', '2002-07-07 04:45:04', '1971-12-13 20:54:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (58, 'Jacey', 'Blick', 'estevan.hansen@example.net', '588-798-4890x912', '2018-08-24 17:26:52', '2012-08-11 13:19:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (59, 'Lizeth', 'Blanda', 'xdooley@example.net', '(394)748-5609x0098', '1980-07-13 00:44:25', '1999-06-30 22:00:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (60, 'Saul', 'Goldner', 'jean.collins@example.org', '(342)384-7698', '1992-05-31 14:28:54', '2009-07-26 21:24:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (61, 'Eliezer', 'Considine', 'jailyn33@example.org', '327.396.4694', '2019-07-31 15:14:41', '1983-09-22 05:59:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (62, 'Zella', 'Gusikowski', 'cjast@example.net', '651-692-2453', '2002-09-04 05:43:08', '2020-05-14 06:00:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (63, 'Darby', 'Donnelly', 'nikolas87@example.com', '1-616-852-6467x8749', '1996-10-27 04:58:49', '2000-10-08 07:36:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (64, 'Lavern', 'Cartwright', 'cremin.sheila@example.com', '1-296-116-6385x25381', '1974-02-27 20:21:17', '2008-03-15 11:42:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (65, 'Susan', 'Kreiger', 'klein.candelario@example.com', '1-832-828-6111x976', '2014-07-25 17:56:04', '1994-07-21 19:05:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (66, 'Elmira', 'Waelchi', 'whickle@example.org', '(595)430-5393x050', '1971-01-14 12:00:18', '1998-05-15 08:01:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (67, 'Alva', 'Kessler', 'murray24@example.net', '(814)227-4651', '1990-04-03 12:09:20', '1994-06-12 11:58:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (68, 'Hayden', 'Swaniawski', 'cbashirian@example.org', '335.550.4022x7059', '1970-05-15 03:53:16', '2010-05-07 21:02:42');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (69, 'Harmony', 'Steuber', 'ttorp@example.com', '1-573-666-9771x067', '1985-01-21 11:52:20', '2000-11-17 18:00:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (70, 'Irwin', 'Funk', 'alegros@example.com', '1-425-801-9375', '2013-01-19 14:28:24', '1996-08-15 09:21:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (71, 'Janessa', 'Blick', 'little.gretchen@example.com', '1-056-922-9953x42074', '1994-09-06 17:55:05', '1978-02-19 03:05:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (72, 'Deven', 'Halvorson', 'gianni.schuppe@example.org', '02702944624', '2012-12-07 03:38:10', '2002-04-06 19:34:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (73, 'Aida', 'Hilpert', 'effie.waelchi@example.org', '(598)485-6909x6808', '1980-07-22 05:04:07', '2012-02-06 14:54:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (74, 'Natasha', 'Keeling', 'qprohaska@example.org', '(741)396-3302', '1977-10-18 12:53:18', '1998-07-18 04:39:53');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (75, 'William', 'Bauch', 'gracie.price@example.com', '277.376.4162', '1989-02-28 01:17:39', '1986-07-07 09:20:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (76, 'Shayne', 'Feeney', 'rmurray@example.com', '(487)182-6602x42574', '1978-04-14 20:32:46', '2008-07-08 00:02:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (77, 'Edward', 'Bechtelar', 'gutkowski.miles@example.com', '07633281744', '1976-08-05 06:18:38', '1979-03-08 04:51:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (78, 'Patricia', 'Kozey', 'taya.hammes@example.com', '1-760-864-7542', '1999-03-22 05:51:46', '2003-05-21 23:57:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (79, 'Pink', 'Gorczany', 'stillman@example.org', '307-525-9891x366', '1974-03-24 05:45:44', '1980-06-03 05:58:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (80, 'Stanley', 'Maggio', 'pcorwin@example.com', '866.672.5966x33668', '2010-10-28 18:23:05', '2020-06-22 11:10:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (81, 'Adolphus', 'Reynolds', 'alanna.nader@example.net', '1-655-305-6400x0520', '2015-05-16 17:05:54', '2020-01-06 09:55:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (82, 'Dennis', 'Crooks', 'clifford.schmeler@example.org', '(803)809-9825', '2002-07-12 21:55:35', '1990-01-03 13:08:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (83, 'Nikita', 'Nienow', 'co\'conner@example.com', '(967)022-8270', '1995-05-30 11:11:28', '2015-08-05 05:11:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (84, 'Matt', 'Welch', 'verna21@example.net', '(799)865-6809', '1975-01-29 16:48:36', '2009-06-06 19:05:34');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (85, 'Ronny', 'Mueller', 'zelma.fay@example.com', '1-036-909-5331x27327', '1995-04-28 23:12:37', '2015-11-07 17:22:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (86, 'Magnus', 'Pfeffer', 'vbeahan@example.org', '492-406-9917x189', '1983-04-28 15:37:50', '2003-12-28 22:54:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (87, 'Oswald', 'Weimann', 'jhane@example.com', '647.935.6189', '2010-02-10 07:18:52', '1988-01-17 10:42:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (88, 'Keith', 'Braun', 'destiny.schowalter@example.net', '540.010.7983x8384', '2001-11-07 07:19:38', '2006-02-14 02:36:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (89, 'Araceli', 'Powlowski', 'watsica.lorenz@example.com', '535-295-3525x74930', '1991-06-16 10:19:33', '1985-12-09 17:44:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (90, 'Anderson', 'Marks', 'yhilpert@example.org', '(829)631-0281x215', '2006-07-25 09:19:47', '2000-12-02 17:11:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (91, 'Jessika', 'Schmeler', 'conroy.sandrine@example.org', '1-109-860-2766', '2013-06-21 05:13:56', '2019-08-04 04:10:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (92, 'Annette', 'Gusikowski', 'altenwerth.bette@example.org', '(457)311-4007x965', '1978-07-08 15:19:12', '1984-05-02 10:25:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (93, 'Annabell', 'Windler', 'kglover@example.net', '04406336864', '1978-12-25 22:05:16', '1990-05-26 10:05:17');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (94, 'Cedrick', 'Oberbrunner', 'rhoda50@example.org', '308-271-2922', '1987-02-24 12:08:12', '1978-11-17 06:46:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (95, 'Henri', 'Pouros', 'vonrueden.aurelio@example.net', '06408850652', '1992-11-10 05:34:24', '1970-11-15 02:28:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (96, 'Alexandre', 'Cartwright', 'oconroy@example.org', '09643917990', '1978-11-28 22:32:13', '1998-03-13 02:10:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (97, 'Raheem', 'Veum', 'ernser.marlee@example.com', '557-063-0385x1844', '1972-12-21 19:11:10', '1970-11-20 19:14:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (98, 'Cooper', 'Donnelly', 'gerhold.gaylord@example.net', '367.343.8388x9431', '1971-01-16 08:21:31', '1997-11-24 15:42:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (99, 'Pearl', 'Willms', 'jheller@example.net', '1-603-664-0256', '2006-12-02 07:08:02', '2003-11-29 00:03:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (100, 'Lucious', 'Gerlach', 'chasity.roob@example.com', '(028)182-1152', '2010-07-20 16:56:35', '2011-10-28 06:29:16');


#
# TABLE STRUCTURE FOR: users_likes
#

DROP TABLE IF EXISTS `users_likes`;

CREATE TABLE `users_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который поставил лайк',
  `user_2_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, которому поставили лайк',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (1, 1, 1);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (2, 2, 2);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (3, 3, 3);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (4, 4, 4);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (5, 5, 5);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (6, 6, 6);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (7, 7, 7);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (8, 8, 8);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (9, 9, 9);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (10, 10, 10);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (11, 11, 11);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (12, 12, 12);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (13, 13, 13);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (14, 14, 14);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (15, 15, 15);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (16, 16, 16);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (17, 17, 17);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (18, 18, 18);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (19, 19, 19);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (20, 20, 20);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (21, 21, 21);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (22, 22, 22);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (23, 23, 23);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (24, 24, 24);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (25, 25, 25);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (26, 26, 26);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (27, 27, 27);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (28, 28, 28);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (29, 29, 29);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (30, 30, 30);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (31, 31, 31);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (32, 32, 32);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (33, 33, 33);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (34, 34, 34);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (35, 35, 35);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (36, 36, 36);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (37, 37, 37);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (38, 38, 38);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (39, 39, 39);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (40, 40, 40);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (41, 41, 41);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (42, 42, 42);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (43, 43, 43);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (44, 44, 44);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (45, 45, 45);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (46, 46, 46);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (47, 47, 47);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (48, 48, 48);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (49, 49, 49);
INSERT INTO `users_likes` (`id`, `user_id`, `user_2_id`) VALUES (50, 50, 50);
COMMIT;