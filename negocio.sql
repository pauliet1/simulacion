-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2022 a las 15:30:37
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
-- Base de datos: `negocio`
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
('T6', 'TERMINAL', 'BARCELONA');

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
(3, 'C4B', 'Azul', '17', 'Malaga'),
(4, 'C4B', 'Rojo', '14', 'Sevilla'),
(5, 'VT8', 'Azul', '12', 'Madrid'),
(6, 'C30', 'Rojo', '19', 'Sevilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envioss1`
--

CREATE TABLE `envioss1` (
  `P#` varchar(30) NOT NULL,
  `C#` varchar(30) NOT NULL,
  `T#` varchar(30) NOT NULL,
  `Cantidad` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `envioss1`
--

INSERT INTO `envioss1` (`P#`, `C#`, `T#`, `Cantidad`) VALUES
('0', 'C1', 'T1', '200'),
('P1', 'C1', 'T1', '200'),
('P2', 'C3', 'T1', '400'),
('P2', 'C3', 'T2', '200'),
('P2', 'C3', 'T3', '200'),
('P2', 'C3', 'T4', '500'),
('P2', 'C3', 'T5', '600'),
('P2', 'C3', 'T6', '400'),
('P2', 'C3', 'T7', '800'),
('P2', 'C5', 'T2', '100'),
('P3', 'C3', 'T1', '200'),
('P3', 'C4', 'T2', '500'),
('P4', 'C6', 'T3', '300'),
('P4', 'C6', 'T7', '300'),
('P5', 'C2', 'T2', '200'),
('P5', 'C2', 'T4', '100'),
('P5', 'C5', 'T4', '500'),
('P5', 'C5', 'T7', '100'),
('P5', 'C6', 'T2', '200'),
('P5', 'C1', 'T4', '100'),
('P5', 'C3', 'T4', '200'),
('P5', 'C4', 'T4', '800'),
('P5', 'C5', 'T5', '400'),
('P5', 'C6', 'T4', '500');

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
(6, 'Carlos', 20, 'Sevilla'),
(7, 'Juan', 10, 'Madrid'),
(8, 'Jose', 30, 'Sevilla'),
(9, 'Inma', 20, 'Sevilla');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulos1`
--
ALTER TABLE `articulos1`
  ADD PRIMARY KEY (`T#`);

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
  MODIFY `P#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
