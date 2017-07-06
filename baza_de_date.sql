-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 Iul 2017 la 00:39
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
  `Nume` text NOT NULL,
  `Prenume` text NOT NULL,
  `Adresa` text NOT NULL,
  `Telefon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `t_elevi`
--

INSERT INTO `t_elevi` (`ID`, `Nume`, `Prenume`, `Adresa`, `Telefon`) VALUES
(1, 'Mihail', 'Emilia', '2404 Confederate Drive', '07700900475'),
(2, 'Ianculescu', 'Eugenia', '1031 Emerson Road', '07700 900152'),
(3, 'Urzica', 'Ionel', '154 Eden Drive', '07700 900680'),
(4, 'Istrati', 'Georgiana', '1762 Anthony Avenue', '07700 900696'),
(5, 'Vasile', 'Stefan', '4709 Roguski Road', '07700 900848'),
(6, 'Pop', 'Anatolie', '2082 Pooh Bear Lane', '07700 900752'),
(7, 'Marin', 'Sonia', '3234 Quincy Street', '0141 496 0196'),
(8, 'Iliescu', 'Felicia', '1401 Lilac Lane', '029 2018 0442'),
(9, 'Alexandrescu', 'Iulian', '497 Nickel Road', '0121 496 0690'),
(10, 'Fidatov', 'Valerian', '3319 Francis Mine', '0114 496 0718'),
(11, 'Cocis', 'Iuliu', '4131 Timbercrest Road', '0117 496 0254'),
(12, 'Stefanescu', 'Cecilia', '1538 Webster Street', '0191 498 0092'),
(13, 'Nicolae', 'Horia', '3693 Red Hawk Road', '0131 496 0526'),
(14, 'Teodorescu', 'Natalia', '763 River Road', '029 2018 0822'),
(15, 'Vladimirescu', 'Adelina', '2124 Walt Nuzum Farm Road', '0151 496 0268'),
(16, 'Muresanu', 'Aurel', '3441 Heliport Loop', '020 7946 0753'),
(17, 'Negrescu', 'Valentina', '2687 Prudence Street', '020 7946 0831'),
(18, 'Puscas', 'Miron', '693 Lighthouse Drive', '020 7946 0537'),
(19, 'Ionescu', 'Marina', '4707 Eagle Drive', '0161 496 0488'),
(20, 'Savu', 'Vasilica', '1600 Hayhurst Lane', '0118 496 0741'),
(21, 'Iordache', 'Bianca', '4236 Brooklyn Street', '0151 496 0606'),
(22, 'Tilea', 'Laurensiu', '4257 Wescam Court', '0115 496 0734'),
(23, 'Georghiou', 'Tiberiu', '919 Francis Mine', '0114 496 0706'),
(24, 'Dragan', 'Ecaterina', '4911 Snowbird Lane', '0115 496 0144'),
(25, 'Ceausescu', 'Dinu', '856 Flynn Street', '0117 496 0739'),
(26, 'Nistor', 'Daniel', '649 Prospect Street', '0116 496 0743'),
(27, 'Raducan', 'Madalina', '566 Austin Secret Lane', '0191 498 0578'),
(28, 'Vasilescu', 'Diana', '377 Barfield Lane', '0141 496 0196');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `t_materii`
--

CREATE TABLE `t_materii` (
  `ID` int(200) NOT NULL,
  `Nume` text NOT NULL,
  `Ore` tinyint(200) NOT NULL,
  `Descriere` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `t_materii`
--

INSERT INTO `t_materii` (`ID`, `Nume`, `Ore`, `Descriere`) VALUES
(5, 'Limba Romana', 3, 'Disciplina Limba si literatura romana are un rol deosebit de important in formarea personalitaii\r\nelevilor, in formarea unor deprinderi si abilitati necesare pentru a le asigura accesul postscolar la invatarea pe toata durata vietii si integrarea activa intr-o societate bazata pe cunoastere. '),
(6, 'Matematica', 4, 'Matematica este in general definita ca stiinta ce studiaza relatiile cantitative, modelele de structura, de schimbare si de spatiu. In sens modern, matematica este investigarea structurilor abstracte definite in mod axiomatic folosind logica formala.'),
(7, 'Istorie', 2, 'Istoria este stiinta care studiaza evolutia societatii omenesti din trecut pana in prezent. Obiectul istoriei nu se limiteaza doar la evenimentele politice, cum ar fi de exemplu bataliile sau faptele conducatorilor. El cuprinde si aspectele economice, sociale si culturale (uneltele, ocupatiile si organizarea oamenilor, creatiile artistice si credintele religioase, viata de zi cu zi etc.).'),
(10, 'Informatica', 3, 'Informatica desemneaza stiinta procesarii sistematice a informatiei, in special a procesarii cu ajutorul calculatoarelor. Termenul englezesc corespunz?tor este Computer Science (stiinta calculatoarelor).'),
(22, 'Fizica', 3, 'Fizica este poate cea mai importanta stiinta a naturii deoarece cu ajutorul ei pot fi explicate in principiu orice alte fenomene intalnite in alte stiinte ale naturii cum ar fi chimia sau biologia.'),
(23, 'Chimie', 2, 'Chimia reprezinta una dintre ramurile stiintelor naturale al carei obiect de studiu il constituie compozitia, structura, proprietatile si schimbarea materiei; chimia mai este numita si „stiinta de mijloc” sau „stiinta centrala”, intrucat contine elemente combinate din cadrul celorlalte stiinte ale naturii precum astronomia, fizica, biologia si geologia.'),
(24, 'Biologie', 2, 'Biologia este stiinta care se ocupa de studiul tuturor organismelor vii. Analizeaza structura, functii, origini, evolutie, difuzare si crestere a fiintelor vii. De asemenea, clasifica si descrie organismele, functiile lor si de unde si-au originile.'),
(35, 'Geografie', 2, 'Geografia este stiinta care studiaza relieful, terenurile, trasaturile, locuitorii si fenomenele Pamantului. O traducere literala ar fi „sa descrii sau sa scrii despre Pamant”.');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `t_note`
--

CREATE TABLE `t_note` (
  `Elev_ID` int(200) NOT NULL,
  `Materie_ID` int(200) NOT NULL,
  `Nota` int(21) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `t_note`
--

INSERT INTO `t_note` (`Elev_ID`, `Materie_ID`, `Nota`) VALUES
(5, 22, 10),
(5, 22, 10),
(12, 22, 8);

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `t_profesori`
--

CREATE TABLE `t_profesori` (
  `ID` int(200) NOT NULL,
  `Nume` text NOT NULL,
  `Prenume` text NOT NULL,
  `Telefon` text NOT NULL,
  `Studii` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `t_profesori`
--

INSERT INTO `t_profesori` (`ID`, `Nume`, `Prenume`, `Telefon`, `Studii`) VALUES
(1, 'Taclit', 'Nadia', '0774853704', 'Universitatea din Craiova'),
(2, 'Voinea', 'Vasile', '0741568434', 'Universitatea Babes-Bolyai'),
(3, 'Iacobescu', 'Victor', '0769199740', 'Universitatea din Craiova'),
(4, 'Dumbravescu', 'Marius Alin', '0726143811', 'Universitatea din Craiova'),
(5, 'Popescu', 'Doru Anastasiu', '0756659224', 'Universitatea din Bucuresti'),
(6, 'Parvu', 'Gianina', '0756333951', 'Universitatea \"Alexandru Ioan Cuza\" din Iasi'),
(7, 'Balaban', 'Dumitru', '0742328178', '?'),
(8, 'Mic', 'Emilia', '0769955294', 'Universitatea de Vest din Timisoara'),
(9, 'Popescu', 'Mirela', '0732009663', 'Universitatea din Craiova');

-- --------------------------------------------------------

--
-- Structura de tabel pentru tabelul `t_profesormaterie`
--

CREATE TABLE `t_profesormaterie` (
  `Profesor_ID` int(200) NOT NULL,
  `Materie_ID` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Salvarea datelor din tabel `t_profesormaterie`
--

INSERT INTO `t_profesormaterie` (`Profesor_ID`, `Materie_ID`) VALUES
(1, 6),
(2, 6),
(2, 10),
(3, 5),
(4, 10),
(5, 10),
(6, 24),
(7, 7),
(8, 22),
(9, 23);

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
