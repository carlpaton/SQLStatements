  CREATE TABLE `test`.`staff_master` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NULL,
  `surname` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `insert_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `salary` FLOAT NULL,
  PRIMARY KEY (`id`));
