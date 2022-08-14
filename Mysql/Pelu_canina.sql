-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2022 a las 21:41:23
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.0.19

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
  `NOMBRE` varchar(60) NOT NULL,
  `APELLIDO` varchar(60) NOT NULL,
  `TELEFONO` varchar(15) NOT NULL,
  `DIRECCION` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `dueño`
--

INSERT INTO `dueño` (`DNI`, `NOMBRE`, `APELLIDO`, `TELEFONO`, `DIRECCION`) VALUES
(32659855, 'MARIA', 'DIAZ', '169458789', 'AV.SQL126'),
(37666555, 'JUAN', 'PEREZ', '123456789', 'AV.SQL123'),
(38666555, 'DAYANA', 'NARANJO', '223456800', 'AV.SQL124'),
(41968855, 'EDUARDO', 'GOMEZ', '986458789', 'AV.SQL127');

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

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`id_historial`, `Fecha`, `Perro`, `Descripcion`, `Monto`) VALUES
(3, '2022-08-08 15:22:04', 2, 'Ovejero Aleman negro, cachorro', 0),
(9, '2022-07-06 16:31:35', 1, 'Caniche blanco con manquita en el ojo', 0),
(15, '2022-08-01 15:11:30', 4, 'beagle marron y blanco', 0);

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
(1, 'deisy', '0000-00-00', 'Hembra', 37666555),
(2, 'Valu', '0000-00-00', 'Hembra', 38666555),
(3, 'Mandy', '0000-00-00', 'Hembra', 32659855),
(4, 'Sasha', '0000-00-00', 'Macho', 41968855);

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
  MODIFY `id_historial` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=897;

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


/* Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo.*/

/*Para consultar = ELECT Min(Fecha) FROM historial WHERE Fecha>0 */
/*Para eliminar = delete from historial WHERE perro = 03;*/

