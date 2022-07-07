CREATE TABLE IF NOT EXISTS `sujungimas_receptai_dieta` (
  `receptas_id` TINYINT NOT NULL,
  `dieta_id` TINYINT NOT NULL,  
  PRIMARY KEY (`receptas_id`, `dieta_id`)
);

INSERT INTO `sujungimas_receptai_dieta` (`receptas_id`, `dieta_id`) VALUES
(1, 1),
(3, 1),
(5, 1),
(2, 1),
(5, 2),
(7, 2),
(2, 2),
(1, 2),
(6, 2),
(8, 2),
(3, 2),
(3, 3),
(7, 3),
(9, 3),
(1, 3),
(2, 3),
(5, 3),
(10, 3)

