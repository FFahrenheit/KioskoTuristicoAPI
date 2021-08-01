-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2021 at 05:24 PM
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
  `tipo` tinyint(1) NOT NULL,
  `estatus` tinyint(1) NOT NULL,
  `id_matriz` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kiosco`
--

INSERT INTO `kiosco` (`id_kiosco`, `id_linea`, `id_estacion`, `estacion`, `tipo`, `estatus`, `id_matriz`) VALUES
(1, 1, 0, 'Mirador', 0, 0, NULL),
(2, 1, 1, 'Huentitan', 0, 1, NULL),
(3, 1, 2, 'Zoologico', 0, 1, NULL),
(4, 1, 3, 'Independecia Norte', 0, 1, NULL),
(5, 1, 4, 'San Patricio', 0, 1, NULL),
(6, 1, 5, 'Igualdad', 0, 1, NULL),
(7, 1, 6, 'Monumental', 0, 1, NULL),
(8, 1, 7, 'Monte Olivette', 0, 1, NULL),
(9, 1, 8, 'Circunvalacion 2', 0, 1, NULL),
(10, 1, 9, 'Ciencias de la Salud', 1, 0, 5),
(11, 1, 10, 'Juan Alvarez', 0, 0, NULL),
(12, 1, 11, 'Alameda', 0, 0, NULL),
(13, 1, 12, 'San Juan de Dios', 1, 0, 9),
(14, 1, 13, 'Bicentenario', 0, 0, NULL),
(15, 1, 14, 'La Paz', 0, 0, NULL),
(16, 1, 15, 'Niños Heroes', 0, 0, NULL),
(17, 1, 16, 'Agua Azul', 1, 0, 13),
(18, 1, 17, 'Cipres', 0, 0, NULL),
(19, 1, 18, 'Heroe de Nacozari', 0, 0, NULL),
(20, 1, 19, 'Lazaro Cardenas', 0, 0, NULL),
(21, 1, 20, 'El Dean', 1, 0, 17),
(22, 1, 21, 'Zona Industrial', 0, 0, NULL),
(23, 1, 22, 'Lopez de Legazgi', 0, 0, NULL),
(24, 1, 23, 'Clemente Orozco', 0, 0, NULL),
(25, 1, 24, 'Artes Plasticas', 0, 0, NULL),
(26, 1, 25, 'Escultura', 0, 0, NULL),
(27, 1, 26, 'Fray Angelico', 0, 0, NULL),
(28, 2, 0, 'Central Sur', 0, 0, NULL),
(29, 2, 1, 'Concentro', 0, 0, NULL),
(30, 2, 2, 'Jardines de la Paz', 0, 0, NULL),
(31, 2, 3, 'Panamericana', 0, 0, NULL),
(32, 2, 4, 'Juan Palomar', 0, 0, NULL),
(33, 2, 5, 'Seminario', 1, 0, 6),
(34, 2, 6, 'Camara de Comercio', 0, 0, NULL),
(35, 2, 7, 'Minerva', 0, 0, NULL),
(36, 2, 8, 'Centro Magno', 0, 0, NULL),
(37, 2, 9, 'Americas', 1, 0, 7),
(38, 2, 10, 'Chapultepec', 0, 0, NULL),
(39, 2, 11, 'Paraninfo', 0, 0, NULL),
(40, 2, 12, 'Juarez', 1, 0, 8),
(41, 2, 13, 'Plaza Universida', 0, 0, NULL),
(42, 2, 14, 'San Juan de Dios', 1, 0, 9),
(43, 2, 15, 'Belisario Domingez', 0, 0, NULL),
(44, 2, 16, 'Oblatos 2', 0, 0, NULL),
(45, 2, 17, 'Cristobal de Oñate', 0, 0, NULL),
(46, 2, 18, 'San Andres', 0, 0, NULL),
(47, 2, 19, 'San Jacinto', 0, 0, NULL),
(48, 2, 20, 'La Aurora', 0, 0, NULL),
(49, 2, 21, 'Tetlan', 0, 0, NULL),
(50, 3, 0, 'Periferico Norte', 0, 0, NULL),
(51, 3, 1, 'Dermatologico', 0, 0, NULL),
(52, 3, 2, 'Atemajac', 0, 0, NULL),
(53, 3, 3, 'Division del Norte', 1, 0, 3),
(54, 3, 4, 'Avila Camacho', 0, 0, NULL),
(55, 3, 5, 'Mezquitan', 1, 0, 4),
(56, 3, 6, 'Refugio', 0, 0, NULL),
(57, 3, 7, 'Juarez', 1, 0, 8),
(58, 3, 8, 'Mexicaltzingo', 0, 0, NULL),
(59, 3, 9, 'Washington', 1, 0, 12),
(60, 3, 10, 'Santa Filomena', 0, 0, NULL),
(61, 3, 11, 'Unidad Deportiva', 1, 0, 16),
(62, 3, 12, 'Urdaneta', 0, 0, NULL),
(63, 3, 13, '19 de Marzo', 0, 0, NULL),
(64, 3, 14, 'Isla Raza', 0, 0, NULL),
(65, 3, 15, 'Patria Sur', 0, 0, NULL),
(66, 3, 16, 'España', 0, 0, NULL),
(67, 3, 17, 'Tesoro', 0, 0, NULL),
(68, 3, 18, 'Periferico Sur', 0, 0, NULL),
(69, 4, 0, 'Basilica', 0, 0, NULL),
(70, 4, 1, 'Sanatorio', 0, 0, NULL),
(71, 4, 2, 'Colegio Victoria', 0, 0, NULL),
(72, 4, 3, 'Plaza Patria', 1, 0, 1),
(73, 4, 4, 'Country  Club', 0, 0, NULL),
(74, 4, 5, 'Colon', 1, 0, 2),
(75, 4, 6, 'Lienzo Charro', 0, 0, NULL),
(76, 4, 7, 'Mezquitan', 1, 0, 4),
(77, 4, 8, 'Panteon de Belen', 0, 0, NULL),
(78, 4, 9, 'Procuraduria', 0, 0, NULL),
(79, 4, 10, 'Ciencias de la Salud', 1, 0, 5),
(80, 4, 11, 'Obrero', 0, 0, NULL),
(81, 4, 12, 'Talpita', 0, 0, NULL),
(82, 4, 13, 'El Jaraz', 0, 0, NULL),
(83, 4, 14, 'Plutarco Elias Calles', 0, 0, NULL),
(84, 4, 15, 'Haciendas', 0, 0, NULL),
(85, 4, 16, 'Oblatos 1', 0, 0, NULL),
(86, 4, 17, 'Bethel', 0, 0, NULL),
(87, 5, 0, 'San Isidro', 0, 0, NULL),
(88, 5, 1, 'CUCEA', 0, 0, NULL),
(89, 5, 2, 'Parque', 0, 0, NULL),
(90, 5, 3, 'Seatle', 0, 0, NULL),
(91, 5, 4, 'Zoquipan', 1, 0, 0),
(92, 5, 5, 'Plaza Patria', 1, 0, 1),
(93, 5, 6, 'Colomos', 0, 0, NULL),
(94, 5, 7, 'Plaza Pabellon', 0, 0, NULL),
(95, 5, 8, 'San Javier', 0, 0, NULL),
(96, 5, 9, '3 de Marzo', 0, 0, NULL),
(97, 5, 10, 'Jardines Universidad', 0, 0, NULL),
(98, 5, 11, 'Ferroccarril', 0, 0, NULL),
(99, 5, 12, 'Seminario', 1, 0, 6),
(100, 5, 13, 'La Gran Plaza', 0, 0, NULL),
(101, 5, 14, 'San Ignacio', 0, 0, NULL),
(102, 5, 15, 'Estampida', 1, 0, 10),
(103, 5, 16, 'Chapalita', 0, 0, NULL),
(104, 5, 17, 'Abastos', 1, 0, 15),
(105, 5, 18, 'Mandarina', 0, 0, NULL),
(106, 5, 19, 'Ruiseñor', 0, 0, NULL),
(107, 5, 20, 'Unidad Deportiva', 1, 0, 16),
(108, 5, 21, 'Plaza las Torres', 0, 0, NULL),
(109, 5, 22, 'Cristo Rey', 0, 0, NULL),
(110, 5, 23, 'El Dean', 1, 0, 17),
(111, 5, 24, 'Nogalera', 0, 0, NULL),
(112, 5, 25, 'Alamo', 0, 0, NULL),
(113, 5, 26, 'Textiles', 0, 0, NULL),
(114, 6, 0, 'Tabachines', 0, 0, NULL),
(115, 6, 1, 'Centrol Cultural', 0, 0, NULL),
(116, 6, 2, 'Zoquipan', 1, 0, 0),
(117, 6, 3, 'Patria', 0, 0, NULL),
(118, 6, 4, 'Division del Norte', 1, 0, 3),
(119, 6, 5, 'Lomas', 0, 0, NULL),
(120, 6, 6, 'Plan de San Luis', 0, 0, NULL),
(121, 6, 7, 'Colon', 1, 0, 2),
(122, 6, 8, 'Jose Maria Vigil', 0, 0, NULL),
(123, 6, 9, 'Zarco', 0, 0, NULL),
(124, 6, 10, 'Avenida Mexico', 0, 0, NULL),
(125, 6, 11, 'Ladron de Guevara', 0, 0, NULL),
(126, 6, 12, 'Americas', 1, 0, 7),
(127, 6, 13, 'Lafayette', 0, 0, NULL),
(128, 6, 14, 'Monumento', 1, 0, 11),
(129, 6, 15, 'Santa Eduwiges', 0, 0, NULL),
(130, 6, 16, 'Dia', 0, 0, NULL),
(131, 6, 17, 'Abastos', 1, 0, 15),
(132, 6, 18, 'Parque de las Estrellas', 0, 0, NULL),
(133, 6, 19, 'Expo', 0, 0, NULL),
(134, 6, 20, 'Plaza del Sol', 0, 0, NULL),
(135, 7, 0, 'Arco del Triunfo', 0, 0, NULL),
(136, 7, 1, 'Belenes', 0, 0, NULL),
(137, 7, 2, 'Mercado del Mar', 0, 0, NULL),
(138, 7, 3, 'Zapopan Centro', 0, 0, NULL),
(139, 7, 4, 'Plaza Patria', 1, 0, 1),
(140, 7, 5, 'Circunvalacion', 0, 0, NULL),
(141, 7, 6, 'Division del Norte', 1, 0, 3),
(142, 7, 7, 'Normal', 0, 0, NULL),
(143, 7, 8, 'Santuario', 0, 0, NULL),
(144, 7, 9, 'San Juan de Dios', 1, 0, 9),
(145, 7, 10, 'Independencia Sur', 0, 0, NULL),
(146, 7, 11, 'Plaza de la Bandera', 0, 0, NULL),
(147, 7, 12, 'CUCEI', 1, 0, 14),
(148, 7, 13, 'Plaza Revolucion', 0, 0, NULL),
(149, 7, 14, 'Rio Nilo', 0, 0, NULL),
(150, 7, 15, 'Tlaquepaque Centro', 0, 0, NULL),
(151, 7, 16, 'Nodo Revolucion', 0, 0, NULL),
(152, 7, 17, 'Central Camionera', 0, 0, NULL),
(153, 8, 0, 'Metropolitano', 0, 0, NULL),
(154, 8, 1, 'La Estancia', 0, 0, NULL),
(155, 8, 2, 'Guadalupe', 0, 0, NULL),
(156, 8, 3, 'UNIVA', 0, 0, NULL),
(157, 8, 4, 'Juan Diego', 0, 0, NULL),
(158, 8, 5, 'Estampida', 1, 0, 10),
(159, 8, 6, 'Inglaterra', 0, 0, NULL),
(160, 8, 7, 'Embajada', 0, 0, NULL),
(161, 8, 8, 'Monumento', 1, 0, 11),
(162, 8, 9, 'Argentina', 0, 0, NULL),
(163, 8, 10, 'Washington', 1, 0, 12),
(164, 8, 11, 'Agua Azul', 1, 0, 13),
(165, 8, 12, 'Gonzalez Gallo', 0, 0, NULL),
(166, 8, 13, 'CUCEI', 1, 0, 14),
(167, 8, 14, 'Medrano', 0, 0, NULL),
(168, 8, 15, 'San Rafael', 0, 0, NULL),
(169, 8, 16, 'Poetas', 0, 0, NULL);

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
(5, 'Estadio JAL', 7),
(6, 'Plaza de Toros Nuevo Progreso', 7),
(7, 'Facultad de Medicina', 10),
(8, 'Mercado de San Juan de Dios', 13),
(9, 'Teatro Degollado', 13),
(10, 'Catedral Metropolitana', 13),
(11, 'Museo Regional', 13),
(12, 'Plaza de la Liberacion', 13),
(13, 'Hospicio Cabañas', 13),
(14, 'Plaza de los Hombres Ilustres', 13),
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
(78, 'U CUCEI', 147),
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
(90, 'U CUCEI', 166),
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
  MODIFY `id_puntos_de_interes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

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
