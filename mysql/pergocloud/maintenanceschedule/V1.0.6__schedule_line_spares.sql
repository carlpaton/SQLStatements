CREATE TABLE `maintenanceschedule`.`schedule_line_spares` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `schedule_line_id` INT NULL,
  `quantity` INT NULL,
  `insert_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `spares_master_id` INT NULL,
  `historic_unit_cost` DOUBLE NULL,
  PRIMARY KEY (`id`));
