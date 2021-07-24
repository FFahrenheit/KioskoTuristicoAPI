-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2021 at 02:13 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kioscoturistico`
--

-- --------------------------------------------------------

--
-- Table structure for table `kiosco`
--

CREATE TABLE `kiosco` (
  `id_kiosco` int(11) NOT NULL,
  `id_linea` int(11) NOT NULL,
  `id_estacion` int(11) NOT NULL,
  `estacion` varchar(100) NOT NULL,
  `tipo` bit(1) NOT NULL,
  `estatus` bit(1) NOT NULL,
  `id_matriz` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kiosco`
--

INSERT INTO `kiosco` (`id_kiosco`, `id_linea`, `id_estacion`, `estacion`, `tipo`, `estatus`, `id_matriz`) VALUES
(1, 1, 0, 'Mirador', b'0', b'0', NULL),
(2, 1, 1, 'Huentitan', b'0', b'0', NULL),
(3, 1, 2, 'Zoologico', b'0', b'0', NULL),
(4, 1, 3, 'Independecia Norte', b'0', b'0', NULL),
(5, 1, 4, 'San Patricio', b'0', b'0', NULL),
(6, 1, 5, 'Igualdad', b'0', b'0', NULL),
(7, 1, 6, 'Monumental', b'0', b'0', NULL),
(8, 1, 7, 'Monte Olivette', b'0', b'0', NULL),
(9, 1, 8, 'Circunvalacion 2', b'0', b'0', NULL),
(10, 1, 9, 'Fac. Medicina', b'1', b'0', 5),
(11, 1, 10, 'Juan Alvarez', b'0', b'0', NULL),
(12, 1, 11, 'Alameda', b'0', b'0', NULL),
(13, 1, 12, 'San Juan de Dios', b'1', b'0', 9),
(14, 1, 13, 'Bicentenario', b'0', b'0', NULL),
(15, 1, 14, 'La Paz', b'0', b'0', NULL),
(16, 1, 15, 'Niños Heroes', b'0', b'0', NULL),
(17, 1, 16, 'Agua Azul', b'1', b'0', 13),
(18, 1, 17, 'Cipres', b'0', b'0', NULL),
(19, 1, 18, 'Heroe de Nacozari', b'0', b'0', NULL),
(20, 1, 19, 'Lazaro Cardenas', b'0', b'0', NULL),
(21, 1, 20, 'El Dean', b'1', b'0', 17),
(22, 1, 21, 'Zona Industrial', b'0', b'0', NULL),
(23, 1, 23, 'Lopez de Legazgi', b'0', b'0', NULL),
(24, 1, 24, 'Clemente Orozco', b'0', b'0', NULL),
(25, 1, 25, 'Artes Plasticas', b'0', b'0', NULL),
(26, 1, 26, 'Escultura', b'0', b'0', NULL),
(27, 1, 27, 'Fray Angelico', b'0', b'0', NULL),
(28, 2, 0, 'Central Sur', b'0', b'0', NULL),
(29, 2, 1, 'Concentro', b'0', b'0', NULL),
(30, 2, 2, 'Jardines de la Paz', b'0', b'0', NULL),
(31, 2, 3, 'Panamericana', b'0', b'0', NULL),
(32, 2, 4, 'Juan Palomar', b'0', b'0', NULL),
(33, 2, 5, 'Seminario', b'1', b'0', 6),
(34, 2, 6, 'Camara de Comercio', b'0', b'0', NULL),
(35, 2, 7, 'Minerva', b'0', b'0', NULL),
(36, 2, 8, 'Centro Magno', b'0', b'0', NULL),
(37, 2, 9, 'Americas', b'1', b'0', 7),
(38, 2, 10, 'Chapultepec', b'0', b'0', NULL),
(39, 2, 11, 'Paraninfo', b'0', b'0', NULL),
(40, 2, 12, 'Juarez', b'1', b'0', 8),
(41, 2, 13, 'Plaza Universida', b'0', b'0', NULL),
(42, 2, 14, 'San Juan de Dios', b'1', b'0', 9),
(43, 2, 15, 'Belisario Domingez', b'0', b'0', NULL),
(44, 2, 16, 'Oblatos 2', b'0', b'0', NULL),
(45, 2, 17, 'Cristobal de Oñate', b'0', b'0', NULL),
(46, 2, 18, 'San Andres', b'0', b'0', NULL),
(47, 2, 19, 'San Jacinto', b'0', b'0', NULL),
(48, 2, 20, 'La Aurora', b'0', b'0', NULL),
(49, 2, 21, 'Tetlan', b'0', b'0', NULL),
(50, 3, 0, 'Periferico Norte', b'0', b'0', NULL),
(51, 3, 1, 'Dermatologico', b'0', b'0', NULL),
(52, 3, 2, 'Atemajac', b'0', b'0', NULL),
(53, 3, 3, 'Division del Norte', b'1', b'0', 3),
(54, 3, 4, 'Avila Camacho', b'0', b'0', NULL),
(55, 3, 5, 'Mezquitan', b'1', b'0', 4),
(56, 3, 6, 'Refugio', b'0', b'0', NULL),
(57, 3, 7, 'Juarez', b'1', b'0', 8),
(58, 3, 8, 'Mexicaltzingo', b'0', b'0', NULL),
(59, 3, 9, 'Washington', b'1', b'0', 12),
(60, 3, 10, 'Santa Filomena', b'0', b'0', NULL),
(61, 3, 11, 'Unidad Deportiva', b'1', b'0', 16),
(62, 3, 12, 'Urdaneta', b'0', b'0', NULL),
(63, 3, 13, '18 de Marzo', b'0', b'0', NULL),
(64, 3, 14, 'Isla Raza', b'0', b'0', NULL),
(65, 3, 15, 'Patria Sur', b'0', b'0', NULL),
(66, 3, 16, 'España', b'0', b'0', NULL),
(67, 3, 17, 'Tesoro', b'0', b'0', NULL),
(68, 3, 18, 'Periferico Sur', b'0', b'0', NULL),
(69, 4, 0, 'Basilica', b'0', b'0', NULL),
(70, 4, 1, 'Sanatorio', b'0', b'0', NULL),
(71, 4, 2, 'Colegio Victoria', b'0', b'0', NULL),
(72, 4, 3, 'Plaza Patria', b'1', b'0', 1),
(73, 4, 4, 'Country  Club', b'0', b'0', NULL),
(74, 4, 5, 'Colon', b'1', b'0', 2),
(75, 4, 6, 'Lienzo Charro', b'0', b'0', NULL),
(76, 4, 7, 'Mezquitan', b'1', b'0', 4),
(77, 4, 8, 'Panteon de Belen', b'0', b'0', NULL),
(78, 4, 9, 'Procuraduria', b'0', b'0', NULL),
(79, 4, 10, 'Fac. Medicina', b'1', b'0', 5),
(80, 4, 11, 'Obrero', b'0', b'0', NULL),
(81, 4, 12, 'Talpita', b'0', b'0', NULL),
(82, 4, 13, 'El Jaraz', b'0', b'0', NULL),
(83, 4, 14, 'Plutarco Elias Calles', b'0', b'0', NULL),
(84, 4, 15, 'Haciendas', b'0', b'0', NULL),
(85, 4, 16, 'Oblatos 1', b'0', b'0', NULL),
(86, 4, 17, 'Bethel', b'0', b'0', NULL),
(87, 5, 0, 'San Isidro', b'0', b'0', NULL),
(88, 5, 1, 'CUCEA', b'0', b'0', NULL),
(89, 5, 2, 'Parque', b'0', b'0', NULL),
(90, 5, 3, 'Seatle', b'0', b'0', NULL),
(91, 5, 4, 'Zoquipan', b'1', b'0', 0),
(92, 5, 5, 'Plaza Patria', b'1', b'0', 1),
(93, 5, 6, 'Colomos', b'0', b'0', NULL),
(94, 5, 7, 'Plaza Pabellon', b'0', b'0', NULL),
(95, 5, 8, 'San Javier', b'0', b'0', NULL),
(96, 5, 9, '3 de Marzo', b'0', b'0', NULL),
(97, 5, 10, 'Jardines Universidad', b'0', b'0', NULL),
(98, 5, 11, 'Ferroccarril', b'0', b'0', NULL),
(99, 5, 12, 'Seminario', b'1', b'0', 6),
(100, 5, 13, 'La Gran Plaza', b'0', b'0', NULL),
(101, 5, 14, 'San Ignacio', b'0', b'0', NULL),
(102, 5, 15, 'Estampida', b'1', b'0', 10),
(103, 5, 16, 'Chapalita', b'0', b'0', NULL),
(104, 5, 17, 'Abastos', b'1', b'0', 15),
(105, 5, 18, 'Mandarina', b'0', b'0', NULL),
(106, 5, 19, 'Ruiseñor', b'0', b'0', NULL),
(107, 5, 20, 'Unidad Deportiva', b'1', b'0', 16),
(108, 5, 21, 'Plaza las Torres', b'0', b'0', NULL),
(109, 5, 22, 'Cristo Rey', b'0', b'0', NULL),
(110, 5, 23, 'El Dean', b'1', b'0', 17),
(111, 5, 24, 'Nogalera', b'0', b'0', NULL),
(112, 5, 25, 'Alamo', b'0', b'0', NULL),
(113, 5, 26, 'Textiles', b'0', b'0', NULL),
(114, 6, 0, 'Tabachines', b'0', b'0', NULL),
(115, 6, 1, 'Centrol Cultural', b'0', b'0', NULL),
(116, 6, 2, 'Zoquipan', b'1', b'0', 0),
(117, 6, 3, 'Patria', b'0', b'0', NULL),
(118, 6, 4, 'Division del Norte', b'1', b'0', 3),
(119, 6, 5, 'Lomas', b'0', b'0', NULL),
(120, 6, 6, 'Plan de San Luis', b'0', b'0', NULL),
(121, 6, 7, 'Colon', b'1', b'0', 2),
(122, 6, 8, 'Jose Maria Vigil', b'0', b'0', NULL),
(123, 6, 9, 'Zarco', b'0', b'0', NULL),
(124, 6, 10, 'Avenida Mexico', b'0', b'0', NULL),
(125, 6, 11, 'Ladron de Guevara', b'0', b'0', NULL),
(126, 6, 12, 'Americas', b'1', b'0', 7),
(127, 6, 13, 'Lafayette', b'0', b'0', NULL),
(128, 6, 14, 'Monumento', b'1', b'0', 11),
(129, 6, 15, 'Santa Eduwiges', b'0', b'0', NULL),
(130, 6, 16, 'Dia', b'0', b'0', NULL),
(131, 6, 17, 'Abastos', b'1', b'0', 15),
(132, 6, 18, 'Parque de las Estrellas', b'0', b'0', NULL),
(133, 6, 19, 'Expo', b'0', b'0', NULL),
(134, 6, 20, 'Plaza del Sol', b'0', b'0', NULL),
(135, 7, 0, 'Arco del Triunfo', b'0', b'0', NULL),
(136, 7, 1, 'Belenes', b'0', b'0', NULL),
(137, 7, 2, 'Mercado del Mar', b'0', b'0', NULL),
(138, 7, 3, 'Zapopan Centro', b'0', b'0', NULL),
(139, 7, 4, 'Plaza Patria', b'1', b'0', 1),
(140, 7, 5, 'Circunvalacion', b'0', b'0', NULL),
(141, 7, 6, 'Division del Norte', b'1', b'0', 3),
(142, 7, 7, 'Normal', b'0', b'0', NULL),
(143, 7, 8, 'Santuario', b'0', b'0', NULL),
(144, 7, 9, 'San Juan de Dios', b'1', b'0', 9),
(145, 7, 10, 'Independencia Sur', b'0', b'0', NULL),
(146, 7, 11, 'Plaza de la Bandera', b'0', b'0', NULL),
(147, 7, 12, 'CUCEI', b'1', b'0', 14),
(148, 7, 13, 'Plaza Revolucion', b'0', b'0', NULL),
(149, 7, 14, 'Rio Nilo', b'0', b'0', NULL),
(150, 7, 15, 'Tlaquepaque Centro', b'0', b'0', NULL),
(151, 7, 16, 'Nodo Revolucion', b'0', b'0', NULL),
(152, 7, 17, 'Central Camionera', b'0', b'0', NULL),
(153, 8, 0, 'Metropolitano', b'0', b'0', NULL),
(154, 8, 1, 'La Estancia', b'0', b'0', NULL),
(155, 8, 2, 'Guadalupe', b'0', b'0', NULL),
(156, 8, 3, 'UNIVA', b'0', b'0', NULL),
(157, 8, 4, 'Juan Diego', b'0', b'0', NULL),
(158, 8, 5, 'Estampida', b'1', b'0', 10),
(159, 8, 6, 'Inglaterra', b'0', b'0', NULL),
(160, 8, 7, 'Embajada', b'0', b'0', NULL),
(161, 8, 8, 'Monumento', b'1', b'0', 11),
(162, 8, 9, 'Argentina', b'0', b'0', NULL),
(163, 8, 10, 'Washington', b'1', b'0', 12),
(164, 8, 11, 'Agua Azul', b'1', b'0', 13),
(165, 8, 12, 'Gonzalez Gallo', b'0', b'0', NULL),
(166, 8, 13, 'CUCEI', b'1', b'0', 14),
(167, 8, 14, 'Medrano', b'0', b'0', NULL),
(168, 8, 15, 'San Rafael', b'0', b'0', NULL),
(169, 8, 16, 'Poetas', b'0', b'0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `puntos_de_interes`
--

CREATE TABLE `puntos_de_interes` (
  `id_puntos_de_interes` int(11) NOT NULL,
  `punto_de_interes` varchar(200) DEFAULT NULL,
  `id_kiosco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `puntos_de_interes`
--

INSERT INTO `puntos_de_interes` (`id_puntos_de_interes`, `punto_de_interes`, `id_kiosco`) VALUES
(1, 'Mirador', 1),
(2, 'Zoologico', 3),
(3, 'Selva Magica', 3),
(4, 'Planetario Severo Diaz Galindo', 3),
(5, 'Estadio Jalisco', 7),
(6, 'Plaza de Toros Nuevo Progreso', 7),
(7, 'Facultad de Medicina', 10),
(8, 'Mercado de San Juan de Dios', 11),
(9, 'Teatro Degollado', 11),
(10, 'Catedral Metropolitana', 11),
(11, 'Museo Regional', 11),
(12, 'Plaza de la Liberacion', 11),
(13, 'Hospicio Cabañas', 11),
(14, 'Plaza de los Hombres Ilustres', 11),
(15, 'Parque Agua Azul', 17),
(16, 'Teatro IMSS', 17),
(17, 'Central de Autobuses de Zapopan', 28),
(18, 'Universidad Panamericana', 31),
(19, 'Camara de Comercio', 34),
(20, 'Fuente Minerva', 35),
(21, 'Plaza Comercial Centro Magno', 36),
(22, 'Zona Rosa', 38),
(23, 'Via Recreativa', 38),
(24, 'Paraninfo UdeG', 39),
(25, 'Rectoria UdeG', 39),
(26, 'Parque Revolucion', 40),
(27, 'Zona Comercial Peatonal', 41),
(28, 'Fiestas de Octubre', 50),
(29, 'Centro Dermatologico', 51),
(30, 'Templo del Refugio', 56),
(31, 'Unidad Deportiva Adolfo Lopez Mateos', 61),
(32, 'El cerro del Tesoro', 67),
(33, 'Centro Comercial Plaza Sur', 68),
(34, 'Basilica de Zapopan', 69),
(35, 'Sanatorio San Juan de Dios', 70),
(36, 'Centro Comercial Plaza Patria', 72),
(37, 'Club de Golf Country Club', 73),
(38, 'Monumento a Cristóbal Colon', 74),
(39, 'Lienzo Charro Hermanos Zermeno', 75),
(40, 'Panteon de Belen', 77),
(41, 'Mercado de Artesanias', 81),
(42, 'Centro Comercial Plaza San Isidro', 87),
(43, 'Centro Universitario de Ciencias Economico Administrativas', 88),
(44, 'Parque Zapopan', 89),
(45, 'Centro Comercial Plaza Patria', 92),
(46, 'Parque Los Colomos', 93),
(47, 'Club Atlas Colomos', 93),
(48, 'Centro de Enseñanza Tecnica Industrial (CETI)', 93),
(49, 'Lienzo Charro La Tapatia', 93),
(50, 'Centro Comercial Plaza Pabellon', 94),
(51, 'Centro Comercial Andares', 94),
(52, 'Estadio de Futbol 3 de Marzo', 96),
(53, 'Universidad  Autonoma de Guadalajara', 96),
(54, 'Centro Comercial La Gran Plaza', 100),
(55, 'Mercado de Abastos', 104),
(56, 'Centro Comercial Plaza las Torres', 108),
(57, 'Iglesia Cristo Rey', 109),
(58, 'Estacion del tren \"Tequila Express\"', 109),
(59, 'Zona Industrial La Nogalera', 111),
(60, 'Centro Cultural Tabachines', 115),
(61, 'Monumento a los Niños Heroes', 128),
(62, 'Centro de Exposiciones', 133),
(63, 'Centro Comercial Plaza del Sol', 134),
(64, 'Biblioteca Juan Jose Arreola', 136),
(65, 'Centro de Artes Escenicas', 136),
(66, 'CUCEA', 136),
(67, 'Mercado del Mar', 137),
(68, 'Basilica de Zapopan', 138),
(69, 'Centro Comercial Plaza Patria', 139),
(70, 'Mercado de San Juan de Dios', 144),
(71, 'Teatro Degollado', 144),
(72, 'Catedral Metropolitana', 144),
(73, 'Museo Regional', 144),
(74, 'Plaza de la Liberacion', 144),
(75, 'Hospicio Cabañas', 144),
(76, 'Plaza de los Hombres Ilustres', 144),
(77, 'Coliseo Olimpico', 147),
(78, 'Alberca Olimpica', 147),
(79, 'Centro Comercial Forum Tlaquepaque', 147),
(80, 'Parian', 150),
(81, 'Centro Cultural El Refugio', 150),
(82, 'Museo Regional de la Ceramica', 150),
(83, 'Parque Metropolitano', 153),
(84, 'Centro Acuatico', 153),
(85, 'Glorieta de la Estampida', 158),
(86, 'Puente Matute Remus', 158),
(87, 'Embajada Americana', 160),
(88, 'Monumento a los Niños Heroes', 161),
(89, 'Coliseo Olimpico', 166),
(90, 'Alberca Olimpica', 166),
(91, 'Centro Comercial Forum Tlaquepaque', 166),
(92, 'Parque San Rafael', 168);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kiosco`
--
ALTER TABLE `kiosco`
  ADD PRIMARY KEY (`id_kiosco`);

--
-- Indexes for table `puntos_de_interes`
--
ALTER TABLE `puntos_de_interes`
  ADD PRIMARY KEY (`id_puntos_de_interes`),
  ADD KEY `id_kiosco` (`id_kiosco`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kiosco`
--
ALTER TABLE `kiosco`
  MODIFY `id_kiosco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `puntos_de_interes`
--
ALTER TABLE `puntos_de_interes`
  MODIFY `id_puntos_de_interes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `puntos_de_interes`
--
ALTER TABLE `puntos_de_interes`
  ADD CONSTRAINT `puntos_de_interes_ibfk_1` FOREIGN KEY (`id_kiosco`) REFERENCES `kiosco` (`id_kiosco`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
