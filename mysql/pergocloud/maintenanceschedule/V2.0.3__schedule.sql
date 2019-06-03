CREATE TABLE `maintenanceschedule`.`schedule` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `insert_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `description` VARCHAR(500) NULL,
  `company_id` INT NULL,
  PRIMARY KEY (`id`));
