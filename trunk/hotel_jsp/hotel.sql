SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `recepcionista`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `recepcionista` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `recepcionista` (
  `codigo` INT(11) NOT NULL AUTO_INCREMENT ,
  `cedula` INT(12) NOT NULL ,
  `nombre` VARCHAR(255) NOT NULL ,
  `apellido` VARCHAR(255) NOT NULL ,
  `sexo` VARCHAR(255) NOT NULL ,
  `direccion` VARCHAR(255) NOT NULL ,
  `telefono` VARCHAR(255) NOT NULL ,
  `email` VARCHAR(255) NOT NULL ,
  `usuario` VARCHAR(255) NULL DEFAULT NULL ,
  PRIMARY KEY (`codigo`) )
ENGINE = MyISAM
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cliente` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `cliente` (
  `codigo` INT(20) NOT NULL DEFAULT '0' ,
  `Pnombre` VARCHAR(50) NOT NULL ,
  `Snombre` VARCHAR(50) NOT NULL ,
  `Papellido` VARCHAR(50) NOT NULL ,
  `Sapellido` VARCHAR(50) NOT NULL ,
  `cedula` INT(20) NOT NULL ,
  `sexo` VARCHAR(50) NOT NULL ,
  `direccion` VARCHAR(50) NULL DEFAULT NULL ,
  `telefono` INT(20) NULL DEFAULT NULL ,
  `email` VARCHAR(50) NULL DEFAULT NULL ,
  `cod_recepcionista` INT(20) NOT NULL DEFAULT '0' ,
  PRIMARY KEY (`codigo`) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;
CREATE INDEX `cod_recepcionistafk` ON `cliente` (`telefono` ASC) ;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `servicio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `servicio` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `servicio` (
  `codigo` INT(11) NOT NULL AUTO_INCREMENT ,
  `cantidad` INT(11) NOT NULL ,
  `nombre` VARCHAR(255) NOT NULL ,
  `costo` INT(11) NOT NULL ,
  PRIMARY KEY (`codigo`) )
ENGINE = MyISAM
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `tipohabitacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tipohabitacion` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `tipohabitacion` (
  `codigo` INT(11) NOT NULL AUTO_INCREMENT ,
  `numero` INT(4) NOT NULL ,
  `nombre` VARCHAR(255) NOT NULL ,
  `costo` DOUBLE NOT NULL ,
  PRIMARY KEY (`codigo`) )
ENGINE = MyISAM
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `habitacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `habitacion` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `habitacion` (
  `codigo` INT(11) NOT NULL ,
  `numero` INT(14) NOT NULL ,
  `estado` VARCHAR(50) NOT NULL ,
  `tipo` VARCHAR(80) NULL DEFAULT NULL ,
  `costo` INT(11) NOT NULL ,
  `cod_tipo_habitacion` INT(11) NOT NULL ,
  `cod_recepcionista` INT(11) NOT NULL ,
  PRIMARY KEY (`codigo`) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;
CREATE INDEX `cod_recepcionistafk` ON `habitacion` (`cod_recepcionista` ASC) ;

SHOW WARNINGS;
CREATE INDEX `cod_tipohabitacionfk` ON `habitacion` (`cod_tipo_habitacion` ASC) ;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `hospedaje`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `hospedaje` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `hospedaje` (
  `codigo` INT(11) NOT NULL AUTO_INCREMENT ,
  `fecha_inicio` VARCHAR(80) NOT NULL ,
  `fecha_final` VARCHAR(80) NOT NULL ,
  `valor` INT(11) NOT NULL ,
  `cod_cliente` INT(11) NOT NULL ,
  `cod_habitacion` INT(11) NOT NULL ,
  `cod_recepcionista` INT(11) NOT NULL ,
  PRIMARY KEY (`codigo`) )
ENGINE = MyISAM
AUTO_INCREMENT = 35
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;
CREATE INDEX `cod_clientefk` ON `hospedaje` (`cod_cliente` ASC) ;

SHOW WARNINGS;
CREATE INDEX `cod_habitacionfk` ON `hospedaje` (`cod_habitacion` ASC) ;

SHOW WARNINGS;
CREATE INDEX `cod_recepcionistafk` ON `hospedaje` (`cod_recepcionista` ASC) ;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `detalleservicio`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `detalleservicio` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `detalleservicio` (
  `codigo` INT(11) NOT NULL ,
  `fecha_consumo` VARCHAR(60) NOT NULL ,
  `cod_servico` INT(11) NOT NULL ,
  `cod_hospedaje` INT(11) NOT NULL ,
  PRIMARY KEY (`codigo`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;
CREATE INDEX `cod_serviciofk` ON `detalleservicio` (`cod_servico` ASC) ;

SHOW WARNINGS;
CREATE INDEX `cod_hospedajefk` ON `detalleservicio` (`cod_hospedaje` ASC) ;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `factura`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `factura` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `factura` (
  `codigo` INT(11) NOT NULL AUTO_INCREMENT ,
  `fecha` VARCHAR(80) NOT NULL ,
  `iva` DOUBLE NULL DEFAULT NULL ,
  `total` INT(11) NOT NULL ,
  `cod_cliente` INT(11) NOT NULL ,
  `cod_recepcionista` INT(11) NOT NULL ,
  `cod_detalleservicio` INT(11) NOT NULL ,
  PRIMARY KEY (`codigo`) )
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;
CREATE INDEX `cod_recepcionistafk` ON `factura` (`cod_recepcionista` ASC) ;

SHOW WARNINGS;
CREATE INDEX `cod_hospedaje` ON `factura` (`cod_detalleservicio` ASC) ;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `pagos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `pagos` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `pagos` (
  `codigo` INT(11) NOT NULL AUTO_INCREMENT ,
  `valor` INT(11) NOT NULL ,
  `tipo` VARCHAR(45) NOT NULL ,
  `cod_factura` INT(11) NOT NULL ,
  PRIMARY KEY (`codigo`) )
ENGINE = InnoDB
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `reserva`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `reserva` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `reserva` (
  `codigo` INT(11) NOT NULL ,
  `fecha_inicio` VARCHAR(80) NOT NULL ,
  `fecha_final` VARCHAR(80) NOT NULL ,
  `cod_habitacion` INT(11) NOT NULL ,
  `cod_recepcionista` INT(11) NOT NULL ,
  `cod_cliente` INT(11) NOT NULL ,
  PRIMARY KEY (`codigo`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;
CREATE INDEX `cod_habitacion` ON `reserva` (`cod_habitacion` ASC) ;

SHOW WARNINGS;
CREATE INDEX `cod_recepcionista` ON `reserva` (`cod_recepcionista` ASC) ;

SHOW WARNINGS;
CREATE INDEX `cod_cliente` ON `reserva` (`cod_cliente` ASC) ;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `usuario` ;

SHOW WARNINGS;
CREATE  TABLE IF NOT EXISTS `usuario` (
  `tipo` VARCHAR(45) NOT NULL ,
  `clave` INT(45) NOT NULL ,
  `usuario` VARCHAR(30) NOT NULL )
ENGINE = MyISAM
DEFAULT CHARACTER SET = latin1;

SHOW WARNINGS;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
