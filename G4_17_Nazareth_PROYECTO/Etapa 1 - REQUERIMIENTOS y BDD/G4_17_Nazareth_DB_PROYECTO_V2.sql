-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2021 a las 16:00:12
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_los_de_mary`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `ID_NOMBRE` int(11) NOT NULL,
  `NOMBRE` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`ID_NOMBRE`, `NOMBRE`) VALUES
(1, 'Mary');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_gerentes`
--

CREATE TABLE `tbl_gerentes` (
  `ID_GERENTE` int(11) NOT NULL,
  `NOMBRE` varchar(50) NOT NULL,
  `APELLIDO` varchar(50) NOT NULL,
  `DIRECCION` varchar(100) NOT NULL,
  `TELEFONO` int(100) NOT NULL,
  `RTN` int(200) NOT NULL,
  `CUENTA_BANCARIA` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_gerentes`
--

INSERT INTO `tbl_gerentes` (`ID_GERENTE`, `NOMBRE`, `APELLIDO`, `DIRECCION`, `TELEFONO`, `RTN`, `CUENTA_BANCARIA`) VALUES
(1, 'JUAN', 'CARDONA', 'Barrio Lourdes', 34522454, 1011984345, 12421456);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pedido`
--

CREATE TABLE `tbl_pedido` (
  `ID_PEDIDO` int(11) NOT NULL,
  `PEDIDO` varchar(100) NOT NULL,
  `ID_NOMBRE` int(90) NOT NULL,
  `APELLIDO` varchar(90) NOT NULL,
  `DIRECCION` varchar(100) NOT NULL,
  `ID_TELEFONO` int(11) NOT NULL,
  `FORMA_PAGO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_pedido`
--

INSERT INTO `tbl_pedido` (`ID_PEDIDO`, `PEDIDO`, `ID_NOMBRE`, `APELLIDO`, `DIRECCION`, `ID_TELEFONO`, `FORMA_PAGO`) VALUES
(1, 'Hamburguesa', 1, 'Figueroa', 'Barrio San Sebastian', 1, 'Efectivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registro_empleado`
--

CREATE TABLE `tbl_registro_empleado` (
  `ID_EMPLEADO` int(11) NOT NULL,
  `USUARIO` varchar(50) NOT NULL,
  `CONTRASEÑA` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_registro_empleado`
--

INSERT INTO `tbl_registro_empleado` (`ID_EMPLEADO`, `USUARIO`, `CONTRASEÑA`) VALUES
(1, 'JUANJOSE', 1836113);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registro_gerente`
--

CREATE TABLE `tbl_registro_gerente` (
  `ID_GERENTE` int(11) NOT NULL,
  `USUARIO` varchar(80) NOT NULL,
  `CONTRASEÑA` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_registro_gerente`
--

INSERT INTO `tbl_registro_gerente` (`ID_GERENTE`, `USUARIO`, `CONTRASEÑA`) VALUES
(1, 'juancarlo', 86433);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_telefono`
--

CREATE TABLE `tbl_telefono` (
  `ID_TELEFONO` int(11) NOT NULL,
  `TELEFONO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_telefono`
--

INSERT INTO `tbl_telefono` (`ID_TELEFONO`, `TELEFONO`) VALUES
(1, 34522454);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`ID_NOMBRE`);

--
-- Indices de la tabla `tbl_gerentes`
--
ALTER TABLE `tbl_gerentes`
  ADD PRIMARY KEY (`ID_GERENTE`);

--
-- Indices de la tabla `tbl_pedido`
--
ALTER TABLE `tbl_pedido`
  ADD PRIMARY KEY (`ID_PEDIDO`),
  ADD KEY `FK_CLIENTES_PEDIDO` (`ID_NOMBRE`),
  ADD KEY `FK_TELEFONO_PEDIDO` (`ID_TELEFONO`);

--
-- Indices de la tabla `tbl_registro_empleado`
--
ALTER TABLE `tbl_registro_empleado`
  ADD PRIMARY KEY (`ID_EMPLEADO`);

--
-- Indices de la tabla `tbl_registro_gerente`
--
ALTER TABLE `tbl_registro_gerente`
  ADD PRIMARY KEY (`ID_GERENTE`);

--
-- Indices de la tabla `tbl_telefono`
--
ALTER TABLE `tbl_telefono`
  ADD PRIMARY KEY (`ID_TELEFONO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `ID_NOMBRE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_gerentes`
--
ALTER TABLE `tbl_gerentes`
  MODIFY `ID_GERENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_pedido`
--
ALTER TABLE `tbl_pedido`
  MODIFY `ID_PEDIDO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_registro_empleado`
--
ALTER TABLE `tbl_registro_empleado`
  MODIFY `ID_EMPLEADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_registro_gerente`
--
ALTER TABLE `tbl_registro_gerente`
  MODIFY `ID_GERENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tbl_telefono`
--
ALTER TABLE `tbl_telefono`
  MODIFY `ID_TELEFONO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_pedido`
--
ALTER TABLE `tbl_pedido`
  ADD CONSTRAINT `FK_CLIENTES_PEDIDO` FOREIGN KEY (`ID_NOMBRE`) REFERENCES `tbl_clientes` (`ID_NOMBRE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_TELEFONO_PEDIDO` FOREIGN KEY (`ID_TELEFONO`) REFERENCES `tbl_telefono` (`ID_TELEFONO`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
