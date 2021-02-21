-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema sprint3
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `sprint3` ;

-- -----------------------------------------------------
-- Schema sprint3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sprint3` DEFAULT CHARACTER SET utf8 ;
USE `sprint3` ;

-- -----------------------------------------------------
-- Table `sprint3`.`movie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sprint3`.`movie` ;

CREATE TABLE IF NOT EXISTS `sprint3`.`movie` (
  `movie_id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `rating` VARCHAR(45) NOT NULL,
  `release_date` DATE NOT NULL,
  `studio` VARCHAR(45) NOT NULL,
  `runtime` INT NOT NULL,
  `genre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`movie_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sprint3`.`actor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sprint3`.`actor` ;

CREATE TABLE IF NOT EXISTS `sprint3`.`actor` (
  `actor_id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `dob` DATE NOT NULL,
  `dod` DATE NOT NULL,
  `movie_id` VARCHAR(45) NOT NULL,
  `gender` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`actor_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sprint3`.`actor_in_movie`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sprint3`.`actor_in_movie` ;

CREATE TABLE IF NOT EXISTS `sprint3`.`actor_in_movie` (
  `movie_id1` INT NOT NULL,
  `actor_id1` INT NOT NULL,
  INDEX `fk_actor_in_movie_movie_idx` (`movie_id1` ASC) VISIBLE,
  INDEX `fk_actor_in_movie_actor1_idx` (`actor_id1` ASC) VISIBLE,
  CONSTRAINT `fk_actor_in_movie_movie`
    FOREIGN KEY (`movie_id1`)
    REFERENCES `sprint3`.`movie` (`movie_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_actor_in_movie_actor1`
    FOREIGN KEY (`actor_id1`)
    REFERENCES `sprint3`.`actor` (`actor_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
