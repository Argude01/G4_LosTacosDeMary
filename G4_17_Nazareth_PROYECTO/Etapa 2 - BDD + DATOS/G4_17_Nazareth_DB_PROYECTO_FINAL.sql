-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2021 a las 23:44:53
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_lo_de_mary`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_clientes`
--

CREATE TABLE `tbl_clientes` (
  `ID_NOMBRE` int(11) NOT NULL,
  `NOMBRE` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`ID_NOMBRE`, `NOMBRE`) VALUES
(1, 'LUIS MANUEL'),
(2, 'JUAN MOISES'),
(3, 'PABLO MORENO'),
(4, 'CAMILO JOSE'),
(5, 'MARTHA LOPEZ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_empleados`
--

CREATE TABLE `tbl_empleados` (
  `ID_EMPLEADOS` int(11) NOT NULL,
  `USUARIO` varchar(255) NOT NULL,
  `CONTRASEÑA` int(250) DEFAULT NULL,
  `ID_TIPO_USUARIO` int(11) NOT NULL,
  `DIRECCION` varchar(100) DEFAULT NULL,
  `TELEFONO` int(100) DEFAULT NULL,
  `RTN` int(200) DEFAULT NULL,
  `CUENTA_BANCARIA` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_empleados`
--

INSERT INTO `tbl_empleados` (`ID_EMPLEADOS`, `USUARIO`, `CONTRASEÑA`, `ID_TIPO_USUARIO`, `DIRECCION`, `TELEFONO`, `RTN`, `CUENTA_BANCARIA`) VALUES
(2, 'MAND', 56733, 2, 'BARRIO LOURDES', 35624524, 247643245, 277462959),
(3, 'FUN', 35342465, 1, 'BARRIO SAN BLAS', 35235624, 46534566, 92375378),
(4, 'NASCA', 2356356, 1, 'BARRIO LA INDEPENDENCIA', 27714567, 9237427, 725374),
(5, 'SALIY', 9364824, 2, 'BARRIO MORAZAN', 83528343, 3546633, 7784325),
(6, 'GUNY', 345684, 1, 'BARRIO TORONDON', 98462845, 974682, 9374);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_pedidos`
--

CREATE TABLE `tbl_pedidos` (
  `ID_PEDIDO` int(11) NOT NULL,
  `ID_NOMBRE` int(11) NOT NULL,
  `PEDIDO` int(50) DEFAULT NULL,
  `DIRRECCION` varchar(100) DEFAULT NULL,
  `ID_TELEFONO` int(11) NOT NULL,
  `FORMA_PAGO` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_pedidos`
--

INSERT INTO `tbl_pedidos` (`ID_PEDIDO`, `ID_NOMBRE`, `PEDIDO`, `DIRRECCION`, `ID_TELEFONO`, `FORMA_PAGO`) VALUES
(1, 1, 7, 'BARRIO ABAJO', 5, 'TARJETA DE CREDITO'),
(2, 3, 826, 'BARRIO CABAÑAS', 1, 'EFECTIVO'),
(3, 4, 12, 'BARRIO ARRIBA', 2, 'EFECTIVO'),
(4, 2, 357, 'BARRIO LOURDES', 3, 'TARJETA DE DÉBITO'),
(5, 5, 467, 'BARRIO SUYAPA', 4, 'EFECTIVO');

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
(1, 27727862),
(2, 27728264),
(3, 27727384),
(4, 35235623),
(5, 93842356);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_usuario`
--

CREATE TABLE `tbl_tipo_usuario` (
  `ID_TIPO_USUARIO` int(11) NOT NULL,
  `TIPO_USUARIO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_tipo_usuario`
--

INSERT INTO `tbl_tipo_usuario` (`ID_TIPO_USUARIO`, `TIPO_USUARIO`) VALUES
(1, 'STAFF\r\n'),
(2, 'GERENTE');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  ADD PRIMARY KEY (`ID_NOMBRE`);

--
-- Indices de la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  ADD PRIMARY KEY (`ID_EMPLEADOS`),
  ADD KEY `tbl_empleados_ibfk_1` (`ID_TIPO_USUARIO`);

--
-- Indices de la tabla `tbl_pedidos`
--
ALTER TABLE `tbl_pedidos`
  ADD PRIMARY KEY (`ID_PEDIDO`),
  ADD KEY `FK_NOMBRE` (`ID_NOMBRE`),
  ADD KEY `FK_TELEFONO` (`ID_TELEFONO`);

--
-- Indices de la tabla `tbl_telefono`
--
ALTER TABLE `tbl_telefono`
  ADD PRIMARY KEY (`ID_TELEFONO`);

--
-- Indices de la tabla `tbl_tipo_usuario`
--
ALTER TABLE `tbl_tipo_usuario`
  ADD PRIMARY KEY (`ID_TIPO_USUARIO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_clientes`
--
ALTER TABLE `tbl_clientes`
  MODIFY `ID_NOMBRE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  MODIFY `ID_EMPLEADOS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tbl_pedidos`
--
ALTER TABLE `tbl_pedidos`
  MODIFY `ID_PEDIDO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_telefono`
--
ALTER TABLE `tbl_telefono`
  MODIFY `ID_TELEFONO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tbl_tipo_usuario`
--
ALTER TABLE `tbl_tipo_usuario`
  MODIFY `ID_TIPO_USUARIO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_empleados`
--
ALTER TABLE `tbl_empleados`
  ADD CONSTRAINT `tbl_empleados_ibfk_1` FOREIGN KEY (`ID_TIPO_USUARIO`) REFERENCES `tbl_tipo_usuario` (`ID_TIPO_USUARIO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_pedidos`
--
ALTER TABLE `tbl_pedidos`
  ADD CONSTRAINT `tbl_pedidos_ibfk_1` FOREIGN KEY (`ID_NOMBRE`) REFERENCES `tbl_clientes` (`ID_NOMBRE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pedidos_ibfk_2` FOREIGN KEY (`ID_TELEFONO`) REFERENCES `tbl_telefono` (`ID_TELEFONO`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
