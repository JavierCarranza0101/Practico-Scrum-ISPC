-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2022 a las 23:44:40
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `peluqueria_canina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueño`
--

CREATE TABLE `dueño` (
  `DNI` int(10) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  `Apellido` varchar(60) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `DIRECCION` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dueño`
--

INSERT INTO `dueño` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `DIRECCION`) VALUES
(43456789, 'Jesus', 'Gonzales', '34567890', 'El Pato 023'),
(45088183, 'Nicolas', 'Erculiani', '3548601394', 'Los patos 020'),
(45123456, 'JUAN', 'PEREZ', '123456789', 'Los Patitos 021'),
(421234567, 'Martina', 'Raskalov', '2345678', 'Los Patotes 022');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `id_historial` int(20) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Perro` int(50) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `Monto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perro`
--

CREATE TABLE `perro` (
  `Id_perro` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Fecha_nac` date DEFAULT NULL,
  `Sexo` varchar(20) NOT NULL,
  `Dni_dueño` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perro`
--

INSERT INTO `perro` (`Id_perro`, `Nombre`, `Fecha_nac`, `Sexo`, `Dni_dueño`) VALUES
(1, 'Homero', '0000-00-00', 'Macho', 45088183),
(2, 'Yoko', '0000-00-00', 'Hembra', 43456789),
(3, 'Juli', '0000-00-00', 'Hembra', 45123456),
(4, 'Pelusa', '0000-00-00', 'Macho', 421234567);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dueño`
--
ALTER TABLE `dueño`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`id_historial`),
  ADD UNIQUE KEY `id_historial` (`id_historial`),
  ADD KEY `Perro` (`Perro`);

--
-- Indices de la tabla `perro`
--
ALTER TABLE `perro`
  ADD PRIMARY KEY (`Id_perro`),
  ADD UNIQUE KEY `Id_perro` (`Id_perro`),
  ADD KEY `Dni_dueño` (`Dni_dueño`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `id_historial` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `perro`
--
ALTER TABLE `perro`
  MODIFY `Id_perro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`Perro`) REFERENCES `perro` (`Id_perro`);

--
-- Filtros para la tabla `perro`
--
ALTER TABLE `perro`
  ADD CONSTRAINT `perro_ibfk_1` FOREIGN KEY (`Dni_dueño`) REFERENCES `dueño` (`DNI`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
