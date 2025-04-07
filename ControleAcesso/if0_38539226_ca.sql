-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql303.infinityfree.com
-- Generation Time: Apr 07, 2025 at 11:16 AM
-- Server version: 10.6.19-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_38539226_ca`
--

-- --------------------------------------------------------

--
-- Table structure for table `morador`
--

CREATE TABLE `morador` (
  `nome` varchar(100) DEFAULT NULL,
  `cpf` int(100) DEFAULT NULL,
  `bloco` int(100) DEFAULT NULL,
  `apartamento` int(100) DEFAULT NULL,
  `telefoe` int(10) DEFAULT NULL,
  `id_morador` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `morador`
--

INSERT INTO `morador` (`nome`, `cpf`, `bloco`, `apartamento`, `telefoe`, `id_morador`) VALUES
('Talia Santana', 987654321, 1, 12, -1366, 1),
('Aurelio Duarte', 123456789, 1, 37, 3333, 2),
('Márcia Santos', 999888777, 2, 118, -2222, 3),
('Lucia Almeida', 333444555, 1, 71, 4454, 4),
('Carlos Andrade', 244477766, 2, 98, 2828, 5),
('Lilian Farias', 888222111, 2, 26, 845, 6);

-- --------------------------------------------------------

--
-- Table structure for table `visita`
--

CREATE TABLE `visita` (
  `data` int(11) DEFAULT NULL,
  `horario` int(11) DEFAULT NULL,
  `id_visitante` int(11) DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitante`
--

CREATE TABLE `visitante` (
  `nome` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `foto` varchar(25) DEFAULT NULL,
  `id_visitante` int(11) NOT NULL,
  `id_morador` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `morador`
--
ALTER TABLE `morador`
  ADD PRIMARY KEY (`id_morador`);

--
-- Indexes for table `visitante`
--
ALTER TABLE `visitante`
  ADD PRIMARY KEY (`id_visitante`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `morador`
--
ALTER TABLE `morador`
  MODIFY `id_morador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visitante`
--
ALTER TABLE `visitante`
  MODIFY `id_visitante` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
