CREATE TABLE IF NOT EXISTS `sujungimas_receptai_virtuve` (
	`receptas_id` TINYINT NOT NULL,
    `virtuve_salis_id` TINYINT NOT NULL,
    PRIMARY KEY (`receptas_id`, `virtuve_salis_id`)
);

INSERT INTO `sujungimas_receptai_virtuve` (`receptas_id`, `virtuve_salis_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 4),
(8, 5),
(9, 3),
(10, 6);
