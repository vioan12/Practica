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
(4, 'Istrati', 'Georgiana', '1762 Anthony Avenue\r\n', '07700 900696'),
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
(21, 'Iordache', 'Bianca', '4236 Brooklyn Street\r\n', '0151 496 0606'),
(22, 'Tilea', 'Laurensiu', '4257 Wescam Court\r\n', '0115 496 0734'),
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
(5, 'Limba Romana', 3, 'Disciplina Limba si literatura romana are un rol deosebit de important in formarea personalitaii\r\nelevilor, in formarea unor deprinderi si abilitati necesare pentru a le asigura accesul postscolar la invatarea\r\npe toata durata vietii si integrarea activa intr-o societate bazata pe cunoastere. '),
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
(6, 'A', 'A's', '26620', 'AA's'),
(7, 'AB's', 'ABM's', '30607', 'AC's'),
(8, 'ACTH's', 'AI's', '12310', 'AIDS's'),
(9, 'AOL', 'AOL's', '687', 'ASCII's'),
(10, 'ATM's', 'ATP's', '16964', 'AWOL's'),
(11, 'AZ's', 'AZT's', '19126', 'Aachen'),
(12, 'Aaliyah', 'Aaliyah's', '30387', 'Aaron'),
(13, 'Abbas', 'Abbasid', '6856', 'Abbott'),
(14, 'Abelard', 'Abelson', '4571', 'Abelson's'),
(15, 'Abyssinia', 'Abyssinia's', '8011', 'Abyssinian'),
(16, 'Achebe's', 'Achernar', '5271', 'Acheson'),
(17, 'Achilles's', 'Aconcagua', '25619', 'Aconcagua's'),
(18, 'Adar's', 'Addams', '30097', 'Adderley'),
(19, 'Aden's', 'Adenauer', '8220', 'Adhara'),
(20, 'Adventist', 'Adventist's', '21785', 'Advents'),
(21, 'Afrikaans', 'Afrikaans's', '31465', 'Afrikaner'),
(22, 'Agnew', 'Agnew's', '9776', 'Agni'),
(23, 'Agni's', 'Agra', '6471', 'Agricola'),
(24, 'Akihito', 'Akita', '24612', 'Akiva'),
(25, 'Alabama', 'Alabama's', '20881', 'Alabaman'),
(26, 'Alamogordo's', 'Alan', '29316', 'Alan's'),
(27, 'Alaric', 'Alaska', '28709', 'Alaska's'),
(28, 'Alberta's', 'Alberto', '7085', 'Alberto's'),
(29, 'Alcatraz', 'Alcestis', '6605', 'Alcibiades'),
(30, 'Alcindor', 'Alcindor's', '29197', 'Alcmena'),
(31, 'Alfonso's', 'Alfonzo', '19241', 'Alfonzo's'),
(32, 'Alford', 'Alford's', '26906', 'Alfred'),
(33, 'Algonquians', 'Algonquin', '30351', 'Algonquin's'),
(34, 'Alison's', 'Alissa', '20579', 'Alissa's'),
(35, 'Alonzo', 'Alonzo's', '27372', 'Alpert'),
(36, 'Althea', 'Althea's', '31725', 'Altiplano'),
(37, 'Alyson's', 'Alyssa', '6326', 'Alyssa's'),
(38, 'Amber's', 'Amelia', '4996', 'Amelia's'),
(39, 'Amherst', 'Amie', '2001', 'Amie's'),
(40, 'Andaman', 'Andean', '14496', 'Andersen'),
(41, 'Antananarivo's', 'Antarctic', '11394', 'Antarctic's'),
(42, 'Antofagasta', 'Antofagasta's', '24385', 'Antoine'),
(43, 'Antone', 'Antone's', '13527', 'Antonia'),
(44, 'Aquafresh's', 'Aquarius', '13679', 'Aquarius's'),
(45, 'Arabians', 'Arabic', '27010', 'Arabic's'),
(46, 'Argus's', 'Ariadne', '2183', 'Ariadne's'),
(47, 'Arizona's', 'Arizonan', '15601', 'Arizonan's'),
(48, 'Ashlee', 'Ashlee's', '2242', 'Ashley'),
(49, 'Attila's', 'Attlee', '16745', 'Attucks'),
(50, 'Aug's', 'Augean', '22699', 'Augsburg'),
(51, 'Austrian's', 'Austrians', '23956', 'Austronesian'),
(52, 'Avis', 'Avogadro', '23373', 'Avon'),
(53, 'Azazel', 'Azerbaijan', '2340', 'Azerbaijan's'),
(54, 'Bacchanalia', 'Bacchanalia's', '16044', 'Bacchus'),
(55, 'Baedeker', 'Baedeker's', '7435', 'Baez'),
(56, 'Bahrain', 'Bahrain's', '10037', 'Baikal'),
(57, 'Baudelaire', 'Baudelaire's', '4708', 'Baudouin'),
(58, 'Beirut', 'Beirut's', '23750', 'Bekesy'),
(59, 'Bellatrix's', 'Belleek', '1829', 'Bellini'),
(60, 'Benchley's', 'Bender', '24622', 'Bender's'),
(61, 'Bermuda', 'Bermuda's', '23636', 'Bermudas'),
(62, 'Berzelius', 'Bess', '27263', 'Bessel'),
(63, 'Beverley's', 'Beverly', '23451', 'Beverly's'),
(64, 'Bhutan's', 'Bhutto', '10669', 'Bhutto's'),
(65, 'Bolshevist', 'Bolshoi', '8811', 'Bolshoi's'),
(66, 'Bowen's', 'Bowers', '22886', 'Bowery'),
(67, 'Boyd', 'Boyer', '17527', 'Boyer's'),
(68, 'Bridgette', 'Bridgette's', '17818', 'Bridgman'),
(69, 'Brisbane', 'Brisbane's', '18093', 'Bristol'),
(70, 'Burgundy', 'Burgundy's', '23461', 'Burke'),
(71, 'Caedmon's', 'Caerphilly', '30947', 'Caesar'),
(72, 'Cain's', 'Cains', '19071', 'Cairo'),
(73, 'Calvert', 'Calvin', '13751', 'Calvin's'),
(74, 'Cantu', 'Cantu's', '24114', 'Canute'),
(75, 'Caravaggio', 'Carboloy', '20952', 'Carboloy's'),
(76, 'Cathryn', 'Cathryn's', '4845', 'Cathy'),
(77, 'Cecile', 'Cecile's', '27039', 'Cecilia'),
(78, 'Cheviot's', 'Chevrolet', '13828', 'Chevrolet's'),
(79, 'Chevron', 'Chevron's', '4728', 'Chevy'),
(80, 'Choctaw', 'Choctaw's', '20586', 'Chomsky'),
(81, 'Concords', 'Condillac', '22114', 'Condorcet'),
(82, 'Conestoga's', 'Confederacy', '1231', 'Confederacy's'),
(83, 'Corning's', 'Cornish', '5657', 'Cornish's'),
(84, 'Cray's', 'Crayola', '24937', 'Crayola's'),
(85, 'Cybele', 'Cybele's', '5799', 'Cyclades'),
(86, 'Cyprian', 'Cyprian's', '19890', 'Cypriot'),
(87, 'Demetrius', 'Demetrius's', '3555', 'Deming'),
(88, 'Depp's', 'Derby', '326', 'Derek'),
(89, 'Dis's', 'Disney', '3534', 'Disneyland'),
(90, 'Dmitri', 'Dmitri's', '32542', 'Dnepropetrovsk'),
(91, 'Doctor', 'Doctorow', '23467', 'Doctorow's'),
(92, 'Dortmund', 'Dostoevsky', '2682', 'Dostoevsky's'),
(93, 'Douay's', 'Doubleday', '32625', 'Doubleday's'),
(94, 'Dubrovnik's', 'Duchamp', '10135', 'Dudley'),
(95, 'Easters', 'Eastman', '3070', 'Easts'),
(96, 'Eleazar', 'Eleazar's', '32133', 'Electra'),
(97, 'Ella', 'Ella's', '29846', 'Ellen'),
(98, 'Elwood's', 'Elysian', '14238', 'Elysium'),
(99, 'Ernie', 'Ernie's', '28543', 'Ernst'),
(100, 'Euphrates', 'Euphrates's', '11379', 'Eurasia'),
(101, 'Freda's', 'Freddie', '7324', 'Freddie's'),
(102, 'Ganesha', 'Ganesha's', '1047', 'Ganges'),
(103, 'Genoa', 'Genoa's', '24225', 'Genoas'),
(104, 'Gilchrist's', 'Gilda', '24235', 'Gilda's'),
(105, 'Gillette's', 'Gilliam', '21712', 'Gilliam's'),
(106, 'Golan', 'Golan's', '11190', 'Golconda'),
(107, 'Gomorrah's', 'Gompers', '2899', 'Gomulka'),
(108, 'Gorey', 'Gorey's', '9528', 'Gorgas'),
(109, 'Greenpeace's', 'Greensboro', '16650', 'Greensboro's'),
(110, 'Guiana', 'Guiana's', '26003', 'Guillermo'),
(111, 'Guyanese', 'Guyanese's', '23338', 'Guzman'),
(112, 'Hamburg's', 'Hamburgs', '1174', 'Hamhung'),
(113, 'Handel's', 'Handy', '11287', 'Haney'),
(114, 'Hanukkah', 'Hanukkah's', '5995', 'Hanukkahs'),
(115, 'Harding's', 'Hardy', '5275', 'Hargreaves'),
(116, 'Hebraic', 'Hebrew', '29942', 'Hebrew's'),
(117, 'Herder', 'Hereford', '11086', 'Hereford's'),
(118, 'Hester's', 'Heston', '31987', 'Heston's'),
(119, 'Hippocrates's', 'Hippocratic', '5896', 'Hiram'),
(120, 'Hoffa', 'Hoffa's', '23076', 'Hoffman'),
(121, 'Huntsville', 'Hurley', '11178', 'Hurley's'),
(122, 'Hyderabad', 'Hydra', '6461', 'Hydra's'),
(123, 'Jagger's', 'Jagiellon', '26303', 'Jagiellon's'),
(124, 'Jodi's', 'Jodie', '21186', 'Jodie's'),
(125, 'Judaic', 'Judaism', '30254', 'Judaism's'),
(126, 'Karloff's', 'Karo', '17137', 'Karo's'),
(127, 'Katie', 'Katie's', '15699', 'Katina'),
(128, 'Kaunda's', 'Kawabata', '2118', 'Kawabata's'),
(129, 'Keillor', 'Keillor's', '28226', 'Keisha'),
(130, 'Kuhn', 'Kuhn's', '27037', 'Kuibyshev'),
(131, 'Limousin's', 'Limpopo', '13794', 'Limpopo's'),
(132, 'Lorene', 'Lorene's', '29919', 'Lorentz'),
(133, 'Lucknow's', 'Lucretia', '20379', 'Lucretius'),
(134, 'MA's', 'MB's', '11638', 'MBA's'),
(135, 'Madras's', 'Madrid', '29227', 'Madrid's'),
(136, 'Manila', 'Manila's', '15183', 'Manilas'),
(137, 'Marine', 'Marine's', '11952', 'Marines'),
(138, 'Marlene's', 'Marley', '5294', 'Marley's'),
(139, 'Marxists', 'Mary', '32416', 'Mary's'),
(140, 'Matt', 'Mattel', '6034', 'Mattel's'),
(141, 'Mosley', 'Mosley's', '6064', 'Moss'),
(142, 'Mounties', 'Moussorgsky', '11068', 'Mouthe'),
(143, 'Napoleonic', 'Napster', '30615', 'Napster's'),
(144, 'Newcastle's', 'Newfoundland', '1208', 'Newfoundland's'),
(145, 'Nile's', 'Nimitz', '1916', 'Nimrod'),
(146, 'Nouakchott', 'Nouakchott's', '27563', 'Noumea'),
(147, 'Noyes', 'Noyes's', '31898', 'Np'),
(148, 'Olympiad', 'Olympiad's', '11408', 'Olympiads'),
(149, 'Orizaba', 'Orizaba's', '27788', 'Orkney'),
(150, 'Paraguayans', 'Paramaribo', '12667', 'Paramaribo's'),
(151, 'Pb's', 'Pd', '22529', 'Pd's'),
(152, 'Peiping', 'Peiping's', '11587', 'Pekinese'),
(153, 'Pena's', 'Penderecki', '7242', 'Penderecki's'),
(154, 'Philby's', 'Philip', '17845', 'Philippe'),
(155, 'Pierrot's', 'Pigmies', '22055', 'Pigmy'),
(156, 'Plexiglas', 'Plexiglas's', '2825', 'Plexiglases'),
(157, 'Plymouth's', 'Pm', '6279', 'Pm's'),
(158, 'Poseidon's', 'Post', '16745', 'Post's'),
(159, 'Praetorian', 'Prague', '22211', 'Prague's'),
(160, 'Pretoria's', 'Priam', '19558', 'Priam's'),
(161, 'Rather's', 'Ratliff', '15803', 'Ratliff's'),
(162, 'Rebecca', 'Rebekah', '9056', 'Recife'),
(163, 'Saroyan's', 'Sarto', '26353', 'Sartre'),
(164, 'Sedna's', 'Seebeck', '25162', 'Seebeck's'),
(165, 'Seine', 'Seine's', '23722', 'Seinfeld'),
(166, 'Sonya', 'Sonya's', '1823', 'Sophia'),
(167, 'Spillane', 'Spillane's', '31065', 'Spinoza'),
(168, 'Stephanie's', 'Stephen', '13499', 'Stephens'),
(169, 'Swansea', 'Swansea's', '28450', 'Swanson'),
(170, 'Tao', 'Tao's', '30310', 'Taoism'),
(171, 'Tatar's', 'Tatars', '12559', 'Tate'),
(172, 'Thebes's', 'Theiler', '12183', 'Theiler's'),
(173, 'Timon's', 'Timor', '18789', 'Timothy'),
(174, 'Tisha', 'Tisha's', '4377', 'Tishri'),
(175, 'Truffaut's', 'Trujillo', '24388', 'Truman'),
(176, 'VD's', 'VHF's', '18460', 'VI's'),
(177, 'Waldorf', 'Waldorf's', '28501', 'Wales'),
(178, 'Windbreaker', 'Windex', '15168', 'Windex's'),
(179, 'Y', 'Y's', '17435', 'Yacc'),
(180, 'Yucatan', 'Yucatan's', '27679', 'Yugo'),
(181, 'Zappa's', 'Zara', '9503', 'Zara's'),
(182, 'abstracting', 'abstraction', '25176', 'abstraction's'),
(183, 'actionable', 'actions', '16323', 'activate'),
(184, 'addle', 'addled', '7789', 'addles'),
(185, 'adherents', 'adheres', '6930', 'adhering'),
(186, 'adviser', 'adviser's', '21823', 'advisers'),
(187, 'affirming', 'affirms', '30198', 'affix'),
(188, 'aftercare', 'aftercare's', '2030', 'aftereffect'),
(189, 'afterthoughts', 'afterward', '15599', 'afterwards'),
(190, 'alchemy', 'alchemy's', '2396', 'alcohol'),
(191, 'alimony', 'alimony's', '1062', 'aline'),
(192, 'alliance', 'alliance's', '5230', 'alliances'),
(193, 'alteration', 'alteration's', '2037', 'alterations'),
(194, 'amidships', 'amidst', '5836', 'amigo'),
(195, 'anagrams', 'anal', '8182', 'analgesia'),
(196, 'anatomist's', 'anatomists', '2516', 'anatomy'),
(197, 'announcements', 'announcer', '19390', 'announcer's'),
(198, 'anteroom's', 'anterooms', '13856', 'antes'),
(199, 'antiparticle's', 'antiparticles', '943', 'antipasti'),
(200, 'antiquates', 'antiquating', '18173', 'antique'),
(201, 'apostrophe', 'apostrophe's', '30088', 'apostrophes'),
(202, 'apple', 'apple's', '18847', 'applejack'),
(203, 'archived', 'archives', '16112', 'archiving'),
(204, 'artfulness', 'artfulness's', '17440', 'arthritic'),
(205, 'artist', 'artist's', '14440', 'artiste'),
(206, 'ask', 'askance', '20341', 'asked'),
(207, 'atrociousness's', 'atrocities', '30039', 'atrocity'),
(208, 'aviator's', 'aviators', '24270', 'aviatrices'),
(209, 'barber', 'barber's', '15480', 'barbered'),
(210, 'barbering', 'barberries', '1228', 'barberry'),
(211, 'bastard', 'bastard's', '26165', 'bastardize'),
(212, 'bating', 'baton', '24114', 'baton's'),
(213, 'bean's', 'beanbag', '7638', 'beanbag's'),
(214, 'bearded', 'bearding', '18199', 'beards'),
(215, 'blarney', 'blarney's', '28460', 'blarneyed'),
(216, 'blessedness', 'blessedness's', '11575', 'blesses'),
(217, 'blindly', 'blindness', '12089', 'blindness's'),
(218, 'blintze's', 'blintzes', '26429', 'blip'),
(219, 'bloodthirstiest', 'bloodthirstiness', '18426', 'bloodthirstiness's'),
(220, 'blunder's', 'blunderbuss', '32260', 'blunderbuss's'),
(221, 'bonanza', 'bonanza's', '20995', 'bonanzas'),
(222, 'boulder's', 'boulders', '10016', 'boulevard'),
(223, 'boxer', 'boxer's', '14923', 'boxers'),
(224, 'brake's', 'braked', '7579', 'brakeman'),
(225, 'brays', 'brazen', '23238', 'brazened'),
(226, 'briskness', 'briskness's', '26744', 'brisks'),
(227, 'brotherliness's', 'brotherly', '14865', 'brothers'),
(228, 'brows', 'browse', '9863', 'browse's'),
(229, 'bulging', 'bulgy', '2036', 'bulimia'),
(230, 'bullfighters', 'bullfighting', '30896', 'bullfighting's'),
(231, 'burns', 'burnt', '8994', 'burp'),
(232, 'caducei', 'caduceus', '10345', 'caduceus's'),
(233, 'café', 'café's', '6840', 'cafés'),
(234, 'calk's', 'calked', '19354', 'calking'),
(235, 'can't', 'canal', '32364', 'canal's'),
(236, 'canoeists', 'canoes', '8859', 'canon'),
(237, 'carver', 'carver's', '2509', 'carvers'),
(238, 'cassava's', 'cassavas', '4042', 'casserole'),
(239, 'caustically', 'caustics', '30872', 'cauterize'),
(240, 'chaining', 'chains', '4193', 'chainsaw'),
(241, 'changes', 'changing', '17877', 'channel'),
(242, 'characterization's', 'characterizations', '20380', 'characterize'),
(243, 'chestnuts', 'chests', '3830', 'chevron'),
(244, 'cigarets', 'cigarette', '11463', 'cigarette's'),
(245, 'circumcising', 'circumcision', '24336', 'circumcision's'),
(246, 'coccus's', 'coccyges', '2210', 'coccyx'),
(247, 'coffee's', 'coffeecake', '9012', 'coffeecake's'),
(248, 'coincided', 'coincidence', '5036', 'coincidence's'),
(249, 'comedic', 'comedienne', '17499', 'comedienne's'),
(250, 'common', 'common's', '29869', 'commoner'),
(251, 'commonwealth', 'commonwealth's', '23073', 'commonwealths'),
(252, 'compactors', 'compacts', '7533', 'companies'),
(253, 'complemented', 'complementing', '9944', 'complements'),
(254, 'complicity's', 'complied', '6847', 'complies'),
(255, 'composites', 'composition', '14807', 'composition's'),
(256, 'comrade', 'comrade's', '31147', 'comrades'),
(257, 'concentrating', 'concentration', '29907', 'concentration's'),
(258, 'concourse's', 'concourses', '23783', 'concrete'),
(259, 'condoling', 'condom', '31657', 'condom's'),
(260, 'conquistador', 'conquistador's', '11273', 'conquistadores'),
(261, 'consonance', 'consonance's', '3723', 'consonances'),
(262, 'consorted', 'consortia', '6731', 'consorting'),
(263, 'conversion's', 'conversions', '4181', 'convert'),
(264, 'coral', 'coral's', '30996', 'corals'),
(265, 'cowslip', 'cowslip's', '31626', 'cowslips'),
(266, 'creditor's', 'creditors', '13569', 'credits'),
(267, 'crevasse', 'crevasse's', '3785', 'crevasses'),
(268, 'crisply', 'crispness', '30590', 'crispness's'),
(269, 'curer', 'cures', '11858', 'curfew'),
(270, 'damsel's', 'damsels', '6802', 'damson'),
(271, 'debility', 'debility's', '16457', 'debit'),
(272, 'debtors', 'debts', '16975', 'debug'),
(273, 'declaimed', 'declaiming', '5144', 'declaims'),
(274, 'defroster's', 'defrosters', '27196', 'defrosting'),
(275, 'demographic's', 'demographically', '20761', 'demographics'),
(276, 'dentistry's', 'dentists', '8450', 'dents'),
(277, 'devil', 'devil's', '23646', 'deviled'),
(278, 'diagnostician', 'diagnostician's', '15131', 'diagnosticians'),
(279, 'diocese', 'diocese's', '23948', 'dioceses'),
(280, 'disabling', 'disabuse', '28866', 'disabused'),
(281, 'disentanglement', 'disentanglement's', '7534', 'disentangles'),
(282, 'dismantled', 'dismantles', '16699', 'dismantling'),
(283, 'dispatch', 'dispatch's', '24863', 'dispatched'),
(284, 'distemper's', 'distend', '24205', 'distended'),
(285, 'distinguishable', 'distinguished', '10078', 'distinguishes'),
(286, 'downplay', 'downplayed', '9467', 'downplaying'),
(287, 'downwards', 'downwind', '30272', 'downy'),
(288, 'draws', 'drawstring', '13362', 'drawstring's'),
(289, 'dustman', 'dustmen', '24371', 'dustpan'),
(290, 'edicts', 'edification', '16168', 'edification's'),
(291, 'emerges', 'emerging', '24905', 'emeritus'),
(292, 'enact', 'enacted', '29541', 'enacting'),
(293, 'engaged', 'engagement', '28878', 'engagement's'),
(294, 'enlarging', 'enlighten', '10123', 'enlightened'),
(295, 'entourage', 'entourage's', '2991', 'entourages'),
(296, 'episode', 'episode's', '30127', 'episodes'),
(297, 'equities', 'equity', '17268', 'equity's'),
(298, 'escapists', 'escarole', '30408', 'escarole's'),
(299, 'exclaimed', 'exclaiming', '9363', 'exclaims'),
(300, 'expired', 'expires', '303', 'expiring'),
(301, 'falconer's', 'falconers', '11617', 'falconry'),
(302, 'fallout', 'fallout's', '3559', 'fallow'),
(303, 'firebombed', 'firebombing', '18619', 'firebombs'),
(304, 'flame', 'flame's', '32537', 'flamed'),
(305, 'flannelled', 'flannelling', '11118', 'flannels'),
(306, 'follicle', 'follicle's', '11041', 'follicles'),
(307, 'foolhardiest', 'foolhardiness', '7445', 'foolhardiness's'),
(308, 'foreshorten', 'foreshortened', '31153', 'foreshortening'),
(309, 'fostered', 'fostering', '23846', 'fosters'),
(310, 'frets', 'fretted', '12099', 'fretting'),
(311, 'frogmen', 'frogs', '5918', 'frolic'),
(312, 'fulminate', 'fulminated', '14586', 'fulminates'),
(313, 'giggling', 'giggly', '13399', 'gigolo'),
(314, 'glare', 'glare's', '31550', 'glared'),
(315, 'glinting', 'glints', '5424', 'glissandi'),
(316, 'goldsmith's', 'goldsmiths', '11963', 'golf'),
(317, 'granddad's', 'granddads', '16486', 'granddaughter'),
(318, 'greasiness's', 'greasing', '26798', 'greasy'),
(319, 'grebe', 'grebe's', '27693', 'grebes'),
(320, 'guardrails', 'guardroom', '6394', 'guardroom's'),
(321, 'guiltier', 'guiltiest', '1938', 'guiltily'),
(322, 'halts', 'halve', '25490', 'halved'),
(323, 'healer', 'healer's', '11019', 'healers'),
(324, 'heisted', 'heisting', '8174', 'heists'),
(325, 'helm's', 'helmet', '9122', 'helmet's'),
(326, 'honeysuckle', 'honeysuckle's', '15440', 'honeysuckles'),
(327, 'hoodlums', 'hoodoo', '1340', 'hoodoo's'),
(328, 'huffily', 'huffing', '29016', 'huffs'),
(329, 'hullabaloos', 'hulled', '31130', 'hulling'),
(330, 'husband's', 'husbanded', '19528', 'husbanding'),
(331, 'illogically', 'ills', '28673', 'illuminate'),
(332, 'imperials', 'imperil', '28730', 'imperiled'),
(333, 'impracticality', 'impracticality's', '4733', 'imprecation'),
(334, 'incarnation', 'incarnation's', '21824', 'incarnations'),
(335, 'incredibly', 'incredulity', '20821', 'incredulity's'),
(336, 'indict', 'indictable', '8388', 'indicted'),
(337, 'interpolating', 'interpolation', '23628', 'interpolation's'),
(338, 'invertebrate', 'invertebrate's', '11589', 'invertebrates'),
(339, 'jaywalks', 'jazz', '7931', 'jazz's'),
(340, 'kidney's', 'kidneys', '4535', 'kids'),
(341, 'lens', 'lens's', '9109', 'lenses'),
(342, 'lesson', 'lesson's', '19469', 'lessons'),
(343, 'lightweight's', 'lightweights', '14846', 'lignite'),
(344, 'linchpin's', 'linchpins', '24843', 'linden'),
(345, 'maceration's', 'maces', '108', 'machete'),
(346, 'masseuse', 'masseuse's', '239', 'masseuses'),
(347, 'materialization', 'materialization's', '31838', 'materialize'),
(348, 'mechanizes', 'mechanizing', '899', 'medal'),
(349, 'melodrama's', 'melodramas', '7711', 'melodramatic'),
(350, 'merrymaker's', 'merrymakers', '30183', 'merrymaking'),
(351, 'mobster's', 'mobsters', '22943', 'moccasin'),
(352, 'monolith', 'monolith's', '8596', 'monolithic'),
(353, 'monopolist's', 'monopolistic', '1596', 'monopolists'),
(354, 'mooed', 'mooing', '9139', 'moon'),
(355, 'mussed', 'mussel', '7347', 'mussel's'),
(356, 'nacre', 'nacre's', '28446', 'nadir'),
(357, 'noontime', 'noontime's', '2106', 'noose'),
(358, 'nucleic', 'nucleus', '15525', 'nucleus's'),
(359, 'oarlocks', 'oars', '18529', 'oarsman'),
(360, 'observant', 'observantly', '5010', 'observation'),
(361, 'observations', 'observatories', '31304', 'observatory'),
(362, 'obtuser', 'obtusest', '25585', 'obverse'),
(363, 'optimism's', 'optimist', '17538', 'optimist's'),
(364, 'ornithologists', 'ornithology', '29663', 'ornithology's'),
(365, 'orphaned', 'orphaning', '144', 'orphans'),
(366, 'outfielder's', 'outfielders', '3571', 'outfields'),
(367, 'outfitted', 'outfitter', '10128', 'outfitter's'),
(368, 'overawing', 'overbalance', '9750', 'overbalance's'),
(369, 'overpower', 'overpowered', '20797', 'overpowering'),
(370, 'patrician', 'patrician's', '20041', 'patricians'),
(371, 'patronymic's', 'patronymics', '24980', 'pats'),
(372, 'peddlers', 'peddles', '19955', 'peddling'),
(373, 'pellucid', 'pelt', '31620', 'pelt's'),
(374, 'pillorying', 'pillow', '19417', 'pillow's'),
(375, 'practical', 'practical's', '11048', 'practicalities'),
(376, 'precocity', 'precocity's', '15821', 'precognition'),
(377, 'predecease', 'predeceased', '22174', 'predeceases'),
(378, 'previewers', 'previewing', '19957', 'previews'),
(379, 'print's', 'printable', '16686', 'printed'),
(380, 'protoplasm', 'protoplasm's', '3728', 'protoplasmic'),
(381, 'pullback', 'pullback's', '3277', 'pullbacks'),
(382, 'quahaug's', 'quahaugs', '31323', 'quahog'),
(383, 'quarter', 'quarter's', '24456', 'quarterback'),
(384, 'radiotherapists', 'radiotherapy', '28635', 'radiotherapy's'),
(385, 'raunchy', 'ravage', '32043', 'ravage's'),
(386, 'reactive', 'reactor', '28332', 'reactor's'),
(387, 'recollection's', 'recollections', '3401', 'recollects'),
(388, 'reprieve's', 'reprieved', '7218', 'reprieves'),
(389, 'ridgepole', 'ridgepole's', '14711', 'ridgepoles'),
(390, 'roan', 'roan's', '5850', 'roans'),
(391, 'rouges', 'rough', '24621', 'rough's'),
(392, 'rubbernecking', 'rubbernecks', '14905', 'rubbers'),
(393, 'ruled', 'ruler', '20703', 'ruler's'),
(394, 'schismatics', 'schisms', '13408', 'schist'),
(395, 'semitone's', 'semitones', '32383', 'semitrailer'),
(396, 'settling', 'setup', '21676', 'setup's'),
(397, 'shaped', 'shapeless', '3947', 'shapelessly'),
(398, 'showmanship's', 'showmen', '22348', 'shown'),
(399, 'shunned', 'shunning', '29526', 'shuns'),
(400, 'shuttlecocked', 'shuttlecocking', '25335', 'shuttlecocks'),
(401, 'sidetracking', 'sidetracks', '4808', 'sidewalk'),
(402, 'singleton's', 'singletons', '2592', 'singling'),
(403, 'slack', 'slack's', '11667', 'slacked'),
(404, 'solves', 'solving', '12742', 'somber'),
(405, 'sororities', 'sorority', '9905', 'sorority's'),
(406, 'specially', 'specials', '20512', 'specialties'),
(407, 'stables', 'stablest', '9024', 'stabling'),
(408, 'stagnation's', 'stags', '1129', 'staid'),
(409, 'starling', 'starling's', '10171', 'starlings'),
(410, 'stepfather's', 'stepfathers', '268', 'stepladder'),
(411, 'storyteller's', 'storytellers', '24127', 'stout'),
(412, 'stumbling', 'stump', '21993', 'stump's'),
(413, 'sub', 'sub's', '28926', 'subatomic'),
(414, 'supercharging', 'supercilious', '16053', 'supercomputer'),
(415, 'supremely', 'sups', '24872', 'surcease'),
(416, 'surprised', 'surprises', '15726', 'surprising'),
(417, 'swami', 'swami's', '2168', 'swamis'),
(418, 'sweeper', 'sweeper's', '6420', 'sweepers'),
(419, 'sweet', 'sweet's', '19962', 'sweetbread'),
(420, 'symbols', 'symmetric', '23259', 'symmetrical'),
(421, 'tenderness', 'tenderness's', '18395', 'tenders'),
(422, 'tepid', 'tequila', '12008', 'tequila's'),
(423, 'times', 'timescale', '30242', 'timescales'),
(424, 'tipi's', 'tipis', '16461', 'tipped'),
(425, 'tonsillectomies', 'tonsillectomy', '7426', 'tonsillectomy's'),
(426, 'tows', 'toxemia', '30878', 'toxemia's'),
(427, 'tract's', 'tractable', '28931', 'traction'),
(428, 'transliterate', 'transliterated', '20508', 'transliterates'),
(429, 'transmittable', 'transmittal', '1985', 'transmittal's'),
(430, 'trustfulness', 'trustfulness's', '24321', 'trustier'),
(431, 'ultrasounds', 'ultraviolet', '25906', 'ultraviolet's'),
(432, 'unfavorably', 'unfeasible', '6214', 'unfeeling'),
(433, 'ungulate's', 'ungulates', '3266', 'unhand'),
(434, 'unwraps', 'unwritten', '27018', 'unyielding'),
(435, 'uphill', 'uphill's', '13143', 'uphills'),
(436, 'valid', 'validate', '22530', 'validated'),
(437, 'vespers', 'vessel', '22731', 'vessel's'),
(438, 'virtuousness's', 'virulence', '20233', 'virulence's'),
(439, 'weightiest', 'weightiness', '17763', 'weightiness's'),
(440, 'wherewithal's', 'whet', '254', 'whether'),
(441, 'wilds', 'wile', '11238', 'wile's'),
(442, 'worthily', 'worthiness', '27810', 'worthiness's'),
(443, 'wraparound's', 'wraparounds', '8193', 'wrapped'),
(444, 'yawn', 'yawn's', '4976', 'yawned');

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
