-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04 Iul 2017 la 14:24
-- Versiune server: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `practica`
--

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `t_elevi`
--

CREATE TABLE `t_elevi` (
  `ID` int(200) NOT NULL,
  `Nume` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `t_materii`
--

CREATE TABLE `t_materii` (
  `ID` int(200) NOT NULL,
  `Nume` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `t_note`
--

CREATE TABLE `t_note` (
  `Elev_ID` int(200) NOT NULL,
  `Materie_ID` int(200) NOT NULL,
  `Nota` int(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `t_profesori`
--

CREATE TABLE `t_profesori` (
  `ID` int(200) NOT NULL,
  `Nume` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `t_profesormaterie`
--

CREATE TABLE `t_profesormaterie` (
  `Profesor_ID` int(200) NOT NULL,
  `Materie_ID` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_elevi`
--
ALTER TABLE `t_elevi`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_materii`
--
ALTER TABLE `t_materii`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_profesori`
--
ALTER TABLE `t_profesori`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
