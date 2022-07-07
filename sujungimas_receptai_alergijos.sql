CREATE TABLE IF NOT EXISTS `sujungimas_receptai_alergijos` (
  `receptas_id` TINYINT NOT NULL,
  `visos_alergijos_id` TINYINT NOT NULL,  
  PRIMARY KEY (`receptas_id`, `visos_alergijos_id`)
);

INSERT INTO `sujungimas_receptai_alergijos` (`receptas_id`, `visos_alergijos_id`) VALUES
(1, 1),
(5, 7),
(6, 7),
(7, 11),
(7, 6),
(8, 7),
(9, 1),
(10, 1);