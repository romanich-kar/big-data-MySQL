CREATE DATABASE IF NOT EXISTS vk;
USE vk;

/*Создаем таблицы и связи между ними.*/
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';
ALTER TABLE users ADD CONSTRAINT `phone check` CHECK (RLIKE (phone, '[0-9]{11}'));

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
ALTER TABLE `profiles` ADD CONSTRAINT fk_profiles_users FOREIGN KEY (user_id) REFERENCES users (id);

DROP TABLE IF EXISTS `communities`;
CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';
ALTER TABLE communities ADD COLUMN media_id INT UNSIGNED;
ALTER TABLE `communities` ADD CONSTRAINT fk_communities_media FOREIGN KEY (media_id) REFERENCES media (id);

DROP TABLE IF EXISTS `communities_users`;
CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';
ALTER TABLE `communities_users` ADD CONSTRAINT fk_communities_users_users FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE `communities_users` ADD CONSTRAINT fk_communities_users_community FOREIGN KEY (community_id) REFERENCES communities (id);

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
ALTER TABLE `friendship` ADD CONSTRAINT fk_friendship_users_1 FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE `friendship` ADD CONSTRAINT fk_friendship_users_2 FOREIGN KEY (friend_id) REFERENCES users (id);
ALTER TABLE `friendship` ADD CONSTRAINT fk_friendship_status FOREIGN KEY (friendship_status_id) REFERENCES friendship_statuses (id);

DROP TABLE IF EXISTS `friendship_statuses`;
CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';
ALTER TABLE `media` ADD CONSTRAINT fk_media_users FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE `media` ADD CONSTRAINT fk_media_media_types FOREIGN KEY (media_type_id) REFERENCES media_types (id);

DROP TABLE IF EXISTS `media_likes`;
CREATE TABLE `media_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который поставил лайк',
  `media_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на медиа файл',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE `media_likes` ADD CONSTRAINT fk_media_likes_users FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE `media_likes` ADD CONSTRAINT fk_media_likes_media FOREIGN KEY (media_id) REFERENCES media (id);

DROP TABLE IF EXISTS `media_types`;
CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) COMMENT='Типы медиафайлов';

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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';
ALTER TABLE messages ADD COLUMN media_id INT UNSIGNED;
ALTER TABLE messages ADD CONSTRAINT fk_messages_media FOREIGN KEY (media_id) REFERENCES media (id);
ALTER TABLE messages ADD CONSTRAINT fk_messages_users FOREIGN KEY (from_user_id) REFERENCES users (id);
ALTER TABLE messages ADD CONSTRAINT fk_messages_users FOREIGN KEY (to_user_id) REFERENCES users (id);

DROP TABLE IF EXISTS `users_likes`;
CREATE TABLE `users_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который поставил лайк',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, которому поставили лайк',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
ALTER TABLE users_likes ADD CONSTRAINT fk_users_likes_users FOREIGN KEY (from_user_id) REFERENCES users (id);
ALTER TABLE users_likes ADD CONSTRAINT fk_users_likes_users_2 FOREIGN KEY (to_user_id) REFERENCES users (id);

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  id int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  user_id int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя поста',
  media_id int(10) unsigned COMMENT 'Ссылка на возможный медиа файл в посте',
  body text COMMENT 'Текст сообщения (может и не быть)',
  created_at DATETIME DEFAULT current_timestamp() COMMENT 'Время создания строки',
  updated_at DATETIME DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (id)
  );
ALTER TABLE posts_users ADD CONSTRAINT fk_posts_users FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE posts_media ADD CONSTRAINT fk_posts_media FOREIGN KEY (media_id) REFERENCES media (id);

/*Наполняем таблицы данными*/
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Ibrahim', 'Will', 'schaefer.weldon@example.net', '54785632568', '2004-01-19 16:22:32', '2019-04-17 04:57:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Dereck', 'Trantow', 'stark.zack@example.net', '587123658967', '1975-04-26 21:29:59', '2010-10-01 18:24:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Chelsea', 'Conroy', 'carter.moriah@example.org', '25489665782', '1978-08-18 22:43:04', '2011-04-04 19:35:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Joyce', 'Parker', 'eunice01@example.net', '33584523652', '2017-02-01 14:55:19', '1995-09-01 12:18:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Damion', 'Little', 'slittle@example.net', '11223344558', '1984-01-23 13:59:43', '1998-11-09 13:09:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Haylie', 'Keeling', 'wendell18@example.org', '65882233447', '2007-01-15 07:52:03', '1998-10-11 08:27:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Maeve', 'Kutch', 'anais.runolfsdottir@example.net', '56674456987', '1972-01-09 15:11:08', '2016-05-11 02:50:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Layla', 'Williamson', 'dahlia69@example.net', '55676789324', '1982-03-29 05:27:08', '1982-03-17 16:41:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Ellie', 'Hansen', 'wyman.dewitt@example.org', '5645476641', '2006-08-03 01:18:00', '2015-12-30 17:52:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Taurean', 'Murazik', 'carissa58@example.com', '05107479227', '1984-07-02 04:50:23', '1976-12-25 17:58:15');
COMMIT;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'M', '1999-10-21', 'Hagenesshire', 'Isle of Man', '1978-12-06 12:53:58', '1974-04-16 23:23:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'M', '2007-04-16', 'Wildermanmouth', 'Guam', '2012-02-10 09:25:09', '1977-12-18 17:50:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'M', '1970-09-11', 'Nicolashaven', 'Malaysia', '2020-09-02 18:57:27', '1979-06-02 23:57:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'F', '1984-03-03', 'Koepphaven', 'French Southern Territories', '1988-03-17 15:31:51', '2007-01-24 19:38:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'F', '1973-07-11', 'Lelandview', 'Brunei Darussalam', '1977-05-20 06:05:16', '1971-03-18 00:22:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'F', '1993-04-12', 'North Freemanhaven', 'Malta', '2008-06-17 15:09:35', '1971-09-28 20:46:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'F', '1996-06-27', 'Halborough', 'Suriname', '2009-12-21 22:25:17', '2014-04-20 03:21:29');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'F', '1988-05-21', 'Lake Aida', 'Singapore', '1996-07-12 04:59:41', '2004-09-26 07:01:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'F', '1998-05-05', 'East Bryceland', 'Mali', '2010-03-13 14:47:29', '2009-12-25 02:13:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'M', '2013-01-21', 'Isabellemouth', 'Hong Kong', '1992-05-10 19:04:19', '2014-08-28 10:34:19');
COMMIT;

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`,`media_id`) VALUES (1, 'quod', '1987-07-07 03:33:19', '2002-09-14 19:59:30', 1);
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`,`media_id`) VALUES (2, 'qui', '1975-05-18 00:06:47', '2002-05-17 15:16:45', 2);
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`,`media_id`) VALUES (3, 'consectetur', '1970-09-04 06:46:47', '2003-06-04 16:05:40', 3);
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`,`media_id`) VALUES (4, 'vero', '2019-02-18 22:21:59', '2018-05-31 00:48:04', 4);
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`,`media_id`) VALUES (5, 'culpa', '1981-08-15 15:32:33', '1976-11-10 02:44:36', 5);
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`,`media_id`) VALUES (6, 'aspernatur', '1996-09-21 00:59:36', '2002-08-13 09:35:16', 1);
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`,`media_id`) VALUES (7, 'eveniet', '1997-02-09 00:40:55', '1973-03-31 06:58:16', 2);
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`,`media_id`) VALUES (8, 'atque', '1994-03-20 07:35:25', '1970-04-16 05:46:30', 3);
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`,`media_id`) VALUES (9, 'et', '2003-02-28 10:58:53', '1988-06-13 19:07:16', 4);
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`,`media_id`) VALUES (10, 'est', '2012-05-12 14:45:23', '1980-07-17 06:50:32', 5);
COMMIT;

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
COMMIT;

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
COMMIT;

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
COMMIT;

INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (1, 10, 5, 'GeekBrains!', '2015-05-03 18:33:58', '2021-04-03 18:34:58');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (2, 2, NULL, 'Abrakadabra', '2019-05-03 17:33:58', '2021-04-03 01:34:58');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (3, 9, 2, 'MySQL', '2009-07-03 18:22:58', '2021-04-03 14:34:58');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (4, 4, 3, 'GeekBrains!', '2018-05-01 19:33:58', '2021-04-03 08:34:58');
INSERT INTO `posts` (`id`, `user_id`, `media_id`, `body`, `created_at`, `updated_at`) VALUES (5, 1, NULL, 'Hello World!', '2019-05-03 20:33:58', '2021-04-05 09:25:58');
COMMIT;

INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (1, 1, 5);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (2, 2, 2);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (3, 3, 3);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (4, 4, 4);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (5, 3, 5);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (6, 6, 6);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (7, 7, 7);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (8, 8, 9);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (9, 7, 9);
INSERT INTO `media_likes` (`id`, `user_id`, `media_id`) VALUES (10, 10, 10);
COMMIT;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'video', '2018-03-19 16:32:36', '2019-02-12 02:38:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'audio', '1989-05-26 04:56:29', '1994-10-29 09:13:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'picture', '1976-08-06 04:40:12', '2013-10-25 05:37:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'GIF', '1989-08-06 04:12:12', '2013-10-25 12:37:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'file', '1979-08-06 04:40:12', '2020-07-25 03:47:25');
COMMIT;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `media_id`) VALUES (1, 1, 1, 'Esse blanditiis qui sit aut saepe et aut. Rem ipsam totam dolorem omnis. Numquam saepe ducimus laboriosam eius qui nisi.', 1, 0, '1997-11-04 12:33:03', 3);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `media_id`) VALUES (2, 2, 2, 'Possimus temporibus quas corporis. Sapiente amet natus incidunt possimus vel sed placeat. Et et aperiam molestiae recusandae eum sit repellendus dolorum. Aut illo quia dicta id. Unde dignissimos et inventore laborum.', 0, 1, '1987-12-20 22:58:10', 5);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `media_id`) VALUES (3, 3, 3, 'Officiis voluptas excepturi laboriosam nisi. Ut eos quia ratione odit maiores. Repellendus sint quae et minima molestiae quod veritatis.', 1, 1, '2011-10-07 07:02:15', 2);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `media_id`) VALUES (4, 4, 5, 'Minus molestiae ipsum eos recusandae voluptatem ex animi. Aut ratione illo quis quibusdam ut quos. Rerum repellat voluptate eius dolorem optio nostrum.', 0, 1, '2005-05-03 18:33:58', 5);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `media_id`) VALUES (5, 3, 5, 'Vero dolores iure sint vitae ipsa a nulla. Harum sit aut et dolorem doloribus. Occaecati magnam officiis impedit ipsa nam autem aut.', 1, 0, '1979-01-29 04:03:08', NULL);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `media_id`) VALUES (6, 6, 6, 'Dicta fugit dolorum ratione voluptates distinctio qui ducimus. Qui ea fuga nam enim animi unde quia consequatur. Quos quia dignissimos sit.', 1, 1, '1979-09-14 16:17:07', 1);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `media_id`) VALUES (7, 1, 7, 'Tempora velit odit quasi deserunt minima. Aut autem et quibusdam fugit optio. At necessitatibus hic consequatur eos aliquam soluta sint.', 0, 1, '1975-04-26 22:08:10', NULL);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `media_id`) VALUES (8, 8, 1, 'Est nesciunt repellendus delectus dignissimos autem exercitationem est. Aut et ipsum aliquid ut et ipsum suscipit distinctio. Ab et enim accusantium asperiores est sit.', 1, 0, '2019-02-19 06:04:34', 7);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `media_id`) VALUES (9, 9, 9, 'Atque omnis omnis enim quisquam mollitia. Occaecati quam facilis aut voluptatem. Consequatur aut magni facere itaque blanditiis voluptatibus corrupti molestias. Blanditiis similique et pariatur dolor animi fuga harum. Ratione quo exercitationem ut esse.', 0, 1, '2019-04-29 23:50:38', NULL);
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`, `media_id`) VALUES (10, 10, 10, 'Veritatis unde facere minus vel earum. Ea omnis et soluta dolorum dicta praesentium. Non doloribus sunt adipisci asperiores dolore id.', 0, 0, '2021-02-26 15:09:46', 9);
COMMIT;

INSERT INTO `users_likes` (`id`, `from_user_id`, `to_user_id`) VALUES (1, 8, 1);
INSERT INTO `users_likes` (`id`, `from_user_id`, `to_user_id`) VALUES (2, 2, 2);
INSERT INTO `users_likes` (`id`, `from_user_id`, `to_user_id`) VALUES (3, 3, 3);
INSERT INTO `users_likes` (`id`, `from_user_id`, `to_user_id`) VALUES (4, 5, 5);
INSERT INTO `users_likes` (`id`, `from_user_id`, `to_user_id`) VALUES (5, 5, 5);
INSERT INTO `users_likes` (`id`, `from_user_id`, `to_user_id`) VALUES (6, 6, 6);
INSERT INTO `users_likes` (`id`, `from_user_id`, `to_user_id`) VALUES (7, 6, 7);
INSERT INTO `users_likes` (`id`, `from_user_id`, `to_user_id`) VALUES (8, 8, 7);
INSERT INTO `users_likes` (`id`, `from_user_id`, `to_user_id`) VALUES (9, 7, 9);
INSERT INTO `users_likes` (`id`, `from_user_id`, `to_user_id`) VALUES (1, 10, 2);
COMMIT;

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'friend', '1999-06-12 12:28:29', '1995-09-24 11:20:11');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'not_friend', '2010-05-13 15:09:38', '2010-03-23 13:36:39');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'friendship_requested', '1979-09-06 02:06:25', '2008-09-05 19:31:11');
COMMIT;

/*Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение. Агрегация данных”*/

/*Пусть задан некоторый пользователь. 
Из всех друзей этого пользователя найдите человека, который больше всех общался с нашим пользователем. Я выбрал пользователя с id = 1.*/
SELECT from_user_id, COUNT(id) AS amount 
FROM messages WHERE
to_user_id = 1 AND 
from_user_id IN 
   (SELECT friend_id FROM friendship WHERE user_id = 1 AND friendship_status_id = 1) 
GROUP BY from_user_id
ORDER BY amount DESC
LIMIT 1;

-- Подсчитать общее количество лайков, которые получили 10 самых молодых пользователей
SELECT COUNT(id) FROM users_likes WHERE user_id IN (
  SELECT * FROM (
    SELECT user_id FROM `profiles` ORDER BY birthday DESC LIMIT 10
    ) AS likes
);

-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT IF(
	(SELECT COUNT(id) FROM users_likes WHERE user_id IN (
		SELECT user_id FROM `profiles` WHERE gender='M')
	) 
	> 
	(SELECT COUNT(id) FROM users_likes WHERE user_id IN (
		SELECT user_id FROM `profiles` WHERE gender='F')
	), 
   'male', 'female');
   
-- 4. Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.
SELECT user_id, SUM(actions) as actions FROM 
	(SELECT user_id, count(*) as actions FROM media
	GROUP BY user_id
	UNION
	SELECT from_user_id, COUNT(*) FROM users_likes
	GROUP BY from_user_id
	UNION
	SELECT from_user_id, COUNT(*) FROM messages
	GROUP BY from_user_id
    UNION
	SELECT user_id, COUNT(*) FROM posts
	GROUP BY user_id
    ) AS activities
GROUP BY id
ORDER BY actions
LIMIT 10;