-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Mar 2023, 14:43
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `fpm`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cieplomierze`
--

CREATE TABLE `cieplomierze` (
  `ID` int(11) NOT NULL,
  `Licznik` varchar(30) DEFAULT NULL,
  `1` double DEFAULT NULL,
  `2` double DEFAULT NULL,
  `3` double DEFAULT NULL,
  `4` double DEFAULT NULL,
  `5` double DEFAULT NULL,
  `6` double DEFAULT NULL,
  `7` double DEFAULT NULL,
  `8` double DEFAULT NULL,
  `9` double DEFAULT NULL,
  `10` double DEFAULT NULL,
  `11` double DEFAULT NULL,
  `12` double DEFAULT NULL,
  `13` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `cieplomierze`
--

INSERT INTO `cieplomierze` (`ID`, `Licznik`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`) VALUES
(1, '1121 - FPM', 225, 302, 351, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '1171 - Starostwo', 158, 208, 244, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kontrola`
--

CREATE TABLE `kontrola` (
  `ID` int(11) NOT NULL,
  `Licznik` varchar(70) DEFAULT NULL,
  `1` double DEFAULT NULL,
  `2` double DEFAULT NULL,
  `3` double DEFAULT NULL,
  `4` double DEFAULT NULL,
  `5` double DEFAULT NULL,
  `6` double DEFAULT NULL,
  `7` double DEFAULT NULL,
  `8` double DEFAULT NULL,
  `9` double DEFAULT NULL,
  `10` double DEFAULT NULL,
  `11` double DEFAULT NULL,
  `12` double DEFAULT NULL,
  `13` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `kontrola`
--

INSERT INTO `kontrola` (`ID`, `Licznik`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`) VALUES
(1, 'UMYWALKA_Budynek_1146_NAWA_VII', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'BUDYNEK_1183_MAGAZYN FARB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'BUDYNEK_1120_NOWY_BIUROWIEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'BUDYNEK_1121_WODA_CIEPLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'BUDYNEK_1121_WODA_ZIMNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'BUDYNEK_1171_WODA_ZIMNA_STAROSTWO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'WODA_CIEPLA_1171_ZASILANIE_STAROSTWO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'WODA_CIEPLA_1171_POWROT_STAROSTWO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'BUDYNEK_1171_WODA_CIEPLA_STAROSTWO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'BESET', NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'METROB', NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'PLASTOMIX', NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Karel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'PKP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'SORYKS', NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'LESTER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'POD KOLEJARZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'MAR-PLAST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'JAWO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'PALSERWIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'STOR', NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'TRANSPROJECT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'MARTEX-OLSZYNKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'RZEPKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kwotakontrola`
--

CREATE TABLE `kwotakontrola` (
  `ID` int(11) NOT NULL,
  `Licznik` varchar(70) DEFAULT NULL,
  `1` double DEFAULT NULL,
  `2` double DEFAULT NULL,
  `3` double DEFAULT NULL,
  `4` double DEFAULT NULL,
  `5` double DEFAULT NULL,
  `6` double DEFAULT NULL,
  `7` double DEFAULT NULL,
  `8` double DEFAULT NULL,
  `9` double DEFAULT NULL,
  `10` double DEFAULT NULL,
  `11` double DEFAULT NULL,
  `12` double DEFAULT NULL,
  `13` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `kwotakontrola`
--

INSERT INTO `kwotakontrola` (`ID`, `Licznik`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`) VALUES
(1, 'UMYWALKA_Budynek_1146_NAWA_VII', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'BUDYNEK_1183_MAGAZYN FARB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'BUDYNEK_1120_NOWY_BIUROWIEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'BUDYNEK_1121_WODA_CIEPLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'BUDYNEK_1121_WODA_ZIMNA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'BUDYNEK_1171_WODA_ZIMNA_STAROSTWO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'WODA_CIEPLA_1171_ZASILANIE_STAROSTWO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'WODA_CIEPLA_1171_POWROT_STAROSTWO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'BUDYNEK_1171_WODA_CIEPLA_STAROSTWO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'BESET', NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'METROB', NULL, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'PLASTOMIX', NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Karel', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'PKP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'SORYKS', NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'LESTER', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'POD KOLEJARZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'MAR-PLAST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'JAWO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'PALSERWIS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'STOR', NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'TRANSPROJECT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'MARTEX-OLSZYNKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'RZEPKA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miesieczne_zuzycie`
--

CREATE TABLE `miesieczne_zuzycie` (
  `id` int(11) NOT NULL,
  `miesiac` varchar(30) DEFAULT NULL,
  `zuzycie_m3` double DEFAULT NULL,
  `wsp_konwersji` double DEFAULT NULL,
  `zuzycie_kWh` double DEFAULT NULL,
  `moc_zamowiona` double DEFAULT NULL,
  `moc_wykonana` double DEFAULT NULL,
  `oplata_d_stala` double DEFAULT NULL,
  `oplata_d_zmienna` double DEFAULT NULL,
  `wartosc_netto` double DEFAULT NULL,
  `paliwo_gazowe` double DEFAULT NULL,
  `wartosc_netto2` double DEFAULT NULL,
  `abonament` double DEFAULT NULL,
  `oplata_d_stala3` double DEFAULT NULL,
  `wartosc_netto3` double DEFAULT NULL,
  `wartosc_netto_faktura` double DEFAULT NULL,
  `nr_faktury` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `miesieczne_zuzycie`
--

INSERT INTO `miesieczne_zuzycie` (`id`, `miesiac`, `zuzycie_m3`, `wsp_konwersji`, `zuzycie_kWh`, `moc_zamowiona`, `moc_wykonana`, `oplata_d_stala`, `oplata_d_zmienna`, `wartosc_netto`, `paliwo_gazowe`, `wartosc_netto2`, `abonament`, `oplata_d_stala3`, `wartosc_netto3`, `wartosc_netto_faktura`, `nr_faktury`) VALUES
(1, 'STYCZEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'LUTY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'MARZEC', 45234, 0, NULL, 0, 0, 0, 0, NULL, 0, NULL, 0, 0, NULL, NULL, NULL),
(4, 'KWIECIEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'MAJ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'CZERWIEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'LIPIEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'SIERPIEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'WRZESIEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'PAZDZIERNIK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'LISTOPAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'GRUDZIEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `miesieczne_zuzycie2`
--

CREATE TABLE `miesieczne_zuzycie2` (
  `id` int(11) NOT NULL,
  `miesiac` varchar(30) DEFAULT NULL,
  `zuzycie_m3` double DEFAULT NULL,
  `wsp_konwersji` double DEFAULT NULL,
  `zuzycie_kWh` double DEFAULT NULL,
  `moc_zamowiona` double DEFAULT NULL,
  `moc_wykonana` double DEFAULT NULL,
  `oplata_stala` double DEFAULT NULL,
  `oplata_zmienna` double DEFAULT NULL,
  `wartosc_netto` double DEFAULT NULL,
  `paliwo_gazowe` double DEFAULT NULL,
  `wartosc_netto2` double DEFAULT NULL,
  `abonament` double DEFAULT NULL,
  `oplata_stala3` double DEFAULT NULL,
  `wartosc_netto3` double DEFAULT NULL,
  `wartosc_netto_faktura` double DEFAULT NULL,
  `nr_faktury` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `miesieczne_zuzycie2`
--

INSERT INTO `miesieczne_zuzycie2` (`id`, `miesiac`, `zuzycie_m3`, `wsp_konwersji`, `zuzycie_kWh`, `moc_zamowiona`, `moc_wykonana`, `oplata_stala`, `oplata_zmienna`, `wartosc_netto`, `paliwo_gazowe`, `wartosc_netto2`, `abonament`, `oplata_stala3`, `wartosc_netto3`, `wartosc_netto_faktura`, `nr_faktury`) VALUES
(1, 'STYCZEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'LUTY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'MARZEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'KWIECIEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'MAJ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'CZERWIEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'LIPIEC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'SIERPIEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'WRZESIEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'PAZDZIERNIK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'LISTOPAD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'GRUDZIEN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanlicznikowgaz`
--

CREATE TABLE `stanlicznikowgaz` (
  `ID` int(11) NOT NULL,
  `Licznik` varchar(30) DEFAULT NULL,
  `1` double DEFAULT NULL,
  `2` double DEFAULT NULL,
  `3` double DEFAULT NULL,
  `4` double DEFAULT NULL,
  `5` double DEFAULT NULL,
  `6` double DEFAULT NULL,
  `7` double DEFAULT NULL,
  `8` double DEFAULT NULL,
  `9` double DEFAULT NULL,
  `10` double DEFAULT NULL,
  `11` double DEFAULT NULL,
  `12` double DEFAULT NULL,
  `13` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `stanlicznikowgaz`
--

INSERT INTO `stanlicznikowgaz` (`ID`, `Licznik`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`) VALUES
(1, 'PALSERWIS Kotlownia', 317908, 317910, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'PALSERWIS Promienniki', 581458, 582557, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Malarnia Kotly', 429729, 434044, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Malarnia ARAJ', 615282, 615953, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Hala mlynow - 1146', 859254, 864725, 869854, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Budynek 1120 (stary magazyn)', 5983, 7457, 8773, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stanlicznikowwoda`
--

CREATE TABLE `stanlicznikowwoda` (
  `id` int(11) NOT NULL,
  `Licznik` varchar(100) NOT NULL,
  `1` double DEFAULT NULL,
  `2` double DEFAULT NULL,
  `3` double DEFAULT NULL,
  `4` double DEFAULT NULL,
  `5` double DEFAULT NULL,
  `6` double DEFAULT NULL,
  `7` double DEFAULT NULL,
  `8` double DEFAULT NULL,
  `9` double DEFAULT NULL,
  `10` double DEFAULT NULL,
  `11` double DEFAULT NULL,
  `12` double DEFAULT NULL,
  `13` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `stanlicznikowwoda`
--

INSERT INTO `stanlicznikowwoda` (`id`, `Licznik`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`, `13`) VALUES
(1, 'UMYWALKA - BUDYNEK 1146 NAWA VII', 3, 4, 6, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'BUDYNEK 1183 - MAGAZYN FARB', 0.7, 0.7, 0.7, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'HYDRANT NR 6', 145, 145, 145, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'HYDRANT NR 13', 413, 413, 414, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'BUDYNEK 1120', 80, 108, 133, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'HALA PROD. KOTL. W. ZIMNA - 1146', 4734, 4770, 4802, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'HALA PROD. KOTL. PODGRZANIE - 1146', 5778, 5815, 5850, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'HALA PROD. KRAJALNIA WC - 1174', 287, 293, 297, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'HALA PROD. KRAJALNIA PR. STR. - 1174', 35, 35, 35, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'HALA PROD. KRAJALNIA WYPALARKA - 1174', 128, 128, 128, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'HALA PROD. KRAJALNIA POM. SOCJ. - 1174', 46, 47, 47, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'PIWNICA 1121 ZB. WODY CIEPLEJ ( 1121+1171)', 3270, 3270, 3270, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'PIWNICA 1121 ZB. WODY ZIMNEJ ( 1121+1171)', 7517, 7518, 7519, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Budynek 1183 (Mikosie)', 608, 614, 623, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Woda zimna 1171 - STAROSTWO', 45, 45, 45, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Woda ciepla 1171 - zasilanie - STAROSTWO', 113, 113, 113, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Woda ciepla 1171 - powrot - STAROSTWO', 81, 81, 81, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'BESET', 5902, 5948, 5989, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'BESET', 1646, 1664, 1688, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'METROB', 9184, 9211, 9241, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'METROB', 192, 193, 194, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'PLASTOMIX', 1625, 1634, 1646, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'PLASTOMIX', 842, 848, 855, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'Karel', 374, 376, 379, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'PKP', 110, 113, 116, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'SORYKS', 836, 836, 836, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'SORYKS', 850, 854, 858, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'LESTER', 1715, 1724, 1730, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'POD KOLEJARZ', 569, 569, 569, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'MAR-PLAST', 894, 918, 924, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'JAWO', 290, 292, 294, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'PALSERWIS', 7226, 7262, 7299, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'STOR', 1926, 1927, 1928, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'STOR', 18, 18, 18, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'STOR', 1067, 1083, 1111, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'TRANS-PROJECT', 5787, 5787, 5791, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'MARTEX-OLSZYNKA', 427, 434, 442, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'RZEPKA', 3023, 3038, 3054, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wodafaktura`
--

CREATE TABLE `wodafaktura` (
  `id` int(11) NOT NULL,
  `Miesiac` varchar(30) DEFAULT NULL,
  `ZuzycieTowarowa` double DEFAULT NULL,
  `KwotaTowarowa` double DEFAULT NULL,
  `ZuzycieWyzwolenia` double DEFAULT NULL,
  `KwotaWyzwolenia` double DEFAULT NULL,
  `ZuzycieRazem` double DEFAULT NULL,
  `KwotaRazem` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `wodafaktura`
--

INSERT INTO `wodafaktura` (`id`, `Miesiac`, `ZuzycieTowarowa`, `KwotaTowarowa`, `ZuzycieWyzwolenia`, `KwotaWyzwolenia`, `ZuzycieRazem`, `KwotaRazem`) VALUES
(1, 'STYCZEN', 69, 2, 1, 1, 1, 1),
(2, 'LUTY', 1, 2, 3, 4, NULL, NULL),
(3, 'MARZEC', 2137, 0, 0, 0, NULL, NULL),
(4, 'KWIECIEN', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'MAJ', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'CZERWIEC', 124, 0, 0, 0, NULL, NULL),
(7, 'LIPIEC', NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'SIERPIEN', NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'WRZESIEN', 12356, 0, 0, 0, NULL, NULL),
(10, 'PAZDZIERNIK', NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'LISTOPAD', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'GRUDZIEN', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cieplomierze`
--
ALTER TABLE `cieplomierze`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `kontrola`
--
ALTER TABLE `kontrola`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `kwotakontrola`
--
ALTER TABLE `kwotakontrola`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `miesieczne_zuzycie`
--
ALTER TABLE `miesieczne_zuzycie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `miesieczne_zuzycie2`
--
ALTER TABLE `miesieczne_zuzycie2`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `stanlicznikowgaz`
--
ALTER TABLE `stanlicznikowgaz`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `stanlicznikowwoda`
--
ALTER TABLE `stanlicznikowwoda`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wodafaktura`
--
ALTER TABLE `wodafaktura`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `kontrola`
--
ALTER TABLE `kontrola`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `kwotakontrola`
--
ALTER TABLE `kwotakontrola`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `miesieczne_zuzycie`
--
ALTER TABLE `miesieczne_zuzycie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `miesieczne_zuzycie2`
--
ALTER TABLE `miesieczne_zuzycie2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `stanlicznikowwoda`
--
ALTER TABLE `stanlicznikowwoda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT dla tabeli `wodafaktura`
--
ALTER TABLE `wodafaktura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
