--Susikuriu receptu lentele.
CREATE TABLE IF NOT EXISTS `receptas` (
  `id` TINYINT NOT NULL,
  `kaina` DECIMAL (6,2) NOT NULL,
  `kalorijos_per100g` SMALLINT NOT NULL,
  `pavadinimas` varchar(255) NOT NULL,
  `kategorija` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `receptas` (`id`, `kaina`, `kalorijos_per100g`, `pavadinimas`, `kategorija`) VALUES
(1, 6.85, 600, 'Tabule couscous salotos', 'Vegetariški'),
(2, 15.03, 831, 'Tablue lebanietiškos salotos', 'Vegetariški'),
(3, 12.97, 622, 'Jautienos faršas su svogūnais', 'Pasaulio'),
(4, 26.86, 663, 'Kepta vištiena su svogūnu ir petražolėmis', 'Pasaulio'),
(5, 19.22, 754, 'Keptos bulvės su grietine', 'Vegetariški'),
(6, 9.52, 352, 'Bulvių košė', 'Vegetariški'),
(7, 18.76, 329, 'Teriyaki vištiena', 'Azijietiški'),
(8, 27.23, 1410, 'Lęšių ir avinžirnių sriuba', 'Vegetariški'),
(9, 8.12, 288, 'Avižinė košė', 'Vegetariški'),
(10, 8.75, 596, 'Mutinys', 'Lietuviški'),
(11, 2, 100, 'Košė', 'Vegetariški'),
(12, 3, 150, 'Salotos', 'Vegetariški'),
(17, 3.17, 100, 'Kotletai', 'Pasaulio');

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

ALTER TABLE receptas
DROP COLUMN kategorija;