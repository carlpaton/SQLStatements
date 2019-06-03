CREATE TABLE `maintenanceschedule`.`schedule_line` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `schedule_id` INT NULL,
  `insert_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `description` VARCHAR(500) NULL,
  `description2` VARCHAR(500) NULL,
  `start_date` DATETIME NULL DEFAULT NULL,
  `due_date` DATETIME NULL DEFAULT NULL,
  `interval_id` INT NULL,
  `job_hours` DOUBLE NULL,
  `group_id` INT NULL,
  PRIMARY KEY (`id`));
