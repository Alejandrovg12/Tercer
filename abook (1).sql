-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-05-2025 a las 02:34:35
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `abook`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ab`
--

CREATE TABLE `ab` (
  `id_Aplicativo` int(20) NOT NULL,
  `id_Registrarse` int(20) NOT NULL,
  `id_IniciarSesión` int(20) NOT NULL,
  `id_BarradeBusqueda` int(20) NOT NULL,
  `id_SelecciondeLibro` int(20) NOT NULL,
  `id_TiposdeLibro` int(20) NOT NULL,
  `id_Ayuda` int(20) NOT NULL,
  `id_ConoceSobreNosotros` int(11) NOT NULL,
  `id_NecesitasAyuda` int(20) NOT NULL,
  `id_GenerodeLibro` int(20) NOT NULL,
  `id_InfoLegal` int(20) NOT NULL,
  `id_RedesSociales` int(20) NOT NULL,
  `id_Autores` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autores`
--

CREATE TABLE `autores` (
  `id_Autores` int(20) NOT NULL,
  `id_TiposdeLibro` int(20) NOT NULL,
  `id_SelecciondeLibro` int(20) NOT NULL,
  `Cartelera` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ayuda`
--

CREATE TABLE `ayuda` (
  `id_Ayuda` int(20) NOT NULL,
  `Devoluciones` varchar(100) NOT NULL,
  `GestosyFormasdePago` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `barradebusqueda`
--

CREATE TABLE `barradebusqueda` (
  `id_BarradeBusqueda` int(20) NOT NULL,
  `ResultadodeBusqueda` varchar(20) NOT NULL,
  `SugerenciadeBusqueda` varchar(20) NOT NULL,
  `LibrosmasActuales` varchar(20) NOT NULL,
  `id_SelecciondeLibro` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conocesobreabooks`
--

CREATE TABLE `conocesobreabooks` (
  `id_ConoceSobreAbooks` int(20) NOT NULL,
  `QuienesSomos` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generodelibro`
--

CREATE TABLE `generodelibro` (
  `id_GenerodeLibro` int(20) NOT NULL,
  `id_Autores` int(20) NOT NULL,
  `id_TiposdeLibro` int(20) NOT NULL,
  `id_SelecciondeLibro` int(20) NOT NULL,
  `Cartelera` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `infolegal`
--

CREATE TABLE `infolegal` (
  `id_InfoLegal` int(20) NOT NULL,
  `CondicionesdeUso` varchar(100) NOT NULL,
  `CondicionesdeContratacion` varchar(100) NOT NULL,
  `PoliticadePrivacidad` varchar(100) NOT NULL,
  `PoliticadeDevolucionesyAnulaciones` varchar(100) NOT NULL,
  `PoliticadeCookies` varchar(100) NOT NULL,
  `ConfiguraciondeCookies` varchar(100) NOT NULL,
  `ResoluciondeLitigosenLinea` varchar(100) NOT NULL,
  `OficinadeBuenasPracticas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iniciarsesion`
--

CREATE TABLE `iniciarsesion` (
  `id_IniciarSesion` int(20) NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `necesitasayuda`
--

CREATE TABLE `necesitasayuda` (
  `id_NecesitasAyuda` int(20) NOT NULL,
  `QueeslaWebdeAbooks` varchar(100) NOT NULL,
  `Abooks.Cadena` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redessociales`
--

CREATE TABLE `redessociales` (
  `id_RedesSociales` int(20) NOT NULL,
  `ContenidodeRedSocial` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrarse`
--

CREATE TABLE `registrarse` (
  `id_Registrarse` int(20) NOT NULL,
  `id_IniciarSesion` int(20) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `selecciondelibro`
--

CREATE TABLE `selecciondelibro` (
  `id_SelecciondeLibro` int(20) NOT NULL,
  `id_delLibro` int(20) NOT NULL,
  `id_delAutor` int(20) NOT NULL,
  `id_TipodeLibro` int(20) NOT NULL,
  `id_GenerodeLibro` int(20) NOT NULL,
  `MododeVisualizacion` varchar(20) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposdelibro`
--

CREATE TABLE `tiposdelibro` (
  `id_TiposdeLibro` int(20) NOT NULL,
  `id_SelecciondeLibro` int(20) NOT NULL,
  `Cartelera` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ab`
--
ALTER TABLE `ab`
  ADD PRIMARY KEY (`id_Aplicativo`),
  ADD KEY `id_Registrarse` (`id_Registrarse`,`id_IniciarSesión`,`id_BarradeBusqueda`,`id_SelecciondeLibro`,`id_TiposdeLibro`,`id_Ayuda`,`id_ConoceSobreNosotros`,`id_NecesitasAyuda`,`id_GenerodeLibro`,`id_InfoLegal`,`id_RedesSociales`,`id_Autores`),
  ADD KEY `id_IniciarSesión` (`id_IniciarSesión`),
  ADD KEY `id_BarradeBusqueda` (`id_BarradeBusqueda`),
  ADD KEY `id_SelecciondeLibro` (`id_SelecciondeLibro`),
  ADD KEY `id_TiposdeLibro` (`id_TiposdeLibro`),
  ADD KEY `id_Ayuda` (`id_Ayuda`),
  ADD KEY `id_ConoceSobreNosotros` (`id_ConoceSobreNosotros`),
  ADD KEY `id_NecesitasAyuda` (`id_NecesitasAyuda`),
  ADD KEY `id_GenerodeLibro` (`id_GenerodeLibro`),
  ADD KEY `id_InfoLegal` (`id_InfoLegal`),
  ADD KEY `id_RedesSociales` (`id_RedesSociales`),
  ADD KEY `id_Autores` (`id_Autores`);

--
-- Indices de la tabla `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`id_Autores`),
  ADD KEY `id_TiposdeLibro` (`id_TiposdeLibro`,`id_SelecciondeLibro`),
  ADD KEY `id_SelecciondeLibro` (`id_SelecciondeLibro`);

--
-- Indices de la tabla `ayuda`
--
ALTER TABLE `ayuda`
  ADD PRIMARY KEY (`id_Ayuda`);

--
-- Indices de la tabla `barradebusqueda`
--
ALTER TABLE `barradebusqueda`
  ADD PRIMARY KEY (`id_BarradeBusqueda`),
  ADD KEY `id_SelecciondeLibro` (`id_SelecciondeLibro`);

--
-- Indices de la tabla `conocesobreabooks`
--
ALTER TABLE `conocesobreabooks`
  ADD PRIMARY KEY (`id_ConoceSobreAbooks`);

--
-- Indices de la tabla `generodelibro`
--
ALTER TABLE `generodelibro`
  ADD PRIMARY KEY (`id_GenerodeLibro`),
  ADD KEY `id_Autores` (`id_Autores`,`id_TiposdeLibro`,`id_SelecciondeLibro`),
  ADD KEY `id_TiposdeLibro` (`id_TiposdeLibro`),
  ADD KEY `id_SelecciondeLibro` (`id_SelecciondeLibro`);

--
-- Indices de la tabla `infolegal`
--
ALTER TABLE `infolegal`
  ADD PRIMARY KEY (`id_InfoLegal`);

--
-- Indices de la tabla `iniciarsesion`
--
ALTER TABLE `iniciarsesion`
  ADD PRIMARY KEY (`id_IniciarSesion`);

--
-- Indices de la tabla `necesitasayuda`
--
ALTER TABLE `necesitasayuda`
  ADD PRIMARY KEY (`id_NecesitasAyuda`);

--
-- Indices de la tabla `redessociales`
--
ALTER TABLE `redessociales`
  ADD PRIMARY KEY (`id_RedesSociales`);

--
-- Indices de la tabla `registrarse`
--
ALTER TABLE `registrarse`
  ADD PRIMARY KEY (`id_Registrarse`),
  ADD KEY `id_IniciarSesion` (`id_IniciarSesion`);

--
-- Indices de la tabla `selecciondelibro`
--
ALTER TABLE `selecciondelibro`
  ADD PRIMARY KEY (`id_SelecciondeLibro`),
  ADD KEY `id_TipodeLibro` (`id_TipodeLibro`,`id_GenerodeLibro`),
  ADD KEY `id_delAutor` (`id_delAutor`),
  ADD KEY `id_GenerodeLibro` (`id_GenerodeLibro`);

--
-- Indices de la tabla `tiposdelibro`
--
ALTER TABLE `tiposdelibro`
  ADD PRIMARY KEY (`id_TiposdeLibro`),
  ADD KEY `id_SelecciondeLibro` (`id_SelecciondeLibro`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ab`
--
ALTER TABLE `ab`
  ADD CONSTRAINT `ab_ibfk_1` FOREIGN KEY (`id_Registrarse`) REFERENCES `registrarse` (`id_Registrarse`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ab_ibfk_10` FOREIGN KEY (`id_InfoLegal`) REFERENCES `infolegal` (`id_InfoLegal`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ab_ibfk_11` FOREIGN KEY (`id_RedesSociales`) REFERENCES `redessociales` (`id_RedesSociales`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ab_ibfk_12` FOREIGN KEY (`id_Autores`) REFERENCES `autores` (`id_Autores`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ab_ibfk_2` FOREIGN KEY (`id_IniciarSesión`) REFERENCES `iniciarsesion` (`id_IniciarSesion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ab_ibfk_3` FOREIGN KEY (`id_BarradeBusqueda`) REFERENCES `barradebusqueda` (`id_BarradeBusqueda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ab_ibfk_4` FOREIGN KEY (`id_SelecciondeLibro`) REFERENCES `selecciondelibro` (`id_SelecciondeLibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ab_ibfk_5` FOREIGN KEY (`id_TiposdeLibro`) REFERENCES `tiposdelibro` (`id_TiposdeLibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ab_ibfk_6` FOREIGN KEY (`id_Ayuda`) REFERENCES `ayuda` (`id_Ayuda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ab_ibfk_7` FOREIGN KEY (`id_ConoceSobreNosotros`) REFERENCES `conocesobreabooks` (`id_ConoceSobreAbooks`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ab_ibfk_8` FOREIGN KEY (`id_NecesitasAyuda`) REFERENCES `necesitasayuda` (`id_NecesitasAyuda`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ab_ibfk_9` FOREIGN KEY (`id_GenerodeLibro`) REFERENCES `generodelibro` (`id_GenerodeLibro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `autores`
--
ALTER TABLE `autores`
  ADD CONSTRAINT `autores_ibfk_1` FOREIGN KEY (`id_TiposdeLibro`) REFERENCES `tiposdelibro` (`id_TiposdeLibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `autores_ibfk_2` FOREIGN KEY (`id_SelecciondeLibro`) REFERENCES `selecciondelibro` (`id_SelecciondeLibro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `barradebusqueda`
--
ALTER TABLE `barradebusqueda`
  ADD CONSTRAINT `barradebusqueda_ibfk_1` FOREIGN KEY (`id_SelecciondeLibro`) REFERENCES `selecciondelibro` (`id_SelecciondeLibro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `generodelibro`
--
ALTER TABLE `generodelibro`
  ADD CONSTRAINT `generodelibro_ibfk_1` FOREIGN KEY (`id_Autores`) REFERENCES `autores` (`id_Autores`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `generodelibro_ibfk_2` FOREIGN KEY (`id_TiposdeLibro`) REFERENCES `tiposdelibro` (`id_TiposdeLibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `generodelibro_ibfk_3` FOREIGN KEY (`id_SelecciondeLibro`) REFERENCES `selecciondelibro` (`id_SelecciondeLibro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `registrarse`
--
ALTER TABLE `registrarse`
  ADD CONSTRAINT `registrarse_ibfk_1` FOREIGN KEY (`id_IniciarSesion`) REFERENCES `iniciarsesion` (`id_IniciarSesion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `selecciondelibro`
--
ALTER TABLE `selecciondelibro`
  ADD CONSTRAINT `selecciondelibro_ibfk_1` FOREIGN KEY (`id_TipodeLibro`) REFERENCES `tiposdelibro` (`id_TiposdeLibro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `selecciondelibro_ibfk_2` FOREIGN KEY (`id_delAutor`) REFERENCES `autores` (`id_Autores`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `selecciondelibro_ibfk_3` FOREIGN KEY (`id_GenerodeLibro`) REFERENCES `generodelibro` (`id_GenerodeLibro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tiposdelibro`
--
ALTER TABLE `tiposdelibro`
  ADD CONSTRAINT `tiposdelibro_ibfk_1` FOREIGN KEY (`id_SelecciondeLibro`) REFERENCES `selecciondelibro` (`id_SelecciondeLibro`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
