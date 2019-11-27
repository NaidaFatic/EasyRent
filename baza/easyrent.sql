-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 25, 2019 at 06:00 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `easyrent`
--
CREATE DATABASE IF NOT EXISTS `easyrent` DEFAULT CHARACTER SET utf8 COLLATE utf8_slovak_ci;
USE `easyrent`;

-- --------------------------------------------------------

--
-- Table structure for table `izdanje`
--

CREATE TABLE IF NOT EXISTS `izdanje` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Datum_izdaje` date NOT NULL,
  `Krajni_datum_izdaje` date NOT NULL,
  `Vrsta_nekretnine` text COLLATE utf8_slovak_ci NOT NULL,
  `Broj_soba` int(11) NOT NULL,
  `Email` text COLLATE utf8_slovak_ci NOT NULL,
  `Broj_telefona` int(11) NOT NULL,
  `Ime` text COLLATE utf8_slovak_ci NOT NULL,
  `Prezime` text COLLATE utf8_slovak_ci NOT NULL,
  `Opis` text COLLATE utf8_slovak_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `izdanje`
--

INSERT INTO `izdanje` (`ID`, `Datum_izdaje`, `Krajni_datum_izdaje`, `Vrsta_nekretnine`, `Broj_soba`, `Email`, `Broj_telefona`, `Ime`, `Prezime`, `Opis`) VALUES
(7, '2019-02-07', '2019-02-08', '$Apartman', 2, 'naida@gmail.com', 6251478, 'Naida', 'Fatic', 'da');

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

CREATE TABLE IF NOT EXISTS `rezervacija` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Datum_dolaska` date NOT NULL,
  `Datum_odlaska` date NOT NULL,
  `Sifra_nekretnine` text COLLATE utf8_slovak_ci NOT NULL,
  `Broj_osoba` int(11) NOT NULL,
  `Email` text COLLATE utf8_slovak_ci NOT NULL,
  `Broj_telefona` text COLLATE utf8_slovak_ci NOT NULL,
  `Ime` text COLLATE utf8_slovak_ci NOT NULL,
  `Prezime` text COLLATE utf8_slovak_ci NOT NULL,
  `Biljeska` text COLLATE utf8_slovak_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_slovak_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`ID`, `Datum_dolaska`, `Datum_odlaska`, `Sifra_nekretnine`, `Broj_osoba`, `Email`, `Broj_telefona`, `Ime`, `Prezime`, `Biljeska`) VALUES
(23, '2019-02-15', '2019-02-16', '1112', 2, 'naida@gmail.com', '0336254', 'Naida', 'Fatic', 'da');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
