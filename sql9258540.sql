-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Servidor: sql9.freemysqlhosting.net
-- Tiempo de generación: 25-09-2018 a las 21:07:35
-- Versión del servidor: 5.5.58-0ubuntu0.14.04.1
-- Versión de PHP: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sql9258540`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_e` char(45) NOT NULL,
  `user_id_u` char(45) NOT NULL,
  `nom_e` char(45) NOT NULL,
  `ape_e` char(45) NOT NULL,
  `ced_e` char(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indice`
--

CREATE TABLE `indice` (
  `id_i` char(45) NOT NULL,
  `estudiantes_id_e` char(45) NOT NULL,
  `materia_cod_m` char(45) NOT NULL,
  `indice` char(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `cod_m` char(45) NOT NULL,
  `nom_m` char(45) NOT NULL,
  `cred_m` char(45) NOT NULL,
  `cal_m` char(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_u` char(45) NOT NULL,
  `nom_u` char(45) NOT NULL,
  `contr_u` char(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_e`,`user_id_u`),
  ADD KEY `fkusers_estudiantes_users` (`user_id_u`);

--
-- Indices de la tabla `indice`
--
ALTER TABLE `indice`
  ADD PRIMARY KEY (`id_i`,`estudiantes_id_e`,`materia_cod_m`),
  ADD KEY `fkestudiantes_materia_estudiantes` (`estudiantes_id_e`),
  ADD KEY `fkestudiantes_estudiantes_materia` (`materia_cod_m`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`cod_m`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_u`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD CONSTRAINT `fkusers_estudiantes_users` FOREIGN KEY (`user_id_u`) REFERENCES `users` (`id_u`);

--
-- Filtros para la tabla `indice`
--
ALTER TABLE `indice`
  ADD CONSTRAINT `fkestudiantes_materia_estudiantes` FOREIGN KEY (`estudiantes_id_e`) REFERENCES `estudiantes` (`id_e`),
  ADD CONSTRAINT `fkestudiantes_estudiantes_materia` FOREIGN KEY (`materia_cod_m`) REFERENCES `materia` (`cod_m`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
