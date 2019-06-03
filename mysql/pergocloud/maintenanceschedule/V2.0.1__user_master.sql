CREATE TABLE `maintenanceschedule`.`user_master` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(100) NULL,
  `access_level_id` INT NULL DEFAULT 0,
  `insert_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));