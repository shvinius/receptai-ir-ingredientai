--Susikuriu receptu lentele.
CREATE TABLE IF NOT EXISTS `receptas` (
  `id` TINYINT NOT NULL,
  `pavadinimas` VARCHAR(255) NOT NULL,
  `nurodymai` VARCHAR(1000) NOT NULL,
  `kalorijos_per100g` SMALLINT NOT NULL,
  `kaina` DECIMAL (6,2) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `receptas` (`id`, `pavadinimas`, `nurodymai`, `kalorijos_per100g`, `kaina`) VALUES
(1, 'Tabule couscous salotos', '1. Paruošiame couscous 2. Supjausstom daržoves ir viską suberiam į vieną.', 564, '6.85'),
(2, 'Tablue lebanietiškos salotos', '1. Supjausstom daržoves ir viską suberiam į vieną.', 831, '15.03'),
(3, 'Jautienos faršas su svogūnais', '1. Pakepiname faršą. 2. Pakepinam svogūną. 3. Viską į vieną', 622, '12.97'),
(4, 'Kepta vištiena su svogūnu ir petražolėmis', '1. Supjaustome vištieną. 2. Pakepiname vištieną 3. Pakepiname svogūną ir petražolę. 4.Viską į vieną', 663, '26.86'),
(5, 'Keptos bulvės su grietine', '1. Supjaustom bulves ir svogūną. 2. Pakepinam bulves ir svogūną. 3. Sumaišome su grietine', 754, '19.22'),
(6, 'Bulvių košė', '1. Supjaustyti bulves 2. Išvirti 3. Sutrinti bulves maišant su pienu', 352, '9.52'),
(7, 'Teriyaki vištiena', '1. Supjaustyti juostelėmis vištieną. 2. Užmarinuoti teriyaki padaže. 3. Iškepti', 329, '18.76'),
(8, 'Lęšių ir avinžirnių sriuba', '1. Supjaustyt daržoves. 2. Virti daržoves ir lęšius. 3. Sutrinti daržoves ir lęšius. 4. Įdėti avinžirnius ir truputį pavirti. 5. Pateikti su grietine', 1410, '27.23'),
(9, 'Avižinė košė', '1. Išvirti dribsnius piene', 288, '8.12'),
(10, 'Mutinys', '1. Sumaišyti duoną, braškes ir pieną', 596, '8.75');

--6. Grąžinkite visų receptų id ir pavadinimą.
SELECT
    id, pavadinimas
FROM
    `receptas`

--7. Grąžinkite vidutinę receptų kainą.
SELECT
    AVG(kaina)
FROM
    `receptas`

--8. Grąžinkite visų kainų sumą.
SELECT
    SUM(kaina)
FROM
    `receptas`

--9. Grąžinkite receptų id ir pavadinimą, kurie yra nuo 3 iki 8 id ir turi daugiau nei 500 kalorijų.
SELECT
    id, pavadinimas
FROM
    `receptas`
WHERE
   id >= 3 AND id <= 8 AND kalorijos_per100g >= 500;

--10. Grąžinkite receptų pavadinimą ir kalorijos_per100g, kurie yra pigesni nei 10 ir turi mažiau kalorijų nei 350
SELECT
    pavadinimas, kalorijos_per100g
FROM
    `receptas`
WHERE
    kaina < 10 AND kalorijos_per100g < 350

--11. Grąžinkite receptų nuo 1 iki 5 id vidutinį kalorijų skaičių.
SELECT
    AVG (kalorijos_per100g)
FROM
    `receptas`
WHERE
    id >= 1 AND id <=5;

--12. Grąžinkite brangiausio recepto id ir pavadinimą.
SELECT
    id, pavadinimas
FROM
    `receptas`
WHERE
     kaina =(
    SELECT
        MAX(kaina)
    FROM
        `receptas`
);         

--13. Grąžinkite daugiausiai kaloringo recepto pavadinimą ir nurodymus.
SELECT
    pavadinimas, nurodymai
FROM
    `receptas`
WHERE
     kalorijos_per100g =(
    SELECT
        MAX(kalorijos_per100g)
    FROM
        `receptas`
);         

--14. Grąžinkite top 3 brangiausių receptų kainas
SELECT
    kaina
FROM
    `receptas`
ORDER BY
	kaina DESC
LIMIT 3

--15. Grąžinkite top 5 pigiausių receptų id ir pavadinimus. 
SELECT
    id, pavadinimas
FROM
    `receptas`
ORDER BY
	kaina ASC
LIMIT 5
