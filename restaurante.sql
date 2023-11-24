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


-- Volcando estructura de base de datos para restaurante
CREATE DATABASE IF NOT EXISTS `restaurante` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `restaurante`;

-- Volcando estructura para tabla restaurante.categorias
CREATE TABLE IF NOT EXISTS `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `encargado` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla restaurante.categorias: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` (`id`, `nombre`, `descripcion`, `encargado`) VALUES
	(1, 'Entrantes', 'Platos para empezar la comida', 'Juan'),
	(2, 'Platos principales', 'Platos más contundentes', 'María'),
	(3, 'Postres', 'Platos para terminar la comida', 'Pedro');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;

-- Volcando estructura para tabla restaurante.platos
CREATE TABLE IF NOT EXISTS `platos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `nivel_dificultad` int NOT NULL,
  `foto` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `platos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla restaurante.platos: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `platos` DISABLE KEYS */;
INSERT INTO `platos` (`id`, `nombre`, `descripcion`, `nivel_dificultad`, `foto`, `precio`, `categoria_id`) VALUES
	(1, 'Hamburguesa', 'Hamburguesa de carne de vacuno con queso, lechuga, tomate y cebolla', 1, 'hamburguesa.jpg', 12.50, 1),
	(2, 'Pizza', 'Pizza de masa fina con tomate, queso y los ingredientes que elijas', 2, 'pizza.jpg', 15.00, 2),
	(3, 'Paella', 'Paella valenciana con arroz, pollo, conejo, marisco y verduras', 3, 'paella.jpg', 20.00, 3);
/*!40000 ALTER TABLE `platos` ENABLE KEYS */;

-- Volcando estructura para tabla restaurante.recetas
CREATE TABLE IF NOT EXISTS `recetas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `plato_id` int NOT NULL,
  `ingrediente` varchar(255) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `unidad_medida` varchar(255) NOT NULL,
  `cantidad_almacen` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `plato_id` (`plato_id`),
  CONSTRAINT `recetas_ibfk_1` FOREIGN KEY (`plato_id`) REFERENCES `platos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla restaurante.recetas: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `recetas` DISABLE KEYS */;
INSERT INTO `recetas` (`id`, `plato_id`, `ingrediente`, `cantidad`, `unidad_medida`, `cantidad_almacen`) VALUES
	(1, 1, 'Carne de vacuno', 200.00, 'gramos', 1000.00),
	(2, 1, 'Queso', 50.00, 'gramos', 500.00),
	(3, 1, 'Lechuga', 50.00, 'gramos', 500.00),
	(4, 1, 'Tomate', 50.00, 'gramos', 500.00),
	(5, 1, 'Cebolla', 50.00, 'gramos', 500.00);
/*!40000 ALTER TABLE `recetas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
