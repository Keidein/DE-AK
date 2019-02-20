-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema DE AK
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DE AK
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DE AK` DEFAULT CHARACTER SET big5 ;
USE `DE AK` ;

-- -----------------------------------------------------
-- Table `DE AK`.`artist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DE AK`.`artist` (
  `name` VARCHAR(45) NOT NULL,
  `born` YEAR(4) NOT NULL,
  `died` YEAR(4) NULL DEFAULT NULL,
  `nationality` VARCHAR(45) NULL DEFAULT NULL,
  `knownFor` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`name`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = big5;


-- -----------------------------------------------------
-- Table `DE AK`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DE AK`.`category` (
  `category` VARCHAR(45) NOT NULL,
  `type` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`category`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = big5;


-- -----------------------------------------------------
-- Table `DE AK`.`company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DE AK`.`company` (
  `developer` VARCHAR(45) NOT NULL,
  `designer` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`developer`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = big5;


-- -----------------------------------------------------
-- Table `DE AK`.`workDone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DE AK`.`workDone` (
  `notableWork` VARCHAR(45) NOT NULL,
  `about` TEXT NULL DEFAULT NULL,
  `year` YEAR(4) NULL DEFAULT NULL,
  `medium` VARCHAR(45) NULL DEFAULT NULL,
  `dimensions` VARCHAR(45) NULL DEFAULT NULL,
  `location` VARCHAR(45) NULL DEFAULT NULL,
  `category` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`notableWork`),
  INDEX `fk_workDone_category_idx` (`category` ASC),
  CONSTRAINT `fk_workDone_artist1`
    FOREIGN KEY (`notableWork`)
    REFERENCES `DE AK`.`artist` (`name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_workDone_category`
    FOREIGN KEY (`category`)
    REFERENCES `DE AK`.`category` (`category`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_workDone_company1`
    FOREIGN KEY (`notableWork`)
    REFERENCES `DE AK`.`company` (`developer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = big5;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
