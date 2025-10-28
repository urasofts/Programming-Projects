-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2024 a las 18:06:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carnes_java`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_carnes`
--

CREATE TABLE `tbl_carnes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(11) NOT NULL,
  `cantidad` varchar(10) NOT NULL,
  `tipodecarne` varchar(11) NOT NULL,
  `carnesfrias` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_carnes`
--

INSERT INTO `tbl_carnes` (`id`, `nombre`, `cantidad`, `tipodecarne`, `carnesfrias`) VALUES
(1, 'Jair', '2', 'Cordero', 'Mortadela'),
(2, 'Laura', '1', 'Cerdo', ''),
(3, 'Manuel', '5', 'Solomo', ''),
(4, 'Julian', '1', 'Pollo', ''),
(5, 'Mario', '5', 'Solomo', ''),
(7, 'Mini', '3', 'Cerdo', ''),
(8, 'Matias', '3', 'Res', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_carnes`
--
ALTER TABLE `tbl_carnes`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
