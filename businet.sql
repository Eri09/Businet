-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-06-2019 a las 04:31:21
-- Versión del servidor: 10.1.25-MariaDB
-- Versión de PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `businet`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas`
--

CREATE TABLE `cuentas` (
  `id` int(11) NOT NULL,
  `ncuenta` varchar(250) NOT NULL,
  `tipoc` varchar(250) NOT NULL,
  `banco` varchar(250) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `ci` varchar(250) NOT NULL,
  `cli` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cuentas`
--

INSERT INTO `cuentas` (`id`, `ncuenta`, `tipoc`, `banco`, `nombre`, `ci`, `cli`, `email`) VALUES
(1, '01201416544989849', 'Corriente', 'Venezuela', 'Eribert Jose De Oliveira Gonzalez', 'v24336535', '1', 'eribertjdeo@gmail.com'),
(2, '265462654464', 'BTC', '', 'Pablo Perez', '154446', '1', 'pablo@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `rol` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `patente` varchar(250) NOT NULL,
  `rif` varchar(250) NOT NULL,
  `user` varchar(250) NOT NULL,
  `direccion` varchar(250) NOT NULL,
  `Telef` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`id`, `rol`, `password`, `patente`, `rif`, `user`, `direccion`, `Telef`, `email`) VALUES
(1, '2', '12345', 'Eri09', 'V24336535', 'Eribert De Oliveira', 'CALLE ARISMENDI, C.C. GUARENAS PLAZA, P.B.', '+584242797321', 'eribertjdeo@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saldo`
--

CREATE TABLE `saldo` (
  `id` int(11) NOT NULL,
  `cli` varchar(250) NOT NULL,
  `monto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `saldo`
--

INSERT INTO `saldo` (`id`, `cli`, `monto`) VALUES
(1, '1', '9800');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `saldohis`
--

CREATE TABLE `saldohis` (
  `id` int(11) NOT NULL,
  `monto` varchar(250) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cli` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `saldohis`
--

INSERT INTO `saldohis` (`id`, `monto`, `fecha`, `cli`) VALUES
(1, '9950', '2019-06-24 01:04:39', '1'),
(2, '9928', '2019-06-24 01:05:49', '1'),
(3, '9878', '2019-06-24 01:25:00', '1'),
(4, '9800', '2019-06-24 01:43:23', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `transacciones`
--

CREATE TABLE `transacciones` (
  `id` int(11) NOT NULL,
  `cli` varchar(250) NOT NULL,
  `ncuenta` varchar(250) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `banco` varchar(250) NOT NULL,
  `monto` varchar(250) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `transacciones`
--

INSERT INTO `transacciones` (`id`, `cli`, `ncuenta`, `nombre`, `banco`, `monto`, `fecha`) VALUES
(1, '1', '265462654464', 'Pablo Perez', 'BTC', '30', '0000-00-00 00:00:00'),
(2, '1', '265462654464', 'Pablo Perez', 'BTC', '22', '2019-06-24 01:05:49'),
(3, '1', '01201416544989849', 'Eribert Jose De Oliveira Gonzalez', 'Corriente', '50', '2019-06-24 01:25:00'),
(4, '1', '265462654464', 'Pablo Perez', 'BTC', '78', '2019-06-24 01:43:23');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `saldohis`
--
ALTER TABLE `saldohis`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cuentas`
--
ALTER TABLE `cuentas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `saldo`
--
ALTER TABLE `saldo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `saldohis`
--
ALTER TABLE `saldohis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `transacciones`
--
ALTER TABLE `transacciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
