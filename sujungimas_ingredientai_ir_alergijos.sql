CREATE TABLE IF NOT EXISTS `sujungimas_ingredientai_ir_alergijos` (
  `id_ingredientas` TINYINT NOT NULL,
  `id_visos_alergijos` TINYINT NOT NULL,  
  PRIMARY KEY (`id_ingredientas`, `id_visos_alergijos`)
);

INSERT INTO `sujungimas_ingredientai_ir_alergijos`(`id_ingredientas`, `id_visos_alergijos`) VALUES (4, 7), (5, 1), (8, 7), (9, 6), (9, 11), (15, 1), (16, 1)