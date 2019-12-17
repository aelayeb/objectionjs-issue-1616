SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `draft` DEFAULT CHARACTER SET latin1 ;
USE `draft` ;

-- -----------------------------------------------------
-- Table `draft`.`offer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `draft`.`offer` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `service_id` INT(10) UNSIGNED NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `draft`.`service`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `draft`.`service` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = latin1;

-- Data
INSERT INTO `draft`.`service` (`id`, `name`) VALUES ('1', 'Service Alpha');
INSERT INTO `draft`.`service` (`id`, `name`) VALUES ('2', 'Service Beta');
INSERT INTO `draft`.`offer` (`service_id`, `name`) VALUES ('1', 'Offer A');
INSERT INTO `draft`.`offer` (`service_id`, `name`) VALUES ('1', 'Offer B');
INSERT INTO `draft`.`offer` (`service_id`, `name`) VALUES ('2', 'Offer C');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
