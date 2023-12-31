-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2018 a las 07:30:36
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `php_pooencuestas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_carreras`
--

CREATE TABLE `tbl_carreras` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `tbl_carreras`
--

INSERT INTO `tbl_carreras` (`id`, `name`, `date`) VALUES
(1, 'Desarrollo JavaScript', '2018-08-01 04:39:10'),
(2, 'Big Data', '2018-08-01 04:38:49'),
(3, 'Marketing digital', '2018-08-01 04:38:38'),
(4, 'Desarrollo web', '2018-08-01 04:38:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_carreras_votos`
--

CREATE TABLE `tbl_carreras_votos` (
  `id` int(11) NOT NULL,
  `course_id` int(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `tbl_carreras_votos`
--

INSERT INTO `tbl_carreras_votos` (`id`, `course_id`, `date`) VALUES
(1, 0, '2018-08-01 04:58:29'),
(2, 0, '2018-08-01 05:01:26'),
(3, 0, '2018-08-01 05:08:03'),
(4, 0, '2018-08-01 05:20:04'),
(5, 0, '2018-08-01 05:20:44'),
(6, 1, '2018-08-01 05:24:11'),
(7, 3, '2018-08-01 05:27:49'),
(8, 4, '2018-08-01 05:29:37');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_carreras`
--
ALTER TABLE `tbl_carreras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_carreras_votos`
--
ALTER TABLE `tbl_carreras_votos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_carreras`
--
ALTER TABLE `tbl_carreras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbl_carreras_votos`
--
ALTER TABLE `tbl_carreras_votos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
