--Susikuriu ingredientu lentele.
CREATE TABLE IF NOT EXISTS `ingredientas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kaina` double NOT NULL,
  `kalorijos_per100g` int(11) NOT NULL,
  `pavadinimas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

INSERT INTO `ingredientas` (`id`, `kaina`, `kalorijos_per100g`, `pavadinimas`) VALUES
(1, 6.12, 166, 'Vištiena'),
(2, 8.55, 39, 'Jautienos faršas'),
(3, 3.53, 309, 'Braškės'),
(4, 4.53, 243, 'Pienas'),
(5, 3.59, 45, 'Avižiniai dribsniai'),
(6, 2.53, 72, 'Svogūnas'),
(7, 9.44, 313, 'Bulvės'),
(8, 5.93, 307, 'Grietinė'),
(9, 3.85, 134, 'Teriyaki marinatas'),
(10, 10.21, 290, 'Lęšiai'),
(11, 6.99, 423, 'Avinžirniai'),
(12, 1.57, 318, 'Petražolė'),
(13, 8.87, 311, 'Pomidoras'),
(14, 3.59, 436, 'Agurkas'),
(15, 2.57, 84, 'Couscous'),
(16, 0.69, 44, 'Duona');

--1. Grąžinkite visų ingredientų kainą. (ingredientų lentelės kainos stulpelį).
SELECT
    kaina
FROM
    `ingredientas`

--2. Grąžinkite visų ingredientų pavadinimą ir kalorijos per 100g stulpelius, kur (WHERE) kalorijos per 100g būtų mažesnės už 90. (naudoti WHERE).
SELECT
    pavadinimas, kalorijos_per100g
FROM
    `ingredientas`
WHERE
    kalorijos_per100g < 90

--3. Grąžinkite ingredientų pavadinimą ir kainą, kurių kaina yra didesnė už 2.20, bet mažesnė už 5.80.    
SELECT
    pavadinimas, kaina
FROM
    `ingredientas`
WHERE
    kaina > 2.80 AND kaina < 5.8;

--4. Grąžinkite ingredientų visus stulpelius nuo 6 id iki 10 id imtinai.
SELECT
    *
FROM
    `ingredientas`
WHERE
    id >= 6 AND id <= 10;

--5. Grąžinkite brangiausio ingrediento kainą.
SELECT
    MAX(kaina)
FROM
    `ingredientas`

