-- MySQL Script generated by MySQL Workbench
-- Fri May 24 10:53:23 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Impresoras
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `Impresoras` ;

-- -----------------------------------------------------
-- Schema Impresoras
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Impresoras` DEFAULT CHARACTER SET utf8 ;
USE `Impresoras` ;

-- -----------------------------------------------------
-- Table `Impresoras`.`rollos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Impresoras`.`rollos` ;

CREATE TABLE IF NOT EXISTS `Impresoras`.`rollos` (
  `idRollos` INT NOT NULL,
  PRIMARY KEY (`idRollos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Impresoras`.`impresoras`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Impresoras`.`impresoras` ;

CREATE TABLE IF NOT EXISTS `Impresoras`.`impresoras` (
  `idimpresora` INT NOT NULL,
  `nombre_impresora` VARCHAR(45) NULL,
  `marca` VARCHAR(45) NULL,
  `modelo` VARCHAR(45) NULL,
  `alto_imp` DOUBLE NULL,
  `ancho_imp` DOUBLE NULL,
  `largo_imp` DOUBLE NULL,
  `consumo_hora` FLOAT NULL,
  `horas_uso` INT NULL,
  `mantenimiento` DATE NULL,
  PRIMARY KEY (`idimpresora`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Impresoras`.`materiales`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Impresoras`.`materiales` ;

CREATE TABLE IF NOT EXISTS `Impresoras`.`materiales` (
  `idmateriales` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idmateriales`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Impresoras`.`impresiones`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Impresoras`.`impresiones` ;

CREATE TABLE IF NOT EXISTS `Impresoras`.`impresiones` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Impresoras`.`colores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Impresoras`.`colores` ;

CREATE TABLE IF NOT EXISTS `Impresoras`.`colores` (
  `idcolores` INT NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idcolores`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Impresoras`.`piezas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Impresoras`.`piezas` ;

CREATE TABLE IF NOT EXISTS `Impresoras`.`piezas` (
)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
