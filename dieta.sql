CREATE TABLE IF NOT EXISTS `dieta` (
  `id` TINYINT NOT NULL,
  `skaicius_per_diena` TINYINT NOT NULL,
  `trukme_dienomis` TINYINT NOT NULL,  
   PRIMARY KEY (`id`)
);

INSERT INTO `dieta`(`id`, `skaicius_per_diena`, `trukme_dienomis`) VALUES (1, 2, 2), (2, 2, 4), (3, 3, 3)