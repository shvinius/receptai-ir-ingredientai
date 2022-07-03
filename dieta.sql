CREATE TABLE IF NOT EXISTS `dieta` (
  `id` TINYINT NOT NULL,
  `patiekalai` varchar(255) NOT NULL,
  `skaicius_per_diena` TINYINT NOT NULL,
  `trukme_dienomis` TINYINT NOT NULL,  
   PRIMARY KEY (`id`)
);

INSERT INTO `dieta`(`id`, `patiekalai`, `skaicius_per_diena`, `trukme_dienomis`) VALUES (1,'Tabule couscous salotos
', 2, 2), (2, 'Jautienos faršas su svogūnais', 2, 2), (3, 'Keptos bulvės su grietine', 2, 2), (4, 'Tablue lebanietiškos salotos', 2, 2), (5, 'Keptos bulvės su grietine', 2, 4), (6, 'Teriyaki vištiena', 2, 4), (7, 'Tablue lebanietiškos salotos', 2, 4), (8, 'Tabule couscous salotos', 2, 4), (9, 'Bulvių košė', 2, 4), (10, 'Lęšių ir avinžirnių sriuba', 2, 4), (11, 'Jautienos faršas su svogūnais', 2, 4), (12, 'Tabule couscous salotos', 3, 3), (13, 'Jautienos faršas su svogūnais', 3, 3), (14, 'Teriyaki vištiena', 3, 3), (15, 'Avižinė košė', 3, 3), (16, 'Kepta vištiena su svogūnu ir petražolėmis', 3, 3), (17, 'Keptos bulvės su grietine', 3, 3), (18, 'Mutinys', 3, 3)