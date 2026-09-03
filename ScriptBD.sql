		-- MySQL Workbench Forward Engineering
		SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
		SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
		SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

		-- Schema umg_didactica
		CREATE SCHEMA IF NOT EXISTS `umg_didactica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
		USE `umg_didactica` ;

		CREATE TABLE IF NOT EXISTS `umg_didactica`.`empleados` (
		  `IdPK` INT NOT NULL AUTO_INCREMENT,
		  `IdNumero` VARCHAR(10) NOT NULL,
		  `Nombre` VARCHAR(80) NOT NULL,
		  `Correo` VARCHAR(150) NOT NULL,
		  `Cumpleaños` DATE NOT NULL,
		  PRIMARY KEY (`IdPK`))
		ENGINE = InnoDB
		AUTO_INCREMENT = 4
		DEFAULT CHARACTER SET = latin1;

		CREATE TABLE IF NOT EXISTS cliente (
			id_cliente   INT AUTO_INCREMENT,
			nombre       VARCHAR(100) NOT NULL,
			dpi          VARCHAR(14)  NOT NULL,
			telefono     VARCHAR(8)   NOT NULL,
			direccion    VARCHAR(100) NOT NULL,
			correo       VARCHAR(50)  NOT NULL,
			no_rentas    INT,
			descuento    BIT,
			id_membresia INT NULL,
			PRIMARY KEY (id_cliente)
		);

		INSERT INTO cliente VALUES (1, 'Juan Pérez', '12345678901234', '55551234', 'Zona 1, Guatemala', 'juan@gmail.com', 3, 1, NULL);
		INSERT INTO cliente VALUES (2, 'María López', '98765432109876', '44442345', 'Zona 10, Guatemala', 'maria@gmail.com', 1, 0, NULL);
		INSERT INTO cliente VALUES (3, 'Carlos Gómez', '11223344556677', '33334567', 'Zona 5, Guatemala', 'carlos@gmail.com', 5, 1, NULL);
		INSERT INTO cliente VALUES (4, 'Ana Revolorio', '99887766554433', '22225678', 'Zona 15, Guatemala', 'ana@gmail.com', 2, 0, NULL);
		INSERT INTO cliente VALUES (5, 'Pedro Morales', '44556677889900', '66676789', 'Zona 7, Guatemala', 'pedro@gmail.com', 0, 1, NULL);
		INSERT INTO cliente VALUES (6, 'Prueba', '44556677889900', '66676789', 'Zona 8, Guatemala', 'prueba@gmail.com', 0, 1, NULL);
        
		SET SQL_MODE=@OLD_SQL_MODE;
		SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
		SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;