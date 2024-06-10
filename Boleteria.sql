-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-06-2024 a las 20:20:09
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Boleteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eventos`
--

CREATE TABLE `eventos` (
  `id_evento` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `eventos`
--

INSERT INTO `eventos` (`id_evento`, `titulo`, `genero`, `rating`, `fecha`, `precio`, `banner`) VALUES
(1, 'Avengers: Endgame', 'Cine', '9.0', '2024-06-15', NULL, 'https://example.com/avengers.jpg'),
(2, 'El Rey León', 'Cine', '8.5', '2024-07-20', NULL, 'https://example.com/el_rey_leon.jpg'),
(3, 'La Casa de Papel', 'Teatro', '8.8', '2024-08-10', NULL, 'https://example.com/la_casa_de_papel.jpg'),
(4, 'Romeo y Julieta', 'Teatro', '8.7', '2024-09-05', NULL, 'https://example.com/romeo_y_julieta.jpg'),
(5, 'Concierto de Shakira', 'Recital', '9.2', '2024-10-15', NULL, 'https://example.com/shakira_concert.jpg'),
(6, 'Festival de Jazz', 'Recital', '8.9', '2024-11-20', NULL, 'https://example.com/jazz_festival.jpg'),
(7, 'Spider-Man: No Way Home', 'Cine', '9.1', '2024-12-10', NULL, 'https://example.com/spiderman.jpg'),
(8, 'Los Miserables', 'Teatro', '8.6', '2025-01-15', NULL, 'https://example.com/los_miserables.jpg'),
(9, 'Concierto de Coldplay', 'Recital', '9.3', '2025-02-20', NULL, 'https://example.com/coldplay_concert.jpg'),
(10, 'Harry Potter and the Cursed Child', 'Teatro', '9.0', '2025-03-05', NULL, 'https://example.com/harry_potter.jpg'),
(11, 'Jumanji: Welcome to the Jungle', 'Cine', '8.8', '2025-04-10', NULL, 'https://example.com/jumanji.jpg'),
(12, 'El Fantasma de la Ópera', 'Teatro', '8.9', '2025-05-15', NULL, 'https://example.com/fantasma_opera.jpg'),
(13, 'Concierto de Beyoncé', 'Recital', '9.5', '2025-06-20', NULL, 'https://example.com/beyonce_concert.jpg'),
(14, 'Star Wars: The Rise of Skywalker', 'Cine', '9.2', '2025-07-10', NULL, 'https://example.com/star_wars.jpg'),
(15, 'Mamma Mia!', 'Teatro', '8.7', '2025-08-15', NULL, 'https://example.com/mamma_mia.jpg'),
(16, 'Concierto de U2', 'Recital', '9.4', '2025-09-20', NULL, 'https://example.com/u2_concert.jpg'),
(17, 'Titanic', 'Cine', '8.9', '2025-10-10', NULL, 'https://example.com/titanic.jpg'),
(18, 'La Bella y la Bestia', 'Teatro', '8.8', '2025-11-15', NULL, 'https://example.com/bella_bestia.jpg'),
(19, 'Concierto de Adele', 'Recital', '9.6', '2025-12-20', NULL, 'https://example.com/adele_concert.jpg'),
(20, 'Jurassic Park', 'Cine', '8.7', '2026-01-10', NULL, 'https://example.com/jurassic_park.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id_ticket` int(11) NOT NULL,
  `id_evento` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_total` decimal(10,2) DEFAULT NULL,
  `fecha_compra` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tickets`
--

INSERT INTO `tickets` (`id_ticket`, `id_evento`, `id_usuario`, `cantidad`, `precio_total`, `fecha_compra`) VALUES
(1, 1, 1, 2, NULL, '2024-06-14 00:00:00'),
(2, 2, 2, 1, NULL, '2024-07-19 00:00:00'),
(3, 3, 3, 3, NULL, '2024-08-09 00:00:00'),
(4, 4, 4, 2, NULL, '2024-09-04 00:00:00'),
(5, 5, 5, 4, NULL, '2024-10-14 00:00:00'),
(6, 6, 6, 1, NULL, '2024-11-19 00:00:00'),
(7, 7, 7, 2, NULL, '2024-12-09 00:00:00'),
(8, 8, 8, 3, NULL, '2025-01-14 00:00:00'),
(9, 9, 9, 1, NULL, '2025-02-19 00:00:00'),
(10, 10, 10, 2, NULL, '2025-03-04 00:00:00'),
(11, 11, 11, 3, NULL, '2025-04-09 00:00:00'),
(12, 12, 12, 1, NULL, '2025-05-14 00:00:00'),
(13, 13, 13, 2, NULL, '2025-06-19 00:00:00'),
(14, 14, 14, 3, NULL, '2025-07-09 00:00:00'),
(15, 15, 15, 1, NULL, '2025-08-14 00:00:00'),
(16, 16, 16, 2, NULL, '2025-09-19 00:00:00'),
(17, 17, 17, 3, NULL, '2025-10-09 00:00:00'),
(18, 18, 18, 1, NULL, '2025-11-14 00:00:00'),
(19, 19, 19, 2, NULL, '2025-12-19 00:00:00'),
(20, 20, 20, 3, NULL, '2026-01-09 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `documento` bigint(20) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pais_origen` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `apellido`, `nombre`, `fecha_nacimiento`, `documento`, `telefono`, `email`, `pais_origen`, `password`) VALUES
(1, 'López', 'Juan', '1990-05-15', 34567890, 1122334455, 'juan.lopez@example.com', 'Argentina', 'abc123'),
(2, 'Martínez', 'María', '1985-08-20', 45678901, 5544332211, 'maria.martinez@example.com', 'México', '123abc'),
(3, 'García', 'Alejandro', '1982-03-10', 56789012, 6677889900, 'alejandro.garcia@example.com', 'España', 'password123'),
(4, 'Rodríguez', 'Laura', '1995-11-25', 67890123, 2233445566, 'laura.rodriguez@example.com', 'Colombia', '456def'),
(5, 'Pérez', 'Carlos', '1988-07-03', 78901234, 9988776655, 'carlos.perez@example.com', 'Perú', 'qwerty'),
(6, 'González', 'Sofia', '1992-01-18', 89012345, 1122334455, 'sofia.gonzalez@example.com', 'Chile', '789ghi'),
(7, 'Hernández', 'David', '1987-09-30', 90123456, 5544332211, 'david.hernandez@example.com', 'Argentina', 'abcxyz'),
(8, 'Díaz', 'Andrea', '1993-04-12', 12345678, 6677889900, 'andrea.diaz@example.com', 'Brasil', '123456'),
(9, 'Álvarez', 'Diego', '1984-06-08', 23456789, 2233445566, 'diego.alvarez@example.com', 'México', 'abc123xyz'),
(10, 'Romero', 'Natalia', '1991-02-22', 34567890, 9988776655, 'natalia.romero@example.com', 'España', 'pqr789'),
(11, 'Sánchez', 'Gabriel', '1986-10-14', 45678901, 1122334455, 'gabriel.sanchez@example.com', 'Argentina', 'qwerty123'),
(12, 'Torres', 'Valeria', '1994-07-05', 56789012, 5544332211, 'valeria.torres@example.com', 'Chile', 'abc789'),
(13, 'Ramírez', 'Lucas', '1989-03-19', 67890123, 6677889900, 'lucas.ramirez@example.com', 'Colombia', 'xyz123'),
(14, 'Ruiz', 'Ana', '1997-11-08', 78901234, 2233445566, 'ana.ruiz@example.com', 'Perú', '456abc'),
(15, 'Gómez', 'Martín', '1983-08-28', 89012345, 9988776655, 'martin.gomez@example.com', 'Argentina', '789xyz'),
(16, 'Mendoza', 'Julia', '1990-04-30', 90123456, 1122334455, 'julia.mendoza@example.com', 'Brasil', 'abc123def'),
(17, 'Castro', 'Pablo', '1985-12-17', 12345678, 5544332211, 'pablo.castro@example.com', 'México', 'pqr456'),
(18, 'Ferández', 'Carolina', '1996-09-04', 23456789, 6677889900, 'carolina.fernandez@example.com', 'España', 'xyz789'),
(19, 'Castillo', 'Nicolás', '1988-05-27', 34567890, 2233445566, 'nicolas.castillo@example.com', 'Chile', 'def123'),
(20, 'Morales', 'Sofia', '1993-02-10', 45678901, 9988776655, 'sofia.morales@example.com', 'Colombia', 'abcxyz789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas_reservas`
--

CREATE TABLE `ventas_reservas` (
  `id_venta` int(11) NOT NULL,
  `id_ticket` int(11) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `fecha_venta` datetime DEFAULT NULL,
  `metodo_pago` varchar(200) NOT NULL,
  `monto_venta` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas_reservas`
--

INSERT INTO `ventas_reservas` (`id_venta`, `id_ticket`, `estado`, `fecha_venta`, `metodo_pago`, `monto_venta`) VALUES
(1, 1, 'Confirmada', '2024-06-14 15:30:00', 'Tarjeta de crédito', 100),
(2, 2, 'Pendiente', '2024-07-19 14:45:00', 'Efectivo', 50),
(3, 3, 'Confirmada', '2024-08-09 12:00:00', 'Transferencia bancaria', 150),
(4, 4, 'Confirmada', '2024-09-04 16:20:00', 'Tarjeta de débito', 200),
(5, 5, 'Confirmada', '2024-10-14 17:10:00', 'Tarjeta de crédito', 400),
(6, 6, 'Pendiente', '2024-11-19 18:30:00', 'Efectivo', 50),
(7, 7, 'Confirmada', '2024-12-09 11:15:00', 'Transferencia bancaria', 200),
(8, 8, 'Confirmada', '2025-01-14 10:45:00', 'Tarjeta de crédito', 300),
(9, 9, 'Pendiente', '2025-02-19 14:00:00', 'Efectivo', 100),
(10, 10, 'Confirmada', '2025-03-04 16:40:00', 'Transferencia bancaria', 200),
(11, 11, 'Confirmada', '2025-04-09 13:20:00', 'Tarjeta de débito', 300),
(12, 12, 'Confirmada', '2025-05-14 12:30:00', 'Tarjeta de crédito', 100),
(13, 13, 'Pendiente', '2025-06-19 19:00:00', 'Efectivo', 200),
(14, 14, 'Confirmada', '2025-07-09 20:15:00', 'Transferencia bancaria', 300),
(15, 15, 'Confirmada', '2025-08-14 14:50:00', 'Tarjeta de débito', 100),
(16, 16, 'Confirmada', '2025-09-19 17:30:00', 'Tarjeta de crédito', 200),
(17, 17, 'Pendiente', '2025-10-09 16:00:00', 'Efectivo', 300),
(18, 18, 'Confirmada', '2025-11-14 11:55:00', 'Transferencia bancaria', 100),
(19, 19, 'Confirmada', '2025-12-19 13:45:00', 'Tarjeta de débito', 200),
(20, 20, 'Confirmada', '2026-01-09 15:20:00', 'Tarjeta de crédito', 300);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id_evento`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `id_evento` (`id_evento`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `ventas_reservas`
--
ALTER TABLE `ventas_reservas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_ticket` (`id_ticket`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id_evento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ventas_reservas`
--
ALTER TABLE `ventas_reservas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`id_evento`) REFERENCES `eventos` (`id_evento`),
  ADD CONSTRAINT `tickets_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`);

--
-- Filtros para la tabla `ventas_reservas`
--
ALTER TABLE `ventas_reservas`
  ADD CONSTRAINT `ventas_reservas_ibfk_1` FOREIGN KEY (`id_ticket`) REFERENCES `tickets` (`id_ticket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
