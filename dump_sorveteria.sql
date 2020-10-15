-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 14-Out-2020 às 18:25
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sorveteria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(90) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome`, `email`, `nascimento`) VALUES
(1, 'Ruan', 'ruan@live.com', '2002-09-24'),
(2, 'Fernando', 'fernando123@gmail.com', '2001-01-04'),
(3, 'Hernanes', 'h@hotmail.com', '1988-09-20'),
(4, 'Raul', 'raulr@gmail.com', '1999-02-22'),
(5, 'Filipe', 'felip1@uol.com', '1998-12-05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sorvete`
--

DROP TABLE IF EXISTS `sorvete`;
CREATE TABLE IF NOT EXISTS `sorvete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) DEFAULT NULL,
  `sabor` varchar(30) NOT NULL,
  `preco_unitario` decimal(5,2) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sorvete`
--

INSERT INTO `sorvete` (`id`, `tipo`, `sabor`, `preco_unitario`, `id_cliente`) VALUES
(1, 'sorvete de pote', 'napolitano', '4.50', 1),
(2, 'picolé', 'coco ralado', '1.30', 2),
(3, 'sorv massa', 'céu azul', '2.30', 4),
(4, 'sorv massa', 'chocolate', '2.40', 5),
(5, 'picolé', 'flocos', '1.44', 2),
(6, 'sorv massa', 'brigadeiro', '2.22', 3),
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
