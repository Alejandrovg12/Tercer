-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2025 a las 01:50:24
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
-- Base de datos: `facebook`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigos`
--

CREATE TABLE `amigos` (
  `id_usuario` int(20) NOT NULL,
  `id_amigo` int(20) NOT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_solicitud` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `amigos`
--

INSERT INTO `amigos` (`id_usuario`, `id_amigo`, `estado`, `fecha_solicitud`) VALUES
(1, 2, 'En linea', '2025-05-27 23:44:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id_publicacion` int(20) NOT NULL,
  `id_usuario` int(20) NOT NULL,
  `comentario` text NOT NULL,
  `fecha_comentario` date NOT NULL,
  `id_comentarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id_publicacion`, `id_usuario`, `comentario`, `fecha_comentario`, `id_comentarios`) VALUES
(1, 1, 'Hola, gran video', '2025-05-27', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facebook`
--

CREATE TABLE `facebook` (
  `id_Facebook` int(20) NOT NULL,
  `id_Amigos` int(20) NOT NULL,
  `id_Comentarios` int(20) NOT NULL,
  `id_InicioSesion` int(20) NOT NULL,
  `id_mensajes` int(20) NOT NULL,
  `id_notificaciones` int(20) NOT NULL,
  `id_publicaciones` int(20) NOT NULL,
  `id_reacciones` int(20) NOT NULL,
  `id_.registrarse` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facebook`
--

INSERT INTO `facebook` (`id_Facebook`, `id_Amigos`, `id_Comentarios`, `id_InicioSesion`, `id_mensajes`, `id_notificaciones`, `id_publicaciones`, `id_reacciones`, `id_.registrarse`) VALUES
(1, 2, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `iniciosesion`
--

CREATE TABLE `iniciosesion` (
  `id_Sesion` int(20) NOT NULL,
  `Numero de telefono` int(20) NOT NULL,
  `Contraseña` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `iniciosesion`
--

INSERT INTO `iniciosesion` (`id_Sesion`, `Numero de telefono`, `Contraseña`) VALUES
(1, 65643746, 764873825);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes`
--

CREATE TABLE `mensajes` (
  `id_emisor` int(20) NOT NULL,
  `id_receptor` int(20) NOT NULL,
  `mensaje` text NOT NULL,
  `fecha_envio` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mensajes`
--

INSERT INTO `mensajes` (`id_emisor`, `id_receptor`, `mensaje`, `fecha_envio`) VALUES
(1, 2, 'Hola, como estas ', '2025-05-27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id_notificaciones` int(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `contenido` text NOT NULL,
  `leida` tinyint(1) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id_notificaciones`, `tipo`, `contenido`, `leida`, `fecha`) VALUES
(1, 'Host', 'Message: Hola, como estas ', 1, '2025-04-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id_publicaciones` int(20) NOT NULL,
  `contenido` text NOT NULL,
  `imagen_url` varchar(20) NOT NULL,
  `fecha_publicacion` date NOT NULL,
  `privacidad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id_publicaciones`, `contenido`, `imagen_url`, `fecha_publicacion`, `privacidad`) VALUES
(1, 'Aquí la publicación ', 'https:ejemplo', '2025-05-27', 'privada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reacciones`
--

CREATE TABLE `reacciones` (
  `id_reacciones` int(20) NOT NULL,
  `id_publicacion` int(20) NOT NULL,
  `tipo_reaccion` varchar(20) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reacciones`
--

INSERT INTO `reacciones` (`id_reacciones`, `id_publicacion`, `tipo_reaccion`, `fecha`) VALUES
(1, 1, 'Alegria', '2025-04-10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registrarse`
--

CREATE TABLE `registrarse` (
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Fecha de Nacimiento` varchar(30) NOT NULL,
  `Genero` varchar(30) NOT NULL,
  `Numero de celular` int(30) NOT NULL,
  `Contraseña` varchar(20) NOT NULL,
  `id_Registro` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registrarse`
--

INSERT INTO `registrarse` (`Nombre`, `Apellido`, `Fecha de Nacimiento`, `Genero`, `Numero de celular`, `Contraseña`, `id_Registro`) VALUES
('Alejandro', 'Vargas', '02/02/02', 'M', 453456, '37466743', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amigos`
--
ALTER TABLE `amigos`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `id_amigo` (`id_amigo`,`estado`,`fecha_solicitud`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id_comentarios`),
  ADD UNIQUE KEY `id_publicacion` (`id_publicacion`,`comentario`,`fecha_comentario`) USING HASH,
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `facebook`
--
ALTER TABLE `facebook`
  ADD PRIMARY KEY (`id_Facebook`),
  ADD KEY `id_Amigos` (`id_Amigos`),
  ADD KEY `id_Comentario` (`id_Comentarios`),
  ADD KEY `id_InicioSesion` (`id_InicioSesion`),
  ADD KEY `id_mensajes` (`id_mensajes`),
  ADD KEY `id_notificaciones` (`id_notificaciones`),
  ADD KEY `id_publicaciones` (`id_publicaciones`),
  ADD KEY `id_reacciones` (`id_reacciones`),
  ADD KEY `id_registrarse` (`id_.registrarse`);

--
-- Indices de la tabla `iniciosesion`
--
ALTER TABLE `iniciosesion`
  ADD PRIMARY KEY (`id_Sesion`),
  ADD UNIQUE KEY `Numero de telefono` (`Numero de telefono`,`Contraseña`);

--
-- Indices de la tabla `mensajes`
--
ALTER TABLE `mensajes`
  ADD PRIMARY KEY (`id_emisor`),
  ADD UNIQUE KEY `id_receptor` (`id_receptor`,`mensaje`,`fecha_envio`) USING HASH;

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id_notificaciones`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id_publicaciones`);

--
-- Indices de la tabla `reacciones`
--
ALTER TABLE `reacciones`
  ADD PRIMARY KEY (`id_reacciones`),
  ADD UNIQUE KEY `id_publicacion` (`id_publicacion`,`tipo_reaccion`,`fecha`);

--
-- Indices de la tabla `registrarse`
--
ALTER TABLE `registrarse`
  ADD PRIMARY KEY (`id_Registro`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id_comentarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `facebook`
--
ALTER TABLE `facebook`
  MODIFY `id_Facebook` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `facebook`
--
ALTER TABLE `facebook`
  ADD CONSTRAINT `facebook_ibfk_1` FOREIGN KEY (`id_Amigos`) REFERENCES `amigos` (`id_amigo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facebook_ibfk_2` FOREIGN KEY (`id_Comentarios`) REFERENCES `comentarios` (`id_comentarios`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facebook_ibfk_3` FOREIGN KEY (`id_mensajes`) REFERENCES `mensajes` (`id_emisor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facebook_ibfk_4` FOREIGN KEY (`id_InicioSesion`) REFERENCES `iniciosesion` (`id_Sesion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facebook_ibfk_5` FOREIGN KEY (`id_notificaciones`) REFERENCES `notificaciones` (`id_notificaciones`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facebook_ibfk_6` FOREIGN KEY (`id_publicaciones`) REFERENCES `publicaciones` (`id_publicaciones`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facebook_ibfk_7` FOREIGN KEY (`id_reacciones`) REFERENCES `reacciones` (`id_reacciones`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facebook_ibfk_8` FOREIGN KEY (`id_.registrarse`) REFERENCES `registrarse` (`id_Registro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reacciones`
--
ALTER TABLE `reacciones`
  ADD CONSTRAINT `reacciones_ibfk_1` FOREIGN KEY (`id_publicacion`) REFERENCES `publicaciones` (`id_publicaciones`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
