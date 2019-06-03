CREATE TABLE `maintenanceschedule`.`interval` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

  
/*** SEED ***/
INSERT INTO `maintenanceschedule`.`interval` 
(`id`, `description`)
VALUES
(1, 'DI (Daily)'), 
(2, 'WI (Weekly)'), 
(3, 'MI (Monthly)'), 
(4, 'YI (Yearly)');