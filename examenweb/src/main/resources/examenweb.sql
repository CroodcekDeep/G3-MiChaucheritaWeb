-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-03-2023 a las 15:43:39
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `examenweb`
--
DROP DATABASE IF EXISTS examenweb;

CREATE DATABASE examenweb;

USE examenweb;
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `ID` int(11) NOT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `TIPO` int(11) DEFAULT NULL,
  `TOTAL` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`ID`, `NOMBRE`, `TIPO`, `TOTAL`) VALUES
(1, 'PICHINCHA', 2, 224.41),
(2, 'Universidad', 1, 35),
(3, 'Nomina', 0, 20),
(4, 'INGRESO2', 0, 153.41),
(5, 'INGRESO3', 0, 200),
(6, 'Efectivo', 2, 46);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento`
--

CREATE TABLE `movimiento` (
  `id` int(11) NOT NULL,
  `concepto` varchar(255) DEFAULT NULL,
  `FECHA` date DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `cuenta_destino` int(11) DEFAULT NULL,
  `cuenta_origen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `movimiento`
--

INSERT INTO `movimiento` (`id`, `concepto`, `FECHA`, `valor`, `cuenta_destino`, `cuenta_origen`) VALUES
(2, 'pago de sueldo', '2023-03-05', 1000, 1, 3),
(3, 'asdawda', '2023-03-23', 53.41, 1, 4),
(4, 'Test Egreso', '2023-03-05', 199, 6, 2),
(5, 'Test Egreso2', '2023-03-10', 1, 1, 2),
(6, 'Test Egreso2', '2023-03-10', 1, 1, 2),
(7, 'adwadwa', '2023-03-16', 1, 1, 2),
(8, 'adwadwa', '2023-03-16', 1, 1, 2),
(9, 'TEST', '2023-03-16', 5, 6, 2),
(10, 'est', '2023-03-10', 5, 6, 2),
(11, 'Exception 1', '2023-03-07', 5, 6, 2),
(12, 'Test Egreso', '2023-03-08', 5, 6, 2),
(13, 'aweawd', '2023-03-08', 5, 6, 2),
(14, 'dwaad', '2023-03-23', 5, 6, 2),
(15, 'awdaw', '2023-03-10', 5, 6, 2),
(16, 'asda', '2023-03-06', 5, 2, 1),
(17, 'awdaw', '2023-03-11', 10, 2, 1),
(18, 'awdaw', '2023-03-11', 10, 2, 1),
(19, 'test registro de ingreso', '2023-01-05', 20, 6, 3),
(20, 'test', '2023-04-13', 30, 2, 6),
(21, 'test', '2023-05-18', 30, 2, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `clave` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_movimiento_cuenta_destino` (`cuenta_destino`),
  ADD KEY `FK_movimiento_cuenta_origen` (`cuenta_origen`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `movimiento`
--
ALTER TABLE `movimiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `movimiento`
--
ALTER TABLE `movimiento`
  ADD CONSTRAINT `FK_movimiento_cuenta_destino` FOREIGN KEY (`cuenta_destino`) REFERENCES `cuenta` (`ID`),
  ADD CONSTRAINT `FK_movimiento_cuenta_origen` FOREIGN KEY (`cuenta_origen`) REFERENCES `cuenta` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
