SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+01:00";

--
-- Baza danych: `bgae_v1`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dana_statystyczna`
--

CREATE TABLE `dana_statystyczna` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `dana_statystyczna`
--

INSERT INTO `dana_statystyczna` (`id`, `nazwa`) VALUES
(1, 'uruchomienie_wersji_desktopowej'),
(2, 'uruchomienie_wersji_mobilnej'),
(3, 'przejscie_gry_out'),
(4, 'przejscie_gry_left'),
(5, 'przejscie_gry_right'),
(6, 'uderzenie_gruntu'),
(7, 'zniszczenie_bossa'),
(8, 'czas_gry_min'),
(9, 'przejscie_misji'),
(10, 'uzycie_bomby'),
(11, 'uzycie_rakiety'),
(12, 'uzycie_drona'),
(13, 'uzycie_specjalnego'),
(14, 'smierc'),
(15, 'wziecie_statku_1'),
(16, 'wziecie_statku_2'),
(17, 'wziecie_statku_3'),
(18, 'wziecie_statku_4'),
(19, 'wziecie_broni_specjalna_0a'),
(20, 'wziecie_broni_specjalna_2'),
(21, 'wziecie_broni_specjalna_4'),
(22, 'wziecie_broni_glowna_0'),
(23, 'wziecie_broni_glowna_1a'),
(24, 'wziecie_broni_glowna_1c'),
(25, 'wziecie_broni_glowna_2a'),
(26, 'wziecie_broni_glowna_3b'),
(27, 'wziecie_broni_glowna_3c'),
(28, 'wziecie_broni_glowna_4b'),
(29, 'wziecie_broni_dodatkowa_1a'),
(30, 'wziecie_broni_dodatkowa_2a'),
(31, 'wziecie_broni_dodatkowa_3a'),
(32, 'wziecie_broni_dodatkowa_4a'),
(33, 'wziecie_broni_dodatkowa_4c');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dana_statystyczna_gracza`
--

CREATE TABLE `dana_statystyczna_gracza` (
  `id_danej_statystycznej` int(11) NOT NULL,
  `id_gracza` int(11) NOT NULL,
  `poziom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gracz`
--

CREATE TABLE `gracz` (
  `id` int(11) NOT NULL,
  `nick` varchar(16) NOT NULL,
  `haslo` varchar(60) NOT NULL,
  `email` varchar(45) NOT NULL,
  `czas_rejestracji` datetime NOT NULL DEFAULT current_timestamp(),
  `ranga` int(1) NOT NULL,
  `url_zdjecia_profilowego` text DEFAULT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `gracz`
--

INSERT INTO `gracz` (`id`, `nick`, `haslo`, `email`, `czas_rejestracji`, `ranga`, `url_zdjecia_profilowego`, `status`) VALUES
(1, 'damian', '$2y$10$BU9d8rfs2g82XmSb/nOp0.5gmD.GQFNFjyq72uL4lyKNG6i4hom0S', 'damian@interia.pl', '2023-03-08 09:26:17', 3, 'https://images.pagina12.com.ar/styles/focal_content_1200x1050/public/2021-05/164081-vaporwave_0.jpg?itok=jZzWaYp4', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oferta`
--

CREATE TABLE `oferta` (
  `id_nadawcy` int(11) NOT NULL,
  `id_przedmiotu_nadawcy` int(11) NOT NULL,
  `id_odbiorcy` int(11) NOT NULL,
  `id_przedmiotu_odbiorcy` int(11) NOT NULL,
  `czy_zaakceptowana` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osiagniecie`
--

CREATE TABLE `osiagniecie` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(13) NOT NULL,
  `opis` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `osiagniecie`
--

INSERT INTO `osiagniecie` (`id`, `nazwa`, `opis`) VALUES
(1, 'aluminium', 'for winning the game'),
(2, 'silicon', 'for playing both desktop and mobile version'),
(3, 'tungsten', 'for getting hit less often than one time per five missions'),
(4, 'lead', 'for defeating at least five bosses'),
(5, 'antimony', 'for firing at least 500 rockets, 500 bombs and 80 drones'),
(6, 'cobalt', 'for acquiring every possible weapon at least once'),
(7, 'titanium', 'for playing longer than for twenty four hours'),
(8, 'gold', 'for acquiring at least 33 ship styles'),
(9, 'lithium', 'for getting destroyed by non-enemy causes less than one time per twenty missions'),
(10, 'uranium', 'for using a special weapon at least fifty times'),
(11, 'silver', 'for completing any missions at least one hundred times'),
(12, 'iron', 'for choosing one weapon at least ten times');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osiagniecie_gracza`
--

CREATE TABLE `osiagniecie_gracza` (
  `id_osiagniecia` int(11) NOT NULL,
  `id_gracza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot`
--

CREATE TABLE `przedmiot` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) NOT NULL,
  `typ` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `przedmiot`
--

INSERT INTO `przedmiot` (`id`, `nazwa`, `typ`) VALUES
(1, 'akumakaze', 1),
(2, 'agent tangerine', 1),
(3, 'edge', 1),
(4, 'ladybug', 1),
(5, 'furor', 1),
(6, 'pump', 1),
(7, 'fullprint', 1),
(8, 'mad', 1),
(9, 'aero', 1),
(10, 'tankie', 2),
(11, 'trip', 2),
(12, 'crank', 2),
(13, 'keelhaul', 2),
(14, 'ulfhedhnar', 2),
(15, 'macuahuitl', 2),
(16, 'midas', 2),
(17, 'cog', 2),
(18, 'sandstorm', 2),
(19, 'deco morreno', 3),
(20, '2088', 3),
(21, 'exposure', 3),
(22, 'long', 3),
(23, 'kitsch', 3),
(24, 'shakuhachi', 3),
(25, 'anti', 3),
(26, 'dagda', 3),
(27, 'pulpa', 3),
(28, 'ataraxia', 4),
(29, 'mbayuwayu', 4),
(30, 'aton', 4),
(31, 'rex', 4),
(32, 'holo', 4),
(33, '33', 4),
(34, 'crypto', 4),
(35, 'gloria', 4),
(36, 'liberty', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmiot_gracza`
--

CREATE TABLE `przedmiot_gracza` (
  `id_gracza` int(11) NOT NULL,
  `id_przedmiotu` int(11) NOT NULL,
  `liczba_posiadanych` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wynik_gracza`
--

CREATE TABLE `wynik_gracza` (
  `id_gracza` int(11) NOT NULL,
  `zdobyte_punkty` int(3) NOT NULL,
  `czas_zdobycia` datetime NOT NULL DEFAULT current_timestamp(),
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `znajomi`
--

CREATE TABLE `znajomi` (
  `gracz_id_zapraszajacy` int(11) NOT NULL,
  `gracz_id_zapraszany` int(11) NOT NULL,
  `zaproszenie_przyjete` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dana_statystyczna`
--
ALTER TABLE `dana_statystyczna`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `dana_statystyczna_gracza`
--
ALTER TABLE `dana_statystyczna_gracza`
  ADD PRIMARY KEY (`id_danej_statystycznej`,`id_gracza`),
  ADD KEY `id_gracza` (`id_gracza`),
  ADD KEY `id_danej_statystycznej` (`id_danej_statystycznej`);

--
-- Indeksy dla tabeli `gracz`
--
ALTER TABLE `gracz`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oferta`
--
ALTER TABLE `oferta`
  ADD PRIMARY KEY (`id_nadawcy`,`id_przedmiotu_nadawcy`,`id_odbiorcy`,`id_przedmiotu_odbiorcy`),
  ADD KEY `id_odbiorcy` (`id_odbiorcy`),
  ADD KEY `id_przedmiotu_nadawcy` (`id_przedmiotu_nadawcy`),
  ADD KEY `id_przedmiotu_odbiorcy` (`id_przedmiotu_odbiorcy`),
  ADD KEY `id_nadawcy` (`id_nadawcy`);

--
-- Indeksy dla tabeli `osiagniecie`
--
ALTER TABLE `osiagniecie`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `osiagniecie_gracza`
--
ALTER TABLE `osiagniecie_gracza`
  ADD PRIMARY KEY (`id_osiagniecia`,`id_gracza`),
  ADD KEY `id_gracza` (`id_gracza`),
  ADD KEY `id_osiagniecia` (`id_osiagniecia`);

--
-- Indeksy dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `przedmiot_gracza`
--
ALTER TABLE `przedmiot_gracza`
  ADD PRIMARY KEY (`id_gracza`,`id_przedmiotu`),
  ADD KEY `id_przedmiotu` (`id_przedmiotu`),
  ADD KEY `id_gracza` (`id_gracza`);

--
-- Indeksy dla tabeli `wynik_gracza`
--
ALTER TABLE `wynik_gracza`
  ADD PRIMARY KEY (`id_gracza`,`id`),
  ADD KEY `id_gracza` (`id_gracza`);

--
-- Indeksy dla tabeli `znajomi`
--
ALTER TABLE `znajomi`
  ADD PRIMARY KEY (`gracz_id_zapraszajacy`,`gracz_id_zapraszany`),
  ADD KEY `gracz_id_zapraszany` (`gracz_id_zapraszany`),
  ADD KEY `gracz_id_zapraszajacy` (`gracz_id_zapraszajacy`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dana_statystyczna`
--
ALTER TABLE `dana_statystyczna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT dla tabeli `gracz`
--
ALTER TABLE `gracz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `osiagniecie`
--
ALTER TABLE `osiagniecie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- AUTO_INCREMENT dla tabeli `przedmiot`
--
ALTER TABLE `przedmiot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `dana_statystyczna_gracza`
--
ALTER TABLE `dana_statystyczna_gracza`
  ADD CONSTRAINT `dana_statystyczna_gracza_ibfk_1` FOREIGN KEY (`id_gracza`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dana_statystyczna_gracza_ibfk_2` FOREIGN KEY (`id_danej_statystycznej`) REFERENCES `dana_statystyczna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `oferta`
--
ALTER TABLE `oferta`
  ADD CONSTRAINT `oferta_ibfk_1` FOREIGN KEY (`id_nadawcy`) REFERENCES `przedmiot_gracza` (`id_gracza`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oferta_ibfk_2` FOREIGN KEY (`id_odbiorcy`) REFERENCES `przedmiot_gracza` (`id_gracza`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oferta_ibfk_3` FOREIGN KEY (`id_przedmiotu_nadawcy`) REFERENCES `przedmiot_gracza` (`id_przedmiotu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oferta_ibfk_4` FOREIGN KEY (`id_przedmiotu_odbiorcy`) REFERENCES `przedmiot_gracza` (`id_przedmiotu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `osiagniecie_gracza`
--
ALTER TABLE `osiagniecie_gracza`
  ADD CONSTRAINT `osiagniecie_gracza_ibfk_1` FOREIGN KEY (`id_gracza`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `osiagniecie_gracza_ibfk_2` FOREIGN KEY (`id_osiagniecia`) REFERENCES `osiagniecie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `przedmiot_gracza`
--
ALTER TABLE `przedmiot_gracza`
  ADD CONSTRAINT `przedmiot_gracza_ibfk_1` FOREIGN KEY (`id_gracza`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `przedmiot_gracza_ibfk_2` FOREIGN KEY (`id_przedmiotu`) REFERENCES `przedmiot` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `wynik_gracza`
--
ALTER TABLE `wynik_gracza`
  ADD CONSTRAINT `wynik_gracza_ibfk_1` FOREIGN KEY (`id_gracza`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ograniczenia dla tabeli `znajomi`
--
ALTER TABLE `znajomi`
  ADD CONSTRAINT `znajomi_ibfk_1` FOREIGN KEY (`gracz_id_zapraszajacy`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `znajomi_ibfk_2` FOREIGN KEY (`gracz_id_zapraszany`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;