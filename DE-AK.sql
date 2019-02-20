-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema DE-AK
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DE-AK
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DE-AK` DEFAULT CHARACTER SET big5 ;
USE `DE-AK` ;

-- -----------------------------------------------------
-- Table `DE-AK`.`artist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DE-AK`.`artist` (
  `artistID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `born` VARCHAR(45) NULL,
  `died` VARCHAR(45) NULL,
  `nationality` VARCHAR(45) NULL,
  `knownFor` VARCHAR(100) NULL,
  PRIMARY KEY (`artistID`))
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `DE-AK`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DE-AK`.`category` (
  `categoryID` INT NOT NULL AUTO_INCREMENT,
  `categoryName` VARCHAR(45) NULL,
  `type` VARCHAR(45) NULL,
  PRIMARY KEY (`categoryID`))
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `DE-AK`.`company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DE-AK`.`company` (
  `companyID` INT NOT NULL AUTO_INCREMENT,
  `developer` VARCHAR(45) NULL,
  `designer` VARCHAR(45) NULL,
  PRIMARY KEY (`companyID`))
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `DE-AK`.`workDone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DE-AK`.`workDone` (
  `workDoneID` INT NOT NULL AUTO_INCREMENT,
  `notableWork` VARCHAR(45) NULL,
  `about` TEXT NULL,
  `year` VARCHAR(45) NULL,
  `medium` VARCHAR(45) NULL,
  `dimensions` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `category` VARCHAR(45) NULL,
  PRIMARY KEY (`workDoneID`),
  CONSTRAINT `fk_workDone_category1`
    FOREIGN KEY (`workDoneID`)
    REFERENCES `DE-AK`.`category` (`categoryID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_workDone_artist2`
    FOREIGN KEY (`workDoneID`)
    REFERENCES `DE-AK`.`artist` (`artistID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_workDone_company2`
    FOREIGN KEY (`workDoneID`)
    REFERENCES `DE-AK`.`company` (`companyID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `DE-AK`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DE-AK`.`category` (
  `categoryID` INT NOT NULL AUTO_INCREMENT,
  `categoryName` VARCHAR(45) NULL,
  `type` VARCHAR(45) NULL,
  PRIMARY KEY (`categoryID`))
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `DE-AK`.`artist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DE-AK`.`artist` (
  `artistID` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `born` VARCHAR(45) NOT NULL,
  `died` VARCHAR(45) NULL,
  `nationality` VARCHAR(45) NULL,
  `knownFor` VARCHAR(45) NULL,
  PRIMARY KEY (`artistID`))
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `DE-AK`.`company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DE-AK`.`company` (
  `companyID` INT NOT NULL AUTO_INCREMENT,
  `developer` VARCHAR(45) NULL,
  `designer` VARCHAR(45) NULL,
  PRIMARY KEY (`companyID`))
ENGINE = InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Table `DE-AK`.`workDone`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DE-AK`.`workDone` (
  `workDoneID` INT NOT NULL AUTO_INCREMENT,
  `notableWork` VARCHAR(45) NULL,
  `about` TEXT NULL,
  `year` VARCHAR(45) NULL,
  `medium` VARCHAR(45) NULL,
  `dimensions` VARCHAR(45) NULL,
  `location` VARCHAR(45) NULL,
  `category` VARCHAR(45) NULL,
  PRIMARY KEY (`workDoneID`),
  CONSTRAINT `fk_workDone_category1`
    FOREIGN KEY (`workDoneID`)
    REFERENCES `DE-AK`.`category` (`categoryID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_workDone_artist2`
    FOREIGN KEY (`workDoneID`)
    REFERENCES `DE-AK`.`artist` (`artistID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_workDone_company2`
    FOREIGN KEY (`workDoneID`)
    REFERENCES `DE-AK`.`company` (`companyID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
