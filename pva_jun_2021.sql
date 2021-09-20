-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2021 at 04:23 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pva_jun_2021`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(3) UNSIGNED NOT NULL,
  `ime` varchar(20) CHARACTER SET utf8 NOT NULL,
  `prezime` varchar(30) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `lozinka` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `ime`, `prezime`, `email`, `lozinka`) VALUES
(1, 'Pera', 'Peric', 'pperic@skola.com', 'pperic'),
(2, 'Laza', 'Lazic', 'llazic@skola.com', 'llazic');

-- --------------------------------------------------------

--
-- Table structure for table `termini`
--

CREATE TABLE `termini` (
  `id` int(4) UNSIGNED NOT NULL,
  `ime` varchar(50) CHARACTER SET utf8 NOT NULL,
  `idVakcine` int(2) NOT NULL,
  `datum` date NOT NULL,
  `komentar` text CHARACTER SET utf8 DEFAULT NULL,
  `odobren` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `termini`
--

INSERT INTO `termini` (`id`, `ime`, `idVakcine`, `datum`, `komentar`, `odobren`) VALUES
(1, 'Pera Peric (Sinofarminovak Biotek)', 1, '2021-09-18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vakcine`
--

CREATE TABLE `vakcine` (
  `id` int(2) UNSIGNED NOT NULL,
  `naziv` varchar(30) CHARACTER SET utf8 NOT NULL,
  `komentar` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vakcine`
--

INSERT INTO `vakcine` (`id`, `naziv`, `komentar`) VALUES
(1, 'VISER', 'Najbolja vakcina ikada. Leci sve vrste kovida.'),
(2, 'Biontek/Fajzerova', 'Prema preliminarnim rezultatima efikasnost vakcine je 90 odsto. Sredinom novembra obe\r\nkompanije su saopstile da je njihova vakcina delotvorna u 94 odsto slucajeva kada je rec o starijima od 65 godina. Ova vakcina odobrena je u Srbiji i njena upotreba je vec pocela u Srbiji.'),
(3, 'Moderna', 'Iz Americke kompanije Moderna su sredinom novembra prosle godine saopstili da je njihova vakcina delotvorna 95 odsto protiv korona virusa. Nije poznato koliko dugo traje imunitet, jer se stanje dobrovoljaca koji su je primili mora duze pratiti. Postoje nagovestaji da vakcina nudi izvesnu zastitu pripadnicima starijih starosnih grupa.'),
(4, 'Sinofarminovak', 'Odlicna vakcina za sve ljude, besplatna i sigurna. Pomaze svima samo jako. Korona ne moze da opstane zbog ovakve vrste vakcine.Proizvedena u Kini, odakle je sve i pocelo. ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `termini`
--
ALTER TABLE `termini`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vakcine`
--
ALTER TABLE `vakcine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `termini`
--
ALTER TABLE `termini`
  MODIFY `id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vakcine`
--
ALTER TABLE `vakcine`
  MODIFY `id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
