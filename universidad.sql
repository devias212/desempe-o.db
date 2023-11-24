-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.2.0 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para universidad
CREATE DATABASE IF NOT EXISTS `universidad` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `universidad`;

-- Volcando estructura para tabla universidad.alumnos
CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero_expediente` int NOT NULL,
  `titulacion` varchar(155) NOT NULL,
  `centro` varchar(155) NOT NULL,
  KEY `id` (`id`),
  CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`id`) REFERENCES `personas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla universidad.alumnos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` (`id`, `numero_expediente`, `titulacion`, `centro`) VALUES
	(1, 123456, 'Ingeniería Informática', 'Escuela Politécnica'),
	(2, 654321, 'Derecho', 'Facultad de Derecho'),
	(3, 987654, 'Ciencias Económicas y Empresariales', 'Facultad de Economía');
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;

-- Volcando estructura para tabla universidad.personal
CREATE TABLE IF NOT EXISTS `personal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `unidad_administrativa` varchar(155) NOT NULL,
  `categoria_profesional` varchar(155) NOT NULL,
  KEY `id` (`id`),
  CONSTRAINT `personal_ibfk_1` FOREIGN KEY (`id`) REFERENCES `personas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla universidad.personal: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` (`id`, `unidad_administrativa`, `categoria_profesional`) VALUES
	(1, 'Secretaría', 'Administrativo'),
	(2, 'Biblioteca', 'Auxiliar'),
	(3, 'Departamento de Informática', 'Técnico');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;

-- Volcando estructura para tabla universidad.personas
CREATE TABLE IF NOT EXISTS `personas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `direccion` varchar(155) NOT NULL,
  `correo` varchar(155) DEFAULT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla universidad.personas: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` (`id`, `nombre`, `direccion`, `correo`, `telefono`) VALUES
	(1, 'Juan Perez', 'Calle Mayor 123', 'juan.perez@universidad.edu', '666 123 456'),
	(2, 'Maria Gonzalez', 'Calle Menor 456', 'maria.gonzalez@universidad.edu', '777 234 567'),
	(3, 'Pedro Martinez', 'Calle Central 789', 'pedro.martinez@universidad.edu', '888 345 678');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;

-- Volcando estructura para tabla universidad.profesores
CREATE TABLE IF NOT EXISTS `profesores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `departamento` varchar(155) NOT NULL,
  `dedicacion` varchar(155) NOT NULL,
  `centro` varchar(155) NOT NULL,
  KEY `id` (`id`),
  CONSTRAINT `profesores_ibfk_1` FOREIGN KEY (`id`) REFERENCES `personas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla universidad.profesores: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `profesores` DISABLE KEYS */;
INSERT INTO `profesores` (`id`, `departamento`, `dedicacion`, `centro`) VALUES
	(1, 'Matemáticas', 'Tiempo completo', 'Facultad de Ciencias'),
	(2, 'Lenguaje y Literatura', 'Tiempo parcial', 'Facultad de Humanidades'),
	(3, 'Historia', 'Tiempo completo', 'Facultad de Ciencias Sociales');
/*!40000 ALTER TABLE `profesores` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
