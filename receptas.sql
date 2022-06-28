CREATE TABLE IF NOT EXISTS `receptas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kaina` double NOT NULL,
  `kalorijos_per100g` int(11) NOT NULL,
  `nurodymai` varchar(255) DEFAULT NULL,
  `pavadinimas` varchar(255) DEFAULT NULL,
  `vartotojas_id` bigint(20) DEFAULT NULL,
  `kategorija_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8adll1cr5cijcc2t2jduhckeg` (`vartotojas_id`),
  KEY `FK1sg9x100an7rv60ehnvx8d89d` (`kategorija_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

INSERT INTO `receptas` (`id`, `kaina`, `kalorijos_per100g`, `nurodymai`, `pavadinimas`, `vartotojas_id`, `kategorija_id`) VALUES
(1, 6.85, 600, '1. Paruošiame couscous 2. Supjausstom daržoves ir viską suberiam į vieną.', 'Tabule couscous salotos', NULL, 1),
(2, 15.03, 831, '1. Supjausstom daržoves ir viską suberiam į vieną.', 'Tablue lebanietiškos salotos', 1, NULL),
(3, 12.97, 622, '1. Pakepiname faršą. 2. Pakepinam svogūną. 3. Viską į vieną', 'Jautienos faršas su svogūnais', 1, NULL),
(4, 26.86, 663, '1. Supjaustome vištieną. 2. Pakepiname vištieną 3. Pakepiname svogūną ir petražolę. 4.Viską į vieną', 'Kepta vištiena su svogūnu ir petražolėmis', 1, NULL),
(5, 19.22, 754, '1. Supjaustom bulves ir svogūną. 2. Pakepinam bulves ir svogūną. 3. Sumaišome su grietine', 'Keptos bulvės su grietine', 1, NULL),
(6, 9.52, 352, '1. Supjaustyti bulves 2. Išvirti 3. Sutrinti bulves maišant su pienu', 'Bulvių košė', 1, NULL),
(7, 18.76, 329, '1. Supjaustyti juostelėmis vištieną. 2. Užmarinuoti teriyaki padaže. 3. Iškepti', 'Teriyaki vištiena', 1, NULL),
(8, 27.23, 1410, '1. Supjaustyt daržoves. 2. Virti daržoves ir lęšius. 3. Sutrinti daržoves ir lęšius. 4. Įdėti avinžirnius ir truputį pavirti. 5. Pateikti su grietine', 'Lęšių ir avinžirnių sriuba', 1, NULL),
(9, 8.12, 288, '1. Išvirti dribsnius piene', 'Avižinė košė', 1, NULL),
(10, 8.75, 596, '1. Sumaišyti duoną, braškes ir pieną', 'Mutinys', 1, 1),
(11, 2, 100, 'Išvirti košę', 'Košė', NULL, NULL),
(12, 3, 150, 'Sumaišyti viską', 'Salotos', 1, 4),
(13, 2, 100, 'jdsskfdj fkadsj kfadjk fk', 'Kotletai', 1, NULL),
(14, 2, 100, 'jdsskfdj fkadsj kfadjk fk', 'Kotletai', 1, NULL),
(15, 2, 100, 'jdsskfdj fkadsj kfadjk fk', 'Kotletai', 1, 1),
(16, 2.15, 100, 'jdsskfdj fkadsj kfadjk fk', 'Kotletai', 1, 1),
(17, 3.17, 100, 'Iškepti mėsą', 'Kotletai', 1, 3),
(18, 1, 24, 's', 's', NULL, NULL),
(19, 1, 100, 'sadasd', 'asd', NULL, NULL),
(20, 1, 15, 'sadasd', 'asd', NULL, NULL),
(21, 0, 0, 'asdad', 'asdad', NULL, NULL),
(22, 0, 0, 'asda', 'sad', NULL, 2),
(23, 0, 0, 'tdd', 'rrrrrrrrrrrrrr', NULL, 3),
(24, 6.85, 600, '1. Paruošiame couscous 2. Supjausstom daržoves ir viską suberiam į vieną.', 'Tabule couscous salotos', NULL, 3),
(25, 1, 1, 'assfsaf', 'afsasf', NULL, 1),
(26, 0, 0, '', '', NULL, NULL),
(27, 0, 0, '', '', NULL, NULL);


--6. Grąžinkite visų receptų id ir pavadinimą.
