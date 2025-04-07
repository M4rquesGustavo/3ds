-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql303.infinityfree.com
-- Generation Time: Apr 07, 2025 at 10:46 AM
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
  MODIFY `id_morador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitante`
--
ALTER TABLE `visitante`
  MODIFY `id_visitante` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
