-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2022 a las 14:54:04
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulos1`
--

CREATE TABLE `articulos1` (
  `T#` varchar(30) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `articulos1`
--

INSERT INTO `articulos1` (`T#`, `Nombre`, `Ciudad`) VALUES
('T1', 'CLASIFICADORA', 'MADRID'),
('T2', 'PERFORADORA', 'MALAGA'),
('T3', 'LECTORA', 'CACERES'),
('T4', 'CONSOLA', 'CACERES'),
('T5', 'MEZCLADORA', 'SEVILLA'),
('T6', 'TERMINAL', 'BARCELONA'),
('T7', 'CINTA', 'SEVILLA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `componentes1`
--

CREATE TABLE `componentes1` (
  `C#` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Color` varchar(30) NOT NULL,
  `Peso` varchar(30) NOT NULL,
  `Ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `componentes1`
--

INSERT INTO `componentes1` (`C#`, `Nombre`, `Color`, `Peso`, `Ciudad`) VALUES
(1, 'X3A', 'Rojo', '12', 'Sevilla'),
(2, 'B85', 'Verde', '17', 'Madrid'),
(3, 'C4B', 'Azul', '17', 'Malaga'),
(4, 'C4B', 'Rojo', '14', 'Sevilla'),
(5, 'VT8', 'Azul', '12', 'Madrid'),
(6, 'C30', 'Rojo', '19', 'Sevilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envioss1`
--

CREATE TABLE `envioss1` (
  `P#` int(11) NOT NULL,
  `C#` varchar(30) NOT NULL,
  `T#` varchar(30) NOT NULL,
  `Cantidad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envioss1`
--

INSERT INTO `envioss1` (`P#`, `C#`, `T#`, `Cantidad`) VALUES
(0, 'C1', 'T1', '200');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores1`
--

CREATE TABLE `proveedores1` (
  `P#` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Categoria` int(11) NOT NULL,
  `Ciudad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `proveedores1`
--

INSERT INTO `proveedores1` (`P#`, `Nombre`, `Categoria`, `Ciudad`) VALUES
(1, 'Carlos', 20, 'Sevilla'),
(2, 'Juan', 10, 'Madrid'),
(3, 'Jose', 30, 'Sevilla'),
(4, 'Inma', 20, 'Sevilla'),
(5, 'Eva', 30, 'Caceres');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `componentes1`
--
ALTER TABLE `componentes1`
  ADD PRIMARY KEY (`C#`);

--
-- Indices de la tabla `proveedores1`
--
ALTER TABLE `proveedores1`
  ADD PRIMARY KEY (`P#`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `componentes1`
--
ALTER TABLE `componentes1`
  MODIFY `C#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `proveedores1`
--
ALTER TABLE `proveedores1`
  MODIFY `P#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
