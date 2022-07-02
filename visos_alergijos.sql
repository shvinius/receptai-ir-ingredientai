CREATE TABLE IF NOT EXISTS `visos_alergijos` (
  `id` TINYINT NOT NULL,
  `pavadinimas` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `visos_alergijos`(`id`, `pavadinimas`) VALUES (1,'glitimas'), (2, 'vėžiagyviai'), (3, 'kiaušiniai'), (4, 'žuvys'), (5, 'žemės riešutai'), (6, 'sojų pupelės'), (7, 'pienas'), (8, 'riešutai'), (9, 'salierai'), (10, 'garstyčios'), (11, 'sezamo sėklos'), (12, 'sieros dioksidas'), (13, 'lubinai'), (14,'moliuskai')