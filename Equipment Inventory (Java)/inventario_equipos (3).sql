-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2024 a las 18:47:37
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
-- Base de datos: `inventario_equipos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `id_departamento` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`id_departamento`, `nombre`, `ciudad`, `direccion`) VALUES
(10, 'Antioquia', 'CA83 06', 'Apartado'),
(15, 'Putumayo', 'CA24 92', 'Puerto Asis'),
(16, 'Antioquia', 'CA83 12', 'Apartado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `serie` varchar(50) NOT NULL,
  `fecha_adquisicion` date NOT NULL,
  `uso` tinyint(1) NOT NULL,
  `asignado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`id_equipo`, `nombre`, `marca`, `modelo`, `serie`, `fecha_adquisicion`, `uso`, `asignado`) VALUES
(10, 'jair', 'ACER', '6GN', '47384', '2018-08-07', 1, 1),
(15, 'Laura', 'HP', '8GN', '1244', '2020-07-06', 1, 1),
(16, 'Julian', 'Samsung', '7GN', '13454', '2016-09-30', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_equipo`
--

CREATE TABLE `estado_equipo` (
  `id_estado_equipo` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `estado` varchar(30) NOT NULL,
  `almacenamiento` varchar(50) NOT NULL,
  `ram` varchar(50) NOT NULL,
  `procesador` varchar(300) NOT NULL,
  `id_equipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estado_equipo`
--

INSERT INTO `estado_equipo` (`id_estado_equipo`, `usuario`, `estado`, `almacenamiento`, `ram`, `procesador`, `id_equipo`) VALUES
(4, 'jair', 'En Uso', '256', '4,00 GB', 'Intel(R) Celeron(R) CPU  N3060  @ 1.60GHz   1.60 GHz', 10),
(5, 'laura', 'En Uso', '500', '18,0 GB', 'Intel(R) VNTLOR(A)  CPU N5031 @ 2.00 GHz  2.00GHz', 15),
(7, 'Julian', 'En Uso', '450', '16,0 GB', 'Intel(R) Celeron(R) CPU  N3060  @ 1.85GHz   1.85 GHz', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `id_mantenimiento` int(11) NOT NULL,
  `nombre_apellido` varchar(50) NOT NULL,
  `residencia` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `fecha_mantenimiento` date NOT NULL,
  `descripcion` text NOT NULL,
  `costo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mantenimiento`
--

INSERT INTO `mantenimiento` (`id_mantenimiento`, `nombre_apellido`, `residencia`, `direccion`, `telefono`, `fecha_mantenimiento`, `descripcion`, `costo`) VALUES
(2, 'julian medina villaba', 'Apartado', 'CA83-018', '3101093742', '2022-10-14', 'estrañamente mi pc esta raro por la ram', '115000'),
(3, 'luis fernando urrutia', 'Medellin', 'CA12-83', '8150931442', '2024-08-15', 'Mi computadora esta super lenta', '80000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoequipo`
--

CREATE TABLE `tipoequipo` (
  `id_tipo_equipo` int(11) NOT NULL,
  `nombre_tipo` varchar(50) NOT NULL,
  `resolucion` varchar(50) NOT NULL,
  `bits` varchar(15) NOT NULL,
  `sistemaop` varchar(20) NOT NULL,
  `id_equipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipoequipo`
--

INSERT INTO `tipoequipo` (`id_tipo_equipo`, `nombre_tipo`, `resolucion`, `bits`, `sistemaop`, `id_equipo`) VALUES
(2, 'Laptop', '1602x600', '64 BITS', 'Windows', 10),
(3, 'PC', '1750x712', '64 BITS', 'Windows', 15),
(5, 'PC', '1703x501', '32 BITS', 'LINUX', 16);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_departamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `email`, `id_departamento`) VALUES
(3, 'Jair', 'Martinez', 'mjairstiven@gmail.com', 10),
(4, 'Laura', 'Gonzalez', 'Laug@gmail.com', 15),
(5, 'Julian', 'Medina', 'julim@gmail.com', 16);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`id_departamento`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`id_equipo`);

--
-- Indices de la tabla `estado_equipo`
--
ALTER TABLE `estado_equipo`
  ADD PRIMARY KEY (`id_estado_equipo`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indices de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD PRIMARY KEY (`id_mantenimiento`);

--
-- Indices de la tabla `tipoequipo`
--
ALTER TABLE `tipoequipo`
  ADD PRIMARY KEY (`id_tipo_equipo`),
  ADD KEY `id_equipo` (`id_equipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_departamento` (`id_departamento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `departamento`
--
ALTER TABLE `departamento`
  MODIFY `id_departamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `estado_equipo`
--
ALTER TABLE `estado_equipo`
  MODIFY `id_estado_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  MODIFY `id_mantenimiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipoequipo`
--
ALTER TABLE `tipoequipo`
  MODIFY `id_tipo_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estado_equipo`
--
ALTER TABLE `estado_equipo`
  ADD CONSTRAINT `estado_equipo_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id_equipo`);

--
-- Filtros para la tabla `tipoequipo`
--
ALTER TABLE `tipoequipo`
  ADD CONSTRAINT `tipoequipo_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipo` (`id_equipo`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
