CREATE TABLE `maintenanceschedule`.`user_master` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `is_active` BIT(1) NULL DEFAULT 0,
  `email` VARCHAR(100) NULL,
  `password_hash` VARCHAR(100) NULL,
  `password_salt` VARCHAR(100) NULL,
  `company_id` INT NULL DEFAULT 0,
  `first_name` VARCHAR(45) NULL,
  `surname` VARCHAR(45) NULL,
  `access_level_id` INT NULL DEFAULT 0,
  `insert_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));