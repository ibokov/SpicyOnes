-- SQL Script
/* ********************************
Project Phase II
Group 6 (MySQL)
This SQL Script was tested on MySQL using Azure MySQL server. To run, simply load this script file and run. ********************************
*/

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SPICYONES
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SPICYONES`;
USE `SPICYONES` ;

-- -----------------------------------------------------
-- Table `SPICYONES`.`PEPPER`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SPICYONES`.`PEPPER` (
  `PepName` VARCHAR(50) NOT NULL,
  `Pep_ID` CHAR(9) NOT NULL,
  `Pep_Scoville` INT NOT NULL,
  `Pep_Location` VARCHAR(50) NULL,
  PRIMARY KEY (`Pep_ID`),
  UNIQUE INDEX `Pep_ID_UNIQUE` (`Pep_ID` ASC) VISIBLE,
  CONSTRAINT chk_Pep_ID CHECK (pepid like '[0-9][0-9][0-9]-[0-9][0-9][0-9]'));


-- -----------------------------------------------------
-- Table `SPICYONES`.`COMPANY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SPICYONES`.`COMPANY` (
  `Company_Name` VARCHAR(100) NOT NULL,
  `HQ_Location` VARCHAR(50) NOT NULL,
  `Established_Date` YEAR(4) NOT NULL,
  `Num_HS_Produced` INT NOT NULL DEFAULT 1,
  PRIMARY KEY (`Company_Name`));



-- -----------------------------------------------------
-- Table `SPICYONES`.`HOTSAUCE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SPICYONES`.`HOTSAUCE` (
  `HSName` VARCHAR(50) NOT NULL,
  `HS_ID` CHAR(5) NOT NULL,
  `HS_Scoville` INT UNSIGNED NOT NULL,
  `Company_Name` VARCHAR(100) NOT NULL,
  `Pepper_ID` CHAR(9) NOT NULL,
  `Creation_Date` YEAR(4) NULL,
  `SFR` INT NULL DEFAULT 0,
  PRIMARY KEY (`HS_ID`),
  INDEX `Pepper_ID_idx` (`Pepper_ID` ASC) VISIBLE,
  INDEX `Company_Name_idx` (`Company_Name` ASC) VISIBLE,
  CONSTRAINT `Pepper_ID`
    FOREIGN KEY (`Pepper_ID`)
    REFERENCES `SPICYONES`.`PEPPER` (`Pep_ID`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE,
  CONSTRAINT `Company_Name`
    FOREIGN KEY (`Company_Name`)
    REFERENCES `SPICYONES`.`COMPANY` (`Company_Name`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
    CONSTRAINT chk_HS_ID CHECK (hs_id like '[0-9][0-9][0-9][0-9][0-9]');



-- -----------------------------------------------------
-- Table `SPICYONES`.`SEASON`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SPICYONES`.`SEASON` (
  `Season_Number` INT UNSIGNED NOT NULL CHECK(Season_Number < 11),
  `HS_ID` CHAR(5) NOT NULL,
  PRIMARY KEY (`Season_Number`, `HS_ID`),
  INDEX `HS_ID_idx` (`HS_ID` ASC) VISIBLE,
  CONSTRAINT `HS_ID`
    FOREIGN KEY (`HS_ID`)
    REFERENCES `SPICYONES`.`HOTSAUCE` (`HS_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);



-- -----------------------------------------------------
-- Table `SPICYONES`.`EPISODES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SPICYONES`.`EPISODES` (
  `Episode_ID` INT UNSIGNED NOT NULL CHECK(Episode_ID > 0),
  `Ep_Name` VARCHAR(250) NOT NULL,
  `Ep_Airdate` DATE NOT NULL,
  `Guest_Completion` VARCHAR(10) NULL DEFAULT 'YES',
  `Season_Number` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`Episode_ID`),
  INDEX `Season_Number_idx` (`Season_Number` ASC) VISIBLE,
  CONSTRAINT `Season_Number`
    FOREIGN KEY (`Season_Number`)
    REFERENCES `SPICYONES`.`SEASON` (`Season_Number`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);



-- -----------------------------------------------------
-- Table `SPICYONES`.`GUEST`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SPICYONES`.`GUEST` (
  `Guest_Name` VARCHAR(50) NOT NULL,
  `Episode_ID` INT UNSIGNED NOT NULL,
  `HS_ID_Fail` INT NULL DEFAULT NULL,
  `Profession` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Guest_Name`, `Episode_ID`),
  INDEX `Episode_ID_idx` (`Episode_ID` ASC) VISIBLE,
  CONSTRAINT `Episode_ID`
    FOREIGN KEY (`Episode_ID`)
    REFERENCES `SPICYONES`.`EPISODES` (`Episode_ID`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
