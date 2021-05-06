-- В этой части приведены команды наполнения созданных ранее таблиц данными.

START TRANSACTION;
-- Наполняем данными таблицу emploees
INSERT INTO emploees (id, first_name, last_name, patronymic, photo_id, email, phone, `password`, created_at, updated_at) VALUES (1, 'Nick', 'Grey', NULL, 1, 'schaefer.weldon@example.net', '54785632568', 'sd8vds', '2004-01-19 16:22:32', '2019-04-17 04:57:20');
INSERT INTO emploees (id, first_name, last_name, patronymic, photo_id, email, phone, `password`, created_at, updated_at) VALUES (2, 'Alex', 'Sapov', 'Fedorovich', 2, 'gfhgr.weldo@example.net', '547876-32568', 'nvdsj*76', '2007-01-20 10:01:33', '2018-04-17 04:55:20');
INSERT INTO emploees (id, first_name, last_name, patronymic, photo_id, email, phone, `password`, created_at, updated_at) VALUES (3, 'Peter', 'Kirin', 'Grigorievich', 3, 'peter776@mail.ru', '884-55-5-21', 'SDEE4$5t', '2010-02-25 01:01:33', '2020-06-15 09:51:00');
INSERT INTO emploees (id, first_name, last_name, patronymic, photo_id, email, phone, `password`, created_at, updated_at) VALUES (4, 'Max', 'Willson', NULL, 4, 'max5@gmail.com', '54847-88-5-21', 'FFG565#!fe', '2021-01-25 09:01:33', '2021-05-01 10:40:00');
INSERT INTO emploees (id, first_name, last_name, patronymic, photo_id, email, phone, `password`, created_at, updated_at) VALUES (5, 'Ivan', 'Davydov', 'Petrovich', 5, 'II-7@gmail.com', '(495)-885-965-11', 'WFR)558', '2011-02-28 18:01:07', '2020-06-01 10:25:01');
INSERT INTO emploees (id, first_name, last_name, patronymic, photo_id, email, phone, `password`, created_at, updated_at) VALUES (6, 'Scott', 'Peterson', 'NULL', NULL, 'scott_the-_best@yahoo.com', '+1-854-6658-854', 'OmMMgtg**&', '2017-02-28 19:01:07', '2021-01-01 01:25:59');
INSERT INTO emploees (id, first_name, last_name, patronymic, photo_id, email, phone, `password`, created_at, updated_at) VALUES (7, 'Mary', 'Kirina', 'Pavlovna', 6, 'pkir776@mail.ru', '884-55-5-22', 'SFtyj$t', '2011-02-25 01:01:30', '2021-02-10 21:45:03');
INSERT INTO emploees (id, first_name, last_name, patronymic, photo_id, email, phone, `password`, created_at, updated_at) VALUES (8, 'Susen', 'Lebovsky', 'NULL', NULL, 'NY-ww@gmail.com', '+1(5884)-995-652', 'SUSjj_007', '2015-09-11 05:01:30', '2020-03-10 09:00:18');
INSERT INTO emploees (id, first_name, last_name, patronymic, photo_id, email, phone, `password`, created_at, updated_at) VALUES (9, 'Margo', 'Simoniyan', 'NULL', 7, 'RT@sputnik.ru', '+7-900-5855-596', 'love_putin_4ever', '2014-02-11 05:01:30', '2020-03-10 09:00:18');
INSERT INTO emploees (id, first_name, last_name, patronymic, photo_id, email, phone, `password`, created_at, updated_at) VALUES (10, 'Lubov', 'Sobol', 'Eduardovna', 8, 'LS@navalny.ru', '+7-999-1125-98-57', 'RT_is_A_trash', '2015-01-10 12:57:39', '2021-03-15 09:03:49');

-- Наполняем данными таблицу profiles
INSERT INTO `profiles` (`emploee_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'M', '1970-04-21', 'Sydney', 'Australia', '1995-11-08 12:13:20', '1994-07-20 09:28:29');
INSERT INTO `profiles` (`emploee_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'M', '2018-01-26', 'Petrozavodsk', 'Russia', '2007-06-04 01:34:20', '1982-01-05 23:51:06');
INSERT INTO `profiles` (`emploee_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'M', '1998-10-01', 'Kiev', 'Ukraine', '1973-11-26 09:56:28', '1997-04-09 16:47:03');
INSERT INTO `profiles` (`emploee_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'M', '1997-01-31', 'East Maritzaton', 'Russia', '1986-03-08 01:53:17', '1994-12-24 23:00:47');
INSERT INTO `profiles` (`emploee_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'M', '2003-12-16', 'Riga', 'Latvia', '1994-10-10 03:13:03', '1991-04-10 23:15:46');
INSERT INTO `profiles` (`emploee_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'M', '1998-06-19', 'North Pete', 'USA', '2001-09-08 01:25:24', '1995-08-10 13:56:15');
INSERT INTO `profiles` (`emploee_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'F', '1996-03-30', 'Minsk', 'Belarus', '1992-05-08 06:57:20', '1981-06-25 10:04:21');
INSERT INTO `profiles` (`emploee_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'F', '1975-04-18', 'Schowalterfurt', 'USA', '1988-05-21 23:50:00', '1993-10-01 09:58:48');
INSERT INTO `profiles` (`emploee_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'F', '1970-07-15', 'Moscow', 'Russia', '1999-02-19 01:57:04', '2020-08-08 04:05:51');
INSERT INTO `profiles` (`emploee_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'F', '1988-07-15', 'Petersburg', 'Russia', '1998-02-24 01:57:04', '2021-08-01 15:05:50');

-- Наполянем данными таблицу photo
INSERT INTO `photo` (`id`, `emploee_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 1, 'b', 54990, NULL, '1999-05-11 19:52:18', '1991-03-17 06:48:54');
INSERT INTO `photo` (`id`, `emploee_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 2, 'a', 114970, NULL, '2021-01-15 08:00:29', '2009-10-03 08:42:09');
INSERT INTO `photo` (`id`, `emploee_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 3, 'a', 75472, NULL, '1994-04-07 03:40:45', '2017-04-01 14:11:13');
INSERT INTO `photo` (`id`, `emploee_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 4, 'c', 489273, NULL, '1980-05-22 23:15:52', '1993-11-22 20:32:31');
INSERT INTO `photo` (`id`, `emploee_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 5, 'b', 665463, NULL, '2005-10-20 09:46:53', '2002-07-05 21:10:12');
INSERT INTO `photo` (`id`, `emploee_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 7, 'c', 414776, NULL, '1982-04-30 15:08:04', '2020-02-13 10:33:34');
INSERT INTO `photo` (`id`, `emploee_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 9, 'a', 24549, NULL, '1991-08-04 07:08:55', '2018-01-09 14:16:05');
INSERT INTO `photo` (`id`, `emploee_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 10, 'c', 19683, NULL, '1993-07-30 18:42:42', '1995-09-17 00:14:57');

-- Наполняем данными таблицу emploers
INSERT INTO `emploers` (`id`, `name`, `logo_id`, `city`, `country`, `adress`, `email`, `phone`, `branch_id`, `created_at`, `updated_at`) VALUES (1, 'GeekBrains', 4, 'Skolkovo', 'Russia', 'big boulevard 1', 'gudrun.baumbach@example.com', '181.717.5598', 7, '2003-08-19 20:17:20', '2007-02-07 13:58:54');
INSERT INTO `emploers` (`id`, `name`, `logo_id`, `city`, `country`, `adress`, `email`, `phone`, `branch_id`, `created_at`, `updated_at`) VALUES (2, 'Yandex', 5, 'East Dewitt', 'Russia', NULL, 'sebastian43@example.org', '1-080-497-4473x5185', 5, '1981-11-24 05:07:40', '1983-02-07 10:36:31');
INSERT INTO `emploers` (`id`, `name`, `logo_id`, `city`, `country`, `adress`, `email`, `phone`, `branch_id`, `created_at`, `updated_at`) VALUES (3, 'Gazprom', 7, 'Lake Elvie', 'Russia', NULL, 'king.eriberto@example.com', '(725)765-9201x72296', 4, '1994-10-21 23:34:52', '1991-04-08 09:10:04');
INSERT INTO `emploers` (`id`, `name`, `logo_id`, `city`, `country`, `adress`, `email`, `phone`, `branch_id`, `created_at`, `updated_at`) VALUES (4, 'SO EES', 1, 'Port Liliana', 'Russia', 'work street 5', 'kacie32@example.com', '686-872-5395x90782', 4, '2012-05-15 13:16:36', '2013-10-14 14:54:32');
INSERT INTO `emploers` (`id`, `name`, `logo_id`, `city`, `country`, `adress`, `email`, `phone`, `branch_id`, `created_at`, `updated_at`) VALUES (5, 'TOTAL', 2, 'North Shanna', 'USA', NULL, 'bechtelar.reggie@example.net', '(196)347-6875', 5, '1986-01-12 09:44:46', '1999-06-07 11:54:36');
INSERT INTO `emploers` (`id`, `name`, `logo_id`, `city`, `country`, `adress`, `email`, `phone`, `branch_id`, `created_at`, `updated_at`) VALUES (6, 'Google', 3, 'Kulasport', 'Australia', 'victory av 76', 'tharvey@example.com', '1-105-103-0520', 2, '2010-02-16 05:25:09', '2014-12-05 17:50:17');
INSERT INTO `emploers` (`id`, `name`, `logo_id`, `city`, `country`, `adress`, `email`, `phone`, `branch_id`, `created_at`, `updated_at`) VALUES (7, 'Taxi', NULL, 'South Tyriqueton', 'USA', NULL, 'mayer.neoma@example.net', '1-286-139-4044', 10, '2012-11-26 07:46:10', '1976-05-09 13:39:15');
INSERT INTO `emploers` (`id`, `name`, `logo_id`, `city`, `country`, `adress`, `email`, `phone`, `branch_id`, `created_at`, `updated_at`) VALUES (8, 'Rosneft', 8, 'Seamusville', 'Russia', NULL, 'quitzon.meggie@example.com', '1-534-741-7923x2317', 3, '1977-04-03 03:09:02', '2013-03-18 14:56:34');
INSERT INTO `emploers` (`id`, `name`, `logo_id`, `city`, `country`, `adress`, `email`, `phone`, `branch_id`, `created_at`, `updated_at`) VALUES (9, 'Rosspirtprom', 9, 'New Brendantown', 'Great Britain', NULL, 'gleichner.soledad@example.org', '919.017.4770', 1, '1998-03-27 13:10:09', '2020-07-23 09:45:57');
INSERT INTO `emploers` (`id`, `name`, `logo_id`, `city`, `country`, `adress`, `email`, `phone`, `branch_id`, `created_at`, `updated_at`) VALUES (10, 'Aeroflot', 10, 'West Stockholm', 'Sweden', 'rewfvdf fbf', 'kip.kovacek@example.org', '570-588-1176x93709', 10, '1990-04-11 00:30:43', '2005-01-09 06:11:28');

-- Наполняем данными таблицу logo
INSERT INTO `logo` (`id`, `emploer_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (1, 9, 'perspiciatis', 5889, 'jnsg', '1996-06-24 18:29:21', '1974-02-01 05:05:08');
INSERT INTO `logo` (`id`, `emploer_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (2, 3, 'maiores', 5723, 'zjfz', '2003-08-13 10:54:26', '1977-11-29 07:58:10');
INSERT INTO `logo` (`id`, `emploer_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (3, 2, 'qui', 5495, 'tfbh', '1991-07-22 12:32:59', '1982-07-22 06:52:31');
INSERT INTO `logo` (`id`, `emploer_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (4, 1, 'ipsa', 145901, 'gyag', '2008-07-29 01:09:45', '2010-07-06 01:24:29');
INSERT INTO `logo` (`id`, `emploer_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (5, 6, 'nam', 21059, 'ucwu', '2012-04-29 13:29:15', '1985-08-03 02:55:38');
INSERT INTO `logo` (`id`, `emploer_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (6, 8, 'tempore', 9985, 'kmvw', '2018-07-11 13:08:26', '1991-04-02 13:22:07');
INSERT INTO `logo` (`id`, `emploer_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (7, 4, 'autem', 3668, 'eiqg', '2012-03-03 15:00:41', '1984-06-25 13:10:13');
INSERT INTO `logo` (`id`, `emploer_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (8, 5, 'est', 188612, 'gwjw', '1991-02-09 15:06:17', '1981-12-07 05:23:39');
INSERT INTO `logo` (`id`, `emploer_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (9, 7, 'enim', 26153, 'qzws', '2008-02-19 10:28:42', '1988-01-08 09:15:04');
INSERT INTO `logo` (`id`, `emploer_id`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES (10, 10, 'optio', 28486, 'jyva', '2020-01-06 23:38:16', '1984-10-29 21:31:01');

-- Наполняем данными таблицу branches
INSERT INTO branches (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Automobiles', '2005-07-24 18:29:21', '2017-08-01 05:05:08');
INSERT INTO branches (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Hospitality', '2015-01-14 01:32:21', '2018-02-01 05:55:38');
INSERT INTO branches (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Medicine', '2001-01-14 01:40:21', '2005-03-09 05:55:38');
INSERT INTO branches (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Gas and oil', '1997-11-30 13:59:21', '2005-03-09 05:55:38');
INSERT INTO branches (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'IT', '1999-12-30 07:59:21', '2015-07-09 16:47:03');
INSERT INTO branches (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'Industry', '1994-02-28 09:59:21', '2003-06-09 23:47:03');
INSERT INTO branches (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'Education', '1998-09-01 07:30:00', '2020-02-09 08:44:29');
INSERT INTO branches (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'Trading', '1997-09-01 07:30:00', '2007-02-09 08:44:29');
INSERT INTO branches (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'Nutrition', '1987-09-01 07:30:00', '2021-02-19 20:44:29');
INSERT INTO branches (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'Transport', '1999-01-30 17:30:00', '2009-08-19 22:35:07');

-- Наполняем данными таблицу work_expirience
INSERT INTO work_expirience (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Without expirience', '2008-07-24 08:29:21', DEFAULT);
INSERT INTO work_expirience (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'From 1 to 3 years', '2008-07-24 08:30:21', '2021-01-25 17:35:10');
INSERT INTO work_expirience (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'From 4 to 6 years', '2008-07-24 08:31:21', '2021-02-25 14:35:10');
INSERT INTO work_expirience (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'More than 6 years', '2008-07-24 08:32:21', '2021-03-27 17:30:10');

-- Наполняем данными таблицу schedule
INSERT INTO schedule (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Full-time', '2017-07-24 08:29:21', DEFAULT);
INSERT INTO schedule (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Shift schedule', '2005-07-31 08:29:21', DEFAULT);
INSERT INTO schedule (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Flexible schedule', '2015-07-31 08:29:29', '2019-10-14 09:12:15');
INSERT INTO schedule (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Remote work', '2009-07-01 19:08:57', '2020-10-14 09:12:15');

-- Наполняем данными таблицу employment_type
INSERT INTO employment_type (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Full-time employment', '2010-07-20 18:29:21', '2017-02-01 05:09:08');
INSERT INTO employment_type (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'Part-time employment', '2015-07-20 18:29:21', '2018-02-01 05:09:57');
INSERT INTO employment_type (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'Project work', '2015-01-27 18:29:39', '2018-02-01 20:09:57');
INSERT INTO employment_type (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'Volunteering', '2008-06-27 08:29:39', '2019-11-01 18:09:51');
INSERT INTO employment_type (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'Internship', '2016-06-27 08:29:39', '2020-05-01 07:10:53');

-- Наполняем данными таблицу cv
INSERT INTO cv (`id`, `emploee_id`, `photo_id`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 1, 'HFyuvu udguis jsbvidf jshvjkdbv jksbdkvbdk', 'Moscow', 'Russia', 100000, 3, 2, 2, 1, '2014-02-07 10:09:08', '2016-08-07 10:25:33');
INSERT INTO cv (`id`, `emploee_id`, `photo_id`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 2, 'HFyuvu udguis jsbvidffgf ghf fbfbdfbdfbdb', 'Kazan', 'Russia', 80000, 1, 2, 1, 2, '2015-02-07 10:09:08', '2019-08-07 12:25:33');
INSERT INTO cv (`id`, `emploee_id`, `photo_id`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 3, 'HFdcbvs jsbvidffgf gf fbfbdfbdhttre lifbdb', 'Saint-Petersburg', 'Russia', 120000, 10, 4, 1, 3, '2012-02-07 10:09:08', '2019-08-07 13:15:33');
INSERT INTO cv (`id`, `emploee_id`, `photo_id`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (4, 2, 2, 'HFdcbvs jsbvidgd fbfbdfbdgttr mhe lifbdb', 'Saint-Petersburg', 'Russia', 100050 1, 4, 4, 4, '2012-02-07 10:09:08', '2019-08-07 13:15:33');
INSERT INTO cv (`id`, `emploee_id`, `photo_id`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 5, 'HFdcbvs jsbvidffgf gf fbfbdfbdhttre2 gn qwl fbdb', 'Portland', 'USA', 150000, 7, 2, 1, 3, '2020-02-07 10:09:08', '2021-01-07 13:15:33');
INSERT INTO cv (`id`, `emploee_id`, `photo_id`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (6, 1, 1, 'HFdcbvs jsbvi df3fgf gf fbf ww fbe2 gn qwl fbdb', 'Petrozavodsk', 'Russia', 75000, 5, 2, 1, 2, '2021-02-07 10:09:08', '2021-03-07 13:15:23');
INSERT INTO cv (`id`, `emploee_id`, `photo_id`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (7, 4, 4, 'HFdcbvs jsbvi df3fgf gf bdfdf wlldhttre2 gn qwl fbdb', 'Paris', 'France', 130000, 9, 1, 1, 1, '2020-05-07 19:09:58', '2021-04-09 22:15:50');
INSERT INTO cv (`id`, `emploee_id`, `photo_id`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 8, 'HFdcbvs jsbvi dfg67gf lorem re2 gn qwl fbdb', 'Scranton', 'USA', 160000, 7, 1, 2, 3, '2018-05-06 19:09:10', '2021-04-09 23:15:17');

-- Наполняем данными таблицу vacancies
INSERT INTO `vacancies` (`id`, `emploer_id`, `logo_id`, `name`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (1, 7, 3, 'wihw', 'Enim libero sed possimus aut.', 'New Sabinaport', 'qswj', 50000, 4, 2, 2, 4, '1977-01-20 22:08:54', '1982-05-04 10:23:53');
INSERT INTO `vacancies` (`id`, `emploer_id`, `logo_id`, `name`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (2, 5, 4, 'itdv', 'Numquam consequatur error a.', 'Port Olen', 'xpms', 95000, 9, 1, 2, 1, '2017-01-23 12:54:37', '1998-03-14 17:00:06');
INSERT INTO `vacancies` (`id`, `emploer_id`, `logo_id`, `name`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (3, 1, 4, 'pjph', 'Vel praesentium cumque quas soluta nemo exercitationem.', 'East Lelah', 'jwjr', 73000, 6, 3, 4, 5, '1989-09-26 19:58:03', '2016-01-28 06:36:11');
INSERT INTO `vacancies` (`id`, `emploer_id`, `logo_id`, `name`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (4, 3, 3, 'jzxy', 'Facilis voluptatem dolore et voluptatem laudantium veniam quam.', 'Wilhelmineborough', 'molc', 67000, 8, 1, 2, 4, '1980-05-19 13:33:33', '1993-11-09 04:19:32');
INSERT INTO `vacancies` (`id`, `emploer_id`, `logo_id`, `name`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (5, 1, 7, 'sogi', 'Consequatur quis et dolorem cum veritatis rem quam dolore.', 'Jevonbury', 'odjc', NULL, 4, 8, 5, 8, '2013-01-17 12:48:02', '1989-07-01 21:26:20');
INSERT INTO `vacancies` (`id`, `emploer_id`, `logo_id`, `name`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (6, 0, 8, 'hdyb', 'Sunt perspiciatis praesentium deleniti est itaque minus minus.', 'Hertachester', 'xclx', NULL, 5, 5, 3, 8, '1978-03-20 13:05:54', '1987-01-26 06:39:59');
INSERT INTO `vacancies` (`id`, `emploer_id`, `logo_id`, `name`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (7, 0, 0, 'jkkl', 'Iusto recusandae qui qui occaecati eos corporis sit.', 'Laurelmouth', 'kvxv', 80000, 4, 1, 2, 5, '2012-10-17 18:43:06', '1978-02-01 08:51:24');
INSERT INTO `vacancies` (`id`, `emploer_id`, `logo_id`, `name`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 5, 'jyfs', 'Repudiandae labore natus perferendis expedita minima.', 'South Prudencemouth', 'ihug', 110000, 6, 1, 3, 8, '2012-09-24 08:51:03', '2005-04-03 05:37:27');
INSERT INTO `vacancies` (`id`, `emploer_id`, `logo_id`, `name`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 7, 'uoda', 'Voluptatibus unde numquam perspiciatis dolore debitis harum saepe.', 'Leannonfort', 'lsho', 59000, 1, 4, 2, 1, '2008-10-11 21:36:02', '1978-03-08 07:39:08');
INSERT INTO `vacancies` (`id`, `emploer_id`, `logo_id`, `name`, `description`, `city`, `country`, `salary`, `branch_id`, `work_expirience_id`, `schedule_id`, `employment_type_id`, `created_at`, `updated_at`) VALUES (10, 9, 3, 'ryus', 'Est illum deserunt nam nihil earum.', 'Port Mackenzie', 'vklk', NULL, 2, 2, 3, 1, '1974-07-03 01:14:19', '1996-03-07 11:49:54');

-- Наполняем данными таблицу responses_emploees
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (1, 5, 1, '2019-03-01 18:16:40');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (2, 8, 2, '1989-08-08 20:37:20');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (2, 8, 3, '2021-02-15 13:31:50');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (2, 9, 2, '1999-08-11 07:37:27');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (3, 2, 5, '1976-05-22 21:21:21');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (3, 8, 1, '1974-05-05 21:29:37');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (3, 8, 3, '2014-01-11 10:51:08');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (4, 3, 9, '1978-09-29 22:02:18');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (5, 2, 6, '1970-01-11 06:02:00');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (5, 4, 3, '1971-12-12 01:59:25');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (5, 7, 1, '1989-03-14 23:48:13');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (5, 7, 3, '2011-08-03 03:33:45');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (7, 1, 1, '1977-06-21 14:37:12');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (7, 2, 1, '2019-03-05 21:20:57');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (8, 2, 2, '2010-06-03 11:26:05');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (8, 4, 6, '1980-03-15 07:57:08');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (9, 4, 4, '1994-12-05 02:28:45');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (9, 5, 8, '1977-09-13 22:11:21');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (9, 5, 9, '1982-01-08 09:11:50');
INSERT INTO `responses_emploees` (`emploee_id`, `emploer_id`, `vacancy_id`, `responsed_at`) VALUES (9, 8, 6, '1984-12-31 05:20:33');

-- Наполняем данными таблицу responses_emploers
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (1, 2, 8, '1977-07-04 22:07:31');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (2, 5, 7, '2013-09-16 13:48:55');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (2, 8, 4, '1975-01-14 14:04:29');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (3, 2, 5, '1979-03-16 16:38:47');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (3, 2, 7, '2004-10-07 19:03:19');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (3, 7, 9, '1983-10-05 06:01:53');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (3, 9, 5, '1995-04-01 00:31:28');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (4, 4, 8, '1977-07-13 12:50:19');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (4, 8, 1, '1993-06-21 08:54:27');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (5, 1, 9, '1989-02-10 11:25:40');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (5, 5, 8, '2013-04-15 19:25:27');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (5, 8, 3, '1973-03-09 06:59:45');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (6, 2, 9, '1993-03-26 07:18:58');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (6, 6, 5, '1970-11-13 14:09:21');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (7, 1, 3, '2017-10-14 03:24:56');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (7, 1, 8, '1975-06-08 06:46:59');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (8, 5, 9, '1978-09-02 10:31:55');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (9, 1, 2, '1989-10-31 12:12:09');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (9, 2, 9, '1978-02-17 22:12:01');
INSERT INTO `responses_emploers` (`emploee_id`, `emploer_id`, `cv_id`, `responsed_at`) VALUES (9, 8, 6, '1982-08-24 22:32:49');

-- Наполняем данными таблицу responses_messages
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (1, 8, 7, 'Molestias vel voluptatum ut ipsum a hic quis.', '1995-05-02 16:09:39');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (2, 6, 1, 'In voluptates velit vitae sunt consectetur.', '1985-04-11 00:18:08');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (3, 4, 1, 'Alias vitae eum hic incidunt possimus vero quis.', '2013-09-20 22:45:47');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (4, 5, 6, 'Omnis qui dicta qui et.', '2006-04-06 23:48:12');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (5, 3, 6, 'Labore amet et eveniet dicta.', '1970-01-13 18:21:24');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (6, 2, 3, 'Est architecto neque cum quia aliquam.', '1987-07-20 13:09:06');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (7, 1, 4, 'Optio praesentium beatae aspernatur voluptatem.', '2018-04-24 19:09:16');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (8, 3, 5, 'Atque earum doloribus quae earum dolores ut.', '1978-12-09 03:09:32');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (9, 7, 2, 'Inventore vero doloremque nesciunt veniam itaque.', '1998-10-25 07:55:36');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (10, 4, 3, 'Non officia necessitatibus quia nam et ut.', '2001-03-17 05:19:26');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (11, 9, 9, 'Et corporis aliquam saepe doloribus odio.', '1979-10-31 15:47:39');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (12, 6, 5, 'Consequatur consequatur landitiis dolorem.', '1982-06-20 06:17:45');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (13, 2, 2, 'Nesciunt perferendis vero ut voluptatibus.', '2000-05-24 12:32:58');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (14, 8, 8, 'Nesciunt sit qui molestiae in nostrum.', '2012-07-22 08:04:55');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (15, 5, 1, 'Consequuntur aur sit a facere modi cupiditate.', '1978-12-19 23:24:20');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (16, 7, 6, 'Occaecati aut facere eius iste provident.', '1991-01-26 17:38:52');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (17, 5, 3, 'Voluptas ab id corporis dolor provident.', '1991-01-30 03:45:17');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (18, 8, 8, 'Sunt fugiat ut praesentium optio.', '1983-05-19 13:49:27');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (19, 5, 9, 'Iure veniam explicabo aut itaque et.', '1998-10-13 14:47:19');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (20, 1, 1, 'Est necessitatibus sed qui maxime illo.', '1986-03-10 10:29:18');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (21, 2, 2, 'Explicabo sequi ut a enim nihil qui aspernatur.', '2013-01-20 17:59:47');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (22, 3, 6, 'Modi quod sit earum atque quaerat et quasi.', '1998-11-30 13:45:37');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (23, 8, 1, 'Enim est culpa magnam tempore id aut animi.', '2021-01-22 00:16:23');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (24, 5, 6, 'Aut dolorum qui magni quibusdam.', '1991-04-06 14:47:25');
INSERT INTO `messages` (`id`, `emploee_id`, `emploer_id`, `content`, `created_at`) VALUES (25, 1, 1, 'Aut ut nostrum neque.', '2013-05-28 18:55:04');
COMMIT;
