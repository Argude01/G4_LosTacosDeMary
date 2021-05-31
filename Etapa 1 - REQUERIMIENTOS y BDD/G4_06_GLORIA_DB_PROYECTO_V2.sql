-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2021 a las 16:35:00
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
  `NOMBRE` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_clientes`
--

INSERT INTO `tbl_clientes` (`ID_NOMBRE`, `NOMBRE`) VALUES
(1, 'JUAN RAMON '),
(2, 'GLORIA CRUZ'),
(3, 'ANGEL BONILLA'),
(4, 'EDISON MEDINA'),
(5, 'JEMMY DARIELA'),
(6, 'NAZARETH DUBON'),
(7, 'EDWIN HERNANDEZ'),
(8, 'SUYAPA MADRID'),
(9, 'ELIZABETH GOMEZ'),
(10, 'ANTONIO MARTINEZ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_gerentes`
--

CREATE TABLE `tbl_gerentes` (
  `ID_GERENTE` int(11) NOT NULL,
  `NOMBRE` varchar(50) DEFAULT NULL,
  `APELLIDO` varchar(50) DEFAULT NULL,
  `DIRECCION` varchar(100) DEFAULT NULL,
  `TELEFONO` int(100) DEFAULT NULL,
  `RTN` int(200) DEFAULT NULL,
  `CUENTA_BANCARIA` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_gerentes`
--

INSERT INTO `tbl_gerentes` (`ID_GERENTE`, `NOMBRE`, `APELLIDO`, `DIRECCION`, `TELEFONO`, `RTN`, `CUENTA_BANCARIA`) VALUES
(1, 'JEMMY', 'ACOSTA', 'COL. LOMAS DEL RIO', 32677281, 8765, 74872984),
(2, 'NAZARETH', 'DUBON', 'COL. LAS FLORES', 87947392, 9378, 7646924),
(3, 'SEBASTIAN', 'CRUZ', 'BO. SUYAPA', 27724206, 6785, 2345964),
(4, 'EDISON', 'BURKE', 'COL. 21 MAYO', 32824207, 7894, 94827494),
(5, 'LISANDRO', 'HIDDLESTOM', 'RES. LOS MILAGROS', 89897567, 7896, 7895327),
(6, 'EDWIN', 'HERNANDEZ', 'VILLA UNIVERSITARIA', 87879409, 7669, 7348294),
(7, 'ANGEL', 'BONILLA', 'COL. MONTE VERDE', 33875223, 7687, 4797657),
(8, 'MARCO', 'GUILLEN', 'COL. PEREZ', 89473897, 8798, 7492849),
(9, 'ANGELA', 'MARTINEZ', 'BO. LOMA VERDE', 27723648, 8479, 27294940),
(10, 'MIRIAN', 'CARRASCO', 'VILLA TOSCANA', 78973649, 94895, 2828393);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_perdidos`
--

CREATE TABLE `tbl_perdidos` (
  `ID_PEDIDO` int(11) NOT NULL,
  `ID_NOMBRE` int(11) NOT NULL,
  `PEDIDO` int(50) DEFAULT NULL,
  `APELLIDO` varchar(90) DEFAULT NULL,
  `DIRRECCION` varchar(100) DEFAULT NULL,
  `ID_TELEFONO` int(11) NOT NULL,
  `FORMA_PAGO` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_perdidos`
--

INSERT INTO `tbl_perdidos` (`ID_PEDIDO`, `ID_NOMBRE`, `PEDIDO`, `APELLIDO`, `DIRRECCION`, `ID_TELEFONO`, `FORMA_PAGO`) VALUES
(1, 3, 1, 'BONILLA', 'COL. NUEVA SUYAPA', 6, 'EFECTIVO'),
(2, 4, 2, 'MEDINA', 'ALDEA LA TRAVESIA', 10, 'EFECTIVO'),
(3, 8, 25, 'CERRATO', 'COL. CENTRO AMERICA OESTE', 3, 'TARJETA'),
(4, 4, 32, 'HERNANDEZ', 'COL. TRES DE MAYO', 2, 'EFECTIVO'),
(5, 2, 77, 'CERRATO', 'BO. BUENOS AIRES', 7, 'TARJETA'),
(6, 6, 76, 'SANCHEZ', 'COL. LOS PINOS', 5, 'TARJETA'),
(7, 5, 42, 'CARRANZA', 'COL. BELLA VISTA', 8, 'EFECTIVO'),
(8, 9, 21, 'PONCE', 'COL. EL CARRIZAL', 4, 'TARJETA'),
(9, 1, 3, 'MENDEZ', 'BO. CENTRO DE TEGUCIGALPA', 3, 'EFECTIVO'),
(10, 3, 55, 'CASTRO', 'COL. ARTURO QUEZEDA', 1, 'EFECTIVO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registro_empleado`
--

CREATE TABLE `tbl_registro_empleado` (
  `ID_EMPLEADO` int(11) NOT NULL,
  `USUARIO` varchar(50) DEFAULT NULL,
  `CONTRASEÑA` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_registro_empleado`
--

INSERT INTO `tbl_registro_empleado` (`ID_EMPLEADO`, `USUARIO`, `CONTRASEÑA`) VALUES
(1, 'GLORIA', 1234),
(2, 'ANGEL', 2345),
(3, 'EDWIN', 3456),
(4, 'NAZARETH', 4567),
(5, 'JEMMY', 5678),
(6, 'EDISON', 6789),
(7, 'EDUARDO', 7890),
(8, 'RAMIREZ', 1234),
(9, 'ANGELA', 1234),
(10, 'MARCO', 2345);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_registro_gerente`
--

CREATE TABLE `tbl_registro_gerente` (
  `ID_GERENTE` int(11) NOT NULL,
  `USUARIO` varchar(80) DEFAULT NULL,
  `CONTRASEÑA` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbl_registro_gerente`
--

INSERT INTO `tbl_registro_gerente` (`ID_GERENTE`, `USUARIO`, `CONTRASEÑA`) VALUES
(1, 'GLORIA ', 1234),
(2, 'ANGEL', 2345),
(3, 'EDWIN', 3456),
(4, 'NAZARETH', 4567),
(5, 'EDISON', 5678),
(6, 'JEMMY', 6789),
(7, 'MARCO', 7890),
(8, 'ANGELA', 1234),
(9, 'PEREZ', 2345),
(10, 'SUYAPA', 1234);

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
(1, 27725588),
(2, 27725588),
(3, 32677281),
(4, 87947392),
(5, 27724206),
(6, 32824207),
(7, 89897567),
(8, 87879409),
(9, 33875223),
(10, 89473897);

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
-- Indices de la tabla `tbl_perdidos`
--
ALTER TABLE `tbl_perdidos`
  ADD PRIMARY KEY (`ID_PEDIDO`),
  ADD KEY `FK_NOMBRE` (`ID_NOMBRE`),
  ADD KEY `FK_TELEFONO` (`ID_TELEFONO`);

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
  MODIFY `ID_NOMBRE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_gerentes`
--
ALTER TABLE `tbl_gerentes`
  MODIFY `ID_GERENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_perdidos`
--
ALTER TABLE `tbl_perdidos`
  MODIFY `ID_PEDIDO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_registro_empleado`
--
ALTER TABLE `tbl_registro_empleado`
  MODIFY `ID_EMPLEADO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_registro_gerente`
--
ALTER TABLE `tbl_registro_gerente`
  MODIFY `ID_GERENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tbl_telefono`
--
ALTER TABLE `tbl_telefono`
  MODIFY `ID_TELEFONO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_perdidos`
--
ALTER TABLE `tbl_perdidos`
  ADD CONSTRAINT `tbl_perdidos_ibfk_1` FOREIGN KEY (`ID_NOMBRE`) REFERENCES `tbl_clientes` (`ID_NOMBRE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_perdidos_ibfk_2` FOREIGN KEY (`ID_TELEFONO`) REFERENCES `tbl_telefono` (`ID_TELEFONO`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
