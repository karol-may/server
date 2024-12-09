-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 09 Gru 2024, 15:32
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `daneosobowe`
--
CREATE DATABASE IF NOT EXISTS `daneosobowe` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci;
USE `daneosobowe`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--

DROP TABLE IF EXISTS `dane`;
CREATE TABLE `dane` (
  `id` int(11) NOT NULL,
  `imie` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(255) COLLATE utf8_polish_ci NOT NULL,
  `rok` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `dane`
--

INSERT INTO `dane` (`id`, `imie`, `nazwisko`, `rok`) VALUES
(1, 'Maria', 'Szymański', 1978),
(2, 'Andrzej', 'Nowak', 1982),
(3, 'Andrzej', 'Zieliński', 1971),
(4, 'Agnieszka', 'Wójcik', 1986),
(5, 'Andrzej', 'Kowalczyk', 1979),
(6, 'Karol', 'Lewandowski', 2003),
(7, 'Piotr', 'Kamiński', 1908),
(8, 'Piotr', 'Kamiński', 1992),
(9, 'Katarzyna', 'Zieliński', 1993),
(10, 'Karol', 'Wiśniewski', 2002),
(11, 'Andrzej', 'Kowalczyk', 1999),
(12, 'Maria', 'Kowalski', 1970),
(13, 'Karol', 'Kamiński', 1994),
(14, 'Agnieszka', 'Kowalski', 1976),
(15, 'Katarzyna', 'Kamiński', 1996),
(16, 'Maria', 'Kowalczyk', 1999),
(17, 'Andrzej', 'Kowalski', 2006),
(18, 'Katarzyna', 'Zieliński', 1993),
(19, 'Maria', 'Nowak', 1991),
(20, 'Katarzyna', 'Kowalczyk', 1998),
(21, 'Karol', 'Kowalski', 1984),
(22, 'Andrzej', 'Zieliński', 1998),
(23, 'Jan', 'Wójcik', 1973),
(24, 'Joanna', 'Wiśniewski', 1988),
(25, 'Katarzyna', 'Lewandowski', 1997),
(26, 'Jan', 'Nowak', 1993),
(27, 'Anna', 'Woźniak', 1984),
(28, 'Joanna', 'Woźniak', 1972),
(29, 'Jan', 'Nowak', 1975),
(30, 'Andrzej', 'Wiśniewski', 1988);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dane`
--
ALTER TABLE `dane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
