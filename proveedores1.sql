-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2022 a las 15:04:30
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
-- Indices de la tabla `proveedores1`
--
ALTER TABLE `proveedores1`
  ADD PRIMARY KEY (`P#`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `proveedores1`
--
ALTER TABLE `proveedores1`
  MODIFY `P#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
