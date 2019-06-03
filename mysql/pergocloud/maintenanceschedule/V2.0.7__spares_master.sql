CREATE TABLE `maintenanceschedule`.`spares_master` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `supplier_id` INT NULL,
  `description` VARCHAR(500) NULL,
  `unit_cost` DOUBLE NULL,
  `insert_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));

  
/*** SEED ***/
INSERT INTO `maintenanceschedule`.`spares_master` 
(`supplier_id`, `description`, `unit_cost`)
VALUES
(1, '6002 Bearings', 100);