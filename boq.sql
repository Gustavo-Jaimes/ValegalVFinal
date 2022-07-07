-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-07-2022 a las 18:54:43
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `boq`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `id` int(10) NOT NULL,
  `orden` int(2) NOT NULL DEFAULT 0,
  `titulo` varchar(300) DEFAULT NULL,
  `txt` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `video` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`id`, `orden`, `titulo`, `txt`, `fecha`, `video`) VALUES
(6, 0, 'Hola mundo', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '2020-02-21', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogpic`
--

CREATE TABLE `blogpic` (
  `id` int(10) NOT NULL,
  `item` int(10) NOT NULL,
  `titulo` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `blogpic`
--

INSERT INTO `blogpic` (`id`, `item`, `titulo`, `url`, `orden`) VALUES
(8, 6, NULL, NULL, 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendario`
--

CREATE TABLE `calendario` (
  `id` int(10) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` int(2) DEFAULT NULL,
  `txt` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `folder` int(1) NOT NULL DEFAULT 1,
  `txt1` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `calendario`
--

INSERT INTO `calendario` (`id`, `fecha`, `hora`, `txt`, `folder`, `txt1`) VALUES
(16, '2020-01-21', NULL, 'hi', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calendariopic`
--

CREATE TABLE `calendariopic` (
  `id` int(10) NOT NULL,
  `producto` int(10) NOT NULL,
  `titulo` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `title` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `txt` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carousel`
--

CREATE TABLE `carousel` (
  `id` int(10) NOT NULL,
  `orden` int(2) DEFAULT NULL,
  `titulo` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `txt` text COLLATE latin1_general_ci DEFAULT NULL,
  `url` text COLLATE latin1_general_ci DEFAULT NULL,
  `video` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carousel2`
--

CREATE TABLE `carousel2` (
  `id` int(10) NOT NULL,
  `orden` int(2) DEFAULT NULL,
  `titulo` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `txt` text COLLATE latin1_general_ci DEFAULT NULL,
  `url` text COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `configuracion`
--

CREATE TABLE `configuracion` (
  `id` int(2) NOT NULL,
  `title` varchar(200) COLLATE latin1_spanish_ci DEFAULT NULL,
  `description` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `prodspag` int(5) DEFAULT NULL,
  `sliderhmin` int(5) DEFAULT 0,
  `sliderhmax` int(5) DEFAULT 1000,
  `sliderproporcion` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `slideranim` int(1) DEFAULT NULL,
  `slidertextos` int(1) DEFAULT NULL,
  `paypalemail` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `destinatario1` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `destinatario2` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `remitente` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `remitentepass` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `remitentehost` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `remitenteport` varchar(5) COLLATE latin1_spanish_ci DEFAULT NULL,
  `remitenteseguridad` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `telefono1` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `instagram` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `youtube` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `envio` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `envioglobal` varchar(10) COLLATE latin1_spanish_ci DEFAULT NULL,
  `iva` int(2) DEFAULT NULL,
  `incremento` int(2) DEFAULT NULL,
  `bank` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `tyct1` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tyct2` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tyct3` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tyct4` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `tyc1` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `tyc2` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `tyc3` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `tyc4` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `pdf1` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imagen1` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imagen2` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imagen3` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `about1` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `about2` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `about3` text COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `configuracion`
--

INSERT INTO `configuracion` (`id`, `title`, `description`, `prodspag`, `sliderhmin`, `sliderhmax`, `sliderproporcion`, `slideranim`, `slidertextos`, `paypalemail`, `destinatario1`, `destinatario2`, `remitente`, `remitentepass`, `remitentehost`, `remitenteport`, `remitenteseguridad`, `telefono`, `telefono1`, `facebook`, `instagram`, `youtube`, `envio`, `envioglobal`, `iva`, `incremento`, `bank`, `tyct1`, `tyct2`, `tyct3`, `tyct4`, `tyc1`, `tyc2`, `tyc3`, `tyc4`, `pdf1`, `imagen1`, `imagen2`, `imagen3`, `about1`, `about2`, `about3`) VALUES
(1, 'SDK', 'Software de desarrollo Wozial', 4, 100, 2000, '3:1', 2, 0, 'business@wozial.com', 'oscar@wozial.com', NULL, 'contacto@eshot.mx', 'LeGuaGua@ElPerrito', 'mail.eshot.mx', '465', 'SSL', '3323381792', '3323381792', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://pinterest.com.mx/', '0', '0', 16, 0, 'Bancomer cuenta : 111222333444', 'Politicas', 'Policies', 'Aviso de privacidad', 'Notice of Privacy', '<p>Cada texto incluye ejercicios con preguntas para evaluar la comprensi&oacute;n lograda. Esto te permitir&aacute; reforzar tu vocabulario, mejorar la gram&aacute;tica y reconocer expresiones propias del espa&ntilde;ol.&nbsp;</p>', '<div>Berlin is a very friendly, international city, so anyone that can come here should come here. It&#039;s amazing. It&#039;s very easy for people to just come here, do their masters, or do their bachelor&#039;s, then look for a job. It&#039;s a city for opportunities.</div>\r\n<p>&nbsp;</p>', '<p>Esta privacidad es en espa&ntilde;ol</p>', '<p>Esta privacidad es en ingles</p>', NULL, NULL, NULL, '808594938.jpg', 'Somos una una empresa mexicana de orgullo familiar fundada en 1997 por los hermanos S&aacute;nchez M&aacute;rquez. Con una gran iniciativa, los hermanos S&aacute;nchez, comenzaron con una peque&ntilde;a f&aacute;brica y una tienda ubicada en el coraz&oacute;n de la zona tur&iacute;stica de Tlaquepaque, Jalisco, M&eacute;xico.</p>\r\n<p>La Gama de productos era muy b&aacute;sica pero muy interesante, lo cual les ayudo a tener una muy buena acept&aacute;cion y el reconocimiento de los clientes Nacionales y Extranjeros.</p>\r\n<p>R&aacute;pidamente fueron aumentando su oferta de productos, lo cual los llev&oacute; a abrir m&aacute;s f&aacute;brica de producci&oacute;n y buscar la ampliaci&oacute;n de la que ser&iacute;a la primera tienda CASA PIEL.', 'Habremos logrado satisfacer el gusto delicado del mercado nacional y del extranjero, sintiéndonos orgullosos de que el producto hecho en México sea del agrado de países como Canadá, Estados Unidos y algunos países de Europa.\r\nHabremos logrado satisfacer el gusto delicado del mercado nacional y del extranjero, sintiéndonos orgullosos de que el producto hecho en México sea del agrado de países como Canadá, Estados Unidos y algunos países de Europa.', 'Habremos logrado satisfacer el gusto delicado del mercado nacional y del extranjero, sintiéndonos orgullosos de que el producto hecho en México sea del agrado de países como Canadá, Estados Unidos y algunos países de Europa.\r\n\r\nHabremos logrado satisfacer el gusto delicado del mercado nacional y del extranjero, sintiéndonos orgullosos de que el producto hecho en México sea del agrado de países como Canadá, Estados Unidos y algunos países de Europa.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cupones`
--

CREATE TABLE `cupones` (
  `id` int(11) NOT NULL,
  `codigo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `txt` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descuento` int(2) DEFAULT NULL,
  `vigencia` date DEFAULT NULL,
  `alta` date DEFAULT NULL,
  `usos` int(11) NOT NULL DEFAULT 0,
  `estatus` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cupones`
--

INSERT INTO `cupones` (`id`, `codigo`, `txt`, `descuento`, `vigencia`, `alta`, `usos`, `estatus`) VALUES
(2, 'EFRA', 'D&iacute;a del bicho', 10, '2020-10-26', '2020-05-20', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(11) NOT NULL DEFAULT 99,
  `estatus` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `nombre`, `imagen`, `url`, `orden`, `estatus`) VALUES
(5, NULL, '715810788.png', NULL, 99, 0),
(6, NULL, '586530400.png', NULL, 99, 0),
(7, NULL, '363189181.png', NULL, 99, 0),
(8, NULL, '632311841.png', NULL, 99, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faq`
--

CREATE TABLE `faq` (
  `id` int(5) NOT NULL,
  `orden` int(2) NOT NULL,
  `pregunta` text NOT NULL,
  `pregunta_en` varchar(255) DEFAULT NULL,
  `respuesta` text NOT NULL,
  `respuesta_en` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `faq`
--

INSERT INTO `faq` (`id`, `orden`, `pregunta`, `pregunta_en`, `respuesta`, `respuesta_en`) VALUES
(2, 99, 'Porque comprar el curso?', 'Why buy the course?', '<p>Esta dise&ntilde;ado para brindar experiencia al alumno.</p>', '<p>It is designed to provide the student with experience.</p>'),
(8, 99, 'Son caros los cursos ?', 'Are the courses expensive?', '<p>No si lo comparas con el resto del mercado</p>', '<p>Not if you compare it with the rest of the market</p>');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `producto` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galerias`
--

CREATE TABLE `galerias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `galerias`
--

INSERT INTO `galerias` (`id`, `titulo`, `orden`) VALUES
(5, 'carousel principal', 2),
(9, 'carousel servicios', 99),
(10, 'Prueba', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `galeriaspic`
--

CREATE TABLE `galeriaspic` (
  `id` int(11) NOT NULL,
  `producto` int(11) DEFAULT NULL,
  `alt_es` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `alt_en` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99,
  `imagen` varchar(191) COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `galeriaspic`
--

INSERT INTO `galeriaspic` (`id`, `producto`, `alt_es`, `alt_en`, `orden`, `imagen`, `detalle`) VALUES
(31, 5, NULL, NULL, 0, '732.png', NULL),
(32, 5, NULL, NULL, 2, '900.png', NULL),
(33, 5, NULL, NULL, 1, '189.png', NULL),
(34, 5, NULL, NULL, 3, '862.png', NULL),
(35, 5, NULL, NULL, 99, '293.jpg', NULL),
(36, 9, 'AUTOMOTRIZ', 'AUTOMOTIVE', 99, '289.png', NULL),
(37, 9, 'ALIMENTACION', 'FEEDING', 99, '812.png', NULL),
(38, 9, 'FARMACEUTICA', 'PHARMACEUTICAL', 99, '838.png', NULL),
(39, 9, 'LOGISTICA', 'LOGISTICS', 99, '943.png', NULL),
(40, 9, 'HOTELERIA', 'HOTELS', 99, '758.png', NULL),
(41, 9, 'RESTAURANT', 'RESTAURANT', 99, '996.png', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guias`
--

CREATE TABLE `guias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `orden` int(11) NOT NULL DEFAULT 99
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `guias`
--

INSERT INTO `guias` (`id`, `titulo`, `orden`) VALUES
(3, 'Empleado 1', 99),
(4, 'Empleado 2', 99),
(5, 'Empleado 3', 99),
(6, 'Empleado 4', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `guiaspic`
--

CREATE TABLE `guiaspic` (
  `id` int(11) NOT NULL,
  `producto` int(11) NOT NULL,
  `alt` varchar(200) DEFAULT NULL,
  `imagen` varchar(200) NOT NULL,
  `orden` int(11) NOT NULL DEFAULT 99,
  `puesto` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `guiaspic`
--

INSERT INTO `guiaspic` (`id`, `producto`, `alt`, `imagen`, `orden`, `puesto`) VALUES
(8, 3, 'JHON DOE', '430.png', 0, 'LEAN CONSULTANT'),
(9, 4, 'JANE DOE', '714.png', 99, 'LEAN CONSULTANT'),
(10, 5, 'JUAN LOPEZ', '437.png', 99, 'KAIZEN SPECIALIST'),
(11, 6, 'RODRIGO VELAZQUEZ', '911.png', 99, 'INGENIERO INDUSTRIAL'),
(12, 3, NULL, '751.png', 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `industrias`
--

CREATE TABLE `industrias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `industrias`
--

INSERT INTO `industrias` (`id`, `titulo`, `orden`, `descripcion`) VALUES
(15, 'INDUSTRIA 1', 99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Id sunt fugit hic, laborum suscipit voluptates officiis, adipisci blanditiis odio, magnam rerum porro? Deleniti sapiente quibusdam culpa odit odio officiis repudiandae.'),
(16, 'INDUSTRIA 2', 99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Id sunt fugit hic, laborum suscipit voluptates officiis, adipisci blanditiis odio, magnam rerum porro? Deleniti sapiente quibusdam culpa odit odio officiis repudiandae.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `industriaspic`
--

CREATE TABLE `industriaspic` (
  `id` int(11) NOT NULL,
  `producto` int(11) DEFAULT NULL,
  `alt` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99,
  `imagen` varchar(191) COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `industriaspic`
--

INSERT INTO `industriaspic` (`id`, `producto`, `alt`, `orden`, `imagen`, `detalle`) VALUES
(51, 15, NULL, 99, '321.png', NULL),
(52, 15, NULL, 99, '227.png', NULL),
(53, 15, NULL, 99, '722.png', NULL),
(54, 15, NULL, 99, '613.png', NULL),
(55, 15, NULL, 99, '314.png', NULL),
(56, 16, NULL, 99, '511.png', NULL),
(57, 16, NULL, 99, '286.png', NULL),
(58, 16, NULL, 99, '317.png', NULL),
(60, 16, NULL, 99, '551.png', NULL),
(61, 16, NULL, 99, '284.png', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ipn`
--

CREATE TABLE `ipn` (
  `id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `email` varchar(50) DEFAULT NULL,
  `txn_id` varchar(50) DEFAULT NULL,
  `pedido` int(10) DEFAULT NULL,
  `ipn` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(10) NOT NULL,
  `idmd5` varchar(50) DEFAULT NULL,
  `uid` int(10) NOT NULL DEFAULT 0,
  `nombre` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `estatus` int(1) NOT NULL DEFAULT 0,
  `cupon` varchar(30) DEFAULT NULL,
  `invisible` int(1) NOT NULL DEFAULT 0,
  `papelera` int(1) NOT NULL DEFAULT 0,
  `notify` int(1) NOT NULL DEFAULT 0,
  `guia` varchar(20) DEFAULT NULL,
  `linkguia` varchar(100) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `dom` int(11) NOT NULL DEFAULT 0,
  `factura` int(11) DEFAULT 0,
  `tabla` text DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  `envio` decimal(15,2) DEFAULT NULL,
  `comprobante` varchar(50) DEFAULT NULL,
  `imagen` varchar(10) DEFAULT NULL,
  `ipn` varchar(50) DEFAULT NULL,
  `calle` varchar(100) DEFAULT NULL,
  `noexterior` varchar(50) DEFAULT NULL,
  `nointerior` varchar(50) DEFAULT NULL,
  `entrecalles` varchar(200) DEFAULT NULL,
  `pais` varchar(20) DEFAULT 'Mexico',
  `estado` varchar(50) DEFAULT NULL,
  `municipio` varchar(50) DEFAULT NULL,
  `colonia` varchar(50) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `idmd5`, `uid`, `nombre`, `email`, `estatus`, `cupon`, `invisible`, `papelera`, `notify`, `guia`, `linkguia`, `fecha`, `dom`, `factura`, `tabla`, `cantidad`, `importe`, `envio`, `comprobante`, `imagen`, `ipn`, `calle`, `noexterior`, `nointerior`, `entrecalles`, `pais`, `estado`, `municipio`, `colonia`, `cp`) VALUES
(2, 'c81e728d9d4c2f636f067f89cc14862c', 3, 'oscar', 'oscar@wozial.com', 0, '', 1, 0, 0, NULL, NULL, '2021-06-11 10:30:08', 0, 0, '\n    <table style=\"width: 100%;\" cellspacing=\"2\" border=\"0\" bgcolor=\"grey\">\n      <tr style=\"background-color:#FFF;\">\n        <td style=\"width: 25%; padding:8px;\">Producto</td>\n        <td style=\"width: 9%; padding:8px;\">Talla</td>\n        <td style=\"width: 9%; padding:8px;\">Color</td>\n        <td style=\"width: 14%; padding:8px; text-align: center;\">Cantidad</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio lista</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio final</td>\n        <td style=\"width: 15%; padding:8px; text-align: right; \">Importe</td>\n      </tr>\n        <tr style=\"background-color:#FFF;\">\n          <td style=\"padding: 8px;\">\n            2 - bici2\n          </td>\n          <td style=\"padding: 8px;\">\n            Chico\n          </td>\n          <td style=\"padding: 8px;\">\n            Grey\n          </td>\n          <td style=\"padding: 8px; text-align: center;\">\n            1\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            60,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            48,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            48,000.00\n          </td>\n        </tr>\n      <tr style=\"background-color:#EEE;\">\n        <td style=\"padding: 8px; text-align: left; \" colspan=\"3\">\n          Envío global\n        </td>\n        <td style=\"padding: 8px; text-align: center; \">\n          1\n        </td>\n        <td style=\"padding: 8px; text-align: right; \" colspan=\"2\">\n          50.00\n        </td>\n        <td style=\"padding: 8px; text-align: right; \">\n          50.00\n        </td>\n      </tr>\n      <tr style=\"background-color:#FFF;\">\n        <td style=\"padding: 8px; text-align: left;\" colspan=\"3\">\n          Envío por pieza\n        </td>\n        <td style=\"padding: 8px; text-align: center;\">\n          1\n        </td>\n        <td style=\"padding: 8px; text-align: right;\" colspan=\"2\">\n          100.00\n        </td>\n        <td style=\"padding: 8px; text-align: right;\">\n          100.00\n        </td>\n      </tr>\n        <tr style=\"background-color:#EEE;\">\n          <td colspan=\"6\" style=\"padding: 8px;text-align:right;\">\n            Total\n          </td>\n          <td style=\"padding: 8px;text-align:right;\">\n            48,150.00\n          </td>\n        </tr>\n        \n    </table>', 1, '48150.00', NULL, NULL, NULL, NULL, 'jiji', '45', '', 'jojo', 'México', 'jalisco', 'tlaquepaque', 'juntas', '45590'),
(3, 'eccbc87e4b5ce2fe28308fd9f2a7baf3', 3, 'oscar', 'oscar@wozial.com', 0, '', 0, 0, 0, NULL, NULL, '2021-06-11 12:27:35', 0, 0, '\n    <table style=\"width: 100%;\" cellspacing=\"2\" border=\"0\" bgcolor=\"grey\">\n      <tr style=\"background-color:#FFF;\">\n        <td style=\"width: 25%; padding:8px;\">Producto</td>\n        <td style=\"width: 9%; padding:8px;\">Talla</td>\n        <td style=\"width: 9%; padding:8px;\">Color</td>\n        <td style=\"width: 14%; padding:8px; text-align: center;\">Cantidad</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio lista</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio final</td>\n        <td style=\"width: 15%; padding:8px; text-align: right; \">Importe</td>\n      </tr>\n        <tr style=\"background-color:#FFF;\">\n          <td style=\"padding: 8px;\">\n            1 - bici\n          </td>\n          <td style=\"padding: 8px;\">\n            Mediano\n          </td>\n          <td style=\"padding: 8px;\">\n            Negro\n          </td>\n          <td style=\"padding: 8px; text-align: center;\">\n            1\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            9,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            9,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            9,000.00\n          </td>\n        </tr>\n        <tr style=\"background-color:#EEE;\">\n          <td style=\"padding: 8px;\">\n            2 - bici2\n          </td>\n          <td style=\"padding: 8px;\">\n            Chico\n          </td>\n          <td style=\"padding: 8px;\">\n            Grey\n          </td>\n          <td style=\"padding: 8px; text-align: center;\">\n            1\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            60,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            48,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            48,000.00\n          </td>\n        </tr>\n        <tr style=\"background-color:#FFF;\">\n          <td colspan=\"6\" style=\"padding: 8px;text-align:right;\">\n            Total\n          </td>\n          <td style=\"padding: 8px;text-align:right;\">\n            57,000.00\n          </td>\n        </tr>\n        \n    </table>', 2, '57000.00', NULL, NULL, NULL, NULL, 'jiji', '45', '', 'jojo', 'México', 'jalisco', 'tlaquepaque', 'juntas', '45590'),
(4, 'a87ff679a2f3e71d9181a67b7542122c', 4, 'lizbeth', 'lix@hotmail.com', 0, '', 0, 0, 0, NULL, NULL, '2021-06-11 15:08:25', 0, 0, '\n    <table style=\"width: 100%;\" cellspacing=\"2\" border=\"0\" bgcolor=\"grey\">\n      <tr style=\"background-color:#FFF;\">\n        <td style=\"width: 25%; padding:8px;\">Producto</td>\n        <td style=\"width: 9%; padding:8px;\">Talla</td>\n        <td style=\"width: 9%; padding:8px;\">Color</td>\n        <td style=\"width: 14%; padding:8px; text-align: center;\">Cantidad</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio lista</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio final</td>\n        <td style=\"width: 15%; padding:8px; text-align: right; \">Importe</td>\n      </tr>\n        <tr style=\"background-color:#FFF;\">\n          <td style=\"padding: 8px;\">\n            2 - bici2\n          </td>\n          <td style=\"padding: 8px;\">\n            Mediano\n          </td>\n          <td style=\"padding: 8px;\">\n            Grey\n          </td>\n          <td style=\"padding: 8px; text-align: center;\">\n            1\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            60,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            48,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            48,000.00\n          </td>\n        </tr>\n        <tr style=\"background-color:#EEE;\">\n          <td colspan=\"6\" style=\"padding: 8px;text-align:right;\">\n            Total\n          </td>\n          <td style=\"padding: 8px;text-align:right;\">\n            48,000.00\n          </td>\n        </tr>\n        \n    </table>', 1, '48000.00', NULL, NULL, NULL, NULL, '', '', '', '', 'Mexico', '', '', '', ''),
(5, 'e4da3b7fbbce2345d7772b0674a318d5', 3, 'oscar', 'oscar@wozial.com', 0, '', 0, 0, 0, NULL, NULL, '2021-06-14 13:13:21', 0, 0, '\n    <table style=\"width: 100%;\" cellspacing=\"2\" border=\"0\" bgcolor=\"grey\">\n      <tr style=\"background-color:#FFF;\">\n        <td style=\"width: 25%; padding:8px;\">Producto</td>\n        <td style=\"width: 9%; padding:8px;\">Talla</td>\n        <td style=\"width: 9%; padding:8px;\">Color</td>\n        <td style=\"width: 14%; padding:8px; text-align: center;\">Cantidad</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio lista</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio final</td>\n        <td style=\"width: 15%; padding:8px; text-align: right; \">Importe</td>\n      </tr>\n        <tr style=\"background-color:#FFF;\">\n          <td style=\"padding: 8px;\">\n            2 - bici2\n          </td>\n          <td style=\"padding: 8px;\">\n            Mediano\n          </td>\n          <td style=\"padding: 8px;\">\n            Negro\n          </td>\n          <td style=\"padding: 8px; text-align: center;\">\n            1\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            60,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            48,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            48,000.00\n          </td>\n        </tr>\n        <tr style=\"background-color:#EEE;\">\n          <td colspan=\"6\" style=\"padding: 8px;text-align:right;\">\n            Total\n          </td>\n          <td style=\"padding: 8px;text-align:right;\">\n            48,000.00\n          </td>\n        </tr>\n        \n    </table>', 1, '48000.00', NULL, NULL, NULL, NULL, 'jiji', '45', '', 'jojo', 'México', 'jalisco', 'tlaquepaque', 'juntas', '45590'),
(6, '1679091c5a880faf6fb5e6087eb1b2dc', 3, 'oscar', 'oscar@wozial.com', 0, '', 0, 0, 0, NULL, NULL, '2021-09-23 10:55:10', 0, 0, '\n    <table style=\"width: 100%;\" cellspacing=\"2\" border=\"0\" bgcolor=\"grey\">\n      <tr style=\"background-color:#FFF;\">\n        <td style=\"width: 25%; padding:8px;\">Producto</td>\n        <td style=\"width: 9%; padding:8px;\">Talla</td>\n        <td style=\"width: 9%; padding:8px;\">Color</td>\n        <td style=\"width: 14%; padding:8px; text-align: center;\">Cantidad</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio lista</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio final</td>\n        <td style=\"width: 15%; padding:8px; text-align: right; \">Importe</td>\n      </tr>\n        <tr style=\"background-color:#FFF;\">\n          <td style=\"padding: 8px;\">\n            1 - TURNAROUND MANAGEMENT\n          </td>\n          <td style=\"padding: 8px;\">\n            fecha 2\n          </td>\n          <td style=\"padding: 8px;\">\n            \n          </td>\n          <td style=\"padding: 8px; text-align: center;\">\n            1\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            4,750.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            4,750.00\n          </td>\n        </tr>\n        <tr style=\"background-color:#EEE;\">\n          <td colspan=\"6\" style=\"padding: 8px;text-align:right;\">\n            Total\n          </td>\n          <td style=\"padding: 8px;text-align:right;\">\n            4,750.00\n          </td>\n        </tr>\n        \n    </table>', 1, '4750.00', NULL, NULL, NULL, NULL, 'jiji', '45', '', 'jojo', 'México', 'jalisco', 'tlaquepaque', 'juntas', '45590'),
(7, '8f14e45fceea167a5a36dedd4bea2543', 3, 'oscar', 'oscar@wozial.com', 0, '', 0, 0, 0, NULL, NULL, '2021-09-23 11:47:21', 0, 0, '\n    <table style=\"width: 100%;\" cellspacing=\"2\" border=\"0\" bgcolor=\"grey\">\n      <tr style=\"background-color:#FFF;\">\n        <td style=\"width: 25%; padding:8px;\">Producto</td>\n        <td style=\"width: 9%; padding:8px;\">Talla</td>\n        <td style=\"width: 9%; padding:8px;\">Color</td>\n        <td style=\"width: 14%; padding:8px; text-align: center;\">Cantidad</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio lista</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio final</td>\n        <td style=\"width: 15%; padding:8px; text-align: right; \">Importe</td>\n      </tr>\n        <tr style=\"background-color:#FFF;\">\n          <td style=\"padding: 8px;\">\n            1 - TURNAROUND MANAGEMENT\n          </td>\n          <td style=\"padding: 8px;\">\n            fecha 2\n          </td>\n          <td style=\"padding: 8px;\">\n            \n          </td>\n          <td style=\"padding: 8px; text-align: center;\">\n            1\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            4,750.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            4,750.00\n          </td>\n        </tr>\n        <tr style=\"background-color:#EEE;\">\n          <td colspan=\"6\" style=\"padding: 8px;text-align:right;\">\n            Total\n          </td>\n          <td style=\"padding: 8px;text-align:right;\">\n            4,750.00\n          </td>\n        </tr>\n        \n    </table>', 1, '4750.00', NULL, NULL, NULL, NULL, 'jiji', '45', '', 'jojo', 'México', 'jalisco', 'tlaquepaque', 'juntas', '45590'),
(8, 'c9f0f895fb98ab9159f51fd0297e236d', 3, 'oscar', 'oscar@wozial.com', 0, '', 0, 0, 0, NULL, NULL, '2021-10-05 10:56:04', 0, 0, '\n    <table style=\"width: 100%;\" cellspacing=\"2\" border=\"0\" bgcolor=\"grey\">\n      <tr style=\"background-color:#FFF;\">\n        <td style=\"width: 25%; padding:8px;\">Producto</td>\n        <td style=\"width: 9%; padding:8px;\">Talla</td>\n        <td style=\"width: 9%; padding:8px;\">Color</td>\n        <td style=\"width: 14%; padding:8px; text-align: center;\">Cantidad</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio lista</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio final</td>\n        <td style=\"width: 15%; padding:8px; text-align: right; \">Importe</td>\n      </tr>\n        <tr style=\"background-color:#FFF;\">\n          <td style=\"padding: 8px;\">\n            1 - TURNAROUND MANAGEMENT\n          </td>\n          <td style=\"padding: 8px;\">\n            ENERO // FEBRERO\n          </td>\n          <td style=\"padding: 8px;\">\n            \n          </td>\n          <td style=\"padding: 8px; text-align: center;\">\n            1\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n        </tr>\n        <tr style=\"background-color:#EEE;\">\n          <td colspan=\"6\" style=\"padding: 8px;text-align:right;\">\n            Total\n          </td>\n          <td style=\"padding: 8px;text-align:right;\">\n            5,000.00\n          </td>\n        </tr>\n        \n    </table>', 1, '5000.00', NULL, NULL, NULL, NULL, 'jiji', '45', '', 'jojo', 'México', 'jalisco', 'tlaquepaque', 'juntas', '45590'),
(9, '45c48cce2e2d7fbdea1afc51c7c6ad26', 3, 'oscar', 'oscar@wozial.com', 0, '', 0, 0, 0, NULL, NULL, '2021-10-05 11:00:29', 0, 0, '\n    <table style=\"width: 100%;\" cellspacing=\"2\" border=\"0\" bgcolor=\"grey\">\n      <tr style=\"background-color:#FFF;\">\n        <td style=\"width: 25%; padding:8px;\">Producto</td>\n        <td style=\"width: 9%; padding:8px;\">Talla</td>\n        <td style=\"width: 9%; padding:8px;\">Color</td>\n        <td style=\"width: 14%; padding:8px; text-align: center;\">Cantidad</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio lista</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio final</td>\n        <td style=\"width: 15%; padding:8px; text-align: right; \">Importe</td>\n      </tr>\n        <tr style=\"background-color:#FFF;\">\n          <td style=\"padding: 8px;\">\n            1 - TURNAROUND MANAGEMENT\n          </td>\n          <td style=\"padding: 8px;\">\n            MARZO // ABRIL\n          </td>\n          <td style=\"padding: 8px;\">\n            \n          </td>\n          <td style=\"padding: 8px; text-align: center;\">\n            1\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n        </tr>\n        <tr style=\"background-color:#EEE;\">\n          <td colspan=\"6\" style=\"padding: 8px;text-align:right;\">\n            Total\n          </td>\n          <td style=\"padding: 8px;text-align:right;\">\n            5,000.00\n          </td>\n        </tr>\n        \n    </table>', 1, '5000.00', NULL, NULL, NULL, NULL, 'jiji', '45', '', 'jojo', 'México', 'jalisco', 'tlaquepaque', 'juntas', '45590'),
(10, 'd3d9446802a44259755d38e6d163e820', 3, 'oscar', 'oscar@wozial.com', 0, '', 0, 0, 0, NULL, NULL, '2021-10-05 11:09:45', 0, 0, '\n    <table style=\"width: 100%;\" cellspacing=\"2\" border=\"0\" bgcolor=\"grey\">\n      <tr style=\"background-color:#FFF;\">\n        <td style=\"width: 25%; padding:8px;\">Producto</td>\n        <td style=\"width: 9%; padding:8px;\">Talla</td>\n        <td style=\"width: 9%; padding:8px;\"></td>\n        <td style=\"width: 14%; padding:8px; text-align: center;\">Cantidad</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio lista</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio final</td>\n        <td style=\"width: 15%; padding:8px; text-align: right; \">Importe</td>\n      </tr>\n        <tr style=\"background-color:#FFF;\">\n          <td style=\"padding: 8px;\">\n            1 - TURNAROUND MANAGEMENT\n          </td>\n          <td style=\"padding: 8px;\">\n            MAYO // JUNIO\n          </td>\n          <td style=\"padding: 8px;\">\n            \n          </td>\n          <td style=\"padding: 8px; text-align: center;\">\n            1\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n        </tr>\n        <tr style=\"background-color:#EEE;\">\n          <td colspan=\"6\" style=\"padding: 8px;text-align:right;\">\n            Total\n          </td>\n          <td style=\"padding: 8px;text-align:right;\">\n            5,000.00\n          </td>\n        </tr>\n        \n    </table>', 1, '5000.00', NULL, NULL, NULL, NULL, 'jiji', '45', '', 'jojo', 'México', 'jalisco', 'tlaquepaque', 'juntas', '45590'),
(11, '6512bd43d9caa6e02c990b0a82652dca', 3, 'oscar', 'oscar@wozial.com', 3, '', 0, 0, 0, NULL, NULL, '2021-10-05 11:16:40', 0, 0, '\n    <table style=\"width: 100%;\" cellspacing=\"2\" border=\"0\" bgcolor=\"grey\">\n      <tr style=\"background-color:#FFF;\">\n        <td style=\"width: 25%; padding:8px;\">Producto</td>\n        <td style=\"width: 9%; padding:8px;\">Fecha</td>\n        <td style=\"width: 9%; padding:8px;\"></td>\n        <td style=\"width: 14%; padding:8px; text-align: center;\">Cantidad</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio lista</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio final</td>\n        <td style=\"width: 15%; padding:8px; text-align: right; \">Importe</td>\n      </tr>\n        <tr style=\"background-color:#FFF;\">\n          <td style=\"padding: 8px;\">\n            1 - TURNAROUND MANAGEMENT\n          </td>\n          <td style=\"padding: 8px;\">\n            MAYO // JUNIO\n          </td>\n          <td style=\"padding: 8px;\">\n            \n          </td>\n          <td style=\"padding: 8px; text-align: center;\">\n            1\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n        </tr>\n        <tr style=\"background-color:#EEE;\">\n          <td colspan=\"6\" style=\"padding: 8px;text-align:right;\">\n            Total\n          </td>\n          <td style=\"padding: 8px;text-align:right;\">\n            5,000.00\n          </td>\n        </tr>\n        \n    </table>', 1, '5000.00', NULL, '20211005936.pdf', NULL, NULL, 'jiji', '45', '', 'jojo', 'México', 'jalisco', 'tlaquepaque', 'juntas', '45590'),
(12, 'c20ad4d76fe97759aa27a0c99bff6710', 3, 'oscar', 'oscar@wozial.com', 0, '', 0, 0, 0, NULL, NULL, '2021-10-05 11:51:00', 0, 0, '\n    <table style=\"width: 100%;\" cellspacing=\"2\" border=\"0\" bgcolor=\"grey\">\n      <tr style=\"background-color:#FFF;\">\n        <td style=\"width: 25%; padding:8px;\">Producto</td>\n        <td style=\"width: 9%; padding:8px;\">Fecha</td>\n        <td style=\"width: 9%; padding:8px;\"></td>\n        <td style=\"width: 14%; padding:8px; text-align: center;\">Cantidad</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio lista</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio final</td>\n        <td style=\"width: 15%; padding:8px; text-align: right; \">Importe</td>\n      </tr>\n        <tr style=\"background-color:#FFF;\">\n          <td style=\"padding: 8px;\">\n            1 - TURNAROUND MANAGEMENT\n          </td>\n          <td style=\"padding: 8px;\">\n            MARZO // ABRIL\n          </td>\n          <td style=\"padding: 8px;\">\n            \n          </td>\n          <td style=\"padding: 8px; text-align: center;\">\n            1\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n        </tr>\n        <tr style=\"background-color:#EEE;\">\n          <td colspan=\"6\" style=\"padding: 8px;text-align:right;\">\n            Total\n          </td>\n          <td style=\"padding: 8px;text-align:right;\">\n            5,000.00\n          </td>\n        </tr>\n        \n    </table>', 1, '5000.00', NULL, NULL, NULL, NULL, 'jiji', '45', '', 'jojo', 'México', 'jalisco', 'tlaquepaque', 'juntas', '45590'),
(13, 'c51ce410c124a10e0db5e4b97fc2af39', 3, 'Gustavo', 'gustavojaimes1993@gmail.com', 0, '', 0, 0, 0, NULL, NULL, '2021-10-07 09:57:00', 0, 0, '\n    <table style=\"width: 100%;\" cellspacing=\"2\" border=\"0\" bgcolor=\"grey\">\n      <tr style=\"background-color:#FFF;\">\n        <td style=\"width: 25%; padding:8px;\">Producto</td>\n        <td style=\"width: 9%; padding:8px;\">Fecha</td>\n        <td style=\"width: 9%; padding:8px;\"></td>\n        <td style=\"width: 14%; padding:8px; text-align: center;\">Cantidad</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio lista</td>\n        <td style=\"width: 14%; padding:8px; text-align: right; \">Precio final</td>\n        <td style=\"width: 15%; padding:8px; text-align: right; \">Importe</td>\n      </tr>\n        <tr style=\"background-color:#FFF;\">\n          <td style=\"padding: 8px;\">\n            1 - TURNAROUND MANAGEMENT\n          </td>\n          <td style=\"padding: 8px;\">\n            MARZO // ABRIL\n          </td>\n          <td style=\"padding: 8px;\">\n            \n          </td>\n          <td style=\"padding: 8px; text-align: center;\">\n            1\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n          <td style=\"padding: 8px; text-align: right;\">\n            5,000.00\n          </td>\n        </tr>\n        <tr style=\"background-color:#EEE;\">\n          <td colspan=\"6\" style=\"padding: 8px;text-align:right;\">\n            Total\n          </td>\n          <td style=\"padding: 8px;text-align:right;\">\n            5,000.00\n          </td>\n        </tr>\n        \n    </table>', 1, '5000.00', NULL, NULL, NULL, NULL, 'jiji', '45', '', 'jojo', 'México', 'jalisco', 'tlaquepaque', 'juntas', '45590');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidosdetalle`
--

CREATE TABLE `pedidosdetalle` (
  `id` int(11) NOT NULL,
  `pedido` int(11) DEFAULT NULL,
  `producto` int(11) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `productotxt` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio` decimal(15,2) DEFAULT NULL,
  `importe` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pedidosdetalle`
--

INSERT INTO `pedidosdetalle` (`id`, `pedido`, `producto`, `item`, `productotxt`, `cantidad`, `precio`, `importe`) VALUES
(5, 2, 17, 114, '2 | bici2 | Chico | Grey', 1, '48000.00', '48000.00'),
(6, 3, 16, 99, '1 | bici | Mediano | Negro', 1, '9000.00', '9000.00'),
(7, 3, 17, 114, '2 | bici2 | Chico | Grey', 1, '48000.00', '48000.00'),
(8, 4, 17, 112, '2 | bici2 | Mediano | Grey', 1, '48000.00', '48000.00'),
(9, 5, 17, 111, '2 | bici2 | Mediano | Negro', 1, '48000.00', '48000.00'),
(10, 6, 57, 321, '1 | TURNAROUND MANAGEMENT | fecha 2 | ', 1, '4750.00', '4750.00'),
(11, 7, 57, 321, '1 | TURNAROUND MANAGEMENT | fecha 2 | ', 1, '4750.00', '4750.00'),
(12, 8, 57, 320, '1 | TURNAROUND MANAGEMENT | ENERO // FEBRERO | ', 1, '5000.00', '5000.00'),
(13, 9, 57, 321, '1 | TURNAROUND MANAGEMENT | MARZO // ABRIL | ', 1, '5000.00', '5000.00'),
(14, 10, 57, 326, '1 | TURNAROUND MANAGEMENT | MAYO // JUNIO | ', 1, '5000.00', '5000.00'),
(15, 11, 57, 326, '1 | TURNAROUND MANAGEMENT | MAYO // JUNIO | ', 1, '5000.00', '5000.00'),
(16, 12, 57, 321, '1 | TURNAROUND MANAGEMENT | MARZO // ABRIL | ', 1, '5000.00', '5000.00'),
(17, 13, 57, 321, '1 | TURNAROUND MANAGEMENT | MARZO // ABRIL | ', 1, '5000.00', '5000.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) NOT NULL,
  `categoria` int(2) DEFAULT NULL,
  `clasif` int(2) DEFAULT NULL,
  `tipotalla` int(11) DEFAULT NULL,
  `marca` int(2) DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `metadescription` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `precio` decimal(20,2) DEFAULT NULL,
  `descuento` int(2) NOT NULL DEFAULT 0,
  `titulo` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo_en` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sku` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `txt` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `txt_en` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `ciudad` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `inicio` int(1) NOT NULL DEFAULT 0,
  `favoritos` int(255) NOT NULL DEFAULT 0,
  `estatus` int(1) NOT NULL DEFAULT 1,
  `fecha` date DEFAULT NULL,
  `orden` int(2) DEFAULT 99,
  `forro` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `herraje` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `relacionados` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `especificaciones` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `especificaciones_en` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `guia` int(11) DEFAULT NULL,
  `objetivo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `objetivo_en` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `dirigido` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `dirigido_en` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `reserva` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `reserva_en` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `pdf` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria`, `clasif`, `tipotalla`, `marca`, `title`, `metadescription`, `precio`, `descuento`, `titulo`, `titulo_en`, `sku`, `txt`, `txt_en`, `ciudad`, `imagen`, `inicio`, `favoritos`, `estatus`, `fecha`, `orden`, `forro`, `herraje`, `relacionados`, `especificaciones`, `especificaciones_en`, `guia`, `objetivo`, `objetivo_en`, `dirigido`, `dirigido_en`, `reserva`, `reserva_en`, `pdf`) VALUES
(94, 58, NULL, NULL, 3, NULL, NULL, NULL, 0, 'ASESORIA LABORAL', NULL, NULL, '<p>Somos uno de los despachos m&aacute;s grandes a nivel nacional, representando trabajadores, con m&aacute;s de 23 a&ntilde;os de experiencia.</p>', NULL, NULL, NULL, 0, 0, 1, '2022-07-02', 99, NULL, NULL, NULL, NULL, NULL, NULL, '<p class=\"uk-text-justify\"><span style=\"background-color: #f1c40f;\"><strong>Nuestro expertis en la materia, nos permite ofrecer estrategias legales para proteger las empresas de nuestros clientes, acompa&ntilde;ando a los responsables del manejo del talento humano en:</strong></span></p>\r\n<p class=\"uk-text-justify\">&bull; Elaboraci&oacute;n de contratos individuales de trabajo, en todas sus modalidades.</p>\r\n<p class=\"uk-text-justify\">&bull; Planeaci&oacute;n y desarrollo de esquemas de contrataci&oacute;n y compensaci&oacute;n para trabajadores nacionales, extranjeros y expatriados de las empresas.</p>\r\n<p class=\"uk-text-justify\">&bull; Revisiones integrales a las empresas, para identificar, prevenir y resolver contingencias laborales.</p>\r\n<p class=\"uk-text-justify\">&bull; Negociaci&oacute;n y terminaci&oacute;n de relaciones laborales.</p>\r\n<p class=\"uk-text-justify\">&bull; Implementar estrategias para la transferencia de personal y/o sustituciones patronales.</p>\r\n<p class=\"uk-text-justify\">&bull; Atenci&oacute;n de inspecciones laborales de la Secretar&iacute;a del Trabajo y Previsi&oacute;n Social (Condiciones Generales, T&eacute;cnicas o REPSE).</p>\r\n<p class=\"uk-text-justify\">&bull; Elaboraci&oacute;n y/o actualizaci&oacute;n de reglamentos interiores de trabajo, as&iacute; como su registro ante el Centro Federal de Conciliaci&oacute;n y Registro Laboral.</p>\r\n<p class=\"uk-text-justify\">&bull; Integraci&oacute;n de las Comisiones Mixtas (Seguridad e Higiene, Capacitaci&oacute;n, Adiestramiento y Productividad, PTU, Antig&uuml;edades.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(95, 60, NULL, NULL, 3, NULL, NULL, NULL, 0, 'LITIGIO LABORAL', NULL, NULL, '<p>El&nbsp;<strong>litigio laboral</strong>&nbsp;individual es aquel que opone, durante el empleo o en ocasi&oacute;n de la ruptura del contrato de trabajo, a un trabajador con respecto a su empleador.</p>', NULL, NULL, NULL, 0, 0, 1, '2022-07-30', 99, NULL, NULL, NULL, NULL, NULL, NULL, '<p>Comprometidos con implementaci&oacute;n de las mejores estrategias jur&iacute;dicas, constantemente nos actualizamos para brindar la mejor defensa de los intereses de nuestros clientes. Trabajamos en equipo para integrar el conocimiento y experiencia de los miembros de la firma, para formular los planteamientos jur&iacute;dicos que nos permitan obtener los mejores resultados en conflictos laborales.</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 58, NULL, NULL, 3, NULL, NULL, NULL, 0, 'PRUEBA DE CATEGORIA', NULL, NULL, '<p>ESTO ES UNA PRUEBA DE CATEGORIA LABORAL</p>', NULL, NULL, NULL, 0, 0, 1, '2022-07-06', 99, NULL, NULL, NULL, NULL, NULL, NULL, '<p>ESTO ES UNA PRUEBA DE CATEGORIA LABORAL</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 59, NULL, NULL, 3, NULL, NULL, NULL, 0, 'PRUEBA DE CATEGORIA 2', NULL, NULL, '<p>PRUEBA DE CATEGORIA</p>', NULL, NULL, NULL, 0, 0, 1, '2022-07-08', 99, NULL, NULL, NULL, NULL, NULL, NULL, '<p>PRUEBA DE CATEGORIA</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 60, NULL, NULL, 3, NULL, NULL, NULL, 0, 'PRUEBA DE CATEGORIA3', NULL, NULL, '<p>PRUEBA DE CATEGORIA3</p>', NULL, NULL, NULL, 0, 0, 1, '2022-07-06', 99, NULL, NULL, NULL, NULL, NULL, NULL, '<p>PRUEBA DE CATEGORIA3</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 58, NULL, NULL, 3, NULL, NULL, NULL, 0, 'PRUEBA DE CATEGORIA', NULL, NULL, '<p>PRUEBA DE CATEGORIA</p>', NULL, NULL, NULL, 0, 0, 1, '2022-07-09', 99, NULL, NULL, NULL, NULL, NULL, NULL, '<p>PRUEBA DE CATEGORIA4</p>', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 58, NULL, NULL, 3, NULL, NULL, NULL, 0, 'PRUEBA DE CATEGORIA', NULL, NULL, '<p>PRUEBA DE CATEGORIA</p>', NULL, NULL, NULL, 0, 0, 1, '2022-07-07', 99, NULL, NULL, NULL, NULL, NULL, NULL, '<p>PRUEBA DE CATEGORIA</p>', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoscat`
--

CREATE TABLE `productoscat` (
  `id` int(11) NOT NULL,
  `parent` int(2) NOT NULL,
  `txt` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `imagen` varchar(50) COLLATE latin1_spanish_ci DEFAULT NULL,
  `imagenhover` varchar(20) COLLATE latin1_spanish_ci DEFAULT NULL,
  `estatus` int(1) NOT NULL DEFAULT 0,
  `orden` int(2) NOT NULL DEFAULT 99
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `productoscat`
--

INSERT INTO `productoscat` (`id`, `parent`, `txt`, `imagen`, `imagenhover`, `estatus`, `orden`) VALUES
(50, 0, 'ASESORIA LABORAL', NULL, NULL, 0, 99),
(52, 0, 'LITIGIO LABORAL', NULL, NULL, 0, 99),
(53, 0, 'JUICIOS DE AMPARO', NULL, NULL, 0, 99),
(54, 0, 'RELACIONES COLECTIVAS', NULL, NULL, 0, 99),
(55, 0, 'REGISTRO REPSE', NULL, NULL, 0, 99),
(56, 0, 'NORMA OFICIAL MEXICANA', NULL, NULL, 0, 99),
(58, 50, 'ASESORIA LABORAL', NULL, NULL, 0, 99),
(59, 53, 'JUICIOS DE AMPARO', NULL, NULL, 0, 99),
(60, 52, 'LITIGIO LABORAL', NULL, NULL, 0, 99),
(61, 56, 'NORMA OFICIAL MEXICANA', NULL, NULL, 0, 99),
(62, 55, 'REGISTRO REPSE', NULL, NULL, 0, 99),
(63, 54, 'RELACIONES COLECTIVAS', NULL, NULL, 0, 99),
(64, 0, 'Prueba', NULL, NULL, 0, 99),
(65, 64, 'prueba', NULL, NULL, 0, 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productoscolor`
--

CREATE TABLE `productoscolor` (
  `id` int(11) NOT NULL,
  `txt` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `imagen` varchar(100) COLLATE latin1_spanish_ci DEFAULT NULL,
  `name` varchar(30) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `productoscolor`
--

INSERT INTO `productoscolor` (`id`, `txt`, `imagen`, `name`) VALUES
(4, '#ffffff', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productosexistencias`
--

CREATE TABLE `productosexistencias` (
  `id` int(11) NOT NULL,
  `producto` int(11) DEFAULT NULL,
  `talla` int(11) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `existencias` int(11) DEFAULT NULL,
  `precio` decimal(10,2) NOT NULL DEFAULT 0.00,
  `estatus` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productosexistencias`
--

INSERT INTO `productosexistencias` (`id`, `producto`, `talla`, `color`, `existencias`, `precio`, `estatus`) VALUES
(339, 66, 37, 4, 0, '0.00', 0),
(338, 66, 36, 4, 0, '0.00', 0),
(337, 65, 37, 4, 5, '0.00', 0),
(331, 61, 34, 4, 5, '0.00', 1),
(333, 63, 36, 4, 5, '0.00', 1),
(335, 64, 38, 4, 20, '0.00', 1),
(330, 61, 33, 4, 5, '0.00', 1),
(334, 63, 37, 4, 6, '0.00', 1),
(336, 65, 36, 4, 2, '0.00', 1),
(332, 62, 35, 4, 15, '0.00', 1),
(340, 67, 33, 4, 0, '0.00', 1),
(341, 67, 34, 4, 0, '0.00', 0),
(342, 68, 38, 4, 0, '0.00', 0),
(343, 69, 33, 4, 0, '0.00', 0),
(344, 69, 34, 4, 0, '0.00', 0),
(345, 74, 33, 4, 0, '0.00', 0),
(346, 74, 34, 4, 0, '0.00', 0),
(347, 75, 38, 4, 0, '0.00', 0),
(348, 79, 38, 4, 0, '0.00', 0),
(349, 80, 33, 4, 0, '0.00', 0),
(350, 80, 34, 4, 0, '0.00', 0),
(351, 81, 33, 4, 0, '0.00', 0),
(352, 81, 34, 4, 0, '0.00', 0),
(353, 82, 33, 4, 0, '0.00', 0),
(354, 82, 34, 4, 0, '0.00', 0),
(355, 83, 33, 4, 0, '0.00', 0),
(356, 83, 34, 4, 0, '0.00', 0),
(357, 86, 33, 4, 0, '0.00', 0),
(358, 86, 34, 4, 0, '0.00', 0),
(359, 87, 36, 4, 0, '0.00', 0),
(360, 87, 37, 4, 0, '0.00', 0),
(361, 88, 33, 4, 0, '0.00', 0),
(362, 88, 34, 4, 0, '0.00', 0),
(363, 89, 35, 4, 0, '0.00', 0),
(364, 90, 35, 4, 0, '0.00', 0),
(365, 91, 33, 4, 0, '0.00', 0),
(366, 91, 34, 4, 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productosmarcas`
--

CREATE TABLE `productosmarcas` (
  `id` int(11) NOT NULL,
  `txt` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productosmarcas`
--

INSERT INTO `productosmarcas` (`id`, `txt`, `imagen`, `orden`) VALUES
(3, 'Patito', '477175676.png', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productospic`
--

CREATE TABLE `productospic` (
  `id` int(10) NOT NULL,
  `producto` int(10) NOT NULL,
  `titulo` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `title` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `txt` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99,
  `imagen` varchar(191) COLLATE latin1_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `productospic`
--

INSERT INTO `productospic` (`id`, `producto`, `titulo`, `title`, `txt`, `orden`, `imagen`) VALUES
(116, 94, NULL, NULL, NULL, 0, '762371889.jpg'),
(117, 94, NULL, NULL, NULL, 1, '371754358.jpg'),
(118, 95, NULL, NULL, NULL, 99, '435151536.png'),
(119, 95, NULL, NULL, NULL, 99, '982230910.jpg'),
(120, 96, NULL, NULL, NULL, 99, '185592038.jpeg'),
(121, 96, NULL, NULL, NULL, 99, '713564991.jpg'),
(122, 97, NULL, NULL, NULL, 99, '568725957.jpg'),
(123, 98, NULL, NULL, NULL, 99, '682540053.jpg'),
(124, 99, NULL, NULL, NULL, 99, '796610435.jpg'),
(125, 100, NULL, NULL, NULL, 99, '936393739.png'),
(126, 100, NULL, NULL, NULL, 99, '478652739.jpeg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productostalla`
--

CREATE TABLE `productostalla` (
  `id` int(11) NOT NULL,
  `txt` text COLLATE latin1_spanish_ci DEFAULT NULL,
  `tipo` varchar(30) COLLATE latin1_spanish_ci DEFAULT 'Chamarras',
  `orden` int(2) NOT NULL DEFAULT 99,
  `fechainicio` date DEFAULT NULL,
  `fechafinal` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_spanish_ci;

--
-- Volcado de datos para la tabla `productostalla`
--

INSERT INTO `productostalla` (`id`, `txt`, `tipo`, `orden`, `fechainicio`, `fechafinal`) VALUES
(33, 'ENERO // JUNIO', '13', 99, '2021-01-01', '2021-06-29'),
(34, 'JULIO // DICIEMBRE', '13', 99, '2021-07-22', '2021-12-13'),
(35, 'AGOSTO // FEBRERO', '14', 99, '2021-08-13', '2022-02-13'),
(36, 'MARZO // JULIO', '15', 99, '2021-03-10', '2021-07-16'),
(37, 'JULIO // AGOSTO', '15', 99, '2021-07-22', '2021-08-07'),
(38, 'Septiembre // Noviembre', '16', 99, '2021-09-17', '2021-11-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productostallaclasif`
--

CREATE TABLE `productostallaclasif` (
  `id` int(11) NOT NULL,
  `txt` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productostallaclasif`
--

INSERT INTO `productostallaclasif` (`id`, `txt`, `orden`) VALUES
(13, 'Desarrollo web', 99),
(14, 'Ingles', 99),
(15, 'Matematicas', 99),
(16, 'Cocina', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productostallarel`
--

CREATE TABLE `productostallarel` (
  `id` int(10) NOT NULL,
  `producto` int(2) DEFAULT NULL,
  `talla` int(3) DEFAULT NULL,
  `espalda` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `manga` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `largo` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `busto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cintura` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo_en` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion_en` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `objetivo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `objetivo_en` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `proceso` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `proceso_en` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `resultado` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `resultado_en` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id`, `titulo`, `titulo_en`, `orden`, `descripcion`, `descripcion_en`, `objetivo`, `objetivo_en`, `proceso`, `proceso_en`, `resultado`, `resultado_en`) VALUES
(23, 'CARRETERAS NUEVAS', 'Hola Carretera nueva en', 0, 'El objetivo de una central hidroeléctrica es la obtención de electricidad a partir de la energía potencial de masas de agua en movimiento.', 'El objetivo de una central hidroeléctrica es la obtención de electricidad a partir de la energía potencial de masas de agua en movimiento.', '<p><img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAzEjWIVAIISuxp-k6LrQgE44FmZ-rsC4gLw&amp;usqp=CAU\" alt=\"Pr&oacute;ximos Eventos &ndash; Dise&ntilde;o Web &ndash; Centro de C&oacute;mputo Mazatl&aacute;n\" /></p>', '<p>A road or route is a transport route of public domain and use, designed and built primarily for the circulation of vehicles. ... Roads are distinguished from a simple path because they are specially designed for the circulation of transport vehicles.</p>', '<p>La construcci&oacute;n de una nueva carretera ya sea de asfalto o cemento requiere la producci&oacute;n de una excelente estructura de pavimento comenzando con una capa de base estable y todo el camino con una superficie nivelada con precisi&oacute;n. ... La capa de base sirve como base para la pavimentaci&oacute;n.</p>', '<p>289 / 5000 Resultados de traducci&oacute;n Building a new road from either asphalt or cement requires the production of an excellent pavement structure starting with a stable base layer and all the way to a precisely leveled surface. ... The base layer serves as the base for the paving.</p>', '&lt;p&gt;En cumplimiento al acuerdo que establece las disposiciones de productividad, ahorro, transparencia y desregulaci&amp;oacute;n presupuestaria en la Administraci&amp;oacute;n P&amp;uacute;blica Federal para el ejercicio fiscal del a&amp;ntilde;o 2006, publicado en el Diario Oficial de la Federaci&amp;oacute;n del 28 de febrero de 2001, la Direcci&amp;oacute;n General de Carreteras, informa sobre los resultados de las licitaciones en materia de Obra P&amp;uacute;blica.&lt;/p&gt;', '&lt;p&gt;In compliance with the agreement that establishes the provisions of productivity, savings, transparency and budgetary deregulation in the Federal Public Administration for the fiscal year of 2006, published in the Official Gazette of the Federation on February 28, 2001, the General Directorate of Roads , reports on the results of public works tenders.&lt;/p&gt;'),
(24, 'PRESA HIDROELECTRICA', 'HYDROELECTRIC DAM', 1, 'El objetivo de una central hidroeléctrica es la obtención de electricidad a partir de la energía potencial de masas de agua en movimiento.', 'El objetivo de una central hidroeléctrica es la obtención de electricidad a partir de la energía potencial de masas de agua en movimiento.', '<p>El objetivo de una central hidroel&eacute;ctrica es la obtenci&oacute;n de electricidad a partir de la energ&iacute;a potencial de masas de agua en movimiento.</p>', '<p>The objective of a hydroelectric power station is to obtain electricity from the potential energy of moving bodies of water.</p>', '<p>La masa de agua embalsada se conduce a trav&eacute;s de una tuber&iacute;a hacia los &aacute;labes de una turbina que suele estar a pie de presa, la cual est&aacute; conectada al generador. As&iacute;, el agua transforma su energ&iacute;a potencial en energ&iacute;a cin&eacute;tica, que hace mover los &aacute;labes de la turbina.</p>', '<p>The mass of dammed water is led through a pipe to the blades of a turbine that is usually at the foot of the dam, which is connected to the generator. Thus, the water transforms its potential energy into kinetic energy, which makes the turbine blades move.</p>', '&lt;p&gt;Una central hidroel&amp;eacute;ctrica es una instalaci&amp;oacute;n que utiliza energ&amp;iacute;a hidr&amp;aacute;ulica para la generaci&amp;oacute;n de energ&amp;iacute;a el&amp;eacute;ctrica. Son el resultado actual de la evoluci&amp;oacute;n de los antiguos molinos hidr&amp;aacute;ulicos que aprovechaban la corriente de los r&amp;iacute;os para generar energ&amp;iacute;a.&lt;/p&gt;', '&lt;p&gt;A hydroelectric plant is a facility that uses hydraulic energy for the generation of electrical energy. They are the current result of the evolution of the old hydraulic mills that used the current of the rivers to generate energy.&lt;/p&gt;'),
(25, 'AGENCIA DE AUTOS', 'CAR AGENCY', 2, 'Las agencias funcionan como espacios de venta y representantes de los fabricantes de autos, en los cuales los interesados en adquirir un veh&iacute;culo pueden asistir para observar los modelos disponibles en personas y solicitar toda la informaci&oacute;n relacionada con el auto.', 'The agencies function as sales spaces and representatives of car manufacturers, in which those interested in acquiring a vehicle can attend to observe the models available to people and request all the information related to the car.', 'Brindar seguridad y profesionalismo en todas nuestras operaciones.\r\nOfrecer los mejores precios y la mejor selecci&oacute;n de veh&iacute;culos seminuevos del mercado.\r\nVender las mejores unidades en excelentes condiciones est&eacute;ticas y mec&aacute;nicas y con toda la documentaci&oacute;n al d&iacute;a y en regla.\r\nProveer a nuestros clientes con el mejor servicio y experiencia en la compra / venta de su auto que resulte en clientes satisfechos.\r\nHacer de la compra / venta de su auto una experiencia agradable, r&aacute;pida, y segura.\r\nComprar y vender autos de primera calidad y a buen precio, dando siempre el mejor servicio a nuestros clientes.', 'Provide security and professionalism in all our operations.\nOffer the best prices and the best selection of pre-owned vehicles on the market.\nSell the best units in excellent aesthetic and mechanical conditions and with all the documentation up to date and in order.\nProvide our customers with the best service and experience in the purchase / sale of their car that results in satisfied customers.\nMake buying / selling your car a pleasant, fast, and safe experience.\nBuy and sell premium quality cars at a good price, always giving the best service to our customers.', 'Te puedo decir que los tr&aacute;mites para sacar tu coche de la agencia, son b&aacute;sicamente dos: hacer el tramite de placas y tarjeta de circulaci&oacute;n y contratar el seguro de auto.', 'I can tell you that the procedures to get your car out of the agency are basically two: do the license plate and vehicle registration process and take out auto insurance.', 'Pero, adem&aacute;s de lograr la mayor complacencia a los consumidores, la calidad del servicio tambi&eacute;n est&aacute; involucrada de manera directa con las intenciones de lealtad hacia una marca o modelo en particular, as&iacute; como si un cliente recomendar&aacute; usar un distribuidor para el servicio o la compra de un veh&iacute;culo.', 'But, in addition to achieving the highest consumer satisfaction, the quality of the service is also directly involved with the loyalty intentions towards a particular brand or model, as well as whether a customer will recommend using a distributor for the service or purchase. of a vehicle.'),
(28, 'ESCUELA PREPARATORIA', 'HIGH SCHOOL', 3, 'La preparatoria es un nivel acad&eacute;mico m&aacute;s avanzado que la escuela secundar&iacute;a es decir en M&eacute;xico se cursa primero la secundaria por un periodo de 3 a&ntilde;os y se contin&uacute;a con la preparatoria por 3 a&ntilde;os .', 'High school is a more advanced academic level than high school, that is, in Mexico, high school is attended first for a period of 3 years and continues with high school for 3 years.', 'Definir cu&aacute;l es el objetivo de la educaci&oacute;n media superior se puede resumir en la b&uacute;squeda de proporcionar conocimientos, m&eacute;todos, t&eacute;cnicas y herramientas necesarias que ayuden a incrementar tu cultura general b&aacute;sica para que, a partir de esta puedas adquirir elementos fundamentales para la construcci&oacute;n de nuevos', 'Defining what is the objective of upper secondary education can be summarized in the search to provide knowledge, methods, techniques and necessary tools that help increase your basic general culture so that, from this you can acquire fundamental elements for the construction of new', 'La Comisi&oacute;n Metropolitana de Instituciones P&uacute;blicas de Educaci&oacute;n Media Superior (Comipems) anunci&oacute; que el examen de asignaci&oacute;n edici&oacute;n 2020 de la Zona Metropolitana de la Ciudad de M&eacute;xico se llevar&aacute; a cabo los d&iacute;as 15, 16, 22 y 23 de agosto de este a&ntilde;o.5', 'The Metropolitan Commission of Public Institutions of Higher Secondary Education (Comipems) announced that the assignment examination 2020 edition of the Metropolitan Area of Mexico City will be held on August 15, 16, 22 and 23 of this year.5', 'En el regl&oacute;n de asaltos a mano armada a alumnos en las inmediaciones del plantel, se tienen documentado que durante el primer semestre de clases, esto es durante los meses de febrero a agosto de 2012  se documentaron alrededor de 150 asaltos, lo que resulto en las gestiones del comit&eacute; t&eacute;cnico ante la polic&iacute;a de Guadalajara para la disminuci&oacute;n de estos, lo cual arrojo que en coordinaci&oacute;n de la polic&iacute;a de Guadalajara y el comit&eacute;.', 'In the area of armed assaults on students in the vicinity of the campus, it has been documented that during the first semester of classes, that is during the months of February to August 2012, around 150 assaults were documented, which resulted in the efforts of the technical committee before the Guadalajara police to reduce these, which resulted in coordination between the Guadalajara police and the committee.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectospic`
--

CREATE TABLE `proyectospic` (
  `id` int(11) NOT NULL,
  `producto` int(11) DEFAULT NULL,
  `alt` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99,
  `imagen` varchar(191) COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `objetivo` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proyectospic`
--

INSERT INTO `proyectospic` (`id`, `producto`, `alt`, `orden`, `imagen`, `detalle`, `objetivo`) VALUES
(72, 23, NULL, 99, '442.png', NULL, NULL),
(73, 23, NULL, 99, '133.png', NULL, NULL),
(75, 24, NULL, 99, '751.png', NULL, NULL),
(76, 24, NULL, 99, '186.png', NULL, NULL),
(77, 24, NULL, 99, '723.jpg', NULL, NULL),
(78, 25, NULL, 99, '448.png', NULL, NULL),
(79, 25, NULL, 99, '246.png', NULL, NULL),
(80, 25, NULL, 99, '564.png', NULL, NULL),
(81, 28, NULL, 99, '405.png', NULL, NULL),
(82, 28, NULL, 99, '531.png', NULL, NULL),
(83, 28, NULL, 99, '278.png', NULL, NULL),
(88, 23, NULL, 99, '200.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `secciones`
--

CREATE TABLE `secciones` (
  `id` int(11) NOT NULL,
  `titulo` varchar(191) NOT NULL,
  `orden` int(11) NOT NULL DEFAULT 99
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `secciones`
--

INSERT INTO `secciones` (`id`, `titulo`, `orden`) VALUES
(2, 'inicio1', 99),
(3, 'inicio2', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccionesdetalle`
--

CREATE TABLE `seccionesdetalle` (
  `id` int(11) NOT NULL,
  `producto` int(11) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `txt` text DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `estatus` int(11) NOT NULL DEFAULT 0,
  `orden` int(11) NOT NULL DEFAULT 99
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `seccionesdetalle`
--

INSERT INTO `seccionesdetalle` (`id`, `producto`, `titulo`, `txt`, `url`, `estatus`, `orden`) VALUES
(7, 2, 'trail', 'Lorem ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estandar de las industrias desde el año 1500. elit.', 'http://localhost/meetbikes/site/25_0_0_tienda_wozial', 0, 99),
(15, 3, 'DEMO RIDE', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Officia labore repudiandae iusto provident eius ex vitae numquam quis, est laboriosam, porro laudantium molestiae voluptatem ad libero. Minima veniam eveniet iusto?', 'agenda', 0, 99),
(16, 2, 'trail data', 'Lorem ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estandar de las industrias desde el año 1500. elit.', '26_0_0_tienda_wozial', 0, 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo_en` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion_en` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `objetivo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `objetivo_en` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `proceso` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `proceso_en` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `curso` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `curso_en` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id`, `titulo`, `titulo_en`, `orden`, `descripcion`, `descripcion_en`, `objetivo`, `objetivo_en`, `proceso`, `proceso_en`, `curso`, `curso_en`) VALUES
(17, 'SERVICIOS 1', 'SERVICE ONE', 99, 'Nuestros textos son gratis y están diseñados por nivel de complejidad. Además pueden descargarse en formato PDF. . Si quieres aprender español.', 'Our texts are free and are designed by level of complexity. They can also be downloaded in PDF format. If you want to learn Spanish.', '<h2>&iquest;Qu&eacute; es el dise&ntilde;o web?</h2>\r\n<p><strong>El dise&ntilde;o web implica trabajo relacionado con el&nbsp;<em>layout</em>&nbsp;y dise&ntilde;o de p&aacute;ginas online, as&iacute; como la producci&oacute;n de contenido, aunque generalmente se aplica a la creaci&oacute;n de sitios web.</strong></p>\r\n<p>En este caso, los dise&ntilde;adores web crean las p&aacute;ginas utilizando lenguajes de marcado como HTML o&nbsp;<a href=\"https://rockcontent.com/es/blog/que-es-xml/\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"XML (abre numa nova aba)\">XML</a>.</p>\r\n<p>Por otro lado, la parte visual de los sitios est&aacute; a cargo del&nbsp;<a href=\"https://lenguajecss.com/p/css/introduccion/que-es-css\" target=\"_blank\" rel=\"noreferrer noopener\">CSS</a>, t&eacute;rmino utilizado para estilizar los elementos escritos en HTML.</p>', '<p>Jorge tried to be objective in his comments &rdquo;. For philosophy, objective is everything that exists outside the individual, which has a real and concrete existence.</p>', '<p>&iquest;Qu&eacute; es el dise&ntilde;o web?</p>\r\n<p><strong>El dise&ntilde;o web implica trabajo relacionado con el&nbsp;<em>layout</em>&nbsp;y dise&ntilde;o de p&aacute;ginas online, as&iacute; como la producci&oacute;n de contenido, aunque generalmente se aplica a la creaci&oacute;n de sitios web.</strong></p>\r\n<p>En este caso, los dise&ntilde;adores web crean las p&aacute;ginas utilizando lenguajes de marcado como HTML o&nbsp;<a href=\"https://rockcontent.com/es/blog/que-es-xml/\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"XML (abre numa nova aba)\">XML</a>.</p>\r\n<p>Por otro lado, la parte visual de los sitios est&aacute; a cargo del&nbsp;<a href=\"https://lenguajecss.com/p/css/introduccion/que-es-css\" target=\"_blank\" rel=\"noreferrer noopener\">CSS</a>, t&eacute;rmino utilizado para estilizar los elementos escritos en HTML.</p>', '<p>log of wood (input), which we chop and cut (tasks), to transform it into a table (output). The residues that are generated in the process (sawdust, wood residues, defective components,&hellip;) are also considered outputs.</p>', '<p>&iquest;Qu&eacute; es el dise&ntilde;o web?</p>\r\n<p><strong>El dise&ntilde;o web implica trabajo relacionado con el&nbsp;<em>layout</em>&nbsp;y dise&ntilde;o de p&aacute;ginas online, as&iacute; como la producci&oacute;n de contenido, aunque generalmente se aplica a la creaci&oacute;n de sitios web.</strong></p>\r\n<p>En este caso, los dise&ntilde;adores web crean las p&aacute;ginas utilizando lenguajes de marcado como HTML o&nbsp;<a href=\"https://rockcontent.com/es/blog/que-es-xml/\" target=\"_blank\" rel=\"noreferrer noopener\" aria-label=\"XML (abre numa nova aba)\">XML</a>.</p>', '<p>The didactic methodology is the system with which teachers plan their classes, using different tools, to ensure that students achieve the objectives and competencies that are defined for each educational level.</p>'),
(18, 'SERVICIOS 2', 'SERVICE 2', 99, 'Nuestros textos son gratis y est&aacute;n dise&ntilde;ados por nivel de complejidad. Adem&aacute;s pueden descargarse en formato PDF. Si quieres aprender espa&ntilde;ol.', 'Our texts are free and are designed by level of complexity. They can also be downloaded in PDF format. If you want to learn spanish.', 'Jorge trat&oacute; de ser objetivo en sus comentarios&rdquo;. Para la filosof&iacute;a, objetivo es todo aquello que existe fuera del individuo, que tiene existencia real y concreta.', 'Jorge tried to be objective in his comments &rdquo;. For philosophy, objective is everything that exists outside the individual, which has a real and concrete existence.', 'tronco de madera (entrada), que lo troceamos y cortamos (tareas), para transformarlo en una mesa (salida). Los residuos que se generan en el proceso (serr&iacute;n, restos de madera, componentes defectuosos,&hellip;) se consideran tambi&eacute;n salidas.', 'log of wood (input), which we chop and cut (tasks), to transform it into a table (output). The residues that are generated in the process (sawdust, wood residues, defective components,&hellip;) are also considered outputs.', 'la metodolog&iacute;a did&aacute;ctica es el sistema con el que los maestros planifican sus clases, vali&eacute;ndose de distintas herramientas, para lograr que los alumnos alcancen los objetivos y competencias que se definen para cada nivel educativo.', 'The didactic methodology is the system with which teachers plan their classes, using different tools, to ensure that students achieve the objectives and competencies that are defined for each educational level.'),
(19, 'SERVICIOS 3', 'SERVICE THREE', 99, 'Nuestros textos son gratis y est&aacute;n dise&ntilde;ados por nivel de complejidad. Adem&aacute;s pueden descargarse en formato PDF. Si quieres aprender espa&ntilde;ol.', 'Our texts are free and are designed by level of complexity. They can also be downloaded in PDF format. If you want to learn spanish.', 'Jorge trat&oacute; de ser objetivo en sus comentarios&rdquo;. Para la filosof&iacute;a, objetivo es todo aquello que existe fuera del individuo, que tiene existencia real y concreta.', 'Jorge tried to be objective in his comments &rdquo;. For philosophy, objective is everything that exists outside the individual, which has a real and concrete existence.', 'tronco de madera (entrada), que lo troceamos y cortamos (tareas), para transformarlo en una mesa (salida). Los residuos que se generan en el proceso (serr&iacute;n, restos de madera, componentes defectuosos,&hellip;) se consideran tambi&eacute;n salidas.', 'log of wood (input), which we chop and cut (tasks), to transform it into a table (output). The residues that are generated in the process (sawdust, wood residues, defective components,&hellip;) are also considered outputs.', 'la metodolog&iacute;a did&aacute;ctica es el sistema con el que los maestros planifican sus clases, vali&eacute;ndose de distintas herramientas, para lograr que los alumnos alcancen los objetivos y competencias que se definen para cada nivel educativo.', 'The didactic methodology is the system with which teachers plan their classes, using different tools, to ensure that students achieve the objectives and competencies that are defined for each educational level.'),
(20, 'SERVICIOS 4', 'SERVICE FOUR', 99, 'Nuestros textos son gratis y est&aacute;n dise&ntilde;ados por nivel de complejidad. Adem&aacute;s pueden descargarse en formato PDF. Si quieres aprender espa&ntilde;ol.', 'Our texts are free and are designed by level of complexity. They can also be downloaded in PDF format. If you want to learn spanish.', 'tronco de madera (entrada), que lo troceamos y cortamos (tareas), para transformarlo en una mesa (salida). Los residuos que se generan en el proceso (serr&iacute;n, restos de madera, componentes defectuosos,&hellip;) se consideran tambi&eacute;n salidas.', 'log of wood (input), which we chop and cut (tasks), to transform it into a table (output). The residues that are generated in the process (sawdust, wood residues, defective components,&hellip;) are also considered outputs.', 'tronco de madera (entrada), que lo troceamos y cortamos (tareas), para transformarlo en una mesa (salida). Los residuos que se generan en el proceso (serr&iacute;n, restos de madera, componentes defectuosos,&hellip;) se consideran tambi&eacute;n salidas.', 'log of wood (input), which we chop and cut (tasks), to transform it into a table (output). The residues that are generated in the process (sawdust, wood residues, defective components,&hellip;) are also considered outputs.', 'la metodolog&iacute;a did&aacute;ctica es el sistema con el que los maestros planifican sus clases, vali&eacute;ndose de distintas herramientas, para lograr que los alumnos alcancen los objetivos y competencias que se definen para cada nivel educativo.', 'The didactic methodology is the system with which teachers plan their classes, using different tools, to ensure that students achieve the objectives and competencies that are defined for each educational level.'),
(21, 'SERVICIOS 5', 'SERVICE FIVE', 99, 'Nuestros textos son gratis y est&aacute;n dise&ntilde;ados por nivel de complejidad. Adem&aacute;s pueden descargarse en formato PDF. Si quieres aprender espa&ntilde;ol.', 'Our texts are free and are designed by level of complexity. They can also be downloaded in PDF format. If you want to learn spanish.', 'Jorge trat&oacute; de ser objetivo en sus comentarios&rdquo;. Para la filosof&iacute;a, objetivo es todo aquello que existe fuera del individuo, que tiene existencia real y concreta.', 'Jorge tried to be objective in his comments &rdquo;. For philosophy, objective is everything that exists outside the individual, which has a real and concrete existence.', 'tronco de madera (entrada), que lo troceamos y cortamos (tareas), para transformarlo en una mesa (salida). Los residuos que se generan en el proceso (serr&iacute;n, restos de madera, componentes defectuosos,&hellip;) se consideran tambi&eacute;n salidas.', 'log of wood (input), which we chop and cut (tasks), to transform it into a table (output). The residues that are generated in the process (sawdust, wood residues, defective components,&hellip;) are also considered outputs.', 'la metodolog&iacute;a did&aacute;ctica es el sistema con el que los maestros planifican sus clases, vali&eacute;ndose de distintas herramientas, para lograr que los alumnos alcancen los objetivos y competencias que se definen para cada nivel educativo.', 'The didactic methodology is the system with which teachers plan their classes, using different tools, to ensure that students achieve the objectives and competencies that are defined for each educational level.'),
(22, 'SERVICIOS 6', 'SERVICE SIX', 99, 'Nuestros textos son gratis y est&aacute;n dise&ntilde;ados por nivel de complejidad. Adem&aacute;s pueden descargarse en formato PDF. Si quieres aprender espa&ntilde;ol.', 'Our texts are free and are designed by level of complexity. They can also be downloaded in PDF format. If you want to learn spanish.', 'Jorge trat&oacute; de ser objetivo en sus comentarios&rdquo;. Para la filosof&iacute;a, objetivo es todo aquello que existe fuera del individuo, que tiene existencia real y concreta.', 'Jorge tried to be objective in his comments &rdquo;. For philosophy, objective is everything that exists outside the individual, which has a real and concrete existence.', 'tronco de madera (entrada), que lo troceamos y cortamos (tareas), para transformarlo en una mesa (salida). Los residuos que se generan en el proceso (serr&iacute;n, restos de madera, componentes defectuosos,&hellip;) se consideran tambi&eacute;n salidas.', 'log of wood (input), which we chop and cut (tasks), to transform it into a table (output). The residues that are generated in the process (sawdust, wood residues, defective components,&hellip;) are also considered outputs.', 'la metodolog&iacute;a did&aacute;ctica es el sistema con el que los maestros planifican sus clases, vali&eacute;ndose de distintas herramientas, para lograr que los alumnos alcancen los objetivos y competencias que se definen para cada nivel educativo.', 'The didactic methodology is the system with which teachers plan their classes, using different tools, to ensure that students achieve the objectives and competencies that are defined for each educational level.'),
(27, 'proyecto 7', 'proyecto 7', 99, 'proyecto 7proyecto 7', 'proyecto 7', '&lt;p&gt;proyecto 7&lt;/p&gt;', '&lt;p&gt;proyecto 7&lt;/p&gt;', '&lt;p&gt;proyecto 7&lt;/p&gt;', '&lt;p&gt;proyecto 7&lt;/p&gt;', '&lt;p&gt;proyecto 7&lt;/p&gt;', '&lt;p&gt;proyecto 7&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `serviciospic`
--

CREATE TABLE `serviciospic` (
  `id` int(11) NOT NULL,
  `producto` int(11) DEFAULT NULL,
  `alt` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99,
  `imagen` varchar(191) COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `serviciospic`
--

INSERT INTO `serviciospic` (`id`, `producto`, `alt`, `orden`, `imagen`, `detalle`) VALUES
(53, 18, NULL, 1, '495.png', NULL),
(55, 19, NULL, 1, '887.png', NULL),
(57, 18, NULL, 0, '736.png', NULL),
(58, 19, NULL, 0, '921.png', NULL),
(60, 20, NULL, 99, '459.png', NULL),
(61, 20, NULL, 99, '800.png', NULL),
(62, 20, NULL, 99, '539.png', NULL),
(63, 20, NULL, 99, '136.png', NULL),
(64, 21, NULL, 99, '795.png', NULL),
(65, 21, NULL, 99, '420.png', NULL),
(66, 21, NULL, 99, '625.png', NULL),
(67, 22, NULL, 99, '896.png', NULL),
(68, 22, NULL, 99, '651.png', NULL),
(69, 22, NULL, 99, '781.png', NULL),
(76, 17, NULL, 0, '680.png', NULL),
(77, 17, NULL, 1, '428.jpg', NULL),
(83, 27, NULL, 99, '363.jpg', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `id` int(10) NOT NULL,
  `categoria` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titulo` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `txt` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `txtdetalle` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `estatus` int(1) NOT NULL DEFAULT 0,
  `fecha` date DEFAULT NULL,
  `orden` int(2) DEFAULT 99,
  `imagen` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lat` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lon` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`id`, `categoria`, `titulo`, `txt`, `txtdetalle`, `estatus`, `fecha`, `orden`, `imagen`, `lat`, `lon`) VALUES
(1, NULL, 'Wozial', '<p>Probando</p>', NULL, 0, '2019-10-11', 99, '217932748.jpg', '20.667703809107746', '-103.34699871873852');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnologia`
--

CREATE TABLE `tecnologia` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99,
  `descripcion` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tecnologia`
--

INSERT INTO `tecnologia` (`id`, `titulo`, `orden`, `descripcion`) VALUES
(15, 'TECNOLOGIA 1', 99, 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Aperiam nostrum doloremque fugiat debitis! Accusamus labore deserunt ducimus dolorum nihil dolores temporibus, sit voluptates illo est quasi atque doloremque enim modi? Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ad voluptatum pariatur reprehenderit perspiciatis neque quaerat, quam totam delectus vero veritatis aliquam aut voluptas enim tempore eaque molestiae. Adipisci, esse quo. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut, praesentium aliquid. Nihil dolorem eligendi sequi quibusdam minus ea quis facere blanditiis, doloremque quam delectus reprehenderit saepe hic alias, mollitia rem?'),
(16, 'TECNOLOGIA 2', 99, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam, inventore, perferendis placeat dicta quae aliquid doloremque quas optio quod corporis molestias odio dignissimos odit eveniet accusamus voluptatum architecto assumenda minus!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tecnologiapic`
--

CREATE TABLE `tecnologiapic` (
  `id` int(11) NOT NULL,
  `producto` int(11) DEFAULT NULL,
  `alt` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) NOT NULL DEFAULT 99,
  `imagen` varchar(191) COLLATE utf8_spanish_ci DEFAULT NULL,
  `detalle` text COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tecnologiapic`
--

INSERT INTO `tecnologiapic` (`id`, `producto`, `alt`, `orden`, `imagen`, `detalle`) VALUES
(52, 15, 'ELECTRONICA (SMT Y ENSAMBLE)', 99, '701.png', NULL),
(53, 15, NULL, 99, '504.png', NULL),
(54, 15, NULL, 99, '874.png', NULL),
(55, 15, NULL, 99, '343.png', NULL),
(56, 15, NULL, 99, '138.png', NULL),
(57, 16, 'Tenologia universitaria', 99, '211.png', NULL),
(58, 16, NULL, 99, '688.png', NULL),
(59, 16, NULL, 99, '381.png', NULL),
(60, 16, NULL, 99, '545.png', NULL),
(61, 16, NULL, 99, '940.png', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE `testimonios` (
  `id` int(10) NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `txt` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `orden` int(2) DEFAULT 99
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`id`, `titulo`, `email`, `fecha`, `txt`, `imagen`, `orden`) VALUES
(1, 'Efra', 'ing_efrain@yahoo.com', '2019-10-12', '<p>Probando</p>', '705694155.jpg', 99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `user` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `pass` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `nivel` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `user`, `pass`, `fecha`, `nivel`) VALUES
(1, 'efra', '12eb5fef578326a527019871e4ca1c35', '2019-09-16 00:00:00', 2),
(24, 'rosi', '12eb5fef578326a527019871e4ca1c35', NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) NOT NULL,
  `nivel` int(1) NOT NULL DEFAULT 0,
  `distribuidor` int(1) NOT NULL DEFAULT 0,
  `alta` date DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `udate` timestamp NOT NULL DEFAULT current_timestamp(),
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `facebook` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pass` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `empresa` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rfc` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `calle` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `noexterior` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nointerior` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `entrecalles` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pais` varchar(100) COLLATE utf8_spanish_ci DEFAULT 'Mexico',
  `estado` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `municipio` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `colonia` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cp` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `calle2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `noexterior2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nointerior2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `entrecalles2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pais2` varchar(100) COLLATE utf8_spanish_ci DEFAULT 'Mexico',
  `estado2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `municipio2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `colonia2` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `cp2` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nivel`, `distribuidor`, `alta`, `fecha`, `udate`, `nombre`, `email`, `telefono`, `facebook`, `pass`, `empresa`, `rfc`, `calle`, `noexterior`, `nointerior`, `entrecalles`, `pais`, `estado`, `municipio`, `colonia`, `cp`, `calle2`, `noexterior2`, `nointerior2`, `entrecalles2`, `pais2`, `estado2`, `municipio2`, `colonia2`, `cp2`, `imagen`) VALUES
(1, 0, 0, '2019-10-31', '2020-05-21 02:49:06', '2021-03-29 17:34:34', 'Efra', 'ing_efrain@yahoo.com', '3314305376', NULL, '12eb5fef578326a527019871e4ca1c35', 'Wozial', 'GOME771206PJ9', 'Rio Juarez', '1906', 'L 43', 'Rio Medellin e Insurgentes', 'México', 'Jalisco', 'Guadalajara', 'El Rosario', '44898', NULL, NULL, NULL, NULL, 'Mexico', NULL, NULL, NULL, NULL, NULL),
(2, 0, 0, '2019-10-31', '2019-10-31 00:36:56', '2021-03-29 17:34:34', 'ROSA AURELIA', 'rosyreyess@hotmail.com', '3317114960', NULL, '12eb5fef578326a527019871e4ca1c35', 'Wozial', 'RESR720608', 'RIO ATOTNILCO', '1149', 'Rio Juarez 1906 int L 43', 'Autlán y Amealco', 'México', 'Jalisco', 'Guadalajara', 'Altas', '44898', NULL, NULL, NULL, NULL, 'Mexico', NULL, NULL, NULL, NULL, NULL),
(3, 0, 0, '2021-06-10', '2021-10-07 10:29:11', '2021-06-10 22:49:33', 'Gustavo', 'gustavojaimes1993@gmail.com', '5531160498', NULL, 'f2dbc7b4bbbf165698fc942364027139', 'wozial', '', 'jiji', '45', '', 'jojo', 'México', 'jalisco', 'tlaquepaque', 'juntas', '45590', NULL, NULL, NULL, NULL, 'Mexico', NULL, NULL, NULL, NULL, '202106149571674.png'),
(4, 0, 0, '2021-06-11', '2021-06-11 16:27:07', '2021-06-11 18:56:18', 'lizbeth', 'lix@hotmail.com', '4545454582', NULL, 'f2dbc7b4bbbf165698fc942364027139', NULL, NULL, NULL, NULL, NULL, NULL, 'Mexico', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mexico', NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `blogpic`
--
ALTER TABLE `blogpic`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calendario`
--
ALTER TABLE `calendario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `calendariopic`
--
ALTER TABLE `calendariopic`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carousel2`
--
ALTER TABLE `carousel2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cupones`
--
ALTER TABLE `cupones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galerias`
--
ALTER TABLE `galerias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `galeriaspic`
--
ALTER TABLE `galeriaspic`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `guias`
--
ALTER TABLE `guias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `guiaspic`
--
ALTER TABLE `guiaspic`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `industrias`
--
ALTER TABLE `industrias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `industriaspic`
--
ALTER TABLE `industriaspic`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ipn`
--
ALTER TABLE `ipn`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pedidosdetalle`
--
ALTER TABLE `pedidosdetalle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productoscat`
--
ALTER TABLE `productoscat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `productoscolor`
--
ALTER TABLE `productoscolor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `productosexistencias`
--
ALTER TABLE `productosexistencias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productosmarcas`
--
ALTER TABLE `productosmarcas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productospic`
--
ALTER TABLE `productospic`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productostalla`
--
ALTER TABLE `productostalla`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `productostallaclasif`
--
ALTER TABLE `productostallaclasif`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productostallarel`
--
ALTER TABLE `productostallarel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proyectospic`
--
ALTER TABLE `proyectospic`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `secciones`
--
ALTER TABLE `secciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccionesdetalle`
--
ALTER TABLE `seccionesdetalle`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `serviciospic`
--
ALTER TABLE `serviciospic`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tecnologia`
--
ALTER TABLE `tecnologia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tecnologiapic`
--
ALTER TABLE `tecnologiapic`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `blogpic`
--
ALTER TABLE `blogpic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `calendario`
--
ALTER TABLE `calendario`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `calendariopic`
--
ALTER TABLE `calendariopic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `carousel2`
--
ALTER TABLE `carousel2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `configuracion`
--
ALTER TABLE `configuracion`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cupones`
--
ALTER TABLE `cupones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `galerias`
--
ALTER TABLE `galerias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `galeriaspic`
--
ALTER TABLE `galeriaspic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `guias`
--
ALTER TABLE `guias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `guiaspic`
--
ALTER TABLE `guiaspic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `industrias`
--
ALTER TABLE `industrias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `industriaspic`
--
ALTER TABLE `industriaspic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `ipn`
--
ALTER TABLE `ipn`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `pedidosdetalle`
--
ALTER TABLE `pedidosdetalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `productoscat`
--
ALTER TABLE `productoscat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `productoscolor`
--
ALTER TABLE `productoscolor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `productosexistencias`
--
ALTER TABLE `productosexistencias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT de la tabla `productosmarcas`
--
ALTER TABLE `productosmarcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productospic`
--
ALTER TABLE `productospic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `productostalla`
--
ALTER TABLE `productostalla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `productostallaclasif`
--
ALTER TABLE `productostallaclasif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `productostallarel`
--
ALTER TABLE `productostallarel`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `proyectospic`
--
ALTER TABLE `proyectospic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `secciones`
--
ALTER TABLE `secciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `seccionesdetalle`
--
ALTER TABLE `seccionesdetalle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `serviciospic`
--
ALTER TABLE `serviciospic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tecnologia`
--
ALTER TABLE `tecnologia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `tecnologiapic`
--
ALTER TABLE `tecnologiapic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
