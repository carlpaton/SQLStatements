CREATE TABLE `maintenanceschedule`.`access_level` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

  
 /*** SEED ***/
INSERT INTO `maintenanceschedule`.`access_level` 
(`id`, `description`)
VALUES
(1, 'view only'), 
(2, 'can read and write'), 
(3, 'create new schedules');