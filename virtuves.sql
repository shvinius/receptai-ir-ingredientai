CREATE TABLE IF NOT EXISTS `virtuves_salys` (
  `id` TINYINT NOT NULL,
  `pavadinimas` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `virtuves_salys`(`id`, `pavadinimas`) VALUES (1,'Vidurio Rytų'), (2,'Lebanietiška'), (3, 'Universali'), (4, 'Azijiečių'), (5, 'Morokietiška'), (6, 'Lietuviška')