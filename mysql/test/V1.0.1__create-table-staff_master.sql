CREATE TABLE `test`.`staff_master` (
`id` INT NOT NULL AUTO_INCREMENT,
`first_name` VARCHAR(45) NULL,
`surname` VARCHAR(45) NULL,
`email` VARCHAR(45) NULL,
`insert_date` DATE NULL,
`salary` DOUBLE NULL,
PRIMARY KEY (`id`),
UNIQUE INDEX `first_name_UNIQUE` (`first_name` ASC));