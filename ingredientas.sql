--Susikuriu ingredientu lentele.
CREATE TABLE IF NOT EXISTS `ingredientas` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `kaina` double NOT NULL,
  `kalorijos_per100g` int(11) NOT NULL,
  `pavadinimas` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

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