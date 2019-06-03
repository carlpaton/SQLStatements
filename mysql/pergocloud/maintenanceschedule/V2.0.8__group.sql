CREATE TABLE `maintenanceschedule`.`group` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

  
 /*** SEED ***/
INSERT INTO `maintenanceschedule`.`group` 
(`id`, `description`)
VALUES
(1, 'mechanic'), 
(2, 'operator'), 
(3, 'electric'); 