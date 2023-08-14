-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema finance
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema finance
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `finance` DEFAULT CHARACTER SET utf8 ;
USE `finance` ;

-- -----------------------------------------------------
-- Table `finance`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `finance`.`Customer` (
  `cust_jumin` VARCHAR(20) NOT NULL,
  `cust_name` VARCHAR(20) NOT NULL,
  `cust_addr` VARCHAR(100) NOT NULL,
  `cust_birth` DATE NOT NULL,
  `cust_email` VARCHAR(50) NULL,
  `cust_phnum` VARCHAR(25) NOT NULL,
  `cust_job` VARCHAR(30) NULL,
  PRIMARY KEY (`cust_jumin`),
  UNIQUE INDEX `cust_email_UNIQUE` (`cust_email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `finance`.`Account`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `finance`.`Account` (
  `acc_id` VARCHAR(14) NOT NULL,
  `cust_jumin` VARCHAR(20) NOT NULL,
  `acc_type` VARCHAR(20) NOT NULL,
  `acc_balance` INT NOT NULL,
  `acc_card` CHAR(1) NOT NULL,
  `acc_register_date` DATETIME NULL,
  PRIMARY KEY (`acc_id`),
  INDEX `fk_Account_Customer1_idx` (`cust_jumin` ASC) VISIBLE,
  CONSTRAINT `fk_Account_Customer1`
    FOREIGN KEY (`cust_jumin`)
    REFERENCES `finance`.`Customer` (`cust_jumin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `finance`.`Card`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `finance`.`Card` (
  `card_no` CHAR(14) NOT NULL,
  `cust_jumin` VARCHAR(20) NOT NULL,
  `acc_id` VARCHAR(11) NOT NULL,
  `card_register_date` DATE NULL,
  `card_limit_money` INT NULL,
  `card_approve_date` DATE NULL,
  `card_type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`card_no`),
  INDEX `fk_Card_Customer_idx` (`cust_jumin` ASC) VISIBLE,
  INDEX `fk_Card_Account1_idx` (`acc_id` ASC) VISIBLE,
  CONSTRAINT `fk_Card_Customer`
    FOREIGN KEY (`cust_jumin`)
    REFERENCES `finance`.`Customer` (`cust_jumin`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Card_Account1`
    FOREIGN KEY (`acc_id`)
    REFERENCES `finance`.`Account` (`acc_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `finance`.`Transaction`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `finance`.`Transaction` (
  `trans_id` INT NULL AUTO_INCREMENT,
  `trans_acc_id` VARCHAR(14) NOT NULL,
  `trans_type` VARCHAR(20) NULL,
  `trans_message` VARCHAR(20) NULL,
  `trans_money` INT NULL,
  `trans_date` DATETIME NULL,
  PRIMARY KEY (`trans_id`),
  INDEX `fk_Transaction_Account1_idx` (`trans_acc_id` ASC) VISIBLE,
  CONSTRAINT `fk_Transaction_Account1`
    FOREIGN KEY (`trans_acc_id`)
    REFERENCES `finance`.`Account` (`acc_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
