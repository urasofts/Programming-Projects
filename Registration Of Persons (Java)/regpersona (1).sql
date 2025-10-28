-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2024 a las 19:50:03
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
-- Base de datos: `regpersona`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro`
--

CREATE TABLE `registro` (
  `RegId` int(11) NOT NULL,
  `RegNombre` varchar(50) NOT NULL,
  `RegEdad` int(100) NOT NULL,
  `RegSexo` varchar(20) NOT NULL,
  `RegFechaNacimiento` date NOT NULL,
  `RegEstatura` float NOT NULL,
  `RegTrabaja` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registro`
--

INSERT INTO `registro` (`RegId`, `RegNombre`, `RegEdad`, `RegSexo`, `RegFechaNacimiento`, `RegEstatura`, `RegTrabaja`) VALUES
(1000, 'Luis', 18, 'Masculino', '2005-09-05', 1.81, 0),
(1001, 'Fernando', 26, 'Masculino', '1990-10-18', 1.86, 1),
(1002, 'Iker', 31, 'Masculino', '1992-12-19', 1.86, 1),
(1003, 'Laura', 18, 'Femenino', '2005-09-06', 1.65, 0),
(1004, 'Azpilicueta', 29, 'Masculino', '1994-04-12', 1.77, 1),
(1005, 'Van Basten', 30, 'Masculino', '1992-11-18', 1.88, 0),
(1006, 'Van Dijk', 32, 'Masculino', '1991-07-08', 1.93, 1),
(1007, 'Van Persie', 30, 'Masculino', '1993-11-14', 1.87, 0),
(1008, 'Van Nistelrooy', 31, 'Masculino', '1991-11-15', 1.89, 1),
(1009, 'Jair', 18, 'Masculino', '2005-08-07', 1.83, 1),
(1010, 'Claudia', 17, 'Femenino', '2006-09-04', 1.69, 0),
(1011, 'Ana', 17, 'Femenino', '2006-09-23', 1.7, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`RegId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro`
--
ALTER TABLE `registro`
  MODIFY `RegId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
