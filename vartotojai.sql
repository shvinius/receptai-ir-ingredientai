CREATE TABLE IF NOT EXISTS `vartotojai` (
    `id` TINYINT NOT NULL,
    `login` VARCHAR (10) NOT NULL,
    `password` VARCHAR (10) NOT NULL,
    PRIMARY KEY (`id`)
);    

INSERT INTO `vartotojai`(`id`, `login`, `password`) VALUES (1,'user123','psw123'), (2, 'bananas5', 'kivis27')